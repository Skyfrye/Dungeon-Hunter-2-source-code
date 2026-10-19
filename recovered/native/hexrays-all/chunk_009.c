// ===== 3bf828 Character::DistributeXP(Character*,Character*) =====
void __fastcall Character::DistributeXP(Character *this, Character *a2, Character *a3)
{
  PlayerManager *v3; // r8
  int v4; // r7
  int v5; // r6
  int i; // r5
  int Player; // r0
  float *v8; // r10
  float v9; // r0
  float v10; // r3
  float v11; // r2
  float v12; // r0
  int v13; // r5
  int v14; // r10
  int v15; // r6
  int v16; // r7
  FlashAnimManager *CurrentLevel; // r0
  int ModifiedXP; // r7
  int StyleIdFromName; // r6
  int Constant; // r0
  float v21; // r3
  int v22; // [sp+0h] [bp-174h]
  FlashAnimManager *GameDifficultyUnlocked; // [sp+8h] [bp-16Ch]
  FlashAnimManager *Instance; // [sp+8h] [bp-16Ch]
  float v25; // [sp+8h] [bp-16Ch]
  float v27; // [sp+Ch] [bp-168h]
  float v28; // [sp+10h] [bp-164h]
  char *v30; // [sp+18h] [bp-15Ch]
  char *v31; // [sp+20h] [bp-154h]
  float v32; // [sp+24h] [bp-150h]
  float v33[4]; // [sp+44h] [bp-130h]
  std::string v34; // [sp+7Ch] [bp-F8h] BYREF
  std::string v35; // [sp+94h] [bp-E0h] BYREF
  std::string v36; // [sp+ACh] [bp-C8h] BYREF
  std::string v37; // [sp+C4h] [bp-B0h] BYREF
  std::string v38; // [sp+DCh] [bp-98h] BYREF
  std::string v39; // [sp+F4h] [bp-80h] BYREF
  std::string v40; // [sp+10Ch] [bp-68h] BYREF
  std::string v41; // [sp+124h] [bp-50h] BYREF
  std::string v42; // [sp+13Ch] [bp-38h] BYREF
  std::string v43; // [sp+154h] [bp-20h] BYREF

  if ( !a2 )
  {
    if ( gAssertLevel == 2 )
    {
      dword_0 = 0;
    }
    else if ( gAssertLevel == 1 )
    {
      fprintf(
        (FILE *)&_sF + 2,
        "ASSERT(%s) FAILED: %s:%d\n",
        "killed != 0",
        "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Objects\\Characters\\Character_Stats.cpp",
        219);
    }
    return;
  }
  v31 = (char *)Arrays::DesignSettingsTable::members;
  v28 = (float)(CharProperties::_GetProperty((char *)a2 + 1376, (char *)a2 + 4084, 35) >> 8);
  if ( v28 <= 0.0 )
    v28 = 0.0;
  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string((int)&v43, "isTracingXPDistributionCst");
  DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v43);
  std::string::~string(&v43);
  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string((int)&v42, "isTracingXPDistribution");
  DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v42);
  std::string::~string(&v42);
  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string((int)&v41, "isTracingXPDistribution");
  DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v41);
  std::string::~string(&v41);
  v3 = (PlayerManager *)dword_99F76C;
  v4 = *(_DWORD *)(dword_99F76C + 1732);
  if ( v4 > 4 )
  {
    if ( gAssertLevel == 2 )
    {
      dword_0 = 0;
    }
    else if ( gAssertLevel == 1 )
    {
      fprintf(
        (FILE *)&_sF + 2,
        "ASSERT(%s) FAILED: %s:%d\n",
        "numLocalCharacterPlayer <= PlayerManager::MAX_PLAYERS",
        "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Objects\\Characters\\Character_Stats.cpp",
        247);
    }
    v32 = *((float *)v31 + 40);
  }
  else
  {
    v32 = *((float *)v31 + 40);
    if ( v4 <= 0 )
    {
LABEL_30:
      DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
      std::string::string((int)&v36, "isTracingXPDistribution");
      DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v36);
      std::string::~string(&v36);
      goto LABEL_31;
    }
  }
  v5 = 0;
  v30 = nullptr;
  for ( i = 0; i != v4; ++i )
  {
    Player = PlayerManager::GetPlayer(v3, i, 1);
    v8 = *(float **)(Player + 1632);
    if ( v8 )
    {
      v9 = COERCE_FLOAT(GetLevelScaledXP(v28, *(Character **)(Player + 1632), a2));
      v33[v5] = v9;
      if ( v9 < 0.0 )
        goto LABEL_13;
      if ( this )
      {
        v10 = v8[88] - *((float *)this + 88);
        v11 = v8[89] - *((float *)this + 89);
        v12 = sqrtf((float)(v10 * v10) + (float)(v11 * v11));
        if ( this == (Character *)v8 )
          goto LABEL_12;
      }
      else
      {
        v21 = v8[88] - *((float *)a2 + 88);
        v25 = v8[89] - *((float *)a2 + 89);
        v12 = sqrtf((float)(v21 * v21) + (float)(v25 * v25));
      }
      if ( v32 >= v12 )
      {
LABEL_12:
        ++v30;
        DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
        std::string::string((int)&v40, "isTracingXPDistribution");
        DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v40);
        std::string::~string(&v40);
        goto LABEL_13;
      }
      v33[v5] = 0.0;
      DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
      std::string::string((int)&v39, "isTracingXPDistribution");
      DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v39);
      std::string::~string(&v39);
    }
    else if ( gAssertLevel == 2 )
    {
      dword_0 = 0;
    }
    else if ( gAssertLevel == 1 )
    {
      v22 = 259;
      fprintf(
        (FILE *)&_sF + 2,
        "ASSERT(%s) FAILED: %s:%d\n",
        "player != 0",
        "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Objects\\Characters\\Character_Stats.cpp");
    }
LABEL_13:
    ++v5;
  }
  if ( !v30 )
    goto LABEL_30;
  v27 = (float)(int)(v30 - 1) * *((float *)v31 + 41);
  v13 = 0;
  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string((int)&v38, "isTracingXPDistribution");
  DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v38);
  std::string::~string(&v38);
  v14 = v4;
  do
  {
    v15 = *(_DWORD *)(PlayerManager::GetPlayer(v3, v13, 1) + 1632);
    if ( v15 )
    {
      if ( (float)((float)((float)(100.0 - v27) * v33[v13]) / 100.0) >= 0.0 )
      {
        v16 = (int)(float)((float)((float)((float)(100.0 - v27) * v33[v13]) / 100.0) + 1.0) << 8;
        if ( Character::_GiveXP((Character *)v15, v16, 1) )
        {
          if ( PlayerManager::IsLocalPlayer((PlayerManager *)dword_99F76C, (const Character *)v15) )
          {
            GameDifficultyUnlocked = (FlashAnimManager *)Character::SG_GetGameDifficultyUnlocked((Character *)v15);
            CurrentLevel = (FlashAnimManager *)Application::GetCurrentLevel((Application *)&Singleton<Application>::s_inst);
            if ( (int)GameDifficultyUnlocked < *((_DWORD *)CurrentLevel + 70) )
              v16 = 256;
            Instance = (FlashAnimManager *)FlashAnimManager::GetInstance(CurrentLevel);
            ModifiedXP = CharProperties::PROPS_GetModifiedXP((CharProperties *)(v15 + 1376), v16);
            StyleIdFromName = FlashAnimManager::GetStyleIdFromName(Instance, "anim_sct_xp");
            Constant = PyDataConstants::getConstant((PyDataConstants *)dword_99F758, "ScrollingCombatText", "XPColor");
            Character::F_ApplyScrollingCombatTextXP(a2, (Character *)(ModifiedXP >> 8), StyleIdFromName, Constant, v22);
          }
        }
      }
      DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
      std::string::string((int)&v37, "isTracingXPDistribution");
      DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v37);
      std::string::~string(&v37);
    }
    ++v13;
  }
  while ( v13 != v14 );
LABEL_31:
  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string((int)&v35, "isTracingXPDistribution");
  DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v35);
  std::string::~string(&v35);
  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string((int)&v34, "isTracingXPDistribution");
  DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v34);
  std::string::~string(&v34);
}


// ===== 3bffdc CharState::~CharState() =====
void __fastcall CharState::~CharState(CharState *this)
{
  ;
}


// ===== 3bffe0 CSLimbus::~CSLimbus() =====
void __fastcall CSLimbus::~CSLimbus(CSLimbus *this)
{
  ;
}


// ===== 3bffe4 CSLimbus::OnUpdate(int,Character *,CharStateMachine *) =====
void CSLimbus::OnUpdate()
{
  ;
}


// ===== 3bffe8 CSLimbus::OnEvent(int,Character *,CharStateMachine *,int,void *) =====
void CSLimbus::OnEvent()
{
  ;
}


// ===== 3bffec CSSpawn::~CSSpawn() =====
void __fastcall CSSpawn::~CSSpawn(CSSpawn *this)
{
  ;
}


// ===== 3bfff0 CSSpawn::OnUpdate(int,Character *,CharStateMachine *) =====
void CSSpawn::OnUpdate()
{
  ;
}


// ===== 3bfff4 CSDespawn::~CSDespawn() =====
void __fastcall CSDespawn::~CSDespawn(CSDespawn *this)
{
  ;
}


// ===== 3bfff8 CSDespawn::OnUpdate(int,Character *,CharStateMachine *) =====
void CSDespawn::OnUpdate()
{
  ;
}


// ===== 3bfffc CSDespawn::OnEvent(int,Character *,CharStateMachine *,int,void *) =====
void CSDespawn::OnEvent()
{
  ;
}


// ===== 3c0000 CSIdle::~CSIdle() =====
void __fastcall CSIdle::~CSIdle(CSIdle *this)
{
  ;
}


// ===== 3c0004 CSIdle::OnEvent(int,Character *,CharStateMachine *,int,void *) =====
void CSIdle::OnEvent()
{
  ;
}


// ===== 3c0008 CSMove::~CSMove() =====
void __fastcall CSMove::~CSMove(CSMove *this)
{
  ;
}


// ===== 3c000c CSMove::OnEvent(int,Character *,CharStateMachine *,int,void *) =====
void CSMove::OnEvent()
{
  ;
}


// ===== 3c0010 CSAttack::~CSAttack() =====
void __fastcall CSAttack::~CSAttack(CSAttack *this)
{
  ;
}


// ===== 3c0014 CSSkill::~CSSkill() =====
void __fastcall CSSkill::~CSSkill(CSSkill *this)
{
  ;
}


// ===== 3c0018 CSSkill::OnUpdate(int,Character *,CharStateMachine *) =====
void CSSkill::OnUpdate()
{
  ;
}


// ===== 3c001c CSCast::~CSCast() =====
void __fastcall CSCast::~CSCast(CSCast *this)
{
  ;
}


// ===== 3c0020 CSCast::OnUpdate(int,Character *,CharStateMachine *) =====
void CSCast::OnUpdate()
{
  ;
}


// ===== 3c0024 CSCast::OnEvent(int,Character *,CharStateMachine *,int,void *) =====
void CSCast::OnEvent()
{
  ;
}


// ===== 3c0028 CSScared::~CSScared() =====
void __fastcall CSScared::~CSScared(CSScared *this)
{
  ;
}


// ===== 3c002c CSStunned::~CSStunned() =====
void __fastcall CSStunned::~CSStunned(CSStunned *this)
{
  ;
}


// ===== 3c0030 CSStunned::OnEvent(int,Character *,CharStateMachine *,int,void *) =====
void CSStunned::OnEvent()
{
  ;
}


// ===== 3c0034 CSKnockedBack::~CSKnockedBack() =====
void __fastcall CSKnockedBack::~CSKnockedBack(CSKnockedBack *this)
{
  ;
}


// ===== 3c0038 CSKnockedBack::OnUpdate(int,Character *,CharStateMachine *) =====
void CSKnockedBack::OnUpdate()
{
  ;
}


// ===== 3c003c CSInjured::~CSInjured() =====
void __fastcall CSInjured::~CSInjured(CSInjured *this)
{
  ;
}


// ===== 3c0040 CSInjured::OnUpdate(int,Character *,CharStateMachine *) =====
void CSInjured::OnUpdate()
{
  ;
}


// ===== 3c0044 CSInjured::OnEvent(int,Character *,CharStateMachine *,int,void *) =====
void CSInjured::OnEvent()
{
  ;
}


// ===== 3c0048 CSDead::~CSDead() =====
void __fastcall CSDead::~CSDead(CSDead *this)
{
  ;
}


// ===== 3c004c CSDead::OnUpdate(int,Character *,CharStateMachine *) =====
void CSDead::OnUpdate()
{
  ;
}


// ===== 3c0050 CSAnim::~CSAnim() =====
void __fastcall CSAnim::~CSAnim(CSAnim *this)
{
  ;
}


// ===== 3c0054 CSReviving::~CSReviving() =====
void __fastcall CSReviving::~CSReviving(CSReviving *this)
{
  ;
}


// ===== 3c0058 CSReviving::OnUpdate(int,Character *,CharStateMachine *) =====
void CSReviving::OnUpdate()
{
  ;
}


// ===== 3c005c CSReviving::OnEvent(int,Character *,CharStateMachine *,int,void *) =====
void CSReviving::OnEvent()
{
  ;
}


// ===== 3c0060 CSRevived::~CSRevived() =====
void __fastcall CSRevived::~CSRevived(CSRevived *this)
{
  ;
}


// ===== 3c0064 CSRevived::OnUpdate(int,Character *,CharStateMachine *) =====
void CSRevived::OnUpdate()
{
  ;
}


// ===== 3c0068 CSRevived::OnEvent(int,Character *,CharStateMachine *,int,void *) =====
void CSRevived::OnEvent()
{
  ;
}


// ===== 3c006c CSPreSpawn::~CSPreSpawn() =====
void __fastcall CSPreSpawn::~CSPreSpawn(CSPreSpawn *this)
{
  ;
}


// ===== 3c0070 CSPreSpawn::OnUpdate(int,Character *,CharStateMachine *) =====
void CSPreSpawn::OnUpdate()
{
  ;
}


// ===== 3c0074 CSLiftingIdle::~CSLiftingIdle() =====
void __fastcall CSLiftingIdle::~CSLiftingIdle(CSLiftingIdle *this)
{
  ;
}


// ===== 3c0078 CSLiftingMove::~CSLiftingMove() =====
void __fastcall CSLiftingMove::~CSLiftingMove(CSLiftingMove *this)
{
  ;
}


// ===== 3c007c CSInteract::~CSInteract() =====
void __fastcall CSInteract::~CSInteract(CSInteract *this)
{
  ;
}


// ===== 3c0080 CSInteract::OnUpdate(int,Character *,CharStateMachine *) =====
void CSInteract::OnUpdate()
{
  ;
}


// ===== 3c0084 CharStateMachine::_HasState(int) =====
bool __fastcall CharStateMachine::_HasState(CharStateMachine *this, int a2)
{
  char *v2; // r3
  char *v3; // r0
  char *v4; // r12
  int v5; // r2
  bool v6; // cc
  char *v7; // r2

  v2 = *((char **)this + 3);
  v3 = (char *)this + 8;
  if ( !v2 )
    return 0;
  v4 = v3;
  while ( 1 )
  {
    v5 = *((_DWORD *)v2 + 4);
    v6 = a2 <= v5;
    v7 = a2 <= v5 ? *((char **)v2 + 2) : *((char **)v2 + 3);
    if ( !v6 )
      v2 = v4;
    v4 = v2;
    if ( !v7 )
      break;
    v2 = v7;
  }
  return v3 != v2 && a2 >= *((_DWORD *)v2 + 4);
}


// ===== 3c00e0 CharStateMachine::_HasEvent(int,int) =====
bool __fastcall CharStateMachine::_HasEvent(CharStateMachine *this, int a2, int a3)
{
  char *v3; // r3
  char *v4; // r0
  char *v5; // r4
  int v6; // r12
  bool v7; // cc
  char *v8; // r12
  _DWORD *v9; // r1
  _DWORD *v10; // r3
  _DWORD *v11; // r4
  int v12; // r12
  bool v13; // cc
  _DWORD *v14; // r12

  v3 = *((char **)this + 3);
  v4 = (char *)this + 8;
  if ( !v3 )
    goto LABEL_25;
  v5 = v4;
  while ( 1 )
  {
    v6 = *((_DWORD *)v3 + 4);
    v7 = a2 <= v6;
    if ( a2 <= v6 )
      v8 = *((char **)v3 + 2);
    else
      v8 = *((char **)v3 + 3);
    if ( !v7 )
      v3 = v5;
    v5 = v3;
    if ( !v8 )
      break;
    v3 = v8;
  }
  if ( v4 == v3 )
    return 0;
  if ( a2 < *((_DWORD *)v3 + 4) )
LABEL_25:
    v3 = v4;
  if ( v4 == v3 )
    return 0;
  v9 = *((_DWORD **)v3 + 8);
  v10 = v3 + 28;
  if ( !v9 )
    return 0;
  v11 = v10;
  while ( 1 )
  {
    v12 = v9[4];
    v13 = a3 <= v12;
    v14 = (_DWORD *)(a3 <= v12 ? v9[2] : v9[3]);
    if ( !v13 )
      v9 = v11;
    v11 = v9;
    if ( !v14 )
      break;
    v9 = v14;
  }
  if ( v10 == v9 || a3 < v9[4] )
    return 0;
  return v9 != v10;
}


// ===== 3c01ac CharStateMachine::SM_GetState(void) =====
int __fastcall CharStateMachine::SM_GetState(CharStateMachine *this)
{
  int v1; // r3

  v1 = *((_DWORD *)this + 8);
  if ( v1 )
    return *(_DWORD *)v1;
  else
    return -1;
}


// ===== 3c01c0 CharStateMachine::SM_IsInLimbus(void) =====
bool __fastcall CharStateMachine::SM_IsInLimbus(CharStateMachine *this)
{
  return CharStateMachine::SM_GetState(this) == 0;
}


// ===== 3c01d4 CharStateMachine::SM_IsInPreSpawn(void) =====
bool __fastcall CharStateMachine::SM_IsInPreSpawn(CharStateMachine *this)
{
  return CharStateMachine::SM_GetState(this) == 17;
}


// ===== 3c01ec CharStateMachine::SM_IsAwaitingToRevive(void) =====
bool __fastcall CharStateMachine::SM_IsAwaitingToRevive(CharStateMachine *this)
{
  return !CharStateMachine::SM_GetState(this)
      || CharStateMachine::SM_GetState(this) == 17
      || CharStateMachine::SM_GetState(this) == 16;
}


// ===== 3c0230 CharStateMachine::SM_IsAwaitingToSpawn(void) =====
bool __fastcall CharStateMachine::SM_IsAwaitingToSpawn(CharStateMachine *this)
{
  return CharStateMachine::SM_GetState(this) == 17;
}


// ===== 3c0248 CharStateMachine::SM_IsSpawning(void) =====
bool __fastcall CharStateMachine::SM_IsSpawning(CharStateMachine *this)
{
  return CharStateMachine::SM_GetState(this) == 1;
}


// ===== 3c0260 CharStateMachine::SM_IsIdle(bool) =====
int __fastcall CharStateMachine::SM_IsIdle(CharStateMachine *this, int a2)
{
  int State; // r0

  State = CharStateMachine::SM_GetState(this);
  if ( State == 13 )
    return 1;
  if ( State != 18 )
    return State == 3;
  return a2 ^ 1;
}


// ===== 3c029c CharStateMachine::SM_IsMoving(bool) =====
int __fastcall CharStateMachine::SM_IsMoving(CharStateMachine *this, int a2)
{
  int State; // r0

  State = CharStateMachine::SM_GetState(this);
  if ( State == 4 )
    return 1;
  if ( State == 19 )
    return a2 ^ 1;
  return 0;
}


// ===== 3c02d0 CharStateMachine::SM_IsAttacking(void) =====
bool __fastcall CharStateMachine::SM_IsAttacking(CharStateMachine *this)
{
  return CharStateMachine::SM_GetState(this) == 5;
}


// ===== 3c02e8 CharStateMachine::SM_IsUsingSkill(void) =====
bool __fastcall CharStateMachine::SM_IsUsingSkill(CharStateMachine *this)
{
  return CharStateMachine::SM_GetState(this) == 6;
}


// ===== 3c0300 CharStateMachine::SM_IsUsingSkill(uint) =====
bool __fastcall CharStateMachine::SM_IsUsingSkill(CharStateMachine *this, unsigned int a2)
{
  return CharStateMachine::SM_GetState(this) == 6 && *((_DWORD *)this + 21) == a2;
}


// ===== 3c0334 CharStateMachine::SM_IsCasting(void) =====
bool __fastcall CharStateMachine::SM_IsCasting(CharStateMachine *this)
{
  return CharStateMachine::SM_GetState(this) == 7;
}


// ===== 3c034c CharStateMachine::SM_IsScared(bool) =====
bool __fastcall CharStateMachine::SM_IsScared(CharStateMachine *this, int a2)
{
  if ( a2 )
    return (*((_DWORD *)this + 11) >> 2) & 1;
  else
    return CharStateMachine::SM_GetState(this) == 8;
}


// ===== 3c0378 CharStateMachine::SM_IsStunned(bool) =====
bool __fastcall CharStateMachine::SM_IsStunned(CharStateMachine *this, int a2)
{
  if ( a2 )
    return (*((_DWORD *)this + 11) >> 1) & 1;
  else
    return CharStateMachine::SM_GetState(this) == 9;
}


// ===== 3c03a4 CharStateMachine::SM_IsKnockedBack(void) =====
bool __fastcall CharStateMachine::SM_IsKnockedBack(CharStateMachine *this)
{
  return CharStateMachine::SM_GetState(this) == 10;
}


// ===== 3c03bc CharStateMachine::SM_IsIncapacitated(void) =====
int __fastcall CharStateMachine::SM_IsIncapacitated(CharStateMachine *this)
{
  int State; // r0

  State = CharStateMachine::SM_GetState(this);
  if ( (unsigned int)(State - 8) > 3 )
    return 0;
  else
    return CSWTCH_6292[State - 8];
}


// ===== 3c03f0 CharStateMachine::SM_IsDead(void) =====
bool __fastcall CharStateMachine::SM_IsDead(CharStateMachine *this)
{
  return CharStateMachine::SM_GetState(this) == 12;
}


// ===== 3c0408 CharStateMachine::SM_IsInteracting(void) =====
bool __fastcall CharStateMachine::SM_IsInteracting(CharStateMachine *this)
{
  return CharStateMachine::SM_GetState(this) == 13;
}


// ===== 3c0420 CharStateMachine::SM_IsLifting(void) =====
int __fastcall CharStateMachine::SM_IsLifting(CharStateMachine *this)
{
  int State; // r0

  State = CharStateMachine::SM_GetState(this);
  if ( (unsigned int)(State - 18) <= 1 )
    return CSWTCH_6292[State - 14];
  else
    return 0;
}


// ===== 3c0454 GetNewState<CSLimbus>(void) =====
void *GetNewState<CSLimbus>()
{
  return &Singleton<CSLimbus>::s_inst;
}


// ===== 3c0470 GetNewState<CSSpawn>(void) =====
void *GetNewState<CSSpawn>()
{
  return &Singleton<CSSpawn>::s_inst;
}


// ===== 3c048c GetNewState<CSDespawn>(void) =====
void *GetNewState<CSDespawn>()
{
  return &Singleton<CSDespawn>::s_inst;
}


// ===== 3c04a8 GetNewState<CSIdle>(void) =====
void *GetNewState<CSIdle>()
{
  return &Singleton<CSIdle>::s_inst;
}


// ===== 3c04c4 GetNewState<CSMove>(void) =====
void *GetNewState<CSMove>()
{
  return &Singleton<CSMove>::s_inst;
}


// ===== 3c04e0 GetNewState<CSAttack>(void) =====
void *GetNewState<CSAttack>()
{
  return &Singleton<CSAttack>::s_inst;
}


// ===== 3c04fc GetNewState<CSSkill>(void) =====
void *GetNewState<CSSkill>()
{
  return &Singleton<CSSkill>::s_inst;
}


// ===== 3c0518 GetNewState<CSCast>(void) =====
void *GetNewState<CSCast>()
{
  return &Singleton<CSCast>::s_inst;
}


// ===== 3c0534 GetNewState<CSScared>(void) =====
void *GetNewState<CSScared>()
{
  return &Singleton<CSScared>::s_inst;
}


// ===== 3c0550 GetNewState<CSStunned>(void) =====
void *GetNewState<CSStunned>()
{
  return &Singleton<CSStunned>::s_inst;
}


// ===== 3c056c GetNewState<CSKnockedBack>(void) =====
void *GetNewState<CSKnockedBack>()
{
  return &Singleton<CSKnockedBack>::s_inst;
}


// ===== 3c0588 GetNewState<CSInjured>(void) =====
void *GetNewState<CSInjured>()
{
  return &Singleton<CSInjured>::s_inst;
}


// ===== 3c05a4 GetNewState<CSDead>(void) =====
void *GetNewState<CSDead>()
{
  return &Singleton<CSDead>::s_inst;
}


// ===== 3c05c0 GetNewState<CSInteract>(void) =====
void *GetNewState<CSInteract>()
{
  return &Singleton<CSInteract>::s_inst;
}


// ===== 3c05dc GetNewState<CSAnim>(void) =====
void *GetNewState<CSAnim>()
{
  return &Singleton<CSAnim>::s_inst;
}


// ===== 3c05f8 GetNewState<CSReviving>(void) =====
void *GetNewState<CSReviving>()
{
  return &Singleton<CSReviving>::s_inst;
}


// ===== 3c0614 GetNewState<CSRevived>(void) =====
void *GetNewState<CSRevived>()
{
  return &Singleton<CSRevived>::s_inst;
}


// ===== 3c0630 GetNewState<CSPreSpawn>(void) =====
void *GetNewState<CSPreSpawn>()
{
  return &Singleton<CSPreSpawn>::s_inst;
}


// ===== 3c064c GetNewState<CSLiftingIdle>(void) =====
void *GetNewState<CSLiftingIdle>()
{
  return &Singleton<CSLiftingIdle>::s_inst;
}


// ===== 3c0668 GetNewState<CSLiftingMove>(void) =====
int *GetNewState<CSLiftingMove>()
{
  return &Singleton<CSLiftingMove>::s_inst;
}


// ===== 3c0684 CharState::~CharState() =====
void __fastcall CharState::~CharState(CharState *this)
{
  *(_DWORD *)this = off_9663A8;
  CustomFree(this);
}


// ===== 3c06b8 CSLiftingMove::~CSLiftingMove() =====
void __fastcall CSLiftingMove::~CSLiftingMove(CSLiftingMove *this)
{
  *(_DWORD *)this = off_9663A8;
  CustomFree(this);
}


// ===== 3c06ec CSLiftingIdle::~CSLiftingIdle() =====
void __fastcall CSLiftingIdle::~CSLiftingIdle(CSLiftingIdle *this)
{
  *(_DWORD *)this = off_9663A8;
  CustomFree(this);
}


// ===== 3c0720 CSPreSpawn::~CSPreSpawn() =====
void __fastcall CSPreSpawn::~CSPreSpawn(CSPreSpawn *this)
{
  *(_DWORD *)this = off_9663A8;
  CustomFree(this);
}


// ===== 3c0754 CSRevived::~CSRevived() =====
void __fastcall CSRevived::~CSRevived(CSRevived *this)
{
  *(_DWORD *)this = off_9663A8;
  CustomFree(this);
}


// ===== 3c0788 CSReviving::~CSReviving() =====
void __fastcall CSReviving::~CSReviving(CSReviving *this)
{
  *(_DWORD *)this = off_9663A8;
  CustomFree(this);
}


// ===== 3c07bc CSAnim::~CSAnim() =====
void __fastcall CSAnim::~CSAnim(CSAnim *this)
{
  *(_DWORD *)this = off_9663A8;
  CustomFree(this);
}


// ===== 3c07f0 CSInteract::~CSInteract() =====
void __fastcall CSInteract::~CSInteract(CSInteract *this)
{
  *(_DWORD *)this = off_9663A8;
  CustomFree(this);
}


// ===== 3c0824 CSDead::~CSDead() =====
void __fastcall CSDead::~CSDead(CSDead *this)
{
  *(_DWORD *)this = off_9663A8;
  CustomFree(this);
}


// ===== 3c0858 CSInjured::~CSInjured() =====
void __fastcall CSInjured::~CSInjured(CSInjured *this)
{
  *(_DWORD *)this = off_9663A8;
  CustomFree(this);
}


// ===== 3c088c CSKnockedBack::~CSKnockedBack() =====
void __fastcall CSKnockedBack::~CSKnockedBack(CSKnockedBack *this)
{
  *(_DWORD *)this = off_9663A8;
  CustomFree(this);
}


// ===== 3c08c0 CSStunned::~CSStunned() =====
void __fastcall CSStunned::~CSStunned(CSStunned *this)
{
  *(_DWORD *)this = off_9663A8;
  CustomFree(this);
}


// ===== 3c08f4 CSScared::~CSScared() =====
void __fastcall CSScared::~CSScared(CSScared *this)
{
  *(_DWORD *)this = off_9663A8;
  CustomFree(this);
}


// ===== 3c0928 CSCast::~CSCast() =====
void __fastcall CSCast::~CSCast(CSCast *this)
{
  *(_DWORD *)this = off_9663A8;
  CustomFree(this);
}


// ===== 3c095c CSSkill::~CSSkill() =====
void __fastcall CSSkill::~CSSkill(CSSkill *this)
{
  *(_DWORD *)this = off_9663A8;
  CustomFree(this);
}


// ===== 3c0990 CSAttack::~CSAttack() =====
void __fastcall CSAttack::~CSAttack(CSAttack *this)
{
  *(_DWORD *)this = off_9663A8;
  CustomFree(this);
}


// ===== 3c09c4 CSMove::~CSMove() =====
void __fastcall CSMove::~CSMove(CSMove *this)
{
  *(_DWORD *)this = off_9663A8;
  CustomFree(this);
}


// ===== 3c09f8 CSIdle::~CSIdle() =====
void __fastcall CSIdle::~CSIdle(CSIdle *this)
{
  *(_DWORD *)this = off_9663A8;
  CustomFree(this);
}


// ===== 3c0a2c CSDespawn::~CSDespawn() =====
void __fastcall CSDespawn::~CSDespawn(CSDespawn *this)
{
  *(_DWORD *)this = off_9663A8;
  CustomFree(this);
}


// ===== 3c0a60 CSSpawn::~CSSpawn() =====
void __fastcall CSSpawn::~CSSpawn(CSSpawn *this)
{
  *(_DWORD *)this = off_9663A8;
  CustomFree(this);
}


// ===== 3c0a94 CSLimbus::~CSLimbus() =====
void __fastcall CSLimbus::~CSLimbus(CSLimbus *this)
{
  *(_DWORD *)this = off_9663A8;
  CustomFree(this);
}


// ===== 3c0ac8 CSSkill::OnEvent(int,Character *,CharStateMachine *,int,void *) =====
void __fastcall CSSkill::OnEvent(CSSkill *this, int a2, Character *a3, CharStateMachine *a4, int a5, char *a6)
{
  if ( a5 == 40 && !LC_API_STRCMP_0(a6, "is_stoppable") )
    *((_DWORD *)a3 + 328) |= 0x8000u;
}


// ===== 3c0b04 CSSpawn::OnEvent(int,Character *,CharStateMachine *,int,void *) =====
char *__fastcall CSSpawn::OnEvent(CSSpawn *this, int a2, Character *a3, CharStateMachine *a4, int a5, char *a6)
{
  char *result; // r0

  result = a6;
  if ( a5 == 40 )
  {
    result = (char *)LC_API_STRCMP_0(a6, "is_interactive");
    if ( !result )
    {
      *((_DWORD *)a3 + 328) |= 0x2000u;
      return (char *)Character::InitPhysicalObject(a3);
    }
  }
  return result;
}


// ===== 3c0b50 CharStateMachine::SM_SetAnim(int) =====
int __fastcall CharStateMachine::SM_SetAnim(CharStateMachine *this, int a2)
{
  int v2; // r3
  int v3; // r0

  v2 = *((_DWORD *)this + 10);
  if ( v2 != -1 )
    *((_DWORD *)this + 10) = -1;
  v3 = *((_DWORD *)this + 1);
  if ( v2 == -1 )
    v2 = a2;
  return CharAnimator::ANIM_Set((CharAnimator *)(v3 + 1180), v2);
}


// ===== 3c0b78 CSIdle::IdleCommonUpdate(int,Character *,CharStateMachine *) =====
int __fastcall CSIdle::IdleCommonUpdate(CSIdle *this, Character *a2, Character *a3, CharStateMachine *a4)
{
  int result; // r0
  int v6; // r6
  unsigned int v7; // r9
  PlayerManager *v8; // r8
  int v9; // r10
  int v10; // r5
  bool v11; // zf
  float v12; // r11
  float v13; // r0
  float v14; // r0
  float v15; // r11
  int v16; // r3
  float v17; // r11
  int v18; // r2
  float v19; // [sp+4h] [bp-48h]
  float v20; // [sp+8h] [bp-44h]
  float v21; // [sp+8h] [bp-44h]
  float Constant; // [sp+Ch] [bp-40h]
  float v23; // [sp+Ch] [bp-40h]
  float v24; // [sp+10h] [bp-3Ch]
  float v25; // [sp+10h] [bp-3Ch]
  float v26; // [sp+18h] [bp-34h]
  float v27; // [sp+1Ch] [bp-30h]
  float v28[3]; // [sp+30h] [bp-1Ch] BYREF
  float v29[4]; // [sp+3Ch] [bp-10h] BYREF

  if ( *((_BYTE *)a2 + 437) )
    return Character::RaiseEvent(a2, 0, nullptr);
  result = (*(int (__fastcall **)(Character *))(*(_DWORD *)a2 + 40))(a2);
  if ( result )
  {
    result = GetOnline();
    v6 = *(unsigned __int8 *)(result + 5);
    if ( !*(_BYTE *)(result + 5) )
    {
      result = PyDataConstants::getConstant(
                 (PyDataConstants *)dword_99F758,
                 "CharacterDesign",
                 "PlayerInterPenetration_Delay");
      v7 = result;
      if ( (unsigned int)result <= *((_DWORD *)a2 + 343) )
      {
        v8 = (PlayerManager *)dword_99F76C;
        result = PlayerManager::GetNumPlayers((PlayerManager *)dword_99F76C);
        v9 = result;
        if ( result > 0 )
        {
          do
          {
            result = PlayerManager::GetPlayer(v8, v6, 0);
            v10 = *(_DWORD *)(result + 1632);
            v11 = v10 == 0;
            if ( v10 )
              v11 = a2 == (Character *)v10;
            if ( !v11 )
            {
              result = CharStateMachine::SM_GetState((CharStateMachine *)(v10 + 1276));
              if ( result == 3 && v7 <= *(_DWORD *)(v10 + 1372) )
              {
                Constant = (float)(int)PyDataConstants::getConstant(
                                         (PyDataConstants *)dword_99F758,
                                         "CharacterDesign",
                                         "PlayerInterPenetration_Dist");
                v24 = *((float *)a2 + 88) - *(float *)(v10 + 352);
                v26 = *((float *)a2 + 89) - *(float *)(v10 + 356);
                v27 = *((float *)a2 + 90) - *(float *)(v10 + 360);
                v12 = (float)((float)(v24 * v24) + (float)(v26 * v26)) + (float)(v27 * v27);
                result = (float)(Constant * Constant) > v12;
                if ( (float)(Constant * Constant) > v12 )
                {
                  result = v12 > 0.0;
                  if ( v12 > 0.0 )
                  {
                    v13 = sqrtf(v12);
                    v14 = (float)((float)(Constant - v13) * 0.75) / v13;
                    v23 = v14 * v24;
                    v25 = v14 * v26;
                    v15 = v14 * v27;
                    v19 = (float)(v14 * v26) + *((float *)a2 + 89);
                    v20 = (float)(v14 * v27) + *((float *)a2 + 90);
                    v16 = *((_DWORD *)a2 + 222);
                    v29[0] = v23 + *((float *)a2 + 88);
                    v29[1] = v19;
                    v29[2] = v20;
                    v2Controller::Cmd_MoveTo(v16, v29);
                    v21 = *(float *)(v10 + 356) - v25;
                    v17 = *(float *)(v10 + 360) - v15;
                    v18 = *(_DWORD *)(v10 + 888);
                    v28[0] = *(float *)(v10 + 352) - v23;
                    v28[1] = v21;
                    v28[2] = v17;
                    result = v2Controller::Cmd_MoveTo(v18, v28);
                  }
                }
              }
            }
            ++v6;
          }
          while ( v6 != v9 );
        }
      }
    }
  }
  return result;
}


// ===== 3c0e80 CSIdle::OnUpdate(int,Character *,CharStateMachine *) =====
int __fastcall CSIdle::OnUpdate(CSIdle *this, CSIdle *a2, Character *a3, CharStateMachine *a4)
{
  return CSIdle::IdleCommonUpdate(a2, a3, a4, a4);
}


// ===== 3c0e90 CSLiftingIdle::OnUpdate(int,Character *,CharStateMachine *) =====
int __fastcall CSLiftingIdle::OnUpdate(CSLiftingIdle *this, CSIdle *a2, Character *a3, CharStateMachine *a4)
{
  return CSIdle::IdleCommonUpdate(a2, a3, a4, a4);
}


// ===== 3c0ea0 CSLiftingMove::OnUpdate(int,Character *,CharStateMachine *) =====
void __fastcall CSLiftingMove::OnUpdate(CSLiftingMove *this, int a2, Character *a3, CharStateMachine *a4)
{
  int v4; // r0
  Character *v5; // [sp+4h] [bp-8h]

  if ( !*((_BYTE *)a3 + 437)
    || !*((_DWORD *)a3 + 258)
    && (v5 = a3, !(*(int (__fastcall **)(Character *, int))(*(_DWORD *)a3 + 40))(a3, a2))
    && (v4 = GameObject::IsAtDestination(v5), a3 = v5, v4) )
  {
    Character::RaiseEvent(a3, 63, nullptr);
  }
}


// ===== 3c0f18 CSMove::UpdateType(Character *,CharStateMachine *) =====
int __fastcall CSMove::UpdateType(CSMove *this, Character *a2, CharStateMachine *a3)
{
  int result; // r0
  int v5; // r5
  float v6; // r7
  float v7; // r8
  char *v8; // r5
  int v9; // r7
  int v10; // r6
  char *AnimStance; // r0
  int v12; // r7
  int v13; // r7

  result = (*(int (__fastcall **)(Character *))(*(_DWORD *)a2 + 40))(a2);
  if ( result )
  {
    v5 = *((_DWORD *)a2 + 335);
    v6 = (float)((float)(*((float *)a2 + 110) * *((float *)a2 + 110))
               + (float)(*((float *)a2 + 111) * *((float *)a2 + 111)))
       + (float)(*((float *)a2 + 112) * *((float *)a2 + 112));
    if ( v5 == 2 )
      goto LABEL_6;
    result = (float)(*(float *)(Arrays::DesignSettingsTable::members + 96)
                   * *(float *)(Arrays::DesignSettingsTable::members + 96)) < (float)((float)((float)(*((float *)a2 + 110) * *((float *)a2 + 110))
                                                                                            + (float)(*((float *)a2 + 111) * *((float *)a2 + 111)))
                                                                                    + (float)(*((float *)a2 + 112)
                                                                                            * *((float *)a2 + 112)));
    if ( (float)(*(float *)(Arrays::DesignSettingsTable::members + 96)
               * *(float *)(Arrays::DesignSettingsTable::members + 96)) < v6 )
    {
      *((_DWORD *)a2 + 335) = 2;
      *((_DWORD *)a2 + 331) = CharProperties::PROPS_GetWalkSpeed((Character *)((char *)a2 + 1376));
      v8 = (char *)a2 + 1180;
      v13 = Arrays::CharAnimTable::members;
      v10 = *(_DWORD *)(v13 + 160 * Character::GetCharAnimTableId(a2) + 112);
      AnimStance = (char *)(PyDataConstants::getConstant(
                              (PyDataConstants *)dword_99F758,
                              "AnimStancedAnim",
                              "SL__LIST_IPHONE")
                          & 0x20);
      if ( !AnimStance )
        goto LABEL_8;
      goto LABEL_12;
    }
    if ( !v5 )
      goto LABEL_7;
    if ( v5 != 1 )
    {
LABEL_6:
      v7 = *(float *)(Arrays::DesignSettingsTable::members + 92);
      result = (float)(v7 * v7) > v6;
      if ( (float)(v7 * v7) > v6 )
      {
LABEL_7:
        *((_DWORD *)a2 + 335) = 1;
        *((_DWORD *)a2 + 331) = CharProperties::PROPS_GetWalkSpeed((Character *)((char *)a2 + 1376));
        v8 = (char *)a2 + 1180;
        v9 = Arrays::CharAnimTable::members;
        v10 = *(_DWORD *)(v9 + 160 * Character::GetCharAnimTableId(a2) + 148);
        AnimStance = (char *)(PyDataConstants::getConstant(
                                (PyDataConstants *)dword_99F758,
                                "AnimStancedAnim",
                                "SL__LIST_IPHONE")
                            & 0x10);
        if ( !AnimStance )
        {
LABEL_8:
          CharAnimator::ANIM_Set((unsigned int)v8, (int)&AnimStance[v10]);
          return CharAnimator::ANIM_SetSpeed((int)v8, *((float *)a2 + 331));
        }
LABEL_12:
        AnimStance = Character::GetAnimStance(a2);
        goto LABEL_8;
      }
    }
  }
  else if ( !*((_DWORD *)a2 + 335) )
  {
    *((_DWORD *)a2 + 335) = 1;
    *((_DWORD *)a2 + 331) = CharProperties::PROPS_GetWalkSpeed((Character *)((char *)a2 + 1376));
    v8 = (char *)a2 + 1180;
    v12 = Arrays::CharAnimTable::members;
    v10 = *(_DWORD *)(v12 + 160 * Character::GetCharAnimTableId(a2) + 148);
    AnimStance = (char *)(PyDataConstants::getConstant(
                            (PyDataConstants *)dword_99F758,
                            "AnimStancedAnim",
                            "SL__LIST_IPHONE")
                        & 0x10);
    if ( !AnimStance )
      goto LABEL_8;
    goto LABEL_12;
  }
  return result;
}


// ===== 3c1184 CSMove::OnUpdate(int,Character *,CharStateMachine *) =====
int __fastcall CSMove::OnUpdate(CSMove *this, int a2, Character *a3, CharStateMachine *a4)
{
  int result; // r0
  float v7; // r5
  CharStateMachine *v8; // [sp+4h] [bp-8h]

  if ( !*((_BYTE *)a3 + 437) )
    return Character::RaiseEvent(a3, 63, nullptr);
  if ( *((_DWORD *)a3 + 258) )
    goto LABEL_4;
  v8 = a4;
  result = (*(int (__fastcall **)(Character *))(*(_DWORD *)a3 + 40))(a3);
  a4 = v8;
  if ( !result )
  {
    result = GameObject::IsAtDestination(a3);
    a4 = v8;
    if ( result )
    {
      result = (*(int (__fastcall **)(Character *))(*(_DWORD *)a3 + 84))(a3);
      a4 = v8;
      if ( !result )
        return Character::RaiseEvent(a3, 63, nullptr);
    }
  }
  if ( *((_BYTE *)a3 + 437) )
  {
LABEL_4:
    CSMove::UpdateType(this, a3, a4);
    v7 = COERCE_FLOAT(CharProperties::PROPS_GetWalkSpeed((Character *)((char *)a3 + 1376)));
    result = fabs(v7 - *((float *)a3 + 331)) < 0.0001;
    if ( !result )
    {
      *((float *)a3 + 331) = v7;
      return CharAnimator::ANIM_SetSpeed((Character *)((char *)a3 + 1180), v7);
    }
  }
  return result;
}


// ===== 3c1288 CSAttack::OnEvent(int,Character *,CharStateMachine *,int,void *) =====
void __fastcall CSAttack::OnEvent(CSAttack *this, int a2, Character *a3, CharStateMachine *a4, int a5, void *a6)
{
  GameObject *v7; // r0
  float *TargetPosition; // r1
  int v9; // r10
  int v10; // r10
  int AnimStance; // r2
  int v12; // r7
  int v13; // r10
  int v14; // r4
  int v15; // r0
  int v16; // r0
  int v17; // r10
  int v18; // r10
  int v19; // r2
  int v20; // r7
  int v21; // r10
  int v22; // r4
  int v23; // r0
  int v24; // r0

  if ( a5 == 26 )
  {
    v7 = *((GameObject **)a3 + 258);
    if ( v7 )
    {
      TargetPosition = (float *)GameObject::GetTargetPosition(v7);
      GameObject::LookAt((float *)a3, TargetPosition);
    }
    else if ( ItemInventory::HasRangedWeapon((Character *)((char *)a3 + 892)) && *((_BYTE *)a3 + 437) )
    {
      GameObject::SetHeadingDirection((int)a3, (float *)a3 + 110, 1);
    }
  }
  else if ( a5 == 28 && (*(int (__fastcall **)(Character *, int))(*(_DWORD *)a3 + 40))(a3, a2) )
  {
    if ( *((_BYTE *)a3 + 437) )
    {
      v9 = Arrays::CharAnimTable::members;
      v10 = *(_DWORD *)(v9 + 160 * Character::GetCharAnimTableId(a3) + 4);
      AnimStance = PyDataConstants::getConstant((PyDataConstants *)dword_99F758, "AnimStancedAnim", "SL__LIST_IPHONE")
                 & 0x40;
      if ( AnimStance )
        AnimStance = Character::GetAnimStance(a3);
      v12 = AnimStance + v10;
      v13 = Arrays::CharAnimTable::members;
      v14 = *(_DWORD *)(v13 + 160 * Character::GetCharAnimTableId(a3) + 8);
      v15 = PyDataConstants::getConstant((PyDataConstants *)dword_99F758, "AnimStancedAnim", "SL__LIST_IPHONE") & 0x80;
      if ( v15 )
        v15 = Character::GetAnimStance(a3);
      CharAnimator::ANIM_Swap((unsigned int)a3 + 1180, v12, v15 + v14);
      v16 = *((_DWORD *)a3 + 183);
      if ( v16 )
        PhysicalObject::unpin(v16);
    }
    else
    {
      v17 = Arrays::CharAnimTable::members;
      v18 = *(_DWORD *)(v17 + 160 * Character::GetCharAnimTableId(a3) + 8);
      v19 = PyDataConstants::getConstant((PyDataConstants *)dword_99F758, "AnimStancedAnim", "SL__LIST_IPHONE") & 0x80;
      if ( v19 )
        v19 = Character::GetAnimStance(a3);
      v20 = v19 + v18;
      v21 = Arrays::CharAnimTable::members;
      v22 = *(_DWORD *)(v21 + 160 * Character::GetCharAnimTableId(a3) + 4);
      v23 = PyDataConstants::getConstant((PyDataConstants *)dword_99F758, "AnimStancedAnim", "SL__LIST_IPHONE") & 0x40;
      if ( v23 )
        v23 = Character::GetAnimStance(a3);
      CharAnimator::ANIM_Swap((unsigned int)a3 + 1180, v20, v23 + v22);
      v24 = *((_DWORD *)a3 + 183);
      if ( v24 )
        PhysicalObject::pin(v24);
    }
  }
}


// ===== 3c14f8 CSAttack::OnUpdate(int,Character *,CharStateMachine *) =====
int __fastcall CSAttack::OnUpdate(CSAttack *this, int a2, GameObject **a3, CharStateMachine *a4)
{
  float v5; // r5
  int result; // r0

  GameObject::LookAt((int)a3, a3[258]);
  v5 = COERCE_FLOAT(CharProperties::PROPS_GetAttackSpeed((CharProperties *)(a3 + 344)));
  result = fabs(*((float *)a3 + 331) - v5) < 0.0001;
  if ( !result )
  {
    *((float *)a3 + 331) = v5;
    return CharAnimator::ANIM_SetSpeed((int)(a3 + 295), v5);
  }
  return result;
}


// ===== 3c1558 CSInteract::OnEvent(int,Character *,CharStateMachine *,int,void *) =====
void __fastcall CSInteract::OnEvent(CSInteract *this, int a2, Character *a3, CharStateMachine *a4, int a5, char *a6)
{
  LiftableObject *v7; // r6

  if ( a5 == 40 )
  {
    v7 = *((LiftableObject **)a3 + 339);
    if ( v7 )
    {
      if ( LC_API_STRCMP_0(a6, "release") )
      {
        if ( !LC_API_STRCMP_0(a6, "pick_up") && *((_DWORD *)v7 + 61) == 6 && !LiftableObject::PickUp(v7, a3) )
          *((_DWORD *)a3 + 337) = -1;
      }
      else
      {
        if ( *((_DWORD *)v7 + 61) == 6 )
          LiftableObject::Release(v7);
        *((_DWORD *)a3 + 339) = 0;
      }
    }
  }
}


// ===== 3c1600 CharStateMachine::SetCharacter(Character *) =====
int __fastcall CharStateMachine::SetCharacter(int this, Character *a2)
{
  int v3; // r5

  v3 = this;
  if ( !a2 )
  {
    if ( gAssertLevel == 2 )
    {
      dword_0 = 0;
    }
    else if ( gAssertLevel == 1 )
    {
      this = fprintf(
               (FILE *)&_sF + 2,
               "ASSERT(%s) FAILED: %s:%d\n",
               "c",
               "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Objects\\Characters\\StateMachine\\CharStateMachine.cpp",
               225);
    }
  }
  *(_DWORD *)(v3 + 4) = a2;
  return this;
}


// ===== 3c1694 CharStateMachine::_GetEvent(int,int) =====
char *__fastcall CharStateMachine::_GetEvent(CharStateMachine *this, int a2, int a3)
{
  char *v6; // r3
  char *v7; // r7
  char *v8; // r1
  int v9; // r2
  bool v10; // cc
  char *v11; // r2
  char *v12; // r3
  char *v13; // r5
  char *v14; // r1
  int v15; // r2
  bool v16; // cc
  char *v17; // r2

  if ( !CharStateMachine::_HasState(this, a2) )
  {
    if ( gAssertLevel == 2 )
    {
      dword_0 = 0;
    }
    else if ( gAssertLevel == 1 )
    {
      fprintf(
        (FILE *)&_sF + 2,
        "ASSERT(%s) FAILED: %s:%d\n",
        "_HasState(stateId)",
        "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Objects\\Characters\\StateMachine\\CharStateMachine.cpp",
        208);
    }
  }
  if ( !CharStateMachine::_HasEvent(this, a2, a3) )
  {
    if ( gAssertLevel == 2 )
    {
      dword_0 = 0;
    }
    else if ( gAssertLevel == 1 )
    {
      fprintf(
        (FILE *)&_sF + 2,
        "ASSERT(%s) FAILED: %s:%d\n",
        "_HasEvent(stateId, eventId)",
        "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Objects\\Characters\\StateMachine\\CharStateMachine.cpp",
        209);
    }
  }
  v6 = *((char **)this + 3);
  v7 = (char *)this + 8;
  if ( v6 )
  {
    v8 = v7;
    while ( 1 )
    {
      v9 = *((_DWORD *)v6 + 4);
      v10 = a2 <= v9;
      if ( a2 <= v9 )
        v11 = *((char **)v6 + 2);
      else
        v11 = *((char **)v6 + 3);
      if ( !v10 )
        v6 = v8;
      v8 = v6;
      if ( !v11 )
        break;
      v6 = v11;
    }
    if ( v7 != v6 && a2 >= *((_DWORD *)v6 + 4) )
      v7 = v6;
  }
  v12 = *((char **)v7 + 8);
  v13 = v7 + 28;
  if ( v12 )
  {
    v14 = v7 + 28;
    while ( 1 )
    {
      v15 = *((_DWORD *)v12 + 4);
      v16 = v15 < a3;
      if ( v15 >= a3 )
        v17 = *((char **)v12 + 2);
      else
        v17 = *((char **)v12 + 3);
      if ( v16 )
        v12 = v14;
      v14 = v12;
      if ( !v17 )
        break;
      v12 = v17;
    }
    if ( v13 != v12 && *((_DWORD *)v12 + 4) <= a3 )
      v13 = v12;
  }
  return v13 + 20;
}


// ===== 3c184c CharStateMachine::_GetState(int) =====
char *__fastcall CharStateMachine::_GetState(CharStateMachine *this, int a2)
{
  char *v4; // r3
  char *v5; // r5
  char *v6; // r1
  int v7; // r2
  bool v8; // cc
  char *v9; // r2

  if ( !CharStateMachine::_HasState(this, a2) )
  {
    if ( gAssertLevel == 2 )
    {
      dword_0 = 0;
    }
    else if ( gAssertLevel == 1 )
    {
      fprintf(
        (FILE *)&_sF + 2,
        "ASSERT(%s) FAILED: %s:%d\n",
        "_HasState(stateId)",
        "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Objects\\Characters\\StateMachine\\CharStateMachine.cpp",
        151);
    }
  }
  v4 = *((char **)this + 3);
  v5 = (char *)this + 8;
  if ( v4 )
  {
    v6 = v5;
    while ( 1 )
    {
      v7 = *((_DWORD *)v4 + 4);
      v8 = a2 <= v7;
      if ( a2 <= v7 )
        v9 = *((char **)v4 + 2);
      else
        v9 = *((char **)v4 + 3);
      if ( !v8 )
        v4 = v6;
      v6 = v4;
      if ( !v9 )
        break;
      v4 = v9;
    }
    if ( v5 != v4 && a2 >= *((_DWORD *)v4 + 4) )
      v5 = v4;
  }
  return v5 + 20;
}


// ===== 3c1938 CharStateMachine::_SetState(int,int,void *) =====
int __fastcall CharStateMachine::_SetState(CharStateMachine *this, int a2, int a3, void *a4)
{
  int v4; // r7
  int *v5; // r12
  int v10; // r6
  int State; // r0
  int v13; // r3

  v5 = *((int **)this + 8);
  if ( !v5 )
    v4 = -1;
  if ( v5 )
  {
    v10 = *v5;
    (*(void (__fastcall **)(int, int, _DWORD, CharStateMachine *, int))(*(_DWORD *)v5[1] + 16))(
      v5[1],
      *v5,
      *((_DWORD *)this + 1),
      this,
      a2);
    v4 = v10;
  }
  else
  {
    v10 = v4;
  }
  if ( CharStateMachine::_HasState(this, a2) )
  {
    State = CharStateMachine::_GetState(this, a2);
    if ( v10 != a2 )
      v13 = 0;
    *((_DWORD *)this + 8) = State;
    if ( v10 != a2 )
      *((_DWORD *)this + 24) = v13;
    (*(void (__fastcall **)(_DWORD, _DWORD, _DWORD, CharStateMachine *, int, int, void *))(**(_DWORD **)(State + 4) + 12))(
      *(_DWORD *)(State + 4),
      *(_DWORD *)State,
      *((_DWORD *)this + 1),
      this,
      v10,
      a3,
      a4);
  }
  else
  {
    *((_DWORD *)this + 8) = 0;
  }
  return Character::RaiseEvent(*((Character **)this + 1), 29, (char *)v4);
}


// ===== 3c1a00 CharStateMachine::SM_SetIdleState(bool) =====
int __fastcall CharStateMachine::SM_SetIdleState(CharStateMachine *this, bool a2)
{
  *((_BYTE *)this + 60) = a2;
  return CharStateMachine::_SetState(this, 3, -1, nullptr);
}


// ===== 3c1a14 CSAnim::OnEvent(int,Character *,CharStateMachine *,int,void *) =====
int __fastcall CSAnim::OnEvent(CSAnim *this, int a2, Character *a3, CharStateMachine *a4, int a5, void *a6)
{
  int result; // r0

  if ( a5 == 34 )
  {
    if ( *((_BYTE *)a3 + 1344) )
      return CharStateMachine::SM_SetIdleState((Character *)((char *)a3 + 1276), 0);
  }
  return result;
}


// ===== 3c1a3c CSAnim::OnUpdate(int,Character *,CharStateMachine *) =====
int __fastcall CSAnim::OnUpdate(CSAnim *this, int a2, Character *a3, CharStateMachine *a4)
{
  int result; // r0

  if ( !*((_BYTE *)a3 + 5248) )
  {
    if ( *((_BYTE *)a3 + 1345) )
      return CharStateMachine::SM_SetIdleState((Character *)((char *)a3 + 1276), *((_BYTE *)a3 + 5248));
  }
  return result;
}


// ===== 3c1a64 CharStateMachine::SM_SetPreSpawnState(void) =====
int __fastcall CharStateMachine::SM_SetPreSpawnState(CharStateMachine *this)
{
  return CharStateMachine::_SetState(this, 17, -1, nullptr);
}


// ===== 3c1a74 CharStateMachine::SM_SetLimbusState(bool) =====
int __fastcall CharStateMachine::SM_SetLimbusState(CharStateMachine *this, bool a2)
{
  *((_BYTE *)this + 52) = a2;
  if ( CharStateMachine::SM_IsAwaitingToRevive(this) )
    *((_DWORD *)this + 8) = 0;
  return CharStateMachine::_SetState(this, 0, -1, nullptr);
}


// ===== 3c1aa8 CharStateMachine::SM_SetAnimState(int,bool,bool) =====
int __fastcall CharStateMachine::SM_SetAnimState(CharStateMachine *this, int a2, bool a3, bool a4)
{
  *((_BYTE *)this + 69) = a4;
  *((_DWORD *)this + 10) = a2;
  *((_BYTE *)this + 68) = a3;
  return CharStateMachine::_SetState(this, 14, -1, nullptr);
}


// ===== 3c1ac4 CharStateMachine::CharStateMachine(void) =====
void __fastcall CharStateMachine::CharStateMachine(CharStateMachine *this)
{
  *((_DWORD *)this + 1) = 0;
  *(_DWORD *)this = off_966768;
  *((_DWORD *)this + 3) = 0;
  *((_BYTE *)this + 8) = 0;
  *((_DWORD *)this + 5) = (char *)this + 8;
  *((_DWORD *)this + 10) = -1;
  *((_DWORD *)this + 23) = 0;
  *((_DWORD *)this + 4) = (char *)this + 8;
  *((_DWORD *)this + 6) = 0;
  *((_DWORD *)this + 8) = 0;
  *((_DWORD *)this + 9) = 0;
  *((_DWORD *)this + 24) = 0;
  *((_DWORD *)this + 11) = 0;
  *((_DWORD *)this + 12) = 0;
  *((_DWORD *)this + 13) = 0;
  *((_DWORD *)this + 14) = 0;
  *((_DWORD *)this + 15) = 0;
  *((_DWORD *)this + 16) = 0;
  *((_DWORD *)this + 17) = 0;
  *((_DWORD *)this + 18) = 0;
  *((_DWORD *)this + 19) = 0;
  *((_DWORD *)this + 20) = 0;
  *((_DWORD *)this + 21) = 0;
  *((_DWORD *)this + 22) = 0;
}


// ===== 3c1b58 CharStateMachine::CharStateMachine(void) =====
void __fastcall CharStateMachine::CharStateMachine(CharStateMachine *this)
{
  *((_DWORD *)this + 1) = 0;
  *(_DWORD *)this = off_966768;
  *((_DWORD *)this + 3) = 0;
  *((_BYTE *)this + 8) = 0;
  *((_DWORD *)this + 5) = (char *)this + 8;
  *((_DWORD *)this + 10) = -1;
  *((_DWORD *)this + 23) = 0;
  *((_DWORD *)this + 4) = (char *)this + 8;
  *((_DWORD *)this + 6) = 0;
  *((_DWORD *)this + 8) = 0;
  *((_DWORD *)this + 9) = 0;
  *((_DWORD *)this + 24) = 0;
  *((_DWORD *)this + 11) = 0;
  *((_DWORD *)this + 12) = 0;
  *((_DWORD *)this + 13) = 0;
  *((_DWORD *)this + 14) = 0;
  *((_DWORD *)this + 15) = 0;
  *((_DWORD *)this + 16) = 0;
  *((_DWORD *)this + 17) = 0;
  *((_DWORD *)this + 18) = 0;
  *((_DWORD *)this + 19) = 0;
  *((_DWORD *)this + 20) = 0;
  *((_DWORD *)this + 21) = 0;
  *((_DWORD *)this + 22) = 0;
}


// ===== 3c1bec `global constructor keyed to'.._.._sources_Game_Objects_Characters_StateMachine_CharStateMachine.cpp =====
int __fastcall `global constructor keyed to'.._.._sources_Game_Objects_Characters_StateMachine_CharStateMachine.cpp(
        CMessage *a1)
{
  CMessage *(*v1)(bool); // r2
  CMessage *(*v2)(bool); // r2
  CMessage *(*v3)(bool); // r2
  CMessage *(*v4)(bool); // r2
  CMessage *(*v5)(bool); // r2
  CMessage *(*v6)(bool); // r2
  CMessage *(*v7)(bool); // r2
  CMessage *(*v8)(bool); // r2
  CMessage *(*v9)(bool); // r2
  CMessage *(*v10)(bool); // r2
  CMessage *(*v11)(bool); // r2
  CMessage *(*v12)(bool); // r2
  CMessage *(*v13)(bool); // r2
  CMessage *v14; // r0
  int result; // r0

  dword_9A2A2C = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9A2A28 = 1056964608;
  messageCreationMap = CMessage::InitializeMessageRegistration(a1);
  byte_9A2A31 = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgStartGame",
                  (const char *)GetNewInstance<CMsgStartGame>,
                  v1);
  byte_9A2A32 = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgControllerAction",
                  (const char *)GetNewInstance<CMsgControllerAction>,
                  v2);
  byte_9A2A33 = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgAttackResult",
                  (const char *)GetNewInstance<CMsgAttackResult>,
                  v3);
  byte_9A2A34 = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgRaisedEvent",
                  (const char *)GetNewInstance<CMsgRaisedEvent>,
                  v4);
  byte_9A2A35 = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgMenuReady",
                  (const char *)GetNewInstance<CMsgMenuReady>,
                  v5);
  byte_9A2A36 = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgScriptCmd",
                  (const char *)GetNewInstance<CMsgScriptCmd>,
                  v6);
  byte_9A2A37 = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgInitialSetup",
                  (const char *)GetNewInstance<CMsgInitialSetup>,
                  v7);
  byte_9A2A38 = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgQuestsSync",
                  (const char *)GetNewInstance<CMsgQuestsSync>,
                  v8);
  byte_9A2A39 = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgDropLoot",
                  (const char *)GetNewInstance<CMsgDropLoot>,
                  v9);
  byte_9A2A3A = CMessage::RegisterMessageType((CMessage *)"CMsgIsHost", (const char *)GetNewInstance<CMsgIsHost>, v10);
  byte_9A2A3B = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgSpawnObject",
                  (const char *)GetNewInstance<CMsgSpawnObject>,
                  v11);
  byte_9A2A3C = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgGlobalDeath",
                  (const char *)GetNewInstance<CMsgGlobalDeath>,
                  v12);
  v14 = (CMessage *)CMessage::RegisterMessageType(
                      (CMessage *)"CMsgAskResendAttributes",
                      (const char *)GetNewInstance<CMsgAskResendAttributes>,
                      v13);
  byte_9A2A3D = (char)v14;
  result = CMessage::TerminateMessageRegistration(v14);
  byte_9A2A3E = result;
  if ( (`guard variable for'Singleton<PlayerStatManager>::s_inst & 1) == 0 )
  {
    `guard variable for'Singleton<PlayerStatManager>::s_inst = 1;
    PlayerStatManager::PlayerStatManager((PlayerStatManager *)&Singleton<PlayerStatManager>::s_inst);
    result = _aeabi_atexit(
               (int)&Singleton<PlayerStatManager>::s_inst,
               (int)PlayerStatManager::~PlayerStatManager,
               (int)&_dso_handle);
  }
  if ( (`guard variable for'Singleton<Application>::s_inst & 1) == 0 )
  {
    `guard variable for'Singleton<Application>::s_inst = 1;
    Application::Application((Application *)&Singleton<Application>::s_inst);
    result = _aeabi_atexit((int)&Singleton<Application>::s_inst, (int)Application::~Application, (int)&_dso_handle);
  }
  if ( (`guard variable for'Singleton<CSLimbus>::s_inst & 1) == 0 )
  {
    `guard variable for'Singleton<CSLimbus>::s_inst = 1;
    Singleton<CSLimbus>::s_inst[0] = off_966380;
    Singleton<CSLimbus>::s_inst[1] = "CSLimbus";
    result = _aeabi_atexit((int)Singleton<CSLimbus>::s_inst, (int)CSLimbus::~CSLimbus, (int)&_dso_handle);
  }
  if ( (`guard variable for'Singleton<CSSpawn>::s_inst & 1) == 0 )
  {
    `guard variable for'Singleton<CSSpawn>::s_inst = 1;
    Singleton<CSSpawn>::s_inst[0] = off_9663D0;
    Singleton<CSSpawn>::s_inst[1] = "CSSpawn";
    result = _aeabi_atexit((int)Singleton<CSSpawn>::s_inst, (int)CSSpawn::~CSSpawn, (int)&_dso_handle);
  }
  if ( (`guard variable for'Singleton<CSDespawn>::s_inst & 1) == 0 )
  {
    `guard variable for'Singleton<CSDespawn>::s_inst = 1;
    Singleton<CSDespawn>::s_inst[0] = off_9663F8;
    Singleton<CSDespawn>::s_inst[1] = "CSDespawn";
    result = _aeabi_atexit((int)Singleton<CSDespawn>::s_inst, (int)CSDespawn::~CSDespawn, (int)&_dso_handle);
  }
  if ( (`guard variable for'Singleton<CSIdle>::s_inst & 1) == 0 )
  {
    `guard variable for'Singleton<CSIdle>::s_inst = 1;
    Singleton<CSIdle>::s_inst[0] = off_966420;
    Singleton<CSIdle>::s_inst[1] = "CSIdle";
    result = _aeabi_atexit((int)Singleton<CSIdle>::s_inst, (int)CSIdle::~CSIdle, (int)&_dso_handle);
  }
  if ( (`guard variable for'Singleton<CSMove>::s_inst & 1) == 0 )
  {
    `guard variable for'Singleton<CSMove>::s_inst = 1;
    Singleton<CSMove>::s_inst[0] = off_966448;
    Singleton<CSMove>::s_inst[1] = "CSMove";
    result = _aeabi_atexit((int)Singleton<CSMove>::s_inst, (int)CSMove::~CSMove, (int)&_dso_handle);
  }
  if ( (`guard variable for'Singleton<CSAttack>::s_inst & 1) == 0 )
  {
    `guard variable for'Singleton<CSAttack>::s_inst = 1;
    Singleton<CSAttack>::s_inst[0] = off_966470;
    Singleton<CSAttack>::s_inst[1] = "CSAttack";
    result = _aeabi_atexit((int)Singleton<CSAttack>::s_inst, (int)CSAttack::~CSAttack, (int)&_dso_handle);
  }
  if ( (`guard variable for'Singleton<CSSkill>::s_inst & 1) == 0 )
  {
    `guard variable for'Singleton<CSSkill>::s_inst = 1;
    Singleton<CSSkill>::s_inst[0] = off_966498;
    Singleton<CSSkill>::s_inst[1] = "CSSkill";
    result = _aeabi_atexit((int)Singleton<CSSkill>::s_inst, (int)CSSkill::~CSSkill, (int)&_dso_handle);
  }
  if ( (`guard variable for'Singleton<CSCast>::s_inst & 1) == 0 )
  {
    `guard variable for'Singleton<CSCast>::s_inst = 1;
    Singleton<CSCast>::s_inst[0] = off_9664C0;
    Singleton<CSCast>::s_inst[1] = "CSCast";
    result = _aeabi_atexit((int)Singleton<CSCast>::s_inst, (int)CSCast::~CSCast, (int)&_dso_handle);
  }
  if ( (`guard variable for'Singleton<CSScared>::s_inst & 1) == 0 )
  {
    `guard variable for'Singleton<CSScared>::s_inst = 1;
    Singleton<CSScared>::s_inst[0] = off_9664E8;
    Singleton<CSScared>::s_inst[1] = "CSScared";
    result = _aeabi_atexit((int)Singleton<CSScared>::s_inst, (int)CSScared::~CSScared, (int)&_dso_handle);
  }
  if ( (`guard variable for'Singleton<CSStunned>::s_inst & 1) == 0 )
  {
    `guard variable for'Singleton<CSStunned>::s_inst = 1;
    Singleton<CSStunned>::s_inst[0] = off_966510;
    Singleton<CSStunned>::s_inst[1] = "CSStunned";
    result = _aeabi_atexit((int)Singleton<CSStunned>::s_inst, (int)CSStunned::~CSStunned, (int)&_dso_handle);
  }
  if ( (`guard variable for'Singleton<CSKnockedBack>::s_inst & 1) == 0 )
  {
    `guard variable for'Singleton<CSKnockedBack>::s_inst = 1;
    Singleton<CSKnockedBack>::s_inst[0] = off_966538;
    Singleton<CSKnockedBack>::s_inst[1] = "CSKnockedBack";
    result = _aeabi_atexit((int)Singleton<CSKnockedBack>::s_inst, (int)CSKnockedBack::~CSKnockedBack, (int)&_dso_handle);
  }
  if ( (`guard variable for'Singleton<CSInjured>::s_inst & 1) == 0 )
  {
    `guard variable for'Singleton<CSInjured>::s_inst = 1;
    Singleton<CSInjured>::s_inst[0] = off_966560;
    Singleton<CSInjured>::s_inst[1] = "CSInjured";
    result = _aeabi_atexit((int)Singleton<CSInjured>::s_inst, (int)CSInjured::~CSInjured, (int)&_dso_handle);
  }
  if ( (`guard variable for'Singleton<CSDead>::s_inst & 1) == 0 )
  {
    `guard variable for'Singleton<CSDead>::s_inst = 1;
    Singleton<CSDead>::s_inst[0] = off_966588;
    Singleton<CSDead>::s_inst[1] = "CSDead";
    result = _aeabi_atexit((int)Singleton<CSDead>::s_inst, (int)CSDead::~CSDead, (int)&_dso_handle);
  }
  if ( (`guard variable for'Singleton<CSInteract>::s_inst & 1) == 0 )
  {
    `guard variable for'Singleton<CSInteract>::s_inst = 1;
    Singleton<CSInteract>::s_inst[0] = off_9665B0;
    Singleton<CSInteract>::s_inst[1] = "CSInteract";
    result = _aeabi_atexit((int)Singleton<CSInteract>::s_inst, (int)CSInteract::~CSInteract, (int)&_dso_handle);
  }
  if ( (`guard variable for'Singleton<CSAnim>::s_inst & 1) == 0 )
  {
    `guard variable for'Singleton<CSAnim>::s_inst = 1;
    Singleton<CSAnim>::s_inst[0] = off_9665D8;
    Singleton<CSAnim>::s_inst[1] = "CSAnim";
    result = _aeabi_atexit((int)Singleton<CSAnim>::s_inst, (int)CSAnim::~CSAnim, (int)&_dso_handle);
  }
  if ( (`guard variable for'Singleton<CSReviving>::s_inst & 1) == 0 )
  {
    `guard variable for'Singleton<CSReviving>::s_inst = 1;
    Singleton<CSReviving>::s_inst[0] = off_966600;
    Singleton<CSReviving>::s_inst[1] = "CSReviving";
    result = _aeabi_atexit((int)Singleton<CSReviving>::s_inst, (int)CSReviving::~CSReviving, (int)&_dso_handle);
  }
  if ( (`guard variable for'Singleton<CSRevived>::s_inst & 1) == 0 )
  {
    `guard variable for'Singleton<CSRevived>::s_inst = 1;
    Singleton<CSRevived>::s_inst[0] = off_966628;
    Singleton<CSRevived>::s_inst[1] = "CSRevived";
    result = _aeabi_atexit((int)Singleton<CSRevived>::s_inst, (int)CSRevived::~CSRevived, (int)&_dso_handle);
  }
  if ( (`guard variable for'Singleton<CSPreSpawn>::s_inst & 1) == 0 )
  {
    `guard variable for'Singleton<CSPreSpawn>::s_inst = 1;
    Singleton<CSPreSpawn>::s_inst[0] = off_966650;
    Singleton<CSPreSpawn>::s_inst[1] = "CSPreSpawn";
    result = _aeabi_atexit((int)Singleton<CSPreSpawn>::s_inst, (int)CSPreSpawn::~CSPreSpawn, (int)&_dso_handle);
  }
  if ( (`guard variable for'Singleton<CSLiftingIdle>::s_inst & 1) == 0 )
  {
    `guard variable for'Singleton<CSLiftingIdle>::s_inst = 1;
    Singleton<CSLiftingIdle>::s_inst[0] = off_966678;
    Singleton<CSLiftingIdle>::s_inst[1] = "CSLiftingIdle";
    result = _aeabi_atexit((int)Singleton<CSLiftingIdle>::s_inst, (int)CSLiftingIdle::~CSLiftingIdle, (int)&_dso_handle);
  }
  if ( (`guard variable for'Singleton<CSLiftingMove>::s_inst & 1) == 0 )
  {
    `guard variable for'Singleton<CSLiftingMove>::s_inst = 1;
    dword_9A2B2C = (int)"CSLiftingMove";
    Singleton<CSLiftingMove>::s_inst = (int)off_9666A0;
    return _aeabi_atexit((int)&Singleton<CSLiftingMove>::s_inst, (int)CSLiftingMove::~CSLiftingMove, (int)&_dso_handle);
  }
  return result;
}


// ===== 3c26a0 Random::GetRandom(int,bool) [clone] =====
unsigned int __fastcall Random::GetRandom(unsigned int this, int a2, bool a3)
{
  if ( this )
  {
    Random::s_seed = (59051 * Random::s_seed + 177149) % 0xDAF26Bu;
    this = abs32(Random::s_seed % this);
  }
  ++Random::s_debugRandomCounters;
  return this;
}


// ===== 3c2734 CharStateMachine::SM_SetSpawnState(bool,bool) =====
int __fastcall CharStateMachine::SM_SetSpawnState(CharStateMachine *this, int a2, bool a3)
{
  CharStateMachine *v3; // r4
  int v4; // r2
  signed int v5; // r3
  signed int v6; // r0
  bool v7; // cc
  signed int v8; // r5
  int Random; // r0

  v3 = this;
  if ( !a2 )
    return CharStateMachine::_SetState(this, 1, -1, nullptr);
  v4 = *((_DWORD *)this + 1);
  v5 = *(_DWORD *)(v4 + 5172);
  if ( v5 < 0 )
  {
    v5 = 0;
    *(_DWORD *)(v4 + 5172) = 0;
  }
  v6 = *(_DWORD *)(v4 + 5176);
  v7 = v6 < v5;
  if ( v6 >= v5 )
  {
    v8 = v5;
    v5 = *(_DWORD *)(v4 + 5176);
  }
  else
  {
    v8 = *(int *)((char *)&elf_hash_bucket[1238] + v4);
  }
  if ( v7 )
    *(_DWORD *)(v4 + 5176) = v5;
  if ( v5 == v8 )
  {
    if ( !v5 )
    {
      this = v3;
      return CharStateMachine::_SetState(this, 1, -1, nullptr);
    }
    return CharTimers::TMR_Start((CharTimers *)(*((_DWORD *)v3 + 1) + 948), v5, 0, 45, nullptr);
  }
  else
  {
    Random = Random::GetRandom((Random *)(v5 - v8), 5176, v4);
    return CharTimers::TMR_Start((CharTimers *)(*((_DWORD *)v3 + 1) + 948), Random + v8, 0, 45, nullptr);
  }
}


// ===== 3c2810 CSPreSpawn::OnEvent(int,Character *,CharStateMachine *,int,void *) =====
char *__fastcall CSPreSpawn::OnEvent(CSPreSpawn *this, int a2, Character **a3, CharStateMachine *a4, int a5, char *a6)
{
  char *result; // r0
  bool v8[4]; // [sp+Ch] [bp-4h] BYREF

  result = a6;
  if ( a5 == 9 )
  {
    *(_DWORD *)v8 = 1;
    result = (char *)Character::CSM_Spawn(a3, 9, a6, a2, (int *)v8);
    if ( result )
    {
      if ( *(_DWORD *)v8 == 1 )
      {
        result = (char *)CharStateMachine::SM_SetSpawnState((CharStateMachine *)(a3 + 319), 1, 0);
        if ( a3[256] == (Character *)((char *)&dword_0 + 3) )
          *((_DWORD *)a3[255] + 9) = 0;
      }
      else if ( gAssertLevel == 2 )
      {
        dword_0 = 0;
      }
      else if ( gAssertLevel == 1 )
      {
        return (char *)fprintf(
                         (FILE *)&_sF + 2,
                         "ASSERT(%s) FAILED: %s:%d\n",
                         "!\"CSM_Spawn() changed the next state... needs to decide what to do with that case\"",
                         "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Objects\\Characters\\StateMachine\\/../States/CSPreSpawn.h",
                         114);
      }
    }
  }
  else if ( a5 == 40 )
  {
    result = (char *)LC_API_STRCMP_0(a6, "is_interactive");
    if ( !result )
    {
      a3[328] = (Character *)((unsigned int)a3[328] | 0x2000);
      return (char *)Character::InitPhysicalObject((Character *)a3);
    }
  }
  return result;
}


// ===== 3c2948 std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,CharStateMachine::Event>,std::priv::_Select1st<std::pair<int const,CharStateMachine::Event>>,std::priv::_MapTraitsT<std::pair<int const,CharStateMachine::Event>>,std::allocator<std::pair<int const,CharStateMachine::Event>>>::_M_erase(std::priv::_Rb_tree_node_base *) =====
void __fastcall std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,CharStateMachine::Event>,std::priv::_Select1st<std::pair<int const,CharStateMachine::Event>>,std::priv::_MapTraitsT<std::pair<int const,CharStateMachine::Event>>,std::allocator<std::pair<int const,CharStateMachine::Event>>>::_M_erase(
        int a1,
        _DWORD *a2)
{
  _DWORD *v2; // r4
  _DWORD *v4; // r5

  v2 = a2;
  if ( a2 )
  {
    do
    {
      std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,CharStateMachine::Event>,std::priv::_Select1st<std::pair<int const,CharStateMachine::Event>>,std::priv::_MapTraitsT<std::pair<int const,CharStateMachine::Event>>,std::allocator<std::pair<int const,CharStateMachine::Event>>>::_M_erase(
        a1,
        v2[3]);
      v4 = (_DWORD *)v2[2];
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v2, 0x20u);
      v2 = v4;
    }
    while ( v4 );
  }
}


// ===== 3c2980 std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,CharStateMachine::StateInfo>,std::priv::_Select1st<std::pair<int const,CharStateMachine::StateInfo>>,std::priv::_MapTraitsT<std::pair<int const,CharStateMachine::StateInfo>>,std::allocator<std::pair<int const,CharStateMachine::StateInfo>>>::_M_erase(std::priv::_Rb_tree_node_base *) =====
void __fastcall std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,CharStateMachine::StateInfo>,std::priv::_Select1st<std::pair<int const,CharStateMachine::StateInfo>>,std::priv::_MapTraitsT<std::pair<int const,CharStateMachine::StateInfo>>,std::allocator<std::pair<int const,CharStateMachine::StateInfo>>>::_M_erase(
        int a1,
        int a2)
{
  int v2; // r4
  int v4; // r5

  v2 = a2;
  if ( a2 )
  {
    do
    {
      while ( 1 )
      {
        std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,CharStateMachine::StateInfo>,std::priv::_Select1st<std::pair<int const,CharStateMachine::StateInfo>>,std::priv::_MapTraitsT<std::pair<int const,CharStateMachine::StateInfo>>,std::allocator<std::pair<int const,CharStateMachine::StateInfo>>>::_M_erase(
          a1,
          *(_DWORD *)(v2 + 12));
        v4 = *(_DWORD *)(v2 + 8);
        if ( *(_DWORD *)(v2 + 44) )
          break;
        __ZNSt12__node_alloc13_M_deallocateEPvj_veneer((void *)v2, 0x34u);
        v2 = v4;
        if ( !v4 )
          return;
      }
      std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,CharStateMachine::Event>,std::priv::_Select1st<std::pair<int const,CharStateMachine::Event>>,std::priv::_MapTraitsT<std::pair<int const,CharStateMachine::Event>>,std::allocator<std::pair<int const,CharStateMachine::Event>>>::_M_erase(
        v2 + 28,
        *(_DWORD **)(v2 + 32));
      *(_DWORD *)(v2 + 40) = v2 + 28;
      *(_DWORD *)(v2 + 36) = v2 + 28;
      *(_DWORD *)(v2 + 32) = 0;
      *(_DWORD *)(v2 + 44) = 0;
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer((void *)v2, 0x34u);
      v2 = v4;
    }
    while ( v4 );
  }
}


// ===== 3c2a00 CharStateMachine::Flush(void) =====
void __fastcall CharStateMachine::Flush(CharStateMachine *this)
{
  char *v2; // r5

  if ( *((_DWORD *)this + 6) )
  {
    v2 = (char *)this + 8;
    std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,CharStateMachine::StateInfo>,std::priv::_Select1st<std::pair<int const,CharStateMachine::StateInfo>>,std::priv::_MapTraitsT<std::pair<int const,CharStateMachine::StateInfo>>,std::allocator<std::pair<int const,CharStateMachine::StateInfo>>>::_M_erase(
      (int)this + 8,
      *((_DWORD *)this + 3));
    *((_DWORD *)this + 5) = v2;
    *((_DWORD *)this + 6) = 0;
    *((_DWORD *)this + 4) = v2;
    *((_DWORD *)this + 3) = 0;
  }
  *((_DWORD *)this + 8) = 0;
}


// ===== 3c2a44 CharStateMachine::~CharStateMachine() =====
void __fastcall CharStateMachine::~CharStateMachine(CharStateMachine *this)
{
  *(_DWORD *)this = off_966768;
  CharStateMachine::Flush(this);
  if ( *((_DWORD *)this + 6) )
  {
    std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,CharStateMachine::StateInfo>,std::priv::_Select1st<std::pair<int const,CharStateMachine::StateInfo>>,std::priv::_MapTraitsT<std::pair<int const,CharStateMachine::StateInfo>>,std::allocator<std::pair<int const,CharStateMachine::StateInfo>>>::_M_erase(
      (int)this + 8,
      *((_DWORD *)this + 3));
    *((_DWORD *)this + 5) = (char *)this + 8;
    *((_DWORD *)this + 6) = 0;
    *((_DWORD *)this + 4) = (char *)this + 8;
    *((_DWORD *)this + 3) = 0;
  }
}


// ===== 3c2aa8 CharStateMachine::~CharStateMachine() =====
void __fastcall CharStateMachine::~CharStateMachine(CharStateMachine *this)
{
  CharStateMachine::~CharStateMachine(this);
  CustomFree(this);
}


// ===== 3c2ac4 CharStateMachine::~CharStateMachine() =====
void __fastcall CharStateMachine::~CharStateMachine(CharStateMachine *this)
{
  *(_DWORD *)this = off_966768;
  CharStateMachine::Flush(this);
  if ( *((_DWORD *)this + 6) )
  {
    std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,CharStateMachine::StateInfo>,std::priv::_Select1st<std::pair<int const,CharStateMachine::StateInfo>>,std::priv::_MapTraitsT<std::pair<int const,CharStateMachine::StateInfo>>,std::allocator<std::pair<int const,CharStateMachine::StateInfo>>>::_M_erase(
      (int)this + 8,
      *((_DWORD *)this + 3));
    *((_DWORD *)this + 5) = (char *)this + 8;
    *((_DWORD *)this + 6) = 0;
    *((_DWORD *)this + 4) = (char *)this + 8;
    *((_DWORD *)this + 3) = 0;
  }
}


// ===== 3c2b28 CSScared::OnEvent(int,Character *,CharStateMachine *,int,void *) =====
void __fastcall CSScared::OnEvent(CSScared *this, int a2, Character *a3, CharStateMachine *a4, int a5, void *a6)
{
  int v7; // r1
  bool v8; // r2
  int v9; // r1
  bool v10; // r2
  int v11; // r1
  bool v12; // r2

  if ( a5 == 35 )
  {
    Random::GetRandom((Random *)((char *)&elf_hash_bucket[2444] + 2), a2, (bool)a3);
    Random::GetRandom((Random *)((char *)&elf_hash_bucket[2444] + 2), v7, v8);
    Random::GetRandom((Random *)&dword_64, v9, v10);
    Random::GetRandom((Random *)&dword_64, v11, v12);
    v2Controller::Cmd_HeadTowards(*((_DWORD *)a3 + 222));
  }
}


// ===== 3c2be4 CSLimbus::OnBlur(int,Character *,CharStateMachine *,int) =====
void __fastcall CSLimbus::OnBlur(CSLimbus *this, int a2, Character *a3, CharStateMachine *a4, int a5)
{
  int v6; // r6
  _DWORD *v7; // r10
  int v8; // r3
  int v9; // r9
  int v10; // r8
  int v11; // r0
  std::string v12; // [sp+4h] [bp-1Ch] BYREF

  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string(&v12, "isTracingCharState");
  DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v12);
  std::string::~string(&v12);
  v6 = 0;
  *(_BYTE *)(*((_DWORD *)a3 + 222) + 8) = 0;
  (*(void (__fastcall **)(Character *, int))(*(_DWORD *)a3 + 64))(a3, 1);
  GameObject::SetPosition(a3, (float *)a3 + 1300, 1);
  GameObject::SetRotation(a3, (_DWORD *)a3 + 1303);
  Character::Revive(a3, nullptr, 0);
  if ( *((_DWORD *)a3 + 256) == 3 )
  {
    v7 = *((_DWORD **)a3 + 255);
    v8 = v7[6];
    v9 = (v7[7] - v8) >> 2;
    if ( !v9 )
      goto LABEL_11;
    v10 = 1;
    while ( 1 )
    {
      v11 = *(_DWORD *)(v8 + 4 * v6);
      if ( (Character *)v11 != a3 && CharStateMachine::SM_IsInLimbus((CharStateMachine *)(v11 + 1276)) )
        v10 = 0;
      if ( ++v6 == v9 )
        break;
      v8 = v7[6];
    }
    if ( v10 )
LABEL_11:
      v7[9] = 0;
    else
      v7[9] = 2;
  }
}


// ===== 3c2d3c CSIdle::OnBlur(int,Character *,CharStateMachine *,int) =====
void __fastcall CSIdle::OnBlur(CSIdle *this, int a2, Character *a3, CharStateMachine *a4, int a5)
{
  std::string v6; // [sp+4h] [bp-20h] BYREF

  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string(&v6, "isTracingCharState");
  DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v6);
  std::string::~string(&v6);
  *((_BYTE *)a3 + 1336) = 0;
}


// ===== 3c2dd0 CSAnim::OnBlur(int,Character *,CharStateMachine *,int) =====
void __fastcall CSAnim::OnBlur(CSAnim *this, int a2, Character *a3, CharStateMachine *a4, int a5)
{
  std::string v5; // [sp+4h] [bp-1Ch] BYREF

  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string((int)&v5, "isTracingCharState");
  DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v5);
  std::string::~string(&v5);
}


// ===== 3c2e58 CSLimbus::OnFocus(int,Character *,CharStateMachine *,int,int,void *) =====
int __fastcall CSLimbus::OnFocus(CSLimbus *this, int a2, Character *a3, CharStateMachine *a4, int a5, int a6, void *a7)
{
  int v8; // r3
  unsigned int RespawnDelay; // r0
  std::string v11; // [sp+Ch] [bp-1Ch] BYREF

  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string((int)&v11, "isTracingCharState");
  DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v11);
  std::string::~string(&v11);
  v8 = *(_DWORD *)a3;
  *((_DWORD *)a3 + 328) = 0;
  (*(void (__fastcall **)(Character *))(v8 + 64))(a3);
  if ( *((_BYTE *)a3 + 1328)
    && (int)Character::GetRespawnDelay(a3) > 0
    && (!*(_BYTE *)(GetOnline() + 5) || PlayerManager::IsLocalPlayerHosting((PlayerManager *)dword_99F76C)) )
  {
    RespawnDelay = Character::GetRespawnDelay(a3);
    CharTimers::TMR_Start((Character *)((char *)a3 + 948), RespawnDelay, 0, 47, nullptr);
  }
  return CharAI::AI_ClearAllAggro((Character *)((char *)a3 + 968));
}


// ===== 3c2f7c CSSpawn::OnBlur(int,Character *,CharStateMachine *,int) =====
void __fastcall CSSpawn::OnBlur(CSSpawn *this, int a2, Character *a3, CharStateMachine *a4, int a5)
{
  std::string v6; // [sp+4h] [bp-1Ch] BYREF

  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string((int)&v6, "isTracingCharState");
  DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v6);
  std::string::~string(&v6);
  if ( (*((_DWORD *)a3 + 328) & 0x2000) == 0 )
    Character::InitPhysicalObject(a3);
}


// ===== 3c3020 CSIdle::OnFocus(int,Character *,CharStateMachine *,int,int,void *) =====
void __fastcall CSIdle::OnFocus(CSIdle *this, int a2, Character *a3, CharStateMachine *a4, int a5, int a6, void *a7)
{
  int v8; // r8
  int v9; // r8
  int AnimStance; // r0
  std::string v11; // [sp+4h] [bp-1Ch] BYREF

  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string((int)&v11, "isTracingCharState");
  DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v11);
  std::string::~string(&v11);
  if ( !*((_BYTE *)a3 + 1336) )
  {
    *((_DWORD *)a3 + 328) = 9088;
    v8 = Arrays::CharAnimTable::members;
    v9 = *(_DWORD *)(v8 + 160 * Character::GetCharAnimTableId(a3) + 40);
    AnimStance = PyDataConstants::getConstant((PyDataConstants *)dword_99F758, "AnimStancedAnim", "SL__LIST_IPHONE") & 2;
    if ( AnimStance )
      AnimStance = Character::GetAnimStance(a3);
    CharAnimator::ANIM_Set((Character *)((char *)a3 + 1180), AnimStance + v9);
  }
}


// ===== 3c3140 CSLiftingIdle::OnFocus(int,Character *,CharStateMachine *,int,int,void *) =====
int __fastcall CSLiftingIdle::OnFocus(
        CSLiftingIdle *this,
        int a2,
        Character *a3,
        CharStateMachine *a4,
        int a5,
        int a6,
        void *a7)
{
  int v8; // r8
  int v9; // r8
  int AnimStance; // r0
  std::string v12; // [sp+4h] [bp-1Ch] BYREF

  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string((int)&v12, "isTracingCharState");
  DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v12);
  std::string::~string(&v12);
  *((_DWORD *)a3 + 328) = 9088;
  v8 = Arrays::CharAnimTable::members;
  v9 = *(_DWORD *)(v8 + 160 * Character::GetCharAnimTableId(a3) + 80);
  AnimStance = PyDataConstants::getConstant((PyDataConstants *)dword_99F758, "AnimStancedAnim", "SL__LIST_IPHONE")
             & 0x1000000;
  if ( AnimStance )
    AnimStance = Character::GetAnimStance(a3);
  return CharAnimator::ANIM_Set((Character *)((char *)a3 + 1180), AnimStance + v9);
}


// ===== 3c324c CSAnim::OnFocus(int,Character *,CharStateMachine *,int,int,void *) =====
int __fastcall CSAnim::OnFocus(CSAnim *this, int a2, Character *a3, CharStateMachine *a4, int a5, int a6, void *a7)
{
  int v8; // r3
  std::string v10; // [sp+4h] [bp-20h] BYREF

  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string((int)&v10, "isTracingCharState");
  DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v10);
  std::string::~string(&v10);
  if ( *((_BYTE *)a3 + 1345) )
    v8 = 8768;
  else
    v8 = 9024;
  *((_DWORD *)a3 + 328) = v8;
  return CharStateMachine::SM_SetAnim((Character *)((char *)a3 + 1276), -1);
}


// ===== 3c32fc CSDespawn::OnFocus(int,Character *,CharStateMachine *,int,int,void *) =====
_DWORD *__fastcall CSDespawn::OnFocus(
        CSDespawn *this,
        int a2,
        Character *a3,
        CharStateMachine *a4,
        int a5,
        int a6,
        void *a7)
{
  int v8; // r3
  std::string v10; // [sp+Ch] [bp-38h] BYREF
  std::string v11; // [sp+24h] [bp-20h] BYREF

  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string((int)&v11, "isTracingCharState");
  DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v11);
  std::string::~string(&v11);
  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string((int)&v10, "isTracingCSDespawn");
  DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v10);
  std::string::~string(&v10);
  v8 = *((_DWORD *)a3 + 333);
  *((_DWORD *)a3 + 328) = 512;
  *((_DWORD *)a3 + 329) = v8;
  CharStateMachine::SM_SetAnim((Character *)((char *)a3 + 1276), -1);
  return Character::CancelSneaking(a3);
}


// ===== 3c33e8 CSInjured::OnFocus(int,Character *,CharStateMachine *,int,int,void *) =====
_DWORD *__fastcall CSInjured::OnFocus(
        CSInjured *this,
        int a2,
        Character *a3,
        CharStateMachine *a4,
        int a5,
        int a6,
        void *a7)
{
  std::string v9; // [sp+Ch] [bp-38h] BYREF
  std::string v10; // [sp+24h] [bp-20h] BYREF

  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string((int)&v10, "isTracingCharState");
  DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v10);
  std::string::~string(&v10);
  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string((int)&v9, "isTracingCSInjured");
  DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v9);
  std::string::~string(&v9);
  *((_DWORD *)a3 + 328) = 11073;
  CharStateMachine::SM_SetAnim((Character *)((char *)a3 + 1276), -1);
  return Character::CancelSneaking(a3);
}


// ===== 3c34cc CSRevived::OnFocus(int,Character *,CharStateMachine *,int,int,void *) =====
int __fastcall CSRevived::OnFocus(
        CSRevived *this,
        int a2,
        Character *a3,
        CharStateMachine *a4,
        int a5,
        int a6,
        void *a7)
{
  int v8; // r8
  int v9; // r8
  char *AnimStance; // r0
  int result; // r0
  std::string v12; // [sp+4h] [bp-1Ch] BYREF

  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string(&v12, "isTracingCharState");
  DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v12);
  std::string::~string(&v12);
  *((_DWORD *)a3 + 328) = 9025;
  Character::CancelSneaking(a3);
  v8 = Arrays::CharAnimTable::members;
  v9 = *(_DWORD *)(v8 + 160 * Character::GetCharAnimTableId(a3) + 104);
  AnimStance = (char *)(PyDataConstants::getConstant(
                          (PyDataConstants *)dword_99F758,
                          "AnimStancedAnim",
                          "SL__LIST_IPHONE")
                      & 0x100000);
  if ( AnimStance )
    AnimStance = Character::GetAnimStance(a3);
  result = CharStateMachine::SM_SetAnim((Character *)((char *)a3 + 1276), (int)&AnimStance[v9]);
  *(_BYTE *)(*((_DWORD *)a3 + 222) + 8) = 1;
  return result;
}


// ===== 3c35ec CSSpawn::OnFocus(int,Character *,CharStateMachine *,int,int,void *) =====
VisualObject *__fastcall CSSpawn::OnFocus(
        CSSpawn *this,
        int a2,
        Character *a3,
        CharStateMachine *a4,
        int a5,
        int a6,
        void *a7)
{
  unsigned int v8; // r7
  int v9; // r7
  int v10; // r10
  int v11; // r10
  int AnimStance; // r0
  int v13; // r3
  VisualObject *result; // r0
  std::string v15; // [sp+Ch] [bp-38h] BYREF
  std::string v16; // [sp+24h] [bp-20h] BYREF

  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string((int)&v16, "isTracingCharState");
  DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v16);
  std::string::~string(&v16);
  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  v8 = (unsigned int)&v15;
  std::string::string((int)&v15, "isTracingCSSpawn");
  DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v15);
  std::string::~string(&v15);
  if ( a5 == 17 )
    v8 = *((_DWORD *)a3 + 328);
  *((_DWORD *)a3 + 328) = 577;
  if ( a5 == 17 )
    v9 = (v8 >> 13) & 1;
  else
    v9 = 0;
  v10 = Arrays::CharAnimTable::members;
  v11 = *(_DWORD *)(v10 + 160 * Character::GetCharAnimTableId(a3) + 128);
  AnimStance = PyDataConstants::getConstant((PyDataConstants *)dword_99F758, "AnimStancedAnim", "SL__LIST_IPHONE") & 1;
  if ( AnimStance )
    AnimStance = Character::GetAnimStance(a3);
  CharAnimator::ANIM_Set((Character *)((char *)a3 + 1180), AnimStance + v11);
  CharAI::AI_SetTarget((Character *)((char *)a3 + 968), nullptr, 0);
  CharAI::AI_SyncLastTarget((Character *)((char *)a3 + 968));
  Character::CancelSneaking(a3);
  if ( v9 )
    v13 = *((_DWORD *)a3 + 328);
  result = *((VisualObject **)a3 + 182);
  if ( v9 )
    *((_DWORD *)a3 + 328) = v13 | 0x2000;
  if ( result )
    return (VisualObject *)VisualObject::StartFadeIn(result, *((float *)a3 + 1296));
  return result;
}


// ===== 3c3794 CSDespawn::OnBlur(int,Character *,CharStateMachine *,int) =====
void __fastcall CSDespawn::OnBlur(CSDespawn *this, int a2, Character *a3, CharStateMachine *a4, int a5)
{
  int Online; // r0
  int v7; // r3
  bool v8; // zf
  Character *character_660; // r1
  char *v10; // [sp+4h] [bp-24h] BYREF
  std::string v11; // [sp+Ch] [bp-1Ch] BYREF

  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string((int)&v11, "isTracingCharState");
  DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v11);
  std::string::~string(&v11);
  *(_BYTE *)(*((_DWORD *)a3 + 222) + 8) = 0;
  *((_BYTE *)a3 + 1328) = 1;
  if ( !Character::CanRespawn(a3)
    && (!*(_BYTE *)(GetOnline() + 5) || !(*(int (__fastcall **)(Character *))(*(_DWORD *)a3 + 40))(a3)) )
  {
    character_660 = PlayerManager::GetLocalPlayer((PlayerManager *)dword_99F76C, 0, 1)->character_660;
    if ( character_660 && a3 == *((Character **)character_660 + 1321) )
      *((_DWORD *)character_660 + 1321) = 0;
    if ( *((_BYTE *)a3 + 5348) || Character::IsSummoned(a3) )
      ObjectBase::Delete((int)a3);
  }
  Online = GetOnline();
  v7 = *(unsigned __int8 *)(Online + 5);
  v8 = v7 == 0;
  if ( *(_BYTE *)(Online + 5) )
    LOBYTE(v7) = 0;
  if ( !v8 )
    *((_BYTE *)a3 + 280) = v7;
  *((_DWORD *)a3 + 328) = 0;
  CharAnimator::DecAnimSetUsers((Character *)((char *)a3 + 1180));
  CharAnimator::RequestAnimPurge((Character *)((char *)a3 + 1180));
  v10 = &Character::s_concurrentAI;
  Character::UnLoadScriptProcess((int)a3, &v10, 0);
}


// ===== 3c3934 CSCast::OnBlur(int,Character *,CharStateMachine *,int) =====
int __fastcall CSCast::OnBlur(CSCast *this, int a2, Character *a3, CharStateMachine *a4, int a5)
{
  std::string v7; // [sp+4h] [bp-20h] BYREF

  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string(&v7, "isTracingCharState");
  DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v7);
  std::string::~string(&v7);
  return Character::RaiseEvent(a3, 33, nullptr);
}


// ===== 3c39d0 CSCast::OnFocus(int,Character *,CharStateMachine *,int,int,void *) =====
_DWORD *__fastcall CSCast::OnFocus(CSCast *this, int a2, Character *a3, CharStateMachine *a4, int a5, int a6, void *a7)
{
  std::string v9; // [sp+4h] [bp-20h] BYREF

  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string(&v9, "isTracingCharState");
  DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v9);
  std::string::~string(&v9);
  *((_DWORD *)a3 + 328) = 25345;
  Character::RaiseEvent(a3, 32, nullptr);
  CharStateMachine::SM_SetAnim((Character *)((char *)a3 + 1276), -1);
  CharAnimator::ANIM_SetSpeed((int)a3 + 1180, 1.0);
  *((_BYTE *)a3 + 1042) = 0;
  return Character::CancelSneaking(a3);
}


// ===== 3c3aa4 CSMove::OnBlur(int,Character *,CharStateMachine *,int) =====
int __fastcall CSMove::OnBlur(CSMove *this, int a2, Character *a3, CharStateMachine *a4, int a5)
{
  int result; // r0
  std::string v7; // [sp+4h] [bp-1Ch] BYREF

  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string((int)&v7, "isTracingCharState");
  DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v7);
  std::string::~string(&v7);
  GameObject::Stop(a3);
  result = *((_DWORD *)a3 + 183);
  if ( result )
    return PhysicalObject::pin(result);
  return result;
}


// ===== 3c3b4c CSStunned::OnBlur(int,Character *,CharStateMachine *,int) =====
int __fastcall CSStunned::OnBlur(CSStunned *this, int a2, Character *a3, CharStateMachine *a4, int a5)
{
  int result; // r0
  std::string v7; // [sp+4h] [bp-1Ch] BYREF

  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string((int)&v7, "isTracingCharState");
  DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v7);
  std::string::~string(&v7);
  *(_BYTE *)(*((_DWORD *)a3 + 222) + 8) = 0;
  result = *((_DWORD *)a3 + 183);
  if ( result )
    return PhysicalObject::pin(result);
  return result;
}


// ===== 3c3bf8 CSMove::OnFocus(int,Character *,CharStateMachine *,int,int,void *) =====
PhysicalObject *__fastcall CSMove::OnFocus(
        CSMove *this,
        int a2,
        Character *a3,
        CharStateMachine *a4,
        int a5,
        int a6,
        void *a7)
{
  PhysicalObject *result; // r0
  std::string v11; // [sp+4h] [bp-1Ch] BYREF

  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string((int)&v11, "isTracingCharState");
  DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v11);
  std::string::~string(&v11);
  *((_DWORD *)a3 + 328) = 9153;
  *((_DWORD *)a3 + 335) = 0;
  CSMove::UpdateType(this, a3, a4);
  result = *((PhysicalObject **)a3 + 183);
  if ( result )
    return (PhysicalObject *)PhysicalObject::unpin(result);
  return result;
}


// ===== 3c3cc0 CSStunned::OnFocus(int,Character *,CharStateMachine *,int,int,void *) =====
int __fastcall CSStunned::OnFocus(
        CSStunned *this,
        int a2,
        Character *a3,
        CharStateMachine *a4,
        int a5,
        int a6,
        void *a7)
{
  int v8; // r7
  int v9; // r7
  int AnimStance; // r0
  int result; // r0
  std::string v12; // [sp+Ch] [bp-34h] BYREF
  std::string v13; // [sp+24h] [bp-1Ch] BYREF

  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string((int)&v13, "isTracingCharState");
  DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v13);
  std::string::~string(&v13);
  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string((int)&v12, "isTracingCSStunned");
  DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v12);
  std::string::~string(&v12);
  *((_DWORD *)a3 + 328) = 8706;
  v8 = Arrays::CharAnimTable::members;
  v9 = *(_DWORD *)(v8 + 160 * Character::GetCharAnimTableId(a3) + 140);
  AnimStance = PyDataConstants::getConstant((PyDataConstants *)dword_99F758, "AnimStancedAnim", "SL__LIST_IPHONE")
             & 0x200;
  if ( AnimStance )
    AnimStance = Character::GetAnimStance(a3);
  CharAnimator::ANIM_Set((unsigned int)a3 + 1180, AnimStance + v9);
  if ( (*(int (__fastcall **)(Character *))(*(_DWORD *)a3 + 40))(a3) )
    *(_BYTE *)(*((_DWORD *)a3 + 222) + 8) = 1;
  Character::CancelSneaking(a3);
  result = *((_DWORD *)a3 + 183);
  if ( result )
    return PhysicalObject::unpin(result);
  return result;
}


// ===== 3c3e40 CSLiftingMove::OnFocus(int,Character *,CharStateMachine *,int,int,void *) =====
int __fastcall CSLiftingMove::OnFocus(
        CSLiftingMove *this,
        int a2,
        Character *a3,
        CharStateMachine *a4,
        int a5,
        int a6,
        void *a7)
{
  int v8; // r8
  int v9; // r8
  char *AnimStance; // r0
  int WalkSpeed; // r0
  int result; // r0
  std::string v13; // [sp+4h] [bp-1Ch] BYREF

  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string(&v13, "isTracingCharState");
  DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v13);
  std::string::~string(&v13);
  *((_DWORD *)a3 + 328) = 9153;
  v8 = Arrays::CharAnimTable::members;
  v9 = *(_DWORD *)(v8 + 160 * Character::GetCharAnimTableId(a3) + 84);
  AnimStance = (char *)(PyDataConstants::getConstant(
                          (PyDataConstants *)dword_99F758,
                          "AnimStancedAnim",
                          "SL__LIST_IPHONE")
                      & 0x1000000);
  if ( AnimStance )
    AnimStance = Character::GetAnimStance(a3);
  CharAnimator::ANIM_Set((unsigned int)a3 + 1180, (int)&AnimStance[v9]);
  WalkSpeed = CharProperties::PROPS_GetWalkSpeed((Character *)((char *)a3 + 1376));
  CharAnimator::ANIM_SetSpeed((int)a3 + 1180, *(float *)&WalkSpeed);
  result = *((_DWORD *)a3 + 183);
  if ( result )
    return PhysicalObject::unpin(result);
  return result;
}


// ===== 3c3f74 CSAttack::OnBlur(int,Character *,CharStateMachine *,int) =====
int __fastcall CSAttack::OnBlur(CSAttack *this, int a2, Character *a3, CharStateMachine *a4, int a5)
{
  int result; // r0
  unsigned int AttackDelay; // r0
  std::string v8; // [sp+Ch] [bp-1Ch] BYREF

  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string(&v8, "isTracingCharState");
  DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v8);
  std::string::~string(&v8);
  if ( Character::GetAttackDelay(a3) )
  {
    AttackDelay = Character::GetAttackDelay(a3);
    CharTimers::TMR_Start((Character *)((char *)a3 + 948), AttackDelay, 0, 42, nullptr);
  }
  result = *((_DWORD *)a3 + 183);
  if ( result )
    return PhysicalObject::pin(result);
  return result;
}


// ===== 3c404c CSAttack::OnFocus(int,Character *,CharStateMachine *,int,int,void *) =====
_DWORD *__fastcall CSAttack::OnFocus(
        CSAttack *this,
        int a2,
        Character *a3,
        CharStateMachine *a4,
        int a5,
        int a6,
        void *a7)
{
  char *v8; // r6
  int v9; // r10
  int v10; // r8
  char *AnimStance; // r0
  int v12; // r0
  float v13; // r0
  int v15; // r10
  int v16; // r8
  int v17; // r8
  int v18; // r8
  char *v19; // r0
  int v20; // r0
  int v21; // r8
  std::string v22; // [sp+4h] [bp-20h] BYREF

  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string(&v22, "isTracingCharState");
  DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v22);
  std::string::~string(&v22);
  *((_DWORD *)a3 + 328) = 9025;
  if ( Character::GetAttackDelay(a3) )
    *((_DWORD *)a3 + 330) |= 1u;
  if ( (*(int (__fastcall **)(Character *))(*(_DWORD *)a3 + 40))(a3) )
  {
    if ( a5 != 4 )
    {
      Character::GetCharAnimTableId(a3);
      if ( (PyDataConstants::getConstant((PyDataConstants *)dword_99F758, "AnimStancedAnim", "SL__LIST_IPHONE") & 0x80) != 0 )
        Character::GetAnimStance(a3);
      v8 = (char *)a3 + 1180;
      v9 = Arrays::CharAnimTable::members;
      v10 = *(_DWORD *)(v9 + 160 * Character::GetCharAnimTableId(a3) + 8);
      AnimStance = (char *)(PyDataConstants::getConstant(
                              (PyDataConstants *)dword_99F758,
                              "AnimStancedAnim",
                              "SL__LIST_IPHONE")
                          & 0x80);
      if ( !AnimStance )
        goto LABEL_8;
LABEL_13:
      AnimStance = Character::GetAnimStance(a3);
LABEL_8:
      CharAnimator::ANIM_Set((unsigned int)v8, (int)&AnimStance[v10]);
      v12 = *((_DWORD *)a3 + 183);
      if ( v12 )
        PhysicalObject::pin(v12);
      goto LABEL_10;
    }
    v8 = (char *)a3 + 1180;
    v17 = Arrays::CharAnimTable::members;
    v18 = *(_DWORD *)(v17 + 160 * Character::GetCharAnimTableId(a3) + 4);
    v19 = (char *)(PyDataConstants::getConstant((PyDataConstants *)dword_99F758, "AnimStancedAnim", "SL__LIST_IPHONE")
                 & 0x40);
    if ( !v19 )
      goto LABEL_15;
LABEL_18:
    v19 = Character::GetAnimStance(a3);
    goto LABEL_15;
  }
  v15 = Arrays::CharAnimTable::members;
  if ( *(_DWORD *)(v15 + 160 * Character::GetCharAnimTableId(a3) + 8) != -1 )
  {
    v16 = Arrays::CharAnimTable::members;
    v10 = *(_DWORD *)(v16 + 160 * Character::GetCharAnimTableId(a3) + 8);
    AnimStance = (char *)(PyDataConstants::getConstant(
                            (PyDataConstants *)dword_99F758,
                            "AnimStancedAnim",
                            "SL__LIST_IPHONE")
                        & 0x80);
    v8 = (char *)a3 + 1180;
    if ( !AnimStance )
      goto LABEL_8;
    goto LABEL_13;
  }
  v21 = Arrays::CharAnimTable::members;
  v18 = *(_DWORD *)(v21 + 160 * Character::GetCharAnimTableId(a3) + 4);
  v19 = (char *)(PyDataConstants::getConstant((PyDataConstants *)dword_99F758, "AnimStancedAnim", "SL__LIST_IPHONE")
               & 0x40);
  v8 = (char *)a3 + 1180;
  if ( v19 )
    goto LABEL_18;
LABEL_15:
  CharAnimator::ANIM_Set((unsigned int)v8, (int)&v19[v18]);
  v20 = *((_DWORD *)a3 + 183);
  if ( v20 )
    PhysicalObject::unpin(v20);
LABEL_10:
  v13 = COERCE_FLOAT(CharProperties::PROPS_GetAttackSpeed((Character *)((char *)a3 + 1376)));
  *((float *)a3 + 331) = v13;
  CharAnimator::ANIM_SetSpeed((int)v8, v13);
  return Character::CancelSneaking(a3);
}


// ===== 3c434c CSSkill::OnBlur(int,Character *,CharStateMachine *,int) =====
int __fastcall CSSkill::OnBlur(CSSkill *this, int a2, Character *a3, CharStateMachine *a4, int a5)
{
  int v6; // r0
  int result; // r0
  std::string v8; // [sp+Ch] [bp-1Ch] BYREF

  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string(&v8, "isTracingCharState");
  DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v8);
  std::string::~string(&v8);
  CharAI::AI_SyncLastTarget((int)a3 + 968);
  GameObject::Stop(a3);
  Character::RaiseEvent(a3, 31, nullptr);
  if ( (*((_DWORD *)a3 + 330) & 0x100) != 0 )
  {
    CharTimers::TMR_Start((Character *)((char *)a3 + 948), 0xAu, 0, 48, nullptr);
    result = Character::IsMonster(a3);
    if ( !result )
      return result;
    goto LABEL_7;
  }
  v6 = *((_DWORD *)a3 + 183);
  if ( v6 )
    PhysicalObject::pin(v6);
  result = Character::IsMonster(a3);
  if ( result )
  {
LABEL_7:
    result = Character::IsMiniBoss(a3);
    if ( !result )
    {
      result = Character::IsBoss(a3);
      if ( !result )
        *((_DWORD *)a3 + 328) &= ~0x10000u;
    }
  }
  return result;
}


// ===== 3c4480 CSSkill::OnFocus(int,Character *,CharStateMachine *,int,int,void *) =====
int __fastcall CSSkill::OnFocus(CSSkill *this, int a2, Character *a3, CharStateMachine *a4, int a5, int a6, void *a7)
{
  int v8; // r3
  int v9; // r0
  int result; // r0
  std::string v11; // [sp+4h] [bp-1Ch] BYREF

  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string(&v11, "isTracingCharState");
  DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v11);
  std::string::~string(&v11);
  v8 = *((_DWORD *)a3 + 330);
  *((_DWORD *)a3 + 328) = 25409;
  *((_DWORD *)a3 + 330) = v8 & 0xFFFFFEBF;
  Character::RaiseEvent(a3, 30, nullptr);
  CharStateMachine::SM_SetAnim((Character *)((char *)a3 + 1276), -1);
  CharAnimator::ANIM_SetSpeed((int)a3 + 1180, 1.0);
  *((_BYTE *)a3 + 1042) = 0;
  Character::CancelSneaking(a3);
  v9 = *((_DWORD *)a3 + 183);
  if ( *((_BYTE *)a3 + 1364) )
    *((_DWORD *)a3 + 330) |= 0x100u;
  if ( v9 )
    PhysicalObject::unpin(v9);
  result = Character::IsMonster(a3);
  if ( result )
  {
    result = Character::IsMiniBoss(a3);
    if ( !result )
    {
      result = Character::IsBoss(a3);
      if ( !result )
        *((_DWORD *)a3 + 328) |= 0x10000u;
    }
  }
  return result;
}


// ===== 3c45c4 CSScared::OnFocus(int,Character *,CharStateMachine *,int,int,void *) =====
int __fastcall CSScared::OnFocus(CSScared *this, int a2, Character *a3, CharStateMachine *a4, int a5, int a6, void *a7)
{
  int v8; // r8
  int v9; // r8
  int AnimStance; // r0
  int v11; // r1
  bool v12; // r2
  int v13; // r1
  bool v14; // r2
  int v15; // r1
  bool v16; // r2
  int v17; // r1
  bool v18; // r2
  int result; // r0
  std::string v20; // [sp+14h] [bp-1Ch] BYREF

  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string((int)&v20, "isTracingCharState");
  DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v20);
  std::string::~string(&v20);
  *((_DWORD *)a3 + 328) = 8768;
  v8 = Arrays::CharAnimTable::members;
  v9 = *(_DWORD *)(v8 + 160 * Character::GetCharAnimTableId(a3) + 124);
  AnimStance = PyDataConstants::getConstant((PyDataConstants *)dword_99F758, "AnimStancedAnim", "SL__LIST_IPHONE")
             & 0x100;
  if ( AnimStance )
    AnimStance = Character::GetAnimStance(a3);
  CharAnimator::ANIM_Set((unsigned int)a3 + 1180, AnimStance + v9);
  Random::GetRandom((Random *)((char *)&elf_hash_bucket[2444] + 2), v11, v12);
  Random::GetRandom((Random *)((char *)&elf_hash_bucket[2444] + 2), v13, v14);
  Random::GetRandom((Random *)&dword_64, v15, v16);
  Random::GetRandom((Random *)&dword_64, v17, v18);
  v2Controller::Cmd_HeadTowards(*((_DWORD *)a3 + 222));
  Character::CancelSneaking(a3);
  result = *((_DWORD *)a3 + 183);
  if ( result )
    return PhysicalObject::unpin(result);
  return result;
}


// ===== 3c4788 CSScared::OnUpdate(int,Character *,CharStateMachine *) =====
int __fastcall CSScared::OnUpdate(CSScared *this, int a2, Character *a3, CharStateMachine *a4)
{
  int result; // r0
  std::string v6; // [sp+4h] [bp-20h] BYREF

  if ( (*((_DWORD *)a3 + 330) & 4) == 0 )
  {
    DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
    std::string::string((int)&v6, "isTracingCSScared");
    DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v6);
    std::string::~string(&v6);
    return CharAnimator::ANIM_StopLoop((Character *)((char *)a3 + 1180), 0);
  }
  return result;
}


// ===== 3c4834 CSScared::OnBlur(int,Character *,CharStateMachine *,int) =====
int __fastcall CSScared::OnBlur(CSScared *this, int a2, v2Controller **a3, CharStateMachine *a4, int a5)
{
  int result; // r0
  std::string v7; // [sp+4h] [bp-1Ch] BYREF

  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string((int)&v7, "isTracingCharState");
  DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v7);
  std::string::~string(&v7);
  v2Controller::Cmd_HeadTowards(a3[222], nullptr);
  result = (int)a3[183];
  if ( result )
    return PhysicalObject::pin(result);
  return result;
}


// ===== 3c48e0 CSKnockedBack::OnBlur(int,Character *,CharStateMachine *,int) =====
PhysicalObject *__fastcall CSKnockedBack::OnBlur(
        CSKnockedBack *this,
        int a2,
        Character *a3,
        CharStateMachine *a4,
        int a5)
{
  PhysicalObject *result; // r0
  std::string v7; // [sp+4h] [bp-1Ch] BYREF

  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string((int)&v7, "isTracingCharState");
  DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v7);
  std::string::~string(&v7);
  *(_BYTE *)(*((_DWORD *)a3 + 222) + 8) = 0;
  result = *((PhysicalObject **)a3 + 183);
  if ( result )
  {
    PhysicalObject::resetFilter(result);
    result = *((PhysicalObject **)a3 + 183);
    if ( result )
      return (PhysicalObject *)PhysicalObject::pin((int)result);
  }
  return result;
}


// ===== 3c499c CSDead::OnBlur(int,Character *,CharStateMachine *,int) =====
PhysicalObject *__fastcall CSDead::OnBlur(CSDead *this, int a2, Character *a3, CharStateMachine *a4, int a5)
{
  PhysicalObject *result; // r0
  std::string v7; // [sp+4h] [bp-1Ch] BYREF

  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string(&v7, "isTracingCharState");
  DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v7);
  std::string::~string(&v7);
  *(_BYTE *)(*((_DWORD *)a3 + 222) + 8) = 0;
  result = *((PhysicalObject **)a3 + 183);
  if ( result )
    return (PhysicalObject *)PhysicalObject::resetFilter(result);
  return result;
}


// ===== 3c4a48 CSKnockedBack::OnFocus(int,Character *,CharStateMachine *,int,int,void *) =====
int __fastcall CSKnockedBack::OnFocus(
        CSKnockedBack *this,
        int a2,
        Character *a3,
        CharStateMachine *a4,
        int a5,
        int a6,
        GameObject *a7)
{
  int v9; // r3
  PhysicalObject *v10; // r0
  unsigned int v11; // r3
  int result; // r0
  std::string v13; // [sp+14h] [bp-34h] BYREF
  std::string v14; // [sp+2Ch] [bp-1Ch] BYREF

  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string((int)&v14, "isTracingCharState");
  DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v14);
  std::string::~string(&v14);
  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string((int)&v13, "isTracingCSKnockedBack");
  DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v13);
  std::string::~string(&v13);
  *((_DWORD *)a3 + 328) = 9025;
  CharStateMachine::SM_SetAnim((Character *)((char *)a3 + 1276), -1);
  v9 = *((_DWORD *)a4 + 11);
  if ( (v9 & 8) != 0 )
  {
    v10 = *((PhysicalObject **)a3 + 183);
    if ( v10 )
    {
      PhysicalObject::setFilter(v10, 0, 0x51Cu, 3u, 0);
      v9 = *((_DWORD *)a4 + 11);
    }
  }
  if ( (v9 & 0x10) != 0 )
    v11 = 32;
  else
    v11 = v9 & 0xFFFFFFDF;
  *((_DWORD *)a4 + 11) = v11;
  *(_BYTE *)(*((_DWORD *)a3 + 222) + 8) = 1;
  GameObject::LookAt((int)a3, a7);
  Character::CancelSneaking(a3);
  result = *((_DWORD *)a3 + 183);
  if ( result )
    return PhysicalObject::unpin(result);
  return result;
}


// ===== 3c4ba4 CSInjured::OnBlur(int,Character *,CharStateMachine *,int) =====
int __fastcall CSInjured::OnBlur(CSInjured *this, int a2, Character *a3, CharStateMachine *a4, int a5)
{
  std::string v7; // [sp+4h] [bp-20h] BYREF

  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string((int)&v7, "isTracingCharState");
  DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v7);
  std::string::~string(&v7);
  return v2Controller::Cmd_LookAt(*((_DWORD *)a3 + 222), *((GameObject **)a3 + 258));
}


// ===== 3c4c3c CSDead::OnEvent(int,Character *,CharStateMachine *,int,void *) =====
void __fastcall CSDead::OnEvent(CSDead *this, int a2, Character *a3, CharStateMachine *a4, int a5, void *a6)
{
  unsigned int Constant; // r0
  std::string v8; // [sp+Ch] [bp-1Ch] BYREF

  if ( a5 == 34 )
  {
    DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
    std::string::string((int)&v8, "isTracingCSDead");
    DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v8);
    std::string::~string(&v8);
    GameObject::SetPhysicalObject(a3, nullptr, 0);
    if ( !(*(int (__fastcall **)(Character *))(*(_DWORD *)a3 + 40))(a3) )
    {
      Constant = PyDataConstants::getConstant((PyDataConstants *)dword_99F758, "CharacterDesign", "Despawn_Delay");
      CharTimers::TMR_Start((Character *)((char *)a3 + 948), Constant, 0, 46, nullptr);
      *((_DWORD *)a3 + 328) = 64;
    }
  }
}


// ===== 3c4d50 CSDead::OnFocus(int,Character *,CharStateMachine *,int,int,void *) =====
int __fastcall CSDead::OnFocus(
        CSDead *this,
        int a2,
        Character *a3,
        CharStateMachine *a4,
        int a5,
        int a6,
        GameObject *a7)
{
  int v8; // r0
  int v9; // r3
  bool v10; // zf
  int v11; // r0
  PhysicalObject *v12; // r0
  unsigned int Constant; // r0
  std::string v15; // [sp+14h] [bp-38h] BYREF
  std::string v16; // [sp+2Ch] [bp-20h] BYREF

  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string(&v16, "isTracingCharState");
  DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v16);
  std::string::~string(&v16);
  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string(&v15, "isTracingCSDead");
  DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v15);
  std::string::~string(&v15);
  *((_DWORD *)a3 + 328) = 577;
  v8 = (*(int (__fastcall **)(Character *))(*(_DWORD *)a3 + 40))(a3);
  v10 = v8 == 0;
  if ( v8 )
    v9 = *((_DWORD *)a3 + 328);
  v11 = *((_DWORD *)a3 + 222);
  if ( !v10 )
    *((_DWORD *)a3 + 328) = v9 | 0x2000;
  v2Controller::Cmd_LookAt(v11, a7);
  *(_BYTE *)(*((_DWORD *)a3 + 222) + 8) = 1;
  Character::RemoveMultiplayerHighlight((int)a3);
  if ( *((_BYTE *)a3 + 1338) )
  {
    CharAnimator::ANIM_StopLoop((int)a3 + 1180, 0);
    if ( *((_DWORD *)a3 + 314) != -1 )
      goto LABEL_7;
  }
  else
  {
    CharStateMachine::SM_SetAnim((Character *)((char *)a3 + 1276), -1);
    CharAnimator::ANIM_StopLoop((int)a3 + 1180, 0);
    if ( *((_DWORD *)a3 + 314) != -1 )
      goto LABEL_7;
  }
  if ( !(*(int (__fastcall **)(Character *))(*(_DWORD *)a3 + 40))(a3) )
  {
    Constant = PyDataConstants::getConstant((PyDataConstants *)dword_99F758, "CharacterDesign", "Despawn_Delay");
    CharTimers::TMR_Start((Character *)((char *)a3 + 948), Constant, 0, 46, nullptr);
  }
LABEL_7:
  v12 = *((PhysicalObject **)a3 + 183);
  if ( v12 )
    PhysicalObject::setFilter(v12, 0, 0x51Cu, 3u, 0);
  Character::CancelSneaking(a3);
  Character::DisableStateFX((int)a3);
  Character::DisableSelfFX((int)a3);
  CharProperties::PROPS_RemoveAllBuffs((Character *)((char *)a3 + 1376));
  Character::RaiseEvent(a3, 42, nullptr);
  Character::RaiseEvent(a3, 44, nullptr);
  return Character::RaiseEvent(a3, 43, nullptr);
}


// ===== 3c4f8c CSInteract::OnBlur(int,Character *,CharStateMachine *,int) =====
LiftableObject *__fastcall CSInteract::OnBlur(
        CSInteract *this,
        int a2,
        LiftableObject **a3,
        CharStateMachine *a4,
        unsigned int a5)
{
  LiftableObject *result; // r0
  std::string v7; // [sp+4h] [bp-20h] BYREF

  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string((int)&v7, "isTracingCharState");
  DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v7);
  std::string::~string(&v7);
  result = (LiftableObject *)Character::IsCharSitting((Character *)a3);
  if ( !result )
  {
    result = (LiftableObject *)Character::IsNPC((Character *)a3);
    if ( result )
      result = (LiftableObject *)GameObject::SetRotation(a3, a3 + 1303);
  }
  if ( (unsigned int)a3[337] - 4 <= 1 && (a5 > 0x13 || ((1 << a5) & 0xC2000) == 0) )
  {
    result = a3[339];
    if ( result )
    {
      if ( *((_DWORD *)result + 61) == 6 && *((LiftableObject ***)result + 228) == a3 )
        result = (LiftableObject *)LiftableObject::Drop(result);
      a3[339] = nullptr;
    }
  }
  return result;
}


// ===== 3c50b4 CSLiftingIdle::OnBlur(int,Character *,CharStateMachine *,int) =====
void __fastcall CSLiftingIdle::OnBlur(
        CSLiftingIdle *this,
        int a2,
        Character *a3,
        CharStateMachine *a4,
        unsigned int a5)
{
  int v6; // r0
  std::string v7; // [sp+4h] [bp-20h] BYREF

  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string(&v7, "isTracingCharState");
  DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v7);
  std::string::~string(&v7);
  if ( a5 > 0x13 || ((1 << a5) & 0xC2000) == 0 )
  {
    v6 = *((_DWORD *)a3 + 339);
    if ( v6 )
    {
      if ( *(_DWORD *)(v6 + 244) == 6 && *(Character **)(v6 + 912) == a3 )
        LiftableObject::Drop((LiftableObject *)v6);
      *((_DWORD *)a3 + 339) = 0;
    }
  }
}


// ===== 3c5198 CSLiftingMove::OnBlur(int,Character *,CharStateMachine *,int) =====
int __fastcall CSLiftingMove::OnBlur(CSLiftingMove *this, int a2, Character *a3, CharStateMachine *a4, unsigned int a5)
{
  int result; // r0
  std::string v7; // [sp+4h] [bp-20h] BYREF

  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string(&v7, "isTracingCharState");
  DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v7);
  std::string::~string(&v7);
  GameObject::Stop(a3);
  result = *((_DWORD *)a3 + 183);
  if ( result )
    result = PhysicalObject::pin(result);
  if ( a5 > 0x13 || ((1 << a5) & 0xC2000) == 0 )
  {
    result = *((_DWORD *)a3 + 339);
    if ( result )
    {
      if ( *(_DWORD *)(result + 244) == 6 && *(Character **)(result + 912) == a3 )
        result = LiftableObject::Drop((LiftableObject *)result);
      *((_DWORD *)a3 + 339) = 0;
    }
  }
  return result;
}


// ===== 3c5294 CSReviving::OnFocus(int,Character *,CharStateMachine *,int,int,void *) =====
int __fastcall CSReviving::OnFocus(
        CSReviving *this,
        int a2,
        Character *a3,
        CharStateMachine *a4,
        int a5,
        int a6,
        void *a7)
{
  int v8; // r8
  int v9; // r8
  char *AnimStance; // r0
  char *v12[3]; // [sp+4h] [bp-2Ch] BYREF
  std::string v13; // [sp+14h] [bp-1Ch] BYREF

  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string(&v13, "isTracingCharState");
  DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v13);
  std::string::~string(&v13);
  *((_DWORD *)a3 + 328) = 9025;
  Character::CancelSneaking(a3);
  *(_BYTE *)(*((_DWORD *)a3 + 222) + 8) = 1;
  ObjectBase::GetHandle((ObjectBase *)v12, *((_DWORD *)a3 + 258));
  *((_DWORD *)a3 + 342) = ObjectHandle::operator Character *(v12);
  CharAI::AI_SetTarget((Character *)((char *)a3 + 968), nullptr, 0);
  CharAI::AI_SyncLastTarget((int)a3 + 968);
  v8 = Arrays::CharAnimTable::members;
  v9 = *(_DWORD *)(v8 + 160 * Character::GetCharAnimTableId(a3) + 108);
  AnimStance = (char *)(PyDataConstants::getConstant(
                          (PyDataConstants *)dword_99F758,
                          "AnimStancedAnim",
                          "SL__LIST_IPHONE")
                      & 0x80000);
  if ( AnimStance )
    AnimStance = Character::GetAnimStance(a3);
  return CharStateMachine::SM_SetAnim((Character *)((char *)a3 + 1276), (int)&AnimStance[v9]);
}


// ===== 3c53ec CSRevived::OnBlur(int,Character *,CharStateMachine *,int) =====
unsigned int *__fastcall CSRevived::OnBlur(CSRevived *this, int a2, Character *a3, CharStateMachine *a4, int a5)
{
  std::string v7; // [sp+4h] [bp-20h] BYREF

  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string(&v7, "isTracingCharState");
  DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v7);
  std::string::~string(&v7);
  Character::Revive(a3, nullptr, 1);
  *(_BYTE *)(*((_DWORD *)a3 + 222) + 8) = 0;
  return Character::AddMultiplayerHighlight((unsigned int *)a3);
}


// ===== 3c549c CSStunned::OnUpdate(int,Character *,CharStateMachine *) =====
int __fastcall CSStunned::OnUpdate(CSStunned *this, int a2, Character *a3, CharStateMachine *a4)
{
  int result; // r0
  std::string v6; // [sp+4h] [bp-20h] BYREF

  if ( (*((_DWORD *)a3 + 330) & 2) == 0 )
  {
    DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
    std::string::string((int)&v6, "isTracingCSStunned");
    DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v6);
    std::string::~string(&v6);
    return CharStateMachine::SM_SetIdleState((Character *)((char *)a3 + 1276), 0);
  }
  return result;
}


// ===== 3c5548 CSInteract::OnFocus(int,Character *,CharStateMachine *,int,int,void *) =====
_DWORD *__fastcall CSInteract::OnFocus(
        CSInteract *this,
        int a2,
        Character *a3,
        CharStateMachine *a4,
        int a5,
        int a6,
        GameObject *a7)
{
  std::string v9; // [sp+Ch] [bp-38h] BYREF
  std::string v10; // [sp+24h] [bp-20h] BYREF

  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string((int)&v10, "isTracingCharState");
  DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v10);
  std::string::~string(&v10);
  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string((int)&v9, "isTracingCSInteract");
  DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v9);
  std::string::~string(&v9);
  if ( Character::IsMonster(a3) )
    return (_DWORD *)CharStateMachine::SM_SetIdleState((Character *)((char *)a3 + 1276), 0);
  *((_DWORD *)a3 + 328) = 25537;
  CharStateMachine::SM_SetAnim((Character *)((char *)a3 + 1276), -1);
  if ( !Character::IsCharSitting(a3) )
  {
    if ( *((_BYTE *)a3 + 1352) )
      v2Controller::Cmd_LookAt(*((_DWORD *)a3 + 222), a7);
  }
  return Character::CancelSneaking(a3);
}


// ===== 3c5684 CharStateMachine::RaiseStateEvent(int,void *) =====
CharStateMachine *__fastcall CharStateMachine::RaiseStateEvent(CharStateMachine *this, int a2, void *a3)
{
  CharStateMachine *v4; // r4
  int v6; // r3
  int *Event; // r0
  int v8; // r1
  int v9; // r3
  int v10; // r2
  char *v11; // r12
  int v12; // [sp+Ch] [bp-24h] BYREF
  std::string v13; // [sp+14h] [bp-1Ch] BYREF

  v4 = this;
  switch ( a2 )
  {
    case '*':
      *((_DWORD *)this + 11) &= ~1u;
      break;
    case '+':
      *((_DWORD *)this + 11) &= ~2u;
      break;
    case ',':
      *((_DWORD *)this + 11) &= ~4u;
      break;
    case '0':
      this = (CharStateMachine *)CharStateMachine::SM_IsIdle(this, 0);
      if ( this )
      {
        this = *(CharStateMachine **)(*((_DWORD *)v4 + 1) + 732);
        if ( this )
          this = (CharStateMachine *)PhysicalObject::pin(this);
      }
      break;
    default:
      break;
  }
  v6 = *((_DWORD *)v4 + 8);
  if ( v6 )
  {
    (*(void (__fastcall **)(_DWORD, _DWORD, _DWORD, CharStateMachine *, int, void *))(**(_DWORD **)(v6 + 4) + 24))(
      *(_DWORD *)(v6 + 4),
      *(_DWORD *)v6,
      *((_DWORD *)v4 + 1),
      v4,
      a2,
      a3);
    this = (CharStateMachine *)CharStateMachine::_HasEvent(v4, **((_DWORD **)v4 + 8), a2);
    if ( this )
    {
      DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
      std::string::string((int)&v13, "isTracingCharSM");
      DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v13);
      std::string::~string(&v13);
      Event = (int *)CharStateMachine::_GetEvent(v4, **((_DWORD **)v4 + 8), a2);
      v8 = Event[2];
      v12 = v8;
      if ( *Event || (Event[1] & 1) != 0 )
      {
        v9 = Event[1];
        v10 = *((_DWORD *)v4 + 1);
        if ( (v9 & 1) != 0 )
        {
          v8 = *Event;
          v11 = *(char **)(v10 + (v9 >> 1));
        }
        else
        {
          v11 = (char *)*Event;
        }
        if ( (v9 & 1) != 0 )
          v11 = *(char **)&v11[v8];
        this = (CharStateMachine *)((int (__fastcall *)(int, int, void *, _DWORD, int *))v11)(
                                     v10 + (v9 >> 1),
                                     a2,
                                     a3,
                                     **((_DWORD **)v4 + 8),
                                     &v12);
        if ( !this )
          return this;
        v8 = v12;
      }
      return (CharStateMachine *)CharStateMachine::_SetState(v4, v8, a2, a3);
    }
  }
  return this;
}


// ===== 3c5880 CharStateMachine::SM_SetRevivedState(void *,bool) =====
CharStateMachine *__fastcall CharStateMachine::SM_SetRevivedState(CharStateMachine *this, void *a2, int a3)
{
  if ( a3 )
    return (CharStateMachine *)CharStateMachine::_SetState(this, 16, 50009, a2);
  else
    return CharStateMachine::RaiseStateEvent(this, 50009, a2);
}


// ===== 3c58a4 CharStateMachine::SM_SetRevivingState(void *,bool) =====
CharStateMachine *__fastcall CharStateMachine::SM_SetRevivingState(CharStateMachine *this, void *a2, int a3)
{
  if ( a3 )
    return (CharStateMachine *)CharStateMachine::_SetState(this, 15, 50007, a2);
  else
    return CharStateMachine::RaiseStateEvent(this, 50007, a2);
}


// ===== 3c58c8 CharStateMachine::SM_SetDeadState(bool,void *,bool) =====
int __fastcall CharStateMachine::SM_SetDeadState(Character **this, bool a2, void *a3, int a4)
{
  int result; // r0
  _DWORD *v9; // r8
  int v10; // r11
  int AnimStance; // r0
  int v12; // r3
  int v13; // r8
  int v14; // r0
  Character *v15; // r6

  result = Character::GetCharAnimTableId(*(this + 1));
  if ( result < 0 || result >= Arrays::CharAnimTable::size )
    return result;
  v9 = (_DWORD *)(Arrays::CharAnimTable::members + 160 * result);
  if ( !*((_BYTE *)this + 63) )
  {
    v10 = v9[7];
    AnimStance = PyDataConstants::getConstant((PyDataConstants *)dword_99F758, "AnimStancedAnim", "SL__LIST_IPHONE")
               & 0x8000;
    if ( !AnimStance )
      goto LABEL_5;
LABEL_17:
    AnimStance = Character::GetAnimStance(*(this + 1));
    goto LABEL_5;
  }
  v10 = v9[4];
  AnimStance = PyDataConstants::getConstant((PyDataConstants *)dword_99F758, "AnimStancedAnim", "SL__LIST_IPHONE")
             & 0x20000;
  if ( AnimStance )
    goto LABEL_17;
LABEL_5:
  v12 = *((unsigned __int8 *)this + 63);
  *(this + 10) = (Character *)(AnimStance + v10);
  if ( v12 )
  {
    v13 = v9[6];
    v14 = PyDataConstants::getConstant((PyDataConstants *)dword_99F758, "AnimStancedAnim", "SL__LIST_IPHONE") & 0x40000;
    if ( v14 )
      v14 = Character::GetAnimStance(*(this + 1));
    v15 = (Character *)(v14 + v13);
  }
  else
  {
    v15 = (Character *)v9[5];
    if ( (PyDataConstants::getConstant((PyDataConstants *)dword_99F758, "AnimStancedAnim", "SL__LIST_IPHONE") & 0x10000) != 0 )
      v15 = (Character *)((char *)v15 + Character::GetAnimStance(*(this + 1)));
  }
  *(this + 14) = v15;
  *((_BYTE *)this + 62) = a2;
  *((_BYTE *)this + 63) = 0;
  if ( CharStateMachine::SM_IsAwaitingToRevive((CharStateMachine *)this) )
    *(this + 8) = nullptr;
  if ( a4 )
    return CharStateMachine::_SetState((CharStateMachine *)this, 12, 50008, a3);
  else
    return (int)CharStateMachine::RaiseStateEvent((CharStateMachine *)this, 50008, a3);
}


// ===== 3c5ab0 CSKnockedBack::OnEvent(int,Character *,CharStateMachine *,int,void *) =====
void __fastcall CSKnockedBack::OnEvent(
        CSKnockedBack *this,
        int a2,
        PhysicalObject **a3,
        CharStateMachine *a4,
        int a5,
        void *a6)
{
  PhysicalObject *v6; // r0

  if ( a5 == 35 )
  {
    if ( (*((int (__fastcall **)(PhysicalObject **, int))*a3 + 13))(a3, a2) )
    {
      CharAnimator::ANIM_Stop((CharAnimator *)(a3 + 295));
      CharStateMachine::SM_SetDeadState((CharStateMachine *)(a3 + 319), 1, nullptr, 1);
    }
  }
  else if ( a5 == 39 )
  {
    v6 = a3[183];
    if ( v6 )
      PhysicalObject::resetFilter(v6);
  }
}


// ===== 3c5b3c CharStateMachine::SM_SetDodgingState(void *,bool) =====
int __fastcall CharStateMachine::SM_SetDodgingState(CharStateMachine *this, void *a2, int a3)
{
  float *v3; // r5
  int result; // r0
  int v8; // r5
  int AnimStance; // r0

  v3 = *((float **)this + 1);
  result = v3[1343] > 0.0;
  if ( v3[1343] <= 0.0 )
  {
    (*(void (__fastcall **)(float *))(*(_DWORD *)v3 + 40))(v3);
    *(_DWORD *)(*((_DWORD *)this + 1) + 5372) = 1161527296;
    result = Character::GetCharAnimTableId(*((Character **)this + 1));
    if ( result >= 0 && result < Arrays::CharAnimTable::size )
    {
      result = Arrays::CharAnimTable::members + 160 * result;
      v8 = *(_DWORD *)(result + 32);
      if ( v8 != -1 )
      {
        AnimStance = PyDataConstants::getConstant((PyDataConstants *)dword_99F758, "AnimStancedAnim", "SL__LIST_IPHONE")
                   & 0x4000;
        if ( AnimStance )
          AnimStance = Character::GetAnimStance(*((Character **)this + 1));
        *((_DWORD *)this + 10) = AnimStance + v8;
        if ( a3 )
          return CharStateMachine::_SetState(this, 11, 50010, a2);
        else
          return (int)CharStateMachine::RaiseStateEvent(this, 50010, a2);
      }
    }
  }
  return result;
}


// ===== 3c5c60 CharStateMachine::SM_SetBlockingState(void *,bool) =====
int __fastcall CharStateMachine::SM_SetBlockingState(CharStateMachine *this, void *a2, int a3)
{
  float *v3; // r5
  int result; // r0
  int v8; // r5
  int AnimStance; // r0

  v3 = *((float **)this + 1);
  result = v3[1343] > 0.0;
  if ( v3[1343] <= 0.0 )
  {
    (*(void (__fastcall **)(float *))(*(_DWORD *)v3 + 40))(v3);
    *(_DWORD *)(*((_DWORD *)this + 1) + 5372) = 1161527296;
    result = Character::GetCharAnimTableId(*((Character **)this + 1));
    if ( result >= 0 && result < Arrays::CharAnimTable::size )
    {
      result = Arrays::CharAnimTable::members + 160 * result;
      v8 = *(_DWORD *)(result + 12);
      if ( v8 != -1 )
      {
        AnimStance = PyDataConstants::getConstant((PyDataConstants *)dword_99F758, "AnimStancedAnim", "SL__LIST_IPHONE")
                   & 0x2000;
        if ( AnimStance )
          AnimStance = Character::GetAnimStance(*((Character **)this + 1));
        *((_DWORD *)this + 10) = AnimStance + v8;
        if ( a3 )
          return CharStateMachine::_SetState(this, 11, 50010, a2);
        else
          return (int)CharStateMachine::RaiseStateEvent(this, 50010, a2);
      }
    }
  }
  return result;
}


// ===== 3c5d84 CharStateMachine::SM_SetInjureState(void *,bool) =====
int __fastcall CharStateMachine::SM_SetInjureState(CharStateMachine *this, void *a2, int a3)
{
  float *v3; // r5
  int result; // r0
  int v8; // r5
  int AnimStance; // r0

  v3 = *((float **)this + 1);
  result = v3[1343] > 0.0;
  if ( v3[1343] <= 0.0 )
  {
    (*(void (__fastcall **)(float *))(*(_DWORD *)v3 + 40))(v3);
    *(_DWORD *)(*((_DWORD *)this + 1) + 5372) = 1161527296;
    result = Character::GetCharAnimTableId(*((Character **)this + 1));
    if ( result >= 0 && result < Arrays::CharAnimTable::size )
    {
      v8 = *(_DWORD *)(Arrays::CharAnimTable::members + 160 * result + 60);
      AnimStance = PyDataConstants::getConstant((PyDataConstants *)dword_99F758, "AnimStancedAnim", "SL__LIST_IPHONE")
                 & 0x1000;
      if ( AnimStance )
        AnimStance = Character::GetAnimStance(*((Character **)this + 1));
      *((_DWORD *)this + 10) = AnimStance + v8;
      if ( a3 )
        return CharStateMachine::_SetState(this, 11, 50010, a2);
      else
        return (int)CharStateMachine::RaiseStateEvent(this, 50010, a2);
    }
  }
  return result;
}


// ===== 3c5ea0 CharStateMachine::SM_SetKnockBackState(bool,void *,bool) =====
int __fastcall CharStateMachine::SM_SetKnockBackState(Character **this, int a2, void *a3, int a4)
{
  int result; // r0
  int v9; // r3
  int v10; // r7
  int AnimStance; // r0
  int v12; // r7
  int v13; // r0
  int v14; // r3

  result = Character::IsBoss(*(this + 1));
  if ( !result )
  {
    result = Character::GetCharAnimTableId(*(this + 1));
    if ( result >= 0 && result < Arrays::CharAnimTable::size )
    {
      v9 = Arrays::CharAnimTable::members + 160 * result;
      if ( a2 )
      {
        v10 = *(_DWORD *)(v9 + 36);
        AnimStance = PyDataConstants::getConstant((PyDataConstants *)dword_99F758, "AnimStancedAnim", "SL__LIST_IPHONE")
                   & 0x800;
        if ( AnimStance )
          AnimStance = Character::GetAnimStance(*(this + 1));
        *(this + 10) = (Character *)(AnimStance + v10);
        *(this + 11) = (Character *)&off_18;
      }
      else
      {
        v12 = *(_DWORD *)(v9 + 72);
        v13 = PyDataConstants::getConstant((PyDataConstants *)dword_99F758, "AnimStancedAnim", "SL__LIST_IPHONE")
            & 0x400;
        if ( v13 )
          v13 = Character::GetAnimStance(*(this + 1));
        v14 = (int)*(this + 11);
        *(this + 10) = (Character *)(v13 + v12);
        *(this + 11) = (Character *)(v14 & 0xFFFFFFE7);
      }
      if ( a4 )
        return CharStateMachine::_SetState((CharStateMachine *)this, 10, 50011, a3);
      else
        return (int)CharStateMachine::RaiseStateEvent((CharStateMachine *)this, 50011, a3);
    }
  }
  return result;
}


// ===== 3c5ffc CharStateMachine::SM_SetStunState(uint,bool,void *,bool) =====
CharStateMachine *__fastcall CharStateMachine::SM_SetStunState(
        Character **this,
        unsigned int a2,
        int a3,
        void *a4,
        bool a5)
{
  CharStateMachine *result; // r0
  CharStateMachine *v10; // r9
  int v11; // r4
  int AnimStance; // r0

  result = (CharStateMachine *)Character::IsBoss(*(this + 1));
  if ( !result )
  {
    result = (CharStateMachine *)Character::GetCharAnimTableId(*(this + 1));
    v10 = result;
    if ( (int)result >= 0 && (int)result < Arrays::CharAnimTable::size )
    {
      if ( ((unsigned int)*(this + 11) & 2) == 0 )
      {
        CharTimers::TMR_Start((Character *)((char *)*(this + 1) + 948), a2, 0, 43, nullptr);
        *(this + 11) = (Character *)((unsigned int)*(this + 11) | 2);
      }
      v11 = *(_DWORD *)(Arrays::CharAnimTable::members + 160 * (_DWORD)v10 + 140);
      AnimStance = PyDataConstants::getConstant((PyDataConstants *)dword_99F758, "AnimStancedAnim", "SL__LIST_IPHONE")
                 & 0x200;
      if ( AnimStance )
        AnimStance = Character::GetAnimStance(*(this + 1));
      *(this + 10) = (Character *)(AnimStance + v11);
      if ( a5 )
        result = (CharStateMachine *)CharStateMachine::_SetState((CharStateMachine *)this, 9, 50012, a4);
      else
        result = CharStateMachine::RaiseStateEvent((CharStateMachine *)this, 50012, a4);
      if ( a3 )
        *(this + 9) = (Character *)((unsigned int)*(this + 9) | 0x800);
    }
  }
  return result;
}


// ===== 3c6144 CharStateMachine::SM_SetScareState(uint,bool,void *,bool) =====
CharStateMachine *__fastcall CharStateMachine::SM_SetScareState(
        Character **this,
        unsigned int a2,
        int a3,
        void *a4,
        bool a5)
{
  CharStateMachine *result; // r0
  CharStateMachine *v10; // r9
  int v11; // r4
  int AnimStance; // r0

  result = (CharStateMachine *)Character::IsBoss(*(this + 1));
  if ( !result )
  {
    result = (CharStateMachine *)Character::GetCharAnimTableId(*(this + 1));
    v10 = result;
    if ( (int)result >= 0 && (int)result < Arrays::CharAnimTable::size )
    {
      if ( ((unsigned int)*(this + 11) & 4) == 0 )
      {
        CharTimers::TMR_Start((Character *)((char *)*(this + 1) + 948), a2, 0, 44, nullptr);
        *(this + 11) = (Character *)((unsigned int)*(this + 11) | 4);
      }
      v11 = *(_DWORD *)(Arrays::CharAnimTable::members + 160 * (_DWORD)v10 + 124);
      AnimStance = PyDataConstants::getConstant((PyDataConstants *)dword_99F758, "AnimStancedAnim", "SL__LIST_IPHONE")
                 & 0x100;
      if ( AnimStance )
        AnimStance = Character::GetAnimStance(*(this + 1));
      *(this + 10) = (Character *)(AnimStance + v11);
      if ( a5 )
        result = (CharStateMachine *)CharStateMachine::_SetState((CharStateMachine *)this, 8, 50013, a4);
      else
        result = CharStateMachine::RaiseStateEvent((CharStateMachine *)this, 50013, a4);
      if ( a3 )
        *(this + 9) = (Character *)((unsigned int)*(this + 9) | 0x400);
    }
  }
  return result;
}


// ===== 3c628c CharStateMachine::Update(void) =====
void __fastcall CharStateMachine::Update(CharStateMachine *this)
{
  int v2; // r6
  int Dt; // r0
  int v4; // r3
  int v5; // r3

  PushProfilingContext("CharStateMachine::Update");
  v2 = *((_DWORD *)this + 24);
  Dt = Application::GetDt((Application *)&Singleton<Application>::s_inst);
  v4 = *((_DWORD *)this + 11);
  *((_DWORD *)this + 24) = Dt + v2;
  if ( (v4 & 2) == 0 )
  {
    if ( (v4 & 4) == 0 )
      goto LABEL_3;
    goto LABEL_9;
  }
  if ( !CharStateMachine::SM_IsStunned(this, 0) )
    CharStateMachine::SM_SetStunState((Character **)this, 0xFFFFFFFF, (*((_DWORD *)this + 9) >> 11) & 1, nullptr, 0);
  if ( (*((_DWORD *)this + 11) & 4) != 0 )
  {
LABEL_9:
    if ( !CharStateMachine::SM_IsScared(this, 0) )
      CharStateMachine::SM_SetScareState((Character **)this, 0xFFFFFFFF, (*((_DWORD *)this + 9) >> 10) & 1, nullptr, 0);
  }
LABEL_3:
  v5 = *((_DWORD *)this + 8);
  if ( v5 )
    (*(void (__fastcall **)(_DWORD, _DWORD, _DWORD, CharStateMachine *))(**(_DWORD **)(v5 + 4) + 20))(
      *(_DWORD *)(v5 + 4),
      *(_DWORD *)v5,
      *((_DWORD *)this + 1),
      this);
  PopProfilingContext("CharStateMachine::Update");
}


// ===== 3c6394 CharStateMachine::SM_SetCastState(uint,void *,bool) =====
int __fastcall CharStateMachine::SM_SetCastState(Character **this, unsigned int a2, void *a3, int a4)
{
  int result; // r0
  int v9; // r5
  char *AnimStance; // r0

  result = Character::GetCharAnimTableId(*(this + 1));
  if ( result >= 0 && result < Arrays::CharAnimTable::size )
  {
    result = Arrays::CharAnimTable::members + 160 * result;
    if ( *(_DWORD *)(result + 132) > a2 )
    {
      v9 = *(_DWORD *)(*(_DWORD *)(result + 136) + 4 * a2);
      AnimStance = (char *)(PyDataConstants::getConstant(
                              (PyDataConstants *)dword_99F758,
                              "AnimStancedAnim",
                              "SL__LIST_IPHONE")
                          & 0x400000);
      if ( AnimStance )
        AnimStance = Character::GetAnimStance(*(this + 1));
      *(this + 10) = (Character *)&AnimStance[v9];
      if ( a4 )
        return CharStateMachine::_SetState((CharStateMachine *)this, 7, 50006, a3);
      else
        return (int)CharStateMachine::RaiseStateEvent((CharStateMachine *)this, 50006, a3);
    }
  }
  return result;
}


// ===== 3c6488 CharStateMachine::SM_SetAttackState(void *,bool) =====
int __fastcall CharStateMachine::SM_SetAttackState(CharStateMachine *this, void *a2, int a3)
{
  if ( a3 )
    return CharStateMachine::_SetState(this, 5, 50004, a2);
  else
    return CharStateMachine::RaiseStateEvent(this, 50004, a2);
}


// ===== 3c64ac CharStateMachine::SM_SetInteractState(int,bool,void *,bool) =====
int __fastcall CharStateMachine::SM_SetInteractState(Character **this, Character *a2, bool a3, Character *a4, bool a5)
{
  int result; // r0
  int v10; // r10
  char *AnimStance; // r0

  result = Character::GetCharAnimTableId(*(this + 1));
  if ( result >= 0 && result < Arrays::CharAnimTable::size )
  {
    if ( a2 == (Character *)byte_8 )
    {
      *(this + 18) = (Character *)byte_8;
      *((_BYTE *)this + 76) = a3;
      *(this + 20) = a4;
      return CharStateMachine::SM_SetAttackState((CharStateMachine *)this, a4, a5);
    }
    else if ( a2 == (Character *)&byte_9[1] )
    {
      *(this + 18) = (Character *)(byte_9 + 1);
      *((_BYTE *)this + 76) = a3;
      *(this + 20) = a4;
      return CharStateMachine::SM_SetRevivingState((CharStateMachine *)this, a4, a5);
    }
    else if ( (int)a2 >= 0 )
    {
      result = Arrays::CharAnimTable::members + 160 * result;
      if ( (int)a2 < *(_DWORD *)(result + 64) )
      {
        v10 = *(_DWORD *)(*(_DWORD *)(result + 68) + 4 * (_DWORD)a2);
        AnimStance = (char *)(PyDataConstants::getConstant(
                                (PyDataConstants *)dword_99F758,
                                "AnimStancedAnim",
                                "SL__LIST_IPHONE")
                            & 0x800000);
        if ( AnimStance )
          AnimStance = Character::GetAnimStance(*(this + 1));
        *(this + 10) = (Character *)&AnimStance[v10];
        *(this + 18) = a2;
        *((_BYTE *)this + 76) = a3;
        *(this + 20) = a4;
        if ( a5 )
          return CharStateMachine::_SetState((CharStateMachine *)this, 13, 50003, a4);
        else
          return (int)CharStateMachine::RaiseStateEvent((CharStateMachine *)this, 50003, a4);
      }
    }
  }
  return result;
}


// ===== 3c6608 CSLiftingIdle::OnEvent(int,Character *,CharStateMachine *,int,void *) =====
int __fastcall CSLiftingIdle::OnEvent(
        CSLiftingIdle *this,
        int a2,
        Character *a3,
        CharStateMachine *a4,
        int a5,
        void *a6)
{
  Character *v6; // r3
  int result; // r0

  if ( a5 == 6 )
  {
    v6 = *((Character **)a3 + 339);
    if ( v6 )
      return CharStateMachine::SM_SetInteractState((Character **)a3 + 319, (Character *)&byte_5, 0, v6, 1);
  }
  return result;
}


// ===== 3c663c CSLiftingMove::OnEvent(int,Character *,CharStateMachine *,int,void *) =====
int __fastcall CSLiftingMove::OnEvent(
        CSLiftingMove *this,
        int a2,
        Character *a3,
        CharStateMachine *a4,
        int a5,
        void *a6)
{
  Character *v6; // r3
  int result; // r0

  if ( a5 == 6 )
  {
    v6 = *((Character **)a3 + 339);
    if ( v6 )
      return CharStateMachine::SM_SetInteractState((Character **)a3 + 319, (Character *)&byte_5, 0, v6, 1);
  }
  return result;
}


// ===== 3c6670 CharStateMachine::SM_SetSkillState(uint,bool,void *,bool) =====
CharStateMachine *__fastcall CharStateMachine::SM_SetSkillState(Character **this, int a2, bool a3, void *a4, bool a5)
{
  int v9; // r10
  char *AnimStance; // r0

  v9 = *(_DWORD *)(Character::GetCharSkill(*(this + 1), a2) + 4);
  AnimStance = (char *)(PyDataConstants::getConstant(
                          (PyDataConstants *)dword_99F758,
                          "AnimStancedAnim",
                          "SL__LIST_IPHONE")
                      & 0x200000);
  if ( AnimStance )
    AnimStance = Character::GetAnimStance(*(this + 1));
  *(this + 10) = (Character *)&AnimStance[v9];
  *(this + 21) = (Character *)a2;
  *((_BYTE *)this + 88) = a3;
  if ( a5 )
    return (CharStateMachine *)CharStateMachine::_SetState((CharStateMachine *)this, 6, 50005, a4);
  else
    return CharStateMachine::RaiseStateEvent((CharStateMachine *)this, 50005, a4);
}


// ===== 3c6724 CSReviving::OnBlur(int,Character *,CharStateMachine *,int) =====
CharStateMachine *__fastcall CSReviving::OnBlur(CSReviving *this, int a2, Character *a3, CharStateMachine *a4, int a5)
{
  CharStateMachine *result; // r0
  std::string v7; // [sp+4h] [bp-20h] BYREF

  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string(&v7, "isTracingCharState");
  DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v7);
  std::string::~string(&v7);
  result = CharStateMachine::SM_SetRevivedState((CharStateMachine *)(*((_DWORD *)a3 + 342) + 1276), nullptr, 0);
  *(_BYTE *)(*((_DWORD *)a3 + 222) + 8) = 0;
  return result;
}


// ===== 3c67d4 CSPreSpawn::OnBlur(int,Character *,CharStateMachine *,int) =====
int __fastcall CSPreSpawn::OnBlur(CSPreSpawn *this, int a2, Character *a3, CharStateMachine *a4, int a5)
{
  std::string v7; // [sp+4h] [bp-20h] BYREF

  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string(&v7, "isTracingCharState");
  DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v7);
  std::string::~string(&v7);
  (*(void (__fastcall **)(Character *, int))(*(_DWORD *)a3 + 64))(a3, 1);
  Character::Revive(a3, nullptr, 0);
  return GameObject::EnableCollisions(a3);
}


// ===== 3c688c CSPreSpawn::OnFocus(int,Character *,CharStateMachine *,int,int,void *) =====
int __fastcall CSPreSpawn::OnFocus(
        CSPreSpawn *this,
        int a2,
        Character *a3,
        CharStateMachine *a4,
        int a5,
        int a6,
        void *a7)
{
  int v8; // r10
  int v9; // r8
  int CharAnimTableId; // r0
  int v12; // r8
  int v13; // r6
  char *AnimStance; // r0
  std::string v15; // [sp+4h] [bp-20h] BYREF

  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string(&v15, "isTracingCharState");
  DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v15);
  std::string::~string(&v15);
  *((_DWORD *)a3 + 328) = 4864;
  v8 = Arrays::CharAnimTable::members;
  if ( *(_DWORD *)(v8 + 160 * Character::GetCharAnimTableId(a3) + 100) == -1 )
  {
    v12 = Arrays::CharAnimTable::members;
    v13 = *(_DWORD *)(v12 + 160 * Character::GetCharAnimTableId(a3) + 128);
    AnimStance = (char *)(PyDataConstants::getConstant(
                            (PyDataConstants *)dword_99F758,
                            "AnimStancedAnim",
                            "SL__LIST_IPHONE")
                        & 1);
    if ( AnimStance )
      AnimStance = Character::GetAnimStance(a3);
    CharAnimator::ANIM_Set((unsigned int)a3 + 1180, (int)&AnimStance[v13]);
    CharAnimator::ANIM_SetSpeed((int)a3 + 1180, 0.0);
  }
  else
  {
    v9 = Arrays::CharAnimTable::members;
    CharAnimTableId = Character::GetCharAnimTableId(a3);
    CharAnimator::ANIM_Set((unsigned int)a3 + 1180, *(_DWORD *)(v9 + 160 * CharAnimTableId + 100));
  }
  GameObject::SetPhysicalObject(a3, nullptr, 0);
  if ( !*((_BYTE *)a3 + 5092) )
    (*(void (__fastcall **)(Character *))(*(_DWORD *)a3 + 64))(a3);
  return GameObject::DisableCollisions(a3);
}


// ===== 3c6a20 std::allocator<std::priv::_Rb_tree_node<std::pair<int const,CharStateMachine::Event>>>::allocate(uint,void const*) [clone] =====
void *std::allocator<std::priv::_Rb_tree_node<std::pair<int const,CharStateMachine::Event>>>::allocate()
{
  size_t v1; // [sp+4h] [bp-8h] BYREF

  v1 = 32;
  return __ZNSt12__node_alloc11_M_allocateERj_veneer(&v1);
}


// ===== 3c6a40 std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,CharStateMachine::Event>,std::priv::_Select1st<std::pair<int const,CharStateMachine::Event>>,std::priv::_MapTraitsT<std::pair<int const,CharStateMachine::Event>>,std::allocator<std::pair<int const,CharStateMachine::Event>>>::_M_copy(std::priv::_Rb_tree_node_base *,std::priv::_Rb_tree_node_base *) =====
_DWORD *__fastcall std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,CharStateMachine::Event>,std::priv::_Select1st<std::pair<int const,CharStateMachine::Event>>,std::priv::_MapTraitsT<std::pair<int const,CharStateMachine::Event>>,std::allocator<std::pair<int const,CharStateMachine::Event>>>::_M_copy(
        int a1,
        char *a2,
        int a3)
{
  _DWORD *v6; // r10
  int v7; // r2
  char v8; // r3
  int v9; // r1
  int v10; // r5
  _DWORD *v11; // r6
  _DWORD *v12; // r4
  int v13; // r3

  v6 = std::allocator<std::priv::_Rb_tree_node<std::pair<int const,CharStateMachine::Event>>>::allocate();
  v6[4] = *((_DWORD *)a2 + 4);
  v6[5] = *((_DWORD *)a2 + 5);
  v6[6] = *((_DWORD *)a2 + 6);
  v7 = *((_DWORD *)a2 + 7);
  v6[3] = 0;
  v6[2] = 0;
  v6[7] = v7;
  v8 = *a2;
  v6[1] = a3;
  *(_BYTE *)v6 = v8;
  v9 = *((_DWORD *)a2 + 3);
  if ( v9 )
    v6[3] = std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,CharStateMachine::Event>,std::priv::_Select1st<std::pair<int const,CharStateMachine::Event>>,std::priv::_MapTraitsT<std::pair<int const,CharStateMachine::Event>>,std::allocator<std::pair<int const,CharStateMachine::Event>>>::_M_copy(
              a1,
              v9,
              v6);
  v10 = *((_DWORD *)a2 + 2);
  if ( v10 )
  {
    v11 = v6;
    do
    {
      v12 = std::allocator<std::priv::_Rb_tree_node<std::pair<int const,CharStateMachine::Event>>>::allocate();
      v12[4] = *(_DWORD *)(v10 + 16);
      v12[5] = *(_DWORD *)(v10 + 20);
      v12[6] = *(_DWORD *)(v10 + 24);
      v13 = *(_DWORD *)(v10 + 28);
      v12[2] = 0;
      v12[3] = 0;
      v12[7] = v13;
      *(_BYTE *)v12 = *(_BYTE *)v10;
      v11[2] = v12;
      v12[1] = v11;
      v11 = v12;
      if ( *(_DWORD *)(v10 + 12) )
        v12[3] = std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,CharStateMachine::Event>,std::priv::_Select1st<std::pair<int const,CharStateMachine::Event>>,std::priv::_MapTraitsT<std::pair<int const,CharStateMachine::Event>>,std::allocator<std::pair<int const,CharStateMachine::Event>>>::_M_copy(
                   a1,
                   *(_DWORD *)(v10 + 12),
                   v12);
      v10 = *(_DWORD *)(v10 + 8);
    }
    while ( v10 );
  }
  return v6;
}


// ===== 3c6b38 std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,CharStateMachine::Event>,std::priv::_Select1st<std::pair<int const,CharStateMachine::Event>>,std::priv::_MapTraitsT<std::pair<int const,CharStateMachine::Event>>,std::allocator<std::pair<int const,CharStateMachine::Event>>>::_Rb_tree(std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,CharStateMachine::Event>,std::priv::_Select1st<std::pair<int const,CharStateMachine::Event>>,std::priv::_MapTraitsT<std::pair<int const,CharStateMachine::Event>>,std::allocator<std::pair<int const,CharStateMachine::Event>>> const&) =====
int __fastcall std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,CharStateMachine::Event>,std::priv::_Select1st<std::pair<int const,CharStateMachine::Event>>,std::priv::_MapTraitsT<std::pair<int const,CharStateMachine::Event>>,std::allocator<std::pair<int const,CharStateMachine::Event>>>::_Rb_tree(
        int a1,
        int a2)
{
  char *v4; // r1
  _DWORD *v5; // r0
  _DWORD *v6; // r3
  _DWORD *v7; // r2
  _DWORD *v8; // r3

  *(_DWORD *)(a1 + 16) = 0;
  *(_DWORD *)(a1 + 4) = 0;
  *(_BYTE *)a1 = 0;
  *(_DWORD *)(a1 + 8) = a1;
  *(_DWORD *)(a1 + 12) = a1;
  v4 = *(char **)(a2 + 4);
  if ( v4 )
  {
    v5 = std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,CharStateMachine::Event>,std::priv::_Select1st<std::pair<int const,CharStateMachine::Event>>,std::priv::_MapTraitsT<std::pair<int const,CharStateMachine::Event>>,std::allocator<std::pair<int const,CharStateMachine::Event>>>::_M_copy(
           a1,
           v4,
           a1);
    *(_DWORD *)(a1 + 4) = v5;
    v6 = v5;
    do
    {
      v7 = v6;
      v6 = (_DWORD *)v6[2];
    }
    while ( v6 );
    *(_DWORD *)(a1 + 8) = v7;
    do
    {
      v8 = v5;
      v5 = (_DWORD *)v5[3];
    }
    while ( v5 );
    *(_DWORD *)(a1 + 12) = v8;
  }
  *(_DWORD *)(a1 + 16) = *(_DWORD *)(a2 + 16);
  return a1;
}


// ===== 3c6bb0 std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,CharStateMachine::StateInfo>,std::priv::_Select1st<std::pair<int const,CharStateMachine::StateInfo>>,std::priv::_MapTraitsT<std::pair<int const,CharStateMachine::StateInfo>>,std::allocator<std::pair<int const,CharStateMachine::StateInfo>>>::_M_create_node(std::pair<int const,CharStateMachine::StateInfo> const&) =====
_DWORD *__fastcall std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,CharStateMachine::StateInfo>,std::priv::_Select1st<std::pair<int const,CharStateMachine::StateInfo>>,std::priv::_MapTraitsT<std::pair<int const,CharStateMachine::StateInfo>>,std::allocator<std::pair<int const,CharStateMachine::StateInfo>>>::_M_create_node(
        int a1,
        _DWORD *a2)
{
  _DWORD *v3; // r4
  size_t v5; // [sp+4h] [bp-8h] BYREF

  v5 = 52;
  v3 = __ZNSt12__node_alloc11_M_allocateERj_veneer(&v5);
  v3[4] = *a2;
  v3[5] = a2[1];
  v3[6] = a2[2];
  std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,CharStateMachine::Event>,std::priv::_Select1st<std::pair<int const,CharStateMachine::Event>>,std::priv::_MapTraitsT<std::pair<int const,CharStateMachine::Event>>,std::allocator<std::pair<int const,CharStateMachine::Event>>>::_Rb_tree(
    (int)(v3 + 7),
    (int)(a2 + 3));
  v3[3] = 0;
  v3[2] = 0;
  return v3;
}


// ===== 3c6c0c std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,CharStateMachine::StateInfo>,std::priv::_Select1st<std::pair<int const,CharStateMachine::StateInfo>>,std::priv::_MapTraitsT<std::pair<int const,CharStateMachine::StateInfo>>,std::allocator<std::pair<int const,CharStateMachine::StateInfo>>>::_M_insert(std::priv::_Rb_tree_node_base *,std::pair<int const,CharStateMachine::StateInfo> const&,std::priv::_Rb_tree_node_base *,std::priv::_Rb_tree_node_base *) =====
_DWORD *__fastcall std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,CharStateMachine::StateInfo>,std::priv::_Select1st<std::pair<int const,CharStateMachine::StateInfo>>,std::priv::_MapTraitsT<std::pair<int const,CharStateMachine::StateInfo>>,std::allocator<std::pair<int const,CharStateMachine::StateInfo>>>::_M_insert(
        _DWORD *a1,
        _DWORD *a2,
        _DWORD *a3,
        _DWORD *a4,
        int a5,
        int a6)
{
  _DWORD *v9; // r0
  _DWORD *node; // r7
  _DWORD *v12; // r0

  if ( a2 == a3 )
  {
    node = std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,CharStateMachine::StateInfo>,std::priv::_Select1st<std::pair<int const,CharStateMachine::StateInfo>>,std::priv::_MapTraitsT<std::pair<int const,CharStateMachine::StateInfo>>,std::allocator<std::pair<int const,CharStateMachine::StateInfo>>>::_M_create_node(
             (int)a2,
             a4);
    a2[2] = node;
    a2[1] = node;
    a2[3] = node;
  }
  else if ( a6 || !a5 && *a4 >= a3[4] )
  {
    v9 = std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,CharStateMachine::StateInfo>,std::priv::_Select1st<std::pair<int const,CharStateMachine::StateInfo>>,std::priv::_MapTraitsT<std::pair<int const,CharStateMachine::StateInfo>>,std::allocator<std::pair<int const,CharStateMachine::StateInfo>>>::_M_create_node(
           (int)a2,
           a4);
    a3[3] = v9;
    node = v9;
    if ( a3 == (_DWORD *)a2[3] )
      a2[3] = v9;
  }
  else
  {
    v12 = std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,CharStateMachine::StateInfo>,std::priv::_Select1st<std::pair<int const,CharStateMachine::StateInfo>>,std::priv::_MapTraitsT<std::pair<int const,CharStateMachine::StateInfo>>,std::allocator<std::pair<int const,CharStateMachine::StateInfo>>>::_M_create_node(
            (int)a2,
            a4);
    a3[2] = v12;
    node = v12;
    if ( a3 == (_DWORD *)a2[2] )
      a2[2] = v12;
  }
  node[1] = a3;
  std::priv::_Rb_global<bool>::_Rebalance((int)node, a2 + 1);
  ++a2[4];
  *a1 = node;
  return a1;
}


// ===== 3c6ce4 std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,CharStateMachine::StateInfo>,std::priv::_Select1st<std::pair<int const,CharStateMachine::StateInfo>>,std::priv::_MapTraitsT<std::pair<int const,CharStateMachine::StateInfo>>,std::allocator<std::pair<int const,CharStateMachine::StateInfo>>>::insert_unique(std::pair<int const,CharStateMachine::StateInfo> const&) =====
int __fastcall std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,CharStateMachine::StateInfo>,std::priv::_Select1st<std::pair<int const,CharStateMachine::StateInfo>>,std::priv::_MapTraitsT<std::pair<int const,CharStateMachine::StateInfo>>,std::allocator<std::pair<int const,CharStateMachine::StateInfo>>>::insert_unique(
        int a1,
        _DWORD *a2,
        int *a3)
{
  _DWORD *v3; // r12
  int v6; // r6
  int v7; // r0
  int v8; // r5
  _DWORD *v9; // r2
  _DWORD *v10; // r5
  int v12; // r0
  int v13; // r3
  _DWORD *v14; // r2
  int v15; // r3
  int v16; // [sp+8h] [bp-8h] BYREF
  int v17; // [sp+Ch] [bp-4h] BYREF

  v3 = (_DWORD *)a2[1];
  if ( v3 )
  {
    v6 = *a3;
    while ( 1 )
    {
      v7 = v3[4];
      v8 = 1;
      if ( v7 <= v6 )
      {
        v9 = (_DWORD *)v3[3];
        v8 = 0;
      }
      else
      {
        v9 = (_DWORD *)v3[2];
      }
      if ( !v9 )
        break;
      v3 = v9;
    }
    if ( !v8 )
    {
      v10 = v3;
      goto LABEL_12;
    }
  }
  else
  {
    v3 = a2;
  }
  if ( v3 == (_DWORD *)a2[2] )
  {
    std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,CharStateMachine::StateInfo>,std::priv::_Select1st<std::pair<int const,CharStateMachine::StateInfo>>,std::priv::_MapTraitsT<std::pair<int const,CharStateMachine::StateInfo>>,std::allocator<std::pair<int const,CharStateMachine::StateInfo>>>::_M_insert(
      &v17,
      a2,
      v3,
      a3,
      (int)v3,
      0);
    v15 = v17;
    *(_BYTE *)(a1 + 4) = 1;
    *(_DWORD *)a1 = v15;
    return a1;
  }
  if ( !*(_BYTE *)v3 && v3 == *(_DWORD **)(v3[1] + 4) )
  {
    v6 = *a3;
    v10 = (_DWORD *)v3[3];
    v7 = v10[4];
  }
  else
  {
    v12 = v3[2];
    if ( v12 )
    {
      while ( *(_DWORD *)(v12 + 12) )
        v12 = *(_DWORD *)(v12 + 12);
      if ( *a3 <= *(_DWORD *)(v12 + 16) )
      {
        *(_DWORD *)a1 = v12;
        *(_BYTE *)(a1 + 4) = 0;
        return a1;
      }
LABEL_25:
      std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,CharStateMachine::StateInfo>,std::priv::_Select1st<std::pair<int const,CharStateMachine::StateInfo>>,std::priv::_MapTraitsT<std::pair<int const,CharStateMachine::StateInfo>>,std::allocator<std::pair<int const,CharStateMachine::StateInfo>>>::_M_insert(
        &v16,
        a2,
        v3,
        a3,
        0,
        0);
      v13 = v16;
      *(_BYTE *)(a1 + 4) = 1;
      *(_DWORD *)a1 = v13;
      return a1;
    }
    v14 = (_DWORD *)v3[1];
    if ( v3 == (_DWORD *)v14[2] )
    {
      while ( 1 )
      {
        v10 = (_DWORD *)v14[1];
        if ( (_DWORD *)v10[2] != v14 )
          break;
        v14 = (_DWORD *)v14[1];
      }
      v6 = *a3;
      v7 = v10[4];
    }
    else
    {
      v10 = (_DWORD *)v3[1];
      v6 = *a3;
      v7 = v14[4];
    }
  }
LABEL_12:
  if ( v6 > v7 )
    goto LABEL_25;
  *(_DWORD *)a1 = v10;
  *(_BYTE *)(a1 + 4) = 0;
  return a1;
}


// ===== 3c6e6c std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,CharStateMachine::StateInfo>,std::priv::_Select1st<std::pair<int const,CharStateMachine::StateInfo>>,std::priv::_MapTraitsT<std::pair<int const,CharStateMachine::StateInfo>>,std::allocator<std::pair<int const,CharStateMachine::StateInfo>>>::insert_unique(std::priv::_Rb_tree_iterator<std::pair<int const,CharStateMachine::StateInfo>,std::priv::_MapTraitsT<std::pair<int const,CharStateMachine::StateInfo>>>,std::pair<int const,CharStateMachine::StateInfo> const&) =====
_DWORD *__fastcall std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,CharStateMachine::StateInfo>,std::priv::_Select1st<std::pair<int const,CharStateMachine::StateInfo>>,std::priv::_MapTraitsT<std::pair<int const,CharStateMachine::StateInfo>>,std::allocator<std::pair<int const,CharStateMachine::StateInfo>>>::insert_unique(
        _DWORD *a1,
        _DWORD *a2,
        _DWORD **a3,
        int *a4)
{
  _DWORD *v4; // r4
  _DWORD *v7; // r12
  int v8; // r2
  int v9; // r0
  int v10; // r8
  _DWORD *i; // r12
  int v13; // r2
  int v14; // r12
  int v15; // lr
  _DWORD *v16; // r2
  int v17; // r3
  int v18; // r3
  int v19; // [sp+8h] [bp-24h] BYREF
  int v20; // [sp+10h] [bp-1Ch] BYREF
  int v21; // [sp+18h] [bp-14h] BYREF
  _DWORD v22[3]; // [sp+20h] [bp-Ch] BYREF

  v4 = *a3;
  if ( *a3 == (_DWORD *)a2[2] )
  {
    if ( !a2[4] )
    {
      std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,CharStateMachine::StateInfo>,std::priv::_Select1st<std::pair<int const,CharStateMachine::StateInfo>>,std::priv::_MapTraitsT<std::pair<int const,CharStateMachine::StateInfo>>,std::allocator<std::pair<int const,CharStateMachine::StateInfo>>>::insert_unique(
        (int)v22,
        a2,
        a4);
      *a1 = v22[0];
      return a1;
    }
    v13 = *a4;
    v14 = v4[4];
    if ( *a4 < v14 )
    {
      std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,CharStateMachine::StateInfo>,std::priv::_Select1st<std::pair<int const,CharStateMachine::StateInfo>>,std::priv::_MapTraitsT<std::pair<int const,CharStateMachine::StateInfo>>,std::allocator<std::pair<int const,CharStateMachine::StateInfo>>>::_M_insert(
        a1,
        a2,
        v4,
        a4,
        (int)v4,
        0);
      return a1;
    }
    if ( *a4 > v14 )
    {
      v15 = v4[3];
      if ( v15 )
      {
        for ( i = (_DWORD *)v4[3]; i[2]; i = (_DWORD *)i[2] )
          ;
      }
      else
      {
        v18 = v4[1];
        if ( v4 == *(_DWORD **)(v18 + 12) )
        {
          do
          {
            i = (_DWORD *)v18;
            v18 = *(_DWORD *)(v18 + 4);
          }
          while ( *(_DWORD **)(v18 + 12) == i );
        }
        else
        {
          i = v4;
        }
        if ( v18 != i[3] )
          i = (_DWORD *)v18;
      }
      if ( a2 == i )
        goto LABEL_63;
      if ( v13 >= i[4] )
      {
        std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,CharStateMachine::StateInfo>,std::priv::_Select1st<std::pair<int const,CharStateMachine::StateInfo>>,std::priv::_MapTraitsT<std::pair<int const,CharStateMachine::StateInfo>>,std::allocator<std::pair<int const,CharStateMachine::StateInfo>>>::insert_unique(
          (int)&v21,
          a2,
          a4);
        *a1 = v21;
        return a1;
      }
      if ( !v15 )
      {
LABEL_63:
        std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,CharStateMachine::StateInfo>,std::priv::_Select1st<std::pair<int const,CharStateMachine::StateInfo>>,std::priv::_MapTraitsT<std::pair<int const,CharStateMachine::StateInfo>>,std::allocator<std::pair<int const,CharStateMachine::StateInfo>>>::_M_insert(
          a1,
          a2,
          v4,
          a4,
          0,
          (int)v4);
        return a1;
      }
      goto LABEL_42;
    }
    goto LABEL_45;
  }
  if ( v4 != a2 )
  {
    if ( *(_BYTE *)v4 )
    {
      v7 = (_DWORD *)v4[2];
      if ( !v7 )
      {
LABEL_26:
        v7 = (_DWORD *)v4[1];
        if ( v4 == (_DWORD *)v7[2] )
        {
          while ( *(_DWORD **)(v7[1] + 8) == v7 )
            v7 = (_DWORD *)v7[1];
          v7 = (_DWORD *)v7[1];
        }
        goto LABEL_8;
      }
    }
    else
    {
      if ( v4 == *(_DWORD **)(v4[1] + 4) )
      {
        v7 = (_DWORD *)v4[3];
LABEL_8:
        v8 = *a4;
        v9 = v4[4];
        if ( *a4 < v9 && v8 > v7[4] )
        {
          if ( v7[3] )
            std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,CharStateMachine::StateInfo>,std::priv::_Select1st<std::pair<int const,CharStateMachine::StateInfo>>,std::priv::_MapTraitsT<std::pair<int const,CharStateMachine::StateInfo>>,std::allocator<std::pair<int const,CharStateMachine::StateInfo>>>::_M_insert(
              a1,
              a2,
              v4,
              a4,
              (int)v4,
              0);
          else
            std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,CharStateMachine::StateInfo>,std::priv::_Select1st<std::pair<int const,CharStateMachine::StateInfo>>,std::priv::_MapTraitsT<std::pair<int const,CharStateMachine::StateInfo>>,std::allocator<std::pair<int const,CharStateMachine::StateInfo>>>::_M_insert(
              a1,
              a2,
              v7,
              a4,
              0,
              (int)v7);
          return a1;
        }
        v10 = v4[3];
        if ( v10 )
        {
          for ( i = (_DWORD *)v4[3]; i[2]; i = (_DWORD *)i[2] )
            ;
        }
        else
        {
          v17 = v4[1];
          if ( v4 == *(_DWORD **)(v17 + 12) )
          {
            do
            {
              i = (_DWORD *)v17;
              v17 = *(_DWORD *)(v17 + 4);
            }
            while ( i == *(_DWORD **)(v17 + 12) );
          }
          else
          {
            i = v4;
          }
          if ( v17 != i[3] )
            i = (_DWORD *)v17;
        }
        if ( *a4 < v9 )
          goto LABEL_31;
        if ( v8 > v9 )
        {
          if ( a2 == i || v8 < i[4] )
          {
            if ( !v10 )
            {
              std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,CharStateMachine::StateInfo>,std::priv::_Select1st<std::pair<int const,CharStateMachine::StateInfo>>,std::priv::_MapTraitsT<std::pair<int const,CharStateMachine::StateInfo>>,std::allocator<std::pair<int const,CharStateMachine::StateInfo>>>::_M_insert(
                a1,
                a2,
                v4,
                a4,
                0,
                (int)v4);
              return a1;
            }
LABEL_42:
            std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,CharStateMachine::StateInfo>,std::priv::_Select1st<std::pair<int const,CharStateMachine::StateInfo>>,std::priv::_MapTraitsT<std::pair<int const,CharStateMachine::StateInfo>>,std::allocator<std::pair<int const,CharStateMachine::StateInfo>>>::_M_insert(
              a1,
              a2,
              i,
              a4,
              (int)i,
              0);
            return a1;
          }
LABEL_31:
          std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,CharStateMachine::StateInfo>,std::priv::_Select1st<std::pair<int const,CharStateMachine::StateInfo>>,std::priv::_MapTraitsT<std::pair<int const,CharStateMachine::StateInfo>>,std::allocator<std::pair<int const,CharStateMachine::StateInfo>>>::insert_unique(
            (int)&v19,
            a2,
            a4);
          *a1 = v19;
          return a1;
        }
LABEL_45:
        *a1 = v4;
        return a1;
      }
      v7 = (_DWORD *)v4[2];
      if ( !v7 )
        goto LABEL_26;
    }
    while ( v7[3] )
      v7 = (_DWORD *)v7[3];
    goto LABEL_8;
  }
  v16 = (_DWORD *)v4[3];
  if ( v16[4] >= *a4 )
  {
    std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,CharStateMachine::StateInfo>,std::priv::_Select1st<std::pair<int const,CharStateMachine::StateInfo>>,std::priv::_MapTraitsT<std::pair<int const,CharStateMachine::StateInfo>>,std::allocator<std::pair<int const,CharStateMachine::StateInfo>>>::insert_unique(
      (int)&v20,
      a2,
      a4);
    *a1 = v20;
  }
  else
  {
    std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,CharStateMachine::StateInfo>,std::priv::_Select1st<std::pair<int const,CharStateMachine::StateInfo>>,std::priv::_MapTraitsT<std::pair<int const,CharStateMachine::StateInfo>>,std::allocator<std::pair<int const,CharStateMachine::StateInfo>>>::_M_insert(
      a1,
      a2,
      v16,
      a4,
      0,
      (int)v4);
  }
  return a1;
}


// ===== 3c71e0 std::map<int,CharStateMachine::StateInfo,std::less<int>,std::allocator<std::pair<int const,CharStateMachine::StateInfo>>>::operator[]<int>(int const&) =====
_DWORD *__fastcall std::map<int,CharStateMachine::StateInfo>::operator[]<int>(_DWORD *a1, int *a2)
{
  _DWORD *v2; // r4
  int v4; // r2
  _DWORD *v5; // r1
  int v6; // r3
  bool v7; // cc
  _DWORD *v8; // r3
  _DWORD *v9; // r0
  _DWORD *v10; // r4
  int v12[3]; // [sp+4h] [bp-50h] BYREF
  int v13; // [sp+10h] [bp-44h] BYREF
  _DWORD *v14; // [sp+14h] [bp-40h]
  int *v15; // [sp+18h] [bp-3Ch]
  int *v16; // [sp+1Ch] [bp-38h]
  int v17; // [sp+20h] [bp-34h]
  int v18; // [sp+28h] [bp-2Ch]
  int v19; // [sp+2Ch] [bp-28h]
  char v20[4]; // [sp+30h] [bp-24h] BYREF
  _DWORD *v21; // [sp+34h] [bp-20h]
  char *v22; // [sp+38h] [bp-1Ch]
  char *v23; // [sp+3Ch] [bp-18h]
  int v24; // [sp+40h] [bp-14h]
  _DWORD *v25; // [sp+48h] [bp-Ch] BYREF
  _DWORD *v26; // [sp+4Ch] [bp-8h] BYREF

  v2 = (_DWORD *)a1[1];
  if ( v2 )
  {
    v4 = *a2;
    v5 = a1;
    while ( 1 )
    {
      v6 = v2[4];
      v7 = v6 < v4;
      v8 = (_DWORD *)(v6 >= v4 ? v2[2] : v2[3]);
      if ( v7 )
        v2 = v5;
      v5 = v2;
      if ( !v8 )
        break;
      v2 = v8;
    }
  }
  else
  {
    v4 = *a2;
    v2 = a1;
  }
  if ( a1 == v2 || (v9 = v2, v4 < v2[4]) )
  {
    v12[0] = v4;
    v22 = v20;
    v23 = v20;
    v18 = 0;
    v19 = 0;
    v20[0] = 0;
    v21 = nullptr;
    v24 = 0;
    v12[1] = 0;
    v12[2] = 0;
    std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,CharStateMachine::Event>,std::priv::_Select1st<std::pair<int const,CharStateMachine::Event>>,std::priv::_MapTraitsT<std::pair<int const,CharStateMachine::Event>>,std::allocator<std::pair<int const,CharStateMachine::Event>>>::_Rb_tree(
      (int)&v13,
      (int)v20);
    v25 = v2;
    std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,CharStateMachine::StateInfo>,std::priv::_Select1st<std::pair<int const,CharStateMachine::StateInfo>>,std::priv::_MapTraitsT<std::pair<int const,CharStateMachine::StateInfo>>,std::allocator<std::pair<int const,CharStateMachine::StateInfo>>>::insert_unique(
      &v26,
      a1,
      &v25,
      v12);
    v10 = v26;
    if ( v17 )
    {
      std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,CharStateMachine::Event>,std::priv::_Select1st<std::pair<int const,CharStateMachine::Event>>,std::priv::_MapTraitsT<std::pair<int const,CharStateMachine::Event>>,std::allocator<std::pair<int const,CharStateMachine::Event>>>::_M_erase(
        (int)&v13,
        v14);
      v16 = &v13;
      v17 = 0;
      v15 = &v13;
      v14 = nullptr;
      if ( !v24 )
        goto LABEL_14;
    }
    else if ( !v24 )
    {
LABEL_14:
      v9 = v10;
      return v9 + 5;
    }
    std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,CharStateMachine::Event>,std::priv::_Select1st<std::pair<int const,CharStateMachine::Event>>,std::priv::_MapTraitsT<std::pair<int const,CharStateMachine::Event>>,std::allocator<std::pair<int const,CharStateMachine::Event>>>::_M_erase(
      (int)v20,
      v21);
    v9 = v10;
  }
  return v9 + 5;
}


// ===== 3c7318 CharStateMachine::RegisterState(int) =====
void __fastcall CharStateMachine::RegisterState(CharStateMachine *this, int a2)
{
  char *v2; // r3
  char *v4; // r8
  char *v5; // r0
  int v6; // r2
  bool v7; // cc
  char *v8; // r2
  int v9; // r3
  int v10; // r9
  _DWORD *v11; // r0
  _DWORD *v12; // r0
  _DWORD *v13; // [sp+0h] [bp-2Ch]
  int v14; // [sp+4h] [bp-28h] BYREF
  std::string v15; // [sp+Ch] [bp-20h] BYREF

  v2 = *((char **)this + 3);
  v14 = a2;
  v4 = (char *)this + 8;
  if ( !v2 )
    goto LABEL_14;
  v5 = (char *)this + 8;
  while ( 1 )
  {
    v6 = *((_DWORD *)v2 + 4);
    v7 = v6 < a2;
    v8 = v6 >= a2 ? *((char **)v2 + 2) : *((char **)v2 + 3);
    if ( v7 )
      v2 = v5;
    if ( !v8 )
      break;
    v5 = v2;
    v2 = v8;
  }
  if ( v4 == v2 || a2 < *((_DWORD *)v2 + 4) || v4 == v2 )
  {
LABEL_14:
    v9 = 0;
    while ( 1 )
    {
      v10 = 8 * v9;
      if ( v14 == *((_DWORD *)&g_stateList + 2 * v9) )
        break;
      if ( ++v9 == 20 )
        return;
    }
    v11 = std::map<int,CharStateMachine::StateInfo>::operator[]<int>(v4, &v14);
    *v11 = v14;
    v13 = std::map<int,CharStateMachine::StateInfo>::operator[]<int>(v4, &v14);
    v13[1] = (*(int (**)(void))((char *)&g_stateList + v10 + 4))();
    v12 = std::map<int,CharStateMachine::StateInfo>::operator[]<int>(v4, &v14);
    (*(void (__fastcall **)(_DWORD, int, _DWORD, CharStateMachine *))(*(_DWORD *)v12[1] + 8))(
      v12[1],
      v14,
      *((_DWORD *)this + 1),
      this);
    DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
    std::string::string(&v15, "isTracingCharSM");
    DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v15);
    std::string::~string(&v15);
  }
}


// ===== 3c74b0 std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,CharStateMachine::Event>,std::priv::_Select1st<std::pair<int const,CharStateMachine::Event>>,std::priv::_MapTraitsT<std::pair<int const,CharStateMachine::Event>>,std::allocator<std::pair<int const,CharStateMachine::Event>>>::_M_insert(std::priv::_Rb_tree_node_base *,std::pair<int const,CharStateMachine::Event> const&,std::priv::_Rb_tree_node_base *,std::priv::_Rb_tree_node_base *) =====
_DWORD *__fastcall std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,CharStateMachine::Event>,std::priv::_Select1st<std::pair<int const,CharStateMachine::Event>>,std::priv::_MapTraitsT<std::pair<int const,CharStateMachine::Event>>,std::allocator<std::pair<int const,CharStateMachine::Event>>>::_M_insert(
        _DWORD *a1,
        _DWORD *a2,
        _DWORD *a3,
        _DWORD *a4,
        int a5,
        int a6)
{
  _DWORD *v10; // r0
  _DWORD *v11; // r6
  int v12; // r3
  _DWORD *v14; // r0
  int v15; // r3
  int v16; // r3

  if ( a2 == a3 )
  {
    v11 = std::allocator<std::priv::_Rb_tree_node<std::pair<int const,CharStateMachine::Event>>>::allocate();
    v11[4] = *a4;
    v11[5] = a4[1];
    v11[6] = a4[2];
    v16 = a4[3];
    v11[3] = 0;
    v11[2] = 0;
    v11[7] = v16;
    a2[2] = v11;
    a2[1] = v11;
    a2[3] = v11;
  }
  else if ( a6 || !a5 && *a4 >= a3[4] )
  {
    v10 = std::allocator<std::priv::_Rb_tree_node<std::pair<int const,CharStateMachine::Event>>>::allocate();
    v11 = v10;
    v10[4] = *a4;
    v10[5] = a4[1];
    v10[6] = a4[2];
    v12 = a4[3];
    v10[3] = 0;
    v10[2] = 0;
    v10[7] = v12;
    a3[3] = v10;
    if ( a3 == (_DWORD *)a2[3] )
      a2[3] = v10;
  }
  else
  {
    v14 = std::allocator<std::priv::_Rb_tree_node<std::pair<int const,CharStateMachine::Event>>>::allocate();
    v11 = v14;
    v14[4] = *a4;
    v14[5] = a4[1];
    v14[6] = a4[2];
    v15 = a4[3];
    v14[3] = 0;
    v14[2] = 0;
    v14[7] = v15;
    a3[2] = v14;
    if ( a3 == (_DWORD *)a2[2] )
      a2[2] = v14;
  }
  v11[1] = a3;
  std::priv::_Rb_global<bool>::_Rebalance((int)v11, a2 + 1);
  ++a2[4];
  *a1 = v11;
  return a1;
}


// ===== 3c761c std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,CharStateMachine::Event>,std::priv::_Select1st<std::pair<int const,CharStateMachine::Event>>,std::priv::_MapTraitsT<std::pair<int const,CharStateMachine::Event>>,std::allocator<std::pair<int const,CharStateMachine::Event>>>::insert_unique(std::pair<int const,CharStateMachine::Event> const&) =====
int __fastcall std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,CharStateMachine::Event>,std::priv::_Select1st<std::pair<int const,CharStateMachine::Event>>,std::priv::_MapTraitsT<std::pair<int const,CharStateMachine::Event>>,std::allocator<std::pair<int const,CharStateMachine::Event>>>::insert_unique(
        int a1,
        _DWORD *a2,
        int *a3)
{
  _DWORD *v3; // r12
  int v6; // r6
  int v7; // r0
  int v8; // r5
  _DWORD *v9; // r2
  _DWORD *v10; // r5
  int v12; // r0
  int v13; // r3
  _DWORD *v14; // r2
  int v15; // r3
  int v16; // [sp+8h] [bp-8h] BYREF
  int v17; // [sp+Ch] [bp-4h] BYREF

  v3 = (_DWORD *)a2[1];
  if ( v3 )
  {
    v6 = *a3;
    while ( 1 )
    {
      v7 = v3[4];
      v8 = 1;
      if ( v7 <= v6 )
      {
        v9 = (_DWORD *)v3[3];
        v8 = 0;
      }
      else
      {
        v9 = (_DWORD *)v3[2];
      }
      if ( !v9 )
        break;
      v3 = v9;
    }
    if ( !v8 )
    {
      v10 = v3;
      goto LABEL_12;
    }
  }
  else
  {
    v3 = a2;
  }
  if ( v3 == (_DWORD *)a2[2] )
  {
    std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,CharStateMachine::Event>,std::priv::_Select1st<std::pair<int const,CharStateMachine::Event>>,std::priv::_MapTraitsT<std::pair<int const,CharStateMachine::Event>>,std::allocator<std::pair<int const,CharStateMachine::Event>>>::_M_insert(
      &v17,
      a2,
      v3,
      a3,
      (int)v3,
      0);
    v15 = v17;
    *(_BYTE *)(a1 + 4) = 1;
    *(_DWORD *)a1 = v15;
    return a1;
  }
  if ( !*(_BYTE *)v3 && v3 == *(_DWORD **)(v3[1] + 4) )
  {
    v6 = *a3;
    v10 = (_DWORD *)v3[3];
    v7 = v10[4];
  }
  else
  {
    v12 = v3[2];
    if ( v12 )
    {
      while ( *(_DWORD *)(v12 + 12) )
        v12 = *(_DWORD *)(v12 + 12);
      if ( *a3 <= *(_DWORD *)(v12 + 16) )
      {
        *(_DWORD *)a1 = v12;
        *(_BYTE *)(a1 + 4) = 0;
        return a1;
      }
LABEL_25:
      std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,CharStateMachine::Event>,std::priv::_Select1st<std::pair<int const,CharStateMachine::Event>>,std::priv::_MapTraitsT<std::pair<int const,CharStateMachine::Event>>,std::allocator<std::pair<int const,CharStateMachine::Event>>>::_M_insert(
        &v16,
        a2,
        v3,
        a3,
        0,
        0);
      v13 = v16;
      *(_BYTE *)(a1 + 4) = 1;
      *(_DWORD *)a1 = v13;
      return a1;
    }
    v14 = (_DWORD *)v3[1];
    if ( v3 == (_DWORD *)v14[2] )
    {
      while ( 1 )
      {
        v10 = (_DWORD *)v14[1];
        if ( (_DWORD *)v10[2] != v14 )
          break;
        v14 = (_DWORD *)v14[1];
      }
      v6 = *a3;
      v7 = v10[4];
    }
    else
    {
      v10 = (_DWORD *)v3[1];
      v6 = *a3;
      v7 = v14[4];
    }
  }
LABEL_12:
  if ( v6 > v7 )
    goto LABEL_25;
  *(_DWORD *)a1 = v10;
  *(_BYTE *)(a1 + 4) = 0;
  return a1;
}


// ===== 3c77a4 std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,CharStateMachine::Event>,std::priv::_Select1st<std::pair<int const,CharStateMachine::Event>>,std::priv::_MapTraitsT<std::pair<int const,CharStateMachine::Event>>,std::allocator<std::pair<int const,CharStateMachine::Event>>>::insert_unique(std::priv::_Rb_tree_iterator<std::pair<int const,CharStateMachine::Event>,std::priv::_MapTraitsT<std::pair<int const,CharStateMachine::Event>>>,std::pair<int const,CharStateMachine::Event> const&) =====
_DWORD *__fastcall std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,CharStateMachine::Event>,std::priv::_Select1st<std::pair<int const,CharStateMachine::Event>>,std::priv::_MapTraitsT<std::pair<int const,CharStateMachine::Event>>,std::allocator<std::pair<int const,CharStateMachine::Event>>>::insert_unique(
        _DWORD *a1,
        _DWORD *a2,
        _DWORD **a3,
        int *a4)
{
  _DWORD *v4; // r4
  _DWORD *v7; // r12
  int v8; // r2
  int v9; // r0
  int v10; // r8
  _DWORD *i; // r12
  int v13; // r2
  int v14; // r12
  int v15; // lr
  _DWORD *v16; // r2
  int v17; // r3
  int v18; // r3
  int v19; // [sp+8h] [bp-24h] BYREF
  int v20; // [sp+10h] [bp-1Ch] BYREF
  int v21; // [sp+18h] [bp-14h] BYREF
  _DWORD v22[3]; // [sp+20h] [bp-Ch] BYREF

  v4 = *a3;
  if ( *a3 == (_DWORD *)a2[2] )
  {
    if ( !a2[4] )
    {
      std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,CharStateMachine::Event>,std::priv::_Select1st<std::pair<int const,CharStateMachine::Event>>,std::priv::_MapTraitsT<std::pair<int const,CharStateMachine::Event>>,std::allocator<std::pair<int const,CharStateMachine::Event>>>::insert_unique(
        (int)v22,
        a2,
        a4);
      *a1 = v22[0];
      return a1;
    }
    v13 = *a4;
    v14 = v4[4];
    if ( *a4 < v14 )
    {
      std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,CharStateMachine::Event>,std::priv::_Select1st<std::pair<int const,CharStateMachine::Event>>,std::priv::_MapTraitsT<std::pair<int const,CharStateMachine::Event>>,std::allocator<std::pair<int const,CharStateMachine::Event>>>::_M_insert(
        a1,
        a2,
        v4,
        a4,
        (int)v4,
        0);
      return a1;
    }
    if ( *a4 > v14 )
    {
      v15 = v4[3];
      if ( v15 )
      {
        for ( i = (_DWORD *)v4[3]; i[2]; i = (_DWORD *)i[2] )
          ;
      }
      else
      {
        v18 = v4[1];
        if ( v4 == *(_DWORD **)(v18 + 12) )
        {
          do
          {
            i = (_DWORD *)v18;
            v18 = *(_DWORD *)(v18 + 4);
          }
          while ( *(_DWORD **)(v18 + 12) == i );
        }
        else
        {
          i = v4;
        }
        if ( v18 != i[3] )
          i = (_DWORD *)v18;
      }
      if ( a2 == i )
        goto LABEL_63;
      if ( v13 >= i[4] )
      {
        std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,CharStateMachine::Event>,std::priv::_Select1st<std::pair<int const,CharStateMachine::Event>>,std::priv::_MapTraitsT<std::pair<int const,CharStateMachine::Event>>,std::allocator<std::pair<int const,CharStateMachine::Event>>>::insert_unique(
          (int)&v21,
          a2,
          a4);
        *a1 = v21;
        return a1;
      }
      if ( !v15 )
      {
LABEL_63:
        std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,CharStateMachine::Event>,std::priv::_Select1st<std::pair<int const,CharStateMachine::Event>>,std::priv::_MapTraitsT<std::pair<int const,CharStateMachine::Event>>,std::allocator<std::pair<int const,CharStateMachine::Event>>>::_M_insert(
          a1,
          a2,
          v4,
          a4,
          0,
          (int)v4);
        return a1;
      }
      goto LABEL_42;
    }
    goto LABEL_45;
  }
  if ( v4 != a2 )
  {
    if ( *(_BYTE *)v4 )
    {
      v7 = (_DWORD *)v4[2];
      if ( !v7 )
      {
LABEL_26:
        v7 = (_DWORD *)v4[1];
        if ( v4 == (_DWORD *)v7[2] )
        {
          while ( *(_DWORD **)(v7[1] + 8) == v7 )
            v7 = (_DWORD *)v7[1];
          v7 = (_DWORD *)v7[1];
        }
        goto LABEL_8;
      }
    }
    else
    {
      if ( v4 == *(_DWORD **)(v4[1] + 4) )
      {
        v7 = (_DWORD *)v4[3];
LABEL_8:
        v8 = *a4;
        v9 = v4[4];
        if ( *a4 < v9 && v8 > v7[4] )
        {
          if ( v7[3] )
            std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,CharStateMachine::Event>,std::priv::_Select1st<std::pair<int const,CharStateMachine::Event>>,std::priv::_MapTraitsT<std::pair<int const,CharStateMachine::Event>>,std::allocator<std::pair<int const,CharStateMachine::Event>>>::_M_insert(
              a1,
              a2,
              v4,
              a4,
              (int)v4,
              0);
          else
            std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,CharStateMachine::Event>,std::priv::_Select1st<std::pair<int const,CharStateMachine::Event>>,std::priv::_MapTraitsT<std::pair<int const,CharStateMachine::Event>>,std::allocator<std::pair<int const,CharStateMachine::Event>>>::_M_insert(
              a1,
              a2,
              v7,
              a4,
              0,
              (int)v7);
          return a1;
        }
        v10 = v4[3];
        if ( v10 )
        {
          for ( i = (_DWORD *)v4[3]; i[2]; i = (_DWORD *)i[2] )
            ;
        }
        else
        {
          v17 = v4[1];
          if ( v4 == *(_DWORD **)(v17 + 12) )
          {
            do
            {
              i = (_DWORD *)v17;
              v17 = *(_DWORD *)(v17 + 4);
            }
            while ( i == *(_DWORD **)(v17 + 12) );
          }
          else
          {
            i = v4;
          }
          if ( v17 != i[3] )
            i = (_DWORD *)v17;
        }
        if ( *a4 < v9 )
          goto LABEL_31;
        if ( v8 > v9 )
        {
          if ( a2 == i || v8 < i[4] )
          {
            if ( !v10 )
            {
              std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,CharStateMachine::Event>,std::priv::_Select1st<std::pair<int const,CharStateMachine::Event>>,std::priv::_MapTraitsT<std::pair<int const,CharStateMachine::Event>>,std::allocator<std::pair<int const,CharStateMachine::Event>>>::_M_insert(
                a1,
                a2,
                v4,
                a4,
                0,
                (int)v4);
              return a1;
            }
LABEL_42:
            std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,CharStateMachine::Event>,std::priv::_Select1st<std::pair<int const,CharStateMachine::Event>>,std::priv::_MapTraitsT<std::pair<int const,CharStateMachine::Event>>,std::allocator<std::pair<int const,CharStateMachine::Event>>>::_M_insert(
              a1,
              a2,
              i,
              a4,
              (int)i,
              0);
            return a1;
          }
LABEL_31:
          std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,CharStateMachine::Event>,std::priv::_Select1st<std::pair<int const,CharStateMachine::Event>>,std::priv::_MapTraitsT<std::pair<int const,CharStateMachine::Event>>,std::allocator<std::pair<int const,CharStateMachine::Event>>>::insert_unique(
            (int)&v19,
            a2,
            a4);
          *a1 = v19;
          return a1;
        }
LABEL_45:
        *a1 = v4;
        return a1;
      }
      v7 = (_DWORD *)v4[2];
      if ( !v7 )
        goto LABEL_26;
    }
    while ( v7[3] )
      v7 = (_DWORD *)v7[3];
    goto LABEL_8;
  }
  v16 = (_DWORD *)v4[3];
  if ( v16[4] >= *a4 )
  {
    std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,CharStateMachine::Event>,std::priv::_Select1st<std::pair<int const,CharStateMachine::Event>>,std::priv::_MapTraitsT<std::pair<int const,CharStateMachine::Event>>,std::allocator<std::pair<int const,CharStateMachine::Event>>>::insert_unique(
      (int)&v20,
      a2,
      a4);
    *a1 = v20;
  }
  else
  {
    std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,CharStateMachine::Event>,std::priv::_Select1st<std::pair<int const,CharStateMachine::Event>>,std::priv::_MapTraitsT<std::pair<int const,CharStateMachine::Event>>,std::allocator<std::pair<int const,CharStateMachine::Event>>>::_M_insert(
      a1,
      a2,
      v16,
      a4,
      0,
      (int)v4);
  }
  return a1;
}


// ===== 3c7b18 CharStateMachine::SM_RegisterEvent(int,int,int,bool (Character::*)(int,void *,int,int &)) =====
_DWORD *__fastcall CharStateMachine::SM_RegisterEvent(int a1, int a2, int a3, int a4, int a5, int a6)
{
  _DWORD *v6; // r4
  _DWORD *result; // r0
  _DWORD *v10; // r2
  int v11; // r3
  bool v12; // cc
  _DWORD *v13; // r3
  _DWORD *v14; // r12
  _DWORD *v15; // r6
  _DWORD *v16; // r2
  int v17; // r3
  bool v18; // cc
  _DWORD *v19; // r3
  _DWORD *v20; // r3
  _DWORD *v21; // r12
  _DWORD *v22; // r2
  int v23; // r3
  bool v24; // cc
  _DWORD *v25; // r3
  _DWORD *v26; // r3
  int v27[4]; // [sp+0h] [bp-30h] BYREF
  int v28[4]; // [sp+10h] [bp-20h] BYREF
  _DWORD *v29; // [sp+20h] [bp-10h] BYREF
  _DWORD *v30; // [sp+24h] [bp-Ch] BYREF
  _DWORD *v31; // [sp+28h] [bp-8h] BYREF
  _DWORD *v32; // [sp+2Ch] [bp-4h] BYREF

  v6 = *(_DWORD **)(a1 + 12);
  result = (_DWORD *)(a1 + 8);
  if ( !v6 )
  {
LABEL_39:
    v6 = result;
LABEL_12:
    if ( result != v6 )
    {
      v14 = (_DWORD *)v6[8];
      v15 = v6 + 7;
      if ( v14 )
      {
        v16 = v6 + 7;
        while ( 1 )
        {
          v17 = v14[4];
          v18 = v17 < a3;
          if ( v17 >= a3 )
            v19 = (_DWORD *)v14[2];
          else
            v19 = (_DWORD *)v14[3];
          if ( v18 )
            v14 = v16;
          v16 = v14;
          if ( !v19 )
            break;
          v14 = v19;
        }
      }
      else
      {
        v14 = v6 + 7;
      }
      if ( v15 == v14 || (v20 = v14, v14[4] > a3) )
      {
        v28[3] = -1;
        v28[1] = 0;
        v32 = v14;
        v28[0] = a3;
        v28[2] = 0;
        result = std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,CharStateMachine::Event>,std::priv::_Select1st<std::pair<int const,CharStateMachine::Event>>,std::priv::_MapTraitsT<std::pair<int const,CharStateMachine::Event>>,std::allocator<std::pair<int const,CharStateMachine::Event>>>::insert_unique(
                   &v31,
                   v6 + 7,
                   &v32,
                   v28);
        v20 = v31;
      }
      v20[5] = a5;
      v20[6] = a6;
      v21 = (_DWORD *)v6[8];
      if ( v21 )
      {
        v22 = v6 + 7;
        while ( 1 )
        {
          v23 = v21[4];
          v24 = v23 < a3;
          if ( v23 >= a3 )
            v25 = (_DWORD *)v21[2];
          else
            v25 = (_DWORD *)v21[3];
          if ( v24 )
            v21 = v22;
          v22 = v21;
          if ( !v25 )
            break;
          v21 = v25;
        }
      }
      else
      {
        v21 = v6 + 7;
      }
      if ( v15 == v21 || (v26 = v21, v21[4] > a3) )
      {
        v27[0] = a3;
        v27[3] = -1;
        v27[1] = 0;
        v30 = v21;
        v27[2] = 0;
        result = std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,CharStateMachine::Event>,std::priv::_Select1st<std::pair<int const,CharStateMachine::Event>>,std::priv::_MapTraitsT<std::pair<int const,CharStateMachine::Event>>,std::allocator<std::pair<int const,CharStateMachine::Event>>>::insert_unique(
                   &v29,
                   v6 + 7,
                   &v30,
                   v27);
        v26 = v29;
      }
      v26[7] = a4;
    }
    return result;
  }
  v10 = result;
  while ( 1 )
  {
    v11 = v6[4];
    v12 = a2 <= v11;
    if ( a2 <= v11 )
      v13 = (_DWORD *)v6[2];
    else
      v13 = (_DWORD *)v6[3];
    if ( !v12 )
      v6 = v10;
    v10 = v6;
    if ( !v13 )
      break;
    v6 = v13;
  }
  if ( result != v6 )
  {
    if ( a2 >= v6[4] )
      goto LABEL_12;
    goto LABEL_39;
  }
  return result;
}


// ===== 3c7cc0 CSLimbus::OnInit(int,Character *,CharStateMachine *) =====
_DWORD *__fastcall CSLimbus::OnInit(CSLimbus *this, int a2, Character *a3, CharStateMachine *a4)
{
  return CharStateMachine::SM_RegisterEvent((int)a3 + 1276, a2, 47, 1, (int)Character::CSM_Spawn, 0);
}


// ===== 3c7d0c CSSpawn::OnInit(int,Character *,CharStateMachine *) =====
int __fastcall CSSpawn::OnInit(CSSpawn *this, int a2, Character *a3, CharStateMachine *a4)
{
  char *v4; // r5

  v4 = (char *)a3 + 1276;
  CharStateMachine::SM_RegisterEvent((char *)a3 + 1276, a2, 34, 3, 0, 0);
  CharStateMachine::SM_RegisterEvent(v4, a2, 50008, 12, 0, 0);
  CharStateMachine::SM_RegisterEvent(v4, a2, 50010, 11, Character::CSM_Injured, 0);
  CharStateMachine::SM_RegisterEvent(v4, a2, 50011, 10, Character::CSM_Interrupted, 0);
  return CharStateMachine::SM_RegisterEvent(v4, a2, 50012, 9, Character::CSM_Interrupted, 0);
}


// ===== 3c7dfc CSDespawn::OnInit(int,Character *,CharStateMachine *) =====
int __fastcall CSDespawn::OnInit(CSDespawn *this, int a2, Character *a3, CharStateMachine *a4)
{
  char *v4; // r5

  v4 = (char *)a3 + 1276;
  CharStateMachine::SM_RegisterEvent((char *)a3 + 1276, a2, 64, 0, 0, 0);
  return CharStateMachine::SM_RegisterEvent(v4, a2, 34, 0, 0, 0);
}


// ===== 3c7e60 CSIdle::OnInit(int,Character *,CharStateMachine *) =====
int __fastcall CSIdle::OnInit(CSIdle *this, int a2, Character *a3, CharStateMachine *a4)
{
  char *v4; // r5
  int result; // r0

  v4 = (char *)a3 + 1276;
  CharStateMachine::SM_RegisterEvent((char *)a3 + 1276, a2, 35, 3, 0, 0);
  CharStateMachine::SM_RegisterEvent(v4, a2, 34, 3, 0, 0);
  CharStateMachine::SM_RegisterEvent(v4, a2, 50008, 12, 0, 0);
  CharStateMachine::SM_RegisterEvent(v4, a2, 50010, 11, Character::CSM_Injured, 0);
  CharStateMachine::SM_RegisterEvent(v4, a2, 50011, 10, Character::CSM_Interrupted, 0);
  CharStateMachine::SM_RegisterEvent(v4, a2, 50012, 9, Character::CSM_Interrupted, 0);
  CharStateMachine::SM_RegisterEvent(v4, a2, 50013, 8, Character::CSM_Interrupted, 0);
  CharStateMachine::SM_RegisterEvent(v4, a2, 50006, 7, 0, 0);
  CharStateMachine::SM_RegisterEvent(v4, a2, 50005, 6, 0, 0);
  CharStateMachine::SM_RegisterEvent(v4, a2, 50004, 5, Character::CSM_Attack, 0);
  CharStateMachine::SM_RegisterEvent(v4, a2, 50001, 4, 0, 0);
  CharStateMachine::SM_RegisterEvent(v4, a2, 50002, 3, 0, 0);
  CharStateMachine::SM_RegisterEvent(v4, a2, 50003, 13, 0, 0);
  result = CharStateMachine::SM_RegisterEvent(v4, a2, 50007, 15, 0, 0);
  *((_BYTE *)a3 + 1336) = 0;
  return result;
}


// ===== 3c80ac CSMove::OnInit(int,Character *,CharStateMachine *) =====
int __fastcall CSMove::OnInit(CSMove *this, int a2, Character *a3, CharStateMachine *a4)
{
  char *v4; // r5

  v4 = (char *)a3 + 1276;
  CharStateMachine::SM_RegisterEvent((char *)a3 + 1276, a2, 63, 3, 0, 0);
  CharStateMachine::SM_RegisterEvent(v4, a2, 50008, 12, 0, 0);
  CharStateMachine::SM_RegisterEvent(v4, a2, 50010, 11, Character::CSM_Injured, 0);
  CharStateMachine::SM_RegisterEvent(v4, a2, 50011, 10, Character::CSM_Interrupted, 0);
  CharStateMachine::SM_RegisterEvent(v4, a2, 50012, 9, Character::CSM_Interrupted, 0);
  CharStateMachine::SM_RegisterEvent(v4, a2, 50013, 8, Character::CSM_Interrupted, 0);
  CharStateMachine::SM_RegisterEvent(v4, a2, 50006, 7, 0, 0);
  CharStateMachine::SM_RegisterEvent(v4, a2, 50005, 6, 0, 0);
  CharStateMachine::SM_RegisterEvent(v4, a2, 50004, 5, Character::CSM_Attack, 0);
  CharStateMachine::SM_RegisterEvent(v4, a2, 50003, 13, 0, 0);
  return CharStateMachine::SM_RegisterEvent(v4, a2, 50007, 15, 0, 0);
}


// ===== 3c8284 CSAttack::OnInit(int,Character *,CharStateMachine *) =====
int __fastcall CSAttack::OnInit(CSAttack *this, int a2, Character *a3, CharStateMachine *a4)
{
  char *v4; // r5

  v4 = (char *)a3 + 1276;
  CharStateMachine::SM_RegisterEvent((char *)a3 + 1276, a2, 34, 3, 0, 0);
  CharStateMachine::SM_RegisterEvent(v4, a2, 50008, 12, 0, 0);
  CharStateMachine::SM_RegisterEvent(v4, a2, 50005, 6, 0, 0);
  CharStateMachine::SM_RegisterEvent(v4, a2, 50006, 7, 0, 0);
  CharStateMachine::SM_RegisterEvent(v4, a2, 50010, 11, Character::CSM_Injured, 0);
  CharStateMachine::SM_RegisterEvent(v4, a2, 50011, 10, Character::CSM_Interrupted, 0);
  CharStateMachine::SM_RegisterEvent(v4, a2, 50012, 9, Character::CSM_Interrupted, 0);
  CharStateMachine::SM_RegisterEvent(v4, a2, 50013, 8, Character::CSM_Interrupted, 0);
  CharStateMachine::SM_RegisterEvent(v4, a2, 50001, 4, Character::CSM_StoppedAttacking, 0);
  return CharStateMachine::SM_RegisterEvent(v4, a2, 50007, 15, 0, 0);
}


// ===== 3c8438 CSSkill::OnInit(int,Character *,CharStateMachine *) =====
_DWORD *__fastcall CSSkill::OnInit(CSSkill *this, int a2, Character *a3, CharStateMachine *a4)
{
  char *v4; // r5

  v4 = (char *)a3 + 1276;
  CharStateMachine::SM_RegisterEvent((int)a3 + 1276, a2, 34, 3, 0, 0);
  CharStateMachine::SM_RegisterEvent((int)v4, a2, 50008, 12, 0, 0);
  CharStateMachine::SM_RegisterEvent((int)v4, a2, 50001, 4, (int)Character::CSM_StopSkill, 0);
  CharStateMachine::SM_RegisterEvent((int)v4, a2, 50004, 5, (int)Character::CSM_StopSkill, 0);
  CharStateMachine::SM_RegisterEvent((int)v4, a2, 50005, 6, (int)Character::CSM_StopSkill, 0);
  CharStateMachine::SM_RegisterEvent((int)v4, a2, 50010, 11, (int)Character::CSM_Interrupted, 0);
  CharStateMachine::SM_RegisterEvent((int)v4, a2, 50012, 9, (int)Character::CSM_Interrupted, 0);
  CharStateMachine::SM_RegisterEvent((int)v4, a2, 50013, 8, (int)Character::CSM_Interrupted, 0);
  return CharStateMachine::SM_RegisterEvent((int)v4, a2, 50011, 10, (int)Character::CSM_Interrupted, 0);
}


// ===== 3c85b8 CSCast::OnInit(int,Character *,CharStateMachine *) =====
_DWORD *__fastcall CSCast::OnInit(CSCast *this, int a2, Character *a3, CharStateMachine *a4)
{
  char *v4; // r5

  v4 = (char *)a3 + 1276;
  CharStateMachine::SM_RegisterEvent((int)a3 + 1276, a2, 34, 3, 0, 0);
  return CharStateMachine::SM_RegisterEvent((int)v4, a2, 50008, 12, 0, 0);
}


// ===== 3c861c CSScared::OnInit(int,Character *,CharStateMachine *) =====
int __fastcall CSScared::OnInit(CSScared *this, int a2, Character *a3, CharStateMachine *a4)
{
  char *v4; // r5

  v4 = (char *)a3 + 1276;
  CharStateMachine::SM_RegisterEvent((char *)a3 + 1276, a2, 44, 3, 0, 0);
  CharStateMachine::SM_RegisterEvent(v4, a2, 34, 3, 0, 0);
  CharStateMachine::SM_RegisterEvent(v4, a2, 50008, 12, 0, 0);
  CharStateMachine::SM_RegisterEvent(v4, a2, 50010, 11, Character::CSM_Injured, 0);
  CharStateMachine::SM_RegisterEvent(v4, a2, 50011, 10, Character::CSM_Interrupted, 0);
  return CharStateMachine::SM_RegisterEvent(v4, a2, 50012, 9, Character::CSM_Interrupted, 0);
}


// ===== 3c8730 CSStunned::OnInit(int,Character *,CharStateMachine *) =====
int __fastcall CSStunned::OnInit(CSStunned *this, int a2, Character *a3, CharStateMachine *a4)
{
  char *v4; // r6

  v4 = (char *)a3 + 1276;
  CharStateMachine::SM_RegisterEvent((char *)a3 + 1276, a2, 50008, 12, 0, 0);
  CharStateMachine::SM_RegisterEvent(v4, a2, 50010, 11, Character::CSM_Injured, 0);
  return CharStateMachine::SM_RegisterEvent(v4, a2, 50011, 10, Character::CSM_Interrupted, 0);
}


// ===== 3c87d8 CSKnockedBack::OnInit(int,Character *,CharStateMachine *) =====
int __fastcall CSKnockedBack::OnInit(CSKnockedBack *this, int a2, Character *a3, CharStateMachine *a4)
{
  char *v4; // r6

  v4 = (char *)a3 + 1276;
  CharStateMachine::SM_RegisterEvent((char *)a3 + 1276, a2, 34, 3, 0, 0);
  return CharStateMachine::SM_RegisterEvent(v4, a2, 50008, 12, Character::CSM_Interrupted, 0);
}


// ===== 3c8850 CSInjured::OnInit(int,Character *,CharStateMachine *) =====
int __fastcall CSInjured::OnInit(CSInjured *this, int a2, Character *a3, CharStateMachine *a4)
{
  char *v4; // r5

  v4 = (char *)a3 + 1276;
  CharStateMachine::SM_RegisterEvent((char *)a3 + 1276, a2, 34, 3, 0, 0);
  CharStateMachine::SM_RegisterEvent(v4, a2, 50008, 12, 0, 0);
  CharStateMachine::SM_RegisterEvent(v4, a2, 50010, 11, 0, 0);
  CharStateMachine::SM_RegisterEvent(v4, a2, 50011, 10, 0, 0);
  return CharStateMachine::SM_RegisterEvent(v4, a2, 50005, 6, 0, 0);
}


// ===== 3c8920 CSDead::OnInit(int,Character *,CharStateMachine *) =====
_DWORD *__fastcall CSDead::OnInit(CSDead *this, int a2, Character *a3, CharStateMachine *a4)
{
  char *v4; // r5

  v4 = (char *)a3 + 1276;
  CharStateMachine::SM_RegisterEvent((int)a3 + 1276, a2, 46, 2, 0, 0);
  return CharStateMachine::SM_RegisterEvent((int)v4, a2, 50009, 16, 0, 0);
}


// ===== 3c8984 CSInteract::OnInit(int,Character *,CharStateMachine *) =====
int __fastcall CSInteract::OnInit(CSInteract *this, int a2, Character *a3, CharStateMachine *a4)
{
  char *v4; // r5

  v4 = (char *)a3 + 1276;
  CharStateMachine::SM_RegisterEvent((char *)a3 + 1276, a2, 34, 3, Character::CSM_AfterInteraction, 0);
  CharStateMachine::SM_RegisterEvent(v4, a2, 50008, 12, 0, 0);
  CharStateMachine::SM_RegisterEvent(v4, a2, 50010, 11, 0, 0);
  CharStateMachine::SM_RegisterEvent(v4, a2, 50011, 10, 0, 0);
  CharStateMachine::SM_RegisterEvent(v4, a2, 50012, 9, 0, 0);
  CharStateMachine::SM_RegisterEvent(v4, a2, 50013, 8, 0, 0);
  CharStateMachine::SM_RegisterEvent(v4, a2, 50005, 6, Character::CSM_CanStopInteraction, 0);
  CharStateMachine::SM_RegisterEvent(v4, a2, 50001, 4, Character::CSM_CanStopInteraction, 0);
  CharStateMachine::SM_RegisterEvent(v4, a2, 50002, 3, Character::CSM_CanStopInteraction, 0);
  return CharStateMachine::SM_RegisterEvent(v4, a2, 50007, 15, Character::CSM_CanStopInteraction, 0);
}


// ===== 3c8b28 CSAnim::OnInit(int,Character *,CharStateMachine *) =====
int __fastcall CSAnim::OnInit(CSAnim *this, int a2, Character *a3, CharStateMachine *a4)
{
  char *v4; // r5

  v4 = (char *)a3 + 1276;
  CharStateMachine::SM_RegisterEvent((char *)a3 + 1276, a2, 50001, 4, 0, 0);
  return CharStateMachine::SM_RegisterEvent(v4, a2, 50005, 6, 0, 0);
}


// ===== 3c8b8c CSReviving::OnInit(int,Character *,CharStateMachine *) =====
_DWORD *__fastcall CSReviving::OnInit(CSReviving *this, int a2, Character *a3, CharStateMachine *a4)
{
  char *v4; // r5

  v4 = (char *)a3 + 1276;
  CharStateMachine::SM_RegisterEvent((int)a3 + 1276, a2, 34, 3, 0, 0);
  CharStateMachine::SM_RegisterEvent((int)v4, a2, 50008, 12, 0, 0);
  CharStateMachine::SM_RegisterEvent((int)v4, a2, 50005, 6, 0, 0);
  CharStateMachine::SM_RegisterEvent((int)v4, a2, 50010, 11, (int)Character::CSM_Injured, 0);
  CharStateMachine::SM_RegisterEvent((int)v4, a2, 50011, 10, (int)Character::CSM_Interrupted, 0);
  CharStateMachine::SM_RegisterEvent((int)v4, a2, 50012, 9, (int)Character::CSM_Interrupted, 0);
  CharStateMachine::SM_RegisterEvent((int)v4, a2, 50013, 8, (int)Character::CSM_Interrupted, 0);
  return CharStateMachine::SM_RegisterEvent((int)v4, a2, 50001, 4, 0, 0);
}


// ===== 3c8cec CSRevived::OnInit(int,Character *,CharStateMachine *) =====
_DWORD *__fastcall CSRevived::OnInit(CSRevived *this, int a2, Character *a3, CharStateMachine *a4)
{
  return CharStateMachine::SM_RegisterEvent((int)a3 + 1276, a2, 34, 3, 0, 0);
}


// ===== 3c8d24 CSPreSpawn::OnInit(int,Character *,CharStateMachine *) =====
_DWORD *__fastcall CSPreSpawn::OnInit(CSPreSpawn *this, int a2, Character *a3, CharStateMachine *a4)
{
  return CharStateMachine::SM_RegisterEvent((int)a3 + 1276, a2, 45, 1, 0, 0);
}


// ===== 3c8d5c CSLiftingIdle::OnInit(int,Character *,CharStateMachine *) =====
_DWORD *__fastcall CSLiftingIdle::OnInit(CSLiftingIdle *this, int a2, Character *a3, CharStateMachine *a4)
{
  char *v4; // r5

  v4 = (char *)a3 + 1276;
  CharStateMachine::SM_RegisterEvent((int)a3 + 1276, a2, 35, 18, 0, 0);
  CharStateMachine::SM_RegisterEvent((int)v4, a2, 34, 18, 0, 0);
  CharStateMachine::SM_RegisterEvent((int)v4, a2, 50008, 12, 0, 0);
  CharStateMachine::SM_RegisterEvent((int)v4, a2, 50010, 11, (int)Character::CSM_Injured, 0);
  CharStateMachine::SM_RegisterEvent((int)v4, a2, 50011, 10, (int)Character::CSM_Interrupted, 0);
  CharStateMachine::SM_RegisterEvent((int)v4, a2, 50012, 9, (int)Character::CSM_Interrupted, 0);
  CharStateMachine::SM_RegisterEvent((int)v4, a2, 50013, 8, (int)Character::CSM_Interrupted, 0);
  CharStateMachine::SM_RegisterEvent((int)v4, a2, 50001, 19, 0, 0);
  return CharStateMachine::SM_RegisterEvent((int)v4, a2, 50002, 18, 0, 0);
}


// ===== 3c8ee0 CSLiftingMove::OnInit(int,Character *,CharStateMachine *) =====
_DWORD *__fastcall CSLiftingMove::OnInit(CSLiftingMove *this, int a2, Character *a3, CharStateMachine *a4)
{
  char *v4; // r5

  v4 = (char *)a3 + 1276;
  CharStateMachine::SM_RegisterEvent((int)a3 + 1276, a2, 63, 18, 0, 0);
  CharStateMachine::SM_RegisterEvent((int)v4, a2, 50008, 12, 0, 0);
  CharStateMachine::SM_RegisterEvent((int)v4, a2, 50010, 11, (int)Character::CSM_Injured, 0);
  CharStateMachine::SM_RegisterEvent((int)v4, a2, 50011, 10, (int)Character::CSM_Interrupted, 0);
  CharStateMachine::SM_RegisterEvent((int)v4, a2, 50012, 9, (int)Character::CSM_Interrupted, 0);
  return CharStateMachine::SM_RegisterEvent((int)v4, a2, 50013, 8, (int)Character::CSM_Interrupted, 0);
}


// ===== 3c8ff4 CharAnimator::CharAnimator(void) =====
void __fastcall CharAnimator::CharAnimator(CharAnimator *this)
{
  *(_DWORD *)this = off_966778;
  *((_BYTE *)this + 92) = 0;
  *((_DWORD *)this + 16) = 1065353216;
  *((_BYTE *)this + 72) = 1;
  *((_DWORD *)this + 20) = -1;
  *((_DWORD *)this + 1) = 0;
  *((_DWORD *)this + 11) = 0;
  *((_BYTE *)this + 48) = 0;
  *((_DWORD *)this + 13) = 1065353216;
  *((_BYTE *)this + 56) = 0;
  *((_DWORD *)this + 15) = -1;
  *((_DWORD *)this + 17) = 0;
  *((_BYTE *)this + 73) = 0;
  *((_BYTE *)this + 74) = 0;
  *((_BYTE *)this + 84) = 0;
  *((_DWORD *)this + 22) = 0;
}


// ===== 3c906c CharAnimator::CharAnimator(void) =====
void __fastcall CharAnimator::CharAnimator(CharAnimator *this)
{
  *(_DWORD *)this = off_966778;
  *((_BYTE *)this + 92) = 0;
  *((_DWORD *)this + 16) = 1065353216;
  *((_BYTE *)this + 72) = 1;
  *((_DWORD *)this + 20) = -1;
  *((_DWORD *)this + 1) = 0;
  *((_DWORD *)this + 11) = 0;
  *((_BYTE *)this + 48) = 0;
  *((_DWORD *)this + 13) = 1065353216;
  *((_BYTE *)this + 56) = 0;
  *((_DWORD *)this + 15) = -1;
  *((_DWORD *)this + 17) = 0;
  *((_BYTE *)this + 73) = 0;
  *((_BYTE *)this + 74) = 0;
  *((_BYTE *)this + 84) = 0;
  *((_DWORD *)this + 22) = 0;
}


// ===== 3c90e4 CharAnimator::~CharAnimator() =====
void __fastcall CharAnimator::~CharAnimator(CharAnimator *this)
{
  ;
}


// ===== 3c90e8 CharAnimator::~CharAnimator() =====
void __fastcall CharAnimator::~CharAnimator(CharAnimator *this)
{
  ;
}


// ===== 3c90ec CharAnimator::__Callback(glitch::scene::ITimelineController *,void *) =====
void __fastcall CharAnimator::__Callback(int a1, int a2)
{
  *(_BYTE *)(a2 + 73) = 1;
}


// ===== 3c90f8 CharAnimator::CalculateExtraTime(glitch::scene::ITimelineController *) =====
int __fastcall CharAnimator::CalculateExtraTime(int this, glitch::scene::ITimelineController *a2)
{
  int v2; // r5
  int v3; // r6
  int v4; // r3
  int v5; // r3
  _BOOL4 v6; // r2

  v2 = this;
  if ( a2 )
  {
    v3 = (int)(float)(*((float *)a2 + 7) * 1000.0);
    this = (int)(float)(*((float *)a2 + 11) * 1000.0);
    v4 = *((_DWORD *)a2 + 1);
    *(_DWORD *)(v2 + 68) = 0;
    v5 = this - v4;
    v6 = v5 < v3;
    if ( v5 < 0 )
      v6 = 0;
    if ( v6 )
      *(_DWORD *)(v2 + 68) = v3 - v5;
  }
  return this;
}


// ===== 3c9168 CharAnimator::IncAnimSetUsers(void) =====
glitch::IReferenceCounted *__fastcall CharAnimator::IncAnimSetUsers(glitch::IReferenceCounted *this)
{
  int v1; // r3
  glitch::IReferenceCounted *v2; // [sp+4h] [bp-8h] BYREF

  v1 = *(_DWORD *)(*((_DWORD *)this + 1) + 728);
  if ( v1 )
  {
    this = (glitch::IReferenceCounted *)(*(int (__fastcall **)(glitch::IReferenceCounted **, _DWORD))(**(_DWORD **)(v1 + 56) + 8))(
                                          &v2,
                                          *(_DWORD *)(v1 + 56));
    if ( v2 )
    {
      ++*((_DWORD *)v2 + 9);
      this = v2;
      if ( v2 )
        return (glitch::IReferenceCounted *)glitch::IReferenceCounted::drop(v2);
    }
  }
  return this;
}


// ===== 3c91c8 CharAnimator::DecAnimSetUsers(void) =====
glitch::IReferenceCounted *__fastcall CharAnimator::DecAnimSetUsers(glitch::IReferenceCounted *this)
{
  int v1; // r3
  glitch::IReferenceCounted *v2; // [sp+4h] [bp-8h] BYREF

  v1 = *(_DWORD *)(*((_DWORD *)this + 1) + 728);
  if ( v1 )
  {
    this = (glitch::IReferenceCounted *)(*(int (__fastcall **)(glitch::IReferenceCounted **, _DWORD))(**(_DWORD **)(v1 + 56) + 8))(
                                          &v2,
                                          *(_DWORD *)(v1 + 56));
    if ( v2 )
    {
      --*((_DWORD *)v2 + 9);
      this = v2;
      if ( v2 )
        return (glitch::IReferenceCounted *)glitch::IReferenceCounted::drop(v2);
    }
  }
  return this;
}


// ===== 3c9228 CharAnimator::ANIM_IsUnique(void) =====
bool __fastcall CharAnimator::ANIM_IsUnique(CharAnimator *this)
{
  return !*((_BYTE *)this + 72)
      && *(_DWORD *)(Arrays::AnimTable::members + 20 * *((_DWORD *)this + 3 * *((_DWORD *)this + 11) + 2) + 16) == 0;
}


// ===== 3c927c CharAnimator::ANIM_IsRandom(void) =====
bool __fastcall CharAnimator::ANIM_IsRandom(CharAnimator *this)
{
  return !*((_BYTE *)this + 72)
      && *(_DWORD *)(Arrays::AnimTable::members + 20 * *((_DWORD *)this + 3 * *((_DWORD *)this + 11) + 2) + 16) == 2;
}


// ===== 3c92d4 CharAnimator::ANIM_IsSequence(void) =====
bool __fastcall CharAnimator::ANIM_IsSequence(CharAnimator *this)
{
  return !*((_BYTE *)this + 72)
      && *(_DWORD *)(Arrays::AnimTable::members + 20 * *((_DWORD *)this + 3 * *((_DWORD *)this + 11) + 2) + 16) == 1;
}


// ===== 3c932c CharAnimator::ANIM_GetStepIndex(void) =====
int __fastcall CharAnimator::ANIM_GetStepIndex(int this, int a2, int a3)
{
  int v3; // r3
  bool v4; // zf

  v3 = *(unsigned __int8 *)(this + 72);
  v4 = v3 == 0;
  if ( *(_BYTE *)(this + 72) )
  {
    this = -1;
  }
  else
  {
    v3 = *(_DWORD *)(this + 44);
    a3 = 12;
  }
  if ( v4 )
    return *(_DWORD *)(this + a3 * v3 + 16);
  return this;
}


// ===== 3c934c CharAnimator::ANIM_GetStepCount(void) =====
int __fastcall CharAnimator::ANIM_GetStepCount(CharAnimator *this)
{
  if ( *((_BYTE *)this + 72) )
    return 0;
  else
    return *(_DWORD *)(Arrays::AnimTable::members + 20 * *((_DWORD *)this + 3 * *((_DWORD *)this + 11) + 2) + 8);
}


// ===== 3c9398 CharAnimator::ANIM_GetCurrentlyPlayedAnimDict(void) =====
int __fastcall CharAnimator::ANIM_GetCurrentlyPlayedAnimDict(CharAnimator *this)
{
  int v2; // r2
  int v3; // r4

  if ( *((_BYTE *)this + 72) )
    return -1;
  v2 = *((_DWORD *)this + 3 * *((_DWORD *)this + 11) + 2);
  v3 = Arrays::AnimTable::members + 20 * v2;
  return *(_DWORD *)(*(_DWORD *)(v3 + 12) + 56 * CharAnimator::ANIM_GetStepIndex((int)this, 15484, v2) + 8);
}


// ===== 3c93fc CharAnimator::ANIM_SetSpeed(float) =====
int __fastcall CharAnimator::ANIM_SetSpeed(int this, float a2)
{
  int v2; // r2
  int v3; // r2

  v2 = *(_DWORD *)(this + 4);
  *(float *)(this + 64) = a2;
  v3 = *(_DWORD *)(v2 + 728);
  if ( v3 )
    return (*(int (__fastcall **)(_DWORD, _DWORD, _DWORD))(**(_DWORD **)(v3 + 56) + 40))(
             *(_DWORD *)(v3 + 56),
             a2 * *(float *)(this + 52),
             0);
  return this;
}


// ===== 3c9444 CharAnimator::ANIM_SkipNextStep(uint) =====
int __fastcall CharAnimator::ANIM_SkipNextStep(int this, unsigned int a2)
{
  if ( !*(_BYTE *)(this + 72) )
  {
    this += 12 * a2;
    ++*(_DWORD *)(this + 16);
  }
  return this;
}


// ===== 3c9464 CharAnimator::ANIM_SkipNextStep(void) =====
int __fastcall CharAnimator::ANIM_SkipNextStep(CharAnimator *this)
{
  return CharAnimator::ANIM_SkipNextStep((int)this, *((_DWORD *)this + 11));
}


// ===== 3c946c CharAnimator::ANIM_SetStep(uint,uint) =====
int __fastcall CharAnimator::ANIM_SetStep(int this, unsigned int a2, unsigned int a3)
{
  if ( !*(_BYTE *)(this + 72) )
  {
    this += 12 * a3;
    *(_DWORD *)(this + 16) = a2;
  }
  return this;
}


// ===== 3c9484 CharAnimator::ANIM_SetStep(uint) =====
int __fastcall CharAnimator::ANIM_SetStep(CharAnimator *this, unsigned int a2)
{
  return CharAnimator::ANIM_SetStep((int)this, a2, *((_DWORD *)this + 11));
}


// ===== 3c948c CharAnimator::ANIM_StopLoop(bool) =====
int __fastcall CharAnimator::ANIM_StopLoop(int this, int a2)
{
  if ( !*(_BYTE *)(this + 72) )
  {
    *(_DWORD *)(this + 12 * *(_DWORD *)(this + 44) + 12) = *(unsigned __int8 *)(this + 72);
    if ( a2 )
      *(_BYTE *)(this + 74) = 1;
  }
  return this;
}


// ===== 3c94b8 CharAnimator::_PlayItemSwooshSFX(ItemInstance *) =====
int __fastcall CharAnimator::_PlayItemSwooshSFX(GameObject **this, ItemInstance *a2)
{
  int v3; // r7
  int v4; // r8
  char *TargetPosition; // r0
  float v6; // r5
  float v7; // lr
  float v9[3]; // [sp+14h] [bp-Ch] BYREF

  if ( !a2 )
    return 0;
  v3 = *(_DWORD *)(ItemInstance::GetItem(a2) + 20);
  if ( v3 == -1 )
    return 0;
  v4 = VoxSoundManager::s_instance;
  TargetPosition = GameObject::GetTargetPosition(*(this + 1));
  v6 = *((float *)TargetPosition + 1);
  v7 = *((float *)TargetPosition + 2);
  v9[0] = *(float *)TargetPosition;
  v9[1] = v6;
  v9[2] = v7;
  VoxSoundManager::Play3D(v4, v3, v9, 0, COERCE_FLOAT(1), -1.0, -1.0);
  return 1;
}


// ===== 3c955c CharAnimator::_PlayItemSwooshFX(ItemInstance *,bool) =====
int __fastcall CharAnimator::_PlayItemSwooshFX(CharAnimator *this, ItemInstance *a2, int a3)
{
  int Item; // r0
  int v6; // r7
  int *TargetPosition; // r0

  if ( !a2 )
    return 0;
  Item = ItemInstance::GetItem(a2);
  v6 = *(_DWORD *)(Item + 24);
  if ( v6 == -1 )
    return 0;
  if ( a3 )
  {
    VisualFXManager::PlayAnimFXSet(
      &Singleton<VisualFXManager>::s_inst,
      *(_DWORD *)(Item + 24),
      *((_DWORD *)this + 1),
      0);
  }
  else
  {
    TargetPosition = (int *)GameObject::GetTargetPosition(*((GameObject **)this + 1));
    VisualFXManager::PlayAnimFXSet(
      (int)&Singleton<VisualFXManager>::s_inst,
      v6,
      TargetPosition,
      (int *)(*((_DWORD *)this + 1) + 364),
      0,
      0);
  }
  return 1;
}


// ===== 3c9600 CharAnimator::ANIM_IsSequence(uint) =====
bool __fastcall CharAnimator::ANIM_IsSequence(CharAnimator *this, unsigned int a2)
{
  if ( *((_BYTE *)this + 72) )
    return 0;
  if ( *((_DWORD *)this + 11) < a2 )
  {
    if ( gAssertLevel == 2 )
    {
      *(_DWORD *)*((unsigned __int8 *)this + 72) = *((unsigned __int8 *)this + 72);
    }
    else if ( gAssertLevel == 1 )
    {
      fprintf(
        (FILE *)&_sF + 2,
        "ASSERT(%s) FAILED: %s:%d\n",
        "stackIdx <= m_animStackIdx",
        "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Objects\\Characters\\Animator\\CharAnimator.cpp",
        745);
    }
  }
  return *(_DWORD *)(Arrays::AnimTable::members + 20 * *((_DWORD *)this + 3 * a2 + 2) + 16) == 1;
}


// ===== 3c96dc CharAnimator::ANIM_IsRandom(uint) =====
bool __fastcall CharAnimator::ANIM_IsRandom(CharAnimator *this, unsigned int a2)
{
  if ( *((_BYTE *)this + 72) )
    return 0;
  if ( *((_DWORD *)this + 11) < a2 )
  {
    if ( gAssertLevel == 2 )
    {
      *(_DWORD *)*((unsigned __int8 *)this + 72) = *((unsigned __int8 *)this + 72);
    }
    else if ( gAssertLevel == 1 )
    {
      fprintf(
        (FILE *)&_sF + 2,
        "ASSERT(%s) FAILED: %s:%d\n",
        "stackIdx <= m_animStackIdx",
        "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Objects\\Characters\\Animator\\CharAnimator.cpp",
        726);
    }
  }
  return *(_DWORD *)(Arrays::AnimTable::members + 20 * *((_DWORD *)this + 3 * a2 + 2) + 16) == 2;
}


// ===== 3c97b8 CharAnimator::ANIM_IsUnique(uint) =====
bool __fastcall CharAnimator::ANIM_IsUnique(CharAnimator *this, unsigned int a2)
{
  if ( *((_BYTE *)this + 72) )
    return 0;
  if ( *((_DWORD *)this + 11) < a2 )
  {
    if ( gAssertLevel == 2 )
    {
      *(_DWORD *)*((unsigned __int8 *)this + 72) = *((unsigned __int8 *)this + 72);
    }
    else if ( gAssertLevel == 1 )
    {
      fprintf(
        (FILE *)&_sF + 2,
        "ASSERT(%s) FAILED: %s:%d\n",
        "stackIdx <= m_animStackIdx",
        "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Objects\\Characters\\Animator\\CharAnimator.cpp",
        707);
    }
  }
  return *(_DWORD *)(Arrays::AnimTable::members + 20 * *((_DWORD *)this + 3 * a2 + 2) + 16) == 0;
}


// ===== 3c9890 CharAnimator::SetCharacter(Character *) =====
int __fastcall CharAnimator::SetCharacter(int this, Character *a2)
{
  int v3; // r5

  v3 = this;
  if ( !a2 )
  {
    if ( gAssertLevel == 2 )
    {
      dword_0 = 0;
    }
    else if ( gAssertLevel == 1 )
    {
      this = fprintf(
               (FILE *)&_sF + 2,
               "ASSERT(%s) FAILED: %s:%d\n",
               "c",
               "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Objects\\Characters\\Animator\\CharAnimator.cpp",
               433);
    }
  }
  *(_DWORD *)(v3 + 4) = a2;
  return this;
}


// ===== 3c9924 CharAnimator::ANIM_Stop(void) =====
int __fastcall CharAnimator::ANIM_Stop(int this)
{
  int v1; // r3
  int v2; // r3
  int v3; // r4
  char *v4; // r2
  Character *v5; // r0

  v1 = *(_DWORD *)(this + 4);
  *(_DWORD *)(this + 44) = 0;
  v2 = *(_DWORD *)(v1 + 728);
  v3 = this;
  if ( v2 )
  {
    this = (*(int (__fastcall **)(_DWORD, int))(**(_DWORD **)(v2 + 56) + 36))(*(_DWORD *)(v2 + 56), 1);
    v4 = (char *)*(unsigned __int8 *)(v3 + 72);
    if ( !*(_BYTE *)(v3 + 72) )
    {
      v5 = *(Character **)(v3 + 4);
      *(_BYTE *)(v3 + 72) = 1;
      return Character::RaiseEvent(v5, 34, v4);
    }
  }
  return this;
}


// ===== 3c9984 CharAnimator::__CallbackEvent(glitch::collada::STriggeredEvent const&,void *) =====
int __fastcall CharAnimator::__CallbackEvent(int *a1, int a2)
{
  int v2; // r2
  Character *v4; // r0

  v2 = *a1;
  v4 = *(Character **)(a2 + 4);
  *(_DWORD *)(a2 + 88) = v2;
  return Character::RaiseEvent(v4, 40, (char *)a1[1]);
}


// ===== 3c99a0 CharAnimator::ANIM_AddSetToRenderObject(void) =====
Character *__fastcall CharAnimator::ANIM_AddSetToRenderObject(CharAnimator *this)
{
  Character *result; // r0
  int v3; // r7
  RootSceneNode *v4; // r10
  AnimSetController *v5; // r8
  int Switch; // r10
  RootSceneNode *v7; // r10
  BlendedAnimSetController *v8; // r8
  std::priv::_String_base<char,std::allocator<char> > v9; // [sp+Ch] [bp-20h] BYREF

  result = *((Character **)this + 1);
  v3 = *((_DWORD *)result + 182);
  if ( v3 )
  {
    if ( Character::IsFaerie(result)
      || (DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst),
          std::string::string((std::string *)&v9, "AnimationBlendingDisabled"),
          Switch = DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, (const std::string *)&v9),
          std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v9),
          Switch) )
    {
      v4 = *(RootSceneNode **)(v3 + 8);
      v5 = (AnimSetController *)operator new(0x14u, 0);
      AnimSetController::AnimSetController(v5, v4, *((_DWORD *)this + 15));
      VisualObject::SetAnimController(v3, (int)v5);
      *((_BYTE *)this + 84) = 0;
    }
    else
    {
      v7 = *(RootSceneNode **)(v3 + 8);
      v8 = (BlendedAnimSetController *)operator new(0x18u, 0);
      BlendedAnimSetController::BlendedAnimSetController(v8, v7, *((_DWORD *)this + 15));
      VisualObject::SetAnimController(v3, (int)v8);
      *((_BYTE *)this + 84) = 1;
    }
    return (Character *)(*(int (__fastcall **)(_DWORD, void (__fastcall *)(int, int), CharAnimator *, int (__fastcall *)(int *, int), CharAnimator *))(**(_DWORD **)(v3 + 56) + 44))(
                          *(_DWORD *)(v3 + 56),
                          CharAnimator::__Callback,
                          this,
                          CharAnimator::__CallbackEvent,
                          this);
  }
  return result;
}


// ===== 3c9af8 CharAnimator::~CharAnimator() =====
void __fastcall CharAnimator::~CharAnimator(CharAnimator *this)
{
  CharAnimator::~CharAnimator(this);
  CustomFree(this);
}


// ===== 3c9b14 CharAnimator::ANIM_AddAnimDictToSet(int) =====
int __fastcall CharAnimator::ANIM_AddAnimDictToSet(int this, int a2)
{
  int v2; // r5

  v2 = this;
  if ( !*(_BYTE *)(this + 56) )
  {
    if ( *(_DWORD *)(this + 60) == -1 )
    {
      this = Character::GetCharUniqueAnimSetId(*(Character **)(this + 4));
      *(_DWORD *)(v2 + 60) = this;
    }
    if ( a2 >= 0 )
      return AnimSetManager::AddAnim((AnimSetManager *)&Singleton<AnimSetManager>::s_inst, *(_DWORD *)(v2 + 60), a2);
  }
  return this;
}


// ===== 3c9b7c CharAnimator::_CompileAnimSet(void) =====
int __fastcall CharAnimator::_CompileAnimSet(int this)
{
  int v1; // r5
  int CharAnimTableId; // r8
  int v3; // r7
  int v4; // r0
  char v5[4]; // [sp+Ch] [bp-404h] BYREF

  v1 = this;
  if ( !*(_BYTE *)(this + 56) )
  {
    if ( *(_DWORD *)(this + 60) == -1 )
      *(_DWORD *)(this + 60) = Character::GetCharUniqueAnimSetId(*(Character **)(this + 4));
    *(_BYTE *)(v1 + 56) = 1;
    CharAnimator::ANIM_AddSetToRenderObject((CharAnimator *)v1);
    CharAnimTableId = Character::GetCharAnimTableId(*(Character **)(v1 + 4));
    v3 = Arrays::CharAnimTable::m_memberNames;
    v4 = Character::GetCharAnimTableId(*(Character **)(v1 + 4));
    sprintf(
      v5,
      "CharAnimTable: (%d) %s || CharacterTable: (%d) %s",
      CharAnimTableId,
      *(const char **)(v3 + 4 * v4),
      *(__int16 *)(*(_DWORD *)(v1 + 4) + 5064),
      *(const char **)(*(_DWORD *)(v1 + 4) + 5060));
    return AnimSetManager::DBG_SetName((AnimSetManager *)&Singleton<AnimSetManager>::s_inst, *(_DWORD *)(v1 + 60), v5);
  }
  return this;
}


// ===== 3c9c7c CharAnimator::_AddTemplateAnimTable(int,int,uint) =====
int __fastcall CharAnimator::_AddTemplateAnimTable(CharAnimator *this, int a2, int a3, unsigned int a4)
{
  int v5; // r2
  int v6; // r5
  int v7; // r3
  int result; // r0

  if ( a3 >= 0 )
  {
    v5 = a4 + a3;
    if ( v5 < Arrays::AnimTable::size )
    {
      v6 = Arrays::AnimTable::members + 20 * v5;
      if ( *(_DWORD *)(v6 + 8) != 1 )
      {
        if ( gAssertLevel == 2 )
        {
          dword_0 = 0;
        }
        else if ( gAssertLevel == 1 )
        {
          result = fprintf(
                     (FILE *)&_sF + 2,
                     "ASSERT(%s) FAILED: %s:%d\n",
                     "anim.StepsSize == 1",
                     "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Objects\\Characters\\Animator\\CharAnimator.cpp",
                     200);
        }
      }
      v7 = *(_DWORD *)(v6 + 12);
      if ( !*(_DWORD *)(v7 + 40) )
        return AnimSetManager::AddTemplateAnim(
                 (AnimSetManager *)&Singleton<AnimSetManager>::s_inst,
                 a2,
                 *(_DWORD *)(v7 + 8));
    }
  }
  return result;
}


// ===== 3c9d80 CharAnimator::_AddAnimTable(int,int,uint,uint,uint) =====
void __fastcall CharAnimator::_AddAnimTable(
        CharAnimator *this,
        int a2,
        int a3,
        unsigned int a4,
        unsigned int a5,
        unsigned int a6)
{
  int v8; // r2
  bool v9; // zf
  unsigned int v10; // r8
  int v11; // r7
  unsigned int v12; // r5
  unsigned int v13; // r6
  int v14; // r1
  unsigned int v15; // r3
  std::priv::_String_base<char,std::allocator<char> > v16; // [sp+1Ch] [bp-20h] BYREF

  if ( a3 >= 0 )
  {
    v8 = a4 + a3;
    if ( v8 < Arrays::AnimTable::size )
    {
      v9 = (a6 & a5) == a5;
      if ( (a6 & a5) != a5 )
        v9 = a4 == 0;
      v10 = !v9;
      if ( v9 )
      {
        v11 = Arrays::AnimTable::members + 20 * v8;
        DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
        std::string::string((int)&v16, "isTracingChar_Init");
        DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, (const std::string *)&v16);
        std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v16);
        if ( *(_DWORD *)(v11 + 8) )
        {
          v12 = v10;
          v13 = v10;
          do
          {
            v15 = *(_DWORD *)(v11 + 12) + v12;
            if ( *(_DWORD *)(v15 + 40) )
            {
              CharAnimator::_AddAnimTable(this, a2, *(_DWORD *)(v15 + 8), v10, v10, v10);
            }
            else
            {
              AnimSetManager::AddAnim((AnimSetManager *)&Singleton<AnimSetManager>::s_inst, a2, *(_DWORD *)(v15 + 8));
              if ( VoxSoundManager::s_instance )
                VoxSoundManager::LoadSound(
                  (VoxSoundManager *)VoxSoundManager::s_instance,
                  *(_DWORD *)(*(_DWORD *)(v11 + 12) + v12 + 44));
              v14 = *(_DWORD *)(*(_DWORD *)(v11 + 12) + v12 + 24);
              if ( v14 >= 0 )
                VisualFXManager::RegisterFXSetToLoad((VisualFXManager *)&Singleton<VisualFXManager>::s_inst, v14);
            }
            ++v13;
            v12 += 56;
          }
          while ( *(_DWORD *)(v11 + 8) > v13 );
        }
      }
    }
  }
}


// ===== 3c9f4c CharAnimator::SetAnimationSet(void) =====
int __fastcall CharAnimator::SetAnimationSet(CharAnimator *this)
{
  int CharUniqueAnimSetId; // r0
  int result; // r0
  unsigned int v4; // r7
  int *CharAnimTable; // r5
  int CharSkillList; // r0
  int v7; // r2
  int v8; // r10
  unsigned int v9; // r6
  unsigned int v10; // r8
  unsigned int v11; // r8
  unsigned int v12; // r8
  int v13; // r11
  int CharSkill; // r0
  int Constant; // [sp+Ch] [bp-8h]

  CharUniqueAnimSetId = Character::GetCharUniqueAnimSetId(*((Character **)this + 1));
  *((_DWORD *)this + 15) = CharUniqueAnimSetId;
  result = AnimSetManager::Exists((AnimSetManager *)&Singleton<AnimSetManager>::s_inst, CharUniqueAnimSetId);
  if ( !result )
  {
    if ( (*(int (__fastcall **)(_DWORD))(**((_DWORD **)this + 1) + 40))(*((_DWORD *)this + 1)) )
      Constant = PyDataConstants::getConstant((PyDataConstants *)dword_99F758, "AnimStances", "COUNT_IPHONE");
    else
      Constant = 1;
    v4 = PyDataConstants::getConstant((PyDataConstants *)dword_99F758, "AnimStancedAnim", "SL__LIST_IPHONE");
    CharAnimTable = (int *)Character::GetCharAnimTable(*((Character **)this + 1));
    CharSkillList = Character::GetCharSkillList(*((Character **)this + 1));
    v7 = CharAnimTable[36];
    v8 = CharSkillList;
    if ( v7 == -1 )
    {
      Character::GetCharAnimTableId(*((Character **)this + 1));
      v7 = CharAnimTable[36];
    }
    v9 = 0;
    CharAnimator::_AddTemplateAnimTable(this, *((_DWORD *)this + 15), v7, 0);
    CharAnimator::_AddAnimTable(this, *((_DWORD *)this + 15), CharAnimTable[22], 0, 0, 0);
    CharAnimator::_AddAnimTable(this, *((_DWORD *)this + 15), CharAnimTable[25], 0, 0, 0);
    CharAnimator::_AddAnimTable(this, *((_DWORD *)this + 15), CharAnimTable[32], 0, 0, 0);
    result = CharAnimator::_AddAnimTable(this, *((_DWORD *)this + 15), CharAnimTable[23], 0, 0, 0);
    if ( Constant )
    {
      do
      {
        CharAnimator::_AddAnimTable(this, *((_DWORD *)this + 15), CharAnimTable[10], v9, 2u, v4);
        CharAnimator::_AddAnimTable(this, *((_DWORD *)this + 15), CharAnimTable[37], v9, 0x10u, v4);
        CharAnimator::_AddAnimTable(this, *((_DWORD *)this + 15), CharAnimTable[28], v9, 0x20u, v4);
        CharAnimator::_AddAnimTable(this, *((_DWORD *)this + 15), CharAnimTable[1], v9, 0x40u, v4);
        CharAnimator::_AddAnimTable(this, *((_DWORD *)this + 15), CharAnimTable[2], v9, 0x80u, v4);
        CharAnimator::_AddAnimTable(this, *((_DWORD *)this + 15), CharAnimTable[31], v9, 0x100u, v4);
        CharAnimator::_AddAnimTable(this, *((_DWORD *)this + 15), CharAnimTable[35], v9, 0x200u, v4);
        CharAnimator::_AddAnimTable(this, *((_DWORD *)this + 15), CharAnimTable[18], v9, 0x400u, v4);
        CharAnimator::_AddAnimTable(this, *((_DWORD *)this + 15), CharAnimTable[9], v9, 0x800u, v4);
        CharAnimator::_AddAnimTable(this, *((_DWORD *)this + 15), CharAnimTable[15], v9, 0x1000u, v4);
        CharAnimator::_AddAnimTable(this, *((_DWORD *)this + 15), CharAnimTable[3], v9, 0x2000u, v4);
        CharAnimator::_AddAnimTable(this, *((_DWORD *)this + 15), CharAnimTable[8], v9, 0x4000u, v4);
        CharAnimator::_AddAnimTable(this, *((_DWORD *)this + 15), CharAnimTable[7], v9, 0x8000u, v4);
        CharAnimator::_AddAnimTable(this, *((_DWORD *)this + 15), CharAnimTable[5], v9, 0x10000u, v4);
        CharAnimator::_AddAnimTable(this, *((_DWORD *)this + 15), CharAnimTable[4], v9, 0x20000u, v4);
        CharAnimator::_AddAnimTable(this, *((_DWORD *)this + 15), CharAnimTable[6], v9, 0x40000u, v4);
        CharAnimator::_AddAnimTable(this, *((_DWORD *)this + 15), CharAnimTable[26], v9, 0x100000u, v4);
        v10 = 0;
        CharAnimator::_AddAnimTable(this, *((_DWORD *)this + 15), CharAnimTable[27], v9, 0x80000u, v4);
        CharAnimator::_AddAnimTable(this, *((_DWORD *)this + 15), CharAnimTable[38], v9, 0, v4);
        CharAnimator::_AddAnimTable(this, *((_DWORD *)this + 15), CharAnimTable[29], v9, 0, v4);
        CharAnimator::_AddAnimTable(this, *((_DWORD *)this + 15), CharAnimTable[12], v9, 4u, v4);
        CharAnimator::_AddAnimTable(this, *((_DWORD *)this + 15), CharAnimTable[14], v9, 8u, v4);
        CharAnimator::_AddAnimTable(this, *((_DWORD *)this + 15), CharAnimTable[11], v9, 8u, v4);
        CharAnimator::_AddAnimTable(this, *((_DWORD *)this + 15), CharAnimTable[13], v9, 0, v4);
        CharAnimator::_AddAnimTable(this, *((_DWORD *)this + 15), CharAnimTable[39], v9, 0, v4);
        CharAnimator::_AddAnimTable(this, *((_DWORD *)this + 15), CharAnimTable[30], v9, 0, v4);
        CharAnimator::_AddAnimTable(this, *((_DWORD *)this + 15), CharAnimTable[20], v9, 0x1000000u, v4);
        result = CharAnimator::_AddAnimTable(this, *((_DWORD *)this + 15), CharAnimTable[21], v9, 0x1000000u, v4);
        if ( CharAnimTable[16] )
        {
          do
            result = CharAnimator::_AddAnimTable(
                       this,
                       *((_DWORD *)this + 15),
                       *(_DWORD *)(CharAnimTable[17] + 4 * v10++),
                       v9,
                       0x800000u,
                       v4);
          while ( CharAnimTable[16] > v10 );
        }
        if ( CharAnimTable[33] )
        {
          v11 = 0;
          do
            result = CharAnimator::_AddAnimTable(
                       this,
                       *((_DWORD *)this + 15),
                       *(_DWORD *)(CharAnimTable[34] + 4 * v11++),
                       v9,
                       0x400000u,
                       v4);
          while ( CharAnimTable[33] > v11 );
        }
        if ( *(_DWORD *)(v8 + 4) )
        {
          v12 = 0;
          do
          {
            v13 = *((_DWORD *)this + 15);
            CharSkill = Character::GetCharSkill(*((Character **)this + 1), v12);
            result = CharAnimator::_AddAnimTable(this, v13, *(_DWORD *)(CharSkill + 4), v9, 0x200000u, v4);
            ++v12;
          }
          while ( *(_DWORD *)(v8 + 4) > v12 );
        }
        ++v9;
      }
      while ( v9 != Constant );
    }
  }
  return result;
}


// ===== 3ca52c CharAnimator::RequestAnimPurge(void) =====
glitch::IReferenceCounted *__fastcall CharAnimator::RequestAnimPurge(glitch::IReferenceCounted *this)
{
  int v1; // r3
  glitch::IReferenceCounted *v2; // [sp+4h] [bp-8h] BYREF

  v1 = *(_DWORD *)(*((_DWORD *)this + 1) + 728);
  if ( v1 )
  {
    (*(void (__fastcall **)(glitch::IReferenceCounted **, _DWORD))(**(_DWORD **)(v1 + 56) + 8))(
      &v2,
      *(_DWORD *)(v1 + 56));
    this = v2;
    if ( v2 )
    {
      AnimationSet::Purge(v2);
      this = v2;
      if ( v2 )
        return (glitch::IReferenceCounted *)glitch::IReferenceCounted::drop(v2);
    }
  }
  return this;
}


// ===== 3ca584 `global constructor keyed to'.._.._sources_Game_Objects_Characters_Animator_CharAnimator.cpp =====
int `global constructor keyed to'.._.._sources_Game_Objects_Characters_Animator_CharAnimator.cpp()
{
  int result; // r0

  result = `guard variable for'Singleton<PlayerStatManager>::s_inst;
  dword_9A2B38 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9A2B34 = 1056964608;
  if ( (`guard variable for'Singleton<PlayerStatManager>::s_inst & 1) == 0 )
  {
    `guard variable for'Singleton<PlayerStatManager>::s_inst = 1;
    PlayerStatManager::PlayerStatManager((PlayerStatManager *)&Singleton<PlayerStatManager>::s_inst);
    result = _aeabi_atexit(
               (int)&Singleton<PlayerStatManager>::s_inst,
               (int)PlayerStatManager::~PlayerStatManager,
               (int)&_dso_handle);
  }
  if ( (`guard variable for'Singleton<Application>::s_inst & 1) == 0 )
  {
    `guard variable for'Singleton<Application>::s_inst = 1;
    Application::Application((Application *)&Singleton<Application>::s_inst);
    result = _aeabi_atexit((int)&Singleton<Application>::s_inst, (int)Application::~Application, (int)&_dso_handle);
  }
  if ( (`guard variable for'Singleton<AnimSetManager>::s_inst & 1) == 0 )
  {
    `guard variable for'Singleton<AnimSetManager>::s_inst = 1;
    AnimSetManager::AnimSetManager((AnimSetManager *)&Singleton<AnimSetManager>::s_inst);
    result = _aeabi_atexit(
               (int)&Singleton<AnimSetManager>::s_inst,
               (int)AnimSetManager::~AnimSetManager,
               (int)&_dso_handle);
  }
  if ( (`guard variable for'Singleton<VisualFXManager>::s_inst & 1) == 0 )
  {
    `guard variable for'Singleton<VisualFXManager>::s_inst = 1;
    VisualFXManager::VisualFXManager((VisualFXManager *)&Singleton<VisualFXManager>::s_inst);
    return _aeabi_atexit(
             (int)&Singleton<VisualFXManager>::s_inst,
             (int)VisualFXManager::~VisualFXManager,
             (int)&_dso_handle);
  }
  return result;
}


// ===== 3ca708 Random::GetRandom(int,bool) [clone] =====
unsigned int __fastcall Random::GetRandom(unsigned int this, int a2, bool a3)
{
  if ( this )
  {
    Random::s_seed = (59051 * Random::s_seed + 177149) % 0xDAF26Bu;
    this = abs32(Random::s_seed % this);
  }
  ++Random::s_debugRandomCounters;
  return this;
}


// ===== 3ca79c CharAnimator::_SetAnimStep(uint) =====
unsigned int __fastcall CharAnimator::_SetAnimStep(CharAnimator *this, unsigned int a2)
{
  char *v2; // r3
  int v4; // r2
  unsigned int result; // r0
  int v6; // r2
  int v7; // r6
  int CurrentLevel; // r0
  CameraLevel *v9; // r7
  bool v10; // r2
  int v11; // r1
  int v12; // r7
  int v13; // r9
  int v14; // r11
  _DWORD *TargetPosition; // r0
  int v16; // r8
  int v17; // r10
  int v18; // r8
  int v19; // r7
  int v20; // r3
  int v21; // r5
  int v22; // r3
  char v23; // r2
  int v24; // r1
  Random *v25; // r0
  int v26; // r8
  ItemInstance *EquippedItem; // r7
  ItemInstance *v28; // r10
  int v29; // r8
  unsigned __int8 v30; // r0
  int v31; // r2
  char v32; // r1
  int v33; // r0
  _DWORD v34[4]; // [sp+14h] [bp-10h] BYREF

  v2 = (char *)this + 12 * *((_DWORD *)this + 11);
  v4 = Arrays::AnimTable::members + 20 * *((_DWORD *)v2 + 2);
  result = *(_DWORD *)(v4 + 8);
  if ( result <= a2 )
    return result;
  v6 = *(_DWORD *)(v4 + 12);
  *((_DWORD *)v2 + 4) = a2;
  v7 = v6 + 56 * a2;
  Character::RaiseEvent(*((Character **)this + 1), 38, nullptr);
  if ( *(_DWORD *)(v7 + 40) == 1 )
    return CharAnimator::_SetAnim(this, *(_DWORD *)(v7 + 8), *((_DWORD *)this + 11) + 1);
  if ( *(_DWORD *)(v7 + 16) != -1 || *(_DWORD *)(v7 + 32) )
  {
    CurrentLevel = Application::GetCurrentLevel((Application *)&Singleton<Application>::s_inst);
    if ( CurrentLevel )
    {
      v9 = *(CameraLevel **)(CurrentLevel + 296);
      if ( v9 )
      {
        if ( CameraLevel::CanPlayShakeAnim(*(CameraLevel **)(CurrentLevel + 296), *((Character **)this + 1)) )
        {
          v11 = *(_DWORD *)(v7 + 16);
          if ( v11 != -1 )
          {
LABEL_8:
            CameraLevel::PlayAnim(v9, v11, 0, 1);
            goto LABEL_9;
          }
          v25 = *(Random **)(v7 + 32);
          if ( v25 )
          {
            v26 = *(_DWORD *)(v7 + 36);
            v11 = *(_DWORD *)(v26 + 4 * Random::GetRandom(v25, -1, v10));
            goto LABEL_8;
          }
        }
      }
    }
  }
LABEL_9:
  *((_BYTE *)this + 48) = *(_BYTE *)(v7 + 52);
  if ( *(_BYTE *)(v7 + 52) )
  {
    EquippedItem = (ItemInstance *)ItemInventory::GetEquippedItem((ItemInventory *)(*((_DWORD *)this + 1) + 892), 1u);
    v28 = (ItemInstance *)ItemInventory::GetEquippedItem((ItemInventory *)(*((_DWORD *)this + 1) + 892), 2u);
    LOBYTE(v29) = CharAnimator::_PlayItemSwooshSFX(this, EquippedItem) ^ 1;
    v30 = CharAnimator::_PlayItemSwooshFX(this, EquippedItem, *(_BYTE *)(v7 + 4));
    v29 = (unsigned __int8)v29;
    v12 = v30 ^ 1;
    if ( (_BYTE)v29 )
      v29 = (unsigned __int8)CharAnimator::_PlayItemSwooshSFX(this, v28) ^ 1;
    if ( v12 )
      v29 = (unsigned __int8)CharAnimator::_PlayItemSwooshFX(this, v28, *(_BYTE *)(v7 + 4)) ^ 1;
    if ( !v29 )
      goto LABEL_13;
  }
  else
  {
    v12 = 1;
  }
  v13 = *(_DWORD *)(v7 + 44);
  v14 = VoxSoundManager::s_instance;
  TargetPosition = (_DWORD *)GameObject::GetTargetPosition(*((GameObject **)this + 1));
  v16 = TargetPosition[1];
  v17 = TargetPosition[2];
  v34[0] = *TargetPosition;
  v34[1] = v16;
  v34[2] = v17;
  VoxSoundManager::Play3D(v14, v13, v34, 0, 1, -1082130432, -1082130432);
LABEL_13:
  if ( v12 )
  {
    v18 = *(_DWORD *)(v7 + 24);
    if ( v18 != -1 )
    {
      v19 = *(unsigned __int8 *)(v7 + 4);
      if ( *(_BYTE *)(v7 + 4) )
      {
        VisualFXManager::PlayAnimFXSet(
          &Singleton<VisualFXManager>::s_inst,
          *(_DWORD *)(v7 + 24),
          *((_DWORD *)this + 1),
          0);
      }
      else
      {
        v33 = GameObject::GetTargetPosition(*((GameObject **)this + 1));
        VisualFXManager::PlayAnimFXSet(
          &Singleton<VisualFXManager>::s_inst,
          v18,
          v33,
          *((_DWORD *)this + 1) + 364,
          v19,
          v19);
      }
    }
  }
  v20 = *((_DWORD *)this + 1);
  *((_DWORD *)this + 13) = *(_DWORD *)(v7 + 48);
  v21 = *(_DWORD *)(v20 + 728);
  if ( !v21 || *(_DWORD *)(v7 + 8) == -1 )
    return CharAnimator::ANIM_Stop(this);
  *((_BYTE *)this + 72) = 0;
  CharAnimator::_CompileAnimSet(this);
  if ( *((_BYTE *)this + 84) )
  {
    v22 = *(_DWORD *)(v21 + 56);
    v23 = *(_BYTE *)(v7 + 28);
    if ( *((_BYTE *)this + 73) || *((_BYTE *)this + 74) )
      v24 = 0;
    else
      v24 = *(_DWORD *)(v7 + 12);
    *(_DWORD *)(v22 + 20) = v24;
    *(_DWORD *)(v22 + 12) = 0;
    *(_BYTE *)(v22 + 16) = v23;
  }
  else
  {
    v31 = *(_DWORD *)(v21 + 56);
    v32 = *(_BYTE *)(v7 + 28);
    *(_DWORD *)(v31 + 12) = *((unsigned __int8 *)this + 84);
    *(_BYTE *)(v31 + 16) = v32;
  }
  (*(void (__fastcall **)(_DWORD, _DWORD, _DWORD, _DWORD, _DWORD))(**(_DWORD **)(v21 + 56) + 28))(
    *(_DWORD *)(v21 + 56),
    *(_DWORD *)(v7 + 8),
    0,
    *((_DWORD *)this + 17),
    0);
  return (*(int (__fastcall **)(_DWORD, _DWORD, _DWORD))(**(_DWORD **)(v21 + 56) + 40))(
           *(_DWORD *)(v21 + 56),
           *((float *)this + 16) * *((float *)this + 13),
           0);
}


// ===== 3cab38 CharAnimator::_SetAnim(int,uint) =====
unsigned int __fastcall CharAnimator::_SetAnim(unsigned int this, int a2, unsigned int a3)
{
  unsigned int v3; // r6
  unsigned int v4; // r3
  int v5; // r0
  int v6; // r8
  char v7; // r10
  int v8; // r1
  bool v9; // r2
  unsigned int Random; // r0
  std::priv::_String_base<char,std::allocator<char> > v11; // [sp+Ch] [bp-38h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v12; // [sp+24h] [bp-20h] BYREF

  v3 = this;
  if ( a2 >= 0 && a2 < Arrays::AnimTable::size && a3 <= 2 )
  {
    *(_DWORD *)(this + 76) = a2;
    v4 = this + 12 * a3;
    v5 = Arrays::AnimTable::members;
    *(_DWORD *)(v3 + 44) = a3;
    v6 = v5 + 20 * a2;
    *(_DWORD *)(v4 + 8) = a2;
    *(_DWORD *)(v4 + 12) = *(_DWORD *)(v6 + 4);
    DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
    std::string::string((int)&v12, "isTracingCharAnimator");
    DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, (const std::string *)&v12);
    std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v12);
    Character::RaiseEvent(*(Character **)(v3 + 4), 36, nullptr);
    if ( *(_DWORD *)(v6 + 16) == 2
      && (DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst),
          std::string::string((int)&v11, "MP_MinimalRandoms"),
          v7 = DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, (const std::string *)&v11) ^ 1,
          std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v11),
          v7) )
    {
      Random = Random::GetRandom(*(Random **)(v6 + 8), v8, v9);
      return CharAnimator::_SetAnimStep((CharAnimator *)v3, Random);
    }
    else
    {
      return CharAnimator::_SetAnimStep((CharAnimator *)v3, 0);
    }
  }
  return this;
}


// ===== 3cacb0 CharAnimator::ANIM_Set(int) =====
unsigned int __fastcall CharAnimator::ANIM_Set(unsigned int this, int a2)
{
  unsigned int v2; // r2

  v2 = *(unsigned __int8 *)(this + 73);
  if ( *(_BYTE *)(this + 73) )
  {
    *(_DWORD *)(this + 80) = a2;
  }
  else
  {
    *(_DWORD *)(this + 64) = 1065353216;
    return CharAnimator::_SetAnim(this, a2, v2);
  }
  return this;
}


// ===== 3caccc CharAnimator::ANIM_Swap(int,int) =====
unsigned int __fastcall CharAnimator::ANIM_Swap(unsigned int this, int a2, int a3)
{
  int v3; // r5
  int v4; // r9
  int v5; // r10
  float v6; // r4
  int v7; // r12
  unsigned int v8; // r6
  unsigned int v9; // r8
  __int32 d_tag; // r3
  __int32 v11; // r10
  _DWORD *v12; // r4
  unsigned int v13; // r3
  int v14; // r2
  int v15; // [sp+Ch] [bp-18h]
  int v16; // [sp+Ch] [bp-18h]
  int v17; // [sp+Ch] [bp-18h]

  v3 = a2;
  v4 = this;
  if ( a2 != -1 )
  {
    if ( a3 == -1 )
    {
      v5 = *(_DWORD *)(this + 8);
    }
    else
    {
      v5 = *(_DWORD *)(this + 8);
      if ( v5 != a3 )
      {
        if ( a2 != v5 )
        {
          v6 = *(float *)(this + 64);
          CharAnimator::ANIM_Set(this, a2);
          return CharAnimator::ANIM_SetSpeed(v4, v6);
        }
        return this;
      }
    }
    v7 = 15484;
    v8 = this;
    v9 = 0;
    while ( 1 )
    {
      d_tag = (*(Elf32_Dyn **)((char *)&__GLOBAL_OFFSET_TABLE_ + v7))->d_tag;
      *(_DWORD *)(v8 + 8) = v3;
      v11 = d_tag + 20 * v5;
      v12 = (_DWORD *)(d_tag + 20 * v3);
      if ( v12[1] != *(_DWORD *)(v11 + 4) )
      {
        if ( gAssertLevel == 2 )
        {
          dword_0 = 0;
        }
        else if ( gAssertLevel == 1 )
        {
          v16 = v7;
          this = fprintf(
                   (FILE *)&_sF + 2,
                   "ASSERT(%s) FAILED: %s:%d\n",
                   "newAnim.Loop == oldAnim.Loop && \"New anim sequence does not match in format (Loop)\"",
                   "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Objects\\Characters\\Animator\\CharAnimator.cpp",
                   899);
          v7 = v16;
        }
      }
      if ( v12[2] != *(_DWORD *)(v11 + 8) )
      {
        if ( gAssertLevel == 2 )
        {
          dword_0 = 0;
        }
        else if ( gAssertLevel == 1 )
        {
          v15 = v7;
          this = fprintf(
                   (FILE *)&_sF + 2,
                   "ASSERT(%s) FAILED: %s:%d\n",
                   "newAnim.StepsSize == oldAnim.StepsSize && \"New anim sequence does not match in format (Length)\"",
                   "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Objects\\Characters\\Animator\\CharAnimator.cpp",
                   900);
          v7 = v15;
        }
      }
      v13 = *(_DWORD *)(v4 + 44);
      if ( v13 > v9 )
      {
        v14 = v12[3] + 56 * *(_DWORD *)(v8 + 16);
        if ( *(_DWORD *)(v14 + 40) != 1 )
        {
          if ( gAssertLevel == 2 )
          {
            dword_0 = 0;
          }
          else if ( gAssertLevel == 1 )
          {
            v17 = v7;
            this = fprintf(
                     (FILE *)&_sF + 2,
                     "ASSERT(%s) FAILED: %s:%d\n",
                     "newAnim.Steps[info.stepIdx].Redir == Constants::AnimRedir::IsRedir && \"New anim sequence does not "
                     "match in format (Depth)\"",
                     "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Objects\\Characters\\Animator\\CharAnimator.cpp",
                     907);
            v13 = *(_DWORD *)(v4 + 44);
            v7 = v17;
            v14 = v12[3] + 56 * *(_DWORD *)(v8 + 16);
          }
        }
        v3 = *(_DWORD *)(v14 + 8);
      }
      else
      {
        *(_DWORD *)(v4 + 76) = v3;
      }
      ++v9;
      v8 += 12;
      if ( v9 > v13 )
        break;
      v5 = *(_DWORD *)(v8 + 8);
    }
  }
  return this;
}


// ===== 3caf3c CharAnimator::Update(void) =====
int __fastcall CharAnimator::Update(CharAnimator *this)
{
  int v3; // r3
  int v4; // r10
  char *v5; // r8
  int v6; // r7
  unsigned int v7; // r3
  char *v8; // r8
  char *v9; // r2
  int v10; // r3
  char *v11; // r3
  int v12; // r7
  char *v13; // r10
  int v14; // r1
  char *v15; // r7
  unsigned int v16; // r1
  std::priv::_String_base<char,std::allocator<char> > v17; // [sp+14h] [bp-64h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v18; // [sp+2Ch] [bp-4Ch] BYREF
  std::priv::_String_base<char,std::allocator<char> > v19; // [sp+44h] [bp-34h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v20; // [sp+5Ch] [bp-1Ch] BYREF

  PushProfilingContext("CharAnimator::Update");
  if ( (*(_DWORD *)(*((_DWORD *)this + 1) + 1312) & 0x200) == 0 )
  {
    if ( *((_BYTE *)this + 92) )
      CharAnimator::DecAnimSetUsers(this);
    *((_BYTE *)this + 92) = 0;
    return PopProfilingContext("CharAnimator::Update");
  }
  if ( !*((_BYTE *)this + 92) )
    CharAnimator::IncAnimSetUsers(this);
  v3 = *((unsigned __int8 *)this + 74);
  *((_BYTE *)this + 92) = 1;
  if ( v3 )
  {
    *(_WORD *)((char *)this + 73) = 1;
  }
  else if ( !*((_BYTE *)this + 73) )
  {
    goto LABEL_22;
  }
  v4 = *((_DWORD *)this + 11);
  v5 = (char *)this + 12 * v4;
  v6 = Arrays::AnimTable::members + 20 * *((_DWORD *)v5 + 2);
  Character::RaiseEvent(*((Character **)this + 1), 39, nullptr);
  if ( *(_DWORD *)(v6 + 16) != 1 || (v7 = *((_DWORD *)v5 + 4) + 1, v7 == *(_DWORD *)(v6 + 8)) )
  {
    Character::RaiseEvent(*((Character **)this + 1), 37, nullptr);
    if ( *(_DWORD *)(v6 + 16) != 1 )
    {
LABEL_13:
      v9 = (char *)this + 12 * v4;
      v10 = *((_DWORD *)v9 + 3);
      if ( v10 )
      {
        if ( v10 > 0 )
          *((_DWORD *)v9 + 3) = v10 - 1;
        DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
        std::string::string((int)&v19, "isTracingCharAnimator");
        DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, (const std::string *)&v19);
        std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v19);
        Character::RaiseEvent(*((Character **)this + 1), 35, nullptr);
        v11 = (char *)this + 12 * v4;
        v12 = *((_DWORD *)v11 + 3);
        if ( *((_DWORD *)this + 20) == -1 )
          CharAnimator::_SetAnim(this, *((_DWORD *)v11 + 2), *((_DWORD *)this + 11));
        v13 = (char *)this + 12 * v4;
        if ( v12 >= 0 )
          *((_DWORD *)v13 + 3) = v12;
        else
          *((_DWORD *)v13 + 3) = -1;
      }
      else if ( *((_DWORD *)this + 11) )
      {
        DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
        std::string::string((int)&v18, "isTracingCharAnimator");
        DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, (const std::string *)&v18);
        std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v18);
        --*((_DWORD *)this + 11);
        CharAnimator::Update(this);
      }
      else
      {
        v15 = (char *)*((unsigned __int8 *)this + 72);
        if ( !*((_BYTE *)this + 72) )
        {
          DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
          std::string::string((int)&v17, "isTracingCharAnimator");
          DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, (const std::string *)&v17);
          std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v17);
          *((_BYTE *)this + 72) = 1;
          Character::RaiseEvent(*((Character **)this + 1), 34, v15);
        }
      }
      goto LABEL_21;
    }
    v7 = *((_DWORD *)this + 3 * v4 + 4) + 1;
  }
  v8 = (char *)this + 12 * v4;
  *((_DWORD *)v8 + 4) = v7;
  if ( *(_DWORD *)(v6 + 8) <= v7 )
    goto LABEL_13;
  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string((int)&v20, "isTracingCharAnimator");
  DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, (const std::string *)&v20);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v20);
  Character::RaiseEvent(*((Character **)this + 1), 35, nullptr);
  v16 = *((_DWORD *)v8 + 4);
  if ( v16 >= *(_DWORD *)(v6 + 8) )
    CharAnimator::Update(this);
  else
    CharAnimator::_SetAnimStep(this, v16);
LABEL_21:
  *((_BYTE *)this + 73) = 0;
LABEL_22:
  v14 = *((_DWORD *)this + 20);
  if ( v14 != -1 )
  {
    CharAnimator::ANIM_Set(this, v14);
    *((_DWORD *)this + 20) = -1;
  }
  return PopProfilingContext("CharAnimator::Update");
}


// ===== 3cb2f0 CharAI::StepResetAvailableStep(void) =====
void __fastcall CharAI::StepResetAvailableStep(CharAI *this)
{
  CharAI::s_stepAvailableStep = 3;
}


// ===== 3cb314 CharAI::StepInitScript(void) =====
int __fastcall CharAI::StepInitScript(CharAI *this)
{
  int result; // r0

  result = (*(int (__fastcall **)(CharAI *))(*(_DWORD *)this + 8))(this);
  if ( *((_DWORD *)this + 12) )
    return (*(int (__fastcall **)(_DWORD))(**((_DWORD **)this + 8) + 204))(*((_DWORD *)this + 8));
  return result;
}


// ===== 3cb34c CharAI::_UpdatePointers(void) =====
int __fastcall CharAI::_UpdatePointers(CharAI *this)
{
  int v1; // r3
  int v2; // r3
  int v3; // r3
  int v4; // r3
  char *v5; // r12
  char *v6; // r3
  int result; // r0
  int v8; // r2
  char *v9; // r2
  int v10; // r1

  v1 = *((_DWORD *)this + 16);
  if ( v1 && *(_BYTE *)(v1 + 129) )
    *((_DWORD *)this + 16) = 0;
  v2 = *((_DWORD *)this + 20);
  if ( v2 && *(_BYTE *)(v2 + 129) )
    *((_DWORD *)this + 20) = 0;
  v3 = *((_DWORD *)this + 22);
  if ( v3 && *(_BYTE *)(v3 + 129) )
    *((_DWORD *)this + 22) = 0;
  v4 = *((_DWORD *)this + 17);
  if ( v4 && *(_BYTE *)(v4 + 129) )
    *((_DWORD *)this + 17) = 0;
  v5 = (char *)this + 92;
  v6 = *((char **)this + 25);
  result = 0;
  while ( v5 != v6 )
  {
    while ( 1 )
    {
      v8 = *((_DWORD *)v6 + 5);
      if ( v8 && *(_BYTE *)(v8 + 129) )
        *((_DWORD *)v6 + 5) = 0;
      v9 = *((char **)v6 + 3);
      if ( !v9 )
        break;
      while ( *((_DWORD *)v9 + 2) )
        v9 = *((char **)v9 + 2);
      v6 = v9;
      if ( v5 == v9 )
        return result;
    }
    v10 = *((_DWORD *)v6 + 1);
    if ( v6 == *(char **)(v10 + 12) )
    {
      do
      {
        v6 = (char *)v10;
        v10 = *(_DWORD *)(v10 + 4);
      }
      while ( *(char **)(v10 + 12) == v6 );
      v9 = *((char **)v6 + 3);
    }
    if ( (char *)v10 != v9 )
      v6 = (char *)v10;
  }
  return result;
}


// ===== 3cb454 CharAI::UpdatePointers(void) =====
// attributes: thunk
int __fastcall CharAI::UpdatePointers(CharAI *this)
{
  return CharAI::_UpdatePointers(this);
}


// ===== 3cb458 CharAI::IsScriptProcessLoaded(void) =====
bool __fastcall CharAI::IsScriptProcessLoaded(CharAI *this)
{
  return *((_DWORD *)this + 10) > 6;
}


// ===== 3cb46c SafeDelete<CharAISkillScript>(CharAISkillScript *&) =====
_DWORD *__fastcall SafeDelete<CharAISkillScript>(_DWORD *result)
{
  _DWORD *v1; // r4

  v1 = result;
  if ( *result )
  {
    result = (_DWORD *)(*(int (__fastcall **)(_DWORD))(*(_DWORD *)*result + 4))(*result);
    *v1 = 0;
  }
  return result;
}


// ===== 3cb49c std::priv::_Deque_iterator_base<CharAI *>::_M_subtract(std::priv::_Deque_iterator_base<CharAI *> const&) =====
int __fastcall std::priv::_Deque_iterator_base<CharAI *>::_M_subtract(_DWORD *a1, _DWORD *a2)
{
  return ((*a1 - a1[1]) >> 2) + ((a2[2] - *a2) >> 2) + 32 * (((a1[3] - a2[3]) >> 2) - 1);
}


// ===== 3cb4e0 std::priv::__copy_backward<std::priv::_Deque_iterator<CharAI *,std::_Nonconst_traits<CharAI *>>,std::priv::_Deque_iterator<CharAI *,std::_Nonconst_traits<CharAI *>>,int>(std::priv::_Deque_iterator<CharAI *,std::_Nonconst_traits<CharAI *>>,std::priv::_Deque_iterator<CharAI *,std::_Nonconst_traits<CharAI *>>,std::priv::_Deque_iterator<CharAI *,std::_Nonconst_traits<CharAI *>>,std::random_access_iterator_tag const&,int *) =====
int *__fastcall std::priv::__copy_backward<std::priv::_Deque_iterator<CharAI *,std::_Nonconst_traits<CharAI *>>,std::priv::_Deque_iterator<CharAI *,std::_Nonconst_traits<CharAI *>>,int>(
        int *a1,
        int *a2,
        int *a3,
        int *a4)
{
  int v7; // r0
  int v8; // r1
  int v9; // r2
  int v10; // r3
  _DWORD *v11; // t0
  int v12; // r0
  _DWORD *v13; // r2
  int v14; // r3
  int v15; // r3
  int *v16; // r2
  int v17; // r2
  int v18; // r3
  int *v19; // r1
  int v20; // r1
  int v21; // r1
  int v22; // r2
  int v23; // r3
  _DWORD v25[4]; // [sp+0h] [bp-10h] BYREF

  v7 = *a2;
  v11 = a2 + 1;
  v8 = a2[1];
  v9 = *++v11;
  v10 = v11[1];
  v25[0] = v7;
  v25[1] = v8;
  v25[2] = v9;
  v25[3] = v10;
  v12 = std::priv::_Deque_iterator_base<CharAI *>::_M_subtract(a3, v25);
  if ( v12 > 0 )
  {
    while ( 1 )
    {
      v15 = *a4;
      if ( *a4 == a4[1] )
      {
        v16 = (int *)(a4[3] - 4);
        a4[3] = (int)v16;
        v17 = *v16;
        v18 = v17 + 128;
        a4[1] = v17;
        v13 = (_DWORD *)(v17 + 124);
        *a4 = v18;
        a4[2] = v18;
        *a4 = (int)v13;
        v14 = *a3;
        if ( *a3 == a3[1] )
          goto LABEL_7;
LABEL_4:
        *a3 = v14 - 4;
        --v12;
        *v13 = *(_DWORD *)(v14 - 4);
        if ( !v12 )
          break;
      }
      else
      {
        v13 = (_DWORD *)(v15 - 4);
        *a4 = v15 - 4;
        v14 = *a3;
        if ( *a3 != a3[1] )
          goto LABEL_4;
LABEL_7:
        --v12;
        v19 = (int *)(a3[3] - 4);
        a3[3] = (int)v19;
        v20 = *v19;
        a3[1] = v20;
        *a3 = v20 + 128;
        a3[2] = v20 + 128;
        *a3 = v20 + 124;
        *v13 = *(_DWORD *)(v20 + 124);
        if ( !v12 )
          break;
      }
    }
  }
  v21 = a4[1];
  v22 = a4[2];
  v23 = a4[3];
  *a1 = *a4;
  a1[1] = v21;
  a1[2] = v22;
  a1[3] = v23;
  return a1;
}


// ===== 3cb5dc std::priv::__copy<std::priv::_Deque_iterator<CharAI *,std::_Nonconst_traits<CharAI *>>,std::priv::_Deque_iterator<CharAI *,std::_Nonconst_traits<CharAI *>>,int>(std::priv::_Deque_iterator<CharAI *,std::_Nonconst_traits<CharAI *>>,std::priv::_Deque_iterator<CharAI *,std::_Nonconst_traits<CharAI *>>,std::priv::_Deque_iterator<CharAI *,std::_Nonconst_traits<CharAI *>>,std::random_access_iterator_tag const&,int *) =====
_DWORD *__fastcall std::priv::__copy<std::priv::_Deque_iterator<CharAI *,std::_Nonconst_traits<CharAI *>>,std::priv::_Deque_iterator<CharAI *,std::_Nonconst_traits<CharAI *>>,int>(
        _DWORD *a1,
        int a2,
        _DWORD *a3,
        int a4)
{
  _DWORD *v8; // r0
  int v9; // r1
  int v10; // r2
  int v11; // r3
  _DWORD *v12; // t0
  int v13; // r0
  int v14; // r2
  int v15; // r3
  int v16; // r2
  int v17; // r3
  int *v18; // r2
  int v19; // r3
  int v20; // r2
  int v21; // r3
  int *v22; // r2
  int v23; // r3
  int v24; // r1
  int v25; // r2
  int v26; // r3
  _DWORD v28[4]; // [sp+0h] [bp-10h] BYREF

  v8 = *(_DWORD **)a2;
  v12 = (_DWORD *)(a2 + 4);
  v9 = *(_DWORD *)(a2 + 4);
  v10 = *++v12;
  v11 = v12[1];
  v28[0] = v8;
  v28[1] = v9;
  v28[2] = v10;
  v28[3] = v11;
  v13 = std::priv::_Deque_iterator_base<CharAI *>::_M_subtract(a3, v28);
  if ( v13 > 0 )
  {
    while ( 1 )
    {
      **(_DWORD **)a4 = **(_DWORD **)a2;
      v16 = *(_DWORD *)(a2 + 8);
      v17 = *(_DWORD *)a2 + 4;
      *(_DWORD *)a2 = v17;
      if ( v17 == v16 )
      {
        v18 = (int *)(*(_DWORD *)(a2 + 12) + 4);
        *(_DWORD *)(a2 + 12) = v18;
        v19 = *v18;
        *(_DWORD *)(a2 + 8) = *v18 + 128;
        *(_DWORD *)a2 = v19;
        *(_DWORD *)(a2 + 4) = v19;
        v20 = *(_DWORD *)(a4 + 8);
        v21 = *(_DWORD *)a4 + 4;
        *(_DWORD *)a4 = v21;
        if ( v21 == v20 )
          goto LABEL_7;
LABEL_4:
        if ( !--v13 )
          break;
      }
      else
      {
        v14 = *(_DWORD *)(a4 + 8);
        v15 = *(_DWORD *)a4 + 4;
        *(_DWORD *)a4 = v15;
        if ( v15 != v14 )
          goto LABEL_4;
LABEL_7:
        --v13;
        v22 = (int *)(*(_DWORD *)(a4 + 12) + 4);
        *(_DWORD *)(a4 + 12) = v22;
        v23 = *v22;
        *(_DWORD *)(a4 + 8) = *v22 + 128;
        *(_DWORD *)a4 = v23;
        *(_DWORD *)(a4 + 4) = v23;
        if ( !v13 )
          break;
      }
    }
  }
  v24 = *(_DWORD *)(a4 + 4);
  v25 = *(_DWORD *)(a4 + 8);
  v26 = *(_DWORD *)(a4 + 12);
  *a1 = *(_DWORD *)a4;
  a1[1] = v24;
  a1[2] = v25;
  a1[3] = v26;
  return a1;
}


// ===== 3cb6d4 std::priv::_Deque_iterator_base<CharAI *>::_M_advance(int) =====
_DWORD *__fastcall std::priv::_Deque_iterator_base<CharAI *>::_M_advance(_DWORD *result, int a2)
{
  int v2; // r2
  int v4; // r1
  unsigned int v5; // r3
  unsigned int v6; // r2
  int v7; // r3

  v2 = a2 + ((*result - result[1]) >> 2);
  if ( v2 <= 31 && v2 >= 0 )
  {
    *result += 4 * a2;
  }
  else
  {
    v4 = result[3];
    if ( v2 <= 0 )
      v5 = ~((unsigned int)~v2 >> 5);
    else
      v5 = (unsigned int)v2 >> 5;
    result[3] = v4 + 4 * v5;
    v6 = v2 - 32 * v5;
    v7 = *(_DWORD *)(v4 + 4 * v5);
    *result = v7 + 4 * v6;
    result[2] = v7 + 128;
    result[1] = v7;
  }
  return result;
}


// ===== 3cb748 CharAI::AI_PauseUpdate(uint) =====
int __fastcall CharAI::AI_PauseUpdate(CharAI *this, unsigned int a2)
{
  int v2; // r3

  v2 = *((_DWORD *)this + 1);
  *((_BYTE *)this + 24) = 1;
  return CharTimers::TMR_Start((CharTimers *)(v2 + 948), a2, 0, 49, nullptr);
}


// ===== 3cb77c CharAI::_UpdateRegen(void) =====
int __fastcall CharAI::_UpdateRegen(CharAI *this)
{
  int result; // r0
  CharAI *v3; // r0
  Character *v4; // r4
  char v5; // r1

  result = (*(int (__fastcall **)(_DWORD))(**((_DWORD **)this + 1) + 84))(*((_DWORD *)this + 1));
  if ( !result )
  {
    v3 = this;
    v4 = *((Character **)this + 1);
    v5 = CharAI::AI_IsInCombat(v3);
    return Character::RegenTick(v4, v5);
  }
  return result;
}


// ===== 3cb7c0 CharAI::SetCharacter(Character *) =====
int __fastcall CharAI::SetCharacter(int this, Character *a2)
{
  int v3; // r5

  v3 = this;
  if ( !a2 )
  {
    if ( gAssertLevel == 2 )
    {
      dword_0 = 0;
    }
    else if ( gAssertLevel == 1 )
    {
      this = fprintf(
               (FILE *)&_sF + 2,
               "ASSERT(%s) FAILED: %s:%d\n",
               "c",
               "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Objects\\Characters\\AI\\CharAI.cpp",
               455);
    }
  }
  *(_DWORD *)(v3 + 4) = a2;
  return this;
}


// ===== 3cb854 CharAI::StepQueryAvailableStep(int) =====
int __fastcall CharAI::StepQueryAvailableStep(CharAI *this, int a2)
{
  int result; // r0

  if ( a2 < 0 )
  {
    if ( gAssertLevel == 2 )
    {
      dword_0 = 0;
    }
    else if ( gAssertLevel == 1 )
    {
      fprintf(
        (FILE *)&_sF + 2,
        "ASSERT(%s) FAILED: %s:%d\n",
        "needed >= 0",
        "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Objects\\Characters\\AI\\CharAI.cpp",
        353);
    }
  }
  if ( a2 >= CharAI::s_stepAvailableStep )
    result = CharAI::s_stepAvailableStep;
  else
    result = a2;
  CharAI::s_stepAvailableStep -= result;
  return result;
}


// ===== 3cb908 CharAI::_UpdateTarget(void) =====
int __fastcall CharAI::_UpdateTarget(CharAI *this)
{
  int result; // r0
  int v3; // r3
  void *v4; // r2
  char v5; // r5
  const GameObject *v6; // r1
  int v7; // r5
  int v8; // r3
  Character *v9; // r0
  int v10; // r1

  result = CharStateMachine::SM_IsAwaitingToSpawn((CharStateMachine *)(*((_DWORD *)this + 1) + 1276));
  if ( !result )
  {
    result = CharStateMachine::SM_IsInLimbus((CharStateMachine *)(*((_DWORD *)this + 1) + 1276));
    if ( !result )
    {
      v3 = *((_DWORD *)this + 16);
      if ( v3 )
      {
        result = (*(int (__fastcall **)(_DWORD, _DWORD))(*(_DWORD *)v3 + 136))(
                   *((_DWORD *)this + 16),
                   *((_DWORD *)this + 1));
        v4 = (void *)result;
        if ( !result )
        {
          v9 = *((Character **)this + 1);
          v10 = 12;
          *((_DWORD *)this + 16) = 0;
          *((_DWORD *)this + 17) = 0;
          return Character::RaiseEvent(v9, v10, v4);
        }
        if ( *((_DWORD *)this + 16) )
        {
          Character::GetCharAIId(*((Character **)this + 1));
          result = (*(int (__fastcall **)(_DWORD))(**((_DWORD **)this + 16) + 52))(*((_DWORD *)this + 16)) ^ 1;
          v5 = result;
          if ( *((_BYTE *)this + 72) )
          {
            if ( !(_BYTE)result )
              result = Character::RaiseEvent(*((Character **)this + 1), 10, *((void **)this + 16));
          }
          else if ( (_BYTE)result )
          {
            result = Character::RaiseEvent(*((Character **)this + 1), 11, *((void **)this + 16));
          }
          v6 = *((const GameObject **)this + 16);
          *((_BYTE *)this + 72) = v5;
          if ( v6 )
          {
            result = CharAI::AI_IsInSight(this, v6);
            v7 = result;
            if ( *((_BYTE *)this + 73) )
            {
              if ( !result )
                result = Character::RaiseEvent(*((Character **)this + 1), 12, *((void **)this + 16));
            }
            else if ( result )
            {
              result = Character::RaiseEvent(*((Character **)this + 1), 13, *((void **)this + 16));
            }
            v8 = *((_DWORD *)this + 16);
            *((_BYTE *)this + 73) = v7;
            if ( v8 )
            {
              if ( v7 )
              {
                result = (*(int (__fastcall **)(int, _DWORD))(*(_DWORD *)v8 + 136))(v8, *((_DWORD *)this + 1));
                if ( result )
                {
                  if ( (*(int (__fastcall **)(_DWORD))(**((_DWORD **)this + 1) + 292))(*((_DWORD *)this + 1)) )
                  {
                    if ( !CharAI::AI_IsInCloseRange(this, *((const GameObject **)this + 16)) )
                    {
                      if ( CharAI::AI_IsInRange(this, *((const GameObject **)this + 16)) )
                      {
                        v4 = *((void **)this + 16);
                        v9 = *((Character **)this + 1);
                        v10 = 15;
                        return Character::RaiseEvent(v9, v10, v4);
                      }
                      return Character::RaiseEvent(*((Character **)this + 1), 14, *((void **)this + 16));
                    }
                    return Character::RaiseEvent(*((Character **)this + 1), 16, *((void **)this + 16));
                  }
                  else
                  {
                    if ( !CharAI::AI_IsInMeleeRange(this, *((const GameObject **)this + 16)) )
                      return Character::RaiseEvent(*((Character **)this + 1), 14, *((void **)this + 16));
                    return Character::RaiseEvent(*((Character **)this + 1), 17, *((void **)this + 16));
                  }
                }
              }
            }
          }
        }
      }
    }
  }
  return result;
}


// ===== 3cbb34 CharAI::RaiseAIEvent(int,void *) =====
int __fastcall CharAI::RaiseAIEvent(int this, int a2, char *a3)
{
  int v3; // r4
  CharAI *v4; // r5
  int v6; // r0
  int (__fastcall *v7)(CharAI *, int); // r4
  int v8; // r1
  int v9; // r7
  int (__fastcall *v10)(CharAI *, char *, int); // r4
  int State; // r0

  v3 = a2;
  v4 = (CharAI *)this;
  switch ( a2 )
  {
    case 0:
      v3 = 50001;
      goto LABEL_3;
    case 1:
      v3 = 50002;
      goto LABEL_3;
    case 2:
      (*(void (__fastcall **)(int, char *))(*(_DWORD *)this + 36))(this, a3);
      goto LABEL_3;
    case 3:
      return (*(int (__fastcall **)(int, char *))(*(_DWORD *)this + 40))(this, a3);
    case 34:
      v9 = CharAI::_OnEndOfAnim((CharAI *)this);
      this = (*(int (__fastcall **)(CharAI *))(*(_DWORD *)v4 + 152))(v4);
      goto LABEL_22;
    case 35:
      v9 = CharAI::_OnEndOfAnimSection((CharAI *)this);
      this = (*(int (__fastcall **)(CharAI *))(*(_DWORD *)v4 + 152))(v4);
      goto LABEL_22;
    case 40:
      this = CharAI::_OnAnimEvent((CharAI *)this, a3);
      v9 = this;
LABEL_22:
      if ( !v9 )
        return this;
      goto LABEL_3;
    case 41:
      (*(void (__fastcall **)(int, char *))(*(_DWORD *)this + 128))(this, a3);
      goto LABEL_3;
    case 48:
      goto LABEL_3;
    case 49:
      *(_BYTE *)(this + 24) = 0;
      return this;
    case 50:
      *(_BYTE *)(this + 74) = 1;
      return this;
    case 51:
      return CharAI::_UpdateRegen((CharAI *)this);
    case 52:
      return CharProperties::HandleDots((CharProperties *)(*(_DWORD *)(this + 4) + 1376));
    case 53:
      if ( !a3 )
        a2 = -1;
      v7 = *(int (__fastcall **)(CharAI *, int))(*(_DWORD *)this + 144);
      if ( a3 )
        a2 = (**(int (__fastcall ***)(char *, int))a3)(a3, a2);
      return v7(v4, a2);
    case 63:
      GameObject::EnableCollisions(*(GameObject **)(this + 4));
      goto LABEL_3;
    default:
      v6 = *(_DWORD *)(this + 4);
      v8 = *(_DWORD *)(v6 + 888);
      if ( !*(_BYTE *)(v8 + 9) && (v2Controller::s_blocked || *(_BYTE *)(v8 + 8)) )
      {
LABEL_3:
        v6 = *((_DWORD *)v4 + 1);
        return CharStateMachine::RaiseStateEvent((CharStateMachine *)(v6 + 1276), v3, a3);
      }
      else
      {
        switch ( v3 )
        {
          case 4:
            this = (*(int (__fastcall **)(CharAI *, char *))(*(_DWORD *)v4 + 176))(v4, a3);
            break;
          case 7:
            this = (*(int (__fastcall **)(CharAI *, char *))(*(_DWORD *)v4 + 44))(v4, a3);
            break;
          case 8:
            this = (*(int (__fastcall **)(CharAI *, char *))(*(_DWORD *)v4 + 48))(v4, a3);
            break;
          case 9:
            (*(void (__fastcall **)(CharAI *, char *))(*(_DWORD *)v4 + 52))(v4, a3);
            v6 = *((_DWORD *)v4 + 1);
            return CharStateMachine::RaiseStateEvent((CharStateMachine *)(v6 + 1276), v3, a3);
          case 10:
            this = (*(int (__fastcall **)(CharAI *))(*(_DWORD *)v4 + 64))(v4);
            break;
          case 11:
            this = (*(int (__fastcall **)(CharAI *))(*(_DWORD *)v4 + 68))(v4);
            break;
          case 12:
            this = (*(int (__fastcall **)(CharAI *))(*(_DWORD *)v4 + 72))(v4);
            break;
          case 13:
            this = (*(int (__fastcall **)(CharAI *))(*(_DWORD *)v4 + 76))(v4);
            break;
          case 14:
            this = (*(int (__fastcall **)(CharAI *))(*(_DWORD *)v4 + 80))(v4);
            break;
          case 15:
            this = (*(int (__fastcall **)(CharAI *))(*(_DWORD *)v4 + 84))(v4);
            break;
          case 16:
            this = (*(int (__fastcall **)(CharAI *))(*(_DWORD *)v4 + 88))(v4);
            break;
          case 17:
            this = (*(int (__fastcall **)(CharAI *))(*(_DWORD *)v4 + 92))(v4);
            break;
          case 18:
            this = (*(int (__fastcall **)(CharAI *))(*(_DWORD *)v4 + 96))(v4);
            break;
          case 19:
            this = (*(int (__fastcall **)(CharAI *))(*(_DWORD *)v4 + 100))(v4);
            break;
          case 20:
            this = (*(int (__fastcall **)(CharAI *))(*(_DWORD *)v4 + 104))(v4);
            break;
          case 21:
            this = (*(int (__fastcall **)(CharAI *))(*(_DWORD *)v4 + 108))(v4);
            break;
          case 22:
            this = (*(int (__fastcall **)(CharAI *))(*(_DWORD *)v4 + 112))(v4);
            break;
          case 23:
            this = (*(int (__fastcall **)(CharAI *))(*(_DWORD *)v4 + 116))(v4);
            break;
          case 24:
            this = (*(int (__fastcall **)(CharAI *))(*(_DWORD *)v4 + 120))(v4);
            break;
          case 25:
            this = (*(int (__fastcall **)(CharAI *))(*(_DWORD *)v4 + 124))(v4);
            break;
          case 29:
            v10 = *(int (__fastcall **)(CharAI *, char *, int))(*(_DWORD *)v4 + 32);
            State = CharStateMachine::SM_GetState((CharStateMachine *)(v6 + 1276));
            this = v10(v4, a3, State);
            break;
          case 30:
            this = CharAI::_SkillFocus(v4);
            break;
          case 31:
            this = CharAI::_SkillBlur(v4);
            break;
          case 32:
            this = CharAI::_SpellFocus(v4);
            break;
          case 33:
            this = CharAI::_SpellBlur(v4);
            break;
          case 36:
            this = CharAI::_OnAnimSequenceBegin(v4);
            v9 = this;
            goto LABEL_22;
          case 37:
            this = CharAI::_OnAnimSequenceEnd(v4);
            v9 = this;
            goto LABEL_22;
          case 38:
            this = CharAI::_OnAnimStepBegin(v4);
            v9 = this;
            goto LABEL_22;
          case 39:
            this = CharAI::_OnAnimStepEnd(v4);
            v9 = this;
            goto LABEL_22;
          case 42:
            (*(void (__fastcall **)(CharAI *))(*(_DWORD *)v4 + 140))(v4);
            v6 = *((_DWORD *)v4 + 1);
            return CharStateMachine::RaiseStateEvent((CharStateMachine *)(v6 + 1276), v3, a3);
          case 43:
            (*(void (__fastcall **)(CharAI *))(*(_DWORD *)v4 + 132))(v4);
            v6 = *((_DWORD *)v4 + 1);
            return CharStateMachine::RaiseStateEvent((CharStateMachine *)(v6 + 1276), v3, a3);
          case 44:
            (*(void (__fastcall **)(CharAI *))(*(_DWORD *)v4 + 136))(v4);
            v6 = *((_DWORD *)v4 + 1);
            return CharStateMachine::RaiseStateEvent((CharStateMachine *)(v6 + 1276), v3, a3);
          case 55:
            this = (*(int (__fastcall **)(CharAI *, char *, int))(*(_DWORD *)v4 + 188))(v4, a3, 1);
            break;
          case 56:
            this = (*(int (__fastcall **)(CharAI *, char *, _DWORD))(*(_DWORD *)v4 + 188))(v4, a3, 0);
            break;
          case 57:
            this = (*(int (__fastcall **)(CharAI *, char *, int))(*(_DWORD *)v4 + 192))(v4, a3, 1);
            break;
          case 58:
            this = (*(int (__fastcall **)(CharAI *, char *, _DWORD))(*(_DWORD *)v4 + 192))(v4, a3, 0);
            break;
          case 59:
            this = (*(int (__fastcall **)(CharAI *, char *, int))(*(_DWORD *)v4 + 196))(v4, a3, 1);
            break;
          case 60:
            this = (*(int (__fastcall **)(CharAI *, char *, _DWORD))(*(_DWORD *)v4 + 196))(v4, a3, 0);
            break;
          case 61:
            this = (*(int (__fastcall **)(CharAI *, char *, int))(*(_DWORD *)v4 + 200))(v4, a3, 1);
            break;
          case 62:
            this = (*(int (__fastcall **)(CharAI *, char *, _DWORD))(*(_DWORD *)v4 + 200))(v4, a3, 0);
            break;
          default:
            return CharStateMachine::RaiseStateEvent((CharStateMachine *)(v6 + 1276), v3, a3);
        }
      }
      return this;
  }
}


// ===== 3cc218 CharAI::StepLoadCommon(void) =====
int __fastcall CharAI::StepLoadCommon(int this)
{
  if ( *(_BYTE *)(this + 44) )
    return LuaScript::Load(*(LuaScript **)(this + 32), "_commons");
  return this;
}


// ===== 3cc238 CharAISkillScript::~CharAISkillScript() =====
void __fastcall CharAISkillScript::~CharAISkillScript(CharAISkillScript *this)
{
  *(_DWORD *)this = off_966788;
  sfc::script::lua::Arguments::~Arguments((CharAISkillScript *)((char *)this + 12));
}


// ===== 3cc26c CharAI::StepSetCharacter(void) =====
int __fastcall CharAI::StepSetCharacter(CharAIScript **this)
{
  return CharAIScript::SetCharacter(*(this + 8), *(this + 1));
}


// ===== 3cc278 CharAI::StepBindFunction(void) =====
int __fastcall CharAI::StepBindFunction(CharAIScript **this)
{
  return CharAIScript::BindFunction(*(this + 8));
}


// ===== 3cc280 CharAI::_HandleProjectile(Projectile *,void *) =====
int __fastcall CharAI::_HandleProjectile(CharAI *this, Projectile *a2, void *a3)
{
  int v4; // r5
  _DWORD *v5; // r4
  _DWORD *v6; // r8
  int result; // r0
  _BYTE v8[24]; // [sp+Ch] [bp-34h] BYREF
  char v9; // [sp+24h] [bp-1Ch]
  _BYTE v10[12]; // [sp+34h] [bp-Ch] BYREF

  if ( !this )
  {
    if ( gAssertLevel == 2 )
    {
      dword_0 = 0;
    }
    else if ( gAssertLevel == 1 )
    {
      fprintf(
        (FILE *)&_sF + 2,
        "ASSERT(%s) FAILED: %s:%d\n",
        "p",
        "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Objects\\Characters\\AI\\CharAI.cpp",
        238);
    }
  }
  v4 = *((_DWORD *)this + 243);
  v5 = *((_DWORD **)this + 224);
  if ( v4 )
  {
    ObjectBase::GetHandle((ObjectBase *)v10);
    v6 = (_DWORD *)ObjectHandle::operator Character *(v10);
  }
  else
  {
    v6 = nullptr;
  }
  if ( !v5 )
  {
    if ( gAssertLevel == 2 )
    {
      dword_0 = 0;
    }
    else if ( gAssertLevel == 1 )
    {
      fprintf(
        (FILE *)&_sF + 2,
        "ASSERT(%s) FAILED: %s:%d\n",
        "self",
        "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Objects\\Characters\\AI\\CharAI.cpp",
        244);
    }
  }
  (*(void (__fastcall **)(_DWORD *, int))(v5[242] + 172))(v5 + 242, v4);
  if ( !v4 )
    return 0;
  if ( !v6 )
  {
    if ( (*(int (__fastcall **)(int, _DWORD *))(*(_DWORD *)v4 + 144))(v4, v5) == 8 )
    {
      (*(void (__fastcall **)(int, CharAI *))(*(_DWORD *)v4 + 152))(v4, this);
      return 0;
    }
    return 0;
  }
  Character::F_MeleeAttack(v8, v5, v6, 0, *((unsigned __int8 *)this + 892));
  Character::F_ApplyResult((int)v8, v5, v6, 0);
  result = v9 & 3;
  if ( (v9 & 3) != 0 )
    return 1;
  return result;
}


// ===== 3cc448 CharAISkillScript::~CharAISkillScript() =====
void __fastcall CharAISkillScript::~CharAISkillScript(CharAISkillScript *this)
{
  *(_DWORD *)this = off_966788;
  sfc::script::lua::Arguments::~Arguments((CharAISkillScript *)((char *)this + 12));
  CustomFree(this);
}


// ===== 3cc484 CharAI::IsMyTurn(CharAI const*) =====
int __fastcall CharAI::IsMyTurn(CharAI *this, const CharAI *a2)
{
  _DWORD v4[4]; // [sp+8h] [bp-10h] BYREF

  v4[0] = CharAI::s_updateQueue;
  v4[1] = dword_9A2B4C;
  v4[2] = dword_9A2B50;
  v4[3] = dword_9A2B54;
  if ( !std::priv::_Deque_iterator_base<CharAI *>::_M_subtract(&dword_9A2B58, v4) )
  {
    if ( gAssertLevel == 2 )
    {
      dword_0 = 0;
    }
    else if ( gAssertLevel == 1 )
    {
      fprintf(
        (FILE *)&_sF + 2,
        "ASSERT(%s) FAILED: %s:%d\n",
        "s_updateQueue.size() > 0",
        "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Objects\\Characters\\AI\\CharAI.cpp",
        102);
    }
  }
  if ( CharAI::s_updateTimer <= 0 && *(CharAI **)CharAI::s_updateQueue == this
    || Character::IsFollower(*((Character **)this + 1))
    || Character::IsFaerie(*((Character **)this + 1)) )
  {
    return 1;
  }
  else
  {
    return (*(int (__fastcall **)(_DWORD))(**((_DWORD **)this + 1) + 40))(*((_DWORD *)this + 1));
  }
}


// ===== 3cc5a4 CharAI::_UpdateMaster(void) =====
int __fastcall CharAI::_UpdateMaster(int this)
{
  int v1; // r4
  char v2; // r5
  const GameObject *v3; // r1
  const CharAI *v4; // r1
  int v5; // r5
  int v6; // r3

  v1 = this;
  if ( *(_DWORD *)(this + 80) )
  {
    Character::GetCharAIId(*(Character **)(this + 4));
    this = (*(int (__fastcall **)(_DWORD))(**(_DWORD **)(v1 + 80) + 52))(*(_DWORD *)(v1 + 80)) ^ 1;
    v2 = this;
    if ( *(_BYTE *)(v1 + 84) )
    {
      if ( !(_BYTE)this )
        this = Character::RaiseEvent(*(Character **)(v1 + 4), 18, *(char **)(v1 + 80));
    }
    else if ( (_BYTE)this )
    {
      this = Character::RaiseEvent(*(Character **)(v1 + 4), 19, *(char **)(v1 + 80));
    }
    v3 = *(const GameObject **)(v1 + 80);
    *(_BYTE *)(v1 + 84) = v2;
    if ( v3 )
    {
      this = CharAI::AI_IsInSight((CharAI *)v1, v3);
      v5 = this;
      if ( *(_BYTE *)(v1 + 85) )
      {
        if ( !this )
          this = Character::RaiseEvent(*(Character **)(v1 + 4), 20, *(char **)(v1 + 80));
      }
      else if ( this )
      {
        this = Character::RaiseEvent(*(Character **)(v1 + 4), 21, *(char **)(v1 + 80));
      }
      v6 = *(_DWORD *)(v1 + 80);
      *(_BYTE *)(v1 + 85) = v5;
      if ( v6 )
      {
        if ( *(_BYTE *)(v1 + 84) )
        {
          if ( v5 )
          {
            this = CharAI::IsMyTurn((CharAI *)v1, v4);
            if ( this )
            {
              if ( (*(int (__fastcall **)(_DWORD))(**(_DWORD **)(v1 + 4) + 292))(*(_DWORD *)(v1 + 4)) )
              {
                if ( !CharAI::AI_IsInCloseRange((CharAI *)v1, *(const GameObject **)(v1 + 80)) )
                {
                  if ( CharAI::AI_IsInRange((CharAI *)v1, *(const GameObject **)(v1 + 80)) )
                    return Character::RaiseEvent(*(Character **)(v1 + 4), 23, *(char **)(v1 + 80));
                  return Character::RaiseEvent(*(Character **)(v1 + 4), 22, *(char **)(v1 + 80));
                }
                return Character::RaiseEvent(*(Character **)(v1 + 4), 24, *(char **)(v1 + 80));
              }
              else
              {
                if ( !CharAI::AI_IsInMeleeRange((CharAI *)v1, *(const GameObject **)(v1 + 80)) )
                  return Character::RaiseEvent(*(Character **)(v1 + 4), 22, *(char **)(v1 + 80));
                return Character::RaiseEvent(*(Character **)(v1 + 4), 25, *(char **)(v1 + 80));
              }
            }
          }
        }
      }
    }
  }
  return this;
}


// ===== 3cc760 std::deque<CharAI *,std::allocator<CharAI *>>::_M_erase(std::priv::_Deque_iterator<CharAI *,std::_Nonconst_traits<CharAI *>>,std::__false_type const&) [clone] =====
int *__fastcall std::deque<CharAI *>::_M_erase(int *a1, int *a2)
{
  int v2; // r8
  int v3; // r3
  int v4; // r9
  bool v5; // zf
  int v6; // t1
  unsigned int v9; // r10
  int v10; // r12
  int v11; // lr
  int v12; // r5
  int v13; // r1
  int v14; // r2
  int v15; // r3
  int v17; // r12
  int v18; // lr
  int v19; // r5
  unsigned int v20; // r2
  int v21; // r2
  int v22; // r1
  int v23; // r1
  int v24; // [sp+Ch] [bp-C8h]
  int v25; // [sp+10h] [bp-C4h]
  int v26; // [sp+14h] [bp-C0h]
  int v27; // [sp+14h] [bp-C0h]
  _DWORD v28[4]; // [sp+18h] [bp-BCh] BYREF
  _DWORD v29[4]; // [sp+28h] [bp-ACh] BYREF
  int v30[4]; // [sp+38h] [bp-9Ch] BYREF
  int v31[4]; // [sp+48h] [bp-8Ch] BYREF
  int v32[4]; // [sp+58h] [bp-7Ch] BYREF
  int v33[4]; // [sp+68h] [bp-6Ch] BYREF
  int v34[4]; // [sp+78h] [bp-5Ch] BYREF
  _DWORD v35[4]; // [sp+88h] [bp-4Ch] BYREF
  _DWORD v36[4]; // [sp+98h] [bp-3Ch] BYREF
  _DWORD v37[4]; // [sp+A8h] [bp-2Ch] BYREF
  int v38; // [sp+B8h] [bp-1Ch] BYREF
  int v39; // [sp+BCh] [bp-18h]
  int v40; // [sp+C0h] [bp-14h]
  int v41; // [sp+C4h] [bp-10h]

  v2 = a2[2];
  v24 = a2[1];
  v3 = a2[3];
  v4 = *a2 + 4;
  v5 = v2 == v4;
  v25 = v3;
  if ( v2 == v4 )
  {
    v6 = *(_DWORD *)(v3 + 4);
    v3 += 4;
    v24 = v6;
    v2 = v6 + 128;
    v4 = v6;
  }
  if ( v5 )
    v25 = v3;
  v29[0] = CharAI::s_updateQueue;
  v29[1] = dword_9A2B4C;
  v29[2] = dword_9A2B50;
  v29[3] = dword_9A2B54;
  v9 = std::priv::_Deque_iterator_base<CharAI *>::_M_subtract(a2, v29);
  v28[0] = CharAI::s_updateQueue;
  v28[1] = dword_9A2B4C;
  v28[2] = dword_9A2B50;
  v28[3] = dword_9A2B54;
  if ( v9 >= (unsigned int)std::priv::_Deque_iterator_base<CharAI *>::_M_subtract(&dword_9A2B58, v28) >> 1 )
  {
    v17 = a2[3];
    v27 = *a2;
    v18 = a2[1];
    v19 = a2[2];
    v37[3] = v17;
    v37[2] = v19;
    v37[0] = v27;
    v35[3] = v25;
    v35[1] = v24;
    v35[2] = v2;
    v36[3] = dword_9A2B64;
    v35[0] = v4;
    v37[1] = v18;
    v36[2] = dword_9A2B60;
    v36[1] = dword_9A2B5C;
    v36[0] = dword_9A2B58;
    std::priv::__copy<std::priv::_Deque_iterator<CharAI *,std::_Nonconst_traits<CharAI *>>,std::priv::_Deque_iterator<CharAI *,std::_Nonconst_traits<CharAI *>>,int>(
      v34,
      (int)v35,
      v36,
      (int)v37);
    if ( dword_9A2B58 == dword_9A2B5C )
    {
      if ( dword_9A2B58 )
        std::__node_alloc::deallocate((std::__node_alloc *)dword_9A2B58, (unsigned int)&dword_80, v20);
      dword_9A2B64 -= 4;
      v21 = *(_DWORD *)dword_9A2B64;
      v22 = *(_DWORD *)dword_9A2B64 + 128;
      dword_9A2B58 = *(_DWORD *)dword_9A2B64 + 124;
      dword_9A2B60 = v22;
      dword_9A2B5C = v21;
    }
    else
    {
      dword_9A2B58 -= 4;
    }
  }
  else
  {
    v10 = a2[3];
    v26 = *a2;
    v11 = a2[1];
    v12 = a2[2];
    v32[3] = v10;
    v32[2] = v12;
    v32[0] = v26;
    v31[3] = dword_9A2B54;
    v33[1] = v24;
    v31[2] = dword_9A2B50;
    v31[1] = dword_9A2B4C;
    v31[0] = CharAI::s_updateQueue;
    v32[1] = v11;
    v33[3] = v25;
    v33[2] = v2;
    v33[0] = v4;
    std::priv::__copy_backward<std::priv::_Deque_iterator<CharAI *,std::_Nonconst_traits<CharAI *>>,std::priv::_Deque_iterator<CharAI *,std::_Nonconst_traits<CharAI *>>,int>(
      v30,
      v31,
      v32,
      v33);
    if ( CharAI::s_updateQueue == dword_9A2B50 - 4 )
    {
      if ( dword_9A2B4C )
        std::__node_alloc::deallocate((std::__node_alloc *)dword_9A2B4C, (unsigned int)&dword_80, dword_9A2B50 - 4);
      dword_9A2B54 += 4;
      v23 = *(_DWORD *)dword_9A2B54 + 128;
      CharAI::s_updateQueue = *(_DWORD *)dword_9A2B54;
      dword_9A2B50 = v23;
      dword_9A2B4C = CharAI::s_updateQueue;
    }
    else
    {
      CharAI::s_updateQueue += 4;
    }
  }
  v38 = CharAI::s_updateQueue;
  v39 = dword_9A2B4C;
  v40 = dword_9A2B50;
  v41 = dword_9A2B54;
  std::priv::_Deque_iterator_base<CharAI *>::_M_advance(&v38, v9);
  v13 = v39;
  v14 = v40;
  v15 = v41;
  *a1 = v38;
  a1[1] = v13;
  a1[2] = v14;
  a1[3] = v15;
  return a1;
}


// ===== 3cc9dc CharAI::AIUnLoadScriptProcess(bool) =====
void __fastcall CharAI::AIUnLoadScriptProcess(CharAI *this, int a2)
{
  int v2; // r2
  _DWORD *v4; // r4
  _DWORD *v5; // r6
  int v6; // r3
  _DWORD *v7; // r4
  _DWORD *v8; // r6
  int v9; // r3
  int v10; // r3

  if ( a2 )
    v2 = 1;
  else
    v2 = *((unsigned __int8 *)this + 36);
  if ( *((_DWORD *)this + 8) && v2 )
  {
    CharAI::_SkillCleanUp(this);
    CharAI::_SpellCleanUp(this);
    v4 = *((_DWORD **)this + 45);
    v5 = *((_DWORD **)this + 46);
    if ( v4 != v5 )
    {
      do
      {
        if ( *v4 )
        {
          (*(void (__fastcall **)(_DWORD))(*(_DWORD *)*v4 + 4))(*v4);
          *v4 = 0;
        }
        ++v4;
      }
      while ( v5 != v4 );
      v6 = *((_DWORD *)this + 45);
      if ( v6 != *((_DWORD *)this + 46) )
        *((_DWORD *)this + 46) = v6;
    }
    v7 = *((_DWORD **)this + 48);
    v8 = *((_DWORD **)this + 49);
    if ( v7 != v8 )
    {
      do
      {
        if ( *v7 )
        {
          (*(void (__fastcall **)(_DWORD))(*(_DWORD *)*v7 + 4))(*v7);
          *v7 = 0;
        }
        ++v7;
      }
      while ( v8 != v7 );
      v9 = *((_DWORD *)this + 48);
      if ( v9 != *((_DWORD *)this + 49) )
        *((_DWORD *)this + 49) = v9;
    }
    v10 = *((_DWORD *)this + 8);
    if ( v10 )
    {
      (*(void (__fastcall **)(_DWORD))(*(_DWORD *)v10 + 4))(*((_DWORD *)this + 8));
      *((_DWORD *)this + 8) = 0;
    }
    *((_DWORD *)this + 12) = 0;
    *((_DWORD *)this + 8) = 0;
    *((_DWORD *)this + 7) = 0;
    *((_DWORD *)this + 10) = 0;
    *((_BYTE *)this + 44) = 0;
  }
}


// ===== 3ccaf4 CharAI::SetScript<AISExternal>(void) =====
AISExternal *__fastcall CharAI::SetScript<AISExternal>(_DWORD *a1)
{
  int v2; // r3
  AISExternal *v3; // r5
  AISExternal *result; // r0

  if ( !a1[1] )
  {
    if ( gAssertLevel == 2 )
    {
      dword_0 = 0;
    }
    else if ( gAssertLevel == 1 )
    {
      fprintf(
        (FILE *)&_sF + 2,
        "ASSERT(%s) FAILED: %s:%d\n",
        "me && \"Make sure to call CharAI::SetCharacter before calling CharAI::SetScript\"",
        "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Objects\\Characters\\AI\\/../AI/CharAI.h",
        673);
    }
  }
  if ( a1[8] )
  {
    (*(void (__fastcall **)(_DWORD *))(*a1 + 20))(a1);
    v2 = a1[8];
    if ( v2 )
    {
      (*(void (__fastcall **)(_DWORD))(*(_DWORD *)v2 + 4))(a1[8]);
      a1[8] = 0;
    }
  }
  v3 = (AISExternal *)operator new(0xC4u, 0);
  result = AISExternal::AISExternal(v3, 1);
  a1[8] = v3;
  return result;
}


// ===== 3ccbe4 CharAI::SetScript<AISMonster>(void) =====
void __fastcall CharAI::SetScript<AISMonster>(_DWORD *a1)
{
  int v2; // r3
  CharAIScript *v3; // r6

  if ( !a1[1] )
  {
    if ( gAssertLevel == 2 )
    {
      dword_0 = 0;
    }
    else if ( gAssertLevel == 1 )
    {
      fprintf(
        (FILE *)&_sF + 2,
        "ASSERT(%s) FAILED: %s:%d\n",
        "me && \"Make sure to call CharAI::SetCharacter before calling CharAI::SetScript\"",
        "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Objects\\Characters\\AI\\/../AI/CharAI.h",
        673);
    }
  }
  if ( a1[8] )
  {
    (*(void (__fastcall **)(_DWORD *))(*a1 + 20))(a1);
    v2 = a1[8];
    if ( v2 )
    {
      (*(void (__fastcall **)(_DWORD))(*(_DWORD *)v2 + 4))(a1[8]);
      a1[8] = 0;
    }
  }
  v3 = (CharAIScript *)operator new(0xC4u, 0);
  CharAIScript::CharAIScript(v3, 1);
  *((_DWORD *)v3 + 48) = 0;
  *((_DWORD *)v3 + 46) = 0;
  *((_DWORD *)v3 + 47) = 0;
  *(_DWORD *)v3 = off_966B28;
  a1[8] = v3;
}


// ===== 3cccf8 CharAI::SetScript<AISFaery>(void) =====
CharAIScript *__fastcall CharAI::SetScript<AISFaery>(_DWORD *a1)
{
  int v2; // r3
  CharAIScript *v3; // r6
  CharAIScript *result; // r0

  if ( !a1[1] )
  {
    if ( gAssertLevel == 2 )
    {
      dword_0 = 0;
    }
    else if ( gAssertLevel == 1 )
    {
      fprintf(
        (FILE *)&_sF + 2,
        "ASSERT(%s) FAILED: %s:%d\n",
        "me && \"Make sure to call CharAI::SetCharacter before calling CharAI::SetScript\"",
        "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Objects\\Characters\\AI\\/../AI/CharAI.h",
        673);
    }
  }
  if ( a1[8] )
  {
    (*(void (__fastcall **)(_DWORD *))(*a1 + 20))(a1);
    v2 = a1[8];
    if ( v2 )
    {
      (*(void (__fastcall **)(_DWORD))(*(_DWORD *)v2 + 4))(a1[8]);
      a1[8] = 0;
    }
  }
  v3 = (CharAIScript *)operator new(200, 0);
  result = CharAIScript::CharAIScript(v3, 1);
  *((_DWORD *)v3 + 48) = 0;
  *((_DWORD *)v3 + 49) = -1;
  *(_DWORD *)v3 = off_966DB0;
  *((_DWORD *)v3 + 46) = 0;
  *((_DWORD *)v3 + 47) = 0;
  a1[8] = v3;
  return result;
}


// ===== 3cce14 CharAI::SetScript<AISDefault>(void) =====
void __fastcall CharAI::SetScript<AISDefault>(_DWORD *a1)
{
  int v2; // r3
  CharAIScript *v3; // r6

  if ( !a1[1] )
  {
    if ( gAssertLevel == 2 )
    {
      dword_0 = 0;
    }
    else if ( gAssertLevel == 1 )
    {
      fprintf(
        (FILE *)&_sF + 2,
        "ASSERT(%s) FAILED: %s:%d\n",
        "me && \"Make sure to call CharAI::SetCharacter before calling CharAI::SetScript\"",
        "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Objects\\Characters\\AI\\/../AI/CharAI.h",
        673);
    }
  }
  if ( a1[8] )
  {
    (*(void (__fastcall **)(_DWORD *))(*a1 + 20))(a1);
    v2 = a1[8];
    if ( v2 )
    {
      (*(void (__fastcall **)(_DWORD))(*(_DWORD *)v2 + 4))(a1[8]);
      a1[8] = 0;
    }
  }
  v3 = (CharAIScript *)operator new(0xC4u, 0);
  CharAIScript::CharAIScript(v3, 1);
  *((_DWORD *)v3 + 48) = 0;
  *((_DWORD *)v3 + 46) = 0;
  *((_DWORD *)v3 + 47) = 0;
  *(_DWORD *)v3 = off_966978;
  a1[8] = v3;
}


// ===== 3ccf28 std::priv::_String_base<wchar_t,std::allocator<wchar_t>>::_M_allocate_block(uint) [clone] =====
void std::priv::_String_base<wchar_t,std::allocator<wchar_t>>::_M_allocate_block()
{
  ;
}


// ===== 3ccf2c std::allocator<Character *>::_M_allocate(uint,uint &) =====
void *__fastcall std::allocator<Character *>::_M_allocate(int a1, unsigned int a2, size_t *a3)
{
  void *result; // r0
  size_t __n; // [sp+4h] [bp-4h] BYREF

  if ( a2 > 0x3FFFFFFF )
  {
    puts("out of memory\n");
    exit(1);
  }
  if ( !a2 )
    return nullptr;
  __n = 4 * a2;
  if ( 4 * a2 > 0x80 )
    result = CustomAlloc(4 * a2);
  else
    result = __ZNSt12__node_alloc11_M_allocateERj_veneer(&__n);
  *a3 = __n >> 2;
  return result;
}


// ===== 3ccf9c std::vector<Character *,std::allocator<Character *>>::vector(uint) [clone] =====
_DWORD *__fastcall std::vector<Character *>::vector(_DWORD *a1)
{
  char *v2; // r0
  size_t v3; // r3
  size_t v5; // [sp+4h] [bp-4h] BYREF

  v5 = 0;
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v2 = (char *)std::allocator<Character *>::_M_allocate((int)(a1 + 2), 0, &v5);
  v3 = v5;
  *a1 = v2;
  a1[1] = v2;
  a1[2] = &v2[4 * v3];
  return a1;
}


// ===== 3ccfe4 CharAI::SetScript<AISPlayerIPhone>(void) =====
int __fastcall CharAI::SetScript<AISPlayerIPhone>(_DWORD *a1)
{
  int v2; // r3
  CharAIScript *v3; // r6
  int result; // r0

  if ( !a1[1] )
  {
    if ( gAssertLevel == 2 )
    {
      dword_0 = 0;
    }
    else if ( gAssertLevel == 1 )
    {
      fprintf(
        (FILE *)&_sF + 2,
        "ASSERT(%s) FAILED: %s:%d\n",
        "me && \"Make sure to call CharAI::SetCharacter before calling CharAI::SetScript\"",
        "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Objects\\Characters\\AI\\/../AI/CharAI.h",
        673);
    }
  }
  if ( a1[8] )
  {
    (*(void (__fastcall **)(_DWORD *))(*a1 + 20))(a1);
    v2 = a1[8];
    if ( v2 )
    {
      (*(void (__fastcall **)(_DWORD))(*(_DWORD *)v2 + 4))(a1[8]);
      a1[8] = 0;
    }
  }
  v3 = (CharAIScript *)operator new(216, 0);
  CharAIScript::CharAIScript(v3, 1);
  *((_DWORD *)v3 + 46) = 0;
  *((_DWORD *)v3 + 47) = 0;
  *((_DWORD *)v3 + 48) = 0;
  *(_DWORD *)v3 = off_966C00;
  result = std::vector<Character *>::vector((char *)v3 + 196);
  *((_DWORD *)v3 + 53) = 0;
  *((_DWORD *)v3 + 52) = 0;
  *(_DWORD *)v3 = off_966CD8;
  a1[8] = v3;
  return result;
}


// ===== 3cd11c CharAI::SetScript<AISPlayer>(void) =====
_DWORD *__fastcall CharAI::SetScript<AISPlayer>(_DWORD *a1)
{
  int v2; // r3
  CharAIScript *v3; // r6
  _DWORD *result; // r0

  if ( !a1[1] )
  {
    if ( gAssertLevel == 2 )
    {
      dword_0 = 0;
    }
    else if ( gAssertLevel == 1 )
    {
      fprintf(
        (FILE *)&_sF + 2,
        "ASSERT(%s) FAILED: %s:%d\n",
        "me && \"Make sure to call CharAI::SetCharacter before calling CharAI::SetScript\"",
        "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Objects\\Characters\\AI\\/../AI/CharAI.h",
        673);
    }
  }
  if ( a1[8] )
  {
    (*(void (__fastcall **)(_DWORD *))(*a1 + 20))(a1);
    v2 = a1[8];
    if ( v2 )
    {
      (*(void (__fastcall **)(_DWORD))(*(_DWORD *)v2 + 4))(a1[8]);
      a1[8] = 0;
    }
  }
  v3 = (CharAIScript *)operator new(0xD8u, 0);
  CharAIScript::CharAIScript(v3, 1);
  *((_DWORD *)v3 + 46) = 0;
  *((_DWORD *)v3 + 47) = 0;
  *((_DWORD *)v3 + 48) = 0;
  *(_DWORD *)v3 = off_966C00;
  result = std::vector<Character *>::vector((_DWORD *)v3 + 49);
  *((_DWORD *)v3 + 53) = 0;
  *((_DWORD *)v3 + 52) = 0;
  a1[8] = v3;
  return result;
}


// ===== 3cd240 std::allocator<CharAI **>::allocate(uint,void const*) =====
void *__fastcall std::allocator<CharAI **>::allocate(int a1, unsigned int a2)
{
  size_t __n[2]; // [sp+4h] [bp-8h] BYREF

  if ( a2 > 0x3FFFFFFF )
  {
    puts("out of memory\n");
    exit(1);
  }
  if ( !a2 )
    return nullptr;
  __n[0] = 4 * a2;
  if ( 4 * a2 > 0x80 )
    return CustomAlloc(4 * a2);
  else
    return __ZNSt12__node_alloc11_M_allocateERj_veneer(__n);
}


// ===== 3cd2a0 std::allocator<CharAISkillScript *>::_M_allocate(uint,uint &) =====
void *__fastcall std::allocator<CharAISkillScript *>::_M_allocate(int a1, unsigned int a2, size_t *a3)
{
  void *result; // r0
  size_t __n; // [sp+4h] [bp-4h] BYREF

  if ( a2 > 0x3FFFFFFF )
  {
    puts("out of memory\n");
    exit(1);
  }
  if ( !a2 )
    return nullptr;
  __n = 4 * a2;
  if ( 4 * a2 > 0x80 )
    result = CustomAlloc(4 * a2);
  else
    result = __ZNSt12__node_alloc11_M_allocateERj_veneer(&__n);
  *a3 = __n >> 2;
  return result;
}


// ===== 3cd310 std::vector<CharAISkillScript *,std::allocator<CharAISkillScript *>>::_M_allocate_and_copy<CharAISkillScript **>(uint &,CharAISkillScript **,CharAISkillScript **) =====
void *__fastcall std::vector<CharAISkillScript *>::_M_allocate_and_copy<CharAISkillScript **>(
        int a1,
        unsigned int *a2,
        _BYTE *a3,
        _BYTE *a4)
{
  void *v6; // r0
  void *v7; // r6

  v6 = std::allocator<CharAISkillScript *>::_M_allocate(a1 + 8, *a2, a2);
  v7 = v6;
  if ( a3 != a4 )
    memcpy(v6, a3, a4 - a3);
  return v7;
}


// ===== 3cd34c std::priv::_Rb_tree<Character *,std::less<Character *>,std::pair<Character * const,float>,std::priv::_Select1st<std::pair<Character * const,float>>,std::priv::_MapTraitsT<std::pair<Character * const,float>>,std::allocator<std::pair<Character * const,float>>>::_M_erase(std::priv::_Rb_tree_node_base *) =====
void __fastcall std::priv::_Rb_tree<Character *,std::less<Character *>,std::pair<Character * const,float>,std::priv::_Select1st<std::pair<Character * const,float>>,std::priv::_MapTraitsT<std::pair<Character * const,float>>,std::allocator<std::pair<Character * const,float>>>::_M_erase(
        int a1,
        _DWORD *a2)
{
  _DWORD *v2; // r4
  _DWORD *v4; // r5

  v2 = a2;
  if ( a2 )
  {
    do
    {
      std::priv::_Rb_tree<Character *,std::less<Character *>,std::pair<Character * const,float>,std::priv::_Select1st<std::pair<Character * const,float>>,std::priv::_MapTraitsT<std::pair<Character * const,float>>,std::allocator<std::pair<Character * const,float>>>::_M_erase(
        a1,
        v2[3]);
      v4 = (_DWORD *)v2[2];
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v2, 0x18u);
      v2 = v4;
    }
    while ( v4 );
  }
}


// ===== 3cd384 CharAI::ClearAllAggro(void) =====
_DWORD *__fastcall CharAI::ClearAllAggro(CharAI *this)
{
  _DWORD *v1; // r5
  int v2; // r8
  _DWORD *v3; // r4
  _DWORD *v4; // r4
  _DWORD *result; // r0
  int v6; // r0
  _DWORD *v7; // r5
  int v8; // r10
  int v9; // [sp+4h] [bp-28h]
  _DWORD v10[5]; // [sp+8h] [bp-24h] BYREF
  _DWORD v11[4]; // [sp+1Ch] [bp-10h] BYREF

  v2 = dword_99F764 + 96;
  v1 = *(_DWORD **)(dword_99F764 + 96);
  if ( (_DWORD *)(dword_99F764 + 96) != v1 )
  {
    do
    {
      v3 = (_DWORD *)v1[2];
      if ( v3 )
        v3 += 242;
      if ( v3[35] )
      {
        std::priv::_Rb_tree<Character *,std::less<Character *>,std::pair<Character * const,float>,std::priv::_Select1st<std::pair<Character * const,float>>,std::priv::_MapTraitsT<std::pair<Character * const,float>>,std::allocator<std::pair<Character * const,float>>>::_M_erase(
          v3 + 31,
          v3[32]);
        v3[34] = v3 + 31;
        v3[33] = v3 + 31;
        v3[32] = 0;
        v3[35] = 0;
      }
      if ( v3[41] )
      {
        std::priv::_Rb_tree<Character *,std::less<Character *>,std::pair<Character * const,float>,std::priv::_Select1st<std::pair<Character * const,float>>,std::priv::_MapTraitsT<std::pair<Character * const,float>>,std::allocator<std::pair<Character * const,float>>>::_M_erase(
          v3 + 37,
          v3[38]);
        v3[40] = v3 + 37;
        v3[41] = 0;
        v3[39] = v3 + 37;
        v3[38] = 0;
      }
      v1 = (_DWORD *)*v1;
    }
    while ( (_DWORD *)v2 != v1 );
  }
  v4 = *(_DWORD **)(dword_99F764 + 4);
  v9 = dword_99F764 + 4;
  ObjectHandle::ObjectHandle((ObjectHandle *)v11);
  for ( result = v10; (_DWORD *)v9 != v4; result = v10 )
  {
    if ( !v4[2] )
      goto LABEL_16;
    ObjectBase::GetHandle((ObjectBase *)v10);
    v11[0] = v10[0];
    v11[1] = v10[1];
    v11[2] = v10[2];
    if ( !ObjectHandle::GetObject((ObjectHandle *)v11, 0) )
      goto LABEL_16;
    v6 = ObjectHandle::operator Character *(v11);
    v7 = (_DWORD *)v6;
    if ( !v6 )
      goto LABEL_16;
    if ( *(_DWORD *)(v6 + 1108) )
    {
      v8 = v6 + 1092;
      std::priv::_Rb_tree<Character *,std::less<Character *>,std::pair<Character * const,float>,std::priv::_Select1st<std::pair<Character * const,float>>,std::priv::_MapTraitsT<std::pair<Character * const,float>>,std::allocator<std::pair<Character * const,float>>>::_M_erase(
        v6 + 1092,
        *(_DWORD *)(v6 + 1096));
      v7[276] = v8;
      v7[275] = v8;
      v7[274] = 0;
      v7[277] = 0;
    }
    if ( v7[283] )
    {
      std::priv::_Rb_tree<Character *,std::less<Character *>,std::pair<Character * const,float>,std::priv::_Select1st<std::pair<Character * const,float>>,std::priv::_MapTraitsT<std::pair<Character * const,float>>,std::allocator<std::pair<Character * const,float>>>::_M_erase(
        v7 + 279,
        v7[280]);
      v7[282] = v7 + 279;
      v7[283] = 0;
      v7[281] = v7 + 279;
      v7[280] = 0;
      v4 = (_DWORD *)*v4;
    }
    else
    {
LABEL_16:
      v4 = (_DWORD *)*v4;
    }
  }
  return result;
}


// ===== 3cd54c std::priv::_Rb_tree<uint,std::less<uint>,std::pair<uint const,Character *>,std::priv::_Select1st<std::pair<uint const,Character *>>,std::priv::_MapTraitsT<std::pair<uint const,Character *>>,std::allocator<std::pair<uint const,Character *>>>::_M_erase(std::priv::_Rb_tree_node_base *) =====
void __fastcall std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,Character *>,std::priv::_Select1st<std::pair<unsigned int const,Character *>>,std::priv::_MapTraitsT<std::pair<unsigned int const,Character *>>,std::allocator<std::pair<unsigned int const,Character *>>>::_M_erase(
        int a1,
        _DWORD *a2)
{
  _DWORD *v2; // r4
  _DWORD *v4; // r5

  v2 = a2;
  if ( a2 )
  {
    do
    {
      std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,Character *>,std::priv::_Select1st<std::pair<unsigned int const,Character *>>,std::priv::_MapTraitsT<std::pair<unsigned int const,Character *>>,std::allocator<std::pair<unsigned int const,Character *>>>::_M_erase(
        a1,
        v2[3]);
      v4 = (_DWORD *)v2[2];
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v2, 0x18u);
      v2 = v4;
    }
    while ( v4 );
  }
}


// ===== 3cd584 std::vector<CharAISkillScript *,std::allocator<CharAISkillScript *>>::reserve(uint) =====
void __fastcall std::vector<CharAISkillScript *>::reserve(_DWORD *a1, unsigned int a2)
{
  _BYTE *v3; // r2
  int v4; // r0
  _BYTE *v5; // r3
  int v6; // r5
  char *v7; // r6
  _BYTE *v8; // r0
  size_t v9; // r1
  unsigned int v10; // r3
  unsigned int v11; // [sp+4h] [bp-4h] BYREF

  v3 = (_BYTE *)*a1;
  v4 = a1[2];
  v11 = a2;
  if ( a2 > (v4 - (int)v3) >> 2 )
  {
    if ( a2 > 0x3FFFFFFF )
    {
      __ZSt24__stl_throw_length_errorPKc_veneer("vector");
      v3 = (_BYTE *)*a1;
    }
    v5 = (_BYTE *)a1[1];
    v6 = (v5 - v3) >> 2;
    if ( v3 )
    {
      v7 = (char *)std::vector<CharAISkillScript *>::_M_allocate_and_copy<CharAISkillScript **>((int)a1, &v11, v3, v5);
      v8 = (_BYTE *)*a1;
      if ( *a1 )
      {
        v9 = (a1[2] - (_DWORD)v8) & 0xFFFFFFFC;
        if ( v9 > 0x80 )
          CustomFree(v8);
        else
          __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v8, v9);
      }
    }
    else
    {
      v7 = (char *)std::allocator<CharAISkillScript *>::_M_allocate((int)(a1 + 2), v11, &v11);
    }
    v10 = v11;
    a1[1] = &v7[4 * v6];
    a1[2] = &v7[4 * v10];
    *a1 = v7;
  }
}


// ===== 3cd650 std::priv::_Deque_base<CharAI *,std::allocator<CharAI *>>::~_Deque_base() =====
_DWORD *__fastcall std::priv::_Deque_base<CharAI *,std::allocator<CharAI *>>::~_Deque_base(_DWORD *a1)
{
  void *v2; // r0
  void **v3; // r4
  unsigned int v4; // r5
  void *v5; // r0
  int v6; // r1
  size_t v7; // r1

  v2 = (void *)a1[8];
  if ( !v2 )
    return a1;
  v3 = (void **)a1[3];
  v4 = a1[7] + 4;
  if ( (unsigned int)v3 >= v4 )
  {
    v6 = a1[9];
  }
  else
  {
    do
    {
      v5 = *v3++;
      if ( v5 )
        __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v5, 0x80u);
    }
    while ( v4 > (unsigned int)v3 );
    v2 = (void *)a1[8];
    v6 = a1[9];
    if ( !v2 )
      return a1;
  }
  v7 = 4 * v6;
  if ( v7 <= 0x80 )
  {
    __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v2, v7);
    return a1;
  }
  CustomFree(v2);
  return a1;
}


// ===== 3cd6d4 std::deque<CharAI *,std::allocator<CharAI *>>::~deque() =====
_DWORD *__fastcall std::deque<CharAI *>::~deque(_DWORD *a1)
{
  std::priv::_Deque_base<CharAI *,std::allocator<CharAI *>>::~_Deque_base(a1);
  return a1;
}


// ===== 3cd6e8 std::allocator<CharAI *>::allocate(uint,void const*) [clone] =====
void *std::allocator<CharAI *>::allocate()
{
  size_t v1; // [sp+4h] [bp-8h] BYREF

  v1 = 128;
  return __ZNSt12__node_alloc11_M_allocateERj_veneer(&v1);
}


// ===== 3cd708 `global constructor keyed to'.._.._sources_Game_Objects_Characters_AI_CharAI.cpp =====
int `global constructor keyed to'.._.._sources_Game_Objects_Characters_AI_CharAI.cpp()
{
  _DWORD *v0; // r8
  unsigned int v1; // r10
  int v2; // r12
  int result; // r0

  dword_9A2B44 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9A2B40 = 1056964608;
  CharAI::s_updateQueue = 0;
  dword_9A2B4C = 0;
  dword_9A2B50 = 0;
  dword_9A2B54 = 0;
  dword_9A2B58 = 0;
  dword_9A2B5C = 0;
  dword_9A2B60 = 0;
  dword_9A2B64 = 0;
  dword_9A2B68 = 0;
  dword_9A2B6C = 8;
  v0 = std::allocator<CharAI **>::allocate((int)&dword_9A2B68, 8u);
  dword_9A2B68 = (int)v0;
  v1 = (unsigned int)(dword_9A2B6C - 1) >> 1;
  v0[v1] = std::allocator<CharAI *>::allocate();
  dword_9A2B54 = (int)&v0[v1];
  v2 = v0[v1];
  dword_9A2B64 = (int)&v0[v1];
  dword_9A2B50 = v2 + 128;
  dword_9A2B4C = v2;
  dword_9A2B58 = v0[v1];
  dword_9A2B5C = dword_9A2B58;
  dword_9A2B60 = dword_9A2B58 + 128;
  CharAI::s_updateQueue = v2;
  result = _aeabi_atexit((int)&CharAI::s_updateQueue, (int)std::deque<CharAI *>::~deque, (int)&_dso_handle);
  if ( (`guard variable for'Singleton<PlayerStatManager>::s_inst & 1) == 0 )
  {
    `guard variable for'Singleton<PlayerStatManager>::s_inst = 1;
    PlayerStatManager::PlayerStatManager((PlayerStatManager *)&Singleton<PlayerStatManager>::s_inst);
    result = _aeabi_atexit(
               (int)&Singleton<PlayerStatManager>::s_inst,
               (int)PlayerStatManager::~PlayerStatManager,
               (int)&_dso_handle);
  }
  if ( (`guard variable for'Singleton<Application>::s_inst & 1) == 0 )
  {
    `guard variable for'Singleton<Application>::s_inst = 1;
    Application::Application((Application *)&Singleton<Application>::s_inst);
    return _aeabi_atexit((int)&Singleton<Application>::s_inst, (int)Application::~Application, (int)&_dso_handle);
  }
  return result;
}


// ===== 3cd89c std::vector<CharAISkillScript *,std::allocator<CharAISkillScript *>>::_M_insert_overflow(CharAISkillScript **,CharAISkillScript * const&,std::__true_type const&,uint,bool) [clone] =====
void __fastcall std::vector<CharAISkillScript *>::_M_insert_overflow(int a1, int a2, _DWORD *a3)
{
  unsigned int v5; // r3
  unsigned int v6; // r1
  char *v8; // r0
  char *v9; // r5
  size_t v10; // r6
  char *v11; // r6
  _DWORD *v12; // r6
  void *v13; // r0
  size_t v14; // r1
  size_t v15; // r3
  size_t v16; // [sp+4h] [bp-8h] BYREF

  v5 = (*(_DWORD *)(a1 + 4) - *(_DWORD *)a1) >> 2;
  if ( v5 )
    v6 = 2 * v5;
  else
    v6 = 1;
  if ( v6 > 0x3FFFFFFF || v5 > v6 )
    v6 = 0x3FFFFFFF;
  v16 = v6;
  v8 = (char *)std::allocator<CharAISkillScript *>::_M_allocate(a1 + 8, v6, &v16);
  v9 = v8;
  v10 = a2 - *(_DWORD *)a1;
  if ( v10 )
    v11 = (char *)memmove(v8, *(const void **)a1, v10) + v10;
  else
    v11 = v8;
  *(_DWORD *)v11 = *a3;
  v12 = v11 + 4;
  v13 = *(void **)a1;
  if ( *(_DWORD *)a1 )
  {
    v14 = (*(_DWORD *)(a1 + 8) - (_DWORD)v13) & 0xFFFFFFFC;
    if ( v14 > 0x80 )
      CustomFree(v13);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v13, v14);
  }
  v15 = v16;
  *(_DWORD *)a1 = v9;
  *(_DWORD *)(a1 + 4) = v12;
  *(_DWORD *)(a1 + 8) = &v9[4 * v15];
}


// ===== 3cd964 CharAI::~CharAI() =====
void __fastcall CharAI::~CharAI(CharAI ***this)
{
  int v2; // lr
  int v3; // r12
  int v4; // r3
  CharAI **i; // r2
  CharAI **v6; // t1
  _BYTE *v7; // r0
  size_t v8; // r1
  _BYTE *v9; // r0
  size_t v10; // r1
  CharAI **v11; // r0
  CharAI *v12; // r5
  int v13[4]; // [sp+0h] [bp-20h] BYREF
  int v14[4]; // [sp+10h] [bp-10h] BYREF

  *this = (CharAI **)off_966798;
  v2 = dword_9A2B54;
  v3 = dword_9A2B4C;
  v4 = dword_9A2B50;
  for ( i = (CharAI **)CharAI::s_updateQueue; (CharAI **)dword_9A2B58 != i; i = v6 )
  {
    if ( this == (CharAI ***)*i )
    {
LABEL_9:
      v13[3] = v2;
      v13[2] = v4;
      v13[0] = (int)i;
      v13[1] = v3;
      std::deque<CharAI *>::_M_erase(v14, v13);
      break;
    }
    if ( ++i != (CharAI **)v4 )
    {
      while ( (CharAI **)dword_9A2B58 != i )
      {
        if ( this == (CharAI ***)*i )
          goto LABEL_9;
        if ( (CharAI **)v4 == ++i )
          goto LABEL_8;
      }
      break;
    }
LABEL_8:
    v6 = *(CharAI ***)(v2 + 4);
    v2 += 4;
    v3 = (int)v6;
    v4 = (int)(v6 + 32);
  }
  CharAI::OnTerminate((CharAI *)this);
  CharAI::AIUnLoadScriptProcess((CharAI *)this, 1);
  v7 = *(this + 48);
  if ( v7 )
  {
    v8 = ((char *)*(this + 50) - v7) & 0xFFFFFFFC;
    if ( v8 > 0x80 )
      CustomFree(v7);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v7, v8);
  }
  v9 = *(this + 45);
  if ( v9 )
  {
    v10 = ((char *)*(this + 47) - v9) & 0xFFFFFFFC;
    if ( v10 > 0x80 )
      CustomFree(v9);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v9, v10);
  }
  v11 = *(this + 43);
  if ( v11 != (CharAI **)(this + 43) )
  {
    while ( 1 )
    {
      v12 = *v11;
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v11, 0x18u);
      if ( v12 == (CharAI *)(this + 43) )
        break;
      v11 = (CharAI **)v12;
    }
    v11 = (CharAI **)(this + 43);
  }
  *(this + 43) = v11;
  *(this + 44) = v11;
  if ( *(this + 41) )
  {
    std::priv::_Rb_tree<Character *,std::less<Character *>,std::pair<Character * const,float>,std::priv::_Select1st<std::pair<Character * const,float>>,std::priv::_MapTraitsT<std::pair<Character * const,float>>,std::allocator<std::pair<Character * const,float>>>::_M_erase(
      (int)(this + 37),
      *(this + 38));
    *(this + 40) = (CharAI **)(this + 37);
    *(this + 41) = nullptr;
    *(this + 39) = (CharAI **)(this + 37);
    *(this + 38) = nullptr;
  }
  if ( *(this + 35) )
  {
    std::priv::_Rb_tree<Character *,std::less<Character *>,std::pair<Character * const,float>,std::priv::_Select1st<std::pair<Character * const,float>>,std::priv::_MapTraitsT<std::pair<Character * const,float>>,std::allocator<std::pair<Character * const,float>>>::_M_erase(
      (int)(this + 31),
      *(this + 32));
    *(this + 34) = (CharAI **)(this + 31);
    *(this + 35) = nullptr;
    *(this + 33) = (CharAI **)(this + 31);
    *(this + 32) = nullptr;
  }
  if ( *(this + 27) )
  {
    std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,Character *>,std::priv::_Select1st<std::pair<unsigned int const,Character *>>,std::priv::_MapTraitsT<std::pair<unsigned int const,Character *>>,std::allocator<std::pair<unsigned int const,Character *>>>::_M_erase(
      (int)(this + 23),
      *(this + 24));
    *(this + 26) = (CharAI **)(this + 23);
    *(this + 27) = nullptr;
    *(this + 25) = (CharAI **)(this + 23);
    *(this + 24) = nullptr;
  }
}


// ===== 3cdb60 CharAI::~CharAI() =====
void __fastcall CharAI::~CharAI(CharAI ***this)
{
  int v2; // lr
  int v3; // r12
  int v4; // r3
  CharAI **i; // r2
  CharAI **v6; // t1
  _BYTE *v7; // r0
  size_t v8; // r1
  _BYTE *v9; // r0
  size_t v10; // r1
  CharAI **v11; // r0
  CharAI *v12; // r5
  _DWORD v13[4]; // [sp+0h] [bp-20h] BYREF
  char v14[16]; // [sp+10h] [bp-10h] BYREF

  *this = (CharAI **)off_966798;
  v2 = dword_9A2B54;
  v3 = dword_9A2B4C;
  v4 = dword_9A2B50;
  for ( i = (CharAI **)CharAI::s_updateQueue; (CharAI **)dword_9A2B58 != i; i = v6 )
  {
    if ( this == (CharAI ***)*i )
    {
LABEL_9:
      v13[3] = v2;
      v13[2] = v4;
      v13[0] = i;
      v13[1] = v3;
      std::deque<CharAI *>::_M_erase(v14, v13);
      break;
    }
    if ( ++i != (CharAI **)v4 )
    {
      while ( (CharAI **)dword_9A2B58 != i )
      {
        if ( this == (CharAI ***)*i )
          goto LABEL_9;
        if ( (CharAI **)v4 == ++i )
          goto LABEL_8;
      }
      break;
    }
LABEL_8:
    v6 = *(CharAI ***)(v2 + 4);
    v2 += 4;
    v3 = (int)v6;
    v4 = (int)(v6 + 32);
  }
  CharAI::OnTerminate((CharAI *)this);
  CharAI::AIUnLoadScriptProcess((CharAI *)this, 1);
  v7 = *(this + 48);
  if ( v7 )
  {
    v8 = ((char *)*(this + 50) - v7) & 0xFFFFFFFC;
    if ( v8 > 0x80 )
      CustomFree(v7);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v7, v8);
  }
  v9 = *(this + 45);
  if ( v9 )
  {
    v10 = ((char *)*(this + 47) - v9) & 0xFFFFFFFC;
    if ( v10 > 0x80 )
      CustomFree(v9);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v9, v10);
  }
  v11 = *(this + 43);
  if ( v11 != (CharAI **)(this + 43) )
  {
    while ( 1 )
    {
      v12 = *v11;
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v11, 0x18u);
      if ( v12 == (CharAI *)(this + 43) )
        break;
      v11 = (CharAI **)v12;
    }
    v11 = (CharAI **)(this + 43);
  }
  *(this + 43) = v11;
  *(this + 44) = v11;
  if ( *(this + 41) )
  {
    std::priv::_Rb_tree<Character *,std::less<Character *>,std::pair<Character * const,float>,std::priv::_Select1st<std::pair<Character * const,float>>,std::priv::_MapTraitsT<std::pair<Character * const,float>>,std::allocator<std::pair<Character * const,float>>>::_M_erase(
      this + 37,
      *(this + 38));
    *(this + 40) = (CharAI **)(this + 37);
    *(this + 41) = nullptr;
    *(this + 39) = (CharAI **)(this + 37);
    *(this + 38) = nullptr;
  }
  if ( *(this + 35) )
  {
    std::priv::_Rb_tree<Character *,std::less<Character *>,std::pair<Character * const,float>,std::priv::_Select1st<std::pair<Character * const,float>>,std::priv::_MapTraitsT<std::pair<Character * const,float>>,std::allocator<std::pair<Character * const,float>>>::_M_erase(
      this + 31,
      *(this + 32));
    *(this + 34) = (CharAI **)(this + 31);
    *(this + 35) = nullptr;
    *(this + 33) = (CharAI **)(this + 31);
    *(this + 32) = nullptr;
  }
  if ( *(this + 27) )
  {
    std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,Character *>,std::priv::_Select1st<std::pair<unsigned int const,Character *>>,std::priv::_MapTraitsT<std::pair<unsigned int const,Character *>>,std::allocator<std::pair<unsigned int const,Character *>>>::_M_erase(
      this + 23,
      *(this + 24));
    *(this + 26) = (CharAI **)(this + 23);
    *(this + 27) = nullptr;
    *(this + 25) = (CharAI **)(this + 23);
    *(this + 24) = nullptr;
  }
}


// ===== 3cdd5c CharAI::~CharAI() =====
void __fastcall CharAI::~CharAI(CharAI ***this)
{
  CharAI::~CharAI(this);
  CustomFree(this);
}


// ===== 3cdd78 sfc::script::lua::Arguments::pushInteger(int) =====
void __fastcall sfc::script::lua::Arguments::pushInteger(sfc::script::lua::Arguments *this, int a2)
{
  void **v2; // r7
  _DWORD v3[3]; // [sp+4h] [bp-78h] BYREF
  int v4; // [sp+10h] [bp-6Ch] BYREF
  void *__p; // [sp+24h] [bp-58h]
  int v6; // [sp+28h] [bp-54h] BYREF

  v2 = *((void ***)this + 1);
  sfc::script::lua::Value::Value((sfc::script::lua::Value *)v3, a2);
  std::vector<sfc::script::lua::Value>::push_back(v2, (const sfc::script::lua::Value *)v3);
  v3[0] = off_95B0F0;
  std::priv::_String_base<wchar_t,std::allocator<wchar_t>>::_M_deallocate_block((int)&v6);
  if ( __p != &v4 && __p )
  {
    if ( (unsigned int)(v4 - (_DWORD)__p) > 0x80 )
      CustomFree(__p);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(__p, v4 - (_DWORD)__p);
  }
}


// ===== 3cde2c CharAISkillScript::CharAISkillScript(Character *,char const*,uint) =====
void __fastcall CharAISkillScript::CharAISkillScript(CharAISkillScript *this, Character *a2, const char *a3, int a4)
{
  sfc::script::lua::Arguments *v5; // r7

  v5 = (CharAISkillScript *)((char *)this + 12);
  *(_DWORD *)this = off_966788;
  *((_DWORD *)this + 1) = a2;
  *((_DWORD *)this + 2) = a3;
  sfc::script::lua::Arguments::Arguments((CharAISkillScript *)((char *)this + 12));
  *((_DWORD *)this + 6) = -1;
  *((_DWORD *)this + 5) = a4;
  if ( !a2 )
  {
    if ( gAssertLevel == 2 )
    {
      dword_0 = 0;
    }
    else if ( gAssertLevel == 1 )
    {
      fprintf(
        (FILE *)&_sF + 2,
        "ASSERT(%s) FAILED: %s:%d\n",
        "user",
        "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Objects\\Characters\\AI\\/CharAISkillScript.h",
        46);
    }
  }
  if ( !a3 )
  {
    if ( gAssertLevel == 2 )
    {
      dword_0 = 0;
    }
    else if ( gAssertLevel == 1 )
    {
      fprintf(
        (FILE *)&_sF + 2,
        "ASSERT(%s) FAILED: %s:%d\n",
        "name",
        "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Objects\\Characters\\AI\\/CharAISkillScript.h",
        46);
    }
  }
  sfc::script::lua::Arguments::pushString(v5, a3);
  sfc::script::lua::Arguments::pushInteger(v5, a4);
}


// ===== 3cdf7c CharAI::StepLoadScript(void) =====
void __fastcall CharAI::StepLoadScript(CharAI *this)
{
  char *v1; // r1
  std::string v2; // [sp+4h] [bp-20h] BYREF

  v1 = *((char **)this + 12);
  if ( v1 )
  {
    LuaScript::Load(*((LuaScript **)this + 8), v1);
    DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
    std::string::string(&v2, "Lua_LoadMemUsage");
    DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v2);
    if ( (std::string *)v2._M_start_of_storage._M_data != &v2 )
    {
      if ( v2._M_start_of_storage._M_data )
      {
        if ( (unsigned int)(v2._M_buffers._M_end_of_storage - v2._M_start_of_storage._M_data) > 0x80 )
          CustomFree(v2._M_start_of_storage._M_data);
        else
          __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(
            v2._M_start_of_storage._M_data,
            v2._M_buffers._M_end_of_storage - v2._M_start_of_storage._M_data);
      }
    }
  }
}


// ===== 3ce044 CharAI::SetSkillsAndSpells(void) =====
void __fastcall CharAI::SetSkillsAndSpells(CharAI *this)
{
  int v2; // r3
  int v3; // r5
  unsigned int v4; // r5
  std::string *v5; // r0
  int CharFaeryList; // r7
  sfc::script::lua::Value **v7; // r6
  sfc::script::lua::Value *v8; // r0
  sfc::script::lua::Value **v9; // r6
  sfc::script::lua::Value *v10; // r0
  CharAISkillScript *v11; // r6
  CharAISkillScript **v12; // r1
  CharAISkillScript **v13; // r3
  int CharFaery; // r8
  _DWORD *v15; // r1
  _DWORD *v16; // r2
  _DWORD *v17; // r1
  _DWORD *v18; // r3
  int CharSkillList; // r7
  sfc::script::lua::Value **v20; // r6
  sfc::script::lua::Value *v21; // r0
  sfc::script::lua::Value **v22; // r6
  sfc::script::lua::Value *v23; // r2
  CharAISkillScript *v24; // r6
  CharAISkillScript **v25; // r1
  CharAISkillScript **v26; // r3
  int CharSkill; // r8
  _DWORD *v28; // r1
  _DWORD *v29; // r2
  _DWORD *v30; // r1
  _DWORD *v31; // r3
  char *v32; // [sp+18h] [bp-8Ch]
  char *v33; // [sp+18h] [bp-8Ch]
  char v34[4]; // [sp+2Ch] [bp-78h] BYREF
  int v35; // [sp+30h] [bp-74h]
  int v36; // [sp+34h] [bp-70h]
  int v37; // [sp+38h] [bp-6Ch]
  CharAISkillScript *v38; // [sp+3Ch] [bp-68h]
  int v39; // [sp+40h] [bp-64h]
  int v40; // [sp+44h] [bp-60h]
  CharAISkillScript *v41; // [sp+48h] [bp-5Ch]
  std::string v42; // [sp+54h] [bp-50h] BYREF
  std::string v43; // [sp+6Ch] [bp-38h] BYREF
  std::string v44; // [sp+84h] [bp-20h] BYREF

  if ( !*((_DWORD *)this + 7) )
  {
    if ( gAssertLevel == 2 )
    {
      dword_0 = 0;
    }
    else if ( gAssertLevel == 1 )
    {
      fprintf(
        (FILE *)&_sF + 2,
        "ASSERT(%s) FAILED: %s:%d\n",
        "m_script",
        "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Objects\\Characters\\AI\\CharAI.cpp",
        660);
    }
  }
  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string((int)&v44, "Lua_LoadMemUsage");
  DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v44);
  if ( (std::string *)v44._M_start_of_storage._M_data != &v44 && v44._M_start_of_storage._M_data )
  {
    if ( (unsigned int)(v44._M_buffers._M_end_of_storage - v44._M_start_of_storage._M_data) > 0x80 )
      CustomFree(v44._M_start_of_storage._M_data);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(
        v44._M_start_of_storage._M_data,
        v44._M_buffers._M_end_of_storage - v44._M_start_of_storage._M_data);
  }
  v2 = *((_DWORD *)this + 7);
  v43._M_finish = (char *)&v43;
  v43._M_start_of_storage._M_data = (char *)&v43;
  std::string::_M_range_initialize(&v43, *(const char **)(v2 + 124), *(const char **)(v2 + 120));
  std::string::_M_assign((std::string *const)(*((_DWORD *)this + 7) + 104), "data/scripts/skills/", "");
  v3 = (*((_DWORD *)this + 46) - *((_DWORD *)this + 45)) >> 2;
  if ( !v3 )
  {
    v33 = (char *)this + 180;
    CharSkillList = Character::GetCharSkillList(*((Character **)this + 1));
    std::vector<CharAISkillScript *>::reserve((char *)this + 180, *(_DWORD *)(CharSkillList + 4));
    sfc::script::lua::Arguments::Arguments((sfc::script::lua::Arguments *)v34);
    sfc::script::lua::Arguments::pushString((sfc::script::lua::Arguments *)v34, "");
    sfc::script::lua::Arguments::pushInteger((sfc::script::lua::Arguments *)v34, -1);
    if ( !*(_DWORD *)(CharSkillList + 4) )
    {
LABEL_50:
      sfc::script::lua::Arguments::~Arguments((sfc::script::lua::Arguments *)v34);
      goto LABEL_7;
    }
    while ( 1 )
    {
      while ( 1 )
      {
        CharSkill = Character::GetCharSkill(*((Character **)this + 1), v3);
        if ( *(_DWORD *)(CharSkill + 36) )
          break;
        v28 = *((_DWORD **)this + 46);
        v29 = *((_DWORD **)this + 47);
        v39 = 0;
        if ( v28 == v29 )
        {
          std::vector<CharAISkillScript *>::_M_insert_overflow(v33);
          goto LABEL_46;
        }
        *v28 = 0;
        ++v3;
        *((_DWORD *)this + 46) += 4;
        if ( *(_DWORD *)(CharSkillList + 4) <= (unsigned int)v3 )
          goto LABEL_50;
      }
      LuaScript::Load(*((LuaScript **)this + 7), "_commons");
      v20 = (sfc::script::lua::Value **)v35;
      v21 = *(sfc::script::lua::Value **)v35;
      if ( !(1227133513 * ((*(_DWORD *)(v35 + 4) - *(_DWORD *)v35) >> 4)) )
      {
        __ZSt24__stl_throw_out_of_rangePKc_veneer("vector");
        v21 = *v20;
      }
      sfc::script::lua::Value::setString(v21, *(const char **)(CharSkill + 40));
      v22 = (sfc::script::lua::Value **)v35;
      v23 = *(sfc::script::lua::Value **)v35;
      if ( (unsigned int)(-1227133513 * ((*(_DWORD *)(v35 + 4) - *(_DWORD *)v35) >> 4)) <= 1 )
      {
        __ZSt24__stl_throw_out_of_rangePKc_veneer("vector");
        v23 = *v22;
      }
      sfc::script::lua::Value::setNumber((sfc::script::lua::Value *)((char *)v23 + 112), (float)v3);
      LuaScript::Call(*((LuaScript **)this + 7), "DeclareSkill", (const sfc::script::lua::Arguments *)v34);
      if ( LuaScript::Load(*((LuaScript **)this + 7), *(const char **)(CharSkill + 40)) )
      {
        v24 = (CharAISkillScript *)operator new(28, 0);
        CharAISkillScript::CharAISkillScript(v24, *((Character **)this + 1), *(const char **)(CharSkill + 40), v3);
        v25 = *((CharAISkillScript ***)this + 46);
        v26 = *((CharAISkillScript ***)this + 47);
        v41 = v24;
        if ( v25 == v26 )
          goto LABEL_62;
        *v25 = v24;
        *((_DWORD *)this + 46) += 4;
      }
      else
      {
        v30 = *((_DWORD **)this + 46);
        v31 = *((_DWORD **)this + 47);
        v40 = 0;
        if ( v30 == v31 )
        {
LABEL_62:
          std::vector<CharAISkillScript *>::_M_insert_overflow(v33);
          goto LABEL_45;
        }
        *v30 = 0;
        *((_DWORD *)this + 46) += 4;
      }
LABEL_45:
      LuaScript::Call(*((LuaScript **)this + 7), "DeclareSkill");
LABEL_46:
      if ( *(_DWORD *)(CharSkillList + 4) <= (unsigned int)++v3 )
        goto LABEL_50;
    }
  }
LABEL_7:
  v4 = (*((_DWORD *)this + 49) - *((_DWORD *)this + 48)) >> 2;
  if ( v4 )
    goto LABEL_8;
  v32 = (char *)this + 192;
  CharFaeryList = Character::GetCharFaeryList(*((Character **)this + 1));
  std::vector<CharAISkillScript *>::reserve((char *)this + 192, *(_DWORD *)(CharFaeryList + 4));
  sfc::script::lua::Arguments::Arguments((sfc::script::lua::Arguments *)v34);
  sfc::script::lua::Arguments::pushString((sfc::script::lua::Arguments *)v34, "");
  sfc::script::lua::Arguments::pushInteger((sfc::script::lua::Arguments *)v34, -1);
  if ( *(_DWORD *)(CharFaeryList + 4) )
  {
    do
    {
      while ( 1 )
      {
        CharFaery = Character::GetCharFaery(*((Character **)this + 1), v4);
        if ( *(_DWORD *)(CharFaery + 20) )
          break;
        v15 = *((_DWORD **)this + 49);
        v16 = *((_DWORD **)this + 50);
        v36 = 0;
        if ( v15 == v16 )
        {
          std::vector<CharAISkillScript *>::_M_insert_overflow(v32);
          goto LABEL_29;
        }
        *v15 = 0;
        ++v4;
        *((_DWORD *)this + 49) += 4;
        if ( *(_DWORD *)(CharFaeryList + 4) <= v4 )
          goto LABEL_33;
      }
      LuaScript::Load(*((LuaScript **)this + 7), "_commons");
      v7 = (sfc::script::lua::Value **)v35;
      v8 = *(sfc::script::lua::Value **)v35;
      if ( !(1227133513 * ((*(_DWORD *)(v35 + 4) - *(_DWORD *)v35) >> 4)) )
      {
        __ZSt24__stl_throw_out_of_rangePKc_veneer("vector");
        v8 = *v7;
      }
      sfc::script::lua::Value::setString(v8, *(const char **)(CharFaery + 24));
      v9 = (sfc::script::lua::Value **)v35;
      v10 = *(sfc::script::lua::Value **)v35;
      if ( (unsigned int)(-1227133513 * ((*(_DWORD *)(v35 + 4) - *(_DWORD *)v35) >> 4)) <= 1 )
      {
        __ZSt24__stl_throw_out_of_rangePKc_veneer("vector");
        v10 = *v9;
      }
      sfc::script::lua::Value::setNumber((sfc::script::lua::Value *)((char *)v10 + 112), -1.0);
      LuaScript::Call(*((LuaScript **)this + 7), "DeclareSkill", (const sfc::script::lua::Arguments *)v34);
      if ( LuaScript::Load(*((LuaScript **)this + 7), *(const char **)(CharFaery + 24)) )
      {
        v11 = (CharAISkillScript *)operator new(28, 0);
        CharAISkillScript::CharAISkillScript(
          v11,
          *((Character **)this + 1),
          *(const char **)(CharFaery + 24),
          0xFFFFFFFF);
        v12 = *((CharAISkillScript ***)this + 49);
        v13 = *((CharAISkillScript ***)this + 50);
        v38 = v11;
        if ( v12 == v13 )
          goto LABEL_63;
        *v12 = v11;
        *((_DWORD *)this + 49) += 4;
      }
      else
      {
        v17 = *((_DWORD **)this + 49);
        v18 = *((_DWORD **)this + 50);
        v37 = 0;
        if ( v17 == v18 )
        {
LABEL_63:
          std::vector<CharAISkillScript *>::_M_insert_overflow(v32);
          goto LABEL_28;
        }
        *v17 = 0;
        *((_DWORD *)this + 49) += 4;
      }
LABEL_28:
      LuaScript::Call(*((LuaScript **)this + 7), "DeclareSkill");
LABEL_29:
      ++v4;
    }
    while ( *(_DWORD *)(CharFaeryList + 4) > v4 );
  }
LABEL_33:
  sfc::script::lua::Arguments::~Arguments((sfc::script::lua::Arguments *)v34);
LABEL_8:
  v5 = (std::string *)(*((_DWORD *)this + 7) + 104);
  if ( v5 != &v43 )
    std::string::_M_assign(v5, v43._M_start_of_storage._M_data, v43._M_finish);
  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string((int)&v42, "Lua_LoadMemUsage");
  DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v42);
  if ( (std::string *)v42._M_start_of_storage._M_data != &v42 && v42._M_start_of_storage._M_data )
  {
    if ( (unsigned int)(v42._M_buffers._M_end_of_storage - v42._M_start_of_storage._M_data) > 0x80 )
      CustomFree(v42._M_start_of_storage._M_data);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(
        v42._M_start_of_storage._M_data,
        v42._M_buffers._M_end_of_storage - v42._M_start_of_storage._M_data);
  }
  (*(void (__fastcall **)(_DWORD))(**((_DWORD **)this + 7) + 204))(*((_DWORD *)this + 7));
  if ( (std::string *)v43._M_start_of_storage._M_data != &v43 && v43._M_start_of_storage._M_data )
  {
    if ( (unsigned int)(v43._M_buffers._M_end_of_storage - v43._M_start_of_storage._M_data) > 0x80 )
      CustomFree(v43._M_start_of_storage._M_data);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(
        v43._M_start_of_storage._M_data,
        v43._M_buffers._M_end_of_storage - v43._M_start_of_storage._M_data);
  }
}


// ===== 3ce7c0 CharAI::InitScriptProcess(bool) =====
int __fastcall CharAI::InitScriptProcess(Character **this, int a2)
{
  int result; // r0

  Character::_InitHpMp(*(this + 1));
  CharAI::SetSkillsAndSpells((CharAI *)this);
  CharAI::UpdateAllSkills((CharAI *)this);
  result = (*((int (__fastcall **)(Character **))*this + 3))(this);
  if ( a2 )
    return (*((int (__fastcall **)(Character **))*this + 4))(this);
  return result;
}


// ===== 3ce810 std::deque<CharAI *,std::allocator<CharAI *>>::_M_push_back_aux_v(CharAI * const&) [clone] =====
void *__fastcall std::deque<CharAI *>::_M_push_back_aux_v(_DWORD *a1)
{
  int *v2; // r11
  void *result; // r0
  int v4; // r2
  int v5; // r8
  int v6; // r10
  char *v7; // r10
  int v8; // r2
  unsigned int v9; // r9
  char *v10; // r0
  size_t v11; // r2
  int v12; // r11
  int v13; // r2
  int v14; // r2

  v2 = (int *)dword_9A2B64;
  if ( (unsigned int)(dword_9A2B6C - ((dword_9A2B64 - dword_9A2B68) >> 2)) <= 1 )
  {
    v5 = ((dword_9A2B64 - dword_9A2B54) >> 2) + 1;
    v6 = ((dword_9A2B64 - dword_9A2B54) >> 2) + 2;
    if ( dword_9A2B6C <= (unsigned int)(2 * v6) )
    {
      if ( dword_9A2B6C )
        v8 = dword_9A2B6C;
      else
        v8 = 1;
      v9 = dword_9A2B6C + 2 + v8;
      v10 = (char *)std::allocator<CharAI **>::allocate((int)&dword_9A2B68, v9);
      v11 = dword_9A2B64 + 4 - dword_9A2B54;
      v12 = (int)v10;
      v7 = &v10[4 * ((v9 - v6) >> 1)];
      if ( v11 )
        memmove(v7, (const void *)dword_9A2B54, v11);
      if ( dword_9A2B68 )
      {
        if ( (unsigned int)(4 * dword_9A2B6C) > 0x80 )
          CustomFree((void *)dword_9A2B68);
        else
          __ZNSt12__node_alloc13_M_deallocateEPvj_veneer((void *)dword_9A2B68, 4 * dword_9A2B6C);
      }
      dword_9A2B6C = v9;
      dword_9A2B68 = v12;
    }
    else
    {
      v7 = (char *)(dword_9A2B68 + 4 * ((unsigned int)(dword_9A2B6C - v6) >> 1));
      if ( dword_9A2B54 <= (unsigned int)v7 )
      {
        if ( dword_9A2B64 + 4 - dword_9A2B54 > 0 )
          memmove(
            &v7[4 * v5 - (dword_9A2B64 + 4 - dword_9A2B54)],
            (const void *)dword_9A2B54,
            dword_9A2B64 + 4 - dword_9A2B54);
      }
      else if ( dword_9A2B64 + 4 != dword_9A2B54 )
      {
        memmove(v7, (const void *)dword_9A2B54, dword_9A2B64 + 4 - dword_9A2B54);
      }
    }
    v2 = (int *)&v7[4 * v5 - 4];
    dword_9A2B54 = (int)v7;
    v13 = *(_DWORD *)v7;
    dword_9A2B64 = (int)v2;
    dword_9A2B50 = v13 + 128;
    dword_9A2B4C = v13;
    v14 = *v2;
    dword_9A2B60 = *v2 + 128;
    dword_9A2B5C = v14;
  }
  result = std::allocator<CharAI *>::allocate();
  v2[1] = (int)result;
  *(_DWORD *)dword_9A2B58 = *a1;
  dword_9A2B64 += 4;
  v4 = *(_DWORD *)dword_9A2B64 + 128;
  dword_9A2B58 = *(_DWORD *)dword_9A2B64;
  dword_9A2B60 = v4;
  dword_9A2B5C = dword_9A2B58;
  return result;
}


// ===== 3ce9b8 CharAI::IncUpdateQueue(void) =====
int *__fastcall CharAI::IncUpdateQueue(CharAI *this)
{
  int v1; // r5
  int *result; // r0
  int v3; // r7
  int *v4; // r3
  unsigned int v5; // r2
  int v6; // r10
  _DWORD *v7; // r3
  int v8; // r2
  _BYTE *v9; // r9
  _DWORD v10[4]; // [sp+0h] [bp-20h] BYREF
  _DWORD v11[4]; // [sp+10h] [bp-10h] BYREF

  v1 = CharAI::s_updateTimer;
  if ( CharAI::s_updateTimer <= 0 )
  {
    CharAI::s_updateTimer = 180;
    v11[0] = CharAI::s_updateQueue;
    v11[1] = dword_9A2B4C;
    v11[2] = dword_9A2B50;
    v11[3] = dword_9A2B54;
    result = (int *)std::priv::_Deque_iterator_base<CharAI *>::_M_subtract(&dword_9A2B58, v11);
    if ( (unsigned int)result > 1 )
    {
      v10[0] = CharAI::s_updateQueue;
      v10[1] = dword_9A2B4C;
      v10[2] = dword_9A2B50;
      v10[3] = dword_9A2B54;
      v3 = std::priv::_Deque_iterator_base<CharAI *>::_M_subtract(&dword_9A2B58, v10);
      result = (int *)CharAI::s_updateQueue;
LABEL_6:
      v4 = (int *)dword_9A2B58;
      if ( dword_9A2B58 == dword_9A2B60 - 4 )
      {
        while ( 1 )
        {
          std::deque<CharAI *>::_M_push_back_aux_v(result);
          v5 = dword_9A2B50 - 4;
          if ( CharAI::s_updateQueue == dword_9A2B50 - 4 )
            break;
          result = (int *)(CharAI::s_updateQueue + 4);
          CharAI::s_updateQueue += 4;
LABEL_10:
          --v3;
          v6 = *result;
          if ( v3 <= 0 )
            return result;
          v7 = *(_DWORD **)(v6 + 4);
          v8 = v7[222];
          if ( !*(_BYTE *)(v8 + 9) && (v2Controller::s_blocked || *(_BYTE *)(v8 + 8)) )
            goto LABEL_6;
          if ( !(*(int (__fastcall **)(_DWORD))(*v7 + 52))(*(_DWORD *)(v6 + 4)) )
          {
            result = (int *)(*(int (__fastcall **)(_DWORD))(**(_DWORD **)(v6 + 4) + 84))(*(_DWORD *)(v6 + 4));
            if ( result )
              return result;
            v9 = *(_BYTE **)(v6 + 4);
            if ( v9[128] )
            {
              result = (int *)(*(int (__fastcall **)(_DWORD))(*(_DWORD *)v9 + 196))(*(_DWORD *)(v6 + 4));
              if ( !result || !v9[750] || v9[752] || !*(_BYTE *)(*(_DWORD *)(v6 + 4) + 750) )
                return result;
            }
          }
          result = (int *)CharAI::s_updateQueue;
          v4 = (int *)dword_9A2B58;
          if ( dword_9A2B58 != dword_9A2B60 - 4 )
            goto LABEL_7;
        }
      }
      else
      {
LABEL_7:
        *v4 = *result;
        dword_9A2B58 += 4;
        v5 = dword_9A2B50 - 4;
        if ( CharAI::s_updateQueue != dword_9A2B50 - 4 )
        {
          result = (int *)(CharAI::s_updateQueue + 4);
          CharAI::s_updateQueue += 4;
          goto LABEL_10;
        }
      }
      if ( dword_9A2B4C )
        std::__node_alloc::deallocate((std::__node_alloc *)dword_9A2B4C, &dword_80, v5);
      dword_9A2B54 += 4;
      result = *(int **)dword_9A2B54;
      dword_9A2B50 = *(_DWORD *)dword_9A2B54 + 128;
      CharAI::s_updateQueue = (int)result;
      dword_9A2B4C = (int)result;
      goto LABEL_10;
    }
  }
  else
  {
    result = (int *)(v1 - Application::GetDt((Application *)&Singleton<Application>::s_inst));
    CharAI::s_updateTimer = (int)result;
  }
  return result;
}


// ===== 3cebf0 CharAI::CharAI(void) =====
void __fastcall CharAI::CharAI(CharAI *this)
{
  char *v2; // r0
  CharAI *v3; // [sp+4h] [bp-8h] BYREF

  *(_DWORD *)this = off_966798;
  *((_BYTE *)this + 85) = 1;
  *((_DWORD *)this + 2) = 0;
  *((_DWORD *)this + 3) = 0;
  *((_BYTE *)this + 24) = 0;
  *((_DWORD *)this + 7) = 0;
  *((_DWORD *)this + 8) = 0;
  *((_BYTE *)this + 36) = 0;
  *((_DWORD *)this + 10) = 0;
  *((_BYTE *)this + 44) = 0;
  *((_DWORD *)this + 12) = 0;
  *((_DWORD *)this + 13) = 0;
  *((_DWORD *)this + 15) = 0;
  *((_DWORD *)this + 16) = 0;
  *((_DWORD *)this + 17) = 0;
  *((_BYTE *)this + 73) = 0;
  *((_BYTE *)this + 74) = 1;
  *((_BYTE *)this + 75) = 1;
  *((_BYTE *)this + 76) = 0;
  *((_BYTE *)this + 77) = 1;
  *((_DWORD *)this + 20) = 0;
  *((_BYTE *)this + 84) = 1;
  *((_DWORD *)this + 22) = 0;
  *((_DWORD *)this + 24) = 0;
  *((_DWORD *)this + 4) = -1;
  *((_DWORD *)this + 5) = -1;
  *((_DWORD *)this + 14) = -1;
  *((_BYTE *)this + 92) = 0;
  *((_DWORD *)this + 26) = (char *)this + 92;
  *((_DWORD *)this + 25) = (char *)this + 92;
  *((_DWORD *)this + 27) = 0;
  *((_DWORD *)this + 32) = 0;
  *((_BYTE *)this + 124) = 0;
  v2 = (char *)this + 124;
  *((_DWORD *)this + 34) = v2;
  *((_DWORD *)this + 33) = v2;
  *((_DWORD *)this + 35) = 0;
  *((_DWORD *)this + 38) = 0;
  *((_BYTE *)this + 148) = 0;
  *((_DWORD *)this + 40) = (char *)this + 148;
  *((_DWORD *)this + 44) = (char *)this + 172;
  *((_DWORD *)this + 51) = -1;
  *((_BYTE *)this + 209) = 0;
  *((_DWORD *)this + 39) = (char *)this + 148;
  *((_DWORD *)this + 41) = 0;
  *((_DWORD *)this + 43) = (char *)this + 172;
  *((_DWORD *)this + 45) = 0;
  *((_DWORD *)this + 46) = 0;
  *((_DWORD *)this + 47) = 0;
  *((_DWORD *)this + 48) = 0;
  *((_DWORD *)this + 49) = 0;
  *((_DWORD *)this + 50) = 0;
  *((_BYTE *)this + 208) = 0;
  v3 = this;
  if ( dword_9A2B58 == dword_9A2B60 - 4 )
  {
    std::deque<CharAI *>::_M_push_back_aux_v(&v3);
  }
  else
  {
    *(_DWORD *)dword_9A2B58 = this;
    dword_9A2B58 += 4;
  }
}


// ===== 3ced50 CharAI::CharAI(void) =====
void __fastcall CharAI::CharAI(CharAI *this)
{
  char *v2; // r0
  CharAI *v3; // [sp+4h] [bp-8h] BYREF

  *(_DWORD *)this = off_966798;
  *((_BYTE *)this + 85) = 1;
  *((_DWORD *)this + 2) = 0;
  *((_DWORD *)this + 3) = 0;
  *((_BYTE *)this + 24) = 0;
  *((_DWORD *)this + 7) = 0;
  *((_DWORD *)this + 8) = 0;
  *((_BYTE *)this + 36) = 0;
  *((_DWORD *)this + 10) = 0;
  *((_BYTE *)this + 44) = 0;
  *((_DWORD *)this + 12) = 0;
  *((_DWORD *)this + 13) = 0;
  *((_DWORD *)this + 15) = 0;
  *((_DWORD *)this + 16) = 0;
  *((_DWORD *)this + 17) = 0;
  *((_BYTE *)this + 73) = 0;
  *((_BYTE *)this + 74) = 1;
  *((_BYTE *)this + 75) = 1;
  *((_BYTE *)this + 76) = 0;
  *((_BYTE *)this + 77) = 1;
  *((_DWORD *)this + 20) = 0;
  *((_BYTE *)this + 84) = 1;
  *((_DWORD *)this + 22) = 0;
  *((_DWORD *)this + 24) = 0;
  *((_DWORD *)this + 4) = -1;
  *((_DWORD *)this + 5) = -1;
  *((_DWORD *)this + 14) = -1;
  *((_BYTE *)this + 92) = 0;
  *((_DWORD *)this + 26) = (char *)this + 92;
  *((_DWORD *)this + 25) = (char *)this + 92;
  *((_DWORD *)this + 27) = 0;
  *((_DWORD *)this + 32) = 0;
  *((_BYTE *)this + 124) = 0;
  v2 = (char *)this + 124;
  *((_DWORD *)this + 34) = v2;
  *((_DWORD *)this + 33) = v2;
  *((_DWORD *)this + 35) = 0;
  *((_DWORD *)this + 38) = 0;
  *((_BYTE *)this + 148) = 0;
  *((_DWORD *)this + 40) = (char *)this + 148;
  *((_DWORD *)this + 44) = (char *)this + 172;
  *((_DWORD *)this + 51) = -1;
  *((_BYTE *)this + 209) = 0;
  *((_DWORD *)this + 39) = (char *)this + 148;
  *((_DWORD *)this + 41) = 0;
  *((_DWORD *)this + 43) = (char *)this + 172;
  *((_DWORD *)this + 45) = 0;
  *((_DWORD *)this + 46) = 0;
  *((_DWORD *)this + 47) = 0;
  *((_DWORD *)this + 48) = 0;
  *((_DWORD *)this + 49) = 0;
  *((_DWORD *)this + 50) = 0;
  *((_BYTE *)this + 208) = 0;
  v3 = this;
  if ( dword_9A2B58 == dword_9A2B60 - 4 )
  {
    std::deque<CharAI *>::_M_push_back_aux_v(&v3);
  }
  else
  {
    *(_DWORD *)dword_9A2B58 = this;
    dword_9A2B58 += 4;
  }
}


// ===== 3ceeb0 CharAI::SetScriptByName(char const*) =====
void __fastcall CharAI::SetScriptByName(CharAI *this, const char *a2)
{
  const char *v4; // r6
  std::string v5; // [sp+4h] [bp-20h] BYREF

  if ( LC_API_STRNCMP_0(a2, "__", 2u) )
  {
    CharAI::SetScript<AISExternal>(this);
    DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
    std::string::string((int)&v5, "Lua_LoadMemUsage");
    DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v5);
    if ( (std::string *)v5._M_start_of_storage._M_data != &v5 && v5._M_start_of_storage._M_data )
    {
      if ( (unsigned int)(v5._M_buffers._M_end_of_storage - v5._M_start_of_storage._M_data) > 0x80 )
        CustomFree(v5._M_start_of_storage._M_data);
      else
        __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(
          v5._M_start_of_storage._M_data,
          v5._M_buffers._M_end_of_storage - v5._M_start_of_storage._M_data);
    }
    *((_DWORD *)this + 12) = a2;
  }
  else
  {
    v4 = a2 + 2;
    if ( LC_API_STRCMP_0(v4, "monster__") )
    {
      if ( LC_API_STRCMP_0(v4, "player__") )
      {
        if ( LC_API_STRCMP_0(v4, "faery__") )
        {
          if ( LC_API_STRCMP_0(v4, "npc__") )
          {
            CharAI::SetScript<AISDefault>(this);
            *((_DWORD *)this + 12) = 0;
          }
          else
          {
            CharAI::SetScript<AISDefault>(this);
          }
        }
        else
        {
          CharAI::SetScript<AISFaery>(this);
        }
      }
      else
      {
        CharAI::SetScript<AISPlayerIPhone>(this);
      }
    }
    else
    {
      CharAI::SetScript<AISMonster>(this);
    }
  }
}


// ===== 3cf04c CharAI::StepCreateScript(void) =====
void __fastcall CharAI::StepCreateScript(Character **this)
{
  int v2; // r7
  int v3; // r7
  std::string v4; // [sp+Ch] [bp-38h] BYREF
  std::string v5; // [sp+24h] [bp-20h] BYREF

  v2 = Arrays::AITable::members;
  v3 = v2 + 68 * Character::GetCharAIId(*(this + 1));
  if ( *(_DWORD *)(v3 + 40) )
  {
    DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
    std::string::string((int)&v5, "isTracingChar_Init");
    DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v5);
    if ( (std::string *)v5._M_start_of_storage._M_data != &v5 && v5._M_start_of_storage._M_data )
    {
      if ( (unsigned int)(v5._M_buffers._M_end_of_storage - v5._M_start_of_storage._M_data) > 0x80 )
        CustomFree(v5._M_start_of_storage._M_data);
      else
        __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(
          v5._M_start_of_storage._M_data,
          v5._M_buffers._M_end_of_storage - v5._M_start_of_storage._M_data);
    }
    CharAI::SetScriptByName((CharAI *)this, *(const char **)(v3 + 44));
    *((_BYTE *)this + 44) = 1;
  }
  else
  {
    DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
    std::string::string((int)&v4, "isTracingChar_Init");
    DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v4);
    if ( (std::string *)v4._M_start_of_storage._M_data != &v4 && v4._M_start_of_storage._M_data )
    {
      if ( (unsigned int)(v4._M_buffers._M_end_of_storage - v4._M_start_of_storage._M_data) > 0x80 )
        CustomFree(v4._M_start_of_storage._M_data);
      else
        __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(
          v4._M_start_of_storage._M_data,
          v4._M_buffers._M_end_of_storage - v4._M_start_of_storage._M_data);
    }
    if ( LC_API_STRCMP_0(*((const char **)*(this + 1) + 23), "Player") )
      CharAI::SetScript<AISDefault>(this);
    else
      CharAI::SetScript<AISPlayer>(this);
    *(this + 12) = nullptr;
    *((_BYTE *)this + 44) = 0;
  }
}


// ===== 3cf1f0 CharAI::LoadScriptProcess(void) =====
int __fastcall CharAI::LoadScriptProcess(int this)
{
  int v1; // r3
  CharAI *v2; // r4
  int v3; // r5

  v1 = *(_DWORD *)(this + 40);
  v2 = (CharAI *)this;
  if ( v1 <= 6 )
  {
    if ( !*(_BYTE *)(this + 36) )
    {
LABEL_3:
      v3 = 6;
      goto LABEL_4;
    }
    this = (*(int (__fastcall **)(_DWORD))(**(_DWORD **)(this + 4) + 40))(*(_DWORD *)(this + 4));
    if ( this )
    {
      v1 = *((_DWORD *)v2 + 10);
      goto LABEL_3;
    }
    this = CharAI::StepQueryAvailableStep(v2, 7 - *((_DWORD *)v2 + 10));
    if ( this > 0 )
    {
      v3 = this - 1;
      v1 = *((_DWORD *)v2 + 10);
      while ( 1 )
      {
LABEL_4:
        switch ( v1 )
        {
          case 0:
            this = CharAI::StepCreateScript(v2);
            v1 = *((_DWORD *)v2 + 10);
            goto LABEL_6;
          case 1:
            this = CharAI::StepBindFunction(v2);
            v1 = *((_DWORD *)v2 + 10);
            goto LABEL_6;
          case 2:
            this = CharAI::StepSetCharacter(v2);
            v1 = *((_DWORD *)v2 + 10);
            goto LABEL_6;
          case 3:
            this = CharAI::StepLoadCommon(v2);
            v1 = *((_DWORD *)v2 + 10);
            goto LABEL_6;
          case 4:
            this = CharAI::StepLoadScript(v2);
            v1 = *((_DWORD *)v2 + 10);
            goto LABEL_6;
          case 5:
            this = CharAI::StepInitScript(v2);
            v1 = *((_DWORD *)v2 + 10) + 1;
            *((_DWORD *)v2 + 10) = v1;
            if ( !v3 )
              return this;
            goto LABEL_7;
          case 6:
            v1 = *((_DWORD *)v2 + 10);
            *((_DWORD *)v2 + 7) = *((_DWORD *)v2 + 8);
            goto LABEL_6;
          default:
            if ( gAssertLevel == 2 )
            {
              dword_0 = 0;
            }
            else if ( gAssertLevel == 1 )
            {
              this = fprintf(
                       (FILE *)&_sF + 2,
                       "ASSERT(%s) FAILED: %s:%d\n",
                       "false",
                       "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Objects\\Characters\\AI\\CharAI.cpp",
                       555);
              v1 = *((_DWORD *)v2 + 10);
            }
LABEL_6:
            *((_DWORD *)v2 + 10) = ++v1;
            if ( !v3 )
              return this;
LABEL_7:
            --v3;
            break;
        }
      }
    }
  }
  return this;
}


// ===== 3cf3a4 CharAI::LoadNInitScriptProcess(bool) =====
int __fastcall CharAI::LoadNInitScriptProcess(CharAI *this, bool a2)
{
  if ( *((_DWORD *)this + 7) )
    return 0;
  CharAI::LoadScriptProcess(this);
  if ( !*((_DWORD *)this + 7) )
    return 0;
  CharAI::InitScriptProcess(this, a2);
  return 1;
}


// ===== 3cf3f0 CharAI::_UpdateAggro(void) =====
void __fastcall CharAI::_UpdateAggro(CharAI *this)
{
  _DWORD *v2; // r0
  GameObject *HighestAggro; // r8
  const GameObject *v4; // r0
  bool v5; // zf
  Character *v6; // r7
  float v7; // r9
  Character *v8; // r0
  int v9; // r7
  int v10; // r7
  float v11; // r8
  float *v12; // r10
  int v13; // r3
  int v14; // r8
  const GameObject *v15; // r11
  const CharAI *v16; // r1
  unsigned int v17; // r2
  int Switch; // r8
  int v19; // r7
  int v20; // r0
  int v21; // r8
  int v22; // r7
  void *v23; // r2
  int v24; // r1
  Character *v25; // r0
  int v26; // r11
  int CharAIId; // r0
  int LocalPlayer; // r0
  int v29; // r9
  Character *v30; // r7
  _DWORD *v31; // r10
  _DWORD *v32; // r9
  _DWORD *v33; // r2
  unsigned int v34; // r3
  bool v35; // cc
  _DWORD *v36; // r3
  Character **v37; // r3
  int v38; // r3
  _DWORD v39[4]; // [sp+18h] [bp-114h] BYREF
  int v40; // [sp+28h] [bp-104h]
  _DWORD v41[4]; // [sp+6Ch] [bp-C0h] BYREF
  int v42; // [sp+7Ch] [bp-B0h]
  _DWORD v43[4]; // [sp+C0h] [bp-6Ch] BYREF
  _DWORD v44[4]; // [sp+D0h] [bp-5Ch] BYREF
  _BYTE v45[12]; // [sp+E0h] [bp-4Ch] BYREF
  std::string v46; // [sp+F4h] [bp-38h] BYREF
  std::string v47; // [sp+10Ch] [bp-20h] BYREF

  if ( (*(int (__fastcall **)(_DWORD))(**((_DWORD **)this + 1) + 40))(*((_DWORD *)this + 1)) )
    return;
  if ( !(*(int (__fastcall **)(_DWORD))(**((_DWORD **)this + 1) + 40))(*((_DWORD *)this + 1))
    && !Character::IsFaerie(*((Character **)this + 1)) )
  {
    if ( !CharAI::IsMyTurn(this, v16) && *((int *)this + 3) < 500 )
    {
      v21 = *((_DWORD *)this + 2);
      *((_DWORD *)this + 2) = v21 - Application::GetDt((Application *)&Singleton<Application>::s_inst);
      v22 = *((_DWORD *)this + 3);
      *((_DWORD *)this + 3) = Application::GetDt((Application *)&Singleton<Application>::s_inst) + v22;
      return;
    }
    *((_DWORD *)this + 3) = 0;
    DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
    std::string::string((int)&v47, "DisableAIDelayTimerOptim");
    Switch = DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v47);
    if ( (std::string *)v47._M_start_of_storage._M_data != &v47 && v47._M_start_of_storage._M_data )
      std::__node_alloc::deallocate(
        (std::__node_alloc *)v47._M_start_of_storage._M_data,
        (void *)(v47._M_buffers._M_end_of_storage - v47._M_start_of_storage._M_data),
        v17);
    if ( !Switch )
    {
      v19 = *((_DWORD *)this + 2);
      if ( v19 > 0 )
      {
        v20 = v19 - Application::GetDt((Application *)&Singleton<Application>::s_inst);
        *((_DWORD *)this + 2) = v20;
        if ( v20 > 0 )
          return;
      }
      ++Random::s_debugRandomCounters;
      Random::s_seed = (59051 * Random::s_seed + 177149) % 0xDAF26Bu;
      *((_DWORD *)this + 2) = abs32(Random::s_seed % 0xC8u) + 100;
    }
  }
  if ( Character::IsNPC(*((Character **)this + 1)) )
    return;
  if ( !Character::IsMonster(*((Character **)this + 1))
    || (*(int (__fastcall **)(_DWORD))(**((_DWORD **)this + 1) + 84))(*((_DWORD *)this + 1)) )
  {
    v2 = *((_DWORD **)this + 1);
  }
  else
  {
    v2 = *((_DWORD **)this + 1);
    if ( v2[258] )
    {
      HighestAggro = (GameObject *)CharAI::AI_GetHighestAggro((CharAI *)(v2 + 242));
      ObjectBase::GetHandle((ObjectBase *)v45);
      v4 = (const GameObject *)ObjectHandle::operator Character *(v45);
      v5 = v4 == nullptr;
      if ( v4 )
        v5 = HighestAggro == nullptr;
      v6 = v4;
      if ( v5 || HighestAggro == v4 )
      {
        if ( CharAI::AI_IsEnemy((CharAI *)(*((_DWORD *)this + 1) + 968), v4) )
        {
          ObjectSearcher::TargetList::TargetList((ObjectSearcher::TargetList *)v41, *((GameObject **)this + 1), 1, 2, 1);
          v44[0] = off_964870;
          v44[1] = dword_99F764 + 112;
          v24 = *(_DWORD *)(dword_99F764 + 112);
          v25 = *((Character **)this + 1);
          v44[3] = dword_99F764 + 112;
          v26 = Arrays::AITable::members;
          v44[2] = v24;
          CharAIId = Character::GetCharAIId(v25);
          ObjectSearcher::TargetList::Search(
            (ObjectSearcher::TargetList *)v41,
            *(float *)(v26 + 68 * CharAIId + 64),
            6.2832,
            (ObjectSearcher::IObjectList *)v44);
          if ( v42 == v41[0] )
          {
            CharAI::AI_ClearAggro(this, v6);
            CharAI::AI_SetTarget(this, nullptr, 0);
            CharAI::AI_SyncLastTarget(this);
          }
          else
          {
            LocalPlayer = PlayerManager::GetLocalPlayer((PlayerManager *)dword_99F76C, 0, 1);
            v29 = *((_DWORD *)this + 1);
            v30 = *(Character **)(LocalPlayer + 1632);
            v31 = *(_DWORD **)(v29 + 1096);
            v32 = (_DWORD *)(v29 + 1092);
            if ( !v31 )
              goto LABEL_74;
            v33 = v32;
            while ( 1 )
            {
              v34 = v31[4];
              v35 = (unsigned int)v30 > v34;
              if ( (unsigned int)v30 <= v34 )
                v36 = (_DWORD *)v31[2];
              else
                v36 = (_DWORD *)v31[3];
              if ( v35 )
                v31 = v33;
              if ( !v36 )
                break;
              v33 = v31;
              v31 = v36;
            }
            if ( v32 != v31 && (unsigned int)v30 < v31[4] )
LABEL_74:
              v31 = v32;
            v37 = (Character **)v41[0];
            if ( v42 == v41[0] )
            {
LABEL_76:
              v38 = 0;
            }
            else
            {
              while ( *v37 != v30 )
              {
                std::priority_queue<ObjectSearcher::TargetInfo,std::deque<ObjectSearcher::TargetInfo>,ObjectSearcher::TargetSorter>::pop(v41);
                v37 = (Character **)v41[0];
                if ( v42 == v41[0] )
                  goto LABEL_76;
              }
              v38 = 1;
            }
            if ( v32 == v31 && v38 && CharAI::AI_IsEnemy((CharAI *)(*((_DWORD *)this + 1) + 968), v30) )
              CharAI::AI_AddAggro(
                (CharAI *)(*((_DWORD *)this + 1) + 968),
                v30,
                *(float *)(Arrays::DesignSettingsTable::members + 48));
          }
          v44[0] = off_964728;
          ObjectSearcher::TargetList::~TargetList((ObjectSearcher::TargetList *)v41);
        }
        else
        {
          CharAI::AI_ClearAggro(this, v6);
          CharAI::AI_SetTarget(this, nullptr, 0);
          CharAI::AI_SyncLastTarget(this);
        }
      }
      else
      {
        v7 = COERCE_FLOAT(CharAI::AI_GetAggro((CharAI *)(*((_DWORD *)this + 1) + 968), v4));
        if ( COERCE_FLOAT(CharAI::AI_GetAggro((CharAI *)(*((_DWORD *)this + 1) + 968), HighestAggro)) > (float)(v7 * *(float *)(Arrays::DesignSettingsTable::members + 8)) )
        {
          DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
          std::string::string((int)&v46, "isTracingThreatChange");
          DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v46);
          std::string::~string(&v46);
          CharAI::AI_SetTarget((CharAI *)(*((_DWORD *)this + 1) + 968), HighestAggro, 0);
        }
      }
      return;
    }
  }
  if ( Character::IsFaerie((Character *)v2) )
  {
    v8 = *((Character **)this + 1);
    if ( *((_DWORD *)v8 + 262) )
      return;
  }
  else
  {
    v8 = *((Character **)this + 1);
  }
  v9 = Arrays::AITable::members;
  v10 = v9 + 68 * Character::GetCharAIId(v8);
  v11 = *(float *)(v10 + 60);
  if ( CharStateMachine::SM_IsAwaitingToSpawn((CharStateMachine *)(*((_DWORD *)this + 1) + 1276))
    && (v12 = *((float **)this + 1), v12[1295] > 0.0) )
  {
    v11 = v12[1295];
  }
  else
  {
    if ( !CharAI::AI_HasAggro(this) )
      v11 = *(float *)(v10 + 64);
    v12 = *((float **)this + 1);
  }
  ObjectSearcher::TargetList::TargetList((ObjectSearcher::TargetList *)v39, (GameObject *)v12, 0x7FFFFFFF, 2, 1);
  v43[0] = off_964870;
  v43[1] = dword_99F764 + 96;
  v43[2] = *(_DWORD *)(dword_99F764 + 96);
  v43[3] = dword_99F764 + 96;
  ObjectSearcher::TargetList::Search((ObjectSearcher::TargetList *)v39, v11, 6.2832, (ObjectSearcher::IObjectList *)v43);
  v13 = v39[0];
  if ( v40 == v39[0] )
    goto LABEL_52;
  v14 = 1;
  do
  {
    if ( (*(_DWORD *)(v13 + 12) & 1) == 0 )
    {
      if ( gAssertLevel == 2 )
      {
        dword_0 = 0;
        v13 = v39[0];
      }
      else if ( gAssertLevel == 1 )
      {
        fprintf(
          (FILE *)&_sF + 2,
          "ASSERT(%s) FAILED: %s:%d\n",
          "tlist.Top().IsChar()",
          "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Objects\\Characters\\AI\\CharAI.cpp",
          1286);
        v13 = v39[0];
      }
    }
    v15 = *(const GameObject **)v13;
    if ( CharAI::AI_IsEnemy((CharAI *)(*((_DWORD *)this + 1) + 968), *(const GameObject **)v13) )
    {
      Character::RaiseEvent(*((Character **)this + 1), 9, v15);
      v14 = 0;
    }
    else if ( CharAI::AI_IsFriend((CharAI *)(*((_DWORD *)this + 1) + 968), v15) )
    {
      Character::RaiseEvent(*((Character **)this + 1), 7, v15);
    }
    else if ( CharAI::AI_IsNeutral((CharAI *)(*((_DWORD *)this + 1) + 968), v15) )
    {
      Character::RaiseEvent(*((Character **)this + 1), 8, v15);
    }
    std::priority_queue<ObjectSearcher::TargetInfo,std::deque<ObjectSearcher::TargetInfo>,ObjectSearcher::TargetSorter>::pop(v39);
    v13 = v39[0];
  }
  while ( v40 != v39[0] );
  if ( v14 )
  {
LABEL_52:
    v23 = *((void **)this + 16);
    if ( v23 )
      Character::RaiseEvent(*((Character **)this + 1), 12, v23);
  }
  v43[0] = off_964728;
  ObjectSearcher::TargetList::~TargetList((ObjectSearcher::TargetList *)v39);
}


// ===== 3cfbf4 CharAI::Update(void) =====
int __fastcall CharAI::Update(CharAI *this)
{
  int v2; // r6
  int v3; // r3

  PushProfilingContext("CharacterAI::Update");
  if ( *((_BYTE *)this + 24) )
    return PopProfilingContext("CharacterAI::Update");
  v2 = *((_DWORD *)this + 1);
  v3 = *(_DWORD *)(v2 + 888);
  if ( !*(_BYTE *)(v3 + 9) && (v2Controller::s_blocked || *(_BYTE *)(v3 + 8)) )
    return PopProfilingContext("CharacterAI::Update");
  if ( (*(_DWORD *)(v2 + 1312) & 0x100) == 0
    || (*(int (__fastcall **)(_DWORD))(*(_DWORD *)v2 + 196))(*((_DWORD *)this + 1))
    && *(_BYTE *)(v2 + 750)
    && !*(_BYTE *)(v2 + 752) )
  {
    return PopProfilingContext("CharacterAI::Update");
  }
  *(_BYTE *)(*((_DWORD *)this + 1) + 136) = 1;
  PushProfilingContext("CharacterAI::_Target");
  CharAI::_UpdateTarget(this);
  PopProfilingContext("CharacterAI::_Target");
  PushProfilingContext("CharacterAI::_Master");
  CharAI::_UpdateMaster(this);
  PopProfilingContext("CharacterAI::_Master");
  PushProfilingContext("CharacterAI::_Aggro");
  CharAI::_UpdateAggro(this);
  PopProfilingContext("CharacterAI::_Aggro");
  PushProfilingContext("CharacterAI::_Generic");
  (*(void (__fastcall **)(CharAI *))(*(_DWORD *)this + 24))(this);
  PopProfilingContext("CharacterAI::_Generic");
  return PopProfilingContext("CharacterAI::Update");
}


// ===== 3cfd68 CharAI::AI_SendMessage(int,void const*) =====
int __fastcall CharAI::AI_SendMessage(CharAI *this, int a2, const void *a3)
{
  return (*(int (__fastcall **)(CharAI *, int, const void *))(*(_DWORD *)this + 28))(this, a2, a3);
}


// ===== 3cfd7c CharAI::AI_ScriptCleanUp(void) =====
int __fastcall CharAI::AI_ScriptCleanUp(CharAI *this)
{
  int result; // r0
  int v3; // r2

  CharTimers::TMR_Stop((CharTimers *)(*((_DWORD *)this + 1) + 948), *((_DWORD *)this + 4));
  result = CharTimers::TMR_Stop((CharTimers *)(*((_DWORD *)this + 1) + 948), *((_DWORD *)this + 5));
  v3 = *((_DWORD *)this + 7);
  *((_DWORD *)this + 5) = -1;
  *((_DWORD *)this + 4) = -1;
  if ( v3 )
  {
    CharAI::_SkillCleanUp(this);
    CharAI::_SpellCleanUp(this);
    return (*(int (__fastcall **)(_DWORD))(**((_DWORD **)this + 7) + 20))(*((_DWORD *)this + 7));
  }
  return result;
}


// ===== 3cfde4 CharAI::AI_ScriptInit(void) =====
int __fastcall CharAI::AI_ScriptInit(CharAI *this)
{
  int result; // r0
  unsigned int v3; // r1
  int v4; // r7
  unsigned int Constant; // r0
  int v6; // r0
  unsigned int v7; // r1
  int v8; // r5
  unsigned int v9; // r0
  int v10; // r3

  result = (*(int (__fastcall **)(_DWORD))(**((_DWORD **)this + 1) + 52))(*((_DWORD *)this + 1));
  if ( !result )
  {
    v3 = *((_DWORD *)this + 4);
    if ( v3 != -1 )
      CharTimers::TMR_Stop((CharTimers *)(*((_DWORD *)this + 1) + 948), v3);
    v4 = *((_DWORD *)this + 1);
    Constant = PyDataConstants::getConstant((PyDataConstants *)dword_99F758, "CharacterDesign", "AI_Tick");
    v6 = CharTimers::TMR_Start((CharTimers *)(v4 + 948), Constant, -1, 51, nullptr);
    v7 = *((_DWORD *)this + 5);
    *((_DWORD *)this + 4) = v6;
    if ( v7 != -1 )
      CharTimers::TMR_Stop((CharTimers *)(*((_DWORD *)this + 1) + 948), v7);
    v8 = *((_DWORD *)this + 1);
    v9 = PyDataConstants::getConstant((PyDataConstants *)dword_99F758, "CharacterDesign", "DoT_Tick");
    result = CharTimers::TMR_Start((CharTimers *)(v8 + 948), v9, -1, 52, nullptr);
    *((_DWORD *)this + 5) = result;
  }
  v10 = *((_DWORD *)this + 7);
  if ( v10 )
  {
    (*(void (__fastcall **)(_DWORD))(*(_DWORD *)v10 + 8))(*((_DWORD *)this + 7));
    (*(void (__fastcall **)(_DWORD))(**((_DWORD **)this + 7) + 12))(*((_DWORD *)this + 7));
    return (*(int (__fastcall **)(_DWORD))(**((_DWORD **)this + 7) + 16))(*((_DWORD *)this + 7));
  }
  return result;
}


// ===== 3cff34 CharAI::AI_InteractWith(GameObject *) =====
int __fastcall CharAI::AI_InteractWith(CharAI *this, GameObject *a2)
{
  int result; // r0
  int v5; // r0

  result = (*(int (__fastcall **)(_DWORD))(**((_DWORD **)this + 1) + 52))(*((_DWORD *)this + 1));
  if ( !result )
  {
    if ( a2 )
    {
      result = CharAI::AI_SetTarget(this, a2, 0);
    }
    else
    {
      a2 = *((GameObject **)this + 16);
      if ( !a2 )
        return result;
    }
    if ( !*((_BYTE *)this + 76) )
    {
      result = (*(int (__fastcall **)(CharAI *))(*(_DWORD *)this + 156))(this);
      if ( result )
      {
        v5 = (*(int (__fastcall **)(GameObject *, _DWORD))(*(_DWORD *)a2 + 144))(a2, *((_DWORD *)this + 1));
        *((_BYTE *)this + 76) = 1;
        if ( (unsigned int)(v5 + 2) <= 1 )
          return (*(int (__fastcall **)(CharAI *))(*(_DWORD *)this + 160))(this);
        CharStateMachine::SM_SetInteractState((CharStateMachine *)(*((_DWORD *)this + 1) + 1276), v5, 1, a2, 0);
        result = CharStateMachine::SM_IsInteracting((CharStateMachine *)(*((_DWORD *)this + 1) + 1276));
        if ( result )
          return (*(int (__fastcall **)(CharAI *))(*(_DWORD *)this + 160))(this);
      }
    }
  }
  return result;
}


// ===== 3d0020 ObjectSearcher::TargetList::Search(float,float) =====
int __fastcall ObjectSearcher::TargetList::Search(ObjectSearcher::TargetList *this, float a2, float a3)
{
  int v3; // r4
  _DWORD v5[5]; // [sp+4h] [bp-14h] BYREF

  v5[0] = off_969D20;
  v5[1] = dword_99F764 + 128;
  v3 = *(_DWORD *)(dword_99F764 + 128);
  v5[3] = dword_99F764 + 128;
  v5[2] = v3;
  v5[4] = 0;
  return ObjectSearcher::TargetList::Search(this, a2, a3, (ObjectSearcher::IObjectList *)v5);
}


// ===== 3d0080 `global constructor keyed to'.._.._sources_Game_Objects_Characters_AI_CharAI_Commands.cpp =====
int `global constructor keyed to'.._.._sources_Game_Objects_Characters_AI_CharAI_Commands.cpp()
{
  int result; // r0

  result = `guard variable for'Singleton<PlayerStatManager>::s_inst;
  dword_9A2B7C = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9A2B78 = 1056964608;
  if ( (`guard variable for'Singleton<PlayerStatManager>::s_inst & 1) == 0 )
  {
    `guard variable for'Singleton<PlayerStatManager>::s_inst = 1;
    PlayerStatManager::PlayerStatManager((PlayerStatManager *)&Singleton<PlayerStatManager>::s_inst);
    result = _aeabi_atexit(
               (int)&Singleton<PlayerStatManager>::s_inst,
               (int)PlayerStatManager::~PlayerStatManager,
               (int)&_dso_handle);
  }
  if ( (`guard variable for'Singleton<Application>::s_inst & 1) == 0 )
  {
    `guard variable for'Singleton<Application>::s_inst = 1;
    Application::Application((Application *)&Singleton<Application>::s_inst);
    return _aeabi_atexit((int)&Singleton<Application>::s_inst, (int)Application::~Application, (int)&_dso_handle);
  }
  return result;
}


// ===== 3d015c ObjectSearcher::TargetList::SetSortType(int) [clone] =====
int __fastcall ObjectSearcher::TargetList::SetSortType(int this, int a2)
{
  _DWORD *i; // r4

  for ( i = (_DWORD *)this;
        i[4] != *i;
        this = std::priority_queue<ObjectSearcher::TargetInfo,std::deque<ObjectSearcher::TargetInfo>,ObjectSearcher::TargetSorter>::pop(i) )
  {
    ;
  }
  i[10] = ObjectSearcher::TargetSorter::_sortFrontal;
  return this;
}


// ===== 3d01ac CharAI::AI_DoMeleeAttack(GameObject *,bool) =====
void __fastcall CharAI::AI_DoMeleeAttack(CharAI *this, GameObject *a2, _BOOL4 a3)
{
  _DWORD *v6; // r3
  int v7; // r7
  GameObject *v8; // r1
  int v9; // r3
  int v10; // r1
  void *v11; // r1
  int Constant; // r0
  _BYTE *v13; // r3
  int v14; // r2
  int v15; // r1
  int v16; // r0
  _DWORD v17[4]; // [sp+10h] [bp-104h] BYREF
  int v18; // [sp+20h] [bp-F4h]
  std::string v19; // [sp+7Ch] [bp-98h] BYREF
  std::string v20; // [sp+94h] [bp-80h] BYREF
  std::string v21; // [sp+ACh] [bp-68h] BYREF
  std::string v22; // [sp+C4h] [bp-50h] BYREF
  std::string v23; // [sp+DCh] [bp-38h] BYREF
  std::string v24; // [sp+F4h] [bp-20h] BYREF

  if ( !(*(int (__fastcall **)(_DWORD))(**((_DWORD **)this + 1) + 52))(*((_DWORD *)this + 1)) )
  {
    v6 = *((_DWORD **)this + 1);
    if ( (v6[330] & 1) == 0 )
    {
      if ( (*(int (__fastcall **)(_DWORD))(*v6 + 292))(*((_DWORD *)this + 1)) )
      {
        CharAI::AI_DoRangeAttack(this, a2, a3);
        return;
      }
      if ( CharStateMachine::SM_IsAttacking((CharStateMachine *)(*((_DWORD *)this + 1) + 1276)) )
      {
        v7 = *((unsigned __int8 *)this + 121);
        if ( !*((_BYTE *)this + 121) )
        {
          DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
          std::string::string((int)&v24, "isTracingCharAICommands");
          DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v24);
          std::string::~string(&v24);
          v8 = *((GameObject **)this + 1);
          *((_BYTE *)this + 120) = 1;
          ObjectSearcher::TargetList::TargetList((ObjectSearcher::TargetList *)v17, v8, 1, v7, 1);
          v9 = *((_DWORD *)this + 1);
          v10 = *(unsigned __int8 *)(v9 + 437);
          if ( *(_BYTE *)(v9 + 437) )
          {
            Constant = PyDataConstants::getConstant(
                         (PyDataConstants *)dword_99F758,
                         "CharacterDesign",
                         "Attack_FrontalAngle");
            ObjectSearcher::TargetList::Search(
              (ObjectSearcher::TargetList *)v17,
              0.0,
              (float)(Constant >> 1) * 0.017453);
          }
          else if ( *((_DWORD *)this + 16)
                 && CharAI::AI_CanAttack(this, (GameObject *)v10)
                 && !(*(int (__fastcall **)(_DWORD))(**((_DWORD **)this + 16) + 52))(*((_DWORD *)this + 16)) )
          {
            if ( (*(int (__fastcall **)(_DWORD))(**((_DWORD **)this + 1) + 40))(*((_DWORD *)this + 1)) )
            {
              DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
              std::string::string((int)&v23, "isTracingChar_MeleePotentialTarget");
              DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v23);
              std::string::~string(&v23);
            }
          }
          else
          {
            ObjectSearcher::TargetList::SetSortType((ObjectSearcher::TargetList *)v17, v10);
            ObjectSearcher::TargetList::Search((ObjectSearcher::TargetList *)v17, 0.0, 6.2832);
          }
          if ( v18 != v17[0] )
          {
            CharAI::AI_SetTarget(this, *(GameObject **)v17[0], 0);
            DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
            std::string::string((int)&v22, "isTracingChar_MeleePotentialTarget");
            if ( DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v22)
              && (*(int (__fastcall **)(_DWORD))(**((_DWORD **)this + 1) + 40))(*((_DWORD *)this + 1)) )
            {
              std::string::~string(&v22);
              while ( v18 != v17[0] )
                std::priority_queue<ObjectSearcher::TargetInfo,std::deque<ObjectSearcher::TargetInfo>,ObjectSearcher::TargetSorter>::pop(v17);
            }
            else
            {
              std::string::~string(&v22);
            }
          }
          ObjectSearcher::TargetList::~TargetList((ObjectSearcher::TargetList *)v17);
        }
      }
      else
      {
        DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
        std::string::string((int)&v21, "isTracingCharAICommands");
        DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v21);
        std::string::~string(&v21);
        *((_BYTE *)this + 120) = 0;
        if ( a2 )
        {
          CharAI::AI_SetTarget(this, a2, a3);
        }
        else
        {
          ObjectSearcher::TargetList::TargetList((ObjectSearcher::TargetList *)v17, *((GameObject **)this + 1), 1, 0, 1);
          if ( *(_BYTE *)(*((_DWORD *)this + 1) + 437) )
          {
            v16 = PyDataConstants::getConstant(
                    (PyDataConstants *)dword_99F758,
                    "CharacterDesign",
                    "Attack_FrontalAngle");
            ObjectSearcher::TargetList::Search((ObjectSearcher::TargetList *)v17, 0.0, (float)(v16 >> 1) * 0.017453);
          }
          else
          {
            ObjectSearcher::TargetList::SetSortType((ObjectSearcher::TargetList *)v17, v15);
            ObjectSearcher::TargetList::Search((ObjectSearcher::TargetList *)v17, 0.0, 6.2832);
          }
          if ( v18 != v17[0] )
          {
            CharAI::AI_SetTarget(this, *(GameObject **)v17[0], 0);
            DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
            std::string::string((int)&v20, "isTracingChar_MeleePotentialTarget");
            if ( DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v20)
              && (*(int (__fastcall **)(_DWORD))(**((_DWORD **)this + 1) + 40))(*((_DWORD *)this + 1)) )
            {
              std::string::~string(&v20);
              while ( v18 != v17[0] )
                std::priority_queue<ObjectSearcher::TargetInfo,std::deque<ObjectSearcher::TargetInfo>,ObjectSearcher::TargetSorter>::pop(v17);
            }
            else
            {
              std::string::~string(&v20);
            }
          }
          ObjectSearcher::TargetList::~TargetList((ObjectSearcher::TargetList *)v17);
        }
        if ( !*((_DWORD *)this + 16) )
        {
          v13 = *((_BYTE **)this + 1);
          if ( v13[5288] == 8 && !v13[437] )
          {
            if ( (*(int (__fastcall **)(_DWORD))(*(_DWORD *)v13 + 40))(*((_DWORD *)this + 1)) )
            {
              DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
              std::string::string((int)&v19, "isTracingChar_MeleePotentialTarget");
              DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v19);
              std::string::~string(&v19);
            }
            v14 = *((_DWORD *)this + 1);
            *((_BYTE *)this + 74) = 1;
            CharAI::AI_SetTarget(this, *(GameObject **)(v14 + 5284), 0);
            CharAI::AI_SyncLastTarget(this);
          }
        }
        if ( !a3 )
        {
          if ( *((_DWORD *)this + 16) )
          {
            if ( !CharAI::AI_IsInMeleeRange(this, nullptr) )
              return;
            v11 = *((void **)this + 16);
          }
          else
          {
            v11 = nullptr;
          }
          CharStateMachine::SM_SetAttackState((CharStateMachine *)(*((_DWORD *)this + 1) + 1276), v11, 0);
        }
      }
    }
  }
}


// ===== 3d076c CharAI::AI_DoRangeAttack(GameObject *,bool) =====
void __fastcall CharAI::AI_DoRangeAttack(CharAI *this, GameObject *a2, _BOOL4 a3)
{
  _DWORD *v6; // r3
  int v7; // r7
  int v8; // r3
  int v9; // r1
  int Constant; // r0
  int v11; // r1
  int v12; // r0
  _DWORD v13[4]; // [sp+8h] [bp-BCh] BYREF
  int v14; // [sp+18h] [bp-ACh]
  _BYTE v15[4]; // [sp+5Ch] [bp-68h] BYREF
  int v16; // [sp+60h] [bp-64h] BYREF
  _BYTE v17[4]; // [sp+64h] [bp-60h] BYREF
  std::string v18; // [sp+74h] [bp-50h] BYREF
  std::string v19; // [sp+8Ch] [bp-38h] BYREF
  std::string v20; // [sp+A4h] [bp-20h] BYREF

  if ( !(*(int (__fastcall **)(_DWORD))(**((_DWORD **)this + 1) + 52))(*((_DWORD *)this + 1)) )
  {
    v6 = *((_DWORD **)this + 1);
    if ( (v6[330] & 1) == 0 )
    {
      if ( (*(int (__fastcall **)(_DWORD, _BYTE *, int *, _BYTE *))(*v6 + 296))(*((_DWORD *)this + 1), v17, &v16, v15) )
      {
        if ( CharStateMachine::SM_IsAttacking((CharStateMachine *)(*((_DWORD *)this + 1) + 1276)) )
        {
          v7 = *((unsigned __int8 *)this + 121);
          if ( !*((_BYTE *)this + 121) )
          {
            DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
            std::string::string((int)&v20, "isTracingCharAICommands");
            DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v20);
            std::string::~string(&v20);
            ObjectSearcher::TargetList::TargetList(
              (ObjectSearcher::TargetList *)v13,
              *((GameObject **)this + 1),
              1,
              v7,
              1);
            v8 = *((_DWORD *)this + 1);
            v9 = *(unsigned __int8 *)(v8 + 437);
            if ( *(_BYTE *)(v8 + 437) )
            {
              Constant = PyDataConstants::getConstant(
                           (PyDataConstants *)dword_99F758,
                           "CharacterDesign",
                           "Attack_FrontalAngle");
              ObjectSearcher::TargetList::Search(
                (ObjectSearcher::TargetList *)v13,
                (float)v16,
                (float)(Constant >> 1) * 0.017453);
            }
            else if ( *((_DWORD *)this + 16)
                   && CharAI::AI_CanAttack(this, (GameObject *)v9)
                   && !(*(int (__fastcall **)(_DWORD))(**((_DWORD **)this + 16) + 52))(*((_DWORD *)this + 16)) )
            {
              if ( (*(int (__fastcall **)(_DWORD))(**((_DWORD **)this + 1) + 40))(*((_DWORD *)this + 1)) )
              {
                DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
                std::string::string((int)&v19, "isTracingChar_MeleePotentialTarget");
                DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v19);
                std::string::~string(&v19);
              }
            }
            else
            {
              ObjectSearcher::TargetList::SetSortType((ObjectSearcher::TargetList *)v13, v9);
              ObjectSearcher::TargetList::Search((ObjectSearcher::TargetList *)v13, (float)v16, 6.2832);
            }
            if ( v14 != v13[0] )
            {
              CharAI::AI_SetTarget(this, *(GameObject **)v13[0], 0);
              GameObject::LookAt(*((GameObject **)this + 1), *(GameObject **)v13[0]);
            }
            ObjectSearcher::TargetList::~TargetList((ObjectSearcher::TargetList *)v13);
          }
        }
        else
        {
          DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
          std::string::string((int)&v18, "isTracingCharAICommands");
          DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v18);
          std::string::~string(&v18);
          *((_BYTE *)this + 120) = 0;
          if ( a2 )
          {
            GameObject::LookAt(*((GameObject **)this + 1), a2);
          }
          else
          {
            ObjectSearcher::TargetList::TargetList(
              (ObjectSearcher::TargetList *)v13,
              *((GameObject **)this + 1),
              1,
              0,
              1);
            if ( *(_BYTE *)(*((_DWORD *)this + 1) + 437) )
            {
              v12 = PyDataConstants::getConstant(
                      (PyDataConstants *)dword_99F758,
                      "CharacterDesign",
                      "Attack_FrontalAngle");
              ObjectSearcher::TargetList::Search(
                (ObjectSearcher::TargetList *)v13,
                (float)v16,
                (float)(v12 >> 1) * 0.017453);
            }
            else
            {
              ObjectSearcher::TargetList::SetSortType((ObjectSearcher::TargetList *)v13, v11);
              ObjectSearcher::TargetList::Search((ObjectSearcher::TargetList *)v13, (float)v16, 6.2832);
            }
            if ( v14 != v13[0] )
            {
              CharAI::AI_SetTarget(this, *(GameObject **)v13[0], 0);
              GameObject::LookAt(*((GameObject **)this + 1), *(GameObject **)v13[0]);
            }
            ObjectSearcher::TargetList::~TargetList((ObjectSearcher::TargetList *)v13);
          }
          if ( !a3 )
            CharStateMachine::SM_SetAttackState((CharStateMachine *)(*((_DWORD *)this + 1) + 1276), nullptr, 0);
        }
      }
      else
      {
        CharAI::AI_DoMeleeAttack(this, a2, a3);
      }
    }
  }
}


// ===== 3d0b80 CharAI::OnInitPost(void) =====
int __fastcall CharAI::OnInitPost(int this)
{
  int v1; // r3

  v1 = *(_DWORD *)(this + 28);
  if ( v1 )
    return (*(int (__fastcall **)(_DWORD))(*(_DWORD *)v1 + 12))(*(_DWORD *)(this + 28));
  return this;
}


// ===== 3d0ba4 CharAI::OnInitFinal(void) =====
int __fastcall CharAI::OnInitFinal(int this)
{
  int v1; // r3

  v1 = *(_DWORD *)(this + 28);
  if ( v1 )
    return (*(int (__fastcall **)(_DWORD))(*(_DWORD *)v1 + 16))(*(_DWORD *)(this + 28));
  return this;
}


// ===== 3d0bc8 CharAI::OnMsg(int,void const*) =====
int __fastcall CharAI::OnMsg(int this, int a2, const void *a3)
{
  int v3; // r3

  v3 = *(_DWORD *)(this + 28);
  if ( v3 )
    return (*(int (__fastcall **)(_DWORD, int, const void *))(*(_DWORD *)v3 + 28))(*(_DWORD *)(this + 28), a2, a3);
  return this;
}


// ===== 3d0bec CharAI::OnStateChanged(int,int) =====
int __fastcall CharAI::OnStateChanged(int this, int a2, int a3)
{
  int v3; // r3

  v3 = *(_DWORD *)(this + 28);
  if ( v3 )
    return (*(int (__fastcall **)(_DWORD, int, int))(*(_DWORD *)v3 + 32))(*(_DWORD *)(this + 28), a2, a3);
  return this;
}


// ===== 3d0c10 CharAI::OnTimer(void *) =====
int __fastcall CharAI::OnTimer(int this, void *a2)
{
  int v2; // r3

  v2 = *(_DWORD *)(this + 28);
  if ( v2 )
    return (*(int (__fastcall **)(_DWORD, void *))(*(_DWORD *)v2 + 128))(*(_DWORD *)(this + 28), a2);
  return this;
}


// ===== 3d0c34 CharAI::OnStunExpired(void) =====
int __fastcall CharAI::OnStunExpired(int this)
{
  int v1; // r3

  v1 = *(_DWORD *)(this + 28);
  if ( v1 )
    return (*(int (__fastcall **)(_DWORD))(*(_DWORD *)v1 + 132))(*(_DWORD *)(this + 28));
  return this;
}


// ===== 3d0c58 CharAI::OnFearExpired(void) =====
int __fastcall CharAI::OnFearExpired(int this)
{
  int v1; // r3

  v1 = *(_DWORD *)(this + 28);
  if ( v1 )
    return (*(int (__fastcall **)(_DWORD))(*(_DWORD *)v1 + 136))(*(_DWORD *)(this + 28));
  return this;
}


// ===== 3d0c7c CharAI::OnAttackDelayExpired(void) =====
int __fastcall CharAI::OnAttackDelayExpired(int this)
{
  int v1; // r3

  v1 = *(_DWORD *)(this + 28);
  if ( v1 )
    return (*(int (__fastcall **)(_DWORD))(*(_DWORD *)v1 + 140))(*(_DWORD *)(this + 28));
  return this;
}


// ===== 3d0ca0 CharAI::OnScriptTimer(uint) =====
int __fastcall CharAI::OnScriptTimer(int this, unsigned int a2)
{
  int v2; // r3

  v2 = *(_DWORD *)(this + 28);
  if ( v2 )
    return (*(int (__fastcall **)(_DWORD, unsigned int))(*(_DWORD *)v2 + 144))(*(_DWORD *)(this + 28), a2);
  return this;
}


// ===== 3d0cc4 CharAI::OnAnimEvent(char const*) =====
int __fastcall CharAI::OnAnimEvent(int this, const char *a2)
{
  int v2; // r3

  v2 = *(_DWORD *)(this + 28);
  if ( v2 )
    return (*(int (__fastcall **)(_DWORD, const char *))(*(_DWORD *)v2 + 148))(*(_DWORD *)(this + 28), a2);
  return this;
}


// ===== 3d0ce8 CharAI::OnEndOfAnim(void) =====
int __fastcall CharAI::OnEndOfAnim(int this)
{
  int v1; // r3

  v1 = *(_DWORD *)(this + 28);
  if ( v1 )
    return (*(int (__fastcall **)(_DWORD))(*(_DWORD *)v1 + 152))(*(_DWORD *)(this + 28));
  return this;
}


// ===== 3d0d0c CharAI::OnPreInteract(void) =====
int __fastcall CharAI::OnPreInteract(CharAI *this)
{
  int v1; // r3

  v1 = *((_DWORD *)this + 7);
  if ( v1 )
    return (*(int (__fastcall **)(_DWORD))(*(_DWORD *)v1 + 156))(*((_DWORD *)this + 7));
  else
    return 0;
}


// ===== 3d0d38 CharAI::OnInteract(void) =====
int __fastcall CharAI::OnInteract(int this)
{
  int v1; // r3

  v1 = *(_DWORD *)(this + 28);
  if ( v1 )
    return (*(int (__fastcall **)(_DWORD))(*(_DWORD *)v1 + 160))(*(_DWORD *)(this + 28));
  return this;
}


// ===== 3d0d5c CharAI::OnProjectileHit(GameObject *) =====
int __fastcall CharAI::OnProjectileHit(int this, GameObject *a2)
{
  int v2; // r3

  v2 = *(_DWORD *)(this + 28);
  if ( v2 )
    return (*(int (__fastcall **)(_DWORD, GameObject *))(*(_DWORD *)v2 + 172))(*(_DWORD *)(this + 28), a2);
  return this;
}


// ===== 3d0d80 CharAI::OnKill(Character *) =====
int __fastcall CharAI::OnKill(int this, Character *a2)
{
  int v2; // r3

  v2 = *(_DWORD *)(this + 28);
  if ( v2 )
    return (*(int (__fastcall **)(_DWORD, Character *))(*(_DWORD *)v2 + 176))(*(_DWORD *)(this + 28), a2);
  return this;
}


// ===== 3d0da4 CharAI::OnCombatResults(Character *,Character *,void *) =====
int __fastcall CharAI::OnCombatResults(int this, Character *a2, Character *a3, void *a4)
{
  int v4; // r12

  v4 = *(_DWORD *)(this + 28);
  if ( v4 )
    return (*(int (__fastcall **)(_DWORD, Character *, Character *, void *))(*(_DWORD *)v4 + 180))(
             *(_DWORD *)(this + 28),
             a2,
             a3,
             a4);
  return this;
}


// ===== 3d0dc8 CharAI::OnCombatResults(GameObject *,void *) =====
int __fastcall CharAI::OnCombatResults(int this, GameObject *a2, void *a3)
{
  int v3; // r3

  v3 = *(_DWORD *)(this + 28);
  if ( v3 )
    return (*(int (__fastcall **)(_DWORD, GameObject *, void *))(*(_DWORD *)v3 + 184))(*(_DWORD *)(this + 28), a2, a3);
  return this;
}


// ===== 3d0dec CharAI::OnCollisionBegin(GameObject *,bool) =====
int __fastcall CharAI::OnCollisionBegin(int this, GameObject *a2, bool a3)
{
  int v3; // r3

  v3 = *(_DWORD *)(this + 28);
  if ( v3 )
    return (*(int (__fastcall **)(_DWORD, GameObject *, bool))(*(_DWORD *)v3 + 188))(*(_DWORD *)(this + 28), a2, a3);
  return this;
}


// ===== 3d0e10 CharAI::OnCollisionPersist(GameObject *,bool) =====
int __fastcall CharAI::OnCollisionPersist(int this, GameObject *a2, bool a3)
{
  int v3; // r3

  v3 = *(_DWORD *)(this + 28);
  if ( v3 )
    return (*(int (__fastcall **)(_DWORD, GameObject *, bool))(*(_DWORD *)v3 + 192))(*(_DWORD *)(this + 28), a2, a3);
  return this;
}


// ===== 3d0e34 CharAI::OnCollisionEnd(GameObject *,bool) =====
int __fastcall CharAI::OnCollisionEnd(int this, GameObject *a2, bool a3)
{
  int v3; // r3

  v3 = *(_DWORD *)(this + 28);
  if ( v3 )
    return (*(int (__fastcall **)(_DWORD, GameObject *, bool))(*(_DWORD *)v3 + 196))(*(_DWORD *)(this + 28), a2, a3);
  return this;
}


// ===== 3d0e58 CharAI::OnCollisionResult(GameObject *,bool) =====
int __fastcall CharAI::OnCollisionResult(int this, GameObject *a2, bool a3)
{
  int v3; // r3

  v3 = *(_DWORD *)(this + 28);
  if ( v3 )
    return (*(int (__fastcall **)(_DWORD, GameObject *, bool))(*(_DWORD *)v3 + 200))(*(_DWORD *)(this + 28), a2, a3);
  return this;
}


// ===== 3d0e7c CharAI::OnAttack(int,int,bool) =====
int __fastcall CharAI::OnAttack(CharAI *this, int a2, int a3, int a4)
{
  int result; // r0
  int v9; // r12

  result = CharAI::AI_CanAttack((CharAI *)(*((_DWORD *)this + 1) + 968), nullptr);
  if ( result )
  {
    v9 = *((_DWORD *)this + 7);
    if ( v9 )
      return (*(int (__fastcall **)(_DWORD, int, int, int))(*(_DWORD *)v9 + 168))(*((_DWORD *)this + 7), a2, a3, a4);
  }
  return result;
}


// ===== 3d0ed4 CharAI::OnPreAttack(int) =====
int __fastcall CharAI::OnPreAttack(CharAI *this, int a2)
{
  int result; // r0
  int v5; // r3

  result = CharAI::AI_CanAttack((CharAI *)(*((_DWORD *)this + 1) + 968), nullptr);
  if ( result )
  {
    v5 = *((_DWORD *)this + 7);
    if ( v5 )
      return (*(int (__fastcall **)(_DWORD, int))(*(_DWORD *)v5 + 164))(*((_DWORD *)this + 7), a2);
  }
  return result;
}


// ===== 3d0f1c CharAI::OnRevived(GameObject *) =====
int __fastcall CharAI::OnRevived(CharAI *this, GameObject *a2)
{
  int v4; // r8
  unsigned int Constant; // r0
  int v6; // r0
  int v7; // r3
  CharTimers *v8; // r5
  unsigned int v9; // r0
  int result; // r0
  int v11; // r3

  CharTimers::TMR_StopAll((CharTimers *)(*((_DWORD *)this + 1) + 948));
  v4 = *((_DWORD *)this + 1);
  Constant = PyDataConstants::getConstant((PyDataConstants *)dword_99F758, "CharacterDesign", "AI_Tick");
  v6 = CharTimers::TMR_Start((CharTimers *)(v4 + 948), Constant, -1, 51, nullptr);
  v7 = *((_DWORD *)this + 1);
  *((_DWORD *)this + 4) = v6;
  v8 = (CharTimers *)(v7 + 948);
  v9 = PyDataConstants::getConstant((PyDataConstants *)dword_99F758, "CharacterDesign", "DoT_Tick");
  result = CharTimers::TMR_Start(v8, v9, -1, 52, nullptr);
  v11 = *((_DWORD *)this + 7);
  *((_DWORD *)this + 5) = result;
  if ( v11 )
    return (*(int (__fastcall **)(int, GameObject *))(*(_DWORD *)v11 + 40))(v11, a2);
  return result;
}


// ===== 3d1000 CharAI::OnDied(GameObject *) =====
int __fastcall CharAI::OnDied(CharAI *this, GameObject *a2)
{
  CharAI::GroupInfo *v3; // r0
  int v5; // r3

  v3 = *((CharAI::GroupInfo **)this + 13);
  if ( v3 )
    CharAI::GroupInfo::OnDied(v3, *((Character **)this + 1), a2);
  v5 = *((_DWORD *)this + 7);
  if ( v5 )
    (*(void (__fastcall **)(_DWORD, GameObject *))(*(_DWORD *)v5 + 36))(*((_DWORD *)this + 7), a2);
  return CharAI::AI_SetDead(this);
}


// ===== 3d1050 CharAI::OnUpdate(void) =====
GameObject *__fastcall CharAI::OnUpdate(CharAI *this)
{
  int v1; // r3
  GameObject *result; // r0
  int v4; // r3
  VisualObject *v5; // r4
  _DWORD *v6; // r3
  int v7; // r2
  int v8; // lr
  int v9; // r12
  int v10; // r2
  int (__fastcall *v11)(GameObject *, _DWORD *); // r3
  _DWORD v12[3]; // [sp+4h] [bp-Ch] BYREF

  v1 = *((_DWORD *)this + 7);
  if ( v1 )
    (*(void (__fastcall **)(_DWORD))(*(_DWORD *)v1 + 24))(*((_DWORD *)this + 7));
  result = (GameObject *)CharStateMachine::SM_IsIdle((CharStateMachine *)(*((_DWORD *)this + 1) + 1276), 0);
  if ( result )
  {
    v4 = *((_DWORD *)this + 1);
    if ( *(_DWORD *)(v4 + 1032) )
      goto LABEL_5;
  }
  else
  {
    result = (GameObject *)CharStateMachine::SM_IsAwaitingToSpawn((CharStateMachine *)(*((_DWORD *)this + 1) + 1276));
    if ( !result )
    {
      v4 = *((_DWORD *)this + 1);
      goto LABEL_5;
    }
    v4 = *((_DWORD *)this + 1);
    if ( *(_DWORD *)(v4 + 1032) )
    {
LABEL_5:
      v5 = *(VisualObject **)(v4 + 728);
      result = (GameObject *)GameObject::DisableZoning((GameObject *)v4);
      if ( v5 )
        return (GameObject *)VisualObject::SyncVisibility(v5);
      return result;
    }
  }
  if ( *(_DWORD *)(v4 + 1048) )
    goto LABEL_5;
  if ( !*(_BYTE *)(v4 + 750) )
  {
    result = (GameObject *)(*(int (__fastcall **)(int))(*(_DWORD *)v4 + 196))(v4);
    if ( result )
    {
      GameObject::EnableZoning(*((GameObject **)this + 1));
      result = (GameObject *)(*(int (__fastcall **)(_DWORD))(**((_DWORD **)this + 1) + 52))(*((_DWORD *)this + 1));
      if ( !result )
      {
        result = *((GameObject **)this + 1);
        if ( !*((_BYTE *)result + 133) )
        {
          result = (GameObject *)GameObject::SetPosition(result);
          v6 = *((_DWORD **)this + 1);
          v7 = v6[182];
          if ( v7 )
          {
            result = *(GameObject **)(v7 + 8);
            if ( result )
            {
              v8 = v6[1300];
              v9 = v6[1301];
              v10 = v6[1302];
              v11 = *(int (__fastcall **)(GameObject *, _DWORD *))(*(_DWORD *)result + 164);
              v12[0] = v8;
              v12[1] = v9;
              v12[2] = v10;
              return (GameObject *)v11(result, v12);
            }
          }
        }
      }
    }
  }
  return result;
}


// ===== 3d11bc CharAI::OnTerminate(void) =====
int __fastcall CharAI::OnTerminate(CharAI *this)
{
  int result; // r0
  char *v3; // r4
  char *v4; // r6
  char *v5; // r2
  int v6; // r3

  CharAI::AI_ScriptCleanUp(this);
  CharAI::AI_ClearAllAggro(this);
  CharAI::AI_ClearAllAggroTowardMe(this, 0);
  result = *((_DWORD *)this + 22);
  if ( result && *((_DWORD *)this + 1) == *(_DWORD *)(result + 1048) )
    result = CharAI::AI_SetMaster(result + 968, nullptr);
  v3 = *((char **)this + 25);
  *((_DWORD *)this + 22) = 0;
  v4 = (char *)this + 92;
  while ( v4 != v3 )
  {
    while ( 1 )
    {
      result = *((_DWORD *)v3 + 5);
      if ( result && *((_DWORD *)this + 1) == *(_DWORD *)(result + 1048) )
        result = CharAI::AI_SetMaster(result + 968, nullptr);
      v5 = *((char **)v3 + 3);
      if ( !v5 )
        break;
      while ( *((_DWORD *)v5 + 2) )
        v5 = *((char **)v5 + 2);
      v3 = v5;
      if ( v4 == v5 )
        return result;
    }
    v6 = *((_DWORD *)v3 + 1);
    if ( *(char **)(v6 + 12) == v3 )
    {
      do
      {
        v3 = (char *)v6;
        v6 = *(_DWORD *)(v6 + 4);
      }
      while ( *(char **)(v6 + 12) == v3 );
      v5 = *((char **)v3 + 3);
    }
    if ( (char *)v6 != v5 )
      v3 = (char *)v6;
  }
  return result;
}


// ===== 3d12b0 CharAI::OnInit(void) =====
int __fastcall CharAI::OnInit(CharAI *this)
{
  int result; // r0
  unsigned int v3; // r1
  int v4; // r7
  unsigned int Constant; // r0
  int v6; // r0
  unsigned int v7; // r1
  int v8; // r5
  unsigned int v9; // r0
  int v10; // r3

  result = (*(int (__fastcall **)(_DWORD))(**((_DWORD **)this + 1) + 52))(*((_DWORD *)this + 1));
  if ( !result )
  {
    v3 = *((_DWORD *)this + 4);
    if ( v3 != -1 )
      CharTimers::TMR_Stop((CharTimers *)(*((_DWORD *)this + 1) + 948), v3);
    v4 = *((_DWORD *)this + 1);
    Constant = PyDataConstants::getConstant((PyDataConstants *)dword_99F758, "CharacterDesign", "AI_Tick");
    v6 = CharTimers::TMR_Start((CharTimers *)(v4 + 948), Constant, -1, 51, nullptr);
    v7 = *((_DWORD *)this + 5);
    *((_DWORD *)this + 4) = v6;
    if ( v7 != -1 )
      CharTimers::TMR_Stop((CharTimers *)(*((_DWORD *)this + 1) + 948), v7);
    v8 = *((_DWORD *)this + 1);
    v9 = PyDataConstants::getConstant((PyDataConstants *)dword_99F758, "CharacterDesign", "DoT_Tick");
    result = CharTimers::TMR_Start((CharTimers *)(v8 + 948), v9, -1, 52, nullptr);
    *((_DWORD *)this + 5) = result;
  }
  v10 = *((_DWORD *)this + 8);
  if ( v10 )
    return (*(int (__fastcall **)(_DWORD))(*(_DWORD *)v10 + 8))(*((_DWORD *)this + 8));
  return result;
}


// ===== 3d13d8 `global constructor keyed to'.._.._sources_Game_Objects_Characters_AI_CharAI_Events.cpp =====
int `global constructor keyed to'.._.._sources_Game_Objects_Characters_AI_CharAI_Events.cpp()
{
  int result; // r0

  result = `guard variable for'Singleton<PlayerStatManager>::s_inst;
  dword_9A2B88 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9A2B84 = 1056964608;
  if ( (`guard variable for'Singleton<PlayerStatManager>::s_inst & 1) == 0 )
  {
    `guard variable for'Singleton<PlayerStatManager>::s_inst = 1;
    PlayerStatManager::PlayerStatManager((PlayerStatManager *)&Singleton<PlayerStatManager>::s_inst);
    result = _aeabi_atexit(
               (int)&Singleton<PlayerStatManager>::s_inst,
               (int)PlayerStatManager::~PlayerStatManager,
               (int)&_dso_handle);
  }
  if ( (`guard variable for'Singleton<Application>::s_inst & 1) == 0 )
  {
    `guard variable for'Singleton<Application>::s_inst = 1;
    Application::Application((Application *)&Singleton<Application>::s_inst);
    return _aeabi_atexit((int)&Singleton<Application>::s_inst, (int)Application::~Application, (int)&_dso_handle);
  }
  return result;
}


// ===== 3d14b4 CharAI::OnEnemySpotted(Character *) =====
void __fastcall CharAI::OnEnemySpotted(CharAI *this, Character *a2)
{
  CharAI::GroupInfo *v4; // r0
  int v5; // r3
  std::priv::_String_base<char,std::allocator<char> > v6; // [sp+Ch] [bp-34h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v7; // [sp+24h] [bp-1Ch] BYREF

  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string((int)&v7, "isTracingCharAIEvents");
  DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, (const std::string *)&v7);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v7);
  v4 = *((CharAI::GroupInfo **)this + 13);
  if ( v4 )
    CharAI::GroupInfo::OnEnemySpotted(v4, *((Character **)this + 1), a2);
  if ( !CharStateMachine::SM_IsAwaitingToSpawn((Character *)((char *)a2 + 1276))
    && !CharStateMachine::SM_IsAwaitingToSpawn((CharStateMachine *)(*((_DWORD *)this + 1) + 1276))
    && !CharStateMachine::SM_IsInLimbus((Character *)((char *)a2 + 1276))
    && !CharStateMachine::SM_IsInLimbus((CharStateMachine *)(*((_DWORD *)this + 1) + 1276)) )
  {
    if ( (!CharAI::AI_IsInCombat(this) || (*(int (__fastcall **)(Character *))(*(_DWORD *)a2 + 40))(a2))
      && COERCE_FLOAT(CharAI::AI_GetAggro(this, a2)) == 0.0
      && COERCE_FLOAT(
           CharAI::AI_AddAggro(
             (CharAI *)(*((_DWORD *)this + 1) + 968),
             a2,
             *(float *)(Arrays::DesignSettingsTable::members + 48))) > 0.0 )
    {
      DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
      std::string::string((int)&v6, "isTracingThreatChange");
      DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, (const std::string *)&v6);
      std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v6);
    }
    v5 = *((_DWORD *)this + 7);
    if ( v5 )
      (*(void (__fastcall **)(_DWORD, Character *))(*(_DWORD *)v5 + 52))(*((_DWORD *)this + 7), a2);
  }
}


// ===== 3d1694 CharAI::OnMasterInMeleeRange(void) =====
void __fastcall CharAI::OnMasterInMeleeRange(CharAI *this)
{
  int v2; // r3
  std::priv::_String_base<char,std::allocator<char> > v3; // [sp+4h] [bp-1Ch] BYREF

  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string((std::string *)&v3, "isTracingCharAIEvents");
  DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, (const std::string *)&v3);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v3);
  v2 = *((_DWORD *)this + 7);
  if ( v2 )
    (*(void (__fastcall **)(_DWORD))(*(_DWORD *)v2 + 124))(*((_DWORD *)this + 7));
}


// ===== 3d1740 CharAI::OnMasterInCloseRange(void) =====
void __fastcall CharAI::OnMasterInCloseRange(CharAI *this)
{
  int v2; // r3
  std::priv::_String_base<char,std::allocator<char> > v3; // [sp+4h] [bp-1Ch] BYREF

  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string((std::string *)&v3, "isTracingCharAIEvents");
  DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, (const std::string *)&v3);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v3);
  v2 = *((_DWORD *)this + 7);
  if ( v2 )
    (*(void (__fastcall **)(_DWORD))(*(_DWORD *)v2 + 120))(*((_DWORD *)this + 7));
}


// ===== 3d17ec CharAI::OnMasterInRangedRange(void) =====
void __fastcall CharAI::OnMasterInRangedRange(CharAI *this)
{
  int v2; // r3
  std::priv::_String_base<char,std::allocator<char> > v3; // [sp+4h] [bp-1Ch] BYREF

  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string((std::string *)&v3, "isTracingCharAIEvents");
  DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, (const std::string *)&v3);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v3);
  v2 = *((_DWORD *)this + 7);
  if ( v2 )
    (*(void (__fastcall **)(_DWORD))(*(_DWORD *)v2 + 116))(*((_DWORD *)this + 7));
}


// ===== 3d1898 CharAI::OnMasterOutOfRange(void) =====
void __fastcall CharAI::OnMasterOutOfRange(CharAI *this)
{
  int v2; // r3
  std::priv::_String_base<char,std::allocator<char> > v3; // [sp+4h] [bp-1Ch] BYREF

  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string((std::string *)&v3, "isTracingCharAIEvents");
  DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, (const std::string *)&v3);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v3);
  v2 = *((_DWORD *)this + 7);
  if ( v2 )
    (*(void (__fastcall **)(_DWORD))(*(_DWORD *)v2 + 112))(*((_DWORD *)this + 7));
}


// ===== 3d1944 CharAI::OnMasterInSight(void) =====
void __fastcall CharAI::OnMasterInSight(CharAI *this)
{
  int v2; // r3
  std::priv::_String_base<char,std::allocator<char> > v3; // [sp+4h] [bp-1Ch] BYREF

  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string((std::string *)&v3, "isTracingCharAIEvents");
  DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, (const std::string *)&v3);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v3);
  v2 = *((_DWORD *)this + 7);
  if ( v2 )
    (*(void (__fastcall **)(_DWORD))(*(_DWORD *)v2 + 108))(*((_DWORD *)this + 7));
}


// ===== 3d19f0 CharAI::OnMasterOutOfSight(void) =====
void __fastcall CharAI::OnMasterOutOfSight(CharAI *this)
{
  int v2; // r3
  std::priv::_String_base<char,std::allocator<char> > v3; // [sp+4h] [bp-1Ch] BYREF

  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string((std::string *)&v3, "isTracingCharAIEvents");
  DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, (const std::string *)&v3);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v3);
  v2 = *((_DWORD *)this + 7);
  if ( v2 )
    (*(void (__fastcall **)(_DWORD))(*(_DWORD *)v2 + 104))(*((_DWORD *)this + 7));
}


// ===== 3d1a9c CharAI::OnMasterRevived(void) =====
void __fastcall CharAI::OnMasterRevived(CharAI *this)
{
  int v2; // r3
  std::priv::_String_base<char,std::allocator<char> > v3; // [sp+4h] [bp-1Ch] BYREF

  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string((std::string *)&v3, "isTracingCharAIEvents");
  DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, (const std::string *)&v3);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v3);
  v2 = *((_DWORD *)this + 7);
  if ( v2 )
    (*(void (__fastcall **)(_DWORD))(*(_DWORD *)v2 + 100))(*((_DWORD *)this + 7));
}


// ===== 3d1b48 CharAI::OnMasterDied(void) =====
void __fastcall CharAI::OnMasterDied(CharAI *this)
{
  int v2; // r3
  std::priv::_String_base<char,std::allocator<char> > v3; // [sp+4h] [bp-1Ch] BYREF

  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string((std::string *)&v3, "isTracingCharAIEvents");
  DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, (const std::string *)&v3);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v3);
  v2 = *((_DWORD *)this + 7);
  if ( v2 )
    (*(void (__fastcall **)(_DWORD))(*(_DWORD *)v2 + 96))(*((_DWORD *)this + 7));
}


// ===== 3d1bf4 CharAI::OnTargetInMeleeRange(void) =====
void __fastcall CharAI::OnTargetInMeleeRange(CharAI *this)
{
  int v2; // r3
  std::priv::_String_base<char,std::allocator<char> > v3; // [sp+4h] [bp-1Ch] BYREF

  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string((std::string *)&v3, "isTracingCharAIEvents");
  DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, (const std::string *)&v3);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v3);
  v2 = *((_DWORD *)this + 7);
  if ( v2 )
    (*(void (__fastcall **)(_DWORD))(*(_DWORD *)v2 + 92))(*((_DWORD *)this + 7));
}


// ===== 3d1ca0 CharAI::OnTargetInCloseRange(void) =====
void __fastcall CharAI::OnTargetInCloseRange(CharAI *this)
{
  int v2; // r3
  std::priv::_String_base<char,std::allocator<char> > v3; // [sp+4h] [bp-1Ch] BYREF

  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string((std::string *)&v3, "isTracingCharAIEvents");
  DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, (const std::string *)&v3);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v3);
  v2 = *((_DWORD *)this + 7);
  if ( v2 )
    (*(void (__fastcall **)(_DWORD))(*(_DWORD *)v2 + 88))(*((_DWORD *)this + 7));
}


// ===== 3d1d4c CharAI::OnTargetInRangedRange(void) =====
void __fastcall CharAI::OnTargetInRangedRange(CharAI *this)
{
  int v2; // r3
  std::priv::_String_base<char,std::allocator<char> > v3; // [sp+4h] [bp-1Ch] BYREF

  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string((std::string *)&v3, "isTracingCharAIEvents");
  DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, (const std::string *)&v3);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v3);
  v2 = *((_DWORD *)this + 7);
  *((_BYTE *)this + 76) = 0;
  if ( v2 )
    (*(void (__fastcall **)(int))(*(_DWORD *)v2 + 84))(v2);
}


// ===== 3d1e00 CharAI::OnTargetOutOfRange(void) =====
void __fastcall CharAI::OnTargetOutOfRange(CharAI *this)
{
  int v2; // r3
  std::priv::_String_base<char,std::allocator<char> > v3; // [sp+4h] [bp-1Ch] BYREF

  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string((std::string *)&v3, "isTracingCharAIEvents");
  DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, (const std::string *)&v3);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v3);
  v2 = *((_DWORD *)this + 7);
  *((_BYTE *)this + 76) = 0;
  if ( v2 )
    (*(void (__fastcall **)(int))(*(_DWORD *)v2 + 80))(v2);
}


// ===== 3d1eb4 CharAI::OnTargetRevived(void) =====
void __fastcall CharAI::OnTargetRevived(CharAI *this)
{
  int v2; // r3
  std::priv::_String_base<char,std::allocator<char> > v3; // [sp+4h] [bp-1Ch] BYREF

  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string((std::string *)&v3, "isTracingCharAIEvents");
  DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, (const std::string *)&v3);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v3);
  v2 = *((_DWORD *)this + 7);
  if ( v2 )
    (*(void (__fastcall **)(_DWORD))(*(_DWORD *)v2 + 68))(*((_DWORD *)this + 7));
}


// ===== 3d1f60 CharAI::OnTargetDied(void) =====
void __fastcall CharAI::OnTargetDied(CharAI *this)
{
  int v2; // r3
  std::priv::_String_base<char,std::allocator<char> > v3; // [sp+4h] [bp-1Ch] BYREF

  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string((std::string *)&v3, "isTracingCharAIEvents");
  DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, (const std::string *)&v3);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v3);
  v2 = *((_DWORD *)this + 7);
  *((_BYTE *)this + 120) = 0;
  if ( v2 )
    (*(void (__fastcall **)(int))(*(_DWORD *)v2 + 64))(v2);
}


// ===== 3d2014 CharAI::OnDeAggro(Character *) =====
void __fastcall CharAI::OnDeAggro(CharAI *this, Character *a2)
{
  int v4; // r3
  std::priv::_String_base<char,std::allocator<char> > v5; // [sp+4h] [bp-20h] BYREF

  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string((int)&v5, "isTracingCharAIEvents");
  DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, (const std::string *)&v5);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v5);
  v4 = *((_DWORD *)this + 7);
  if ( v4 )
    (*(void (__fastcall **)(_DWORD, Character *))(*(_DWORD *)v4 + 60))(*((_DWORD *)this + 7), a2);
}


// ===== 3d20c8 CharAI::OnAggro(Character *) =====
void __fastcall CharAI::OnAggro(CharAI *this, Character *a2)
{
  int v4; // r3
  std::priv::_String_base<char,std::allocator<char> > v5; // [sp+4h] [bp-20h] BYREF

  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string((int)&v5, "isTracingCharAIEvents");
  DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, (const std::string *)&v5);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v5);
  v4 = *((_DWORD *)this + 7);
  if ( v4 )
    (*(void (__fastcall **)(_DWORD, Character *))(*(_DWORD *)v4 + 56))(*((_DWORD *)this + 7), a2);
}


// ===== 3d217c CharAI::OnNeutralSpotted(Character *) =====
void __fastcall CharAI::OnNeutralSpotted(CharAI *this, Character *a2)
{
  int v4; // r3
  std::priv::_String_base<char,std::allocator<char> > v5; // [sp+4h] [bp-20h] BYREF

  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string((int)&v5, "isTracingCharAIEvents");
  DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, (const std::string *)&v5);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v5);
  v4 = *((_DWORD *)this + 7);
  if ( v4 )
    (*(void (__fastcall **)(_DWORD, Character *))(*(_DWORD *)v4 + 48))(*((_DWORD *)this + 7), a2);
}


// ===== 3d2230 CharAI::OnFriendSpotted(Character *) =====
void __fastcall CharAI::OnFriendSpotted(CharAI *this, Character *a2)
{
  int v4; // r3
  std::priv::_String_base<char,std::allocator<char> > v5; // [sp+4h] [bp-20h] BYREF

  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string((int)&v5, "isTracingCharAIEvents");
  DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, (const std::string *)&v5);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v5);
  v4 = *((_DWORD *)this + 7);
  if ( v4 )
    (*(void (__fastcall **)(_DWORD, Character *))(*(_DWORD *)v4 + 44))(*((_DWORD *)this + 7), a2);
}


// ===== 3d22e4 CharAI::OnTargetInSight(void) =====
int __fastcall CharAI::OnTargetInSight(Character **this)
{
  int v2; // r7
  int v3; // r10
  int v4; // r9
  char *TargetPosition; // r0
  float v6; // r7
  float v7; // r8
  int result; // r0
  int v9; // r3
  float v10[3]; // [sp+14h] [bp-2Ch] BYREF
  std::priv::_String_base<char,std::allocator<char> > v11; // [sp+24h] [bp-1Ch] BYREF

  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string((std::string *)&v11, "isTracingCharAIEvents");
  DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, (const std::string *)&v11);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v11);
  v2 = Arrays::AITable::members;
  v3 = *(_DWORD *)(v2 + 68 * Character::GetCharAIId(*(this + 1)) + 36);
  v4 = VoxSoundManager::s_instance;
  TargetPosition = GameObject::GetTargetPosition(*(this + 1));
  v6 = *(float *)TargetPosition;
  v7 = *((float *)TargetPosition + 2);
  v10[1] = *((float *)TargetPosition + 1);
  v10[0] = v6;
  v10[2] = v7;
  result = VoxSoundManager::Play3D(v4, v3, v10, 0, COERCE_FLOAT(1), -1.0, -1.0);
  v9 = (int)*(this + 7);
  if ( v9 )
    return (*(int (__fastcall **)(_DWORD))(*(_DWORD *)v9 + 76))(*(this + 7));
  return result;
}


// ===== 3d2410 CharAI::OnTargetOutOfSight(void) =====
int __fastcall CharAI::OnTargetOutOfSight(CharAI *this)
{
  int result; // r0
  int v3; // r3
  CharAI *v4; // r6
  Character *TargetAsCharacter; // r0
  std::priv::_String_base<char,std::allocator<char> > v6; // [sp+4h] [bp-1Ch] BYREF

  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string((std::string *)&v6, "isTracingCharAIEvents");
  DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, (const std::string *)&v6);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v6);
  result = CharAI::AI_IsTargetACharacter((CharAI *)(*((_DWORD *)this + 1) + 968));
  if ( result )
  {
    v4 = (CharAI *)(*((_DWORD *)this + 1) + 968);
    TargetAsCharacter = (Character *)CharAI::AI_GetTargetAsCharacter(v4);
    result = CharAI::AI_ClearAggro(v4, TargetAsCharacter);
  }
  v3 = *((_DWORD *)this + 7);
  *((_BYTE *)this + 76) = 0;
  if ( v3 )
    return (*(int (__fastcall **)(int))(*(_DWORD *)v3 + 72))(v3);
  return result;
}


// ===== 3d24f8 CharAI::HandleGroups(void) =====
void __fastcall CharAI::HandleGroups(CharAI *this)
{
  ;
}


// ===== 3d24fc CharAI::GroupInfo::CanSpawn(Character *) =====
int __fastcall CharAI::GroupInfo::CanSpawn(CharAI::GroupInfo *this, Character *a2)
{
  return 0;
}


// ===== 3d2504 std::priv::__find<Character **,CharAI *>(Character **,Character **,CharAI * const&,std::random_access_iterator_tag const&) =====
int *__fastcall std::priv::__find<Character **,CharAI *>(int *result, int a2, int *a3)
{
  int v3; // r3
  int v4; // r12
  int v5; // r12
  int v6; // r4
  int v7; // r4
  int v8; // r4
  int v9; // r4
  int v10; // r3
  int v11; // r2
  int v12; // r2
  int v13; // r12

  v3 = (a2 - (int)result) >> 4;
  v4 = (a2 - (int)result) >> 2;
  if ( v3 <= 0 )
  {
LABEL_18:
    switch ( v4 )
    {
      case 2:
        v10 = *a3;
        break;
      case 3:
        if ( *result )
          v13 = *result + 968;
        else
          v13 = 0;
        v10 = *a3;
        if ( v13 == *a3 )
          return result;
        ++result;
        break;
      case 1:
        v10 = *a3;
        goto LABEL_28;
      default:
        return (int *)a2;
    }
    v11 = *result;
    if ( *result )
      v11 += 968;
    if ( v11 == v10 )
      return result;
    ++result;
LABEL_28:
    v12 = *result;
    if ( *result )
      v12 += 968;
    if ( v12 != v10 )
      return (int *)a2;
    return result;
  }
  v5 = *a3;
  while ( 1 )
  {
    v9 = *result;
    if ( *result )
      v9 += 968;
    if ( v9 == v5 )
      return result;
    v6 = result[1];
    if ( v6 )
      v6 += 968;
    if ( v6 == v5 )
      return ++result;
    v7 = result[2];
    if ( v7 )
      v7 += 968;
    if ( v7 == v5 )
    {
      result += 2;
      return result;
    }
    v8 = result[3];
    if ( v8 )
      v8 += 968;
    if ( v8 == v5 )
    {
      result += 3;
      return result;
    }
    --v3;
    result += 4;
    if ( !v3 )
    {
      v4 = (a2 - (int)result) >> 2;
      goto LABEL_18;
    }
  }
}


// ===== 3d2628 CharAI::GroupInfo::OnDied(Character *,GameObject *) =====
int __fastcall CharAI::GroupInfo::OnDied(int this, Character *a2, GameObject *a3)
{
  int v3; // r3
  int v4; // r5
  int v6; // r3
  int v7; // r7
  int v8; // r7
  int v9; // r4
  int v10; // r3
  int v11; // r3
  int v12; // r7
  int v13; // r4
  int v14; // r3
  int v15; // r4
  int v16; // r7
  int v17; // r2
  int v18; // r7
  int v19; // r6
  int v20; // r3
  int v21; // r4
  int v22; // r7
  int v23; // r6
  int v24; // r3

  v3 = *((_DWORD *)a2 + 256);
  v4 = this;
  switch ( v3 )
  {
    case 2:
      v6 = *(_DWORD *)(this + 12);
      v7 = *(_DWORD *)(this + 16);
      *(_BYTE *)(this + 40) = 1;
      v8 = (v7 - v6) >> 2;
      if ( v8 )
      {
        v9 = 0;
        while ( 1 )
        {
          v10 = *(_DWORD *)(v6 + 4 * v9++);
          this = v2Controller::Cmd_Kill(*(v2Controller **)(v10 + 888), a3, 0);
          if ( v9 == v8 )
            break;
          v6 = *(_DWORD *)(v4 + 12);
        }
      }
      v11 = *(_DWORD *)(v4 + 24);
      v12 = (*(_DWORD *)(v4 + 28) - v11) >> 2;
      if ( v12 )
      {
        v13 = 0;
        while ( 1 )
        {
          v14 = *(_DWORD *)(v11 + 4 * v13++);
          this = v2Controller::Cmd_Kill(*(v2Controller **)(v14 + 888), a3, 0);
          if ( v13 == v12 )
            break;
          v11 = *(_DWORD *)(v4 + 24);
        }
      }
      break;
    case 1:
      v15 = *(unsigned __int8 *)(this + 40);
      if ( !*(_BYTE *)(this + 40) )
      {
        v16 = *(_DWORD *)(this + 16);
        v17 = *(_DWORD *)(this + 12);
        *(_BYTE *)(this + 40) = 1;
        v18 = (v16 - v17) >> 2;
        if ( v18 )
        {
          v19 = 1;
          do
          {
            while ( !v19 )
            {
              ++v15;
              *(_BYTE *)(v4 + 40) = 0;
              if ( v15 == v18 )
                return this;
            }
            v20 = *(_DWORD *)(*(_DWORD *)(v4 + 12) + 4 * v15++);
            this = (*(int (__fastcall **)(int))(*(_DWORD *)v20 + 52))(v20);
            if ( !this )
              v19 = 0;
            *(_BYTE *)(v4 + 40) = v19;
          }
          while ( v15 != v18 );
        }
      }
      break;
    case 3:
      v21 = *(_DWORD *)(this + 36);
      if ( !v21 )
      {
        v22 = (*(_DWORD *)(this + 28) - *(_DWORD *)(this + 24)) >> 2;
        if ( v22 )
        {
          v23 = 1;
          do
          {
            while ( !v23 )
            {
              if ( ++v21 == v22 )
                goto LABEL_32;
            }
            v24 = *(_DWORD *)(*(_DWORD *)(v4 + 24) + 4 * v21++);
            this = (*(int (__fastcall **)(int))(*(_DWORD *)v24 + 52))(v24);
            if ( !this )
              v23 = 0;
          }
          while ( v21 != v22 );
        }
        else
        {
          v23 = 1;
        }
LABEL_32:
        *(_DWORD *)(v4 + 36) = v23;
      }
      break;
  }
  return this;
}


// ===== 3d27cc CharAI::GroupInfo::OnEnemySpotted(Character *,Character *) =====
int __fastcall CharAI::GroupInfo::OnEnemySpotted(int this, Character *a2, Character *a3)
{
  int v3; // r5
  int v5; // r3
  int v6; // r6
  int v7; // r4
  int v8; // r0
  CharStateMachine *v9; // r7
  int v10; // r3
  int v11; // r6
  int v12; // r4
  int v13; // r3
  int v14; // r6
  int v15; // r4
  int v16; // r4
  int v17; // r3
  int v18; // r6

  v3 = this;
  if ( *(_BYTE *)(this + 41) )
    return this;
  switch ( *((_DWORD *)a2 + 256) )
  {
    case 0:
      if ( !((unsigned int)(*(_DWORD *)(this + 4) - *(_DWORD *)this) >> 2) )
      {
        v16 = (*(_DWORD *)(this + 16) - *(_DWORD *)(this + 12)) >> 2;
        if ( !v16 )
        {
          v17 = *(_DWORD *)(this + 24);
          v18 = (*(_DWORD *)(this + 28) - v17) >> 2;
          if ( v18 )
          {
            while ( 1 )
            {
              this = CharStateMachine::SM_IsAwaitingToSpawn((CharStateMachine *)(*(_DWORD *)(v17 + 4 * v16) + 1276));
              if ( this )
                this = CharStateMachine::SM_SetSpawnState(
                         (CharStateMachine *)(*(_DWORD *)(*(_DWORD *)(v3 + 24) + 4 * v16) + 1276),
                         1,
                         0);
              if ( ++v16 == v18 )
                break;
              v17 = *(_DWORD *)(v3 + 24);
            }
          }
          goto LABEL_15;
        }
      }
      return this;
    case 1:
      goto LABEL_6;
    case 2:
      v10 = *(_DWORD *)(this + 12);
      v11 = (*(_DWORD *)(this + 16) - v10) >> 2;
      if ( v11 )
      {
        v12 = 0;
        while ( 1 )
        {
          if ( CharStateMachine::SM_IsAwaitingToSpawn((CharStateMachine *)(*(_DWORD *)(v10 + 4 * v12) + 1276)) )
            CharStateMachine::SM_SetSpawnState(
              (CharStateMachine *)(*(_DWORD *)(*(_DWORD *)(v3 + 12) + 4 * v12) + 1276),
              1,
              0);
          if ( ++v12 == v11 )
            break;
          v10 = *(_DWORD *)(v3 + 12);
        }
      }
      *(_BYTE *)(v3 + 41) = 1;
LABEL_6:
      v5 = *(_DWORD *)(v3 + 24);
      v6 = (*(_DWORD *)(v3 + 28) - v5) >> 2;
      if ( !v6 )
        goto LABEL_12;
      v7 = 0;
      break;
    case 3:
      if ( *(_DWORD *)(this + 36) == -1 )
      {
        v13 = *(_DWORD *)(this + 24);
        v14 = (*(_DWORD *)(this + 28) - v13) >> 2;
        if ( v14 )
        {
          v15 = 0;
          while ( 1 )
          {
            this = CharStateMachine::SM_IsAwaitingToSpawn((CharStateMachine *)(*(_DWORD *)(v13 + 4 * v15) + 1276));
            if ( this )
              this = CharStateMachine::SM_SetSpawnState(
                       (CharStateMachine *)(*(_DWORD *)(*(_DWORD *)(v3 + 24) + 4 * v15) + 1276),
                       1,
                       0);
            if ( ++v15 == v14 )
              break;
            v13 = *(_DWORD *)(v3 + 24);
          }
        }
        *(_DWORD *)(v3 + 36) = 0;
        *(_BYTE *)(v3 + 41) = 1;
      }
      return this;
    default:
      return this;
  }
  while ( !CharStateMachine::SM_IsAwaitingToSpawn((CharStateMachine *)(*(_DWORD *)(v5 + 4 * v7) + 1276)) )
  {
    if ( ++v7 == v6 )
      goto LABEL_12;
LABEL_9:
    v5 = *(_DWORD *)(v3 + 24);
  }
  v8 = *(_DWORD *)(*(_DWORD *)(v3 + 24) + 4 * v7++);
  CharStateMachine::SM_SetSpawnState((CharStateMachine *)(v8 + 1276), 1, 0);
  if ( v7 != v6 )
    goto LABEL_9;
LABEL_12:
  v9 = (Character *)((char *)a2 + 1276);
  this = CharStateMachine::SM_IsAwaitingToSpawn(v9);
  if ( this )
    this = CharStateMachine::SM_SetSpawnState(v9, 1, 0);
  if ( !((unsigned int)(*(_DWORD *)(v3 + 4) - *(_DWORD *)v3) >> 2) )
LABEL_15:
    *(_BYTE *)(v3 + 41) = 1;
  return this;
}


// ===== 3d2a34 CharAI::GroupInfo::CanRespawn(Character *) =====
int __fastcall CharAI::GroupInfo::CanRespawn(CharAI::GroupInfo *this, Character *a2)
{
  int v2; // r3
  int result; // r0
  int v5; // r6
  int v6; // r3
  int v7; // r7
  int v8; // r4
  int v9; // r0
  int v10; // r3

  v2 = *((_DWORD *)a2 + 256);
  if ( !v2 )
    return *((unsigned __int8 *)this + 40) ^ 1;
  if ( v2 != 3 )
    return 0;
  v5 = *((_DWORD *)this + 9);
  if ( v5 != 1 )
    return v5 == 2;
  v6 = *((_DWORD *)this + 6);
  v7 = (*((_DWORD *)this + 7) - v6) >> 2;
  if ( !v7 )
    goto LABEL_17;
  v8 = 0;
  while ( 1 )
  {
    v9 = *(_DWORD *)(v6 + 4 * v8++);
    if ( !CharStateMachine::SM_IsInLimbus((CharStateMachine *)(v9 + 1276)) )
      v5 = 0;
    if ( v8 == v7 )
      break;
    v6 = *((_DWORD *)this + 6);
  }
  if ( v5 )
  {
LABEL_17:
    result = 1;
    v10 = 2;
  }
  else
  {
    result = 0;
    v10 = 1;
  }
  *((_DWORD *)this + 9) = v10;
  return result;
}


// ===== 3d2ae8 std::operator<<std::string,int>(std::pair<std::string,int> const&,std::pair<std::string,int> const&) =====
bool __fastcall std::operator<<std::string,int>(int a1, int a2)
{
  const void *v2; // r4
  const void *v3; // r5
  int v5; // r8
  int v6; // r9
  size_t v7; // r10
  int v9; // r0
  int v10; // r0

  v2 = *(const void **)(a1 + 20);
  v3 = *(const void **)(a2 + 20);
  v5 = *(_DWORD *)(a1 + 16) - (_DWORD)v2;
  v6 = *(_DWORD *)(a2 + 16) - (_DWORD)v3;
  if ( v6 >= v5 )
    v7 = *(_DWORD *)(a1 + 16) - (_DWORD)v2;
  else
    v7 = *(_DWORD *)(a2 + 16) - (_DWORD)v3;
  v9 = memcmp(*(const void **)(a1 + 20), *(const void **)(a2 + 20), v7);
  if ( v9 )
  {
    if ( v9 >= 0 )
      goto LABEL_6;
    return 1;
  }
  if ( v5 < v6 )
    return 1;
LABEL_6:
  v10 = memcmp(v3, v2, v7);
  if ( v10 )
  {
    if ( v10 >= 0 )
      return *(_DWORD *)(a1 + 24) < *(_DWORD *)(a2 + 24);
  }
  else if ( v5 <= v6 )
  {
    return *(_DWORD *)(a1 + 24) < *(_DWORD *)(a2 + 24);
  }
  return 0;
}


// ===== 3d2b88 `global constructor keyed to'.._.._sources_Game_Objects_Characters_AI_CharAI_Groups.cpp =====
int `global constructor keyed to'.._.._sources_Game_Objects_Characters_AI_CharAI_Groups.cpp()
{
  int result; // r0

  dword_9A2B94 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9A2B90 = 1056964608;
  dword_9A2BA8 = 0;
  dword_9A2B9C = 0;
  CharAI::s_groups = 0;
  dword_9A2BA0 = (int)&CharAI::s_groups;
  dword_9A2BA4 = (int)&CharAI::s_groups;
  result = _aeabi_atexit(
             (int)&CharAI::s_groups,
             (int)std::map<std::pair<std::string,int>,CharAI::GroupInfo>::~map,
             (int)&_dso_handle);
  if ( (`guard variable for'Singleton<PlayerStatManager>::s_inst & 1) == 0 )
  {
    `guard variable for'Singleton<PlayerStatManager>::s_inst = 1;
    PlayerStatManager::PlayerStatManager((PlayerStatManager *)&Singleton<PlayerStatManager>::s_inst);
    result = _aeabi_atexit(
               (int)&Singleton<PlayerStatManager>::s_inst,
               (int)PlayerStatManager::~PlayerStatManager,
               (int)&_dso_handle);
  }
  if ( (`guard variable for'Singleton<Application>::s_inst & 1) == 0 )
  {
    `guard variable for'Singleton<Application>::s_inst = 1;
    Application::Application((Application *)&Singleton<Application>::s_inst);
    return _aeabi_atexit((int)&Singleton<Application>::s_inst, (int)Application::~Application, (int)&_dso_handle);
  }
  return result;
}


// ===== 3d2ca0 std::allocator<std::priv::_Rb_tree_node<std::pair<std::pair const<std::string,int>,CharAI::GroupInfo>>>::allocate(uint,void const*) [clone] =====
void *std::allocator<std::priv::_Rb_tree_node<std::pair<std::pair const<std::string,int>,CharAI::GroupInfo>>>::allocate()
{
  size_t v1; // [sp+4h] [bp-8h] BYREF

  v1 = 88;
  return __ZNSt12__node_alloc11_M_allocateERj_veneer(&v1);
}


// ===== 3d2cc0 CharAI::GroupInfo::~GroupInfo() =====
void __fastcall CharAI::GroupInfo::~GroupInfo(CharAI::GroupInfo *this)
{
  void *v2; // r0
  size_t v3; // r1
  void *v4; // r0
  size_t v5; // r1
  void *v6; // r0
  size_t v7; // r1

  v2 = *((void **)this + 6);
  if ( v2 )
  {
    v3 = (*((_DWORD *)this + 8) - (_DWORD)v2) & 0xFFFFFFFC;
    if ( v3 > 0x80 )
      CustomFree(v2);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v2, v3);
  }
  v4 = *((void **)this + 3);
  if ( v4 )
  {
    v5 = (*((_DWORD *)this + 5) - (_DWORD)v4) & 0xFFFFFFFC;
    if ( v5 > 0x80 )
      CustomFree(v4);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v4, v5);
  }
  v6 = *(void **)this;
  if ( *(_DWORD *)this )
  {
    v7 = (*((_DWORD *)this + 2) - (_DWORD)v6) & 0xFFFFFFFC;
    if ( v7 > 0x80 )
      CustomFree(v6);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v6, v7);
  }
}


// ===== 3d2d60 std::vector<Character *,std::allocator<Character *>>::vector(std::vector<Character *,std::allocator<Character *>> const&) =====
_DWORD *__fastcall std::vector<Character *>::vector(_DWORD *a1, int a2)
{
  unsigned int v4; // r1
  char *v5; // r0
  int v6; // r1
  size_t v7; // r2
  int v8; // r2
  char *v9; // r3
  size_t v11; // [sp+4h] [bp-8h] BYREF

  v4 = (*(_DWORD *)(a2 + 4) - *(_DWORD *)a2) >> 2;
  v11 = v4;
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v5 = (char *)std::allocator<Character *>::_M_allocate((int)(a1 + 2), v4, &v11);
  v7 = v11;
  *a1 = v5;
  a1[1] = v5;
  a1[2] = &v5[4 * v7];
  v8 = *(_DWORD *)(a2 + 4);
  v9 = v5;
  if ( *(_DWORD *)a2 != v8 )
    v9 = (char *)memcpy(v5, *(const void **)a2, v8 - *(_DWORD *)a2) + v8 - v6;
  a1[1] = v9;
  return a1;
}


// ===== 3d2de0 CharAI::GroupInfo::GroupInfo(CharAI::GroupInfo const&) =====
CharAI::GroupInfo *__fastcall CharAI::GroupInfo::GroupInfo(CharAI::GroupInfo *this, const CharAI::GroupInfo *a2)
{
  ((void (*)(void))std::vector<Character *>::vector)();
  std::vector<Character *>::vector((char *)this + 12, (char *)a2 + 12);
  std::vector<Character *>::vector((char *)this + 24, (char *)a2 + 24);
  *((_DWORD *)this + 9) = *((_DWORD *)a2 + 9);
  *((_BYTE *)this + 40) = *((_BYTE *)a2 + 40);
  *((_BYTE *)this + 41) = *((_BYTE *)a2 + 41);
  return this;
}


// ===== 3d2e28 std::vector<Character *,std::allocator<Character *>>::_M_insert_overflow(Character **,Character * const&,std::__true_type const&,uint,bool) [clone] =====
void __fastcall std::vector<Character *>::_M_insert_overflow(int a1, int a2, _DWORD *a3)
{
  unsigned int v5; // r3
  unsigned int v6; // r1
  char *v8; // r0
  char *v9; // r5
  size_t v10; // r6
  char *v11; // r6
  _DWORD *v12; // r6
  void *v13; // r0
  size_t v14; // r1
  size_t v15; // r3
  size_t v16; // [sp+4h] [bp-8h] BYREF

  v5 = (*(_DWORD *)(a1 + 4) - *(_DWORD *)a1) >> 2;
  if ( v5 )
    v6 = 2 * v5;
  else
    v6 = 1;
  if ( v6 > 0x3FFFFFFF || v5 > v6 )
    v6 = 0x3FFFFFFF;
  v16 = v6;
  v8 = (char *)std::allocator<Character *>::_M_allocate(a1 + 8, v6, &v16);
  v9 = v8;
  v10 = a2 - *(_DWORD *)a1;
  if ( v10 )
    v11 = (char *)memmove(v8, *(const void **)a1, v10) + v10;
  else
    v11 = v8;
  *(_DWORD *)v11 = *a3;
  v12 = v11 + 4;
  v13 = *(void **)a1;
  if ( *(_DWORD *)a1 )
  {
    v14 = (*(_DWORD *)(a1 + 8) - (_DWORD)v13) & 0xFFFFFFFC;
    if ( v14 > 0x80 )
      CustomFree(v13);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v13, v14);
  }
  v15 = v16;
  *(_DWORD *)a1 = v9;
  *(_DWORD *)(a1 + 4) = v12;
  *(_DWORD *)(a1 + 8) = &v9[4 * v15];
}


// ===== 3d2ef0 std::pair<std::pair const<std::string,int>,CharAI::GroupInfo>::~pair() =====
_DWORD *__fastcall std::pair<std::pair const<std::string,int>,CharAI::GroupInfo>::~pair(_DWORD *a1)
{
  _DWORD *v2; // r0
  size_t v3; // r1

  CharAI::GroupInfo::~GroupInfo((CharAI::GroupInfo *)(a1 + 7));
  v2 = (_DWORD *)a1[5];
  if ( v2 == a1 || !v2 )
    return a1;
  v3 = *a1 - (_DWORD)v2;
  if ( v3 <= 0x80 )
  {
    __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v2, v3);
    return a1;
  }
  CustomFree(v2);
  return a1;
}


// ===== 3d2f3c std::priv::_Rb_tree<std::pair<std::string,int>,std::less<std::pair<std::string,int>>,std::pair<std::pair<std::string,int> const,CharAI::GroupInfo>,std::priv::_Select1st<std::pair<std::pair<std::string,int> const,CharAI::GroupInfo>>,std::priv::_MapTraitsT<std::pair<std::pair<std::string,int> const,CharAI::GroupInfo>>,std::allocator<std::pair<std::pair<std::string,int> const,CharAI::GroupInfo>>>::_M_erase(std::priv::_Rb_tree_node_base *) =====
void __fastcall std::priv::_Rb_tree<std::pair<std::string,int>,std::less<std::pair<std::string,int>>,std::pair<std::pair<std::string,int> const,CharAI::GroupInfo>,std::priv::_Select1st<std::pair<std::pair<std::string,int> const,CharAI::GroupInfo>>,std::priv::_MapTraitsT<std::pair<std::pair<std::string,int> const,CharAI::GroupInfo>>,std::allocator<std::pair<std::pair<std::string,int> const,CharAI::GroupInfo>>>::_M_erase(
        int a1,
        _DWORD *a2)
{
  _DWORD *v2; // r4
  _DWORD *v4; // r5

  v2 = a2;
  if ( a2 )
  {
    do
    {
      std::priv::_Rb_tree<std::pair<std::string,int>,std::less<std::pair<std::string,int>>,std::pair<std::pair<std::string,int> const,CharAI::GroupInfo>,std::priv::_Select1st<std::pair<std::pair<std::string,int> const,CharAI::GroupInfo>>,std::priv::_MapTraitsT<std::pair<std::pair<std::string,int> const,CharAI::GroupInfo>>,std::allocator<std::pair<std::pair<std::string,int> const,CharAI::GroupInfo>>>::_M_erase(
        a1,
        v2[3]);
      v4 = (_DWORD *)v2[2];
      std::pair<std::pair const<std::string,int>,CharAI::GroupInfo>::~pair(v2 + 4);
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v2, 0x58u);
      v2 = v4;
    }
    while ( v4 );
  }
}


// ===== 3d2f7c std::map<std::pair<std::string,int>,CharAI::GroupInfo,std::less<std::pair<std::string,int>>,std::allocator<std::pair<std::pair<std::string,int> const,CharAI::GroupInfo>>>::~map() =====
int __fastcall std::map<std::pair<std::string,int>,CharAI::GroupInfo>::~map(int a1)
{
  if ( *(_DWORD *)(a1 + 16) )
  {
    std::priv::_Rb_tree<std::pair<std::string,int>,std::less<std::pair<std::string,int>>,std::pair<std::pair<std::string,int> const,CharAI::GroupInfo>,std::priv::_Select1st<std::pair<std::pair<std::string,int> const,CharAI::GroupInfo>>,std::priv::_MapTraitsT<std::pair<std::pair<std::string,int> const,CharAI::GroupInfo>>,std::allocator<std::pair<std::pair<std::string,int> const,CharAI::GroupInfo>>>::_M_erase(
      a1,
      *(_DWORD **)(a1 + 4));
    *(_DWORD *)(a1 + 16) = 0;
    *(_DWORD *)(a1 + 4) = 0;
    *(_DWORD *)(a1 + 8) = a1;
    *(_DWORD *)(a1 + 12) = a1;
  }
  return a1;
}


// ===== 3d2fb0 CharAI::ClearGroupInfo(void) =====
int __fastcall CharAI::ClearGroupInfo(CharAI *this)
{
  int result; // r0

  if ( dword_9A2BA8 )
  {
    result = std::priv::_Rb_tree<std::pair<std::string,int>,std::less<std::pair<std::string,int>>,std::pair<std::pair<std::string,int> const,CharAI::GroupInfo>,std::priv::_Select1st<std::pair<std::pair<std::string,int> const,CharAI::GroupInfo>>,std::priv::_MapTraitsT<std::pair<std::pair<std::string,int> const,CharAI::GroupInfo>>,std::allocator<std::pair<std::pair<std::string,int> const,CharAI::GroupInfo>>>::_M_erase(
               &CharAI::s_groups,
               dword_9A2B9C);
    dword_9A2BA8 = 0;
    dword_9A2B9C = 0;
    dword_9A2BA0 = (int)&CharAI::s_groups;
    dword_9A2BA4 = (int)&CharAI::s_groups;
  }
  return result;
}


// ===== 3d2ff8 CharAI::RemoveFromGroup(void) =====
char *__fastcall CharAI::RemoveFromGroup(char *this)
{
  int *v1; // r3
  char *v2; // r4
  int v3; // r0
  int v4; // r1
  int v5; // r4
  char *v6; // r3
  int v7; // r1
  int v8; // r0
  int v9; // r4
  char *v10; // r3
  int v11; // r1
  int v12; // r0
  int v13; // r4
  char *v14; // r3
  char *v15; // [sp+0h] [bp-18h] BYREF
  char *v16; // [sp+4h] [bp-14h] BYREF
  char *v17; // [sp+8h] [bp-10h] BYREF
  char v18[4]; // [sp+Ch] [bp-Ch] BYREF
  char v19[4]; // [sp+10h] [bp-8h] BYREF
  char v20[4]; // [sp+14h] [bp-4h] BYREF

  v1 = *((int **)this + 13);
  v2 = this;
  if ( v1 )
  {
    switch ( *((_DWORD *)this + 14) )
    {
      case 0:
      case 3:
        v11 = v1[7];
        v12 = v1[6];
        v17 = v2;
        this = (char *)std::priv::__find<Character **,CharAI *>(v12, v11, &v17, v20);
        v13 = *((_DWORD *)v2 + 13);
        v14 = *(char **)(v13 + 28);
        if ( this != v14 )
        {
          if ( v14 != this + 4 )
          {
            this = (char *)memmove(this, this + 4, v14 - (this + 4));
            v14 = *(char **)(v13 + 28);
          }
          *(_DWORD *)(v13 + 28) = v14 - 4;
        }
        break;
      case 1:
        v7 = v1[4];
        v8 = v1[3];
        v16 = v2;
        this = (char *)std::priv::__find<Character **,CharAI *>(v8, v7, &v16, v19);
        v9 = *((_DWORD *)v2 + 13);
        v10 = *(char **)(v9 + 16);
        if ( this != v10 )
        {
          if ( v10 != this + 4 )
          {
            this = (char *)memmove(this, this + 4, v10 - (this + 4));
            v10 = *(char **)(v9 + 16);
          }
          *(_DWORD *)(v9 + 16) = v10 - 4;
        }
        break;
      case 2:
        v3 = *v1;
        v4 = v1[1];
        v15 = v2;
        this = (char *)std::priv::__find<Character **,CharAI *>(v3, v4, &v15, v18);
        v5 = *((_DWORD *)v2 + 13);
        v6 = *(char **)(v5 + 4);
        if ( this != v6 )
        {
          if ( v6 != this + 4 )
          {
            this = (char *)memmove(this, this + 4, v6 - (this + 4));
            v6 = *(char **)(v5 + 4);
          }
          *(_DWORD *)(v5 + 4) = v6 - 4;
        }
        break;
      default:
        return this;
    }
  }
  return this;
}


// ===== 3d3124 std::pair<std::pair const<std::string,int>,CharAI::GroupInfo>::pair(std::pair const<std::string,int>&,CharAI::GroupInfo const&) =====
std::string *__fastcall std::pair<std::pair const<std::string,int>,CharAI::GroupInfo>::pair(
        std::string *a1,
        int a2,
        const CharAI::GroupInfo *a3)
{
  a1->_M_finish = (char *)a1;
  a1->_M_start_of_storage._M_data = (char *)a1;
  std::string::_M_range_initialize(a1, *(const char **)(a2 + 20), *(const char **)(a2 + 16));
  a1[1]._M_buffers._M_end_of_storage = *(char **)(a2 + 24);
  CharAI::GroupInfo::GroupInfo((CharAI::GroupInfo *)&a1[1]._M_buffers._M_static_buf[4], a3);
  return a1;
}


// ===== 3d3164 std::pair<std::pair const<std::string,int>,CharAI::GroupInfo>::pair(std::pair<std::pair const<std::string,int>,CharAI::GroupInfo> const&) =====
std::string *__fastcall std::pair<std::pair const<std::string,int>,CharAI::GroupInfo>::pair(std::string *a1, int a2)
{
  a1->_M_finish = (char *)a1;
  a1->_M_start_of_storage._M_data = (char *)a1;
  std::string::_M_range_initialize(a1, *(const char **)(a2 + 20), *(const char **)(a2 + 16));
  a1[1]._M_buffers._M_end_of_storage = *(char **)(a2 + 24);
  CharAI::GroupInfo::GroupInfo(
    (CharAI::GroupInfo *)&a1[1]._M_buffers._M_static_buf[4],
    (const CharAI::GroupInfo *)(a2 + 28));
  return a1;
}


// ===== 3d31a0 std::priv::_Rb_tree<std::pair<std::string,int>,std::less<std::pair<std::string,int>>,std::pair<std::pair<std::string,int> const,CharAI::GroupInfo>,std::priv::_Select1st<std::pair<std::pair<std::string,int> const,CharAI::GroupInfo>>,std::priv::_MapTraitsT<std::pair<std::pair<std::string,int> const,CharAI::GroupInfo>>,std::allocator<std::pair<std::pair<std::string,int> const,CharAI::GroupInfo>>>::_M_insert(std::priv::_Rb_tree_node_base *,std::pair<std::pair<std::string,int> const,CharAI::GroupInfo> const&,std::priv::_Rb_tree_node_base *,std::priv::_Rb_tree_node_base *) =====
_DWORD *__fastcall std::priv::_Rb_tree<std::pair<std::string,int>,std::less<std::pair<std::string,int>>,std::pair<std::pair<std::string,int> const,CharAI::GroupInfo>,std::priv::_Select1st<std::pair<std::pair<std::string,int> const,CharAI::GroupInfo>>,std::priv::_MapTraitsT<std::pair<std::pair<std::string,int> const,CharAI::GroupInfo>>,std::allocator<std::pair<std::pair<std::string,int> const,CharAI::GroupInfo>>>::_M_insert(
        _DWORD *a1,
        _DWORD *a2,
        _DWORD *a3,
        int a4,
        int a5,
        int a6)
{
  char *v10; // r7

  if ( a2 == a3 )
  {
    v10 = (char *)std::allocator<std::priv::_Rb_tree_node<std::pair<std::pair const<std::string,int>,CharAI::GroupInfo>>>::allocate();
    std::pair<std::pair const<std::string,int>,CharAI::GroupInfo>::pair((std::string *)(v10 + 16), a4);
    *((_DWORD *)v10 + 3) = 0;
    *((_DWORD *)v10 + 2) = 0;
    a2[2] = v10;
    a2[1] = v10;
    a2[3] = v10;
  }
  else if ( !a6 && (a5 || std::operator<<std::string,int>(a4, (int)(a3 + 4))) )
  {
    v10 = (char *)std::allocator<std::priv::_Rb_tree_node<std::pair<std::pair const<std::string,int>,CharAI::GroupInfo>>>::allocate();
    std::pair<std::pair const<std::string,int>,CharAI::GroupInfo>::pair((std::string *)(v10 + 16), a4);
    *((_DWORD *)v10 + 3) = 0;
    *((_DWORD *)v10 + 2) = 0;
    a3[2] = v10;
    if ( a3 == (_DWORD *)a2[2] )
      a2[2] = v10;
  }
  else
  {
    v10 = (char *)std::allocator<std::priv::_Rb_tree_node<std::pair<std::pair const<std::string,int>,CharAI::GroupInfo>>>::allocate();
    std::pair<std::pair const<std::string,int>,CharAI::GroupInfo>::pair((std::string *)(v10 + 16), a4);
    *((_DWORD *)v10 + 3) = 0;
    *((_DWORD *)v10 + 2) = 0;
    a3[3] = v10;
    if ( a3 == (_DWORD *)a2[3] )
      a2[3] = v10;
  }
  *((_DWORD *)v10 + 1) = a3;
  std::priv::_Rb_global<bool>::_Rebalance((int)v10, a2 + 1);
  ++a2[4];
  *a1 = v10;
  return a1;
}


// ===== 3d32bc std::priv::_Rb_tree<std::pair<std::string,int>,std::less<std::pair<std::string,int>>,std::pair<std::pair<std::string,int> const,CharAI::GroupInfo>,std::priv::_Select1st<std::pair<std::pair<std::string,int> const,CharAI::GroupInfo>>,std::priv::_MapTraitsT<std::pair<std::pair<std::string,int> const,CharAI::GroupInfo>>,std::allocator<std::pair<std::pair<std::string,int> const,CharAI::GroupInfo>>>::insert_unique(std::pair<std::pair<std::string,int> const,CharAI::GroupInfo> const&) =====
int __fastcall std::priv::_Rb_tree<std::pair<std::string,int>,std::less<std::pair<std::string,int>>,std::pair<std::pair<std::string,int> const,CharAI::GroupInfo>,std::priv::_Select1st<std::pair<std::pair<std::string,int> const,CharAI::GroupInfo>>,std::priv::_MapTraitsT<std::pair<std::pair<std::string,int> const,CharAI::GroupInfo>>,std::allocator<std::pair<std::pair<std::string,int> const,CharAI::GroupInfo>>>::insert_unique(
        int a1,
        _DWORD *a2,
        int a3)
{
  _DWORD *v3; // r5
  _BOOL4 v7; // r0
  _DWORD *v8; // r3
  _DWORD *v9; // r2
  _DWORD *v10; // r8
  int v12; // r2
  int v13; // r8
  int v14; // r3
  int v15; // r3
  int v16; // r3
  int v17; // [sp+8h] [bp-8h] BYREF
  int v18; // [sp+Ch] [bp-4h] BYREF

  v3 = (_DWORD *)a2[1];
  if ( v3 )
  {
    while ( 1 )
    {
      v7 = std::operator<<std::string,int>(a3, (int)(v3 + 4));
      v8 = (_DWORD *)(v7 ? v3[2] : v3[3]);
      v9 = v3;
      if ( !v8 )
        break;
      v3 = v8;
    }
    if ( !v7 )
    {
      v10 = v3;
      goto LABEL_12;
    }
  }
  else
  {
    v3 = a2;
  }
  if ( v3 == (_DWORD *)a2[2] )
  {
    std::priv::_Rb_tree<std::pair<std::string,int>,std::less<std::pair<std::string,int>>,std::pair<std::pair<std::string,int> const,CharAI::GroupInfo>,std::priv::_Select1st<std::pair<std::pair<std::string,int> const,CharAI::GroupInfo>>,std::priv::_MapTraitsT<std::pair<std::pair<std::string,int> const,CharAI::GroupInfo>>,std::allocator<std::pair<std::pair<std::string,int> const,CharAI::GroupInfo>>>::_M_insert(
      &v18,
      a2,
      v3,
      a3,
      (int)v3,
      0);
    v16 = v18;
    *(_BYTE *)(a1 + 4) = 1;
    *(_DWORD *)a1 = v16;
    return a1;
  }
  if ( *(_BYTE *)v3 || v3 != *(_DWORD **)(v3[1] + 4) )
  {
    v12 = v3[2];
    if ( v12 )
    {
      while ( *(_DWORD *)(v12 + 12) )
        v12 = *(_DWORD *)(v12 + 12);
      v13 = v12;
    }
    else
    {
      v15 = v3[1];
      if ( v3 != *(_DWORD **)(v15 + 8) )
      {
        v9 = (_DWORD *)v3[1];
        v10 = v9;
        goto LABEL_12;
      }
      while ( 1 )
      {
        v12 = *(_DWORD *)(v15 + 4);
        if ( *(_DWORD *)(v12 + 8) != v15 )
          break;
        v15 = *(_DWORD *)(v15 + 4);
      }
      v13 = *(_DWORD *)(v15 + 4);
    }
    if ( !std::operator<<std::string,int>(v12 + 16, a3) )
    {
      *(_DWORD *)a1 = v13;
      *(_BYTE *)(a1 + 4) = 0;
      return a1;
    }
LABEL_26:
    std::priv::_Rb_tree<std::pair<std::string,int>,std::less<std::pair<std::string,int>>,std::pair<std::pair<std::string,int> const,CharAI::GroupInfo>,std::priv::_Select1st<std::pair<std::pair<std::string,int> const,CharAI::GroupInfo>>,std::priv::_MapTraitsT<std::pair<std::pair<std::string,int> const,CharAI::GroupInfo>>,std::allocator<std::pair<std::pair<std::string,int> const,CharAI::GroupInfo>>>::_M_insert(
      &v17,
      a2,
      v3,
      a3,
      0,
      0);
    v14 = v17;
    *(_BYTE *)(a1 + 4) = 1;
    *(_DWORD *)a1 = v14;
    return a1;
  }
  v9 = (_DWORD *)v3[3];
  v10 = v9;
LABEL_12:
  if ( std::operator<<std::string,int>((int)(v9 + 4), a3) )
    goto LABEL_26;
  *(_DWORD *)a1 = v10;
  *(_BYTE *)(a1 + 4) = 0;
  return a1;
}


// ===== 3d3450 std::priv::_Rb_tree<std::pair<std::string,int>,std::less<std::pair<std::string,int>>,std::pair<std::pair<std::string,int> const,CharAI::GroupInfo>,std::priv::_Select1st<std::pair<std::pair<std::string,int> const,CharAI::GroupInfo>>,std::priv::_MapTraitsT<std::pair<std::pair<std::string,int> const,CharAI::GroupInfo>>,std::allocator<std::pair<std::pair<std::string,int> const,CharAI::GroupInfo>>>::insert_unique(std::priv::_Rb_tree_iterator<std::pair<std::pair<std::string,int> const,CharAI::GroupInfo>,std::priv::_MapTraitsT<std::pair<std::pair<std::string,int> const,CharAI::GroupInfo>>>,std::pair<std::pair<std::string,int> const,CharAI::GroupInfo> const&) =====
int *__fastcall std::priv::_Rb_tree<std::pair<std::string,int>,std::less<std::pair<std::string,int>>,std::pair<std::pair<std::string,int> const,CharAI::GroupInfo>,std::priv::_Select1st<std::pair<std::pair<std::string,int> const,CharAI::GroupInfo>>,std::priv::_MapTraitsT<std::pair<std::pair<std::string,int> const,CharAI::GroupInfo>>,std::allocator<std::pair<std::pair<std::string,int> const,CharAI::GroupInfo>>>::insert_unique(
        int *a1,
        _DWORD *a2,
        int *a3,
        int a4)
{
  _DWORD *v5; // r10
  _DWORD *v9; // r4
  _BOOL4 v10; // r10
  int v12; // r0
  _DWORD *v13; // r4
  int v14; // r3
  int v15; // r12
  int v16; // r3
  _DWORD *v17; // r1
  _DWORD *v18; // r2
  int v19; // [sp+8h] [bp-24h] BYREF
  int v20; // [sp+10h] [bp-1Ch] BYREF
  int v21; // [sp+18h] [bp-14h] BYREF
  int v22[3]; // [sp+20h] [bp-Ch] BYREF

  v5 = (_DWORD *)*a3;
  if ( *a3 == a2[2] )
  {
    if ( !a2[4] )
    {
      std::priv::_Rb_tree<std::pair<std::string,int>,std::less<std::pair<std::string,int>>,std::pair<std::pair<std::string,int> const,CharAI::GroupInfo>,std::priv::_Select1st<std::pair<std::pair<std::string,int> const,CharAI::GroupInfo>>,std::priv::_MapTraitsT<std::pair<std::pair<std::string,int> const,CharAI::GroupInfo>>,std::allocator<std::pair<std::pair<std::string,int> const,CharAI::GroupInfo>>>::insert_unique(
        (int)v22,
        a2,
        a4);
      *a1 = v22[0];
      return a1;
    }
    if ( std::operator<<std::string,int>(a4, (int)(v5 + 4)) )
    {
LABEL_11:
      std::priv::_Rb_tree<std::pair<std::string,int>,std::less<std::pair<std::string,int>>,std::pair<std::pair<std::string,int> const,CharAI::GroupInfo>,std::priv::_Select1st<std::pair<std::pair<std::string,int> const,CharAI::GroupInfo>>,std::priv::_MapTraitsT<std::pair<std::pair<std::string,int> const,CharAI::GroupInfo>>,std::allocator<std::pair<std::pair<std::string,int> const,CharAI::GroupInfo>>>::_M_insert(
        a1,
        a2,
        (_DWORD *)*a3,
        a4,
        *a3,
        0);
      return a1;
    }
    if ( !std::operator<<std::string,int>(*a3 + 16, a4) )
      goto LABEL_57;
    v15 = *a3;
    v13 = *(_DWORD **)(*a3 + 12);
    if ( v13 )
    {
      while ( v13[2] )
        v13 = (_DWORD *)v13[2];
    }
    else
    {
      v16 = *(_DWORD *)(v15 + 4);
      if ( v15 == *(_DWORD *)(v16 + 12) )
      {
        do
        {
          v13 = (_DWORD *)v16;
          v16 = *(_DWORD *)(v16 + 4);
        }
        while ( *(_DWORD **)(v16 + 12) == v13 );
      }
      else
      {
        v13 = (_DWORD *)*a3;
      }
      if ( v16 != v13[3] )
        v13 = (_DWORD *)v16;
    }
    if ( a2 != v13 )
    {
      if ( !std::operator<<std::string,int>(a4, (int)(v13 + 4)) )
      {
        std::priv::_Rb_tree<std::pair<std::string,int>,std::less<std::pair<std::string,int>>,std::pair<std::pair<std::string,int> const,CharAI::GroupInfo>,std::priv::_Select1st<std::pair<std::pair<std::string,int> const,CharAI::GroupInfo>>,std::priv::_MapTraitsT<std::pair<std::pair<std::string,int> const,CharAI::GroupInfo>>,std::allocator<std::pair<std::pair<std::string,int> const,CharAI::GroupInfo>>>::insert_unique(
          (int)&v21,
          a2,
          a4);
        *a1 = v21;
        return a1;
      }
      goto LABEL_23;
    }
    v17 = a2;
    v18 = (_DWORD *)*a3;
LABEL_56:
    std::priv::_Rb_tree<std::pair<std::string,int>,std::less<std::pair<std::string,int>>,std::pair<std::pair<std::string,int> const,CharAI::GroupInfo>,std::priv::_Select1st<std::pair<std::pair<std::string,int> const,CharAI::GroupInfo>>,std::priv::_MapTraitsT<std::pair<std::pair<std::string,int> const,CharAI::GroupInfo>>,std::allocator<std::pair<std::pair<std::string,int> const,CharAI::GroupInfo>>>::_M_insert(
      a1,
      v17,
      v18,
      a4,
      0,
      v15);
    return a1;
  }
  if ( v5 == a2 )
  {
    if ( !std::operator<<std::string,int>(v5[3] + 16, a4) )
    {
      std::priv::_Rb_tree<std::pair<std::string,int>,std::less<std::pair<std::string,int>>,std::pair<std::pair<std::string,int> const,CharAI::GroupInfo>,std::priv::_Select1st<std::pair<std::pair<std::string,int> const,CharAI::GroupInfo>>,std::priv::_MapTraitsT<std::pair<std::pair<std::string,int> const,CharAI::GroupInfo>>,std::allocator<std::pair<std::pair<std::string,int> const,CharAI::GroupInfo>>>::insert_unique(
        (int)&v20,
        v5,
        a4);
      *a1 = v20;
      return a1;
    }
    v18 = (_DWORD *)v5[3];
    v15 = *a3;
    v17 = v5;
    goto LABEL_56;
  }
  if ( !*(_BYTE *)v5 )
  {
    if ( v5 == *(_DWORD **)(v5[1] + 4) )
    {
      v9 = (_DWORD *)v5[3];
      goto LABEL_8;
    }
    v9 = (_DWORD *)v5[2];
    if ( !v9 )
      goto LABEL_32;
LABEL_7:
    while ( v9[3] )
      v9 = (_DWORD *)v9[3];
    goto LABEL_8;
  }
  v9 = (_DWORD *)v5[2];
  if ( v9 )
    goto LABEL_7;
LABEL_32:
  v9 = (_DWORD *)v5[1];
  if ( v5 == (_DWORD *)v9[2] )
  {
    while ( *(_DWORD **)(v9[1] + 8) == v9 )
      v9 = (_DWORD *)v9[1];
    v9 = (_DWORD *)v9[1];
  }
LABEL_8:
  v10 = std::operator<<std::string,int>(a4, (int)(v5 + 4));
  if ( v10 && std::operator<<std::string,int>((int)(v9 + 4), a4) )
  {
    if ( !v9[3] )
    {
      std::priv::_Rb_tree<std::pair<std::string,int>,std::less<std::pair<std::string,int>>,std::pair<std::pair<std::string,int> const,CharAI::GroupInfo>,std::priv::_Select1st<std::pair<std::pair<std::string,int> const,CharAI::GroupInfo>>,std::priv::_MapTraitsT<std::pair<std::pair<std::string,int> const,CharAI::GroupInfo>>,std::allocator<std::pair<std::pair<std::string,int> const,CharAI::GroupInfo>>>::_M_insert(
        a1,
        a2,
        v9,
        a4,
        0,
        (int)v9);
      return a1;
    }
    goto LABEL_11;
  }
  v12 = *a3;
  v13 = *(_DWORD **)(*a3 + 12);
  if ( v13 )
  {
    while ( v13[2] )
      v13 = (_DWORD *)v13[2];
    if ( v10 )
      goto LABEL_37;
  }
  else
  {
    v14 = *(_DWORD *)(v12 + 4);
    if ( *(_DWORD *)(v14 + 12) == v12 )
    {
      do
      {
        v13 = (_DWORD *)v14;
        v14 = *(_DWORD *)(v14 + 4);
      }
      while ( *(_DWORD **)(v14 + 12) == v13 );
    }
    else
    {
      v13 = (_DWORD *)*a3;
    }
    if ( v14 != v13[3] )
      v13 = (_DWORD *)v14;
    if ( v10 )
      goto LABEL_37;
  }
  if ( !std::operator<<std::string,int>(v12 + 16, a4) )
  {
LABEL_57:
    *a1 = *a3;
    return a1;
  }
  if ( a2 != v13 && !std::operator<<std::string,int>(a4, (int)(v13 + 4)) )
  {
LABEL_37:
    std::priv::_Rb_tree<std::pair<std::string,int>,std::less<std::pair<std::string,int>>,std::pair<std::pair<std::string,int> const,CharAI::GroupInfo>,std::priv::_Select1st<std::pair<std::pair<std::string,int> const,CharAI::GroupInfo>>,std::priv::_MapTraitsT<std::pair<std::pair<std::string,int> const,CharAI::GroupInfo>>,std::allocator<std::pair<std::pair<std::string,int> const,CharAI::GroupInfo>>>::insert_unique(
      (int)&v19,
      a2,
      a4);
    *a1 = v19;
    return a1;
  }
LABEL_23:
  if ( *(_DWORD *)(*a3 + 12) )
    std::priv::_Rb_tree<std::pair<std::string,int>,std::less<std::pair<std::string,int>>,std::pair<std::pair<std::string,int> const,CharAI::GroupInfo>,std::priv::_Select1st<std::pair<std::pair<std::string,int> const,CharAI::GroupInfo>>,std::priv::_MapTraitsT<std::pair<std::pair<std::string,int> const,CharAI::GroupInfo>>,std::allocator<std::pair<std::pair<std::string,int> const,CharAI::GroupInfo>>>::_M_insert(
      a1,
      a2,
      v13,
      a4,
      (int)v13,
      0);
  else
    std::priv::_Rb_tree<std::pair<std::string,int>,std::less<std::pair<std::string,int>>,std::pair<std::pair<std::string,int> const,CharAI::GroupInfo>,std::priv::_Select1st<std::pair<std::pair<std::string,int> const,CharAI::GroupInfo>>,std::priv::_MapTraitsT<std::pair<std::pair<std::string,int> const,CharAI::GroupInfo>>,std::allocator<std::pair<std::pair<std::string,int> const,CharAI::GroupInfo>>>::_M_insert(
      a1,
      a2,
      (_DWORD *)*a3,
      a4,
      0,
      *a3);
  return a1;
}


// ===== 3d37d0 CharAI::AddToGroup(Character *) =====
void __fastcall CharAI::AddToGroup(CharAI *this, Character *a2)
{
  const char *v3; // r4
  int v4; // r6
  int v5; // r9
  char *v6; // r7
  char *v7; // r9
  int v8; // r0
  char *v9; // r3
  char *v10; // r9
  _DWORD *v11; // r1
  _DWORD *v12; // r1
  _DWORD *v13; // r1
  _DWORD v15[10]; // [sp+Ch] [bp-A0h] BYREF
  char v16; // [sp+34h] [bp-78h]
  char v17; // [sp+35h] [bp-77h]
  char *v18; // [sp+38h] [bp-74h] BYREF
  char *v19; // [sp+3Ch] [bp-70h] BYREF
  _BYTE v20[72]; // [sp+40h] [bp-6Ch] BYREF
  std::string v21; // [sp+88h] [bp-24h] BYREF
  int v22; // [sp+A0h] [bp-Ch]

  if ( *((_DWORD *)this + 1284) != *((_DWORD *)this + 1285) )
  {
    v3 = *((const char **)this + 1291);
    v4 = LC_API_STRCMP_0(v3, "Normal");
    if ( !v4 )
      goto LABEL_3;
    if ( !LC_API_STRCMP_0(v3, "Leader") )
    {
      v4 = 1;
      goto LABEL_3;
    }
    if ( !LC_API_STRCMP_0(v3, "MasterLeader") )
    {
      v4 = 2;
      goto LABEL_3;
    }
    if ( !LC_API_STRCMP_0(v3, "Group") )
    {
      v4 = 3;
LABEL_3:
      v5 = *((_DWORD *)this + 25);
      v21._M_finish = (char *)&v21;
      v21._M_start_of_storage._M_data = (char *)&v21;
      std::string::_M_range_initialize(&v21, *((const char **)this + 1285), *((const char **)this + 1284));
      v22 = v5;
      v6 = (char *)dword_9A2B9C;
      if ( dword_9A2B9C )
      {
        v7 = &CharAI::s_groups;
        while ( 1 )
        {
          v8 = std::operator<<std::string,int>(v6 + 16, &v21);
          v9 = v8 ? *((char **)v6 + 3) : *((char **)v6 + 2);
          if ( v8 )
            v6 = v7;
          if ( !v9 )
            break;
          v7 = v6;
          v6 = v9;
        }
        if ( v6 != &CharAI::s_groups )
        {
          v10 = v6;
          if ( !std::operator<<std::string,int>(&v21, v6 + 16) )
          {
LABEL_15:
            if ( (std::string *)v21._M_start_of_storage._M_data != &v21 && v21._M_start_of_storage._M_data )
            {
              if ( (unsigned int)(v21._M_buffers._M_end_of_storage - v21._M_start_of_storage._M_data) > 0x80 )
              {
                CustomFree(v21._M_start_of_storage._M_data);
                if ( v4 != 2 )
                {
LABEL_20:
                  if ( v4 == 1 )
                  {
                    v13 = *((_DWORD **)v10 + 15);
                    if ( v13 == *((_DWORD **)v10 + 16) )
                    {
                      std::vector<Character *>::_M_insert_overflow(v10 + 56);
                    }
                    else
                    {
                      *v13 = this;
                      *((_DWORD *)v10 + 15) += 4;
                    }
                  }
                  else
                  {
                    v11 = *((_DWORD **)v10 + 18);
                    if ( v11 == *((_DWORD **)v10 + 19) )
                    {
                      std::vector<Character *>::_M_insert_overflow(v10 + 68);
                    }
                    else
                    {
                      *v11 = this;
                      *((_DWORD *)v10 + 18) += 4;
                    }
                  }
LABEL_23:
                  *((_DWORD *)this + 255) = v10 + 44;
                  *((_DWORD *)this + 256) = v4;
                  return;
                }
LABEL_33:
                v12 = *((_DWORD **)v10 + 12);
                if ( v12 == *((_DWORD **)v10 + 13) )
                {
                  std::vector<Character *>::_M_insert_overflow(v10 + 44);
                }
                else
                {
                  *v12 = this;
                  *((_DWORD *)v10 + 12) += 4;
                }
                goto LABEL_23;
              }
              __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(
                v21._M_start_of_storage._M_data,
                v21._M_buffers._M_end_of_storage - v21._M_start_of_storage._M_data);
            }
            if ( v4 != 2 )
              goto LABEL_20;
            goto LABEL_33;
          }
        }
      }
      else
      {
        v6 = &CharAI::s_groups;
      }
      v15[9] = -1;
      v17 = 0;
      memset(v15, 0, 36);
      v16 = 0;
      std::pair<std::pair const<std::string,int>,CharAI::GroupInfo>::pair(v20, &v21, v15);
      v18 = v6;
      std::priv::_Rb_tree<std::pair<std::string,int>,std::less<std::pair<std::string,int>>,std::pair<std::pair<std::string,int> const,CharAI::GroupInfo>,std::priv::_Select1st<std::pair<std::pair<std::string,int> const,CharAI::GroupInfo>>,std::priv::_MapTraitsT<std::pair<std::pair<std::string,int> const,CharAI::GroupInfo>>,std::allocator<std::pair<std::pair<std::string,int> const,CharAI::GroupInfo>>>::insert_unique(
        &v19,
        &CharAI::s_groups,
        &v18,
        v20);
      v10 = v19;
      std::pair<std::pair const<std::string,int>,CharAI::GroupInfo>::~pair(v20);
      CharAI::GroupInfo::~GroupInfo((CharAI::GroupInfo *)v15);
      goto LABEL_15;
    }
  }
}


// ===== 3d3ae4 CharAI::_OnEndOfAnimSection(void) =====
int __fastcall CharAI::_OnEndOfAnimSection(CharAI *this)
{
  return 1;
}


// ===== 3d3aec CharAI::_OnEndOfAnim(void) =====
int __fastcall CharAI::_OnEndOfAnim(CharAI *this)
{
  return 1;
}


// ===== 3d3af4 CharAI::_ParseObjectAnimEvent(char const*) =====
char *__fastcall CharAI::_ParseObjectAnimEvent(Character **this, const char *a2)
{
  char *result; // r0
  char *v5; // r5
  int v6; // r7
  const char *v7; // r5
  int v8; // r10
  int v9; // r8
  int v10; // r9
  int v11; // r1
  CameraLevel *v12; // r10
  int v13; // r8
  int v14; // r7
  int v15; // r9
  int v16; // r1
  int v17; // r3
  int v18; // r3
  char v19[12]; // [sp+8h] [bp-50h] BYREF
  char var44[100]; // [sp+14h] [bp-44h] BYREF

  result = strchr(a2, 47);
  v5 = result;
  if ( result )
  {
    LC_API_STRNCPY_0(var44, a2, result - a2);
    v6 = 0;
    var44[v5 - a2] = 0;
    v7 = v5 + 1;
    if ( LC_API_STRCMP_0(var44, "camera") )
    {
      ObjectManager::GetObjectByName((ObjectManager *)v19, (const char *)dword_99F764, var44, -1, nullptr, 0);
      v8 = ObjectHandle::operator Character *(v19);
      if ( v8 )
      {
        v9 = Arrays::AnimTable::size;
        if ( Arrays::AnimTable::size )
        {
          v10 = Arrays::AnimTable::m_memberNames;
          while ( LC_API_STRCMP_0(v7, *(const char **)(v10 + 4 * v6)) )
          {
            if ( ++v6 == v9 )
              goto LABEL_20;
          }
          v11 = v6;
        }
        else
        {
LABEL_20:
          v11 = -1;
        }
        return (char *)CharAnimator::ANIM_Set((CharAnimator *)(v8 + 1180), v11);
      }
      else
      {
        result = (char *)ObjectHandle::operator GameObject *(v19);
        if ( result )
        {
          v17 = *((_DWORD *)result + 182);
          if ( v17 )
          {
            v18 = *(_DWORD *)(v17 + 56);
            if ( v18 )
              return (char *)(*(int (__fastcall **)(int, const char *, _DWORD, _DWORD, _DWORD))(*(_DWORD *)v18 + 32))(
                               v18,
                               v7,
                               0,
                               0,
                               0);
          }
        }
      }
    }
    else
    {
      result = (char *)Application::GetCurrentLevel((Application *)&Singleton<Application>::s_inst);
      if ( result )
      {
        v12 = *((CameraLevel **)result + 74);
        if ( v12 )
        {
          result = (char *)CameraLevel::CanPlayShakeAnim(*((CameraLevel **)result + 74), *(this + 1));
          if ( result )
          {
            v13 = Arrays::AnimDict::size;
            if ( Arrays::AnimDict::size )
            {
              v14 = 0;
              v15 = Arrays::AnimDict::m_memberNames;
              while ( LC_API_STRCMP_0(v7, *(const char **)(v15 + 4 * v14)) )
              {
                if ( ++v14 == v13 )
                  goto LABEL_21;
              }
              v16 = v14;
            }
            else
            {
LABEL_21:
              v16 = -1;
            }
            return (char *)CameraLevel::PlayAnim(v12, v16, 0, 1);
          }
        }
      }
    }
  }
  return result;
}


// ===== 3d3d30 CharAI::_OnAnimSequenceEnd(void) =====
int __fastcall CharAI::_OnAnimSequenceEnd(CharAI *this)
{
  CharStateMachine::SM_GetState((CharStateMachine *)(*((_DWORD *)this + 1) + 1276));
  return 1;
}


// ===== 3d3d4c CharAI::_OnAnimSequenceBegin(void) =====
int __fastcall CharAI::_OnAnimSequenceBegin(CharAI *this)
{
  CharStateMachine::SM_GetState((CharStateMachine *)(*((_DWORD *)this + 1) + 1276));
  return 1;
}


// ===== 3d3d68 CharAI::_OnAnimStepEnd_SkillSpell(void) =====
int __fastcall CharAI::_OnAnimStepEnd_SkillSpell(CharAI *this)
{
  int v1; // r3
  int v3; // r5
  int StepIndex; // r6
  bool v5; // zf

  v1 = *((_DWORD *)this + 1);
  v3 = *(_DWORD *)(v1 + 1224);
  StepIndex = CharAnimator::ANIM_GetStepIndex((CharAnimator *)(v1 + 1180));
  CharAnimator::ANIM_GetStepCount((CharAnimator *)(*((_DWORD *)this + 1) + 1180));
  v5 = StepIndex == 0;
  if ( !StepIndex )
    v5 = v3 == 1;
  if ( !v5 || !*((_BYTE *)this + 209) )
    return 1;
  CharAnimator::ANIM_StopLoop((CharAnimator *)(*((_DWORD *)this + 1) + 1180), 1);
  return 1;
}


// ===== 3d3dd4 CharAI::_OnAnimStepBegin_SkillSpell(void) =====
int __fastcall CharAI::_OnAnimStepBegin_SkillSpell(CharAI *this)
{
  int v1; // r3
  int v3; // r5
  int StepIndex; // r6
  bool v5; // zf
  int v6; // r3

  v1 = *((_DWORD *)this + 1);
  v3 = *(_DWORD *)(v1 + 1224);
  StepIndex = CharAnimator::ANIM_GetStepIndex((CharAnimator *)(v1 + 1180));
  CharAnimator::ANIM_GetStepCount((CharAnimator *)(*((_DWORD *)this + 1) + 1180));
  v5 = StepIndex == 0;
  if ( !StepIndex )
    v5 = v3 == 1;
  if ( !v5 )
    return 1;
  v6 = *((unsigned __int8 *)this + 209);
  *((_BYTE *)this + 208) = 1;
  if ( !v6 )
    return 1;
  CharAnimator::ANIM_StopLoop((CharAnimator *)(*((_DWORD *)this + 1) + 1180), 1);
  return 1;
}


// ===== 3d3e44 CharAI::_OnAnimStepEnd_Attack(void) =====
int __fastcall CharAI::_OnAnimStepEnd_Attack(Character **this)
{
  int v3; // r3
  int v4; // r5
  int StepIndex; // r7
  unsigned int StepCount; // r0
  unsigned int v7; // r6
  int v8; // r1
  int v9; // r1
  int v10; // r3
  int v11; // r0
  int v12; // r3
  int v13; // r2

  if ( !Character::HasComboAttack(*(this + 1)) )
    return 1;
  v3 = (int)*(this + 1);
  v4 = *(_DWORD *)(v3 + 1224);
  StepIndex = CharAnimator::ANIM_GetStepIndex((CharAnimator *)(v3 + 1180));
  StepCount = CharAnimator::ANIM_GetStepCount((Character *)((char *)*(this + 1) + 1180));
  v7 = StepCount;
  if ( v4 )
  {
    if ( v4 != 1 )
      return 1;
    v10 = (int)*(this + 16);
    if ( v10 )
    {
      v11 = (*(int (__fastcall **)(_DWORD))(*(_DWORD *)v10 + 52))(*(this + 16));
      v12 = (int)*(this + 16);
      if ( v12 )
        goto LABEL_11;
    }
    else
    {
      v11 = 1;
    }
    if ( *((_BYTE *)*(this + 1) + 5288) == 8 )
    {
      v12 = 0;
      v13 = 1;
LABEL_12:
      if ( StepIndex != v7 - 2 || v11 && v12 || v13 )
        *((_BYTE *)this + 120) = 0;
      else
        CharAnimator::ANIM_SkipNextStep((Character *)((char *)*(this + 1) + 1180));
      return 1;
    }
    v12 = 0;
LABEL_11:
    v13 = 0;
    goto LABEL_12;
  }
  v8 = *((unsigned __int8 *)this + 120);
  *((_BYTE *)this + 120) = 0;
  v9 = v8 ^ 1;
  if ( StepIndex == StepCount - 1 )
  {
    if ( v9 )
      CharAI::_ClearNonStickyTarget((CharAI *)this);
    else
      CharAnimator::ANIM_SetStep((Character *)((char *)*(this + 1) + 1180), 0);
    Character::RaiseEvent(*(this + 1), 27, nullptr);
    Character::RaiseEvent(*(this + 1), 28, nullptr);
    return 1;
  }
  if ( v9 )
  {
    if ( !(*(int (__fastcall **)(_DWORD))(*(_DWORD *)*(this + 1) + 292))(*(this + 1)) )
    {
      CharAI::_ClearNonStickyTarget((CharAI *)this);
      CharAnimator::ANIM_SetStep((Character *)((char *)*(this + 1) + 1180), v7);
    }
  }
  Character::RaiseEvent(*(this + 1), 27, nullptr);
  return 1;
}


// ===== 3d3ff8 CharAI::_OnAnimStepEnd(void) =====
int __fastcall CharAI::_OnAnimStepEnd(CharAI *this)
{
  int State; // r0

  State = CharStateMachine::SM_GetState((CharStateMachine *)(*((_DWORD *)this + 1) + 1276));
  if ( State == 5 )
    return CharAI::_OnAnimStepEnd_Attack(this);
  if ( State < 5 || State > 7 )
    return 1;
  return CharAI::_OnAnimStepEnd_SkillSpell(this);
}


// ===== 3d4044 CharAI::_OnAnimStepBegin_Attack(void) =====
int __fastcall CharAI::_OnAnimStepBegin_Attack(CharAI *this)
{
  int v1; // r3
  int v3; // r5
  char *StepIndex; // r6
  int StepCount; // r0
  int result; // r0
  int v7; // r3
  Character *v8; // r0
  int v9; // r3
  _BOOL4 v10; // r6

  v1 = *((_DWORD *)this + 1);
  v3 = *(_DWORD *)(v1 + 1224);
  StepIndex = (char *)CharAnimator::ANIM_GetStepIndex((CharAnimator *)(v1 + 1180));
  StepCount = CharAnimator::ANIM_GetStepCount((CharAnimator *)(*((_DWORD *)this + 1) + 1180));
  if ( v3 )
  {
    if ( v3 == 1 )
    {
      if ( StepIndex )
      {
        v9 = *((_DWORD *)this + 1);
        v10 = StepIndex == (char *)(StepCount - 1);
        *((_BYTE *)this + 121) = v10;
        v2Controller::Cmd_LookAt(*(_DWORD *)(v9 + 888), *(GameObject **)(v9 + 1032));
        *((_BYTE *)this + 122) = 0;
        result = 1;
        if ( v10 )
          *((_BYTE *)this + 122) = 1;
      }
      else
      {
        v7 = *((_DWORD *)this + 1);
        *((_BYTE *)this + 121) = 1;
        v2Controller::Cmd_LookAt(*(_DWORD *)(v7 + 888), *(GameObject **)(v7 + 1032));
        *((_BYTE *)this + 122) = 0;
        (*(void (__fastcall **)(CharAI *, _DWORD))(*(_DWORD *)this + 164))(this, *((_DWORD *)this + 29));
        return 1;
      }
    }
    else
    {
      return 1;
    }
  }
  else
  {
    v8 = *((Character **)this + 1);
    *((_DWORD *)this + 29) = StepIndex;
    Character::RaiseEvent(v8, 26, StepIndex);
    return 1;
  }
  return result;
}


// ===== 3d4120 CharAI::_OnAnimStepBegin_Move(void) =====
int __fastcall CharAI::_OnAnimStepBegin_Move(CharAI *this)
{
  float *TargetPosition; // r0
  float *v3; // r6
  float v4; // r10
  float v5; // r8
  float v6; // r7

  if ( !*((_DWORD *)this + 16) )
    return 1;
  if ( !CharAI::AI_IsTargetSeeking(this) )
    return 1;
  TargetPosition = (float *)GameObject::GetTargetPosition(*((GameObject **)this + 16));
  v3 = *((float **)this + 1);
  v4 = *TargetPosition - v3[106];
  v5 = TargetPosition[1] - v3[107];
  v6 = TargetPosition[2] - v3[108];
  if ( COERCE_FLOAT(CharAI::AI_GetMeleeRadiusSq(this)) > (float)((float)((float)(v4 * v4) + (float)(v5 * v5))
                                                               + (float)(v6 * v6)) )
    return 1;
  v2Controller::Cmd_MoveTo(*(_DWORD *)(*((_DWORD *)this + 1) + 888), *((GameObject **)this + 16));
  return 1;
}


// ===== 3d4204 CharAI::_OnAnimStepBegin(void) =====
int __fastcall CharAI::_OnAnimStepBegin(CharAI *this)
{
  int result; // r0

  switch ( CharStateMachine::SM_GetState((CharStateMachine *)(*((_DWORD *)this + 1) + 1276)) )
  {
    case 4:
      result = CharAI::_OnAnimStepBegin_Move(this);
      break;
    case 5:
      result = CharAI::_OnAnimStepBegin_Attack(this);
      break;
    case 6:
    case 7:
      result = CharAI::_OnAnimStepBegin_SkillSpell(this);
      break;
    default:
      result = 1;
      break;
  }
  return result;
}


// ===== 3d4268 `global constructor keyed to'.._.._sources_Game_Objects_Characters_AI_CharAI_Mechanics.cpp =====
int `global constructor keyed to'.._.._sources_Game_Objects_Characters_AI_CharAI_Mechanics.cpp()
{
  int result; // r0

  result = `guard variable for'Singleton<PlayerStatManager>::s_inst;
  dword_9A2BB8 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9A2BB4 = 1056964608;
  if ( (`guard variable for'Singleton<PlayerStatManager>::s_inst & 1) == 0 )
  {
    `guard variable for'Singleton<PlayerStatManager>::s_inst = 1;
    PlayerStatManager::PlayerStatManager((PlayerStatManager *)&Singleton<PlayerStatManager>::s_inst);
    result = _aeabi_atexit(
               (int)&Singleton<PlayerStatManager>::s_inst,
               (int)PlayerStatManager::~PlayerStatManager,
               (int)&_dso_handle);
  }
  if ( (`guard variable for'Singleton<Application>::s_inst & 1) == 0 )
  {
    `guard variable for'Singleton<Application>::s_inst = 1;
    Application::Application((Application *)&Singleton<Application>::s_inst);
    result = _aeabi_atexit((int)&Singleton<Application>::s_inst, (int)Application::~Application, (int)&_dso_handle);
  }
  if ( (`guard variable for'Singleton<VisualFXManager>::s_inst & 1) == 0 )
  {
    `guard variable for'Singleton<VisualFXManager>::s_inst = 1;
    VisualFXManager::VisualFXManager((VisualFXManager *)&Singleton<VisualFXManager>::s_inst);
    result = _aeabi_atexit(
               (int)&Singleton<VisualFXManager>::s_inst,
               (int)VisualFXManager::~VisualFXManager,
               (int)&_dso_handle);
  }
  if ( (`guard variable for'Singleton<ProjectileManager>::s_inst & 1) == 0 )
  {
    `guard variable for'Singleton<ProjectileManager>::s_inst = 1;
    ProjectileManager::ProjectileManager((ProjectileManager *)&Singleton<ProjectileManager>::s_inst);
    return _aeabi_atexit(
             (int)&Singleton<ProjectileManager>::s_inst,
             (int)ProjectileManager::~ProjectileManager,
             (int)&_dso_handle);
  }
  return result;
}


// ===== 3d43ec std::string::string(char const*,std::allocator<char> const&) [clone] =====
int __fastcall std::string::string(int a1)
{
  _BYTE *v2; // r0

  *(_DWORD *)(a1 + 16) = a1;
  *(_DWORD *)(a1 + 20) = a1;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block((_DWORD *)a1, 0x1Au);
  v2 = memcpy(*(void **)(a1 + 20), "isTracingCharAI_AnimEvent", 0x19u);
  *(_DWORD *)(a1 + 16) = v2 + 25;
  v2[25] = 0;
  return a1;
}


// ===== 3d4434 CharAI::_OnAnimEvent(char const*) =====
int __fastcall CharAI::_OnAnimEvent(CharAI *this, const char *a2)
{
  int StepIndex; // r8
  int v5; // r10
  const char *v6; // r5
  int v7; // r9
  int v8; // r8
  int v9; // r11
  int v10; // r9
  char *TargetPosition; // r0
  float v12; // r5
  float v13; // r6
  const char *v15; // r5
  int v16; // r9
  int v17; // r11
  char *v18; // r0
  float v19[3]; // [sp+10h] [bp-C4h] BYREF
  int v20; // [sp+1Ch] [bp-B8h] BYREF
  _BYTE v21[4]; // [sp+20h] [bp-B4h] BYREF
  _BYTE v22[4]; // [sp+24h] [bp-B0h] BYREF
  _BYTE v23[4]; // [sp+28h] [bp-ACh] BYREF
  _BYTE v24[4]; // [sp+2Ch] [bp-A8h] BYREF
  _BYTE v25[4]; // [sp+30h] [bp-A4h] BYREF
  _BYTE v26[4]; // [sp+34h] [bp-A0h] BYREF
  _BYTE v27[4]; // [sp+38h] [bp-9Ch] BYREF
  std::priv::_String_base<char,std::allocator<char> > v28; // [sp+3Ch] [bp-98h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v29; // [sp+54h] [bp-80h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v30; // [sp+6Ch] [bp-68h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v31; // [sp+84h] [bp-50h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v32; // [sp+9Ch] [bp-38h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v33; // [sp+B4h] [bp-20h] BYREF

  StepIndex = CharAnimator::ANIM_GetStepIndex((CharAnimator *)(*((_DWORD *)this + 1) + 1180));
  CharAnimator::ANIM_GetStepCount((CharAnimator *)(*((_DWORD *)this + 1) + 1180));
  if ( LC_API_STRNCMP_0(a2, "ev_", 3u) )
  {
    if ( LC_API_STRNCMP_0(a2, "an_", 3u) )
    {
      v5 = LC_API_STRNCMP_0(a2, "fx_", 3u);
      if ( v5 )
      {
        if ( LC_API_STRNCMP_0(a2, "sfx_", 4u) )
        {
          switch ( CharStateMachine::SM_GetState((CharStateMachine *)(*((_DWORD *)this + 1) + 1276)) )
          {
            case 5:
              if ( (*(int (__fastcall **)(_DWORD, _BYTE *, _BYTE *, int *))(**((_DWORD **)this + 1) + 296))(
                     *((_DWORD *)this + 1),
                     v21,
                     v21,
                     &v20) )
              {
                if ( !LC_API_STRCMP_0(a2, "attack_ranged")
                  || !LC_API_STRCMP_0(a2, "attack_mainhand")
                  || !LC_API_STRCMP_0(a2, "do_skill") )
                {
                  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
                  std::string::string(&v33, v27);
                  DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, (const std::string *)&v33);
                  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v33);
                  ProjectileManager::Spawn(
                    (ProjectileManager *)&Singleton<ProjectileManager>::s_inst,
                    v20,
                    *((GameObject **)this + 1),
                    nullptr,
                    nullptr,
                    (int (*)(Projectile *, void *))CharAI::_HandleProjectile,
                    nullptr,
                    0);
                }
              }
              else if ( LC_API_STRCMP_0(a2, "attack_mainhand") )
              {
                if ( !LC_API_STRCMP_0(a2, "attack_offhand") )
                {
                  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
                  std::string::string(&v31, v25);
                  DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, (const std::string *)&v31);
                  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v31);
                  (*(void (__fastcall **)(CharAI *, _DWORD, int, int))(*(_DWORD *)this + 168))(
                    this,
                    *((_DWORD *)this + 29),
                    StepIndex - 1,
                    1);
                }
              }
              else
              {
                DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
                std::string::string(&v32, v26);
                DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, (const std::string *)&v32);
                std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v32);
                (*(void (__fastcall **)(CharAI *, _DWORD, int, _DWORD))(*(_DWORD *)this + 168))(
                  this,
                  *((_DWORD *)this + 29),
                  StepIndex - 1,
                  0);
              }
              break;
            case 6:
              if ( !LC_API_STRCMP_0(a2, "do_skill") )
              {
                DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
                std::string::string(&v29, v23);
                DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, (const std::string *)&v29);
                std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v29);
                CharAI::_SkillEvent(this);
              }
              break;
            case 7:
              if ( !LC_API_STRCMP_0(a2, "do_spell") )
              {
                DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
                std::string::string(&v28, v22);
                DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, (const std::string *)&v28);
                std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v28);
                CharAI::_SpellEvent(this);
              }
              break;
            case 0xD:
              if ( !LC_API_STRCMP_0(a2, "interact") )
              {
                DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
                std::string::string(&v30, v24);
                DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, (const std::string *)&v30);
                std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v30);
                (*(void (__fastcall **)(CharAI *))(*(_DWORD *)this + 160))(this);
              }
              break;
            default:
              return 1;
          }
        }
        else
        {
          v6 = a2 + 4;
          v7 = Arrays::Sounds::size;
          if ( Arrays::Sounds::size )
          {
            v8 = 0;
            v9 = Arrays::Sounds::m_memberNames;
            while ( LC_API_STRCMP_0(v6, *(const char **)(v9 + 4 * v8)) )
            {
              if ( ++v8 == v7 )
                return 1;
            }
            if ( v8 != -1 )
            {
              v10 = VoxSoundManager::s_instance;
              TargetPosition = GameObject::GetTargetPosition(*((GameObject **)this + 1));
              v12 = *(float *)TargetPosition;
              v13 = *((float *)TargetPosition + 2);
              v19[1] = *((float *)TargetPosition + 1);
              v19[0] = v12;
              v19[2] = v13;
              VoxSoundManager::Play3D(v10, v8, v19, 0, COERCE_FLOAT(1), -1.0, -1.0);
            }
          }
        }
      }
      else
      {
        v15 = a2 + 3;
        v16 = Arrays::AnimatedEffectTable::size;
        if ( Arrays::AnimatedEffectTable::size )
        {
          v17 = Arrays::AnimatedEffectTable::m_memberNames;
          while ( LC_API_STRCMP_0(v15, *(const char **)(v17 + 4 * v5)) )
          {
            if ( ++v5 == v16 )
              return 1;
          }
          if ( v5 != -1 )
          {
            v18 = GameObject::GetTargetPosition(*((GameObject **)this + 1));
            VisualFXManager::PlayAnimFXSet(&Singleton<VisualFXManager>::s_inst, v5, v18, 0, 0);
          }
        }
      }
    }
    else
    {
      CharAI::_ParseObjectAnimEvent((Character **)this, a2 + 3);
    }
  }
  else
  {
    (*(void (__fastcall **)(CharAI *, const char *))(*(_DWORD *)this + 148))(this, a2 + 3);
  }
  return 1;
}


// ===== 3d49c4 CharAI::AI_SyncLastTarget(void) =====
int __fastcall CharAI::AI_SyncLastTarget(int this)
{
  *(_DWORD *)(this + 68) = *(_DWORD *)(this + 64);
  return this;
}


// ===== 3d49d0 CharAI::AI_IsTargetSeeking(void) =====
unsigned int __fastcall CharAI::AI_IsTargetSeeking(unsigned int this)
{
  int v1; // r3
  bool v2; // zf

  v1 = *(unsigned __int8 *)(this + 74);
  v2 = v1 == 0;
  if ( *(_BYTE *)(this + 74) )
    v1 = *(_DWORD *)(this + 4);
  else
    this = *(unsigned __int8 *)(this + 74);
  if ( !v2 )
    return ((*(_DWORD *)(v1 + 1312) ^ 0x1000u) >> 12) & 1;
  return this;
}


// ===== 3d49f0 CharAI::AI_HasAggro(void) =====
bool __fastcall CharAI::AI_HasAggro(CharAI *this)
{
  return *((_DWORD *)this + 35) != 0;
}


// ===== 3d4a00 CharAI::AI_IsAggroed(void) =====
bool __fastcall CharAI::AI_IsAggroed(CharAI *this)
{
  return *((_DWORD *)this + 41) != 0;
}


// ===== 3d4a10 CharAI::AI_GetAggroCount(void) =====
int __fastcall CharAI::AI_GetAggroCount(CharAI *this)
{
  return *((_DWORD *)this + 35);
}


// ===== 3d4a18 CharAI::AI_GetHighestAggro(void) =====
int __fastcall CharAI::AI_GetHighestAggro(CharAI *this)
{
  int i; // r4
  char *v2; // r7
  int v3; // r8
  float v4; // r6
  float v5; // r5
  int v6; // r2
  int v7; // r3

  i = *((_DWORD *)this + 33);
  v2 = (char *)this + 124;
  if ( (CharAI *)i != (CharAI *)((char *)this + 124) )
  {
    v4 = 0.0;
    v3 = 0;
    while ( 1 )
    {
      v5 = *(float *)(i + 20);
      v6 = *(_DWORD *)(i + 12);
      if ( v5 > v4 )
        v3 = *(_DWORD *)(i + 16);
      else
        v5 = v4;
      if ( v6 )
      {
        for ( i = *(_DWORD *)(i + 12); *(_DWORD *)(i + 8); i = *(_DWORD *)(i + 8) )
          ;
        if ( v2 == (char *)i )
          return v3;
      }
      else
      {
        v7 = *(_DWORD *)(i + 4);
        if ( *(_DWORD *)(v7 + 12) == i )
        {
          do
          {
            i = v7;
            v7 = *(_DWORD *)(v7 + 4);
          }
          while ( *(_DWORD *)(v7 + 12) == i );
          v6 = *(_DWORD *)(i + 12);
        }
        if ( v6 != v7 )
          i = v7;
        if ( v2 == (char *)i )
          return v3;
      }
      v4 = v5;
    }
  }
  return 0;
}


// ===== 3d4ac8 CharAI::AI_GetAggro(Character *) =====
int __fastcall CharAI::AI_GetAggro(CharAI *this, Character *a2)
{
  char *v4; // r3
  char *v5; // r5
  char *v6; // r1
  unsigned int v7; // r2
  bool v8; // cc
  char *v9; // r2

  if ( !a2 )
  {
    if ( gAssertLevel == 2 )
    {
      dword_0 = 0;
    }
    else if ( gAssertLevel == 1 )
    {
      fprintf(
        (FILE *)&_sF + 2,
        "ASSERT(%s) FAILED: %s:%d\n",
        "c",
        "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Objects\\Characters\\AI\\CharAI_Queries.cpp",
        553);
    }
  }
  v4 = *((char **)this + 32);
  v5 = (char *)this + 124;
  if ( !v4 )
    goto LABEL_16;
  v6 = v5;
  while ( 1 )
  {
    v7 = *((_DWORD *)v4 + 4);
    v8 = (unsigned int)a2 > v7;
    v9 = (unsigned int)a2 <= v7 ? *((char **)v4 + 2) : *((char **)v4 + 3);
    if ( v8 )
      v4 = v6;
    v6 = v4;
    if ( !v9 )
      break;
    v4 = v9;
  }
  if ( v5 == v4 )
    return 0;
  if ( (unsigned int)a2 < *((_DWORD *)v4 + 4) )
LABEL_16:
    v4 = v5;
  if ( v5 != v4 )
    return *((_DWORD *)v4 + 5);
  return 0;
}


// ===== 3d4bc4 CharAI::AI_IsInCombat(void) =====
int __fastcall CharAI::AI_IsInCombat(CharAI *this)
{
  if ( CharAI::AI_HasAggro(this)
    || CharAI::AI_IsAggroed(this)
    || CharStateMachine::SM_IsAttacking((CharStateMachine *)(*((_DWORD *)this + 1) + 1276))
    || CharStateMachine::SM_IsUsingSkill((CharStateMachine *)(*((_DWORD *)this + 1) + 1276)) )
  {
    return 1;
  }
  else
  {
    return CharStateMachine::SM_IsCasting((CharStateMachine *)(*((_DWORD *)this + 1) + 1276));
  }
}


// ===== 3d4c34 CharAI::AI_GetMeleeRadius(void) =====
float __fastcall CharAI::AI_GetMeleeRadius(CharAI *this)
{
  int v2; // r0
  int v3; // r4
  int CharAIId; // r0
  int v6; // [sp+4h] [bp-8h] BYREF

  v2 = *((_DWORD *)this + 1);
  v6 = 0;
  ItemInventory::CanMeleeAttack((ItemInventory *)(v2 + 892), &v6);
  v3 = Arrays::AITable::members;
  CharAIId = Character::GetCharAIId(*((Character **)this + 1));
  return (float)v6 + *(float *)(v3 + 68 * CharAIId + 32);
}


// ===== 3d4c9c CharAI::AI_GetMeleeRadiusSq(void) =====
float __fastcall CharAI::AI_GetMeleeRadiusSq(CharAI *this)
{
  float MeleeRadius; // r0

  MeleeRadius = CharAI::AI_GetMeleeRadius(this);
  return MeleeRadius * MeleeRadius;
}


// ===== 3d4cb0 CharAI::AI_IsCloserThan(float,GameObject const*) =====
bool __fastcall CharAI::AI_IsCloserThan(CharAI *this, float a2, const GameObject *a3)
{
  GameObject *v3; // r5
  float *TargetPosition; // r4
  float *v6; // r5
  float v7; // r8
  float v8; // r0
  float v9; // r5

  v3 = a3;
  if ( !a3 )
  {
    v3 = *((GameObject **)this + 16);
    if ( !v3 )
      return 0;
  }
  TargetPosition = (float *)GameObject::GetTargetPosition(*((GameObject **)this + 1));
  v6 = (float *)GameObject::GetTargetPosition(v3);
  v7 = *TargetPosition - *v6;
  v8 = TargetPosition[1] - v6[1];
  v9 = TargetPosition[2] - v6[2];
  return a2 > (float)((float)((float)(v7 * v7) + (float)(v8 * v8)) + (float)(v9 * v9));
}


// ===== 3d4d80 CharAI::AI_SetMaster(Character *) =====
int __fastcall CharAI::AI_SetMaster(int this, Character *a2)
{
  int v2; // r4
  int v3; // r9
  int CharAIId; // r11
  float *TargetPosition; // r5
  float *v6; // r0
  float v7; // r10
  float v8; // r8
  float v9; // r7
  float v10; // r0
  float v11; // r5

  *(_DWORD *)(this + 80) = a2;
  v2 = this;
  if ( a2 )
  {
    v3 = Arrays::AITable::members;
    CharAIId = Character::GetCharAIId(*(Character **)(this + 4));
    *(_BYTE *)(v2 + 84) = (*(int (__fastcall **)(_DWORD))(**(_DWORD **)(v2 + 80) + 52))(*(_DWORD *)(v2 + 80)) ^ 1;
    TargetPosition = (float *)GameObject::GetTargetPosition(*(GameObject **)(v2 + 80));
    v6 = (float *)GameObject::GetTargetPosition(*(GameObject **)(v2 + 4));
    v7 = *TargetPosition - *v6;
    v8 = TargetPosition[1] - v6[1];
    v9 = TargetPosition[2] - v6[2];
    v10 = *(float *)(v3 + 68 * CharAIId + 60);
    *(_BYTE *)(v2 + 85) = 0;
    v11 = v10 * v10;
    this = (float)(v10 * v10) > (float)((float)((float)(v7 * v7) + (float)(v8 * v8)) + (float)(v9 * v9));
    if ( v11 > (float)((float)((float)(v7 * v7) + (float)(v8 * v8)) + (float)(v9 * v9)) )
      *(_BYTE *)(v2 + 85) = 1;
  }
  return this;
}


// ===== 3d4ea0 CharAI::AI_IsInSight(float) =====
bool __fastcall CharAI::AI_IsInSight(Character **this, float a2)
{
  int CharAI; // r0

  CharAI = Character::GetCharAI(*(this + 1));
  return (float)(*(float *)(CharAI + 60) * *(float *)(CharAI + 60)) > a2;
}


// ===== 3d4ed8 CharAI::AI_IsInSight(GameObject const*) =====
bool __fastcall CharAI::AI_IsInSight(CharAI *this, const GameObject *a2)
{
  GameObject *v2; // r5
  float *TargetPosition; // r4
  float *v5; // r0
  float v6; // r8
  float v7; // r7
  float v8; // r0

  v2 = a2;
  if ( !a2 )
  {
    v2 = *((GameObject **)this + 16);
    if ( !v2 )
      return 0;
  }
  TargetPosition = (float *)GameObject::GetTargetPosition(*((GameObject **)this + 1));
  v5 = (float *)GameObject::GetTargetPosition(v2);
  v6 = *TargetPosition - *v5;
  v7 = TargetPosition[1] - v5[1];
  v8 = TargetPosition[2] - v5[2];
  return CharAI::AI_IsInSight((Character **)this, (float)((float)(v6 * v6) + (float)(v7 * v7)) + (float)(v8 * v8));
}


// ===== 3d4f98 CharAI::AI_IsInInteractionRange(GameObject const*) =====
int __fastcall CharAI::AI_IsInInteractionRange(GameObject **this, const GameObject *a2)
{
  const GameObject *v2; // r4
  float *TargetPosition; // r5
  float v5; // r8
  float v6; // r5
  float v7; // r7
  float v8; // r1
  float v9; // r5
  int result; // r0
  int CharAI; // r0
  float MeleeRadius; // [sp+4h] [bp-18h]
  float v13; // [sp+Ch] [bp-10h] BYREF
  float v14; // [sp+10h] [bp-Ch]
  float v15; // [sp+14h] [bp-8h]

  v2 = a2;
  if ( a2 || (v2 = *(this + 16)) != nullptr )
  {
    TargetPosition = (float *)GameObject::GetTargetPosition(*(this + 1));
    GameObject::GetInteractionSpot((GameObject *)&v13);
    v5 = sqrtf(
           (float)((float)((float)(*TargetPosition - v13) * (float)(*TargetPosition - v13))
                 + (float)((float)(TargetPosition[1] - v14) * (float)(TargetPosition[1] - v14)))
         + (float)((float)(TargetPosition[2] - v15) * (float)(TargetPosition[2] - v15)));
    if ( *((_DWORD *)v2 + 186) )
    {
      v6 = 0.0;
      v7 = 80.0;
      v8 = 0.0;
    }
    else
    {
      MeleeRadius = CharAI::AI_GetMeleeRadius((CharAI *)this);
      v6 = COERCE_FLOAT((*(int (__fastcall **)(const GameObject *))(*(_DWORD *)v2 + 148))(v2));
      CharAI = Character::GetCharAI(*(this + 1));
      v8 = MeleeRadius;
      v7 = *(float *)(CharAI + 24);
    }
    v9 = (float)(v5 - v8) - v6;
    if ( (*(int (__fastcall **)(const GameObject *, _DWORD))(*(_DWORD *)v2 + 144))(v2, *(this + 1)) == 8 )
    {
      LOBYTE(result) = 0;
      if ( v9 > 0.0 )
        return (unsigned __int8)result;
    }
    else
    {
      LOBYTE(result) = 0;
      if ( v9 > v7 )
        return (unsigned __int8)result;
    }
    LOBYTE(result) = 1;
    return (unsigned __int8)result;
  }
  return 0;
}


// ===== 3d511c CharAI::AI_IsFriend(GameObject const*) =====
bool __fastcall CharAI::AI_IsFriend(CharAI *this, const GameObject *a2)
{
  char *Object; // r0
  Character *v4; // r6
  int v6; // r4
  int v7; // r4
  int CharAIFactionId; // r0
  int v9; // r12
  int v10; // r2
  int v11; // r3
  char *v12[4]; // [sp+Ch] [bp-10h] BYREF

  if ( !a2 )
  {
    a2 = *((const GameObject **)this + 16);
    if ( !a2 )
      return 0;
  }
  ObjectBase::GetHandle((ObjectBase *)v12, (int)a2);
  Object = ObjectHandle::GetObject(v12, 0);
  v4 = (Character *)Object;
  if ( !Object || *((_DWORD *)Object + 61) )
    return 0;
  if ( Character::GetCharAIFactionId((Character *)Object) < 0 )
  {
    if ( gAssertLevel == 2 )
    {
      dword_0 = 0;
    }
    else if ( gAssertLevel == 1 )
    {
      fprintf(
        (FILE *)&_sF + 2,
        "ASSERT(%s) FAILED: %s:%d\n",
        "c->GetCharAIFactionId() >= 0",
        "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Objects\\Characters\\AI\\CharAI_Queries.cpp",
        196);
    }
  }
  if ( Character::GetCharAIFactionId(v4) >= Arrays::AIFactionTable::size )
  {
    if ( gAssertLevel == 2 )
    {
      dword_0 = 0;
    }
    else if ( gAssertLevel == 1 )
    {
      fprintf(
        (FILE *)&_sF + 2,
        "ASSERT(%s) FAILED: %s:%d\n",
        "c->GetCharAIFactionId() < (int)Arrays::AIFactionTable::size",
        "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Objects\\Characters\\AI\\CharAI_Queries.cpp",
        197);
    }
  }
  if ( Character::GetCharAIFactionId(*((Character **)this + 1)) < 0 )
  {
    if ( gAssertLevel == 2 )
    {
      dword_0 = 0;
    }
    else if ( gAssertLevel == 1 )
    {
      fprintf(
        (FILE *)&_sF + 2,
        "ASSERT(%s) FAILED: %s:%d\n",
        "me->GetCharAIFactionId() >= 0",
        "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Objects\\Characters\\AI\\CharAI_Queries.cpp",
        198);
    }
  }
  if ( Character::GetCharAIFactionId(*((Character **)this + 1)) >= Arrays::AIFactionTable::size )
  {
    if ( gAssertLevel == 2 )
    {
      dword_0 = 0;
    }
    else if ( gAssertLevel == 1 )
    {
      fprintf(
        (FILE *)&_sF + 2,
        "ASSERT(%s) FAILED: %s:%d\n",
        "me->GetCharAIFactionId() < (int)Arrays::AIFactionTable::size",
        "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Objects\\Characters\\AI\\CharAI_Queries.cpp",
        199);
    }
  }
  v6 = Arrays::AIFactionTable::members;
  v7 = v6 + 12 * Character::GetCharAIFactionId(*((Character **)this + 1));
  CharAIFactionId = Character::GetCharAIFactionId(v4);
  v9 = *(_DWORD *)(v7 + 4);
  if ( !v9 )
    return 0;
  v10 = *(_DWORD *)(v7 + 8);
  if ( CharAIFactionId != *(_DWORD *)(v10 + 4) )
  {
    v11 = 0;
    while ( 1 )
    {
      ++v11;
      v10 += 12;
      if ( v11 == v9 )
        break;
      if ( CharAIFactionId == *(_DWORD *)(v10 + 4) )
        return *(_DWORD *)(v10 + 8) > 0;
    }
    return 0;
  }
  return *(_DWORD *)(v10 + 8) > 0;
}


// ===== 3d53ec CharAI::AI_PauseTargetSeeking(uint) =====
int __fastcall CharAI::AI_PauseTargetSeeking(CharAI *this, unsigned int a2)
{
  int v2; // r3

  v2 = *((_DWORD *)this + 1);
  *((_BYTE *)this + 74) = 0;
  return CharTimers::TMR_Start((CharTimers *)(v2 + 948), a2, 0, 50, nullptr);
}


// ===== 3d541c CharAI::AI_GetTargetAsCharacter(void) =====
char *__fastcall CharAI::AI_GetTargetAsCharacter(CharAI *this)
{
  int v1; // r1
  char *v3[3]; // [sp+4h] [bp-Ch] BYREF

  v1 = *((_DWORD *)this + 16);
  if ( !v1 )
    return nullptr;
  ObjectBase::GetHandle((ObjectBase *)v3, v1);
  return ObjectHandle::operator Character *(v3);
}


// ===== 3d5450 CharAI::AI_GetTargetAsCharacter(void) =====
char *__fastcall CharAI::AI_GetTargetAsCharacter(CharAI *this)
{
  int v1; // r1
  char *v3[3]; // [sp+4h] [bp-Ch] BYREF

  v1 = *((_DWORD *)this + 16);
  if ( !v1 )
    return nullptr;
  ObjectBase::GetHandle((ObjectBase *)v3, v1);
  return ObjectHandle::operator Character *(v3);
}


// ===== 3d5484 CharAI::AI_IsTargetACharacter(void) =====
bool __fastcall CharAI::AI_IsTargetACharacter(CharAI *this)
{
  int v1; // r1
  char *v3[3]; // [sp+4h] [bp-Ch] BYREF

  v1 = *((_DWORD *)this + 16);
  if ( !v1 )
    return 0;
  ObjectBase::GetHandle((ObjectBase *)v3, v1);
  return ObjectHandle::operator Character *(v3) != nullptr;
}


// ===== 3d54c0 `global constructor keyed to'.._.._sources_Game_Objects_Characters_AI_CharAI_Queries.cpp =====
int __fastcall `global constructor keyed to'.._.._sources_Game_Objects_Characters_AI_CharAI_Queries.cpp(CMessage *a1)
{
  CMessage *(*v1)(bool); // r2
  CMessage *(*v2)(bool); // r2
  CMessage *(*v3)(bool); // r2
  CMessage *(*v4)(bool); // r2
  CMessage *(*v5)(bool); // r2
  CMessage *(*v6)(bool); // r2
  CMessage *(*v7)(bool); // r2
  CMessage *(*v8)(bool); // r2
  CMessage *(*v9)(bool); // r2
  CMessage *(*v10)(bool); // r2
  CMessage *(*v11)(bool); // r2
  CMessage *(*v12)(bool); // r2
  CMessage *(*v13)(bool); // r2
  CMessage *v14; // r0
  int result; // r0

  dword_9A2BC4 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9A2BC0 = 1056964608;
  messageCreationMap = CMessage::InitializeMessageRegistration(a1);
  byte_9A2BC9 = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgStartGame",
                  (const char *)GetNewInstance<CMsgStartGame>,
                  v1);
  byte_9A2BCA = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgControllerAction",
                  (const char *)GetNewInstance<CMsgControllerAction>,
                  v2);
  byte_9A2BCB = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgAttackResult",
                  (const char *)GetNewInstance<CMsgAttackResult>,
                  v3);
  byte_9A2BCC = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgRaisedEvent",
                  (const char *)GetNewInstance<CMsgRaisedEvent>,
                  v4);
  byte_9A2BCD = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgMenuReady",
                  (const char *)GetNewInstance<CMsgMenuReady>,
                  v5);
  byte_9A2BCE = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgScriptCmd",
                  (const char *)GetNewInstance<CMsgScriptCmd>,
                  v6);
  byte_9A2BCF = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgInitialSetup",
                  (const char *)GetNewInstance<CMsgInitialSetup>,
                  v7);
  byte_9A2BD0 = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgQuestsSync",
                  (const char *)GetNewInstance<CMsgQuestsSync>,
                  v8);
  byte_9A2BD1 = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgDropLoot",
                  (const char *)GetNewInstance<CMsgDropLoot>,
                  v9);
  byte_9A2BD2 = CMessage::RegisterMessageType((CMessage *)"CMsgIsHost", (const char *)GetNewInstance<CMsgIsHost>, v10);
  byte_9A2BD3 = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgSpawnObject",
                  (const char *)GetNewInstance<CMsgSpawnObject>,
                  v11);
  byte_9A2BD4 = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgGlobalDeath",
                  (const char *)GetNewInstance<CMsgGlobalDeath>,
                  v12);
  v14 = (CMessage *)CMessage::RegisterMessageType(
                      (CMessage *)"CMsgAskResendAttributes",
                      (const char *)GetNewInstance<CMsgAskResendAttributes>,
                      v13);
  byte_9A2BD5 = (char)v14;
  result = CMessage::TerminateMessageRegistration(v14);
  byte_9A2BD6 = result;
  if ( (`guard variable for'Singleton<PlayerStatManager>::s_inst & 1) == 0 )
  {
    `guard variable for'Singleton<PlayerStatManager>::s_inst = 1;
    PlayerStatManager::PlayerStatManager((PlayerStatManager *)&Singleton<PlayerStatManager>::s_inst);
    result = _aeabi_atexit(
               (int)&Singleton<PlayerStatManager>::s_inst,
               (int)PlayerStatManager::~PlayerStatManager,
               (int)&_dso_handle);
  }
  if ( (`guard variable for'Singleton<Application>::s_inst & 1) == 0 )
  {
    `guard variable for'Singleton<Application>::s_inst = 1;
    Application::Application((Application *)&Singleton<Application>::s_inst);
    return _aeabi_atexit((int)&Singleton<Application>::s_inst, (int)Application::~Application, (int)&_dso_handle);
  }
  return result;
}


// ===== 3d574c CharAI::AI_IsEnemy(GameObject const*) =====
bool __fastcall CharAI::AI_IsEnemy(CharAI *this, const GameObject *a2)
{
  const GameObject *v2; // r7
  Character *Object; // r0
  Character *v5; // r6
  int v7; // r4
  int v8; // r4
  int CharAIFactionId; // r0
  int v10; // r12
  int v11; // r2
  int v12; // r3
  _BYTE v13[12]; // [sp+Ch] [bp-Ch] BYREF

  v2 = a2;
  if ( !a2 )
  {
    v2 = *((const GameObject **)this + 16);
    if ( !v2 )
      return 0;
  }
  ObjectBase::GetHandle((ObjectBase *)v13);
  Object = (Character *)ObjectHandle::GetObject((ObjectHandle *)v13, 0);
  v5 = Object;
  if ( !Object || *((_DWORD *)Object + 61) )
  {
    if ( v2 && (*(int (__fastcall **)(const GameObject *, _DWORD))(*(_DWORD *)v2 + 136))(v2, *((_DWORD *)this + 1)) )
      return (*(int (__fastcall **)(const GameObject *, _DWORD))(*(_DWORD *)v2 + 144))(v2, *((_DWORD *)this + 1)) == 8;
    return 0;
  }
  if ( (int)Character::GetCharAIFactionId(Object) < 0 )
  {
    if ( gAssertLevel == 2 )
    {
      dword_0 = 0;
    }
    else if ( gAssertLevel == 1 )
    {
      fprintf(
        (FILE *)&_sF + 2,
        "ASSERT(%s) FAILED: %s:%d\n",
        "c->GetCharAIFactionId() >= 0",
        "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Objects\\Characters\\AI\\CharAI_Queries.cpp",
        263);
    }
  }
  if ( Character::GetCharAIFactionId(v5) >= Arrays::AIFactionTable::size )
  {
    if ( gAssertLevel == 2 )
    {
      dword_0 = 0;
    }
    else if ( gAssertLevel == 1 )
    {
      fprintf(
        (FILE *)&_sF + 2,
        "ASSERT(%s) FAILED: %s:%d\n",
        "c->GetCharAIFactionId() < (int)Arrays::AIFactionTable::size",
        "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Objects\\Characters\\AI\\CharAI_Queries.cpp",
        264);
    }
  }
  if ( (int)Character::GetCharAIFactionId(*((Character **)this + 1)) < 0 )
  {
    if ( gAssertLevel == 2 )
    {
      dword_0 = 0;
    }
    else if ( gAssertLevel == 1 )
    {
      fprintf(
        (FILE *)&_sF + 2,
        "ASSERT(%s) FAILED: %s:%d\n",
        "me->GetCharAIFactionId() >= 0",
        "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Objects\\Characters\\AI\\CharAI_Queries.cpp",
        265);
    }
  }
  if ( Character::GetCharAIFactionId(*((Character **)this + 1)) >= Arrays::AIFactionTable::size )
  {
    if ( gAssertLevel == 2 )
    {
      dword_0 = 0;
    }
    else if ( gAssertLevel == 1 )
    {
      fprintf(
        (FILE *)&_sF + 2,
        "ASSERT(%s) FAILED: %s:%d\n",
        "me->GetCharAIFactionId() < (int)Arrays::AIFactionTable::size",
        "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Objects\\Characters\\AI\\CharAI_Queries.cpp",
        266);
    }
  }
  if ( (*(int (__fastcall **)(_DWORD))(**((_DWORD **)this + 1) + 40))(*((_DWORD *)this + 1))
    && (*(int (__fastcall **)(Character *))(*(_DWORD *)v5 + 40))(v5) )
  {
    return 0;
  }
  v7 = Arrays::AIFactionTable::members;
  v8 = v7 + 12 * Character::GetCharAIFactionId(*((Character **)this + 1));
  CharAIFactionId = Character::GetCharAIFactionId(v5);
  v10 = *(_DWORD *)(v8 + 4);
  if ( !v10 )
    return 0;
  v11 = *(_DWORD *)(v8 + 8);
  if ( CharAIFactionId != *(_DWORD *)(v11 + 4) )
  {
    v12 = 0;
    while ( 1 )
    {
      ++v12;
      v11 += 12;
      if ( v12 == v10 )
        break;
      if ( CharAIFactionId == *(_DWORD *)(v11 + 4) )
        return *(_DWORD *)(v11 + 8) >> 31;
    }
    return 0;
  }
  return *(_DWORD *)(v11 + 8) >> 31;
}


// ===== 3d5a98 CharAI::AI_IsNeutral(GameObject const*) =====
bool __fastcall CharAI::AI_IsNeutral(CharAI *this, const GameObject *a2)
{
  char *Object; // r0
  Character *v4; // r6
  int v6; // r4
  int v7; // r4
  int CharAIFactionId; // r0
  int v9; // r12
  int v10; // r2
  int v11; // r3
  char *v12[4]; // [sp+Ch] [bp-10h] BYREF

  if ( !a2 )
  {
    a2 = *((const GameObject **)this + 16);
    if ( !a2 )
      return 1;
  }
  ObjectBase::GetHandle((ObjectBase *)v12, (int)a2);
  Object = ObjectHandle::GetObject(v12, 0);
  v4 = (Character *)Object;
  if ( !Object || *((_DWORD *)Object + 61) )
    return 1;
  if ( Character::GetCharAIFactionId((Character *)Object) < 0 )
  {
    if ( gAssertLevel == 2 )
    {
      dword_0 = 0;
    }
    else if ( gAssertLevel == 1 )
    {
      fprintf(
        (FILE *)&_sF + 2,
        "ASSERT(%s) FAILED: %s:%d\n",
        "c->GetCharAIFactionId() >= 0",
        "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Objects\\Characters\\AI\\CharAI_Queries.cpp",
        226);
    }
  }
  if ( Character::GetCharAIFactionId(v4) >= Arrays::AIFactionTable::size )
  {
    if ( gAssertLevel == 2 )
    {
      dword_0 = 0;
    }
    else if ( gAssertLevel == 1 )
    {
      fprintf(
        (FILE *)&_sF + 2,
        "ASSERT(%s) FAILED: %s:%d\n",
        "c->GetCharAIFactionId() < (int)Arrays::AIFactionTable::size",
        "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Objects\\Characters\\AI\\CharAI_Queries.cpp",
        227);
    }
  }
  if ( Character::GetCharAIFactionId(*((Character **)this + 1)) < 0 )
  {
    if ( gAssertLevel == 2 )
    {
      dword_0 = 0;
    }
    else if ( gAssertLevel == 1 )
    {
      fprintf(
        (FILE *)&_sF + 2,
        "ASSERT(%s) FAILED: %s:%d\n",
        "me->GetCharAIFactionId() >= 0",
        "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Objects\\Characters\\AI\\CharAI_Queries.cpp",
        228);
    }
  }
  if ( Character::GetCharAIFactionId(*((Character **)this + 1)) >= Arrays::AIFactionTable::size )
  {
    if ( gAssertLevel == 2 )
    {
      dword_0 = 0;
    }
    else if ( gAssertLevel == 1 )
    {
      fprintf(
        (FILE *)&_sF + 2,
        "ASSERT(%s) FAILED: %s:%d\n",
        "me->GetCharAIFactionId() < (int)Arrays::AIFactionTable::size",
        "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Objects\\Characters\\AI\\CharAI_Queries.cpp",
        229);
    }
  }
  v6 = Arrays::AIFactionTable::members;
  v7 = v6 + 12 * Character::GetCharAIFactionId(*((Character **)this + 1));
  CharAIFactionId = Character::GetCharAIFactionId(v4);
  v9 = *(_DWORD *)(v7 + 4);
  if ( !v9 )
    return 1;
  v10 = *(_DWORD *)(v7 + 8);
  if ( CharAIFactionId != *(_DWORD *)(v10 + 4) )
  {
    v11 = 0;
    while ( 1 )
    {
      ++v11;
      v10 += 12;
      if ( v11 == v9 )
        break;
      if ( CharAIFactionId == *(_DWORD *)(v10 + 4) )
        return *(_DWORD *)(v10 + 8) == 0;
    }
    return 1;
  }
  return *(_DWORD *)(v10 + 8) == 0;
}


// ===== 3d5d64 std::priv::_Rb_tree<float,std::less<float>,std::pair<float const,Character *>,std::priv::_Select1st<std::pair<float const,Character *>>,std::priv::_MapTraitsT<std::pair<float const,Character *>>,std::allocator<std::pair<float const,Character *>>>::_M_erase(std::priv::_Rb_tree_node_base *) =====
void __fastcall std::priv::_Rb_tree<float,std::less<float>,std::pair<float const,Character *>,std::priv::_Select1st<std::pair<float const,Character *>>,std::priv::_MapTraitsT<std::pair<float const,Character *>>,std::allocator<std::pair<float const,Character *>>>::_M_erase(
        int a1,
        _DWORD *a2)
{
  _DWORD *v2; // r4
  _DWORD *v4; // r5

  v2 = a2;
  if ( a2 )
  {
    do
    {
      std::priv::_Rb_tree<float,std::less<float>,std::pair<float const,Character *>,std::priv::_Select1st<std::pair<float const,Character *>>,std::priv::_MapTraitsT<std::pair<float const,Character *>>,std::allocator<std::pair<float const,Character *>>>::_M_erase(
        a1,
        v2[3]);
      v4 = (_DWORD *)v2[2];
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v2, 0x18u);
      v2 = v4;
    }
    while ( v4 );
  }
}


// ===== 3d5d9c std::priv::_Rb_tree<Character *,std::less<Character *>,std::pair<Character * const,float>,std::priv::_Select1st<std::pair<Character * const,float>>,std::priv::_MapTraitsT<std::pair<Character * const,float>>,std::allocator<std::pair<Character * const,float>>>::erase(std::priv::_Rb_tree_iterator<std::pair<Character * const,float>,std::priv::_MapTraitsT<std::pair<Character * const,float>>>) =====
void __fastcall std::priv::_Rb_tree<Character *,std::less<Character *>,std::pair<Character * const,float>,std::priv::_Select1st<std::pair<Character * const,float>>,std::priv::_MapTraitsT<std::pair<Character * const,float>>,std::allocator<std::pair<Character * const,float>>>::erase(
        int a1,
        unsigned __int8 **a2)
{
  unsigned __int8 *v3; // r0

  v3 = std::priv::_Rb_global<bool>::_Rebalance_for_erase(
         *a2,
         (unsigned __int8 **)(a1 + 4),
         (unsigned __int8 **)(a1 + 8),
         (unsigned __int8 **)(a1 + 12));
  if ( v3 )
    __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v3, 0x18u);
  --*(_DWORD *)(a1 + 16);
}


// ===== 3d5dd8 std::vector<Character *,std::allocator<Character *>>::_M_allocate_and_copy<Character **>(uint &,Character **,Character **) =====
void *__fastcall std::vector<Character *>::_M_allocate_and_copy<Character **>(
        int a1,
        unsigned int *a2,
        _BYTE *a3,
        _BYTE *a4)
{
  void *v6; // r0
  void *v7; // r6

  v6 = std::allocator<Character *>::_M_allocate(a1 + 8, *a2, a2);
  v7 = v6;
  if ( a3 != a4 )
    memcpy(v6, a3, a4 - a3);
  return v7;
}


// ===== 3d5e14 std::vector<Character *,std::allocator<Character *>>::reserve(uint) =====
void __fastcall std::vector<Character *>::reserve(_DWORD *a1, unsigned int a2)
{
  _BYTE *v3; // r2
  int v4; // r0
  _BYTE *v5; // r3
  int v6; // r5
  char *v7; // r6
  _BYTE *v8; // r0
  size_t v9; // r1
  unsigned int v10; // r3
  unsigned int v11; // [sp+4h] [bp-4h] BYREF

  v3 = (_BYTE *)*a1;
  v4 = a1[2];
  v11 = a2;
  if ( a2 > (v4 - (int)v3) >> 2 )
  {
    if ( a2 > 0x3FFFFFFF )
    {
      __ZSt24__stl_throw_length_errorPKc_veneer("vector");
      v3 = (_BYTE *)*a1;
    }
    v5 = (_BYTE *)a1[1];
    v6 = (v5 - v3) >> 2;
    if ( v3 )
    {
      v7 = (char *)std::vector<Character *>::_M_allocate_and_copy<Character **>((int)a1, &v11, v3, v5);
      v8 = (_BYTE *)*a1;
      if ( *a1 )
      {
        v9 = (a1[2] - (_DWORD)v8) & 0xFFFFFFFC;
        if ( v9 > 0x80 )
          CustomFree(v8);
        else
          __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v8, v9);
      }
    }
    else
    {
      v7 = (char *)std::allocator<Character *>::_M_allocate((int)(a1 + 2), v11, &v11);
    }
    v10 = v11;
    a1[1] = &v7[4 * v6];
    a1[2] = &v7[4 * v10];
    *a1 = v7;
  }
}


// ===== 3d5ee0 std::vector<Character *,std::allocator<Character *>>::_M_insert_overflow(Character **,Character * const&,std::__true_type const&,uint,bool) [clone] =====
void __fastcall std::vector<Character *>::_M_insert_overflow(int a1, int a2, _DWORD *a3)
{
  unsigned int v5; // r3
  unsigned int v6; // r1
  char *v8; // r0
  char *v9; // r5
  size_t v10; // r6
  char *v11; // r6
  _DWORD *v12; // r6
  void *v13; // r0
  size_t v14; // r1
  size_t v15; // r3
  size_t v16; // [sp+4h] [bp-8h] BYREF

  v5 = (*(_DWORD *)(a1 + 4) - *(_DWORD *)a1) >> 2;
  if ( v5 )
    v6 = 2 * v5;
  else
    v6 = 1;
  if ( v6 > 0x3FFFFFFF || v5 > v6 )
    v6 = 0x3FFFFFFF;
  v16 = v6;
  v8 = (char *)std::allocator<Character *>::_M_allocate(a1 + 8, v6, &v16);
  v9 = v8;
  v10 = a2 - *(_DWORD *)a1;
  if ( v10 )
    v11 = (char *)memmove(v8, *(const void **)a1, v10) + v10;
  else
    v11 = v8;
  *(_DWORD *)v11 = *a3;
  v12 = v11 + 4;
  v13 = *(void **)a1;
  if ( *(_DWORD *)a1 )
  {
    v14 = (*(_DWORD *)(a1 + 8) - (_DWORD)v13) & 0xFFFFFFFC;
    if ( v14 > 0x80 )
      CustomFree(v13);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v13, v14);
  }
  v15 = v16;
  *(_DWORD *)a1 = v9;
  *(_DWORD *)(a1 + 4) = v12;
  *(_DWORD *)(a1 + 8) = &v9[4 * v15];
}


// ===== 3d5fa8 CharAI::AI_ClearAllAggro(void) =====
void __fastcall CharAI::AI_ClearAllAggro(CharAI *this)
{
  int v2; // r1
  char *v3; // r4
  char *v4; // r6
  int v5; // r0
  _DWORD *v6; // r3
  _DWORD *v7; // r0
  unsigned int v8; // r12
  _DWORD *v9; // r1
  unsigned int v10; // r2
  bool v11; // cf
  _DWORD *v12; // r2
  char *v13; // r2
  char *v14; // r0
  unsigned int v15; // r4
  int v16; // r3
  size_t v17; // r1
  int v18; // r3
  char *v19; // [sp+0h] [bp-14h] BYREF
  char *v20; // [sp+4h] [bp-10h]
  char *v21; // [sp+8h] [bp-Ch]
  _DWORD *v22; // [sp+Ch] [bp-8h]

  v2 = *((_DWORD *)this + 35);
  v21 = nullptr;
  v19 = nullptr;
  v20 = nullptr;
  v3 = *((char **)this + 33);
  std::vector<Character *>::reserve(&v19, v2);
  v4 = (char *)this + 124;
  while ( v3 != v4 )
  {
    while ( 1 )
    {
      v5 = *((_DWORD *)v3 + 4);
      v6 = *(_DWORD **)(v5 + 1120);
      if ( v6 )
      {
        v7 = (_DWORD *)(v5 + 1116);
        v8 = *((_DWORD *)this + 1);
        v9 = v7;
        while ( 1 )
        {
          v10 = v6[4];
          v11 = v10 >= v8;
          if ( v10 >= v8 )
            v12 = (_DWORD *)v6[2];
          else
            v12 = (_DWORD *)v6[3];
          if ( !v11 )
            v6 = v9;
          v9 = v6;
          if ( !v12 )
            break;
          v6 = v12;
        }
        if ( v7 != v6 && *((_DWORD *)this + 1) >= v6[4] )
        {
          v22 = v6;
          std::priv::_Rb_tree<Character *,std::less<Character *>,std::pair<Character * const,float>,std::priv::_Select1st<std::pair<Character * const,float>>,std::priv::_MapTraitsT<std::pair<Character * const,float>>,std::allocator<std::pair<Character * const,float>>>::erase();
        }
      }
      if ( v20 == v21 )
      {
        std::vector<Character *>::_M_insert_overflow(&v19);
      }
      else
      {
        *(_DWORD *)v20 = *((_DWORD *)v3 + 4);
        v20 += 4;
      }
      v13 = *((char **)v3 + 3);
      if ( !v13 )
        break;
      while ( *((_DWORD *)v13 + 2) )
        v13 = *((char **)v13 + 2);
      v3 = v13;
      if ( v13 == v4 )
        goto LABEL_22;
    }
    v18 = *((_DWORD *)v3 + 1);
    if ( v3 == *(char **)(v18 + 12) )
    {
      do
      {
        v3 = (char *)v18;
        v18 = *(_DWORD *)(v18 + 4);
      }
      while ( *(char **)(v18 + 12) == v3 );
      v13 = *((char **)v3 + 3);
    }
    if ( (char *)v18 != v13 )
      v3 = (char *)v18;
  }
LABEL_22:
  if ( *((_DWORD *)this + 35) )
  {
    std::priv::_Rb_tree<Character *,std::less<Character *>,std::pair<Character * const,float>,std::priv::_Select1st<std::pair<Character * const,float>>,std::priv::_MapTraitsT<std::pair<Character * const,float>>,std::allocator<std::pair<Character * const,float>>>::_M_erase(
      v3,
      *((_DWORD *)this + 32));
    *((_DWORD *)this + 34) = v3;
    *((_DWORD *)this + 35) = 0;
    *((_DWORD *)this + 33) = v3;
    *((_DWORD *)this + 32) = 0;
  }
  v14 = v19;
  if ( (unsigned int)(v20 - v19) >> 2 )
  {
    v15 = 0;
    do
    {
      v16 = *(_DWORD *)&v14[4 * v15++];
      (*(void (__fastcall **)(int, _DWORD))(*(_DWORD *)(v16 + 968) + 60))(v16 + 968, *((_DWORD *)this + 1));
      v14 = v19;
    }
    while ( v15 < (v20 - v19) >> 2 );
  }
  if ( v14 )
  {
    v17 = (v21 - v14) & 0xFFFFFFFC;
    if ( v17 > 0x80 )
      CustomFree(v14);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v14, v17);
  }
}


// ===== 3d6188 CharAI::AI_IsInMeleeRange(GameObject const*) =====
int __fastcall CharAI::AI_IsInMeleeRange(CharAI *this, const GameObject *a2)
{
  const GameObject *v2; // r6
  _DWORD *Object; // r0
  _DWORD *v5; // r10
  float *TargetPosition; // r7
  float *v8; // r0
  float v9; // r11
  float v10; // r9
  float v11; // r0
  float v12; // r7
  float v13; // r6
  float v14; // r6
  int Switch; // r10
  _BYTE v16[12]; // [sp+0h] [bp-4Ch] BYREF
  std::string v17; // [sp+14h] [bp-38h] BYREF
  std::string v18; // [sp+2Ch] [bp-20h] BYREF

  v2 = a2;
  if ( !a2 )
  {
    v2 = *((const GameObject **)this + 16);
    if ( !v2 )
      return 0;
  }
  ObjectBase::GetHandle((ObjectBase *)v16);
  Object = (_DWORD *)ObjectHandle::GetObject((ObjectHandle *)v16, 0);
  v5 = Object;
  if ( !Object
    || Object[61]
    || (*(int (__fastcall **)(_DWORD *, _DWORD))(*Object + 144))(Object, *((_DWORD *)this + 1)) != 8 )
  {
    return CharAI::AI_IsInInteractionRange(this, v2);
  }
  TargetPosition = (float *)GameObject::GetTargetPosition(*((GameObject **)this + 1));
  v8 = (float *)GameObject::GetTargetPosition(v2);
  v9 = *TargetPosition - *v8;
  v10 = TargetPosition[1] - v8[1];
  v11 = TargetPosition[2] - v8[2];
  v12 = (float)((float)(v9 * v9) + (float)(v10 * v10)) + (float)(v11 * v11);
  v13 = COERCE_FLOAT(CharAI::AI_GetMeleeRadius(this));
  v14 = v13 + COERCE_FLOAT(CharAI::AI_GetMeleeRadius((CharAI *)(v5 + 242)));
  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string((int)&v18, "IsTracingCharAITarget");
  Switch = DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v18);
  if ( (std::string *)v18._M_start_of_storage._M_data != &v18 && v18._M_start_of_storage._M_data )
  {
    if ( (unsigned int)(v18._M_buffers._M_end_of_storage - v18._M_start_of_storage._M_data) > 0x80 )
      CustomFree(v18._M_start_of_storage._M_data);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(
        v18._M_start_of_storage._M_data,
        v18._M_buffers._M_end_of_storage - v18._M_start_of_storage._M_data);
  }
  if ( Switch )
  {
    DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
    std::string::string((int)&v17, "isTracingCharAITarget");
    DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v17);
    std::string::~string(&v17);
  }
  return (float)(v14 * v14) > v12;
}


// ===== 3d63d8 CharAI::AI_IsInCloseRange(GameObject const*) =====
int __fastcall CharAI::AI_IsInCloseRange(CharAI *this, const GameObject *a2)
{
  const GameObject *v2; // r6
  char *Object; // r0
  float *TargetPosition; // r7
  float *v7; // r6
  float v8; // r8
  float v9; // r0
  float v10; // r8
  int Switch; // r10
  char *v12[3]; // [sp+0h] [bp-54h] BYREF
  _BYTE v13[4]; // [sp+Ch] [bp-48h] BYREF
  int v14; // [sp+10h] [bp-44h] BYREF
  std::string v15; // [sp+1Ch] [bp-38h] BYREF
  std::string v16; // [sp+34h] [bp-20h] BYREF

  v2 = a2;
  if ( !a2 )
  {
    v2 = *((const GameObject **)this + 16);
    if ( !v2 )
      return 0;
  }
  ObjectBase::GetHandle((ObjectBase *)v12, (int)v2);
  Object = ObjectHandle::GetObject(v12, 0);
  if ( !Object
    || *((_DWORD *)Object + 61)
    || (*(int (__fastcall **)(char *, _DWORD))(*(_DWORD *)Object + 144))(Object, *((_DWORD *)this + 1)) != 8 )
  {
    return CharAI::AI_IsInInteractionRange((GameObject **)this, v2);
  }
  if ( !(*(int (__fastcall **)(_DWORD, int *, _BYTE *, _BYTE *))(**((_DWORD **)this + 1) + 296))(
          *((_DWORD *)this + 1),
          &v14,
          v13,
          v13) )
    return 0;
  TargetPosition = (float *)GameObject::GetTargetPosition(*((GameObject **)this + 1));
  v7 = (float *)GameObject::GetTargetPosition(v2);
  v8 = TargetPosition[1] - v7[1];
  v9 = TargetPosition[2] - v7[2];
  v10 = (float)((float)((float)(*TargetPosition - *v7) * (float)(*TargetPosition - *v7)) + (float)(v8 * v8))
      + (float)(v9 * v9);
  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string(&v16, "IsTracingCharAITarget");
  Switch = DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v16);
  std::string::~string(&v16);
  if ( Switch )
  {
    DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
    std::string::string(&v15, "isTracingCharAITarget");
    DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v15);
    std::string::~string(&v15);
  }
  return (float)(v14 * v14) > v10;
}


// ===== 3d6604 CharAI::AI_IsInRange(GameObject const*) =====
bool __fastcall CharAI::AI_IsInRange(CharAI *this, const GameObject *a2)
{
  GameObject *v2; // r7
  float *TargetPosition; // r6
  float *v6; // r7
  float v7; // r8
  float v8; // r0
  float v9; // r8
  int Switch; // r10
  int v11; // [sp+0h] [bp-4Ch] BYREF
  int v12; // [sp+4h] [bp-48h] BYREF
  int v13; // [sp+8h] [bp-44h] BYREF
  std::string v14; // [sp+14h] [bp-38h] BYREF
  std::string v15; // [sp+2Ch] [bp-20h] BYREF

  v2 = a2;
  if ( !a2 )
  {
    v2 = *((GameObject **)this + 16);
    if ( !v2 )
      return 0;
  }
  if ( !(*(int (__fastcall **)(_DWORD, int *, int *, int *))(**((_DWORD **)this + 1) + 296))(
          *((_DWORD *)this + 1),
          &v13,
          &v12,
          &v11) )
    return 0;
  TargetPosition = (float *)GameObject::GetTargetPosition(*((GameObject **)this + 1));
  v6 = (float *)GameObject::GetTargetPosition(v2);
  v7 = TargetPosition[1] - v6[1];
  v8 = TargetPosition[2] - v6[2];
  v9 = (float)((float)((float)(*TargetPosition - *v6) * (float)(*TargetPosition - *v6)) + (float)(v7 * v7))
     + (float)(v8 * v8);
  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string(&v15, "IsTracingCharAITarget");
  Switch = DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v15);
  std::string::~string(&v15);
  if ( Switch )
  {
    DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
    std::string::string(&v14, "isTracingCharAITarget");
    DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v14);
    std::string::~string(&v14);
  }
  return (float)(v13 * v13) <= v9 && (float)(v12 * v12) >= v9;
}


// ===== 3d67f4 CharAI::AI_CanAttack(GameObject *) =====
int __fastcall CharAI::AI_CanAttack(CharAI *this, GameObject *a2)
{
  const GameObject *v2; // r5

  v2 = a2;
  if ( !a2 )
  {
    v2 = *((const GameObject **)this + 16);
    if ( !v2 )
      return 0;
  }
  if ( !CharAI::AI_IsEnemy(this, v2) )
    return 0;
  if ( ItemInventory::CanMeleeAttack((ItemInventory *)(*((_DWORD *)this + 1) + 892))
    && CharAI::AI_IsInMeleeRange(this, v2) )
  {
    return 1;
  }
  if ( !(*(int (__fastcall **)(_DWORD))(**((_DWORD **)this + 1) + 292))(*((_DWORD *)this + 1)) )
    return 0;
  return CharAI::AI_IsInRange(this, v2);
}


// ===== 3d6890 CharAI::AI_SetTarget(GameObject *,bool) =====
void __fastcall CharAI::AI_SetTarget(CharAI *this, GameObject *a2, int a3)
{
  int v4; // r3
  int Switch; // r10
  GameObject *v7; // r3
  _BOOL4 v8; // r3
  int v9; // r2
  std::string *v10; // r8
  _BYTE *v11; // r0
  int v12; // r2
  int v13; // r3
  std::string v14; // [sp+14h] [bp-64h] BYREF
  _BYTE v15[24]; // [sp+2Ch] [bp-4Ch] BYREF
  _BYTE v16[24]; // [sp+44h] [bp-34h] BYREF
  std::string v17; // [sp+5Ch] [bp-1Ch] BYREF
  int v18; // [sp+74h] [bp-4h]

  v4 = _stack_chk_guard;
  *((_DWORD *)this + 15) = a2;
  v18 = v4;
  if ( a3 )
    goto LABEL_22;
  if ( *((GameObject **)this + 16) != a2 )
    *(_WORD *)(*((_DWORD *)this + 1) + 5328) = 0;
  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string((int)&v17, "IsTracingCharAITarget");
  Switch = DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v17);
  if ( (std::string *)v17._M_start_of_storage._M_data == &v17 || !v17._M_start_of_storage._M_data )
    goto LABEL_8;
  if ( (unsigned int)(v17._M_buffers._M_end_of_storage - v17._M_start_of_storage._M_data) <= 0x80 )
  {
    __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(
      v17._M_start_of_storage._M_data,
      v17._M_buffers._M_end_of_storage - v17._M_start_of_storage._M_data);
LABEL_8:
    if ( !Switch )
      goto LABEL_16;
    goto LABEL_9;
  }
  CustomFree(v17._M_start_of_storage._M_data);
  if ( !Switch )
  {
LABEL_16:
    *((_DWORD *)this + 16) = a2;
    if ( !a2 )
      return;
    goto LABEL_17;
  }
LABEL_9:
  v7 = *((GameObject **)this + 16);
  if ( v7 == a2 )
    goto LABEL_16;
  v8 = v7 != nullptr;
  v9 = (int)a2;
  if ( a2 )
    v9 = 1;
  if ( (v9 & v8) != 0 )
  {
    v10 = (std::string *)v16;
    DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
    v11 = v16;
    goto LABEL_15;
  }
  if ( v8 )
  {
    v10 = (std::string *)v15;
    DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
    v11 = v15;
LABEL_15:
    std::string::string((int)v11, "isTracingCharAITarget");
    DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, v10);
    std::string::~string(v10);
    goto LABEL_16;
  }
  if ( !v9 )
  {
LABEL_22:
    *((_DWORD *)this + 16) = a2;
    return;
  }
  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string((int)&v14, "isTracingCharAITarget");
  DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v14);
  std::string::~string(&v14);
  *((_DWORD *)this + 16) = a2;
LABEL_17:
  Character::GetCharAIId(*((Character **)this + 1));
  v12 = *((_DWORD *)this + 17);
  v13 = *((_DWORD *)this + 16);
  if ( v13 != v12 )
  {
    *((_BYTE *)this + 76) = 0;
    v12 = v13;
  }
  *((_DWORD *)this + 17) = v12;
  *((_BYTE *)this + 72) = (*(int (__fastcall **)(int))(*(_DWORD *)v13 + 52))(v13) ^ 1;
  *((_BYTE *)this + 73) = CharAI::AI_IsInSight(this, *((const GameObject **)this + 16));
}


// ===== 3d6abc CharAI::AI_ClearAllAggroTowardMe(bool) =====
void __fastcall CharAI::AI_ClearAllAggroTowardMe(CharAI *this, int a2)
{
  int v4; // r1
  char *v5; // r4
  char *v6; // r6
  _DWORD *v7; // r0
  _DWORD *v8; // r3
  _DWORD *v9; // r0
  unsigned int v10; // r12
  _DWORD *v11; // r1
  unsigned int v12; // r2
  bool v13; // cf
  _DWORD *v14; // r2
  char *v15; // r2
  char *v16; // r0
  unsigned int v17; // r4
  int v18; // r1
  size_t v19; // r1
  int v20; // r3
  char *v21; // [sp+0h] [bp-10h] BYREF
  char *v22; // [sp+4h] [bp-Ch]
  char *v23; // [sp+8h] [bp-8h]
  _DWORD *v24; // [sp+Ch] [bp-4h]

  v4 = *((_DWORD *)this + 41);
  v23 = nullptr;
  v21 = nullptr;
  v22 = nullptr;
  v5 = *((char **)this + 39);
  std::vector<Character *>::reserve(&v21, v4);
  v6 = (char *)this + 148;
  while ( v5 != v6 )
  {
    while ( 1 )
    {
      if ( a2 )
      {
        v7 = *((_DWORD **)v5 + 4);
        if ( *((_DWORD *)this + 1) != v7[258] )
          goto LABEL_5;
        CharAI::AI_SetTarget((CharAI *)(v7 + 242), nullptr, 0);
        CharAI::AI_SyncLastTarget(*((_DWORD *)v5 + 4) + 968);
      }
      v7 = *((_DWORD **)v5 + 4);
LABEL_5:
      v8 = (_DWORD *)v7[274];
      if ( v8 )
      {
        v9 = v7 + 273;
        v10 = *((_DWORD *)this + 1);
        v11 = v9;
        while ( 1 )
        {
          v12 = v8[4];
          v13 = v12 >= v10;
          if ( v12 >= v10 )
            v14 = (_DWORD *)v8[2];
          else
            v14 = (_DWORD *)v8[3];
          if ( !v13 )
            v8 = v11;
          v11 = v8;
          if ( !v14 )
            break;
          v8 = v14;
        }
        if ( v9 != v8 && *((_DWORD *)this + 1) >= v8[4] )
        {
          v24 = v8;
          std::priv::_Rb_tree<Character *,std::less<Character *>,std::pair<Character * const,float>,std::priv::_Select1st<std::pair<Character * const,float>>,std::priv::_MapTraitsT<std::pair<Character * const,float>>,std::allocator<std::pair<Character * const,float>>>::erase();
        }
      }
      if ( v22 == v23 )
      {
        std::vector<Character *>::_M_insert_overflow(&v21);
      }
      else
      {
        *(_DWORD *)v22 = *((_DWORD *)v5 + 4);
        v22 += 4;
      }
      v15 = *((char **)v5 + 3);
      if ( !v15 )
        break;
      while ( *((_DWORD *)v15 + 2) )
        v15 = *((char **)v15 + 2);
      v5 = v15;
      if ( v15 == v6 )
        goto LABEL_24;
    }
    v20 = *((_DWORD *)v5 + 1);
    if ( v5 == *(char **)(v20 + 12) )
    {
      do
      {
        v5 = (char *)v20;
        v20 = *(_DWORD *)(v20 + 4);
      }
      while ( *(char **)(v20 + 12) == v5 );
      v15 = *((char **)v5 + 3);
    }
    if ( (char *)v20 != v15 )
      v5 = (char *)v20;
  }
LABEL_24:
  if ( *((_DWORD *)this + 41) )
  {
    std::priv::_Rb_tree<Character *,std::less<Character *>,std::pair<Character * const,float>,std::priv::_Select1st<std::pair<Character * const,float>>,std::priv::_MapTraitsT<std::pair<Character * const,float>>,std::allocator<std::pair<Character * const,float>>>::_M_erase(
      v5,
      *((_DWORD *)this + 38));
    *((_DWORD *)this + 40) = v5;
    *((_DWORD *)this + 41) = 0;
    *((_DWORD *)this + 39) = v5;
    *((_DWORD *)this + 38) = 0;
  }
  v16 = v21;
  if ( (unsigned int)(v22 - v21) >> 2 )
  {
    v17 = 0;
    do
    {
      v18 = *(_DWORD *)&v16[4 * v17++];
      (*(void (__fastcall **)(int, int))(*(_DWORD *)(*((_DWORD *)this + 1) + 968) + 60))(
        *((_DWORD *)this + 1) + 968,
        v18);
      v16 = v21;
    }
    while ( v17 < (v22 - v21) >> 2 );
  }
  if ( v16 )
  {
    v19 = (v23 - v16) & 0xFFFFFFFC;
    if ( v19 > 0x80 )
      CustomFree(v16);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v16, v19);
  }
}


// ===== 3d6cdc CharAI::AI_SetDead(void) =====
void __fastcall CharAI::AI_SetDead(CharAI *this)
{
  CharAI::AI_SetTarget(this, nullptr, 0);
  CharAI::AI_SyncLastTarget(this);
  CharStateMachine::SM_SetDeadState((CharStateMachine *)(*((_DWORD *)this + 1) + 1276), 0, nullptr, 1);
  CharTimers::TMR_Stop((CharTimers *)(*((_DWORD *)this + 1) + 948), *((_DWORD *)this + 4));
  CharTimers::TMR_Stop((CharTimers *)(*((_DWORD *)this + 1) + 948), *((_DWORD *)this + 5));
  *((_DWORD *)this + 5) = -1;
  *((_DWORD *)this + 4) = -1;
  CharAI::AI_ClearAllAggro(this);
  CharAI::AI_ClearAllAggroTowardMe(this, 0);
  CharAI::_SkillCleanUp(this);
  CharAI::_SpellCleanUp(this);
}


// ===== 3d6d68 CharAI::AI_ClearAggro(Character *) =====
int __fastcall CharAI::AI_ClearAggro(int this, Character *a2)
{
  int v3; // r5
  _DWORD *v4; // r2
  _DWORD *v5; // r12
  _DWORD *i; // r3
  unsigned int v7; // r1
  bool v8; // cf
  _DWORD *v9; // r1
  int v10; // r1
  unsigned int v11; // r3
  bool v12; // cf
  _DWORD *v13; // r3
  char *v14; // r3
  char *v15; // r0
  unsigned int v16; // r1
  char *v17; // r12
  unsigned int v18; // r2
  bool v19; // cc
  char *v20; // r2
  char *v21; // [sp+0h] [bp-Ch] BYREF
  unsigned __int8 *v22; // [sp+4h] [bp-8h] BYREF

  v3 = this;
  if ( a2 )
  {
    v4 = *(_DWORD **)(this + 128);
    this += 124;
    if ( !v4 )
      goto LABEL_41;
    v5 = (_DWORD *)this;
    for ( i = v4; ; i = v9 )
    {
      v7 = i[4];
      v8 = v7 >= (unsigned int)a2;
      if ( v7 >= (unsigned int)a2 )
        v9 = (_DWORD *)i[2];
      else
        v9 = (_DWORD *)i[3];
      if ( !v8 )
        i = v5;
      v5 = i;
      if ( !v9 )
        break;
    }
    if ( (_DWORD *)this == i )
      goto LABEL_38;
    if ( i[4] > (unsigned int)a2 )
LABEL_41:
      i = (_DWORD *)this;
    if ( (_DWORD *)this != i )
    {
      if ( v4 )
      {
        v10 = this;
        while ( 1 )
        {
          v11 = v4[4];
          v12 = v11 >= (unsigned int)a2;
          if ( v11 >= (unsigned int)a2 )
            v13 = (_DWORD *)v4[2];
          else
            v13 = (_DWORD *)v4[3];
          if ( !v12 )
            v4 = (_DWORD *)v10;
          v10 = (int)v4;
          if ( !v13 )
            break;
          v4 = v13;
        }
        if ( (_DWORD *)this != v4 && v4[4] <= (unsigned int)a2 )
        {
          v22 = (unsigned __int8 *)v4;
          std::priv::_Rb_tree<Character *,std::less<Character *>,std::pair<Character * const,float>,std::priv::_Select1st<std::pair<Character * const,float>>,std::priv::_MapTraitsT<std::pair<Character * const,float>>,std::allocator<std::pair<Character * const,float>>>::erase(
            this,
            &v22);
        }
      }
      v14 = *((char **)a2 + 280);
      if ( v14 )
      {
        v15 = (char *)a2 + 1116;
        v16 = *(_DWORD *)(v3 + 4);
        v17 = (char *)a2 + 1116;
        while ( 1 )
        {
          v18 = *((_DWORD *)v14 + 4);
          v19 = v16 > v18;
          if ( v16 <= v18 )
            v20 = *((char **)v14 + 2);
          else
            v20 = *((char **)v14 + 3);
          if ( v19 )
            v14 = v17;
          v17 = v14;
          if ( !v20 )
            break;
          v14 = v20;
        }
        if ( v15 != v14 && v16 >= *((_DWORD *)v14 + 4) )
        {
          v21 = v14;
          std::priv::_Rb_tree<Character *,std::less<Character *>,std::pair<Character * const,float>,std::priv::_Select1st<std::pair<Character * const,float>>,std::priv::_MapTraitsT<std::pair<Character * const,float>>,std::allocator<std::pair<Character * const,float>>>::erase(
            (int)v15,
            (unsigned __int8 **)&v21);
        }
      }
      this = (*(int (__fastcall **)(char *))(*((_DWORD *)a2 + 242) + 60))((char *)a2 + 968);
    }
LABEL_38:
    if ( *(_DWORD *)(v3 + 4) == *((_DWORD *)a2 + 258) )
    {
      CharAI::AI_SetTarget((Character *)((char *)a2 + 968), nullptr, 0);
      return v2Controller::Cmd_Stop(*((_DWORD *)a2 + 222));
    }
  }
  return this;
}


// ===== 3d6eec std::allocator<std::priv::_Rb_tree_node<std::pair<float const,Character *>>>::allocate(uint,void const*) [clone] =====
void *std::allocator<std::priv::_Rb_tree_node<std::pair<float const,Character *>>>::allocate()
{
  size_t v1; // [sp+4h] [bp-8h] BYREF

  v1 = 24;
  return __ZNSt12__node_alloc11_M_allocateERj_veneer(&v1);
}


// ===== 3d6f0c std::priv::_Rb_tree<float,std::less<float>,std::pair<float const,Character *>,std::priv::_Select1st<std::pair<float const,Character *>>,std::priv::_MapTraitsT<std::pair<float const,Character *>>,std::allocator<std::pair<float const,Character *>>>::_M_insert(std::priv::_Rb_tree_node_base *,std::pair<float const,Character *> const&,std::priv::_Rb_tree_node_base *,std::priv::_Rb_tree_node_base *) [clone] =====
_DWORD *__fastcall std::priv::_Rb_tree<float,std::less<float>,std::pair<float const,Character *>,std::priv::_Select1st<std::pair<float const,Character *>>,std::priv::_MapTraitsT<std::pair<float const,Character *>>,std::allocator<std::pair<float const,Character *>>>::_M_insert(
        _DWORD *a1,
        _DWORD *a2,
        int a3,
        _DWORD *a4,
        int a5)
{
  _DWORD *v7; // r0
  _DWORD *v8; // r6
  int v9; // r3
  int v10; // r2
  int v11; // r3
  _DWORD *v13; // r0
  int v14; // r3

  if ( a2 == (_DWORD *)a3 )
  {
    v8 = std::allocator<std::priv::_Rb_tree_node<std::pair<float const,Character *>>>::allocate();
    v8[4] = *a4;
    v11 = a4[1];
    v8[3] = 0;
    v8[2] = 0;
    v8[5] = v11;
    a2[2] = v8;
    a2[1] = v8;
    a2[3] = v8;
    v10 = a3;
  }
  else if ( a5 || *(float *)a4 < *(float *)(a3 + 16) )
  {
    v7 = std::allocator<std::priv::_Rb_tree_node<std::pair<float const,Character *>>>::allocate();
    v8 = v7;
    v7[4] = *a4;
    v9 = a4[1];
    v7[3] = 0;
    v7[2] = 0;
    v7[5] = v9;
    v10 = a3;
    *(_DWORD *)(a3 + 8) = v7;
    if ( a3 == a2[2] )
      a2[2] = v7;
  }
  else
  {
    v13 = std::allocator<std::priv::_Rb_tree_node<std::pair<float const,Character *>>>::allocate();
    v8 = v13;
    v13[4] = *a4;
    v14 = a4[1];
    v13[3] = 0;
    v13[2] = 0;
    v13[5] = v14;
    v10 = a3;
    *(_DWORD *)(a3 + 12) = v13;
    if ( a3 == a2[3] )
      a2[3] = v13;
  }
  v8[1] = v10;
  std::priv::_Rb_global<bool>::_Rebalance((int)v8, a2 + 1);
  ++a2[4];
  *a1 = v8;
  return a1;
}


// ===== 3d7058 std::priv::_Rb_tree<float,std::less<float>,std::pair<float const,Character *>,std::priv::_Select1st<std::pair<float const,Character *>>,std::priv::_MapTraitsT<std::pair<float const,Character *>>,std::allocator<std::pair<float const,Character *>>>::insert_unique(std::pair<float const,Character *> const&) =====
int __fastcall std::priv::_Rb_tree<float,std::less<float>,std::pair<float const,Character *>,std::priv::_Select1st<std::pair<float const,Character *>>,std::priv::_MapTraitsT<std::pair<float const,Character *>>,std::allocator<std::pair<float const,Character *>>>::insert_unique(
        int a1,
        _DWORD *a2,
        float *a3)
{
  int v3; // r5
  float v6; // r9
  float v7; // r10
  int v8; // r3
  int v9; // r8
  int v11; // r2
  int v12; // r3
  int v13; // r3
  int v14; // r3
  int v15; // [sp+8h] [bp-8h] BYREF
  int v16; // [sp+Ch] [bp-4h] BYREF

  v3 = a2[1];
  if ( v3 )
  {
    v6 = *a3;
    while ( 1 )
    {
      v7 = *(float *)(v3 + 16);
      v8 = v7 <= v6 ? *(_DWORD *)(v3 + 12) : *(_DWORD *)(v3 + 8);
      if ( !v8 )
        break;
      v3 = v8;
    }
    if ( *(float *)(v3 + 16) <= v6 )
    {
      v9 = v3;
      goto LABEL_12;
    }
  }
  else
  {
    v3 = (int)a2;
  }
  if ( v3 == a2[2] )
  {
    std::priv::_Rb_tree<float,std::less<float>,std::pair<float const,Character *>,std::priv::_Select1st<std::pair<float const,Character *>>,std::priv::_MapTraitsT<std::pair<float const,Character *>>,std::allocator<std::pair<float const,Character *>>>::_M_insert(
      &v16,
      a2,
      v3,
      a3,
      v3);
    v14 = v16;
    *(_BYTE *)(a1 + 4) = 1;
    *(_DWORD *)a1 = v14;
    return a1;
  }
  if ( !*(_BYTE *)v3 && v3 == *(_DWORD *)(*(_DWORD *)(v3 + 4) + 4) )
  {
    v6 = *a3;
    v9 = *(_DWORD *)(v3 + 12);
    v7 = *(float *)(v9 + 16);
  }
  else
  {
    v11 = *(_DWORD *)(v3 + 8);
    if ( v11 )
    {
      while ( *(_DWORD *)(v11 + 12) )
        v11 = *(_DWORD *)(v11 + 12);
      v9 = v11;
      v6 = *a3;
      v7 = *(float *)(v11 + 16);
    }
    else
    {
      v13 = *(_DWORD *)(v3 + 4);
      if ( v3 == *(_DWORD *)(v13 + 8) )
      {
        while ( 1 )
        {
          v9 = *(_DWORD *)(v13 + 4);
          if ( *(_DWORD *)(v9 + 8) != v13 )
            break;
          v13 = *(_DWORD *)(v13 + 4);
        }
        v6 = *a3;
        v7 = *(float *)(v9 + 16);
      }
      else
      {
        v9 = *(_DWORD *)(v3 + 4);
        v6 = *a3;
        v7 = *(float *)(v13 + 16);
      }
    }
  }
LABEL_12:
  if ( v6 > v7 )
  {
    std::priv::_Rb_tree<float,std::less<float>,std::pair<float const,Character *>,std::priv::_Select1st<std::pair<float const,Character *>>,std::priv::_MapTraitsT<std::pair<float const,Character *>>,std::allocator<std::pair<float const,Character *>>>::_M_insert(
      &v15,
      a2,
      v3,
      a3,
      0);
    v12 = v15;
    *(_BYTE *)(a1 + 4) = 1;
    *(_DWORD *)a1 = v12;
  }
  else
  {
    *(_DWORD *)a1 = v9;
    *(_BYTE *)(a1 + 4) = 0;
  }
  return a1;
}


// ===== 3d7208 CharAI::AI_GetRelationsConverseMap(std::map<Character *,float,std::less<Character *>,std::allocator<std::pair<Character * const,float>>> const&) =====
_DWORD *__fastcall CharAI::AI_GetRelationsConverseMap(_DWORD *a1, int a2, int a3)
{
  int v4; // r4
  float v6; // r3
  int v7; // r2
  int v9; // r3
  int v10; // [sp+0h] [bp-8h] BYREF
  float v11[2]; // [sp+8h] [bp+0h] BYREF

  a1[4] = 0;
  a1[1] = 0;
  *(_BYTE *)a1 = 0;
  a1[2] = a1;
  a1[3] = a1;
  v4 = *(_DWORD *)(a3 + 8);
  while ( a3 != v4 )
  {
    while ( 1 )
    {
      v6 = *(float *)(v4 + 16);
      v11[0] = *(float *)(v4 + 20);
      v11[1] = v6;
      std::priv::_Rb_tree<float,std::less<float>,std::pair<float const,Character *>,std::priv::_Select1st<std::pair<float const,Character *>>,std::priv::_MapTraitsT<std::pair<float const,Character *>>,std::allocator<std::pair<float const,Character *>>>::insert_unique(
        (int)&v10,
        a1,
        v11);
      v7 = *(_DWORD *)(v4 + 12);
      if ( !v7 )
        break;
      while ( *(_DWORD *)(v7 + 8) )
        v7 = *(_DWORD *)(v7 + 8);
      v4 = v7;
      if ( a3 == v7 )
        return a1;
    }
    v9 = *(_DWORD *)(v4 + 4);
    if ( v4 == *(_DWORD *)(v9 + 12) )
    {
      do
      {
        v4 = v9;
        v9 = *(_DWORD *)(v9 + 4);
      }
      while ( *(_DWORD *)(v9 + 12) == v4 );
      v7 = *(_DWORD *)(v4 + 12);
    }
    if ( v9 != v7 )
      v4 = v9;
  }
  return a1;
}


// ===== 3d72d0 CharAI::AI_GetAggroEntry(int,Character *&,float &) =====
void __fastcall CharAI::AI_GetAggroEntry(CharAI *this, int a2, Character **a3, float *a4)
{
  int i; // r2
  int v8; // r1
  int v9; // r0
  int v10; // r3
  _DWORD v11[7]; // [sp+0h] [bp-1Ch] BYREF

  CharAI::AI_GetRelationsConverseMap(v11, (int)this, (int)this + 124);
  i = v11[2];
  v8 = 0;
  while ( (_DWORD *)i != v11 )
  {
    while ( 1 )
    {
      if ( v8 == a2 )
      {
        *a3 = *(Character **)(i + 20);
        *a4 = *(float *)(i + 16);
        goto LABEL_15;
      }
      v9 = *(_DWORD *)(i + 12);
      ++v8;
      if ( v9 )
        break;
      v10 = *(_DWORD *)(i + 4);
      if ( i == *(_DWORD *)(v10 + 12) )
      {
        do
        {
          i = v10;
          v10 = *(_DWORD *)(v10 + 4);
        }
        while ( *(_DWORD *)(v10 + 12) == i );
        v9 = *(_DWORD *)(i + 12);
      }
      if ( v9 != v10 )
        i = v10;
      if ( (_DWORD *)i == v11 )
        goto LABEL_14;
    }
    for ( i = *(_DWORD *)(i + 12); *(_DWORD *)(i + 8); i = *(_DWORD *)(i + 8) )
      ;
  }
LABEL_14:
  *a3 = nullptr;
LABEL_15:
  if ( v11[4] )
    std::priv::_Rb_tree<float,std::less<float>,std::pair<float const,Character *>,std::priv::_Select1st<std::pair<float const,Character *>>,std::priv::_MapTraitsT<std::pair<float const,Character *>>,std::allocator<std::pair<float const,Character *>>>::_M_erase(
      (int)v11,
      (_DWORD *)v11[1]);
}


// ===== 3d73ac std::allocator<std::priv::_Rb_tree_node<std::pair<Character * const,float>>>::allocate(uint,void const*) [clone] =====
void *std::allocator<std::priv::_Rb_tree_node<std::pair<Character * const,float>>>::allocate()
{
  size_t v1; // [sp+4h] [bp-8h] BYREF

  v1 = 24;
  return __ZNSt12__node_alloc11_M_allocateERj_veneer(&v1);
}


// ===== 3d73cc std::priv::_Rb_tree<Character *,std::less<Character *>,std::pair<Character * const,float>,std::priv::_Select1st<std::pair<Character * const,float>>,std::priv::_MapTraitsT<std::pair<Character * const,float>>,std::allocator<std::pair<Character * const,float>>>::_M_insert(std::priv::_Rb_tree_node_base *,std::pair<Character * const,float> const&,std::priv::_Rb_tree_node_base *,std::priv::_Rb_tree_node_base *) =====
_DWORD *__fastcall std::priv::_Rb_tree<Character *,std::less<Character *>,std::pair<Character * const,float>,std::priv::_Select1st<std::pair<Character * const,float>>,std::priv::_MapTraitsT<std::pair<Character * const,float>>,std::allocator<std::pair<Character * const,float>>>::_M_insert(
        _DWORD *a1,
        _DWORD *a2,
        _DWORD *a3,
        _DWORD *a4,
        int a5,
        int a6)
{
  _DWORD *v10; // r0
  _DWORD *v11; // r6
  int v12; // r2
  _DWORD *v14; // r0
  int v15; // r2
  int v16; // r2

  if ( a2 == a3 )
  {
    v11 = std::allocator<std::priv::_Rb_tree_node<std::pair<Character * const,float>>>::allocate();
    v11[4] = *a4;
    v16 = a4[1];
    v11[3] = 0;
    v11[2] = 0;
    v11[5] = v16;
    a2[2] = v11;
    a2[1] = v11;
    a2[3] = v11;
  }
  else if ( a6 || !a5 && *a4 >= a3[4] )
  {
    v10 = std::allocator<std::priv::_Rb_tree_node<std::pair<Character * const,float>>>::allocate();
    v11 = v10;
    v10[4] = *a4;
    v12 = a4[1];
    v10[3] = 0;
    v10[2] = 0;
    v10[5] = v12;
    a3[3] = v10;
    if ( a3 == (_DWORD *)a2[3] )
      a2[3] = v10;
  }
  else
  {
    v14 = std::allocator<std::priv::_Rb_tree_node<std::pair<Character * const,float>>>::allocate();
    v11 = v14;
    v14[4] = *a4;
    v15 = a4[1];
    v14[3] = 0;
    v14[2] = 0;
    v14[5] = v15;
    a3[2] = v14;
    if ( a3 == (_DWORD *)a2[2] )
      a2[2] = v14;
  }
  v11[1] = a3;
  std::priv::_Rb_global<bool>::_Rebalance((int)v11, a2 + 1);
  ++a2[4];
  *a1 = v11;
  return a1;
}


// ===== 3d74f0 std::priv::_Rb_tree<Character *,std::less<Character *>,std::pair<Character * const,float>,std::priv::_Select1st<std::pair<Character * const,float>>,std::priv::_MapTraitsT<std::pair<Character * const,float>>,std::allocator<std::pair<Character * const,float>>>::insert_unique(std::pair<Character * const,float> const&) =====
int __fastcall std::priv::_Rb_tree<Character *,std::less<Character *>,std::pair<Character * const,float>,std::priv::_Select1st<std::pair<Character * const,float>>,std::priv::_MapTraitsT<std::pair<Character * const,float>>,std::allocator<std::pair<Character * const,float>>>::insert_unique(
        int a1,
        _DWORD *a2,
        unsigned int *a3)
{
  _DWORD *v3; // r12
  unsigned int v6; // r6
  unsigned int v7; // r0
  int v8; // r5
  _DWORD *v9; // r2
  _DWORD *v10; // r5
  int v12; // r0
  int v13; // r3
  _DWORD *v14; // r2
  int v15; // r3
  int v16; // [sp+8h] [bp-8h] BYREF
  int v17; // [sp+Ch] [bp-4h] BYREF

  v3 = (_DWORD *)a2[1];
  if ( v3 )
  {
    v6 = *a3;
    while ( 1 )
    {
      v7 = v3[4];
      v8 = 1;
      if ( v7 <= v6 )
      {
        v9 = (_DWORD *)v3[3];
        v8 = 0;
      }
      else
      {
        v9 = (_DWORD *)v3[2];
      }
      if ( !v9 )
        break;
      v3 = v9;
    }
    if ( !v8 )
    {
      v10 = v3;
      goto LABEL_12;
    }
  }
  else
  {
    v3 = a2;
  }
  if ( v3 == (_DWORD *)a2[2] )
  {
    std::priv::_Rb_tree<Character *,std::less<Character *>,std::pair<Character * const,float>,std::priv::_Select1st<std::pair<Character * const,float>>,std::priv::_MapTraitsT<std::pair<Character * const,float>>,std::allocator<std::pair<Character * const,float>>>::_M_insert(
      &v17,
      a2,
      v3,
      a3,
      (int)v3,
      0);
    v15 = v17;
    *(_BYTE *)(a1 + 4) = 1;
    *(_DWORD *)a1 = v15;
    return a1;
  }
  if ( !*(_BYTE *)v3 && v3 == *(_DWORD **)(v3[1] + 4) )
  {
    v6 = *a3;
    v10 = (_DWORD *)v3[3];
    v7 = v10[4];
  }
  else
  {
    v12 = v3[2];
    if ( v12 )
    {
      while ( *(_DWORD *)(v12 + 12) )
        v12 = *(_DWORD *)(v12 + 12);
      if ( *a3 <= *(_DWORD *)(v12 + 16) )
      {
        *(_DWORD *)a1 = v12;
        *(_BYTE *)(a1 + 4) = 0;
        return a1;
      }
LABEL_25:
      std::priv::_Rb_tree<Character *,std::less<Character *>,std::pair<Character * const,float>,std::priv::_Select1st<std::pair<Character * const,float>>,std::priv::_MapTraitsT<std::pair<Character * const,float>>,std::allocator<std::pair<Character * const,float>>>::_M_insert(
        &v16,
        a2,
        v3,
        a3,
        0,
        0);
      v13 = v16;
      *(_BYTE *)(a1 + 4) = 1;
      *(_DWORD *)a1 = v13;
      return a1;
    }
    v14 = (_DWORD *)v3[1];
    if ( v3 == (_DWORD *)v14[2] )
    {
      while ( 1 )
      {
        v10 = (_DWORD *)v14[1];
        if ( (_DWORD *)v10[2] != v14 )
          break;
        v14 = (_DWORD *)v14[1];
      }
      v6 = *a3;
      v7 = v10[4];
    }
    else
    {
      v10 = (_DWORD *)v3[1];
      v6 = *a3;
      v7 = v14[4];
    }
  }
LABEL_12:
  if ( v6 > v7 )
    goto LABEL_25;
  *(_DWORD *)a1 = v10;
  *(_BYTE *)(a1 + 4) = 0;
  return a1;
}


// ===== 3d7678 std::priv::_Rb_tree<Character *,std::less<Character *>,std::pair<Character * const,float>,std::priv::_Select1st<std::pair<Character * const,float>>,std::priv::_MapTraitsT<std::pair<Character * const,float>>,std::allocator<std::pair<Character * const,float>>>::insert_unique(std::priv::_Rb_tree_iterator<std::pair<Character * const,float>,std::priv::_MapTraitsT<std::pair<Character * const,float>>>,std::pair<Character * const,float> const&) =====
_DWORD *__fastcall std::priv::_Rb_tree<Character *,std::less<Character *>,std::pair<Character * const,float>,std::priv::_Select1st<std::pair<Character * const,float>>,std::priv::_MapTraitsT<std::pair<Character * const,float>>,std::allocator<std::pair<Character * const,float>>>::insert_unique(
        _DWORD *a1,
        _DWORD *a2,
        _DWORD **a3,
        unsigned int *a4)
{
  _DWORD *v4; // r4
  _DWORD *v7; // r12
  unsigned int v8; // r2
  unsigned int v9; // r0
  int v10; // r8
  _DWORD *i; // r12
  unsigned int v13; // r2
  unsigned int v14; // r12
  int v15; // lr
  _DWORD *v16; // r2
  int v17; // r3
  int v18; // r3
  int v19; // [sp+8h] [bp-24h] BYREF
  int v20; // [sp+10h] [bp-1Ch] BYREF
  int v21; // [sp+18h] [bp-14h] BYREF
  _DWORD v22[3]; // [sp+20h] [bp-Ch] BYREF

  v4 = *a3;
  if ( *a3 == (_DWORD *)a2[2] )
  {
    if ( !a2[4] )
    {
      std::priv::_Rb_tree<Character *,std::less<Character *>,std::pair<Character * const,float>,std::priv::_Select1st<std::pair<Character * const,float>>,std::priv::_MapTraitsT<std::pair<Character * const,float>>,std::allocator<std::pair<Character * const,float>>>::insert_unique(
        (int)v22,
        a2,
        a4);
      *a1 = v22[0];
      return a1;
    }
    v13 = *a4;
    v14 = v4[4];
    if ( *a4 < v14 )
    {
      std::priv::_Rb_tree<Character *,std::less<Character *>,std::pair<Character * const,float>,std::priv::_Select1st<std::pair<Character * const,float>>,std::priv::_MapTraitsT<std::pair<Character * const,float>>,std::allocator<std::pair<Character * const,float>>>::_M_insert(
        a1,
        a2,
        v4,
        a4,
        (int)v4,
        0);
      return a1;
    }
    if ( *a4 > v14 )
    {
      v15 = v4[3];
      if ( v15 )
      {
        for ( i = (_DWORD *)v4[3]; i[2]; i = (_DWORD *)i[2] )
          ;
      }
      else
      {
        v18 = v4[1];
        if ( v4 == *(_DWORD **)(v18 + 12) )
        {
          do
          {
            i = (_DWORD *)v18;
            v18 = *(_DWORD *)(v18 + 4);
          }
          while ( *(_DWORD **)(v18 + 12) == i );
        }
        else
        {
          i = v4;
        }
        if ( v18 != i[3] )
          i = (_DWORD *)v18;
      }
      if ( a2 == i )
        goto LABEL_63;
      if ( v13 >= i[4] )
      {
        std::priv::_Rb_tree<Character *,std::less<Character *>,std::pair<Character * const,float>,std::priv::_Select1st<std::pair<Character * const,float>>,std::priv::_MapTraitsT<std::pair<Character * const,float>>,std::allocator<std::pair<Character * const,float>>>::insert_unique(
          (int)&v21,
          a2,
          a4);
        *a1 = v21;
        return a1;
      }
      if ( !v15 )
      {
LABEL_63:
        std::priv::_Rb_tree<Character *,std::less<Character *>,std::pair<Character * const,float>,std::priv::_Select1st<std::pair<Character * const,float>>,std::priv::_MapTraitsT<std::pair<Character * const,float>>,std::allocator<std::pair<Character * const,float>>>::_M_insert(
          a1,
          a2,
          v4,
          a4,
          0,
          (int)v4);
        return a1;
      }
      goto LABEL_42;
    }
    goto LABEL_45;
  }
  if ( v4 != a2 )
  {
    if ( *(_BYTE *)v4 )
    {
      v7 = (_DWORD *)v4[2];
      if ( !v7 )
      {
LABEL_26:
        v7 = (_DWORD *)v4[1];
        if ( v4 == (_DWORD *)v7[2] )
        {
          while ( *(_DWORD **)(v7[1] + 8) == v7 )
            v7 = (_DWORD *)v7[1];
          v7 = (_DWORD *)v7[1];
        }
        goto LABEL_8;
      }
    }
    else
    {
      if ( v4 == *(_DWORD **)(v4[1] + 4) )
      {
        v7 = (_DWORD *)v4[3];
LABEL_8:
        v8 = *a4;
        v9 = v4[4];
        if ( *a4 < v9 && v8 > v7[4] )
        {
          if ( v7[3] )
            std::priv::_Rb_tree<Character *,std::less<Character *>,std::pair<Character * const,float>,std::priv::_Select1st<std::pair<Character * const,float>>,std::priv::_MapTraitsT<std::pair<Character * const,float>>,std::allocator<std::pair<Character * const,float>>>::_M_insert(
              a1,
              a2,
              v4,
              a4,
              (int)v4,
              0);
          else
            std::priv::_Rb_tree<Character *,std::less<Character *>,std::pair<Character * const,float>,std::priv::_Select1st<std::pair<Character * const,float>>,std::priv::_MapTraitsT<std::pair<Character * const,float>>,std::allocator<std::pair<Character * const,float>>>::_M_insert(
              a1,
              a2,
              v7,
              a4,
              0,
              (int)v7);
          return a1;
        }
        v10 = v4[3];
        if ( v10 )
        {
          for ( i = (_DWORD *)v4[3]; i[2]; i = (_DWORD *)i[2] )
            ;
        }
        else
        {
          v17 = v4[1];
          if ( v4 == *(_DWORD **)(v17 + 12) )
          {
            do
            {
              i = (_DWORD *)v17;
              v17 = *(_DWORD *)(v17 + 4);
            }
            while ( i == *(_DWORD **)(v17 + 12) );
          }
          else
          {
            i = v4;
          }
          if ( v17 != i[3] )
            i = (_DWORD *)v17;
        }
        if ( *a4 < v9 )
          goto LABEL_31;
        if ( v8 > v9 )
        {
          if ( a2 == i || v8 < i[4] )
          {
            if ( !v10 )
            {
              std::priv::_Rb_tree<Character *,std::less<Character *>,std::pair<Character * const,float>,std::priv::_Select1st<std::pair<Character * const,float>>,std::priv::_MapTraitsT<std::pair<Character * const,float>>,std::allocator<std::pair<Character * const,float>>>::_M_insert(
                a1,
                a2,
                v4,
                a4,
                0,
                (int)v4);
              return a1;
            }
LABEL_42:
            std::priv::_Rb_tree<Character *,std::less<Character *>,std::pair<Character * const,float>,std::priv::_Select1st<std::pair<Character * const,float>>,std::priv::_MapTraitsT<std::pair<Character * const,float>>,std::allocator<std::pair<Character * const,float>>>::_M_insert(
              a1,
              a2,
              i,
              a4,
              (int)i,
              0);
            return a1;
          }
LABEL_31:
          std::priv::_Rb_tree<Character *,std::less<Character *>,std::pair<Character * const,float>,std::priv::_Select1st<std::pair<Character * const,float>>,std::priv::_MapTraitsT<std::pair<Character * const,float>>,std::allocator<std::pair<Character * const,float>>>::insert_unique(
            (int)&v19,
            a2,
            a4);
          *a1 = v19;
          return a1;
        }
LABEL_45:
        *a1 = v4;
        return a1;
      }
      v7 = (_DWORD *)v4[2];
      if ( !v7 )
        goto LABEL_26;
    }
    while ( v7[3] )
      v7 = (_DWORD *)v7[3];
    goto LABEL_8;
  }
  v16 = (_DWORD *)v4[3];
  if ( v16[4] >= *a4 )
  {
    std::priv::_Rb_tree<Character *,std::less<Character *>,std::pair<Character * const,float>,std::priv::_Select1st<std::pair<Character * const,float>>,std::priv::_MapTraitsT<std::pair<Character * const,float>>,std::allocator<std::pair<Character * const,float>>>::insert_unique(
      (int)&v20,
      a2,
      a4);
    *a1 = v20;
  }
  else
  {
    std::priv::_Rb_tree<Character *,std::less<Character *>,std::pair<Character * const,float>,std::priv::_Select1st<std::pair<Character * const,float>>,std::priv::_MapTraitsT<std::pair<Character * const,float>>,std::allocator<std::pair<Character * const,float>>>::_M_insert(
      a1,
      a2,
      v16,
      a4,
      0,
      (int)v4);
  }
  return a1;
}


// ===== 3d79ec CharAI::AI_SetAggro(Character *,float) =====
int __fastcall CharAI::AI_SetAggro(CharAI *this, Character *a2, float a3)
{
  char *v7; // r12
  char *v8; // r7
  char *v9; // r1
  char *i; // r3
  unsigned int v11; // r2
  bool v12; // cc
  char *v13; // r2
  char *v14; // r2
  unsigned int v15; // r3
  bool v16; // cc
  char *v17; // r3
  float *v18; // r3
  char *v19; // r12
  char *v20; // r1
  unsigned int v21; // r6
  char *v22; // r2
  unsigned int v23; // r3
  bool v24; // cc
  char *v25; // r3
  float *v26; // r3
  unsigned int v27[2]; // [sp+8h] [bp-24h] BYREF
  unsigned int v28[2]; // [sp+10h] [bp-1Ch] BYREF
  float *v29; // [sp+18h] [bp-14h] BYREF
  char *v30; // [sp+1Ch] [bp-10h] BYREF
  float *v31; // [sp+20h] [bp-Ch] BYREF
  char *v32; // [sp+24h] [bp-8h] BYREF

  if ( !a2 )
  {
    if ( gAssertLevel == 2 )
    {
      dword_0 = 0;
    }
    else if ( gAssertLevel == 1 )
    {
      fprintf(
        (FILE *)&_sF + 2,
        "ASSERT(%s) FAILED: %s:%d\n",
        "c",
        "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Objects\\Characters\\AI\\CharAI_Queries.cpp",
        628);
    }
  }
  if ( (*(int (__fastcall **)(_DWORD))(**((_DWORD **)this + 1) + 40))(*((_DWORD *)this + 1))
    || (*(int (__fastcall **)(_DWORD))(**((_DWORD **)this + 1) + 52))(*((_DWORD *)this + 1))
    || (*(int (__fastcall **)(Character *))(*(_DWORD *)a2 + 52))(a2) )
  {
    a3 = 0.0;
    return LODWORD(a3);
  }
  v7 = *((char **)this + 32);
  v8 = (char *)this + 124;
  if ( !v7 )
    goto LABEL_46;
  v9 = (char *)this + 124;
  for ( i = *((char **)this + 32); ; i = v13 )
  {
    v11 = *((_DWORD *)i + 4);
    v12 = (unsigned int)a2 > v11;
    if ( (unsigned int)a2 <= v11 )
      v13 = *((char **)i + 2);
    else
      v13 = *((char **)i + 3);
    if ( v12 )
      i = v9;
    v9 = i;
    if ( !v13 )
      break;
  }
  if ( v8 == i )
    goto LABEL_52;
  if ( (unsigned int)a2 < *((_DWORD *)i + 4) )
LABEL_46:
    i = (char *)this + 124;
  if ( v8 == i )
  {
LABEL_52:
    (*(void (__fastcall **)(char *, _DWORD))(*((_DWORD *)a2 + 242) + 56))((char *)a2 + 968, *((_DWORD *)this + 1));
    v7 = *((char **)this + 32);
  }
  if ( v7 )
  {
    v14 = (char *)this + 124;
    while ( 1 )
    {
      v15 = *((_DWORD *)v7 + 4);
      v16 = (unsigned int)a2 > v15;
      if ( (unsigned int)a2 <= v15 )
        v17 = *((char **)v7 + 2);
      else
        v17 = *((char **)v7 + 3);
      if ( v16 )
        v7 = v14;
      v14 = v7;
      if ( !v17 )
        break;
      v7 = v17;
    }
  }
  else
  {
    v7 = (char *)this + 124;
  }
  if ( v8 == v7 || (v18 = (float *)v7, (unsigned int)a2 < *((_DWORD *)v7 + 4)) )
  {
    v28[1] = 0;
    v32 = v7;
    v28[0] = (unsigned int)a2;
    std::priv::_Rb_tree<Character *,std::less<Character *>,std::pair<Character * const,float>,std::priv::_Select1st<std::pair<Character * const,float>>,std::priv::_MapTraitsT<std::pair<Character * const,float>>,std::allocator<std::pair<Character * const,float>>>::insert_unique(
      &v31,
      (_DWORD *)this + 31,
      (_DWORD **)&v32,
      v28);
    v18 = v31;
  }
  v18[5] = a3;
  v19 = *((char **)a2 + 280);
  v20 = (char *)a2 + 1116;
  if ( v19 )
  {
    v21 = *((_DWORD *)this + 1);
    v22 = (char *)a2 + 1116;
    while ( 1 )
    {
      v23 = *((_DWORD *)v19 + 4);
      v24 = v21 > v23;
      if ( v21 <= v23 )
        v25 = *((char **)v19 + 2);
      else
        v25 = *((char **)v19 + 3);
      if ( v24 )
        v19 = v22;
      v22 = v19;
      if ( !v25 )
        break;
      v19 = v25;
    }
  }
  else
  {
    v21 = *((_DWORD *)this + 1);
    v19 = (char *)a2 + 1116;
  }
  if ( v20 == v19 || (v26 = (float *)v19, v21 < *((_DWORD *)v19 + 4)) )
  {
    v27[0] = v21;
    v27[1] = 0;
    v30 = v19;
    std::priv::_Rb_tree<Character *,std::less<Character *>,std::pair<Character * const,float>,std::priv::_Select1st<std::pair<Character * const,float>>,std::priv::_MapTraitsT<std::pair<Character * const,float>>,std::allocator<std::pair<Character * const,float>>>::insert_unique(
      &v29,
      v20,
      (_DWORD **)&v30,
      v27);
    v26 = v29;
  }
  v26[5] = a3;
  return LODWORD(a3);
}


// ===== 3d7c68 CharAI::AI_AddAggro(Character *,float) =====
float __fastcall CharAI::AI_AddAggro(CharAI *this, Character *a2, float a3)
{
  char *v6; // r3
  char *v7; // r0
  char *v8; // r1
  unsigned int v9; // r2
  bool v10; // cc
  char *v11; // r2
  float v12; // r7

  if ( !a2 )
  {
    if ( gAssertLevel == 2 )
    {
      dword_0 = 0;
    }
    else if ( gAssertLevel == 1 )
    {
      fprintf(
        (FILE *)&_sF + 2,
        "ASSERT(%s) FAILED: %s:%d\n",
        "c",
        "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Objects\\Characters\\AI\\CharAI_Queries.cpp",
        658);
    }
  }
  v6 = *((char **)this + 32);
  v7 = (char *)this + 124;
  if ( !v6 )
    goto LABEL_15;
  v8 = (char *)this + 124;
  while ( 1 )
  {
    v9 = *((_DWORD *)v6 + 4);
    v10 = (unsigned int)a2 > v9;
    v11 = (unsigned int)a2 <= v9 ? *((char **)v6 + 2) : *((char **)v6 + 3);
    if ( v10 )
      v6 = v8;
    v8 = v6;
    if ( !v11 )
      break;
    v6 = v11;
  }
  if ( v7 == v6 )
    return COERCE_FLOAT(CharAI::AI_SetAggro(this, a2, a3));
  if ( (unsigned int)a2 < *((_DWORD *)v6 + 4) )
LABEL_15:
    v6 = (char *)this + 124;
  if ( v7 != v6 )
  {
    v12 = *((float *)v6 + 5);
    return COERCE_FLOAT(CharAI::AI_SetAggro(this, a2, a3 + v12)) - v12;
  }
  return COERCE_FLOAT(CharAI::AI_SetAggro(this, a2, a3));
}


// ===== 3d7d9c CharAI::AI_IsSpellActive(void) =====
int __fastcall CharAI::AI_IsSpellActive(CharAI *this)
{
  return 0;
}


// ===== 3d7da4 CharAI::AI_CancelSpell(void) =====
void __fastcall CharAI::AI_CancelSpell(CharAI *this)
{
  ;
}


// ===== 3d7da8 CharAI::AI_SpellInfo(float &) =====
CharAISkillScript *__fastcall CharAI::AI_SpellInfo(Character **this, float *a2)
{
  unsigned int CurrentFaerieId; // r0
  int v5; // r2
  unsigned int v6; // r5
  CharAISkillScript *result; // r0

  CurrentFaerieId = Character::SG_GetCurrentFaerieId(*(this + 1), -1);
  v5 = (int)*(this + 48);
  v6 = CurrentFaerieId;
  if ( CurrentFaerieId >= ((int)*(this + 49) - v5) >> 2 )
  {
    if ( gAssertLevel == 2 )
    {
      dword_0 = 0;
    }
    else if ( gAssertLevel == 1 )
    {
      fprintf(
        (FILE *)&_sF + 2,
        "ASSERT(%s) FAILED: %s:%d\n",
        "spellId < m_spellScripts.size()",
        "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Objects\\Characters\\AI\\CharAI_Skills.cpp",
        457);
      v5 = (int)*(this + 48);
    }
  }
  result = *(CharAISkillScript **)(v5 + 4 * v6);
  if ( result )
    return (CharAISkillScript *)CharAISkillScript::GetInfo(result, 0, a2);
  *a2 = 0.0;
  return result;
}


// ===== 3d7e88 CharAI::AI_SkillInfo(uint,uint,float &) =====
CharAISkillScript *__fastcall CharAI::AI_SkillInfo(CharAI *this, unsigned int a2, unsigned int a3, float *a4)
{
  int v5; // r6
  int v6; // r0
  CharAISkillScript *result; // r0

  v5 = *((_DWORD *)this + 46);
  v6 = *((_DWORD *)this + 45);
  if ( a2 >= (v5 - v6) >> 2 )
  {
    if ( gAssertLevel == 2 )
    {
      dword_0 = 0;
    }
    else if ( gAssertLevel == 1 )
    {
      fprintf(
        (FILE *)&_sF + 2,
        "ASSERT(%s) FAILED: %s:%d\n",
        "skillId < m_skillScripts.size()",
        "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Objects\\Characters\\AI\\CharAI_Skills.cpp",
        439);
      v6 = *((_DWORD *)this + 45);
    }
  }
  result = *(CharAISkillScript **)(v6 + 4 * a2);
  if ( result )
    return (CharAISkillScript *)CharAISkillScript::GetInfo(result, a3, a4);
  *a4 = 0.0;
  return result;
}


// ===== 3d7f60 CharAI::AI_EndSpell(bool) =====
int __fastcall CharAI::AI_EndSpell(CharAI *this, int a2)
{
  int result; // r0
  Character *v5; // r5
  int CurrentFaerieId; // r0
  CMessaging *v7; // r5
  char v8; // r4
  bool v9; // r2
  int Message; // r1

  result = CharStateMachine::SM_IsCasting((CharStateMachine *)(*((_DWORD *)this + 1) + 1276));
  if ( result )
  {
    v5 = *((Character **)this + 1);
    CurrentFaerieId = Character::SG_GetCurrentFaerieId(v5, -1);
    result = Character::GetCharFaery(v5, CurrentFaerieId);
    if ( *(_DWORD *)(result + 28) == 2 )
    {
      if ( *((_BYTE *)this + 208) )
        CharAnimator::ANIM_StopLoop((CharAnimator *)(*((_DWORD *)this + 1) + 1180), 1);
      else
        *((_BYTE *)this + 209) = 1;
      result = GetOnline();
      if ( *(_BYTE *)(result + 5) )
      {
        if ( !a2 )
        {
          v7 = (CMessaging *)CMessaging::Get((CMessaging *)result);
          v8 = *(_BYTE *)(*((_DWORD *)this + 1) + 264);
          Message = CMessage::CreateMessage((CMessage *)"CMsgControllerAction", (const char *)&dword_0 + 1, v9);
          *(_BYTE *)(Message + 84) = v8;
          *(_BYTE *)(Message + 80) = 4;
          *(_WORD *)(Message + 82) = 0;
          return CMessaging::SendMsg(v7, (CMessage *)Message);
        }
      }
    }
  }
  return result;
}


// ===== 3d8038 CharAI::_SpellFocus(void) =====
unsigned int __fastcall CharAI::_SpellFocus(Character **this)
{
  unsigned int result; // r0
  int v3; // r3
  CharAISkillScript *v4; // r0

  result = Character::SG_GetCurrentFaerieId(*(this + 1), -1);
  v3 = (int)*(this + 48);
  if ( result < ((int)*(this + 49) - v3) >> 2 )
  {
    if ( *(_DWORD *)(v3 + 4 * result) )
    {
      v4 = *((CharAISkillScript **)*(this + 48) + Character::SG_GetCurrentFaerieId(*(this + 1), -1));
      return CharAISkillScript::OnPreSkill(v4);
    }
  }
  return result;
}


// ===== 3d808c CharAI::_SkillFocus(void) =====
unsigned int *__fastcall CharAI::_SkillFocus(unsigned int *this)
{
  int v1; // r3
  unsigned int v2; // r2

  v1 = *(this + 45);
  v2 = *(this + 51);
  if ( v2 < (int)(*(this + 46) - v1) >> 2 )
  {
    this = *(unsigned int **)(v1 + 4 * v2);
    if ( this )
      return (unsigned int *)CharAISkillScript::OnPreSkill((CharAISkillScript *)this);
  }
  return this;
}


// ===== 3d80b4 CharAI::AI_IsSpellUsable(void) =====
int __fastcall CharAI::AI_IsSpellUsable(CharAI *this)
{
  int CurrentFaerieId; // r0
  int v4; // r2
  int v5; // r5
  CharAISkillScript *v6; // r0

  if ( CharStateMachine::SM_IsUsingSkill((CharStateMachine *)(*((_DWORD *)this + 1) + 1276))
    || CharStateMachine::SM_IsCasting((CharStateMachine *)(*((_DWORD *)this + 1) + 1276))
    || !CharAI::IsScriptProcessLoaded(this) )
  {
    return 0;
  }
  CurrentFaerieId = Character::SG_GetCurrentFaerieId(*((Character **)this + 1), -1);
  v4 = *((_DWORD *)this + 48);
  v5 = CurrentFaerieId;
  if ( CurrentFaerieId >= (*((_DWORD *)this + 49) - v4) >> 2 )
  {
    if ( gAssertLevel == 2 )
    {
      dword_0 = 0;
    }
    else if ( gAssertLevel == 1 )
    {
      fprintf(
        (FILE *)&_sF + 2,
        "ASSERT(%s) FAILED: %s:%d\n",
        "spellId < (int)m_spellScripts.size()",
        "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Objects\\Characters\\AI\\CharAI_Skills.cpp",
        321);
      v4 = *((_DWORD *)this + 48);
    }
  }
  v6 = *(CharAISkillScript **)(v4 + 4 * v5);
  if ( !v6 )
    return 0;
  else
    return CharAISkillScript::OnSkillCheck_Usable(v6);
}


// ===== 3d81c0 CharAI::AI_BeginSpell(bool) =====
int __fastcall CharAI::AI_BeginSpell(Character **this, int a2)
{
  int CurrentFaerieId; // r5
  int result; // r0
  int v6; // r7
  unsigned int v7; // r0
  CMessaging *v8; // r0
  CMessaging *v9; // r6
  char v10; // r7
  bool v11; // r2
  int v12; // r0
  CMessaging *Online; // r0
  CMessaging *v14; // r6
  char v15; // r4
  bool v16; // r2
  int Message; // r0

  CurrentFaerieId = Character::SG_GetCurrentFaerieId(*(this + 1), -1);
  if ( *(_DWORD *)(Character::GetCharFaery(*(this + 1), CurrentFaerieId) + 28) == 1
    && CharAI::AI_IsSpellActive((CharAI *)this) )
  {
    CharAISkillScript::OnPreSkill(*((CharAISkillScript **)*(this + 48) + CurrentFaerieId));
    Online = (CMessaging *)GetOnline();
    if ( !*((_BYTE *)Online + 5) || a2 )
    {
      return 1;
    }
    else
    {
      v14 = (CMessaging *)CMessaging::Get(Online);
      v15 = *((_BYTE *)*(this + 1) + 264);
      Message = CMessage::CreateMessage((CMessage *)"CMsgControllerAction", (_BYTE *)&dword_0 + 1, v16);
      *(_BYTE *)(Message + 84) = v15;
      *(_BYTE *)(Message + 80) = 3;
      *(_WORD *)(Message + 82) = CurrentFaerieId;
      CMessaging::SendMsg(v14, (CMessage *)Message);
      return 1;
    }
  }
  else
  {
    result = CharAI::AI_IsSpellUsable((CharAI *)this);
    if ( result )
    {
      v6 = (int)*(this + 1);
      *((_BYTE *)this + 208) = 0;
      *((_BYTE *)this + 209) = 0;
      v7 = Character::SG_GetCurrentFaerieId((Character *)v6, -1);
      CharStateMachine::SM_SetCastState((CharStateMachine *)(v6 + 1276), v7, nullptr, 0);
      v8 = (CMessaging *)GetOnline();
      if ( *((_BYTE *)v8 + 5) )
      {
        if ( !a2 )
        {
          v9 = (CMessaging *)CMessaging::Get(v8);
          v10 = *((_BYTE *)*(this + 1) + 264);
          v12 = CMessage::CreateMessage((CMessage *)"CMsgControllerAction", (const char *)&dword_0 + 1, v11);
          *(_BYTE *)(v12 + 84) = v10;
          *(_BYTE *)(v12 + 80) = 3;
          *(_WORD *)(v12 + 82) = CurrentFaerieId;
          CMessaging::SendMsg(v9, (CMessage *)v12);
        }
      }
      return CharStateMachine::SM_IsCasting((Character *)((char *)*(this + 1) + 1276));
    }
  }
  return result;
}


// ===== 3d832c CharAI::AI_CastSpell(void) =====
int __fastcall CharAI::AI_CastSpell(Character **this)
{
  int result; // r0

  result = CharAI::AI_BeginSpell(this, 0);
  if ( result )
  {
    CharAI::AI_EndSpell((CharAI *)this, 0);
    return 1;
  }
  return result;
}


// ===== 3d8358 CharAI::AI_IsSkillUsable(uint) =====
int __fastcall CharAI::AI_IsSkillUsable(CharAI *this, unsigned int a2)
{
  int v4; // r0
  int v6; // r3
  CharAISkillScript *v7; // r0

  if ( CharStateMachine::SM_IsUsingSkill((CharStateMachine *)(*((_DWORD *)this + 1) + 1276)) )
  {
    v4 = *((_DWORD *)this + 1);
    if ( (*(_DWORD *)(v4 + 1312) & 0x8000) == 0 )
      return 0;
  }
  else
  {
    v4 = *((_DWORD *)this + 1);
  }
  if ( CharStateMachine::SM_IsCasting((CharStateMachine *)(v4 + 1276)) || !CharAI::IsScriptProcessLoaded(this) )
    return 0;
  v6 = *((_DWORD *)this + 45);
  if ( a2 >= (*((_DWORD *)this + 46) - v6) >> 2 )
  {
    if ( gAssertLevel == 2 )
    {
      dword_0 = 0;
      return 0;
    }
    if ( gAssertLevel != 1 )
      return 0;
    fprintf(
      (FILE *)&_sF + 2,
      "ASSERT(%s) FAILED: %s:%d\n",
      "skillId < m_skillScripts.size()",
      "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Objects\\Characters\\AI\\CharAI_Skills.cpp",
      181);
    v6 = *((_DWORD *)this + 45);
    if ( a2 >= (*((_DWORD *)this + 46) - v6) >> 2 )
      return 0;
  }
  v7 = *(CharAISkillScript **)(v6 + 4 * a2);
  if ( !v7 )
    return 0;
  return CharAISkillScript::OnSkillCheck_Usable(v7);
}


// ===== 3d8474 CharAI::AI_EndSkill(uint) =====
int __fastcall CharAI::AI_EndSkill(CharAI *this, int a2)
{
  int result; // r0

  result = CharStateMachine::SM_IsUsingSkill((CharStateMachine *)(*((_DWORD *)this + 1) + 1276));
  if ( result )
  {
    result = Character::GetCharSkill(*((Character **)this + 1), a2);
    if ( *(_DWORD *)(result + 72) == 2 )
    {
      if ( *((_BYTE *)this + 208) )
        return CharAnimator::ANIM_StopLoop(*((_DWORD *)this + 1) + 1180, 1);
      else
        *((_BYTE *)this + 209) = 1;
    }
  }
  return result;
}

