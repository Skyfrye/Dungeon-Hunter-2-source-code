; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x008616f8, declared_size=60, range_size=60, mode=arm
; class-group: vox::VoxEngine
; alias: _ZN3vox9VoxEngine13SuspendEngineEv
; demangled: vox::VoxEngine::SuspendEngine()
; decoder-mode: arm
008616f8  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
008616fc  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
00861700  10 40 2d e9                                      push {r4, lr}
00861704  03 30 8f e0                                      add r3, pc, r3
00861708  02 20 93 e7                                      ldr r2, [r3, r2]
0086170c  00 30 92 e5                                      ldr r3, [r2]
00861710  00 00 53 e3                                      cmp r3, #0
00861714  03 00 00 0a                                      beq #0x861728
00861718  03 00 a0 e1                                      mov r0, r3
0086171c  00 30 93 e5                                      ldr r3, [r3]
00861720  0f e0 a0 e1                                      mov lr, pc
00861724  0c f0 93 e5                                      ldr pc, [r3, #0xc]
00861728  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0086172c  8c 33 13 00 9c 17 00 00                          .byte 0x8c, 0x33, 0x13, 0x00, 0x9c, 0x17, 0x00, 0x00

; FUNCTION 0x00861734, declared_size=60, range_size=60, mode=arm
; class-group: vox::VoxEngine
; alias: _ZN3vox9VoxEngine12ResumeEngineEv
; demangled: vox::VoxEngine::ResumeEngine()
; decoder-mode: arm
00861734  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
00861738  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
0086173c  10 40 2d e9                                      push {r4, lr}
00861740  03 30 8f e0                                      add r3, pc, r3
00861744  02 20 93 e7                                      ldr r2, [r3, r2]
00861748  00 30 92 e5                                      ldr r3, [r2]
0086174c  00 00 53 e3                                      cmp r3, #0
00861750  03 00 00 0a                                      beq #0x861764
00861754  03 00 a0 e1                                      mov r0, r3
00861758  00 30 93 e5                                      ldr r3, [r3]
0086175c  0f e0 a0 e1                                      mov lr, pc
00861760  10 f0 93 e5                                      ldr pc, [r3, #0x10]
00861764  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00861768  50 33 13 00 9c 17 00 00                          .byte 0x50, 0x33, 0x13, 0x00, 0x9c, 0x17, 0x00, 0x00

; FUNCTION 0x00861770, declared_size=68, range_size=68, mode=arm
; class-group: vox::VoxEngine
; alias: _ZN3vox9VoxEngine17IsEngineSuspendedEv
; demangled: vox::VoxEngine::IsEngineSuspended()
; decoder-mode: arm
00861770  34 30 9f e5                                      ldr r3, [pc, #0x34]
00861774  34 20 9f e5                                      ldr r2, [pc, #0x34]
00861778  10 40 2d e9                                      push {r4, lr}
0086177c  03 30 8f e0                                      add r3, pc, r3
00861780  02 20 93 e7                                      ldr r2, [r3, r2]
00861784  00 30 92 e5                                      ldr r3, [r2]
00861788  00 00 53 e3                                      cmp r3, #0
0086178c  04 00 00 0a                                      beq #0x8617a4
00861790  03 00 a0 e1                                      mov r0, r3
00861794  00 30 93 e5                                      ldr r3, [r3]
00861798  0f e0 a0 e1                                      mov lr, pc
0086179c  14 f0 93 e5                                      ldr pc, [r3, #0x14]
008617a0  10 80 bd e8                                      pop {r4, pc}
008617a4  01 00 a0 e3                                      mov r0, #1
008617a8  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
008617ac  14 33 13 00 9c 17 00 00                          .byte 0x14, 0x33, 0x13, 0x00, 0x9c, 0x17, 0x00, 0x00

; FUNCTION 0x008617b4, declared_size=4, range_size=4, mode=arm
; class-group: vox::VoxEngine
; alias: _ZN3vox9VoxEngine6UpdateEf
; demangled: vox::VoxEngine::Update(float)
; decoder-mode: arm
008617b4  1e ff 2f e1                                      bx lr

; FUNCTION 0x008617b8, declared_size=4, range_size=4, mode=arm
; class-group: vox::VoxEngine
; alias: _ZN3vox9VoxEngine13UpdateSourcesEv
; demangled: vox::VoxEngine::UpdateSources()
; decoder-mode: arm
008617b8  1e ff 2f e1                                      bx lr

; FUNCTION 0x008617bc, declared_size=4, range_size=4, mode=arm
; class-group: vox::VoxEngine
; alias: _ZN3vox9VoxEngine14UpdateEmittersEf
; demangled: vox::VoxEngine::UpdateEmitters(float)
; decoder-mode: arm
008617bc  1e ff 2f e1                                      bx lr

; FUNCTION 0x008617c0, declared_size=60, range_size=60, mode=arm
; class-group: vox::VoxEngine
; alias: _ZN3vox9VoxEngine13SetMasterGainEff
; demangled: vox::VoxEngine::SetMasterGain(float, float)
; decoder-mode: arm
008617c0  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
008617c4  2c 00 9f e5                                      ldr r0, [pc, #0x2c]
008617c8  10 40 2d e9                                      push {r4, lr}
008617cc  03 30 8f e0                                      add r3, pc, r3
008617d0  00 00 93 e7                                      ldr r0, [r3, r0]
008617d4  00 30 90 e5                                      ldr r3, [r0]
008617d8  00 00 53 e3                                      cmp r3, #0
008617dc  03 00 00 0a                                      beq #0x8617f0
008617e0  03 00 a0 e1                                      mov r0, r3
008617e4  00 30 93 e5                                      ldr r3, [r3]
008617e8  0f e0 a0 e1                                      mov lr, pc
008617ec  28 f0 93 e5                                      ldr pc, [r3, #0x28]
008617f0  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
008617f4  c4 32 13 00 9c 17 00 00                          .byte 0xc4, 0x32, 0x13, 0x00, 0x9c, 0x17, 0x00, 0x00

; FUNCTION 0x008617fc, declared_size=60, range_size=60, mode=arm
; class-group: vox::VoxEngine
; alias: _ZN3vox9VoxEngine12SetGroupGainEjff
; demangled: vox::VoxEngine::SetGroupGain(unsigned int, float, float)
; decoder-mode: arm
008617fc  2c 00 9f e5                                      ldr r0, [pc, #0x2c]
00861800  2c c0 9f e5                                      ldr ip, [pc, #0x2c]
00861804  10 40 2d e9                                      push {r4, lr}
00861808  00 00 8f e0                                      add r0, pc, r0
0086180c  0c c0 90 e7                                      ldr ip, [r0, ip]
00861810  00 c0 9c e5                                      ldr ip, [ip]
00861814  00 00 5c e3                                      cmp ip, #0
00861818  03 00 00 0a                                      beq #0x86182c
0086181c  0c 00 a0 e1                                      mov r0, ip
00861820  00 c0 9c e5                                      ldr ip, [ip]
00861824  0f e0 a0 e1                                      mov lr, pc
00861828  24 f0 9c e5                                      ldr pc, [ip, #0x24]
0086182c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00861830  88 32 13 00 9c 17 00 00                          .byte 0x88, 0x32, 0x13, 0x00, 0x9c, 0x17, 0x00, 0x00

; FUNCTION 0x00861838, declared_size=4, range_size=4, mode=arm
; class-group: vox::VoxEngine
; alias: _ZN3vox9VoxEngine41RegisterForEmitterStateChangeNotificationERNS_13EmitterHandleEPFvS2_PvNS_18EmitterExternStateEES3_
; demangled: vox::VoxEngine::RegisterForEmitterStateChangeNotification(vox::EmitterHandle&, void (*)(vox::EmitterHandle&, void*, vox::EmitterExternState), void*)
; decoder-mode: arm
00861838  1e ff 2f e1                                      bx lr

; FUNCTION 0x0086183c, declared_size=4, range_size=4, mode=arm
; class-group: vox::VoxEngine
; alias: _ZN3vox9VoxEngine43UnregisterForEmitterStateChangeNotificationERNS_13EmitterHandleE
; demangled: vox::VoxEngine::UnregisterForEmitterStateChangeNotification(vox::EmitterHandle&)
; decoder-mode: arm
0086183c  1e ff 2f e1                                      bx lr

; FUNCTION 0x00861840, declared_size=60, range_size=60, mode=arm
; class-group: vox::VoxEngine
; alias: _ZN3vox9VoxEngine21UpdateSourcesThreadedEv
; demangled: vox::VoxEngine::UpdateSourcesThreaded()
; decoder-mode: arm
00861840  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
00861844  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
00861848  10 40 2d e9                                      push {r4, lr}
0086184c  03 30 8f e0                                      add r3, pc, r3
00861850  02 20 93 e7                                      ldr r2, [r3, r2]
00861854  00 30 92 e5                                      ldr r3, [r2]
00861858  00 00 53 e3                                      cmp r3, #0
0086185c  03 00 00 0a                                      beq #0x861870
00861860  03 00 a0 e1                                      mov r0, r3
00861864  00 30 93 e5                                      ldr r3, [r3]
00861868  0f e0 a0 e1                                      mov lr, pc
0086186c  18 f0 93 e5                                      ldr pc, [r3, #0x18]
00861870  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00861874  44 32 13 00 9c 17 00 00                          .byte 0x44, 0x32, 0x13, 0x00, 0x9c, 0x17, 0x00, 0x00

; FUNCTION 0x0086187c, declared_size=4, range_size=4, mode=arm
; class-group: vox::VoxEngine
; alias: _ZN3vox9VoxEngine21UpdateSourcesThreadedEPvS1_
; demangled: vox::VoxEngine::UpdateSourcesThreaded(void*, void*)
; decoder-mode: arm
0086187c  ef ff ff ea                                      b #0x861840

; FUNCTION 0x00861880, declared_size=40, range_size=40, mode=arm
; class-group: vox::VoxEngine
; alias: _ZN3vox9VoxEngine12GetDebugInfoERNS_9DebugInfoE
; demangled: vox::VoxEngine::GetDebugInfo(vox::DebugInfo&)
; decoder-mode: arm
00861880  18 30 9f e5                                      ldr r3, [pc, #0x18]
00861884  18 20 9f e5                                      ldr r2, [pc, #0x18]
00861888  03 30 8f e0                                      add r3, pc, r3
0086188c  02 20 93 e7                                      ldr r2, [r3, r2]
00861890  00 00 92 e5                                      ldr r0, [r2]
00861894  00 00 50 e3                                      cmp r0, #0
00861898  1e ff 2f 01                                      bxeq lr
0086189c  6f 16 00 ea                                      b #0x867260
; mapping-symbol data/literal pool
008618a0  08 32 13 00 9c 17 00 00                          .byte 0x08, 0x32, 0x13, 0x00, 0x9c, 0x17, 0x00, 0x00

; FUNCTION 0x008618a8, declared_size=40, range_size=40, mode=arm
; class-group: vox::VoxEngine
; alias: _ZN3vox9VoxEngine10PrintDebugEv
; demangled: vox::VoxEngine::PrintDebug()
; decoder-mode: arm
008618a8  18 30 9f e5                                      ldr r3, [pc, #0x18]
008618ac  18 20 9f e5                                      ldr r2, [pc, #0x18]
008618b0  03 30 8f e0                                      add r3, pc, r3
008618b4  02 20 93 e7                                      ldr r2, [r3, r2]
008618b8  00 00 92 e5                                      ldr r0, [r2]
008618bc  00 00 50 e3                                      cmp r0, #0
008618c0  1e ff 2f 01                                      bxeq lr
008618c4  a9 16 00 ea                                      b #0x867370
; mapping-symbol data/literal pool
008618c8  e0 31 13 00 9c 17 00 00                          .byte 0xe0, 0x31, 0x13, 0x00, 0x9c, 0x17, 0x00, 0x00

; FUNCTION 0x008618d0, declared_size=40, range_size=40, mode=arm
; class-group: vox::VoxEngine
; alias: _ZN3vox9VoxEngine13SetOutputModeENS_13VoxOutputModeE
; demangled: vox::VoxEngine::SetOutputMode(vox::VoxOutputMode)
; decoder-mode: arm
008618d0  18 30 9f e5                                      ldr r3, [pc, #0x18]
008618d4  18 20 9f e5                                      ldr r2, [pc, #0x18]
008618d8  03 30 8f e0                                      add r3, pc, r3
008618dc  02 20 93 e7                                      ldr r2, [r3, r2]
008618e0  00 00 92 e5                                      ldr r0, [r2]
008618e4  00 00 50 e3                                      cmp r0, #0
008618e8  1e ff 2f 01                                      bxeq lr
008618ec  fc 05 00 ea                                      b #0x8630e4
; mapping-symbol data/literal pool
008618f0  b8 31 13 00 9c 17 00 00                          .byte 0xb8, 0x31, 0x13, 0x00, 0x9c, 0x17, 0x00, 0x00

; FUNCTION 0x008618f8, declared_size=48, range_size=48, mode=arm
; class-group: vox::VoxEngine
; alias: _ZN3vox9VoxEngine13GetOutputModeEv
; demangled: vox::VoxEngine::GetOutputMode()
; decoder-mode: arm
008618f8  20 30 9f e5                                      ldr r3, [pc, #0x20]
008618fc  20 20 9f e5                                      ldr r2, [pc, #0x20]
00861900  03 30 8f e0                                      add r3, pc, r3
00861904  02 20 93 e7                                      ldr r2, [r3, r2]
00861908  00 00 92 e5                                      ldr r0, [r2]
0086190c  00 00 50 e3                                      cmp r0, #0
00861910  00 00 00 0a                                      beq #0x861918
00861914  e7 05 00 ea                                      b #0x8630b8
00861918  00 00 e0 e3                                      mvn r0, #0
0086191c  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
00861920  90 31 13 00 9c 17 00 00                          .byte 0x90, 0x31, 0x13, 0x00, 0x9c, 0x17, 0x00, 0x00

; FUNCTION 0x00861928, declared_size=40, range_size=40, mode=arm
; class-group: vox::VoxEngine
; alias: _ZN3vox9VoxEngine24SetInteractiveMusicStateERNS_13EmitterHandleEPKc
; demangled: vox::VoxEngine::SetInteractiveMusicState(vox::EmitterHandle&, char const*)
; decoder-mode: arm
00861928  18 30 9f e5                                      ldr r3, [pc, #0x18]
0086192c  18 00 9f e5                                      ldr r0, [pc, #0x18]
00861930  03 30 8f e0                                      add r3, pc, r3
00861934  00 00 93 e7                                      ldr r0, [r3, r0]
00861938  00 00 90 e5                                      ldr r0, [r0]
0086193c  00 00 50 e3                                      cmp r0, #0
00861940  1e ff 2f 01                                      bxeq lr
00861944  40 17 00 ea                                      b #0x86764c
; mapping-symbol data/literal pool
00861948  60 31 13 00 9c 17 00 00                          .byte 0x60, 0x31, 0x13, 0x00, 0x9c, 0x17, 0x00, 0x00

; FUNCTION 0x00861950, declared_size=40, range_size=40, mode=arm
; class-group: vox::VoxEngine
; alias: _ZN3vox9VoxEngine22SetDSPEmitterParameterERNS_13EmitterHandleEiPv
; demangled: vox::VoxEngine::SetDSPEmitterParameter(vox::EmitterHandle&, int, void*)
; decoder-mode: arm
00861950  18 00 9f e5                                      ldr r0, [pc, #0x18]
00861954  18 c0 9f e5                                      ldr ip, [pc, #0x18]
00861958  00 00 8f e0                                      add r0, pc, r0
0086195c  0c c0 90 e7                                      ldr ip, [r0, ip]
00861960  00 00 9c e5                                      ldr r0, [ip]
00861964  00 00 50 e3                                      cmp r0, #0
00861968  1e ff 2f 01                                      bxeq lr
0086196c  59 17 00 ea                                      b #0x8676d8
; mapping-symbol data/literal pool
00861970  38 31 13 00 9c 17 00 00                          .byte 0x38, 0x31, 0x13, 0x00, 0x9c, 0x17, 0x00, 0x00

; FUNCTION 0x00861978, declared_size=40, range_size=40, mode=arm
; class-group: vox::VoxEngine
; alias: _ZN3vox9VoxEngine18SetSFXPresetActiveEibf
; demangled: vox::VoxEngine::SetSFXPresetActive(int, bool, float)
; decoder-mode: arm
00861978  18 00 9f e5                                      ldr r0, [pc, #0x18]
0086197c  18 c0 9f e5                                      ldr ip, [pc, #0x18]
00861980  00 00 8f e0                                      add r0, pc, r0
00861984  0c c0 90 e7                                      ldr ip, [r0, ip]
00861988  00 00 9c e5                                      ldr r0, [ip]
0086198c  00 00 50 e3                                      cmp r0, #0
00861990  1e ff 2f 01                                      bxeq lr
00861994  ad 10 00 ea                                      b #0x865c50
; mapping-symbol data/literal pool
00861998  10 31 13 00 9c 17 00 00                          .byte 0x10, 0x31, 0x13, 0x00, 0x9c, 0x17, 0x00, 0x00

; FUNCTION 0x008619a0, declared_size=64, range_size=64, mode=arm
; class-group: vox::VoxEngine
; alias: _ZN3vox9VoxEngine16SetRoutingVolumeEPcS1_NS_22VoxDSPGeneralParameter14BusRoutingTypeEfff
; demangled: vox::VoxEngine::SetRoutingVolume(char*, char*, vox::VoxDSPGeneralParameter::BusRoutingType, float, float, float)
; decoder-mode: arm
008619a0  30 00 9f e5                                      ldr r0, [pc, #0x30]
008619a4  30 c0 9f e5                                      ldr ip, [pc, #0x30]
008619a8  70 00 2d e9                                      push {r4, r5, r6}
008619ac  00 00 8f e0                                      add r0, pc, r0
008619b0  0c 60 90 e7                                      ldr r6, [r0, ip]
008619b4  0c 50 9d e5                                      ldr r5, [sp, #0xc]
008619b8  10 40 9d e5                                      ldr r4, [sp, #0x10]
008619bc  00 00 96 e5                                      ldr r0, [r6]
008619c0  00 00 50 e3                                      cmp r0, #0
008619c4  01 00 00 0a                                      beq #0x8619d0
008619c8  70 00 bd e8                                      pop {r4, r5, r6}
008619cc  b8 05 00 ea                                      b #0x8630b4
008619d0  70 00 bd e8                                      pop {r4, r5, r6}
008619d4  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
008619d8  e4 30 13 00 9c 17 00 00                          .byte 0xe4, 0x30, 0x13, 0x00, 0x9c, 0x17, 0x00, 0x00

; FUNCTION 0x008619e0, declared_size=40, range_size=40, mode=arm
; class-group: vox::VoxEngine
; alias: _ZN3vox9VoxEngine20SetDynamicBusRoutingEPc
; demangled: vox::VoxEngine::SetDynamicBusRouting(char*)
; decoder-mode: arm
008619e0  18 30 9f e5                                      ldr r3, [pc, #0x18]
008619e4  18 20 9f e5                                      ldr r2, [pc, #0x18]
008619e8  03 30 8f e0                                      add r3, pc, r3
008619ec  02 20 93 e7                                      ldr r2, [r3, r2]
008619f0  00 00 92 e5                                      ldr r0, [r2]
008619f4  00 00 50 e3                                      cmp r0, #0
008619f8  1e ff 2f 01                                      bxeq lr
008619fc  a8 10 00 ea                                      b #0x865ca4
; mapping-symbol data/literal pool
00861a00  a8 30 13 00 9c 17 00 00                          .byte 0xa8, 0x30, 0x13, 0x00, 0x9c, 0x17, 0x00, 0x00

; FUNCTION 0x00861a08, declared_size=40, range_size=40, mode=arm
; class-group: vox::VoxEngine
; alias: _ZN3vox9VoxEngine19SetStaticBusRoutingEPc
; demangled: vox::VoxEngine::SetStaticBusRouting(char*)
; decoder-mode: arm
00861a08  18 30 9f e5                                      ldr r3, [pc, #0x18]
00861a0c  18 20 9f e5                                      ldr r2, [pc, #0x18]
00861a10  03 30 8f e0                                      add r3, pc, r3
00861a14  02 20 93 e7                                      ldr r2, [r3, r2]
00861a18  00 00 92 e5                                      ldr r0, [r2]
00861a1c  00 00 50 e3                                      cmp r0, #0
00861a20  1e ff 2f 01                                      bxeq lr
00861a24  af 10 00 ea                                      b #0x865ce8
; mapping-symbol data/literal pool
00861a28  80 30 13 00 9c 17 00 00                          .byte 0x80, 0x30, 0x13, 0x00, 0x9c, 0x17, 0x00, 0x00

; FUNCTION 0x00861a30, declared_size=40, range_size=40, mode=arm
; class-group: vox::VoxEngine
; alias: _ZN3vox9VoxEngine22Get3DGeneralParameteriEiRi
; demangled: vox::VoxEngine::Get3DGeneralParameteri(int, int&)
; decoder-mode: arm
00861a30  18 30 9f e5                                      ldr r3, [pc, #0x18]
00861a34  18 00 9f e5                                      ldr r0, [pc, #0x18]
00861a38  03 30 8f e0                                      add r3, pc, r3
00861a3c  00 00 93 e7                                      ldr r0, [r3, r0]
00861a40  00 00 90 e5                                      ldr r0, [r0]
00861a44  00 00 50 e3                                      cmp r0, #0
00861a48  1e ff 2f 01                                      bxeq lr
00861a4c  b6 10 00 ea                                      b #0x865d2c
; mapping-symbol data/literal pool
00861a50  58 30 13 00 9c 17 00 00                          .byte 0x58, 0x30, 0x13, 0x00, 0x9c, 0x17, 0x00, 0x00

; FUNCTION 0x00861a58, declared_size=40, range_size=40, mode=arm
; class-group: vox::VoxEngine
; alias: _ZN3vox9VoxEngine22Get3DGeneralParameterfEiRf
; demangled: vox::VoxEngine::Get3DGeneralParameterf(int, float&)
; decoder-mode: arm
00861a58  18 30 9f e5                                      ldr r3, [pc, #0x18]
00861a5c  18 00 9f e5                                      ldr r0, [pc, #0x18]
00861a60  03 30 8f e0                                      add r3, pc, r3
00861a64  00 00 93 e7                                      ldr r0, [r3, r0]
00861a68  00 00 90 e5                                      ldr r0, [r0]
00861a6c  00 00 50 e3                                      cmp r0, #0
00861a70  1e ff 2f 01                                      bxeq lr
00861a74  b9 10 00 ea                                      b #0x865d60
; mapping-symbol data/literal pool
00861a78  30 30 13 00 9c 17 00 00                          .byte 0x30, 0x30, 0x13, 0x00, 0x9c, 0x17, 0x00, 0x00

; FUNCTION 0x00861a80, declared_size=40, range_size=40, mode=arm
; class-group: vox::VoxEngine
; alias: _ZN3vox9VoxEngine21Get3DGeneralParameterERNS_22Vox3DGeneralParametersE
; demangled: vox::VoxEngine::Get3DGeneralParameter(vox::Vox3DGeneralParameters&)
; decoder-mode: arm
00861a80  18 30 9f e5                                      ldr r3, [pc, #0x18]
00861a84  18 20 9f e5                                      ldr r2, [pc, #0x18]
00861a88  03 30 8f e0                                      add r3, pc, r3
00861a8c  02 20 93 e7                                      ldr r2, [r3, r2]
00861a90  00 00 92 e5                                      ldr r0, [r2]
00861a94  00 00 50 e3                                      cmp r0, #0
00861a98  1e ff 2f 01                                      bxeq lr
00861a9c  c1 10 00 ea                                      b #0x865da8
; mapping-symbol data/literal pool
00861aa0  08 30 13 00 9c 17 00 00                          .byte 0x08, 0x30, 0x13, 0x00, 0x9c, 0x17, 0x00, 0x00

; FUNCTION 0x00861aa8, declared_size=64, range_size=64, mode=arm
; class-group: vox::VoxEngine
; alias: _ZN3vox9VoxEngine24Get3DListenerOrientationERfS1_S1_S1_S1_S1_
; demangled: vox::VoxEngine::Get3DListenerOrientation(float&, float&, float&, float&, float&, float&)
; decoder-mode: arm
00861aa8  30 00 9f e5                                      ldr r0, [pc, #0x30]
00861aac  30 c0 9f e5                                      ldr ip, [pc, #0x30]
00861ab0  70 00 2d e9                                      push {r4, r5, r6}
00861ab4  00 00 8f e0                                      add r0, pc, r0
00861ab8  0c 60 90 e7                                      ldr r6, [r0, ip]
00861abc  0c 50 9d e5                                      ldr r5, [sp, #0xc]
00861ac0  10 40 9d e5                                      ldr r4, [sp, #0x10]
00861ac4  00 00 96 e5                                      ldr r0, [r6]
00861ac8  00 00 50 e3                                      cmp r0, #0
00861acc  01 00 00 0a                                      beq #0x861ad8
00861ad0  70 00 bd e8                                      pop {r4, r5, r6}
00861ad4  c3 10 00 ea                                      b #0x865de8
00861ad8  70 00 bd e8                                      pop {r4, r5, r6}
00861adc  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
00861ae0  dc 2f 13 00 9c 17 00 00                          .byte 0xdc, 0x2f, 0x13, 0x00, 0x9c, 0x17, 0x00, 0x00

; FUNCTION 0x00861ae8, declared_size=40, range_size=40, mode=arm
; class-group: vox::VoxEngine
; alias: _ZN3vox9VoxEngine21Get3DListenerVelocityERfS1_S1_
; demangled: vox::VoxEngine::Get3DListenerVelocity(float&, float&, float&)
; decoder-mode: arm
00861ae8  18 00 9f e5                                      ldr r0, [pc, #0x18]
00861aec  18 c0 9f e5                                      ldr ip, [pc, #0x18]
00861af0  00 00 8f e0                                      add r0, pc, r0
00861af4  0c c0 90 e7                                      ldr ip, [r0, ip]
00861af8  00 00 9c e5                                      ldr r0, [ip]
00861afc  00 00 50 e3                                      cmp r0, #0
00861b00  1e ff 2f 01                                      bxeq lr
00861b04  d3 10 00 ea                                      b #0x865e58
; mapping-symbol data/literal pool
00861b08  a0 2f 13 00 9c 17 00 00                          .byte 0xa0, 0x2f, 0x13, 0x00, 0x9c, 0x17, 0x00, 0x00

; FUNCTION 0x00861b10, declared_size=40, range_size=40, mode=arm
; class-group: vox::VoxEngine
; alias: _ZN3vox9VoxEngine21Get3DListenerPositionERfS1_S1_
; demangled: vox::VoxEngine::Get3DListenerPosition(float&, float&, float&)
; decoder-mode: arm
00861b10  18 00 9f e5                                      ldr r0, [pc, #0x18]
00861b14  18 c0 9f e5                                      ldr ip, [pc, #0x18]
00861b18  00 00 8f e0                                      add r0, pc, r0
00861b1c  0c c0 90 e7                                      ldr ip, [r0, ip]
00861b20  00 00 9c e5                                      ldr r0, [ip]
00861b24  00 00 50 e3                                      cmp r0, #0
00861b28  1e ff 2f 01                                      bxeq lr
00861b2c  da 10 00 ea                                      b #0x865e9c
; mapping-symbol data/literal pool
00861b30  78 2f 13 00 9c 17 00 00                          .byte 0x78, 0x2f, 0x13, 0x00, 0x9c, 0x17, 0x00, 0x00

; FUNCTION 0x00861b38, declared_size=40, range_size=40, mode=arm
; class-group: vox::VoxEngine
; alias: _ZN3vox9VoxEngine22Set3DGeneralParameteriEii
; demangled: vox::VoxEngine::Set3DGeneralParameteri(int, int)
; decoder-mode: arm
00861b38  18 30 9f e5                                      ldr r3, [pc, #0x18]
00861b3c  18 00 9f e5                                      ldr r0, [pc, #0x18]
00861b40  03 30 8f e0                                      add r3, pc, r3
00861b44  00 00 93 e7                                      ldr r0, [r3, r0]
00861b48  00 00 90 e5                                      ldr r0, [r0]
00861b4c  00 00 50 e3                                      cmp r0, #0
00861b50  1e ff 2f 01                                      bxeq lr
00861b54  e1 10 00 ea                                      b #0x865ee0
; mapping-symbol data/literal pool
00861b58  50 2f 13 00 9c 17 00 00                          .byte 0x50, 0x2f, 0x13, 0x00, 0x9c, 0x17, 0x00, 0x00

; FUNCTION 0x00861b60, declared_size=40, range_size=40, mode=arm
; class-group: vox::VoxEngine
; alias: _ZN3vox9VoxEngine22Set3DGeneralParameterfEif
; demangled: vox::VoxEngine::Set3DGeneralParameterf(int, float)
; decoder-mode: arm
00861b60  18 30 9f e5                                      ldr r3, [pc, #0x18]
00861b64  18 00 9f e5                                      ldr r0, [pc, #0x18]
00861b68  03 30 8f e0                                      add r3, pc, r3
00861b6c  00 00 93 e7                                      ldr r0, [r3, r0]
00861b70  00 00 90 e5                                      ldr r0, [r0]
00861b74  00 00 50 e3                                      cmp r0, #0
00861b78  1e ff 2f 01                                      bxeq lr
00861b7c  e5 10 00 ea                                      b #0x865f18
; mapping-symbol data/literal pool
00861b80  28 2f 13 00 9c 17 00 00                          .byte 0x28, 0x2f, 0x13, 0x00, 0x9c, 0x17, 0x00, 0x00

; FUNCTION 0x00861b88, declared_size=40, range_size=40, mode=arm
; class-group: vox::VoxEngine
; alias: _ZN3vox9VoxEngine21Set3DGeneralParameterERKNS_22Vox3DGeneralParametersE
; demangled: vox::VoxEngine::Set3DGeneralParameter(vox::Vox3DGeneralParameters const&)
; decoder-mode: arm
00861b88  18 30 9f e5                                      ldr r3, [pc, #0x18]
00861b8c  18 20 9f e5                                      ldr r2, [pc, #0x18]
00861b90  03 30 8f e0                                      add r3, pc, r3
00861b94  02 20 93 e7                                      ldr r2, [r3, r2]
00861b98  00 00 92 e5                                      ldr r0, [r2]
00861b9c  00 00 50 e3                                      cmp r0, #0
00861ba0  1e ff 2f 01                                      bxeq lr
00861ba4  ef 10 00 ea                                      b #0x865f68
; mapping-symbol data/literal pool
00861ba8  00 2f 13 00 9c 17 00 00                          .byte 0x00, 0x2f, 0x13, 0x00, 0x9c, 0x17, 0x00, 0x00

; FUNCTION 0x00861bb0, declared_size=64, range_size=64, mode=arm
; class-group: vox::VoxEngine
; alias: _ZN3vox9VoxEngine24Set3DListenerOrientationEffffff
; demangled: vox::VoxEngine::Set3DListenerOrientation(float, float, float, float, float, float)
; decoder-mode: arm
00861bb0  30 00 9f e5                                      ldr r0, [pc, #0x30]
00861bb4  30 c0 9f e5                                      ldr ip, [pc, #0x30]
00861bb8  70 00 2d e9                                      push {r4, r5, r6}
00861bbc  00 00 8f e0                                      add r0, pc, r0
00861bc0  0c 60 90 e7                                      ldr r6, [r0, ip]
00861bc4  0c 50 9d e5                                      ldr r5, [sp, #0xc]
00861bc8  10 40 9d e5                                      ldr r4, [sp, #0x10]
00861bcc  00 00 96 e5                                      ldr r0, [r6]
00861bd0  00 00 50 e3                                      cmp r0, #0
00861bd4  01 00 00 0a                                      beq #0x861be0
00861bd8  70 00 bd e8                                      pop {r4, r5, r6}
00861bdc  f5 10 00 ea                                      b #0x865fb8
00861be0  70 00 bd e8                                      pop {r4, r5, r6}
00861be4  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
00861be8  d4 2e 13 00 9c 17 00 00                          .byte 0xd4, 0x2e, 0x13, 0x00, 0x9c, 0x17, 0x00, 0x00

; FUNCTION 0x00861bf0, declared_size=40, range_size=40, mode=arm
; class-group: vox::VoxEngine
; alias: _ZN3vox9VoxEngine21Set3DListenerVelocityEfff
; demangled: vox::VoxEngine::Set3DListenerVelocity(float, float, float)
; decoder-mode: arm
00861bf0  18 00 9f e5                                      ldr r0, [pc, #0x18]
00861bf4  18 c0 9f e5                                      ldr ip, [pc, #0x18]
00861bf8  00 00 8f e0                                      add r0, pc, r0
00861bfc  0c c0 90 e7                                      ldr ip, [r0, ip]
00861c00  00 00 9c e5                                      ldr r0, [ip]
00861c04  00 00 50 e3                                      cmp r0, #0
00861c08  1e ff 2f 01                                      bxeq lr
00861c0c  01 11 00 ea                                      b #0x866018
; mapping-symbol data/literal pool
00861c10  98 2e 13 00 9c 17 00 00                          .byte 0x98, 0x2e, 0x13, 0x00, 0x9c, 0x17, 0x00, 0x00

; FUNCTION 0x00861c18, declared_size=40, range_size=40, mode=arm
; class-group: vox::VoxEngine
; alias: _ZN3vox9VoxEngine21Set3DListenerPositionEfff
; demangled: vox::VoxEngine::Set3DListenerPosition(float, float, float)
; decoder-mode: arm
00861c18  18 00 9f e5                                      ldr r0, [pc, #0x18]
00861c1c  18 c0 9f e5                                      ldr ip, [pc, #0x18]
00861c20  00 00 8f e0                                      add r0, pc, r0
00861c24  0c c0 90 e7                                      ldr ip, [r0, ip]
00861c28  00 00 9c e5                                      ldr r0, [ip]
00861c2c  00 00 50 e3                                      cmp r0, #0
00861c30  1e ff 2f 01                                      bxeq lr
00861c34  07 11 00 ea                                      b #0x866058
; mapping-symbol data/literal pool
00861c38  70 2e 13 00 9c 17 00 00                          .byte 0x70, 0x2e, 0x13, 0x00, 0x9c, 0x17, 0x00, 0x00

; FUNCTION 0x00861c40, declared_size=40, range_size=40, mode=arm
; class-group: vox::VoxEngine
; alias: _ZN3vox9VoxEngine22Get3DEmitterParameteriERNS_13EmitterHandleEiRi
; demangled: vox::VoxEngine::Get3DEmitterParameteri(vox::EmitterHandle&, int, int&)
; decoder-mode: arm
00861c40  18 00 9f e5                                      ldr r0, [pc, #0x18]
00861c44  18 c0 9f e5                                      ldr ip, [pc, #0x18]
00861c48  00 00 8f e0                                      add r0, pc, r0
00861c4c  0c c0 90 e7                                      ldr ip, [r0, ip]
00861c50  00 00 9c e5                                      ldr r0, [ip]
00861c54  00 00 50 e3                                      cmp r0, #0
00861c58  1e ff 2f 01                                      bxeq lr
00861c5c  b0 16 00 ea                                      b #0x867724
; mapping-symbol data/literal pool
00861c60  48 2e 13 00 9c 17 00 00                          .byte 0x48, 0x2e, 0x13, 0x00, 0x9c, 0x17, 0x00, 0x00

; FUNCTION 0x00861c68, declared_size=40, range_size=40, mode=arm
; class-group: vox::VoxEngine
; alias: _ZN3vox9VoxEngine22Get3DEmitterParameterfERNS_13EmitterHandleEiRf
; demangled: vox::VoxEngine::Get3DEmitterParameterf(vox::EmitterHandle&, int, float&)
; decoder-mode: arm
00861c68  18 00 9f e5                                      ldr r0, [pc, #0x18]
00861c6c  18 c0 9f e5                                      ldr ip, [pc, #0x18]
00861c70  00 00 8f e0                                      add r0, pc, r0
00861c74  0c c0 90 e7                                      ldr ip, [r0, ip]
00861c78  00 00 9c e5                                      ldr r0, [ip]
00861c7c  00 00 50 e3                                      cmp r0, #0
00861c80  1e ff 2f 01                                      bxeq lr
00861c84  b9 16 00 ea                                      b #0x867770
; mapping-symbol data/literal pool
00861c88  20 2e 13 00 9c 17 00 00                          .byte 0x20, 0x2e, 0x13, 0x00, 0x9c, 0x17, 0x00, 0x00

; FUNCTION 0x00861c90, declared_size=40, range_size=40, mode=arm
; class-group: vox::VoxEngine
; alias: _ZN3vox9VoxEngine22Get3DEmitterParametersERNS_13EmitterHandleERNS_22Vox3DEmitterParametersE
; demangled: vox::VoxEngine::Get3DEmitterParameters(vox::EmitterHandle&, vox::Vox3DEmitterParameters&)
; decoder-mode: arm
00861c90  18 30 9f e5                                      ldr r3, [pc, #0x18]
00861c94  18 00 9f e5                                      ldr r0, [pc, #0x18]
00861c98  03 30 8f e0                                      add r3, pc, r3
00861c9c  00 00 93 e7                                      ldr r0, [r3, r0]
00861ca0  00 00 90 e5                                      ldr r0, [r0]
00861ca4  00 00 50 e3                                      cmp r0, #0
00861ca8  1e ff 2f 01                                      bxeq lr
00861cac  c2 16 00 ea                                      b #0x8677bc
; mapping-symbol data/literal pool
00861cb0  f8 2d 13 00 9c 17 00 00                          .byte 0xf8, 0x2d, 0x13, 0x00, 0x9c, 0x17, 0x00, 0x00

; FUNCTION 0x00861cb8, declared_size=56, range_size=56, mode=arm
; class-group: vox::VoxEngine
; alias: _ZN3vox9VoxEngine21Get3DEmitterDirectionERNS_13EmitterHandleERfS3_S3_
; demangled: vox::VoxEngine::Get3DEmitterDirection(vox::EmitterHandle&, float&, float&, float&)
; decoder-mode: arm
00861cb8  28 00 9f e5                                      ldr r0, [pc, #0x28]
00861cbc  04 40 2d e5                                      str r4, [sp, #-4]!
00861cc0  24 40 9f e5                                      ldr r4, [pc, #0x24]
00861cc4  00 00 8f e0                                      add r0, pc, r0
00861cc8  04 40 90 e7                                      ldr r4, [r0, r4]
00861ccc  00 00 94 e5                                      ldr r0, [r4]
00861cd0  00 00 50 e3                                      cmp r0, #0
00861cd4  01 00 00 0a                                      beq #0x861ce0
00861cd8  10 00 bd e8                                      ldm sp!, {r4}
00861cdc  e4 16 00 ea                                      b #0x867874
00861ce0  10 00 bd e8                                      ldm sp!, {r4}
00861ce4  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
00861ce8  cc 2d 13 00 9c 17 00 00                          .byte 0xcc, 0x2d, 0x13, 0x00, 0x9c, 0x17, 0x00, 0x00

; FUNCTION 0x00861cf0, declared_size=56, range_size=56, mode=arm
; class-group: vox::VoxEngine
; alias: _ZN3vox9VoxEngine20Get3DEmitterVelocityERNS_13EmitterHandleERfS3_S3_
; demangled: vox::VoxEngine::Get3DEmitterVelocity(vox::EmitterHandle&, float&, float&, float&)
; decoder-mode: arm
00861cf0  28 00 9f e5                                      ldr r0, [pc, #0x28]
00861cf4  04 40 2d e5                                      str r4, [sp, #-4]!
00861cf8  24 40 9f e5                                      ldr r4, [pc, #0x24]
00861cfc  00 00 8f e0                                      add r0, pc, r0
00861d00  04 40 90 e7                                      ldr r4, [r0, r4]
00861d04  00 00 94 e5                                      ldr r0, [r4]
00861d08  00 00 50 e3                                      cmp r0, #0
00861d0c  01 00 00 0a                                      beq #0x861d18
00861d10  10 00 bd e8                                      ldm sp!, {r4}
00861d14  ee 16 00 ea                                      b #0x8678d4
00861d18  10 00 bd e8                                      ldm sp!, {r4}
00861d1c  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
00861d20  94 2d 13 00 9c 17 00 00                          .byte 0x94, 0x2d, 0x13, 0x00, 0x9c, 0x17, 0x00, 0x00

; FUNCTION 0x00861d28, declared_size=56, range_size=56, mode=arm
; class-group: vox::VoxEngine
; alias: _ZN3vox9VoxEngine20Get3DEmitterPositionERNS_13EmitterHandleERfS3_S3_
; demangled: vox::VoxEngine::Get3DEmitterPosition(vox::EmitterHandle&, float&, float&, float&)
; decoder-mode: arm
00861d28  28 00 9f e5                                      ldr r0, [pc, #0x28]
00861d2c  04 40 2d e5                                      str r4, [sp, #-4]!
00861d30  24 40 9f e5                                      ldr r4, [pc, #0x24]
00861d34  00 00 8f e0                                      add r0, pc, r0
00861d38  04 40 90 e7                                      ldr r4, [r0, r4]
00861d3c  00 00 94 e5                                      ldr r0, [r4]
00861d40  00 00 50 e3                                      cmp r0, #0
00861d44  01 00 00 0a                                      beq #0x861d50
00861d48  10 00 bd e8                                      ldm sp!, {r4}
00861d4c  f8 16 00 ea                                      b #0x867934
00861d50  10 00 bd e8                                      ldm sp!, {r4}
00861d54  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
00861d58  5c 2d 13 00 9c 17 00 00                          .byte 0x5c, 0x2d, 0x13, 0x00, 0x9c, 0x17, 0x00, 0x00

; FUNCTION 0x00861d60, declared_size=40, range_size=40, mode=arm
; class-group: vox::VoxEngine
; alias: _ZN3vox9VoxEngine22Set3DEmitterParameteriERNS_13EmitterHandleEii
; demangled: vox::VoxEngine::Set3DEmitterParameteri(vox::EmitterHandle&, int, int)
; decoder-mode: arm
00861d60  18 00 9f e5                                      ldr r0, [pc, #0x18]
00861d64  18 c0 9f e5                                      ldr ip, [pc, #0x18]
00861d68  00 00 8f e0                                      add r0, pc, r0
00861d6c  0c c0 90 e7                                      ldr ip, [r0, ip]
00861d70  00 00 9c e5                                      ldr r0, [ip]
00861d74  00 00 50 e3                                      cmp r0, #0
00861d78  1e ff 2f 01                                      bxeq lr
00861d7c  04 17 00 ea                                      b #0x867994
; mapping-symbol data/literal pool
00861d80  28 2d 13 00 9c 17 00 00                          .byte 0x28, 0x2d, 0x13, 0x00, 0x9c, 0x17, 0x00, 0x00

; FUNCTION 0x00861d88, declared_size=40, range_size=40, mode=arm
; class-group: vox::VoxEngine
; alias: _ZN3vox9VoxEngine22Set3DEmitterParameterfERNS_13EmitterHandleEif
; demangled: vox::VoxEngine::Set3DEmitterParameterf(vox::EmitterHandle&, int, float)
; decoder-mode: arm
00861d88  18 00 9f e5                                      ldr r0, [pc, #0x18]
00861d8c  18 c0 9f e5                                      ldr ip, [pc, #0x18]
00861d90  00 00 8f e0                                      add r0, pc, r0
00861d94  0c c0 90 e7                                      ldr ip, [r0, ip]
00861d98  00 00 9c e5                                      ldr r0, [ip]
00861d9c  00 00 50 e3                                      cmp r0, #0
00861da0  1e ff 2f 01                                      bxeq lr
00861da4  0d 17 00 ea                                      b #0x8679e0
; mapping-symbol data/literal pool
00861da8  00 2d 13 00 9c 17 00 00                          .byte 0x00, 0x2d, 0x13, 0x00, 0x9c, 0x17, 0x00, 0x00

; FUNCTION 0x00861db0, declared_size=40, range_size=40, mode=arm
; class-group: vox::VoxEngine
; alias: _ZN3vox9VoxEngine22Set3DEmitterParametersERNS_13EmitterHandleERKNS_22Vox3DEmitterParametersE
; demangled: vox::VoxEngine::Set3DEmitterParameters(vox::EmitterHandle&, vox::Vox3DEmitterParameters const&)
; decoder-mode: arm
00861db0  18 30 9f e5                                      ldr r3, [pc, #0x18]
00861db4  18 00 9f e5                                      ldr r0, [pc, #0x18]
00861db8  03 30 8f e0                                      add r3, pc, r3
00861dbc  00 00 93 e7                                      ldr r0, [r3, r0]
00861dc0  00 00 90 e5                                      ldr r0, [r0]
00861dc4  00 00 50 e3                                      cmp r0, #0
00861dc8  1e ff 2f 01                                      bxeq lr
00861dcc  16 17 00 ea                                      b #0x867a2c
; mapping-symbol data/literal pool
00861dd0  d8 2c 13 00 9c 17 00 00                          .byte 0xd8, 0x2c, 0x13, 0x00, 0x9c, 0x17, 0x00, 0x00

; FUNCTION 0x00861dd8, declared_size=56, range_size=56, mode=arm
; class-group: vox::VoxEngine
; alias: _ZN3vox9VoxEngine21Set3DEmitterDirectionERNS_13EmitterHandleEfff
; demangled: vox::VoxEngine::Set3DEmitterDirection(vox::EmitterHandle&, float, float, float)
; decoder-mode: arm
00861dd8  28 00 9f e5                                      ldr r0, [pc, #0x28]
00861ddc  04 40 2d e5                                      str r4, [sp, #-4]!
00861de0  24 40 9f e5                                      ldr r4, [pc, #0x24]
00861de4  00 00 8f e0                                      add r0, pc, r0
00861de8  04 40 90 e7                                      ldr r4, [r0, r4]
00861dec  00 00 94 e5                                      ldr r0, [r4]
00861df0  00 00 50 e3                                      cmp r0, #0
00861df4  01 00 00 0a                                      beq #0x861e00
00861df8  10 00 bd e8                                      ldm sp!, {r4}
00861dfc  38 17 00 ea                                      b #0x867ae4
00861e00  10 00 bd e8                                      ldm sp!, {r4}
00861e04  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
00861e08  ac 2c 13 00 9c 17 00 00                          .byte 0xac, 0x2c, 0x13, 0x00, 0x9c, 0x17, 0x00, 0x00

; FUNCTION 0x00861e10, declared_size=56, range_size=56, mode=arm
; class-group: vox::VoxEngine
; alias: _ZN3vox9VoxEngine20Set3DEmitterVelocityERNS_13EmitterHandleEfff
; demangled: vox::VoxEngine::Set3DEmitterVelocity(vox::EmitterHandle&, float, float, float)
; decoder-mode: arm
00861e10  28 00 9f e5                                      ldr r0, [pc, #0x28]
00861e14  04 40 2d e5                                      str r4, [sp, #-4]!
00861e18  24 40 9f e5                                      ldr r4, [pc, #0x24]
00861e1c  00 00 8f e0                                      add r0, pc, r0
00861e20  04 40 90 e7                                      ldr r4, [r0, r4]
00861e24  00 00 94 e5                                      ldr r0, [r4]
00861e28  00 00 50 e3                                      cmp r0, #0
00861e2c  01 00 00 0a                                      beq #0x861e38
00861e30  10 00 bd e8                                      ldm sp!, {r4}
00861e34  42 17 00 ea                                      b #0x867b44
00861e38  10 00 bd e8                                      ldm sp!, {r4}
00861e3c  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
00861e40  74 2c 13 00 9c 17 00 00                          .byte 0x74, 0x2c, 0x13, 0x00, 0x9c, 0x17, 0x00, 0x00

; FUNCTION 0x00861e48, declared_size=56, range_size=56, mode=arm
; class-group: vox::VoxEngine
; alias: _ZN3vox9VoxEngine20Set3DEmitterPositionERNS_13EmitterHandleEfff
; demangled: vox::VoxEngine::Set3DEmitterPosition(vox::EmitterHandle&, float, float, float)
; decoder-mode: arm
00861e48  28 00 9f e5                                      ldr r0, [pc, #0x28]
00861e4c  04 40 2d e5                                      str r4, [sp, #-4]!
00861e50  24 40 9f e5                                      ldr r4, [pc, #0x24]
00861e54  00 00 8f e0                                      add r0, pc, r0
00861e58  04 40 90 e7                                      ldr r4, [r0, r4]
00861e5c  00 00 94 e5                                      ldr r0, [r4]
00861e60  00 00 50 e3                                      cmp r0, #0
00861e64  01 00 00 0a                                      beq #0x861e70
00861e68  10 00 bd e8                                      ldm sp!, {r4}
00861e6c  4c 17 00 ea                                      b #0x867ba4
00861e70  10 00 bd e8                                      ldm sp!, {r4}
00861e74  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
00861e78  3c 2c 13 00 9c 17 00 00                          .byte 0x3c, 0x2c, 0x13, 0x00, 0x9c, 0x17, 0x00, 0x00

; FUNCTION 0x00861e80, declared_size=48, range_size=48, mode=arm
; class-group: vox::VoxEngine
; alias: _ZN3vox9VoxEngine12GetGroupGainEi
; demangled: vox::VoxEngine::GetGroupGain(int)
; decoder-mode: arm
00861e80  20 30 9f e5                                      ldr r3, [pc, #0x20]
00861e84  20 20 9f e5                                      ldr r2, [pc, #0x20]
00861e88  03 30 8f e0                                      add r3, pc, r3
00861e8c  02 20 93 e7                                      ldr r2, [r3, r2]
00861e90  00 00 92 e5                                      ldr r0, [r2]
00861e94  00 00 50 e3                                      cmp r0, #0
00861e98  00 00 00 0a                                      beq #0x861ea0
00861e9c  7d 10 00 ea                                      b #0x866098
00861ea0  00 00 a0 e3                                      mov r0, #0
00861ea4  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
00861ea8  08 2c 13 00 9c 17 00 00                          .byte 0x08, 0x2c, 0x13, 0x00, 0x9c, 0x17, 0x00, 0x00

; FUNCTION 0x00861eb0, declared_size=48, range_size=48, mode=arm
; class-group: vox::VoxEngine
; alias: _ZN3vox9VoxEngine13GetMasterGainEv
; demangled: vox::VoxEngine::GetMasterGain()
; decoder-mode: arm
00861eb0  20 30 9f e5                                      ldr r3, [pc, #0x20]
00861eb4  20 20 9f e5                                      ldr r2, [pc, #0x20]
00861eb8  03 30 8f e0                                      add r3, pc, r3
00861ebc  02 20 93 e7                                      ldr r2, [r3, r2]
00861ec0  00 00 92 e5                                      ldr r0, [r2]
00861ec4  00 00 50 e3                                      cmp r0, #0
00861ec8  00 00 00 0a                                      beq #0x861ed0
00861ecc  80 10 00 ea                                      b #0x8660d4
00861ed0  00 00 a0 e3                                      mov r0, #0
00861ed4  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
00861ed8  d8 2b 13 00 9c 17 00 00                          .byte 0xd8, 0x2b, 0x13, 0x00, 0x9c, 0x17, 0x00, 0x00

; FUNCTION 0x00861ee0, declared_size=40, range_size=40, mode=arm
; class-group: vox::VoxEngine
; alias: _ZN3vox9VoxEngine9GetStatusERNS_13EmitterHandleE
; demangled: vox::VoxEngine::GetStatus(vox::EmitterHandle&)
; decoder-mode: arm
00861ee0  18 30 9f e5                                      ldr r3, [pc, #0x18]
00861ee4  18 20 9f e5                                      ldr r2, [pc, #0x18]
00861ee8  03 30 8f e0                                      add r3, pc, r3
00861eec  02 20 93 e7                                      ldr r2, [r3, r2]
00861ef0  00 00 92 e5                                      ldr r0, [r2]
00861ef4  00 00 50 e3                                      cmp r0, #0
00861ef8  1e ff 2f 01                                      bxeq lr
00861efc  87 17 00 ea                                      b #0x867d20
; mapping-symbol data/literal pool
00861f00  a8 2b 13 00 9c 17 00 00                          .byte 0xa8, 0x2b, 0x13, 0x00, 0x9c, 0x17, 0x00, 0x00

; FUNCTION 0x00861f08, declared_size=48, range_size=48, mode=arm
; class-group: vox::VoxEngine
; alias: _ZN3vox9VoxEngine6IsDoneERNS_13EmitterHandleE
; demangled: vox::VoxEngine::IsDone(vox::EmitterHandle&)
; decoder-mode: arm
00861f08  20 30 9f e5                                      ldr r3, [pc, #0x20]
00861f0c  20 20 9f e5                                      ldr r2, [pc, #0x20]
00861f10  03 30 8f e0                                      add r3, pc, r3
00861f14  02 20 93 e7                                      ldr r2, [r3, r2]
00861f18  00 00 92 e5                                      ldr r0, [r2]
00861f1c  00 00 50 e3                                      cmp r0, #0
00861f20  00 00 00 0a                                      beq #0x861f28
00861f24  8e 17 00 ea                                      b #0x867d64
00861f28  01 00 a0 e3                                      mov r0, #1
00861f2c  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
00861f30  80 2b 13 00 9c 17 00 00                          .byte 0x80, 0x2b, 0x13, 0x00, 0x9c, 0x17, 0x00, 0x00

; FUNCTION 0x00861f38, declared_size=40, range_size=40, mode=arm
; class-group: vox::VoxEngine
; alias: _ZN3vox9VoxEngine9IsPlayingERNS_13EmitterHandleE
; demangled: vox::VoxEngine::IsPlaying(vox::EmitterHandle&)
; decoder-mode: arm
00861f38  18 30 9f e5                                      ldr r3, [pc, #0x18]
00861f3c  18 20 9f e5                                      ldr r2, [pc, #0x18]
00861f40  03 30 8f e0                                      add r3, pc, r3
00861f44  02 20 93 e7                                      ldr r2, [r3, r2]
00861f48  00 00 92 e5                                      ldr r0, [r2]
00861f4c  00 00 50 e3                                      cmp r0, #0
00861f50  1e ff 2f 01                                      bxeq lr
00861f54  94 17 00 ea                                      b #0x867dac
; mapping-symbol data/literal pool
00861f58  50 2b 13 00 9c 17 00 00                          .byte 0x50, 0x2b, 0x13, 0x00, 0x9c, 0x17, 0x00, 0x00

; FUNCTION 0x00861f60, declared_size=40, range_size=40, mode=arm
; class-group: vox::VoxEngine
; alias: _ZN3vox9VoxEngine7IsAliveERNS_13EmitterHandleE
; demangled: vox::VoxEngine::IsAlive(vox::EmitterHandle&)
; decoder-mode: arm
00861f60  18 30 9f e5                                      ldr r3, [pc, #0x18]
00861f64  18 20 9f e5                                      ldr r2, [pc, #0x18]
00861f68  03 30 8f e0                                      add r3, pc, r3
00861f6c  02 20 93 e7                                      ldr r2, [r3, r2]
00861f70  00 00 92 e5                                      ldr r0, [r2]
00861f74  00 00 50 e3                                      cmp r0, #0
00861f78  1e ff 2f 01                                      bxeq lr
00861f7c  9b 17 00 ea                                      b #0x867df0
; mapping-symbol data/literal pool
00861f80  28 2b 13 00 9c 17 00 00                          .byte 0x28, 0x2b, 0x13, 0x00, 0x9c, 0x17, 0x00, 0x00

; FUNCTION 0x00861f88, declared_size=40, range_size=40, mode=arm
; class-group: vox::VoxEngine
; alias: _ZN3vox9VoxEngine7IsValidERNS_13EmitterHandleE
; demangled: vox::VoxEngine::IsValid(vox::EmitterHandle&)
; decoder-mode: arm
00861f88  18 30 9f e5                                      ldr r3, [pc, #0x18]
00861f8c  18 20 9f e5                                      ldr r2, [pc, #0x18]
00861f90  03 30 8f e0                                      add r3, pc, r3
00861f94  02 20 93 e7                                      ldr r2, [r3, r2]
00861f98  00 00 92 e5                                      ldr r0, [r2]
00861f9c  00 00 50 e3                                      cmp r0, #0
00861fa0  1e ff 2f 01                                      bxeq lr
00861fa4  a2 17 00 ea                                      b #0x867e34
; mapping-symbol data/literal pool
00861fa8  00 2b 13 00 9c 17 00 00                          .byte 0x00, 0x2b, 0x13, 0x00, 0x9c, 0x17, 0x00, 0x00

; FUNCTION 0x00861fb0, declared_size=40, range_size=40, mode=arm
; class-group: vox::VoxEngine
; alias: _ZN3vox9VoxEngine7IsReadyERNS_13EmitterHandleE
; demangled: vox::VoxEngine::IsReady(vox::EmitterHandle&)
; decoder-mode: arm
00861fb0  18 30 9f e5                                      ldr r3, [pc, #0x18]
00861fb4  18 20 9f e5                                      ldr r2, [pc, #0x18]
00861fb8  03 30 8f e0                                      add r3, pc, r3
00861fbc  02 20 93 e7                                      ldr r2, [r3, r2]
00861fc0  00 00 92 e5                                      ldr r0, [r2]
00861fc4  00 00 50 e3                                      cmp r0, #0
00861fc8  1e ff 2f 01                                      bxeq lr
00861fcc  a7 17 00 ea                                      b #0x867e70
; mapping-symbol data/literal pool
00861fd0  d8 2a 13 00 9c 17 00 00                          .byte 0xd8, 0x2a, 0x13, 0x00, 0x9c, 0x17, 0x00, 0x00

; FUNCTION 0x00861fd8, declared_size=40, range_size=40, mode=arm
; class-group: vox::VoxEngine
; alias: _ZN3vox9VoxEngine13SetPlayCursorERNS_13EmitterHandleEf
; demangled: vox::VoxEngine::SetPlayCursor(vox::EmitterHandle&, float)
; decoder-mode: arm
00861fd8  18 30 9f e5                                      ldr r3, [pc, #0x18]
00861fdc  18 00 9f e5                                      ldr r0, [pc, #0x18]
00861fe0  03 30 8f e0                                      add r3, pc, r3
00861fe4  00 00 93 e7                                      ldr r0, [r3, r0]
00861fe8  00 00 90 e5                                      ldr r0, [r0]
00861fec  00 00 50 e3                                      cmp r0, #0
00861ff0  1e ff 2f 01                                      bxeq lr
00861ff4  26 17 00 ea                                      b #0x867c94
; mapping-symbol data/literal pool
00861ff8  b0 2a 13 00 9c 17 00 00                          .byte 0xb0, 0x2a, 0x13, 0x00, 0x9c, 0x17, 0x00, 0x00

; FUNCTION 0x00862000, declared_size=48, range_size=48, mode=arm
; class-group: vox::VoxEngine
; alias: _ZN3vox9VoxEngine13GetPlayCursorERNS_13EmitterHandleE
; demangled: vox::VoxEngine::GetPlayCursor(vox::EmitterHandle&)
; decoder-mode: arm
00862000  20 30 9f e5                                      ldr r3, [pc, #0x20]
00862004  20 20 9f e5                                      ldr r2, [pc, #0x20]
00862008  03 30 8f e0                                      add r3, pc, r3
0086200c  02 20 93 e7                                      ldr r2, [r3, r2]
00862010  00 00 92 e5                                      ldr r0, [r2]
00862014  00 00 50 e3                                      cmp r0, #0
00862018  00 00 00 0a                                      beq #0x862020
0086201c  2d 17 00 ea                                      b #0x867cd8
00862020  00 00 a0 e3                                      mov r0, #0
00862024  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
00862028  88 2a 13 00 9c 17 00 00                          .byte 0x88, 0x2a, 0x13, 0x00, 0x9c, 0x17, 0x00, 0x00

; FUNCTION 0x00862030, declared_size=40, range_size=40, mode=arm
; class-group: vox::VoxEngine
; alias: _ZN3vox9VoxEngine8GetGroupERNS_13EmitterHandleE
; demangled: vox::VoxEngine::GetGroup(vox::EmitterHandle&)
; decoder-mode: arm
00862030  18 30 9f e5                                      ldr r3, [pc, #0x18]
00862034  18 20 9f e5                                      ldr r2, [pc, #0x18]
00862038  03 30 8f e0                                      add r3, pc, r3
0086203c  02 20 93 e7                                      ldr r2, [r3, r2]
00862040  00 00 92 e5                                      ldr r0, [r2]
00862044  00 00 50 e3                                      cmp r0, #0
00862048  1e ff 2f 01                                      bxeq lr
0086204c  ec 16 00 ea                                      b #0x867c04
; mapping-symbol data/literal pool
00862050  58 2a 13 00 9c 17 00 00                          .byte 0x58, 0x2a, 0x13, 0x00, 0x9c, 0x17, 0x00, 0x00

; FUNCTION 0x00862058, declared_size=40, range_size=40, mode=arm
; class-group: vox::VoxEngine
; alias: _ZN3vox9VoxEngine8SetGroupERNS_13EmitterHandleEi
; demangled: vox::VoxEngine::SetGroup(vox::EmitterHandle&, int)
; decoder-mode: arm
00862058  18 30 9f e5                                      ldr r3, [pc, #0x18]
0086205c  18 00 9f e5                                      ldr r0, [pc, #0x18]
00862060  03 30 8f e0                                      add r3, pc, r3
00862064  00 00 93 e7                                      ldr r0, [r3, r0]
00862068  00 00 90 e5                                      ldr r0, [r0]
0086206c  00 00 50 e3                                      cmp r0, #0
00862070  1e ff 2f 01                                      bxeq lr
00862074  f3 16 00 ea                                      b #0x867c48
; mapping-symbol data/literal pool
00862078  30 2a 13 00 9c 17 00 00                          .byte 0x30, 0x2a, 0x13, 0x00, 0x9c, 0x17, 0x00, 0x00

; FUNCTION 0x00862080, declared_size=40, range_size=40, mode=arm
; class-group: vox::VoxEngine
; alias: _ZN3vox9VoxEngine17ResumeAllEmittersEjf
; demangled: vox::VoxEngine::ResumeAllEmitters(unsigned int, float)
; decoder-mode: arm
00862080  18 30 9f e5                                      ldr r3, [pc, #0x18]
00862084  18 00 9f e5                                      ldr r0, [pc, #0x18]
00862088  03 30 8f e0                                      add r3, pc, r3
0086208c  00 00 93 e7                                      ldr r0, [r3, r0]
00862090  00 00 90 e5                                      ldr r0, [r0]
00862094  00 00 50 e3                                      cmp r0, #0
00862098  1e ff 2f 01                                      bxeq lr
0086209c  8e 28 00 ea                                      b #0x86c2dc
; mapping-symbol data/literal pool
008620a0  08 2a 13 00 9c 17 00 00                          .byte 0x08, 0x2a, 0x13, 0x00, 0x9c, 0x17, 0x00, 0x00

; FUNCTION 0x008620a8, declared_size=40, range_size=40, mode=arm
; class-group: vox::VoxEngine
; alias: _ZN3vox9VoxEngine16PauseAllEmittersEjf
; demangled: vox::VoxEngine::PauseAllEmitters(unsigned int, float)
; decoder-mode: arm
008620a8  18 30 9f e5                                      ldr r3, [pc, #0x18]
008620ac  18 00 9f e5                                      ldr r0, [pc, #0x18]
008620b0  03 30 8f e0                                      add r3, pc, r3
008620b4  00 00 93 e7                                      ldr r0, [r3, r0]
008620b8  00 00 90 e5                                      ldr r0, [r0]
008620bc  00 00 50 e3                                      cmp r0, #0
008620c0  1e ff 2f 01                                      bxeq lr
008620c4  57 31 00 ea                                      b #0x86e628
; mapping-symbol data/literal pool
008620c8  e0 29 13 00 9c 17 00 00                          .byte 0xe0, 0x29, 0x13, 0x00, 0x9c, 0x17, 0x00, 0x00

; FUNCTION 0x008620d0, declared_size=40, range_size=40, mode=arm
; class-group: vox::VoxEngine
; alias: _ZN3vox9VoxEngine15StopAllEmittersEjf
; demangled: vox::VoxEngine::StopAllEmitters(unsigned int, float)
; decoder-mode: arm
008620d0  18 30 9f e5                                      ldr r3, [pc, #0x18]
008620d4  18 00 9f e5                                      ldr r0, [pc, #0x18]
008620d8  03 30 8f e0                                      add r3, pc, r3
008620dc  00 00 93 e7                                      ldr r0, [r3, r0]
008620e0  00 00 90 e5                                      ldr r0, [r0]
008620e4  00 00 50 e3                                      cmp r0, #0
008620e8  1e ff 2f 01                                      bxeq lr
008620ec  16 33 00 ea                                      b #0x86ed4c
; mapping-symbol data/literal pool
008620f0  b8 29 13 00 9c 17 00 00                          .byte 0xb8, 0x29, 0x13, 0x00, 0x9c, 0x17, 0x00, 0x00

; FUNCTION 0x008620f8, declared_size=40, range_size=40, mode=arm
; class-group: vox::VoxEngine
; alias: _ZN3vox9VoxEngine15PlayAllEmittersEjf
; demangled: vox::VoxEngine::PlayAllEmitters(unsigned int, float)
; decoder-mode: arm
008620f8  18 30 9f e5                                      ldr r3, [pc, #0x18]
008620fc  18 00 9f e5                                      ldr r0, [pc, #0x18]
00862100  03 30 8f e0                                      add r3, pc, r3
00862104  00 00 93 e7                                      ldr r0, [r3, r0]
00862108  00 00 90 e5                                      ldr r0, [r0]
0086210c  00 00 50 e3                                      cmp r0, #0
00862110  1e ff 2f 01                                      bxeq lr
00862114  c9 33 00 ea                                      b #0x86f040
; mapping-symbol data/literal pool
00862118  90 29 13 00 9c 17 00 00                          .byte 0x90, 0x29, 0x13, 0x00, 0x9c, 0x17, 0x00, 0x00

; FUNCTION 0x00862120, declared_size=40, range_size=40, mode=arm
; class-group: vox::VoxEngine
; alias: _ZN3vox9VoxEngine14GetAllEmittersEPNS_13EmitterHandleEi
; demangled: vox::VoxEngine::GetAllEmitters(vox::EmitterHandle*, int)
; decoder-mode: arm
00862120  18 30 9f e5                                      ldr r3, [pc, #0x18]
00862124  18 00 9f e5                                      ldr r0, [pc, #0x18]
00862128  03 30 8f e0                                      add r3, pc, r3
0086212c  00 00 93 e7                                      ldr r0, [r3, r0]
00862130  00 00 90 e5                                      ldr r0, [r0]
00862134  00 00 50 e3                                      cmp r0, #0
00862138  1e ff 2f 01                                      bxeq lr
0086213c  c9 18 00 ea                                      b #0x868468
; mapping-symbol data/literal pool
00862140  68 29 13 00 9c 17 00 00                          .byte 0x68, 0x29, 0x13, 0x00, 0x9c, 0x17, 0x00, 0x00

; FUNCTION 0x00862148, declared_size=40, range_size=40, mode=arm
; class-group: vox::VoxEngine
; alias: _ZN3vox9VoxEngine6ResumeERNS_13EmitterHandleEf
; demangled: vox::VoxEngine::Resume(vox::EmitterHandle&, float)
; decoder-mode: arm
00862148  18 30 9f e5                                      ldr r3, [pc, #0x18]
0086214c  18 00 9f e5                                      ldr r0, [pc, #0x18]
00862150  03 30 8f e0                                      add r3, pc, r3
00862154  00 00 93 e7                                      ldr r0, [r3, r0]
00862158  00 00 90 e5                                      ldr r0, [r0]
0086215c  00 00 50 e3                                      cmp r0, #0
00862160  1e ff 2f 01                                      bxeq lr
00862164  db 28 00 ea                                      b #0x86c4d8
; mapping-symbol data/literal pool
00862168  40 29 13 00 9c 17 00 00                          .byte 0x40, 0x29, 0x13, 0x00, 0x9c, 0x17, 0x00, 0x00

; FUNCTION 0x00862170, declared_size=40, range_size=40, mode=arm
; class-group: vox::VoxEngine
; alias: _ZN3vox9VoxEngine5PauseERNS_13EmitterHandleEf
; demangled: vox::VoxEngine::Pause(vox::EmitterHandle&, float)
; decoder-mode: arm
00862170  18 30 9f e5                                      ldr r3, [pc, #0x18]
00862174  18 00 9f e5                                      ldr r0, [pc, #0x18]
00862178  03 30 8f e0                                      add r3, pc, r3
0086217c  00 00 93 e7                                      ldr r0, [r3, r0]
00862180  00 00 90 e5                                      ldr r0, [r0]
00862184  00 00 50 e3                                      cmp r0, #0
00862188  1e ff 2f 01                                      bxeq lr
0086218c  a4 31 00 ea                                      b #0x86e824
; mapping-symbol data/literal pool
00862190  18 29 13 00 9c 17 00 00                          .byte 0x18, 0x29, 0x13, 0x00, 0x9c, 0x17, 0x00, 0x00

; FUNCTION 0x00862198, declared_size=40, range_size=40, mode=arm
; class-group: vox::VoxEngine
; alias: _ZN3vox9VoxEngine4StopERNS_13EmitterHandleEf
; demangled: vox::VoxEngine::Stop(vox::EmitterHandle&, float)
; decoder-mode: arm
00862198  18 30 9f e5                                      ldr r3, [pc, #0x18]
0086219c  18 00 9f e5                                      ldr r0, [pc, #0x18]
008621a0  03 30 8f e0                                      add r3, pc, r3
008621a4  00 00 93 e7                                      ldr r0, [r3, r0]
008621a8  00 00 90 e5                                      ldr r0, [r0]
008621ac  00 00 50 e3                                      cmp r0, #0
008621b0  1e ff 2f 01                                      bxeq lr
008621b4  63 33 00 ea                                      b #0x86ef48
; mapping-symbol data/literal pool
008621b8  f0 28 13 00 9c 17 00 00                          .byte 0xf0, 0x28, 0x13, 0x00, 0x9c, 0x17, 0x00, 0x00

; FUNCTION 0x008621c0, declared_size=40, range_size=40, mode=arm
; class-group: vox::VoxEngine
; alias: _ZN3vox9VoxEngine4PlayERNS_13EmitterHandleEbf
; demangled: vox::VoxEngine::Play(vox::EmitterHandle&, bool, float)
; decoder-mode: arm
008621c0  18 00 9f e5                                      ldr r0, [pc, #0x18]
008621c4  18 c0 9f e5                                      ldr ip, [pc, #0x18]
008621c8  00 00 8f e0                                      add r0, pc, r0
008621cc  0c c0 90 e7                                      ldr ip, [r0, ip]
008621d0  00 00 9c e5                                      ldr r0, [ip]
008621d4  00 00 50 e3                                      cmp r0, #0
008621d8  1e ff 2f 01                                      bxeq lr
008621dc  1c 34 00 ea                                      b #0x86f254
; mapping-symbol data/literal pool
008621e0  c8 28 13 00 9c 17 00 00                          .byte 0xc8, 0x28, 0x13, 0x00, 0x9c, 0x17, 0x00, 0x00

; FUNCTION 0x008621e8, declared_size=48, range_size=48, mode=arm
; class-group: vox::VoxEngine
; alias: _ZN3vox9VoxEngine8GetPitchERNS_13EmitterHandleE
; demangled: vox::VoxEngine::GetPitch(vox::EmitterHandle&)
; decoder-mode: arm
008621e8  20 30 9f e5                                      ldr r3, [pc, #0x20]
008621ec  20 20 9f e5                                      ldr r2, [pc, #0x20]
008621f0  03 30 8f e0                                      add r3, pc, r3
008621f4  02 20 93 e7                                      ldr r2, [r3, r2]
008621f8  00 00 92 e5                                      ldr r0, [r2]
008621fc  00 00 50 e3                                      cmp r0, #0
00862200  00 00 00 0a                                      beq #0x862208
00862204  2a 17 00 ea                                      b #0x867eb4
00862208  00 00 a0 e3                                      mov r0, #0
0086220c  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
00862210  a0 28 13 00 9c 17 00 00                          .byte 0xa0, 0x28, 0x13, 0x00, 0x9c, 0x17, 0x00, 0x00

; FUNCTION 0x00862218, declared_size=40, range_size=40, mode=arm
; class-group: vox::VoxEngine
; alias: _ZN3vox9VoxEngine8SetPitchERNS_13EmitterHandleEff
; demangled: vox::VoxEngine::SetPitch(vox::EmitterHandle&, float, float)
; decoder-mode: arm
00862218  18 00 9f e5                                      ldr r0, [pc, #0x18]
0086221c  18 c0 9f e5                                      ldr ip, [pc, #0x18]
00862220  00 00 8f e0                                      add r0, pc, r0
00862224  0c c0 90 e7                                      ldr ip, [r0, ip]
00862228  00 00 9c e5                                      ldr r0, [ip]
0086222c  00 00 50 e3                                      cmp r0, #0
00862230  1e ff 2f 01                                      bxeq lr
00862234  b5 26 00 ea                                      b #0x86bd10
; mapping-symbol data/literal pool
00862238  70 28 13 00 9c 17 00 00                          .byte 0x70, 0x28, 0x13, 0x00, 0x9c, 0x17, 0x00, 0x00

; FUNCTION 0x00862240, declared_size=40, range_size=40, mode=arm
; class-group: vox::VoxEngine
; alias: _ZN3vox9VoxEngine7SetLoopERNS_13EmitterHandleEb
; demangled: vox::VoxEngine::SetLoop(vox::EmitterHandle&, bool)
; decoder-mode: arm
00862240  18 30 9f e5                                      ldr r3, [pc, #0x18]
00862244  18 00 9f e5                                      ldr r0, [pc, #0x18]
00862248  03 30 8f e0                                      add r3, pc, r3
0086224c  00 00 93 e7                                      ldr r0, [r3, r0]
00862250  00 00 90 e5                                      ldr r0, [r0]
00862254  00 00 50 e3                                      cmp r0, #0
00862258  1e ff 2f 01                                      bxeq lr
0086225c  26 17 00 ea                                      b #0x867efc
; mapping-symbol data/literal pool
00862260  48 28 13 00 9c 17 00 00                          .byte 0x48, 0x28, 0x13, 0x00, 0x9c, 0x17, 0x00, 0x00

; FUNCTION 0x00862268, declared_size=48, range_size=48, mode=arm
; class-group: vox::VoxEngine
; alias: _ZN3vox9VoxEngine7GetGainERNS_13EmitterHandleE
; demangled: vox::VoxEngine::GetGain(vox::EmitterHandle&)
; decoder-mode: arm
00862268  20 30 9f e5                                      ldr r3, [pc, #0x20]
0086226c  20 20 9f e5                                      ldr r2, [pc, #0x20]
00862270  03 30 8f e0                                      add r3, pc, r3
00862274  02 20 93 e7                                      ldr r2, [r3, r2]
00862278  00 00 92 e5                                      ldr r0, [r2]
0086227c  00 00 50 e3                                      cmp r0, #0
00862280  00 00 00 0a                                      beq #0x862288
00862284  2d 17 00 ea                                      b #0x867f40
00862288  00 00 a0 e3                                      mov r0, #0
0086228c  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
00862290  20 28 13 00 9c 17 00 00                          .byte 0x20, 0x28, 0x13, 0x00, 0x9c, 0x17, 0x00, 0x00

; FUNCTION 0x00862298, declared_size=40, range_size=40, mode=arm
; class-group: vox::VoxEngine
; alias: _ZN3vox9VoxEngine7SetGainERNS_13EmitterHandleEff
; demangled: vox::VoxEngine::SetGain(vox::EmitterHandle&, float, float)
; decoder-mode: arm
00862298  18 00 9f e5                                      ldr r0, [pc, #0x18]
0086229c  18 c0 9f e5                                      ldr ip, [pc, #0x18]
008622a0  00 00 8f e0                                      add r0, pc, r0
008622a4  0c c0 90 e7                                      ldr ip, [r0, ip]
008622a8  00 00 9c e5                                      ldr r0, [ip]
008622ac  00 00 50 e3                                      cmp r0, #0
008622b0  1e ff 2f 01                                      bxeq lr
008622b4  4e 26 00 ea                                      b #0x86bbf4
; mapping-symbol data/literal pool
008622b8  f0 27 13 00 9c 17 00 00                          .byte 0xf0, 0x27, 0x13, 0x00, 0x9c, 0x17, 0x00, 0x00

; FUNCTION 0x008622c0, declared_size=40, range_size=40, mode=arm
; class-group: vox::VoxEngine
; alias: _ZN3vox9VoxEngine20SetAutoKillAfterDoneERNS_13EmitterHandleEb
; demangled: vox::VoxEngine::SetAutoKillAfterDone(vox::EmitterHandle&, bool)
; decoder-mode: arm
008622c0  18 30 9f e5                                      ldr r3, [pc, #0x18]
008622c4  18 00 9f e5                                      ldr r0, [pc, #0x18]
008622c8  03 30 8f e0                                      add r3, pc, r3
008622cc  00 00 93 e7                                      ldr r0, [r3, r0]
008622d0  00 00 90 e5                                      ldr r0, [r0]
008622d4  00 00 50 e3                                      cmp r0, #0
008622d8  1e ff 2f 01                                      bxeq lr
008622dc  29 17 00 ea                                      b #0x867f88
; mapping-symbol data/literal pool
008622e0  c8 27 13 00 9c 17 00 00                          .byte 0xc8, 0x27, 0x13, 0x00, 0x9c, 0x17, 0x00, 0x00

; FUNCTION 0x008622e8, declared_size=96, range_size=96, mode=arm
; class-group: vox::VoxEngine
; alias: _ZN3vox9VoxEngine7GetDataERNS_13EmitterHandleE
; demangled: vox::VoxEngine::GetData(vox::EmitterHandle&)
; decoder-mode: arm
008622e8  50 30 9f e5                                      ldr r3, [pc, #0x50]
008622ec  50 10 9f e5                                      ldr r1, [pc, #0x50]
008622f0  10 40 2d e9                                      push {r4, lr}
008622f4  03 30 8f e0                                      add r3, pc, r3
008622f8  01 10 93 e7                                      ldr r1, [r3, r1]
008622fc  10 d0 4d e2                                      sub sp, sp, #0x10
00862300  00 40 a0 e1                                      mov r4, r0
00862304  00 10 91 e5                                      ldr r1, [r1]
00862308  00 00 51 e3                                      cmp r1, #0
0086230c  03 00 00 0a                                      beq #0x862320
00862310  21 1b 00 eb                                      bl #0x868f9c
00862314  04 00 a0 e1                                      mov r0, r4
00862318  10 d0 8d e2                                      add sp, sp, #0x10
0086231c  10 80 bd e8                                      pop {r4, pc}
00862320  00 20 e0 e3                                      mvn r2, #0
00862324  00 30 e0 e3                                      mvn r3, #0
00862328  0c 10 8d e5                                      str r1, [sp, #0xc]
0086232c  00 10 8d e5                                      str r1, [sp]
00862330  04 10 8d e5                                      str r1, [sp, #4]
00862334  08 10 8d e5                                      str r1, [sp, #8]
00862338  85 1a 00 eb                                      bl #0x868d54
0086233c  f4 ff ff ea                                      b #0x862314
; mapping-symbol data/literal pool
00862340  9c 27 13 00 9c 17 00 00                          .byte 0x9c, 0x27, 0x13, 0x00, 0x9c, 0x17, 0x00, 0x00

; FUNCTION 0x00862348, declared_size=40, range_size=40, mode=arm
; class-group: vox::VoxEngine
; alias: _ZN3vox9VoxEngine11KillEmitterERNS_13EmitterHandleE
; demangled: vox::VoxEngine::KillEmitter(vox::EmitterHandle&)
; decoder-mode: arm
00862348  18 30 9f e5                                      ldr r3, [pc, #0x18]
0086234c  18 20 9f e5                                      ldr r2, [pc, #0x18]
00862350  03 30 8f e0                                      add r3, pc, r3
00862354  02 20 93 e7                                      ldr r2, [r3, r2]
00862358  00 00 92 e5                                      ldr r0, [r2]
0086235c  00 00 50 e3                                      cmp r0, #0
00862360  1e ff 2f 01                                      bxeq lr
00862364  5c 21 00 ea                                      b #0x86a8dc
; mapping-symbol data/literal pool
00862368  40 27 13 00 9c 17 00 00                          .byte 0x40, 0x27, 0x13, 0x00, 0x9c, 0x17, 0x00, 0x00

; FUNCTION 0x00862370, declared_size=56, range_size=56, mode=arm
; class-group: vox::VoxEngine
; alias: _ZN3vox9VoxEngine11GetUserDataERNS_13EmitterHandleE
; demangled: vox::VoxEngine::GetUserData(vox::EmitterHandle&)
; decoder-mode: arm
00862370  28 30 9f e5                                      ldr r3, [pc, #0x28]
00862374  28 20 9f e5                                      ldr r2, [pc, #0x28]
00862378  10 40 2d e9                                      push {r4, lr}
0086237c  03 30 8f e0                                      add r3, pc, r3
00862380  02 20 93 e7                                      ldr r2, [r3, r2]
00862384  00 00 92 e5                                      ldr r0, [r2]
00862388  00 00 50 e3                                      cmp r0, #0
0086238c  01 00 00 0a                                      beq #0x862398
00862390  8a 14 00 eb                                      bl #0x8675c0
00862394  10 80 bd e8                                      pop {r4, pc}
00862398  00 00 e0 e3                                      mvn r0, #0
0086239c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
008623a0  14 27 13 00 9c 17 00 00                          .byte 0x14, 0x27, 0x13, 0x00, 0x9c, 0x17, 0x00, 0x00

; FUNCTION 0x008623a8, declared_size=40, range_size=40, mode=arm
; class-group: vox::VoxEngine
; alias: _ZN3vox9VoxEngine11SetUserDataERNS_13EmitterHandleERNS_21EmitterHandleUserDataE
; demangled: vox::VoxEngine::SetUserData(vox::EmitterHandle&, vox::EmitterHandleUserData&)
; decoder-mode: arm
008623a8  18 30 9f e5                                      ldr r3, [pc, #0x18]
008623ac  18 00 9f e5                                      ldr r0, [pc, #0x18]
008623b0  03 30 8f e0                                      add r3, pc, r3
008623b4  00 00 93 e7                                      ldr r0, [r3, r0]
008623b8  00 00 90 e5                                      ldr r0, [r0]
008623bc  00 00 50 e3                                      cmp r0, #0
008623c0  1e ff 2f 01                                      bxeq lr
008623c4  8f 14 00 ea                                      b #0x867608
; mapping-symbol data/literal pool
008623c8  e0 26 13 00 9c 17 00 00                          .byte 0xe0, 0x26, 0x13, 0x00, 0x9c, 0x17, 0x00, 0x00

; FUNCTION 0x008623d0, declared_size=104, range_size=104, mode=arm
; class-group: vox::VoxEngine
; alias: _ZN3vox9VoxEngine18CreateEmitterAsyncERNS_10DataHandleEiPv
; demangled: vox::VoxEngine::CreateEmitterAsync(vox::DataHandle&, int, void*)
; decoder-mode: arm
008623d0  58 10 9f e5                                      ldr r1, [pc, #0x58]
008623d4  58 c0 9f e5                                      ldr ip, [pc, #0x58]
008623d8  10 40 2d e9                                      push {r4, lr}
008623dc  01 10 8f e0                                      add r1, pc, r1
008623e0  0c c0 91 e7                                      ldr ip, [r1, ip]
008623e4  10 d0 4d e2                                      sub sp, sp, #0x10
008623e8  00 40 a0 e1                                      mov r4, r0
008623ec  00 10 9c e5                                      ldr r1, [ip]
008623f0  00 00 51 e3                                      cmp r1, #0
008623f4  05 00 00 0a                                      beq #0x862410
008623f8  18 c0 9d e5                                      ldr ip, [sp, #0x18]
008623fc  00 c0 8d e5                                      str ip, [sp]
00862400  26 1b 00 eb                                      bl #0x8690a0
00862404  04 00 a0 e1                                      mov r0, r4
00862408  10 d0 8d e2                                      add sp, sp, #0x10
0086240c  10 80 bd e8                                      pop {r4, pc}
00862410  00 20 e0 e3                                      mvn r2, #0
00862414  00 30 e0 e3                                      mvn r3, #0
00862418  0c 10 8d e5                                      str r1, [sp, #0xc]
0086241c  00 10 8d e5                                      str r1, [sp]
00862420  04 10 8d e5                                      str r1, [sp, #4]
00862424  08 10 8d e5                                      str r1, [sp, #8]
00862428  1a 17 00 eb                                      bl #0x868098
0086242c  f4 ff ff ea                                      b #0x862404
; mapping-symbol data/literal pool
00862430  b4 26 13 00 9c 17 00 00                          .byte 0xb4, 0x26, 0x13, 0x00, 0x9c, 0x17, 0x00, 0x00

; FUNCTION 0x00862438, declared_size=104, range_size=104, mode=arm
; class-group: vox::VoxEngine
; alias: _ZN3vox9VoxEngine13CreateEmitterERNS_10DataHandleEiPv
; demangled: vox::VoxEngine::CreateEmitter(vox::DataHandle&, int, void*)
; decoder-mode: arm
00862438  58 10 9f e5                                      ldr r1, [pc, #0x58]
0086243c  58 c0 9f e5                                      ldr ip, [pc, #0x58]
00862440  10 40 2d e9                                      push {r4, lr}
00862444  01 10 8f e0                                      add r1, pc, r1
00862448  0c c0 91 e7                                      ldr ip, [r1, ip]
0086244c  10 d0 4d e2                                      sub sp, sp, #0x10
00862450  00 40 a0 e1                                      mov r4, r0
00862454  00 10 9c e5                                      ldr r1, [ip]
00862458  00 00 51 e3                                      cmp r1, #0
0086245c  05 00 00 0a                                      beq #0x862478
00862460  18 c0 9d e5                                      ldr ip, [sp, #0x18]
00862464  00 c0 8d e5                                      str ip, [sp]
00862468  66 29 00 eb                                      bl #0x86ca08
0086246c  04 00 a0 e1                                      mov r0, r4
00862470  10 d0 8d e2                                      add sp, sp, #0x10
00862474  10 80 bd e8                                      pop {r4, pc}
00862478  00 20 e0 e3                                      mvn r2, #0
0086247c  00 30 e0 e3                                      mvn r3, #0
00862480  0c 10 8d e5                                      str r1, [sp, #0xc]
00862484  00 10 8d e5                                      str r1, [sp]
00862488  04 10 8d e5                                      str r1, [sp, #4]
0086248c  08 10 8d e5                                      str r1, [sp, #8]
00862490  00 17 00 eb                                      bl #0x868098
00862494  f4 ff ff ea                                      b #0x86246c
; mapping-symbol data/literal pool
00862498  4c 26 13 00 9c 17 00 00                          .byte 0x4c, 0x26, 0x13, 0x00, 0x9c, 0x17, 0x00, 0x00

; FUNCTION 0x008624a0, declared_size=48, range_size=48, mode=arm
; class-group: vox::VoxEngine
; alias: _ZN3vox9VoxEngine11GetDurationERNS_10DataHandleE
; demangled: vox::VoxEngine::GetDuration(vox::DataHandle&)
; decoder-mode: arm
008624a0  20 30 9f e5                                      ldr r3, [pc, #0x20]
008624a4  20 20 9f e5                                      ldr r2, [pc, #0x20]
008624a8  03 30 8f e0                                      add r3, pc, r3
008624ac  02 20 93 e7                                      ldr r2, [r3, r2]
008624b0  00 00 92 e5                                      ldr r0, [r2]
008624b4  00 00 50 e3                                      cmp r0, #0
008624b8  00 00 00 0a                                      beq #0x8624c0
008624bc  0c 19 00 ea                                      b #0x8688f4
008624c0  00 00 a0 e3                                      mov r0, #0
008624c4  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
008624c8  e8 25 13 00 9c 17 00 00                          .byte 0xe8, 0x25, 0x13, 0x00, 0x9c, 0x17, 0x00, 0x00

; FUNCTION 0x008624d0, declared_size=40, range_size=40, mode=arm
; class-group: vox::VoxEngine
; alias: _ZN3vox9VoxEngine7IsValidERNS_10DataHandleE
; demangled: vox::VoxEngine::IsValid(vox::DataHandle&)
; decoder-mode: arm
008624d0  18 30 9f e5                                      ldr r3, [pc, #0x18]
008624d4  18 20 9f e5                                      ldr r2, [pc, #0x18]
008624d8  03 30 8f e0                                      add r3, pc, r3
008624dc  02 20 93 e7                                      ldr r2, [r3, r2]
008624e0  00 00 92 e5                                      ldr r0, [r2]
008624e4  00 00 50 e3                                      cmp r0, #0
008624e8  1e ff 2f 01                                      bxeq lr
008624ec  12 19 00 ea                                      b #0x86893c
; mapping-symbol data/literal pool
008624f0  b8 25 13 00 9c 17 00 00                          .byte 0xb8, 0x25, 0x13, 0x00, 0x9c, 0x17, 0x00, 0x00

; FUNCTION 0x008624f8, declared_size=40, range_size=40, mode=arm
; class-group: vox::VoxEngine
; alias: _ZN3vox9VoxEngine7IsReadyERNS_10DataHandleE
; demangled: vox::VoxEngine::IsReady(vox::DataHandle&)
; decoder-mode: arm
008624f8  18 30 9f e5                                      ldr r3, [pc, #0x18]
008624fc  18 20 9f e5                                      ldr r2, [pc, #0x18]
00862500  03 30 8f e0                                      add r3, pc, r3
00862504  02 20 93 e7                                      ldr r2, [r3, r2]
00862508  00 00 92 e5                                      ldr r0, [r2]
0086250c  00 00 50 e3                                      cmp r0, #0
00862510  1e ff 2f 01                                      bxeq lr
00862514  17 19 00 ea                                      b #0x868978
; mapping-symbol data/literal pool
00862518  90 25 13 00 9c 17 00 00                          .byte 0x90, 0x25, 0x13, 0x00, 0x9c, 0x17, 0x00, 0x00

; FUNCTION 0x00862520, declared_size=40, range_size=40, mode=arm
; class-group: vox::VoxEngine
; alias: _ZN3vox9VoxEngine17GetAllDataSourcesEPNS_10DataHandleEi
; demangled: vox::VoxEngine::GetAllDataSources(vox::DataHandle*, int)
; decoder-mode: arm
00862520  18 30 9f e5                                      ldr r3, [pc, #0x18]
00862524  18 00 9f e5                                      ldr r0, [pc, #0x18]
00862528  03 30 8f e0                                      add r3, pc, r3
0086252c  00 00 93 e7                                      ldr r0, [r3, r0]
00862530  00 00 90 e5                                      ldr r0, [r0]
00862534  00 00 50 e3                                      cmp r0, #0
00862538  1e ff 2f 01                                      bxeq lr
0086253c  d4 21 00 ea                                      b #0x86ac94
; mapping-symbol data/literal pool
00862540  68 25 13 00 9c 17 00 00                          .byte 0x68, 0x25, 0x13, 0x00, 0x9c, 0x17, 0x00, 0x00

; FUNCTION 0x00862548, declared_size=40, range_size=40, mode=arm
; class-group: vox::VoxEngine
; alias: _ZN3vox9VoxEngine17GetEmitterHandlesERNS_10DataHandleEPNS_13EmitterHandleEi
; demangled: vox::VoxEngine::GetEmitterHandles(vox::DataHandle&, vox::EmitterHandle*, int)
; decoder-mode: arm
00862548  18 00 9f e5                                      ldr r0, [pc, #0x18]
0086254c  18 c0 9f e5                                      ldr ip, [pc, #0x18]
00862550  00 00 8f e0                                      add r0, pc, r0
00862554  0c c0 90 e7                                      ldr ip, [r0, ip]
00862558  00 00 9c e5                                      ldr r0, [ip]
0086255c  00 00 50 e3                                      cmp r0, #0
00862560  1e ff 2f 01                                      bxeq lr
00862564  14 19 00 ea                                      b #0x8689bc
; mapping-symbol data/literal pool
00862568  40 25 13 00 9c 17 00 00                          .byte 0x40, 0x25, 0x13, 0x00, 0x9c, 0x17, 0x00, 0x00

; FUNCTION 0x00862570, declared_size=40, range_size=40, mode=arm
; class-group: vox::VoxEngine
; alias: _ZN3vox9VoxEngine17ReleaseDatasourceEj
; demangled: vox::VoxEngine::ReleaseDatasource(unsigned int)
; decoder-mode: arm
00862570  18 30 9f e5                                      ldr r3, [pc, #0x18]
00862574  18 20 9f e5                                      ldr r2, [pc, #0x18]
00862578  03 30 8f e0                                      add r3, pc, r3
0086257c  02 20 93 e7                                      ldr r2, [r3, r2]
00862580  00 00 92 e5                                      ldr r0, [r2]
00862584  00 00 50 e3                                      cmp r0, #0
00862588  1e ff 2f 01                                      bxeq lr
0086258c  a8 1e 00 ea                                      b #0x86a034
; mapping-symbol data/literal pool
00862590  18 25 13 00 9c 17 00 00                          .byte 0x18, 0x25, 0x13, 0x00, 0x9c, 0x17, 0x00, 0x00

; FUNCTION 0x00862598, declared_size=40, range_size=40, mode=arm
; class-group: vox::VoxEngine
; alias: _ZN3vox9VoxEngine17ReleaseDatasourceERNS_10DataHandleE
; demangled: vox::VoxEngine::ReleaseDatasource(vox::DataHandle&)
; decoder-mode: arm
00862598  18 30 9f e5                                      ldr r3, [pc, #0x18]
0086259c  18 20 9f e5                                      ldr r2, [pc, #0x18]
008625a0  03 30 8f e0                                      add r3, pc, r3
008625a4  02 20 93 e7                                      ldr r2, [r3, r2]
008625a8  00 00 92 e5                                      ldr r0, [r2]
008625ac  00 00 50 e3                                      cmp r0, #0
008625b0  1e ff 2f 01                                      bxeq lr
008625b4  b3 19 00 ea                                      b #0x868c88
; mapping-symbol data/literal pool
008625b8  f0 24 13 00 9c 17 00 00                          .byte 0xf0, 0x24, 0x13, 0x00, 0x9c, 0x17, 0x00, 0x00

; FUNCTION 0x008625c0, declared_size=48, range_size=48, mode=arm
; class-group: vox::VoxEngine
; alias: _ZN3vox9VoxEngine6GetUidERNS_10DataHandleE
; demangled: vox::VoxEngine::GetUid(vox::DataHandle&)
; decoder-mode: arm
008625c0  20 30 9f e5                                      ldr r3, [pc, #0x20]
008625c4  20 20 9f e5                                      ldr r2, [pc, #0x20]
008625c8  03 30 8f e0                                      add r3, pc, r3
008625cc  02 20 93 e7                                      ldr r2, [r3, r2]
008625d0  00 00 92 e5                                      ldr r0, [r2]
008625d4  00 00 50 e3                                      cmp r0, #0
008625d8  00 00 00 0a                                      beq #0x8625e0
008625dc  96 18 00 ea                                      b #0x86883c
008625e0  00 00 e0 e3                                      mvn r0, #0
008625e4  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
008625e8  c8 24 13 00 9c 17 00 00                          .byte 0xc8, 0x24, 0x13, 0x00, 0x9c, 0x17, 0x00, 0x00

; FUNCTION 0x008625f0, declared_size=40, range_size=40, mode=arm
; class-group: vox::VoxEngine
; alias: _ZN3vox9VoxEngine6SetUidERNS_10DataHandleEi
; demangled: vox::VoxEngine::SetUid(vox::DataHandle&, int)
; decoder-mode: arm
008625f0  18 30 9f e5                                      ldr r3, [pc, #0x18]
008625f4  18 00 9f e5                                      ldr r0, [pc, #0x18]
008625f8  03 30 8f e0                                      add r3, pc, r3
008625fc  00 00 93 e7                                      ldr r0, [r3, r0]
00862600  00 00 90 e5                                      ldr r0, [r0]
00862604  00 00 50 e3                                      cmp r0, #0
00862608  1e ff 2f 01                                      bxeq lr
0086260c  9a 18 00 ea                                      b #0x86887c
; mapping-symbol data/literal pool
00862610  98 24 13 00 9c 17 00 00                          .byte 0x98, 0x24, 0x13, 0x00, 0x9c, 0x17, 0x00, 0x00

; FUNCTION 0x00862618, declared_size=40, range_size=40, mode=arm
; class-group: vox::VoxEngine
; alias: _ZN3vox9VoxEngine17SetPriorityBankIdERNS_10DataHandleEi
; demangled: vox::VoxEngine::SetPriorityBankId(vox::DataHandle&, int)
; decoder-mode: arm
00862618  18 30 9f e5                                      ldr r3, [pc, #0x18]
0086261c  18 00 9f e5                                      ldr r0, [pc, #0x18]
00862620  03 30 8f e0                                      add r3, pc, r3
00862624  00 00 93 e7                                      ldr r0, [r3, r0]
00862628  00 00 90 e5                                      ldr r0, [r0]
0086262c  00 00 50 e3                                      cmp r0, #0
00862630  1e ff 2f 01                                      bxeq lr
00862634  9f 18 00 ea                                      b #0x8688b8
; mapping-symbol data/literal pool
00862638  70 24 13 00 9c 17 00 00                          .byte 0x70, 0x24, 0x13, 0x00, 0x9c, 0x17, 0x00, 0x00

; FUNCTION 0x00862640, declared_size=56, range_size=56, mode=arm
; class-group: vox::VoxEngine
; alias: _ZN3vox9VoxEngine11GetUserDataERNS_10DataHandleE
; demangled: vox::VoxEngine::GetUserData(vox::DataHandle&)
; decoder-mode: arm
00862640  28 30 9f e5                                      ldr r3, [pc, #0x28]
00862644  28 20 9f e5                                      ldr r2, [pc, #0x28]
00862648  10 40 2d e9                                      push {r4, lr}
0086264c  03 30 8f e0                                      add r3, pc, r3
00862650  02 20 93 e7                                      ldr r2, [r3, r2]
00862654  00 00 92 e5                                      ldr r0, [r2]
00862658  00 00 50 e3                                      cmp r0, #0
0086265c  01 00 00 0a                                      beq #0x862668
00862660  52 18 00 eb                                      bl #0x8687b0
00862664  10 80 bd e8                                      pop {r4, pc}
00862668  00 00 e0 e3                                      mvn r0, #0
0086266c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00862670  44 24 13 00 9c 17 00 00                          .byte 0x44, 0x24, 0x13, 0x00, 0x9c, 0x17, 0x00, 0x00

; FUNCTION 0x00862678, declared_size=40, range_size=40, mode=arm
; class-group: vox::VoxEngine
; alias: _ZN3vox9VoxEngine11SetUserDataERNS_10DataHandleERNS_18DataHandleUserDataE
; demangled: vox::VoxEngine::SetUserData(vox::DataHandle&, vox::DataHandleUserData&)
; decoder-mode: arm
00862678  18 30 9f e5                                      ldr r3, [pc, #0x18]
0086267c  18 00 9f e5                                      ldr r0, [pc, #0x18]
00862680  03 30 8f e0                                      add r3, pc, r3
00862684  00 00 93 e7                                      ldr r0, [r3, r0]
00862688  00 00 90 e5                                      ldr r0, [r0]
0086268c  00 00 50 e3                                      cmp r0, #0
00862690  1e ff 2f 01                                      bxeq lr
00862694  57 18 00 ea                                      b #0x8687f8
; mapping-symbol data/literal pool
00862698  10 24 13 00 9c 17 00 00                          .byte 0x10, 0x24, 0x13, 0x00, 0x9c, 0x17, 0x00, 0x00

; FUNCTION 0x008626a0, declared_size=96, range_size=96, mode=arm
; class-group: vox::VoxEngine
; alias: _ZN3vox9VoxEngine24ConvertToRamBufferSourceERNS_10DataHandleE
; demangled: vox::VoxEngine::ConvertToRamBufferSource(vox::DataHandle&)
; decoder-mode: arm
008626a0  50 30 9f e5                                      ldr r3, [pc, #0x50]
008626a4  50 10 9f e5                                      ldr r1, [pc, #0x50]
008626a8  10 40 2d e9                                      push {r4, lr}
008626ac  03 30 8f e0                                      add r3, pc, r3
008626b0  01 10 93 e7                                      ldr r1, [r3, r1]
008626b4  10 d0 4d e2                                      sub sp, sp, #0x10
008626b8  00 40 a0 e1                                      mov r4, r0
008626bc  00 10 91 e5                                      ldr r1, [r1]
008626c0  00 00 51 e3                                      cmp r1, #0
008626c4  03 00 00 0a                                      beq #0x8626d8
008626c8  54 23 00 eb                                      bl #0x86b420
008626cc  04 00 a0 e1                                      mov r0, r4
008626d0  10 d0 8d e2                                      add sp, sp, #0x10
008626d4  10 80 bd e8                                      pop {r4, pc}
008626d8  00 20 e0 e3                                      mvn r2, #0
008626dc  00 30 e0 e3                                      mvn r3, #0
008626e0  0c 10 8d e5                                      str r1, [sp, #0xc]
008626e4  00 10 8d e5                                      str r1, [sp]
008626e8  04 10 8d e5                                      str r1, [sp, #4]
008626ec  08 10 8d e5                                      str r1, [sp, #8]
008626f0  97 19 00 eb                                      bl #0x868d54
008626f4  f4 ff ff ea                                      b #0x8626cc
; mapping-symbol data/literal pool
008626f8  e4 23 13 00 9c 17 00 00                          .byte 0xe4, 0x23, 0x13, 0x00, 0x9c, 0x17, 0x00, 0x00

; FUNCTION 0x00862700, declared_size=96, range_size=96, mode=arm
; class-group: vox::VoxEngine
; alias: _ZN3vox9VoxEngine18ConvertToRawSourceERNS_10DataHandleE
; demangled: vox::VoxEngine::ConvertToRawSource(vox::DataHandle&)
; decoder-mode: arm
00862700  50 30 9f e5                                      ldr r3, [pc, #0x50]
00862704  50 10 9f e5                                      ldr r1, [pc, #0x50]
00862708  10 40 2d e9                                      push {r4, lr}
0086270c  03 30 8f e0                                      add r3, pc, r3
00862710  01 10 93 e7                                      ldr r1, [r3, r1]
00862714  10 d0 4d e2                                      sub sp, sp, #0x10
00862718  00 40 a0 e1                                      mov r4, r0
0086271c  00 10 91 e5                                      ldr r1, [r1]
00862720  00 00 51 e3                                      cmp r1, #0
00862724  03 00 00 0a                                      beq #0x862738
00862728  d9 23 00 eb                                      bl #0x86b694
0086272c  04 00 a0 e1                                      mov r0, r4
00862730  10 d0 8d e2                                      add sp, sp, #0x10
00862734  10 80 bd e8                                      pop {r4, pc}
00862738  00 20 e0 e3                                      mvn r2, #0
0086273c  00 30 e0 e3                                      mvn r3, #0
00862740  0c 10 8d e5                                      str r1, [sp, #0xc]
00862744  00 10 8d e5                                      str r1, [sp]
00862748  04 10 8d e5                                      str r1, [sp, #4]
0086274c  08 10 8d e5                                      str r1, [sp, #8]
00862750  7f 19 00 eb                                      bl #0x868d54
00862754  f4 ff ff ea                                      b #0x86272c
; mapping-symbol data/literal pool
00862758  84 23 13 00 9c 17 00 00                          .byte 0x84, 0x23, 0x13, 0x00, 0x9c, 0x17, 0x00, 0x00

; FUNCTION 0x00862760, declared_size=128, range_size=128, mode=arm
; class-group: vox::VoxEngine
; alias: _ZN3vox9VoxEngine19LoadDataSourceAsyncEiPviS1_iNS_21VoxSourceLoadingFlagsE
; demangled: vox::VoxEngine::LoadDataSourceAsync(int, void*, int, void*, int, vox::VoxSourceLoadingFlags)
; decoder-mode: arm
00862760  70 10 9f e5                                      ldr r1, [pc, #0x70]
00862764  70 c0 9f e5                                      ldr ip, [pc, #0x70]
00862768  10 40 2d e9                                      push {r4, lr}
0086276c  01 10 8f e0                                      add r1, pc, r1
00862770  0c c0 91 e7                                      ldr ip, [r1, ip]
00862774  10 d0 4d e2                                      sub sp, sp, #0x10
00862778  00 40 a0 e1                                      mov r4, r0
0086277c  00 10 9c e5                                      ldr r1, [ip]
00862780  00 00 51 e3                                      cmp r1, #0
00862784  0b 00 00 0a                                      beq #0x8627b8
00862788  18 c0 9d e5                                      ldr ip, [sp, #0x18]
0086278c  00 c0 8d e5                                      str ip, [sp]
00862790  1c c0 9d e5                                      ldr ip, [sp, #0x1c]
00862794  04 c0 8d e5                                      str ip, [sp, #4]
00862798  20 c0 9d e5                                      ldr ip, [sp, #0x20]
0086279c  08 c0 8d e5                                      str ip, [sp, #8]
008627a0  24 c0 9d e5                                      ldr ip, [sp, #0x24]
008627a4  0c c0 8d e5                                      str ip, [sp, #0xc]
008627a8  ce 21 00 eb                                      bl #0x86aee8
008627ac  04 00 a0 e1                                      mov r0, r4
008627b0  10 d0 8d e2                                      add sp, sp, #0x10
008627b4  10 80 bd e8                                      pop {r4, pc}
008627b8  00 20 e0 e3                                      mvn r2, #0
008627bc  00 30 e0 e3                                      mvn r3, #0
008627c0  0c 10 8d e5                                      str r1, [sp, #0xc]
008627c4  00 10 8d e5                                      str r1, [sp]
008627c8  04 10 8d e5                                      str r1, [sp, #4]
008627cc  08 10 8d e5                                      str r1, [sp, #8]
008627d0  5f 19 00 eb                                      bl #0x868d54
008627d4  f4 ff ff ea                                      b #0x8627ac
; mapping-symbol data/literal pool
008627d8  24 23 13 00 9c 17 00 00                          .byte 0x24, 0x23, 0x13, 0x00, 0x9c, 0x17, 0x00, 0x00

; FUNCTION 0x008627e0, declared_size=120, range_size=120, mode=arm
; class-group: vox::VoxEngine
; alias: _ZN3vox9VoxEngine14LoadDataSourceEiPviS1_i
; demangled: vox::VoxEngine::LoadDataSource(int, void*, int, void*, int)
; decoder-mode: arm
008627e0  68 10 9f e5                                      ldr r1, [pc, #0x68]
008627e4  68 c0 9f e5                                      ldr ip, [pc, #0x68]
008627e8  10 40 2d e9                                      push {r4, lr}
008627ec  01 10 8f e0                                      add r1, pc, r1
008627f0  0c c0 91 e7                                      ldr ip, [r1, ip]
008627f4  10 d0 4d e2                                      sub sp, sp, #0x10
008627f8  00 40 a0 e1                                      mov r4, r0
008627fc  00 10 9c e5                                      ldr r1, [ip]
00862800  00 00 51 e3                                      cmp r1, #0
00862804  09 00 00 0a                                      beq #0x862830
00862808  18 c0 9d e5                                      ldr ip, [sp, #0x18]
0086280c  00 c0 8d e5                                      str ip, [sp]
00862810  1c c0 9d e5                                      ldr ip, [sp, #0x1c]
00862814  04 c0 8d e5                                      str ip, [sp, #4]
00862818  20 c0 9d e5                                      ldr ip, [sp, #0x20]
0086281c  08 c0 8d e5                                      str ip, [sp, #8]
00862820  47 22 00 eb                                      bl #0x86b144
00862824  04 00 a0 e1                                      mov r0, r4
00862828  10 d0 8d e2                                      add sp, sp, #0x10
0086282c  10 80 bd e8                                      pop {r4, pc}
00862830  00 20 e0 e3                                      mvn r2, #0
00862834  00 30 e0 e3                                      mvn r3, #0
00862838  0c 10 8d e5                                      str r1, [sp, #0xc]
0086283c  00 10 8d e5                                      str r1, [sp]
00862840  04 10 8d e5                                      str r1, [sp, #4]
00862844  08 10 8d e5                                      str r1, [sp, #8]
00862848  41 19 00 eb                                      bl #0x868d54
0086284c  f4 ff ff ea                                      b #0x862824
; mapping-symbol data/literal pool
00862850  a4 22 13 00 9c 17 00 00                          .byte 0xa4, 0x22, 0x13, 0x00, 0x9c, 0x17, 0x00, 0x00

; FUNCTION 0x00862858, declared_size=64, range_size=64, mode=arm
; class-group: vox::VoxEngine
; alias: _ZN3vox9VoxEngine15SetPriorityBankEiiiNS_20PriorityBankBehaviorE
; demangled: vox::VoxEngine::SetPriorityBank(int, int, int, vox::PriorityBankBehavior)
; decoder-mode: arm
00862858  30 00 9f e5                                      ldr r0, [pc, #0x30]
0086285c  04 40 2d e5                                      str r4, [sp, #-4]!
00862860  2c 40 9f e5                                      ldr r4, [pc, #0x2c]
00862864  00 00 8f e0                                      add r0, pc, r0
00862868  04 c0 9d e5                                      ldr ip, [sp, #4]
0086286c  04 40 90 e7                                      ldr r4, [r0, r4]
00862870  00 00 94 e5                                      ldr r0, [r4]
00862874  00 00 50 e3                                      cmp r0, #0
00862878  02 00 00 0a                                      beq #0x862888
0086287c  04 c0 8d e5                                      str ip, [sp, #4]
00862880  10 00 bd e8                                      ldm sp!, {r4}
00862884  73 0e 00 ea                                      b #0x866258
00862888  10 00 bd e8                                      ldm sp!, {r4}
0086288c  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
00862890  2c 22 13 00 9c 17 00 00                          .byte 0x2c, 0x22, 0x13, 0x00, 0x9c, 0x17, 0x00, 0x00

; FUNCTION 0x00862898, declared_size=48, range_size=48, mode=arm
; class-group: vox::VoxEngine
; alias: _ZN3vox9VoxEngine19RegisterDecoderTypeEPFPNS_16DecoderInterfaceEPvE
; demangled: vox::VoxEngine::RegisterDecoderType(vox::DecoderInterface* (*)(void*))
; decoder-mode: arm
00862898  20 30 9f e5                                      ldr r3, [pc, #0x20]
0086289c  20 20 9f e5                                      ldr r2, [pc, #0x20]
008628a0  03 30 8f e0                                      add r3, pc, r3
008628a4  02 20 93 e7                                      ldr r2, [r3, r2]
008628a8  00 00 92 e5                                      ldr r0, [r2]
008628ac  00 00 50 e3                                      cmp r0, #0
008628b0  00 00 00 0a                                      beq #0x8628b8
008628b4  76 01 00 ea                                      b #0x862e94
008628b8  00 00 e0 e3                                      mvn r0, #0
008628bc  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
008628c0  f0 21 13 00 9c 17 00 00                          .byte 0xf0, 0x21, 0x13, 0x00, 0x9c, 0x17, 0x00, 0x00

; FUNCTION 0x008628c8, declared_size=48, range_size=48, mode=arm
; class-group: vox::VoxEngine
; alias: _ZN3vox9VoxEngine18RegisterStreamTypeEPFPNS_15StreamInterfaceEPvE
; demangled: vox::VoxEngine::RegisterStreamType(vox::StreamInterface* (*)(void*))
; decoder-mode: arm
008628c8  20 30 9f e5                                      ldr r3, [pc, #0x20]
008628cc  20 20 9f e5                                      ldr r2, [pc, #0x20]
008628d0  03 30 8f e0                                      add r3, pc, r3
008628d4  02 20 93 e7                                      ldr r2, [r3, r2]
008628d8  00 00 92 e5                                      ldr r0, [r2]
008628dc  00 00 50 e3                                      cmp r0, #0
008628e0  00 00 00 0a                                      beq #0x8628e8
008628e4  61 01 00 ea                                      b #0x862e70
008628e8  00 00 e0 e3                                      mvn r0, #0
008628ec  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
008628f0  c0 21 13 00 9c 17 00 00                          .byte 0xc0, 0x21, 0x13, 0x00, 0x9c, 0x17, 0x00, 0x00

; FUNCTION 0x008628f8, declared_size=76, range_size=76, mode=arm
; class-group: vox::VoxEngine
; alias: _ZN3vox9VoxEngine16DestroyVoxEngineEv
; demangled: vox::VoxEngine::DestroyVoxEngine()
; decoder-mode: arm
008628f8  3c 30 9f e5                                      ldr r3, [pc, #0x3c]
008628fc  3c 20 9f e5                                      ldr r2, [pc, #0x3c]
00862900  10 40 2d e9                                      push {r4, lr}
00862904  03 30 8f e0                                      add r3, pc, r3
00862908  02 40 93 e7                                      ldr r4, [r3, r2]
0086290c  00 30 94 e5                                      ldr r3, [r4]
00862910  00 00 53 e3                                      cmp r3, #0
00862914  07 00 00 0a                                      beq #0x862938
00862918  03 00 a0 e1                                      mov r0, r3
0086291c  00 30 93 e5                                      ldr r3, [r3]
00862920  0f e0 a0 e1                                      mov lr, pc
00862924  00 f0 93 e5                                      ldr pc, [r3]
00862928  00 00 94 e5                                      ldr r0, [r4]
0086292c  c4 b6 ea eb                                      bl #0x310444
00862930  00 30 a0 e3                                      mov r3, #0
00862934  00 30 84 e5                                      str r3, [r4]
00862938  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0086293c  8c 21 13 00 c8 2c 00 00                          .byte 0x8c, 0x21, 0x13, 0x00, 0xc8, 0x2c, 0x00, 0x00

; FUNCTION 0x00862944, declared_size=76, range_size=76, mode=arm
; class-group: vox::VoxEngine
; alias: _ZN3vox9VoxEngine8ShutdownEv
; demangled: vox::VoxEngine::Shutdown()
; decoder-mode: arm
00862944  10 40 2d e9                                      push {r4, lr}
00862948  00 40 a0 e1                                      mov r4, r0
0086294c  04 00 90 e5                                      ldr r0, [r0, #4]
00862950  00 00 50 e3                                      cmp r0, #0
00862954  04 00 00 0a                                      beq #0x86296c
00862958  7b c3 00 eb                                      bl #0x89374c
0086295c  04 00 94 e5                                      ldr r0, [r4, #4]
00862960  b7 b6 ea eb                                      bl #0x310444
00862964  00 30 a0 e3                                      mov r3, #0
00862968  04 30 84 e5                                      str r3, [r4, #4]
0086296c  08 00 94 e5                                      ldr r0, [r4, #8]
00862970  00 00 50 e3                                      cmp r0, #0
00862974  04 00 00 0a                                      beq #0x86298c
00862978  73 c3 00 eb                                      bl #0x89374c
0086297c  08 00 94 e5                                      ldr r0, [r4, #8]
00862980  af b6 ea eb                                      bl #0x310444
00862984  00 30 a0 e3                                      mov r3, #0
00862988  08 30 84 e5                                      str r3, [r4, #8]
0086298c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00862990, declared_size=136, range_size=136, mode=arm
; class-group: vox::VoxEngine
; alias: _ZN3vox9VoxEngineD1Ev
; demangled: vox::VoxEngine::~VoxEngine()
; decoder-mode: arm
00862990  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00862994  70 40 9f e5                                      ldr r4, [pc, #0x70]
00862998  70 30 9f e5                                      ldr r3, [pc, #0x70]
0086299c  70 60 9f e5                                      ldr r6, [pc, #0x70]
008629a0  04 40 8f e0                                      add r4, pc, r4
008629a4  03 30 94 e7                                      ldr r3, [r4, r3]
008629a8  00 50 a0 e1                                      mov r5, r0
008629ac  08 30 83 e2                                      add r3, r3, #8
008629b0  00 30 80 e5                                      str r3, [r0]
008629b4  e2 ff ff eb                                      bl #0x862944
008629b8  06 70 94 e7                                      ldr r7, [r4, r6]
008629bc  00 30 97 e5                                      ldr r3, [r7]
008629c0  00 00 53 e3                                      cmp r3, #0
008629c4  05 00 00 0a                                      beq #0x8629e0
008629c8  03 00 a0 e1                                      mov r0, r3
008629cc  00 30 93 e5                                      ldr r3, [r3]
008629d0  0f e0 a0 e1                                      mov lr, pc
008629d4  00 f0 93 e5                                      ldr pc, [r3]
008629d8  00 00 97 e5                                      ldr r0, [r7]
008629dc  98 b6 ea eb                                      bl #0x310444
008629e0  06 30 94 e7                                      ldr r3, [r4, r6]
008629e4  00 20 a0 e3                                      mov r2, #0
008629e8  00 20 83 e5                                      str r2, [r3]
008629ec  18 00 95 e5                                      ldr r0, [r5, #0x18]
008629f0  02 00 50 e1                                      cmp r0, r2
008629f4  02 00 00 0a                                      beq #0x862a04
008629f8  ea c2 00 eb                                      bl #0x8935a8
008629fc  18 00 95 e5                                      ldr r0, [r5, #0x18]
00862a00  8f b6 ea eb                                      bl #0x310444
00862a04  05 00 a0 e1                                      mov r0, r5
00862a08  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
00862a0c  f0 20 13 00 d8 31 00 00 9c 17 00 00              .byte 0xf0, 0x20, 0x13, 0x00, 0xd8, 0x31, 0x00, 0x00, 0x9c, 0x17, 0x00, 0x00

; FUNCTION 0x00862a18, declared_size=28, range_size=28, mode=arm
; class-group: vox::VoxEngine
; alias: _ZN3vox9VoxEngineD0Ev
; demangled: vox::VoxEngine::~VoxEngine()
; decoder-mode: arm
00862a18  10 40 2d e9                                      push {r4, lr}
00862a1c  00 40 a0 e1                                      mov r4, r0
00862a20  da ff ff eb                                      bl #0x862990
00862a24  04 00 a0 e1                                      mov r0, r4
00862a28  20 ae ea eb                                      bl #0x30e2b0
00862a2c  04 00 a0 e1                                      mov r0, r4
00862a30  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00862a34, declared_size=136, range_size=136, mode=arm
; class-group: vox::VoxEngine
; alias: _ZN3vox9VoxEngineD2Ev
; demangled: vox::VoxEngine::~VoxEngine()
; decoder-mode: arm
00862a34  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00862a38  70 40 9f e5                                      ldr r4, [pc, #0x70]
00862a3c  70 30 9f e5                                      ldr r3, [pc, #0x70]
00862a40  70 60 9f e5                                      ldr r6, [pc, #0x70]
00862a44  04 40 8f e0                                      add r4, pc, r4
00862a48  03 30 94 e7                                      ldr r3, [r4, r3]
00862a4c  00 50 a0 e1                                      mov r5, r0
00862a50  08 30 83 e2                                      add r3, r3, #8
00862a54  00 30 80 e5                                      str r3, [r0]
00862a58  b9 ff ff eb                                      bl #0x862944
00862a5c  06 70 94 e7                                      ldr r7, [r4, r6]
00862a60  00 30 97 e5                                      ldr r3, [r7]
00862a64  00 00 53 e3                                      cmp r3, #0
00862a68  05 00 00 0a                                      beq #0x862a84
00862a6c  03 00 a0 e1                                      mov r0, r3
00862a70  00 30 93 e5                                      ldr r3, [r3]
00862a74  0f e0 a0 e1                                      mov lr, pc
00862a78  00 f0 93 e5                                      ldr pc, [r3]
00862a7c  00 00 97 e5                                      ldr r0, [r7]
00862a80  6f b6 ea eb                                      bl #0x310444
00862a84  06 30 94 e7                                      ldr r3, [r4, r6]
00862a88  00 20 a0 e3                                      mov r2, #0
00862a8c  00 20 83 e5                                      str r2, [r3]
00862a90  18 00 95 e5                                      ldr r0, [r5, #0x18]
00862a94  02 00 50 e1                                      cmp r0, r2
00862a98  02 00 00 0a                                      beq #0x862aa8
00862a9c  c1 c2 00 eb                                      bl #0x8935a8
00862aa0  18 00 95 e5                                      ldr r0, [r5, #0x18]
00862aa4  66 b6 ea eb                                      bl #0x310444
00862aa8  05 00 a0 e1                                      mov r0, r5
00862aac  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
00862ab0  4c 20 13 00 d8 31 00 00 9c 17 00 00              .byte 0x4c, 0x20, 0x13, 0x00, 0xd8, 0x31, 0x00, 0x00, 0x9c, 0x17, 0x00, 0x00

; FUNCTION 0x00862abc, declared_size=116, range_size=116, mode=arm
; class-group: vox::VoxEngine
; alias: _ZN3vox9VoxEngineC1Ev
; demangled: vox::VoxEngine::VoxEngine()
; decoder-mode: arm
00862abc  70 40 2d e9                                      push {r4, r5, r6, lr}
00862ac0  5c 50 9f e5                                      ldr r5, [pc, #0x5c]
00862ac4  5c 20 9f e5                                      ldr r2, [pc, #0x5c]
00862ac8  00 40 a0 e1                                      mov r4, r0
00862acc  05 50 8f e0                                      add r5, pc, r5
00862ad0  02 20 95 e7                                      ldr r2, [r5, r2]
00862ad4  00 30 a0 e3                                      mov r3, #0
00862ad8  00 10 a0 e3                                      mov r1, #0
00862adc  08 20 82 e2                                      add r2, r2, #8
00862ae0  00 20 80 e5                                      str r2, [r0]
00862ae4  00 00 a0 e3                                      mov r0, #0
00862ae8  04 30 84 e5                                      str r3, [r4, #4]
00862aec  08 30 84 e5                                      str r3, [r4, #8]
00862af0  f0 01 c4 e1                                      strd r0, r1, [r4, #0x10]
00862af4  03 10 a0 e1                                      mov r1, r3
00862af8  04 00 a0 e3                                      mov r0, #4
00862afc  d1 b6 ea eb                                      bl #0x310648
00862b00  00 60 a0 e1                                      mov r6, r0
00862b04  b1 c2 00 eb                                      bl #0x8935d0
00862b08  18 60 84 e5                                      str r6, [r4, #0x18]
00862b0c  8a 1c 00 eb                                      bl #0x869d3c
00862b10  14 30 9f e5                                      ldr r3, [pc, #0x14]
00862b14  03 30 95 e7                                      ldr r3, [r5, r3]
00862b18  00 00 83 e5                                      str r0, [r3]
00862b1c  04 00 a0 e1                                      mov r0, r4
00862b20  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00862b24  c4 1f 13 00 d8 31 00 00 9c 17 00 00              .byte 0xc4, 0x1f, 0x13, 0x00, 0xd8, 0x31, 0x00, 0x00, 0x9c, 0x17, 0x00, 0x00

; FUNCTION 0x00862b30, declared_size=80, range_size=80, mode=arm
; class-group: vox::VoxEngine
; alias: _ZN3vox9VoxEngine12GetVoxEngineEv
; demangled: vox::VoxEngine::GetVoxEngine()
; decoder-mode: arm
00862b30  40 30 9f e5                                      ldr r3, [pc, #0x40]
00862b34  40 20 9f e5                                      ldr r2, [pc, #0x40]
00862b38  70 40 2d e9                                      push {r4, r5, r6, lr}
00862b3c  03 30 8f e0                                      add r3, pc, r3
00862b40  02 40 93 e7                                      ldr r4, [r3, r2]
00862b44  00 50 94 e5                                      ldr r5, [r4]
00862b48  00 00 55 e3                                      cmp r5, #0
00862b4c  01 00 00 0a                                      beq #0x862b58
00862b50  05 00 a0 e1                                      mov r0, r5
00862b54  70 80 bd e8                                      pop {r4, r5, r6, pc}
00862b58  05 10 a0 e1                                      mov r1, r5
00862b5c  20 00 a0 e3                                      mov r0, #0x20
00862b60  b8 b6 ea eb                                      bl #0x310648
00862b64  00 50 a0 e1                                      mov r5, r0
00862b68  d3 ff ff eb                                      bl #0x862abc
00862b6c  00 50 84 e5                                      str r5, [r4]
00862b70  05 00 a0 e1                                      mov r0, r5
00862b74  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00862b78  54 1f 13 00 c8 2c 00 00                          .byte 0x54, 0x1f, 0x13, 0x00, 0xc8, 0x2c, 0x00, 0x00

; FUNCTION 0x00862b80, declared_size=116, range_size=116, mode=arm
; class-group: vox::VoxEngine
; alias: _ZN3vox9VoxEngineC2Ev
; demangled: vox::VoxEngine::VoxEngine()
; decoder-mode: arm
00862b80  70 40 2d e9                                      push {r4, r5, r6, lr}
00862b84  5c 50 9f e5                                      ldr r5, [pc, #0x5c]
00862b88  5c 20 9f e5                                      ldr r2, [pc, #0x5c]
00862b8c  00 40 a0 e1                                      mov r4, r0
00862b90  05 50 8f e0                                      add r5, pc, r5
00862b94  02 20 95 e7                                      ldr r2, [r5, r2]
00862b98  00 30 a0 e3                                      mov r3, #0
00862b9c  00 10 a0 e3                                      mov r1, #0
00862ba0  08 20 82 e2                                      add r2, r2, #8
00862ba4  00 20 80 e5                                      str r2, [r0]
00862ba8  00 00 a0 e3                                      mov r0, #0
00862bac  04 30 84 e5                                      str r3, [r4, #4]
00862bb0  08 30 84 e5                                      str r3, [r4, #8]
00862bb4  f0 01 c4 e1                                      strd r0, r1, [r4, #0x10]
00862bb8  03 10 a0 e1                                      mov r1, r3
00862bbc  04 00 a0 e3                                      mov r0, #4
00862bc0  a0 b6 ea eb                                      bl #0x310648
00862bc4  00 60 a0 e1                                      mov r6, r0
00862bc8  80 c2 00 eb                                      bl #0x8935d0
00862bcc  18 60 84 e5                                      str r6, [r4, #0x18]
00862bd0  59 1c 00 eb                                      bl #0x869d3c
00862bd4  14 30 9f e5                                      ldr r3, [pc, #0x14]
00862bd8  03 30 95 e7                                      ldr r3, [r5, r3]
00862bdc  00 00 83 e5                                      str r0, [r3]
00862be0  04 00 a0 e1                                      mov r0, r4
00862be4  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00862be8  00 1f 13 00 d8 31 00 00 9c 17 00 00              .byte 0x00, 0x1f, 0x13, 0x00, 0xd8, 0x31, 0x00, 0x00, 0x9c, 0x17, 0x00, 0x00

; FUNCTION 0x00862c4c, declared_size=164, range_size=164, mode=arm
; class-group: vox::VoxEngine
; alias: _ZN3vox9VoxEngine22UpdateEmittersThreadedEv
; demangled: vox::VoxEngine::UpdateEmittersThreaded()
; decoder-mode: arm
00862c4c  70 4f 2d e9                                      push {r4, r5, r6, r8, sb, sl, fp, lr}
00862c50  90 40 9f e5                                      ldr r4, [pc, #0x90]
00862c54  90 60 9f e5                                      ldr r6, [pc, #0x90]
00862c58  08 d0 4d e2                                      sub sp, sp, #8
00862c5c  04 40 8f e0                                      add r4, pc, r4
00862c60  06 30 94 e7                                      ldr r3, [r4, r6]
00862c64  00 50 a0 e1                                      mov r5, r0
00862c68  00 30 93 e5                                      ldr r3, [r3]
00862c6c  00 00 53 e3                                      cmp r3, #0
00862c70  1a 00 00 0a                                      beq #0x862ce0
00862c74  de ff ff eb                                      bl #0x862bf4
00862c78  00 80 a0 e1                                      mov r8, r0
00862c7c  01 90 a0 e1                                      mov sb, r1
00862c80  00 20 a0 e1                                      mov r2, r0
00862c84  01 30 a0 e1                                      mov r3, r1
00862c88  d0 01 c5 e1                                      ldrd r0, r1, [r5, #0x10]
00862c8c  86 fa ff eb                                      bl #0x8616ac
00862c90  f0 00 cd e1                                      strd r0, r1, [sp]
00862c94  09 10 a0 e1                                      mov r1, sb
00862c98  d0 a1 c5 e1                                      ldrd sl, fp, [r5, #0x10]
00862c9c  08 00 a0 e1                                      mov r0, r8
00862ca0  0a 20 a0 e1                                      mov r2, sl
00862ca4  0b 30 a0 e1                                      mov r3, fp
00862ca8  ac ae ea eb                                      bl #0x30e760
00862cac  00 00 50 e3                                      cmp r0, #0
00862cb0  0a 80 a0 11                                      movne r8, sl
00862cb4  0b 90 a0 11                                      movne sb, fp
00862cb8  f0 81 c5 e1                                      strd r8, sb, [r5, #0x10]
00862cbc  d0 00 cd e1                                      ldrd r0, r1, [sp]
00862cc0  06 30 94 e7                                      ldr r3, [r4, r6]
00862cc4  00 40 93 e5                                      ldr r4, [r3]
00862cc8  74 ae ea eb                                      bl #0x30e6a0
00862ccc  00 30 94 e5                                      ldr r3, [r4]
00862cd0  00 10 a0 e1                                      mov r1, r0
00862cd4  04 00 a0 e1                                      mov r0, r4
00862cd8  0f e0 a0 e1                                      mov lr, pc
00862cdc  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
00862ce0  08 d0 8d e2                                      add sp, sp, #8
00862ce4  70 8f bd e8                                      pop {r4, r5, r6, r8, sb, sl, fp, pc}
; mapping-symbol data/literal pool
00862ce8  34 1e 13 00 9c 17 00 00                          .byte 0x34, 0x1e, 0x13, 0x00, 0x9c, 0x17, 0x00, 0x00

; FUNCTION 0x00862cf0, declared_size=24, range_size=24, mode=arm
; class-group: vox::VoxEngine
; alias: _ZN3vox9VoxEngine14UpdateThreadedEv
; demangled: vox::VoxEngine::UpdateThreaded()
; decoder-mode: arm
00862cf0  10 40 2d e9                                      push {r4, lr}
00862cf4  00 40 a0 e1                                      mov r4, r0
00862cf8  d0 fa ff eb                                      bl #0x861840
00862cfc  04 00 a0 e1                                      mov r0, r4
00862d00  10 40 bd e8                                      pop {r4, lr}
00862d04  d0 ff ff ea                                      b #0x862c4c

; FUNCTION 0x00862d08, declared_size=4, range_size=4, mode=arm
; class-group: vox::VoxEngine
; alias: _ZN3vox9VoxEngine14UpdateThreadedEPvS1_
; demangled: vox::VoxEngine::UpdateThreaded(void*, void*)
; decoder-mode: arm
00862d08  f8 ff ff ea                                      b #0x862cf0

; FUNCTION 0x00862d0c, declared_size=4, range_size=4, mode=arm
; class-group: vox::VoxEngine
; alias: _ZN3vox9VoxEngine22UpdateEmittersThreadedEPvS1_
; demangled: vox::VoxEngine::UpdateEmittersThreaded(void*, void*)
; decoder-mode: arm
00862d0c  ce ff ff ea                                      b #0x862c4c

; FUNCTION 0x00862d10, declared_size=352, range_size=352, mode=arm
; class-group: vox::VoxEngine
; alias: _ZN3vox9VoxEngine10InitializeEv
; demangled: vox::VoxEngine::Initialize()
; decoder-mode: arm
00862d10  70 40 2d e9                                      push {r4, r5, r6, lr}
00862d14  20 41 9f e5                                      ldr r4, [pc, #0x120]
00862d18  20 31 9f e5                                      ldr r3, [pc, #0x120]
00862d1c  08 d0 4d e2                                      sub sp, sp, #8
00862d20  04 40 8f e0                                      add r4, pc, r4
00862d24  03 30 94 e7                                      ldr r3, [r4, r3]
00862d28  00 50 a0 e1                                      mov r5, r0
00862d2c  00 30 93 e5                                      ldr r3, [r3]
00862d30  00 00 53 e3                                      cmp r3, #0
00862d34  3e 00 00 0a                                      beq #0x862e34
00862d38  03 00 a0 e1                                      mov r0, r3
00862d3c  00 30 93 e5                                      ldr r3, [r3]
00862d40  0f e0 a0 e1                                      mov lr, pc
00862d44  08 f0 93 e5                                      ldr pc, [r3, #8]
00862d48  f4 30 9f e5                                      ldr r3, [pc, #0xf4]
00862d4c  05 00 a0 e1                                      mov r0, r5
00862d50  03 10 94 e7                                      ldr r1, [r4, r3]
00862d54  db fe ff eb                                      bl #0x8628c8
00862d58  e8 30 9f e5                                      ldr r3, [pc, #0xe8]
00862d5c  05 00 a0 e1                                      mov r0, r5
00862d60  03 10 94 e7                                      ldr r1, [r4, r3]
00862d64  d7 fe ff eb                                      bl #0x8628c8
00862d68  dc 30 9f e5                                      ldr r3, [pc, #0xdc]
00862d6c  05 00 a0 e1                                      mov r0, r5
00862d70  03 10 94 e7                                      ldr r1, [r4, r3]
00862d74  c7 fe ff eb                                      bl #0x862898
00862d78  d0 30 9f e5                                      ldr r3, [pc, #0xd0]
00862d7c  05 00 a0 e1                                      mov r0, r5
00862d80  03 10 94 e7                                      ldr r1, [r4, r3]
00862d84  c3 fe ff eb                                      bl #0x862898
00862d88  c4 30 9f e5                                      ldr r3, [pc, #0xc4]
00862d8c  05 00 a0 e1                                      mov r0, r5
00862d90  03 10 94 e7                                      ldr r1, [r4, r3]
00862d94  bf fe ff eb                                      bl #0x862898
00862d98  b8 30 9f e5                                      ldr r3, [pc, #0xb8]
00862d9c  05 00 a0 e1                                      mov r0, r5
00862da0  03 10 94 e7                                      ldr r1, [r4, r3]
00862da4  bb fe ff eb                                      bl #0x862898
00862da8  ac 30 9f e5                                      ldr r3, [pc, #0xac]
00862dac  05 00 a0 e1                                      mov r0, r5
00862db0  03 10 94 e7                                      ldr r1, [r4, r3]
00862db4  b7 fe ff eb                                      bl #0x862898
00862db8  00 10 a0 e3                                      mov r1, #0
00862dbc  05 00 a0 e1                                      mov r0, r5
00862dc0  b4 fe ff eb                                      bl #0x862898
00862dc4  00 10 a0 e3                                      mov r1, #0
00862dc8  68 00 a0 e3                                      mov r0, #0x68
00862dcc  1d b6 ea eb                                      bl #0x310648
00862dd0  88 30 9f e5                                      ldr r3, [pc, #0x88]
00862dd4  88 c0 9f e5                                      ldr ip, [pc, #0x88]
00862dd8  00 60 a0 e1                                      mov r6, r0
00862ddc  05 20 a0 e1                                      mov r2, r5
00862de0  0c c0 8f e0                                      add ip, pc, ip
00862de4  03 10 94 e7                                      ldr r1, [r4, r3]
00862de8  00 30 a0 e3                                      mov r3, #0
00862dec  00 c0 8d e5                                      str ip, [sp]
00862df0  63 c2 00 eb                                      bl #0x893784
00862df4  04 60 85 e5                                      str r6, [r5, #4]
00862df8  00 10 a0 e3                                      mov r1, #0
00862dfc  68 00 a0 e3                                      mov r0, #0x68
00862e00  10 b6 ea eb                                      bl #0x310648
00862e04  5c 30 9f e5                                      ldr r3, [pc, #0x5c]
00862e08  5c c0 9f e5                                      ldr ip, [pc, #0x5c]
00862e0c  00 60 a0 e1                                      mov r6, r0
00862e10  03 10 94 e7                                      ldr r1, [r4, r3]
00862e14  0c c0 8f e0                                      add ip, pc, ip
00862e18  05 20 a0 e1                                      mov r2, r5
00862e1c  00 30 a0 e3                                      mov r3, #0
00862e20  00 c0 8d e5                                      str ip, [sp]
00862e24  56 c2 00 eb                                      bl #0x893784
00862e28  08 60 85 e5                                      str r6, [r5, #8]
00862e2c  70 ff ff eb                                      bl #0x862bf4
00862e30  f0 01 c5 e1                                      strd r0, r1, [r5, #0x10]
00862e34  08 d0 8d e2                                      add sp, sp, #8
00862e38  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00862e3c  70 1d 13 00 9c 17 00 00 04 20 00 00 74 3e 00 00  .byte 0x70, 0x1d, 0x13, 0x00, 0x9c, 0x17, 0x00, 0x00, 0x04, 0x20, 0x00, 0x00, 0x74, 0x3e, 0x00, 0x00
00862e4c  7c 24 00 00 f0 3e 00 00 b8 26 00 00 64 13 00 00  .byte 0x7c, 0x24, 0x00, 0x00, 0xf0, 0x3e, 0x00, 0x00, 0xb8, 0x26, 0x00, 0x00, 0x64, 0x13, 0x00, 0x00
00862e5c  4c 3a 00 00 c8 0d 00 00 d8 e0 0a 00 8c 3b 00 00  .byte 0x4c, 0x3a, 0x00, 0x00, 0xc8, 0x0d, 0x00, 0x00, 0xd8, 0xe0, 0x0a, 0x00, 0x8c, 0x3b, 0x00, 0x00
00862e6c  c4 e0 0a 00                                      .byte 0xc4, 0xe0, 0x0a, 0x00
