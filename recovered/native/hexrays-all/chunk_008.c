// ===== 3a3300 Character::GetFXFootprint(void) =====
int __fastcall Character::GetFXFootprint(Character *this)
{
  int v1; // r2

  v1 = *((_DWORD *)this + 1029);
  if ( v1 < 0 || v1 >= Arrays::CharEffectTable::size )
    return *(_DWORD *)(Arrays::CharEffectTable::members + 12);
  else
    return *(_DWORD *)(Arrays::CharEffectTable::members + 24 * v1 + 12);
}


// ===== 3a3368 Character::GetFXBloodDeath(void) =====
int __fastcall Character::GetFXBloodDeath(Character *this)
{
  int v1; // r2

  v1 = *((_DWORD *)this + 1029);
  if ( v1 < 0 || v1 >= Arrays::CharEffectTable::size )
    return *(_DWORD *)(Arrays::CharEffectTable::members + 4);
  else
    return *(_DWORD *)(Arrays::CharEffectTable::members + 24 * v1 + 4);
}


// ===== 3a33d0 Character::GetFXBlood(void) =====
int __fastcall Character::GetFXBlood(Character *this)
{
  int v1; // r2

  v1 = *((_DWORD *)this + 1029);
  if ( v1 < 0 || v1 >= Arrays::CharEffectTable::size )
    return *(_DWORD *)(Arrays::CharEffectTable::members + 8);
  else
    return *(_DWORD *)(Arrays::CharEffectTable::members + 24 * v1 + 8);
}


// ===== 3a3438 Character::GetAttackDelay(void) =====
int __fastcall Character::GetAttackDelay(Character *this)
{
  int v1; // r4

  v1 = Arrays::AITable::members;
  return *(_DWORD *)(v1 + 68 * Character::GetCharAIId(this) + 4);
}


// ===== 3a346c Character::HasComboAttack(void) =====
bool __fastcall Character::HasComboAttack(Character *this)
{
  int v1; // r5
  int v2; // r3

  v1 = Arrays::CharAnimTable::members;
  v2 = *(_DWORD *)(v1 + 160 * Character::GetCharAnimTableId(this) + 4);
  return v2 >= 0 && v2 < Arrays::AnimTable::size && *(_DWORD *)(Arrays::AnimTable::members + 20 * v2 + 16) == 1;
}


// ===== 3a34f0 Character::GetNumComboAttack(void) =====
int __fastcall Character::GetNumComboAttack(Character *this)
{
  int v1; // r5
  int v2; // r3
  int v3; // r3

  v1 = Arrays::CharAnimTable::members;
  v2 = *(_DWORD *)(v1 + 160 * Character::GetCharAnimTableId(this) + 4);
  if ( v2 >= 0 && v2 < Arrays::AnimTable::size && (v3 = Arrays::AnimTable::members + 20 * v2, *(_DWORD *)(v3 + 16) == 1) )
    return *(_DWORD *)(v3 + 8);
  else
    return 0;
}


// ===== 3a3574 NetStructMemberType<float>::~NetStructMemberType() =====
void NetStructMemberType<float>::~NetStructMemberType()
{
  ;
}


// ===== 3a3578 NetStructInterpolation<float>::~NetStructInterpolation() =====
void NetStructInterpolation<float>::~NetStructInterpolation()
{
  ;
}


// ===== 3a357c SimpleTypeProperty<Point2D<int>>::IsDefaultValue(void *) =====
bool __fastcall SimpleTypeProperty<Point2D<int>>::IsDefaultValue(_DWORD *a1, int a2)
{
  int v2; // r3
  int v4; // r5
  _BOOL4 result; // r0

  v2 = a1[1];
  v4 = a1[9];
  result = (float)*(int *)(a2 + v2) == (float)(int)a1[8];
  if ( (float)*(int *)(a2 + v2) == (float)(int)a1[8] )
    return (float)*(int *)(a2 + v2 + 4) == (float)v4;
  return result;
}


// ===== 3a35f0 SimpleTypeProperty<Point2D<int>>::SetToDefaultValue(void *) =====
_DWORD *__fastcall SimpleTypeProperty<Point2D<int>>::SetToDefaultValue(_DWORD *result, int a2)
{
  _DWORD *v2; // r12

  v2 = (_DWORD *)(a2 + result[1]);
  *v2 = result[8];
  v2[1] = result[9];
  return result;
}


// ===== 3a360c NetStructRangedFloat<16u,-1,1>::TestValue(float const&) =====
bool __fastcall NetStructRangedFloat<16u,-1,1>::TestValue(int a1, float *a2)
{
  _BOOL4 result; // r0

  result = *a2 >= -1.0;
  if ( *a2 >= -1.0 )
    return *a2 <= 1.0;
  return result;
}


// ===== 3a364c NetStructMemberType<float>::GetValue(void) =====
int __fastcall NetStructMemberType<float>::GetValue(int a1)
{
  return a1 + 32;
}


// ===== 3a3654 NetStructRangedFloat<16u,-50000,50000>::TestValue(float const&) =====
bool __fastcall NetStructRangedFloat<16u,-50000,50000>::TestValue(int a1, float *a2)
{
  _BOOL4 result; // r0

  result = *a2 >= -50000.0;
  if ( *a2 >= -50000.0 )
    return *a2 <= 50000.0;
  return result;
}


// ===== 3a3698 NetStructRangedFloat<18u,-200000,200000>::TestValue(float const&) =====
bool __fastcall NetStructRangedFloat<18u,-200000,200000>::TestValue(int a1, float *a2)
{
  _BOOL4 result; // r0

  result = *a2 >= -200000.0;
  if ( *a2 >= -200000.0 )
    return *a2 <= 200000.0;
  return result;
}


// ===== 3a36dc NetStructMemberType<float>::TestValue(float const&) =====
int NetStructMemberType<float>::TestValue()
{
  return 1;
}


// ===== 3a36e4 Character::IsZonable(void) =====
int __fastcall Character::IsZonable(Character *this)
{
  if ( (*(int (__fastcall **)(Character *))(*(_DWORD *)this + 40))(this) || Character::IsFaerie(this) )
    return 0;
  else
    return GameObject::MeetCondition(this);
}


// ===== 3a3724 Character::GetOpacity(void) =====
int __fastcall Character::GetOpacity(Character *this)
{
  return CharProperties::PROPS_GetOpacity((Character *)((char *)this + 1376));
}


// ===== 3a372c Character::GetRotationSpeed(void) =====
int __fastcall Character::GetRotationSpeed(Character *this)
{
  if ( (*((_DWORD *)this + 328) & 0x20) != 0 )
    return -1082130432;
  else
    return CharProperties::PROPS_GetRotationSpeed((Character *)((char *)this + 1376));
}


// ===== 3a374c Character::GetInteractionRadius(void) =====
float __fastcall Character::GetInteractionRadius(Character *this)
{
  return CharAI::AI_GetMeleeRadius((Character *)((char *)this + 968));
}


// ===== 3a3754 Character::IsAvoidingObstacles(void) =====
int __fastcall Character::IsAvoidingObstacles(Character *this)
{
  return CharStateMachine::SM_IsMoving((Character *)((char *)this + 1276), 0);
}


// ===== 3a3764 NetStructRangedFloat<18u,-200000,200000>::~NetStructRangedFloat() =====
_DWORD *__fastcall NetStructRangedFloat<18u,-200000,200000>::~NetStructRangedFloat(_DWORD *a1)
{
  *a1 = &off_963648;
  CustomFree(a1);
  return a1;
}


// ===== 3a3798 NetStructMemberType<float>::~NetStructMemberType() =====
_DWORD *__fastcall NetStructMemberType<float>::~NetStructMemberType(_DWORD *a1)
{
  *a1 = &off_963648;
  CustomFree(a1);
  return a1;
}


// ===== 3a37cc NetStructInterpolation<float>::~NetStructInterpolation() =====
_DWORD *__fastcall NetStructInterpolation<float>::~NetStructInterpolation(_DWORD *a1)
{
  *a1 = off_965DE8;
  CustomFree(a1);
  return a1;
}


// ===== 3a3800 `non-virtual thunk to'NetStructInterpolatedRangedFloat<18u,-200000,200000>::~NetStructInterpolatedRangedFloat() =====
int __fastcall `non-virtual thunk to'NetStructInterpolatedRangedFloat<18u,-200000,200000>::~NetStructInterpolatedRangedFloat(
        int a1)
{
  return NetStructInterpolatedRangedFloat<18u,-200000,200000>::~NetStructInterpolatedRangedFloat(a1 - 36);
}


// ===== 3a3808 NetStructInterpolatedRangedFloat<18u,-200000,200000>::~NetStructInterpolatedRangedFloat() =====
_DWORD *__fastcall NetStructInterpolatedRangedFloat<18u,-200000,200000>::~NetStructInterpolatedRangedFloat(_DWORD *a1)
{
  a1[9] = off_965DE8;
  *a1 = &off_963648;
  CustomFree(a1);
  return a1;
}


// ===== 3a3850 NetStructRangedFloat<16u,-50000,50000>::~NetStructRangedFloat() =====
_DWORD *__fastcall NetStructRangedFloat<16u,-50000,50000>::~NetStructRangedFloat(_DWORD *a1)
{
  *a1 = &off_963648;
  CustomFree(a1);
  return a1;
}


// ===== 3a3884 `non-virtual thunk to'NetStructInterpolatedRangedFloat<16u,-50000,50000>::~NetStructInterpolatedRangedFloat() =====
int __fastcall `non-virtual thunk to'NetStructInterpolatedRangedFloat<16u,-50000,50000>::~NetStructInterpolatedRangedFloat(
        int a1)
{
  return NetStructInterpolatedRangedFloat<16u,-50000,50000>::~NetStructInterpolatedRangedFloat(a1 - 36);
}


// ===== 3a388c NetStructInterpolatedRangedFloat<16u,-50000,50000>::~NetStructInterpolatedRangedFloat() =====
_DWORD *__fastcall NetStructInterpolatedRangedFloat<16u,-50000,50000>::~NetStructInterpolatedRangedFloat(_DWORD *a1)
{
  a1[9] = off_965DE8;
  *a1 = &off_963648;
  CustomFree(a1);
  return a1;
}


// ===== 3a38d4 NetStructRangedFloat<16u,-1,1>::~NetStructRangedFloat() =====
_DWORD *__fastcall NetStructRangedFloat<16u,-1,1>::~NetStructRangedFloat(_DWORD *a1)
{
  *a1 = &off_963648;
  CustomFree(a1);
  return a1;
}


// ===== 3a3908 QE_TalkToNPC::~QE_TalkToNPC() =====
void __fastcall QE_TalkToNPC::~QE_TalkToNPC(QE_TalkToNPC *this)
{
  *(_DWORD *)this = off_95B458;
  CustomFree(this);
}


// ===== 3a393c v2Controller::~v2Controller() =====
void __fastcall v2Controller::~v2Controller(v2Controller *this)
{
  *(_DWORD *)this = off_965F20;
  CustomFree(this);
}


// ===== 3a3970 IStreamBase::readAs<Structs::CharacterProperties>(Structs::CharacterProperties &) =====
int __fastcall IStreamBase::readAs<Structs::CharacterProperties>(int a1, int a2)
{
  int result; // r0
  int v3; // r1

  result = (*(int (__fastcall **)(int, int, int, _DWORD))(*(_DWORD *)a1 + 24))(a1, a2, 900, 0);
  if ( result != 900 || v3 )
  {
    if ( gAssertLevel == 2 )
    {
      dword_0 = 0;
    }
    else if ( gAssertLevel == 1 )
    {
      return fprintf(
               (FILE *)&_sF + 2,
               "ASSERT(%s) FAILED: %s:%d\n",
               "bytesRead == sizeof(T)",
               "..\\..\\project_vs2005\\Game/..\\..\\sources/Utils/IStream.h",
               69);
    }
  }
  return result;
}


// ===== 3a3a20 IStreamBase::readAs<Point3D<float>>(Point3D<float> &) =====
int __fastcall IStreamBase::readAs<Point3D<float>>(int a1, int a2)
{
  int result; // r0
  int v3; // r1

  result = (*(int (__fastcall **)(int, int, int, _DWORD))(*(_DWORD *)a1 + 24))(a1, a2, 12, 0);
  if ( result != 12 || v3 )
  {
    if ( gAssertLevel == 2 )
    {
      dword_0 = 0;
    }
    else if ( gAssertLevel == 1 )
    {
      return fprintf(
               (FILE *)&_sF + 2,
               "ASSERT(%s) FAILED: %s:%d\n",
               "bytesRead == sizeof(T)",
               "..\\..\\project_vs2005\\Game/..\\..\\sources/Utils/IStream.h",
               69);
    }
  }
  return result;
}


// ===== 3a3ad0 IStreamBase::writeAs<Structs::CharacterProperties>(Structs::CharacterProperties const&) =====
int __fastcall IStreamBase::writeAs<Structs::CharacterProperties>(int a1, int a2)
{
  int result; // r0
  int v3; // r1

  result = (*(int (__fastcall **)(int, int, int, _DWORD))(*(_DWORD *)a1 + 28))(a1, a2, 900, 0);
  if ( result != 900 || v3 )
  {
    if ( gAssertLevel == 2 )
    {
      dword_0 = 0;
    }
    else if ( gAssertLevel == 1 )
    {
      return fprintf(
               (FILE *)&_sF + 2,
               "ASSERT(%s) FAILED: %s:%d\n",
               "bytesWritten == sizeof(T)",
               "..\\..\\project_vs2005\\Game/..\\..\\sources/Utils/IStream.h",
               77);
    }
  }
  return result;
}


// ===== 3a3b80 IStreamBase::writeAs<Point3D<float>>(Point3D<float> const&) =====
int __fastcall IStreamBase::writeAs<Point3D<float>>(int a1, int a2)
{
  int result; // r0
  int v3; // r1

  result = (*(int (__fastcall **)(int, int, int, _DWORD))(*(_DWORD *)a1 + 28))(a1, a2, 12, 0);
  if ( result != 12 || v3 )
  {
    if ( gAssertLevel == 2 )
    {
      dword_0 = 0;
    }
    else if ( gAssertLevel == 1 )
    {
      return fprintf(
               (FILE *)&_sF + 2,
               "ASSERT(%s) FAILED: %s:%d\n",
               "bytesWritten == sizeof(T)",
               "..\\..\\project_vs2005\\Game/..\\..\\sources/Utils/IStream.h",
               77);
    }
  }
  return result;
}


// ===== 3a3c30 NetStructMemberType<float>::SetValue(float const&) =====
int __fastcall NetStructMemberType<float>::SetValue(float *a1, float *a2)
{
  int result; // r0

  result = a1[8] == *a2;
  if ( !result )
  {
    a1[8] = *a2;
    return NetStructMember::SetChanged((NetStructMember *)a1);
  }
  return result;
}


// ===== 3a3c64 NetStructRangedFloat<18u,-200000,200000>::Read(NetBitStream &) =====
int __fastcall NetStructRangedFloat<18u,-200000,200000>::Read(int a1, NetBitStream *this)
{
  float v4; // [sp+4h] [bp-4h] BYREF

  v4 = (float)((float)((float)(unsigned int)NetBitStream::ReadU32(this, 0x12u) / 262140.0) * 400000.0) - 200000.0;
  return (*(int (__fastcall **)(int, float *))(*(_DWORD *)a1 + 28))(a1, &v4);
}


// ===== 3a3cc4 NetStructRangedFloat<16u,-50000,50000>::Read(NetBitStream &) =====
int __fastcall NetStructRangedFloat<16u,-50000,50000>::Read(int a1, NetBitStream *this)
{
  float v4; // [sp+4h] [bp-4h] BYREF

  v4 = (float)((float)((float)(unsigned int)NetBitStream::ReadU32(this, 0x10u) / 65535.0) * 100000.0) - 50000.0;
  return (*(int (__fastcall **)(int, float *))(*(_DWORD *)a1 + 28))(a1, &v4);
}


// ===== 3a3d24 NetStructRangedFloat<16u,-1,1>::Read(NetBitStream &) =====
int __fastcall NetStructRangedFloat<16u,-1,1>::Read(int a1, NetBitStream *this)
{
  unsigned int U32; // r0
  float v5; // [sp+4h] [bp-4h] BYREF

  U32 = NetBitStream::ReadU32(this, 0x10u);
  v5 = (float)((float)((float)U32 / 65535.0) + (float)((float)U32 / 65535.0)) - 1.0;
  return (*(int (__fastcall **)(int, float *))(*(_DWORD *)a1 + 28))(a1, &v5);
}


// ===== 3a3d7c NetStructRangedFloat<18u,-200000,200000>::Write(NetBitStream &) =====
int __fastcall NetStructRangedFloat<18u,-200000,200000>::Write(int a1, NetBitStream *a2)
{
  return NetBitStream::WriteU32(
           a2,
           (unsigned int)(float)((float)((float)(*(float *)(a1 + 32) + 200000.0) / 400000.0) * 262140.0),
           0x12u);
}


// ===== 3a3dc4 NetStructRangedFloat<16u,-50000,50000>::Write(NetBitStream &) =====
int __fastcall NetStructRangedFloat<16u,-50000,50000>::Write(int a1, NetBitStream *a2)
{
  return NetBitStream::WriteU32(
           a2,
           (unsigned int)(float)((float)((float)(*(float *)(a1 + 32) + 50000.0) / 100000.0) * 65535.0),
           0x10u);
}


// ===== 3a3e0c NetStructRangedFloat<16u,-1,1>::Write(NetBitStream &) =====
int __fastcall NetStructRangedFloat<16u,-1,1>::Write(int a1, NetBitStream *a2)
{
  return NetBitStream::WriteU32(
           a2,
           (unsigned int)(float)((float)((float)(*(float *)(a1 + 32) + 1.0) * 0.5) * 65535.0),
           0x10u);
}


// ===== 3a3e4c NetStructMemberType<float>::Erase(NetBitStream &) =====
int __fastcall NetStructMemberType<float>::Erase(NetStructMember *a1, NetBitStream *a2)
{
  int v2; // r5
  int result; // r0

  v2 = *((_DWORD *)a1 + 8);
  result = NetStructMember::Load(a1, a2);
  *((_DWORD *)a1 + 8) = v2;
  return result;
}


// ===== 3a3e64 NetStructInterpolation<float>::AddValue(float,uint) =====
int __fastcall NetStructInterpolation<float>::AddValue(NetStructMember *a1, int a2, int a3)
{
  int FrameTime; // r0
  unsigned int v7; // r1
  unsigned int v8; // r8
  int v9; // r9
  unsigned int v10; // r6
  int v11; // r7
  int v12; // r0
  int v13; // r9
  int v14; // r1
  int v15; // r3
  int result; // r0
  int v17; // r12
  unsigned int v18; // r1
  unsigned int v19; // r3
  bool v20; // zf
  unsigned int v21; // r2

  FrameTime = NetStructMember::GetFrameTime(a1);
  v7 = *((_DWORD *)a1 + 49);
  v8 = *((_DWORD *)a1 + 47);
  v9 = FrameTime;
  v10 = v7;
  if ( v7 >= v8 )
  {
    v11 = *((_DWORD *)a1 + 48);
    do
    {
      v12 = v11 / (int)v10--;
      v11 -= v12;
    }
    while ( v8 <= v10 );
    *((_DWORD *)a1 + 48) = v11;
    *((_DWORD *)a1 + 49) = v10;
    v7 = v10;
  }
  else
  {
    v11 = *((_DWORD *)a1 + 48);
  }
  v13 = v9 - a3;
  v14 = v7 + 1;
  *((_DWORD *)a1 + 49) = v14;
  *((_DWORD *)a1 + 48) = v13 + v11;
  v15 = *((_DWORD *)a1 + 46);
  *((_DWORD *)a1 + 50) = (v13 + v11) / v14;
  *((_DWORD *)a1 + 2 * v15 + 1) = a3;
  result = 20;
  *((_DWORD *)a1 + 2 * *((_DWORD *)a1 + 46) + 2) = a2;
  v17 = *((_DWORD *)a1 + 43);
  v18 = *((_DWORD *)a1 + 46) + 1;
  v19 = v18 % 0x14;
  v20 = v17 == v18 % 0x14;
  if ( v17 == v18 % 0x14 )
  {
    v18 = v19 + 1;
    v21 = (3435973837u * (unsigned __int64)(v19 + 1)) >> 32;
  }
  else
  {
    v21 = *((_DWORD *)a1 + 45);
  }
  if ( v20 )
    v21 = v18 - 20 * (v21 >> 4);
  *((_DWORD *)a1 + 46) = v19;
  if ( v20 )
  {
    *((_DWORD *)a1 + 43) = v21;
    *((_DWORD *)a1 + 45) = v21;
    *((_DWORD *)a1 + 44) = v21;
  }
  if ( v19 == v21 )
    *((_DWORD *)a1 + 45) = *((_DWORD *)a1 + 43);
  return result;
}


// ===== 3a3f50 NetStructInterpolatedRangedFloat<18u,-200000,200000>::PostLoad(uint) =====
int __fastcall NetStructInterpolatedRangedFloat<18u,-200000,200000>::PostLoad(int a1, int a2)
{
  return NetStructInterpolation<float>::AddValue((NetStructMember *)(a1 + 36), *(_DWORD *)(a1 + 32), a2);
}


// ===== 3a3f60 NetStructInterpolatedRangedFloat<16u,-50000,50000>::PostLoad(uint) =====
int __fastcall NetStructInterpolatedRangedFloat<16u,-50000,50000>::PostLoad(int a1, int a2)
{
  return NetStructInterpolation<float>::AddValue((NetStructMember *)(a1 + 36), *(_DWORD *)(a1 + 32), a2);
}


// ===== 3a3f70 Arrays::GetMemberIDByString<Arrays::TrophyTable>(char const*) =====
int __fastcall Arrays::GetMemberIDByString<Arrays::TrophyTable>(char *a1)
{
  int v2; // r5
  int v3; // r4
  int v4; // r7

  v2 = Arrays::TrophyTable::size;
  if ( !Arrays::TrophyTable::size )
    return -1;
  v3 = 0;
  v4 = Arrays::TrophyTable::m_memberNames;
  while ( LC_API_STRCMP_0(a1, *(const char **)(v4 + 4 * v3)) )
  {
    if ( ++v3 == v2 )
      return -1;
  }
  return v3;
}


// ===== 3a3fe4 Character::CheckForAllQuestsTrophy(void) =====
void __fastcall Character::CheckForAllQuestsTrophy(Character *this)
{
  int NumQuests; // r6
  int v3; // r4
  int *QuestByID; // r0
  TrophyManager *v5; // r4
  TrophyManager *v6; // r1

  NumQuests = Character::SG_GetNumQuests(this, -1);
  if ( NumQuests )
  {
    v3 = 0;
    while ( 1 )
    {
      QuestByID = (int *)Character::SG_GetQuestByID(this, v3++, -1);
      if ( *QuestByID <= 12 )
        break;
      if ( v3 == NumQuests )
        goto LABEL_5;
    }
  }
  else
  {
LABEL_5:
    v5 = (TrophyManager *)TrophyManager::s_instance;
    v6 = (TrophyManager *)Arrays::GetMemberIDByString<Arrays::TrophyTable>("quest_allcomplete");
    TrophyManager::UnlockTrophy(v5, v6);
  }
}


// ===== 3a4068 Character::RemoveMultiplayerHighlight(void) =====
int __fastcall Character::RemoveMultiplayerHighlight(int this)
{
  int v1; // r4

  v1 = this;
  if ( *(_DWORD *)(this + 5280) )
  {
    this = VisualFXManager::DropAnimatedFX((int)&Singleton<VisualFXManager>::s_inst, (AnimatedFX **)(this + 5280));
    *(_DWORD *)(v1 + 5280) = 0;
  }
  return this;
}


// ===== 3a40b0 Character::DisableSelfFX(void) =====
int __fastcall Character::DisableSelfFX(int this)
{
  if ( *(_DWORD *)(this + 5252) )
    return VisualFXManager::DropAnimatedFX((int)&Singleton<VisualFXManager>::s_inst, (AnimatedFX **)(this + 5252));
  return this;
}


// ===== 3a40e4 Character::DisableStateFX(void) =====
int __fastcall Character::DisableStateFX(int this)
{
  if ( *(_DWORD *)(this + 5260) )
    return VisualFXManager::DropAnimatedFX((int)&Singleton<VisualFXManager>::s_inst, (AnimatedFX **)(this + 5260));
  return this;
}


// ===== 3a4118 Point3D<float>::distance(Point3D<float> const&) =====
float __fastcall Point3D<float>::distance(float *a1, float *a2)
{
  float v2; // r7
  float v3; // r6
  float v4; // r0

  v2 = *a1 - *a2;
  v3 = a1[1] - a2[1];
  v4 = a1[2] - a2[2];
  return sqrtf((float)((float)(v2 * v2) + (float)(v3 * v3)) + (float)(v4 * v4));
}


// ===== 3a41a0 Character::AddMultiplayerHighlight(void) =====
unsigned int *__fastcall Character::AddMultiplayerHighlight(unsigned int *this)
{
  int v1; // r6
  unsigned int *v2; // r5
  unsigned int v3; // r9
  int v4; // r8
  int v5; // r10
  int v6; // r12
  int v7; // r2
  int v8; // r0
  int Animator; // r0
  int v10; // r0

  v1 = *(this + 1320);
  v2 = this;
  if ( !v1 )
  {
    this = (unsigned int *)PlayerManager::GetPlayerByCharacter(
                             (PlayerManager *)dword_99F76C,
                             (const Character *)this,
                             0);
    v3 = *(this + 414);
    if ( v3 <= 3 )
    {
      v4 = Arrays::AnimatedEffectTable::size;
      if ( Arrays::AnimatedEffectTable::size )
      {
        v5 = Arrays::AnimatedEffectTable::m_memberNames;
        while ( 1 )
        {
          this = (unsigned int *)LC_API_STRCMP_0("multiplayer_player01_glow", *(const char **)(v5 + 4 * v1));
          if ( !this )
            break;
          if ( ++v1 == v4 )
            return this;
        }
        if ( v1 != -1 )
        {
          this = (unsigned int *)VisualFXManager::GrabAnimFX(
                                   (VisualFXManager *)&Singleton<VisualFXManager>::s_inst,
                                   v1 + v3,
                                   nullptr);
          v2[1320] = (unsigned int)this;
          if ( this )
          {
            v6 = dword_99F858;
            v7 = dword_99F85C;
            *(this + 13) = Vec3f_Origin;
            *(this + 14) = v6;
            *(this + 15) = v7;
            AnimatedFX::SyncIrrData((int)this, 0);
            AnimatedFX::SetVisible(v2[1320], 0);
            v8 = v2[1320];
            *(_DWORD *)(v8 + 40) = v2;
            AnimatedFX::SyncIrrData(v8, 1);
            Animator = AnimatedFX::GetAnimator((AnimatedFX *)v2[1320]);
            v10 = (*(int (__fastcall **)(int))(*(_DWORD *)Animator + 68))(Animator);
            return (unsigned int *)(*(int (__fastcall **)(int, int))(*(_DWORD *)v10 + 64))(v10, 1);
          }
        }
      }
    }
  }
  return this;
}


// ===== 3a42f4 IsMultiplayerGame(void) =====
bool IsMultiplayerGame()
{
  return *(_BYTE *)(GetOnline() + 5) || PlayerManager::GetNumLocalPlayers((PlayerManager *)dword_99F76C, 1) > 1;
}


// ===== 3a4344 Character::UpdateAIPointers(void) =====
int __fastcall Character::UpdateAIPointers(Character *this)
{
  int result; // r0
  int v3; // r3
  int v4; // r3

  result = CharAI::UpdatePointers((Character *)((char *)this + 968));
  v3 = *((_DWORD *)this + 1321);
  if ( v3 && *(_BYTE *)(v3 + 129) )
    *((_DWORD *)this + 1321) = 0;
  v4 = *((_DWORD *)this + 1299);
  if ( v4 )
  {
    if ( *(_BYTE *)(v4 + 129) )
      *((_DWORD *)this + 1299) = 0;
  }
  return result;
}


// ===== 3a4398 Character::SetRelativeAABB(aabb<float> const&,bool) =====
float __fastcall Character::SetRelativeAABB(float a1, float *a2, int a3)
{
  float v3; // r5
  float v4; // r11
  float v6; // r9
  float v7; // r10
  float v8; // r8
  float v9; // r7
  float v10; // r0

  v3 = *a2;
  *(float *)(LODWORD(a1) + 324) = *a2;
  v4 = a2[1];
  *(float *)(LODWORD(a1) + 328) = v4;
  v6 = a2[2];
  *(float *)(LODWORD(a1) + 332) = v6;
  v7 = a2[3];
  *(float *)(LODWORD(a1) + 336) = v7;
  v8 = a2[4];
  *(float *)(LODWORD(a1) + 340) = v8;
  v9 = a2[5];
  *(float *)(LODWORD(a1) + 344) = v9;
  if ( !a3 )
  {
    v10 = (float)*(int *)(LODWORD(a1) + 4152) * 0.01;
    *(float *)(LODWORD(a1) + 324) = v10 * v3;
    *(float *)(LODWORD(a1) + 328) = v10 * v4;
    *(float *)(LODWORD(a1) + 332) = v10 * v6;
    *(float *)(LODWORD(a1) + 336) = v10 * v7;
    *(float *)(LODWORD(a1) + 340) = v10 * v8;
    *(float *)(LODWORD(a1) + 344) = v10 * v9;
  }
  return GameObject::SetRelativeAABB(a1, LODWORD(a1) + 324);
}


// ===== 3a4470 Character::UpdateStateFX(void) =====
int __fastcall Character::UpdateStateFX(Character *this)
{
  int v2; // r6
  int result; // r0
  int v4; // r7
  int v5; // r6
  _DWORD *v6; // r0
  int v7; // r12
  int v8; // r2
  int Animator; // r0
  int v10; // r0
  int v11; // r0

  v2 = *((_DWORD *)this + 1316);
  result = (*(int (__fastcall **)(Character *))(*(_DWORD *)this + 52))(this);
  if ( result )
    return result;
  if ( v2 > 4 )
    goto LABEL_3;
  result = CharStateMachine::SM_IsStunned((Character *)((char *)this + 1276), 1);
  if ( result && (*((_DWORD *)this + 328) & 0x800) != 0 )
  {
    v5 = 4;
    v4 = *(_DWORD *)(Arrays::DesignSettingsTable::members + 128);
  }
  else
  {
    if ( v2 > 3 )
      goto LABEL_3;
    result = CharStateMachine::SM_IsScared((Character *)((char *)this + 1276), 1);
    if ( result && (*((_DWORD *)this + 328) & 0x400) != 0 )
    {
      v5 = 3;
      v4 = *(_DWORD *)(Arrays::DesignSettingsTable::members + 116);
      goto LABEL_20;
    }
    if ( v2 > 1
      || (result = COERCE_FLOAT(CharProperties::PROPS_GetWalkSpeed((Character *)((char *)this + 1376))) < 1.0) == 0 )
    {
LABEL_3:
      v4 = -1;
LABEL_4:
      v5 = 0;
      goto LABEL_5;
    }
    v5 = 1;
    v4 = *(_DWORD *)(Arrays::DesignSettingsTable::members + 124);
  }
LABEL_20:
  if ( v4 == -1 )
    goto LABEL_4;
LABEL_5:
  if ( *((_DWORD *)this + 1316) != v5 )
  {
    *((_DWORD *)this + 1316) = v5;
    if ( v4 == -1 )
    {
      return VisualFXManager::DropAnimatedFX((int)&Singleton<VisualFXManager>::s_inst, (AnimatedFX **)this + 1315);
    }
    else
    {
      if ( *((_DWORD *)this + 1315) )
        VisualFXManager::DropAnimatedFX((int)&Singleton<VisualFXManager>::s_inst, (AnimatedFX **)this + 1315);
      result = (int)VisualFXManager::GrabAnimFX((VisualFXManager *)&Singleton<VisualFXManager>::s_inst, v4, nullptr);
      *((_DWORD *)this + 1315) = result;
      if ( result )
      {
        *(_DWORD *)(result + 40) = this;
        AnimatedFX::SyncIrrData(result, 1);
        v6 = *((_DWORD **)this + 1315);
        v7 = dword_99F858;
        v8 = dword_99F85C;
        v6[13] = Vec3f_Origin;
        v6[14] = v7;
        v6[15] = v8;
        AnimatedFX::SyncIrrData((int)v6, 0);
        AnimatedFX::SetVisible(*((_DWORD *)this + 1315), 1);
        result = AnimatedFX::GetAnimator(*((AnimatedFX **)this + 1315));
        if ( result )
        {
          Animator = AnimatedFX::GetAnimator(*((AnimatedFX **)this + 1315));
          result = (*(int (__fastcall **)(int))(*(_DWORD *)Animator + 68))(Animator);
          if ( result )
          {
            v10 = AnimatedFX::GetAnimator(*((AnimatedFX **)this + 1315));
            v11 = (*(int (__fastcall **)(int))(*(_DWORD *)v10 + 68))(v10);
            return (*(int (__fastcall **)(int, int))(*(_DWORD *)v11 + 64))(v11, 1);
          }
        }
      }
    }
  }
  return result;
}


// ===== 3a469c Character::UpdateSpotTarget(void) =====
int __fastcall Character::UpdateSpotTarget(int this)
{
  _DWORD *v1; // r4
  int v2; // r1
  int v3; // r2
  AnimatedFX *v4; // r0
  int v5; // r1
  int v6; // r2
  int v7; // r3

  v1 = (_DWORD *)this;
  if ( *(_DWORD *)(this + 5324) )
  {
    if ( *(_BYTE *)(this + 5320) )
    {
      if ( !PFWorld::ValidatePosition(&Singleton<PFWorld>::s_inst, this + 5296, 0) )
      {
LABEL_4:
        v2 = v1[1327];
        v3 = v1[1328];
        this = v1[1329];
        v1[1326] = this;
        v1[1324] = v2;
        v1[1325] = v3;
        return this;
      }
LABEL_9:
      v4 = (AnimatedFX *)v1[1331];
      v5 = v1[1324];
      v6 = v1[1325];
      v7 = v1[1326];
      v1[1327] = v5;
      v1[1328] = v6;
      v1[1329] = v7;
      *((_DWORD *)v4 + 13) = v5;
      *((_DWORD *)v4 + 14) = v6;
      *((_DWORD *)v4 + 15) = v7;
      return AnimatedFX::SyncIrrData(v4, 0);
    }
    VisualFXManager::DropAnimatedFX(
      (VisualFXManager *)&Singleton<VisualFXManager>::s_inst,
      (AnimatedFX **)(this + 5324));
    this = v1[1331];
  }
  else
  {
    if ( !*(_BYTE *)(this + 5320) )
      return this;
    this = VisualFXManager::GrabAnimFX(
             (VisualFXManager *)&Singleton<VisualFXManager>::s_inst,
             *(__int16 *)(this + 5322),
             nullptr);
    v1[1331] = this;
  }
  if ( this )
  {
    if ( !PFWorld::ValidatePosition(&Singleton<PFWorld>::s_inst, v1 + 1324, 0) )
      goto LABEL_4;
    goto LABEL_9;
  }
  return this;
}


// ===== 3a47e8 Character::GetInteractionType(GameObject *) =====
int __fastcall Character::GetInteractionType(Character *this, GameObject *a2)
{
  if ( a2
    && CharAI::AI_IsEnemy((Character *)((char *)this + 968), a2)
    && !(*(int (__fastcall **)(GameObject *))(*(_DWORD *)a2 + 40))(a2) )
  {
    return 8;
  }
  if ( Character::IsSummoned(this) || (*(int (__fastcall **)(Character *))(*(_DWORD *)this + 52))(this) )
    return -1;
  if ( Character::IsMonster(this) )
    return 8;
  else
    return 3;
}


// ===== 3a4870 Character::IsInteractive(GameObject *) =====
int __fastcall Character::IsInteractive(Character *this, GameObject *a2)
{
  if ( (*(int (__fastcall **)(Character *))(*(_DWORD *)this + 52))(this)
    && a2
    && CharAI::AI_IsFriend((Character *)((char *)this + 968), a2)
    && !Character::IsMonster(this) )
  {
    return 1;
  }
  if ( *((_BYTE *)this + 129)
    || !*((_BYTE *)this + 138)
    || Character::IsFaerie(this)
    || Character::IsSummoned(this)
    || (*(int (__fastcall **)(Character *))(*(_DWORD *)this + 52))(this)
    || (*((_DWORD *)this + 328) & 0x2000) == 0 )
  {
    return 0;
  }
  return *((unsigned __int8 *)this + 1045);
}


// ===== 3a4930 Character::INV_DoesMeetRequirements(ItemInstance *) =====
bool __fastcall Character::INV_DoesMeetRequirements(Character *this, ItemInstance *a2)
{
  _DWORD *Item; // r0

  if ( *(_BYTE *)(GetOnline() + 5) && (*(int (__fastcall **)(Character *))(*(_DWORD *)this + 84))(this) || !a2 )
    return 1;
  Item = (_DWORD *)ItemInstance::GetItem(a2);
  return Item[29] <= *((int *)this + 1041) >> 8
      && Item[30] <= *((int *)this + 1171) >> 8
      && Item[31] <= *((int *)this + 1172) >> 8
      && Item[32] <= *((int *)this + 1173) >> 8
      && Item[33] <= *((int *)this + 1174) >> 8;
}


// ===== 3a49f0 Character::IsPlayer(void) =====
bool __fastcall Character::IsPlayer(char **this)
{
  int CharType; // r0
  char *v4; // r4

  CharType = Character::GetCharType((Character *)this);
  if ( CharType )
    return CharType == 1;
  v4 = *(this + 17);
  return v4 == LC_API_STRSTR_0(v4, "PlayerCharacter");
}


// ===== 3a4a3c Character::INV_TransmuteItem(ItemInstance *,bool) =====
int __fastcall Character::INV_TransmuteItem(Character *this, ItemInstance *a2, int a3)
{
  int v6; // r5
  CharProperties *v7; // r8
  int v8; // r11
  int Property; // r5
  ItemInventory *v10; // r9
  TrophyManager *v12; // r4
  int v13; // r0
  unsigned int ItemIndex; // r0

  if ( !a2 )
    return 0;
  v7 = (Character *)((char *)this + 1376);
  v8 = *((_DWORD *)a2 + 21);
  Property = CharProperties::_GetProperty((int)this + 1376, (int)this + 4084, 197);
  v6 = (PyDataConstants::getConstant((PyDataConstants *)dword_99F758, "CharacterDesign", "TransmuteMultiplier")
      * (((v8 << 8) * (Property + 256)) >> 8)) >> 16;
  if ( v6 < 1 )
    v6 = 1;
  if ( !a3 )
  {
    if ( *((__int16 *)a2 + 40) <= 1 )
    {
      v10 = (Character *)((char *)this + 892);
      ItemIndex = ItemInventory::GetItemIndex((Character *)((char *)this + 892), a2);
      ItemInventory::RemoveItem((Character *)((char *)this + 892), ItemIndex);
    }
    else
    {
      ItemInstance::AddQty(a2, -1);
      v10 = (Character *)((char *)this + 892);
    }
    ItemInventory::AddGold(v10, v6);
    CharProperties::PROPS_AddInt(v7, 213, 1);
    if ( PlayerManager::IsLocalPlayer((PlayerManager *)dword_99F76C, this) )
    {
      v12 = (TrophyManager *)TrophyManager::s_instance;
      if ( CharProperties::PROPS_GetInt(v7, 213, 0) >= 300 )
      {
        if ( (*(int (__fastcall **)(Character *))(*(_DWORD *)this + 40))(this) )
        {
          v13 = Arrays::GetMemberIDByString<Arrays::TrophyTable>("gear_transmute");
          TrophyManager::UnlockTrophy(v12, v13);
        }
      }
    }
  }
  return v6;
}


// ===== 3a4bac Character::GetRespawnDelay(void) =====
int __fastcall Character::GetRespawnDelay(Character *this)
{
  if ( *((_BYTE *)this + 5249) )
    return 0;
  else
    return 1000 * (CharProperties::_GetProperty((int)this + 1376, (int)this + 4084, 11) >> 8);
}


// ===== 3a4bec Character::INV_TransmuteItem(uint,bool) =====
int __fastcall Character::INV_TransmuteItem(Character *this, unsigned int a2, bool a3)
{
  ItemInstance *Item; // r0

  Item = (ItemInstance *)ItemInventory::GetItem((Character *)((char *)this + 892), a2);
  return Character::INV_TransmuteItem(this, Item, a3);
}


// ===== 3a4c14 Character::EquipAllSlotsAuto(void) =====
Character *__fastcall Character::EquipAllSlotsAuto(Character *this)
{
  ItemInventory *v1; // r7
  Character *result; // r0
  Character *v4; // r4
  Character *v5; // r6
  Character *v6; // r1
  signed int v7; // r4
  signed int i; // r6
  signed int v9; // r1
  bool v10; // zf

  v1 = (Character *)((char *)this + 892);
  result = (Character *)ItemInventory::GetNumEquipmentSlots((Character *)((char *)this + 892));
  v4 = result;
  if ( (int)result > 0 )
  {
    v5 = nullptr;
    do
    {
      v6 = v5;
      v5 = (Character *)((char *)v5 + 1);
      result = (Character *)(*(int (__fastcall **)(Character *, Character *))(*(_DWORD *)this + 324))(this, v6);
    }
    while ( v4 != v5 );
  }
  v7 = (signed int)v4 - 1;
  if ( v7 >= 0 )
  {
    for ( i = v7; i != -1; --i )
    {
      v9 = i;
      (*(void (__fastcall **)(Character *, signed int))(*(_DWORD *)this + 320))(this, v9);
    }
    do
    {
      result = (Character *)ItemInventory::IsEquipmentSlotTaken(v1, v7);
      if ( !result )
      {
        v10 = v7 == 1;
        if ( v7 != 1 )
          v10 = v7 == 2;
        result = this;
        if ( !v10 )
          result = (Character *)(*(int (__fastcall **)(Character *, signed int))(*(_DWORD *)this + 320))(this, v7);
      }
    }
    while ( v7-- != 0 );
  }
  return result;
}


// ===== 3a4cc0 Character::AddItemInstance(ItemInstance *,bool,bool) =====
int __fastcall Character::AddItemInstance(Character *this, ItemInstance *a2, bool a3, bool a4)
{
  return ItemInventory::AddItemInstance((Character *)((char *)this + 892), a2, a3, a4);
}


// ===== 3a4cc8 `non-virtual thunk to'Character::CanRangeAttack(int &,int &,int &) =====
int __fastcall `non-virtual thunk to'Character::CanRangeAttack(Character *this, int *a2, int *a3, int *a4)
{
  return Character::CanRangeAttack((Character *)((char *)this - 892), a2, a3, a4);
}


// ===== 3a4cd0 Character::CanRangeAttack(int &,int &,int &) =====
int __fastcall Character::CanRangeAttack(Character *this, int *a2, int *a3, int *a4)
{
  if ( *((_DWORD *)this + 1054) == -1 )
    return ItemInventory::CanRangeAttack((Character *)((char *)this + 892), a2, a3, a4);
  *a2 = *((int *)this + 1052) >> 8;
  *a3 = *((int *)this + 1053) >> 8;
  *a4 = *((_DWORD *)this + 1054);
  return 1;
}


// ===== 3a4d34 `non-virtual thunk to'Character::CanRangeAttack(void) =====
int __fastcall `non-virtual thunk to'Character::CanRangeAttack(Character *this)
{
  return Character::CanRangeAttack((Character *)((char *)this - 892));
}


// ===== 3a4d3c Character::CanRangeAttack(void) =====
int __fastcall Character::CanRangeAttack(Character *this)
{
  if ( *((_DWORD *)this + 1054) == -1 )
    return ItemInventory::CanRangeAttack((Character *)((char *)this + 892));
  else
    return 1;
}


// ===== 3a4d5c Character::RaiseEvent(int,void *) =====
int __fastcall Character::RaiseEvent(Character *this, int a2, char *a3)
{
  if ( a2 == 54 )
    return CharProperties::BuffExpired((char *)this + 1376, a3);
  else
    return CharAI::RaiseAIEvent((int)this + 968, a2, a3);
}


// ===== 3a4d78 Character::Interact(GameObject *) =====
MenuManager *__fastcall Character::Interact(Character *this, GameObject *a2)
{
  CharStateMachine *v2; // r6
  MenuManager *result; // r0
  int Loot; // r7
  int v7; // r8
  MenuManager *NumItems; // r0
  MenuManager *v9; // r6
  int v10; // r7
  unsigned int v11; // r8
  MenuManager *Instance; // r0
  RenderFX *HUDRoot; // r10
  int v14; // r0
  const char *v15; // r1
  int v16; // r0
  int v17; // r0
  EventManager *CurrentLevel; // r9
  int v19; // r8
  int v20; // r10
  const Character *v21; // r7
  MenuManager *v22; // r0
  RenderFX *v23; // r5
  int v24; // r0
  Character *v25; // [sp+Ch] [bp-78h]
  _DWORD v26[4]; // [sp+14h] [bp-70h] BYREF
  char v27; // [sp+24h] [bp-60h]
  char v28; // [sp+25h] [bp-5Fh]
  int v29; // [sp+28h] [bp-5Ch]
  int v30; // [sp+2Ch] [bp-58h]
  _BYTE v31[12]; // [sp+30h] [bp-54h] BYREF
  _BYTE v32[4]; // [sp+3Ch] [bp-48h] BYREF
  double v33; // [sp+40h] [bp-44h]
  _BYTE v34[4]; // [sp+48h] [bp-3Ch] BYREF
  double v35; // [sp+4Ch] [bp-38h]
  _BYTE v36[12]; // [sp+54h] [bp-30h] BYREF
  _BYTE v37[4]; // [sp+60h] [bp-24h] BYREF
  double v38; // [sp+64h] [bp-20h]
  _BYTE v39[12]; // [sp+6Ch] [bp-18h] BYREF
  double v40; // [sp+78h] [bp-Ch]

  v2 = (Character *)((char *)this + 1276);
  if ( !CharStateMachine::SM_IsInteracting((Character *)((char *)this + 1276)) )
  {
    CurrentLevel = (EventManager *)Application::GetCurrentLevel((Application *)&Singleton<Application>::s_inst);
    if ( !CurrentLevel )
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
          "level",
          "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Objects\\Characters\\Character.cpp",
          1851);
      }
    }
    v19 = *((__int16 *)this + 2532);
    v20 = *((_DWORD *)this + 25);
    v26[1] = PyDataConstants::getConstant((PyDataConstants *)dword_99F758, "v2QuestObjectiveType", "TalkToNPC");
    v26[0] = off_965E98;
    v28 = 0;
    v27 = 0;
    v26[3] = v20;
    v29 = -1;
    v30 = v19;
    v26[2] = a2;
    EventManager::RaiseAsync(CurrentLevel, (const IEvent *)v26);
    v26[0] = off_95B458;
  }
  result = (MenuManager *)CharStateMachine::SM_SetInteractState(v2, 3, 1, a2, 0);
  if ( !*((_BYTE *)this + 762) )
  {
    Character::RaiseEvent(this, 5, a2);
    if ( Character::IsMerchant(this) )
    {
      result = (MenuManager *)Character::HasLoot(this);
      if ( result )
      {
        if ( a2 )
        {
          ObjectBase::GetHandle((ObjectBase *)v39);
          result = (MenuManager *)ObjectHandle::operator Character *(v39);
          v25 = result;
          if ( result )
          {
            Loot = Character::GetLoot(this);
            v7 = Arrays::MerchantTable::members;
            NumItems = (MenuManager *)ItemInventory::GetNumItems((Character *)((char *)this + 892));
            v9 = NumItems;
            if ( !NumItems )
            {
              v10 = v7 + 20 * Loot;
              if ( *(_DWORD *)(v10 + 12) )
              {
                v11 = 0;
                do
                {
                  ItemInventory::AddLoot(
                    (Character *)((char *)this + 892),
                    *(_DWORD *)((char *)v9 + *(_DWORD *)(v10 + 16) + 8),
                    nullptr,
                    nullptr,
                    -1,
                    0);
                  ++v11;
                  v9 = (MenuManager *)((char *)v9 + 12);
                }
                while ( *(_DWORD *)(v10 + 12) > v11 );
              }
            }
            Instance = (MenuManager *)MenuManager::GetInstance(NumItems);
            HUDRoot = (RenderFX *)MenuManager::GetHUDRoot(Instance);
            v14 = *(_DWORD *)(PlayerManager::GetPlayerByCharacter((PlayerManager *)dword_99F76C, v25, 0) + 1656);
            v37[0] = 0;
            v37[1] = 2;
            v40 = (double)v14;
            v38 = (double)v14;
            RenderFX::InvokeASCallback(HUDRoot, "_root", "openMerchantMenu", (const gameswf::as_value *)v37, 1);
            gameswf::as_value::drop_refs((gameswf::as_value *)v37);
            v15 = *((const char **)this + 17);
            v31[0] = 0;
            v31[1] = 0;
            gameswf::as_value::set_string((gameswf::as_value *)v31, v15);
            v16 = *((_DWORD *)this + 25);
            v32[0] = 0;
            v32[1] = 2;
            v33 = (double)v16;
            v40 = (double)v16;
            v17 = MenuManager::GetInstance((MenuManager *)COERCE_UNSIGNED_INT64((double)v16));
            RenderFX::InvokeASCallback(
              *(RenderFX **)(*(_DWORD *)(v17 + 244) + 312),
              "_root",
              "AdditionnalInfosForMerchant",
              (const gameswf::as_value *)v31,
              2);
            gameswf::as_value::drop_refs((gameswf::as_value *)v32);
            return (MenuManager *)gameswf::as_value::drop_refs((gameswf::as_value *)v31);
          }
        }
      }
    }
    else
    {
      result = (MenuManager *)Character::IsCleaner(this);
      if ( result )
      {
        if ( a2 )
        {
          ObjectBase::GetHandle((ObjectBase *)v36);
          result = (MenuManager *)ObjectHandle::operator Character *(v36);
          v21 = result;
          if ( result )
          {
            v22 = (MenuManager *)MenuManager::GetInstance(result);
            v23 = (RenderFX *)MenuManager::GetHUDRoot(v22);
            v24 = *(_DWORD *)(PlayerManager::GetPlayerByCharacter((PlayerManager *)dword_99F76C, v21, 0) + 1656);
            v34[1] = 2;
            v34[0] = 0;
            v40 = (double)v24;
            v35 = (double)v24;
            RenderFX::InvokeASCallback(v23, "_root", "openCleanerMenu", (const gameswf::as_value *)v34, 1);
            return (MenuManager *)gameswf::as_value::drop_refs((gameswf::as_value *)v34);
          }
        }
      }
    }
  }
  return result;
}


// ===== 3a5184 Character::GetImmunityTimer(int) =====
TimerUtil *__fastcall Character::GetImmunityTimer(Character *this, int a2)
{
  int v4; // r5
  TimerUtil *v5; // r6

  if ( gAssertLevel == 2 )
  {
    dword_0 = 0;
  }
  else if ( gAssertLevel == 1 )
  {
    fprintf(
      (FILE *)&_sF + 2,
      "ASSERT(%s) FAILED: %s:%d\n",
      "damageType > 0 && damageType < Constants::DamageType::count",
      "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Objects\\Characters\\Character.cpp",
      1430);
  }
  v4 = a2 + 1336;
  v5 = *((TimerUtil **)this + v4);
  if ( !v5 )
  {
    v5 = (TimerUtil *)operator new(8u, 0);
    TimerUtil::TimerUtil(v5);
    *((_DWORD *)this + v4) = v5;
  }
  return v5;
}


// ===== 3a5248 Character::CanRespawn(void) =====
int __fastcall Character::CanRespawn(Character *this)
{
  CharAI::GroupInfo *v3; // r0

  if ( *((_BYTE *)this + 5249) || CharProperties::_GetProperty((int)this + 1376, (int)this + 4084, 11) <= 0 )
    return 0;
  v3 = *((CharAI::GroupInfo **)this + 255);
  if ( v3 )
    return CharAI::GroupInfo::CanRespawn(v3, *((Character **)this + 243));
  else
    return 1;
}


// ===== 3a52a4 Character::CanUpdate(void) =====
int __fastcall Character::CanUpdate(Character *this)
{
  int v1; // r6
  int v3; // r5

  v1 = *((_DWORD *)this + 182);
  if ( v1 )
    *(_BYTE *)(*(_DWORD *)(v1 + 8) + 512) = 0;
  if ( !*(_BYTE *)(GetOnline() + 5) || !(*(int (__fastcall **)(Character *))(*(_DWORD *)this + 84))(this) )
  {
    if ( v1 )
    {
      v3 = *((_DWORD *)this + 262);
      if ( v3 != *(_DWORD *)(PlayerManager::GetLocalPlayer((PlayerManager *)dword_99F76C, 0, 1) + 1632)
        && (*(_DWORD *)(*(_DWORD *)(*((_DWORD *)this + 182) + 8) + 280) || *((_BYTE *)this + 764))
        && !ObjectBase::TestCullingBeforeUpdate(this, (char *)this + 300)
        && !*((_BYTE *)this + 5248) )
      {
        return 0;
      }
    }
    if ( (*(int (__fastcall **)(Character *))(*(_DWORD *)this + 52))(this)
      && !*((_BYTE *)this + 128)
      && !Character::CanRespawn(this) )
    {
      return 0;
    }
  }
  if ( !v1 || !*((_BYTE *)this + 128) )
    return 1;
  *(_BYTE *)(*(_DWORD *)(v1 + 8) + 512) = 1;
  return 1;
}


// ===== 3a53e0 Character::GetAnimStance(void) =====
char *__fastcall Character::GetAnimStance(Character *this)
{
  char *v2; // r4
  ItemInventory *v4; // r4

  if ( !(*(int (__fastcall **)(Character *))(*(_DWORD *)this + 40))(this) )
    goto LABEL_2;
  v4 = (Character *)((char *)this + 892);
  if ( ItemInventory::HasStaff(v4) )
  {
    v2 = (char *)&dword_0 + 3;
  }
  else if ( ItemInventory::HasBow(v4) )
  {
    v2 = &byte_4;
  }
  else if ( ItemInventory::IsDualWielding(v4) )
  {
    v2 = (char *)&dword_0 + 2;
  }
  else if ( ItemInventory::HasTwoHander(v4, 0) )
  {
    v2 = (char *)&dword_0 + 1;
  }
  else
  {
    if ( ItemInventory::HasMainHandWeapon(v4) )
    {
LABEL_2:
      v2 = nullptr;
      goto LABEL_3;
    }
    v2 = &byte_5;
  }
LABEL_3:
  if ( (int)v2 >= PyDataConstants::getConstant((PyDataConstants *)dword_99F758, "AnimStances", "COUNT_IPHONE") )
    return nullptr;
  else
    return v2;
}


// ===== 3a54b4 Character::GetCharUniqueAnimSetId(void) =====
int __fastcall Character::GetCharUniqueAnimSetId(Character *this)
{
  int CharAnimTableId; // r4

  CharAnimTableId = Character::GetCharAnimTableId(this);
  return Character::GetCharSkillListId(this) | (CharAnimTableId << 8);
}


// ===== 3a54d4 Character::GetCharModelName(void) =====
int __fastcall Character::GetCharModelName(Character **this)
{
  int CharModelId; // r5
  Device *v3; // r0
  Character *v5; // r6
  int CurrentFaerieId; // r0
  int v7; // r2

  CharModelId = Character::GetCharModelId((Character *)this);
  if ( CharModelId == -1 )
    return 0;
  if ( Character::IsFaerie((Character *)this) )
  {
    v5 = *(this + 262);
    if ( v5 )
    {
      CurrentFaerieId = Character::SG_GetCurrentFaerieId(v5, -1);
      CharModelId = *(_DWORD *)(Character::GetCharFaery(v5, CurrentFaerieId) + 12);
    }
LABEL_5:
    if ( CharModelId >= 0 && CharModelId < Arrays::ModelDict::size )
      return *(_DWORD *)(Arrays::ModelDict::members + 12 * CharModelId + 8);
    return 0;
  }
  v3 = (Device *)(*((int (__fastcall **)(Character **))*this + 10))(this);
  if ( !v3
    || Device::IsHighPerformance(v3)
    || PlayerManager::IsLocalPlayer((PlayerManager *)dword_99F76C, (const Character *)this) )
  {
    goto LABEL_5;
  }
  v7 = *((__int16 *)this + 2532);
  if ( (unsigned int)(v7 - 290) <= 2 )
    return *(_DWORD *)(Arrays::ModelDict::members + 908);
  if ( (unsigned int)(v7 - 325) > 2 )
  {
    if ( (unsigned int)(v7 - 263) <= 2 )
      return *(_DWORD *)(Arrays::ModelDict::members + 932);
    if ( gAssertLevel == 2 )
    {
      dword_0 = 0;
    }
    else if ( gAssertLevel == 1 )
    {
      fprintf(
        (FILE *)&_sF + 2,
        "ASSERT(%s) FAILED: %s:%d\n",
        "false",
        "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Objects\\Characters\\Character.cpp",
        1191);
    }
    goto LABEL_5;
  }
  return *(_DWORD *)(Arrays::ModelDict::members + 920);
}


// ===== 3a56a4 Character::GetClassName(void) =====
int __fastcall Character::GetClassName(Character *this)
{
  Character *v2; // r0
  StringManager *v3; // r4
  int v4; // r5
  int v5; // r3

  if ( Character::SG_GetPlayerClass(this) == -1 )
    return StringManager::getString((StringManager *)dword_99F760, *((_DWORD *)this + 1027));
  v2 = this;
  v3 = (StringManager *)dword_99F760;
  v4 = Arrays::CharacterTable::members;
  v5 = v4 + 900 * Character::SG_GetPlayerClass(v2);
  return StringManager::getString(v3, *(_DWORD *)(v5 + 24));
}


// ===== 3a5720 std::string::compare(char const*) =====
int __fastcall std::string::compare(std::string *this, const char *a2)
{
  signed int v4; // r0
  char *M_data; // r3
  char *M_finish; // r5
  signed int v7; // r4
  signed int v8; // r5
  size_t v9; // r2
  int result; // r0

  v4 = LC_API_STRLEN_0(a2);
  M_data = this->_M_start_of_storage._M_data;
  M_finish = this->_M_finish;
  v7 = v4;
  v8 = M_finish - M_data;
  if ( v4 >= v8 )
    v9 = v8;
  else
    v9 = v4;
  result = memcmp(M_data, a2, v9);
  if ( !result )
  {
    if ( v8 < v7 )
      return -1;
    else
      return v8 > v7;
  }
  return result;
}


// ===== 3a5784 Character::GetPreSetAIState(void) =====
int __fastcall Character::GetPreSetAIState(Character *this)
{
  std::string *v1; // r4
  int result; // r0

  if ( *((_DWORD *)this + 1271) == *((_DWORD *)this + 1272) )
    return 3;
  v1 = (std::string *)((char *)this + 5068);
  result = std::string::compare((std::string *)((char *)this + 5068), "Limbus");
  if ( !result )
    return result;
  if ( std::string::compare(v1, "PreSpawn") )
    return 3;
  else
    return 17;
}


// ===== 3a57f4 Character::GetLeftFootPosition(void) =====
Character *__fastcall Character::GetLeftFootPosition(Character *this, GameObject *a2)
{
  char *TargetPosition; // r0
  VisualObject *v5; // r0
  _DWORD *SpecificNode; // r1
  int v7; // r3
  int v8; // r1
  _DWORD v10[4]; // [sp+4h] [bp-10h] BYREF

  TargetPosition = GameObject::GetTargetPosition(a2);
  *(_DWORD *)this = *(_DWORD *)TargetPosition;
  *((_DWORD *)this + 1) = *((_DWORD *)TargetPosition + 1);
  *((_DWORD *)this + 2) = *((_DWORD *)TargetPosition + 2);
  v5 = *((VisualObject **)a2 + 182);
  if ( v5 )
  {
    SpecificNode = (_DWORD *)VisualObject::GetSpecificNode(v5, "Bip01_L_Foot");
    if ( SpecificNode )
    {
      glitch::scene::ISceneNode::getAbsolutePosition(v10, SpecificNode);
      v7 = v10[2];
      v8 = v10[0];
      *((_DWORD *)this + 1) = v10[1];
      *((_DWORD *)this + 2) = v7;
      *(_DWORD *)this = v8;
    }
  }
  return this;
}


// ===== 3a5874 Character::GetRightFootPosition(void) =====
Character *__fastcall Character::GetRightFootPosition(Character *this, GameObject *a2)
{
  char *TargetPosition; // r0
  VisualObject *v5; // r0
  _DWORD *SpecificNode; // r1
  int v7; // r3
  int v8; // r1
  _DWORD v10[4]; // [sp+4h] [bp-10h] BYREF

  TargetPosition = GameObject::GetTargetPosition(a2);
  *(_DWORD *)this = *(_DWORD *)TargetPosition;
  *((_DWORD *)this + 1) = *((_DWORD *)TargetPosition + 1);
  *((_DWORD *)this + 2) = *((_DWORD *)TargetPosition + 2);
  v5 = *((VisualObject **)a2 + 182);
  if ( v5 )
  {
    SpecificNode = (_DWORD *)VisualObject::GetSpecificNode(v5, "Bip01_R_Foot");
    if ( SpecificNode )
    {
      glitch::scene::ISceneNode::getAbsolutePosition(v10, SpecificNode);
      v7 = v10[2];
      v8 = v10[0];
      *((_DWORD *)this + 1) = v10[1];
      *((_DWORD *)this + 2) = v7;
      *(_DWORD *)this = v8;
    }
  }
  return this;
}


// ===== 3a58f4 Character::SetInitialPosition(Point3D<float> const&) =====
int __fastcall Character::SetInitialPosition(_DWORD *a1, _DWORD *a2)
{
  int result; // r0
  int v4; // [sp+14h] [bp-8h] BYREF

  a1[1300] = *a2;
  a1[1301] = a2[1];
  a1[1302] = a2[2];
  result = PFWorld::GetFloorHeightAt(&Singleton<PFWorld>::s_inst, a1 + 1300, &v4, 0, 0, 0, 0);
  if ( result )
    a1[1302] = v4;
  return result;
}


// ===== 3a5974 Character::Disabled(void) =====
int __fastcall Character::Disabled(Character *this)
{
  GameObject::Disabled(this);
  return Character::DisableSelfFX(this);
}


// ===== 3a598c Character::Enabled(void) =====
// attributes: thunk
int __fastcall Character::Enabled(Character *this)
{
  return GameObject::Enabled(this);
}


// ===== 3a5990 Character::HasPotion(void) =====
bool __fastcall Character::HasPotion(Character *this)
{
  return ItemInventory::GetNumPotions((Character *)((char *)this + 892)) > 0;
}


// ===== 3a59ac Character::Revive(GameObject *,bool) =====
void __fastcall Character::Revive(Character *this, GameObject *a2, int a3)
{
  int Online; // r0
  int v6; // r12
  int v7; // lr
  float v8; // r6
  float v9[2]; // [sp+10h] [bp-14h] BYREF
  int v10; // [sp+18h] [bp-Ch]
  int v11; // [sp+1Ch] [bp-8h] BYREF

  if ( *((_BYTE *)this + 5193) )
    Character::RaiseEvent(this, 3, nullptr);
  *((_BYTE *)this + 5192) = 1;
  *((_BYTE *)this + 5193) = 0;
  Character::_InitHpMp(this);
  *((_BYTE *)this + 280) = 0;
  if ( *(_BYTE *)(GetOnline() + 5) )
  {
    *((_DWORD *)this + 68) = -1;
    *((_DWORD *)this + 69) = 0;
  }
  if ( a3 )
    Character::InitPhysicalObject(this);
  if ( (*(int (__fastcall **)(Character *))(*(_DWORD *)this + 40))(this) )
  {
    Online = GetOnline();
    v6 = *(unsigned __int8 *)(Online + 5);
    if ( !*(_BYTE *)(Online + 5) )
    {
      v7 = *((_DWORD *)this + 1311);
      v8 = *((float *)this + 1310);
      v9[0] = *((float *)this + 1309);
      v9[1] = v8;
      v11 = v7;
      v10 = v7;
      PFWorld::GetFloorHeightAt((int)&Singleton<PFWorld>::s_inst, v9, (int)&v11, v6, (_DWORD *)v6, v6, v6);
      v10 = v11;
      GameObject::SetPosition(this, v9, 1);
    }
  }
  CharAI::UpdateAllSkills((Character *)((char *)this + 968));
}


// ===== 3a5ae4 Character::DropLoot(GameObject *) =====
int __fastcall Character::DropLoot(Character *this, GameObject *a2)
{
  ItemObject *Loot; // r0
  bool v6; // [sp+4h] [bp-8h]

  Loot = (ItemObject *)Character::GetLoot(this);
  return ItemObject::DropLootTable(Loot, (int)this, a2, (const GameObject *)0xFFFFFFFF, 0, v6);
}


// ===== 3a5b18 Character::Kill(GameObject *,bool) =====
int __fastcall Character::Kill(Character *this, GameObject *a2, int a3)
{
  int result; // r0
  CharProperties *v7; // r8
  _BOOL4 v8; // r11
  GameObject *v9; // r10
  Character *v10; // r7
  Character *v11; // r0
  Character *v12; // r0
  TrophyManager *v13; // r7
  int v14; // r0
  Character *v15; // r0
  Character *v16; // r2
  int v17; // r11
  char *v18; // r3
  int v19; // r12
  int v20; // r8
  int v21; // r4
  CharProperties *v22; // r0
  TrophyManager *v23; // r4
  int v24; // r0
  int v25; // r0
  int v26; // r0
  int v27; // r0
  int v28; // r0
  int v29; // r0
  int v30; // [sp+Ch] [bp-A8h]
  int v31; // [sp+Ch] [bp-A8h]
  int v32; // [sp+Ch] [bp-A8h]
  EventManager *CurrentLevel; // [sp+14h] [bp-A0h]
  char *v34; // [sp+18h] [bp-9Ch]
  char *v35; // [sp+18h] [bp-9Ch]
  _DWORD v36[4]; // [sp+2Ch] [bp-88h] BYREF
  char v37; // [sp+3Ch] [bp-78h]
  char v38; // [sp+3Dh] [bp-77h]
  int v39; // [sp+40h] [bp-74h]
  int v40; // [sp+44h] [bp-70h]
  _DWORD v41[4]; // [sp+48h] [bp-6Ch] BYREF
  char v42; // [sp+58h] [bp-5Ch]
  char v43; // [sp+59h] [bp-5Bh]
  int v44; // [sp+5Ch] [bp-58h]
  int v45; // [sp+60h] [bp-54h]
  _DWORD v46[4]; // [sp+64h] [bp-50h] BYREF
  char v47; // [sp+74h] [bp-40h]
  char v48; // [sp+75h] [bp-3Fh]
  int v49; // [sp+78h] [bp-3Ch]
  char *v50; // [sp+7Ch] [bp-38h]
  _DWORD v51[4]; // [sp+80h] [bp-34h] BYREF
  char v52; // [sp+90h] [bp-24h]
  char v53; // [sp+91h] [bp-23h]
  int v54; // [sp+94h] [bp-20h]
  int v55; // [sp+98h] [bp-1Ch]
  _BYTE v56[12]; // [sp+9Ch] [bp-18h] BYREF
  float v57; // [sp+A8h] [bp-Ch] BYREF
  Character *v58; // [sp+ACh] [bp-8h] BYREF

  result = (*(int (__fastcall **)(Character *))(*(_DWORD *)this + 52))(this);
  if ( result )
    return result;
  v7 = (Character *)((char *)this + 1376);
  *((_BYTE *)this + 5193) = 1;
  CharProperties::PROPS_Set((Character *)((char *)this + 1376), 36, 0);
  if ( (*(int (__fastcall **)(Character *))(*(_DWORD *)this + 40))(this) && !a3 )
  {
    CharProperties::PROPS_AddInt((Character *)((char *)this + 1376), 25, 1);
    if ( PlayerManager::IsLocalPlayer((PlayerManager *)dword_99F76C, this) )
    {
      v22 = (Character *)((char *)this + 1376);
      v23 = (TrophyManager *)TrophyManager::s_instance;
      if ( CharProperties::PROPS_GetInt(v22, 25, 0) == 10 )
      {
        v26 = Arrays::GetMemberIDByString<Arrays::TrophyTable>("quest_died_10_times");
        TrophyManager::UnlockTrophy(v23, v26);
      }
      else if ( CharProperties::PROPS_GetInt(v7, 25, 0) == 50 )
      {
        v29 = Arrays::GetMemberIDByString<Arrays::TrophyTable>("quest_died_50_times");
        TrophyManager::UnlockTrophy(v23, v29);
      }
      else if ( CharProperties::PROPS_GetInt(v7, 25, 0) == 100 )
      {
        v24 = Arrays::GetMemberIDByString<Arrays::TrophyTable>("quest_died_100_times");
        TrophyManager::UnlockTrophy(v23, v24);
      }
    }
    result = GetOnline();
    if ( *(_BYTE *)(result + 5) )
      return PlayerManager::GetLocalPlayer((PlayerManager *)dword_99F76C, 0, 1);
    return result;
  }
  result = Application::GetCurrentLevel((Application *)&Singleton<Application>::s_inst);
  if ( !*(_DWORD *)(result + 336) )
    result = Character::DropLoot(this, a2);
  if ( !a2 )
  {
    if ( !a3 )
      goto LABEL_35;
    return result;
  }
  if ( a3 )
    return result;
  *((_DWORD *)this + 1299) = a2;
  v8 = a2 == this;
  v9 = a2;
  while ( a3 < CharAI::AI_GetAggroCount((Character *)((char *)this + 968)) )
  {
    v58 = nullptr;
    v57 = 0.0;
    CharAI::AI_GetAggroEntry((Character *)((char *)this + 968), a3, &v58, &v57);
    v10 = v58;
    if ( !v58 )
      goto LABEL_25;
    v11 = *((Character **)v58 + 1333);
    if ( v11 )
      v58 = *((Character **)v58 + 1333);
    else
      v11 = v58;
    Character::RaiseEvent(v11, 4, this);
    if ( !v58 || !(*(int (__fastcall **)(Character *))(*(_DWORD *)v58 + 40))(v58) )
      goto LABEL_25;
    v12 = v58;
    if ( this == *((Character **)v58 + 1321) )
    {
      *((_DWORD *)v58 + 1321) = 0;
      v12 = v58;
    }
    CharProperties::PROPS_AddInt((Character *)((char *)v12 + 1376), 23, 1);
    CharProperties::PROPS_AddInt((Character *)((char *)v58 + 1376), 24, 1);
    if ( v9 == v10 )
      v8 = 1;
    if ( PlayerManager::IsLocalPlayer((PlayerManager *)dword_99F76C, v58) )
    {
      v13 = (TrophyManager *)TrophyManager::s_instance;
      if ( CharProperties::PROPS_GetInt((Character *)((char *)v58 + 1376), 23, 0) == 100 )
      {
        v27 = Arrays::GetMemberIDByString<Arrays::TrophyTable>("killed_100");
        TrophyManager::UnlockTrophy(v13, v27);
        ++a3;
      }
      else if ( CharProperties::PROPS_GetInt((Character *)((char *)v58 + 1376), 23, 0) == 500 )
      {
        v28 = Arrays::GetMemberIDByString<Arrays::TrophyTable>("killed_500");
        TrophyManager::UnlockTrophy(v13, v28);
        ++a3;
      }
      else if ( CharProperties::PROPS_GetInt((Character *)((char *)v58 + 1376), 23, 0) == 1000 )
      {
        v25 = Arrays::GetMemberIDByString<Arrays::TrophyTable>("killed_1000");
        TrophyManager::UnlockTrophy(v13, v25);
        ++a3;
      }
      else
      {
        if ( CharProperties::PROPS_GetInt((Character *)((char *)v58 + 1376), 23, 0) != 2000 )
          goto LABEL_25;
        v14 = Arrays::GetMemberIDByString<Arrays::TrophyTable>("killed_2000");
        TrophyManager::UnlockTrophy(v13, v14);
        ++a3;
      }
    }
    else
    {
LABEL_25:
      ++a3;
    }
  }
  a2 = v9;
  if ( v8 )
  {
    v15 = (Character *)(*(int (__fastcall **)(_DWORD))(**((_DWORD **)this + 1299) + 36))(*((_DWORD *)this + 1299));
    if ( v15 )
    {
      ObjectBase::GetHandle((ObjectBase *)v56);
      v15 = (Character *)ObjectHandle::operator Character *(v56);
    }
    Character::DistributeXP(v15, this, v16);
  }
LABEL_35:
  result = (*(int (__fastcall **)(Character *))(*(_DWORD *)this + 84))(this);
  if ( !result && !*((_BYTE *)this + 5348) )
  {
    CurrentLevel = (EventManager *)Application::GetCurrentLevel((Application *)&Singleton<Application>::s_inst);
    if ( !CurrentLevel )
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
          "level",
          "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Objects\\Characters\\Character.cpp",
          723);
      }
    }
    v17 = *((_DWORD *)this + 25);
    v30 = *((__int16 *)this + 2532);
    v51[1] = PyDataConstants::getConstant((PyDataConstants *)dword_99F758, "v2QuestObjectiveType", "KillXEnemies");
    v51[3] = v17;
    v51[0] = off_969A18;
    v55 = v30;
    v51[2] = a2;
    v52 = 0;
    v53 = 0;
    v54 = -1;
    EventManager::RaiseAsync(CurrentLevel, (const IEvent *)v51);
    v18 = (char *)*((__int16 *)this + 2532);
    v51[0] = off_95B458;
    v34 = v18;
    v31 = *((_DWORD *)this + 25);
    v46[1] = PyDataConstants::getConstant((PyDataConstants *)dword_99F758, "v2QuestObjectiveType", "ClearEnemies");
    v46[0] = off_969A00;
    v46[3] = v31;
    v46[2] = a2;
    v50 = v34;
    v47 = 0;
    v48 = 0;
    v49 = -1;
    result = EventManager::RaiseAsync(CurrentLevel, (const IEvent *)v46);
    v19 = *((__int16 *)this + 2533);
    v46[0] = off_95B458;
    if ( v19 != -1 )
    {
      v35 = *((char **)this + 25);
      v32 = v19;
      v41[1] = PyDataConstants::getConstant(
                 (PyDataConstants *)dword_99F758,
                 "v2QuestObjectiveType",
                 "KillEnemyTemplate");
      v41[3] = v35;
      v41[0] = off_9699E8;
      v45 = v32;
      v41[2] = a2;
      v42 = 0;
      v43 = 0;
      v44 = -1;
      EventManager::RaiseAsync(CurrentLevel, (const IEvent *)v41);
      v41[0] = off_95B458;
      v20 = *((__int16 *)this + 2533);
      v21 = *((_DWORD *)this + 25);
      v36[1] = PyDataConstants::getConstant(
                 (PyDataConstants *)dword_99F758,
                 "v2QuestObjectiveType",
                 "ClearEnemyTemplate");
      v36[2] = a2;
      v36[3] = v21;
      v38 = 0;
      v39 = -1;
      v36[0] = off_9699D0;
      v40 = v20;
      v37 = 0;
      return EventManager::RaiseAsync(CurrentLevel, (const IEvent *)v36);
    }
  }
  return result;
}


// ===== 3a6208 `non-virtual thunk to'Character::Deserialize(IStreamBase *) =====
VisualObject *__fastcall `non-virtual thunk to'Character::Deserialize(VisualObject **this, IStreamBase *a2)
{
  return Character::Deserialize(this - 9, a2);
}


// ===== 3a6210 Character::Deserialize(IStreamBase *) =====
VisualObject *__fastcall Character::Deserialize(VisualObject **this, IStreamBase *a2)
{
  char v4; // r9
  CharStateMachine *v5; // r10
  VisualObject *result; // r0
  int v7; // r3
  char CanRespawn; // r0
  char v9; // r0
  int v10; // [sp+4h] [bp-10h] BYREF
  unsigned int v11; // [sp+8h] [bp-Ch] BYREF
  GameObject *v12; // [sp+Fh] [bp-5h] BYREF

  if ( Character::IsMonster((Character *)this) )
  {
    result = (VisualObject *)Application::GetCurrentLevel((Application *)&Singleton<Application>::s_inst);
    if ( *((_BYTE *)result + 243) )
      return result;
  }
  CharProperties::PROPS_RemoveAllBuffs((CharProperties *)(this + 344));
  GameObject::Deserialize((GameObject *)this, a2);
  IStreamBase::readAs<int>(a2, &v11);
  if ( (*((int (__fastcall **)(VisualObject **))*this + 10))(this) )
  {
    (*((void (__fastcall **)(VisualObject **, int))*this + 16))(this, 1);
  }
  else
  {
    IStreamBase::readAs<Structs::CharacterProperties>(a2, this + 571);
    IStreamBase::readAs<Structs::CharacterProperties>(a2, this + 1021);
  }
  IStreamBase::readAs<Point3D<float>>(a2, this + 88);
  IStreamBase::readAs<Point3D<float>>(a2, this + 91);
  IStreamBase::readAs<bool>(a2, &v12);
  IStreamBase::readAs<Point3D<float>>(a2, this + 1306);
  IStreamBase::readAs<Point3D<float>>(a2, this + 1309);
  if ( *(this + 255) )
  {
    v10 = 0;
    IStreamBase::readAs<int>(a2, &v10);
    *((_DWORD *)*(this + 255) + 9) = v10;
    IStreamBase::readAs<bool>(a2, (char *)*(this + 255) + 40);
    IStreamBase::readAs<bool>(a2, (char *)*(this + 255) + 41);
  }
  if ( *((_BYTE *)this + 5193) )
  {
    v4 = (char)v12;
    if ( !(_BYTE)v12 )
    {
      v5 = (CharStateMachine *)(this + 319);
      Character::Revive((Character *)this, nullptr, 1);
      CharStateMachine::SM_SetIdleState((CharStateMachine *)(this + 319), 0);
      *((_BYTE *)*(this + 222) + 8) = 0;
      v4 = (char)v12;
      goto LABEL_10;
    }
  }
  else
  {
    v4 = (char)v12;
    if ( (_BYTE)v12 )
    {
      CharProperties::PROPS_Set((CharProperties *)(this + 344), 36, *((unsigned __int8 *)this + 5193));
      v4 = (char)v12;
    }
  }
  v5 = (CharStateMachine *)(this + 319);
LABEL_10:
  *((_BYTE *)this + 5193) = v4;
  CharAI::AI_ScriptCleanUp((CharAI *)(this + 242));
  CharAI::AI_ScriptInit((CharAI *)(this + 242));
  if ( v11 > 0x11 )
    goto LABEL_40;
  if ( ((1 << v11) & 0x1005) != 0 )
  {
    if ( !CharStateMachine::SM_IsInLimbus(v5) )
    {
      CanRespawn = Character::CanRespawn((Character *)this);
      CharStateMachine::SM_SetLimbusState(v5, CanRespawn);
    }
    *((_BYTE *)this + 5193) = 1;
    goto LABEL_15;
  }
  if ( ((1 << v11) & 0x20002) != 0 )
  {
    if ( !CharStateMachine::SM_IsInPreSpawn(v5) )
      CharStateMachine::SM_SetPreSpawnState(v5);
  }
  else
  {
LABEL_40:
    if ( *((_BYTE *)this + 5193) )
    {
      *((_BYTE *)this + 5193) = 1;
      CharProperties::PROPS_Set((CharProperties *)(this + 344), 36, 0);
      CharAI::AI_SetDead((CharAI *)(this + 242));
      v9 = Character::CanRespawn((Character *)this);
      CharStateMachine::SM_SetLimbusState(v5, v9);
    }
    else
    {
      if ( !*(this + 183) )
        Character::InitPhysicalObject((Character *)this);
      CharStateMachine::SM_SetIdleState(v5, 0);
    }
  }
LABEL_15:
  CharAI::AI_SetTarget((CharAI *)(this + 242), nullptr, 0);
  CharAI::AI_SyncLastTarget((CharAI *)(this + 242));
  if ( Character::IsMonster((Character *)this)
    || (*((int (__fastcall **)(VisualObject **))*this + 10))(this)
    && *(_BYTE *)(Application::GetCurrentLevel((Application *)&Singleton<Application>::s_inst) + 242) )
  {
    GameObject::SetPosition((GameObject *)this);
    GameObject::SetRotation(this, this + 1303);
  }
  else
  {
    GameObject::GetTargetPosition((GameObject *)this);
    GameObject::SetPosition((GameObject *)this);
    GameObject::SetRotation(this, this + 91);
  }
  result = *(this + 182);
  if ( result )
    result = (VisualObject *)VisualObject::Sync(result);
  v7 = (int)*(this + 184);
  if ( v7 )
    return (VisualObject *)(*(int (__fastcall **)(_DWORD))(*(_DWORD *)v7 + 8))(*(this + 184));
  return result;
}


// ===== 3a65bc `non-virtual thunk to'Character::Serialize(IStreamBase *) =====
int __fastcall `non-virtual thunk to'Character::Serialize(Character *this, IStreamBase *a2)
{
  return Character::Serialize((Character *)((char *)this - 36), a2);
}


// ===== 3a65c4 Character::Serialize(IStreamBase *) =====
int __fastcall Character::Serialize(Character *this, IStreamBase *a2)
{
  int result; // r0
  int v5; // r3
  int v6; // [sp+0h] [bp-8h] BYREF
  int State; // [sp+4h] [bp-4h] BYREF

  GameObject::Serialize(this, a2);
  State = CharStateMachine::SM_GetState((Character *)((char *)this + 1276));
  IStreamBase::writeAs<int>(a2, &State);
  if ( !(*(int (__fastcall **)(Character *))(*(_DWORD *)this + 40))(this) )
  {
    IStreamBase::writeAs<Structs::CharacterProperties>(a2, (char *)this + 2284);
    IStreamBase::writeAs<Structs::CharacterProperties>(a2, (char *)this + 4084);
  }
  IStreamBase::writeAs<Point3D<float>>(a2, (char *)this + 352);
  IStreamBase::writeAs<Point3D<float>>(a2, (char *)this + 364);
  IStreamBase::writeAs<bool>(a2, (char *)this + 5193);
  IStreamBase::writeAs<Point3D<float>>(a2, (char *)this + 5224);
  result = IStreamBase::writeAs<Point3D<float>>(a2, (char *)this + 5236);
  v5 = *((_DWORD *)this + 255);
  if ( v5 )
  {
    v6 = *(_DWORD *)(v5 + 36);
    IStreamBase::writeAs<int>(a2, &v6);
    IStreamBase::writeAs<bool>(a2, *((_DWORD *)this + 255) + 40);
    return IStreamBase::writeAs<bool>(a2, *((_DWORD *)this + 255) + 41);
  }
  return result;
}


// ===== 3a66bc SimpleTypeProperty<Point2D<int>>::SetDefaultValueFromString(char const*) =====
void __fastcall SimpleTypeProperty<Point2D<int>>::SetDefaultValueFromString(int a1, const char *a2)
{
  *(_DWORD *)(a1 + 36) = 0;
  *(_DWORD *)(a1 + 32) = 0;
  StrToObj(a2, (int *)(a1 + 32));
}


// ===== 3a66d8 SimpleTypeProperty<Point2D<int>>::FromString(void *,char const*) =====
void __fastcall SimpleTypeProperty<Point2D<int>>::FromString(int a1, int a2, const char *a3)
{
  int *v3; // r3

  v3 = (int *)(a2 + *(_DWORD *)(a1 + 4));
  *v3 = 0;
  v3[1] = 0;
  StrToObj(a3, v3);
}


// ===== 3a66f8 Character::Clean(void) =====
void __fastcall Character::Clean(AnimatedFX **this)
{
  AnimatedFX **v1; // r10
  int v3; // r1
  int v4; // r4
  AnimatedFX **v5; // r1
  void *v6; // r0
  void *v7; // r0
  int v8; // r3
  int v9; // r3

  v1 = this + 1312;
  VisualFXManager::DropAnimatedFX((int)&Singleton<VisualFXManager>::s_inst, this + 1313);
  VisualFXManager::DropAnimatedFX((int)&Singleton<VisualFXManager>::s_inst, v1 + 3);
  v3 = (int)*(this + 1317);
  if ( v3 )
  {
    v4 = 0;
    while ( 1 )
    {
      v5 = (AnimatedFX **)(v3 + v4);
      v4 += 4;
      VisualFXManager::DropAnimatedFX((int)&Singleton<VisualFXManager>::s_inst, v5);
      if ( v4 == 36 )
        break;
      v3 = (int)*(this + 1317);
    }
    v6 = *(this + 1317);
    if ( v6 )
    {
      CustomFree(v6);
      *(this + 1317) = nullptr;
    }
  }
  VisualFXManager::DropAnimatedFX((int)&Singleton<VisualFXManager>::s_inst, v1 + 7);
  Character::RemoveMultiplayerHighlight((Character *)this);
  v7 = *(this + 1336);
  if ( v7 )
    CustomFree(v7);
  if ( *((_BYTE *)this + 1272) )
    CharAnimator::DecAnimSetUsers((CharAnimator *)(this + 295));
  v8 = (int)*(this + 1338);
  if ( v8 )
  {
    (*(void (__fastcall **)(_DWORD))(*(_DWORD *)v8 + 4))(*(this + 1338));
    *(this + 1338) = nullptr;
  }
  v9 = (int)*(this + 1339);
  if ( v9 )
  {
    (*(void (__fastcall **)(_DWORD))(*(_DWORD *)v9 + 28))(*(this + 1339));
    *(this + 1339) = nullptr;
  }
}


// ===== 3a681c NetStructInterpolatedRangedFloat<18u,-200000,200000>::NetStructInterpolatedRangedFloat(float) =====
int __fastcall NetStructInterpolatedRangedFloat<18u,-200000,200000>::NetStructInterpolatedRangedFloat(int a1, float a2)
{
  *(_DWORD *)(a1 + 4) = 18;
  *(_DWORD *)(a1 + 20) = -1;
  *(_DWORD *)(a1 + 16) = -1;
  *(_QWORD *)(a1 + 8) = 0;
  *(_BYTE *)(a1 + 28) = 0;
  *(_DWORD *)a1 = &off_965DB8;
  *(_DWORD *)(a1 + 24) = 0;
  if ( a2 != *(float *)(a1 + 32) )
  {
    *(float *)(a1 + 32) = a2;
    NetStructMember::SetChanged((NetStructMember *)a1);
  }
  *(_DWORD *)(a1 + 36) = off_965DE8;
  *(_DWORD *)a1 = off_965D88;
  *(_DWORD *)(a1 + 204) = 0;
  *(_DWORD *)(a1 + 224) = 40;
  *(_DWORD *)(a1 + 200) = 0;
  *(_DWORD *)(a1 + 208) = 0;
  *(_DWORD *)(a1 + 212) = 0;
  *(_DWORD *)(a1 + 216) = 0;
  *(_DWORD *)(a1 + 220) = 0;
  *(_DWORD *)(a1 + 228) = 0;
  *(_DWORD *)(a1 + 232) = 0;
  *(_DWORD *)(a1 + 236) = 0;
  LC_API_MEMSET_0((void *)(a1 + 40), 0, 0xA0u);
  *(_DWORD *)a1 = off_965D48;
  *(_DWORD *)(a1 + 36) = off_965D78;
  return a1;
}


// ===== 3a6920 NetStructInterpolatedRangedFloat<16u,-50000,50000>::NetStructInterpolatedRangedFloat(float) =====
int __fastcall NetStructInterpolatedRangedFloat<16u,-50000,50000>::NetStructInterpolatedRangedFloat(int a1, float a2)
{
  *(_DWORD *)(a1 + 4) = 16;
  *(_DWORD *)(a1 + 20) = -1;
  *(_DWORD *)(a1 + 16) = -1;
  *(_QWORD *)(a1 + 8) = 0;
  *(_BYTE *)(a1 + 28) = 0;
  *(_DWORD *)a1 = &off_965DB8;
  *(_DWORD *)(a1 + 24) = 0;
  if ( a2 != *(float *)(a1 + 32) )
  {
    *(float *)(a1 + 32) = a2;
    NetStructMember::SetChanged((NetStructMember *)a1);
  }
  *(_DWORD *)(a1 + 36) = off_965DE8;
  *(_DWORD *)a1 = off_965E38;
  *(_DWORD *)(a1 + 204) = 0;
  *(_DWORD *)(a1 + 224) = 40;
  *(_DWORD *)(a1 + 200) = 0;
  *(_DWORD *)(a1 + 208) = 0;
  *(_DWORD *)(a1 + 212) = 0;
  *(_DWORD *)(a1 + 216) = 0;
  *(_DWORD *)(a1 + 220) = 0;
  *(_DWORD *)(a1 + 228) = 0;
  *(_DWORD *)(a1 + 232) = 0;
  *(_DWORD *)(a1 + 236) = 0;
  LC_API_MEMSET_0((void *)(a1 + 40), 0, 0xA0u);
  *(_DWORD *)a1 = off_965DF8;
  *(_DWORD *)(a1 + 36) = off_965E28;
  return a1;
}


// ===== 3a6a24 Character::NetStructCharacter::NetStructCharacter(void) =====
Character::NetStructCharacter *__fastcall Character::NetStructCharacter::NetStructCharacter(
        Character::NetStructCharacter *this)
{
  float v2; // r0
  float v3; // r0
  bool v4; // zf
  char *v5; // r8
  NetStructMember *v6; // r8
  bool v7; // zf
  NetStructMember *v8; // r1
  bool v9; // zf
  int (**v10)(); // r7
  NetStructMember *v11; // r7
  bool v12; // zf
  NetStructMember *v13; // r11
  int v14; // r1
  int v15; // r2
  NetStructMember *v17; // [sp+1Ch] [bp-10h]
  NetStructMember *v18; // [sp+20h] [bp-Ch]

  NetStruct::NetStruct(this);
  *(_DWORD *)this = off_965ED0;
  NetStructInterpolatedRangedFloat<18u,-200000,200000>::NetStructInterpolatedRangedFloat((char *)this + 304, 0);
  NetStructInterpolatedRangedFloat<18u,-200000,200000>::NetStructInterpolatedRangedFloat((char *)this + 552, 0);
  NetStructInterpolatedRangedFloat<16u,-50000,50000>::NetStructInterpolatedRangedFloat((char *)this + 800, 0);
  *((_QWORD *)this + 132) = 0;
  *((_DWORD *)this + 263) = 16;
  *((_DWORD *)this + 262) = &off_965DB8;
  v2 = *((float *)this + 270);
  *((_DWORD *)this + 267) = -1;
  *((_BYTE *)this + 1076) = 0;
  *((_DWORD *)this + 266) = -1;
  *((_DWORD *)this + 268) = 0;
  if ( v2 != 0.0 )
  {
    *((_DWORD *)this + 270) = 0;
    NetStructMember::SetChanged((Character::NetStructCharacter *)((char *)this + 1048));
  }
  *((_QWORD *)this + 137) = 0;
  *((_DWORD *)this + 273) = 16;
  *((_DWORD *)this + 262) = off_965E68;
  v3 = *((float *)this + 280);
  *((_DWORD *)this + 277) = -1;
  *((_BYTE *)this + 1116) = 0;
  *((_DWORD *)this + 272) = &off_965DB8;
  *((_DWORD *)this + 276) = -1;
  *((_DWORD *)this + 278) = 0;
  if ( v3 != 0.0 )
  {
    *((_DWORD *)this + 280) = 0;
    NetStructMember::SetChanged((Character::NetStructCharacter *)((char *)this + 1088));
  }
  v4 = *((_DWORD *)this + 290) == 0;
  v5 = nullptr;
  *((_QWORD *)this + 142) = 0;
  *((_DWORD *)this + 272) = off_965E68;
  if ( v4 )
    v5 = (char *)this + 1120;
  *((_DWORD *)this + 283) = 32;
  *((_DWORD *)this + 287) = -1;
  *((_DWORD *)this + 282) = &off_9636A0;
  *((_DWORD *)this + 286) = -1;
  *((_DWORD *)this + 288) = 0;
  *((_BYTE *)this + 1156) = 0;
  if ( v4 )
  {
    v6 = (NetStructMember *)(v5 + 8);
  }
  else
  {
    v6 = (Character::NetStructCharacter *)((char *)this + 1128);
    *((_DWORD *)this + 290) = 0;
    NetStructMember::SetChanged((Character::NetStructCharacter *)((char *)this + 1128));
  }
  v7 = *((_DWORD *)this + 300) == 0;
  v8 = nullptr;
  *((_QWORD *)this + 147) = 0;
  if ( v7 )
    v8 = (Character::NetStructCharacter *)((char *)this + 1168);
  *((_DWORD *)this + 282) = &off_965858;
  *((_DWORD *)this + 293) = 32;
  *((_DWORD *)this + 297) = -1;
  *((_DWORD *)this + 292) = &off_9636A0;
  *((_DWORD *)this + 296) = -1;
  *((_DWORD *)this + 298) = 0;
  *((_BYTE *)this + 1196) = 0;
  if ( v7 )
  {
    v18 = v8;
  }
  else
  {
    v18 = (Character::NetStructCharacter *)((char *)this + 1168);
    *((_DWORD *)this + 300) = 0;
    NetStructMember::SetChanged((Character::NetStructCharacter *)((char *)this + 1168));
  }
  v9 = *((_DWORD *)this + 310) == 0;
  v10 = &off_963618;
  *((_QWORD *)this + 152) = 0;
  *((_DWORD *)this + 302) = &off_963618;
  if ( v9 )
    v10 = (int (**)())((char *)this + 1200);
  *((_DWORD *)this + 292) = &off_965858;
  *((_DWORD *)this + 303) = 16;
  *((_DWORD *)this + 307) = -1;
  *((_DWORD *)this + 306) = -1;
  *((_DWORD *)this + 308) = 0;
  *((_BYTE *)this + 1236) = 0;
  if ( v9 )
  {
    v11 = (NetStructMember *)(v10 + 2);
  }
  else
  {
    v11 = (Character::NetStructCharacter *)((char *)this + 1208);
    *((_DWORD *)this + 310) = 0;
    NetStructMember::SetChanged((Character::NetStructCharacter *)((char *)this + 1208));
  }
  v12 = *((_BYTE *)this + 1277) == 0;
  v13 = nullptr;
  *((_QWORD *)this + 157) = 0;
  *((_DWORD *)this + 302) = &off_963730;
  if ( v12 )
    v13 = (Character::NetStructCharacter *)((char *)this + 1248);
  *((_DWORD *)this + 313) = 1;
  *((_DWORD *)this + 317) = -1;
  *((_DWORD *)this + 312) = &off_963700;
  *((_DWORD *)this + 316) = -1;
  *((_DWORD *)this + 318) = 0;
  *((_BYTE *)this + 1276) = 0;
  if ( v12 )
  {
    v17 = v13;
  }
  else
  {
    v17 = (Character::NetStructCharacter *)((char *)this + 1248);
    *((_BYTE *)this + 1277) = 0;
    NetStructMember::SetChanged((Character::NetStructCharacter *)((char *)this + 1248));
  }
  v14 = *((unsigned __int8 *)this + 1309);
  *((_QWORD *)this + 161) = 0;
  *((_DWORD *)this + 312) = &off_9636D0;
  *((_DWORD *)this + 321) = 1;
  *((_DWORD *)this + 325) = -1;
  *((_DWORD *)this + 320) = &off_963700;
  *((_DWORD *)this + 324) = -1;
  *((_DWORD *)this + 326) = 0;
  *((_BYTE *)this + 1308) = 0;
  if ( v14 )
  {
    *((_BYTE *)this + 1309) = 0;
    NetStructMember::SetChanged((Character::NetStructCharacter *)((char *)this + 1280));
  }
  v15 = *((unsigned __int8 *)this + 1341);
  *((_QWORD *)this + 165) = 0;
  *((_DWORD *)this + 320) = &off_9636D0;
  *((_DWORD *)this + 329) = 1;
  *((_DWORD *)this + 333) = -1;
  *((_DWORD *)this + 328) = &off_963700;
  *((_DWORD *)this + 332) = -1;
  *((_DWORD *)this + 334) = 0;
  *((_BYTE *)this + 1340) = 0;
  if ( v15 )
  {
    *((_BYTE *)this + 1341) = 0;
    NetStructMember::SetChanged((Character::NetStructCharacter *)((char *)this + 1312));
  }
  *((_DWORD *)this + 328) = &off_9636D0;
  NetStruct::DeclareMember(this, (Character::NetStructCharacter *)((char *)this + 304));
  NetStruct::DeclareMember(this, (Character::NetStructCharacter *)((char *)this + 552));
  NetStruct::DeclareMember(this, (Character::NetStructCharacter *)((char *)this + 800));
  NetStruct::DeclareMember(this, (Character::NetStructCharacter *)((char *)this + 1048));
  NetStruct::DeclareMember(this, (Character::NetStructCharacter *)((char *)this + 1088));
  NetStruct::DeclareMember(this, v6);
  NetStruct::DeclareMember(this, v18);
  NetStruct::DeclareMember(this, v11);
  NetStruct::DeclareMember(this, v17);
  NetStruct::DeclareMember(this, (Character::NetStructCharacter *)((char *)this + 1280));
  NetStruct::DeclareMember(this, (Character::NetStructCharacter *)((char *)this + 1312));
  return this;
}


// ===== 3a6f0c Character::PopulateOutgoingNetStruct(bool) =====
int __fastcall Character::PopulateOutgoingNetStruct(Character *this, int a2)
{
  int v4; // r1
  int v5; // r1
  int v6; // r3
  float v7; // r10
  char *v8; // r8
  int v9; // r3
  int v10; // r3
  int v11; // r3
  int v12; // r3
  int v13; // r3
  int v14; // r3
  int State; // r3
  int v16; // r3
  int v17; // r3
  int v18; // r2
  int v19; // r3
  int v20; // r3
  int result; // r0
  int v22; // r3
  int v23; // r3
  int v24; // r3
  float v25; // [sp+4h] [bp-4E0h]
  _UNKNOWN **v26; // [sp+8h] [bp-4DCh] BYREF
  _DWORD v27[54]; // [sp+28h] [bp-4BCh] BYREF
  _UNKNOWN **v28; // [sp+100h] [bp-3E4h] BYREF
  _DWORD v29[54]; // [sp+120h] [bp-3C4h] BYREF
  _UNKNOWN **v30; // [sp+1F8h] [bp-2ECh] BYREF
  _DWORD v31[54]; // [sp+218h] [bp-2CCh] BYREF
  _DWORD v32[2]; // [sp+2F0h] [bp-1F4h] BYREF
  __int64 v33; // [sp+2F8h] [bp-1ECh]
  int v34; // [sp+300h] [bp-1E4h]
  int v35; // [sp+304h] [bp-1E0h]
  int v36; // [sp+308h] [bp-1DCh]
  char v37; // [sp+30Ch] [bp-1D8h]
  int v38; // [sp+310h] [bp-1D4h] BYREF
  _DWORD v39[2]; // [sp+318h] [bp-1CCh] BYREF
  __int64 v40; // [sp+320h] [bp-1C4h]
  int v41; // [sp+328h] [bp-1BCh]
  int v42; // [sp+32Ch] [bp-1B8h]
  int v43; // [sp+330h] [bp-1B4h]
  char v44; // [sp+334h] [bp-1B0h]
  int v45; // [sp+338h] [bp-1ACh] BYREF
  _DWORD v46[2]; // [sp+340h] [bp-1A4h] BYREF
  __int64 v47; // [sp+348h] [bp-19Ch]
  int v48; // [sp+350h] [bp-194h]
  int v49; // [sp+354h] [bp-190h]
  int v50; // [sp+358h] [bp-18Ch]
  char v51; // [sp+35Ch] [bp-188h]
  int v52; // [sp+360h] [bp-184h] BYREF
  _DWORD v53[2]; // [sp+368h] [bp-17Ch] BYREF
  __int64 v54; // [sp+370h] [bp-174h]
  int v55; // [sp+378h] [bp-16Ch]
  int v56; // [sp+37Ch] [bp-168h]
  int v57; // [sp+380h] [bp-164h]
  char v58; // [sp+384h] [bp-160h]
  int v59; // [sp+388h] [bp-15Ch] BYREF
  _DWORD v60[2]; // [sp+390h] [bp-154h] BYREF
  __int64 v61; // [sp+398h] [bp-14Ch]
  int v62; // [sp+3A0h] [bp-144h]
  int v63; // [sp+3A4h] [bp-140h]
  int v64; // [sp+3A8h] [bp-13Ch]
  char v65; // [sp+3ACh] [bp-138h]
  int v66; // [sp+3B0h] [bp-134h] BYREF
  _DWORD v67[2]; // [sp+3B8h] [bp-12Ch] BYREF
  __int64 v68; // [sp+3C0h] [bp-124h]
  int v69; // [sp+3C8h] [bp-11Ch]
  int v70; // [sp+3CCh] [bp-118h]
  int v71; // [sp+3D0h] [bp-114h]
  char v72; // [sp+3D4h] [bp-110h]
  int v73; // [sp+3D8h] [bp-10Ch] BYREF
  _DWORD v74[2]; // [sp+3E0h] [bp-104h] BYREF
  __int64 v75; // [sp+3E8h] [bp-FCh]
  int v76; // [sp+3F0h] [bp-F4h]
  int v77; // [sp+3F4h] [bp-F0h]
  int v78; // [sp+3F8h] [bp-ECh]
  char v79; // [sp+3FCh] [bp-E8h]
  float v80[2]; // [sp+400h] [bp-E4h] BYREF
  _DWORD v81[2]; // [sp+408h] [bp-DCh] BYREF
  __int64 v82; // [sp+410h] [bp-D4h]
  int v83; // [sp+418h] [bp-CCh]
  int v84; // [sp+41Ch] [bp-C8h]
  int v85; // [sp+420h] [bp-C4h]
  char v86; // [sp+424h] [bp-C0h]
  float v87[2]; // [sp+428h] [bp-BCh] BYREF
  _DWORD v88[2]; // [sp+430h] [bp-B4h] BYREF
  __int64 v89; // [sp+438h] [bp-ACh]
  int v90; // [sp+440h] [bp-A4h]
  int v91; // [sp+444h] [bp-A0h]
  int v92; // [sp+448h] [bp-9Ch]
  char v93; // [sp+44Ch] [bp-98h]
  float v94[2]; // [sp+450h] [bp-94h] BYREF
  _DWORD v95[2]; // [sp+458h] [bp-8Ch] BYREF
  __int64 v96; // [sp+460h] [bp-84h]
  int v97; // [sp+468h] [bp-7Ch]
  int v98; // [sp+46Ch] [bp-78h]
  int v99; // [sp+470h] [bp-74h]
  char v100; // [sp+474h] [bp-70h]
  float v101[2]; // [sp+478h] [bp-6Ch] BYREF
  _DWORD v102[2]; // [sp+480h] [bp-64h] BYREF
  __int64 v103; // [sp+488h] [bp-5Ch]
  int v104; // [sp+490h] [bp-54h]
  int v105; // [sp+494h] [bp-50h]
  int v106; // [sp+498h] [bp-4Ch]
  char v107; // [sp+49Ch] [bp-48h]
  _BYTE v108[3]; // [sp+49Dh] [bp-47h] BYREF
  _DWORD v109[2]; // [sp+4A0h] [bp-44h] BYREF
  __int64 v110; // [sp+4A8h] [bp-3Ch]
  int v111; // [sp+4B0h] [bp-34h]
  int v112; // [sp+4B4h] [bp-30h]
  int v113; // [sp+4B8h] [bp-2Ch]
  char v114; // [sp+4BCh] [bp-28h]
  _BYTE v115[3]; // [sp+4BDh] [bp-27h] BYREF
  _DWORD v116[2]; // [sp+4C0h] [bp-24h] BYREF
  __int64 v117; // [sp+4C8h] [bp-1Ch]
  int v118; // [sp+4D0h] [bp-14h]
  int v119; // [sp+4D4h] [bp-10h]
  int v120; // [sp+4D8h] [bp-Ch]
  char v121; // [sp+4DCh] [bp-8h]
  _BYTE v122[3]; // [sp+4DDh] [bp-7h] BYREF

  NetStructInterpolatedRangedFloat<18u,-200000,200000>::NetStructInterpolatedRangedFloat(&v30, *((_DWORD *)this + 88));
  (*(void (__fastcall **)(char *, _DWORD *))(*((_DWORD *)this + 1422) + 28))((char *)this + 5688, v31);
  v4 = *((_DWORD *)this + 89);
  v31[1] = off_965DE8;
  v30 = &off_963648;
  NetStructInterpolatedRangedFloat<18u,-200000,200000>::NetStructInterpolatedRangedFloat(&v28, v4);
  (*(void (__fastcall **)(char *, _DWORD *))(*((_DWORD *)this + 1484) + 28))((char *)this + 5936, v29);
  v5 = *((_DWORD *)this + 90);
  v29[1] = off_965DE8;
  v28 = &off_963648;
  NetStructInterpolatedRangedFloat<16u,-50000,50000>::NetStructInterpolatedRangedFloat(&v26, v5);
  (*(void (__fastcall **)(char *, _DWORD *))(*((_DWORD *)this + 1546) + 28))((char *)this + 6184, v27);
  v6 = *((unsigned __int8 *)this + 437);
  v27[1] = off_965DE8;
  v26 = &off_963648;
  v7 = *((float *)this + 110);
  v25 = *((float *)this + 111);
  if ( !v6
    || Application::IsLevelPaused((Application *)&Singleton<Application>::s_inst, 0)
    && PlayerManager::IsLocalPlayer((PlayerManager *)dword_99F76C, this) )
  {
    v81[1] = 16;
    v82 = 0;
    v84 = -1;
    v86 = 0;
    v81[0] = &off_965DB8;
    v83 = -1;
    v85 = 0;
    if ( v87[0] != 0.0 )
    {
      v87[0] = 0.0;
      NetStructMember::SetChanged((NetStructMember *)v81);
    }
    v81[0] = off_965E68;
    (*(void (__fastcall **)(char *, float *))(*((_DWORD *)this + 1608) + 28))((char *)this + 6432, v87);
    v81[0] = &off_963648;
    v74[1] = 16;
    v75 = 0;
    v77 = -1;
    v79 = 0;
    v74[0] = &off_965DB8;
    v76 = -1;
    v78 = 0;
    if ( v80[0] != 0.0 )
    {
      v80[0] = 0.0;
      NetStructMember::SetChanged((NetStructMember *)v74);
    }
    v8 = (char *)this + 6464;
    v74[0] = off_965E68;
    (*(void (__fastcall **)(char *, float *))(*((_DWORD *)this + 1618) + 28))((char *)this + 6472, v80);
    v74[0] = &off_963648;
  }
  else
  {
    v95[1] = 16;
    v96 = 0;
    v100 = 0;
    v99 = 0;
    v98 = -1;
    v95[0] = &off_965DB8;
    v97 = -1;
    if ( v7 != v101[0] )
    {
      v101[0] = v7;
      NetStructMember::SetChanged((NetStructMember *)v95);
    }
    v95[0] = off_965E68;
    (*(void (__fastcall **)(char *, float *))(*((_DWORD *)this + 1608) + 28))((char *)this + 6432, v101);
    v95[0] = &off_963648;
    v89 = 0;
    v88[1] = 16;
    v91 = -1;
    v93 = 0;
    v88[0] = &off_965DB8;
    v90 = -1;
    v92 = 0;
    if ( v25 != v94[0] )
    {
      v94[0] = v25;
      NetStructMember::SetChanged((NetStructMember *)v88);
    }
    v8 = (char *)this + 6464;
    v88[0] = off_965E68;
    (*(void (__fastcall **)(char *, float *))(*((_DWORD *)this + 1618) + 28))((char *)this + 6472, v94);
    v88[0] = &off_963648;
  }
  if ( *((int *)this + 1058) <= 0 || (*(int (__fastcall **)(Character *))(*(_DWORD *)this + 52))(this) )
  {
    v68 = 0;
    v67[1] = 32;
    v70 = -1;
    v67[0] = &off_9636A0;
    v69 = -1;
    v71 = 0;
    v72 = 0;
    if ( v73 )
    {
      v73 = 0;
      NetStructMember::SetChanged((NetStructMember *)v67);
    }
    v9 = *((_DWORD *)this + 1628);
    v67[0] = &off_965858;
    (*(void (__fastcall **)(char *, int *))(v9 + 28))(v8 + 48, &v73);
    v10 = *((_DWORD *)this + 1299);
    v67[0] = &off_963648;
    if ( v10 )
    {
      v11 = *(_DWORD *)(v10 + 264);
      v61 = 0;
      v60[1] = 32;
      v63 = -1;
      v65 = 0;
      v60[0] = &off_9636A0;
      v62 = -1;
      v64 = 0;
      if ( v11 != v66 )
      {
        v66 = v11;
        NetStructMember::SetChanged((NetStructMember *)v60);
      }
      v60[0] = &off_965858;
      (*(void (__fastcall **)(char *, int *))(*((_DWORD *)this + 1638) + 28))((char *)this + 6552, &v66);
      v12 = *((_DWORD *)this + 1299);
      v60[0] = &off_963648;
      v13 = (*(int (__fastcall **)(int))(*(_DWORD *)v12 + 36))(v12);
      if ( v13 )
        v13 = (*(int (__fastcall **)(_DWORD))(**((_DWORD **)this + 1299) + 40))(*((_DWORD *)this + 1299));
      v117 = 0;
      v116[1] = 1;
      v119 = -1;
      v121 = 0;
      v116[0] = &off_963700;
      v118 = -1;
      v120 = 0;
      if ( v122[0] != v13 )
      {
        v122[0] = v13;
        NetStructMember::SetChanged((NetStructMember *)v116);
      }
      v14 = *((_DWORD *)this + 1666);
      v116[0] = &off_9636D0;
      (*(void (__fastcall **)(char *, _BYTE *))(v14 + 28))((char *)this + 6664, v122);
      v116[0] = &off_963648;
      if ( !a2 )
      {
        State = -1;
        goto LABEL_30;
      }
      goto LABEL_20;
    }
  }
  else
  {
    v16 = *((_DWORD *)this + 608) + 1;
    v54 = 0;
    v53[1] = 32;
    v56 = -1;
    v58 = 0;
    v53[0] = &off_9636A0;
    v55 = -1;
    v57 = 0;
    if ( v16 != v59 )
    {
      v59 = v16;
      NetStructMember::SetChanged((NetStructMember *)v53);
    }
    v17 = *((_DWORD *)this + 1628);
    v53[0] = &off_965858;
    (*(void (__fastcall **)(char *, int *))(v17 + 28))(v8 + 48, &v59);
    v18 = *((_DWORD *)this + 1063);
    v53[0] = &off_963648;
    if ( v18 <= 0 )
    {
      v47 = 0;
      v46[1] = 32;
      v49 = -1;
      v46[0] = &off_9636A0;
      v48 = -1;
      v50 = 0;
      v51 = 0;
      if ( v52 )
      {
        v52 = 0;
        NetStructMember::SetChanged((NetStructMember *)v46);
      }
      v46[0] = &off_965858;
      (*(void (__fastcall **)(char *, int *))(*((_DWORD *)this + 1638) + 28))((char *)this + 6552, &v52);
      v46[0] = &off_963648;
    }
    else
    {
      v19 = *((_DWORD *)this + 613) + 1;
      v40 = 0;
      v39[1] = 32;
      v42 = -1;
      v44 = 0;
      v39[0] = &off_9636A0;
      v41 = -1;
      v43 = 0;
      if ( v19 != v45 )
      {
        v45 = v19;
        NetStructMember::SetChanged((NetStructMember *)v39);
      }
      v39[0] = &off_965858;
      (*(void (__fastcall **)(char *, int *))(*((_DWORD *)this + 1638) + 28))((char *)this + 6552, &v45);
      v39[0] = &off_963648;
    }
  }
  if ( a2 )
  {
LABEL_20:
    State = CharStateMachine::SM_GetState((Character *)((char *)this + 1276));
    goto LABEL_30;
  }
  State = -1;
LABEL_30:
  v33 = 0;
  v32[1] = 16;
  v35 = -1;
  v37 = 0;
  v32[0] = &off_963618;
  v34 = -1;
  v36 = 0;
  if ( State != v38 )
  {
    v38 = State;
    NetStructMember::SetChanged((NetStructMember *)v32);
  }
  v20 = *((_DWORD *)this + 1648);
  v32[0] = &off_963730;
  result = (*(int (__fastcall **)(char *, int *))(v20 + 28))((char *)this + 6592, &v38);
  v32[0] = &off_963648;
  if ( a2 )
  {
    v22 = *((unsigned __int8 *)this + 138);
    v109[1] = 1;
    v110 = 0;
    v112 = -1;
    v114 = 0;
    v109[0] = &off_963700;
    v111 = -1;
    v113 = 0;
    if ( v115[0] != v22 )
    {
      v115[0] = v22;
      NetStructMember::SetChanged((NetStructMember *)v109);
    }
    v23 = *((_DWORD *)this + 1658);
    v109[0] = &off_9636D0;
    (*(void (__fastcall **)(char *, _BYTE *))(v23 + 28))((char *)this + 6632, v115);
    v24 = *((unsigned __int8 *)this + 128);
    v109[0] = &off_963648;
    v102[1] = 1;
    v103 = 0;
    v105 = -1;
    v107 = 0;
    v102[0] = &off_963700;
    v104 = -1;
    v106 = 0;
    if ( v108[0] != v24 )
    {
      v108[0] = v24;
      NetStructMember::SetChanged((NetStructMember *)v102);
    }
    v102[0] = &off_9636D0;
    return (*(int (__fastcall **)(char *, _BYTE *))(*((_DWORD *)this + 1674) + 28))((char *)this + 6696, v108);
  }
  return result;
}


// ===== 3a7930 std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,Character *>,std::priv::_Select1st<std::pair<int const,Character *>>,std::priv::_MapTraitsT<std::pair<int const,Character *>>,std::allocator<std::pair<int const,Character *>>>::_M_erase(std::priv::_Rb_tree_node_base *) =====
void __fastcall std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,Character *>,std::priv::_Select1st<std::pair<int const,Character *>>,std::priv::_MapTraitsT<std::pair<int const,Character *>>,std::allocator<std::pair<int const,Character *>>>::_M_erase(
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
      std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,Character *>,std::priv::_Select1st<std::pair<int const,Character *>>,std::priv::_MapTraitsT<std::pair<int const,Character *>>,std::allocator<std::pair<int const,Character *>>>::_M_erase(
        a1,
        v2[3]);
      v4 = (_DWORD *)v2[2];
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v2, 0x18u);
      v2 = v4;
    }
    while ( v4 );
  }
}


// ===== 3a7968 std::map<int,Character *,std::less<int>,std::allocator<std::pair<int const,Character *>>>::~map() =====
int __fastcall std::map<int,Character *>::~map(int a1)
{
  if ( *(_DWORD *)(a1 + 16) )
  {
    std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,Character *>,std::priv::_Select1st<std::pair<int const,Character *>>,std::priv::_MapTraitsT<std::pair<int const,Character *>>,std::allocator<std::pair<int const,Character *>>>::_M_erase(
      a1,
      *(_DWORD **)(a1 + 4));
    *(_DWORD *)(a1 + 16) = 0;
    *(_DWORD *)(a1 + 4) = 0;
    *(_DWORD *)(a1 + 8) = a1;
    *(_DWORD *)(a1 + 12) = a1;
  }
  return a1;
}


// ===== 3a799c Character::ClearConcurrentAI(void) =====
int __fastcall Character::ClearConcurrentAI(Character *this)
{
  int result; // r0

  if ( dword_9A2954 )
  {
    result = std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,Character *>,std::priv::_Select1st<std::pair<int const,Character *>>,std::priv::_MapTraitsT<std::pair<int const,Character *>>,std::allocator<std::pair<int const,Character *>>>::_M_erase(
               &Character::s_concurrentAI,
               dword_9A2948);
    dword_9A2954 = 0;
    dword_9A2948 = 0;
    dword_9A294C = (int)&Character::s_concurrentAI;
    dword_9A2950 = (int)&Character::s_concurrentAI;
  }
  return result;
}


// ===== 3a79e4 std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,uint>,std::priv::_Select1st<std::pair<int const,uint>>,std::priv::_MapTraitsT<std::pair<int const,uint>>,std::allocator<std::pair<int const,uint>>>::_M_erase(std::priv::_Rb_tree_node_base *) =====
void __fastcall std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,unsigned int>,std::priv::_Select1st<std::pair<int const,unsigned int>>,std::priv::_MapTraitsT<std::pair<int const,unsigned int>>,std::allocator<std::pair<int const,unsigned int>>>::_M_erase(
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
      std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,unsigned int>,std::priv::_Select1st<std::pair<int const,unsigned int>>,std::priv::_MapTraitsT<std::pair<int const,unsigned int>>,std::allocator<std::pair<int const,unsigned int>>>::_M_erase(
        a1,
        v2[3]);
      v4 = (_DWORD *)v2[2];
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v2, 0x18u);
      v2 = v4;
    }
    while ( v4 );
  }
}


// ===== 3a7a1c std::map<int,uint,std::less<int>,std::allocator<std::pair<int const,uint>>>::~map() =====
int __fastcall std::map<int,unsigned int>::~map(int a1)
{
  if ( *(_DWORD *)(a1 + 16) )
  {
    std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,unsigned int>,std::priv::_Select1st<std::pair<int const,unsigned int>>,std::priv::_MapTraitsT<std::pair<int const,unsigned int>>,std::allocator<std::pair<int const,unsigned int>>>::_M_erase(
      a1,
      *(_DWORD **)(a1 + 4));
    *(_DWORD *)(a1 + 16) = 0;
    *(_DWORD *)(a1 + 4) = 0;
    *(_DWORD *)(a1 + 8) = a1;
    *(_DWORD *)(a1 + 12) = a1;
  }
  return a1;
}


// ===== 3a7a50 Character::NetStructCharacter::~NetStructCharacter() =====
void __fastcall Character::NetStructCharacter::~NetStructCharacter(Character::NetStructCharacter *this)
{
  int v2; // r0

  v2 = *((_DWORD *)this + 71);
  *((_DWORD *)this + 85) = off_965DE8;
  *((_DWORD *)this + 76) = &off_963648;
  *(_DWORD *)this = off_9924D8;
  *((_DWORD *)this + 328) = &off_963648;
  *((_DWORD *)this + 320) = &off_963648;
  *((_DWORD *)this + 312) = &off_963648;
  *((_DWORD *)this + 302) = &off_963648;
  *((_DWORD *)this + 292) = &off_963648;
  *((_DWORD *)this + 282) = &off_963648;
  *((_DWORD *)this + 272) = &off_963648;
  *((_DWORD *)this + 262) = &off_963648;
  *((_DWORD *)this + 209) = off_965DE8;
  *((_DWORD *)this + 200) = &off_963648;
  *((_DWORD *)this + 147) = off_965DE8;
  *((_DWORD *)this + 138) = &off_963648;
  if ( v2 )
  {
    std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,std::map<int,NetStruct::tPacketHistory>>,std::priv::_Select1st<std::pair<int const,std::map<int,NetStruct::tPacketHistory>>>,std::priv::_MapTraitsT<std::pair<int const,std::map<int,NetStruct::tPacketHistory>>>,std::allocator<std::pair<int const,std::map<int,NetStruct::tPacketHistory>>>>::_M_erase(
      (int)this + 268,
      *((_DWORD *)this + 68));
    *((_DWORD *)this + 70) = (char *)this + 268;
    *((_DWORD *)this + 71) = 0;
    *((_DWORD *)this + 69) = (char *)this + 268;
    *((_DWORD *)this + 68) = 0;
  }
}


// ===== 3a7b08 Character::NetStructCharacter::~NetStructCharacter() =====
void __fastcall Character::NetStructCharacter::~NetStructCharacter(Character::NetStructCharacter *this)
{
  Character::NetStructCharacter::~NetStructCharacter(this);
  CustomFree(this);
}


// ===== 3a7b24 Character::UnLoadScriptProcess(std::priv::_Rb_tree_iterator<std::pair<int const,Character*>,std::priv::_MapTraitsT<std::pair<int const,Character*>>>,bool) =====
void __fastcall Character::UnLoadScriptProcess(int a1, char **a2, int a3)
{
  char *v3; // r3
  void *v6; // r0
  int v7; // r2
  int v8; // r0
  int v9; // [sp+0h] [bp-10h]
  int v10; // [sp+4h] [bp-Ch]
  int v11; // [sp+8h] [bp-8h]

  v3 = *a2;
  if ( *a2 == &Character::s_concurrentAI )
  {
    v3 = *((char **)v3 + 2);
    v9 = v11;
    v10 = a1;
    while ( v3 != &Character::s_concurrentAI )
    {
      if ( a1 == *((_DWORD *)v3 + 5) )
        break;
      v7 = *((_DWORD *)v3 + 3);
      if ( v7 )
      {
        while ( *(_DWORD *)(v7 + 8) )
          v7 = *(_DWORD *)(v7 + 8);
        v3 = (char *)v7;
      }
      else
      {
        v8 = *((_DWORD *)v3 + 1);
        if ( v3 == *(char **)(v8 + 12) )
        {
          do
          {
            v3 = (char *)v8;
            v8 = *(_DWORD *)(v8 + 4);
          }
          while ( *(char **)(v8 + 12) == v3 );
          v7 = *((_DWORD *)v3 + 3);
        }
        if ( v8 != v7 )
          v3 = (char *)v8;
      }
    }
    *a2 = v3;
  }
  if ( v3 != &Character::s_concurrentAI )
  {
    v6 = (void *)std::priv::_Rb_global<bool>::_Rebalance_for_erase(
                   v3,
                   &dword_9A2948,
                   &dword_9A294C,
                   &dword_9A2950,
                   v9,
                   v10);
    if ( v6 )
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v6, 0x18u);
    --dword_9A2954;
  }
  CharAI::AIUnLoadScriptProcess((CharAI *)(a1 + 968), a3);
}


// ===== 3a7c3c `non-virtual thunk to'Character::~Character() =====
void __fastcall `non-virtual thunk to'Character::~Character(Character *this)
{
  Character::~Character((std::string *)((char *)this - 1376));
}


// ===== 3a7c44 `non-virtual thunk to'Character::~Character() =====
void __fastcall `non-virtual thunk to'Character::~Character(Character *this)
{
  Character::~Character((std::string *)((char *)this - 1276));
}


// ===== 3a7c50 `non-virtual thunk to'Character::~Character() =====
void __fastcall `non-virtual thunk to'Character::~Character(Character *this)
{
  Character::~Character((std::string *)((char *)this - 1180));
}


// ===== 3a7c5c `non-virtual thunk to'Character::~Character() =====
void __fastcall `non-virtual thunk to'Character::~Character(Character *this)
{
  Character::~Character((std::string *)((char *)this - 968));
}


// ===== 3a7c64 `non-virtual thunk to'Character::~Character() =====
void __fastcall `non-virtual thunk to'Character::~Character(Character *this)
{
  Character::~Character((std::string *)((char *)this - 948));
}


// ===== 3a7c6c `non-virtual thunk to'Character::~Character() =====
void __fastcall `non-virtual thunk to'Character::~Character(Character *this)
{
  Character::~Character((std::string *)((char *)this - 892));
}


// ===== 3a7c74 `non-virtual thunk to'Character::~Character() =====
void __fastcall `non-virtual thunk to'Character::~Character(Character *this)
{
  Character::~Character((std::string *)((char *)this - 884));
}


// ===== 3a7c7c `non-virtual thunk to'Character::~Character() =====
void __fastcall `non-virtual thunk to'Character::~Character(Character *this)
{
  Character::~Character((std::string *)((char *)this - 36));
}


// ===== 3a7c84 Character::~Character() =====
void __fastcall Character::~Character(std::string *this)
{
  std::string *v2; // r6
  char *v3; // r5

  v2 = (std::string *)((char *)this + 5120);
  v3 = (char *)this + 5056;
  *((_DWORD *)this + 223) = off_966124;
  *((_DWORD *)this + 237) = off_966150;
  *((_DWORD *)this + 242) = off_966160;
  *((_DWORD *)this + 295) = off_966234;
  *((_DWORD *)this + 319) = off_966244;
  this->_M_buffers._M_end_of_storage = (char *)off_965F38;
  *(_DWORD *)&this->_M_buffers._M_static_buf[4] = &off_96608C;
  *((_DWORD *)this + 9) = off_966098;
  *((_DWORD *)this + 221) = off_9660B0;
  *((_DWORD *)this + 344) = off_966254;
  Character::Clean((Character *)this);
  Character::NetStructCharacter::~NetStructCharacter((Character::NetStructCharacter *)((char *)this + 6728));
  Character::NetStructCharacter::~NetStructCharacter((Character::NetStructCharacter *)((char *)this + 5384));
  std::string::~string(v2 + 1);
  std::string::~string(v2);
  std::string::~string((std::string *)(v3 + 40));
  std::string::~string((std::string *)(v3 + 12));
  std::string::~string(this + 210);
  std::string::~string(this + 209);
  CharProperties::~CharProperties((CharProperties *)((char *)this + 1376));
  CharStateMachine::~CharStateMachine((CharStateMachine *)((char *)this + 1276));
  CharAnimator::~CharAnimator((CharAnimator *)((char *)this + 1180));
  CharAI::~CharAI((CharAI *)((char *)this + 968));
  CharTimers::~CharTimers((CharTimers *)((char *)this + 948));
  ItemInventory::~ItemInventory((ItemInventory *)((char *)this + 892));
  v2Controllable::~v2Controllable((v2Controllable *)((char *)this + 884));
  GameObject::~GameObject((GameObject *)this);
}


// ===== 3a7d98 `non-virtual thunk to'Character::~Character() =====
void __fastcall `non-virtual thunk to'Character::~Character(Character *this)
{
  Character::~Character((Character *)((char *)this - 1376));
}


// ===== 3a7da0 `non-virtual thunk to'Character::~Character() =====
void __fastcall `non-virtual thunk to'Character::~Character(Character *this)
{
  Character::~Character((Character *)((char *)this - 1276));
}


// ===== 3a7dac `non-virtual thunk to'Character::~Character() =====
void __fastcall `non-virtual thunk to'Character::~Character(Character *this)
{
  Character::~Character((Character *)((char *)this - 1180));
}


// ===== 3a7db8 `non-virtual thunk to'Character::~Character() =====
void __fastcall `non-virtual thunk to'Character::~Character(Character *this)
{
  Character::~Character((Character *)((char *)this - 968));
}


// ===== 3a7dc0 `non-virtual thunk to'Character::~Character() =====
void __fastcall `non-virtual thunk to'Character::~Character(Character *this)
{
  Character::~Character((Character *)((char *)this - 948));
}


// ===== 3a7dc8 `non-virtual thunk to'Character::~Character() =====
void __fastcall `non-virtual thunk to'Character::~Character(Character *this)
{
  Character::~Character((Character *)((char *)this - 892));
}


// ===== 3a7dd0 `non-virtual thunk to'Character::~Character() =====
void __fastcall `non-virtual thunk to'Character::~Character(Character *this)
{
  Character::~Character((Character *)((char *)this - 884));
}


// ===== 3a7dd8 `non-virtual thunk to'Character::~Character() =====
void __fastcall `non-virtual thunk to'Character::~Character(Character *this)
{
  Character::~Character((Character *)((char *)this - 36));
}


// ===== 3a7de0 Character::~Character() =====
void __fastcall Character::~Character(std::string *this)
{
  Character::~Character(this);
  CustomFree(this);
}


// ===== 3a7dfc Character::~Character() =====
void __fastcall Character::~Character(std::string *this)
{
  std::string *v2; // r6
  char *v3; // r5

  v2 = (std::string *)((char *)this + 5120);
  v3 = (char *)this + 5056;
  *((_DWORD *)this + 223) = off_966124;
  *((_DWORD *)this + 237) = off_966150;
  *((_DWORD *)this + 242) = off_966160;
  *((_DWORD *)this + 295) = off_966234;
  *((_DWORD *)this + 319) = off_966244;
  this->_M_buffers._M_end_of_storage = (char *)off_965F38;
  *(_DWORD *)&this->_M_buffers._M_static_buf[4] = &off_96608C;
  *((_DWORD *)this + 9) = off_966098;
  *((_DWORD *)this + 221) = off_9660B0;
  *((_DWORD *)this + 344) = off_966254;
  Character::Clean((AnimatedFX **)this);
  Character::NetStructCharacter::~NetStructCharacter((Character::NetStructCharacter *)((char *)this + 6728));
  Character::NetStructCharacter::~NetStructCharacter((Character::NetStructCharacter *)((char *)this + 5384));
  std::string::~string(v2 + 1);
  std::string::~string(v2);
  std::string::~string((std::string *)(v3 + 40));
  std::string::~string((std::string *)(v3 + 12));
  std::string::~string(this + 210);
  std::string::~string(this + 209);
  CharProperties::~CharProperties((CharProperties *)((char *)this + 1376));
  CharStateMachine::~CharStateMachine((CharStateMachine *)((char *)this + 1276));
  CharAnimator::~CharAnimator((CharAnimator *)((char *)this + 1180));
  CharAI::~CharAI((CharAI *)((char *)this + 968));
  CharTimers::~CharTimers((CharTimers *)((char *)this + 948));
  ItemInventory::~ItemInventory((ItemInventory *)((char *)this + 892));
  v2Controllable::~v2Controllable((v2Controllable *)((char *)this + 884));
  GameObject::~GameObject((GameObject *)this);
}


// ===== 3a7f10 Character::InterpretIncomingNetStruct(bool) =====
Character *__fastcall Character::InterpretIncomingNetStruct(Character *this, int a2)
{
  Character *v2; // r4
  CharProperties *v4; // r7
  int v5; // lr
  int v6; // r12
  int v7; // r8
  int v8; // r10
  int v9; // r2
  int v10; // r2
  unsigned int v11; // r3
  GameObject *v12; // r1
  int v13; // r3
  int v14; // r1
  int v15; // r10
  Level *CurrentLevel; // r0
  int v17; // r3
  CMessaging *Instance; // r0
  CMessaging *v19; // r8
  int v20; // r10
  bool v21; // r2
  int Message; // r0
  _DWORD v23[7]; // [sp+0h] [bp-78h] BYREF
  char v24; // [sp+1Ch] [bp-5Ch]
  int v25; // [sp+20h] [bp-58h] BYREF
  _DWORD v26[7]; // [sp+28h] [bp-50h] BYREF
  char v27; // [sp+44h] [bp-34h]
  int v28[3]; // [sp+48h] [bp-30h] BYREF
  _BYTE v29[12]; // [sp+54h] [bp-24h] BYREF
  _DWORD v30[6]; // [sp+60h] [bp-18h] BYREF

  v2 = this;
  if ( *((_BYTE *)this + 5248) )
    return this;
  if ( a2 && Character::IsMonster(this) )
  {
    v4 = (Character *)((char *)v2 + 1376);
    CharProperties::PROPS_RemoveAllBuffs((Character *)((char *)v2 + 1376));
  }
  else
  {
    v4 = (Character *)((char *)v2 + 1376);
  }
  v5 = *((_DWORD *)v2 + 1828);
  v6 = *((_DWORD *)v2 + 1890);
  v7 = *((_DWORD *)v2 + 1766);
  v8 = *((_DWORD *)v2 + 1952);
  v30[1] = *((_DWORD *)v2 + 1962);
  v30[4] = v5;
  v30[5] = v6;
  v30[2] = 0;
  v30[3] = v7;
  v30[0] = v8;
  GameObject::SetPosition(v2);
  (*(void (__fastcall **)(_DWORD, _DWORD *))(**(_DWORD **)(*((_DWORD *)v2 + 222) + 4) + 28))(
    *(_DWORD *)(*((_DWORD *)v2 + 222) + 4),
    v30);
  if ( *((_BYTE *)v2 + 5014) )
  {
    if ( (*(int (__fastcall **)(Character *))(*(_DWORD *)v2 + 40))(v2) )
    {
      GameObject::ForceUpdatePosition(v2);
      v15 = *(_DWORD *)(PlayerManager::GetHostingPlayer((PlayerManager *)dword_99F76C) + 416);
      if ( v15 == *(_DWORD *)(PlayerManager::GetPlayerByCharacter((PlayerManager *)dword_99F76C, v2, 0) + 416) )
      {
        CurrentLevel = (Level *)Application::GetCurrentLevel((Application *)&Singleton<Application>::s_inst);
        Level::PlaceFaeryAndFollowers(CurrentLevel, v2);
      }
    }
  }
  v9 = *((_DWORD *)v2 + 1972);
  *((_BYTE *)v2 + 5014) = 0;
  if ( v9 )
  {
    CharProperties::PROPS_Set(v4, 36, v9 - 1);
    if ( (*(int (__fastcall **)(Character *))(*(_DWORD *)v2 + 52))(v2) )
    {
      (*(void (__fastcall **)(Character *, int))(*(_DWORD *)v2 + 64))(v2, 1);
      GameObject::SetPosition(v2);
      Character::Revive(v2, nullptr, 1);
      CharStateMachine::SM_SetIdleState((Character *)((char *)v2 + 1276), 0);
      v23[1] = 16;
      v24 = 0;
      v23[6] = 0;
      v23[2] = 0;
      v23[3] = 0;
      v23[0] = &off_963618;
      v23[4] = -1;
      v23[5] = -1;
      if ( v25 != -1 )
      {
        v25 = -1;
        NetStructMember::SetChanged((NetStructMember *)v23);
      }
      v17 = *((_DWORD *)v2 + 1984);
      v23[0] = &off_963730;
      (*(void (__fastcall **)(_BYTE *, int *))(v17 + 28))((_BYTE *)v2 + 7936, &v25);
      v23[0] = &off_963648;
    }
    v10 = *((_DWORD *)v2 + 1982);
    if ( v10 )
      --v10;
    this = (Character *)CharProperties::PROPS_Set(v4, 41, v10);
  }
  else
  {
    CharProperties::PROPS_Set(v4, 36, 0);
    this = (Character *)(*(int (__fastcall **)(Character *))(*(_DWORD *)v2 + 52))(v2);
    if ( !this )
    {
      ObjectManager::GetObjectHandleByNetworkId((ObjectManager *)v29, dword_99F764);
      v12 = (GameObject *)ObjectHandle::operator GameObject *(v29);
      if ( !v12 && *((_BYTE *)v2 + 8037) )
        v12 = *(GameObject **)(PlayerManager::GetLocalPlayer((PlayerManager *)dword_99F76C, 0, 1) + 1632);
      if ( a2 )
      {
        *((_BYTE *)v2 + 5193) = 1;
        CharProperties::PROPS_Set(v4, 36, 0);
        CharAI::AI_SetDead((Character *)((char *)v2 + 968));
      }
      else
      {
        v2Controller::Cmd_Kill(*((v2Controller **)v2 + 222), v12, 0);
      }
      if ( (*(int (__fastcall **)(Character *))(*(_DWORD *)v2 + 40))(v2) )
      {
        ObjectManager::AskNetResendByObjectId((ObjectManager *)dword_99F764, *((_DWORD *)v2 + 66));
      }
      else
      {
        *((_BYTE *)v2 + 280) = 1;
        Instance = (CMessaging *)OnlineSingleton<OnlineGameState>::GetInstance(0);
        if ( (unsigned int)(*((_DWORD *)Instance + 13) - 3) <= 1
          && (*((_BYTE *)v2 + 5348) || (Instance = (CMessaging *)Character::IsSummoned(v2)) != nullptr) )
        {
          v19 = (CMessaging *)CMessaging::Get(Instance);
          v20 = *((_DWORD *)v2 + 66);
          Message = CMessage::CreateMessage((CMessage *)"CMsgSpawnObject", (const char *)&dword_0 + 1, v21);
          *(_DWORD *)(Message + 80) = v20;
          *(_DWORD *)(Message + 88) = 0;
          *(_DWORD *)(Message + 100) = 0;
          *(_BYTE *)(Message + 104) = 1;
          *(_DWORD *)(Message + 84) = 0;
          *(_DWORD *)(Message + 92) = 0;
          *(_DWORD *)(Message + 96) = 0;
          CMessaging::SendMsg(v19, (CMessage *)Message);
        }
      }
      v26[2] = 0;
      v26[3] = 0;
      v26[1] = 16;
      v27 = 0;
      v26[0] = &off_963618;
      v26[4] = -1;
      v26[5] = -1;
      v26[6] = 0;
      if ( v28[0] != -1 )
      {
        v28[0] = -1;
        NetStructMember::SetChanged((NetStructMember *)v26);
      }
      v13 = *((_DWORD *)v2 + 1984);
      v26[0] = &off_963730;
      this = (Character *)(*(int (__fastcall **)(_BYTE *, int *))(v13 + 28))((_BYTE *)v2 + 7936, v28);
      v26[0] = &off_963648;
    }
  }
  v11 = *((_DWORD *)v2 + 1992) + 1;
  if ( v11 > 0x12 )
    goto LABEL_11;
  v14 = 1 << v11;
  if ( ((1 << v11) & 0x200A) != 0 )
  {
    this = (Character *)CharStateMachine::SM_IsInLimbus((Character *)((char *)v2 + 1276));
    if ( !this )
      this = (Character *)CharStateMachine::SM_SetLimbusState((Character *)((char *)v2 + 1276), 0);
    *((_BYTE *)v2 + 5193) = 1;
    goto LABEL_29;
  }
  if ( (v14 & 0x40004) != 0 )
  {
    this = (Character *)CharStateMachine::SM_IsInPreSpawn((Character *)((char *)v2 + 1276));
    if ( !this )
      this = (Character *)CharStateMachine::SM_SetPreSpawnState((Character *)((char *)v2 + 1276));
LABEL_29:
    if ( !a2 )
      return this;
    goto LABEL_30;
  }
  if ( (v14 & 1) != 0 )
    goto LABEL_29;
LABEL_11:
  if ( *((_BYTE *)v2 + 5193) )
  {
    *((_BYTE *)v2 + 5193) = 1;
    CharProperties::PROPS_Set(v4, 36, 0);
    this = (Character *)CharAI::AI_SetDead((Character *)((char *)v2 + 968));
    goto LABEL_29;
  }
  if ( !*((_DWORD *)v2 + 183) )
    Character::InitPhysicalObject(v2);
  this = (Character *)CharStateMachine::SM_SetIdleState((Character *)((char *)v2 + 1276), 0);
  if ( a2 )
  {
LABEL_30:
    ObjectBase::SetEnable(v2, *((_BYTE *)v2 + 8005));
    (*(void (__fastcall **)(Character *, _DWORD))(*(_DWORD *)v2 + 64))(v2, *((unsigned __int8 *)v2 + 8069));
    this = *((Character **)v2 + 182);
    if ( this )
      return (Character *)VisualObject::SyncVisibility(this);
  }
  return this;
}


// ===== 3a84f4 Character::Draw(void) =====
void __fastcall Character::Draw(Character *this)
{
  int Switch; // r10
  int v3; // r10
  int v4; // r8
  float *TargetPosition; // r7
  int v6; // r3
  int v7; // r3
  _DWORD *v8; // r1
  int v9; // r3
  float MeleeRadius; // r8
  float v11; // r11
  float v12; // r9
  float v13; // r10
  int v14; // r0
  void (__fastcall *v15)(int, float *, int); // r3
  float v16; // r7
  float v17; // lr
  float v18; // r12
  float v19; // r1
  float v20; // r2
  int v21; // r7
  Character *v22; // r0
  int v23; // r3
  void (__fastcall *v24)(int, float *, int); // r5
  char v25; // r0
  int v26; // r0
  int v27; // r0
  int v28; // r0
  int (__fastcall *v29)(int, float *, int *, _DWORD, int, _DWORD, int, _DWORD); // r12
  void (__fastcall *v30)(int, int); // r3
  int v31; // r0
  int v32; // r0
  int v33; // r0
  int (__fastcall *v34)(int, float *, _DWORD *, _DWORD, int, _DWORD, int, _DWORD); // r12
  void (__fastcall *v35)(int, int); // r3
  float v36; // [sp+18h] [bp-4B4h]
  float v37; // [sp+1Ch] [bp-4B0h]
  float v38; // [sp+24h] [bp-4A8h] BYREF
  float v39; // [sp+28h] [bp-4A4h]
  float v40; // [sp+2Ch] [bp-4A0h]
  float v41; // [sp+30h] [bp-49Ch]
  float v42; // [sp+34h] [bp-498h]
  float v43; // [sp+38h] [bp-494h]
  int v44; // [sp+424h] [bp-A8h] BYREF
  int v45; // [sp+428h] [bp-A4h]
  int v46; // [sp+42Ch] [bp-A0h]
  int v47; // [sp+430h] [bp-9Ch]
  _DWORD v48[4]; // [sp+434h] [bp-98h] BYREF
  float v49; // [sp+444h] [bp-88h] BYREF
  float v50; // [sp+448h] [bp-84h]
  float v51; // [sp+44Ch] [bp-80h]
  _BYTE v52[4]; // [sp+450h] [bp-7Ch] BYREF
  int v53; // [sp+454h] [bp-78h]
  _DWORD v54[2]; // [sp+458h] [bp-74h] BYREF
  int v55; // [sp+460h] [bp-6Ch]
  int v56; // [sp+464h] [bp-68h]
  int v57; // [sp+468h] [bp-64h]
  int v58; // [sp+46Ch] [bp-60h]
  std::string v59; // [sp+47Ch] [bp-50h] BYREF
  std::string v60; // [sp+494h] [bp-38h] BYREF
  std::string v61; // [sp+4ACh] [bp-20h] BYREF

  GameObject::Draw(this);
  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string((int)&v61, "isDisplayingMeleeRadius");
  Switch = DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v61);
  std::string::~string(&v61);
  if ( Switch )
  {
    MeleeRadius = CharAI::AI_GetMeleeRadius((Character *)((char *)this + 968));
    v11 = *(float *)GameObject::GetTargetPosition(this) - MeleeRadius;
    v12 = *((float *)GameObject::GetTargetPosition(this) + 1) - MeleeRadius;
    v13 = *((float *)GameObject::GetTargetPosition(this) + 2) - MeleeRadius;
    v36 = MeleeRadius + *(float *)GameObject::GetTargetPosition(this);
    v37 = MeleeRadius + *((float *)GameObject::GetTargetPosition(this) + 1);
    v43 = MeleeRadius + *((float *)GameObject::GetTargetPosition(this) + 2);
    v42 = v37;
    v38 = v11;
    v39 = v12;
    v40 = v13;
    v41 = v36;
    v14 = *(_DWORD *)(dword_99F73C + 16);
    v15 = *(void (__fastcall **)(int, float *, int))(*(_DWORD *)v14 + 40);
    v58 = -16711936;
    v15(v14, &v38, -16711936);
  }
  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string((int)&v60, "isDisplayingPath");
  v3 = DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v60);
  std::string::~string(&v60);
  if ( v3 )
    PFObject::DBG_DrawPath((Character *)((char *)this + 456));
  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string((int)&v59, "isDisplayingPositions");
  v4 = DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v59);
  std::string::~string(&v59);
  if ( v4 )
  {
    if ( (*(int (__fastcall **)(Character *))(*(_DWORD *)this + 40))(this) )
    {
      TargetPosition = (float *)GameObject::GetTargetPosition(this);
      swprintf(
        &v38,
        256,
        "<",
        v6,
        COERCE_UNSIGNED_INT64(*TargetPosition),
        HIDWORD(COERCE_UNSIGNED_INT64(*TargetPosition)),
        COERCE_UNSIGNED_INT64(TargetPosition[1]),
        HIDWORD(COERCE_UNSIGNED_INT64(TargetPosition[1])),
        COERCE_UNSIGNED_INT64(TargetPosition[2]),
        HIDWORD(COERCE_UNSIGNED_INT64(TargetPosition[2])));
      if ( Character::Draw(void)const::m_postext )
      {
        (*(void (__fastcall **)(int, float *))(*(_DWORD *)Character::Draw(void)const::m_postext + 68))(
          Character::Draw(void)const::m_postext,
          &v38);
      }
      else
      {
        v31 = (*(int (__fastcall **)(_DWORD))(**(_DWORD **)(dword_99F73C + 24) + 56))(*(_DWORD *)(dword_99F73C + 24));
        v32 = (*(int (__fastcall **)(int, _DWORD))(*(_DWORD *)v31 + 40))(v31, 0);
        (*(void (__fastcall **)(_DWORD *, int, float *))(*(_DWORD *)v32 + 28))(v54, v32, &v38);
        v33 = *(_DWORD *)(dword_99F73C + 24);
        v34 = *(int (__fastcall **)(int, float *, _DWORD *, _DWORD, int, _DWORD, int, _DWORD))(*(_DWORD *)v33 + 168);
        v48[1] = Height_Screen - 60;
        v48[3] = Height_Screen - 60 + v54[1];
        v48[2] = Width_Screen;
        v48[0] = 0;
        Character::Draw(void)const::m_postext = v34(v33, &v38, v48, 0, 1, 0, -1, 0);
        (*(void (__fastcall **)(int, int, _DWORD))(*(_DWORD *)Character::Draw(void)const::m_postext + 160))(
          Character::Draw(void)const::m_postext,
          2,
          0);
        (*(void (__fastcall **)(int, _DWORD))(*(_DWORD *)Character::Draw(void)const::m_postext + 152))(
          Character::Draw(void)const::m_postext,
          0);
        (*(void (__fastcall **)(int, _DWORD))(*(_DWORD *)Character::Draw(void)const::m_postext + 156))(
          Character::Draw(void)const::m_postext,
          0);
        v35 = *(void (__fastcall **)(int, int))(*(_DWORD *)Character::Draw(void)const::m_postext + 132);
        v57 = -16711936;
        v35(Character::Draw(void)const::m_postext, -16711936);
      }
      v7 = *((_DWORD *)this + 182);
      if ( v7 )
      {
        v8 = *(_DWORD **)(v7 + 8);
        if ( v8 )
        {
          glitch::scene::ISceneNode::getAbsolutePosition(&v49, v8);
          swprintf(
            &v38,
            256,
            "<",
            v9,
            COERCE_UNSIGNED_INT64(v49),
            HIDWORD(COERCE_UNSIGNED_INT64(v49)),
            COERCE_UNSIGNED_INT64(v50),
            HIDWORD(COERCE_UNSIGNED_INT64(v50)),
            COERCE_UNSIGNED_INT64(v51),
            HIDWORD(COERCE_UNSIGNED_INT64(v51)));
          if ( Character::Draw(void)const::m_postext2 )
          {
            (*(void (__fastcall **)(int, float *))(*(_DWORD *)Character::Draw(void)const::m_postext2 + 68))(
              Character::Draw(void)const::m_postext2,
              &v38);
          }
          else
          {
            v26 = (*(int (__fastcall **)(_DWORD))(**(_DWORD **)(dword_99F73C + 24) + 56))(*(_DWORD *)(dword_99F73C + 24));
            v27 = (*(int (__fastcall **)(int, _DWORD))(*(_DWORD *)v26 + 40))(v26, 0);
            (*(void (__fastcall **)(_BYTE *, int, float *))(*(_DWORD *)v27 + 28))(v52, v27, &v38);
            v28 = *(_DWORD *)(dword_99F73C + 24);
            v29 = *(int (__fastcall **)(int, float *, int *, _DWORD, int, _DWORD, int, _DWORD))(*(_DWORD *)v28 + 168);
            v45 = *(_DWORD *)(Character::Draw(void)const::m_postext + 68);
            v46 = Width_Screen;
            v47 = v45 + v53;
            v44 = 0;
            Character::Draw(void)const::m_postext2 = v29(v28, &v38, &v44, 0, 1, 0, -1, 0);
            (*(void (__fastcall **)(int, int, _DWORD))(*(_DWORD *)Character::Draw(void)const::m_postext2 + 160))(
              Character::Draw(void)const::m_postext2,
              2,
              0);
            (*(void (__fastcall **)(int, _DWORD))(*(_DWORD *)Character::Draw(void)const::m_postext2 + 152))(
              Character::Draw(void)const::m_postext2,
              0);
            (*(void (__fastcall **)(int, _DWORD))(*(_DWORD *)Character::Draw(void)const::m_postext2 + 156))(
              Character::Draw(void)const::m_postext2,
              0);
            v30 = *(void (__fastcall **)(int, int))(*(_DWORD *)Character::Draw(void)const::m_postext2 + 132);
            v56 = -16711681;
            v30(Character::Draw(void)const::m_postext2, -16711681);
          }
        }
      }
    }
    else
    {
      v16 = *((float *)this + 75);
      v17 = *((float *)this + 76);
      v18 = *((float *)this + 77);
      v19 = *((float *)this + 79);
      v20 = *((float *)this + 80);
      v41 = *((float *)this + 78);
      v42 = v19;
      v38 = v16;
      v39 = v17;
      v40 = v18;
      v43 = v20;
      v21 = *(_DWORD *)(dword_99F73C + 16);
      v22 = this;
      v23 = *(_DWORD *)this;
      v24 = *(void (__fastcall **)(int, float *, int))(*(_DWORD *)v21 + 40);
      if ( (*(int (__fastcall **)(Character *))(v23 + 52))(v22) )
        v25 = 100;
      else
        v25 = -56;
      BYTE1(v55) = v25;
      BYTE2(v55) = v25;
      LOBYTE(v55) = -1;
      HIBYTE(v55) = -1;
      v24(v21, &v38, v55);
    }
  }
  else
  {
    if ( Character::Draw(void)const::m_postext )
    {
      (*(void (__fastcall **)(int))(*(_DWORD *)Character::Draw(void)const::m_postext + 28))(Character::Draw(void)const::m_postext);
      Character::Draw(void)const::m_postext = 0;
    }
    if ( Character::Draw(void)const::m_postext2 )
    {
      (*(void (__fastcall **)(int))(*(_DWORD *)Character::Draw(void)const::m_postext2 + 28))(Character::Draw(void)const::m_postext2);
      Character::Draw(void)const::m_postext2 = 0;
    }
  }
}


// ===== 3a8bc4 Character::HitFor(uint,GameObject *) =====
Character *__fastcall Character::HitFor(Character *this, int a2, GameObject *a3)
{
  Character *result; // r0
  int v7; // r2
  int v8; // r3
  int v9; // r8
  int v10; // r10
  int v11; // r9
  int v12; // r1
  Character *v13; // r8
  TrophyManager *v14; // r7
  int v15; // r0
  int Switch; // r8
  int v17; // r3
  int IDFromName; // r1
  int v19; // r0
  int v20; // r2
  int v21; // r3
  int v22; // r0
  int v23; // r0
  int v24; // r0
  int v25; // r0
  int v26; // r10
  int v27; // r11
  int v28; // [sp+Ch] [bp-60h]
  int v29; // [sp+10h] [bp-5Ch]
  Character *character_660; // [sp+14h] [bp-58h]
  VoxSoundManager *v31; // [sp+14h] [bp-58h]
  Character *v32; // [sp+18h] [bp-54h]
  Character *v33; // [sp+1Ch] [bp-50h]
  _BYTE v34[12]; // [sp+20h] [bp-4Ch] BYREF
  std::string v35; // [sp+34h] [bp-38h] BYREF
  std::string v36; // [sp+4Ch] [bp-20h] BYREF

  result = (Character *)(*(int (__fastcall **)(Character *))(*(_DWORD *)this + 52))(this);
  if ( result )
    return result;
  v33 = *((Character **)this + 1058);
  v32 = *((Character **)this + 1060);
  v28 = 2180;
  character_660 = PlayerManager::GetLocalPlayer((PlayerManager *)dword_99F76C, 0, 1)->character_660;
  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string((int)&v36, "GOD_Monster");
  if ( !DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v36) || !Character::IsMonster(this) )
  {
    std::string::~string(&v36);
    if ( *(_BYTE *)(GetOnline() + 5) )
    {
      if ( !dword_99F76C )
      {
        v29 = a2 >> 8;
        v7 = -a2;
        goto LABEL_11;
      }
      v8 = *(_DWORD *)(dword_99F76C + 1812);
      if ( v8 )
      {
        if ( v8 == 5 )
        {
          v29 = a2 >> 8;
          v7 = -a2;
          goto LABEL_11;
        }
        goto LABEL_10;
      }
    }
    else if ( !character_660 || (*(int (__fastcall **)(Character *))(*(_DWORD *)character_660 + 52))(character_660) )
    {
LABEL_10:
      v29 = 0;
      v7 = 0;
      goto LABEL_11;
    }
    v29 = a2 >> 8;
    v7 = -a2;
    goto LABEL_11;
  }
  v29 = 0;
  std::string::~string(&v36);
  v7 = 0;
LABEL_11:
  CharProperties::PROPS_Add((Character *)((char *)this + 1376), 36, v7);
  if ( Application::IsSavedOptionOn((Application *)&Singleton<Application>::s_inst, "OneShotKill")
    || (DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst),
        std::string::string((int)&v35, "OneShotKill"),
        Switch = DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v35),
        std::string::~string(&v35),
        Switch) )
  {
    if ( !(*(int (__fastcall **)(Character *))(*(_DWORD *)this + 40))(this)
      || (v17 = *((_DWORD *)this + 262)) != 0
      && !(*(int (__fastcall **)(_DWORD))(*(_DWORD *)v17 + 40))(*((_DWORD *)this + 262)) )
    {
      CharProperties::PROPS_Set((Character *)((char *)this + 1376), 36, 0);
    }
  }
  if ( *((int *)this + 1058) <= 0 )
  {
    CharProperties::PROPS_Set((Character *)((char *)this + 1376), 36, 0);
    v2Controller::Cmd_Kill(*((v2Controller **)this + 222), a3, 0);
    v19 = (*(int (__fastcall **)(Character *))(*(_DWORD *)this + 84))(this);
    if ( v19 )
    {
      v20 = 1;
    }
    else
    {
      v21 = 3;
      *((_DWORD *)this + 71) = 3;
    }
    if ( v19 )
      v28 = v20;
    else
      v21 = 1;
    if ( !v19 )
      v28 = v21;
  }
  else
  {
    v28 = 0;
  }
  if ( (*(int (__fastcall **)(Character *))(*(_DWORD *)this + 40))(this)
    && *((_DWORD *)this + 1058) <= *((_DWORD *)this + 1060) / 2 )
  {
    if ( !*(_BYTE *)(GetOnline() + 5) && !Character::SG_GetGameDifficulty(this) && *(_BYTE *)(dword_99F778 + 45) )
    {
      IDFromName = ScriptManager::GetIDFromName((ScriptManager *)&ScriptManager::s_inst, "cinematic_Tuto_potionUse", 1);
      if ( IDFromName != -1 )
        ScriptManager::StartScript((ScriptManager *)&ScriptManager::s_inst, IDFromName, -1, 0);
      *(_BYTE *)(dword_99F778 + 45) = 0;
      updateJob_thread::Start2((updateJob_thread *)m_updateJobThread3);
    }
    if ( *((_BYTE *)this + 5192) )
    {
      v9 = 0;
      *((_BYTE *)this + 5192) = 0;
      if ( this == character_660 )
      {
        v26 = Arrays::Sounds::size;
        v31 = (VoxSoundManager *)VoxSoundManager::s_instance;
        if ( Arrays::Sounds::size )
        {
          v27 = Arrays::Sounds::m_memberNames;
          while ( LC_API_STRCMP_0("sfx_mc_low_hp", *(const char **)(v27 + 4 * v9)) )
          {
            if ( ++v9 == v26 )
              goto LABEL_73;
          }
          goto LABEL_26;
        }
      }
      else
      {
        v10 = Arrays::Sounds::size;
        v31 = (VoxSoundManager *)VoxSoundManager::s_instance;
        if ( Arrays::Sounds::size )
        {
          v11 = Arrays::Sounds::m_memberNames;
          while ( LC_API_STRCMP_0("sfx_friend_low_hp", *(const char **)(v11 + 4 * v9)) )
          {
            if ( ++v9 == v10 )
              goto LABEL_73;
          }
LABEL_26:
          v12 = v9;
LABEL_27:
          VoxSoundManager::Play(v31, v12, 0, 0, 0, 0);
          goto LABEL_28;
        }
      }
LABEL_73:
      v12 = -1;
      goto LABEL_27;
    }
  }
  else if ( (*(int (__fastcall **)(Character *))(*(_DWORD *)this + 40))(this)
         && !*((_BYTE *)this + 5192)
         && (float)*((int *)this + 1058) >= (float)((float)*((int *)this + 1060) * 0.75) )
  {
    *((_BYTE *)this + 5192) = 1;
  }
LABEL_28:
  ObjectBase::GetHandle((ObjectBase *)v34);
  result = (Character *)ObjectHandle::operator Character *(v34);
  v13 = result;
  v14 = (TrophyManager *)TrophyManager::s_instance;
  if ( !result )
    return result;
  result = (Character *)(*(int (__fastcall **)(Character *))(*(_DWORD *)result + 40))(result);
  if ( !result )
    return result;
  if ( this == v13 )
    return result;
  result = (Character *)PlayerManager::IsLocalPlayer((PlayerManager *)dword_99F76C, v13);
  if ( !result )
    return result;
  if ( v29 > 199 )
  {
    v22 = Arrays::GetMemberIDByString<Arrays::TrophyTable>("power_200dam");
    TrophyManager::UnlockTrophy(v14, v22);
    goto LABEL_70;
  }
  if ( v29 > 149 )
  {
LABEL_70:
    v23 = Arrays::GetMemberIDByString<Arrays::TrophyTable>("power_150dam");
    TrophyManager::UnlockTrophy(v14, v23);
    goto LABEL_71;
  }
  if ( v29 > 99 )
  {
LABEL_71:
    v24 = Arrays::GetMemberIDByString<Arrays::TrophyTable>("power_100dam");
    TrophyManager::UnlockTrophy(v14, v24);
    goto LABEL_72;
  }
  if ( v29 > 49 )
  {
LABEL_72:
    v25 = Arrays::GetMemberIDByString<Arrays::TrophyTable>("power_50dam");
    TrophyManager::UnlockTrophy(v14, v25);
  }
  result = v33;
  if ( v33 == v32 )
  {
    if ( v28 )
    {
      if ( Character::IsBoss(this) || (result = (Character *)Character::IsMiniBoss(this)) != nullptr )
      {
        v15 = Arrays::GetMemberIDByString<Arrays::TrophyTable>("power_onehit");
        return (Character *)TrophyManager::UnlockTrophy(v14, v15);
      }
    }
  }
  return result;
}


// ===== 3a926c SimpleTypeProperty<Point2D<int>>::ToString(void *) =====
std::string *__fastcall SimpleTypeProperty<Point2D<int>>::ToString(std::string *a1, int a2, int a3)
{
  char *v6; // r5

  v6 = (char *)CustomAlloc(0x100u);
  ObjToStr(v6, (_DWORD *)(a3 + *(_DWORD *)(a2 + 4)));
  std::string::string(a1, v6);
  return a1;
}


// ===== 3a92b4 PropertyMap::AddProperty<bool>(char const*,bool &,bool) [clone] =====
int __fastcall PropertyMap::AddProperty<bool>(PropertyMap *a1, char *a2, int a3)
{
  int v6; // r4

  v6 = operator new(36, 0);
  *(_DWORD *)v6 = &off_95C5E8;
  std::string::string(v6 + 8, a2);
  *(_BYTE *)(v6 + 32) = 1;
  *(_DWORD *)(v6 + 4) = a3 - (_DWORD)a1;
  *(_DWORD *)v6 = &off_95C608;
  return PropertyMap::AddProperty(a1, a2, (Property *)v6);
}


// ===== 3a9340 Character::Character(ObjectBase::GO_IDS) =====
int __fastcall Character::Character(int a1)
{
  int v2; // r0
  v2Controllable *v3; // r12
  v2Controller *v4; // r6
  int v5; // r6
  int v6; // r1
  v2Controllable *v8; // [sp+Ch] [bp-30h]

  v8 = (v2Controllable *)(a1 + 884);
  GameObject::GameObject();
  v2Controllable::v2Controllable(v8);
  ItemInventory::ItemInventory((ItemInventory *)(a1 + 892));
  CharTimers::CharTimers((CharTimers *)(a1 + 948));
  CharAI::CharAI((CharAI *)(a1 + 968));
  CharAnimator::CharAnimator((CharAnimator *)(a1 + 1180));
  CharStateMachine::CharStateMachine((CharStateMachine *)(a1 + 1276));
  CharProperties::CharProperties((CharProperties *)(a1 + 1376));
  *(_DWORD *)a1 = off_965F38;
  *(_DWORD *)(a1 + 4) = &off_96608C;
  *(_DWORD *)(a1 + 36) = off_966098;
  *(_DWORD *)(a1 + 884) = off_9660B0;
  *(_DWORD *)(a1 + 892) = off_966124;
  *(_DWORD *)(a1 + 948) = off_966150;
  *(_DWORD *)(a1 + 968) = off_966160;
  *(_DWORD *)(a1 + 1276) = off_966244;
  *(_DWORD *)(a1 + 1180) = off_966234;
  *(_DWORD *)(a1 + 1376) = off_966254;
  *(_BYTE *)(a1 + 5012) = 0;
  *(_BYTE *)(a1 + 5013) = 0;
  *(_BYTE *)(a1 + 5014) = 1;
  *(_BYTE *)(a1 + 5015) = -1;
  *(_DWORD *)(a1 + 5036) = a1 + 5016;
  *(_DWORD *)(a1 + 5032) = a1 + 5016;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block(a1 + 5016, 0x10u);
  **(_BYTE **)(a1 + 5032) = 0;
  *(_DWORD *)(a1 + 5060) = a1 + 5040;
  *(_DWORD *)(a1 + 5056) = a1 + 5040;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block(a1 + 5040, 0x10u);
  **(_BYTE **)(a1 + 5056) = 0;
  *(_WORD *)(a1 + 5064) = -1;
  *(_WORD *)(a1 + 5066) = -1;
  *(_DWORD *)(a1 + 5088) = a1 + 5068;
  *(_DWORD *)(a1 + 5084) = a1 + 5068;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block(a1 + 5068, 0x10u);
  **(_BYTE **)(a1 + 5084) = 0;
  *(_BYTE *)(a1 + 5092) = 1;
  *(_DWORD *)(a1 + 5116) = a1 + 5096;
  *(_DWORD *)(a1 + 5112) = a1 + 5096;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block(a1 + 5096, 0x10u);
  **(_BYTE **)(a1 + 5112) = 0;
  *(_DWORD *)(a1 + 5140) = a1 + 5120;
  *(_DWORD *)(a1 + 5136) = a1 + 5120;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block(a1 + 5120, 0x10u);
  **(_BYTE **)(a1 + 5136) = 0;
  *(_DWORD *)(a1 + 5164) = a1 + 5144;
  *(_DWORD *)(a1 + 5160) = a1 + 5144;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block(a1 + 5144, 0x10u);
  **(_BYTE **)(a1 + 5160) = 0;
  *(_BYTE *)(a1 + 5288) = -1;
  *(_BYTE *)(a1 + 5168) = 1;
  *(_DWORD *)(a1 + 5172) = 0;
  *(_DWORD *)(a1 + 5176) = 0;
  *(_BYTE *)(a1 + 5192) = 1;
  *(_BYTE *)(a1 + 5193) = 0;
  *(_DWORD *)(a1 + 5196) = 0;
  *(_DWORD *)(a1 + 5200) = 0;
  *(_DWORD *)(a1 + 5204) = 0;
  *(_DWORD *)(a1 + 5208) = 0;
  *(_DWORD *)(a1 + 5212) = 0;
  *(_DWORD *)(a1 + 5216) = 0;
  *(_DWORD *)(a1 + 5220) = 0;
  *(_DWORD *)(a1 + 5224) = 0;
  *(_DWORD *)(a1 + 5228) = 0;
  *(_DWORD *)(a1 + 5232) = 0;
  *(_DWORD *)(a1 + 5236) = 0;
  *(_DWORD *)(a1 + 5240) = 0;
  *(_DWORD *)(a1 + 5244) = 0;
  *(_BYTE *)(a1 + 5248) = 0;
  *(_BYTE *)(a1 + 5249) = 0;
  *(_DWORD *)(a1 + 5252) = 0;
  *(_DWORD *)(a1 + 5256) = 0;
  *(_DWORD *)(a1 + 5260) = 0;
  *(_DWORD *)(a1 + 5264) = 0;
  *(_DWORD *)(a1 + 5268) = 0;
  *(_DWORD *)(a1 + 5272) = -1;
  *(_DWORD *)(a1 + 5276) = 0;
  *(_DWORD *)(a1 + 5280) = 0;
  *(_DWORD *)(a1 + 5284) = 0;
  *(_WORD *)(a1 + 5290) = 0;
  *(_BYTE *)(a1 + 5292) = 0;
  *(_DWORD *)(a1 + 5336) = 0;
  *(_DWORD *)(a1 + 5372) = -1082130432;
  *(_DWORD *)(a1 + 5380) = -1;
  *(_BYTE *)(a1 + 5293) = 0;
  *(_DWORD *)(a1 + 5296) = 0;
  *(_DWORD *)(a1 + 5300) = 0;
  *(_DWORD *)(a1 + 5304) = 0;
  *(_DWORD *)(a1 + 5308) = 0;
  *(_DWORD *)(a1 + 5312) = 0;
  *(_DWORD *)(a1 + 5316) = 0;
  *(_BYTE *)(a1 + 5320) = 0;
  *(_WORD *)(a1 + 5322) = -1;
  *(_DWORD *)(a1 + 5324) = 0;
  *(_WORD *)(a1 + 5328) = 0;
  *(_DWORD *)(a1 + 5332) = 0;
  *(_BYTE *)(a1 + 5340) = 0;
  *(_BYTE *)(a1 + 5348) = 0;
  *(_BYTE *)(a1 + 5349) = 0;
  *(_DWORD *)(a1 + 5352) = 0;
  *(_DWORD *)(a1 + 5356) = 0;
  *(_BYTE *)(a1 + 5360) = 0;
  *(_DWORD *)(a1 + 5376) = -1;
  Character::NetStructCharacter::NetStructCharacter((Character::NetStructCharacter *)(a1 + 5384));
  Character::NetStructCharacter::NetStructCharacter((Character::NetStructCharacter *)(a1 + 6728));
  *(_BYTE *)(a1 + 40) = 1;
  ObjectSearcher::TargetList::SetRefObject((ObjectSearcher::TargetList *)(a1 + 772), (GameObject *)a1);
  *(_BYTE *)(a1 + 452) = 1;
  *(_BYTE *)(a1 + 133) = 1;
  v2 = operator new(16, 0);
  v3 = v8;
  v4 = (v2Controller *)v2;
  *(_BYTE *)(v2 + 10) = 0;
  *(_DWORD *)(v2 + 12) = 0;
  *(_DWORD *)v2 = off_965F20;
  *(_DWORD *)(v2 + 4) = v8;
  *(_BYTE *)(v2 + 8) = 0;
  *(_BYTE *)(v2 + 9) = 0;
  if ( !v8 )
  {
    if ( gAssertLevel == 2 )
    {
      *(_DWORD *)(a1 + 884) = 0;
    }
    else if ( gAssertLevel == 1 )
    {
      fprintf(
        (FILE *)&_sF + 2,
        "ASSERT(%s) FAILED: %s:%d\n",
        "controllable",
        "..\\..\\project_vs2005\\Game/..\\..\\sources/Game/Controllers/v2Controller.h",
        68);
      v3 = nullptr;
    }
  }
  v2Controllable::SetController(v3, v4);
  *(_DWORD *)(*(_DWORD *)(a1 + 888) + 12) = a1;
  CharTimers::SetCharacter((CharTimers *)(a1 + 948), (Character *)a1);
  CharAI::SetCharacter((CharAI *)(a1 + 968), (Character *)a1);
  CharAnimator::SetCharacter((CharAnimator *)(a1 + 1180), (Character *)a1);
  CharStateMachine::SetCharacter((CharStateMachine *)(a1 + 1276), (Character *)a1);
  CharProperties::SetCharacter((CharProperties *)(a1 + 1376), (Character *)a1);
  v5 = 0;
  *(_DWORD *)(a1 + 896) = a1;
  do
  {
    v6 = v5++;
    CharStateMachine::RegisterState((CharStateMachine *)(a1 + 1276), v6);
  }
  while ( v5 != 20 );
  *(_DWORD *)(a1 + 5344) = 0;
  *(_DWORD *)(a1 + 5364) = -1;
  *(_DWORD *)(a1 + 256) = a1 + 5384;
  *(_DWORD *)(a1 + 260) = a1 + 6728;
  *(_DWORD *)(a1 + 5368) = -1;
  *(_BYTE *)(a1 + 248) = 1;
  return a1;
}


// ===== 3a98e8 SimpleTypeProperty<Point2D<int>>::Clone(void) =====
int __fastcall SimpleTypeProperty<Point2D<int>>::Clone(int a1)
{
  int v2; // r4

  v2 = operator new(0x28u, 0);
  *(_DWORD *)v2 = &off_95C5E8;
  *(_DWORD *)(v2 + 24) = v2 + 8;
  *(_DWORD *)(v2 + 28) = v2 + 8;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block((_DWORD *)(v2 + 8), 0x10u);
  **(_BYTE **)(v2 + 24) = 0;
  *(_DWORD *)(v2 + 36) = 0;
  *(_DWORD *)v2 = off_965EB0;
  *(_DWORD *)(v2 + 32) = 0;
  *(_DWORD *)(v2 + 4) = *(_DWORD *)(a1 + 4);
  if ( v2 + 8 != a1 + 8 )
    std::string::_M_assign((std::string *const)(v2 + 8), *(const char **)(a1 + 28), *(const char **)(a1 + 24));
  *(_DWORD *)(v2 + 32) = *(_DWORD *)(a1 + 32);
  *(_DWORD *)(v2 + 36) = *(_DWORD *)(a1 + 36);
  return v2;
}


// ===== 3a999c Character::INV_UpdateSkin(void) =====
int __fastcall Character::INV_UpdateSkin(VisualObject **this)
{
  unsigned int v2; // r4
  unsigned int v3; // r5
  int ModularCategoryId; // r10
  int ModularModuleId; // r3
  ItemInstance *EquippedItem; // r10
  const char *ModularCategoryName; // r0
  const char *v8; // r8
  const char *v9; // r10
  size_t v10; // r0
  char *M_data; // r8
  int v12; // r3
  int v13; // r2
  int result; // r0
  size_t v15; // r0
  int v16; // r3
  size_t v17; // r0
  _BOOL4 v18; // r0
  char *v19; // r0
  int v20; // [sp+4h] [bp-60h]
  std::string v21; // [sp+2Ch] [bp-38h] BYREF
  std::string v22; // [sp+44h] [bp-20h] BYREF

  v22._M_finish = (char *)&v22;
  v22._M_start_of_storage._M_data = (char *)&v22;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block((int)&v22, 0x10u);
  v2 = 0;
  *v22._M_finish = 0;
  if ( *(this + 182) )
  {
    v3 = -1;
    while ( 1 )
    {
      EquippedItem = (ItemInstance *)ItemInventory::GetEquippedItem((ItemInventory *)(this + 223), v2);
      ModularCategoryName = (const char *)ItemInventory::GetModularCategoryName((ItemInventory *)(this + 223), v2);
      v8 = ModularCategoryName;
      if ( !ModularCategoryName )
        goto LABEL_6;
      if ( !EquippedItem )
        break;
      v9 = *(const char **)(ItemInstance::GetItem(EquippedItem) + 80);
      v10 = LC_API_STRLEN_0(v9);
      std::string::_M_assign(&v22, v9, &v9[v10]);
      if ( v3 > 1 )
      {
        ModularCategoryId = VisualObject::GetModularCategoryId(*(this + 182), v8);
        ModularModuleId = VisualObject::GetModularModuleId(
                            *(this + 182),
                            ModularCategoryId,
                            v22._M_start_of_storage._M_data);
        if ( ModularModuleId == -1 )
        {
          v17 = LC_API_STRLEN_0(v8);
          std::string::_M_assign(&v22, v8, &v8[v17]);
          std::string::_M_append(&v22, "__placeholder", "");
          ModularModuleId = VisualObject::GetModularModuleId(
                              *(this + 182),
                              ModularCategoryId,
                              v22._M_start_of_storage._M_data);
        }
LABEL_5:
        v20 = ModularModuleId;
        DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
        std::string::string((int)&v21, "isTracingChar_Modular");
        DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v21);
        std::string::~string(&v21);
        VisualObject::SetModularSkin(*(this + 182), ModularCategoryId, v20);
LABEL_6:
        ++v2;
        ++v3;
        if ( v2 == 9 )
          goto LABEL_14;
      }
      else
      {
        M_data = v22._M_start_of_storage._M_data;
        if ( LC_API_STRSTR_0(v22._M_start_of_storage._M_data, "Shield") )
        {
          v12 = 0;
        }
        else
        {
          if ( !LC_API_STRSTR_0(M_data, "Bow") )
          {
            v18 = LC_API_STRSTR_0(M_data, "Claw") != nullptr;
            if ( v2 != 2 )
              v18 = 0;
            if ( !v18 )
            {
              v12 = v2;
              goto LABEL_13;
            }
            v19 = LC_API_STRSTR_0(M_data, "RWeapon");
            if ( v19 )
            {
              *v19 = 76;
              M_data = v22._M_start_of_storage._M_data;
              v12 = 2;
              goto LABEL_13;
            }
          }
          v12 = 2;
        }
LABEL_13:
        v13 = v2++;
        VisualObject::SetWeaponSkin(*(this + 182), M_data, v13, v12);
        ++v3;
        if ( v2 == 9 )
          goto LABEL_14;
      }
    }
    v15 = LC_API_STRLEN_0(ModularCategoryName);
    std::string::_M_assign(&v22, v8, &v8[v15]);
    std::string::_M_append(&v22, "__naked", "");
    if ( v3 <= 1 )
    {
      if ( LC_API_STRSTR_0(v22._M_start_of_storage._M_data, "Shield") )
        v16 = 0;
      else
        v16 = v2;
      VisualObject::SetWeaponSkin(*(this + 182), nullptr, v2, v16);
      goto LABEL_6;
    }
    ModularCategoryId = VisualObject::GetModularCategoryId(*(this + 182), v8);
    ModularModuleId = VisualObject::GetModularModuleId(
                        *(this + 182),
                        ModularCategoryId,
                        v22._M_start_of_storage._M_data);
    goto LABEL_5;
  }
LABEL_14:
  std::string::~string(&v22);
  return result;
}


// ===== 3a9d10 Character::INV_CheckItemsRequirements(void) =====
int __fastcall Character::INV_CheckItemsRequirements(Character *this)
{
  ItemInventory *v1; // r5
  int result; // r0
  int v4; // r7
  unsigned int v5; // r4
  int v6; // r8
  ItemInstance *EquippedItem; // r0
  unsigned int v8; // r1

  v1 = (Character *)((char *)this + 892);
  result = ItemInventory::GetNumEquipmentSlots((Character *)((char *)this + 892));
  v4 = result;
  if ( result )
  {
    v5 = 0;
    v6 = 0;
    do
    {
      while ( 1 )
      {
        EquippedItem = (ItemInstance *)ItemInventory::GetEquippedItem(v1, v5);
        result = Character::INV_DoesMeetRequirements(this, EquippedItem);
        if ( !result )
          break;
        if ( ++v5 == v4 )
          goto LABEL_6;
      }
      v8 = v5++;
      result = ItemInventory::UnEquipItemFromSlot(v1, v8, -1);
      v6 = 1;
    }
    while ( v5 != v4 );
LABEL_6:
    if ( v6 )
    {
      CharProperties::UpdateGearsProperties((Character *)((char *)this + 1376));
      Character::INV_CheckItemsRequirements(this);
      Character::INV_UpdateSkin((VisualObject **)this);
      return Character::ValidateHPMP(this);
    }
  }
  return result;
}


// ===== 3a9db4 Character::ReloadSkills(void) =====
int __fastcall Character::ReloadSkills(Character *this)
{
  CharProperties *v1; // r5
  MenuManager *PlayerLevel; // r0
  bool v4; // r5
  RenderFX *v5; // r0
  _BYTE v7[12]; // [sp+Ch] [bp-Ch] BYREF

  v1 = (Character *)((char *)this + 1376);
  CharProperties::PROPS_RemoveAllBuffs((Character *)((char *)this + 1376));
  Character::SG_Load(this, 32);
  CharAI::AI_ReloadSkills((Character *)((char *)this + 968));
  CharAI::UpdateAllSkills((Character *)((char *)this + 968));
  CharProperties::RecalcProperties(v1, 1);
  Character::INV_CheckItemsRequirements(this);
  PlayerLevel = (MenuManager *)Character::SG_GetPlayerLevel(this);
  v4 = false;
  if ( (int)PlayerLevel > 11 )
  {
    PlayerLevel = (MenuManager *)Character::SG_GetPlayerClass(this);
    if ( PlayerLevel == (MenuManager *)((char *)&elf_hash_bucket[10] + 3)
      || (PlayerLevel = (MenuManager *)Character::SG_GetPlayerClass(this),
          PlayerLevel == (MenuManager *)((char *)&elf_hash_bucket[26] + 1))
      || (PlayerLevel = (MenuManager *)Character::SG_GetPlayerClass(this),
          PlayerLevel == (MenuManager *)((char *)&elf_hash_bucket[17] + 2)) )
    {
      v4 = true;
    }
  }
  v5 = *(RenderFX **)(*(_DWORD *)(MenuManager::GetInstance(PlayerLevel) + 244) + 312);
  v7[0] = 0;
  v7[4] = v4;
  v7[1] = 1;
  RenderFX::InvokeASCallback(v5, "_root.menu_CharacterMenu", "IsSpecTime", (const gameswf::as_value *)v7, 1);
  return gameswf::as_value::drop_refs((gameswf::as_value *)v7);
}


// ===== 3a9eb0 Character::UnEquipItemFromSlot(uint) =====
int __fastcall Character::UnEquipItemFromSlot(Character *this, unsigned int a2)
{
  ItemInventory::UnEquipItemFromSlot((Character *)((char *)this + 892), a2, -1);
  CharProperties::UpdateGearsProperties((Character *)((char *)this + 1376));
  Character::INV_CheckItemsRequirements(this);
  Character::INV_UpdateSkin(this);
  return Character::ValidateHPMP(this);
}


// ===== 3a9ee8 Character::EquipSlotAuto(uint) =====
int __fastcall Character::EquipSlotAuto(Character *this, unsigned int a2)
{
  int v3; // r5

  v3 = ItemInventory::EquipSlotAuto((Character *)((char *)this + 892), a2, this);
  CharProperties::UpdateGearsProperties((Character *)((char *)this + 1376));
  Character::INV_CheckItemsRequirements(this);
  Character::INV_UpdateSkin(this);
  Character::ValidateHPMP(this);
  return v3;
}


// ===== 3a9f28 `non-virtual thunk to'Character::EquipItemToSlot(uint,uint) =====
int __fastcall `non-virtual thunk to'Character::EquipItemToSlot(Character *this, unsigned int a2, unsigned int a3)
{
  return Character::EquipItemToSlot((Character *)((char *)this - 892), a2, a3);
}


// ===== 3a9f30 Character::EquipItemToSlot(uint,uint) =====
int __fastcall Character::EquipItemToSlot(Character *this, unsigned int a2, unsigned int a3)
{
  ItemInventory::EquipItemToSlot((Character *)((char *)this + 892), a2, a3);
  CharProperties::UpdateGearsProperties((Character *)((char *)this + 1376));
  Character::INV_CheckItemsRequirements(this);
  Character::INV_UpdateSkin(this);
  return Character::ValidateHPMP(this);
}


// ===== 3a9f64 `non-virtual thunk to'Character::UnEquipItemAuto(uint) =====
int __fastcall `non-virtual thunk to'Character::UnEquipItemAuto(Character *this, unsigned int a2)
{
  return Character::UnEquipItemAuto((Character *)((char *)this - 892), a2);
}


// ===== 3a9f6c Character::UnEquipItemAuto(uint) =====
int __fastcall Character::UnEquipItemAuto(Character *this, unsigned int a2)
{
  ItemInventory::UnEquipItemAuto((Character *)((char *)this + 892), a2);
  CharProperties::UpdateGearsProperties((Character *)((char *)this + 1376));
  Character::INV_CheckItemsRequirements(this);
  Character::INV_UpdateSkin(this);
  return Character::ValidateHPMP(this);
}


// ===== 3a9fa0 `non-virtual thunk to'Character::EquipItemAuto(uint) =====
int __fastcall `non-virtual thunk to'Character::EquipItemAuto(Character *this, unsigned int a2)
{
  return Character::EquipItemAuto((Character *)((char *)this - 892), a2);
}


// ===== 3a9fa8 Character::EquipItemAuto(uint) =====
int __fastcall Character::EquipItemAuto(Character *this, unsigned int a2)
{
  int v3; // r5

  v3 = ItemInventory::EquipItemAuto((Character *)((char *)this + 892), a2);
  CharProperties::UpdateGearsProperties((Character *)((char *)this + 1376));
  Character::INV_UpdateSkin(this);
  Character::ValidateHPMP(this);
  return v3;
}


// ===== 3a9fdc `non-virtual thunk to'Character::DeclareProperties(void) =====
int __fastcall `non-virtual thunk to'Character::DeclareProperties(Character *this)
{
  return Character::DeclareProperties((Character *)((char *)this - 4));
}


// ===== 3a9fe4 Character::DeclareProperties(void) =====
int __fastcall Character::DeclareProperties(Character *this)
{
  Character *v1; // r7
  PropertyMap *v2; // r4
  Property *v3; // r6
  Property *v4; // r6

  v1 = this;
  GameObject::DeclareProperties(this);
  v2 = (Character *)((char *)v1 + 4);
  PropertyMap::AddProperty<std::string>((int)v1 + 4, (int)"charpropsname", (int)v1 + 5040);
  PropertyMap::AddProperty<std::string>((int)v1 + 4, (int)"char_template", (int)v1 + 5016);
  PropertyMap::AddProperty<std::string>((int)v1 + 4, (int)"ai_state", (int)v1 + 5068);
  PropertyMap::AddProperty<bool>((char *)v1 + 4, "ai_state_visible", (char *)v1 + 5092);
  PropertyMap::AddProperty<std::string>((int)v1 + 4, (int)"starting_waypoint", (int)v1 + 5096);
  v1 = (Character *)((char *)v1 + 5120);
  PropertyMap::AddProperty<std::string>((int)v2, (int)"char_group", (int)v1);
  PropertyMap::AddProperty<std::string>((int)v2, (int)"char_group_role", (int)v1 + 24);
  PropertyMap::AddProperty<bool>(v2, "auto_spawn", (char *)v1 + 48);
  v3 = (Property *)operator new(40, 0);
  *(_DWORD *)v3 = &off_95C5E8;
  std::string::string((int)v3 + 8, "spawn_delay");
  *((_DWORD *)v3 + 1) = (Character *)((char *)v1 + 52) - v2;
  *(_DWORD *)v3 = off_965EB0;
  *((_DWORD *)v3 + 8) = 0;
  *((_DWORD *)v3 + 9) = 0;
  PropertyMap::AddProperty(v2, "spawn_delay", v3);
  v4 = (Property *)operator new(36, 0);
  *(_DWORD *)v4 = &off_95C5E8;
  std::string::string((int)v4 + 8, "spawn_view_radius");
  *((_DWORD *)v4 + 1) = (Character *)((char *)v1 + 60) - v2;
  *(_DWORD *)v4 = &off_964898;
  *((_DWORD *)v4 + 8) = 0;
  return PropertyMap::AddProperty(v2, "spawn_view_radius", v4);
}


// ===== 3aa1b4 Character::Character(ObjectBase::GO_IDS) =====
int __fastcall Character::Character(int a1)
{
  int v2; // r0
  v2Controllable *v3; // r12
  v2Controller *v4; // r6
  int v5; // r6
  int v6; // r1
  v2Controllable *v8; // [sp+Ch] [bp-30h]

  v8 = (v2Controllable *)(a1 + 884);
  GameObject::GameObject();
  v2Controllable::v2Controllable(v8);
  ItemInventory::ItemInventory((ItemInventory *)(a1 + 892));
  CharTimers::CharTimers((CharTimers *)(a1 + 948));
  CharAI::CharAI((CharAI *)(a1 + 968));
  CharAnimator::CharAnimator((CharAnimator *)(a1 + 1180));
  CharStateMachine::CharStateMachine((CharStateMachine *)(a1 + 1276));
  CharProperties::CharProperties((CharProperties *)(a1 + 1376));
  *(_DWORD *)a1 = off_965F38;
  *(_DWORD *)(a1 + 4) = &off_96608C;
  *(_DWORD *)(a1 + 36) = off_966098;
  *(_DWORD *)(a1 + 884) = off_9660B0;
  *(_DWORD *)(a1 + 892) = off_966124;
  *(_DWORD *)(a1 + 948) = off_966150;
  *(_DWORD *)(a1 + 968) = off_966160;
  *(_DWORD *)(a1 + 1276) = off_966244;
  *(_DWORD *)(a1 + 1180) = off_966234;
  *(_DWORD *)(a1 + 1376) = off_966254;
  *(_BYTE *)(a1 + 5012) = 0;
  *(_BYTE *)(a1 + 5013) = 0;
  *(_BYTE *)(a1 + 5014) = 1;
  *(_BYTE *)(a1 + 5015) = -1;
  *(_DWORD *)(a1 + 5036) = a1 + 5016;
  *(_DWORD *)(a1 + 5032) = a1 + 5016;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block(a1 + 5016, 0x10u);
  **(_BYTE **)(a1 + 5032) = 0;
  *(_DWORD *)(a1 + 5060) = a1 + 5040;
  *(_DWORD *)(a1 + 5056) = a1 + 5040;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block(a1 + 5040, 0x10u);
  **(_BYTE **)(a1 + 5056) = 0;
  *(_WORD *)(a1 + 5064) = -1;
  *(_WORD *)(a1 + 5066) = -1;
  *(_DWORD *)(a1 + 5088) = a1 + 5068;
  *(_DWORD *)(a1 + 5084) = a1 + 5068;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block(a1 + 5068, 0x10u);
  **(_BYTE **)(a1 + 5084) = 0;
  *(_BYTE *)(a1 + 5092) = 1;
  *(_DWORD *)(a1 + 5116) = a1 + 5096;
  *(_DWORD *)(a1 + 5112) = a1 + 5096;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block(a1 + 5096, 0x10u);
  **(_BYTE **)(a1 + 5112) = 0;
  *(_DWORD *)(a1 + 5140) = a1 + 5120;
  *(_DWORD *)(a1 + 5136) = a1 + 5120;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block(a1 + 5120, 0x10u);
  **(_BYTE **)(a1 + 5136) = 0;
  *(_DWORD *)(a1 + 5164) = a1 + 5144;
  *(_DWORD *)(a1 + 5160) = a1 + 5144;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block(a1 + 5144, 0x10u);
  **(_BYTE **)(a1 + 5160) = 0;
  *(_BYTE *)(a1 + 5288) = -1;
  *(_BYTE *)(a1 + 5168) = 1;
  *(_DWORD *)(a1 + 5172) = 0;
  *(_DWORD *)(a1 + 5176) = 0;
  *(_BYTE *)(a1 + 5192) = 1;
  *(_BYTE *)(a1 + 5193) = 0;
  *(_DWORD *)(a1 + 5196) = 0;
  *(_DWORD *)(a1 + 5200) = 0;
  *(_DWORD *)(a1 + 5204) = 0;
  *(_DWORD *)(a1 + 5208) = 0;
  *(_DWORD *)(a1 + 5212) = 0;
  *(_DWORD *)(a1 + 5216) = 0;
  *(_DWORD *)(a1 + 5220) = 0;
  *(_DWORD *)(a1 + 5224) = 0;
  *(_DWORD *)(a1 + 5228) = 0;
  *(_DWORD *)(a1 + 5232) = 0;
  *(_DWORD *)(a1 + 5236) = 0;
  *(_DWORD *)(a1 + 5240) = 0;
  *(_DWORD *)(a1 + 5244) = 0;
  *(_BYTE *)(a1 + 5248) = 0;
  *(_BYTE *)(a1 + 5249) = 0;
  *(_DWORD *)(a1 + 5252) = 0;
  *(_DWORD *)(a1 + 5256) = 0;
  *(_DWORD *)(a1 + 5260) = 0;
  *(_DWORD *)(a1 + 5264) = 0;
  *(_DWORD *)(a1 + 5268) = 0;
  *(_DWORD *)(a1 + 5272) = -1;
  *(_DWORD *)(a1 + 5276) = 0;
  *(_DWORD *)(a1 + 5280) = 0;
  *(_DWORD *)(a1 + 5284) = 0;
  *(_WORD *)(a1 + 5290) = 0;
  *(_BYTE *)(a1 + 5292) = 0;
  *(_DWORD *)(a1 + 5336) = 0;
  *(_DWORD *)(a1 + 5372) = -1082130432;
  *(_DWORD *)(a1 + 5380) = -1;
  *(_BYTE *)(a1 + 5293) = 0;
  *(_DWORD *)(a1 + 5296) = 0;
  *(_DWORD *)(a1 + 5300) = 0;
  *(_DWORD *)(a1 + 5304) = 0;
  *(_DWORD *)(a1 + 5308) = 0;
  *(_DWORD *)(a1 + 5312) = 0;
  *(_DWORD *)(a1 + 5316) = 0;
  *(_BYTE *)(a1 + 5320) = 0;
  *(_WORD *)(a1 + 5322) = -1;
  *(_DWORD *)(a1 + 5324) = 0;
  *(_WORD *)(a1 + 5328) = 0;
  *(_DWORD *)(a1 + 5332) = 0;
  *(_BYTE *)(a1 + 5340) = 0;
  *(_BYTE *)(a1 + 5348) = 0;
  *(_BYTE *)(a1 + 5349) = 0;
  *(_DWORD *)(a1 + 5352) = 0;
  *(_DWORD *)(a1 + 5356) = 0;
  *(_BYTE *)(a1 + 5360) = 0;
  *(_DWORD *)(a1 + 5376) = -1;
  Character::NetStructCharacter::NetStructCharacter((Character::NetStructCharacter *)(a1 + 5384));
  Character::NetStructCharacter::NetStructCharacter((Character::NetStructCharacter *)(a1 + 6728));
  *(_BYTE *)(a1 + 40) = 1;
  ObjectSearcher::TargetList::SetRefObject((ObjectSearcher::TargetList *)(a1 + 772), (GameObject *)a1);
  *(_BYTE *)(a1 + 452) = 1;
  *(_BYTE *)(a1 + 133) = 1;
  v2 = operator new(16, 0);
  v3 = v8;
  v4 = (v2Controller *)v2;
  *(_BYTE *)(v2 + 10) = 0;
  *(_DWORD *)(v2 + 12) = 0;
  *(_DWORD *)v2 = off_965F20;
  *(_DWORD *)(v2 + 4) = v8;
  *(_BYTE *)(v2 + 8) = 0;
  *(_BYTE *)(v2 + 9) = 0;
  if ( !v8 )
  {
    if ( gAssertLevel == 2 )
    {
      *(_DWORD *)(a1 + 884) = 0;
    }
    else if ( gAssertLevel == 1 )
    {
      fprintf(
        (FILE *)&_sF + 2,
        "ASSERT(%s) FAILED: %s:%d\n",
        "controllable",
        "..\\..\\project_vs2005\\Game/..\\..\\sources/Game/Controllers/v2Controller.h",
        68);
      v3 = nullptr;
    }
  }
  v2Controllable::SetController(v3, v4);
  *(_DWORD *)(*(_DWORD *)(a1 + 888) + 12) = a1;
  CharTimers::SetCharacter((CharTimers *)(a1 + 948), (Character *)a1);
  CharAI::SetCharacter((CharAI *)(a1 + 968), (Character *)a1);
  CharAnimator::SetCharacter((CharAnimator *)(a1 + 1180), (Character *)a1);
  CharStateMachine::SetCharacter((CharStateMachine *)(a1 + 1276), (Character *)a1);
  CharProperties::SetCharacter((CharProperties *)(a1 + 1376), (Character *)a1);
  v5 = 0;
  *(_DWORD *)(a1 + 896) = a1;
  do
  {
    v6 = v5++;
    CharStateMachine::RegisterState((CharStateMachine *)(a1 + 1276), v6);
  }
  while ( v5 != 20 );
  *(_DWORD *)(a1 + 5344) = 0;
  *(_DWORD *)(a1 + 5364) = -1;
  *(_DWORD *)(a1 + 256) = a1 + 5384;
  *(_DWORD *)(a1 + 260) = a1 + 6728;
  *(_DWORD *)(a1 + 5368) = -1;
  *(_BYTE *)(a1 + 248) = 1;
  return a1;
}


// ===== 3aa75c std::allocator<std::priv::_Rb_tree_node<std::pair<int const,Character *>>>::allocate(uint,void const*) [clone] =====
void *std::allocator<std::priv::_Rb_tree_node<std::pair<int const,Character *>>>::allocate()
{
  size_t v1; // [sp+4h] [bp-8h] BYREF

  v1 = 24;
  return __ZNSt12__node_alloc11_M_allocateERj_veneer(&v1);
}


// ===== 3aa77c std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,Character *>,std::priv::_Select1st<std::pair<int const,Character *>>,std::priv::_MapTraitsT<std::pair<int const,Character *>>,std::allocator<std::pair<int const,Character *>>>::_M_insert(std::priv::_Rb_tree_node_base *,std::pair<int const,Character *> const&,std::priv::_Rb_tree_node_base *,std::priv::_Rb_tree_node_base *) [clone] =====
_DWORD *__fastcall std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,Character *>,std::priv::_Select1st<std::pair<int const,Character *>>,std::priv::_MapTraitsT<std::pair<int const,Character *>>,std::allocator<std::pair<int const,Character *>>>::_M_insert(
        _DWORD *a1,
        int a2,
        _DWORD *a3,
        int a4,
        int a5)
{
  _DWORD *v8; // r0
  _DWORD *v9; // r8
  int v10; // r2
  _DWORD *v12; // r0
  int v13; // r2
  int v14; // r2

  if ( (char *)a2 == &Character::s_concurrentAI )
  {
    v9 = std::allocator<std::priv::_Rb_tree_node<std::pair<int const,Character *>>>::allocate();
    v9[4] = *a3;
    v14 = a3[1];
    v9[3] = 0;
    v9[2] = 0;
    v9[5] = v14;
    *(_DWORD *)(a2 + 8) = v9;
    *(_DWORD *)(a2 + 4) = v9;
    *(_DWORD *)(a2 + 12) = v9;
  }
  else if ( !a5 && (a4 || *a3 < *(_DWORD *)(a2 + 16)) )
  {
    v12 = std::allocator<std::priv::_Rb_tree_node<std::pair<int const,Character *>>>::allocate();
    v9 = v12;
    v12[4] = *a3;
    v13 = a3[1];
    v12[3] = 0;
    v12[2] = 0;
    v12[5] = v13;
    *(_DWORD *)(a2 + 8) = v12;
    if ( a2 == dword_9A294C )
      dword_9A294C = (int)v12;
  }
  else
  {
    v8 = std::allocator<std::priv::_Rb_tree_node<std::pair<int const,Character *>>>::allocate();
    v9 = v8;
    v8[4] = *a3;
    v10 = a3[1];
    v8[3] = 0;
    v8[2] = 0;
    v8[5] = v10;
    *(_DWORD *)(a2 + 12) = v8;
    if ( a2 == dword_9A2950 )
      dword_9A2950 = (int)v8;
  }
  v9[1] = a2;
  std::priv::_Rb_global<bool>::_Rebalance((int)v9, &dword_9A2948);
  ++dword_9A2954;
  *a1 = v9;
  return a1;
}


// ===== 3aa8b4 std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,Character *>,std::priv::_Select1st<std::pair<int const,Character *>>,std::priv::_MapTraitsT<std::pair<int const,Character *>>,std::allocator<std::pair<int const,Character *>>>::insert_unique(std::pair<int const,Character *> const&) [clone] =====
int __fastcall std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,Character *>,std::priv::_Select1st<std::pair<int const,Character *>>,std::priv::_MapTraitsT<std::pair<int const,Character *>>,std::allocator<std::pair<int const,Character *>>>::insert_unique(
        int a1,
        int *a2)
{
  char *v4; // r1
  int v5; // r7
  int v6; // r5
  int v7; // r6
  char *v8; // r0
  char *v9; // r3
  _DWORD *v11; // r3
  int v12; // r3
  _DWORD *v13; // r0
  int v14; // r3
  int v15; // [sp+8h] [bp-Ch] BYREF
  int v16; // [sp+Ch] [bp-8h] BYREF

  v4 = (char *)dword_9A2948;
  if ( dword_9A2948 )
  {
    v5 = *a2;
    while ( 1 )
    {
      v6 = *((_DWORD *)v4 + 4);
      v7 = 1;
      if ( v6 <= v5 )
      {
        v8 = *((char **)v4 + 3);
        v7 = 0;
      }
      else
      {
        v8 = *((char **)v4 + 2);
      }
      if ( !v8 )
        break;
      v4 = v8;
    }
    if ( !v7 )
    {
      v9 = v4;
      goto LABEL_12;
    }
  }
  else
  {
    v4 = &Character::s_concurrentAI;
  }
  if ( (char *)dword_9A294C == v4 )
  {
    std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,Character *>,std::priv::_Select1st<std::pair<int const,Character *>>,std::priv::_MapTraitsT<std::pair<int const,Character *>>,std::allocator<std::pair<int const,Character *>>>::_M_insert(
      &v15,
      (int)v4,
      a2,
      (int)v4,
      0);
    v14 = v15;
    *(_BYTE *)(a1 + 4) = 1;
    *(_DWORD *)a1 = v14;
    return a1;
  }
  if ( *v4 || v4 != *(char **)(*((_DWORD *)v4 + 1) + 4) )
  {
    v11 = *((_DWORD **)v4 + 2);
    if ( v11 )
    {
      while ( v11[3] )
        v11 = (_DWORD *)v11[3];
    }
    else
    {
      v11 = *((_DWORD **)v4 + 1);
      if ( v4 == (char *)v11[2] )
      {
        do
        {
          v13 = v11;
          v11 = (_DWORD *)v11[1];
        }
        while ( (_DWORD *)v11[2] == v13 );
      }
    }
    if ( *a2 <= v11[4] )
    {
      *(_DWORD *)a1 = v11;
      *(_BYTE *)(a1 + 4) = 0;
      return a1;
    }
LABEL_25:
    std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,Character *>,std::priv::_Select1st<std::pair<int const,Character *>>,std::priv::_MapTraitsT<std::pair<int const,Character *>>,std::allocator<std::pair<int const,Character *>>>::_M_insert(
      &v16,
      (int)v4,
      a2,
      0,
      0);
    v12 = v16;
    *(_BYTE *)(a1 + 4) = 1;
    *(_DWORD *)a1 = v12;
    return a1;
  }
  v9 = *((char **)v4 + 3);
  v5 = *a2;
  v6 = *((_DWORD *)v9 + 4);
LABEL_12:
  if ( v5 > v6 )
    goto LABEL_25;
  *(_DWORD *)a1 = v9;
  *(_BYTE *)(a1 + 4) = 0;
  return a1;
}


// ===== 3aaa34 `global constructor keyed to'.._.._sources_Game_Objects_Characters_Character.cpp =====
int __fastcall `global constructor keyed to'.._.._sources_Game_Objects_Characters_Character.cpp(CMessage *a1)
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
  int *v16; // r4
  int v17; // r0
  int v18; // r2
  void *v19; // r0
  int *v20; // r1
  int v21; // r0
  int v22; // r3
  int v23; // r6
  unsigned int v24; // r8
  int v25; // r12
  int v26; // r3
  int v27; // r6
  unsigned int v28; // r8
  int v29; // r12
  int v30; // r3
  int v31; // r6
  unsigned int v32; // r8
  int v33; // r12
  int v34; // r3
  int v35; // r6
  unsigned int v36; // r8
  int v37; // r12
  int v38; // r3
  int v39; // r6
  unsigned int v40; // r8
  int v41; // r12
  int v42; // r3
  unsigned int v43; // [sp+4h] [bp-18h]
  int v44; // [sp+8h] [bp-14h]
  size_t v45; // [sp+14h] [bp-8h] BYREF

  dword_9A2910 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9A290C = 1056964608;
  messageCreationMap = CMessage::InitializeMessageRegistration(a1);
  byte_9A2915 = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgStartGame",
                  (const char *)GetNewInstance<CMsgStartGame>,
                  v1);
  byte_9A2916 = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgControllerAction",
                  (const char *)GetNewInstance<CMsgControllerAction>,
                  v2);
  byte_9A2917 = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgAttackResult",
                  (const char *)GetNewInstance<CMsgAttackResult>,
                  v3);
  byte_9A2918 = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgRaisedEvent",
                  (const char *)GetNewInstance<CMsgRaisedEvent>,
                  v4);
  byte_9A2919 = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgMenuReady",
                  (const char *)GetNewInstance<CMsgMenuReady>,
                  v5);
  byte_9A291A = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgScriptCmd",
                  (const char *)GetNewInstance<CMsgScriptCmd>,
                  v6);
  byte_9A291B = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgInitialSetup",
                  (const char *)GetNewInstance<CMsgInitialSetup>,
                  v7);
  byte_9A291C = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgQuestsSync",
                  (const char *)GetNewInstance<CMsgQuestsSync>,
                  v8);
  byte_9A291D = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgDropLoot",
                  (const char *)GetNewInstance<CMsgDropLoot>,
                  v9);
  byte_9A291E = CMessage::RegisterMessageType((CMessage *)"CMsgIsHost", (const char *)GetNewInstance<CMsgIsHost>, v10);
  byte_9A291F = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgSpawnObject",
                  (const char *)GetNewInstance<CMsgSpawnObject>,
                  v11);
  byte_9A2920 = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgGlobalDeath",
                  (const char *)GetNewInstance<CMsgGlobalDeath>,
                  v12);
  v14 = (CMessage *)CMessage::RegisterMessageType(
                      (CMessage *)"CMsgAskResendAttributes",
                      (const char *)GetNewInstance<CMsgAskResendAttributes>,
                      v13);
  byte_9A2921 = (char)v14;
  byte_9A2922 = CMessage::TerminateMessageRegistration(v14);
  dword_9A2930 = 0;
  Character::s_cachedCharOIDs = 0;
  dword_9A2934 = (int)&Character::s_cachedCharOIDs;
  dword_9A2938 = (int)&Character::s_cachedCharOIDs;
  dword_9A293C = 0;
  _aeabi_atexit(&Character::s_cachedCharOIDs, std::map<int,unsigned int>::~map, &_dso_handle);
  dword_9A2954 = 0;
  dword_9A2948 = 0;
  Character::s_concurrentAI = 0;
  dword_9A294C = (int)&Character::s_concurrentAI;
  dword_9A2950 = (int)&Character::s_concurrentAI;
  result = _aeabi_atexit(&Character::s_concurrentAI, std::map<int,Character *>::~map, &_dso_handle);
  if ( (`guard variable for'Singleton<PlayerStatManager>::s_inst & 1) == 0 )
  {
    `guard variable for'Singleton<PlayerStatManager>::s_inst = 1;
    PlayerStatManager::PlayerStatManager((PlayerStatManager *)&Singleton<PlayerStatManager>::s_inst);
    result = _aeabi_atexit(&Singleton<PlayerStatManager>::s_inst, PlayerStatManager::~PlayerStatManager, &_dso_handle);
  }
  if ( (`guard variable for'Singleton<Application>::s_inst & 1) == 0 )
  {
    `guard variable for'Singleton<Application>::s_inst = 1;
    Application::Application((Application *)&Singleton<Application>::s_inst);
    result = _aeabi_atexit(&Singleton<Application>::s_inst, Application::~Application, &_dso_handle);
  }
  if ( (`guard variable for'Singleton<MenuMessageManager<StatusMsg,4>>::s_inst & 1) == 0 )
  {
    `guard variable for'Singleton<MenuMessageManager<StatusMsg,4>>::s_inst = 1;
    Singleton<MenuMessageManager<StatusMsg,4>>::s_inst = (int)off_95B150;
    v16 = &dword_99FA90;
    do
    {
      *v16 = 0;
      v16[1] = 0;
      v16[2] = 0;
      v16[3] = 0;
      v16[4] = 0;
      v16[5] = 0;
      v16[6] = 0;
      v16[7] = 0;
      v16[8] = 0;
      v16[9] = 8;
      v17 = std::allocator<StatusMsg *>::allocate(v16 + 8, 8, 0);
      v18 = v16[9];
      v16[8] = v17;
      v43 = (unsigned int)(v18 - 1) >> 1;
      v44 = v17;
      v45 = 112;
      v19 = __ZNSt12__node_alloc11_M_allocateERj_veneer(&v45);
      v20 = (int *)(v44 + 4 * v43);
      *v20 = (int)v19;
      v16[3] = (int)v20;
      v21 = *v20;
      v16[7] = (int)v20;
      v16[1] = v21;
      v16[2] = v21 + 112;
      v22 = *v20;
      *v16 = v21;
      v16[6] = v22 + 112;
      v16[4] = v22;
      v16[5] = v22;
      v16 += 10;
    }
    while ( v16 != &Singleton<MenuMessageManager<OnlineStatusMsg,1>>::s_inst );
    result = _aeabi_atexit(
               &Singleton<MenuMessageManager<StatusMsg,4>>::s_inst,
               MenuMessageManager<StatusMsg,4>::~MenuMessageManager,
               &_dso_handle);
  }
  if ( (`guard variable for'Singleton<MenuMessageManager<OnlineStatusMsg,1>>::s_inst & 1) == 0 )
  {
    `guard variable for'Singleton<MenuMessageManager<OnlineStatusMsg,1>>::s_inst = 1;
    dword_99FB58 = (int)&byte_8;
    Singleton<MenuMessageManager<OnlineStatusMsg,1>>::s_inst = (int)off_95B160;
    dword_99FB34 = 0;
    dword_99FB38 = 0;
    dword_99FB3C = 0;
    dword_99FB40 = 0;
    dword_99FB44 = 0;
    dword_99FB48 = 0;
    dword_99FB4C = 0;
    dword_99FB50 = 0;
    dword_99FB54 = 0;
    v23 = std::allocator<OnlineStatusMsg *>::allocate(&dword_99FB54, &byte_8, 0);
    v45 = 112;
    dword_99FB54 = v23;
    v24 = (unsigned int)(dword_99FB58 - 1) >> 1;
    *(_DWORD *)(v23 + 4 * v24) = __ZNSt12__node_alloc11_M_allocateERj_veneer(&v45);
    dword_99FB40 = v23 + 4 * v24;
    v25 = *(_DWORD *)(v23 + 4 * v24);
    dword_99FB50 = v23 + 4 * v24;
    dword_99FB3C = v25 + 112;
    dword_99FB38 = v25;
    v26 = *(_DWORD *)(v23 + 4 * v24);
    dword_99FB4C = v26 + 112;
    dword_99FB34 = v25;
    dword_99FB44 = v26;
    dword_99FB48 = v26;
    result = _aeabi_atexit(
               &Singleton<MenuMessageManager<OnlineStatusMsg,1>>::s_inst,
               MenuMessageManager<OnlineStatusMsg,1>::~MenuMessageManager,
               &_dso_handle);
  }
  if ( (`guard variable for'Singleton<MenuMessageManager<TutorialMsg,1>>::s_inst & 1) == 0 )
  {
    `guard variable for'Singleton<MenuMessageManager<TutorialMsg,1>>::s_inst = 1;
    dword_99FB84 = (int)&byte_8;
    Singleton<MenuMessageManager<TutorialMsg,1>>::s_inst = (int)off_95B170;
    dword_99FB60 = 0;
    dword_99FB64 = 0;
    dword_99FB68 = 0;
    dword_99FB6C = 0;
    dword_99FB70 = 0;
    dword_99FB74 = 0;
    dword_99FB78 = 0;
    dword_99FB7C = 0;
    dword_99FB80 = 0;
    v27 = std::allocator<TutorialMsg *>::allocate(&dword_99FB80, &byte_8, 0);
    v45 = 128;
    dword_99FB80 = v27;
    v28 = (unsigned int)(dword_99FB84 - 1) >> 1;
    *(_DWORD *)(v27 + 4 * v28) = __ZNSt12__node_alloc11_M_allocateERj_veneer(&v45);
    dword_99FB6C = v27 + 4 * v28;
    v29 = *(_DWORD *)(v27 + 4 * v28);
    dword_99FB7C = v27 + 4 * v28;
    dword_99FB68 = v29 + 128;
    dword_99FB64 = v29;
    v30 = *(_DWORD *)(v27 + 4 * v28);
    dword_99FB78 = v30 + 128;
    dword_99FB60 = v29;
    dword_99FB70 = v30;
    dword_99FB74 = v30;
    result = _aeabi_atexit(
               &Singleton<MenuMessageManager<TutorialMsg,1>>::s_inst,
               MenuMessageManager<TutorialMsg,1>::~MenuMessageManager,
               &_dso_handle);
  }
  if ( (`guard variable for'Singleton<MenuMessageManager<DialogMsg,1>>::s_inst & 1) == 0 )
  {
    `guard variable for'Singleton<MenuMessageManager<DialogMsg,1>>::s_inst = 1;
    dword_99FBB0 = (int)&byte_8;
    Singleton<MenuMessageManager<DialogMsg,1>>::s_inst = (int)off_95B180;
    dword_99FB8C = 0;
    dword_99FB90 = 0;
    dword_99FB94 = 0;
    dword_99FB98 = 0;
    dword_99FB9C = 0;
    dword_99FBA0 = 0;
    dword_99FBA4 = 0;
    dword_99FBA8 = 0;
    dword_99FBAC = 0;
    v31 = std::allocator<DialogMsg *>::allocate(&dword_99FBAC, &byte_8, 0);
    v45 = 76;
    dword_99FBAC = v31;
    v32 = (unsigned int)(dword_99FBB0 - 1) >> 1;
    *(_DWORD *)(v31 + 4 * v32) = __ZNSt12__node_alloc11_M_allocateERj_veneer(&v45);
    dword_99FB98 = v31 + 4 * v32;
    v33 = *(_DWORD *)(v31 + 4 * v32);
    dword_99FBA8 = v31 + 4 * v32;
    dword_99FB94 = v33 + 76;
    dword_99FB90 = v33;
    v34 = *(_DWORD *)(v31 + 4 * v32);
    dword_99FBA4 = v34 + 76;
    dword_99FB8C = v33;
    dword_99FB9C = v34;
    dword_99FBA0 = v34;
    result = _aeabi_atexit(
               &Singleton<MenuMessageManager<DialogMsg,1>>::s_inst,
               MenuMessageManager<DialogMsg,1>::~MenuMessageManager,
               &_dso_handle);
  }
  if ( (`guard variable for'Singleton<MenuMessageManager<CharMenuTutorialMsg,1>>::s_inst & 1) == 0 )
  {
    `guard variable for'Singleton<MenuMessageManager<CharMenuTutorialMsg,1>>::s_inst = 1;
    dword_99FBDC = (int)&byte_8;
    Singleton<MenuMessageManager<CharMenuTutorialMsg,1>>::s_inst = (int)off_95B190;
    dword_99FBB8 = 0;
    dword_99FBBC = 0;
    dword_99FBC0 = 0;
    dword_99FBC4 = 0;
    dword_99FBC8 = 0;
    dword_99FBCC = 0;
    dword_99FBD0 = 0;
    dword_99FBD4 = 0;
    dword_99FBD8 = 0;
    v35 = std::allocator<CharMenuTutorialMsg *>::allocate(&dword_99FBD8, &byte_8, 0);
    v45 = 104;
    dword_99FBD8 = v35;
    v36 = (unsigned int)(dword_99FBDC - 1) >> 1;
    *(_DWORD *)(v35 + 4 * v36) = __ZNSt12__node_alloc11_M_allocateERj_veneer(&v45);
    dword_99FBC4 = v35 + 4 * v36;
    v37 = *(_DWORD *)(v35 + 4 * v36);
    dword_99FBD4 = v35 + 4 * v36;
    dword_99FBC0 = v37 + 104;
    dword_99FBBC = v37;
    v38 = *(_DWORD *)(v35 + 4 * v36);
    dword_99FBD0 = v38 + 104;
    dword_99FBB8 = v37;
    dword_99FBC8 = v38;
    dword_99FBCC = v38;
    result = _aeabi_atexit(
               &Singleton<MenuMessageManager<CharMenuTutorialMsg,1>>::s_inst,
               MenuMessageManager<CharMenuTutorialMsg,1>::~MenuMessageManager,
               &_dso_handle);
  }
  if ( (`guard variable for'Singleton<MenuMessageManager<AchievementMsg,1>>::s_inst & 1) == 0 )
  {
    `guard variable for'Singleton<MenuMessageManager<AchievementMsg,1>>::s_inst = 1;
    dword_99FC08 = (int)&byte_8;
    Singleton<MenuMessageManager<AchievementMsg,1>>::s_inst = (int)off_95B1A0;
    dword_99FBE4 = 0;
    dword_99FBE8 = 0;
    dword_99FBEC = 0;
    dword_99FBF0 = 0;
    dword_99FBF4 = 0;
    dword_99FBF8 = 0;
    dword_99FBFC = 0;
    dword_99FC00 = 0;
    dword_99FC04 = 0;
    v39 = std::allocator<AchievementMsg *>::allocate(&dword_99FC04, &byte_8, 0);
    v45 = 120;
    dword_99FC04 = v39;
    v40 = (unsigned int)(dword_99FC08 - 1) >> 1;
    *(_DWORD *)(v39 + 4 * v40) = __ZNSt12__node_alloc11_M_allocateERj_veneer(&v45);
    dword_99FBF0 = v39 + 4 * v40;
    v41 = *(_DWORD *)(v39 + 4 * v40);
    dword_99FC00 = v39 + 4 * v40;
    dword_99FBEC = v41 + 120;
    dword_99FBE8 = v41;
    v42 = *(_DWORD *)(v39 + 4 * v40);
    dword_99FBFC = v42 + 120;
    dword_99FBE4 = v41;
    dword_99FBF4 = v42;
    dword_99FBF8 = v42;
    result = _aeabi_atexit(
               &Singleton<MenuMessageManager<AchievementMsg,1>>::s_inst,
               MenuMessageManager<AchievementMsg,1>::~MenuMessageManager,
               &_dso_handle);
  }
  if ( (`guard variable for'Singleton<VisualFXManager>::s_inst & 1) == 0 )
  {
    `guard variable for'Singleton<VisualFXManager>::s_inst = 1;
    VisualFXManager::VisualFXManager((VisualFXManager *)&Singleton<VisualFXManager>::s_inst);
    result = _aeabi_atexit(&Singleton<VisualFXManager>::s_inst, VisualFXManager::~VisualFXManager, &_dso_handle);
  }
  if ( (`guard variable for'Singleton<PFWorld>::s_inst & 1) == 0 )
  {
    `guard variable for'Singleton<PFWorld>::s_inst = 1;
    PFWorld::PFWorld((PFWorld *)&Singleton<PFWorld>::s_inst);
    return _aeabi_atexit(&Singleton<PFWorld>::s_inst, PFWorld::~PFWorld, &_dso_handle);
  }
  return result;
}


// ===== 3ab39c std::allocator<std::priv::_Rb_tree_node<std::pair<int const,uint>>>::allocate(uint,void const*) [clone] =====
void *std::allocator<std::priv::_Rb_tree_node<std::pair<int const,unsigned int>>>::allocate()
{
  size_t v1; // [sp+4h] [bp-8h] BYREF

  v1 = 24;
  return __ZNSt12__node_alloc11_M_allocateERj_veneer(&v1);
}


// ===== 3ab3bc std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,uint>,std::priv::_Select1st<std::pair<int const,uint>>,std::priv::_MapTraitsT<std::pair<int const,uint>>,std::allocator<std::pair<int const,uint>>>::_M_insert(std::priv::_Rb_tree_node_base *,std::pair<int const,uint> const&,std::priv::_Rb_tree_node_base *,std::priv::_Rb_tree_node_base *) [clone] =====
_DWORD *__fastcall std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,unsigned int>,std::priv::_Select1st<std::pair<int const,unsigned int>>,std::priv::_MapTraitsT<std::pair<int const,unsigned int>>,std::allocator<std::pair<int const,unsigned int>>>::_M_insert(
        _DWORD *a1,
        int a2,
        _DWORD *a3,
        int a4,
        int a5)
{
  _DWORD *v8; // r0
  _DWORD *v9; // r8
  int v10; // r2
  _DWORD *v12; // r0
  int v13; // r2
  int v14; // r2

  if ( (char *)a2 == &Character::s_cachedCharOIDs )
  {
    v9 = std::allocator<std::priv::_Rb_tree_node<std::pair<int const,unsigned int>>>::allocate();
    v9[4] = *a3;
    v14 = a3[1];
    v9[3] = 0;
    v9[2] = 0;
    v9[5] = v14;
    *(_DWORD *)(a2 + 8) = v9;
    *(_DWORD *)(a2 + 4) = v9;
    *(_DWORD *)(a2 + 12) = v9;
  }
  else if ( !a5 && (a4 || *a3 < *(_DWORD *)(a2 + 16)) )
  {
    v12 = std::allocator<std::priv::_Rb_tree_node<std::pair<int const,unsigned int>>>::allocate();
    v9 = v12;
    v12[4] = *a3;
    v13 = a3[1];
    v12[3] = 0;
    v12[2] = 0;
    v12[5] = v13;
    *(_DWORD *)(a2 + 8) = v12;
    if ( a2 == dword_9A2934 )
      dword_9A2934 = (int)v12;
  }
  else
  {
    v8 = std::allocator<std::priv::_Rb_tree_node<std::pair<int const,unsigned int>>>::allocate();
    v9 = v8;
    v8[4] = *a3;
    v10 = a3[1];
    v8[3] = 0;
    v8[2] = 0;
    v8[5] = v10;
    *(_DWORD *)(a2 + 12) = v8;
    if ( a2 == dword_9A2938 )
      dword_9A2938 = (int)v8;
  }
  v9[1] = a2;
  std::priv::_Rb_global<bool>::_Rebalance((int)v9, &dword_9A2930);
  ++dword_9A293C;
  *a1 = v9;
  return a1;
}


// ===== 3ab4f4 std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,uint>,std::priv::_Select1st<std::pair<int const,uint>>,std::priv::_MapTraitsT<std::pair<int const,uint>>,std::allocator<std::pair<int const,uint>>>::insert_unique(std::pair<int const,uint> const&) [clone] =====
int __fastcall std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,unsigned int>,std::priv::_Select1st<std::pair<int const,unsigned int>>,std::priv::_MapTraitsT<std::pair<int const,unsigned int>>,std::allocator<std::pair<int const,unsigned int>>>::insert_unique(
        int a1,
        int *a2)
{
  char *v4; // r1
  int v5; // r7
  int v6; // r5
  int v7; // r6
  char *v8; // r0
  char *v9; // r3
  _DWORD *v11; // r3
  int v12; // r3
  _DWORD *v13; // r0
  int v14; // r3
  int v15; // [sp+8h] [bp-Ch] BYREF
  int v16; // [sp+Ch] [bp-8h] BYREF

  v4 = (char *)dword_9A2930;
  if ( dword_9A2930 )
  {
    v5 = *a2;
    while ( 1 )
    {
      v6 = *((_DWORD *)v4 + 4);
      v7 = 1;
      if ( v6 <= v5 )
      {
        v8 = *((char **)v4 + 3);
        v7 = 0;
      }
      else
      {
        v8 = *((char **)v4 + 2);
      }
      if ( !v8 )
        break;
      v4 = v8;
    }
    if ( !v7 )
    {
      v9 = v4;
      goto LABEL_12;
    }
  }
  else
  {
    v4 = &Character::s_cachedCharOIDs;
  }
  if ( (char *)dword_9A2934 == v4 )
  {
    std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,unsigned int>,std::priv::_Select1st<std::pair<int const,unsigned int>>,std::priv::_MapTraitsT<std::pair<int const,unsigned int>>,std::allocator<std::pair<int const,unsigned int>>>::_M_insert(
      &v15,
      (int)v4,
      a2,
      (int)v4,
      0);
    v14 = v15;
    *(_BYTE *)(a1 + 4) = 1;
    *(_DWORD *)a1 = v14;
    return a1;
  }
  if ( *v4 || v4 != *(char **)(*((_DWORD *)v4 + 1) + 4) )
  {
    v11 = *((_DWORD **)v4 + 2);
    if ( v11 )
    {
      while ( v11[3] )
        v11 = (_DWORD *)v11[3];
    }
    else
    {
      v11 = *((_DWORD **)v4 + 1);
      if ( v4 == (char *)v11[2] )
      {
        do
        {
          v13 = v11;
          v11 = (_DWORD *)v11[1];
        }
        while ( (_DWORD *)v11[2] == v13 );
      }
    }
    if ( *a2 <= v11[4] )
    {
      *(_DWORD *)a1 = v11;
      *(_BYTE *)(a1 + 4) = 0;
      return a1;
    }
LABEL_25:
    std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,unsigned int>,std::priv::_Select1st<std::pair<int const,unsigned int>>,std::priv::_MapTraitsT<std::pair<int const,unsigned int>>,std::allocator<std::pair<int const,unsigned int>>>::_M_insert(
      &v16,
      (int)v4,
      a2,
      0,
      0);
    v12 = v16;
    *(_BYTE *)(a1 + 4) = 1;
    *(_DWORD *)a1 = v12;
    return a1;
  }
  v9 = *((char **)v4 + 3);
  v5 = *a2;
  v6 = *((_DWORD *)v9 + 4);
LABEL_12:
  if ( v5 > v6 )
    goto LABEL_25;
  *(_DWORD *)a1 = v9;
  *(_BYTE *)(a1 + 4) = 0;
  return a1;
}


// ===== 3ab674 Character::AddCharOIDToCache(int,uint) =====
void __fastcall Character::AddCharOIDToCache(int this, unsigned int a2, unsigned int a3)
{
  char *v5; // r1
  char *inserted; // r0
  char *i; // r12
  int v8; // r3
  bool v9; // cc
  char *v10; // r3
  unsigned int v11; // r3
  int v12; // r3
  bool v13; // cc
  char *v14; // r3
  char *v15; // r3
  _DWORD *v16; // lr
  int v17; // r10
  int j; // r1
  int v19; // r5
  AssetManager *AssetManager; // r0
  int v21; // r3
  int v22; // r3
  int v23; // r3
  int v24; // r1
  char *v25; // r0
  char *v26; // [sp+8h] [bp-6Ch] BYREF
  char *v27; // [sp+10h] [bp-64h] BYREF
  char *v28; // [sp+18h] [bp-5Ch] BYREF
  char *v29; // [sp+20h] [bp-54h] BYREF
  int v30[2]; // [sp+28h] [bp-4Ch] BYREF
  char *v31; // [sp+30h] [bp-44h] BYREF
  std::string v32; // [sp+3Ch] [bp-38h] BYREF
  std::string v33; // [sp+54h] [bp-20h] BYREF

  if ( this < 0 || Arrays::CharacterTable::size <= this )
    return;
  v5 = &Character::s_cachedCharOIDs;
  inserted = (char *)dword_9A2930;
  if ( dword_9A2930 )
  {
    for ( i = (char *)dword_9A2930; ; i = v10 )
    {
      v8 = *((_DWORD *)i + 4);
      v9 = this <= v8;
      if ( this <= v8 )
        v10 = *((char **)i + 2);
      else
        v10 = *((char **)i + 3);
      if ( !v9 )
        i = v5;
      if ( !v10 )
        break;
      v5 = i;
    }
    if ( i != &Character::s_cachedCharOIDs && this < *((_DWORD *)i + 4) )
      i = &Character::s_cachedCharOIDs;
  }
  else
  {
    i = &Character::s_cachedCharOIDs;
  }
  if ( i != &Character::s_cachedCharOIDs )
  {
    v11 = *((_DWORD *)i + 5);
    if ( v11 < a2 )
      *((_DWORD *)i + 5) = a2;
    else
      *((_DWORD *)i + 5) = v11;
    return;
  }
  if ( dword_9A2930 )
  {
    while ( 1 )
    {
      v12 = *((_DWORD *)inserted + 4);
      v13 = this <= v12;
      if ( this <= v12 )
        v14 = *((char **)inserted + 2);
      else
        v14 = *((char **)inserted + 3);
      if ( !v13 )
        inserted = i;
      if ( !v14 )
        break;
      i = inserted;
      inserted = v14;
    }
    i = inserted;
    if ( inserted != &Character::s_cachedCharOIDs )
    {
      v15 = inserted;
      if ( this >= *((_DWORD *)inserted + 4) )
        goto LABEL_47;
    }
  }
  v30[0] = this;
  v16 = (_DWORD *)dword_9A2934;
  v30[1] = 0;
  if ( (char *)dword_9A2934 == i )
  {
    if ( !dword_9A293C )
    {
      inserted = (char *)std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,unsigned int>,std::priv::_Select1st<std::pair<int const,unsigned int>>,std::priv::_MapTraitsT<std::pair<int const,unsigned int>>,std::allocator<std::pair<int const,unsigned int>>>::insert_unique(
                           (int)&v29,
                           v30);
      v31 = v29;
      v15 = v29;
      goto LABEL_47;
    }
    v22 = *((_DWORD *)i + 4);
    if ( this < v22 )
    {
      inserted = (char *)std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,unsigned int>,std::priv::_Select1st<std::pair<int const,unsigned int>>,std::priv::_MapTraitsT<std::pair<int const,unsigned int>>,std::allocator<std::pair<int const,unsigned int>>>::_M_insert(
                           &v31,
                           (int)i,
                           v30,
                           (int)i,
                           0);
      v15 = v31;
      goto LABEL_47;
    }
    if ( this > v22 )
    {
      v23 = *((_DWORD *)i + 3);
      if ( v23 )
      {
        for ( j = *((_DWORD *)i + 3); *(_DWORD *)(j + 8); j = *(_DWORD *)(j + 8) )
          ;
      }
      else
      {
        v25 = i;
        for ( j = *((_DWORD *)i + 1); *(char **)(j + 12) == v25; j = *(_DWORD *)(j + 4) )
          v25 = (char *)j;
        if ( j == *((_DWORD *)v25 + 3) )
          j = (int)v25;
      }
      if ( (char *)j == &Character::s_cachedCharOIDs )
      {
        inserted = (char *)std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,unsigned int>,std::priv::_Select1st<std::pair<int const,unsigned int>>,std::priv::_MapTraitsT<std::pair<int const,unsigned int>>,std::allocator<std::pair<int const,unsigned int>>>::_M_insert(
                             &v31,
                             dword_9A2934,
                             v30,
                             0,
                             dword_9A2934);
        v15 = v31;
      }
      else
      {
        if ( this < *(_DWORD *)(j + 16) )
        {
          if ( v23 )
            goto LABEL_46;
LABEL_72:
          inserted = (char *)std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,unsigned int>,std::priv::_Select1st<std::pair<int const,unsigned int>>,std::priv::_MapTraitsT<std::pair<int const,unsigned int>>,std::allocator<std::pair<int const,unsigned int>>>::_M_insert(
                               &v31,
                               (int)v16,
                               v30,
                               0,
                               (int)v16);
          v15 = v31;
          goto LABEL_47;
        }
        inserted = (char *)std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,unsigned int>,std::priv::_Select1st<std::pair<int const,unsigned int>>,std::priv::_MapTraitsT<std::pair<int const,unsigned int>>,std::allocator<std::pair<int const,unsigned int>>>::insert_unique(
                             (int)&v28,
                             v30);
        v31 = v28;
        v15 = v28;
      }
      goto LABEL_47;
    }
LABEL_75:
    v31 = i;
    v15 = i;
    goto LABEL_47;
  }
  if ( i == &Character::s_cachedCharOIDs )
  {
    v24 = *((_DWORD *)i + 3);
    if ( this <= *(_DWORD *)(v24 + 16) )
    {
      inserted = (char *)std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,unsigned int>,std::priv::_Select1st<std::pair<int const,unsigned int>>,std::priv::_MapTraitsT<std::pair<int const,unsigned int>>,std::allocator<std::pair<int const,unsigned int>>>::insert_unique(
                           (int)&v27,
                           v30);
      v31 = v27;
      v15 = v27;
    }
    else
    {
      inserted = (char *)std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,unsigned int>,std::priv::_Select1st<std::pair<int const,unsigned int>>,std::priv::_MapTraitsT<std::pair<int const,unsigned int>>,std::allocator<std::pair<int const,unsigned int>>>::_M_insert(
                           &v31,
                           v24,
                           v30,
                           0,
                           (int)i);
      v15 = v31;
    }
    goto LABEL_47;
  }
  if ( *i || *(char **)(*((_DWORD *)i + 1) + 4) != i )
  {
    v16 = *((_DWORD **)i + 2);
    if ( v16 )
    {
      while ( v16[3] )
        v16 = (_DWORD *)v16[3];
    }
    else
    {
      v16 = *((_DWORD **)i + 1);
      if ( (char *)v16[2] == i )
      {
        while ( *(_DWORD **)(v16[1] + 8) == v16 )
          v16 = (_DWORD *)v16[1];
        v16 = (_DWORD *)v16[1];
      }
    }
  }
  else
  {
    v16 = *((_DWORD **)i + 3);
  }
  v17 = *((_DWORD *)i + 4);
  if ( this < v17 && this > v16[4] )
  {
    if ( v16[3] )
    {
      j = (int)i;
LABEL_46:
      inserted = (char *)std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,unsigned int>,std::priv::_Select1st<std::pair<int const,unsigned int>>,std::priv::_MapTraitsT<std::pair<int const,unsigned int>>,std::allocator<std::pair<int const,unsigned int>>>::_M_insert(
                           &v31,
                           j,
                           v30,
                           j,
                           0);
      v15 = v31;
      goto LABEL_47;
    }
    goto LABEL_72;
  }
  v21 = *((_DWORD *)i + 3);
  if ( v21 )
  {
    for ( j = *((_DWORD *)i + 3); ; j = *(_DWORD *)(j + 8) )
    {
      inserted = *(char **)(j + 8);
      if ( !inserted )
        break;
    }
  }
  else
  {
    inserted = *((char **)i + 1);
    if ( i == *((char **)inserted + 3) )
    {
      while ( *(char **)(*((_DWORD *)inserted + 1) + 12) == inserted )
        inserted = *((char **)inserted + 1);
      j = (int)inserted;
      inserted = *((char **)inserted + 1);
    }
    else
    {
      j = (int)i;
    }
    if ( inserted != *(char **)(j + 12) )
      j = (int)inserted;
  }
  if ( this < v17 )
  {
LABEL_56:
    inserted = (char *)std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,unsigned int>,std::priv::_Select1st<std::pair<int const,unsigned int>>,std::priv::_MapTraitsT<std::pair<int const,unsigned int>>,std::allocator<std::pair<int const,unsigned int>>>::insert_unique(
                         (int)&v26,
                         v30);
    v31 = v26;
    v15 = v26;
    goto LABEL_47;
  }
  if ( this <= v17 )
    goto LABEL_75;
  if ( (char *)j != &Character::s_cachedCharOIDs && this >= *(_DWORD *)(j + 16) )
    goto LABEL_56;
  if ( v21 )
    goto LABEL_46;
  inserted = (char *)std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,unsigned int>,std::priv::_Select1st<std::pair<int const,unsigned int>>,std::priv::_MapTraitsT<std::pair<int const,unsigned int>>,std::allocator<std::pair<int const,unsigned int>>>::_M_insert(
                       &v31,
                       (int)i,
                       v30,
                       0,
                       (int)i);
  v15 = v31;
LABEL_47:
  *((_DWORD *)v15 + 5) = a2;
  v19 = *(_DWORD *)(Arrays::CharacterTable::members + 900 * this + 16);
  if ( v19 >= 0 && v19 < Arrays::ModelDict::size )
  {
    AssetManager = (AssetManager *)AssetManager::GetAssetManager((AssetManager *)inserted);
    AssetManager::preloadSceneNode(
      AssetManager,
      *(const char **)(Arrays::ModelDict::members + 12 * v19 + 8),
      nullptr,
      0,
      0x7FFFFFFF);
  }
  std::string::string(&v33, "data/scripts/ai/");
  std::string::string(&v32, "data/scripts/skills/");
  std::string::~string(&v32);
  std::string::~string(&v33);
}


// ===== 3abb9c Character::UpdateObjectOfInterest(void) =====
void __fastcall Character::UpdateObjectOfInterest(Character *this)
{
  int v1; // r3
  __int16 v3; // r5
  __int16 v4; // r5
  int v5; // r11
  char *TargetPosition; // r8
  int Constant; // r0
  int v8; // lr
  Character **v9; // r7
  char v10; // r0
  int v11; // r3
  bool v12; // zf
  Character *v13; // r3
  int v14; // r3
  _DWORD v15[4]; // [sp+8h] [bp-6Ch] BYREF
  int v16; // [sp+18h] [bp-5Ch]
  int (*v17)(); // [sp+30h] [bp-44h]
  int v18; // [sp+3Ch] [bp-38h]
  int v19; // [sp+40h] [bp-34h]
  _DWORD v20[6]; // [sp+5Ch] [bp-18h] BYREF

  v1 = *((_DWORD *)this + 1321);
  *((_BYTE *)this + 5293) = 0;
  if ( v1 )
  {
    if ( (*(int (__fastcall **)(int, Character *))(*(_DWORD *)v1 + 140))(v1, this) )
    {
      if ( *(_BYTE *)(*((_DWORD *)this + 1321) + 129) )
        *((_DWORD *)this + 1321) = 0;
    }
    else
    {
      *((_DWORD *)this + 1321) = 0;
    }
  }
  v3 = *((_WORD *)this + 2645);
  v4 = v3 - Application::GetDt((Application *)&Singleton<Application>::s_inst);
  *((_WORD *)this + 2645) = v4;
  if ( v4 > 0 )
    return;
  *((_BYTE *)this + 5288) = -1;
  *((_WORD *)this + 2645) = 500;
  *((_BYTE *)this + 5292) = 0;
  v5 = *((_DWORD *)this + 1321);
  *((_DWORD *)this + 1321) = 0;
  ObjectSearcher::TargetList::TargetList((ObjectSearcher::TargetList *)v15, this, 1, 0, 1);
  v18 = 89;
  v19 = 1;
  while ( v16 != v15[0] )
    std::priority_queue<ObjectSearcher::TargetInfo,std::deque<ObjectSearcher::TargetInfo>,ObjectSearcher::TargetSorter>::pop(v15);
  v17 = ObjectSearcher::TargetSorter::_sortFrontal;
  TargetPosition = GameObject::GetTargetPosition(this);
  Constant = PyDataConstants::getConstant((PyDataConstants *)dword_99F758, "CharacterDesign", "OOI_Distance");
  v20[1] = dword_99F764 + 128;
  v20[0] = off_969D20;
  v8 = *(_DWORD *)(dword_99F764 + 128);
  v20[3] = dword_99F764 + 128;
  v20[4] = 0;
  v20[2] = v8;
  ((void (__fastcall *)(_DWORD, _DWORD, _DWORD, _DWORD, _DWORD))ObjectSearcher::TargetList::Search)(
    v15,
    TargetPosition,
    (float)Constant,
    1086918619,
    v20);
  v9 = (Character **)v15[0];
  v20[0] = off_964728;
  if ( v16 == v15[0] )
  {
LABEL_28:
    v14 = *((_DWORD *)this + 1321);
    goto LABEL_24;
  }
  while ( 1 )
  {
    v13 = *v9;
    if ( this == *v9 )
      goto LABEL_17;
    if ( *((_DWORD *)this + 1321) && ((unsigned int)v9[3] & 1) == 0 )
    {
      if ( (*(int (__fastcall **)(Character *, Character *))(*(_DWORD *)v13 + 144))(*v9, this) != 1 )
        goto LABEL_17;
      v13 = *v9;
    }
    *((_DWORD *)this + 1321) = v13;
    v10 = (*(int (__fastcall **)(Character *, Character *))(*(_DWORD *)*v9 + 144))(*v9, this);
    *((_BYTE *)this + 5288) = v10;
    v11 = (unsigned int)v9[3] & 1;
    *((_BYTE *)this + 5292) = v11;
    if ( v11 )
      break;
    v12 = v10 == 0;
    if ( v10 )
      v12 = v10 == 2;
    if ( v12 )
      break;
    if ( v10 == 1 )
    {
      v14 = *((_DWORD *)this + 1321);
      if ( this == *(Character **)(v14 + 956) )
        goto LABEL_24;
    }
LABEL_17:
    std::priority_queue<ObjectSearcher::TargetInfo,std::deque<ObjectSearcher::TargetInfo>,ObjectSearcher::TargetSorter>::pop(v15);
    v9 = (Character **)v15[0];
    if ( v16 == v15[0] )
      goto LABEL_28;
  }
  v14 = *((_DWORD *)this + 1321);
LABEL_24:
  if ( v14 )
  {
    if ( v5 != v14 )
      *((_BYTE *)this + 5293) = 1;
  }
  ObjectSearcher::TargetList::~TargetList((ObjectSearcher::TargetList *)v15);
}


// ===== 3abe98 Character::Update(void) =====
int __fastcall Character::Update(Character *this)
{
  int Switch; // r10
  int v3; // r10
  int v4; // r7
  TimerUtil *v5; // r0
  float v6; // r8
  int v7; // r3
  int v8; // r2
  AnimatedFX *v9; // r0
  AnimatedFX *v10; // r0
  int v11; // r2
  Character *v12; // r1
  FlashAnimManager *IsLocalPlayer; // r0
  FlashAnimManager *Instance; // r0
  int v15; // r10
  int StyleIdFromName; // r8
  int Constant; // r0
  int v19; // r0
  int v20; // r2
  int v21; // r2
  _BOOL4 v22; // r3
  int v23; // r11
  int v24; // r0
  glitch::os::Timer *Online; // r0
  int RealTime; // r0
  char *v27; // r2
  char *v28; // r12
  int v29; // r3
  bool v30; // cc
  char *v31; // r3
  char *v32; // lr
  int v33; // r2
  _BOOL4 v34; // r11
  char *i; // r1
  AnimatedFX *v36; // r0
  int Animator; // r0
  int v38; // r0
  int v39; // r1
  GameObject *v40; // r7
  int v41; // r0
  char *v42; // r11
  char *v43; // r9
  int v44; // r3
  ItemObject *v45; // r7
  AnimatedFX *v46; // r0
  int v47; // r0
  int v48; // r8
  AnimatedFX *v49; // r0
  int v50; // r3
  int v51; // r2
  AnimatedFX *v52; // r0
  int v53; // r3
  int v54; // r2
  AnimatedFX *v55; // r0
  int v56; // r3
  int v57; // r3
  int v58; // r3
  int v59; // r3
  char *v60; // r2
  char *v61; // r2
  int v62; // r1
  char *v63; // r3
  int v64; // [sp+0h] [bp-9Ch]
  CharAI *v65; // [sp+8h] [bp-94h]
  char *v66; // [sp+10h] [bp-8Ch] BYREF
  char *v67; // [sp+18h] [bp-84h] BYREF
  char *v68; // [sp+20h] [bp-7Ch] BYREF
  char *v69; // [sp+28h] [bp-74h] BYREF
  _DWORD v70[2]; // [sp+30h] [bp-6Ch] BYREF
  char *v71; // [sp+38h] [bp-64h] BYREF
  int v72; // [sp+3Ch] [bp-60h] BYREF
  std::string v73; // [sp+4Ch] [bp-50h] BYREF
  std::string v74; // [sp+64h] [bp-38h] BYREF
  std::string v75; // [sp+7Ch] [bp-20h] BYREF

  PushProfilingContext("Character::Update");
  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string((int)&v75, "KillPlayerOne");
  Switch = DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v75);
  std::string::~string(&v75);
  if ( Switch && this == *(Character **)(PlayerManager::GetPlayer((PlayerManager *)dword_99F76C, 0, 0) + 1632) )
  {
    v21 = *((_DWORD *)this + 1058);
    if ( v21 <= 0 )
    {
      CharProperties::PROPS_Set((Character *)((char *)this + 1376), 36, 0);
      if ( !(*(int (__fastcall **)(Character *))(*(_DWORD *)this + 52))(this) )
        v2Controller::Cmd_Kill(*((v2Controller **)this + 222), nullptr, 0);
    }
    else
    {
      CharProperties::PROPS_Set((Character *)((char *)this + 1376), 36, v21 - 200);
    }
  }
  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string((int)&v74, "Give50Potions");
  v3 = DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v74);
  std::string::~string(&v74);
  if ( v3 && (*(int (__fastcall **)(Character *))(*(_DWORD *)this + 40))(this) )
    ItemInventory::SetPotionQty((Character *)((char *)this + 892), 50);
  if ( !(*(int (__fastcall **)(Character *))(*(_DWORD *)this + 328))(this) )
    return PopProfilingContext("Character::Update");
  PushProfilingContext("Character::LoadNInitScript");
  if ( !CharStateMachine::SM_GetState((Character *)((char *)this + 1276)) )
    goto LABEL_5;
  if ( CharStateMachine::SM_GetState((Character *)((char *)this + 1276)) == 12 )
    goto LABEL_99;
  if ( CharStateMachine::SM_GetState((Character *)((char *)this + 1276)) == 2 )
  {
LABEL_5:
    v65 = (Character *)((char *)this + 968);
    goto LABEL_6;
  }
  if ( *((_BYTE *)this + 5248) )
  {
LABEL_99:
    v65 = (Character *)((char *)this + 968);
    goto LABEL_6;
  }
  if ( *((_DWORD *)this + 249) )
    goto LABEL_5;
  if ( *(_DWORD *)(Application::GetCurrentLevel((Application *)&Singleton<Application>::s_inst) + 60) == 29 )
    v22 = (unsigned int)dword_9A2954 > 0x18;
  else
    v22 = (unsigned int)dword_9A2954 > 8;
  if ( v22 )
  {
    v23 = dword_9A294C;
    if ( (char *)dword_9A294C != &Character::s_concurrentAI )
    {
      v2Controller::Cmd_Kill(*(v2Controller **)(*(_DWORD *)(dword_9A294C + 20) + 888), nullptr, 1);
      v24 = *(_DWORD *)(v23 + 20);
      v72 = v23;
      Character::UnLoadScriptProcess(v24, &v72, 1);
    }
  }
  v65 = (Character *)((char *)this + 968);
  if ( CharAI::LoadNInitScriptProcess((Character *)((char *)this + 968), 1) )
  {
    if ( Character::IsMonster(this) )
    {
      if ( !Character::IsMiniBoss(this) && !Character::IsBoss(this) )
      {
        Online = (glitch::os::Timer *)GetOnline();
        if ( !*((_BYTE *)Online + 5) )
        {
          if ( *((_BYTE *)this + 1004) )
          {
            RealTime = glitch::os::Timer::getRealTime(Online);
            v27 = &Character::s_concurrentAI;
            v28 = (char *)dword_9A2948;
            if ( dword_9A2948 )
            {
              while ( 1 )
              {
                v29 = *((_DWORD *)v28 + 4);
                v30 = RealTime <= v29;
                if ( RealTime <= v29 )
                  v31 = *((char **)v28 + 2);
                else
                  v31 = *((char **)v28 + 3);
                if ( !v30 )
                  v28 = v27;
                if ( !v31 )
                  break;
                v27 = v28;
                v28 = v31;
              }
              if ( v28 != &Character::s_concurrentAI && RealTime >= *((_DWORD *)v28 + 4) )
                goto LABEL_91;
            }
            else
            {
              v28 = &Character::s_concurrentAI;
            }
            v70[0] = RealTime;
            v32 = (char *)dword_9A294C;
            v70[1] = 0;
            if ( (char *)dword_9A294C == v28 )
            {
              if ( !dword_9A2954 )
              {
                std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,Character *>,std::priv::_Select1st<std::pair<int const,Character *>>,std::priv::_MapTraitsT<std::pair<int const,Character *>>,std::allocator<std::pair<int const,Character *>>>::insert_unique(
                  &v69,
                  v70);
                v71 = v69;
                v28 = v69;
                goto LABEL_91;
              }
              v58 = *((_DWORD *)v28 + 4);
              if ( RealTime < v58 )
              {
                v64 = 0;
                std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,Character *>,std::priv::_Select1st<std::pair<int const,Character *>>,std::priv::_MapTraitsT<std::pair<int const,Character *>>,std::allocator<std::pair<int const,Character *>>>::_M_insert(
                  &v71,
                  v28,
                  v70,
                  v28);
                v28 = v71;
                goto LABEL_91;
              }
              if ( RealTime > v58 )
              {
                v59 = *((_DWORD *)v28 + 3);
                if ( v59 )
                {
                  for ( i = *((char **)v28 + 3); *((_DWORD *)i + 2); i = *((char **)i + 2) )
                    ;
                }
                else
                {
                  i = *((char **)v28 + 1);
                  v61 = v28;
                  while ( *((char **)i + 3) == v61 )
                  {
                    v61 = i;
                    i = *((char **)i + 1);
                  }
                  if ( i == *((char **)v61 + 3) )
                    i = v61;
                }
                if ( i == &Character::s_concurrentAI )
                {
                  v64 = dword_9A294C;
                  std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,Character *>,std::priv::_Select1st<std::pair<int const,Character *>>,std::priv::_MapTraitsT<std::pair<int const,Character *>>,std::allocator<std::pair<int const,Character *>>>::_M_insert(
                    &v71,
                    dword_9A294C,
                    v70,
                    0);
                  v28 = v71;
                  goto LABEL_91;
                }
                if ( RealTime >= *((_DWORD *)i + 4) )
                {
                  std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,Character *>,std::priv::_Select1st<std::pair<int const,Character *>>,std::priv::_MapTraitsT<std::pair<int const,Character *>>,std::allocator<std::pair<int const,Character *>>>::insert_unique(
                    &v68,
                    v70);
                  v71 = v68;
                  v28 = v68;
                  goto LABEL_91;
                }
                if ( v59 )
                  goto LABEL_90;
                goto LABEL_198;
              }
            }
            else
            {
              if ( v28 == &Character::s_concurrentAI )
              {
                v62 = *((_DWORD *)v28 + 3);
                if ( RealTime <= *(_DWORD *)(v62 + 16) )
                {
                  std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,Character *>,std::priv::_Select1st<std::pair<int const,Character *>>,std::priv::_MapTraitsT<std::pair<int const,Character *>>,std::allocator<std::pair<int const,Character *>>>::insert_unique(
                    &v67,
                    v70);
                  v71 = v67;
                  v28 = v67;
                }
                else
                {
                  v64 = (int)v28;
                  std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,Character *>,std::priv::_Select1st<std::pair<int const,Character *>>,std::priv::_MapTraitsT<std::pair<int const,Character *>>,std::allocator<std::pair<int const,Character *>>>::_M_insert(
                    &v71,
                    v62,
                    v70,
                    0);
                  v28 = v71;
                }
                goto LABEL_91;
              }
              if ( *v28 || *(char **)(*((_DWORD *)v28 + 1) + 4) != v28 )
              {
                v32 = *((char **)v28 + 2);
                if ( v32 )
                {
                  while ( *((_DWORD *)v32 + 3) )
                    v32 = *((char **)v32 + 3);
                }
                else
                {
                  v32 = *((char **)v28 + 1);
                  v63 = v28;
                  while ( *((char **)v32 + 2) == v63 )
                  {
                    v63 = v32;
                    v32 = *((char **)v32 + 1);
                  }
                }
              }
              else
              {
                v32 = *((char **)v28 + 3);
              }
              v33 = *((_DWORD *)v28 + 4);
              v34 = RealTime < v33;
              if ( RealTime < v33 && RealTime > *((_DWORD *)v32 + 4) )
              {
                if ( *((_DWORD *)v32 + 3) )
                {
                  i = v28;
LABEL_90:
                  v64 = 0;
                  std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,Character *>,std::priv::_Select1st<std::pair<int const,Character *>>,std::priv::_MapTraitsT<std::pair<int const,Character *>>,std::allocator<std::pair<int const,Character *>>>::_M_insert(
                    &v71,
                    i,
                    v70,
                    i);
                  v28 = v71;
LABEL_91:
                  *((_DWORD *)v28 + 5) = this;
                  goto LABEL_6;
                }
LABEL_198:
                v64 = (int)v32;
                std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,Character *>,std::priv::_Select1st<std::pair<int const,Character *>>,std::priv::_MapTraitsT<std::pair<int const,Character *>>,std::allocator<std::pair<int const,Character *>>>::_M_insert(
                  &v71,
                  v32,
                  v70,
                  0);
                v28 = v71;
                goto LABEL_91;
              }
              v57 = *((_DWORD *)v28 + 3);
              if ( v57 )
              {
                for ( i = *((char **)v28 + 3); *((_DWORD *)i + 2); i = *((char **)i + 2) )
                  ;
              }
              else
              {
                i = *((char **)v28 + 1);
                v60 = v28;
                while ( *((char **)i + 3) == v60 )
                {
                  v60 = i;
                  i = *((char **)i + 1);
                }
                if ( i == *((char **)v60 + 3) )
                  i = v60;
              }
              if ( v34 )
              {
LABEL_169:
                std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,Character *>,std::priv::_Select1st<std::pair<int const,Character *>>,std::priv::_MapTraitsT<std::pair<int const,Character *>>,std::allocator<std::pair<int const,Character *>>>::insert_unique(
                  &v66,
                  v70);
                v71 = v66;
                v28 = v66;
                goto LABEL_91;
              }
              if ( RealTime > *((_DWORD *)v28 + 4) )
              {
                if ( i == &Character::s_concurrentAI || RealTime < *((_DWORD *)i + 4) )
                {
                  if ( !v57 )
                  {
                    v64 = (int)v28;
                    std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,Character *>,std::priv::_Select1st<std::pair<int const,Character *>>,std::priv::_MapTraitsT<std::pair<int const,Character *>>,std::allocator<std::pair<int const,Character *>>>::_M_insert(
                      &v71,
                      v28,
                      v70,
                      0);
                    v28 = v71;
                    goto LABEL_91;
                  }
                  goto LABEL_90;
                }
                goto LABEL_169;
              }
            }
            v71 = v28;
            goto LABEL_91;
          }
        }
      }
    }
  }
LABEL_6:
  PopProfilingContext("Character::LoadNInitScript");
  ++*(_DWORD *)(dword_99F764 + 92);
  (*(void (__fastcall **)(_DWORD))(**((_DWORD **)this + 222) + 8))(*((_DWORD *)this + 222));
  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string((int)&v73, "isABot");
  v4 = DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v73);
  std::string::~string(&v73);
  if ( !v4 )
    goto LABEL_7;
  if ( !*(_BYTE *)(GetOnline() + 5) )
    goto LABEL_7;
  if ( !(*(int (__fastcall **)(Character *))(*(_DWORD *)this + 40))(this) )
    goto LABEL_7;
  if ( !*(_BYTE *)(PlayerManager::GetPlayerByCharacter((PlayerManager *)dword_99F76C, this, 0) + 1644) )
    goto LABEL_7;
  v39 = *(_DWORD *)(PlayerManager::GetPlayerByCharacter((PlayerManager *)dword_99F76C, this, 0) + 1656);
  if ( v39 <= 0 )
    goto LABEL_7;
  v40 = *(GameObject **)(PlayerManager::GetPlayer((PlayerManager *)dword_99F76C, v39 - 1, 0) + 1632);
  if ( !v40 )
    goto LABEL_7;
  ++Character::Update(void)::potionTimer;
  ++Character::Update(void)::equipTimer;
  if ( (int)Character::GetHP(this) <= 69 && Character::HasPotion(this) && Character::Update(void)::potionTimer > 100 )
  {
    v2Controller::Cmd_UsePotion(*((v2Controller **)this + 222));
    Character::Update(void)::potionTimer = 0;
    goto LABEL_7;
  }
  v41 = *((_DWORD *)this + 1321);
  if ( !v41 )
    goto LABEL_109;
  if ( *((_BYTE *)this + 5292) )
  {
    if ( *((_BYTE *)this + 5288) != 8 )
    {
LABEL_109:
      v42 = (char *)v40 + 352;
      v43 = (char *)this + 352;
      goto LABEL_110;
    }
    goto LABEL_151;
  }
  v56 = *((char *)this + 5288);
  if ( v56 != 1 && v56 != -2 )
  {
LABEL_151:
    v43 = (char *)this + 352;
    goto LABEL_152;
  }
  if ( this != *(Character **)(v41 + 956) || ItemInventory::IsInventoryFull((Character *)((char *)this + 892)) )
    goto LABEL_109;
  v42 = (char *)v40 + 352;
  v43 = (char *)this + 352;
  if ( Point3D<float>::distance((char *)v40 + 352, (char *)this + 352) < 500.0 )
  {
    v41 = *((_DWORD *)this + 1321);
LABEL_152:
    if ( Point3D<float>::distance(v41 + 352, v43) <= 300.0 )
      v2Controller::Cmd_UseOOI(*((v2Controller **)this + 222), nullptr);
    else
      v2Controller::Cmd_HeadTowards(*((v2Controller **)this + 222), *((GameObject **)this + 1321));
    goto LABEL_7;
  }
LABEL_110:
  if ( Point3D<float>::distance(v42, v43) > 300.0 )
  {
    v2Controller::Cmd_HeadTowards(*((v2Controller **)this + 222), v40);
  }
  else
  {
    if ( Character::Update(void)::equipTimer > 1000 )
    {
      Character::Update(void)::equipTimer = 0;
      (*(void (__fastcall **)(Character *))(*(_DWORD *)this + 312))(this);
    }
    v2Controller::Cmd_HeadTowards(*((v2Controller **)this + 222), nullptr);
  }
LABEL_7:
  v5 = *((TimerUtil **)this + 1336);
  if ( v5 )
    TimerUtil::Update(v5);
  CharTimers::Update((Character *)((char *)this + 948));
  CharAI::Update(v65);
  CharStateMachine::Update((Character *)((char *)this + 1276));
  CharAnimator::Update((Character *)((char *)this + 1180));
  GameObject::Update(this);
  if ( *((float *)this + 1343) > 0.0 )
  {
    v6 = *((float *)this + 1343);
    *((float *)this + 1343) = v6
                            - (float)(unsigned int)Application::GetDt((Application *)&Singleton<Application>::s_inst);
  }
  if ( (LG_DEVICES || P1000TF) && Character::IsFaerie(this) )
  {
    v19 = *((_DWORD *)this + 88);
    v20 = *((_DWORD *)this + 90);
    dword_9F69B8 = *((_DWORD *)this + 89);
    m_fairyPos_new = v19;
    dword_9F69C0 = 0;
    dword_9F69BC = v20;
    if ( !(*(int (__fastcall **)(Character *))(*(_DWORD *)this + 40))(this) )
      goto LABEL_36;
LABEL_14:
    Character::UpdateObjectOfInterest(this);
    Character::UpdateSpotTarget(this);
    goto LABEL_15;
  }
  if ( (*(int (__fastcall **)(Character *))(*(_DWORD *)this + 40))(this) )
    goto LABEL_14;
LABEL_36:
  if ( Character::IsMerchant(this) && *((_BYTE *)this + 138) )
  {
    if ( *((_BYTE *)this + 762) )
    {
      if ( *((_DWORD *)this + 1313) )
        VisualFXManager::DropAnimatedFX(
          (VisualFXManager *)&Singleton<VisualFXManager>::s_inst,
          (AnimatedFX **)this + 1313);
    }
    else if ( !*((_DWORD *)this + 1313) )
    {
      v36 = (AnimatedFX *)VisualFXManager::GrabAnimFX((VisualFXManager *)&Singleton<VisualFXManager>::s_inst, 139, this);
      *((_DWORD *)this + 1313) = v36;
      if ( v36 )
      {
        Animator = AnimatedFX::GetAnimator(v36);
        v38 = (*(int (__fastcall **)(int))(*(_DWORD *)Animator + 68))(Animator);
        (*(void (__fastcall **)(int, int))(*(_DWORD *)v38 + 64))(v38, 1);
      }
    }
  }
  else if ( *((_BYTE *)this + 5348) && *(_BYTE *)(GetOnline() + 5) && !*((_BYTE *)this + 5349) )
  {
    *((_BYTE *)this + 5349) = 1;
    *((_BYTE *)this + 280) = 0;
  }
  else if ( *(_BYTE *)(GetOnline() + 5)
         && *((_BYTE *)this + 280)
         && (*((_DWORD *)this + 328) & 0x100) != 0
         && *((_DWORD *)this + 68) == -1 )
  {
    *((_BYTE *)this + 280) = 0;
  }
LABEL_15:
  if ( (dword_99F7A0 & 7) == 0 )
    Character::UpdateStateFX(this);
  if ( *((_BYTE *)this + 5248) || !PlayerManager::IsLocalPlayer((PlayerManager *)dword_99F76C, this) )
  {
    v7 = *((_DWORD *)this + 1317);
    if ( v7 )
    {
      v8 = *((_DWORD *)this + 1318);
      if ( v8 >= 0 )
        AnimatedFX::SetVisible(*(AnimatedFX **)(v7 + 4 * v8), 0);
    }
    v9 = *((AnimatedFX **)this + 1319);
    if ( !v9 )
      goto LABEL_23;
    goto LABEL_22;
  }
  v44 = *((_DWORD *)this + 1317);
  if ( v44 )
  {
    v45 = *((ItemObject **)this + 259);
    if ( (!v45 || this == v45) && ((v45 = *((ItemObject **)this + 1321)) == nullptr || this == v45) )
    {
      v54 = *((_DWORD *)this + 1318);
      if ( v54 >= 0 )
      {
        v55 = *(AnimatedFX **)(v44 + 4 * v54);
        if ( v55 )
        {
          AnimatedFX::SetVisible(v55, 0);
          *((_DWORD *)this + 1318) = -1;
        }
      }
    }
    else
    {
      v46 = *((AnimatedFX **)this + 1319);
      if ( v46 )
        AnimatedFX::SetVisible(v46, 0);
      v47 = (*(int (__fastcall **)(ItemObject *, Character *))(*(_DWORD *)v45 + 144))(v45, this);
      v48 = v47;
      if ( v47 >= 0 )
      {
        if ( v47 == 1 )
          ItemObject::OnCollisionBegins(v45, this);
        v49 = *(AnimatedFX **)(*((_DWORD *)this + 1317) + 4 * v48);
        if ( v49 )
        {
          *((_DWORD *)v49 + 10) = v45;
          AnimatedFX::SyncIrrData(v49, 1);
          v50 = *((_DWORD *)this + 1318);
          if ( v48 != v50 )
          {
            if ( v50 >= 0 )
            {
              v51 = *((_DWORD *)this + 1317);
              v52 = *(AnimatedFX **)(v51 + 4 * v50);
              if ( !v52 )
              {
LABEL_129:
                AnimatedFX::SetVisible(*(AnimatedFX **)(v51 + 4 * v48), 1);
                *((_DWORD *)this + 1318) = v48;
                goto LABEL_130;
              }
              AnimatedFX::SetVisible(v52, 0);
            }
            v51 = *((_DWORD *)this + 1317);
            goto LABEL_129;
          }
        }
      }
    }
  }
LABEL_130:
  v9 = *((AnimatedFX **)this + 1319);
  if ( v9 )
  {
    v53 = *((_DWORD *)this + 222);
    if ( !*(_BYTE *)(v53 + 9) && (v2Controller::s_blocked || *(_BYTE *)(v53 + 8)) || !*((_BYTE *)this + 437) )
      goto LABEL_22;
    if ( Application::IsUsingDPad((Application *)&Singleton<Application>::s_inst) )
    {
      v9 = *((AnimatedFX **)this + 1319);
LABEL_22:
      AnimatedFX::SetVisible(v9, 0);
    }
  }
LABEL_23:
  if ( IsMultiplayerGame() )
  {
    v10 = *((AnimatedFX **)this + 1320);
    if ( v10 )
      AnimatedFX::SetVisible(v10, 1);
  }
  if ( !ScriptManager::IsCutSceneRunning((ScriptManager *)&ScriptManager::s_inst) )
  {
    v12 = *((Character **)this + 1344);
    if ( v12 != (Character *)-1 )
    {
      Character::F_ApplyScrollingCombatTextGold(this, v12, v11);
      *((_DWORD *)this + 1344) = -1;
    }
    if ( *((_DWORD *)this + 1345) != -1 )
    {
      IsLocalPlayer = (FlashAnimManager *)PlayerManager::IsLocalPlayer((PlayerManager *)dword_99F76C, this);
      if ( IsLocalPlayer )
      {
        Instance = (FlashAnimManager *)FlashAnimManager::GetInstance(IsLocalPlayer);
        v15 = *((_DWORD *)this + 1345);
        StyleIdFromName = FlashAnimManager::GetStyleIdFromName(Instance, "anim_reward_xp");
        Constant = PyDataConstants::getConstant((PyDataConstants *)dword_99F758, "ScrollingCombatText", "QR_XP");
        Character::F_ApplyScrollingCombatTextXP(this, (Character *)(v15 >> 8), StyleIdFromName, Constant, v64);
        *((_DWORD *)this + 1345) = -1;
      }
    }
  }
  return PopProfilingContext("Character::Update");
}


// ===== 3acd58 Character::CreatePlayer(Character*,uint,uint,char const*) =====
std::string *__fastcall Character::CreatePlayer(
        Character *this,
        Character *a2,
        unsigned int a3,
        char *a4,
        const char *a5)
{
  char *v7; // r0
  std::string *v8; // r4
  size_t v9; // r0
  unsigned int Slot; // r0
  char *v12[3]; // [sp+Ch] [bp-Ch] BYREF

  if ( this )
  {
    ObjectManager::Spawn((ObjectManager *)v12, (ObjectBase *)dword_99F764, "Character", a4, 1, 1);
    v7 = ObjectHandle::operator Character *(v12);
    v8 = (std::string *)v7;
    if ( v7 )
    {
      PropertyMap::CloneProperties((PropertyMap *)(v7 + 4), (Character *)((char *)this + 4));
      v9 = LC_API_STRLEN_0(a4);
      std::string::_M_assign(v8 + 2, a4, &a4[v9]);
      Slot = Character::SG_GetSlot(this);
      Character::SG_SetSlot((Character *)v8, Slot);
      (*((void (__fastcall **)(std::string *))v8->_M_buffers._M_end_of_storage + 7))(v8);
      (*((void (__fastcall **)(std::string *))v8->_M_buffers._M_end_of_storage + 22))(v8);
      CharStateMachine::SM_SetIdleState((CharStateMachine *)&v8[53]._M_buffers._M_static_buf[4], 0);
    }
  }
  else if ( gAssertLevel == 2 )
  {
    dword_0 = 0;
    return nullptr;
  }
  else
  {
    v8 = nullptr;
    if ( gAssertLevel == 1 )
      fprintf(
        (FILE *)&_sF + 2,
        "ASSERT(%s) FAILED: %s:%d\n",
        "tpl",
        "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Objects\\Characters\\Character_Creators.cpp",
        58);
  }
  return v8;
}


// ===== 3acea4 Character::CreatePlayer(uint,uint,uint,char const*,bool,bool) =====
int __fastcall Character::CreatePlayer(
        Character *this,
        unsigned int a2,
        unsigned int a3,
        char *a4,
        const char *a5,
        bool a6,
        bool a7)
{
  int v8; // r0
  int v9; // r4
  unsigned int v10; // r1
  _BYTE v12[16]; // [sp+Ch] [bp-10h] BYREF

  ObjectManager::Spawn((ObjectManager *)v12, (ObjectBase *)dword_99F764, "Character", a4, 1, 1);
  v8 = ObjectHandle::operator Character *(v12);
  v9 = v8;
  if ( v8 )
  {
    if ( (*(int (__fastcall **)(int))(*(_DWORD *)v8 + 40))(v8) )
      Character::InitializePlayerSavegame((Character *)v9);
    if ( (_BYTE)a5 )
      v10 = -1;
    else
      v10 = (unsigned int)this;
    Character::SG_SetSlot((Character *)v9, v10);
    (*(void (__fastcall **)(int))(*(_DWORD *)v9 + 28))(v9);
    (*(void (__fastcall **)(int))(*(_DWORD *)v9 + 88))(v9);
    if ( !a6 )
      CharStateMachine::SM_SetIdleState((CharStateMachine *)(v9 + 1276), 0);
  }
  return v9;
}


// ===== 3acf88 `global constructor keyed to'.._.._sources_Game_Objects_Characters_Character_Creators.cpp =====
int `global constructor keyed to'.._.._sources_Game_Objects_Characters_Character_Creators.cpp()
{
  int result; // r0

  result = `guard variable for'Singleton<PlayerStatManager>::s_inst;
  dword_9A2964 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9A2960 = 1056964608;
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


// ===== 3ad064 Character::CreateNPC(char const*,char const*,bool,bool) =====
std::string *__fastcall Character::CreateNPC(Character *this, char *a2, const char *a3, bool a4, bool a5)
{
  std::string *v8; // r5
  size_t v9; // r0
  _DWORD v11[5]; // [sp+8h] [bp-3Ch] BYREF
  _DWORD v12[3]; // [sp+1Ch] [bp-28h] BYREF
  char s[20]; // [sp+28h] [bp-1Ch] BYREF

  ObjectHandle::ObjectHandle((ObjectHandle *)v12);
  if ( !a2 )
  {
    a2 = s;
    sprintf(s, "NPC_%04u", ++Character::CreateNPC(char const*,char const*,bool,bool)::counter);
  }
  ObjectManager::Spawn((ObjectManager *)v11, (const char *)dword_99F764, "Character", (bool)a2, 1);
  v12[0] = v11[0];
  v12[2] = v11[2];
  v12[1] = v11[1];
  v8 = (std::string *)ObjectHandle::operator Character *(v12);
  if ( v8 )
  {
    v9 = LC_API_STRLEN_0((const char *)this);
    if ( a3 )
      std::string::_M_assign(v8 + 209, (const char *)this, (const char *)this + v9);
    else
      std::string::_M_assign(v8 + 210, (const char *)this, (const char *)this + v9);
    (*((void (__fastcall **)(std::string *))v8->_M_buffers._M_end_of_storage + 7))(v8);
    (*((void (__fastcall **)(std::string *))v8->_M_buffers._M_end_of_storage + 22))(v8);
    CharStateMachine::SM_SetIdleState((CharStateMachine *)&v8[53]._M_buffers._M_static_buf[4], 0);
  }
  return v8;
}


// ===== 3ad1f8 Character::CreateNPC(int,char const*,bool) =====
std::string *__fastcall Character::CreateNPC(Character *this, char *a2, const char *a3, bool a4, bool a5)
{
  return Character::CreateNPC(
           *(Character **)(Arrays::CharacterTable::m_memberNames + 4 * (_DWORD)this),
           a2,
           nullptr,
           (bool)a3,
           a5);
}


// ===== 3ad22c Character::CSM_Attack(int,void *,int,int &) =====
bool __fastcall Character::CSM_Attack(Character *this, int a2, void *a3, int a4, int *a5)
{
  return !(*((_BYTE *)this + 1320) & 1);
}


// ===== 3ad23c Character::CSM_Injured(int,void *,int,int &) =====
int __fastcall Character::CSM_Injured(Character *this, int a2, void *a3, int a4, int *a5)
{
  return 1;
}


// ===== 3ad244 Character::CSM_Interrupted(int,void *,int,int &) =====
unsigned int __fastcall Character::CSM_Interrupted(Character *this, int a2, void *a3, int a4, int *a5)
{
  switch ( a4 )
  {
    case 6:
      return HIWORD(*((_DWORD *)this + 328)) & 1;
    case 10:
      return ((*((_DWORD *)this + 330) ^ 0x20u) >> 5) & 1;
    case 5:
      return *((unsigned __int8 *)this + 1089);
  }
  return 1;
}


// ===== 3ad280 Character::CSM_StoppedAttacking(int,void *,int,int &) =====
int __fastcall Character::CSM_StoppedAttacking(Character *this, int a2, void *a3, int a4, int *a5)
{
  if ( a4 == 5 )
    return *((unsigned __int8 *)this + 1090);
  else
    return 0;
}


// ===== 3ad290 Character::CSM_StopSkill(int,void *,int,int &) =====
int __fastcall Character::CSM_StopSkill(Character *this, int a2, void *a3, int a4, int *a5)
{
  return (*((_DWORD *)this + 328) >> 15) & 1;
}


// ===== 3ad29c Character::CSM_CanStopInteraction(int,void *,int,int &) =====
int __fastcall Character::CSM_CanStopInteraction(Character *this, int a2, void *a3, int a4, int *a5)
{
  int v5; // r3

  v5 = *((_DWORD *)this + 337);
  if ( (unsigned int)(v5 - 4) <= 1 )
    return CSWTCH_5399[v5 - 4];
  else
    return 1;
}


// ===== 3ad2c8 Character::CSM_AfterInteraction(int,void *,int,int &) =====
int __fastcall Character::CSM_AfterInteraction(Character *this, int a2, void *a3, int a4, int *a5)
{
  int v5; // r3
  int result; // r0

  v5 = *((_DWORD *)this + 337);
  result = 1;
  if ( v5 == 4 )
    *a5 = 18;
  return result;
}


// ===== 3ad2e4 Character::CSM_Spawn(int,void *,int,int &) =====
int __fastcall Character::CSM_Spawn(Character **this, int a2, void *a3, int a4, int *a5)
{
  int result; // r0
  CharAI::GroupInfo *v7; // r0

  if ( !a4 )
    return Character::CanRespawn((Character *)this);
  if ( a4 != 17 )
    return 1;
  v7 = *(this + 255);
  if ( !v7 )
    return *((unsigned __int8 *)this + 5168);
  result = CharAI::GroupInfo::CanSpawn(v7, *(this + 243));
  if ( result )
    return *((unsigned __int8 *)this + 5168);
  return result;
}


// ===== 3ad334 `global constructor keyed to'.._.._sources_Game_Objects_Characters_Character_CSM.cpp =====
int `global constructor keyed to'.._.._sources_Game_Objects_Characters_Character_CSM.cpp()
{
  int result; // r0

  result = `guard variable for'Singleton<PlayerStatManager>::s_inst;
  dword_9A2974 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9A2970 = 1056964608;
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


// ===== 3ad410 `non-virtual thunk to'Character::Ctrl_RotateBy(float) =====
int __fastcall `non-virtual thunk to'Character::Ctrl_RotateBy(Character *this, float a2)
{
  return Character::Ctrl_RotateBy((Character *)((char *)this - 884), a2);
}


// ===== 3ad418 Character::Ctrl_RotateBy(float) =====
float __fastcall Character::Ctrl_RotateBy(Character *this, float a2)
{
  float result; // r0

  result = *((float *)this + 94) + a2;
  *((float *)this + 94) = result;
  return result;
}


// ===== 3ad430 Character::CTRLIsAllowed(void) =====
bool __fastcall Character::CTRLIsAllowed(Character *this)
{
  CharStateMachine *v1; // r4

  v1 = (Character *)((char *)this + 1276);
  return !CharStateMachine::SM_IsScared((Character *)((char *)this + 1276), 1) && !CharStateMachine::SM_IsStunned(v1, 1);
}


// ===== 3ad470 `non-virtual thunk to'Character::Ctrl_OpenIGM(void) =====
int __fastcall `non-virtual thunk to'Character::Ctrl_OpenIGM(Character *this)
{
  return Character::Ctrl_OpenIGM((Character *)((char *)this - 884));
}


// ===== 3ad478 Character::Ctrl_OpenIGM(void) =====
int __fastcall Character::Ctrl_OpenIGM(Character *this)
{
  int v1; // r0
  int Instance; // r0
  MenuManager *v4; // r0
  int v5; // r0

  if ( MenuBase::s_igmOpened )
  {
    Instance = MenuManager::GetInstance(this);
    v4 = (MenuManager *)(*(int (__fastcall **)(int, const char *, const char *))(*(_DWORD *)Instance + 16))(
                          Instance,
                          "PopAllAbove",
                          "menu_Ingame");
    v5 = MenuManager::GetInstance(v4);
    return (*(int (__fastcall **)(int, const char *, char *))(*(_DWORD *)v5 + 16))(v5, "PopMenu", "");
  }
  else
  {
    v1 = MenuManager::GetInstance(this);
    return (*(int (__fastcall **)(int, const char *, const char *))(*(_DWORD *)v1 + 16))(v1, "PushMenu", "menu_Ingame");
  }
}


// ===== 3ad520 `non-virtual thunk to'Character::Ctrl_Kill(GameObject *,bool) =====
int __fastcall `non-virtual thunk to'Character::Ctrl_Kill(Character *this, GameObject *a2, bool a3)
{
  return Character::Ctrl_Kill((Character *)((char *)this - 884), a2, a3);
}


// ===== 3ad528 Character::Ctrl_Kill(GameObject *,bool) =====
int __fastcall Character::Ctrl_Kill(Character *this, GameObject *a2, int a3)
{
  int result; // r0

  result = (*(int (__fastcall **)(Character *))(*(_DWORD *)this + 52))(this);
  if ( !result )
  {
    Character::Kill(this, a2, a3);
    return Character::RaiseEvent(this, 2, (char *)a2);
  }
  return result;
}


// ===== 3ad574 `non-virtual thunk to'Character::Ctrl_DropObject(void) =====
int __fastcall `non-virtual thunk to'Character::Ctrl_DropObject(Character *this)
{
  return Character::Ctrl_DropObject((Character *)((char *)this - 884));
}


// ===== 3ad57c Character::Ctrl_DropObject(void) =====
int __fastcall Character::Ctrl_DropObject(Character *this)
{
  int result; // r0

  result = (*(int (__fastcall **)(Character *))(*(_DWORD *)this + 52))(this);
  if ( !result )
    return Character::RaiseEvent(this, 6, nullptr);
  return result;
}


// ===== 3ad5ac Character::ForceUseOOI(GameObject *) =====
int __fastcall Character::ForceUseOOI(int this, GameObject *a2)
{
  int v3; // r4
  CharStateMachine *v4; // r6

  v3 = this;
  if ( a2 )
  {
    if ( !*(_DWORD *)(this + 1032) )
    {
      v4 = (CharStateMachine *)(this + 1276);
      if ( CharStateMachine::SM_IsIdle((CharStateMachine *)(this + 1276), 0)
        || (this = CharStateMachine::SM_IsMoving(v4, 0)) != 0 )
      {
        this = CharAI::AI_SetTarget((CharAI *)(v3 + 968), a2, 0);
        *(_BYTE *)(v3 + 1042) = 1;
      }
    }
  }
  return this;
}


// ===== 3ad614 Character::UseOOI(void) =====
_DWORD *__fastcall Character::UseOOI(_DWORD *this)
{
  _DWORD *v1; // r4
  CharStateMachine *v2; // r5

  v1 = this;
  if ( *(this + 1321) )
  {
    if ( !*(this + 258) )
    {
      v2 = (CharStateMachine *)(this + 319);
      if ( CharStateMachine::SM_IsIdle((CharStateMachine *)(this + 319), 0)
        || (this = (_DWORD *)CharStateMachine::SM_IsMoving(v2, 0)) != nullptr )
      {
        this = (_DWORD *)CharAI::AI_SetTarget((CharAI *)(v1 + 242), (GameObject *)v1[1321], 0);
        *((_BYTE *)v1 + 1042) = 1;
      }
    }
  }
  return this;
}


// ===== 3ad688 `non-virtual thunk to'Character::Ctrl_UseOOI(GameObject *) =====
_DWORD *__fastcall `non-virtual thunk to'Character::Ctrl_UseOOI(Character *this, GameObject *a2)
{
  return Character::Ctrl_UseOOI((Character *)((char *)this - 884), a2);
}


// ===== 3ad690 Character::Ctrl_UseOOI(GameObject *) =====
_DWORD *__fastcall Character::Ctrl_UseOOI(Character *this, GameObject *a2)
{
  _DWORD *result; // r0

  result = (_DWORD *)(*(int (__fastcall **)(Character *))(*(_DWORD *)this + 52))(this);
  if ( !result )
  {
    if ( a2 )
    {
      return (_DWORD *)Character::ForceUseOOI((int)this, a2);
    }
    else if ( *((_DWORD *)this + 1321) )
    {
      return Character::UseOOI(this);
    }
  }
  return result;
}


// ===== 3ad6e8 `non-virtual thunk to'Character::Ctrl_UsePotion(void) =====
int __fastcall `non-virtual thunk to'Character::Ctrl_UsePotion(Character *this)
{
  return Character::Ctrl_UsePotion((Character *)((char *)this - 884));
}


// ===== 3ad6f0 Character::Ctrl_UsePotion(void) =====
int __fastcall Character::Ctrl_UsePotion(Character *this)
{
  int result; // r0
  int v3; // r6
  TrophyManager *v4; // r7
  int v5; // r8
  int v6; // r4
  int v7; // r1

  result = (*(int (__fastcall **)(Character *))(*(_DWORD *)this + 52))(this);
  v3 = result;
  if ( !result )
  {
    result = Character::HasPotion(this);
    if ( result )
    {
      ItemInventory::RemoveOnePotion((Character *)((char *)this + 892));
      if ( (*(int (__fastcall **)(Character *))(*(_DWORD *)this + 40))(this) )
      {
        CharProperties::PROPS_AddInt((Character *)((char *)this + 1376), 219, 1);
        if ( PlayerManager::IsLocalPlayer((PlayerManager *)dword_99F76C, this) )
        {
          v4 = (TrophyManager *)TrophyManager::s_instance;
          if ( CharProperties::PROPS_GetInt((Character *)((char *)this + 1376), 219, 0) > 99 )
          {
            v5 = Arrays::TrophyTable::size;
            if ( Arrays::TrophyTable::size )
            {
              v6 = Arrays::TrophyTable::m_memberNames;
              while ( LC_API_STRCMP_0("use_100_potions", *(const char **)(v6 + 4 * v3)) )
              {
                if ( ++v3 == v5 )
                  goto LABEL_14;
              }
              v7 = v3;
            }
            else
            {
LABEL_14:
              v7 = -1;
            }
            TrophyManager::UnlockTrophy(v4, (TrophyManager *)v7);
          }
        }
      }
      Character::RegenHP(this, -1);
      return Character::RegenMP(this, -1);
    }
  }
  return result;
}


// ===== 3ad834 `non-virtual thunk to'Character::Ctrl_EndCast(bool) =====
int __fastcall `non-virtual thunk to'Character::Ctrl_EndCast(Character *this, bool a2)
{
  return Character::Ctrl_EndCast((Character *)((char *)this - 884), a2);
}


// ===== 3ad83c Character::Ctrl_EndCast(bool) =====
int __fastcall Character::Ctrl_EndCast(Character *this, bool a2)
{
  return CharAI::AI_EndSpell((Character *)((char *)this + 968), a2);
}


// ===== 3ad844 `non-virtual thunk to'Character::Ctrl_BeginCast(bool) =====
int __fastcall `non-virtual thunk to'Character::Ctrl_BeginCast(Character *this, bool a2)
{
  return Character::Ctrl_BeginCast((Character *)((char *)this - 884), a2);
}


// ===== 3ad84c Character::Ctrl_BeginCast(bool) =====
int __fastcall Character::Ctrl_BeginCast(Character **this, bool a2)
{
  return CharAI::AI_BeginSpell(this + 242, a2);
}


// ===== 3ad854 `non-virtual thunk to'Character::Ctrl_EndSkill(uint) =====
int __fastcall `non-virtual thunk to'Character::Ctrl_EndSkill(Character *this, unsigned int a2)
{
  return Character::Ctrl_EndSkill((Character *)((char *)this - 884), a2);
}


// ===== 3ad85c Character::Ctrl_EndSkill(uint) =====
int __fastcall Character::Ctrl_EndSkill(Character *this, unsigned int a2)
{
  return CharAI::AI_EndSkill((Character *)((char *)this + 968), a2);
}


// ===== 3ad864 `non-virtual thunk to'Character::Ctrl_BeginSkill(uint) =====
int __fastcall `non-virtual thunk to'Character::Ctrl_BeginSkill(Character *this, unsigned int a2)
{
  return Character::Ctrl_BeginSkill((Character *)((char *)this - 884), a2);
}


// ===== 3ad86c Character::Ctrl_BeginSkill(uint) =====
int __fastcall Character::Ctrl_BeginSkill(Character **this, Character *a2)
{
  return CharAI::AI_BeginSkill(this + 242, a2);
}


// ===== 3ad874 `non-virtual thunk to'Character::Ctrl_Attack(GameObject *) =====
int __fastcall `non-virtual thunk to'Character::Ctrl_Attack(Character *this, GameObject *a2)
{
  return Character::Ctrl_Attack((Character *)((char *)this - 884), a2);
}


// ===== 3ad87c Character::Ctrl_Attack(GameObject *) =====
int __fastcall Character::Ctrl_Attack(Character *this, GameObject *a2)
{
  return CharAI::AI_DoMeleeAttack((Character *)((char *)this + 968), a2, 0);
}


// ===== 3ad888 `non-virtual thunk to'Character::Ctrl_Stop(void) =====
int __fastcall `non-virtual thunk to'Character::Ctrl_Stop(Character *this)
{
  return Character::Ctrl_Stop((Character *)((char *)this - 884));
}


// ===== 3ad890 Character::Ctrl_Stop(void) =====
int __fastcall Character::Ctrl_Stop(Character *this)
{
  int result; // r0

  result = (*(int (__fastcall **)(Character *))(*(_DWORD *)this + 84))(this);
  if ( !result )
  {
    GameObject::Stop(this);
    return Character::RaiseEvent(this, 63, nullptr);
  }
  return result;
}


// ===== 3ad8cc `non-virtual thunk to'Character::Ctrl_HeadTowards(GameObject *) =====
int __fastcall `non-virtual thunk to'Character::Ctrl_HeadTowards(Character *this, GameObject *a2)
{
  return Character::Ctrl_HeadTowards((Character *)((char *)this - 884), a2);
}


// ===== 3ad8d4 Character::Ctrl_HeadTowards(GameObject *) =====
int __fastcall Character::Ctrl_HeadTowards(Character *this, GameObject *a2)
{
  int result; // r0
  int (__fastcall *v5)(Character *, _DWORD *); // r7
  float *TargetPosition; // r5
  float *v7; // r0
  float v8; // r10
  float v9; // r8
  float v10; // r0
  _DWORD v11[4]; // [sp+4h] [bp-10h] BYREF

  result = (*(int (__fastcall **)(Character *))(*(_DWORD *)this + 84))(this);
  if ( !result )
  {
    if ( a2 )
    {
      v5 = *(int (__fastcall **)(Character *, _DWORD *))(*(_DWORD *)this + 220);
      TargetPosition = (float *)GameObject::GetTargetPosition(a2);
      v7 = (float *)GameObject::GetTargetPosition(this);
      v8 = TargetPosition[1] - v7[1];
      v9 = TargetPosition[2] - v7[2];
      v10 = *TargetPosition - *v7;
      *(float *)&v11[1] = v8;
      *(float *)v11 = v10;
      *(float *)&v11[2] = v9;
      return v5(this, v11);
    }
    else if ( *((_BYTE *)this + 437) )
    {
      return (*(int (__fastcall **)(Character *, int *))(*(_DWORD *)this + 220))(this, &Vec3f_Origin);
    }
  }
  return result;
}


// ===== 3ad9a4 `non-virtual thunk to'Character::Ctrl_LookAt(GameObject *) =====
int __fastcall `non-virtual thunk to'Character::Ctrl_LookAt(Character *this, GameObject *a2)
{
  return Character::Ctrl_LookAt((int)this - 884, a2);
}


// ===== 3ad9ac Character::Ctrl_LookAt(GameObject *) =====
int __fastcall Character::Ctrl_LookAt(int this, GameObject *a2)
{
  int v2; // r5
  int (__fastcall *v3)(int, char *); // r4
  char *TargetPosition; // r0

  v2 = this;
  if ( a2 )
  {
    v3 = *(int (__fastcall **)(int, char *))(*(_DWORD *)this + 208);
    TargetPosition = GameObject::GetTargetPosition(a2);
    return v3(v2, TargetPosition);
  }
  return this;
}


// ===== 3ad9dc `non-virtual thunk to'Character::Ctrl_MoveTo(GameObject *) =====
int __fastcall `non-virtual thunk to'Character::Ctrl_MoveTo(Character *this, GameObject *a2)
{
  return Character::Ctrl_MoveTo((Character *)((char *)this - 884), a2);
}


// ===== 3ad9e4 Character::Ctrl_MoveTo(GameObject *) =====
int __fastcall Character::Ctrl_MoveTo(Character *this, GameObject *a2)
{
  int result; // r0
  char *TargetPosition; // r1

  result = (*(int (__fastcall **)(Character *))(*(_DWORD *)this + 84))(this);
  if ( !result )
  {
    if ( a2 )
    {
      TargetPosition = GameObject::GetTargetPosition(a2);
      return GameObject::PathTo(this, TargetPosition);
    }
  }
  return result;
}


// ===== 3ada28 `non-virtual thunk to'Character::Ctrl_MoveTo(Point3D<float> const&) =====
int __fastcall `non-virtual thunk to'Character::Ctrl_MoveTo(int a1, float *a2)
{
  return Character::Ctrl_MoveTo(a1 - 884, a2);
}


// ===== 3ada30 Character::Ctrl_MoveTo(Point3D<float> const&) =====
int __fastcall Character::Ctrl_MoveTo(int a1, float *a2)
{
  int result; // r0

  result = (*(int (__fastcall **)(int))(*(_DWORD *)a1 + 84))(a1);
  if ( !result )
    return GameObject::PathTo(a1, a2);
  return result;
}


// ===== 3ada64 `non-virtual thunk to'Character::Ctrl_HeadTo(GameObject *) =====
int __fastcall `non-virtual thunk to'Character::Ctrl_HeadTo(Character *this, GameObject *a2)
{
  return Character::Ctrl_HeadTo((Character *)((char *)this - 884), a2);
}


// ===== 3ada6c Character::Ctrl_HeadTo(GameObject *) =====
int __fastcall Character::Ctrl_HeadTo(Character *this, GameObject *a2)
{
  int result; // r0
  char *TargetPosition; // r0

  result = (*(int (__fastcall **)(Character *))(*(_DWORD *)this + 84))(this);
  if ( !result )
  {
    if ( a2 )
    {
      TargetPosition = GameObject::GetTargetPosition(a2);
      GameObject::SetDestination(this, TargetPosition);
      return Character::RaiseEvent(this, 0, (char *)a2);
    }
  }
  return result;
}


// ===== 3adac0 `non-virtual thunk to'Character::Ctrl_HeadTo(Point3D<float> const&) =====
int __fastcall `non-virtual thunk to'Character::Ctrl_HeadTo(int a1, float *a2)
{
  return Character::Ctrl_HeadTo((float *)(a1 - 884), a2);
}


// ===== 3adac8 Character::Ctrl_HeadTo(Point3D<float> const&) =====
int __fastcall Character::Ctrl_HeadTo(float *a1, float *a2)
{
  int result; // r0
  float v5; // r8
  float v6; // r7
  float v7[3]; // [sp+4h] [bp-Ch] BYREF

  result = (*(int (__fastcall **)(float *))(*(_DWORD *)a1 + 84))(a1);
  if ( !result )
  {
    v5 = a2[1] - a1[89];
    v6 = a2[2] - a1[90];
    v7[0] = *a2 - a1[88];
    v7[1] = v5;
    v7[2] = v6;
    GameObject::SetHeadingDirection(a1, v7, 1);
    GameObject::SetDestination(a1, a2);
    return Character::RaiseEvent((Character *)a1, 0, nullptr);
  }
  return result;
}


// ===== 3adb58 `non-virtual thunk to'Character::Ctrl_HeadTowards(Point3D<float> const&) =====
int __fastcall `non-virtual thunk to'Character::Ctrl_HeadTowards(int a1, float *a2)
{
  return Character::Ctrl_HeadTowards(a1 - 884, a2);
}


// ===== 3adb60 Character::Ctrl_HeadTowards(Point3D<float> const&) =====
int __fastcall Character::Ctrl_HeadTowards(int a1, float *a2)
{
  float v4; // r7
  float v5; // r6
  int result; // r0
  GameObject *v7; // r0
  float *TargetPosition; // r6
  float *v9; // r0
  float v10; // r10
  float v11; // r8
  float v12[3]; // [sp+4h] [bp-Ch] BYREF

  v5 = (float)(*a2 * *a2) + (float)(a2[1] * a2[1]);
  v4 = a2[2];
  result = (float)(v5 + (float)(v4 * v4)) > 0.0001;
  if ( (float)(v5 + (float)(v4 * v4)) > 0.0001 )
  {
    result = CharStateMachine::SM_IsUsingSkill((CharStateMachine *)(a1 + 1276));
    if ( !result )
    {
      result = CharStateMachine::SM_IsCasting((CharStateMachine *)(a1 + 1276));
      if ( !result )
      {
        v7 = *(GameObject **)(a1 + 1032);
        if ( v7 )
        {
          TargetPosition = (float *)GameObject::GetTargetPosition(v7);
          v9 = (float *)GameObject::GetTargetPosition((GameObject *)a1);
          v10 = TargetPosition[1] - v9[1];
          v11 = TargetPosition[2] - v9[2];
          v12[0] = *TargetPosition - *v9;
          v12[1] = v10;
          v12[2] = v11;
          if ( Point3D<float>::angle(a2, v12) > 1.5708 )
          {
            CharAI::AI_SetTarget((CharAI *)(a1 + 968), nullptr, 0);
            CharAI::AI_SyncLastTarget((CharAI *)(a1 + 968));
          }
        }
        GameObject::SetHeadingDirection(a1, a2, 1);
        return Character::RaiseEvent((Character *)a1, 0, nullptr);
      }
    }
  }
  else if ( *(_BYTE *)(a1 + 437) )
  {
    GameObject::SetHeadingDirection(a1, a2, 1);
    return (*(int (__fastcall **)(int))(*(_DWORD *)a1 + 244))(a1);
  }
  return result;
}


// ===== 3adcec `non-virtual thunk to'Character::Ctrl_WarpTo(Point3D<float> const&) =====
int __fastcall `non-virtual thunk to'Character::Ctrl_WarpTo(int a1, int *a2)
{
  return Character::Ctrl_WarpTo((GameObject *)(a1 - 884), a2);
}


// ===== 3adcf4 Character::Ctrl_WarpTo(Point3D<float> const&) =====
int __fastcall Character::Ctrl_WarpTo(GameObject *a1, int *a2)
{
  int result; // r0
  int v5; // r3
  int v6; // r12
  int v7; // r3
  int v8; // r1
  int v9; // [sp+4h] [bp-Ch] BYREF
  int v10; // [sp+8h] [bp-8h]
  int v11; // [sp+Ch] [bp-4h]

  result = (*(int (__fastcall **)(GameObject *))(*(_DWORD *)a1 + 84))(a1);
  if ( !result )
  {
    v5 = a2[2];
    v6 = a2[1];
    v9 = *a2;
    v10 = v6;
    v11 = v5;
    result = PFWorld::ValidatePosition(&Singleton<PFWorld>::s_inst, &v9, (char *)a1 + 456);
    if ( result )
    {
      GameObject::SetPosition(a1, (float *)&v9, 1);
      v7 = v11;
      v8 = v9;
      *((_DWORD *)a1 + 121) = v10;
      *((_DWORD *)a1 + 120) = v8;
      *((_DWORD *)a1 + 122) = v7;
      (*(void (__fastcall **)(GameObject *))(*(_DWORD *)a1 + 244))(a1);
      return Character::RaiseEvent(a1, 1, nullptr);
    }
  }
  return result;
}


// ===== 3addb4 `non-virtual thunk to'Character::Ctrl_LookAt(Point3D<float> const&) =====
int __fastcall `non-virtual thunk to'Character::Ctrl_LookAt(int a1, float *a2)
{
  return Character::Ctrl_LookAt((float *)(a1 - 884), a2);
}


// ===== 3addbc Character::Ctrl_LookAt(Point3D<float> const&) =====
// attributes: thunk
int __fastcall Character::Ctrl_LookAt(float *a1, float *a2)
{
  return GameObject::LookAt(a1, a2);
}


// ===== 3addc0 `non-virtual thunk to'Character::Ctrl_Click(Point3D<float> const&,bool) =====
int __fastcall `non-virtual thunk to'Character::Ctrl_Click(int a1)
{
  return Character::Ctrl_Click(a1 - 884);
}


// ===== 3addc8 Character::Ctrl_Click(Point3D<float> const&,bool) =====
void __fastcall Character::Ctrl_Click(Character *a1, float *a2, int a3)
{
  float v5; // r1
  int v6; // r2
  int v7; // r3
  _DWORD *v8; // r5
  int v9; // r9
  GameObject *v10; // r4
  float *TargetPosition; // r0
  float v12; // r6
  float v13; // r10
  float v14; // r11
  float v15; // r6
  _DWORD *i; // r4
  int v17; // r11
  int v18; // r1
  char *v19; // r0
  const char **v20; // r5
  int v21; // r2
  float v22; // r2
  int v23; // r3
  float v24; // r12
  float *v25; // [sp+0h] [bp-BCh]
  float v26; // [sp+8h] [bp-B4h]
  float v27; // [sp+Ch] [bp-B0h]
  GameObject *v28; // [sp+Ch] [bp-B0h]
  float v29; // [sp+10h] [bp-ACh]
  float v30; // [sp+10h] [bp-ACh]
  _BOOL4 IsUsingDPad; // [sp+14h] [bp-A8h]
  CharAI *v33; // [sp+1Ch] [bp-A0h]
  float v34; // [sp+20h] [bp-9Ch]
  GameObject *v35; // [sp+24h] [bp-98h]
  float v36; // [sp+30h] [bp-8Ch]
  char *v37[3]; // [sp+38h] [bp-84h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v38; // [sp+54h] [bp-68h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v39; // [sp+6Ch] [bp-50h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v40; // [sp+84h] [bp-38h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v41; // [sp+9Ch] [bp-20h] BYREF

  if ( Character::CTRLIsAllowed(a1) )
  {
    IsUsingDPad = Application::IsUsingDPad((Application *)&Singleton<Application>::s_inst);
    if ( CharStateMachine::SM_IsCasting((Character *)((char *)a1 + 1276))
      || CharStateMachine::SM_IsUsingSkill((Character *)((char *)a1 + 1276)) )
    {
      if ( a3 )
      {
        *((_BYTE *)a1 + 5320) = 0;
        *((_WORD *)a1 + 2661) = -1;
      }
      else
      {
        *((_BYTE *)a1 + 5320) = 1;
        v5 = *a2;
        *((float *)a1 + 1324) = *a2;
        v6 = *((_DWORD *)a2 + 1);
        *((_DWORD *)a1 + 1325) = v6;
        v7 = *((_DWORD *)a2 + 2);
        *((float *)a1 + 1327) = v5;
        *((_DWORD *)a1 + 1328) = v6;
        *((_DWORD *)a1 + 1329) = v7;
        *((_WORD *)a1 + 2661) = -1;
        *((_DWORD *)a1 + 1326) = v7;
      }
    }
    else
    {
      *((_BYTE *)a1 + 5320) = 0;
      *((_WORD *)a1 + 2661) = -1;
      v35 = nullptr;
      v33 = (Character *)((char *)a1 + 968);
      v9 = dword_99F764 + 96;
      v8 = *(_DWORD **)(dword_99F764 + 96);
      v36 = 1000000.0;
      if ( v8 != (_DWORD *)(dword_99F764 + 96) )
      {
        do
        {
          v10 = (GameObject *)v8[2];
          TargetPosition = (float *)GameObject::GetTargetPosition(v10);
          v26 = TargetPosition[2];
          v12 = *TargetPosition;
          v13 = *a2;
          v14 = a2[1];
          v29 = TargetPosition[1];
          v27 = a2[2];
          if ( v10 != a1 && (*(int (__fastcall **)(GameObject *, Character *))(*(_DWORD *)v10 + 136))(v10, a1) )
          {
            if ( IsUsingDPad && !CharAI::AI_IsEnemy(v33, v10) )
            {
              v8 = (_DWORD *)*v8;
              continue;
            }
            if ( !CharAI::AI_IsNeutral(v33, v10) )
            {
              v15 = (float)((float)((float)(v13 - v12) * (float)(v13 - v12))
                          + (float)((float)(v14 - v29) * (float)(v14 - v29)))
                  + (float)((float)(v27 - v26) * (float)(v27 - v26));
              if ( v36 > v15 )
              {
                if ( CharAI::AI_IsEnemy(v33, v10) )
                  v22 = *(float *)(Arrays::DesignSettingsTable::members + 44);
                else
                  v22 = *(float *)(Arrays::DesignSettingsTable::members + 80);
                if ( GameObject::IsNearby((float *)v10, a2, v22) )
                {
                  v36 = v15;
                  v35 = v10;
                }
                v8 = (_DWORD *)*v8;
                continue;
              }
            }
          }
          v8 = (_DWORD *)*v8;
        }
        while ( v8 != (_DWORD *)v9 );
      }
      if ( v35 )
      {
        DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
        std::string::string((std::string *)&v41, "isTracingChar_CTRL");
        DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, (const std::string *)&v41);
        std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v41);
        *((_BYTE *)a1 + 1043) = 1;
        CharAI::AI_SetTarget(v33, v35, 0);
      }
      else
      {
        if ( !a3 || IsUsingDPad )
          goto LABEL_38;
        v28 = nullptr;
        v30 = 1000000.0;
        i = *(_DWORD **)(dword_99F764 + 20);
        v17 = dword_99F764 + 12;
        while ( i != (_DWORD *)v17 )
        {
          v18 = i[11];
          if ( v18 )
          {
            ObjectBase::GetHandle((ObjectBase *)v37, v18);
            v19 = ObjectHandle::operator GameObject *(v37);
            v20 = (const char **)v19;
            if ( v19 )
            {
              if ( a1 != (Character *)v19 )
              {
                if ( (*(int (__fastcall **)(char *, Character *))(*(_DWORD *)v19 + 136))(v19, a1) )
                {
                  if ( LC_API_STRCMP_0(v20[23], "Character") )
                  {
                    v25 = (float *)GameObject::GetTargetPosition((GameObject *)v20);
                    v24 = a2[1] - v25[1];
                    v34 = (float)((float)((float)(*a2 - *v25) * (float)(*a2 - *v25)) + (float)(v24 * v24))
                        + (float)((float)(a2[2] - v25[2]) * (float)(a2[2] - v25[2]));
                    if ( v30 > v34
                      && GameObject::IsNearby((float *)v20, a2, *(float *)(Arrays::DesignSettingsTable::members + 84)) )
                    {
                      v28 = (GameObject *)v20;
                      v30 = v34;
                    }
                  }
                }
              }
            }
          }
          v21 = i[3];
          if ( v21 )
          {
            for ( i = (_DWORD *)i[3]; i[2]; i = (_DWORD *)i[2] )
              ;
          }
          else
          {
            v23 = i[1];
            if ( i == *(_DWORD **)(v23 + 12) )
            {
              do
              {
                i = (_DWORD *)v23;
                v23 = *(_DWORD *)(v23 + 4);
              }
              while ( *(_DWORD **)(v23 + 12) == i );
              v21 = i[3];
            }
            if ( v21 != v23 )
              i = (_DWORD *)v23;
          }
        }
        if ( v28 )
        {
          DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
          std::string::string((std::string *)&v40, "isTracingChar_CTRL");
          DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, (const std::string *)&v40);
          std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v40);
          CharAI::AI_SetTarget(v33, v28, 0);
        }
        else
        {
LABEL_38:
          DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
          std::string::string((std::string *)&v39, "UseClickToMove");
          if ( DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, (const std::string *)&v39)
            || !IsUsingDPad )
          {
            std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v39);
            DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
            std::string::string((std::string *)&v38, "isTracingChar_CTRL");
            DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, (const std::string *)&v38);
            std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v38);
            CharAI::AI_SetTarget(v33, nullptr, 0);
            CharAI::AI_SyncLastTarget((int)v33);
            if ( a3 )
              (*(void (__fastcall **)(Character *, float *))(*(_DWORD *)a1 + 236))(a1, a2);
            else
              (*(void (__fastcall **)(Character *, float *))(*(_DWORD *)a1 + 228))(a1, a2);
          }
          else
          {
            std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v39);
          }
        }
      }
    }
  }
}


// ===== 3ae470 `global constructor keyed to'.._.._sources_Game_Objects_Characters_Character_CTRL.cpp =====
int `global constructor keyed to'.._.._sources_Game_Objects_Characters_Character_CTRL.cpp()
{
  int result; // r0

  result = `guard variable for'Singleton<PlayerStatManager>::s_inst;
  dword_9A2980 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9A297C = 1056964608;
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
  if ( (`guard variable for'Singleton<PFWorld>::s_inst & 1) == 0 )
  {
    `guard variable for'Singleton<PFWorld>::s_inst = 1;
    PFWorld::PFWorld((PFWorld *)&Singleton<PFWorld>::s_inst);
    return _aeabi_atexit((int)&Singleton<PFWorld>::s_inst, (int)PFWorld::~PFWorld, (int)&_dso_handle);
  }
  return result;
}


// ===== 3ae5a0 Character::GetCharFaeryListId(void) =====
int __fastcall Character::GetCharFaeryListId(Character *this)
{
  int result; // r0

  result = *((_DWORD *)this + 1051);
  if ( result < 0 || result >= Arrays::FaeryListTable::size )
    return 0;
  return result;
}


// ===== 3ae5dc Character::GetCharFaeryList(void) =====
int __fastcall Character::GetCharFaeryList(Character *this)
{
  int v1; // r4

  v1 = Arrays::FaeryListTable::members;
  return v1 + 12 * Character::GetCharFaeryListId(this);
}


// ===== 3ae60c Character::GetFaeryCharacter(void) =====
int __fastcall Character::GetFaeryCharacter(Character *this)
{
  return *((_DWORD *)this + 264);
}


// ===== 3ae614 Character::GetFaeryCharacter(void) =====
int __fastcall Character::GetFaeryCharacter(Character *this)
{
  return *((_DWORD *)this + 264);
}


// ===== 3ae61c Character::IncFaeryLevel(uint) =====
int __fastcall Character::IncFaeryLevel(Character *this, unsigned int a2)
{
  int GameDifficulty; // r5
  int FaerieLevel; // r0
  unsigned int i; // r7
  int result; // r0
  TrophyManager *v8; // r8
  int v9; // r7
  int v10; // r4
  int v11; // r5
  int v12; // r1

  GameDifficulty = Character::SG_GetGameDifficulty(this);
  if ( Character::SG_GetFaerieCount(this, GameDifficulty) <= a2 )
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
        "faeryIdx < SG_GetFaerieCount(diff)",
        "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Objects\\Characters\\Character_Faery.cpp",
        169);
    }
  }
  FaerieLevel = Character::SG_GetFaerieLevel(this, a2, GameDifficulty);
  Character::SG_SetFaerieLevel(this, a2, FaerieLevel + 1, GameDifficulty);
  CharAI::UpdateAllSkills((Character *)((char *)this + 968));
  for ( i = 0; Character::SG_GetFaerieCount(this, GameDifficulty) > i; ++i )
  {
    result = Character::SG_GetFaerieLevel(this, i, -1);
    if ( !result )
      return result;
  }
  v8 = (TrophyManager *)TrophyManager::s_instance;
  result = PlayerManager::IsLocalPlayer((PlayerManager *)dword_99F76C, this);
  if ( result )
  {
    v9 = Arrays::TrophyTable::size;
    if ( Arrays::TrophyTable::size )
    {
      v10 = 0;
      v11 = Arrays::TrophyTable::m_memberNames;
      while ( LC_API_STRCMP_0("faery_charged", *(const char **)(v11 + 4 * v10)) )
      {
        if ( ++v10 == v9 )
          goto LABEL_18;
      }
      v12 = v10;
    }
    else
    {
LABEL_18:
      v12 = -1;
    }
    return TrophyManager::UnlockTrophy(v8, v12);
  }
  return result;
}


// ===== 3ae7d4 Character::SetFaeryState(uint,int) =====
int __fastcall Character::SetFaeryState(Character *this, unsigned int a2, int a3)
{
  int GameDifficulty; // r8
  _BOOL4 v7; // r3
  int IDFromName; // r1

  GameDifficulty = Character::SG_GetGameDifficulty(this);
  if ( Character::SG_GetFaerieCount(this, GameDifficulty) <= a2 )
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
        "faeryIdx < SG_GetFaerieCount(diff)",
        "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Objects\\Characters\\Character_Faery.cpp",
        135);
    }
  }
  v7 = a3 == 1;
  if ( !a2 )
    v7 = 0;
  if ( v7 && !*(_BYTE *)(GetOnline() + 5) && !Character::SG_GetGameDifficulty(this) && *(_BYTE *)(dword_99F778 + 43) )
  {
    IDFromName = ScriptManager::GetIDFromName((ScriptManager *)&ScriptManager::s_inst, "cinematic_Tuto_faery", 1);
    if ( IDFromName != -1 )
      ScriptManager::StartScript((ScriptManager *)&ScriptManager::s_inst, IDFromName, -1, 0);
    *(_BYTE *)(dword_99F778 + 43) = 0;
    SavegameManager::saveSettings((SavegameManager *)dword_99F778);
  }
  return Character::SG_SetFaerieState(this, a2, a3, GameDifficulty);
}


// ===== 3ae94c Character::IncAllFaeriesLevel(void) =====
Character *__fastcall Character::IncAllFaeriesLevel(Character *this)
{
  unsigned int v2; // r4
  int GameDifficulty; // r6
  bool v4; // cf
  Character *result; // r0

  v2 = 0;
  GameDifficulty = Character::SG_GetGameDifficulty(this);
  while ( 1 )
  {
    v4 = v2 >= Character::SG_GetFaerieCount(this, GameDifficulty);
    result = this;
    if ( v4 )
      break;
    Character::SetFaeryState(this, v2, 1);
    Character::IncFaeryLevel(this, v2++);
  }
  return result;
}


// ===== 3ae99c Character::ChangeFaery(uint) =====
int __fastcall Character::ChangeFaery(Character *this, unsigned int a2)
{
  int GameDifficulty; // r5
  int result; // r0
  int v6; // r4
  const char *CharModelName; // r0

  GameDifficulty = Character::SG_GetGameDifficulty(this);
  if ( Character::SG_GetFaerieCount(this, GameDifficulty) <= a2 )
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
        "faeryIdx < SG_GetFaerieCount(diff)",
        "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Objects\\Characters\\Character_Faery.cpp",
        107);
    }
  }
  Character::SG_SetCurrentFaerie(this, a2, GameDifficulty);
  result = CharAI::UpdateAllSkills((Character *)((char *)this + 968));
  v6 = *((_DWORD *)this + 264);
  if ( v6 )
  {
    CharModelName = (const char *)Character::GetCharModelName((Character *)v6);
    GameObject::SetVisualObject((GameObject *)v6, CharModelName, nullptr, 1);
    return CharAnimator::ANIM_AddSetToRenderObject((CharAnimator *)(v6 + 1180));
  }
  return result;
}


// ===== 3aea9c Character::IsCastingPossible(void) =====
int __fastcall Character::IsCastingPossible(Character *this)
{
  int result; // r0

  result = Character::CTRLIsAllowed(this);
  if ( result )
    return CharAI::AI_IsSpellUsable((Character *)((char *)this + 968));
  return result;
}


// ===== 3aeac0 Character::GetCharFaery(int) =====
int __fastcall Character::GetCharFaery(Character *this, int a2)
{
  int v3; // r6
  int v4; // r7
  int result; // r0

  v3 = Arrays::FaeryListTable::members + 12 * Character::GetCharFaeryListId(this);
  if ( a2 < 0 || a2 >= PyDataConstants::getConstant((PyDataConstants *)dword_99F758, "FaeryTypes", "COUNT") )
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
        "faeryId >= 0 && faeryId < Application::GetInstance()->GetConstantsMgr()->getConstant(\"FaeryTypes\", \"COUNT\")",
        "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Objects\\Characters\\Character_Faery.cpp",
        62);
    }
  }
  v4 = *(_DWORD *)(v3 + 4);
  if ( v4 != PyDataConstants::getConstant((PyDataConstants *)dword_99F758, "FaeryTypes", "COUNT") )
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
        "charFaeryList.ListSize == Application::GetInstance()->GetConstantsMgr()->getConstant(\"FaeryTypes\", \"COUNT\")",
        "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Objects\\Characters\\Character_Faery.cpp",
        63);
    }
  }
  result = Arrays::FaeryTable::members + 36 * *(_DWORD *)(*(_DWORD *)(v3 + 8) + 4 * a2);
  if ( *(_DWORD *)(result + 32) != a2 )
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
        "Arrays::FaeryTable::members[charFaeryList.List[faeryId]].Type == faeryId",
        "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Objects\\Characters\\Character_Faery.cpp",
        64);
      return Arrays::FaeryTable::members + 36 * *(_DWORD *)(*(_DWORD *)(v3 + 8) + 4 * a2);
    }
  }
  return result;
}


// ===== 3aecdc `global constructor keyed to'.._.._sources_Game_Objects_Characters_Character_Faery.cpp =====
int __fastcall `global constructor keyed to'.._.._sources_Game_Objects_Characters_Character_Faery.cpp(CMessage *a1)
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

  dword_9A298C = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9A2988 = 1056964608;
  messageCreationMap = CMessage::InitializeMessageRegistration(a1);
  byte_9A2991 = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgStartGame",
                  (const char *)GetNewInstance<CMsgStartGame>,
                  v1);
  byte_9A2992 = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgControllerAction",
                  (const char *)GetNewInstance<CMsgControllerAction>,
                  v2);
  byte_9A2993 = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgAttackResult",
                  (const char *)GetNewInstance<CMsgAttackResult>,
                  v3);
  byte_9A2994 = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgRaisedEvent",
                  (const char *)GetNewInstance<CMsgRaisedEvent>,
                  v4);
  byte_9A2995 = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgMenuReady",
                  (const char *)GetNewInstance<CMsgMenuReady>,
                  v5);
  byte_9A2996 = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgScriptCmd",
                  (const char *)GetNewInstance<CMsgScriptCmd>,
                  v6);
  byte_9A2997 = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgInitialSetup",
                  (const char *)GetNewInstance<CMsgInitialSetup>,
                  v7);
  byte_9A2998 = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgQuestsSync",
                  (const char *)GetNewInstance<CMsgQuestsSync>,
                  v8);
  byte_9A2999 = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgDropLoot",
                  (const char *)GetNewInstance<CMsgDropLoot>,
                  v9);
  byte_9A299A = CMessage::RegisterMessageType((CMessage *)"CMsgIsHost", (const char *)GetNewInstance<CMsgIsHost>, v10);
  byte_9A299B = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgSpawnObject",
                  (const char *)GetNewInstance<CMsgSpawnObject>,
                  v11);
  byte_9A299C = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgGlobalDeath",
                  (const char *)GetNewInstance<CMsgGlobalDeath>,
                  v12);
  v14 = (CMessage *)CMessage::RegisterMessageType(
                      (CMessage *)"CMsgAskResendAttributes",
                      (const char *)GetNewInstance<CMsgAskResendAttributes>,
                      v13);
  byte_9A299D = (char)v14;
  result = CMessage::TerminateMessageRegistration(v14);
  byte_9A299E = result;
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


// ===== 3aef68 Character::F_ApplyScrollingCombatTextGold(Character*,int) =====
void __fastcall Character::F_ApplyScrollingCombatTextGold(Character *this, Character *a2, int a3)
{
  FlashAnimManager *Instance; // r7
  char *TargetPosition; // r0
  int v7; // r2
  int v8; // r3
  float v9; // r1
  float v10; // r9
  float v11; // r0
  StringManager *v12; // r8
  int Constant; // r0
  const char *String; // r8
  int StyleIdFromName; // r8
  char *M_data; // r5
  int v17; // r0
  _DWORD v18[3]; // [sp+8h] [bp-28h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v19; // [sp+14h] [bp-1Ch] BYREF

  Instance = (FlashAnimManager *)FlashAnimManager::GetInstance(this);
  TargetPosition = GameObject::GetTargetPosition(this);
  v7 = *(_DWORD *)TargetPosition;
  v8 = *((_DWORD *)TargetPosition + 1);
  v9 = *((float *)this + 83);
  v10 = *((float *)TargetPosition + 2);
  v11 = *((float *)this + 86);
  v18[0] = v7;
  v18[1] = v8;
  *(float *)&v18[2] = v10 + (float)(v11 - v9);
  v12 = (StringManager *)dword_99F760;
  Constant = PyDataConstants::getConstant((PyDataConstants *)dword_99F758, "StrID", "ITEMS_GOLD");
  String = (const char *)StringManager::getString(v12, Constant);
  v19._M_finish = (char *)&v19;
  v19._M_start_of_storage._M_data = (char *)&v19;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block(&v19, 0x10u);
  *v19._M_finish = 0;
  StringManager::parse((StringManager *)dword_99F760, (std::string *)&v19, String, a2);
  StyleIdFromName = FlashAnimManager::GetStyleIdFromName(Instance, "anim_reward_gold");
  M_data = v19._M_start_of_storage._M_data;
  v17 = PyDataConstants::getConstant((PyDataConstants *)dword_99F758, "ScrollingCombatText", "QR_Gold");
  FlashAnimManager::PlayScrollingCombatText(Instance, StyleIdFromName, v18, M_data, v17);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v19);
}


// ===== 3af0c8 Character::F_ApplyScrollingCombatTextXP(Character*,int,int,int) =====
void __fastcall Character::F_ApplyScrollingCombatTextXP(Character *this, Character *a2, int a3, int a4, int a5)
{
  int Instance; // r9
  char *TargetPosition; // r0
  int v10; // r2
  int v11; // r3
  float v12; // r1
  float v13; // r11
  float v14; // r0
  StringManager *v15; // r7
  int Constant; // r0
  const char *String; // r7
  _DWORD v19[3]; // [sp+10h] [bp-2Ch] BYREF
  std::priv::_String_base<char,std::allocator<char> > v20; // [sp+1Ch] [bp-20h] BYREF

  Instance = FlashAnimManager::GetInstance((FlashAnimManager *)&elf_hash_bucket[4084]);
  TargetPosition = GameObject::GetTargetPosition(this);
  v10 = *(_DWORD *)TargetPosition;
  v11 = *((_DWORD *)TargetPosition + 1);
  v12 = *((float *)this + 83);
  v13 = *((float *)TargetPosition + 2);
  v14 = *((float *)this + 86);
  v19[0] = v10;
  v19[1] = v11;
  *(float *)&v19[2] = v13 + (float)(v14 - v12);
  v15 = (StringManager *)dword_99F760;
  Constant = PyDataConstants::getConstant((PyDataConstants *)dword_99F758, "StrID", "GAMEPLAYMENUS_REWARD_XP");
  String = (const char *)StringManager::getString(v15, Constant);
  v20._M_finish = (char *)&v20;
  v20._M_start_of_storage._M_data = (char *)&v20;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block(&v20, 0x10u);
  *v20._M_finish = 0;
  StringManager::parse((StringManager *)dword_99F760, (std::string *)&v20, String, a2);
  FlashAnimManager::PlayScrollingCombatText(Instance, a3, v19, v20._M_start_of_storage._M_data, a4);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v20);
}


// ===== 3af1fc Character::F_ApplyScrollingCombatText(Character::AttackResult const&,GameObject *,Character*) =====
float __fastcall Character::F_ApplyScrollingCombatText(int *a1, int a2, Character *this)
{
  float result; // r0
  FlashAnimManager *Instance; // r4
  char *TargetPosition; // r0
  int v8; // r3
  int v9; // r2
  float v10; // r6
  float v11; // r1
  float v12; // r0
  int v13; // r3
  int StyleIdFromName; // r6
  int v15; // r5
  int Constant; // r12
  _DWORD v17[3]; // [sp+Ch] [bp-Ch] BYREF

  LODWORD(result) = Character::IsFollower(this);
  if ( result == 0.0 )
  {
    Instance = (FlashAnimManager *)FlashAnimManager::GetInstance(nullptr);
    TargetPosition = GameObject::GetTargetPosition(this);
    v8 = *((_DWORD *)TargetPosition + 1);
    v9 = *(_DWORD *)TargetPosition;
    v10 = *((float *)TargetPosition + 2);
    v11 = *((float *)this + 83);
    v12 = *((float *)this + 86);
    v17[1] = v8;
    v17[0] = v9;
    result = v10 + (float)(v12 - v11);
    v13 = *a1;
    *(float *)&v17[2] = result;
    if ( v13 > 0 )
    {
      StyleIdFromName = FlashAnimManager::GetStyleIdFromName(Instance, "anim_sct_normaldamage");
      v15 = *a1 >> 8;
      if ( (*(int (__fastcall **)(Character *))(*(_DWORD *)this + 40))(this) )
        Constant = PyDataConstants::getConstant(
                     (PyDataConstants *)dword_99F758,
                     "ScrollingCombatText",
                     "PlayerDamageColor");
      else
        Constant = PyDataConstants::getConstant((PyDataConstants *)dword_99F758, "ScrollingCombatText", "DamageColor");
      return COERCE_FLOAT(FlashAnimManager::PlayScrollingCombatValue(Instance, StyleIdFromName, v17, v15, Constant));
    }
  }
  return result;
}


// ===== 3af330 CMsgAttackResult::Create(int,int,Character::AttackResult const&,bool) =====
int __fastcall CMsgAttackResult::Create(__int16 a1, __int16 a2, _BOOL4 a3, char a4)
{
  int *v7; // r4
  int Message; // r5
  int v9; // r0
  int v10; // r1
  int v11; // r2
  int v12; // r3
  int v13; // r0
  int v14; // r1
  int v15; // r2
  int v16; // r3
  int v17; // r1

  v7 = (int *)a3;
  Message = CMessage::CreateMessage((CMessage *)"CMsgAttackResult", (const char *)&dword_0 + 1, a3);
  *(_DWORD *)(Message + 80) = *(_DWORD *)(Application::GetCurrentLevel((Application *)&Singleton<Application>::s_inst)
                                        + 60);
  v9 = *v7;
  v10 = v7[1];
  v11 = v7[2];
  v12 = v7[3];
  v7 += 4;
  *(_DWORD *)(Message + 84) = v9;
  *(_DWORD *)(Message + 88) = v10;
  *(_DWORD *)(Message + 92) = v11;
  *(_DWORD *)(Message + 96) = v12;
  v13 = *v7;
  v14 = v7[1];
  v15 = v7[2];
  v16 = v7[3];
  v7 += 4;
  *(_DWORD *)(Message + 100) = v13;
  *(_DWORD *)(Message + 104) = v14;
  *(_DWORD *)(Message + 108) = v15;
  *(_DWORD *)(Message + 112) = v16;
  v17 = v7[1];
  *(_DWORD *)(Message + 116) = *v7;
  *(_DWORD *)(Message + 120) = v17;
  *(_WORD *)(Message + 124) = a1;
  *(_WORD *)(Message + 126) = a2;
  *(_BYTE *)(Message + 128) = a4;
  return Message;
}


// ===== 3af3b0 Character::_F_ResetResult(Character::AttackResult &) =====
_DWORD *__fastcall Character::_F_ResetResult(_DWORD *result)
{
  result[3] = 0;
  result[4] = 0;
  result[5] = 0;
  result[6] = 0;
  result[7] = 0;
  result[8] = 0;
  result[9] = 0;
  result[9] = -1;
  result[7] = 0;
  *result = -1;
  result[3] = -1;
  result[2] = -1;
  result[1] = -1;
  result[8] = -1;
  return result;
}


// ===== 3af3f8 `global constructor keyed to'.._.._sources_Game_Objects_Characters_Character_Formulas.cpp =====
int __fastcall `global constructor keyed to'.._.._sources_Game_Objects_Characters_Character_Formulas.cpp(CMessage *a1)
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

  dword_9A29A8 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9A29A4 = 1056964608;
  messageCreationMap = CMessage::InitializeMessageRegistration(a1);
  byte_9A29AD = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgStartGame",
                  (const char *)GetNewInstance<CMsgStartGame>,
                  v1);
  byte_9A29AE = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgControllerAction",
                  (const char *)GetNewInstance<CMsgControllerAction>,
                  v2);
  byte_9A29AF = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgAttackResult",
                  (const char *)GetNewInstance<CMsgAttackResult>,
                  v3);
  byte_9A29B0 = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgRaisedEvent",
                  (const char *)GetNewInstance<CMsgRaisedEvent>,
                  v4);
  byte_9A29B1 = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgMenuReady",
                  (const char *)GetNewInstance<CMsgMenuReady>,
                  v5);
  byte_9A29B2 = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgScriptCmd",
                  (const char *)GetNewInstance<CMsgScriptCmd>,
                  v6);
  byte_9A29B3 = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgInitialSetup",
                  (const char *)GetNewInstance<CMsgInitialSetup>,
                  v7);
  byte_9A29B4 = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgQuestsSync",
                  (const char *)GetNewInstance<CMsgQuestsSync>,
                  v8);
  byte_9A29B5 = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgDropLoot",
                  (const char *)GetNewInstance<CMsgDropLoot>,
                  v9);
  byte_9A29B6 = CMessage::RegisterMessageType((CMessage *)"CMsgIsHost", (const char *)GetNewInstance<CMsgIsHost>, v10);
  byte_9A29B7 = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgSpawnObject",
                  (const char *)GetNewInstance<CMsgSpawnObject>,
                  v11);
  byte_9A29B8 = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgGlobalDeath",
                  (const char *)GetNewInstance<CMsgGlobalDeath>,
                  v12);
  v14 = (CMessage *)CMessage::RegisterMessageType(
                      (CMessage *)"CMsgAskResendAttributes",
                      (const char *)GetNewInstance<CMsgAskResendAttributes>,
                      v13);
  byte_9A29B9 = (char)v14;
  result = CMessage::TerminateMessageRegistration(v14);
  byte_9A29BA = result;
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
    return _aeabi_atexit(
             (int)&Singleton<VisualFXManager>::s_inst,
             (int)VisualFXManager::~VisualFXManager,
             (int)&_dso_handle);
  }
  return result;
}


// ===== 3af6d8 Random::GetRandom(int,bool) [clone] =====
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


// ===== 3af76c CharProperties::PROPS_Get(int,bool) [clone] =====
int __fastcall CharProperties::PROPS_Get(int a1, int a2)
{
  return CharProperties::_GetProperty(a1, a1 + 2708, a2);
}


// ===== 3af77c Character::F_ApplyScrollingCombatText(Character::AttackResult const&,Character*,Character*) =====
char *__fastcall Character::F_ApplyScrollingCombatText(int a1, int a2, Character *this)
{
  char *result; // r0
  FlashAnimManager *Instance; // r8
  char *TargetPosition; // r0
  int v9; // r3
  int v10; // r2
  float v11; // r10
  float v12; // r1
  float v13; // r0
  char v14; // r3
  unsigned int v15; // r10
  int v16; // r10
  int v17; // r1
  int v18; // r7
  int v19; // r12
  int v20; // r1
  int v21; // r11
  StringManager *v22; // r9
  int v23; // r0
  int v24; // r9
  PyDataConstants *v25; // r0
  const char *v26; // r2
  int v27; // r0
  int v28; // r0
  StringManager *v29; // r11
  int v30; // r0
  int v31; // r11
  int v32; // r0
  int StyleIdFromName; // r6
  StringManager *v34; // r5
  int Constant; // r0
  int String; // r5
  PyDataConstants *v37; // r0
  const char *v38; // r2
  int v39; // r0
  StringManager *v40; // r5
  int v41; // r0
  StringManager *v42; // r9
  int v43; // r0
  int v44; // [sp+Ch] [bp-18h]
  _DWORD v45[4]; // [sp+14h] [bp-10h] BYREF

  result = (char *)Character::IsFollower(this);
  if ( result )
    return result;
  Instance = (FlashAnimManager *)FlashAnimManager::GetInstance(nullptr);
  TargetPosition = GameObject::GetTargetPosition(this);
  v9 = *((_DWORD *)TargetPosition + 1);
  v10 = *(_DWORD *)TargetPosition;
  v11 = *((float *)TargetPosition + 2);
  v12 = *((float *)this + 83);
  v13 = *((float *)this + 86);
  v45[1] = v9;
  v45[0] = v10;
  *(float *)&v45[2] = v11 + (float)(v13 - v12);
  result = GameObject::GetTargetPosition((GameObject *)a2);
  v14 = *(_BYTE *)(a1 + 24);
  v15 = *(_DWORD *)(a1 + 28);
  if ( (v14 & 1) != 0 )
  {
    StyleIdFromName = FlashAnimManager::GetStyleIdFromName(Instance, "anim_sct_block");
    v34 = (StringManager *)dword_99F760;
    Constant = PyDataConstants::getConstant((PyDataConstants *)dword_99F758, "StrID", "INGAME_ATTACK_MISS");
    String = StringManager::getString(v34, Constant);
    v37 = (PyDataConstants *)dword_99F758;
    v38 = "MissColor";
LABEL_33:
    v39 = PyDataConstants::getConstant(v37, "ScrollingCombatText", v38);
    return (char *)FlashAnimManager::PlayScrollingCombatText(Instance, StyleIdFromName, v45, String, v39);
  }
  if ( (*(_BYTE *)(a1 + 24) & 2) != 0 )
  {
    StyleIdFromName = FlashAnimManager::GetStyleIdFromName(Instance, "anim_sct_block");
    v40 = (StringManager *)dword_99F760;
    v41 = PyDataConstants::getConstant((PyDataConstants *)dword_99F758, "StrID", "INGAME_ATTACK_DODGE");
    String = StringManager::getString(v40, v41);
    v37 = (PyDataConstants *)dword_99F758;
    v38 = "DodgeColor";
    goto LABEL_33;
  }
  if ( (*(_BYTE *)(a1 + 24) & 4) != 0 )
  {
    v28 = FlashAnimManager::GetStyleIdFromName(Instance, "anim_sct_block");
    v29 = (StringManager *)dword_99F760;
    v44 = v28;
    v30 = PyDataConstants::getConstant((PyDataConstants *)dword_99F758, "StrID", "INGAME_ATTACK_BLOCK");
    v31 = StringManager::getString(v29, v30);
    v32 = PyDataConstants::getConstant((PyDataConstants *)dword_99F758, "ScrollingCombatText", "BlockColor");
    result = (char *)FlashAnimManager::PlayScrollingCombatText(Instance, v44, v45, v31, v32);
    v14 = *(_BYTE *)(a1 + 24);
  }
  v16 = HIWORD(v15) & 1;
  if ( (v14 & 0x20) != 0 )
  {
    if ( v16 )
      v17 = 187;
    else
      v17 = 143;
    result = (char *)((unsigned int)CharProperties::PROPS_Get(a2 + 1376, v17) >> 8);
    if ( !result )
      goto LABEL_12;
    v21 = FlashAnimManager::GetStyleIdFromName(Instance, "anim_sct_stun");
    v42 = (StringManager *)dword_99F760;
    v43 = PyDataConstants::getConstant((PyDataConstants *)dword_99F758, "StrID", "INGAME_ATTACK_FEAR");
    v24 = StringManager::getString(v42, v43);
    v25 = (PyDataConstants *)dword_99F758;
    v26 = "FearColor";
LABEL_24:
    v27 = PyDataConstants::getConstant(v25, "ScrollingCombatText", v26);
    result = (char *)FlashAnimManager::PlayScrollingCombatText(Instance, v21, v45, v24, v27);
    goto LABEL_12;
  }
  if ( (*(_BYTE *)(a1 + 25) & 1) != 0 )
  {
    v20 = v16 ? 189 : 146;
    result = (char *)((unsigned int)CharProperties::PROPS_Get(a2 + 1376, v20) >> 8);
    if ( result )
    {
      v21 = FlashAnimManager::GetStyleIdFromName(Instance, "anim_sct_stun");
      v22 = (StringManager *)dword_99F760;
      v23 = PyDataConstants::getConstant((PyDataConstants *)dword_99F758, "StrID", "INGAME_ATTACK_SLOW");
      v24 = StringManager::getString(v22, v23);
      v25 = (PyDataConstants *)dword_99F758;
      v26 = "SlowColor";
      goto LABEL_24;
    }
  }
LABEL_12:
  if ( *(int *)a1 > 0 )
  {
    if ( (*(_DWORD *)(a1 + 28) & 0x20000000) != 0 )
    {
      v18 = FlashAnimManager::GetStyleIdFromName(Instance, "anim_sct_dot");
    }
    else if ( ItemInventory::IsDualWielding((ItemInventory *)(a2 + 892)) )
    {
      if ( (*(_DWORD *)(a1 + 28) & 0x4000000) != 0 )
      {
        if ( (*(_BYTE *)(a1 + 24) & 8) != 0 )
          v18 = FlashAnimManager::GetStyleIdFromName(Instance, "anim_sct_critleft");
        else
          v18 = FlashAnimManager::GetStyleIdFromName(Instance, "anim_sct_normaldamageleft");
      }
      else if ( (*(_BYTE *)(a1 + 24) & 8) != 0 )
      {
        v18 = FlashAnimManager::GetStyleIdFromName(Instance, "anim_sct_critright");
      }
      else
      {
        v18 = FlashAnimManager::GetStyleIdFromName(Instance, "anim_sct_normaldamageright");
      }
    }
    else if ( (*(_BYTE *)(a1 + 24) & 8) != 0 )
    {
      v18 = FlashAnimManager::GetStyleIdFromName(Instance, "anim_sct_crit");
    }
    else
    {
      v18 = FlashAnimManager::GetStyleIdFromName(Instance, "anim_sct_normaldamage");
    }
    if ( (*(int (__fastcall **)(Character *))(*(_DWORD *)this + 40))(this) )
    {
      if ( (*(_BYTE *)(a1 + 24) & 8) != 0 )
        v19 = PyDataConstants::getConstant(
                (PyDataConstants *)dword_99F758,
                "ScrollingCombatText",
                "PlayerCritDamageColor");
      else
        v19 = PyDataConstants::getConstant((PyDataConstants *)dword_99F758, "ScrollingCombatText", "PlayerDamageColor");
    }
    else if ( (*(_BYTE *)(a1 + 24) & 8) != 0 )
    {
      v19 = PyDataConstants::getConstant((PyDataConstants *)dword_99F758, "ScrollingCombatText", "CritDamageColor");
    }
    else
    {
      v19 = PyDataConstants::getConstant((PyDataConstants *)dword_99F758, "ScrollingCombatText", "DamageColor");
    }
    return (char *)FlashAnimManager::PlayScrollingCombatValue(Instance, v18, v45, *(int *)a1 >> 8, v19);
  }
  return result;
}


// ===== 3afd38 Character::F_ApplyCombatSound(Character::AttackResult const&,GameObject *,Character*) =====
void __fastcall Character::F_ApplyCombatSound(int *a1, int a2, Character *this)
{
  _DWORD *CharSounds; // r10
  int Switch; // r7
  int v7; // r1
  bool v8; // r2
  unsigned int v9; // r0
  int v10; // r7
  int v11; // r9
  int v12; // r10
  char *v13; // r0
  int v14; // r7
  int v15; // lr
  int v16; // r8
  int v17; // r0
  int v18; // r1
  float *v19; // r2
  unsigned int v20; // r0
  int v21; // r6
  int v22; // r9
  int v23; // r10
  char *TargetPosition; // r0
  int v25; // r6
  int v26; // lr
  int v27; // r8
  _DWORD v28[3]; // [sp+10h] [bp-38h] BYREF
  _DWORD v29[3]; // [sp+1Ch] [bp-2Ch] BYREF
  std::priv::_String_base<char,std::allocator<char> > v30; // [sp+2Ch] [bp-1Ch] BYREF

  CharSounds = (_DWORD *)Character::GetCharSounds(this);
  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string((std::string *)&v30, "MP_MinimalRandoms");
  Switch = DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, (const std::string *)&v30);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v30);
  if ( !Switch )
  {
    if ( (*(int (__fastcall **)(Character *))(*(_DWORD *)this + 52))(this) )
    {
      v20 = CharSounds[1];
      if ( !v20 )
        return;
      v21 = CharSounds[2];
      v22 = VoxSoundManager::s_instance;
      v23 = *(_DWORD *)(v21 + 4 * Random::GetRandom(v20, v7, v8));
      TargetPosition = GameObject::GetTargetPosition(this);
      v25 = *(_DWORD *)TargetPosition;
      v26 = *((_DWORD *)TargetPosition + 1);
      v27 = *((_DWORD *)TargetPosition + 2);
      v17 = v22;
      v18 = v23;
      v19 = (float *)v29;
      v29[0] = v25;
      v29[1] = v26;
      v29[2] = v27;
    }
    else
    {
      if ( *a1 <= 0 )
        return;
      v9 = CharSounds[3];
      if ( !v9 )
        return;
      v10 = CharSounds[4];
      v11 = VoxSoundManager::s_instance;
      v12 = *(_DWORD *)(v10 + 4 * Random::GetRandom(v9, v7, v8));
      v13 = GameObject::GetTargetPosition(this);
      v14 = *(_DWORD *)v13;
      v15 = *((_DWORD *)v13 + 1);
      v16 = *((_DWORD *)v13 + 2);
      v17 = v11;
      v18 = v12;
      v19 = (float *)v28;
      v28[0] = v14;
      v28[1] = v15;
      v28[2] = v16;
    }
    VoxSoundManager::Play3D(v17, v18, v19, 0, COERCE_FLOAT(1), -1.0, -1.0);
  }
}


// ===== 3afee0 Character::F_ApplyCombatSound(Character::AttackResult const&,Character*,Character*) =====
void __fastcall Character::F_ApplyCombatSound(int *a1, Character *this, Character *a3)
{
  _DWORD *CharSounds; // r11
  int v6; // r7
  int Switch; // r10
  int v8; // r1
  bool v9; // r2
  Random *v10; // r0
  int v11; // r8
  Random *v12; // r0
  int v13; // r7
  int v14; // r10
  int v15; // r8
  char *v16; // r0
  int v17; // r7
  int v18; // r6
  int v19; // lr
  int v20; // r0
  int v21; // r1
  _DWORD *v22; // r2
  int v23; // r3
  Random *v24; // r0
  Random *v25; // r0
  int v26; // r7
  int v27; // r9
  int v28; // r10
  char *v29; // r0
  int v30; // r6
  int v31; // lr
  int v32; // r7
  int v33; // r8
  int v34; // r8
  char *TargetPosition; // r0
  int v36; // lr
  int v37; // r0
  int v38; // r0
  int v39; // r1
  _DWORD *v40; // r2
  int v41; // r10
  int v42; // r10
  char *v43; // r0
  int v44; // lr
  int v45; // r0
  int v46; // [sp+10h] [bp-5Ch]
  int v47; // [sp+10h] [bp-5Ch]
  int v48; // [sp+14h] [bp-58h]
  int v49; // [sp+14h] [bp-58h]
  _DWORD v50[3]; // [sp+18h] [bp-54h] BYREF
  _DWORD v51[3]; // [sp+24h] [bp-48h] BYREF
  _DWORD v52[3]; // [sp+30h] [bp-3Ch] BYREF
  _DWORD v53[3]; // [sp+3Ch] [bp-30h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v54; // [sp+4Ch] [bp-20h] BYREF

  CharSounds = (_DWORD *)Character::GetCharSounds(this);
  v6 = Character::GetCharSounds(a3);
  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string((int)&v54, "MP_MinimalRandoms");
  Switch = DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, (const std::string *)&v54);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v54);
  if ( !Switch )
  {
    if ( (*(int (__fastcall **)(Character *))(*(_DWORD *)a3 + 52))(a3) )
    {
      v24 = *(Random **)(v6 + 4);
      if ( !v24 )
        goto LABEL_11;
      v33 = *(_DWORD *)(v6 + 8);
      v46 = VoxSoundManager::s_instance;
      v34 = *(_DWORD *)(v33 + 4 * Random::GetRandom(v24, v8, v9));
      TargetPosition = GameObject::GetTargetPosition(a3);
      v36 = *(_DWORD *)TargetPosition;
      v48 = *((_DWORD *)TargetPosition + 1);
      v37 = *((_DWORD *)TargetPosition + 2);
      v53[0] = v36;
      v53[2] = v37;
      v38 = v46;
      v39 = v34;
      v40 = v53;
      v53[1] = v48;
    }
    else
    {
      if ( *a1 <= 0 )
        return;
      v10 = *(Random **)(v6 + 12);
      if ( !v10 )
      {
        v11 = *(unsigned __int8 *)(v6 + 36);
        if ( *(_BYTE *)(v6 + 36) )
        {
LABEL_7:
          v12 = (Random *)CharSounds[5];
          if ( !v12 )
            return;
          v13 = CharSounds[6];
          v14 = VoxSoundManager::s_instance;
          v15 = *(_DWORD *)(v13 + 4 * Random::GetRandom(v12, v8, v9));
          v16 = GameObject::GetTargetPosition(a3);
          v17 = *(_DWORD *)v16;
          v18 = *((_DWORD *)v16 + 1);
          v19 = *((_DWORD *)v16 + 2);
          v20 = v14;
          v21 = v15;
          v22 = v51;
          v23 = 0;
          v51[0] = v17;
          v51[1] = v18;
          v51[2] = v19;
          goto LABEL_9;
        }
LABEL_13:
        if ( !*(_BYTE *)(v6 + 37) )
          return;
        v25 = (Random *)CharSounds[7];
        if ( !v25 )
          return;
        v26 = CharSounds[8];
        v27 = VoxSoundManager::s_instance;
        v28 = *(_DWORD *)(v26 + 4 * Random::GetRandom(v25, v8, v9));
        v29 = GameObject::GetTargetPosition(a3);
        v30 = *(_DWORD *)v29;
        v31 = *((_DWORD *)v29 + 1);
        v32 = *((_DWORD *)v29 + 2);
        v20 = v27;
        v21 = v28;
        v23 = v11;
        v22 = v50;
        v50[0] = v30;
        v50[1] = v31;
        v50[2] = v32;
LABEL_9:
        VoxSoundManager::Play3D(v20, v21, v22, v23, 1, -1082130432, -1082130432);
        return;
      }
      v41 = *(_DWORD *)(v6 + 16);
      v47 = VoxSoundManager::s_instance;
      v42 = *(_DWORD *)(v41 + 4 * Random::GetRandom(v10, v8, v9));
      v43 = GameObject::GetTargetPosition(a3);
      v44 = *(_DWORD *)v43;
      v49 = *((_DWORD *)v43 + 1);
      v45 = *((_DWORD *)v43 + 2);
      v52[0] = v44;
      v52[2] = v45;
      v38 = v47;
      v39 = v42;
      v40 = v52;
      v52[1] = v49;
    }
    VoxSoundManager::Play3D(v38, v39, v40, 0, 1, -1082130432, -1082130432);
LABEL_11:
    if ( *a1 <= 0 )
      return;
    v11 = *(unsigned __int8 *)(v6 + 36);
    if ( *(_BYTE *)(v6 + 36) )
      goto LABEL_7;
    goto LABEL_13;
  }
}


// ===== 3b01b8 Character::F_ApplyResult(Character::AttackResult const&,GameObject *,Character*,bool) =====
int __fastcall Character::F_ApplyResult(int a1, GameObject *a2, int a3, int a4)
{
  unsigned int v4; // r10
  CMessaging *Online; // r0
  unsigned int v11; // r8
  int v12; // r2
  CMessaging *v13; // r11
  CMessage *v14; // r0
  int v15; // r8
  int FXBlood; // r8
  char *TargetPosition; // r0
  int v18; // r3
  char v19; // r3
  std::priv::_String_base<char,std::allocator<char> > v20; // [sp+1Ch] [bp-50h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v21; // [sp+34h] [bp-38h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v22; // [sp+4Ch] [bp-20h] BYREF

  Online = (CMessaging *)GetOnline();
  if ( *((_BYTE *)Online + 5) && !a4 && *((_DWORD *)a2 + 68) == -1 )
  {
    if ( !a3 )
    {
      if ( gAssertLevel == 2 )
      {
        dword_0 = 0;
      }
      else if ( gAssertLevel == 1 )
      {
        Online = (CMessaging *)fprintf(
                                 (FILE *)&_sF + 2,
                                 "ASSERT(%s) FAILED: %s:%d\n",
                                 "attacker && defender",
                                 "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Objects\\Characters\\Character_Formulas.cpp",
                                 1035);
      }
    }
    if ( a3 )
      v4 = *(_DWORD *)(a3 + 264);
    v11 = *((_DWORD *)a2 + 66);
    if ( a3 )
      v12 = v4 >> 31;
    else
      v12 = 1;
    if ( !a3 )
      v4 = -1;
    if ( v12 | (v11 >> 31) )
    {
      if ( gAssertLevel == 2 )
      {
        dword_0 = 0;
      }
      else if ( gAssertLevel == 1 )
      {
        Online = (CMessaging *)fprintf(
                                 (FILE *)&_sF + 2,
                                 "ASSERT(%s) FAILED: %s:%d\n",
                                 "attackerNetworkId >= 0 && defenderNetworkId >= 0",
                                 "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Objects\\Characters\\Character_Formulas.cpp",
                                 1045);
      }
    }
    v13 = (CMessaging *)CMessaging::Get(Online);
    v14 = (CMessage *)CMsgAttackResult::Create(v11, v4, a1, 0);
    CMessaging::SendMsg(v13, v14);
  }
  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string((int)&v22, "NoDamages");
  if ( DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, (const std::string *)&v22) )
    goto LABEL_4;
  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string((int)&v21, "GOD");
  if ( DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, (const std::string *)&v21)
    && (*(int (__fastcall **)(int))(*(_DWORD *)a3 + 40))(a3)
    || *(_BYTE *)(a3 + 5360) )
  {
    std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v21);
LABEL_4:
    std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v22);
    goto LABEL_5;
  }
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v21);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v22);
  if ( *(int *)a1 > 0 )
  {
    if ( (*(_DWORD *)(a1 + 28) & 0x200000) != 0 )
    {
      v15 = *(_DWORD *)(a1 + 36);
      if ( v15 == -1 )
        FXBlood = Character::GetFXBlood((Character *)a3);
      else
        FXBlood = v15 + 124;
      TargetPosition = GameObject::GetTargetPosition((GameObject *)a3);
      VisualFXManager::PlayAnimFXSet(&Singleton<VisualFXManager>::s_inst, FXBlood, TargetPosition, 0, 0);
    }
    v18 = *(_DWORD *)(a3 + 272);
    *(_BYTE *)(a3 + 1339) = 0;
    if ( v18 == -1 )
      Character::HitFor((Character *)a3, *(_DWORD *)a1, a2);
    if ( (*(int (__fastcall **)(int))(*(_DWORD *)a3 + 52))(a3) )
    {
      v19 = *(_BYTE *)(a1 + 24) & 0x9F;
      *(_BYTE *)(a1 + 25) &= ~1u;
      *(_BYTE *)(a1 + 24) = v19;
    }
  }
LABEL_5:
  if ( !(*(int (__fastcall **)(int))(*(_DWORD *)a3 + 52))(a3) && (*(_BYTE *)(a1 + 24) & 0x10) != 0 )
  {
    CharStateMachine::SM_SetInjureState((CharStateMachine *)(a3 + 1276), a2, 0);
    DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
    std::string::string((int)&v20, "isTracingChar_Attack");
    DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, (const std::string *)&v20);
    std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v20);
  }
  Character::CancelSneaking((Character *)a3);
  Character::F_ApplyScrollingCombatText(a1, (int)a2, (Character *)a3);
  Character::F_ApplyCombatSound(a1, (int)a2, (Character *)a3);
  return (*(int (__fastcall **)(int, GameObject *, int))(*(_DWORD *)(a3 + 968) + 184))(a3 + 968, a2, a1);
}


// ===== 3b059c CF_SetCombatants(Character *,Character *,int,bool,bool) =====
int __fastcall CF_SetCombatants(Character *a1, Character *a2, int a3, char a4, bool a5)
{
  int Property; // r10
  int result; // r0

  s_attacker = (int)a1;
  s_defender = (int)a2;
  Property = CharProperties::_GetProperty((int)a1 + 1376, (int)a1 + 4084, 19);
  result = Property - CharProperties::_GetProperty((int)a2 + 1376, (int)a2 + 4084, 19);
  s_isCritical = 0;
  s_da_dlevel = -result;
  s_element = a3;
  s_offHanded = a4;
  s_isSkill = a5;
  s_ad_dlevel = result;
  s_isBlocked = 0;
  return result;
}


// ===== 3b061c Character::F_GOAttack(Character::AttackResult &,GameObject *,Character*,int,int) =====
_DWORD *__fastcall Character::F_GOAttack(int a1, int a2, Character *a3, int a4, int a5)
{
  _DWORD *v8; // r9
  int v9; // r8
  unsigned int v10; // r10
  unsigned int Random; // r0
  int v12; // r3
  unsigned int v13; // r11
  int v14; // r8
  _DWORD *result; // r0
  int v16; // [sp+8h] [bp-2Ch]
  TimerUtil *ImmunityTimer; // [sp+Ch] [bp-28h]
  std::priv::_String_base<char,std::allocator<char> > v18; // [sp+14h] [bp-20h] BYREF

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
        "attacker",
        "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Objects\\Characters\\Character_Formulas.cpp",
        665);
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
        "defender",
        "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Objects\\Characters\\Character_Formulas.cpp",
        666);
    }
  }
  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string((std::string *)&v18, "isTracingChar_Attack");
  DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, (const std::string *)&v18);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v18);
  v8 = (_DWORD *)(Arrays::GameObjectDamager::members + 24 * a4);
  v9 = v8[4];
  v10 = v8[2];
  v16 = v8[1];
  Random = Random::GetRandom(v8[3] + 1 - v9, v16, 24);
  v12 = v10;
  if ( v10 )
    v12 = 1;
  v13 = Random;
  if ( v16 < 0 )
    v12 = 0;
  if ( v12 )
  {
    ImmunityTimer = Character::GetImmunityTimer(a3, v16);
    if ( TimerUtil::GetRemainingTime(ImmunityTimer) )
    {
      result = Character::_F_ResetResult((_DWORD *)a1);
      v14 = 0;
      goto LABEL_11;
    }
    TimerUtil::Start((int)ImmunityTimer, v10);
  }
  v14 = (v13 + v9) << 8;
  result = Character::_F_ResetResult((_DWORD *)a1);
  if ( v14 > 0 )
  {
    result = (_DWORD *)CharProperties::_GetProperty((int)a3 + 1376, (int)a3 + 4084, 134);
    if ( (int)result < a5 << 8 )
      *(_BYTE *)(a1 + 24) |= 0x10u;
  }
LABEL_11:
  *(_DWORD *)a1 = v14;
  *(_DWORD *)(a1 + 36) = v8[5];
  return result;
}


// ===== 3b0868 CF__CalcCrit(Character *,Character *,int,int) =====
int __fastcall CF__CalcCrit(Character *a1, Character *a2, int a3, int a4)
{
  int v5; // r5
  int v6; // r3

  v5 = a3 + 1;
  if ( a4 )
  {
    if ( a4 == 2 )
      v6 = CharProperties::PROPS_Get((int)a1 + 1376, 165) + (s_ad_dlevel << 8 >> 8);
    else
      v6 = a3 - 1;
  }
  else
  {
    v5 = 25088;
    v6 = CharProperties::_GetProperty((int)a1 + 1376, (int)a1 + 4084, 63) + (s_ad_dlevel << 8 >> 8);
  }
  if ( v5 <= a3 || v6 <= a3 )
    return 0;
  s_isCritical = 1;
  return 1;
}


// ===== 3b0918 CF__CalcBlock(Character *,Character *,int,int) =====
int __fastcall CF__CalcBlock(Character *a1, Character *a2, int a3, int a4)
{
  bool v4; // zf
  int v7; // r7
  char *v9; // r6
  int v10; // r0

  v4 = a4 == 0;
  if ( a4 )
    a4 = a3 + 1;
  if ( v4 )
  {
    v9 = (char *)a2 + 1376;
    v7 = CharProperties::_GetProperty((int)a2 + 1376, (int)a2 + 4084, 61) + (s_da_dlevel << 8 >> 8);
    if ( ItemInventory::HasShield((Character *)((char *)a2 + 892)) )
    {
      v10 = CharProperties::PROPS_Get((int)v9, 62);
      a4 = 25088;
      v7 += v10;
    }
    else
    {
      a4 = 25088;
    }
  }
  else
  {
    v7 = a3 - 1;
  }
  if ( a4 <= a3 || v7 <= a3 )
    return 0;
  s_isBlocked = 1;
  return 1;
}


// ===== 3b09c4 CF_CalcDotDamage(Character *,Character *,bool) =====
Character *__fastcall CF_CalcDotDamage(Character *a1, Character *a2, int a3, int a4)
{
  char *v5; // r4
  char *v6; // r6
  char *v8; // r1
  int v9; // r2
  int Property; // r8
  int v12; // r4
  int v13; // r7
  int v14; // r7
  int v15; // r0
  int v16; // r1
  bool v17; // r2
  int v18; // r0
  int v20; // r7
  int v21; // r0
  int v22; // r1
  bool v23; // r2
  unsigned int Random; // r0

  v5 = (char *)a2 + 4084;
  v6 = (char *)a2 + 1376;
  v8 = (char *)a2 + 4084;
  if ( a4 )
    v9 = 181;
  else
    v9 = 125;
  Property = CharProperties::_GetProperty((int)v6, (int)v8, v9);
  if ( Property <= 0 )
  {
    v12 = -1;
    v13 = 0;
LABEL_9:
    *(_DWORD *)a1 = Property;
    *((_DWORD *)a1 + 1) = v13;
    *((_DWORD *)a1 + 2) = v12;
    return a1;
  }
  if ( a4 )
  {
    v14 = CharProperties::_GetProperty((int)v6, (int)v5, 179);
    v15 = CharProperties::_GetProperty((int)v6, (int)v5, 180);
    v13 = Random::GetRandom(v15 - v14, v16, v17) + v14;
    v12 = CharProperties::_GetProperty((int)v6, (int)v5, 178) >> 8;
    if ( v12 != -1 )
    {
      v18 = CharProperties::_GetProperty(a3 + 1376, a3 + 4084, v12 + 74);
      v13 = (v13 - v18) & ~((v13 - v18) >> 31);
    }
    goto LABEL_9;
  }
  v20 = CharProperties::_GetProperty((int)v6, (int)v5, 123);
  v21 = CharProperties::_GetProperty((int)v6, (int)v5, 124);
  Random = Random::GetRandom(v21 - v20, v22, v23);
  *(_DWORD *)a1 = Property;
  *((_DWORD *)a1 + 1) = v20 + Random;
  *((_DWORD *)a1 + 2) = -1;
  return a1;
}


// ===== 3b0ad4 CF__CalcSlow(Character *,Character *,int,int) =====
bool __fastcall CF__CalcSlow(Character *a1, Character *a2, int a3, int a4)
{
  int Property; // r5
  char *v8; // r7
  char *v9; // r8
  int v10; // r8
  float v11; // r0
  char *v12; // r5
  char *v13; // r6
  int v14; // r8
  int v15; // r7
  int v16; // r6
  int v17; // r0
  char *v18; // r8
  int v19; // r0
  char *v20; // r6
  int v21; // r7
  int v22; // r5

  if ( a4 )
  {
    if ( a4 != 2 )
    {
      Property = a3 - 1;
      return Property > a3;
    }
    v18 = (char *)a1 + 1376;
    v19 = CharProperties::PROPS_Get((int)a1 + 1376, 188);
    Property = v19;
    if ( v19 <= 0 )
      return Property > a3;
    v20 = (char *)a2 + 1376;
    v21 = (int)(float)((float)v19 + (float)((float)CharProperties::PROPS_Get((int)v18, 19) * 0.125));
    v22 = CharProperties::PROPS_Get((int)v20, 144);
    v16 = CharProperties::PROPS_Get((int)v20, 19);
    v17 = v21 - v22;
  }
  else
  {
    v8 = (char *)a1 + 4084;
    v9 = (char *)a1 + 1376;
    Property = CharProperties::_GetProperty((int)a1 + 1376, (int)a1 + 4084, 145);
    if ( Property <= 0 )
      return Property > a3;
    v10 = CharProperties::_GetProperty((int)v9, (int)v8, 19);
    v11 = (float)Property;
    v12 = (char *)a2 + 4084;
    v13 = (char *)a2 + 1376;
    v14 = (int)(float)(v11 + (float)((float)v10 * 0.125));
    v15 = CharProperties::_GetProperty((int)v13, (int)v12, 144);
    v16 = CharProperties::_GetProperty((int)v13, (int)v12, 19);
    v17 = v14 - v15;
  }
  return (int)(float)((float)v17 - (float)((float)v16 * 0.125)) > a3;
}


// ===== 3b0c64 CF__CalcFear(Character *,Character *,int,int) =====
bool __fastcall CF__CalcFear(Character *a1, Character *a2, int a3, int a4)
{
  int Property; // r5
  char *v8; // r7
  char *v9; // r10
  char *v10; // r8
  char *v11; // r6
  int v12; // r7
  int v13; // r7
  char *v14; // r10
  int v15; // r0
  char *v16; // r6
  int v17; // r7
  int v18; // r7

  if ( a4 )
  {
    if ( a4 == 2 )
    {
      v14 = (char *)a1 + 1376;
      v15 = CharProperties::PROPS_Get((int)a1 + 1376, 186);
      Property = v15;
      if ( v15 > 0 )
      {
        v16 = (char *)a2 + 1376;
        v17 = CharProperties::PROPS_Get((int)v14, 19);
        v18 = 5 * v17 - CharProperties::PROPS_Get((int)v16, 141);
        Property = v18 + Property - 5 * CharProperties::PROPS_Get((int)v16, 19);
      }
    }
    else
    {
      Property = a3 - 1;
    }
    return Property > a3;
  }
  v8 = (char *)a1 + 4084;
  v9 = (char *)a1 + 1376;
  Property = CharProperties::_GetProperty((int)a1 + 1376, (int)a1 + 4084, 142);
  if ( Property <= 0 )
    return Property > a3;
  v10 = (char *)a2 + 4084;
  v11 = (char *)a2 + 1376;
  v12 = CharProperties::_GetProperty((int)v9, (int)v8, 19);
  v13 = 5 * v12 - CharProperties::_GetProperty((int)v11, (int)v10, 141);
  return v13 + Property - 5 * CharProperties::_GetProperty((int)v11, (int)v10, 19) > a3;
}


// ===== 3b0d78 CF__CalcPush(Character *,Character *,int,int) =====
bool __fastcall CF__CalcPush(Character *a1, Character *a2, int a3, int a4)
{
  int Property; // r5
  char *v8; // r7
  char *v9; // r10
  char *v10; // r8
  char *v11; // r6
  int v12; // r7
  int v13; // r7
  char *v14; // r10
  int v15; // r0
  char *v16; // r6
  int v17; // r7
  int v18; // r7

  if ( a4 )
  {
    if ( a4 == 2 )
    {
      v14 = (char *)a1 + 1376;
      v15 = CharProperties::PROPS_Get((int)a1 + 1376, 183);
      Property = v15;
      if ( v15 > 0 )
      {
        v16 = (char *)a2 + 1376;
        v17 = CharProperties::PROPS_Get((int)v14, 19);
        v18 = 5 * v17 - CharProperties::PROPS_Get((int)v16, 136);
        Property = v18 + Property - 5 * CharProperties::PROPS_Get((int)v16, 19);
      }
    }
    else
    {
      Property = a3 - 1;
    }
    return Property > a3;
  }
  v8 = (char *)a1 + 4084;
  v9 = (char *)a1 + 1376;
  Property = CharProperties::_GetProperty((int)a1 + 1376, (int)a1 + 4084, 137);
  if ( Property <= 0 )
    return Property > a3;
  v10 = (char *)a2 + 4084;
  v11 = (char *)a2 + 1376;
  v12 = CharProperties::_GetProperty((int)v9, (int)v8, 19);
  v13 = 5 * v12 - CharProperties::_GetProperty((int)v11, (int)v10, 136);
  return v13 + Property - 5 * CharProperties::_GetProperty((int)v11, (int)v10, 19) > a3;
}


// ===== 3b0e8c CF__CalcHurt(Character *,Character *,int,int) =====
bool __fastcall CF__CalcHurt(Character *a1, Character *a2, int a3, int a4)
{
  int Property; // r5
  char *v8; // r7
  char *v9; // r10
  char *v10; // r8
  char *v11; // r6
  int v12; // r7
  int v13; // r7
  char *v14; // r10
  int v15; // r0
  char *v16; // r6
  int v17; // r7
  int v18; // r7

  if ( a4 )
  {
    if ( a4 == 2 )
    {
      v14 = (char *)a1 + 1376;
      v15 = CharProperties::PROPS_Get((int)a1 + 1376, 182);
      Property = v15;
      if ( v15 > 0 )
      {
        v16 = (char *)a2 + 1376;
        v17 = CharProperties::PROPS_Get((int)v14, 19);
        v18 = 5 * v17 - CharProperties::PROPS_Get((int)v16, 134);
        Property = v18 + Property - 5 * CharProperties::PROPS_Get((int)v16, 19);
      }
    }
    else
    {
      Property = a3 - 1;
    }
    return Property > a3;
  }
  v8 = (char *)a1 + 4084;
  v9 = (char *)a1 + 1376;
  Property = CharProperties::_GetProperty((int)a1 + 1376, (int)a1 + 4084, 135);
  if ( Property <= 0 )
    return Property > a3;
  v10 = (char *)a2 + 4084;
  v11 = (char *)a2 + 1376;
  v12 = CharProperties::_GetProperty((int)v9, (int)v8, 19);
  v13 = 5 * v12 - CharProperties::_GetProperty((int)v11, (int)v10, 134);
  return v13 + Property - 5 * CharProperties::_GetProperty((int)v11, (int)v10, 19) > a3;
}


// ===== 3b0fa0 CF__CalcStun(Character *,Character *,int,int) =====
bool __fastcall CF__CalcStun(Character *a1, Character *a2, int a3, int a4)
{
  int Property; // r5
  char *v8; // r7
  char *v9; // r10
  char *v10; // r8
  char *v11; // r6
  int v12; // r7
  int v13; // r7
  char *v14; // r10
  int v15; // r0
  char *v16; // r6
  int v17; // r7
  int v18; // r7

  if ( a4 )
  {
    if ( a4 == 2 )
    {
      v14 = (char *)a1 + 1376;
      v15 = CharProperties::PROPS_Get((int)a1 + 1376, 184);
      Property = v15;
      if ( v15 > 0 )
      {
        v16 = (char *)a2 + 1376;
        v17 = CharProperties::PROPS_Get((int)v14, 19);
        v18 = 5 * v17 - CharProperties::PROPS_Get((int)v16, 138);
        Property = v18 + Property - 5 * CharProperties::PROPS_Get((int)v16, 19);
      }
    }
    else
    {
      Property = a3 - 1;
    }
    return Property > a3;
  }
  v8 = (char *)a1 + 4084;
  v9 = (char *)a1 + 1376;
  Property = CharProperties::_GetProperty((int)a1 + 1376, (int)a1 + 4084, 139);
  if ( Property <= 0 )
    return Property > a3;
  v10 = (char *)a2 + 4084;
  v11 = (char *)a2 + 1376;
  v12 = CharProperties::_GetProperty((int)v9, (int)v8, 19);
  v13 = 5 * v12 - CharProperties::_GetProperty((int)v11, (int)v10, 138);
  return v13 + Property - 5 * CharProperties::_GetProperty((int)v11, (int)v10, 19) > a3;
}


// ===== 3b10b4 Character::F_ApplyResult(Character::AttackResult const&,Character*,Character*,bool) =====
CMessaging *__fastcall Character::F_ApplyResult(int a1, _DWORD *a2, _DWORD *a3, int a4)
{
  __int16 v8; // r2
  CMessaging *result; // r0
  int v10; // r1
  int v11; // r2
  char v12; // r3
  int v13; // r2
  int Property; // r0
  int v15; // r2
  unsigned int v16; // r1
  int v17; // r2
  int v18; // r0
  int v19; // r0
  int v20; // r6
  unsigned int v21; // r10
  unsigned int v22; // r8
  int v23; // r3
  CMessaging *v24; // r11
  CMessage *v25; // r0
  signed int v26; // r8
  int v27; // r10
  float v28; // r0
  int v29; // r2
  int v30; // r3
  int v31; // r8
  int FXBloodDeath; // r8
  char *TargetPosition; // r0
  char v34; // r3
  int CurrentLevel; // r0
  CameraLevel *v36; // r8
  int PlayerByCharacter; // r0
  int v38; // r3
  TrophyManager *v39; // r8
  int v40; // r0
  TrophyManager *v41; // r8
  int v42; // r0
  TrophyManager *v43; // r8
  int v44; // r0
  bool v45; // [sp+Ch] [bp-150h]
  _DWORD v46[3]; // [sp+14h] [bp-148h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v47; // [sp+4Ch] [bp-110h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v48; // [sp+64h] [bp-F8h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v49; // [sp+7Ch] [bp-E0h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v50; // [sp+94h] [bp-C8h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v51; // [sp+ACh] [bp-B0h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v52; // [sp+C4h] [bp-98h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v53; // [sp+DCh] [bp-80h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v54; // [sp+F4h] [bp-68h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v55; // [sp+10Ch] [bp-50h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v56; // [sp+124h] [bp-38h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v57; // [sp+13Ch] [bp-20h] BYREF

  if ( *(_BYTE *)(GetOnline() + 5) )
  {
    result = (CMessaging *)(*(int (__fastcall **)(_DWORD *))(*a2 + 84))(a2);
    if ( result )
    {
      if ( !a4 )
        return result;
    }
    else if ( !a4 )
    {
      if ( a3 )
      {
        v21 = a3[66];
        v22 = a2[66];
        v23 = v21 >> 31;
      }
      else
      {
        if ( gAssertLevel == 2 )
        {
          dword_0 = 0;
        }
        else if ( gAssertLevel == 1 )
        {
          result = (CMessaging *)fprintf(
                                   (FILE *)&_sF + 2,
                                   "ASSERT(%s) FAILED: %s:%d\n",
                                   "attacker && defender",
                                   "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Objects\\Characters\\Character_Formulas.cpp",
                                   712);
        }
        v22 = a2[66];
        v23 = 1;
        v21 = -1;
      }
      if ( v23 | (v22 >> 31) )
      {
        if ( gAssertLevel == 2 )
        {
          dword_0 = 0;
        }
        else if ( gAssertLevel == 1 )
        {
          result = (CMessaging *)fprintf(
                                   (FILE *)&_sF + 2,
                                   "ASSERT(%s) FAILED: %s:%d\n",
                                   "attackerNetworkId >= 0 && defenderNetworkId >= 0",
                                   "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Objects\\Characters\\Character_Formulas.cpp",
                                   722);
        }
      }
      v24 = (CMessaging *)CMessaging::Get(result);
      v25 = (CMessage *)CMsgAttackResult::Create(v22, v21, a1, 1);
      CMessaging::SendMsg(v24, v25);
    }
  }
  if ( (*(_BYTE *)(a1 + 24) & 3) != 0 )
    v8 = 0;
  else
    v8 = *((_WORD *)a2 + 2664) + 1;
  *((_WORD *)a2 + 2664) = v8;
  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string((int)&v57, "NoDamages");
  if ( DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, (const std::string *)&v57) )
    goto LABEL_6;
  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string((int)&v56, "GOD");
  if ( (DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, (const std::string *)&v56)
     || Application::IsSavedOptionOn((Application *)&Singleton<Application>::s_inst, "GOD"))
    && (*(int (__fastcall **)(_DWORD *))(*a3 + 40))(a3)
    || *((_BYTE *)a3 + 5360) )
  {
    std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v56);
LABEL_6:
    std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v57);
    goto LABEL_7;
  }
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v56);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v57);
  if ( (*(_DWORD *)(a1 + 28) & 0x400000) != 0 )
  {
    v38 = a2[231] << 8;
    if ( v38 >= *(_DWORD *)a1 )
      v38 = *(_DWORD *)a1;
    *(_DWORD *)a1 = v38;
    ItemInventory::AddGold((ItemInventory *)(a2 + 223), -(v38 >> 8));
  }
  v26 = *(_DWORD *)a1;
  if ( *(int *)a1 > 0 )
  {
    v27 = *(_DWORD *)(dword_99F76C + 1732);
    if ( v27 > 1 )
    {
      if ( Character::IsMonster((Character *)a2) )
      {
        v26 = *(_DWORD *)a1
            * (int)(float)((float)((float)(v27 - 1) * *(float *)(Arrays::DesignSettingsTable::members + 52)) + 1.0);
        *(_DWORD *)a1 = v26;
      }
      else if ( (*(int (__fastcall **)(_DWORD *))(*a2 + 40))(a2) )
      {
        v26 /= (int)(float)((float)((float)(v27 - 1) * *(float *)(Arrays::DesignSettingsTable::members + 56)) + 1.0);
      }
    }
    v28 = COERCE_FLOAT(Character::GetEffectiveThreatPerDamage((Character *)a2));
    if ( COERCE_FLOAT(CharAI::AI_AddAggro((CharAI *)(a3 + 242), (Character *)a2, v28 * (float)((float)*(int *)a1
                                                                                             * 0.0039062))) > 0.0 )
    {
      DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
      std::string::string((int)&v55, "isTracingThreatChange");
      DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, (const std::string *)&v55);
      std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v55);
    }
    v29 = a3[68];
    LOBYTE(v30) = *(_BYTE *)(a1 + 24) & 0x80;
    if ( (_BYTE)v30 )
      v30 = (*(_DWORD *)(a1 + 28) >> 20) & 1;
    *((_BYTE *)a3 + 1339) = v30;
    if ( v29 == -1 )
    {
      DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
      std::string::string((int)&v54, "isTracingChar_Attack");
      DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, (const std::string *)&v54);
      std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v54);
      Character::HitFor((Character *)a3, v26, (GameObject *)a2);
    }
    if ( (*(_DWORD *)(a1 + 28) & 0x200000) != 0 )
    {
      v31 = *(_DWORD *)(a1 + 36);
      if ( v31 == -1 )
      {
        if ( (*(int (__fastcall **)(_DWORD *))(*a3 + 52))(a3) )
          FXBloodDeath = Character::GetFXBloodDeath((Character *)a3);
        else
          FXBloodDeath = Character::GetFXBlood((Character *)a3);
      }
      else
      {
        FXBloodDeath = v31 + 124;
      }
      TargetPosition = GameObject::GetTargetPosition((GameObject *)a3);
      VisualFXManager::PlayAnimFXSet(&Singleton<VisualFXManager>::s_inst, FXBloodDeath, TargetPosition, a3 + 91, 0, 0);
    }
    if ( (*(int (__fastcall **)(_DWORD *))(*a3 + 52))(a3) )
    {
      v34 = *(_BYTE *)(a1 + 24) & 0x9F;
      *(_BYTE *)(a1 + 25) &= ~1u;
      *(_BYTE *)(a1 + 24) = v34;
    }
    if ( (*(_BYTE *)(a1 + 24) & 8) != 0 )
    {
      if ( (*(int (__fastcall **)(_DWORD *))(*a2 + 40))(a2) )
      {
        CurrentLevel = Application::GetCurrentLevel((Application *)&Singleton<Application>::s_inst);
        if ( CurrentLevel )
        {
          v36 = *(CameraLevel **)(CurrentLevel + 296);
          if ( v36 )
          {
            if ( CameraLevel::CanPlayShakeAnim(*(CameraLevel **)(CurrentLevel + 296), (Character *)a2) )
            {
              memset(v46, 0, sizeof(v46));
              GameObject::GetLookAtVec(a2, v46);
              CameraLevel::PlayAnim(
                v36,
                *(_DWORD *)(Arrays::CamAnimSetTable::members + 28 * *((_DWORD *)v36 + 32) + 12),
                0,
                1);
            }
          }
        }
      }
    }
  }
LABEL_7:
  Character::RegenHP((Character *)a2, *(_DWORD *)(a1 + 16));
  Character::RegenMP((Character *)a2, *(_DWORD *)(a1 + 20));
  if ( !(*(int (__fastcall **)(_DWORD *))(*a3 + 52))(a3) )
  {
    v10 = *(_DWORD *)(a1 + 8);
    if ( v10 > 0 )
    {
      v11 = *(_DWORD *)(a1 + 12);
      if ( v11 > 0 )
        CharProperties::PROPS_AddDot((CharProperties *)(a3 + 344), v10 >> 8, v11, *(_DWORD *)(a1 + 4));
    }
    v45 = (*(_DWORD *)(a1 + 28) & 0x18000000) != 0;
    if ( (*(int (__fastcall **)(_DWORD *))(*a3 + 40))(a3)
      && CharStateMachine::SM_IsIdle((CharStateMachine *)(a3 + 319), 0) )
    {
      v12 = *(_BYTE *)(a1 + 24);
      if ( (v12 & 0x16) == 0 )
      {
        if ( *(int *)a1 > 0 )
          v12 |= 0x10u;
        else
          v12 |= 2u;
        *(_BYTE *)(a1 + 24) = v12;
        if ( (v12 & 2) != 0 )
        {
LABEL_92:
          CharStateMachine::SM_SetDodgingState((CharStateMachine *)(a3 + 319), a2, 0);
          if ( (*(int (__fastcall **)(_DWORD *))(*a3 + 40))(a3) )
          {
            CharProperties::PROPS_AddInt((CharProperties *)(a3 + 344), 215, 1);
            v41 = (TrophyManager *)TrophyManager::s_instance;
            if ( (int)CharProperties::PROPS_GetInt((CharProperties *)(a3 + 344), 215, 0) >= 500 )
            {
              if ( PlayerManager::IsLocalPlayer((PlayerManager *)dword_99F76C, (const Character *)a3) )
              {
                v42 = Arrays::GetMemberIDByString<Arrays::TrophyTable>("epic_invisible");
                TrophyManager::UnlockTrophy(v41, v42);
              }
            }
          }
          DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
          std::string::string((int)&v53, "isTracingChar_Attack");
          DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, (const std::string *)&v53);
          std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v53);
          v12 = *(_BYTE *)(a1 + 24);
          if ( (v12 & 4) != 0 )
          {
LABEL_94:
            CharStateMachine::SM_SetBlockingState((CharStateMachine *)(a3 + 319), a2, 0);
            if ( (*(int (__fastcall **)(_DWORD *))(*a3 + 40))(a3) )
            {
              CharProperties::PROPS_AddInt((CharProperties *)(a3 + 344), 214, 1);
              v39 = (TrophyManager *)TrophyManager::s_instance;
              if ( (int)CharProperties::PROPS_GetInt((CharProperties *)(a3 + 344), 214, 0) >= 500 )
              {
                if ( PlayerManager::IsLocalPlayer((PlayerManager *)dword_99F76C, (const Character *)a3) )
                {
                  v40 = Arrays::GetMemberIDByString<Arrays::TrophyTable>("epic_invincible");
                  TrophyManager::UnlockTrophy(v39, v40);
                }
              }
            }
            DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
            std::string::string((int)&v52, "isTracingChar_Attack");
            DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, (const std::string *)&v52);
            std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v52);
            v12 = *(_BYTE *)(a1 + 24);
            if ( (v12 & 0x10) != 0 )
            {
LABEL_96:
              CharStateMachine::SM_SetInjureState((CharStateMachine *)(a3 + 319), a2, v45);
              DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
              std::string::string((int)&v51, "isTracingChar_Attack");
              DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, (const std::string *)&v51);
              std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v51);
              v12 = *(_BYTE *)(a1 + 24);
              if ( v12 < 0 )
              {
LABEL_97:
                CharStateMachine::SM_SetKnockBackState(
                  (CharStateMachine *)(a3 + 319),
                  (*(_DWORD *)(a1 + 28) & 0x100000) != 0,
                  a2,
                  v45);
                if ( (*(int (__fastcall **)(_DWORD *))(*a3 + 40))(a3) )
                {
                  CharProperties::PROPS_AddInt((CharProperties *)(a3 + 344), 222, 1);
                  v43 = (TrophyManager *)TrophyManager::s_instance;
                  if ( (int)CharProperties::PROPS_GetInt((CharProperties *)(a3 + 344), 222, 0) > 49 )
                  {
                    if ( PlayerManager::IsLocalPlayer((PlayerManager *)dword_99F76C, (const Character *)a3) )
                    {
                      v44 = Arrays::GetMemberIDByString<Arrays::TrophyTable>("knocked_down_50_times");
                      TrophyManager::UnlockTrophy(v43, v44);
                    }
                  }
                }
                DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
                std::string::string((int)&v50, "isTracingChar_Attack");
                DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, (const std::string *)&v50);
                std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v50);
                v12 = *(_BYTE *)(a1 + 24);
              }
LABEL_23:
              if ( (v12 & 0x40) != 0 )
              {
                if ( (*(_DWORD *)(a1 + 28) & 0x1000) != 0 )
                  v13 = 185;
                else
                  v13 = 140;
                Property = CharProperties::_GetProperty(a2 + 344, a2 + 1021, v13);
                CharStateMachine::SM_SetStunState((CharStateMachine *)(a3 + 319), Property >> 8, 1, a2, 0);
                DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
                std::string::string((int)&v49, "isTracingChar_Attack");
                DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, (const std::string *)&v49);
                std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v49);
                v12 = *(_BYTE *)(a1 + 24);
              }
              if ( (v12 & 0x20) != 0 )
              {
                if ( (*(_DWORD *)(a1 + 28) & 0x4000) != 0 )
                  v15 = 187;
                else
                  v15 = 143;
                v16 = CharProperties::_GetProperty(a2 + 344, a2 + 1021, v15) >> 8;
                if ( v16 )
                  CharStateMachine::SM_SetScareState((CharStateMachine *)(a3 + 319), v16, 1, a2, v45);
                DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
                std::string::string((int)&v48, "isTracingChar_Attack");
                DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, (const std::string *)&v48);
                std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v48);
              }
              if ( (*(_BYTE *)(a1 + 25) & 1) != 0 )
              {
                if ( (*(_DWORD *)(a1 + 28) & 0x10000) != 0 )
                  v17 = 189;
                else
                  v17 = 146;
                v18 = CharProperties::_GetProperty(a2 + 344, a2 + 1021, v17);
                CharProperties::PROPS_DebuffSlow((CharProperties *)(a3 + 344), v18 >> 8);
                DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
                std::string::string((int)&v47, "isTracingChar_Attack");
                DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, (const std::string *)&v47);
                std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v47);
              }
              goto LABEL_8;
            }
LABEL_22:
            if ( v12 < 0 )
              goto LABEL_97;
            goto LABEL_23;
          }
LABEL_21:
          if ( (v12 & 0x10) != 0 )
            goto LABEL_96;
          goto LABEL_22;
        }
LABEL_20:
        if ( (v12 & 4) != 0 )
          goto LABEL_94;
        goto LABEL_21;
      }
    }
    else
    {
      v12 = *(_BYTE *)(a1 + 24);
    }
    if ( (v12 & 2) != 0 )
      goto LABEL_92;
    goto LABEL_20;
  }
LABEL_8:
  Character::CancelSneaking((Character *)a3);
  Character::F_ApplyScrollingCombatText(a1, (int)a2, (Character *)a3);
  Character::F_ApplyCombatSound(a1, (Character *)a2);
  if ( (*(_DWORD *)(a1 + 28) & 0x20000000) == 0 )
  {
    (*(void (__fastcall **)(_DWORD *, _DWORD *, _DWORD *, int))(a2[242] + 180))(a2 + 242, a2, a3, a1);
    (*(void (__fastcall **)(_DWORD *, _DWORD *, _DWORD *, int))(a3[242] + 180))(a3 + 242, a2, a3, a1);
  }
  if ( (*(int (__fastcall **)(_DWORD *))(*a3 + 40))(a3) )
  {
    PlayerByCharacter = PlayerManager::GetPlayerByCharacter((PlayerManager *)dword_99F76C, (const Character *)a3, 0);
    PlayerStatManager::IncrementStat(&Singleton<PlayerStatManager>::s_inst, 3, *(_DWORD *)(PlayerByCharacter + 1648));
  }
  result = (CMessaging *)(*(int (__fastcall **)(_DWORD *))(*a2 + 40))(a2);
  if ( result )
  {
    v19 = PlayerManager::GetPlayerByCharacter((PlayerManager *)dword_99F76C, (const Character *)a2, 0);
    v20 = *(_DWORD *)(v19 + 1648);
    if ( (*(_WORD *)(a1 + 24) & 0x160) != 0 )
      PlayerStatManager::IncrementStat(&Singleton<PlayerStatManager>::s_inst, 2, *(_DWORD *)(v19 + 1648));
    if ( (*(int (__fastcall **)(_DWORD *))(*a3 + 52))(a3) )
      PlayerStatManager::IncrementStat(&Singleton<PlayerStatManager>::s_inst, 0, v20);
    return (CMessaging *)PlayerStatManager::IncreaseStat(&Singleton<PlayerStatManager>::s_inst, 1, *(int *)a1 >> 8, v20);
  }
  return result;
}


// ===== 3b1df0 CF__CalcMissOrDodge(Character *,Character *,int,int,int,bool) =====
int __fastcall CF__CalcMissOrDodge(Character *a1, Character *a2, int a3, int a4, int a5, bool a6)
{
  unsigned int Random; // r0
  int v11; // r2
  int v12; // r8
  int v13; // r9
  int v14; // r3
  unsigned __int8 v15; // r3
  char *v17; // r1
  CharProperties *v18; // r9
  int Property; // r0
  int v20; // r11
  char *v21; // r10
  char *v22; // r6
  int BonusAttackRating; // r9
  char *v24; // r9
  int v25; // r0
  int v26; // r7

  Random = Random::GetRandom((unsigned int)&dword_64, (int)a2, a3);
  if ( !a4 || a4 == 2 )
  {
    v11 = 12800;
    if ( a3 >= 25088 )
      goto LABEL_18;
  }
  else
  {
    v11 = a3 - 1;
    if ( a3 + 1 <= a3 )
      goto LABEL_18;
  }
  if ( v11 > a3 )
  {
LABEL_16:
    v15 = 0;
    LOBYTE(a4) = 0;
    return (unsigned __int8)a4 | (v15 << 8);
  }
  v12 = Random << 8;
  if ( a4 )
  {
    if ( a4 == 2 )
    {
      v24 = (char *)a1 + 1376;
      v25 = CharProperties::PROPS_Get((int)v24, 158);
      v26 = v25;
      if ( a5 != -1 )
        v26 = v25 + CharProperties::PROPS_Get((int)v24, a5 + 159);
      v13 = (s_ad_dlevel << 9 >> 8) + 19200 + ((v26 - CharProperties::PROPS_Get((int)a2 + 1376, 164)) << 9 >> 8);
    }
    else
    {
      v13 = a3 + 1;
    }
    v14 = v12 + 1;
  }
  else
  {
    v17 = (char *)a1 + 4080;
    v18 = (Character *)((char *)a1 + 1376);
    Property = CharProperties::_GetProperty((int)v18, (int)(v17 + 4), 50);
    if ( Property < 256 )
      v20 = 256;
    else
      v20 = Property;
    v21 = (char *)a2 + 4084;
    v22 = (char *)a2 + 1376;
    BonusAttackRating = CharProperties::PROPS_GetBonusAttackRating(v18, a6);
    v13 = (s_ad_dlevel << 9 >> 8)
        + 19200
        + ((51 * (v20 - CharProperties::_GetProperty((int)v22, (int)v21, 59) + BonusAttackRating)) >> 8);
    v14 = CharProperties::_GetProperty((int)v22, (int)v21, 60) + (s_da_dlevel << 8 >> 8);
  }
  if ( a3 >= v13 )
  {
LABEL_18:
    v15 = 0;
    LOBYTE(a4) = 1;
    return (unsigned __int8)a4 | (v15 << 8);
  }
  if ( a4 || v14 <= v12 )
    goto LABEL_16;
  v15 = 1;
  return (unsigned __int8)a4 | (v15 << 8);
}


// ===== 3b1fb8 CF__CalcDamage(Character *,Character *,int,int,int,bool,bool) =====
Character *__fastcall CF__CalcDamage(
        Character *a1,
        Character *a2,
        int a3,
        int a4,
        unsigned int a5,
        int a6,
        bool a7,
        unsigned __int8 a8)
{
  int v11; // r8
  CharProperties *v13; // r6
  char *v14; // r7
  int Property; // r10
  int v16; // r0
  int v17; // r1
  int v18; // r12
  int v19; // r2
  int v20; // r1
  bool v21; // r2
  int v22; // r12
  unsigned int Random; // r10
  int v24; // r10
  int v25; // r10
  int v26; // r10
  int v27; // r11
  int v28; // r0
  int v29; // r1
  bool v30; // r2
  bool v31; // nf
  int v32; // r1
  int v33; // r2
  int v34; // r3
  CharProperties *v35; // r6
  char *v36; // r7
  int v37; // r10
  int v38; // r0
  int v39; // r1
  bool v40; // r2
  int v41; // r3
  int v42; // r7
  signed int v43; // r10
  int v44; // r11
  int v45; // r7
  int v46; // r2
  int v47; // r3
  int v48; // r10
  int v49; // r5
  int v50; // r0
  int v51; // r0
  unsigned int v52; // r6
  int v53; // r3
  int v54; // r0
  int v55; // [sp+0h] [bp-2Ch]
  int v56; // [sp+0h] [bp-2Ch]
  int v57; // [sp+0h] [bp-2Ch]
  int v58; // [sp+0h] [bp-2Ch]
  int v59; // [sp+4h] [bp-28h]
  int v60; // [sp+4h] [bp-28h]
  int v61; // [sp+8h] [bp-24h]
  int v62; // [sp+8h] [bp-24h]
  int v63; // [sp+Ch] [bp-20h]
  int v64; // [sp+10h] [bp-1Ch]
  int v65; // [sp+14h] [bp-18h]
  int v66; // [sp+1Ch] [bp-10h] BYREF
  int v67; // [sp+20h] [bp-Ch]
  int v68; // [sp+24h] [bp-8h]

  v11 = a8;
  if ( a5 <= 1 )
  {
    v13 = (Character *)((char *)a2 + 1376);
    v14 = (char *)a2 + 4084;
    if ( a7 )
    {
      Property = CharProperties::_GetProperty((int)a2 + 1376, (int)a2 + 4084, 81);
      v50 = CharProperties::_GetProperty((int)v13, (int)v14, 82);
      v17 = (int)v14;
      v18 = v50;
      v19 = 100;
    }
    else
    {
      Property = CharProperties::_GetProperty((int)a2 + 1376, (int)a2 + 4084, 79);
      v16 = CharProperties::_GetProperty((int)v13, (int)v14, 80);
      v17 = (int)v14;
      v18 = v16;
      v19 = 97;
    }
    v55 = v18;
    v64 = CharProperties::_GetProperty((int)v13, v17, v19) >> 8;
    v22 = v55;
    if ( a8 )
    {
      Property = CharProperties::PROPS_Get((int)v13, 174);
      v22 = CharProperties::PROPS_Get((int)v13, 175);
    }
    v65 = v22 & ~(v22 >> 31);
    v56 = Property & ~(Property >> 31);
    Random = Random::GetRandom(v65 - v56, v20, v21);
    v59 = Random + CharProperties::PROPS_GetBonusDamage(v13, a7) + v56;
    if ( CharStateMachine::SM_GetState((CharStateMachine *)(a3 + 1276)) == 9 )
      v59 += CharProperties::PROPS_Get((int)v13, 92);
    v63 = a3 + 1376;
    v24 = CharProperties::_GetProperty((int)v13, (int)v14, 198);
    if ( v24 > CharProperties::_GetProperty(a3 + 1376, a3 + 4084, 199) )
      v59 += CharProperties::PROPS_Get((int)v13, 93);
    if ( *((_WORD *)a2 + 2664) )
    {
      v25 = *((unsigned __int16 *)a2 + 2664);
      v59 += v25 * CharProperties::_GetProperty((int)v13, (int)v14, 94);
    }
    if ( s_isBlocked )
      v59 = (v59 * CharProperties::PROPS_Get(v63, 121)) >> 8;
    if ( s_isCritical )
      v59 += v65;
    v26 = v59 - ((25 * CharProperties::_GetProperty(v63, a3 + 4084, 71)) >> 8);
    if ( v26 <= 0 )
      v26 = 256;
    if ( a8 )
    {
      v60 = 0;
      v61 = 0;
    }
    else
    {
      v61 = ((v26 * CharProperties::PROPS_Get((int)v13, 132)) >> 8) / 100;
      v60 = ((v26 * CharProperties::PROPS_Get((int)v13, 133)) >> 8) / 100;
    }
    if ( v64 != -1 )
    {
      if ( a7 )
      {
        v27 = CharProperties::_GetProperty((int)v13, (int)v14, 98);
        v28 = CharProperties::_GetProperty((int)v13, (int)v14, 99);
      }
      else
      {
        v27 = CharProperties::_GetProperty((int)v13, (int)v14, 95);
        v28 = CharProperties::_GetProperty((int)v13, (int)v14, 96);
      }
      v31 = v28 < 0;
      if ( v28 >= 0 )
        v31 = v27 < 0;
      if ( !v31 )
      {
        v52 = Random::GetRandom(v28 - v27, v29, v30);
        v53 = (CharProperties::PROPS_Get(v63, v64 + 74) >> 8) / -100 + 1;
        if ( v53 >= 0 )
        {
          if ( v53 >= 1 )
            v53 = 1;
          v26 += (v52 + v27) * v53;
          if ( v26 <= 0 )
            v26 = 256;
        }
      }
    }
    CF_CalcDotDamage((Character *)&v66, a2, a3, a8);
    v32 = v66;
    v33 = v67;
    v34 = v68;
    *(_DWORD *)a1 = v26;
    *((_DWORD *)a1 + 1) = v64;
    *((_DWORD *)a1 + 2) = v61;
    *((_DWORD *)a1 + 4) = v32;
    *((_DWORD *)a1 + 5) = v33;
    *((_DWORD *)a1 + 3) = v60;
    *((_DWORD *)a1 + 6) = v34;
  }
  else if ( a5 == 2 )
  {
    v35 = (Character *)((char *)a2 + 1376);
    v36 = (char *)a2 + 4084;
    if ( a8 )
    {
      v58 = CharProperties::_GetProperty((int)a2 + 1376, (int)a2 + 4084, 174);
      v51 = CharProperties::_GetProperty((int)v35, (int)v36, 175);
      v41 = v58;
      v37 = v51;
    }
    else
    {
      v57 = CharProperties::_GetProperty((int)a2 + 1376, (int)a2 + 4084, 79);
      v37 = CharProperties::_GetProperty((int)v35, (int)v36, 80);
      v38 = CharProperties::_GetProperty((int)v35, (int)v36, 97);
      v41 = v57;
      a6 = v38 >> 8;
    }
    v42 = v37 | v41;
    if ( v37 | v41 )
    {
      v62 = v37 & ~(v37 >> 31);
      v43 = Random::GetRandom(v62 - (v41 & ~(v41 >> 31)), v39, v40) + (v41 & ~(v41 >> 31));
      if ( !a8 )
        v43 += CharProperties::PROPS_GetBonusDamage(v35, a7);
      if ( a6 == -1 )
      {
        v44 = a3 + 1376;
      }
      else
      {
        v44 = a3 + 1376;
        v45 = (CharProperties::PROPS_Get(a3 + 1376, a6 + 74) >> 8) / -100 + 1;
        if ( v45 < 0 )
        {
          v43 = 256;
          CharProperties::PROPS_Get((int)v35, a6 + 166);
        }
        else
        {
          if ( v45 >= 1 )
            v45 = 1;
          v43 = v45 * (CharProperties::PROPS_Get((int)v35, a6 + 166) + v43);
          if ( v43 <= 0 )
            v43 = 256;
        }
      }
      if ( s_isCritical )
        v43 += v62;
      v42 = v43 - ((51 * CharProperties::_GetProperty(v44, a3 + 4084, 73)) >> 8);
      if ( v42 <= 0 )
        v42 = 256;
    }
    if ( a8 )
    {
      CF_CalcDotDamage((Character *)&v66, a2, a3, 1);
      v46 = v66;
      v47 = v67;
      v11 = v68;
      v48 = 0;
      v49 = 0;
    }
    else
    {
      v49 = ((v42 * CharProperties::PROPS_Get((int)v35, 132)) >> 8) / 100;
      v54 = CharProperties::PROPS_Get((int)v35, 133);
      v46 = 0;
      v48 = ((v42 * v54) >> 8) / 100;
      v47 = 0;
    }
    *(_DWORD *)a1 = v42;
    *((_DWORD *)a1 + 1) = 0;
    *((_DWORD *)a1 + 2) = v49;
    *((_DWORD *)a1 + 3) = v48;
    *((_DWORD *)a1 + 4) = v46;
    *((_DWORD *)a1 + 5) = v47;
    *((_DWORD *)a1 + 6) = v11;
  }
  else
  {
    if ( a5 == 3 )
    {
      *(_DWORD *)a1 = a4;
      *((_DWORD *)a1 + 6) = 0;
    }
    else
    {
      *((_DWORD *)a1 + 6) = 0;
      *(_DWORD *)a1 = 0;
    }
    *((_DWORD *)a1 + 1) = 0;
    *((_DWORD *)a1 + 2) = 0;
    *((_DWORD *)a1 + 3) = 0;
    *((_DWORD *)a1 + 4) = 0;
    *((_DWORD *)a1 + 5) = 0;
  }
  return a1;
}


// ===== 3b2638 Character::_F_CalculateResult(Character::AttackResult &,Character*,Character*,int,int,int,int) =====
void __fastcall Character::_F_CalculateResult(int a1, Character *a2, Character *a3, int a4, int a5, int a6, int a7)
{
  int v11; // r1
  unsigned int v12; // r2
  int v13; // r8
  int v14; // r8
  bool v15; // r0
  unsigned int Random; // r2
  int v17; // r0
  int v18; // r1
  int v19; // r2
  int v20; // r4
  int v21; // r12
  int v22; // lr
  int v23; // r3
  bool v24; // r0
  bool v25; // r0
  unsigned int v26; // r2
  bool v27; // r0
  bool v28; // r0
  char v29; // r0
  char v30; // r0
  unsigned int v31; // r0
  unsigned int v32; // r2
  int v33; // r0
  int v34; // r1
  int v35; // r2
  int v36; // lr
  int v37; // r12
  int v38; // r3
  unsigned int v39; // r2
  _DWORD v40[2]; // [sp+1Ch] [bp-44h] BYREF
  int v41; // [sp+24h] [bp-3Ch]
  int v42; // [sp+28h] [bp-38h]
  int v43; // [sp+2Ch] [bp-34h]
  int v44; // [sp+30h] [bp-30h]
  int v45; // [sp+34h] [bp-2Ch]
  unsigned __int16 v46; // [sp+38h] [bp-28h]
  unsigned __int16 v47; // [sp+3Ch] [bp-24h]
  std::priv::_String_base<char,std::allocator<char> > v48; // [sp+44h] [bp-1Ch] BYREF

  PushProfilingContext("Character::_F_CalculateResult");
  Character::_F_ResetResult((_DWORD *)a1);
  *(_DWORD *)(a1 + 28) = a4;
  *(_DWORD *)(a1 + 32) = a5;
  *(_DWORD *)(a1 + 36) = a6;
  CF_SetCombatants(a2, a3, a6, (a4 & 0x4000000) != 0, (a4 & 0x8000000) != 0);
  if ( (a4 & 5) != 0 )
  {
    Random = Random::GetRandom((unsigned int)&dword_64, v11, v12);
    if ( s_attacker && s_defender )
    {
      v47 = CF__CalcMissOrDodge(
              (Character *)s_attacker,
              (Character *)s_defender,
              Random << 8,
              0,
              s_element,
              s_offHanded);
      v12 = HIBYTE(v47);
      v11 = (unsigned __int8)v47;
      goto LABEL_31;
    }
    goto LABEL_39;
  }
  if ( (a4 & 0xA) == 0 )
  {
    v13 = *(_BYTE *)(a1 + 24) & 3;
    if ( (*(_BYTE *)(a1 + 24) & 3) == 0 )
      goto LABEL_4;
LABEL_32:
    PopProfilingContext("Character::_F_CalculateResult");
    return;
  }
  v32 = Random::GetRandom((unsigned int)&dword_64, v11, v12);
  if ( !s_attacker || !s_defender )
  {
LABEL_39:
    LOBYTE(v12) = 0;
    v11 = 0;
    goto LABEL_31;
  }
  v46 = CF__CalcMissOrDodge((Character *)s_attacker, (Character *)s_defender, v32 << 8, 2, s_element, s_offHanded);
  v12 = HIBYTE(v46);
  v11 = (unsigned __int8)v46;
LABEL_31:
  *(_BYTE *)(a1 + 24) = *(_BYTE *)(a1 + 24) & 0xFC | v11 & 1 | (2 * (v12 & 1));
  v13 = *(_BYTE *)(a1 + 24) & 3;
  if ( (*(_BYTE *)(a1 + 24) & 3) != 0 )
    goto LABEL_32;
LABEL_4:
  if ( (a4 & 0x10) != 0 )
  {
    v12 = Random::GetRandom((unsigned int)&dword_64, v11, v12);
    if ( s_attacker && (v11 = s_defender) != 0 )
      v30 = CF__CalcBlock((Character *)s_attacker, (Character *)s_defender, v12 << 8, v13);
    else
      v30 = 0;
    *(_BYTE *)(a1 + 24) = *(_BYTE *)(a1 + 24) & 0xFB | (4 * (v30 & 1));
  }
  if ( (a4 & 0x20) != 0 )
  {
    v14 = Random::GetRandom((unsigned int)&dword_64, v11, v12) << 8;
    if ( s_attacker )
    {
      v11 = s_defender;
      if ( s_defender )
      {
        v29 = CF__CalcCrit((Character *)s_attacker, (Character *)s_defender, v14, 0);
        goto LABEL_64;
      }
    }
    goto LABEL_80;
  }
  if ( (a4 & 0x40) != 0 )
  {
    v31 = Random::GetRandom((unsigned int)&dword_64, v11, v12);
    v14 = v31 << 8;
    if ( s_attacker )
    {
      v11 = s_defender;
      if ( s_defender )
      {
        v29 = CF__CalcCrit((Character *)s_attacker, (Character *)s_defender, v14, 2);
        goto LABEL_64;
      }
    }
LABEL_80:
    v29 = 0;
LABEL_64:
    *(_BYTE *)(a1 + 24) = *(_BYTE *)(a1 + 24) & 0xF7 | (8 * (v29 & 1));
    if ( (a4 & 0x80) != 0 )
      goto LABEL_10;
    goto LABEL_33;
  }
  v14 = -1;
  if ( (a4 & 0x80) != 0 )
  {
LABEL_10:
    if ( v14 == -1 )
      v14 = Random::GetRandom((unsigned int)&dword_64, v11, v12) << 8;
    if ( s_attacker )
    {
      v11 = s_defender;
      if ( s_defender )
      {
        v15 = CF__CalcHurt((Character *)s_attacker, (Character *)s_defender, v14, 0);
LABEL_15:
        *(_BYTE *)(a1 + 24) = *(_BYTE *)(a1 + 24) & 0xEF | (16 * v15);
        goto LABEL_16;
      }
    }
    goto LABEL_40;
  }
LABEL_33:
  if ( (a4 & 0x100) != 0 )
  {
    if ( v14 == -1 )
      v14 = Random::GetRandom((unsigned int)&dword_64, v11, v12) << 8;
    if ( s_attacker )
    {
      v11 = s_defender;
      if ( s_defender )
      {
        v15 = CF__CalcHurt((Character *)s_attacker, (Character *)s_defender, v14, 2);
        goto LABEL_15;
      }
    }
LABEL_40:
    v15 = 0;
    goto LABEL_15;
  }
LABEL_16:
  if ( (a4 & 0x200) == 0 )
  {
    if ( (a4 & 0x400) == 0 )
      goto LABEL_18;
    v12 = Random::GetRandom((unsigned int)&dword_64, v11, v12);
    if ( s_attacker )
    {
      v11 = s_defender;
      if ( s_defender )
      {
        v28 = CF__CalcPush((Character *)s_attacker, (Character *)s_defender, v12 << 8, 2);
        goto LABEL_60;
      }
    }
    goto LABEL_76;
  }
  v12 = Random::GetRandom((unsigned int)&dword_64, v11, v12);
  if ( !s_attacker || (v11 = s_defender) == 0 )
  {
LABEL_76:
    v28 = 0;
    goto LABEL_60;
  }
  v28 = CF__CalcPush((Character *)s_attacker, (Character *)s_defender, v12 << 8, 0);
LABEL_60:
  *(_BYTE *)(a1 + 24) = *(_BYTE *)(a1 + 24) & 0x7F | (v28 << 7);
LABEL_18:
  if ( (a4 & 0x800) != 0 )
  {
    v12 = Random::GetRandom((unsigned int)&dword_64, v11, v12);
    if ( s_attacker )
    {
      v11 = s_defender;
      if ( s_defender )
      {
        v24 = CF__CalcStun((Character *)s_attacker, (Character *)s_defender, v12 << 8, 0);
        goto LABEL_48;
      }
    }
    goto LABEL_77;
  }
  if ( (a4 & 0x1000) == 0 )
  {
    if ( (a4 & 0x2000) == 0 )
      goto LABEL_21;
LABEL_49:
    v12 = Random::GetRandom((unsigned int)&dword_64, v11, v12);
    if ( s_attacker )
    {
      v11 = s_defender;
      if ( s_defender )
      {
        v25 = CF__CalcFear((Character *)s_attacker, (Character *)s_defender, v12 << 8, 0);
        goto LABEL_52;
      }
    }
    goto LABEL_78;
  }
  v12 = Random::GetRandom((unsigned int)&dword_64, v11, v12);
  if ( !s_attacker || (v11 = s_defender) == 0 )
  {
LABEL_77:
    v24 = 0;
    goto LABEL_48;
  }
  v24 = CF__CalcStun((Character *)s_attacker, (Character *)s_defender, v12 << 8, 2);
LABEL_48:
  *(_BYTE *)(a1 + 24) = *(_BYTE *)(a1 + 24) & 0xBF | (v24 << 6);
  if ( (a4 & 0x2000) != 0 )
    goto LABEL_49;
LABEL_21:
  if ( (a4 & 0x4000) == 0 )
  {
    if ( (a4 & 0x8000) == 0 )
      goto LABEL_23;
LABEL_53:
    v26 = Random::GetRandom((unsigned int)&dword_64, v11, v12);
    if ( s_attacker && s_defender )
    {
      v27 = CF__CalcSlow((Character *)s_attacker, (Character *)s_defender, v26 << 8, 0);
LABEL_56:
      *(_BYTE *)(a1 + 25) = *(_BYTE *)(a1 + 25) & 0xFE | v27;
      goto LABEL_24;
    }
LABEL_79:
    v27 = 0;
    goto LABEL_56;
  }
  v12 = Random::GetRandom((unsigned int)&dword_64, v11, v12);
  if ( !s_attacker || (v11 = s_defender) == 0 )
  {
LABEL_78:
    v25 = 0;
    goto LABEL_52;
  }
  v25 = CF__CalcFear((Character *)s_attacker, (Character *)s_defender, v12 << 8, 2);
LABEL_52:
  *(_BYTE *)(a1 + 24) = *(_BYTE *)(a1 + 24) & 0xDF | (32 * v25);
  if ( (a4 & 0x8000) != 0 )
    goto LABEL_53;
LABEL_23:
  if ( (a4 & 0x10000) != 0 )
  {
    v39 = Random::GetRandom((unsigned int)&dword_64, v11, v12);
    if ( s_attacker && s_defender )
    {
      v27 = CF__CalcSlow((Character *)s_attacker, (Character *)s_defender, v39 << 8, 2);
      goto LABEL_56;
    }
    goto LABEL_79;
  }
LABEL_24:
  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string((std::string *)&v48, "isTracingChar_Attack");
  DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, (const std::string *)&v48);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v48);
  if ( (a4 & 0x20000) != 0 )
  {
    if ( s_attacker && s_defender )
    {
      CF__CalcDamage((Character *)v40, (Character *)s_attacker, s_defender, 0, 0, s_element, s_offHanded, s_isSkill);
      v17 = v42;
      v18 = v43;
      v19 = v44;
      v20 = v45;
      v21 = v41;
      v22 = v40[1];
      v23 = v40[0];
    }
    else
    {
      v23 = 0;
      v22 = 0;
      v21 = 0;
      v17 = 0;
      v18 = 0;
      v19 = 0;
      v20 = 0;
    }
    *(_DWORD *)a1 = v23;
    *(_DWORD *)(a1 + 4) = v20;
    *(_DWORD *)(a1 + 36) = v22;
    *(_DWORD *)(a1 + 16) = v21;
    *(_DWORD *)(a1 + 20) = v17;
    *(_DWORD *)(a1 + 8) = v18;
    *(_DWORD *)(a1 + 12) = v19;
  }
  else if ( (a4 & 0x40000) != 0 )
  {
    if ( s_attacker && s_defender )
    {
      CF__CalcDamage((Character *)v40, (Character *)s_attacker, s_defender, 0, 2u, s_element, s_offHanded, s_isSkill);
      v33 = v42;
      v34 = v43;
      v35 = v44;
      v36 = v45;
      v37 = v41;
      v38 = v40[0];
    }
    else
    {
      v38 = 0;
      v37 = 0;
      v33 = 0;
      v34 = 0;
      v35 = 0;
      v36 = 0;
    }
    *(_DWORD *)a1 = v38;
    *(_DWORD *)(a1 + 4) = v36;
    *(_DWORD *)(a1 + 16) = v37;
    *(_DWORD *)(a1 + 20) = v33;
    *(_DWORD *)(a1 + 8) = v34;
    *(_DWORD *)(a1 + 12) = v35;
  }
  else if ( (a4 & 0x80000) != 0 )
  {
    if ( s_attacker && s_defender )
    {
      CF__CalcDamage((Character *)v40, (Character *)s_attacker, s_defender, a7, 3u, s_element, s_offHanded, s_isSkill);
      *(_DWORD *)a1 = v40[0];
    }
    else
    {
      *(_DWORD *)a1 = 0;
    }
  }
  PopProfilingContext("Character::_F_CalculateResult");
}


// ===== 3b2e68 Character::F_DotAttack(Character::AttackResult &,Character*,Character*,int,int) =====
int __fastcall Character::F_DotAttack(int a1, int a2, int a3, int a4, int a5)
{
  std::priv::_String_base<char,std::allocator<char> > v10; // [sp+14h] [bp-20h] BYREF

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
        "attacker",
        "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Objects\\Characters\\Character_Formulas.cpp",
        649);
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
        "defender",
        "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Objects\\Characters\\Character_Formulas.cpp",
        650);
    }
  }
  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string((int)&v10, "isTracingChar_Attack");
  DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, (const std::string *)&v10);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v10);
  return Character::_F_CalculateResult(a1, a2, a3, 537395200, -1, a5, a4);
}


// ===== 3b3004 Character::F_SpellAttack(Character::AttackResult &,Character*,Character*,int,int) =====
int __fastcall Character::F_SpellAttack(int a1, int a2, int a3, int a4, int a5)
{
  std::priv::_String_base<char,std::allocator<char> > v10; // [sp+14h] [bp-20h] BYREF

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
        "attacker",
        "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Objects\\Characters\\Character_Formulas.cpp",
        633);
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
        "defender",
        "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Objects\\Characters\\Character_Formulas.cpp",
        634);
    }
  }
  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string((int)&v10, "isTracingChar_Attack");
  DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, (const std::string *)&v10);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v10);
  return Character::_F_CalculateResult(a1, a2, a3, a5 | 0x1005554A, -1, a4, 0);
}


// ===== 3b31a4 Character::F_SkillAttack(Character::AttackResult &,Character*,Character*,int,int) =====
int __fastcall Character::F_SkillAttack(int a1, int a2, int a3, int a4, int a5)
{
  int v9; // r8
  unsigned int v10; // r1
  ItemInstance *EquippedItem; // r0
  int v12; // r12
  std::priv::_String_base<char,std::allocator<char> > v14; // [sp+14h] [bp-20h] BYREF

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
        "attacker",
        "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Objects\\Characters\\Character_Formulas.cpp",
        613);
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
        "defender",
        "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Objects\\Characters\\Character_Formulas.cpp",
        614);
    }
  }
  v9 = a4 | 0x8000000;
  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string((int)&v14, "isTracingChar_Attack");
  DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, (const std::string *)&v14);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v14);
  if ( (v9 & 0x4000000) != 0 )
    v10 = 2;
  else
    v10 = 1;
  EquippedItem = (ItemInstance *)ItemInventory::GetEquippedItem((ItemInventory *)(a2 + 892), v10);
  if ( EquippedItem )
    v12 = *(_DWORD *)(ItemInstance::GetItem(EquippedItem) + 148);
  else
    v12 = -1;
  return Character::_F_CalculateResult(a1, a2, a3, v9, v12, a5, 0);
}


// ===== 3b3368 Character::F_MeleeAttack(Character::AttackResult &,Character*,Character*,bool,bool) =====
void __fastcall Character::F_MeleeAttack(int a1, int a2, Character *a3, int a4, char a5)
{
  unsigned int v7; // r1
  int v8; // r7
  ItemInstance *EquippedItem; // r0
  int v10; // r10
  int v11; // r8
  int v12; // r9
  int v15; // [sp+24h] [bp-28h]
  std::priv::_String_base<char,std::allocator<char> > v16; // [sp+2Ch] [bp-20h] BYREF

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
        "attacker",
        "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Objects\\Characters\\Character_Formulas.cpp",
        584);
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
        "defender",
        "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Objects\\Characters\\Character_Formulas.cpp",
        585);
    }
  }
  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string((std::string *)&v16, "isTracingChar_Attack");
  DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, (const std::string *)&v16);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v16);
  if ( a4 )
    v7 = 2;
  else
    v7 = 1;
  v8 = (int)&stru_55548.st_name + 2;
  if ( !a5 )
    v8 = (int)"CColladaBinaryFileLoader11createSceneEPNS_2io9IReadFileE";
  EquippedItem = (ItemInstance *)ItemInventory::GetEquippedItem((ItemInventory *)(a2 + 892), v7);
  if ( EquippedItem )
    v15 = *(_DWORD *)(ItemInstance::GetItem(EquippedItem) + 148);
  else
    v15 = -1;
  v10 = Arrays::ClassTable::size;
  if ( Arrays::ClassTable::size )
  {
    v11 = 0;
    v12 = Arrays::ClassTable::m_memberNames;
    while ( LC_API_STRCMP_0("SnS_CleanUp", *(const char **)(v12 + 4 * v11)) )
    {
      if ( ++v11 == v10 )
        goto LABEL_18;
    }
    if ( v11 != -1 && a5 )
      CharProperties::PROPS_ApplyClass((CharProperties *)(a2 + 1376), v11, 0);
  }
LABEL_18:
  if ( a4 )
    v8 |= 0x4000000u;
  Character::_F_CalculateResult(a1, (Character *)a2, a3, v8, v15, -1, 0);
}


// ===== 3b35f0 Character::InitAll(void) =====
int __fastcall Character::InitAll(Character *this)
{
  (*(void (__fastcall **)(Character *))(*(_DWORD *)this + 28))(this);
  return (*(int (__fastcall **)(Character *))(*(_DWORD *)this + 88))(this);
}


// ===== 3b3618 std::priv::__copy_aux<std::priv::_Bit_iter<bool,bool const*>,std::priv::_Bit_iter<std::priv::_Bit_reference,std::priv::_Bit_reference*>>(std::priv::_Bit_iter<bool,bool const*>,std::priv::_Bit_iter<bool,bool const*>,std::priv::_Bit_iter<std::priv::_Bit_reference,std::priv::_Bit_reference*>,std::__false_type const&) =====
int **__fastcall std::priv::__copy_aux<std::priv::_Bit_iter<bool,bool const*>,std::priv::_Bit_iter<std::priv::_Bit_reference,std::priv::_Bit_reference*>>(
        int **result,
        _DWORD *a2,
        int a3,
        int a4,
        int a5,
        int **a6)
{
  int v6; // r5
  int v7; // r12
  _DWORD *v8; // r4
  int *v9; // r2
  int *v10; // r3
  int v11; // r6
  int v12; // r7
  int v13; // r6

  v6 = a5 - a3 + 8 * (a4 - (_DWORD)a2);
  v7 = a3;
  v8 = a2;
  v9 = *a6;
  v10 = a6[1];
  if ( v6 > 0 )
  {
    do
    {
      v11 = 1 << (char)v10;
      v12 = *v9;
      if ( (*v8 & (1 << v7)) != 0 )
        v13 = v12 | v11;
      else
        v13 = v12 & ~v11;
      if ( v7 == 31 )
      {
        ++v8;
        v7 = 0;
      }
      else
      {
        ++v7;
      }
      *v9 = v13;
      if ( v10 == (int *)((char *)&dword_1C + 3) )
      {
        ++v9;
        v10 = nullptr;
      }
      else
      {
        v10 = (int *)((char *)v10 + 1);
      }
      --v6;
    }
    while ( v6 );
  }
  *result = v9;
  result[1] = v10;
  return result;
}


// ===== 3b36b0 Character::InitializePlayerSavegame(void) =====
int __fastcall Character::InitializePlayerSavegame(Character *this)
{
  PlayerSavegame *v2; // r5

  v2 = (PlayerSavegame *)operator new(408, 0);
  PlayerSavegame::PlayerSavegame(v2);
  *((_DWORD *)this + 1338) = v2;
  return Character::SG_SetPlayer(this, this);
}


// ===== 3b36e4 Character::UpdateInventoryLocalization(void) =====
int __fastcall Character::UpdateInventoryLocalization(Character *this)
{
  return ItemInventory::UpdateLocalizationForItems((Character *)((char *)this + 892));
}


// ===== 3b36ec Character::SafeGetCharPropsTemplateId(void) =====
int __fastcall Character::SafeGetCharPropsTemplateId(Character *this)
{
  const char *v1; // r5
  int v3; // r6
  int v4; // r4
  int v5; // r7

  v1 = *((const char **)this + 1259);
  if ( *((const char **)this + 1258) == v1 )
    return *((__int16 *)this + 2533);
  v3 = Arrays::Charater_Templates::size;
  if ( Arrays::Charater_Templates::size )
  {
    v4 = 0;
    v5 = Arrays::Charater_Templates::m_memberNames;
    while ( LC_API_STRCMP_0(v1, *(const char **)(v5 + 4 * v4)) )
    {
      if ( ++v4 == v3 )
        goto LABEL_7;
    }
    *((_WORD *)this + 2533) = v4;
    return (__int16)v4;
  }
  else
  {
LABEL_7:
    *((_WORD *)this + 2533) = -1;
    return -1;
  }
}


// ===== 3b379c Character::InitSpawned(int,Point3D<float> const&) =====
int __fastcall Character::InitSpawned(int a1, __int16 a2, int a3)
{
  *(_WORD *)(a1 + 5064) = a2;
  *(_BYTE *)(a1 + 5249) = 1;
  *(_BYTE *)(a1 + 752) = 1;
  Character::SetInitialPosition(a1, a3);
  GameObject::SetPosition((GameObject *)a1);
  (*(void (__fastcall **)(int))(*(_DWORD *)a1 + 28))(a1);
  (*(void (__fastcall **)(int))(*(_DWORD *)a1 + 88))(a1);
  (*(void (__fastcall **)(int, int))(*(_DWORD *)a1 + 64))(a1, 1);
  return CharStateMachine::SM_SetSpawnState((CharStateMachine *)(a1 + 1276), 0, 0);
}


// ===== 3b3824 POVillager::~POVillager() =====
void __fastcall POVillager::~POVillager(POVillager *this)
{
  *(_DWORD *)this = off_968F50;
  PhysicalObject::~PhysicalObject(this);
}


// ===== 3b3858 POPlayer::~POPlayer() =====
void __fastcall POPlayer::~POPlayer(POPlayer *this)
{
  *(_DWORD *)this = off_968F50;
  PhysicalObject::~PhysicalObject(this);
}


// ===== 3b388c POFollower::~POFollower() =====
void __fastcall POFollower::~POFollower(POFollower *this)
{
  *(_DWORD *)this = off_968F50;
  PhysicalObject::~PhysicalObject(this);
}


// ===== 3b38c0 POFaerie::~POFaerie() =====
void __fastcall POFaerie::~POFaerie(POFaerie *this)
{
  *(_DWORD *)this = off_968F50;
  PhysicalObject::~PhysicalObject(this);
}


// ===== 3b38f4 POMonster::~POMonster() =====
void __fastcall POMonster::~POMonster(POMonster *this)
{
  *(_DWORD *)this = off_968F50;
  PhysicalObject::~PhysicalObject(this);
}


// ===== 3b3928 Character::InitCoopCam(void) =====
int __fastcall Character::InitCoopCam(Character *this)
{
  int v2; // r5

  v2 = operator new(0x1Cu, 0);
  AnchorGroup::AnchorGroup(v2, this, 1);
  return GameObject::SetCameraAnchorObject((int)this, v2);
}


// ===== 3b395c Character::_InitEquipment(void) =====
int __fastcall Character::_InitEquipment(Character *this)
{
  unsigned int v2; // r6
  int Property; // r0
  int result; // r0
  int v5; // r7
  unsigned int v6; // r1

  if ( !*(_BYTE *)(GetOnline() + 5)
    || (result = PlayerManager::GetPlayerByCharacter((PlayerManager *)dword_99F76C, this, 0),
        *(_BYTE *)(result + 1644) == 1) )
  {
    if ( ItemInventory::GetNumItems((Character *)((char *)this + 892)) )
      return Character::INV_UpdateSkin(this);
    v2 = *((_DWORD *)this + 231);
    if ( v2 )
    {
      return Character::INV_UpdateSkin(this);
    }
    else
    {
      Property = CharProperties::_GetProperty((char *)this + 1376, (char *)this + 4084, 9);
      ItemInventory::AddLoot((Character *)((char *)this + 892), Property, 0, 0, -1, 0);
      result = ItemInventory::GetNumItems((Character *)((char *)this + 892));
      v5 = result;
      if ( result )
      {
        do
        {
          while ( 1 )
          {
            result = ItemInventory::IsItemEquippable((Character *)((char *)this + 892), v2);
            if ( result )
              break;
            if ( ++v2 == v5 )
              return result;
          }
          v6 = v2++;
          result = (*(int (__fastcall **)(Character *, unsigned int))(*(_DWORD *)this + 304))(this, v6);
        }
        while ( v2 != v5 );
      }
    }
  }
  return result;
}


// ===== 3b3a70 Character::_InitHpMp(void) =====
int __fastcall Character::_InitHpMp(Character *this)
{
  Character::RegenHP(this, -1);
  return Character::RegenMP(this, -1);
}


// ===== 3b3a90 Character::_InitSkillsSlots(void) =====
int __fastcall Character::_InitSkillsSlots(Character *this)
{
  int result; // r0

  result = Character::SG_HasSkillSlots(this);
  if ( !result )
  {
    Character::SG_SetSkillInSlot(this, 0, 0);
    ItemInventory::SwapEquipmentSet((Character *)((char *)this + 892));
    Character::SG_SetSkillInSlot(this, 0, 0);
    ItemInventory::SwapEquipmentSet((Character *)((char *)this + 892));
    result = Character::SG_GetSkillLevel(this, 0);
    if ( !result )
      return Character::IncSkill(this, 0, 0);
  }
  return result;
}


// ===== 3b3b00 Character::_InitSounds(void) =====
VoxSoundManager *__fastcall Character::_InitSounds(Character *this)
{
  _DWORD *CharSounds; // r4
  VoxSoundManager *result; // r0
  unsigned int v3; // r5
  unsigned int v4; // r5
  unsigned int v5; // r5
  unsigned int v6; // r5

  CharSounds = (_DWORD *)Character::GetCharSounds(this);
  result = (VoxSoundManager *)VoxSoundManager::s_instance;
  if ( VoxSoundManager::s_instance )
  {
    if ( CharSounds[3] )
    {
      v3 = 0;
      while ( 1 )
      {
        result = (VoxSoundManager *)VoxSoundManager::LoadSound(result, *(_DWORD *)(CharSounds[4] + 4 * v3++));
        if ( CharSounds[3] <= v3 )
          break;
        result = (VoxSoundManager *)VoxSoundManager::s_instance;
      }
    }
    if ( CharSounds[1] )
    {
      v4 = 0;
      do
        result = (VoxSoundManager *)VoxSoundManager::LoadSound(
                                      (VoxSoundManager *)VoxSoundManager::s_instance,
                                      *(_DWORD *)(CharSounds[2] + 4 * v4++));
      while ( CharSounds[1] > v4 );
    }
    if ( CharSounds[5] )
    {
      v5 = 0;
      do
        result = (VoxSoundManager *)VoxSoundManager::LoadSound(
                                      (VoxSoundManager *)VoxSoundManager::s_instance,
                                      *(_DWORD *)(CharSounds[6] + 4 * v5++));
      while ( CharSounds[5] > v5 );
    }
    if ( CharSounds[7] )
    {
      v6 = 0;
      do
        result = (VoxSoundManager *)VoxSoundManager::LoadSound(
                                      (VoxSoundManager *)VoxSoundManager::s_instance,
                                      *(_DWORD *)(CharSounds[8] + 4 * v6++));
      while ( CharSounds[7] > v6 );
    }
  }
  return result;
}


// ===== 3b3c08 `global constructor keyed to'.._.._sources_Game_Objects_Characters_Character_Initialization.cpp =====
int `global constructor keyed to'.._.._sources_Game_Objects_Characters_Character_Initialization.cpp()
{
  int result; // r0

  result = `guard variable for'Singleton<PlayerStatManager>::s_inst;
  dword_9A29DC = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9A29D8 = 1056964608;
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
    return _aeabi_atexit(
             (int)&Singleton<VisualFXManager>::s_inst,
             (int)VisualFXManager::~VisualFXManager,
             (int)&_dso_handle);
  }
  return result;
}


// ===== 3b3d38 Character::SafeGetCharPropsId(void) =====
int __fastcall Character::SafeGetCharPropsId(const char **this)
{
  int result; // r0
  int CharPropsTemplateId; // r0
  int v4; // r5
  unsigned int v5; // r1
  __int16 PlayerClass; // r0
  int v7; // r1
  signed int v8; // r6
  int v9; // r6
  int v10; // r5
  int v11; // r7
  const char *v12; // r8
  int v13; // r6
  int v14; // r5
  int v15; // r7

  if ( *((__int16 *)this + 2532) != -1 )
    return *((__int16 *)this + 2532);
  if ( (*((int (__fastcall **)(const char **))*this + 10))(this) )
  {
    Character::SG_Load((Character *)this, 1);
    PlayerClass = Character::SG_GetPlayerClass((Character *)this);
    v7 = PlayerClass;
    *((_WORD *)this + 2532) = PlayerClass;
    if ( PlayerClass == -1 )
    {
      v9 = Arrays::CharacterTable::size;
      if ( Arrays::CharacterTable::size )
      {
        v10 = 0;
        v11 = Arrays::CharacterTable::m_memberNames;
        while ( LC_API_STRCMP_0("KnightPlayerBase", *(const char **)(v11 + 4 * v10)) )
        {
          if ( ++v10 == v9 )
            goto LABEL_30;
        }
        v7 = (__int16)v10;
      }
      else
      {
LABEL_30:
        v7 = -1;
        LOWORD(v10) = -1;
      }
      *((_WORD *)this + 2532) = v10;
    }
    Character::SG_SetPlayerClass((Character *)this, v7);
    return *((__int16 *)this + 2532);
  }
  else if ( *(this + 1258) == *(this + 1259) )
  {
    v12 = *(this + 1265);
    if ( *(this + 1264) == v12 )
      return *((__int16 *)this + 2532);
    v13 = Arrays::CharacterTable::size;
    if ( Arrays::CharacterTable::size )
    {
      v14 = 0;
      v15 = Arrays::CharacterTable::m_memberNames;
      while ( LC_API_STRCMP_0(v12, *(const char **)(v15 + 4 * v14)) )
      {
        if ( ++v14 == v13 )
          goto LABEL_29;
      }
      result = (__int16)v14;
    }
    else
    {
LABEL_29:
      result = -1;
      LOWORD(v14) = -1;
    }
    *((_WORD *)this + 2532) = v14;
  }
  else
  {
    CharPropsTemplateId = Character::SafeGetCharPropsTemplateId((Character *)this);
    if ( CharPropsTemplateId < 0 )
      return *((__int16 *)this + 2532);
    v4 = Arrays::Charater_Templates::members + 12 * CharPropsTemplateId;
    v5 = *(_DWORD *)(v4 + 4);
    if ( !v5 )
      return *((__int16 *)this + 2532);
    Random::s_seed = (59051 * Random::s_seed + 177149) % 0xDAF26Bu;
    v8 = abs32(Random::s_seed % v5);
    ++Random::s_debugRandomCounters;
    if ( *(_DWORD *)(v4 + 4) <= v8 )
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
          "random >= 0 && random < (int)charTemplate.CharInfoSize",
          "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Objects\\Characters\\Character_Initialization.cpp",
          756);
      }
    }
    LOWORD(result) = *(_WORD *)(*(_DWORD *)(v4 + 8) + 8 * v8 + 4);
    *((_WORD *)this + 2532) = result;
    return (__int16)result;
  }
  return result;
}


// ===== 3b4010 POCharacter::POCharacter(PhysicalWorld *,GameObject *,bool,short,ushort,ushort,bool) [clone] =====
void __fastcall POCharacter::POCharacter(
        POCharacter *this,
        PhysicalWorld *a2,
        GameObject *a3,
        __int16 a4,
        unsigned __int16 a5,
        unsigned __int16 a6,
        bool a7,
        bool a8)
{
  PhysicalObject::PhysicalObject(this, a2, a3, 0, 1, 0, a7, a4, a5, a6, 0);
  *(_DWORD *)this = off_968F50;
  PhysicalObject::pin(this);
}


// ===== 3b4088 Character::InitPhysicalObject(void) =====
int __fastcall Character::InitPhysicalObject(Character *this)
{
  int v2; // r7
  PhysicalWorld *v3; // r8
  POCharacter *v4; // r6
  _DWORD *v5; // r3
  GameObject *v6; // r0
  _BOOL4 IsMonster; // r1
  bool v8; // r2
  PhysicalWorld *v9; // r10
  PhysicalObject *v10; // r8
  PhysicalWorld *v12; // r7
  PhysicalWorld *v13; // r7
  PhysicalWorld *v14; // r8
  POCharacter *v15; // r6
  PhysicalWorld *v16; // r8
  POCharacter *v17; // r7
  PhysicalWorld *v18; // r8
  bool v19; // [sp+Ch] [bp-18h]

  if ( Character::IsInvisibleMan(this) )
  {
    v12 = (PhysicalWorld *)dword_99F770;
    v4 = (POCharacter *)operator new(40, 0);
    POCharacter::POCharacter(v4, v12, this, 0, 256, 0, 0, v19);
    v5 = &`vtable for'POFaerie;
  }
  else
  {
    v2 = *((unsigned __int8 *)this + 132);
    if ( *((_BYTE *)this + 132) )
    {
      v9 = (PhysicalWorld *)dword_99F770;
      v10 = (PhysicalObject *)operator new(40, 0);
      PhysicalObject::PhysicalObject(v10, v9, this, 1, 0, 0, 0, 0, 2u, 0xFFFFu, 1);
      *(_DWORD *)v10 = off_968F88;
      return GameObject::SetPhysicalObject(this, v10, 1);
    }
    if ( Character::IsNPC(this) )
    {
      v3 = (PhysicalWorld *)dword_99F770;
      v4 = (POCharacter *)operator new(40, v2);
      POCharacter::POCharacter(v4, v3, this, -4, 1024, 0xD1Fu, v2, v19);
      v5 = &`vtable for'POVillager;
    }
    else
    {
      if ( (*(int (__fastcall **)(Character *))(*(_DWORD *)this + 40))(this) )
      {
        v14 = (PhysicalWorld *)dword_99F770;
        v15 = (POCharacter *)operator new(40, 0);
        POCharacter::POCharacter(v15, v14, this, -1, 4, 0xD7Fu, 1, v19);
        *(_DWORD *)v15 = off_9662A0;
        return GameObject::SetPhysicalObject(this, v15, 1);
      }
      if ( Character::IsFollower(this) || Character::IsSummoned(this) )
      {
        v13 = (PhysicalWorld *)dword_99F770;
        v4 = (POCharacter *)operator new(40, 0);
        POCharacter::POCharacter(v4, v13, this, -2, 8, 0xD3Bu, 0, v19);
        v5 = &`vtable for'POFollower;
      }
      else
      {
        if ( Character::IsFaerie(this) )
        {
          v16 = (PhysicalWorld *)dword_99F770;
          v17 = (POCharacter *)operator new(40, 0);
          POCharacter::POCharacter(v17, v16, this, 0, 256, 0, 0, v19);
          *(_DWORD *)v17 = off_966310;
          return GameObject::SetPhysicalObject(this, v17, 1);
        }
        IsMonster = Character::IsMonster(this);
        if ( !IsMonster )
        {
          v6 = this;
          v8 = 0;
          return GameObject::SetPhysicalObject(v6, (PhysicalObject *)IsMonster, v8);
        }
        v18 = (PhysicalWorld *)dword_99F770;
        v4 = (POCharacter *)operator new(40, 0);
        POCharacter::POCharacter(v4, v18, this, 2, 16, 0xD3Fu, 0, v19);
        v5 = &`vtable for'POMonster;
      }
    }
  }
  v6 = this;
  IsMonster = (_BOOL4)v4;
  v8 = 1;
  *(_DWORD *)v4 = *v5 + 8;
  return GameObject::SetPhysicalObject(v6, (PhysicalObject *)IsMonster, v8);
}


// ===== 3b43e0 POVillager::~POVillager() =====
void __fastcall POVillager::~POVillager(POVillager *this)
{
  *(_DWORD *)this = off_968F50;
  PhysicalObject::~PhysicalObject(this);
  CustomFree(this);
}


// ===== 3b441c POPlayer::~POPlayer() =====
void __fastcall POPlayer::~POPlayer(POPlayer *this)
{
  *(_DWORD *)this = off_968F50;
  PhysicalObject::~PhysicalObject(this);
  CustomFree(this);
}


// ===== 3b4458 POMonster::~POMonster() =====
void __fastcall POMonster::~POMonster(POMonster *this)
{
  *(_DWORD *)this = off_968F50;
  PhysicalObject::~PhysicalObject(this);
  CustomFree(this);
}


// ===== 3b4494 POFollower::~POFollower() =====
void __fastcall POFollower::~POFollower(POFollower *this)
{
  *(_DWORD *)this = off_968F50;
  PhysicalObject::~PhysicalObject(this);
  CustomFree(this);
}


// ===== 3b44d0 POFaerie::~POFaerie() =====
void __fastcall POFaerie::~POFaerie(POFaerie *this)
{
  *(_DWORD *)this = off_968F50;
  PhysicalObject::~PhysicalObject(this);
  CustomFree(this);
}


// ===== 3b450c std::priv::_Bvector_base<std::allocator<bool>>::_M_deallocate(void) =====
void __fastcall std::priv::_Bvector_base<std::allocator<bool>>::_M_deallocate(int a1)
{
  size_t v1; // r1

  if ( *(_DWORD *)a1 )
  {
    v1 = (*(_DWORD *)(a1 + 16) - *(_DWORD *)a1) & 0xFFFFFFFC;
    if ( v1 > 0x80 )
      CustomFree(*(void **)a1);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(*(void **)a1, v1);
  }
}


// ===== 3b453c std::allocator<uint>::allocate(uint,void const*) =====
void *__fastcall std::allocator<unsigned int>::allocate(int a1, unsigned int a2)
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


// ===== 3b459c std::vector<bool,std::allocator<bool>>::_M_initialize(uint) =====
char *__fastcall std::vector<bool>::_M_initialize(_DWORD *a1, int a2)
{
  int v2; // r7
  unsigned int v3; // r6
  char *result; // r0
  int v7; // r5
  char *v8; // r7
  char *v9; // r6

  v2 = a2 + 31;
  v3 = (unsigned int)(a2 + 31) >> 5;
  result = (char *)std::allocator<unsigned int>::allocate((int)(a1 + 4), v3);
  if ( a2 >= 0 )
    v2 = a2;
  v7 = a2 % 32;
  v8 = &result[4 * (v2 >> 5)];
  v9 = &result[4 * v3];
  if ( v7 < 0 )
  {
    v7 += 32;
    v8 -= 4;
  }
  a1[4] = v9;
  *a1 = result;
  a1[1] = 0;
  a1[2] = v8;
  a1[3] = v7;
  return result;
}


// ===== 3b4604 std::vector<bool,std::allocator<bool>>::operator=(std::vector<bool,std::allocator<bool>> const&) =====
int **__fastcall std::vector<bool>::operator=(int **a1, int **a2)
{
  int *v4; // r8
  int *v5; // r6
  int *v6; // r12
  int *v7; // lr
  int *v8; // r10
  int *v9; // r7
  int *v10; // r12
  int *v11; // r0
  int v12; // r3
  int v13; // r1
  int v14; // r3
  int v15; // r1
  int *v17[2]; // [sp+14h] [bp-28h] BYREF
  int *v18[6]; // [sp+1Ch] [bp-20h] BYREF

  if ( a2 != a1 )
  {
    v4 = a2[3];
    v5 = a2[1];
    v6 = a2[2];
    v7 = *a2;
    v8 = *a1;
    v9 = a1[1];
    if ( (char *)v4 - (char *)v5 + 8 * ((char *)v6 - (char *)*a2) > (unsigned int)(8 * ((char *)a1[4] - (char *)*a1)
                                                                                 - (_DWORD)v9) )
    {
      std::priv::_Bvector_base<std::allocator<bool>>::_M_deallocate((int)a1);
      std::vector<bool>::_M_initialize(a1, (char *)a2[3] - (char *)a2[1] + 8 * ((char *)a2[2] - (char *)*a2));
      v4 = a2[3];
      v9 = a1[1];
      v7 = *a2;
      v5 = a2[1];
      v6 = a2[2];
      v8 = *a1;
    }
    v17[1] = v9;
    v18[2] = v6;
    v17[0] = v8;
    v18[5] = v5;
    v18[4] = v7;
    v18[3] = v4;
    std::priv::__copy_aux<std::priv::_Bit_iter<bool,bool const*>,std::priv::_Bit_iter<std::priv::_Bit_reference,std::priv::_Bit_reference*>>(
      v18,
      v7,
      (int)v5,
      (int)v6,
      (int)v4,
      v17);
    v10 = a2[3];
    v11 = a2[1];
    v12 = (char *)a1[1] + (_DWORD)v10 - (char *)v11 + 8 * ((char *)a2[2] - (char *)*a2);
    v13 = v12 + 31;
    if ( v12 >= 0 )
      v13 = (char *)a1[1] + (_DWORD)v10 - (char *)v11 + 8 * ((char *)a2[2] - (char *)*a2);
    v14 = v12 % 32;
    v15 = (int)&(*a1)[v13 >> 5];
    if ( v14 < 0 )
    {
      v14 += 32;
      v15 -= 4;
    }
    a1[3] = (int *)v14;
    a1[2] = (int *)v15;
  }
  return a1;
}


// ===== 3b4738 Character::RegisterCharacterFXTable(void) =====
void __fastcall Character::RegisterCharacterFXTable(Character *this)
{
  int FXFootprint; // r10
  int FXBlood; // r9
  int FXBloodDeath; // r8
  std::string v5; // [sp+4h] [bp-1Ch] BYREF

  FXFootprint = Character::GetFXFootprint(this);
  FXBlood = Character::GetFXBlood(this);
  FXBloodDeath = Character::GetFXBloodDeath(this);
  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string((int)&v5, "isTracingChar_Init");
  DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v5);
  std::string::~string(&v5);
  if ( FXFootprint >= 0 )
    VisualFXManager::RegisterFXSetToLoad((VisualFXManager *)&Singleton<VisualFXManager>::s_inst, FXFootprint);
  if ( FXBlood >= 0 )
    VisualFXManager::RegisterFXSetToLoad((VisualFXManager *)&Singleton<VisualFXManager>::s_inst, FXBlood);
  if ( FXBloodDeath >= 0 )
    VisualFXManager::RegisterFXSetToLoad((VisualFXManager *)&Singleton<VisualFXManager>::s_inst, FXBloodDeath);
}


// ===== 3b4834 Character::InitLightSetAndMaterial(void) =====
void __fastcall Character::InitLightSetAndMaterial(Character *this)
{
  LightSetManager *v2; // r10
  int LightSetIdFromName; // r10
  size_t v4; // r1
  int v5; // [sp+Ch] [bp-30h]
  int v6; // [sp+10h] [bp-2Ch]
  int v7; // [sp+14h] [bp-28h]
  std::string v8; // [sp+1Ch] [bp-20h] BYREF
  std::string v9; // 0:r1.12,12:^0.12 BYREF

  if ( *((_DWORD *)this + 182) )
  {
    v7 = 0;
    v9._M_finish = nullptr;
    v9._M_start_of_storage._M_data = nullptr;
    v5 = 0;
    v6 = 0;
    LightSetManager::InitLightFilter(*(_DWORD *)(dword_99F73C + 28) + 660, &v9._M_finish, 1);
    v2 = (LightSetManager *)(*(_DWORD *)(dword_99F73C + 28) + 660);
    std::string::string((int)&v8, "MonsterLight");
    v9._M_buffers._M_end_of_storage = (char *)&v8;
    LightSetIdFromName = LightSetManager::GetLightSetIdFromName(v2, v9);
    std::string::~string(&v8);
    *(_DWORD *)(*((_DWORD *)this + 182) + 64) = LightSetIdFromName;
    std::vector<bool>::operator=(*((_DWORD *)this + 182) + 68, &v9._M_finish);
    VisualObject::ApplyLightSet(*((VisualObject **)this + 182));
    VisualObject::ApplyMaterial(*((VisualObject **)this + 182));
    VisualObject::ApplyMaterialBaseParam(*((VisualObject **)this + 182));
    VisualObject::ApplyShadowMaterial(*((VisualObject **)this + 182));
    VisualObject::ApplyXrayMaterial(*((VisualObject **)this + 182));
    if ( v9._M_finish )
    {
      v4 = (v7 - (unsigned int)v9._M_finish) & 0xFFFFFFFC;
      if ( v4 > 0x80 )
        CustomFree(v9._M_finish);
      else
        __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v9._M_finish, v4);
    }
  }
}


// ===== 3b4978 Character::InitFinal(void) =====
GameObject *__fastcall Character::InitFinal(GameObject *this)
{
  GameObject *v1; // r5
  GameObject *v2; // r7
  float *TargetPosition; // r0
  std::string *v4; // r7
  char *v5; // r1
  int v6; // r8
  int LightSetIdFromName; // r8
  int Int; // r0
  char v9; // [sp+14h] [bp-34h] BYREF
  char v10; // [sp+2Ch] [bp-1Ch] BYREF
  std::string v11; // 0:r1.12,12:^0.12 BYREF

  v1 = this;
  if ( !*((_BYTE *)this + 5013) )
  {
    *((_BYTE *)this + 5013) = 1;
    this = (GameObject *)GameObject::CheckSpawnProbability(this);
    if ( (int)this < *((_DWORD *)v1 + 157) )
    {
      GameObject::InitFinal(v1);
      if ( Character::IsFaerie(v1) || Character::IsFollower(v1) )
      {
        v2 = *(GameObject **)(PlayerManager::GetLocalPlayer((PlayerManager *)dword_99F76C, 0, 1) + 1632);
        memset(&v11._M_buffers._M_static_buf[12], 0, 12);
        if ( v2 )
        {
          GameObject::GetLookAtVec(v2, &v11._M_buffers._M_static_buf[12]);
          TargetPosition = (float *)GameObject::GetTargetPosition(v2);
          *(float *)&v11._M_buffers._M_static_buf[12] = *(float *)&v11._M_buffers._M_static_buf[12] + *TargetPosition;
          *(float *)&v11._M_finish = *(float *)&v11._M_finish + TargetPosition[1];
          *(float *)&v11._M_start_of_storage._M_data = *(float *)&v11._M_start_of_storage._M_data + TargetPosition[2];
          GameObject::SetPosition(v1);
        }
      }
      if ( *((_DWORD *)v1 + 182) )
      {
        if ( (*(int (__fastcall **)(GameObject *))(*(_DWORD *)v1 + 40))(v1) )
        {
          v4 = (std::string *)&v10;
          v5 = "SceneLight";
        }
        else
        {
          v4 = (std::string *)&v9;
          v5 = "MonsterLight";
        }
        v6 = *(_DWORD *)(dword_99F73C + 28);
        std::string::string((int)v4, v5);
        v11._M_buffers._M_end_of_storage = (char *)v4;
        LightSetIdFromName = LightSetManager::GetLightSetIdFromName((LightSetManager *)(v6 + 660), v11);
        std::string::~string(v4);
        *(_DWORD *)(*((_DWORD *)v1 + 182) + 64) = LightSetIdFromName;
      }
      (*(void (__fastcall **)(int))(*((_DWORD *)v1 + 242) + 16))((int)v1 + 968);
      this = (GameObject *)(*(int (__fastcall **)(GameObject *))(*(_DWORD *)v1 + 40))(v1);
      if ( this )
      {
        this = (GameObject *)PlayerManager::IsLocalPlayer((PlayerManager *)dword_99F76C, v1);
        if ( this )
        {
          CharAI::UpdateAllSkills((GameObject *)((char *)v1 + 968));
          CharProperties::RecalcProperties((GameObject *)((char *)v1 + 1376), 1);
          Int = CharProperties::PROPS_GetInt((GameObject *)((char *)v1 + 1376), 194, 0);
          *((_BYTE *)v1 + 936) = Int & ~(unsigned __int8)(Int >> 31);
          return (GameObject *)Character::SG_Save(v1);
        }
      }
    }
  }
  return this;
}


// ===== 3b4bc4 Character::InitCam(void) =====
int __fastcall Character::InitCam(Character *this)
{
  int Switch; // r7
  AnchorBase *v3; // r7
  int Constant; // r9
  int v6; // r11
  int v7; // r8
  std::string v8; // [sp+Ch] [bp-20h] BYREF

  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string((int)&v8, "UseStaticCamera");
  Switch = DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v8);
  std::string::~string(&v8);
  if ( Switch )
  {
    v3 = (AnchorBase *)operator new(28, 0);
    AnchorBase::AnchorBase(v3);
  }
  else
  {
    Constant = PyDataConstants::getConstant(
                 (PyDataConstants *)dword_99F758,
                 "CharacterDesign",
                 "ForwardCamera_Max_Distance");
    v6 = PyDataConstants::getConstant(
           (PyDataConstants *)dword_99F758,
           "CharacterDesign",
           "ForwardCamera_Distance_PerSec");
    v7 = PyDataConstants::getConstant((PyDataConstants *)dword_99F758, "CharacterDesign", "ForwardCamera_Threshold");
    v3 = (AnchorBase *)operator new(100, 0);
    AnchorForward::AnchorForward((int)v3, (int)this, (float)Constant, (float)v6, COERCE_INT((float)v7 * 0.01));
  }
  return GameObject::SetCameraAnchorObject(this, v3);
}


// ===== 3b4d60 Character::InitPost(void) =====
void __fastcall Character::InitPost(Character *this)
{
  const char *v1; // r7
  char *v3; // r2
  GameObject *v4; // r1
  __int16 v5; // r1
  char *v6; // r7
  const char *CharModelName; // r0
  const char *v8; // r8
  size_t v9; // r0
  int v10; // r8
  int v11; // r8
  int v12; // r3
  int CurrentLevel; // r0
  int Int; // r0
  int v15; // r0
  int v16; // r9
  int v17; // r10
  int v18; // r8
  int v19; // r7
  int v20; // r1
  int v21; // r8
  int v22; // r7
  _DWORD *v23; // r3
  AnimatedFX *v24; // r0
  int v25; // r12
  int v26; // r2
  int Animator; // r0
  int v28; // r0
  VisualObject *v29; // r0
  int v30; // r1
  int v31; // r2
  Character *v32; // r1
  PlayerSavegame *v33; // r0
  AnimatedFX *v34; // r0
  int v35; // r0
  int v36; // r0
  int v37; // [sp+14h] [bp-E8h]
  char *v38; // [sp+14h] [bp-E8h]
  _BYTE v39[12]; // [sp+24h] [bp-D8h] BYREF
  std::string v40; // [sp+4Ch] [bp-B0h] BYREF
  std::string v41; // [sp+64h] [bp-98h] BYREF
  std::string v42; // [sp+7Ch] [bp-80h] BYREF
  std::string v43; // [sp+94h] [bp-68h] BYREF
  std::string v44; // [sp+ACh] [bp-50h] BYREF
  std::string v45; // [sp+C4h] [bp-38h] BYREF
  std::string v46; // [sp+DCh] [bp-20h] BYREF

  v1 = (const char *)*((unsigned __int8 *)this + 5012);
  if ( !*((_BYTE *)this + 5012) )
  {
    *((_BYTE *)this + 5012) = 1;
    if ( GameObject::CheckSpawnProbability(this) < *((_DWORD *)this + 157) )
    {
      DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
      std::string::string((int)&v46, "isTracingChar_Init");
      DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v46);
      std::string::~string(&v46);
      v3 = *((char **)this + 1279);
      if ( *((char **)this + 1278) != v3 )
      {
        ObjectManager::GetObjectByName((ObjectManager *)v39, (const char *)dword_99F764, v3, *((_DWORD *)this + 25), v1);
        if ( ObjectHandle::GetObject((ObjectHandle *)v39, (bool)v1) )
        {
          v4 = (GameObject *)ObjectHandle::operator GameObject *(v39);
          if ( v4 )
            v2Controller::Cmd_MoveTo(*((v2Controller **)this + 222), v4);
        }
      }
      Character::SafeGetCharPropsId((const char **)this);
      if ( *((__int16 *)this + 2532) == -1 )
      {
        v5 = -1;
      }
      else
      {
        DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
        std::string::string((int)&v45, "isTracingChar_Init");
        DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v45);
        std::string::~string(&v45);
        v5 = *((_WORD *)this + 2532);
      }
      v6 = (char *)this + 1376;
      CharProperties::LoadBaseProperties((Character *)((char *)this + 1376), v5);
      CharProperties::RecalcProperties((Character *)((char *)this + 1376), 1);
      CharModelName = (const char *)Character::GetCharModelName(this);
      v8 = CharModelName;
      if ( CharModelName )
      {
        v9 = LC_API_STRLEN_0(CharModelName);
        std::string::_M_assign((std::string *const)((char *)this + 656), v8, &v8[v9]);
      }
      DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
      std::string::string((int)&v44, "isTracingChar_Init");
      DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v44);
      std::string::~string(&v44);
      *((float *)this + 72) = (float)*((int *)this + 359) * 0.009;
      *((float *)this + 73) = (float)*((int *)this + 360) * 0.009;
      *((float *)this + 74) = (float)*((int *)this + 361) * 0.01;
      GameObject::InitPost(this);
      if ( GameObject::MeetCondition(this) )
      {
        Character::SG_Load(this, 2);
        v10 = Arrays::AITable::members;
        v11 = v10 + 68 * Character::GetCharAIId(this);
        if ( ((*(int (__fastcall **)(Character *))(*(_DWORD *)this + 40))(this) || !*(_BYTE *)(v11 + 16))
          && (!(*(int (__fastcall **)(Character *))(*(_DWORD *)this + 40))(this)
           || PlayerManager::IsLocalPlayer((PlayerManager *)dword_99F76C, this)) )
        {
          CharAI::LoadScriptProcess((Character *)((char *)this + 968));
        }
        else
        {
          *((_BYTE *)this + 1004) = 1;
        }
        *((_DWORD *)this + 1313) = VisualFXManager::GrabAnimFX(
                                     (VisualFXManager *)&Singleton<VisualFXManager>::s_inst,
                                     *((_DWORD *)this + 1314) + *(_DWORD *)(v11 + 48),
                                     this);
        Character::RegisterCharacterFXTable(this);
        DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
        std::string::string((int)&v43, "isTracingChar_Init");
        DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v43);
        std::string::~string(&v43);
        CharAnimator::SetAnimationSet((Character *)((char *)this + 1180));
        DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
        std::string::string((int)&v42, "isTracingChar_Init");
        DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v42);
        std::string::~string(&v42);
        Character::_InitSounds(this);
        DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
        std::string::string((int)&v41, "isTracingChar_Init");
        DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v41);
        std::string::~string(&v41);
        if ( (*(int (__fastcall **)(Character *))(*(_DWORD *)this + 40))(this) )
        {
          v12 = *((_DWORD *)this + 182);
          if ( v12 )
            glitch::scene::ISceneNode::setAutomaticCulling(*(_DWORD *)(v12 + 8), 0);
          Character::SG_Load(this, 4);
          CurrentLevel = Application::GetCurrentLevel((Application *)&Singleton<Application>::s_inst);
          if ( CurrentLevel )
            Character::SG_SetGameDifficulty(this, *(_DWORD *)(CurrentLevel + 280));
          if ( PlayerManager::IsLocalPlayer((PlayerManager *)dword_99F76C, this) )
          {
            Character::_InitEquipment(this);
            CharProperties::ResetGearsProperties((Character *)((char *)this + 1376));
            v33 = *((PlayerSavegame **)this + 1338);
            if ( v33 )
              PlayerSavegame::SG_TryQuestSync(v33);
          }
          CharProperties::LoadBaseProperties((Character *)((char *)this + 1376), *((__int16 *)this + 2532));
          CharProperties::LoadGearsProperties((Character *)((char *)this + 1376));
          CharProperties::RecalcProperties((Character *)((char *)this + 1376), 1);
          if ( PlayerManager::IsLocalPlayer((PlayerManager *)dword_99F76C, this) )
            Character::_InitSkillsSlots(this);
          *((_DWORD *)this + 233) = 999999999;
          Int = CharProperties::PROPS_GetInt((Character *)((char *)this + 1376), 194, 0);
          *((_BYTE *)this + 936) = Int & ~(Int >> 31);
          if ( -1431655765 * ((dword_9A1CF4 - dword_9A1CF0) >> 3) )
          {
            v15 = operator new[](36, 0);
            *((_DWORD *)this + 1317) = v15;
            v16 = v15;
            v17 = Arrays::AnimatedEffectTable::size;
            if ( Arrays::AnimatedEffectTable::size )
            {
              v18 = 0;
              v37 = v15;
              v19 = Arrays::AnimatedEffectTable::m_memberNames;
              do
              {
                if ( !LC_API_STRCMP_0("target_circle_00_chest", *(const char **)(v19 + 4 * v18)) )
                {
                  v16 = v37;
                  v6 = (char *)this + 1376;
                  v20 = v18;
                  goto LABEL_33;
                }
                ++v18;
              }
              while ( v18 != v17 );
              v16 = v37;
              v6 = (char *)this + 1376;
            }
            v20 = -1;
LABEL_33:
            v38 = v6;
            v21 = 0;
            v22 = v20;
            while ( 1 )
            {
              *(_DWORD *)(v16 + 4 * v21) = VisualFXManager::GrabAnimFX(
                                             (VisualFXManager *)&Singleton<VisualFXManager>::s_inst,
                                             v22 + v21,
                                             nullptr);
              v23 = *(_DWORD **)(*((_DWORD *)this + 1317) + 4 * v21);
              if ( v23 )
              {
                v24 = *(AnimatedFX **)(*((_DWORD *)this + 1317) + 4 * v21);
                v25 = dword_99F858;
                v26 = dword_99F85C;
                v23[13] = Vec3f_Origin;
                v23[14] = v25;
                v23[15] = v26;
                AnimatedFX::SyncIrrData(v24, 0);
                AnimatedFX::SetVisible(*(AnimatedFX **)(*((_DWORD *)this + 1317) + 4 * v21), 0);
                Animator = AnimatedFX::GetAnimator(*(AnimatedFX **)(*((_DWORD *)this + 1317) + 4 * v21));
                v28 = (*(int (__fastcall **)(int))(*(_DWORD *)Animator + 68))(Animator);
                (*(void (__fastcall **)(int, int))(*(_DWORD *)v28 + 64))(v28, 1);
              }
              if ( ++v21 == 9 )
                break;
              v16 = *((_DWORD *)this + 1317);
            }
            v6 = v38;
            if ( PlayerManager::IsLocalPlayer((PlayerManager *)dword_99F76C, this) )
            {
              v34 = (AnimatedFX *)VisualFXManager::GrabAnimFX(
                                    (VisualFXManager *)&Singleton<VisualFXManager>::s_inst,
                                    *(_DWORD *)(Arrays::DesignSettingsTable::members + 136),
                                    nullptr);
              *((_DWORD *)this + 1319) = v34;
              if ( v34 )
              {
                *((_DWORD *)v34 + 15) = 0;
                *((_DWORD *)v34 + 13) = 0;
                *((_DWORD *)v34 + 14) = 0;
                AnimatedFX::SyncIrrData(v34, 0);
                AnimatedFX::SetVisible(*((AnimatedFX **)this + 1319), 0);
                v35 = AnimatedFX::GetAnimator(*((AnimatedFX **)this + 1319));
                v36 = (*(int (__fastcall **)(int))(*(_DWORD *)v35 + 68))(v35);
                (*(void (__fastcall **)(int, int))(*(_DWORD *)v36 + 64))(v36, 1);
              }
            }
            Character::AddMultiplayerHighlight(this);
          }
        }
        *((float *)this + 1296) = (float)CharProperties::_GetProperty(v6, (char *)this + 4084, 210);
        *((float *)this + 1297) = (float)CharProperties::_GetProperty(v6, (char *)this + 4084, 211);
        Character::SetInitialPosition(this, (char *)this + 352);
        GameObject::SetPosition(this);
        v29 = *((VisualObject **)this + 182);
        v30 = *((_DWORD *)this + 92);
        v31 = *((_DWORD *)this + 93);
        *((_DWORD *)this + 1303) = *((_DWORD *)this + 91);
        *((_DWORD *)this + 1304) = v30;
        *((_DWORD *)this + 1305) = v31;
        if ( v29 )
          VisualObject::ApplyMeshBox(v29);
        Character::Revive(this, nullptr, 1);
        Character::_InitHpMp(this);
        v32 = (Character *)*((unsigned __int8 *)this + 1004);
        if ( !*((_BYTE *)this + 1004) )
          CharAI::InitScriptProcess((Character *)((char *)this + 968), (bool)v32);
        CharAI::AddToGroup(this, v32);
        DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
        std::string::string((int)&v40, "isTracingChar_Init");
        DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v40);
        std::string::~string(&v40);
      }
      else
      {
        (*(void (__fastcall **)(Character *))(*(_DWORD *)this + 64))(this);
        ObjectBase::Delete(this);
      }
    }
  }
}


// ===== 3b55d4 CharProperties::PROPS_GetFromSheet(int,Structs::CharacterProperties *) =====
int __fastcall CharProperties::PROPS_GetFromSheet(CharProperties *this, int a2, Structs::CharacterProperties *a3)
{
  if ( a3 )
    return CharProperties::_GetProperty((int)this, (int)a3, a2);
  if ( gAssertLevel == 2 )
  {
    *(_DWORD *)a3 = a3;
  }
  else if ( gAssertLevel == 1 )
  {
    fprintf(
      (FILE *)&_sF + 2,
      "ASSERT(%s) FAILED: %s:%d\n",
      "sheet",
      "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Objects\\Characters\\/AI/../Properties/CharProperties.h",
      311);
  }
  return -1;
}


// ===== 3b5678 Character::_ClearMaster(sfc::script::lua::Arguments const&,sfc::script::lua::ReturnValues &,void *) =====
int __fastcall Character::_ClearMaster(
        Character *this,
        const sfc::script::lua::Arguments *a2,
        sfc::script::lua::ReturnValues *a3,
        void *a4)
{
  return CharAI::AI_SetMaster((int)a3 + 968, nullptr);
}


// ===== 3b5684 Character::_LookAtTarget(sfc::script::lua::Arguments const&,sfc::script::lua::ReturnValues &,void *) =====
int __fastcall Character::_LookAtTarget(
        Character *this,
        const sfc::script::lua::Arguments *a2,
        GameObject **a3,
        void *a4)
{
  return GameObject::LookAt((int)a3, a3[258]);
}


// ===== 3b5690 Character::_ClearTarget(sfc::script::lua::Arguments const&,sfc::script::lua::ReturnValues &,void *) =====
int __fastcall Character::_ClearTarget(
        Character *this,
        const sfc::script::lua::Arguments *a2,
        sfc::script::lua::ReturnValues *a3,
        void *a4)
{
  CharAI *v4; // r4

  v4 = (sfc::script::lua::ReturnValues *)((char *)a3 + 968);
  CharAI::AI_SetTarget((sfc::script::lua::ReturnValues *)((char *)a3 + 968), nullptr, 0);
  return CharAI::AI_SyncLastTarget(v4);
}


// ===== 3b56b4 Character::_Stop(sfc::script::lua::Arguments const&,sfc::script::lua::ReturnValues &,void *) =====
int __fastcall Character::_Stop(
        Character *this,
        const sfc::script::lua::Arguments *a2,
        sfc::script::lua::ReturnValues *a3,
        void *a4)
{
  return v2Controller::Cmd_Stop(*((_DWORD *)a3 + 222));
}


// ===== 3b56bc Character::createBindings(sfc::script::lua::Binder &) =====
int __fastcall Character::createBindings(Character *this, sfc::script::lua::Binder *a2)
{
  GameObject::createBindings(this, a2);
  sfc::script::lua::Binder::bindFunction(
    a2,
    "SetActorPosition",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))GameObject::_SetPosition,
    this);
  sfc::script::lua::Binder::bindMethod(
    (int)a2,
    "SetActorPosition",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))GameObject::_SetPosition);
  sfc::script::lua::Binder::bindFunction(
    a2,
    "RotateBy",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))Character::_RotateBy,
    this);
  sfc::script::lua::Binder::bindMethod(
    (int)a2,
    "RotateBy",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))Character::_RotateBy);
  sfc::script::lua::Binder::bindFunction(
    a2,
    "LookAt",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))Character::_LookAt,
    this);
  sfc::script::lua::Binder::bindMethod(
    (int)a2,
    "LookAt",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))Character::_LookAt);
  sfc::script::lua::Binder::bindFunction(
    a2,
    "Stop",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))Character::_Stop,
    this);
  sfc::script::lua::Binder::bindMethod(
    (int)a2,
    "Stop",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))Character::_Stop);
  sfc::script::lua::Binder::bindFunction(
    a2,
    "HeadTo",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))Character::_HeadTo,
    this);
  sfc::script::lua::Binder::bindMethod(
    (int)a2,
    "HeadTo",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))Character::_HeadTo);
  sfc::script::lua::Binder::bindFunction(
    a2,
    "MoveTo",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))Character::_MoveTo,
    this);
  sfc::script::lua::Binder::bindMethod(
    (int)a2,
    "MoveTo",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))Character::_MoveTo);
  sfc::script::lua::Binder::bindFunction(
    a2,
    "WarpTo",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))Character::_WarpTo,
    this);
  sfc::script::lua::Binder::bindMethod(
    (int)a2,
    "WarpTo",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))Character::_WarpTo);
  sfc::script::lua::Binder::bindFunction(
    a2,
    "WarpBehind",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))Character::_WarpBehind,
    this);
  sfc::script::lua::Binder::bindMethod(
    (int)a2,
    "WarpBehind",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))Character::_WarpBehind);
  sfc::script::lua::Binder::bindFunction(
    a2,
    "Flee",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))Character::_Flee,
    this);
  sfc::script::lua::Binder::bindMethod(
    (int)a2,
    "Flee",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))Character::_Flee);
  sfc::script::lua::Binder::bindFunction(
    a2,
    "Attack",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))Character::_Attack,
    this);
  sfc::script::lua::Binder::bindMethod(
    (int)a2,
    "Attack",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))Character::_Attack);
  sfc::script::lua::Binder::bindFunction(
    a2,
    "DoSkill",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))Character::_DoSkill,
    this);
  sfc::script::lua::Binder::bindMethod(
    (int)a2,
    "DoSkill",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))Character::_DoSkill);
  sfc::script::lua::Binder::bindFunction(
    a2,
    "BeginSkill",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))Character::_BeginSkill,
    this);
  sfc::script::lua::Binder::bindMethod(
    (int)a2,
    "BeginSkill",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))Character::_BeginSkill);
  sfc::script::lua::Binder::bindFunction(
    a2,
    "EndSkill",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))Character::_EndSkill,
    this);
  sfc::script::lua::Binder::bindMethod(
    (int)a2,
    "EndSkill",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))Character::_EndSkill);
  sfc::script::lua::Binder::bindFunction(
    a2,
    "Kill",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))Character::_Kill,
    this);
  sfc::script::lua::Binder::bindMethod(
    (int)a2,
    "Kill",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))Character::_Kill);
  sfc::script::lua::Binder::bindFunction(
    a2,
    "GetCharAIFlags",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))Character::_GetCharAIFlags,
    this);
  sfc::script::lua::Binder::bindMethod(
    (int)a2,
    "GetCharAIFlags",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))Character::_GetCharAIFlags);
  sfc::script::lua::Binder::bindFunction(
    a2,
    "HasAggro",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))Character::_HasAggro,
    this);
  sfc::script::lua::Binder::bindMethod(
    (int)a2,
    "HasAggro",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))Character::_HasAggro);
  sfc::script::lua::Binder::bindFunction(
    a2,
    "AddAggro",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))Character::_AddAggro,
    this);
  sfc::script::lua::Binder::bindMethod(
    (int)a2,
    "AddAggro",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))Character::_AddAggro);
  sfc::script::lua::Binder::bindFunction(
    a2,
    "ClearAggro",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))Character::_ClearAggro,
    this);
  sfc::script::lua::Binder::bindMethod(
    (int)a2,
    "ClearAggro",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))Character::_ClearAggro);
  sfc::script::lua::Binder::bindFunction(
    a2,
    "HasTarget",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))Character::_HasTarget,
    this);
  sfc::script::lua::Binder::bindMethod(
    (int)a2,
    "HasTarget",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))Character::_HasTarget);
  sfc::script::lua::Binder::bindFunction(
    a2,
    "GetTarget",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))Character::_GetTarget,
    this);
  sfc::script::lua::Binder::bindMethod(
    (int)a2,
    "GetTarget",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))Character::_GetTarget);
  sfc::script::lua::Binder::bindFunction(
    a2,
    "SetTarget",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))Character::_SetTarget,
    this);
  sfc::script::lua::Binder::bindMethod(
    (int)a2,
    "SetTarget",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))Character::_SetTarget);
  sfc::script::lua::Binder::bindFunction(
    a2,
    "ClearTarget",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))Character::_ClearTarget,
    this);
  sfc::script::lua::Binder::bindMethod(
    (int)a2,
    "ClearTarget",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))Character::_ClearTarget);
  sfc::script::lua::Binder::bindFunction(
    a2,
    "SetIsActorTargetable",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))Character::_SetIsTargetable,
    this);
  sfc::script::lua::Binder::bindMethod(
    (int)a2,
    "SetIsActorTargetable",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))Character::_SetIsTargetable);
  sfc::script::lua::Binder::bindFunction(
    a2,
    "SetIsTargetable",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))Character::_SetIsTargetable,
    this);
  sfc::script::lua::Binder::bindMethod(
    (int)a2,
    "SetIsTargetable",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))Character::_SetIsTargetable);
  sfc::script::lua::Binder::bindFunction(
    a2,
    "LookAtTarget",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))Character::_LookAtTarget,
    this);
  sfc::script::lua::Binder::bindMethod(
    (int)a2,
    "LookAtTarget",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))Character::_LookAtTarget);
  sfc::script::lua::Binder::bindFunction(
    a2,
    "TargetInMeleeRange",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))Character::_TargetInMeleeRange,
    this);
  sfc::script::lua::Binder::bindMethod(
    (int)a2,
    "TargetInMeleeRange",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))Character::_TargetInMeleeRange);
  sfc::script::lua::Binder::bindFunction(
    a2,
    "HasMaster",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))Character::_HasMaster,
    this);
  sfc::script::lua::Binder::bindMethod(
    (int)a2,
    "HasMaster",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))Character::_HasMaster);
  sfc::script::lua::Binder::bindFunction(
    a2,
    "IsMasterHostPlayer",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))Character::_IsMasterHostPlayer,
    this);
  sfc::script::lua::Binder::bindMethod(
    (int)a2,
    "IsMasterHostPlayer",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))Character::_IsMasterHostPlayer);
  sfc::script::lua::Binder::bindFunction(
    a2,
    "GetMaster",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))Character::_GetMaster,
    this);
  sfc::script::lua::Binder::bindMethod(
    (int)a2,
    "GetMaster",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))Character::_GetMaster);
  sfc::script::lua::Binder::bindFunction(
    a2,
    "SetMaster",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))Character::_SetMaster,
    this);
  sfc::script::lua::Binder::bindMethod(
    (int)a2,
    "SetMaster",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))Character::_SetMaster);
  sfc::script::lua::Binder::bindFunction(
    a2,
    "ClearMaster",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))Character::_ClearMaster,
    this);
  sfc::script::lua::Binder::bindMethod(
    (int)a2,
    "ClearMaster",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))Character::_ClearMaster);
  sfc::script::lua::Binder::bindFunction(
    a2,
    "GetSkillIDFromOID",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))Character::_GetSkillIDFromOID,
    this);
  sfc::script::lua::Binder::bindMethod(
    (int)a2,
    "GetSkillIDFromOID",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))Character::_GetSkillIDFromOID);
  sfc::script::lua::Binder::bindFunction(
    a2,
    "GetCurrentSkillInfo__",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))Character::_GetCurrentSkillInfo,
    this);
  sfc::script::lua::Binder::bindMethod(
    (int)a2,
    "GetCurrentSkillInfo__",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))Character::_GetCurrentSkillInfo);
  sfc::script::lua::Binder::bindFunction(
    a2,
    "GetCurrentSpellInfo",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))Character::_GetCurrentSpellInfo,
    this);
  sfc::script::lua::Binder::bindMethod(
    (int)a2,
    "GetCurrentSpellInfo",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))Character::_GetCurrentSpellInfo);
  sfc::script::lua::Binder::bindFunction(
    a2,
    "GetCurrentEquippedFaeryId",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))Character::_GetCurrentEquippedFaeryId,
    this);
  sfc::script::lua::Binder::bindMethod(
    (int)a2,
    "GetCurrentEquippedFaeryId",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))Character::_GetCurrentEquippedFaeryId);
  sfc::script::lua::Binder::bindFunction(
    a2,
    "GetCurrentEquippedFaeryLevel",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))Character::_GetCurrentEquippedFaeryLevel,
    this);
  sfc::script::lua::Binder::bindMethod(
    (int)a2,
    "GetCurrentEquippedFaeryLevel",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))Character::_GetCurrentEquippedFaeryLevel);
  sfc::script::lua::Binder::bindFunction(
    a2,
    "GetEquippedFaeryElement",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))Character::_GetEquippedFaeryElement,
    this);
  sfc::script::lua::Binder::bindMethod(
    (int)a2,
    "GetEquippedFaeryElement",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))Character::_GetEquippedFaeryElement);
  sfc::script::lua::Binder::bindFunction(
    a2,
    "SpawnSkillProjectile__",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))Character::_SpawnSkillProjectile,
    this);
  sfc::script::lua::Binder::bindMethod(
    (int)a2,
    "SpawnSkillProjectile__",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))Character::_SpawnSkillProjectile);
  sfc::script::lua::Binder::bindFunction(
    a2,
    "SetProjectileTarget",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))Character::_SetProjectileTarget,
    nullptr);
  sfc::script::lua::Binder::bindFunction(
    a2,
    "EnableSpotTargeting",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))Character::_EnableSpotTargeting,
    this);
  sfc::script::lua::Binder::bindMethod(
    (int)a2,
    "EnableSpotTargeting",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))Character::_EnableSpotTargeting);
  sfc::script::lua::Binder::bindFunction(
    a2,
    "GetSpotTarget",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))Character::_GetSpotTarget,
    this);
  sfc::script::lua::Binder::bindMethod(
    (int)a2,
    "GetSpotTarget",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))Character::_GetSpotTarget);
  sfc::script::lua::Binder::bindFunction(
    a2,
    "StopSkill__",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))Character::_StopSkill,
    this);
  sfc::script::lua::Binder::bindMethod(
    (int)a2,
    "StopSkill__",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))Character::_StopSkill);
  sfc::script::lua::Binder::bindFunction(
    a2,
    "SkillCombatRoll__",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))Character::_SkillCombatRoll,
    this);
  sfc::script::lua::Binder::bindMethod(
    (int)a2,
    "SkillCombatRoll__",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))Character::_SkillCombatRoll);
  sfc::script::lua::Binder::bindFunction(
    a2,
    "SpellCombatRoll",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))Character::_SpellCombatRoll,
    this);
  sfc::script::lua::Binder::bindMethod(
    (int)a2,
    "SpellCombatRoll",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))Character::_SpellCombatRoll);
  sfc::script::lua::Binder::bindFunction(
    a2,
    "RegisterActorAnim",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))Character::_RegisterAnim,
    this);
  sfc::script::lua::Binder::bindMethod(
    (int)a2,
    "RegisterActorAnim",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))Character::_RegisterAnim);
  sfc::script::lua::Binder::bindFunction(
    a2,
    "RegisterAnim",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))Character::_RegisterAnim,
    this);
  sfc::script::lua::Binder::bindMethod(
    (int)a2,
    "RegisterAnim",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))Character::_RegisterAnim);
  sfc::script::lua::Binder::bindFunction(
    a2,
    "PlayActorAnim",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))Character::_PlayAnim,
    this);
  sfc::script::lua::Binder::bindMethod(
    (int)a2,
    "PlayActorAnim",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))Character::_PlayAnim);
  sfc::script::lua::Binder::bindFunction(
    a2,
    "PlayAnim",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))Character::_PlayAnim,
    this);
  sfc::script::lua::Binder::bindMethod(
    (int)a2,
    "PlayAnim",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))Character::_PlayAnim);
  sfc::script::lua::Binder::bindFunction(
    a2,
    "GetState",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))Character::_GetState,
    this);
  sfc::script::lua::Binder::bindMethod(
    (int)a2,
    "GetState",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))Character::_GetState);
  sfc::script::lua::Binder::bindFunction(
    a2,
    "GetStateTime",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))Character::_GetStateTime,
    this);
  sfc::script::lua::Binder::bindMethod(
    (int)a2,
    "GetStateTime",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))Character::_GetStateTime);
  sfc::script::lua::Binder::bindFunction(
    a2,
    "SetScareState",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))Character::_SetScareState,
    this);
  sfc::script::lua::Binder::bindMethod(
    (int)a2,
    "SetScareState",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))Character::_SetScareState);
  sfc::script::lua::Binder::bindFunction(
    a2,
    "SetStunState",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))Character::_SetStunState,
    this);
  sfc::script::lua::Binder::bindMethod(
    (int)a2,
    "SetStunState",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))Character::_SetStunState);
  sfc::script::lua::Binder::bindFunction(
    a2,
    "SetKnockBackState",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))Character::_SetKnockBackState,
    this);
  sfc::script::lua::Binder::bindMethod(
    (int)a2,
    "SetKnockBackState",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))Character::_SetKnockBackState);
  sfc::script::lua::Binder::bindFunction(
    a2,
    "AllowCharacterRotDuringSkill",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))Character::_AllowRotation,
    this);
  sfc::script::lua::Binder::bindMethod(
    (int)a2,
    "AllowCharacterRotDuringSkill",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))Character::_AllowRotation);
  sfc::script::lua::Binder::bindFunction(
    a2,
    "AllowRotation",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))Character::_AllowRotation,
    this);
  sfc::script::lua::Binder::bindMethod(
    (int)a2,
    "AllowRotation",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))Character::_AllowRotation);
  sfc::script::lua::Binder::bindFunction(
    a2,
    "AllowSkillBreak",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))Character::_AllowSkillBreak,
    this);
  sfc::script::lua::Binder::bindMethod(
    (int)a2,
    "AllowSkillBreak",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))Character::_AllowSkillBreak);
  sfc::script::lua::Binder::bindFunction(
    a2,
    "StartTimer",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))Character::_StartTimer,
    this);
  sfc::script::lua::Binder::bindMethod(
    (int)a2,
    "StartTimer",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))Character::_StartTimer);
  sfc::script::lua::Binder::bindFunction(
    a2,
    "PauseTimer",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))Character::_PauseTimer,
    this);
  sfc::script::lua::Binder::bindMethod(
    (int)a2,
    "PauseTimer",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))Character::_PauseTimer);
  sfc::script::lua::Binder::bindFunction(
    a2,
    "ResumeTimer",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))Character::_ResumeTimer,
    this);
  sfc::script::lua::Binder::bindMethod(
    (int)a2,
    "ResumeTimer",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))Character::_ResumeTimer);
  sfc::script::lua::Binder::bindFunction(
    a2,
    "StopTimer",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))Character::_StopTimer,
    this);
  sfc::script::lua::Binder::bindMethod(
    (int)a2,
    "StopTimer",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))Character::_StopTimer);
  sfc::script::lua::Binder::bindFunction(
    a2,
    "GetCharID",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))Character::_GetCharID,
    this);
  sfc::script::lua::Binder::bindMethod(
    (int)a2,
    "GetCharID",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))Character::_GetCharID);
  sfc::script::lua::Binder::bindFunction(
    a2,
    "DBG_DumpProps",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))Character::_DBG_DumpProps,
    this);
  sfc::script::lua::Binder::bindMethod(
    (int)a2,
    "DBG_DumpProps",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))Character::_DBG_DumpProps);
  sfc::script::lua::Binder::bindFunction(
    a2,
    "SetLevel",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))Character::_SetLevel,
    this);
  sfc::script::lua::Binder::bindMethod(
    (int)a2,
    "SetLevel",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))Character::_SetLevel);
  sfc::script::lua::Binder::bindFunction(
    a2,
    "SetProp",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))Character::_SetProp,
    this);
  sfc::script::lua::Binder::bindMethod(
    (int)a2,
    "SetProp",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))Character::_SetProp);
  sfc::script::lua::Binder::bindFunction(
    a2,
    "GetProp",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))Character::_GetProp,
    this);
  sfc::script::lua::Binder::bindMethod(
    (int)a2,
    "GetProp",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))Character::_GetProp);
  sfc::script::lua::Binder::bindFunction(
    a2,
    "ApplyPropClass",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))Character::_ApplyPropClass,
    this);
  sfc::script::lua::Binder::bindMethod(
    (int)a2,
    "ApplyPropClass",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))Character::_ApplyPropClass);
  sfc::script::lua::Binder::bindFunction(
    a2,
    "ClearProps",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))Character::_ClearProps,
    this);
  sfc::script::lua::Binder::bindMethod(
    (int)a2,
    "ClearProps",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))Character::_ClearProps);
  sfc::script::lua::Binder::bindFunction(
    a2,
    "CreateBuff",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))Character::_CreateBuff,
    this);
  sfc::script::lua::Binder::bindMethod(
    (int)a2,
    "CreateBuff",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))Character::_CreateBuff);
  sfc::script::lua::Binder::bindFunction(
    a2,
    "RemoveBuff",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))Character::_RemoveBuff,
    this);
  sfc::script::lua::Binder::bindMethod(
    (int)a2,
    "RemoveBuff",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))Character::_RemoveBuff);
  sfc::script::lua::Binder::bindFunction(
    a2,
    "SetBuffProp",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))Character::_SetProp,
    this);
  sfc::script::lua::Binder::bindMethod(
    (int)a2,
    "SetBuffProp",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))Character::_SetProp);
  sfc::script::lua::Binder::bindFunction(
    a2,
    "GetBuffProp",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))Character::_GetProp,
    this);
  sfc::script::lua::Binder::bindMethod(
    (int)a2,
    "GetBuffProp",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))Character::_GetProp);
  sfc::script::lua::Binder::bindFunction(
    a2,
    "ApplyBuff",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))Character::_ApplyPropClass,
    this);
  sfc::script::lua::Binder::bindMethod(
    (int)a2,
    "ApplyBuff",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))Character::_ApplyPropClass);
  sfc::script::lua::Binder::bindFunction(
    a2,
    "GetPropHP",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))Character::_GetPropHP,
    this);
  sfc::script::lua::Binder::bindMethod(
    (int)a2,
    "GetPropHP",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))Character::_GetPropHP);
  sfc::script::lua::Binder::bindFunction(
    a2,
    "GetHP",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))Character::_GetPropHP,
    this);
  sfc::script::lua::Binder::bindMethod(
    (int)a2,
    "GetHP",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))Character::_GetPropHP);
  sfc::script::lua::Binder::bindFunction(
    a2,
    "GetAttackRatingBonus",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))Character::_GetPropBonusAttackRating,
    this);
  sfc::script::lua::Binder::bindMethod(
    (int)a2,
    "GetAttackRatingBonus",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))Character::_GetPropBonusAttackRating);
  sfc::script::lua::Binder::bindFunction(
    a2,
    "GetCritRatingBonus",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))Character::_GetPropBonusCritRating,
    this);
  sfc::script::lua::Binder::bindMethod(
    (int)a2,
    "GetCritRatingBonus",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))Character::_GetPropBonusCritRating);
  sfc::script::lua::Binder::bindFunction(
    a2,
    "GetDamageBonus",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))Character::_GetPropBonusDamage,
    this);
  sfc::script::lua::Binder::bindMethod(
    (int)a2,
    "GetDamageBonus",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))Character::_GetPropBonusDamage);
  sfc::script::lua::Binder::bindFunction(
    a2,
    "HasMana",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))Character::_HasMana,
    this);
  sfc::script::lua::Binder::bindMethod(
    (int)a2,
    "HasMana",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))Character::_HasMana);
  sfc::script::lua::Binder::bindFunction(
    a2,
    "UseMana",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))Character::_UseMana,
    this);
  sfc::script::lua::Binder::bindMethod(
    (int)a2,
    "UseMana",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))Character::_UseMana);
  sfc::script::lua::Binder::bindFunction(
    a2,
    "RegenHP",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))Character::_RegenHP,
    this);
  sfc::script::lua::Binder::bindMethod(
    (int)a2,
    "RegenHP",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))Character::_RegenHP);
  sfc::script::lua::Binder::bindFunction(
    a2,
    "RegenMP",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))Character::_RegenMP,
    this);
  sfc::script::lua::Binder::bindMethod(
    (int)a2,
    "RegenMP",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))Character::_RegenMP);
  sfc::script::lua::Binder::bindFunction(
    a2,
    "RemoveDots",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))Character::_RemoveDots,
    this);
  sfc::script::lua::Binder::bindMethod(
    (int)a2,
    "RemoveDots",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))Character::_RemoveDots);
  sfc::script::lua::Binder::bindFunction(
    a2,
    "HasShield",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))Character::_HasShield,
    this);
  sfc::script::lua::Binder::bindMethod(
    (int)a2,
    "HasShield",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))Character::_HasShield);
  sfc::script::lua::Binder::bindFunction(
    a2,
    "HasBow",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))Character::_HasBow,
    this);
  sfc::script::lua::Binder::bindMethod(
    (int)a2,
    "HasBow",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))Character::_HasBow);
  sfc::script::lua::Binder::bindFunction(
    a2,
    "CanAttackInMelee",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))Character::_CanAttackInMelee,
    this);
  sfc::script::lua::Binder::bindMethod(
    (int)a2,
    "CanAttackInMelee",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))Character::_CanAttackInMelee);
  sfc::script::lua::Binder::bindFunction(
    a2,
    "CanAttackFromRange",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))Character::_CanAttackFromRange,
    this);
  sfc::script::lua::Binder::bindMethod(
    (int)a2,
    "CanAttackFromRange",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))Character::_CanAttackFromRange);
  sfc::script::lua::Binder::bindFunction(
    a2,
    "GetHitCount",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))Character::_GetHitCount,
    this);
  sfc::script::lua::Binder::bindMethod(
    (int)a2,
    "GetHitCount",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))Character::_GetHitCount);
  sfc::script::lua::Binder::bindFunction(
    a2,
    "IsConnected",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))Character::_IsConnected,
    this);
  sfc::script::lua::Binder::bindMethod(
    (int)a2,
    "IsConnected",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))Character::_IsConnected);
  sfc::script::lua::Binder::bindFunction(
    a2,
    "SetSkillCooldownTimerId__",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))Character::_SetSkillCooldownTimerId,
    this);
  sfc::script::lua::Binder::bindMethod(
    (int)a2,
    "SetSkillCooldownTimerId__",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))Character::_SetSkillCooldownTimerId);
  sfc::script::lua::Binder::bindFunction(
    a2,
    "SetSpellCooldownTimerId__",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))Character::_SetSpellCooldownTimerId,
    this);
  return sfc::script::lua::Binder::bindMethod(
           (int)a2,
           "SetSpellCooldownTimerId__",
           (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))Character::_SetSpellCooldownTimerId);
}


// ===== 3b6b90 `global constructor keyed to'.._.._sources_Game_Objects_Characters_Character_LuaCallbacks.cpp =====
int `global constructor keyed to'.._.._sources_Game_Objects_Characters_Character_LuaCallbacks.cpp()
{
  int result; // r0

  result = `guard variable for'Singleton<PlayerStatManager>::s_inst;
  dword_9A29E8 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9A29E4 = 1056964608;
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


// ===== 3b6c6c std::priv::_String_base<wchar_t,std::allocator<wchar_t>>::_M_allocate_block(uint) [clone] =====
void std::priv::_String_base<wchar_t,std::allocator<wchar_t>>::_M_allocate_block()
{
  ;
}


// ===== 3b6c70 Character::_GetMaster(sfc::script::lua::Arguments const&,sfc::script::lua::ReturnValues &,void *) =====
int __fastcall Character::_GetMaster(
        Character *this,
        const sfc::script::lua::Arguments *a2,
        sfc::script::lua::UserData **a3,
        void *a4)
{
  return sfc::script::lua::ReturnValues::pushUserData(a2, a3[262]);
}


// ===== 3b6c7c Character::_GetTarget(sfc::script::lua::Arguments const&,sfc::script::lua::ReturnValues &,void *) =====
int __fastcall Character::_GetTarget(
        Character *this,
        const sfc::script::lua::Arguments *a2,
        sfc::script::lua::UserData **a3,
        void *a4)
{
  return sfc::script::lua::ReturnValues::pushUserData(a2, a3[258]);
}


// ===== 3b6c88 Character::_GetSpotTarget(sfc::script::lua::Arguments const&,sfc::script::lua::ReturnValues &,void *) =====
void __fastcall Character::_GetSpotTarget(
        Character *this,
        const sfc::script::lua::Arguments *a2,
        sfc::script::lua::ReturnValues *a3,
        void *a4)
{
  sfc::script::lua::ReturnValues::pushNumber(a2, *((float *)a3 + 1327));
  sfc::script::lua::ReturnValues::pushNumber(a2, *((float *)a3 + 1328));
  sfc::script::lua::ReturnValues::pushNumber(a2, *((float *)a3 + 1329));
}


// ===== 3b6cc8 Character::_GetHitCount(sfc::script::lua::Arguments const&,sfc::script::lua::ReturnValues &,void *) =====
void __fastcall Character::_GetHitCount(
        Character *this,
        const sfc::script::lua::Arguments *a2,
        sfc::script::lua::ReturnValues *a3,
        void *a4)
{
  sfc::script::lua::ReturnValues::pushInteger(a2, *((unsigned __int16 *)a3 + 2664));
}


// ===== 3b6cd8 Character::_GetPropHP(sfc::script::lua::Arguments const&,sfc::script::lua::ReturnValues &,void *) =====
void __fastcall Character::_GetPropHP(
        Character *this,
        const sfc::script::lua::Arguments *a2,
        sfc::script::lua::ReturnValues *a3,
        void *a4)
{
  int v4; // r5
  int v6; // r6
  int v7; // r5

  v4 = *((_DWORD *)a3 + 1060);
  v6 = *((_DWORD *)a3 + 1058);
  if ( v4 )
  {
    v7 = v4 >> 8;
    sfc::script::lua::ReturnValues::pushInteger(a2, v6 >> 8);
    sfc::script::lua::ReturnValues::pushInteger(a2, v7);
    sfc::script::lua::ReturnValues::pushInteger(a2, (100 * v6 / v7) >> 8);
  }
  else
  {
    sfc::script::lua::ReturnValues::pushInteger(a2, 0);
    sfc::script::lua::ReturnValues::pushInteger(a2, 0);
    sfc::script::lua::ReturnValues::pushInteger(a2, 0);
  }
}


// ===== 3b6d5c Character::_GetCharID(sfc::script::lua::Arguments const&,sfc::script::lua::ReturnValues &,void *) =====
void __fastcall Character::_GetCharID(
        Character *this,
        const sfc::script::lua::Arguments *a2,
        sfc::script::lua::ReturnValues *a3,
        void *a4)
{
  sfc::script::lua::ReturnValues::pushInteger(a2, *((__int16 *)a3 + 2532));
}


// ===== 3b6d6c Character::_GetStateTime(sfc::script::lua::Arguments const&,sfc::script::lua::ReturnValues &,void *) =====
void __fastcall Character::_GetStateTime(
        Character *this,
        const sfc::script::lua::Arguments *a2,
        sfc::script::lua::ReturnValues *a3,
        void *a4)
{
  sfc::script::lua::ReturnValues::pushInteger(a2, *((_DWORD *)a3 + 343));
}


// ===== 3b6d78 Character::_GetState(sfc::script::lua::Arguments const&,sfc::script::lua::ReturnValues &,void *) =====
int __fastcall Character::_GetState(
        Character *this,
        const sfc::script::lua::Arguments *a2,
        sfc::script::lua::ReturnValues *a3,
        void *a4)
{
  int State; // r1

  State = CharStateMachine::SM_GetState((sfc::script::lua::ReturnValues *)((char *)a3 + 1276));
  return sfc::script::lua::ReturnValues::pushInteger(a2, State);
}


// ===== 3b6da0 Character::_GetCurrentEquippedFaeryId(sfc::script::lua::Arguments const&,sfc::script::lua::ReturnValues &,void *) =====
void __fastcall Character::_GetCurrentEquippedFaeryId(
        Character *this,
        const sfc::script::lua::Arguments *a2,
        sfc::script::lua::ReturnValues *a3,
        void *a4)
{
  int CurrentFaerieId; // r1

  CurrentFaerieId = Character::SG_GetCurrentFaerieId(a3, -1);
  sfc::script::lua::ReturnValues::pushInteger(a2, CurrentFaerieId);
}


// ===== 3b6dc4 Character::_GetEquippedFaeryElement(sfc::script::lua::Arguments const&,sfc::script::lua::ReturnValues &,void *) =====
void __fastcall Character::_GetEquippedFaeryElement(
        Character *this,
        const sfc::script::lua::Arguments *a2,
        sfc::script::lua::ReturnValues *a3,
        void *a4)
{
  int CurrentFaerieId; // r0
  int v7; // r1

  CurrentFaerieId = Character::SG_GetCurrentFaerieId(a3, -1);
  v7 = *(_DWORD *)(Character::GetCharFaery(a3, CurrentFaerieId) + 8);
  sfc::script::lua::ReturnValues::pushInteger(a2, v7);
}


// ===== 3b6df8 Character::_GetCurrentEquippedFaeryLevel(sfc::script::lua::Arguments const&,sfc::script::lua::ReturnValues &,void *) =====
void __fastcall Character::_GetCurrentEquippedFaeryLevel(
        Character *this,
        const sfc::script::lua::Arguments *a2,
        sfc::script::lua::ReturnValues *a3,
        void *a4)
{
  unsigned int CurrentFaerieId; // r0
  int FaerieLevel; // r1

  CurrentFaerieId = Character::SG_GetCurrentFaerieId(a3, -1);
  FaerieLevel = Character::SG_GetFaerieLevel(a3, CurrentFaerieId, -1);
  sfc::script::lua::ReturnValues::pushInteger(a2, FaerieLevel);
}


// ===== 3b6e30 Character::_GetCurrentSpellInfo(sfc::script::lua::Arguments const&,sfc::script::lua::ReturnValues &,void *) =====
void __fastcall Character::_GetCurrentSpellInfo(
        Character *this,
        const sfc::script::lua::Arguments *a2,
        sfc::script::lua::ReturnValues *a3,
        void *a4)
{
  int CurrentFaerieId; // r0
  unsigned int v7; // r0
  int FaerieLevel; // r1

  CurrentFaerieId = Character::SG_GetCurrentFaerieId(a3, -1);
  Character::GetCharFaery(a3, CurrentFaerieId);
  v7 = Character::SG_GetCurrentFaerieId(a3, -1);
  FaerieLevel = Character::SG_GetFaerieLevel(a3, v7, -1);
  sfc::script::lua::ReturnValues::pushInteger(a2, FaerieLevel);
}


// ===== 3b6e80 Character::_GetCharAIFlags(sfc::script::lua::Arguments const&,sfc::script::lua::ReturnValues &,void *) =====
void __fastcall Character::_GetCharAIFlags(
        Character *this,
        const sfc::script::lua::Arguments *a2,
        sfc::script::lua::ReturnValues *a3,
        void *a4)
{
  int v5; // r5
  int v6; // r3

  v5 = Arrays::AITable::members;
  v6 = v5 + 68 * Character::GetCharAIId(a3);
  sfc::script::lua::ReturnValues::pushInteger(a2, *(_DWORD *)(v6 + 20));
}


// ===== 3b6ec4 Character::_IsConnected(sfc::script::lua::Arguments const&,sfc::script::lua::ReturnValues &,void *) =====
void __fastcall Character::_IsConnected(
        Character *this,
        const sfc::script::lua::Arguments *a2,
        sfc::script::lua::ReturnValues *a3,
        void *a4)
{
  char *PlayerByCharacter; // r0
  char v6; // r1

  PlayerByCharacter = PlayerManager::GetPlayerByCharacter((PlayerManager *)dword_99F76C, a3, 0);
  v6 = (*(int (__fastcall **)(char *))(*(_DWORD *)PlayerByCharacter + 92))(PlayerByCharacter);
  sfc::script::lua::ReturnValues::pushBoolean(a2, v6);
}


// ===== 3b6f10 Character::_CanAttackFromRange(sfc::script::lua::Arguments const&,sfc::script::lua::ReturnValues &,void *) =====
void __fastcall Character::_CanAttackFromRange(
        Character *this,
        const sfc::script::lua::Arguments *a2,
        sfc::script::lua::ReturnValues *a3,
        void *a4)
{
  char v5; // r1

  v5 = (*(int (__fastcall **)(sfc::script::lua::ReturnValues *))(*(_DWORD *)a3 + 292))(a3);
  sfc::script::lua::ReturnValues::pushBoolean(a2, v5);
}


// ===== 3b6f3c Character::_HasMaster(sfc::script::lua::Arguments const&,sfc::script::lua::ReturnValues &,void *) =====
int __fastcall Character::_HasMaster(
        Character *this,
        const sfc::script::lua::Arguments *a2,
        sfc::script::lua::ReturnValues *a3,
        void *a4)
{
  int v5; // r1

  v5 = *((_DWORD *)a3 + 262);
  if ( v5 )
    LOBYTE(v5) = 1;
  return sfc::script::lua::ReturnValues::pushBoolean(a2, v5);
}


// ===== 3b6f50 Character::_HasTarget(sfc::script::lua::Arguments const&,sfc::script::lua::ReturnValues &,void *) =====
int __fastcall Character::_HasTarget(
        Character *this,
        const sfc::script::lua::Arguments *a2,
        sfc::script::lua::ReturnValues *a3,
        void *a4)
{
  int v5; // r1

  v5 = *((_DWORD *)a3 + 258);
  if ( v5 )
    LOBYTE(v5) = 1;
  return sfc::script::lua::ReturnValues::pushBoolean(a2, v5);
}


// ===== 3b6f64 Character::_CanAttackInMelee(sfc::script::lua::Arguments const&,sfc::script::lua::ReturnValues &,void *) =====
void __fastcall Character::_CanAttackInMelee(
        Character *this,
        const sfc::script::lua::Arguments *a2,
        sfc::script::lua::ReturnValues *a3,
        void *a4)
{
  char CanMeleeAttack; // r1

  CanMeleeAttack = ItemInventory::CanMeleeAttack((sfc::script::lua::ReturnValues *)((char *)a3 + 892));
  sfc::script::lua::ReturnValues::pushBoolean(a2, CanMeleeAttack);
}


// ===== 3b6f84 Character::_HasBow(sfc::script::lua::Arguments const&,sfc::script::lua::ReturnValues &,void *) =====
void __fastcall Character::_HasBow(
        Character *this,
        const sfc::script::lua::Arguments *a2,
        sfc::script::lua::ReturnValues *a3,
        void *a4)
{
  char HasBow; // r1

  HasBow = ItemInventory::HasBow((sfc::script::lua::ReturnValues *)((char *)a3 + 892));
  sfc::script::lua::ReturnValues::pushBoolean(a2, HasBow);
}


// ===== 3b6fa4 Character::_HasShield(sfc::script::lua::Arguments const&,sfc::script::lua::ReturnValues &,void *) =====
int __fastcall Character::_HasShield(
        Character *this,
        const sfc::script::lua::Arguments *a2,
        sfc::script::lua::ReturnValues *a3,
        void *a4)
{
  char HasShield; // r1

  HasShield = ItemInventory::HasShield((sfc::script::lua::ReturnValues *)((char *)a3 + 892));
  return sfc::script::lua::ReturnValues::pushBoolean(a2, HasShield);
}


// ===== 3b6fc4 Character::_IsMasterHostPlayer(sfc::script::lua::Arguments const&,sfc::script::lua::ReturnValues &,void *) =====
int __fastcall Character::_IsMasterHostPlayer(
        Character *this,
        const sfc::script::lua::Arguments *a2,
        sfc::script::lua::ReturnValues *a3,
        void *a4)
{
  bool v5; // r1

  if ( *((_DWORD *)a3 + 262) )
    v5 = *(_DWORD *)(PlayerManager::GetHostingPlayer((PlayerManager *)dword_99F76C) + 1632) == *((_DWORD *)a3 + 262);
  else
    v5 = 0;
  return sfc::script::lua::ReturnValues::pushBoolean(a2, v5);
}


// ===== 3b7020 Character::_TargetInMeleeRange(sfc::script::lua::Arguments const&,sfc::script::lua::ReturnValues &,void *) =====
int __fastcall Character::_TargetInMeleeRange(
        Character *this,
        const sfc::script::lua::Arguments *a2,
        const GameObject **a3,
        void *a4)
{
  char v5; // r1

  v5 = CharAI::AI_IsInMeleeRange((CharAI *)(a3 + 242), a3[258]);
  return sfc::script::lua::ReturnValues::pushBoolean(a2, v5);
}


// ===== 3b7044 Character::_HasAggro(sfc::script::lua::Arguments const&,sfc::script::lua::ReturnValues &,void *) =====
void __fastcall Character::_HasAggro(
        Character *this,
        const sfc::script::lua::Arguments *a2,
        sfc::script::lua::ReturnValues *a3,
        void *a4)
{
  bool HasAggro; // r1

  HasAggro = CharAI::AI_HasAggro((sfc::script::lua::ReturnValues *)((char *)a3 + 968));
  sfc::script::lua::ReturnValues::pushBoolean(a2, HasAggro);
}


// ===== 3b7064 Character::_StopTimer(sfc::script::lua::Arguments const&,sfc::script::lua::ReturnValues &,void *) =====
int __fastcall Character::_StopTimer(
        int this,
        const sfc::script::lua::Arguments *a2,
        sfc::script::lua::ReturnValues *a3,
        void *a4)
{
  _DWORD *v4; // r3
  sfc::script::lua::Value *v5; // r0
  unsigned int UInteger; // r0

  v4 = *(_DWORD **)(this + 4);
  if ( 1227133513 * ((v4[1] - *v4) >> 4) )
  {
    if ( *(_DWORD *)(*v4 + 4) == 3 )
    {
      v5 = (sfc::script::lua::Value *)sfc::script::lua::Arguments::operator[](this, 0);
      UInteger = sfc::script::lua::Value::getUInteger(v5);
      return CharTimers::TMR_Stop((sfc::script::lua::ReturnValues *)((char *)a3 + 948), UInteger);
    }
  }
  return this;
}


// ===== 3b70d8 Character::_RegisterAnim(sfc::script::lua::Arguments const&,sfc::script::lua::ReturnValues &,void *) =====
int __fastcall Character::_RegisterAnim(
        int this,
        const sfc::script::lua::Arguments *a2,
        sfc::script::lua::ReturnValues *a3,
        void *a4)
{
  _DWORD *v4; // r3
  char *v5; // r4
  sfc::script::lua::Value *v6; // r0
  int v7; // r1

  v4 = *(_DWORD **)(this + 4);
  if ( 1227133513 * ((v4[1] - *v4) >> 4) )
  {
    if ( *(_DWORD *)(*v4 + 4) == 3 )
    {
      v5 = (char *)a3 + 1168;
      v6 = (sfc::script::lua::Value *)sfc::script::lua::Arguments::operator[](this, 0);
      v7 = (int)COERCE_FLOAT(sfc::script::lua::Value::getNumber(v6));
      return CharAnimator::ANIM_AddAnimDictToSet((int)(v5 + 12), v7);
    }
  }
  return this;
}


// ===== 3b7144 Character::_EnableSpotTargeting(sfc::script::lua::Arguments const&,sfc::script::lua::ReturnValues &,void *) =====
unsigned int __fastcall Character::_EnableSpotTargeting(
        unsigned int this,
        const sfc::script::lua::Arguments *a2,
        sfc::script::lua::ReturnValues *a3,
        void *a4)
{
  _DWORD *v4; // r3
  int v5; // r5
  sfc::script::lua::Value *v6; // r0
  sfc::script::lua::ReturnValues *v7; // r2
  sfc::script::lua::Value *v8; // r0
  sfc::script::lua::Value *v9; // r0
  sfc::script::lua::ReturnValues *v10; // r2
  sfc::script::lua::Value *v11; // r0
  __int16 v12; // r0
  int v13; // r12
  int v14; // r1
  int v15; // r3
  int v16; // r0
  sfc::script::lua::Value *v17; // r0
  _DWORD *UserData; // r4
  sfc::script::lua::Value *v19; // r0
  __int16 UInteger; // r0
  int v21; // r12
  int v22; // r1
  int v23; // r3
  sfc::script::lua::ReturnValues *v25; // [sp+4h] [bp-4h]
  sfc::script::lua::ReturnValues *v26; // [sp+4h] [bp-4h]

  v4 = *(_DWORD **)(this + 4);
  v5 = this;
  if ( 1227133513 * ((v4[1] - *v4) >> 4) )
  {
    if ( *(_DWORD *)(*v4 + 4) == 1 )
    {
      v6 = (sfc::script::lua::Value *)sfc::script::lua::Arguments::operator[](this, 0);
      this = sfc::script::lua::Value::getBool(v6);
      v7 = a3;
      if ( !this
        || (unsigned int)(-1227133513 * ((*(_DWORD *)(*(_DWORD *)(v5 + 4) + 4) - **(_DWORD **)(v5 + 4)) >> 4)) > 1
        && (this = sfc::script::lua::Arguments::operator[](v5, 1u), *(_DWORD *)(this + 4) == 3)
        && (v8 = (sfc::script::lua::Value *)sfc::script::lua::Arguments::operator[](v5, 1u),
            this = sfc::script::lua::Value::getUInteger(v8),
            v7 = a3,
            this < Arrays::AnimatedEffectTable::size) )
      {
        v25 = v7;
        v9 = (sfc::script::lua::Value *)sfc::script::lua::Arguments::operator[](v5, 0);
        this = sfc::script::lua::Value::getBool(v9);
        v10 = v25;
        if ( this )
        {
          if ( (unsigned int)(-1227133513 * ((*(_DWORD *)(*(_DWORD *)(v5 + 4) + 4) - **(_DWORD **)(v5 + 4)) >> 4)) > 2
            && (v16 = sfc::script::lua::Arguments::operator[](v5, 2u), v10 = v25, *(_DWORD *)(v16 + 4) == 7) )
          {
            v17 = (sfc::script::lua::Value *)sfc::script::lua::Arguments::operator[](v5, 2u);
            UserData = (_DWORD *)sfc::script::lua::Value::getUserData(v17);
            v19 = (sfc::script::lua::Value *)sfc::script::lua::Arguments::operator[](v5, 1u);
            UInteger = sfc::script::lua::Value::getUInteger(v19);
            *((_BYTE *)v25 + 5320) = 1;
            v21 = UserData[88];
            *((_DWORD *)v25 + 1324) = v21;
            v22 = UserData[89];
            *((_DWORD *)v25 + 1325) = v22;
            v23 = UserData[90];
            *((_WORD *)v25 + 2661) = UInteger;
            *((_DWORD *)v25 + 1327) = v21;
            *((_DWORD *)v25 + 1328) = v22;
            *((_DWORD *)v25 + 1329) = v23;
            *((_DWORD *)v25 + 1326) = v23;
            return 5312;
          }
          else
          {
            v26 = v10;
            v11 = (sfc::script::lua::Value *)sfc::script::lua::Arguments::operator[](v5, 1u);
            v12 = sfc::script::lua::Value::getUInteger(v11);
            v13 = *((_DWORD *)v26 + 88);
            v14 = *((_DWORD *)v26 + 89);
            v15 = *((_DWORD *)v26 + 90);
            *((_WORD *)v26 + 2661) = v12;
            *((_BYTE *)v26 + 5320) = 1;
            *((_DWORD *)v26 + 1327) = v13;
            *((_DWORD *)v26 + 1328) = v14;
            *((_DWORD *)v26 + 1329) = v15;
            *((_DWORD *)v26 + 1324) = v13;
            *((_DWORD *)v26 + 1325) = v14;
            *((_DWORD *)v26 + 1326) = v15;
            return 5300;
          }
        }
        else
        {
          *((_BYTE *)v25 + 5320) = 0;
          *((_WORD *)v25 + 2661) = -1;
        }
      }
    }
  }
  return this;
}


// ===== 3b73a4 Character::_SetLevel(sfc::script::lua::Arguments const&,sfc::script::lua::ReturnValues &,void *) =====
int __fastcall Character::_SetLevel(
        int this,
        const sfc::script::lua::Arguments *a2,
        sfc::script::lua::ReturnValues *a3,
        void *a4)
{
  _DWORD *v4; // r3
  int v6; // r5
  sfc::script::lua::Value *v7; // r0
  float v8; // r10
  sfc::script::lua::Value *v9; // r0
  int v10; // r0

  v4 = *(_DWORD **)(this + 4);
  v6 = this;
  if ( 1227133513 * ((v4[1] - *v4) >> 4) && *(_DWORD *)(*v4 + 4) == 3 )
  {
    v7 = (sfc::script::lua::Value *)sfc::script::lua::Arguments::operator[](this, 0);
    v8 = COERCE_FLOAT(sfc::script::lua::Value::getNumber(v7));
    if ( PyDataConstants::getConstant((PyDataConstants *)dword_99F758, "CharacterDesign", "MaxLevelDVeryHard") << 8 < (int)v8 )
    {
      v10 = PyDataConstants::getConstant((PyDataConstants *)dword_99F758, "CharacterDesign", "MaxLevelDVeryHard") << 8;
    }
    else
    {
      v9 = (sfc::script::lua::Value *)sfc::script::lua::Arguments::operator[](v6, 0);
      v10 = (int)COERCE_FLOAT(sfc::script::lua::Value::getNumber(v9));
    }
    *((_DWORD *)a3 + 366) = v10;
    CharProperties::RecalcProperties((sfc::script::lua::ReturnValues *)((char *)a3 + 1376), 1);
    Character::RegenHP(a3, -1);
    return Character::RegenMP(a3, -1);
  }
  return this;
}


// ===== 3b74a8 Character::_ResumeTimer(sfc::script::lua::Arguments const&,sfc::script::lua::ReturnValues &,void *) =====
int __fastcall Character::_ResumeTimer(
        int this,
        const sfc::script::lua::Arguments *a2,
        sfc::script::lua::ReturnValues *a3,
        void *a4)
{
  _DWORD *v4; // r3
  sfc::script::lua::Value *v5; // r0
  unsigned int UInteger; // r0

  v4 = *(_DWORD **)(this + 4);
  if ( 1227133513 * ((v4[1] - *v4) >> 4) )
  {
    if ( *(_DWORD *)(*v4 + 4) == 3 )
    {
      v5 = (sfc::script::lua::Value *)sfc::script::lua::Arguments::operator[](this, 0);
      UInteger = sfc::script::lua::Value::getUInteger(v5);
      return CharTimers::TMR_Resume((sfc::script::lua::ReturnValues *)((char *)a3 + 948), UInteger);
    }
  }
  return this;
}


// ===== 3b751c Character::_PauseTimer(sfc::script::lua::Arguments const&,sfc::script::lua::ReturnValues &,void *) =====
int __fastcall Character::_PauseTimer(
        int this,
        const sfc::script::lua::Arguments *a2,
        sfc::script::lua::ReturnValues *a3,
        void *a4)
{
  _DWORD *v4; // r3
  sfc::script::lua::Value *v5; // r0
  unsigned int UInteger; // r0

  v4 = *(_DWORD **)(this + 4);
  if ( 1227133513 * ((v4[1] - *v4) >> 4) )
  {
    if ( *(_DWORD *)(*v4 + 4) == 3 )
    {
      v5 = (sfc::script::lua::Value *)sfc::script::lua::Arguments::operator[](this, 0);
      UInteger = sfc::script::lua::Value::getUInteger(v5);
      return CharTimers::TMR_Pause((sfc::script::lua::ReturnValues *)((char *)a3 + 948), UInteger);
    }
  }
  return this;
}


// ===== 3b7590 Character::_StartTimer(sfc::script::lua::Arguments const&,sfc::script::lua::ReturnValues &,void *) =====
void __fastcall Character::_StartTimer(
        Character *this,
        const sfc::script::lua::Arguments *a2,
        sfc::script::lua::ReturnValues *a3,
        void *a4)
{
  int *v4; // r3
  int v7; // r1
  unsigned int v9; // r3
  sfc::script::lua::Value *v10; // r0
  sfc::script::lua::Value *v11; // r0
  unsigned int v12; // r0
  int v13; // r1
  sfc::script::lua::Value *v14; // r0
  unsigned int UInteger; // r0

  v4 = *((int **)this + 1);
  v7 = *v4;
  v9 = -1227133513 * ((v4[1] - *v4) >> 4);
  if ( v9 && *(_DWORD *)(v7 + 4) == 3 )
  {
    if ( v9 > 1
      && (v10 = (sfc::script::lua::Value *)sfc::script::lua::Arguments::operator[]((int)this, 1u),
          sfc::script::lua::Value::getBool(v10)) )
    {
      v14 = (sfc::script::lua::Value *)sfc::script::lua::Arguments::operator[]((int)this, 0);
      UInteger = sfc::script::lua::Value::getUInteger(v14);
      v13 = CharTimers::TMR_Start((sfc::script::lua::ReturnValues *)((char *)a3 + 948), UInteger, -1, 53, nullptr);
    }
    else
    {
      v11 = (sfc::script::lua::Value *)sfc::script::lua::Arguments::operator[]((int)this, 0);
      v12 = sfc::script::lua::Value::getUInteger(v11);
      v13 = CharTimers::TMR_Start((sfc::script::lua::ReturnValues *)((char *)a3 + 948), v12, 0, 53, nullptr);
    }
    if ( v13 != -1 )
      sfc::script::lua::ReturnValues::pushInteger(a2, v13);
  }
}


// ===== 3b7680 Character::_SetKnockBackState(sfc::script::lua::Arguments const&,sfc::script::lua::ReturnValues &,void *) =====
int __fastcall Character::_SetKnockBackState(
        Character *this,
        const sfc::script::lua::Arguments *a2,
        Character **a3,
        void *a4)
{
  _DWORD *v4; // r3
  _BOOL4 Bool; // r1
  sfc::script::lua::Value *v7; // r0
  sfc::script::lua::ReturnValues *v8; // [sp+4h] [bp-8h]

  v4 = *((_DWORD **)this + 1);
  if ( !(1227133513 * ((v4[1] - *v4) >> 4))
    || *(_DWORD *)(*v4 + 4) != 1
    || (v8 = (sfc::script::lua::ReturnValues *)a3,
        v7 = (sfc::script::lua::Value *)sfc::script::lua::Arguments::operator[]((int)this, 0),
        Bool = sfc::script::lua::Value::getBool(v7),
        a3 = (Character **)v8,
        Bool) )
  {
    Bool = 1;
  }
  return CharStateMachine::SM_SetKnockBackState(a3 + 319, Bool, nullptr, 0);
}


// ===== 3b7704 Character::_RotateBy(sfc::script::lua::Arguments const&,sfc::script::lua::ReturnValues &,void *) =====
int __fastcall Character::_RotateBy(
        int this,
        const sfc::script::lua::Arguments *a2,
        sfc::script::lua::ReturnValues *a3,
        void *a4)
{
  _DWORD *v4; // r3
  v2Controller *v5; // r4
  sfc::script::lua::Value *v6; // r0
  float v7; // r1

  v4 = *(_DWORD **)(this + 4);
  if ( 1227133513 * ((v4[1] - *v4) >> 4) )
  {
    if ( *(_DWORD *)(*v4 + 4) == 3 )
    {
      v5 = *((v2Controller **)a3 + 222);
      v6 = (sfc::script::lua::Value *)sfc::script::lua::Arguments::operator[](this, 0);
      v7 = COERCE_FLOAT(sfc::script::lua::Value::getNumber(v6)) * 0.017453;
      return v2Controller::Cmd_RotateBy(v5, v7);
    }
  }
  return this;
}


// ===== 3b7774 Character::_RegenMP(sfc::script::lua::Arguments const&,sfc::script::lua::ReturnValues &,void *) =====
int __fastcall Character::_RegenMP(
        int this,
        const sfc::script::lua::Arguments *a2,
        sfc::script::lua::ReturnValues *a3,
        void *a4)
{
  _DWORD *v4; // r3
  sfc::script::lua::Value *v5; // r0
  float v6; // r0

  v4 = *(_DWORD **)(this + 4);
  if ( 1227133513 * ((v4[1] - *v4) >> 4) )
  {
    if ( *(_DWORD *)(*v4 + 4) == 3 )
    {
      v5 = (sfc::script::lua::Value *)sfc::script::lua::Arguments::operator[](this, 0);
      v6 = COERCE_FLOAT(sfc::script::lua::Value::getNumber(v5));
      return Character::RegenMP(a3, (int)v6);
    }
  }
  return this;
}


// ===== 3b77ec Character::_RegenHP(sfc::script::lua::Arguments const&,sfc::script::lua::ReturnValues &,void *) =====
int __fastcall Character::_RegenHP(
        int this,
        const sfc::script::lua::Arguments *a2,
        sfc::script::lua::ReturnValues *a3,
        void *a4)
{
  _DWORD *v4; // r3
  sfc::script::lua::Value *v5; // r0
  float v6; // r0

  v4 = *(_DWORD **)(this + 4);
  if ( 1227133513 * ((v4[1] - *v4) >> 4) )
  {
    if ( *(_DWORD *)(*v4 + 4) == 3 )
    {
      v5 = (sfc::script::lua::Value *)sfc::script::lua::Arguments::operator[](this, 0);
      v6 = COERCE_FLOAT(sfc::script::lua::Value::getNumber(v5));
      return Character::RegenHP(a3, (int)v6);
    }
  }
  return this;
}


// ===== 3b7864 Character::_UseMana(sfc::script::lua::Arguments const&,sfc::script::lua::ReturnValues &,void *) =====
void __fastcall Character::_UseMana(
        Character *this,
        const sfc::script::lua::Arguments *a2,
        sfc::script::lua::ReturnValues *a3,
        void *a4)
{
  _DWORD *v4; // r3
  sfc::script::lua::Value *v6; // r0
  float v7; // r0
  char v8; // r1

  v4 = *((_DWORD **)this + 1);
  if ( 1227133513 * ((v4[1] - *v4) >> 4) )
  {
    if ( *(_DWORD *)(*v4 + 4) == 3 )
    {
      v6 = (sfc::script::lua::Value *)sfc::script::lua::Arguments::operator[]((int)this, 0);
      v7 = COERCE_FLOAT(sfc::script::lua::Value::getNumber(v6));
      v8 = Character::UseMana(a3, (int)v7);
      sfc::script::lua::ReturnValues::pushBoolean(a2, v8);
    }
  }
}


// ===== 3b78ec Character::_HasMana(sfc::script::lua::Arguments const&,sfc::script::lua::ReturnValues &,void *) =====
void __fastcall Character::_HasMana(
        Character *this,
        const sfc::script::lua::Arguments *a2,
        sfc::script::lua::ReturnValues *a3,
        void *a4)
{
  _DWORD *v4; // r3
  sfc::script::lua::Value *v6; // r0
  float v7; // r0
  char HasMana; // r1

  v4 = *((_DWORD **)this + 1);
  if ( 1227133513 * ((v4[1] - *v4) >> 4) )
  {
    if ( *(_DWORD *)(*v4 + 4) == 3 )
    {
      v6 = (sfc::script::lua::Value *)sfc::script::lua::Arguments::operator[]((int)this, 0);
      v7 = COERCE_FLOAT(sfc::script::lua::Value::getNumber(v6));
      HasMana = Character::HasMana(a3, (int)v7);
      sfc::script::lua::ReturnValues::pushBoolean(a2, HasMana);
    }
  }
}


// ===== 3b7974 Character::_AllowSkillBreak(sfc::script::lua::Arguments const&,sfc::script::lua::ReturnValues &,void *) =====
int __fastcall Character::_AllowSkillBreak(
        int this,
        const sfc::script::lua::Arguments *a2,
        sfc::script::lua::ReturnValues *a3,
        void *a4)
{
  _DWORD *v4; // r3
  sfc::script::lua::Value *v5; // r0
  int v6; // r3
  unsigned int v7; // r3

  v4 = *(_DWORD **)(this + 4);
  if ( 1227133513 * ((v4[1] - *v4) >> 4) && *(_DWORD *)(*v4 + 4) == 1 )
  {
    v5 = (sfc::script::lua::Value *)sfc::script::lua::Arguments::operator[](this, 0);
    this = sfc::script::lua::Value::getBool(v5);
    v6 = *((_DWORD *)a3 + 328);
    if ( this )
      v7 = v6 & 0xFFFEFFFF;
    else
      v7 = v6 | 0x10000;
    *((_DWORD *)a3 + 328) = v7;
  }
  return this;
}


// ===== 3b79ec Character::_AllowRotation(sfc::script::lua::Arguments const&,sfc::script::lua::ReturnValues &,void *) =====
int __fastcall Character::_AllowRotation(
        int this,
        const sfc::script::lua::Arguments *a2,
        sfc::script::lua::ReturnValues *a3,
        void *a4)
{
  _DWORD *v4; // r3
  sfc::script::lua::Value *v5; // r0
  int v6; // r3
  unsigned int v7; // r3

  v4 = *(_DWORD **)(this + 4);
  if ( 1227133513 * ((v4[1] - *v4) >> 4) && *(_DWORD *)(*v4 + 4) == 1 )
  {
    v5 = (sfc::script::lua::Value *)sfc::script::lua::Arguments::operator[](this, 0);
    this = sfc::script::lua::Value::getBool(v5);
    v6 = *((_DWORD *)a3 + 328);
    if ( this )
      v7 = v6 & 0xFFFFBFFF;
    else
      v7 = v6 | 0x4000;
    *((_DWORD *)a3 + 328) = v7;
  }
  return this;
}


// ===== 3b7a64 Character::_SetIsTargetable(sfc::script::lua::Arguments const&,sfc::script::lua::ReturnValues &,void *) =====
int __fastcall Character::_SetIsTargetable(
        int this,
        const sfc::script::lua::Arguments *a2,
        sfc::script::lua::ReturnValues *a3,
        void *a4)
{
  _DWORD *v4; // r3
  sfc::script::lua::Value *v5; // r0

  v4 = *(_DWORD **)(this + 4);
  if ( 1227133513 * ((v4[1] - *v4) >> 4) )
  {
    if ( *(_DWORD *)(*v4 + 4) == 1 )
    {
      v5 = (sfc::script::lua::Value *)sfc::script::lua::Arguments::operator[](this, 0);
      this = sfc::script::lua::Value::getBool(v5);
      *((_BYTE *)a3 + 1045) = this;
    }
  }
  return this;
}


// ===== 3b7acc Character::_GetPropBonusDamage(sfc::script::lua::Arguments const&,sfc::script::lua::ReturnValues &,void *) =====
void __fastcall Character::_GetPropBonusDamage(
        Character *this,
        const sfc::script::lua::Arguments *a2,
        sfc::script::lua::ReturnValues *a3,
        void *a4)
{
  int v4; // r3
  bool Bool; // r0
  int BonusDamage; // r1

  v4 = *((_DWORD *)this + 1);
  if ( 1227133513 * ((*(_DWORD *)(v4 + 4) - *(_DWORD *)v4) >> 4) )
  {
    Bool = sfc::script::lua::Value::getBool(*(sfc::script::lua::Value **)v4);
    BonusDamage = CharProperties::PROPS_GetBonusDamage((sfc::script::lua::ReturnValues *)((char *)a3 + 1376), Bool);
    sfc::script::lua::ReturnValues::pushInteger(a2, BonusDamage);
  }
}


// ===== 3b7b28 Character::_GetPropBonusCritRating(sfc::script::lua::Arguments const&,sfc::script::lua::ReturnValues &,void *) =====
void __fastcall Character::_GetPropBonusCritRating(
        Character *this,
        const sfc::script::lua::Arguments *a2,
        sfc::script::lua::ReturnValues *a3,
        void *a4)
{
  int v4; // r3
  bool Bool; // r0
  int BonusCritRating; // r1

  v4 = *((_DWORD *)this + 1);
  if ( 1227133513 * ((*(_DWORD *)(v4 + 4) - *(_DWORD *)v4) >> 4) )
  {
    Bool = sfc::script::lua::Value::getBool(*(sfc::script::lua::Value **)v4);
    BonusCritRating = CharProperties::PROPS_GetBonusCritRating(
                        (sfc::script::lua::ReturnValues *)((char *)a3 + 1376),
                        Bool);
    sfc::script::lua::ReturnValues::pushInteger(a2, BonusCritRating);
  }
}


// ===== 3b7b84 Character::_GetPropBonusAttackRating(sfc::script::lua::Arguments const&,sfc::script::lua::ReturnValues &,void *) =====
void __fastcall Character::_GetPropBonusAttackRating(
        Character *this,
        const sfc::script::lua::Arguments *a2,
        sfc::script::lua::ReturnValues *a3,
        void *a4)
{
  int v4; // r3
  bool Bool; // r0
  int BonusAttackRating; // r1

  v4 = *((_DWORD *)this + 1);
  if ( 1227133513 * ((*(_DWORD *)(v4 + 4) - *(_DWORD *)v4) >> 4) )
  {
    Bool = sfc::script::lua::Value::getBool(*(sfc::script::lua::Value **)v4);
    BonusAttackRating = CharProperties::PROPS_GetBonusAttackRating(
                          (sfc::script::lua::ReturnValues *)((char *)a3 + 1376),
                          Bool);
    sfc::script::lua::ReturnValues::pushInteger(a2, BonusAttackRating);
  }
}


// ===== 3b7be0 Character::_RemoveDots(sfc::script::lua::Arguments const&,sfc::script::lua::ReturnValues &,void *) =====
sfc::script::lua::Value *__fastcall Character::_RemoveDots(
        sfc::script::lua::Value *this,
        const sfc::script::lua::Arguments *a2,
        sfc::script::lua::ReturnValues *a3,
        void *a4)
{
  _DWORD *v4; // r3
  sfc::script::lua::Value *v6; // r4
  _DWORD *v7; // r2
  int v8; // r6
  unsigned int v9; // r3
  int v10; // r4
  int v11; // r4
  sfc::script::lua::Value *v12; // r0
  int v13; // r6
  sfc::script::lua::Value *v14; // r0
  _DWORD *v15; // r3
  int v16; // r8
  _DWORD *v17; // r3

  v4 = *((_DWORD **)this + 1);
  v6 = this;
  v7 = (_DWORD *)*v4;
  v8 = *((_DWORD *)a3 + 1252);
  v9 = -1227133513 * ((v4[1] - *v4) >> 4);
  if ( v9 && v7[1] == 3 )
  {
    v12 = (sfc::script::lua::Value *)sfc::script::lua::Arguments::operator[]((int)this, 0);
    this = (sfc::script::lua::Value *)(int)COERCE_FLOAT(sfc::script::lua::Value::getNumber(v12));
    if ( (int)this < 0 )
    {
      v17 = *((_DWORD **)v6 + 1);
      v7 = (_DWORD *)*v17;
      v9 = -1227133513 * ((v17[1] - *v17) >> 4);
    }
    else
    {
      v13 = *((_DWORD *)v6 + 1);
      v14 = *(sfc::script::lua::Value **)v13;
      if ( !(1227133513 * ((*(_DWORD *)(v13 + 4) - *(_DWORD *)v13) >> 4)) )
      {
        __ZSt24__stl_throw_out_of_rangePKc_veneer("vector");
        v14 = *(sfc::script::lua::Value **)v13;
      }
      this = (sfc::script::lua::Value *)(int)COERCE_FLOAT(sfc::script::lua::Value::getNumber(v14));
      v15 = *((_DWORD **)v6 + 1);
      v8 = (int)this;
      v7 = (_DWORD *)*v15;
      v9 = -1227133513 * ((v15[1] - *v15) >> 4);
    }
  }
  if ( v9 <= 1
    || (this = (sfc::script::lua::Value *)(v7 + 28), v7[29] != 3)
    || (this = (sfc::script::lua::Value *)(int)COERCE_FLOAT(sfc::script::lua::Value::getNumber(this)),
        v16 = (int)this,
        this == (sfc::script::lua::Value *)-2) )
  {
    if ( v8 > 0 && *((_DWORD *)a3 + 1252) )
    {
      v10 = 0;
      do
      {
        ++v10;
        this = (sfc::script::lua::Value *)CharProperties::PROPS_RemoveDot(
                                            (sfc::script::lua::ReturnValues *)((char *)a3 + 1376),
                                            -1);
      }
      while ( v10 != v8 && *((_DWORD *)a3 + 1252) );
    }
  }
  else if ( v8 > 0 && *((_DWORD *)a3 + 1252) )
  {
    v11 = 0;
    do
    {
      ++v11;
      this = (sfc::script::lua::Value *)CharProperties::PROPS_RemoveDot(
                                          (sfc::script::lua::ReturnValues *)((char *)a3 + 1376),
                                          v16);
    }
    while ( v11 != v8 && *((_DWORD *)a3 + 1252) );
  }
  return this;
}


// ===== 3b7dbc Character::_DBG_DumpProps(sfc::script::lua::Arguments const&,sfc::script::lua::ReturnValues &,void *) =====
int __fastcall Character::_DBG_DumpProps(
        Character *this,
        const sfc::script::lua::Arguments *a2,
        sfc::script::lua::ReturnValues *a3,
        void *a4)
{
  int v4; // r3
  sfc::script::lua::Value *v5; // r0
  const char *String; // r1

  v4 = *((_DWORD *)this + 1);
  v5 = *(sfc::script::lua::Value **)v4;
  if ( !(1227133513 * ((*(_DWORD *)(v4 + 4) - *(_DWORD *)v4) >> 4)) || *((_DWORD *)v5 + 1) != 4 )
    return CharProperties::DBG_PROPS_DumpToFile((sfc::script::lua::ReturnValues *)((char *)a3 + 1376), "Lua Dump", 1);
  String = sfc::script::lua::Value::getString(v5);
  return CharProperties::DBG_PROPS_DumpToFile((sfc::script::lua::ReturnValues *)((char *)a3 + 1376), String, 1);
}


// ===== 3b7e40 Character::_Kill(sfc::script::lua::Arguments const&,sfc::script::lua::ReturnValues &,void *) =====
int __fastcall Character::_Kill(Character *this, const sfc::script::lua::Arguments *a2, v2Controller **a3, void *a4)
{
  int v4; // r3
  sfc::script::lua::Value *v5; // r0
  v2Controller *v6; // r4
  GameObject *UserData; // r1

  v4 = *((_DWORD *)this + 1);
  v5 = *(sfc::script::lua::Value **)v4;
  if ( !(1227133513 * ((*(_DWORD *)(v4 + 4) - *(_DWORD *)v4) >> 4)) || *((_DWORD *)v5 + 1) != 7 )
    return v2Controller::Cmd_Kill(a3[222], nullptr, 0);
  v6 = a3[222];
  UserData = (GameObject *)sfc::script::lua::Value::getUserData(v5);
  return v2Controller::Cmd_Kill(v6, UserData, 0);
}


// ===== 3b7eac Character::_SetProp(sfc::script::lua::Arguments const&,sfc::script::lua::ReturnValues &,void *) =====
void __fastcall Character::_SetProp(
        Character *this,
        const sfc::script::lua::Arguments *a2,
        sfc::script::lua::ReturnValues *a3,
        void *a4)
{
  _DWORD *v4; // r5
  sfc::script::lua::Value *v7; // r0
  sfc::script::lua::Value *v8; // r0
  int *v9; // r5
  int v10; // r3
  sfc::script::lua::Value *v11; // r0
  unsigned int v12; // r5
  sfc::script::lua::Value *v13; // r0
  int v14; // r2
  sfc::script::lua::Value *v15; // r0
  sfc::script::lua::Value *v16; // r0
  unsigned int UInteger; // r7
  sfc::script::lua::Value *v18; // r0
  float v19; // r8
  sfc::script::lua::Value *v20; // r0
  Structs::CharacterProperties *Pointer; // r4

  v4 = *((_DWORD **)this + 1);
  if ( (unsigned int)(-1227133513 * ((v4[1] - *v4) >> 4)) > 1 && *(_DWORD *)(*v4 + 4) == 3 )
  {
    v7 = (sfc::script::lua::Value *)sfc::script::lua::Arguments::operator[]((int)this, 0);
    sfc::script::lua::Value::getUInteger(v7);
    v8 = (sfc::script::lua::Value *)sfc::script::lua::Arguments::operator[]((int)this, 0);
    if ( sfc::script::lua::Value::getUInteger(v8) <= 0xDF )
    {
      v9 = *((int **)this + 1);
      v10 = *v9;
      if ( (unsigned int)(-1227133513 * ((v9[1] - *v9) >> 4)) <= 1 )
      {
        __ZSt24__stl_throw_out_of_rangePKc_veneer("vector");
        v10 = *v9;
      }
      if ( *(_DWORD *)(v10 + 116) == 3 )
      {
        if ( (unsigned int)(-1227133513 * ((*(_DWORD *)(*((_DWORD *)this + 1) + 4) - **((_DWORD **)this + 1)) >> 4)) > 2
          && *(_DWORD *)(sfc::script::lua::Arguments::operator[]((int)this, 2u) + 4) == 2 )
        {
          v15 = (sfc::script::lua::Value *)sfc::script::lua::Arguments::operator[]((int)this, 2u);
          if ( sfc::script::lua::Value::getPointer(v15) )
          {
            v16 = (sfc::script::lua::Value *)sfc::script::lua::Arguments::operator[]((int)this, 0);
            UInteger = sfc::script::lua::Value::getUInteger(v16);
            v18 = (sfc::script::lua::Value *)sfc::script::lua::Arguments::operator[]((int)this, 1u);
            v19 = COERCE_FLOAT(sfc::script::lua::Value::getNumber(v18));
            v20 = (sfc::script::lua::Value *)sfc::script::lua::Arguments::operator[]((int)this, 2u);
            Pointer = (Structs::CharacterProperties *)sfc::script::lua::Value::getPointer(v20);
            CharProperties::PROPS_SetToSheet((int)a3 + 1376, UInteger, (int)v19, Pointer);
          }
        }
        else
        {
          v11 = (sfc::script::lua::Value *)sfc::script::lua::Arguments::operator[]((int)this, 0);
          v12 = sfc::script::lua::Value::getUInteger(v11);
          v13 = (sfc::script::lua::Value *)sfc::script::lua::Arguments::operator[]((int)this, 1u);
          v14 = (int)COERCE_FLOAT(sfc::script::lua::Value::getNumber(v13));
          CharProperties::PROPS_Set((sfc::script::lua::ReturnValues *)((char *)a3 + 1376), v12, v14);
        }
      }
    }
  }
}


// ===== 3b8098 Character::_AddAggro(sfc::script::lua::Arguments const&,sfc::script::lua::ReturnValues &,void *) =====
void __fastcall Character::_AddAggro(
        Character *this,
        const sfc::script::lua::Arguments *a2,
        sfc::script::lua::ReturnValues *a3,
        void *a4)
{
  _DWORD *v4; // r8
  unsigned int v7; // r3
  int v8; // r1
  sfc::script::lua::Value *v9; // r0
  Character *UserData; // r8
  sfc::script::lua::Value *v11; // r0
  int Number; // r0
  std::string v13; // [sp+4h] [bp-1Ch] BYREF

  v4 = *((_DWORD **)this + 1);
  v7 = -1227133513 * ((v4[1] - *v4) >> 4);
  if ( v7 > 1 )
  {
    v8 = *v4;
    if ( *(_DWORD *)(*v4 + 4) != 2 )
    {
      if ( *(_DWORD *)(v8 + 4) != 7 )
        return;
      v4 = *((_DWORD **)this + 1);
      v8 = *v4;
      v7 = -1227133513 * ((v4[1] - *v4) >> 4);
    }
    if ( v7 <= 1 )
    {
      __ZSt24__stl_throw_out_of_rangePKc_veneer("vector");
      v8 = *v4;
    }
    if ( *(_DWORD *)(v8 + 116) == 3 )
    {
      v9 = (sfc::script::lua::Value *)sfc::script::lua::Arguments::operator[]((int)this, 0);
      UserData = (Character *)sfc::script::lua::Value::getUserData(v9);
      v11 = (sfc::script::lua::Value *)sfc::script::lua::Arguments::operator[]((int)this, 1u);
      Number = sfc::script::lua::Value::getNumber(v11);
      if ( CharAI::AI_AddAggro((sfc::script::lua::ReturnValues *)((char *)a3 + 968), UserData, *(float *)&Number) > 0.0 )
      {
        DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
        v13._M_finish = (char *)&v13;
        v13._M_start_of_storage._M_data = (char *)&v13;
        std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block(&v13, 0x16u);
        v13._M_finish = (char *)memcpy(v13._M_start_of_storage._M_data, "isTracingThreatChange", 0x15u) + 21;
        *v13._M_finish = 0;
        DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v13);
        if ( (std::string *)v13._M_start_of_storage._M_data != &v13 )
        {
          if ( v13._M_start_of_storage._M_data )
          {
            if ( (unsigned int)(v13._M_buffers._M_end_of_storage - v13._M_start_of_storage._M_data) > 0x80 )
              CustomFree(v13._M_start_of_storage._M_data);
            else
              __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(
                v13._M_start_of_storage._M_data,
                v13._M_buffers._M_end_of_storage - v13._M_start_of_storage._M_data);
          }
        }
      }
    }
  }
}


// ===== 3b82e4 Character::_ClearProps(sfc::script::lua::Arguments const&,sfc::script::lua::ReturnValues &,void *) =====
int __fastcall Character::_ClearProps(
        int this,
        const sfc::script::lua::Arguments *a2,
        sfc::script::lua::ReturnValues *a3,
        void *a4)
{
  _DWORD *v4; // r3
  int v5; // r4
  int v6; // r3
  sfc::script::lua::Value *v7; // r0
  sfc::script::lua::Value *v8; // r0
  int v9; // r5
  sfc::script::lua::Value *v10; // r0
  Structs::CharacterProperties *Pointer; // r0
  _DWORD *v12; // r3
  sfc::script::lua::ReturnValues *v13; // [sp+4h] [bp-8h]
  sfc::script::lua::ReturnValues *v14; // [sp+4h] [bp-8h]

  v4 = *(_DWORD **)(this + 4);
  v5 = this;
  if ( !(1227133513 * ((v4[1] - *v4) >> 4)) )
    return this;
  v6 = *(_DWORD *)(*v4 + 4);
  if ( v6 != 2 )
    goto LABEL_4;
  v14 = a3;
  v8 = (sfc::script::lua::Value *)sfc::script::lua::Arguments::operator[](this, 0);
  this = sfc::script::lua::Value::getPointer(v8);
  a3 = v14;
  if ( !this )
  {
    v12 = *(_DWORD **)(v5 + 4);
    if ( !(1227133513 * ((v12[1] - *v12) >> 4)) )
      return this;
    v6 = *(_DWORD *)(*v12 + 4);
LABEL_4:
    if ( v6 == 1 )
    {
      v13 = a3;
      v7 = (sfc::script::lua::Value *)sfc::script::lua::Arguments::operator[](v5, 0);
      this = sfc::script::lua::Value::getBool(v7);
      if ( this )
        return CharProperties::PROPS_ResetSheet((sfc::script::lua::ReturnValues *)((char *)v13 + 1376), nullptr);
    }
    return this;
  }
  v9 = *(_DWORD *)(v5 + 4);
  v10 = *(sfc::script::lua::Value **)v9;
  if ( !(1227133513 * ((*(_DWORD *)(v9 + 4) - *(_DWORD *)v9) >> 4)) )
  {
    __ZSt24__stl_throw_out_of_rangePKc_veneer("vector");
    v10 = *(sfc::script::lua::Value **)v9;
  }
  Pointer = (Structs::CharacterProperties *)sfc::script::lua::Value::getPointer(v10);
  CharProperties::PROPS_ResetSheet((sfc::script::lua::ReturnValues *)((char *)v14 + 1376), Pointer);
  return CharProperties::RecalcProperties((sfc::script::lua::ReturnValues *)((char *)v14 + 1376), 1);
}


// ===== 3b842c Character::_RemoveBuff(sfc::script::lua::Arguments const&,sfc::script::lua::ReturnValues &,void *) =====
unsigned int __fastcall Character::_RemoveBuff(
        unsigned int this,
        const sfc::script::lua::Arguments *a2,
        sfc::script::lua::ReturnValues *a3,
        void *a4)
{
  _DWORD *v4; // r3
  int v5; // r5
  sfc::script::lua::Value *v6; // r0
  int *v7; // r3
  int v8; // r1
  int v9; // r3
  int v10; // r1
  sfc::script::lua::Value *v11; // r0
  unsigned int v12; // r4
  sfc::script::lua::Value *v13; // r0
  Structs::CharacterProperties *Pointer; // r3
  sfc::script::lua::Value *v15; // r0
  unsigned int UInteger; // r1

  v4 = *(_DWORD **)(this + 4);
  v5 = this;
  if ( 1227133513 * ((v4[1] - *v4) >> 4) )
  {
    if ( *(_DWORD *)(*v4 + 4) == 3 )
    {
      v6 = (sfc::script::lua::Value *)sfc::script::lua::Arguments::operator[](this, 0);
      this = sfc::script::lua::Value::getUInteger(v6);
      if ( this < Arrays::ClassTable::size )
      {
        v7 = *(int **)(v5 + 4);
        v8 = v7[1];
        v9 = *v7;
        v10 = (v8 - v9) >> 4;
        this = 153391689 * v10;
        if ( (unsigned int)(-1227133513 * v10) <= 1 )
        {
          v15 = (sfc::script::lua::Value *)sfc::script::lua::Arguments::operator[](v5, 0);
          UInteger = sfc::script::lua::Value::getUInteger(v15);
          return CharProperties::PROPS_DelBuff((int)a3 + 1376, UInteger, nullptr);
        }
        else if ( *(_DWORD *)(v9 + 116) == 2 )
        {
          v11 = (sfc::script::lua::Value *)sfc::script::lua::Arguments::operator[](v5, 0);
          v12 = sfc::script::lua::Value::getUInteger(v11);
          v13 = (sfc::script::lua::Value *)sfc::script::lua::Arguments::operator[](v5, 1u);
          Pointer = (Structs::CharacterProperties *)sfc::script::lua::Value::getPointer(v13);
          return CharProperties::PROPS_DelBuff((int)a3 + 1376, v12, Pointer);
        }
      }
    }
  }
  return this;
}


// ===== 3b856c Character::_GetSkillIDFromOID(sfc::script::lua::Arguments const&,sfc::script::lua::ReturnValues &,void *) =====
void __fastcall Character::_GetSkillIDFromOID(
        Character *this,
        const sfc::script::lua::Arguments *a2,
        sfc::script::lua::ReturnValues *a3,
        void *a4)
{
  int v4; // r3
  sfc::script::lua::Value *v7; // r0
  int v9; // r4
  float v10; // r0
  int SkillIDFromOID; // r1

  v4 = *((_DWORD *)this + 1);
  v7 = *(sfc::script::lua::Value **)v4;
  if ( 1227133513 * ((*(_DWORD *)(v4 + 4) - *(_DWORD *)v4) >> 4) )
  {
    if ( *((_DWORD *)v7 + 1) != 3 )
    {
      if ( Arrays::SkillTable::size <= (unsigned int)COERCE_FLOAT(sfc::script::lua::Value::getNumber(v7)) )
        return;
      v9 = *((_DWORD *)this + 1);
      v7 = *(sfc::script::lua::Value **)v9;
      if ( !(1227133513 * ((*(_DWORD *)(v9 + 4) - *(_DWORD *)v9) >> 4)) )
      {
        __ZSt24__stl_throw_out_of_rangePKc_veneer("vector");
        v7 = *(sfc::script::lua::Value **)v9;
      }
    }
    v10 = COERCE_FLOAT(sfc::script::lua::Value::getNumber(v7));
    SkillIDFromOID = Character::GetSkillIDFromOID(a3, (unsigned int)v10);
    sfc::script::lua::ReturnValues::pushInteger(a2, SkillIDFromOID);
  }
}


// ===== 3b8648 Character::_ClearAggro(sfc::script::lua::Arguments const&,sfc::script::lua::ReturnValues &,void *) =====
sfc::script::lua::Value *__fastcall Character::_ClearAggro(
        Character *this,
        const sfc::script::lua::Arguments *a2,
        sfc::script::lua::ReturnValues *a3,
        void *a4)
{
  int v4; // r3
  sfc::script::lua::Value *result; // r0
  int v6; // r3
  CharAI *v7; // r4
  Character *UserData; // r1

  v4 = *((_DWORD *)this + 1);
  result = *(sfc::script::lua::Value **)v4;
  if ( 1227133513 * ((*(_DWORD *)(v4 + 4) - *(_DWORD *)v4) >> 4) )
  {
    v6 = *((_DWORD *)result + 1);
    if ( v6 == 2 || v6 == 7 )
    {
      v7 = (sfc::script::lua::ReturnValues *)((char *)a3 + 968);
      UserData = (Character *)sfc::script::lua::Value::getUserData(result);
      return (sfc::script::lua::Value *)CharAI::AI_ClearAggro(v7, UserData);
    }
  }
  return result;
}


// ===== 3b86a8 Character::_CreateBuff(sfc::script::lua::Arguments const&,sfc::script::lua::ReturnValues &,void *) =====
void __fastcall Character::_CreateBuff(
        Character *this,
        const sfc::script::lua::Arguments *a2,
        sfc::script::lua::ReturnValues *a3,
        void *a4)
{
  int *v4; // r3
  int v7; // r1
  int v8; // r3
  sfc::script::lua::Value *v10; // r0
  int v11; // r7
  sfc::script::lua::Value *v12; // r0
  int v13; // r9
  unsigned int v14; // r3
  unsigned int *UInteger; // r10
  int v16; // r7
  unsigned int v17; // r11
  int v18; // r5
  char *String; // r12
  Structs::CharacterProperties *v20; // r1
  sfc::script::lua::Value *v21; // r0
  sfc::script::lua::Value *v22; // r0
  sfc::script::lua::Value *v23; // r0
  sfc::script::lua::Value *v24; // r0
  sfc::script::lua::Value *v25; // r0
  sfc::script::lua::Value *v26; // r0
  sfc::script::lua::Value *v27; // r0

  v4 = *((int **)this + 1);
  v7 = v4[1];
  v8 = *v4;
  if ( !(1227133513 * ((v7 - v8) >> 4)) )
    return;
  if ( *(_DWORD *)(v8 + 4) != 3 )
    return;
  v10 = (sfc::script::lua::Value *)sfc::script::lua::Arguments::operator[]((int)this, 0);
  if ( sfc::script::lua::Value::getUInteger(v10) >= Arrays::ClassTable::size )
    return;
  v11 = *((_DWORD *)this + 1);
  v12 = *(sfc::script::lua::Value **)v11;
  if ( !(1227133513 * ((*(_DWORD *)(v11 + 4) - *(_DWORD *)v11) >> 4)) )
  {
    __ZSt24__stl_throw_out_of_rangePKc_veneer("vector");
    v12 = *(sfc::script::lua::Value **)v11;
  }
  v13 = (int)COERCE_FLOAT(sfc::script::lua::Value::getNumber(v12));
  v14 = -1227133513 * ((*(_DWORD *)(*((_DWORD *)this + 1) + 4) - **((_DWORD **)this + 1)) >> 4);
  if ( v14 <= 1 )
    goto LABEL_10;
  if ( !*(_DWORD *)(sfc::script::lua::Arguments::operator[]((int)this, 1u) + 4) )
  {
    v14 = -1227133513 * ((*(_DWORD *)(*((_DWORD *)this + 1) + 4) - **((_DWORD **)this + 1)) >> 4);
LABEL_10:
    UInteger = nullptr;
    goto LABEL_11;
  }
  if ( *(_DWORD *)(sfc::script::lua::Arguments::operator[]((int)this, 1u) + 4) == 3 )
  {
    v25 = (sfc::script::lua::Value *)sfc::script::lua::Arguments::operator[]((int)this, 1u);
    UInteger = (unsigned int *)sfc::script::lua::Value::getUInteger(v25);
  }
  else
  {
    UInteger = nullptr;
  }
  v14 = -1227133513 * ((*(_DWORD *)(*((_DWORD *)this + 1) + 4) - **((_DWORD **)this + 1)) >> 4);
LABEL_11:
  if ( v14 <= 2 )
  {
LABEL_12:
    v16 = 1;
    goto LABEL_13;
  }
  if ( !*(_DWORD *)(sfc::script::lua::Arguments::operator[]((int)this, 2u) + 4) )
  {
    v14 = -1227133513 * ((*(_DWORD *)(*((_DWORD *)this + 1) + 4) - **((_DWORD **)this + 1)) >> 4);
    goto LABEL_12;
  }
  if ( *(_DWORD *)(sfc::script::lua::Arguments::operator[]((int)this, 2u) + 4) == 1 )
  {
    v24 = (sfc::script::lua::Value *)sfc::script::lua::Arguments::operator[]((int)this, 2u);
    v16 = !sfc::script::lua::Value::getBool(v24);
  }
  else
  {
    v21 = (sfc::script::lua::Value *)sfc::script::lua::Arguments::operator[]((int)this, 2u);
    v16 = (int)COERCE_FLOAT(sfc::script::lua::Value::getNumber(v21));
  }
  v14 = -1227133513 * ((*(_DWORD *)(*((_DWORD *)this + 1) + 4) - **((_DWORD **)this + 1)) >> 4);
LABEL_13:
  if ( v14 <= 3 )
  {
LABEL_14:
    v17 = 0;
    goto LABEL_15;
  }
  if ( !*(_DWORD *)(sfc::script::lua::Arguments::operator[]((int)this, 3u) + 4) )
  {
    v14 = -1227133513 * ((*(_DWORD *)(*((_DWORD *)this + 1) + 4) - **((_DWORD **)this + 1)) >> 4);
    goto LABEL_14;
  }
  if ( *(_DWORD *)(sfc::script::lua::Arguments::operator[]((int)this, 3u) + 4) == 3 )
  {
    v27 = (sfc::script::lua::Value *)sfc::script::lua::Arguments::operator[]((int)this, 3u);
    v17 = sfc::script::lua::Value::getUInteger(v27);
  }
  else
  {
    v17 = 0;
  }
  v14 = -1227133513 * ((*(_DWORD *)(*((_DWORD *)this + 1) + 4) - **((_DWORD **)this + 1)) >> 4);
LABEL_15:
  if ( v14 <= 4 )
  {
LABEL_16:
    v18 = -1;
    goto LABEL_17;
  }
  if ( !*(_DWORD *)(sfc::script::lua::Arguments::operator[]((int)this, 4u) + 4) )
  {
    v14 = -1227133513 * ((*(_DWORD *)(*((_DWORD *)this + 1) + 4) - **((_DWORD **)this + 1)) >> 4);
    goto LABEL_16;
  }
  if ( *(_DWORD *)(sfc::script::lua::Arguments::operator[]((int)this, 4u) + 4) == 3
    || (v22 = (sfc::script::lua::Value *)sfc::script::lua::Arguments::operator[]((int)this, 4u),
        sfc::script::lua::Value::getUInteger(v22) < Arrays::AnimatedEffectTable::size) )
  {
    v23 = (sfc::script::lua::Value *)sfc::script::lua::Arguments::operator[]((int)this, 4u);
    v18 = (int)COERCE_FLOAT(sfc::script::lua::Value::getNumber(v23));
    v14 = -1227133513 * ((*(_DWORD *)(*((_DWORD *)this + 1) + 4) - **((_DWORD **)this + 1)) >> 4);
  }
  else
  {
    v18 = -1;
    v14 = -1227133513 * ((*(_DWORD *)(*((_DWORD *)this + 1) + 4) - **((_DWORD **)this + 1)) >> 4);
  }
LABEL_17:
  if ( v14 > 5 && *(_DWORD *)(sfc::script::lua::Arguments::operator[]((int)this, 5u) + 4) )
  {
    if ( *(_DWORD *)(sfc::script::lua::Arguments::operator[]((int)this, 5u) + 4) == 4 )
    {
      v26 = (sfc::script::lua::Value *)sfc::script::lua::Arguments::operator[]((int)this, 5u);
      String = (char *)sfc::script::lua::Value::getString(v26);
    }
    else
    {
      String = "";
    }
  }
  else
  {
    String = "";
  }
  v20 = CharProperties::PROPS_AddBuff(
          (sfc::script::lua::ReturnValues *)((char *)a3 + 1376),
          v13,
          UInteger,
          v16,
          v17,
          v18,
          String);
  if ( v20 )
    sfc::script::lua::ReturnValues::pushPointer(a2, v20);
}


// ===== 3b8bd8 Character::_DoSkill(sfc::script::lua::Arguments const&,sfc::script::lua::ReturnValues &,void *) =====
int __fastcall Character::_DoSkill(
        int this,
        const sfc::script::lua::Arguments *a2,
        sfc::script::lua::ReturnValues *a3,
        void *a4)
{
  _DWORD *v4; // r3
  int v5; // r4
  sfc::script::lua::Value *v6; // r0
  unsigned int UInteger; // r5
  int v8; // r5
  sfc::script::lua::Value *v9; // r0
  unsigned int v10; // r1

  v4 = *(_DWORD **)(this + 4);
  v5 = this;
  if ( 1227133513 * ((v4[1] - *v4) >> 4) )
  {
    if ( *(_DWORD *)(*v4 + 4) == 3 )
    {
      v6 = (sfc::script::lua::Value *)sfc::script::lua::Arguments::operator[](this, 0);
      UInteger = sfc::script::lua::Value::getUInteger(v6);
      this = Character::GetCharSkillList(a3);
      if ( UInteger < *(_DWORD *)(this + 4) )
      {
        v8 = *(_DWORD *)(v5 + 4);
        v9 = *(sfc::script::lua::Value **)v8;
        if ( !(1227133513 * ((*(_DWORD *)(v8 + 4) - *(_DWORD *)v8) >> 4)) )
        {
          __ZSt24__stl_throw_out_of_rangePKc_veneer("vector");
          v9 = *(sfc::script::lua::Value **)v8;
        }
        v10 = (unsigned int)COERCE_FLOAT(sfc::script::lua::Value::getNumber(v9));
        return CharAI::AI_UseSkill((sfc::script::lua::ReturnValues *)((char *)a3 + 968), v10);
      }
    }
  }
  return this;
}


// ===== 3b8cb8 Character::_BeginSkill(sfc::script::lua::Arguments const&,sfc::script::lua::ReturnValues &,void *) =====
int __fastcall Character::_BeginSkill(int this, const sfc::script::lua::Arguments *a2, Character **a3, void *a4)
{
  _DWORD *v4; // r3
  int v5; // r4
  sfc::script::lua::Value *v6; // r0
  unsigned int UInteger; // r5
  int v8; // r5
  sfc::script::lua::Value *v9; // r0
  Character *v10; // r1

  v4 = *(_DWORD **)(this + 4);
  v5 = this;
  if ( 1227133513 * ((v4[1] - *v4) >> 4) )
  {
    if ( *(_DWORD *)(*v4 + 4) == 3 )
    {
      v6 = (sfc::script::lua::Value *)sfc::script::lua::Arguments::operator[](this, 0);
      UInteger = sfc::script::lua::Value::getUInteger(v6);
      this = Character::GetCharSkillList((Character *)a3);
      if ( UInteger < *(_DWORD *)(this + 4) )
      {
        v8 = *(_DWORD *)(v5 + 4);
        v9 = *(sfc::script::lua::Value **)v8;
        if ( !(1227133513 * ((*(_DWORD *)(v8 + 4) - *(_DWORD *)v8) >> 4)) )
        {
          __ZSt24__stl_throw_out_of_rangePKc_veneer("vector");
          v9 = *(sfc::script::lua::Value **)v8;
        }
        v10 = (Character *)COERCE_FLOAT(sfc::script::lua::Value::getNumber(v9));
        return CharAI::AI_BeginSkill(a3 + 242, v10);
      }
    }
  }
  return this;
}


// ===== 3b8d98 Character::_WarpBehind(sfc::script::lua::Arguments const&,sfc::script::lua::ReturnValues &,void *) =====
sfc::script::lua::Value *__fastcall Character::_WarpBehind(
        Character *this,
        const sfc::script::lua::Arguments *a2,
        sfc::script::lua::ReturnValues *a3,
        void *a4)
{
  int v4; // r3
  sfc::script::lua::Value *result; // r0
  int v7; // r3
  GameObject *v8; // r6
  float *v9; // r0
  float v10; // r8
  float v11; // r7
  float v12; // r0
  int v13; // r7
  _DWORD v14[3]; // [sp+10h] [bp-18h] BYREF
  float v15; // [sp+1Ch] [bp-Ch] BYREF
  float v16; // [sp+20h] [bp-8h]
  float v17; // [sp+24h] [bp-4h]

  v4 = *((_DWORD *)this + 1);
  result = *(sfc::script::lua::Value **)v4;
  if ( 1227133513 * ((*(_DWORD *)(v4 + 4) - *(_DWORD *)v4) >> 4) )
  {
    v7 = *((_DWORD *)result + 1);
    if ( v7 == 2 || v7 == 7 )
    {
      result = (sfc::script::lua::Value *)sfc::script::lua::Value::getUserData(result);
      v8 = result;
      if ( result )
      {
        v17 = 0.0;
        v15 = 0.0;
        v16 = 0.0;
        GameObject::GetLookAtVec((int)result, &v15);
        v14[1] = LODWORD(v16) + 0x80000000;
        v14[2] = LODWORD(v17) + 0x80000000;
        v14[0] = LODWORD(v15) + 0x80000000;
        v9 = (float *)Point3D<float>::normalize(v14);
        v10 = v9[1] * 100.0;
        v11 = v9[2] * 100.0;
        v12 = *v9 * 100.0;
        v16 = v10;
        v15 = v12;
        v17 = v11;
        v13 = *((_DWORD *)a3 + 222);
        GameObject::GetTargetPosition(v8);
        return (sfc::script::lua::Value *)v2Controller::Cmd_WarpTo(v13);
      }
    }
  }
  return result;
}


// ===== 3b8ed8 Character::_LookAt(sfc::script::lua::Arguments const&,sfc::script::lua::ReturnValues &,void *) =====
sfc::script::lua::Value *__fastcall Character::_LookAt(
        Character *this,
        const sfc::script::lua::Arguments *a2,
        sfc::script::lua::ReturnValues *a3,
        void *a4)
{
  int v4; // r3
  sfc::script::lua::Value *result; // r0
  int v6; // r3
  v2Controller *v7; // r4
  GameObject *UserData; // r1

  v4 = *((_DWORD *)this + 1);
  result = *(sfc::script::lua::Value **)v4;
  if ( 1227133513 * ((*(_DWORD *)(v4 + 4) - *(_DWORD *)v4) >> 4) )
  {
    v6 = *((_DWORD *)result + 1);
    if ( v6 == 2 || v6 == 7 )
    {
      v7 = *((v2Controller **)a3 + 222);
      UserData = (GameObject *)sfc::script::lua::Value::getUserData(result);
      return (sfc::script::lua::Value *)v2Controller::Cmd_LookAt(v7, UserData);
    }
  }
  return result;
}


// ===== 3b8f38 Character::_SetTarget(sfc::script::lua::Arguments const&,sfc::script::lua::ReturnValues &,void *) =====
void __fastcall Character::_SetTarget(
        Character *this,
        const sfc::script::lua::Arguments *a2,
        sfc::script::lua::ReturnValues *a3,
        void *a4)
{
  int v4; // r3
  sfc::script::lua::Value *v5; // r0
  int v6; // r3
  CharAI *v7; // r4
  GameObject *UserData; // r1

  v4 = *((_DWORD *)this + 1);
  v5 = *(sfc::script::lua::Value **)v4;
  if ( 1227133513 * ((*(_DWORD *)(v4 + 4) - *(_DWORD *)v4) >> 4) )
  {
    v6 = *((_DWORD *)v5 + 1);
    if ( v6 == 2 || v6 == 7 )
    {
      v7 = (sfc::script::lua::ReturnValues *)((char *)a3 + 968);
      UserData = (GameObject *)sfc::script::lua::Value::getUserData(v5);
      CharAI::AI_SetTarget(v7, UserData, 0);
    }
  }
}


// ===== 3b8f9c Character::_GetCurrentSkillInfo(sfc::script::lua::Arguments const&,sfc::script::lua::ReturnValues &,void *) =====
void __fastcall Character::_GetCurrentSkillInfo(
        Character *this,
        const sfc::script::lua::Arguments *a2,
        sfc::script::lua::ReturnValues *a3,
        void *a4)
{
  int v4; // r3
  sfc::script::lua::Value *v7; // r0
  float v9; // r8
  int v10; // r4
  int v11; // r4
  int SkillLevel; // r1

  v4 = *((_DWORD *)this + 1);
  v7 = *(sfc::script::lua::Value **)v4;
  if ( 1227133513 * ((*(_DWORD *)(v4 + 4) - *(_DWORD *)v4) >> 4) )
  {
    if ( *((_DWORD *)v7 + 1) != 3 )
    {
      v9 = COERCE_FLOAT(sfc::script::lua::Value::getNumber(v7));
      if ( *(_DWORD *)(Character::GetCharSkillList(a3) + 4) <= (unsigned int)v9 )
        return;
      v10 = *((_DWORD *)this + 1);
      v7 = *(sfc::script::lua::Value **)v10;
      if ( !(1227133513 * ((*(_DWORD *)(v10 + 4) - *(_DWORD *)v10) >> 4)) )
      {
        __ZSt24__stl_throw_out_of_rangePKc_veneer("vector");
        v7 = *(sfc::script::lua::Value **)v10;
      }
    }
    v11 = (int)COERCE_FLOAT(sfc::script::lua::Value::getNumber(v7));
    Character::GetCharSkill(a3, v11);
    SkillLevel = Character::SG_GetSkillLevel(a3, v11);
    sfc::script::lua::ReturnValues::pushInteger(a2, SkillLevel);
  }
}


// ===== 3b9084 Character::_SetMaster(sfc::script::lua::Arguments const&,sfc::script::lua::ReturnValues &,void *) =====
sfc::script::lua::Value *__fastcall Character::_SetMaster(
        Character *this,
        const sfc::script::lua::Arguments *a2,
        sfc::script::lua::ReturnValues *a3,
        void *a4)
{
  int v4; // r3
  sfc::script::lua::Value *result; // r0
  int v6; // r3
  char *v7; // r4
  Character *UserData; // r1

  v4 = *((_DWORD *)this + 1);
  result = *(sfc::script::lua::Value **)v4;
  if ( 1227133513 * ((*(_DWORD *)(v4 + 4) - *(_DWORD *)v4) >> 4) )
  {
    v6 = *((_DWORD *)result + 1);
    if ( v6 == 2 || v6 == 7 )
    {
      v7 = (char *)a3 + 968;
      UserData = (Character *)sfc::script::lua::Value::getUserData(result);
      return (sfc::script::lua::Value *)CharAI::AI_SetMaster((int)v7, UserData);
    }
  }
  return result;
}


// ===== 3b90e4 Character::_SetSpellCooldownTimerId(sfc::script::lua::Arguments const&,sfc::script::lua::ReturnValues &,void *) =====
int __fastcall Character::_SetSpellCooldownTimerId(
        int this,
        const sfc::script::lua::Arguments *a2,
        sfc::script::lua::ReturnValues *a3,
        void *a4)
{
  _DWORD *v4; // r3
  int v5; // r3
  int v6; // r4
  int i; // r3
  int v8; // r1
  sfc::script::lua::Value *v9; // r0
  int UInteger; // r0
  sfc::script::lua::ReturnValues *v11; // [sp+4h] [bp-4h]
  sfc::script::lua::ReturnValues *v12; // [sp+4h] [bp-4h]

  v4 = *(_DWORD **)(this + 4);
  if ( 1227133513 * ((v4[1] - *v4) >> 4) )
  {
    v5 = *(_DWORD *)(*v4 + 4);
    if ( v5 == 3 )
    {
      v12 = a3;
      v9 = (sfc::script::lua::Value *)sfc::script::lua::Arguments::operator[](this, 0);
      UInteger = sfc::script::lua::Value::getUInteger(v9);
      a3 = v12;
      v6 = UInteger;
    }
    else
    {
      if ( v5 )
        return this;
      v6 = -1;
    }
    v11 = a3;
    this = *(_DWORD *)(Character::GetCharFaeryList(a3) + 4);
    if ( this )
    {
      for ( i = 0; i != this; ++i )
      {
        v8 = *(_DWORD *)(*((_DWORD *)v11 + 290) + 4 * i);
        if ( v8 )
          *(_DWORD *)(v8 + 24) = v6;
      }
    }
  }
  return this;
}


// ===== 3b91a0 Character::_Flee(sfc::script::lua::Arguments const&,sfc::script::lua::ReturnValues &,void *) =====
sfc::script::lua::Value *__fastcall Character::_Flee(
        Character *this,
        const sfc::script::lua::Arguments *a2,
        GameObject **a3,
        void *a4)
{
  int v4; // r3
  sfc::script::lua::Value *result; // r0
  int v7; // r3
  int v8; // r7

  v4 = *((_DWORD *)this + 1);
  result = *(sfc::script::lua::Value **)v4;
  if ( 1227133513 * ((*(_DWORD *)(v4 + 4) - *(_DWORD *)v4) >> 4) )
  {
    v7 = *((_DWORD *)result + 1);
    if ( v7 == 2 || v7 == 7 )
    {
      result = (sfc::script::lua::Value *)sfc::script::lua::Value::getUserData(result);
      if ( a3[258] )
      {
        GameObject::GetTargetPosition((GameObject *)a3);
        GameObject::GetTargetPosition(a3[258]);
        v8 = (int)a3[222];
        GameObject::GetTargetPosition((GameObject *)a3);
        return (sfc::script::lua::Value *)v2Controller::Cmd_MoveTo(v8);
      }
    }
  }
  return result;
}


// ===== 3b92a4 Character::_SpellCombatRoll(sfc::script::lua::Arguments const&,sfc::script::lua::ReturnValues &,void *) =====
sfc::script::lua::Value *__fastcall Character::_SpellCombatRoll(
        Character *this,
        const sfc::script::lua::Arguments *a2,
        sfc::script::lua::ReturnValues *a3,
        void *a4)
{
  int CurrentFaerieId; // r0
  int v8; // r2
  int v9; // r7
  sfc::script::lua::Value *result; // r0
  int v11; // r3
  sfc::script::lua::Value *v12; // r8
  _DWORD *v13; // r6
  int CharFaery; // r0
  int v15[10]; // [sp+Ch] [bp-34h] BYREF
  _BYTE v16[12]; // [sp+34h] [bp-Ch] BYREF

  CurrentFaerieId = Character::SG_GetCurrentFaerieId(a3, -1);
  v8 = *((_DWORD *)this + 1);
  v9 = CurrentFaerieId;
  result = *(sfc::script::lua::Value **)v8;
  if ( 1227133513 * ((*(_DWORD *)(v8 + 4) - *(_DWORD *)v8) >> 4) )
  {
    v11 = *((_DWORD *)result + 1);
    if ( v11 == 2 || v11 == 7 )
    {
      result = (sfc::script::lua::Value *)sfc::script::lua::Value::getUserData(result);
      v12 = result;
      if ( result )
      {
        ObjectBase::GetHandle((ObjectBase *)v16);
        v13 = (_DWORD *)ObjectHandle::operator Character *(v16);
        if ( v13 )
        {
          CharFaery = Character::GetCharFaery(a3, v9);
          Character::F_SpellAttack(v15, a3, v13, *(_DWORD *)(CharFaery + 8), 0);
          Character::F_ApplyResult((int)v15, a3, v13, 0);
          return (sfc::script::lua::Value *)sfc::script::lua::ReturnValues::pushInteger(a2, v15[0]);
        }
        else
        {
          result = (sfc::script::lua::Value *)(*(int (__fastcall **)(sfc::script::lua::Value *, sfc::script::lua::ReturnValues *))(*(_DWORD *)v12 + 144))(
                                                v12,
                                                a3);
          if ( result == (sfc::script::lua::Value *)&byte_8 )
          {
            (*(void (__fastcall **)(sfc::script::lua::Value *, sfc::script::lua::ReturnValues *))(*(_DWORD *)v12 + 152))(
              v12,
              a3);
            return (sfc::script::lua::Value *)sfc::script::lua::ReturnValues::pushBoolean(a2, 0);
          }
        }
      }
    }
  }
  return result;
}


// ===== 3b93cc Character::_EndSkill(sfc::script::lua::Arguments const&,sfc::script::lua::ReturnValues &,void *) =====
int __fastcall Character::_EndSkill(
        int this,
        const sfc::script::lua::Arguments *a2,
        sfc::script::lua::ReturnValues *a3,
        void *a4)
{
  _DWORD *v4; // r3
  int v5; // r4
  sfc::script::lua::Value *v6; // r0
  unsigned int UInteger; // r5
  int v8; // r5
  sfc::script::lua::Value *v9; // r0
  unsigned int v10; // r1

  v4 = *(_DWORD **)(this + 4);
  v5 = this;
  if ( 1227133513 * ((v4[1] - *v4) >> 4) )
  {
    if ( *(_DWORD *)(*v4 + 4) == 3 )
    {
      v6 = (sfc::script::lua::Value *)sfc::script::lua::Arguments::operator[](this, 0);
      UInteger = sfc::script::lua::Value::getUInteger(v6);
      this = Character::GetCharSkillList(a3);
      if ( UInteger < *(_DWORD *)(this + 4) )
      {
        v8 = *(_DWORD *)(v5 + 4);
        v9 = *(sfc::script::lua::Value **)v8;
        if ( !(1227133513 * ((*(_DWORD *)(v8 + 4) - *(_DWORD *)v8) >> 4)) )
        {
          __ZSt24__stl_throw_out_of_rangePKc_veneer("vector");
          v9 = *(sfc::script::lua::Value **)v8;
        }
        v10 = (unsigned int)COERCE_FLOAT(sfc::script::lua::Value::getNumber(v9));
        return CharAI::AI_EndSkill((sfc::script::lua::ReturnValues *)((char *)a3 + 968), v10);
      }
    }
  }
  return this;
}


// ===== 3b94ac Character::_StopSkill(sfc::script::lua::Arguments const&,sfc::script::lua::ReturnValues &,void *) =====
sfc::script::lua::Value *__fastcall Character::_StopSkill(
        Character *this,
        const sfc::script::lua::Arguments *a2,
        sfc::script::lua::ReturnValues *a3,
        void *a4)
{
  int v4; // r3
  sfc::script::lua::Value *result; // r0
  float v8; // r7
  int CharSkillList; // r6
  int v10; // r4
  CharAI *v11; // r5
  unsigned int v12; // r1

  v4 = *((_DWORD *)this + 1);
  result = *(sfc::script::lua::Value **)v4;
  if ( 1227133513 * ((*(_DWORD *)(v4 + 4) - *(_DWORD *)v4) >> 4) )
  {
    if ( *((_DWORD *)result + 1) == 3 )
    {
      v11 = (sfc::script::lua::ReturnValues *)((char *)a3 + 968);
    }
    else
    {
      v8 = COERCE_FLOAT(sfc::script::lua::Value::getNumber(result));
      CharSkillList = Character::GetCharSkillList(a3);
      result = (sfc::script::lua::Value *)v8;
      if ( *(_DWORD *)(CharSkillList + 4) <= (unsigned int)v8 )
        return result;
      v10 = *((_DWORD *)this + 1);
      v11 = (sfc::script::lua::ReturnValues *)((char *)a3 + 968);
      result = *(sfc::script::lua::Value **)v10;
      if ( !(1227133513 * ((*(_DWORD *)(v10 + 4) - *(_DWORD *)v10) >> 4)) )
      {
        __ZSt24__stl_throw_out_of_rangePKc_veneer("vector");
        result = *(sfc::script::lua::Value **)v10;
      }
    }
    v12 = (unsigned int)COERCE_FLOAT(sfc::script::lua::Value::getNumber(result));
    return (sfc::script::lua::Value *)CharAI::AI_EndSkill(v11, v12);
  }
  return result;
}


// ===== 3b9580 Character::_SetStunState(sfc::script::lua::Arguments const&,sfc::script::lua::ReturnValues &,void *) =====
CharStateMachine *__fastcall Character::_SetStunState(
        CharStateMachine *this,
        const sfc::script::lua::Arguments *a2,
        sfc::script::lua::ReturnValues *a3,
        void *a4)
{
  int v4; // r3
  int v5; // r4
  sfc::script::lua::Value *v6; // r12
  unsigned int v7; // r3
  Character **v8; // r5
  _BOOL4 v9; // r4
  int v10; // r5
  sfc::script::lua::ReturnValues *v11; // r2
  int v12; // r6
  float v13; // r0
  sfc::script::lua::Value *v14; // r0
  _BOOL4 Bool; // r0

  v4 = *((_DWORD *)this + 1);
  v5 = (int)this;
  v6 = *(sfc::script::lua::Value **)v4;
  v7 = -1227133513 * ((*(_DWORD *)(v4 + 4) - *(_DWORD *)v4) >> 4);
  if ( v7 && *((_DWORD *)v6 + 1) == 3 )
  {
    if ( v7 > 1 )
    {
      v10 = *(_DWORD *)(sfc::script::lua::Arguments::operator[]((int)this, 1u) + 4);
      v11 = a3;
      if ( v10 == 1 )
      {
        v14 = (sfc::script::lua::Value *)sfc::script::lua::Arguments::operator[](v5, 1u);
        Bool = sfc::script::lua::Value::getBool(v14);
        v12 = *(_DWORD *)(v5 + 4);
        v11 = a3;
        v9 = Bool;
      }
      else
      {
        v12 = *(_DWORD *)(v5 + 4);
        v9 = 1;
      }
      v6 = *(sfc::script::lua::Value **)v12;
      v8 = (Character **)((char *)v11 + 1276);
      if ( !(-1227133513 * ((*(_DWORD *)(v12 + 4) - *(_DWORD *)v12) >> 4)) )
      {
        __ZSt24__stl_throw_out_of_rangePKc_veneer("vector");
        v6 = *(sfc::script::lua::Value **)v12;
      }
    }
    else
    {
      v8 = (Character **)((char *)a3 + 1276);
      v9 = 1;
    }
    v13 = COERCE_FLOAT(sfc::script::lua::Value::getNumber(v6));
    return CharStateMachine::SM_SetStunState(v8, (unsigned int)v13, v9, nullptr, 0);
  }
  return this;
}


// ===== 3b96b0 Character::_SetScareState(sfc::script::lua::Arguments const&,sfc::script::lua::ReturnValues &,void *) =====
CharStateMachine *__fastcall Character::_SetScareState(
        CharStateMachine *this,
        const sfc::script::lua::Arguments *a2,
        sfc::script::lua::ReturnValues *a3,
        void *a4)
{
  int v4; // r3
  int v5; // r4
  sfc::script::lua::Value *v6; // r12
  unsigned int v7; // r3
  Character **v8; // r5
  _BOOL4 v9; // r4
  int v10; // r5
  sfc::script::lua::ReturnValues *v11; // r2
  int v12; // r6
  float v13; // r0
  sfc::script::lua::Value *v14; // r0
  _BOOL4 Bool; // r0

  v4 = *((_DWORD *)this + 1);
  v5 = (int)this;
  v6 = *(sfc::script::lua::Value **)v4;
  v7 = -1227133513 * ((*(_DWORD *)(v4 + 4) - *(_DWORD *)v4) >> 4);
  if ( v7 && *((_DWORD *)v6 + 1) == 3 )
  {
    if ( v7 > 1 )
    {
      v10 = *(_DWORD *)(sfc::script::lua::Arguments::operator[]((int)this, 1u) + 4);
      v11 = a3;
      if ( v10 == 1 )
      {
        v14 = (sfc::script::lua::Value *)sfc::script::lua::Arguments::operator[](v5, 1u);
        Bool = sfc::script::lua::Value::getBool(v14);
        v12 = *(_DWORD *)(v5 + 4);
        v11 = a3;
        v9 = Bool;
      }
      else
      {
        v12 = *(_DWORD *)(v5 + 4);
        v9 = 1;
      }
      v6 = *(sfc::script::lua::Value **)v12;
      v8 = (Character **)((char *)v11 + 1276);
      if ( !(-1227133513 * ((*(_DWORD *)(v12 + 4) - *(_DWORD *)v12) >> 4)) )
      {
        __ZSt24__stl_throw_out_of_rangePKc_veneer("vector");
        v6 = *(sfc::script::lua::Value **)v12;
      }
    }
    else
    {
      v8 = (Character **)((char *)a3 + 1276);
      v9 = 1;
    }
    v13 = COERCE_FLOAT(sfc::script::lua::Value::getNumber(v6));
    return CharStateMachine::SM_SetScareState(v8, (unsigned int)v13, v9, nullptr, 0);
  }
  return this;
}


// ===== 3b97e0 Character::_SetSkillCooldownTimerId(sfc::script::lua::Arguments const&,sfc::script::lua::ReturnValues &,void *) =====
void __fastcall Character::_SetSkillCooldownTimerId(
        Character *this,
        const sfc::script::lua::Arguments *a2,
        sfc::script::lua::ReturnValues *a3,
        void *a4)
{
  sfc::script::lua::Value **v4; // r5
  unsigned int v7; // r3
  sfc::script::lua::Value *v8; // r0
  float v9; // r7
  int *v10; // r5
  int v11; // r2
  sfc::script::lua::Value *v12; // r0
  int v13; // r5
  sfc::script::lua::Value *v14; // r0

  v4 = *((sfc::script::lua::Value ***)this + 1);
  v7 = -1227133513 * ((v4[1] - *v4) >> 4);
  if ( v7 > 1 )
  {
    v8 = *v4;
    if ( *((_DWORD *)*v4 + 1) != 3 )
    {
      v9 = COERCE_FLOAT(sfc::script::lua::Value::getNumber(v8));
      if ( *(_DWORD *)(Character::GetCharSkillList(a3) + 4) <= (unsigned int)v9 )
        return;
      v4 = *((sfc::script::lua::Value ***)this + 1);
      v8 = *v4;
      v7 = -1227133513 * ((v4[1] - *v4) >> 4);
    }
    if ( v7 <= 1 )
    {
      __ZSt24__stl_throw_out_of_rangePKc_veneer("vector");
      v8 = *v4;
    }
    if ( *((_DWORD *)v8 + 29) == 3 )
      goto LABEL_12;
    v10 = *((int **)this + 1);
    v11 = *v10;
    if ( (unsigned int)(-1227133513 * ((v10[1] - *v10) >> 4)) <= 1 )
    {
      __ZSt24__stl_throw_out_of_rangePKc_veneer("vector");
      v11 = *v10;
    }
    if ( !*(_DWORD *)(v11 + 116) )
    {
LABEL_12:
      v12 = (sfc::script::lua::Value *)sfc::script::lua::Arguments::operator[](this, 0);
      v13 = *(_DWORD *)(*((_DWORD *)a3 + 287) + 4 * (int)COERCE_FLOAT(sfc::script::lua::Value::getNumber(v12)));
      if ( v13 )
      {
        if ( *(_DWORD *)(sfc::script::lua::Arguments::operator[](this, 1) + 4) )
        {
          v14 = (sfc::script::lua::Value *)sfc::script::lua::Arguments::operator[](this, 1);
          *(_DWORD *)(v13 + 24) = sfc::script::lua::Value::getUInteger(v14);
        }
        else
        {
          *(_DWORD *)(v13 + 24) = -1;
        }
      }
    }
  }
}


// ===== 3b99d0 Character::_SpawnSkillProjectile(sfc::script::lua::Arguments const&,sfc::script::lua::ReturnValues &,void *) =====
void __fastcall Character::_SpawnSkillProjectile(
        Character *this,
        const sfc::script::lua::Arguments *a2,
        sfc::script::lua::ReturnValues *a3,
        void *a4)
{
  _DWORD *v4; // r6
  int *v8; // r6
  int v9; // r2
  sfc::script::lua::Value *v10; // r0
  sfc::script::lua::Value *v11; // r0
  CharAISkillScript *v12; // r6
  sfc::script::lua::Value *v13; // r0
  unsigned int v14; // r0
  float *v15; // r6
  sfc::script::lua::Value *v16; // r0
  unsigned int v17; // r7
  sfc::script::lua::Value *v18; // r0
  float v19; // r0
  float v20; // r7
  sfc::script::lua::Value *v21; // r0
  int UserData; // r0
  float v23; // r12
  sfc::script::lua::Value *v24; // r0
  int v25; // r0
  sfc::script::lua::Value *v26; // r0
  unsigned int UInteger; // r7
  sfc::script::lua::Value *v28; // r0
  char Bool; // r0
  float v30[3]; // [sp+Ch] [bp-Ch] BYREF

  v4 = *((_DWORD **)this + 1);
  if ( (unsigned int)(-1227133513 * ((v4[1] - *v4) >> 4)) > 1 && *(_DWORD *)(*v4 + 4) == 3 )
  {
    v8 = *((int **)this + 1);
    v9 = *v8;
    if ( (unsigned int)(-1227133513 * ((v8[1] - *v8) >> 4)) <= 1 )
    {
      __ZSt24__stl_throw_out_of_rangePKc_veneer("vector");
      v9 = *v8;
    }
    if ( *(_DWORD *)(v9 + 116) == 3 )
    {
      v10 = (sfc::script::lua::Value *)sfc::script::lua::Arguments::operator[](this, 1);
      if ( sfc::script::lua::Value::getUInteger(v10) < (unsigned int)Arrays::ProjectileTable::size )
      {
        v11 = (sfc::script::lua::Value *)sfc::script::lua::Arguments::operator[](this, 0);
        v12 = *(CharAISkillScript **)(*((_DWORD *)a3 + 287)
                                    + 4 * (int)COERCE_FLOAT(sfc::script::lua::Value::getNumber(v11)));
        if ( !v12 )
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
              "script && \"WOW! If a non-existing script was able to call this method, MIRACLE!\"",
              "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Objects\\Characters\\Character_LuaCallbacks.cpp",
              916);
          }
        }
        if ( (unsigned int)(-1227133513 * ((*(_DWORD *)(*((_DWORD *)this + 1) + 4) - **((_DWORD **)this + 1)) >> 4)) <= 2 )
          goto LABEL_10;
        if ( *(_DWORD *)(sfc::script::lua::Arguments::operator[](this, 2) + 4) == 1 )
        {
          v26 = (sfc::script::lua::Value *)sfc::script::lua::Arguments::operator[](this, 1);
          UInteger = sfc::script::lua::Value::getUInteger(v26);
          v28 = (sfc::script::lua::Value *)sfc::script::lua::Arguments::operator[](this, 2);
          Bool = sfc::script::lua::Value::getBool(v28);
          v15 = (float *)CharAISkillScript::SpawnProjectile(v12, UInteger, Bool);
        }
        else
        {
          if ( (unsigned int)(-1227133513 * ((*(_DWORD *)(*((_DWORD *)this + 1) + 4) - **((_DWORD **)this + 1)) >> 4)) <= 2
            || *(_DWORD *)(sfc::script::lua::Arguments::operator[](this, 2) + 4) != 3 )
          {
LABEL_10:
            v13 = (sfc::script::lua::Value *)sfc::script::lua::Arguments::operator[](this, 1);
            v14 = sfc::script::lua::Value::getUInteger(v13);
            v15 = (float *)CharAISkillScript::SpawnProjectile(v12, v14, 0);
            goto LABEL_11;
          }
          v16 = (sfc::script::lua::Value *)sfc::script::lua::Arguments::operator[](this, 1);
          v17 = sfc::script::lua::Value::getUInteger(v16);
          v18 = (sfc::script::lua::Value *)sfc::script::lua::Arguments::operator[](this, 2);
          v19 = COERCE_FLOAT(sfc::script::lua::Value::getNumber(v18));
          v15 = (float *)CharAISkillScript::SpawnProjectile(v12, v17, v19);
        }
LABEL_11:
        if ( (unsigned int)(-1227133513 * ((*(_DWORD *)(*((_DWORD *)this + 1) + 4) - **((_DWORD **)this + 1)) >> 4)) > 2
          && *(_DWORD *)(sfc::script::lua::Arguments::operator[](this, 2) + 4) == 7 )
        {
          v20 = v15[90];
          v21 = (sfc::script::lua::Value *)sfc::script::lua::Arguments::operator[](this, 2);
          UserData = sfc::script::lua::Value::getUserData(v21);
          v23 = *(float *)(UserData + 352);
          v30[1] = *(float *)(UserData + 356);
          v30[0] = v23;
          v30[2] = v20;
          GameObject::SetPosition((GameObject *)v15, v30, 1);
          if ( (unsigned int)(-1227133513 * ((*(_DWORD *)(*((_DWORD *)this + 1) + 4) - **((_DWORD **)this + 1)) >> 4)) > 3
            && *(_DWORD *)(sfc::script::lua::Arguments::operator[](this, 3) + 4) == 7 )
          {
            v24 = (sfc::script::lua::Value *)sfc::script::lua::Arguments::operator[](this, 3);
            v25 = sfc::script::lua::Value::getUserData(v24);
            GameObject::SetDestination(v15, (_DWORD *)(v25 + 352));
          }
        }
        sfc::script::lua::ReturnValues::pushPointer(a2, v15);
      }
    }
  }
}


// ===== 3b9d8c Character::_GetProp(sfc::script::lua::Arguments const&,sfc::script::lua::ReturnValues &,void *) =====
void __fastcall Character::_GetProp(
        Character *this,
        const sfc::script::lua::Arguments *a2,
        sfc::script::lua::ReturnValues *a3,
        void *a4)
{
  int *v4; // r3
  int v7; // r1
  int v8; // r3
  sfc::script::lua::Value *v10; // r0
  sfc::script::lua::Value *v11; // r0
  int *v12; // r3
  int v13; // r2
  int v14; // r3
  sfc::script::lua::Value *v15; // r0
  unsigned int v16; // r2
  int *v17; // r1
  char *v18; // r0
  int Property; // r1
  sfc::script::lua::Value *v20; // r0
  sfc::script::lua::Value *v21; // r0
  unsigned int v22; // r4
  sfc::script::lua::Value *v23; // r0
  Structs::CharacterProperties *Pointer; // r0
  int v25; // r1
  sfc::script::lua::Value *v26; // r0
  unsigned int UInteger; // r10
  sfc::script::lua::Value *v28; // r0
  _BOOL4 Bool; // r0
  char *v30; // r1
  bool v31; // zf

  v4 = *((int **)this + 1);
  v7 = v4[1];
  v8 = *v4;
  if ( 1227133513 * ((v7 - v8) >> 4) )
  {
    if ( *(_DWORD *)(v8 + 4) == 3 )
    {
      v10 = (sfc::script::lua::Value *)sfc::script::lua::Arguments::operator[]((int)this, 0);
      sfc::script::lua::Value::getUInteger(v10);
      v11 = (sfc::script::lua::Value *)sfc::script::lua::Arguments::operator[]((int)this, 0);
      if ( sfc::script::lua::Value::getUInteger(v11) <= 0xDF )
      {
        v12 = *((int **)this + 1);
        v13 = v12[1];
        v14 = *v12;
        if ( (unsigned int)(-1227133513 * ((v13 - v14) >> 4)) <= 1 )
          goto LABEL_8;
        if ( *(_DWORD *)(v14 + 116) != 2 )
        {
          if ( *(_DWORD *)(sfc::script::lua::Arguments::operator[]((int)this, 1u) + 4) == 1 )
          {
            v26 = (sfc::script::lua::Value *)sfc::script::lua::Arguments::operator[]((int)this, 0);
            UInteger = sfc::script::lua::Value::getUInteger(v26);
            v28 = (sfc::script::lua::Value *)sfc::script::lua::Arguments::operator[]((int)this, 1u);
            Bool = sfc::script::lua::Value::getBool(v28);
            v31 = !Bool;
            if ( !Bool )
              v30 = (char *)a3 + 4080;
            v18 = (char *)a3 + 1376;
            if ( v31 )
            {
              v17 = (int *)(v30 + 4);
              v16 = UInteger;
            }
            else
            {
              v16 = UInteger;
              v17 = &CharProperties::s_temp;
            }
            goto LABEL_9;
          }
LABEL_8:
          v15 = (sfc::script::lua::Value *)sfc::script::lua::Arguments::operator[]((int)this, 0);
          v16 = sfc::script::lua::Value::getUInteger(v15);
          v17 = (int *)((char *)a3 + 4084);
          v18 = (char *)a3 + 1376;
LABEL_9:
          Property = CharProperties::_GetProperty((int)v18, (int)v17, v16);
          sfc::script::lua::ReturnValues::pushInteger(a2, Property);
          return;
        }
        v20 = (sfc::script::lua::Value *)sfc::script::lua::Arguments::operator[]((int)this, 1u);
        if ( sfc::script::lua::Value::getPointer(v20) )
        {
          v21 = (sfc::script::lua::Value *)sfc::script::lua::Arguments::operator[]((int)this, 0);
          v22 = sfc::script::lua::Value::getUInteger(v21);
          v23 = (sfc::script::lua::Value *)sfc::script::lua::Arguments::operator[]((int)this, 1u);
          Pointer = (Structs::CharacterProperties *)sfc::script::lua::Value::getPointer(v23);
          v25 = CharProperties::PROPS_GetFromSheet((sfc::script::lua::ReturnValues *)((char *)a3 + 1376), v22, Pointer);
          sfc::script::lua::ReturnValues::pushInteger(a2, v25);
        }
      }
    }
  }
}


// ===== 3b9f44 Character::_Attack(sfc::script::lua::Arguments const&,sfc::script::lua::ReturnValues &,void *) =====
sfc::script::lua::Value *__fastcall Character::_Attack(
        Character *this,
        const sfc::script::lua::Arguments *a2,
        sfc::script::lua::ReturnValues *a3,
        void *a4)
{
  int v4; // r3
  sfc::script::lua::Value *result; // r0
  GameObject *v6; // r1
  int v7; // r3
  v2Controller *v8; // r4
  GameObject *UserData; // r1

  v4 = *((_DWORD *)this + 1);
  result = *(sfc::script::lua::Value **)v4;
  if ( 1227133513 * ((*(_DWORD *)(v4 + 4) - *(_DWORD *)v4) >> 4) )
  {
    v7 = *((_DWORD *)result + 1);
    if ( v7 == 2 || v7 == 7 )
    {
      v8 = *((v2Controller **)a3 + 222);
      UserData = (GameObject *)sfc::script::lua::Value::getUserData(result);
      return (sfc::script::lua::Value *)v2Controller::Cmd_Attack(v8, UserData);
    }
  }
  else
  {
    v6 = *((GameObject **)a3 + 258);
    if ( v6 )
      return (sfc::script::lua::Value *)v2Controller::Cmd_Attack(*((v2Controller **)a3 + 222), v6);
  }
  return result;
}


// ===== 3b9fbc Character::_SkillCombatRoll(sfc::script::lua::Arguments const&,sfc::script::lua::ReturnValues &,void *) =====
void __fastcall Character::_SkillCombatRoll(
        Character *this,
        const sfc::script::lua::Arguments *a2,
        sfc::script::lua::ReturnValues *a3,
        void *a4)
{
  _DWORD *v4; // r6
  sfc::script::lua::Value *v8; // r0
  unsigned int UInteger; // r6
  int *v10; // r6
  int v11; // r3
  int *v12; // r6
  int v13; // r2
  sfc::script::lua::Value *v14; // r0
  int v15; // r8
  sfc::script::lua::Value *v16; // r0
  int UserData; // r6
  _DWORD *v18; // r10
  int CharSkill; // r0
  int v20; // r8
  int v21; // r6
  int v22[10]; // [sp+Ch] [bp-34h] BYREF
  _BYTE v23[12]; // [sp+34h] [bp-Ch] BYREF

  v4 = *((_DWORD **)this + 1);
  if ( (unsigned int)(-1227133513 * ((v4[1] - *v4) >> 4)) > 1 && *(_DWORD *)(*v4 + 4) == 3 )
  {
    v8 = (sfc::script::lua::Value *)sfc::script::lua::Arguments::operator[](this, 0);
    UInteger = sfc::script::lua::Value::getUInteger(v8);
    if ( UInteger < *(_DWORD *)(Character::GetCharSkillList(a3) + 4) )
    {
      v10 = *((int **)this + 1);
      v11 = *v10;
      if ( (unsigned int)(-1227133513 * ((v10[1] - *v10) >> 4)) <= 1 )
      {
        __ZSt24__stl_throw_out_of_rangePKc_veneer("vector");
        v11 = *v10;
      }
      if ( *(_DWORD *)(v11 + 116) == 2 )
        goto LABEL_11;
      v12 = *((int **)this + 1);
      v13 = *v12;
      if ( (unsigned int)(-1227133513 * ((v12[1] - *v12) >> 4)) <= 1 )
      {
        __ZSt24__stl_throw_out_of_rangePKc_veneer("vector");
        v13 = *v12;
      }
      if ( *(_DWORD *)(v13 + 116) == 7 )
      {
LABEL_11:
        v14 = (sfc::script::lua::Value *)sfc::script::lua::Arguments::operator[](this, 0);
        v15 = sfc::script::lua::Value::getUInteger(v14);
        v16 = (sfc::script::lua::Value *)sfc::script::lua::Arguments::operator[](this, 1);
        UserData = sfc::script::lua::Value::getUserData(v16);
        if ( UserData )
        {
          ObjectBase::GetHandle((ObjectBase *)v23);
          v18 = (_DWORD *)ObjectHandle::operator Character *(v23);
          if ( v18 )
          {
            CharSkill = Character::GetCharSkill(a3, v15);
            v20 = *(_DWORD *)(CharSkill + 28);
            v21 = CharSkill;
            if ( (v20 & 0x800000) != 0 )
            {
              if ( ItemInventory::HasMainHandWeapon((sfc::script::lua::ReturnValues *)((char *)a3 + 892)) )
              {
                Character::F_SkillAttack(v22, a3, v18, v20, *(_DWORD *)(v21 + 20));
                Character::F_ApplyResult((int)v22, a3, v18, 0);
                sfc::script::lua::ReturnValues::pushInteger(a2, v22[0]);
              }
              if ( ItemInventory::HasOffHandWeapon((sfc::script::lua::ReturnValues *)((char *)a3 + 892)) )
              {
                Character::F_SkillAttack(v22, a3, v18, v20 | 0x4000000, *(_DWORD *)(v21 + 20));
                Character::F_ApplyResult((int)v22, a3, v18, 0);
                sfc::script::lua::ReturnValues::pushInteger(a2, v22[0]);
              }
            }
            else
            {
              Character::F_SkillAttack(v22, a3, v18, *(_DWORD *)(CharSkill + 28), *(_DWORD *)(CharSkill + 20));
              Character::F_ApplyResult((int)v22, a3, v18, v20 & 0x800000);
              sfc::script::lua::ReturnValues::pushInteger(a2, v22[0]);
            }
          }
          else if ( (*(int (__fastcall **)(int, sfc::script::lua::ReturnValues *))(*(_DWORD *)UserData + 144))(
                      UserData,
                      a3) == 8 )
          {
            (*(void (__fastcall **)(int, sfc::script::lua::ReturnValues *))(*(_DWORD *)UserData + 152))(UserData, a3);
            sfc::script::lua::ReturnValues::pushBoolean(a2, 0);
          }
        }
      }
    }
  }
}


// ===== 3ba298 Character::_SetProjectileTarget(sfc::script::lua::Arguments const&,sfc::script::lua::ReturnValues &,void *) =====
void __fastcall Character::_SetProjectileTarget(int a1)
{
  _DWORD *v1; // r5
  int *v3; // r5
  int v4; // r2
  sfc::script::lua::Value *v5; // r0
  int Pointer; // r5
  sfc::script::lua::Value *v7; // r0

  v1 = *(_DWORD **)(a1 + 4);
  if ( (unsigned int)(-1227133513 * ((v1[1] - *v1) >> 4)) > 1 && *(_DWORD *)(*v1 + 4) == 2 )
  {
    v3 = *(int **)(a1 + 4);
    v4 = *v3;
    if ( (unsigned int)(-1227133513 * ((v3[1] - *v3) >> 4)) <= 1 )
    {
      __ZSt24__stl_throw_out_of_rangePKc_veneer("vector");
      v4 = *v3;
    }
    if ( *(_DWORD *)(v4 + 116) == 7 )
    {
      v5 = (sfc::script::lua::Value *)sfc::script::lua::Arguments::operator[](a1, 0);
      Pointer = sfc::script::lua::Value::getPointer(v5);
      if ( Pointer )
      {
        v7 = (sfc::script::lua::Value *)sfc::script::lua::Arguments::operator[](a1, 1);
        *(_DWORD *)(Pointer + 900) = sfc::script::lua::Value::getUserData(v7);
      }
    }
  }
}


// ===== 3ba388 Character::_PlayAnim(sfc::script::lua::Arguments const&,sfc::script::lua::ReturnValues &,void *) =====
unsigned int __fastcall Character::_PlayAnim(
        unsigned int this,
        const sfc::script::lua::Arguments *a2,
        sfc::script::lua::ReturnValues *a3,
        void *a4)
{
  _DWORD *v4; // r3
  int v6; // r5
  sfc::script::lua::Value *v7; // r0
  int v8; // r11
  int v9; // r10
  int v10; // r2
  int v11; // r9
  sfc::script::lua::Value *v12; // r0
  unsigned int v13; // r3
  int v14; // r8
  int v15; // r10
  int v16; // r8
  int v17; // r11
  sfc::script::lua::Value *v18; // r0
  bool Bool; // r2
  int v20; // r8
  int *v21; // r8
  int v22; // r0
  int v23; // r4

  v4 = *(_DWORD **)(this + 4);
  v6 = this;
  if ( 1227133513 * ((v4[1] - *v4) >> 4) )
  {
    if ( *(_DWORD *)(*v4 + 4) == 3 )
    {
      v7 = (sfc::script::lua::Value *)sfc::script::lua::Arguments::operator[](this, 0);
      this = sfc::script::lua::Value::getUInteger(v7);
      if ( this < Arrays::AnimDict::size )
      {
        v8 = Character::_PlayAnim(sfc::script::lua::Arguments const&,sfc::script::lua::ReturnValues &,void *)::SLOT++;
        if ( Character::_PlayAnim(sfc::script::lua::Arguments const&,sfc::script::lua::ReturnValues &,void *)::SLOT <= 4 )
        {
          v9 = v8 + 21;
          v17 = v8 + 16;
          v15 = 20 * v9;
          v16 = 20 * v17;
        }
        else
        {
          Character::_PlayAnim(sfc::script::lua::Arguments const&,sfc::script::lua::ReturnValues &,void *)::SLOT = 0;
          v15 = 400;
          v16 = 300;
          v17 = 15;
        }
        v10 = Arrays::AnimTable::members;
        if ( *(_DWORD *)(Arrays::AnimTable::members + v16 + 8) != 2 )
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
              "Arrays::AnimTable::members[idOne].StepsSize == 2 && \"WTF! Someone messed up the format of the data in ani"
              "mations.pyarray\"",
              "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Objects\\Characters\\Character_LuaCallbacks.cpp",
              1232);
            v10 = Arrays::AnimTable::members;
          }
        }
        if ( *(_DWORD *)(v10 + v15 + 8) != 1 )
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
              "Arrays::AnimTable::members[idTwo].StepsSize == 1 && \"WTF! Someone messed up the format of the data in ani"
              "mations.pyarray\"",
              "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Objects\\Characters\\Character_LuaCallbacks.cpp",
              1233);
            v10 = Arrays::AnimTable::members;
          }
        }
        v11 = *(_DWORD *)(v6 + 4);
        v12 = *(sfc::script::lua::Value **)v11;
        v13 = -1227133513 * ((*(_DWORD *)(v11 + 4) - *(_DWORD *)v11) >> 4);
        if ( v13 > 1 && *((_DWORD *)v12 + 29) == 3 )
        {
          v20 = *(_DWORD *)(v10 + v16 + 12);
          *(_DWORD *)(v20 + 8) = (int)COERCE_FLOAT(sfc::script::lua::Value::getNumber(v12));
          v21 = *(int **)(v6 + 4);
          v22 = *v21;
          v23 = *(_DWORD *)(Arrays::AnimTable::members + v15 + 12);
          if ( (unsigned int)(-1227133513 * ((v21[1] - *v21) >> 4)) <= 1 )
          {
            __ZSt24__stl_throw_out_of_rangePKc_veneer("vector");
            v22 = *v21;
          }
          *(_DWORD *)(v23 + 8) = (int)COERCE_FLOAT(sfc::script::lua::Value::getNumber((sfc::script::lua::Value *)(v22 + 112)));
        }
        else
        {
          v14 = *(_DWORD *)(v10 + v16 + 12);
          if ( !v13 )
          {
            __ZSt24__stl_throw_out_of_rangePKc_veneer("vector");
            v12 = *(sfc::script::lua::Value **)v11;
          }
          *(_DWORD *)(v14 + 8) = (int)COERCE_FLOAT(sfc::script::lua::Value::getNumber(v12));
          *(_DWORD *)(*(_DWORD *)(Arrays::AnimTable::members + v15 + 12) + 8) = -1;
        }
        if ( (unsigned int)(-1227133513 * ((*(_DWORD *)(*(_DWORD *)(v6 + 4) + 4) - **(_DWORD **)(v6 + 4)) >> 4)) > 2
          && *(_DWORD *)(sfc::script::lua::Arguments::operator[](v6, 2u) + 4) == 1 )
        {
          v18 = (sfc::script::lua::Value *)sfc::script::lua::Arguments::operator[](v6, 2u);
          Bool = sfc::script::lua::Value::getBool(v18);
          return CharStateMachine::SM_SetAnimState((sfc::script::lua::ReturnValues *)((char *)a3 + 1276), v17, Bool, 0);
        }
        else
        {
          return CharStateMachine::SM_SetAnimState((sfc::script::lua::ReturnValues *)((char *)a3 + 1276), v17, 0, 0);
        }
      }
    }
  }
  return this;
}


// ===== 3ba71c Character::_HeadTo(sfc::script::lua::Arguments const&,sfc::script::lua::ReturnValues &,void *) =====
void __fastcall Character::_HeadTo(
        Character *this,
        const sfc::script::lua::Arguments *a2,
        sfc::script::lua::ReturnValues *a3,
        void *a4)
{
  int *v4; // r6
  int v6; // r1
  unsigned int v8; // r3
  int *v9; // r2
  unsigned int v10; // r3
  sfc::script::lua::Value *v11; // r0
  float v12; // r7
  sfc::script::lua::Value *v13; // r0
  float v14; // r6
  sfc::script::lua::Value *v15; // r0
  sfc::script::lua::Value *v16; // r0
  float v17; // r12
  float v18; // r2
  float v19; // r11
  float v20; // r10
  float v21; // r9
  sfc::script::lua::Value *v22; // r0
  float v23; // r8
  sfc::script::lua::Value *v24; // r0
  float v25; // r6
  sfc::script::lua::Value *v26; // r0
  float v27; // r4
  Character *v28; // r0
  int v29; // r4
  sfc::script::lua::Value *v30; // r0
  GameObject *UserData; // r0
  float v32; // [sp+4h] [bp-28h]
  float v33; // [sp+8h] [bp-24h]
  float v34; // [sp+Ch] [bp-20h]
  float v35; // [sp+10h] [bp-1Ch] BYREF
  float v36; // [sp+14h] [bp-18h]
  float v37; // [sp+18h] [bp-14h]
  float v38; // [sp+1Ch] [bp-10h]
  float v39; // [sp+20h] [bp-Ch]
  float v40; // [sp+24h] [bp-8h]

  v4 = *((int **)this + 1);
  v6 = *v4;
  v8 = -1227133513 * ((v4[1] - *v4) >> 4);
  if ( v8 == 1 )
  {
    if ( *(_DWORD *)(sfc::script::lua::Arguments::operator[](this, 0) + 4) == 2 )
    {
      v9 = *((int **)this + 1);
      v6 = *v9;
      v10 = -1227133513 * ((v9[1] - *v9) >> 4);
    }
    else
    {
      if ( *(_DWORD *)(sfc::script::lua::Arguments::operator[](this, 0) + 4) != 7 )
        return;
      v9 = *((int **)this + 1);
      v6 = *v9;
      v10 = -1227133513 * ((v9[1] - *v9) >> 4);
    }
    if ( v10 <= 2 )
      goto LABEL_5;
  }
  else if ( v8 <= 2 )
  {
    return;
  }
  if ( *(_DWORD *)(v6 + 4) == 3 )
  {
    v9 = *((int **)this + 1);
    v10 = -1227133513 * ((v9[1] - *v9) >> 4);
  }
  else
  {
    if ( *(_DWORD *)(sfc::script::lua::Arguments::operator[](this, 1) + 4) != 3
      && *(_DWORD *)(sfc::script::lua::Arguments::operator[](this, 2) + 4) != 3 )
    {
      return;
    }
    v9 = *((int **)this + 1);
    v10 = -1227133513 * ((v9[1] - *v9) >> 4);
  }
LABEL_5:
  if ( v10 == 1 )
  {
    v28 = this;
    v29 = *((_DWORD *)a3 + 222);
    v30 = (sfc::script::lua::Value *)sfc::script::lua::Arguments::operator[](v28, 0);
    UserData = (GameObject *)sfc::script::lua::Value::getUserData(v30);
    v2Controller::Cmd_MoveTo(v29, UserData);
  }
  else if ( v10 > 2 )
  {
    v38 = 0.0;
    v39 = 0.0;
    v40 = 0.0;
    if ( (unsigned int)(-1227133513 * ((v9[1] - *v9) >> 4)) > 3
      && *(_DWORD *)(sfc::script::lua::Arguments::operator[](this, 3) + 4) == 1
      && (v16 = (sfc::script::lua::Value *)sfc::script::lua::Arguments::operator[](this, 3),
          sfc::script::lua::Value::getBool(v16)) )
    {
      v37 = 0.0;
      v35 = 0.0;
      v36 = 0.0;
      GameObject::GetLookAtVec((int)a3, &v35);
      v17 = *((float *)a3 + 88);
      v18 = *((float *)a3 + 89);
      v40 = *((float *)a3 + 90);
      v38 = v17;
      v39 = v18;
      v32 = *(float *)&dword_99F87C;
      v19 = *(float *)&dword_99F880;
      v20 = *(float *)&Vec3f_K;
      v33 = v36;
      v21 = v37;
      v34 = v35;
      v22 = (sfc::script::lua::Value *)sfc::script::lua::Arguments::operator[](this, 0);
      v23 = COERCE_FLOAT(sfc::script::lua::Value::getNumber(v22));
      v38 = v38 + (float)(v23 * (float)((float)(v32 * v21) - (float)(v19 * v33)));
      v39 = v39 + (float)(v23 * (float)((float)(v19 * v34) - (float)(v21 * v20)));
      v40 = v40 + (float)(v23 * (float)((float)(v33 * v20) - (float)(v32 * v34)));
      v24 = (sfc::script::lua::Value *)sfc::script::lua::Arguments::operator[](this, 1);
      v25 = COERCE_FLOAT(sfc::script::lua::Value::getNumber(v24));
      v38 = v38 + (float)(v25 * v35);
      v39 = v39 + (float)(v25 * v36);
      v40 = v40 + (float)(v25 * v37);
      v26 = (sfc::script::lua::Value *)sfc::script::lua::Arguments::operator[](this, 2);
      v27 = COERCE_FLOAT(sfc::script::lua::Value::getNumber(v26));
      v38 = v38 + (float)(v27 * *(float *)&Vec3f_K);
      v39 = v39 + (float)(v27 * *(float *)&dword_99F87C);
      v40 = v40 + (float)(v27 * *(float *)&dword_99F880);
    }
    else
    {
      v11 = (sfc::script::lua::Value *)sfc::script::lua::Arguments::operator[](this, 0);
      v12 = COERCE_FLOAT(sfc::script::lua::Value::getNumber(v11));
      v13 = (sfc::script::lua::Value *)sfc::script::lua::Arguments::operator[](this, 1);
      v14 = COERCE_FLOAT(sfc::script::lua::Value::getNumber(v13));
      v15 = (sfc::script::lua::Value *)sfc::script::lua::Arguments::operator[](this, 2);
      v38 = v12;
      v39 = v14;
      v40 = COERCE_FLOAT(sfc::script::lua::Value::getNumber(v15));
    }
    v2Controller::Cmd_HeadTo(*((_DWORD *)a3 + 222));
  }
}


// ===== 3babdc Character::_ApplyPropClass(sfc::script::lua::Arguments const&,sfc::script::lua::ReturnValues &,void *) =====
unsigned int __fastcall Character::_ApplyPropClass(
        unsigned int this,
        const sfc::script::lua::Arguments *a2,
        sfc::script::lua::ReturnValues *a3,
        void *a4)
{
  _DWORD *v4; // r3
  int v6; // r5
  sfc::script::lua::Value *v7; // r0
  int v8; // r7
  sfc::script::lua::Value *v9; // r0
  unsigned int v10; // r3
  CharProperties *v11; // r6
  int v12; // r1
  sfc::script::lua::Value *v13; // r0
  sfc::script::lua::Value *v14; // r0
  unsigned int v15; // r7
  sfc::script::lua::Value *v16; // r0
  Structs::CharacterProperties *Pointer; // r0
  sfc::script::lua::Value *v18; // r0
  unsigned int UInteger; // r7
  sfc::script::lua::Value *v20; // r0
  bool Bool; // r0

  v4 = *(_DWORD **)(this + 4);
  v6 = this;
  if ( !(1227133513 * ((v4[1] - *v4) >> 4)) )
    return this;
  if ( *(_DWORD *)(*v4 + 4) != 3 )
    return this;
  v7 = (sfc::script::lua::Value *)sfc::script::lua::Arguments::operator[](this, 0);
  this = sfc::script::lua::Value::getUInteger(v7);
  if ( this > Arrays::ClassTable::size )
    return this;
  v8 = *(_DWORD *)(v6 + 4);
  v9 = *(sfc::script::lua::Value **)v8;
  v10 = -1227133513 * ((*(_DWORD *)(v8 + 4) - *(_DWORD *)v8) >> 4);
  if ( v10 <= 1 )
    goto LABEL_9;
  if ( *((_DWORD *)v9 + 29) != 2 )
  {
    if ( *(_DWORD *)(sfc::script::lua::Arguments::operator[](v6, 1u) + 4) == 1 )
    {
      v18 = (sfc::script::lua::Value *)sfc::script::lua::Arguments::operator[](v6, 0);
      UInteger = sfc::script::lua::Value::getUInteger(v18);
      v20 = (sfc::script::lua::Value *)sfc::script::lua::Arguments::operator[](v6, 1u);
      Bool = sfc::script::lua::Value::getBool(v20);
      return CharProperties::PROPS_ApplyClass((sfc::script::lua::ReturnValues *)((char *)a3 + 1376), UInteger, Bool);
    }
    v8 = *(_DWORD *)(v6 + 4);
    v9 = *(sfc::script::lua::Value **)v8;
    v10 = -1227133513 * ((*(_DWORD *)(v8 + 4) - *(_DWORD *)v8) >> 4);
LABEL_9:
    v11 = (sfc::script::lua::ReturnValues *)((char *)a3 + 1376);
    if ( !v10 )
    {
      __ZSt24__stl_throw_out_of_rangePKc_veneer("vector");
      v9 = *(sfc::script::lua::Value **)v8;
    }
    v12 = (unsigned int)COERCE_FLOAT(sfc::script::lua::Value::getNumber(v9));
    return CharProperties::PROPS_ApplyClass(v11, v12, 0);
  }
  v13 = (sfc::script::lua::Value *)sfc::script::lua::Arguments::operator[](v6, 1u);
  this = sfc::script::lua::Value::getPointer(v13);
  if ( this )
  {
    v14 = (sfc::script::lua::Value *)sfc::script::lua::Arguments::operator[](v6, 0);
    v15 = sfc::script::lua::Value::getUInteger(v14);
    v16 = (sfc::script::lua::Value *)sfc::script::lua::Arguments::operator[](v6, 1u);
    Pointer = (Structs::CharacterProperties *)sfc::script::lua::Value::getPointer(v16);
    CharProperties::PROPS_ApplyClassToSheet((sfc::script::lua::ReturnValues *)((char *)a3 + 1376), v15, Pointer);
    return CharProperties::RecalcProperties((sfc::script::lua::ReturnValues *)((char *)a3 + 1376), 1);
  }
  return this;
}


// ===== 3bada8 Character::_MoveTo(sfc::script::lua::Arguments const&,sfc::script::lua::ReturnValues &,void *) =====
void __fastcall Character::_MoveTo(
        Character *this,
        const sfc::script::lua::Arguments *a2,
        sfc::script::lua::ReturnValues *a3,
        void *a4)
{
  int *v4; // r6
  int v6; // r1
  unsigned int v8; // r3
  int *v9; // r2
  unsigned int v10; // r3
  sfc::script::lua::Value *v11; // r0
  float v12; // r7
  sfc::script::lua::Value *v13; // r0
  float v14; // r6
  sfc::script::lua::Value *v15; // r0
  sfc::script::lua::Value *v16; // r0
  float v17; // r12
  float v18; // r2
  float v19; // r11
  float v20; // r10
  float v21; // r9
  sfc::script::lua::Value *v22; // r0
  float v23; // r8
  sfc::script::lua::Value *v24; // r0
  float v25; // r6
  sfc::script::lua::Value *v26; // r0
  float v27; // r4
  Character *v28; // r0
  int v29; // r4
  sfc::script::lua::Value *v30; // r0
  GameObject *UserData; // r0
  float v32; // [sp+4h] [bp-28h]
  float v33; // [sp+8h] [bp-24h]
  float v34; // [sp+Ch] [bp-20h]
  float v35; // [sp+10h] [bp-1Ch] BYREF
  float v36; // [sp+14h] [bp-18h]
  float v37; // [sp+18h] [bp-14h]
  float v38; // [sp+1Ch] [bp-10h] BYREF
  float v39; // [sp+20h] [bp-Ch]
  float v40; // [sp+24h] [bp-8h]

  v4 = *((int **)this + 1);
  v6 = *v4;
  v8 = -1227133513 * ((v4[1] - *v4) >> 4);
  if ( v8 == 1 )
  {
    if ( *(_DWORD *)(sfc::script::lua::Arguments::operator[](this, 0) + 4) == 2 )
    {
      v9 = *((int **)this + 1);
      v6 = *v9;
      v10 = -1227133513 * ((v9[1] - *v9) >> 4);
    }
    else
    {
      if ( *(_DWORD *)(sfc::script::lua::Arguments::operator[](this, 0) + 4) != 7 )
        return;
      v9 = *((int **)this + 1);
      v6 = *v9;
      v10 = -1227133513 * ((v9[1] - *v9) >> 4);
    }
    if ( v10 <= 2 )
      goto LABEL_5;
  }
  else if ( v8 <= 2 )
  {
    return;
  }
  if ( *(_DWORD *)(v6 + 4) == 3 )
  {
    v9 = *((int **)this + 1);
    v10 = -1227133513 * ((v9[1] - *v9) >> 4);
  }
  else
  {
    if ( *(_DWORD *)(sfc::script::lua::Arguments::operator[](this, 1) + 4) != 3
      && *(_DWORD *)(sfc::script::lua::Arguments::operator[](this, 2) + 4) != 3 )
    {
      return;
    }
    v9 = *((int **)this + 1);
    v10 = -1227133513 * ((v9[1] - *v9) >> 4);
  }
LABEL_5:
  if ( v10 == 1 )
  {
    v28 = this;
    v29 = *((_DWORD *)a3 + 222);
    v30 = (sfc::script::lua::Value *)sfc::script::lua::Arguments::operator[](v28, 0);
    UserData = (GameObject *)sfc::script::lua::Value::getUserData(v30);
    v2Controller::Cmd_MoveTo(v29, UserData);
  }
  else if ( v10 > 2 )
  {
    v38 = 0.0;
    v39 = 0.0;
    v40 = 0.0;
    if ( (unsigned int)(-1227133513 * ((v9[1] - *v9) >> 4)) > 3
      && *(_DWORD *)(sfc::script::lua::Arguments::operator[](this, 3) + 4) == 1
      && (v16 = (sfc::script::lua::Value *)sfc::script::lua::Arguments::operator[](this, 3),
          sfc::script::lua::Value::getBool(v16)) )
    {
      v37 = 0.0;
      v35 = 0.0;
      v36 = 0.0;
      GameObject::GetLookAtVec((int)a3, &v35);
      v17 = *((float *)a3 + 88);
      v18 = *((float *)a3 + 89);
      v40 = *((float *)a3 + 90);
      v38 = v17;
      v39 = v18;
      v32 = *(float *)&dword_99F87C;
      v19 = *(float *)&dword_99F880;
      v20 = *(float *)&Vec3f_K;
      v33 = v36;
      v21 = v37;
      v34 = v35;
      v22 = (sfc::script::lua::Value *)sfc::script::lua::Arguments::operator[](this, 0);
      v23 = COERCE_FLOAT(sfc::script::lua::Value::getNumber(v22));
      v38 = v38 + (float)(v23 * (float)((float)(v32 * v21) - (float)(v19 * v33)));
      v39 = v39 + (float)(v23 * (float)((float)(v19 * v34) - (float)(v21 * v20)));
      v40 = v40 + (float)(v23 * (float)((float)(v33 * v20) - (float)(v32 * v34)));
      v24 = (sfc::script::lua::Value *)sfc::script::lua::Arguments::operator[](this, 1);
      v25 = COERCE_FLOAT(sfc::script::lua::Value::getNumber(v24));
      v38 = v38 + (float)(v25 * v35);
      v39 = v39 + (float)(v25 * v36);
      v40 = v40 + (float)(v25 * v37);
      v26 = (sfc::script::lua::Value *)sfc::script::lua::Arguments::operator[](this, 2);
      v27 = COERCE_FLOAT(sfc::script::lua::Value::getNumber(v26));
      v38 = v38 + (float)(v27 * *(float *)&Vec3f_K);
      v39 = v39 + (float)(v27 * *(float *)&dword_99F87C);
      v40 = v40 + (float)(v27 * *(float *)&dword_99F880);
    }
    else
    {
      v11 = (sfc::script::lua::Value *)sfc::script::lua::Arguments::operator[](this, 0);
      v12 = COERCE_FLOAT(sfc::script::lua::Value::getNumber(v11));
      v13 = (sfc::script::lua::Value *)sfc::script::lua::Arguments::operator[](this, 1);
      v14 = COERCE_FLOAT(sfc::script::lua::Value::getNumber(v13));
      v15 = (sfc::script::lua::Value *)sfc::script::lua::Arguments::operator[](this, 2);
      v38 = v12;
      v39 = v14;
      v40 = COERCE_FLOAT(sfc::script::lua::Value::getNumber(v15));
    }
    v2Controller::Cmd_MoveTo(*((_DWORD *)a3 + 222), &v38);
  }
}


// ===== 3bb268 Character::_WarpTo(sfc::script::lua::Arguments const&,sfc::script::lua::ReturnValues &,void *) =====
void __fastcall Character::_WarpTo(
        Character *this,
        const sfc::script::lua::Arguments *a2,
        sfc::script::lua::ReturnValues *a3,
        void *a4)
{
  int *v4; // r6
  int v6; // r1
  unsigned int v8; // r3
  int *v9; // r2
  unsigned int v10; // r3
  sfc::script::lua::Value *v11; // r0
  int v12; // r7
  sfc::script::lua::Value *v13; // r0
  int v14; // r6
  sfc::script::lua::Value *v15; // r0
  sfc::script::lua::Value *v16; // r0
  float v17; // r12
  float v18; // r2
  float v19; // r11
  float v20; // r10
  float v21; // r9
  sfc::script::lua::Value *v22; // r0
  float v23; // r8
  sfc::script::lua::Value *v24; // r0
  float v25; // r6
  sfc::script::lua::Value *v26; // r0
  float v27; // r4
  Character *v28; // r0
  int v29; // r4
  sfc::script::lua::Value *v30; // r0
  float v31; // [sp+4h] [bp-28h]
  float v32; // [sp+8h] [bp-24h]
  float v33; // [sp+Ch] [bp-20h]
  float v34; // [sp+10h] [bp-1Ch] BYREF
  float v35; // [sp+14h] [bp-18h]
  float v36; // [sp+18h] [bp-14h]
  float v37; // [sp+1Ch] [bp-10h]
  float v38; // [sp+20h] [bp-Ch]
  float v39; // [sp+24h] [bp-8h]

  v4 = *((int **)this + 1);
  v6 = *v4;
  v8 = -1227133513 * ((v4[1] - *v4) >> 4);
  if ( v8 == 1 )
  {
    if ( *(_DWORD *)(sfc::script::lua::Arguments::operator[]((int)this, 0) + 4) == 2 )
    {
      v9 = *((int **)this + 1);
      v6 = *v9;
      v10 = -1227133513 * ((v9[1] - *v9) >> 4);
    }
    else
    {
      if ( *(_DWORD *)(sfc::script::lua::Arguments::operator[]((int)this, 0) + 4) != 7 )
        return;
      v9 = *((int **)this + 1);
      v6 = *v9;
      v10 = -1227133513 * ((v9[1] - *v9) >> 4);
    }
    if ( v10 <= 2 )
      goto LABEL_5;
  }
  else if ( v8 <= 2 )
  {
    return;
  }
  if ( *(_DWORD *)(v6 + 4) == 3 )
  {
    v9 = *((int **)this + 1);
    v10 = -1227133513 * ((v9[1] - *v9) >> 4);
  }
  else
  {
    if ( *(_DWORD *)(sfc::script::lua::Arguments::operator[]((int)this, 1u) + 4) != 3
      && *(_DWORD *)(sfc::script::lua::Arguments::operator[]((int)this, 2u) + 4) != 3 )
    {
      return;
    }
    v9 = *((int **)this + 1);
    v10 = -1227133513 * ((v9[1] - *v9) >> 4);
  }
LABEL_5:
  if ( v10 == 1 )
  {
    v28 = this;
    v29 = *((_DWORD *)a3 + 222);
    v30 = (sfc::script::lua::Value *)sfc::script::lua::Arguments::operator[]((int)v28, 0);
    sfc::script::lua::Value::getUserData(v30);
    v2Controller::Cmd_WarpTo(v29);
  }
  else if ( v10 > 2 )
  {
    v37 = 0.0;
    v38 = 0.0;
    v39 = 0.0;
    if ( (unsigned int)(-1227133513 * ((v9[1] - *v9) >> 4)) > 3
      && *(_DWORD *)(sfc::script::lua::Arguments::operator[]((int)this, 3u) + 4) == 1
      && (v16 = (sfc::script::lua::Value *)sfc::script::lua::Arguments::operator[]((int)this, 3u),
          sfc::script::lua::Value::getBool(v16)) )
    {
      v36 = 0.0;
      v34 = 0.0;
      v35 = 0.0;
      GameObject::GetLookAtVec((int)a3, &v34);
      v17 = *((float *)a3 + 88);
      v18 = *((float *)a3 + 89);
      v39 = *((float *)a3 + 90);
      v37 = v17;
      v38 = v18;
      v31 = *(float *)&dword_99F87C;
      v19 = *(float *)&dword_99F880;
      v20 = *(float *)&Vec3f_K;
      v32 = v35;
      v21 = v36;
      v33 = v34;
      v22 = (sfc::script::lua::Value *)sfc::script::lua::Arguments::operator[]((int)this, 0);
      v23 = COERCE_FLOAT(sfc::script::lua::Value::getNumber(v22));
      v37 = v37 + (float)(v23 * (float)((float)(v31 * v21) - (float)(v19 * v32)));
      v38 = v38 + (float)(v23 * (float)((float)(v19 * v33) - (float)(v21 * v20)));
      v39 = v39 + (float)(v23 * (float)((float)(v32 * v20) - (float)(v31 * v33)));
      v24 = (sfc::script::lua::Value *)sfc::script::lua::Arguments::operator[]((int)this, 1u);
      v25 = COERCE_FLOAT(sfc::script::lua::Value::getNumber(v24));
      v37 = v37 + (float)(v25 * v34);
      v38 = v38 + (float)(v25 * v35);
      v39 = v39 + (float)(v25 * v36);
      v26 = (sfc::script::lua::Value *)sfc::script::lua::Arguments::operator[]((int)this, 2u);
      v27 = COERCE_FLOAT(sfc::script::lua::Value::getNumber(v26));
      v37 = v37 + (float)(v27 * *(float *)&Vec3f_K);
      v38 = v38 + (float)(v27 * *(float *)&dword_99F87C);
      v39 = v39 + (float)(v27 * *(float *)&dword_99F880);
    }
    else
    {
      v11 = (sfc::script::lua::Value *)sfc::script::lua::Arguments::operator[]((int)this, 0);
      *(float *)&v12 = COERCE_FLOAT(sfc::script::lua::Value::getNumber(v11));
      v13 = (sfc::script::lua::Value *)sfc::script::lua::Arguments::operator[]((int)this, 1u);
      *(float *)&v14 = COERCE_FLOAT(sfc::script::lua::Value::getNumber(v13));
      v15 = (sfc::script::lua::Value *)sfc::script::lua::Arguments::operator[]((int)this, 2u);
      v37 = *(float *)&v12;
      v38 = *(float *)&v14;
      v39 = COERCE_FLOAT(sfc::script::lua::Value::getNumber(v15));
    }
    v2Controller::Cmd_WarpTo(*((_DWORD *)a3 + 222));
  }
}


// ===== 3bb728 Character::SG_GetSlot(void) =====
int __fastcall Character::SG_GetSlot(Character *this)
{
  int v1; // r3

  v1 = *((_DWORD *)this + 1338);
  if ( v1 )
    return *(_DWORD *)(v1 + 4);
  else
    return -1;
}


// ===== 3bb740 Character::SG_SetSlot(uint) =====
int __fastcall Character::SG_SetSlot(int this, unsigned int a2)
{
  int v2; // r3

  v2 = *(_DWORD *)(this + 5352);
  if ( v2 )
    *(_DWORD *)(v2 + 4) = a2;
  return this;
}


// ===== 3bb754 Character::SG_SetPlayer(Character*) =====
int __fastcall Character::SG_SetPlayer(int this, Character *a2)
{
  _DWORD *v2; // r3

  v2 = *(_DWORD **)(this + 5352);
  if ( v2 )
  {
    v2[93] = a2;
    v2[4] = a2;
    v2[69] = a2;
  }
  return this;
}


// ===== 3bb770 Character::SG_Block(bool) =====
int __fastcall Character::SG_Block(int this, bool a2)
{
  int v2; // r3

  v2 = *(_DWORD *)(this + 5352);
  if ( v2 )
    *(_BYTE *)(v2 + 12) = a2;
  return this;
}


// ===== 3bb784 Character::SG_IsBlocked(void) =====
int __fastcall Character::SG_IsBlocked(Character *this)
{
  int result; // r0

  result = *((_DWORD *)this + 1338);
  if ( result )
    return *(unsigned __int8 *)(result + 12);
  return result;
}


// ===== 3bb798 Character::SG_SetUseSpawnPoint(bool) =====
int __fastcall Character::SG_SetUseSpawnPoint(int this, bool a2)
{
  int v2; // r2

  v2 = *(_DWORD *)(this + 5352);
  if ( v2 )
  {
    *(_BYTE *)(v2 + PlayerSavegame::m_difficultyLevel + 76) = a2;
    return 6812;
  }
  return this;
}


// ===== 3bb7d0 Character::SG_RedoQuestSync(void) =====
int __fastcall Character::SG_RedoQuestSync(int this)
{
  int v1; // r3

  v1 = *(_DWORD *)(this + 5352);
  if ( v1 )
    *(_BYTE *)(v1 + 20) = 0;
  return this;
}


// ===== 3bb7e8 Character::SG_GetPlayerName(void) =====
int __fastcall Character::SG_GetPlayerName(Character *this)
{
  int result; // r0

  result = *((_DWORD *)this + 1338);
  if ( result )
    return *(_DWORD *)(result + 44);
  return result;
}


// ===== 3bb7fc Character::SG_GetPlayerClass(void) =====
int __fastcall Character::SG_GetPlayerClass(Character *this)
{
  int v1; // r3

  v1 = *((_DWORD *)this + 1338);
  if ( v1 )
    return *(_DWORD *)(v1 + 52);
  else
    return -1;
}


// ===== 3bb814 Character::SG_SetPlayerClass(int) =====
int __fastcall Character::SG_SetPlayerClass(int this, int a2)
{
  int v2; // r3

  v2 = *(_DWORD *)(this + 5352);
  if ( v2 )
    *(_DWORD *)(v2 + 52) = a2;
  return this;
}


// ===== 3bb828 Character::SG_GetPlayerLevel(void) =====
int __fastcall Character::SG_GetPlayerLevel(Character *this)
{
  int v1; // r3

  v1 = *((_DWORD *)this + 1338);
  if ( v1 )
    return *(_DWORD *)(v1 + 48);
  else
    return -1;
}


// ===== 3bb840 Character::SG_SetPlayerLevel(int) =====
int __fastcall Character::SG_SetPlayerLevel(int this, int a2)
{
  int v2; // r3

  v2 = *(_DWORD *)(this + 5352);
  if ( v2 )
    *(_DWORD *)(v2 + 48) = a2;
  return this;
}


// ===== 3bb854 Character::SG_SetLevelId(int,int) =====
int __fastcall Character::SG_SetLevelId(Character *this, int a2, int a3)
{
  int result; // r0

  result = *((_DWORD *)this + 1338);
  if ( result )
  {
    if ( a3 == -1 )
      *(_DWORD *)(result + 4 * (PlayerSavegame::m_difficultyLevel + 20)) = a2;
    else
      *(_DWORD *)(result + 4 * (a3 + 20)) = a2;
  }
  return result;
}


// ===== 3bb89c Character::SG_SetLevelEntryPoint(int,int) =====
int __fastcall Character::SG_SetLevelEntryPoint(Character *this, int a2, int a3)
{
  int result; // r0

  result = *((_DWORD *)this + 1338);
  if ( result )
  {
    if ( a3 == -1 )
      *(_DWORD *)(result + 4 * (PlayerSavegame::m_difficultyLevel + 16)) = a2;
    else
      *(_DWORD *)(result + 4 * (a3 + 16)) = a2;
  }
  return result;
}


// ===== 3bb8e4 Character::SG_GetGameDifficulty(void) =====
int __fastcall Character::SG_GetGameDifficulty(Character *this)
{
  if ( *((_DWORD *)this + 1338) )
    return PlayerSavegame::m_difficultyLevel;
  else
    return -1;
}


// ===== 3bb918 Character::SG_GetGameDifficultyUnlocked(void) =====
int __fastcall Character::SG_GetGameDifficultyUnlocked(Character *this)
{
  int v1; // r3

  v1 = *((_DWORD *)this + 1338);
  if ( v1 )
    return *(_DWORD *)(v1 + 60);
  else
    return -1;
}


// ===== 3bb930 Character::SG_SetGameDifficultyUnlocked(int) =====
int __fastcall Character::SG_SetGameDifficultyUnlocked(int this, int a2)
{
  int v2; // r3

  v2 = *(_DWORD *)(this + 5352);
  if ( v2 )
  {
    if ( a2 > *(_DWORD *)(v2 + 60) )
      *(_DWORD *)(v2 + 60) = a2;
  }
  return this;
}


// ===== 3bb950 Character::SG_SetGameDifficulty(int) =====
int __fastcall Character::SG_SetGameDifficulty(int this, int a2)
{
  int v2; // r2

  v2 = *(_DWORD *)(this + 5352);
  if ( v2 )
  {
    if ( a2 <= *(_DWORD *)(v2 + 60) )
      PlayerSavegame::m_difficultyLevel = a2;
  }
  return this;
}


// ===== 3bb98c Character::SG_GetCurrentFaerieId(int) =====
int __fastcall Character::SG_GetCurrentFaerieId(Character *this, int a2)
{
  int result; // r0

  result = *((_DWORD *)this + 1338);
  if ( result )
  {
    if ( a2 == -1 )
      return *(_DWORD *)(result + 4 * PlayerSavegame::m_difficultyLevel + 172);
    else
      return *(_DWORD *)(result + 4 * a2 + 172);
  }
  return result;
}


// ===== 3bb9d8 Character::SG_SetCurrentFaerie(uint,int) =====
int __fastcall Character::SG_SetCurrentFaerie(Character *this, unsigned int a2, int a3)
{
  int result; // r0

  result = *((_DWORD *)this + 1338);
  if ( result )
  {
    if ( a3 == -1 )
      result += 4 * PlayerSavegame::m_difficultyLevel;
    else
      result += 4 * a3;
    *(_DWORD *)(result + 172) = a2;
  }
  return result;
}


// ===== 3bba20 Character::SG_GetFaerieCount(int) =====
int __fastcall Character::SG_GetFaerieCount(Character *this, int a2)
{
  int v2; // r2

  v2 = *((_DWORD *)this + 1338);
  if ( !v2 )
    return -1;
  if ( a2 == -1 )
    return *(_DWORD *)(v2 + 4 * (PlayerSavegame::m_difficultyLevel + 40));
  return *(_DWORD *)(v2 + 4 * (a2 + 40));
}


// ===== 3bba70 Character::SG_UnlockAllFastTravels(void) =====
PlayerSavegame *__fastcall Character::SG_UnlockAllFastTravels(Character *this)
{
  PlayerSavegame *result; // r0

  result = *((PlayerSavegame **)this + 1338);
  if ( result )
    return (PlayerSavegame *)PlayerSavegame::SG_UnlockAllFastTravels(result);
  return result;
}


// ===== 3bba84 Character::SG_SetFastTravelIdUnlocked(char const*,bool,int) =====
int *__fastcall Character::SG_SetFastTravelIdUnlocked(Character *this, const char *a2, bool a3, int a4)
{
  int *result; // r0

  result = *((int **)this + 1338);
  if ( result )
  {
    if ( a4 == -1 )
      a4 = PlayerSavegame::m_difficultyLevel;
    return PlayerSavegame::SG_SetFastTravelIdUnlocked((PlayerSavegame *)result, a2, a3, a4);
  }
  return result;
}


// ===== 3bbad0 Character::SG_GetFastTravelIdUnlocked(char const*,int) =====
PlayerSavegame *__fastcall Character::SG_GetFastTravelIdUnlocked(Character *this, const char *a2, int a3)
{
  PlayerSavegame *result; // r0

  result = *((PlayerSavegame **)this + 1338);
  if ( result )
  {
    if ( a3 == -1 )
      a3 = PlayerSavegame::m_difficultyLevel;
    return (PlayerSavegame *)PlayerSavegame::SG_GetFastTravelIdUnlocked(result, a2, a3);
  }
  return result;
}


// ===== 3bbb08 Character::SG_GetFastTravelIdUnlocked(int,int) =====
PlayerSavegame *__fastcall Character::SG_GetFastTravelIdUnlocked(Character *this, int a2, int a3)
{
  PlayerSavegame *result; // r0

  result = *((PlayerSavegame **)this + 1338);
  if ( result )
  {
    if ( a3 == -1 )
      a3 = PlayerSavegame::m_difficultyLevel;
    return (PlayerSavegame *)PlayerSavegame::SG_GetFastTravelIdUnlocked(result, a2, a3);
  }
  return result;
}


// ===== 3bbb40 Character::__SaveQuests(IFileStream *,void *) =====
// attributes: thunk
int __fastcall Character::__SaveQuests(Character *this, IFileStream *a2, void *a3)
{
  return PlayerSavegame::__SaveQuests(this, a2, a3);
}


// ===== 3bbb44 Character::__LoadQuests(IStreamBase *,void *) =====
// attributes: thunk
int __fastcall Character::__LoadQuests(PlayerSavegame *this, IStreamBase *a2, void *a3)
{
  return PlayerSavegame::__LoadQuests(this, a2, a3);
}


// ===== 3bbb48 Character::SG_SetFaerieState(uint,int,int) =====
PlayerSavegame *__fastcall Character::SG_SetFaerieState(Character *this, unsigned int a2, char a3, int a4)
{
  PlayerSavegame *result; // r0

  result = *((PlayerSavegame **)this + 1338);
  if ( result )
  {
    if ( a4 == -1 )
      a4 = PlayerSavegame::m_difficultyLevel;
    return (PlayerSavegame *)PlayerSavegame::SG_SetFaerieState(result, a2, a3, a4);
  }
  return result;
}


// ===== 3bbb94 Character::SG_IsFaerieUnlocked(uint,int) =====
PlayerSavegame *__fastcall Character::SG_IsFaerieUnlocked(Character *this, unsigned int a2, int a3)
{
  PlayerSavegame *result; // r0

  result = *((PlayerSavegame **)this + 1338);
  if ( result )
  {
    if ( a3 == -1 )
      a3 = PlayerSavegame::m_difficultyLevel;
    return (PlayerSavegame *)PlayerSavegame::SG_IsFaerieUnlocked(result, a2, a3);
  }
  return result;
}


// ===== 3bbbcc Character::SG_SetFaerieLevel(uint,int,int) =====
PlayerSavegame *__fastcall Character::SG_SetFaerieLevel(Character *this, unsigned int a2, __int16 a3, int a4)
{
  PlayerSavegame *result; // r0

  result = *((PlayerSavegame **)this + 1338);
  if ( result )
  {
    if ( a4 == -1 )
      a4 = PlayerSavegame::m_difficultyLevel;
    return (PlayerSavegame *)PlayerSavegame::SG_SetFaerieLevel(result, a2, a3, a4);
  }
  return result;
}


// ===== 3bbc18 Character::SG_GetFaerieLevel(uint,int) =====
int __fastcall Character::SG_GetFaerieLevel(Character *this, unsigned int a2, int a3)
{
  PlayerSavegame *v3; // r0

  v3 = *((PlayerSavegame **)this + 1338);
  if ( !v3 )
    return -1;
  if ( a3 == -1 )
    a3 = PlayerSavegame::m_difficultyLevel;
  return PlayerSavegame::SG_GetFaerieLevel(v3, a2, a3);
}


// ===== 3bbc58 Character::SG_SetSaveDate(void) =====
PlayerSavegame *__fastcall Character::SG_SetSaveDate(Character *this)
{
  PlayerSavegame *result; // r0

  result = *((PlayerSavegame **)this + 1338);
  if ( result )
    return (PlayerSavegame *)PlayerSavegame::SG_SetSaveDate(result);
  return result;
}


// ===== 3bbc6c Character::SG_IsLevelLocked(int,int) =====
PlayerSavegame *__fastcall Character::SG_IsLevelLocked(Character *this, int a2, int a3)
{
  PlayerSavegame *result; // r0

  result = *((PlayerSavegame **)this + 1338);
  if ( result )
  {
    if ( a3 == -1 )
      a3 = PlayerSavegame::m_difficultyLevel;
    return (PlayerSavegame *)PlayerSavegame::SG_IsLevelLocked(result, a2, a3);
  }
  return result;
}


// ===== 3bbca4 Character::SG_SetLevelState(int,int,int) =====
PlayerSavegame *__fastcall Character::SG_SetLevelState(Character *this, int a2, int a3, int a4)
{
  PlayerSavegame *result; // r0

  result = *((PlayerSavegame **)this + 1338);
  if ( result )
  {
    if ( a4 == -1 )
      a4 = PlayerSavegame::m_difficultyLevel;
    return (PlayerSavegame *)PlayerSavegame::SG_SetLevelState(result, a2, a3, a4);
  }
  return result;
}


// ===== 3bbcf0 Character::SG_GetLevelState(int,int) =====
int __fastcall Character::SG_GetLevelState(Character *this, int a2, int a3)
{
  PlayerSavegame *v3; // r0

  v3 = *((PlayerSavegame **)this + 1338);
  if ( !v3 )
    return -1;
  if ( a3 == -1 )
    a3 = PlayerSavegame::m_difficultyLevel;
  return PlayerSavegame::SG_GetLevelState(v3, a2, a3);
}


// ===== 3bbd30 Character::SG_IsMapLocSeen(int,int) =====
PlayerSavegame *__fastcall Character::SG_IsMapLocSeen(Character *this, int a2, int a3)
{
  PlayerSavegame *result; // r0

  result = *((PlayerSavegame **)this + 1338);
  if ( result )
  {
    if ( a3 == -1 )
      a3 = PlayerSavegame::m_difficultyLevel;
    return (PlayerSavegame *)PlayerSavegame::SG_IsMapLocSeen(result, a2, a3);
  }
  return result;
}


// ===== 3bbd68 Character::SG_IsMapLocLocked(int,int) =====
PlayerSavegame *__fastcall Character::SG_IsMapLocLocked(Character *this, int a2, int a3)
{
  PlayerSavegame *result; // r0

  result = *((PlayerSavegame **)this + 1338);
  if ( result )
  {
    if ( a3 == -1 )
      a3 = PlayerSavegame::m_difficultyLevel;
    return (PlayerSavegame *)PlayerSavegame::SG_IsMapLocLocked(result, a2, a3);
  }
  return result;
}


// ===== 3bbda0 Character::SG_SetMapLocState(int,int,int) =====
PlayerSavegame *__fastcall Character::SG_SetMapLocState(Character *this, int a2, int a3, int a4)
{
  PlayerSavegame *result; // r0

  result = *((PlayerSavegame **)this + 1338);
  if ( result )
  {
    if ( a4 == -1 )
      a4 = PlayerSavegame::m_difficultyLevel;
    return (PlayerSavegame *)PlayerSavegame::SG_SetMapLocState(result, a2, a3, a4);
  }
  return result;
}


// ===== 3bbdec Character::SG_GetMapLocState(int,int) =====
int __fastcall Character::SG_GetMapLocState(Character *this, int a2, int a3)
{
  PlayerSavegame *v3; // r0

  v3 = *((PlayerSavegame **)this + 1338);
  if ( !v3 )
    return -1;
  if ( a3 == -1 )
    a3 = PlayerSavegame::m_difficultyLevel;
  return PlayerSavegame::SG_GetMapLocState(v3, a2, a3);
}


// ===== 3bbe2c Character::SG_ReloadSkills(void) =====
PlayerSavegame *__fastcall Character::SG_ReloadSkills(Character *this)
{
  PlayerSavegame *result; // r0

  result = *((PlayerSavegame **)this + 1338);
  if ( result )
    return (PlayerSavegame *)PlayerSavegame::SG_ReloadSkills(result);
  return result;
}


// ===== 3bbe40 Character::SG_TellSlots(void (*)(int,uint,void *),void *) =====
PlayerSavegame *__fastcall Character::SG_TellSlots(Character *this, void (*a2)(int, unsigned int, void *), void *a3)
{
  PlayerSavegame *result; // r0

  result = *((PlayerSavegame **)this + 1338);
  if ( result )
    return (PlayerSavegame *)PlayerSavegame::SG_TellSlots(result, a2, a3);
  return result;
}


// ===== 3bbe54 Character::SG_SetSkillInSlot(int,uint) =====
PlayerSavegame *__fastcall Character::SG_SetSkillInSlot(Character *this, int a2, unsigned int a3)
{
  PlayerSavegame *result; // r0

  result = *((PlayerSavegame **)this + 1338);
  if ( result )
    return (PlayerSavegame *)PlayerSavegame::SG_SetSkillInSlot(result, a2, a3);
  return result;
}


// ===== 3bbe68 Character::SG_GetSkillInSlot(int) =====
int __fastcall Character::SG_GetSkillInSlot(Character *this, int a2)
{
  PlayerSavegame *v2; // r0

  v2 = *((PlayerSavegame **)this + 1338);
  if ( v2 )
    return PlayerSavegame::SG_GetSkillInSlot(v2, a2);
  else
    return -1;
}


// ===== 3bbe84 Character::SG_GetSkillSlot(uint) =====
int __fastcall Character::SG_GetSkillSlot(Character *this, unsigned int a2)
{
  PlayerSavegame *v2; // r0

  v2 = *((PlayerSavegame **)this + 1338);
  if ( v2 )
    return PlayerSavegame::SG_GetSkillSlot(v2, a2);
  else
    return -1;
}


// ===== 3bbea0 Character::SG_HasSkillSlots(void) =====
int __fastcall Character::SG_HasSkillSlots(Character *this)
{
  PlayerSavegame *v1; // r0

  v1 = *((PlayerSavegame **)this + 1338);
  if ( v1 )
    return PlayerSavegame::SG_HasSkillSlots(v1);
  else
    return -1;
}


// ===== 3bbebc Character::SG_SetSkillLevel(uint,int) =====
PlayerSavegame *__fastcall Character::SG_SetSkillLevel(Character *this, unsigned int a2, int a3)
{
  PlayerSavegame *result; // r0

  result = *((PlayerSavegame **)this + 1338);
  if ( result )
    return (PlayerSavegame *)PlayerSavegame::SG_SetSkillLevel(result, a2, a3);
  return result;
}


// ===== 3bbed0 Character::SG_GetSkillLevel(uint) =====
int __fastcall Character::SG_GetSkillLevel(Character *this, unsigned int a2)
{
  PlayerSavegame *v2; // r0

  v2 = *((PlayerSavegame **)this + 1338);
  if ( v2 )
    return PlayerSavegame::SG_GetSkillLevel(v2, a2);
  else
    return -1;
}


// ===== 3bbeec Character::SG_GetSkillId(uint) =====
int __fastcall Character::SG_GetSkillId(Character *this, unsigned int a2)
{
  PlayerSavegame *v2; // r0

  v2 = *((PlayerSavegame **)this + 1338);
  if ( v2 )
    return PlayerSavegame::SG_GetSkillId(v2, a2);
  else
    return -1;
}


// ===== 3bbf08 Character::SG_SetPlayerName(char const*) =====
std::string *__fastcall Character::SG_SetPlayerName(std::string *this, const char *a2)
{
  std::string *v2; // r4
  size_t v4; // r0

  v2 = *((std::string **)this + 1338);
  if ( v2 )
  {
    v4 = LC_API_STRLEN_0(a2);
    return std::string::_M_assign(v2 + 1, a2, &a2[v4]);
  }
  return this;
}


// ===== 3bbf40 Character::SG_SetCurrentAct(int,int) =====
PlayerSavegame *__fastcall Character::SG_SetCurrentAct(Character *this, int a2, int a3)
{
  PlayerSavegame *result; // r0
  char *v6; // r5
  int v7; // r5
  char *v8; // r3

  result = *((PlayerSavegame **)this + 1338);
  if ( result )
  {
    if ( a3 == -1 )
    {
      v7 = PlayerSavegame::m_difficultyLevel;
      result = (PlayerSavegame *)PlayerSavegame::SG_GetQuestSG(result);
      v8 = (char *)result + 4 * v7 + 64;
      if ( a2 > *((_DWORD *)v8 + 1) )
        *((_DWORD *)v8 + 1) = a2;
    }
    else
    {
      result = (PlayerSavegame *)PlayerSavegame::SG_GetQuestSG(result);
      v6 = (char *)result + 4 * a3 + 64;
      if ( a2 > *((_DWORD *)v6 + 1) )
        *((_DWORD *)v6 + 1) = a2;
    }
  }
  return result;
}


// ===== 3bbfbc Character::SG_SetCurrentPrimaryQuest(int,int) =====
PlayerSavegame *__fastcall Character::SG_SetCurrentPrimaryQuest(Character *this, int a2, int a3)
{
  PlayerSavegame *result; // r0
  int v5; // r5

  result = *((PlayerSavegame **)this + 1338);
  v5 = a3;
  if ( result )
  {
    if ( a3 == -1 )
      v5 = PlayerSavegame::m_difficultyLevel;
    result = (PlayerSavegame *)PlayerSavegame::SG_GetQuestSG(result);
    *((_DWORD *)result + v5 + 14) = a2;
  }
  return result;
}


// ===== 3bc01c Character::SG_SetCurrentQuest(int,int) =====
PlayerSavegame *__fastcall Character::SG_SetCurrentQuest(Character *this, int a2, int a3)
{
  PlayerSavegame *result; // r0
  int v5; // r5

  result = *((PlayerSavegame **)this + 1338);
  if ( result )
  {
    if ( a3 == -1 )
    {
      v5 = PlayerSavegame::m_difficultyLevel;
      result = (PlayerSavegame *)(PlayerSavegame::SG_GetQuestSG(result) + 4 * v5);
    }
    else
    {
      result = (PlayerSavegame *)(PlayerSavegame::SG_GetQuestSG(result) + 4 * a3);
    }
    *((_DWORD *)result + 11) = a2;
  }
  return result;
}


// ===== 3bc07c Character::SG_NeedToResendQuestSyncMsg(void) =====
int __fastcall Character::SG_NeedToResendQuestSyncMsg(Character *this)
{
  int Online; // r0
  int result; // r0
  int v4; // r3

  if ( !PlayerManager::IsLocalPlayerHosting((PlayerManager *)dword_99F76C) )
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
        "Application::GetInstance()->GetPlayerManager()->IsLocalPlayerHosting()",
        "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Objects\\Characters\\Character_SGProxy.cpp",
        279);
    }
  }
  Online = GetOnline();
  if ( !*(_BYTE *)(Online + 5) )
  {
    if ( gAssertLevel == 2 )
    {
      *(_DWORD *)*(unsigned __int8 *)(Online + 5) = *(unsigned __int8 *)(Online + 5);
    }
    else if ( gAssertLevel == 1 )
    {
      fprintf(
        (FILE *)&_sF + 2,
        "ASSERT(%s) FAILED: %s:%d\n",
        "GetOnline().IsOnlineGame()",
        "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Objects\\Characters\\Character_SGProxy.cpp",
        280);
    }
  }
  result = GetOnline();
  if ( *(_BYTE *)(result + 5) )
  {
    result = PlayerManager::IsLocalPlayerHosting((PlayerManager *)dword_99F76C);
    if ( result )
    {
      if ( *((_BYTE *)this + 5013) )
      {
        v4 = *((_DWORD *)this + 1338);
        if ( v4 )
          *(_BYTE *)(v4 + 20) = 0;
      }
    }
  }
  return result;
}


// ===== 3bc1dc Character::SG_DBG_TraceDetailedQuestInformation(__sFILE *,int,int) =====
PlayerSavegame *__fastcall Character::SG_DBG_TraceDetailedQuestInformation(
        Character *this,
        __sFILE *a2,
        int a3,
        int a4)
{
  PlayerSavegame *result; // r0

  result = *((PlayerSavegame **)this + 1338);
  if ( result )
  {
    if ( a4 == -1 )
      a4 = PlayerSavegame::m_difficultyLevel;
    return (PlayerSavegame *)PlayerSavegame::SG_DBG_TraceDetailedQuestInformation(result, a2, a3, a4);
  }
  return result;
}


// ===== 3bc228 Character::SG_GetNextQuest(bool (*)(Quest const*),int,int) =====
PlayerSavegame *__fastcall Character::SG_GetNextQuest(Character *this, bool (*a2)(const Quest *), int a3, int a4)
{
  PlayerSavegame *result; // r0

  result = *((PlayerSavegame **)this + 1338);
  if ( result )
  {
    if ( a4 == -1 )
      a4 = PlayerSavegame::m_difficultyLevel;
    return (PlayerSavegame *)PlayerSavegame::SG_GetNextQuest(result, a2, a3, a4);
  }
  return result;
}


// ===== 3bc274 Character::SG_GetQuestByName(char const*,int) =====
PlayerSavegame *__fastcall Character::SG_GetQuestByName(Character *this, const char *a2, int a3)
{
  PlayerSavegame *result; // r0

  result = *((PlayerSavegame **)this + 1338);
  if ( result )
  {
    if ( a3 == -1 )
      a3 = PlayerSavegame::m_difficultyLevel;
    return (PlayerSavegame *)PlayerSavegame::SG_GetQuestByName(result, a2, a3);
  }
  return result;
}


// ===== 3bc2ac Character::SG_GetQuestByID(bool (*)(Quest const*),int,int) =====
PlayerSavegame *__fastcall Character::SG_GetQuestByID(Character *this, bool (*a2)(const Quest *), int a3, int a4)
{
  PlayerSavegame *result; // r0

  result = *((PlayerSavegame **)this + 1338);
  if ( result )
  {
    if ( a4 == -1 )
      a4 = PlayerSavegame::m_difficultyLevel;
    return (PlayerSavegame *)PlayerSavegame::SG_GetQuestByID(result, a2, a3, a4);
  }
  return result;
}


// ===== 3bc2f8 Character::SG_GetQuestByID(int,int) =====
PlayerSavegame *__fastcall Character::SG_GetQuestByID(Character *this, int a2, int a3)
{
  PlayerSavegame *result; // r0

  result = *((PlayerSavegame **)this + 1338);
  if ( result )
  {
    if ( a3 == -1 )
      a3 = PlayerSavegame::m_difficultyLevel;
    return (PlayerSavegame *)PlayerSavegame::SG_GetQuestByID(result, a2, a3, 1);
  }
  return result;
}


// ===== 3bc33c Character::SG_GetNumQuests(bool (*)(Quest const*),int) =====
int __fastcall Character::SG_GetNumQuests(Character *this, bool (*a2)(const Quest *), int a3)
{
  PlayerSavegame *v3; // r0

  v3 = *((PlayerSavegame **)this + 1338);
  if ( !v3 )
    return -1;
  if ( a3 == -1 )
    a3 = PlayerSavegame::m_difficultyLevel;
  return PlayerSavegame::SG_GetNumQuests(v3, a2, a3);
}


// ===== 3bc37c Character::SG_GetNumQuests(int) =====
int __fastcall Character::SG_GetNumQuests(Character *this, int a2)
{
  PlayerSavegame *v2; // r0
  int v3; // r4
  char *QuestSG; // r0

  v2 = *((PlayerSavegame **)this + 1338);
  v3 = a2;
  if ( !v2 )
    return -1;
  if ( a2 == -1 )
    v3 = PlayerSavegame::m_difficultyLevel;
  QuestSG = PlayerSavegame::SG_GetQuestSG(v2);
  return (*(_DWORD *)&QuestSG[12 * v3 + 8] - *(_DWORD *)&QuestSG[12 * v3 + 4]) >> 2;
}


// ===== 3bc400 Character::SG_GetCurrentPrimaryQuest(int) =====
int __fastcall Character::SG_GetCurrentPrimaryQuest(Character *this, int a2)
{
  PlayerSavegame *v2; // r0

  v2 = *((PlayerSavegame **)this + 1338);
  if ( !v2 )
    return -1;
  if ( a2 == -1 )
    a2 = PlayerSavegame::m_difficultyLevel;
  return PlayerSavegame::SG_GetCurrentPrimaryQuest(v2, a2);
}


// ===== 3bc440 Character::SG_GetCurrentQuest(int) =====
int __fastcall Character::SG_GetCurrentQuest(Character *this, int a2)
{
  PlayerSavegame *v2; // r0

  v2 = *((PlayerSavegame **)this + 1338);
  if ( !v2 )
    return -1;
  if ( a2 == -1 )
    a2 = PlayerSavegame::m_difficultyLevel;
  return PlayerSavegame::SG_GetCurrentQuest(v2, a2);
}


// ===== 3bc480 Character::SG_Update(bool) =====
PlayerSavegame *__fastcall Character::SG_Update(Character *this, bool a2)
{
  PlayerSavegame *result; // r0

  result = *((PlayerSavegame **)this + 1338);
  if ( result )
    return (PlayerSavegame *)PlayerSavegame::SG_Update(result, a2);
  return result;
}


// ===== 3bc494 Character::SG_SaveCheckpoint(void) =====
PlayerSavegame *__fastcall Character::SG_SaveCheckpoint(Character *this)
{
  PlayerSavegame *result; // r0

  result = *((PlayerSavegame **)this + 1338);
  if ( result )
    return (PlayerSavegame *)PlayerSavegame::SG_SaveCheckpoint(result);
  return result;
}


// ===== 3bc4a8 Character::SG_Save(void) =====
PlayerSavegame *__fastcall Character::SG_Save(Character *this)
{
  PlayerSavegame *result; // r0

  result = *((PlayerSavegame **)this + 1338);
  if ( result )
    return (PlayerSavegame *)PlayerSavegame::SG_Save(result);
  return result;
}


// ===== 3bc4bc Character::SG_LoadCheckpoint(int) =====
void __fastcall Character::SG_LoadCheckpoint(Character *this, int a2)
{
  PlayerSavegame **v2; // r0

  v2 = *((PlayerSavegame ***)this + 1338);
  if ( v2 )
    PlayerSavegame::SG_LoadCheckpoint(v2, a2);
}


// ===== 3bc4d0 Character::SG_Load(int) =====
PlayerSavegame *__fastcall Character::SG_Load(Character *this, int a2)
{
  PlayerSavegame *result; // r0

  result = *((PlayerSavegame **)this + 1338);
  if ( result )
    return (PlayerSavegame *)PlayerSavegame::SG_Load(result, a2);
  return result;
}


// ===== 3bc4e4 `global constructor keyed to'.._.._sources_Game_Objects_Characters_Character_SGProxy.cpp =====
int `global constructor keyed to'.._.._sources_Game_Objects_Characters_Character_SGProxy.cpp()
{
  int result; // r0

  result = `guard variable for'Singleton<PlayerStatManager>::s_inst;
  dword_9A29F8 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9A29F4 = 1056964608;
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


// ===== 3bc5c0 Character::GetCharSkillListId(void) =====
int __fastcall Character::GetCharSkillListId(Character *this)
{
  int result; // r0

  result = *((_DWORD *)this + 1050);
  if ( result < 0 || result >= Arrays::SkillListTable::size )
    return 3;
  return result;
}


// ===== 3bc5fc Character::GetCharSkillList(void) =====
int __fastcall Character::GetCharSkillList(Character *this)
{
  int v1; // r4

  v1 = Arrays::SkillListTable::members;
  return v1 + 12 * Character::GetCharSkillListId(this);
}


// ===== 3bc62c Character::GetSkillIDFromOID(int) =====
int __fastcall Character::GetSkillIDFromOID(Character *this, int a2)
{
  int CharSkillList; // r0
  int v4; // r2
  _DWORD *v5; // r1
  int result; // r0

  CharSkillList = Character::GetCharSkillList(this);
  v4 = *(_DWORD *)(CharSkillList + 4);
  if ( v4 )
  {
    v5 = *(_DWORD **)(CharSkillList + 8);
    if ( *v5 == a2 )
      return 0;
    result = 0;
    while ( ++result != v4 )
    {
      if ( v5[result] == a2 )
        return result;
    }
  }
  return -1;
}


// ===== 3bc688 Character::IsUsingFreezingRay(void) =====
int __fastcall Character::IsUsingFreezingRay(Character *this)
{
  return 0;
}


// ===== 3bc690 Character::IsSneaking(void) =====
bool __fastcall Character::IsSneaking(Character *this)
{
  return CharProperties::_GetProperty((int)this + 1376, (int)this + 4084, 198) > 0;
}


// ===== 3bc6b8 Character::CancelSneaking(void) =====
_DWORD *__fastcall Character::CancelSneaking(Character *this)
{
  _DWORD *result; // r0
  int v3; // r2
  unsigned int v4; // r1

  if ( (*(int (__fastcall **)(Character *))(*(_DWORD *)this + 40))(this) )
  {
    CharProperties::PROPS_DelBuff((Character *)((char *)this + 1376), 146, nullptr);
    *((_BYTE *)this + 1045) = 1;
  }
  result = (_DWORD *)Character::IsSneaking(this);
  if ( result )
  {
    result = (_DWORD *)Character::GetCharSkillList(this);
    v3 = result[1];
    if ( v3 )
    {
      result = (_DWORD *)result[2];
      v4 = *(_DWORD *)(Arrays::SkillTable::members + 76 * *result + 28) & 0x2000000;
      if ( v4 )
      {
        v4 = 0;
        return (_DWORD *)CharAI::AI_CancelSkill((Character *)((char *)this + 968), v4);
      }
      else
      {
        while ( ++v4 != v3 )
        {
          if ( (*(_DWORD *)(Arrays::SkillTable::members + 76 * result[v4] + 28) & 0x2000000) != 0 )
            return (_DWORD *)CharAI::AI_CancelSkill((Character *)((char *)this + 968), v4);
        }
      }
    }
  }
  return result;
}


// ===== 3bc784 Character::GetCharSkill(int) =====
int __fastcall Character::GetCharSkill(Character *this, int a2)
{
  int v3; // r6

  v3 = Arrays::SkillListTable::members + 12 * Character::GetCharSkillListId(this);
  if ( a2 < 0 || a2 >= *(_DWORD *)(v3 + 4) )
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
        "skillId >= 0 && skillId < (int)charSkillList.ListSize",
        "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Objects\\Characters\\Character_Skills.cpp",
        61);
    }
  }
  return Arrays::SkillTable::members + 76 * *(_DWORD *)(*(_DWORD *)(v3 + 8) + 4 * a2);
}


// ===== 3bc860 Character::ResetSkills(void) =====
int __fastcall Character::ResetSkills(Character *this)
{
  int v1; // r3
  int v3; // r8
  int v4; // r7
  unsigned int v5; // r6
  int SkillSlot; // r1
  char *v8; // [sp+Ch] [bp-4h] BYREF

  v1 = *((_DWORD *)this + 1338);
  if ( !v1 || !*(_DWORD *)(v1 + 128) )
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
        "m_playerSavegame && m_playerSavegame->SG_GetSkills()",
        "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Objects\\Characters\\Character_Skills.cpp",
        195);
      v1 = *((_DWORD *)this + 1338);
    }
  }
  v3 = *(_DWORD *)(v1 + 132);
  if ( v3 )
  {
    v5 = 0;
    v4 = 0;
    while ( 1 )
    {
      while ( 1 )
      {
        v4 += Character::SG_GetSkillLevel(this, v5);
        Character::SG_SetSkillLevel(this, v5, 0);
        if ( v5 )
          break;
        --v4;
        Character::SG_SetSkillLevel(this, 0, 1);
LABEL_7:
        if ( ++v5 == v3 )
          goto LABEL_11;
      }
      SkillSlot = Character::SG_GetSkillSlot(this, v5);
      if ( SkillSlot == -1 )
        goto LABEL_7;
      ++v5;
      Character::SG_SetSkillInSlot(this, SkillSlot, 0xFFFFFFFF);
      if ( v5 == v3 )
        goto LABEL_11;
    }
  }
  v4 = 0;
LABEL_11:
  CharProperties::PROPS_AddInt((Character *)((char *)this + 1376), 157, v4);
  v8 = &Character::s_concurrentAI;
  Character::UnLoadScriptProcess(this, &v8, 1);
  CharAI::LoadScriptProcess((int)this + 968);
  CharAI::InitScriptProcess((Character **)this + 242, 1);
  return Character::SG_Save(this);
}


// ===== 3bc9ec Character::CanIncrementSkill(int) =====
bool __fastcall Character::CanIncrementSkill(Character *this, int a2)
{
  int v2; // r3
  int v5; // r3
  int v6; // r5
  int Level; // r6

  v2 = *((_DWORD *)this + 1338);
  if ( !v2 )
    return 0;
  v5 = *(_DWORD *)(v2 + 128);
  if ( !v5 )
    return 0;
  v6 = *(unsigned __int16 *)(v5 + 8 * a2 + 4);
  Level = Character::GetLevel(this);
  return v6 <= Level - *(_DWORD *)(Character::GetCharSkill(this, a2) + 32);
}


// ===== 3bca50 Character::IsSkillAvailable(int) =====
bool __fastcall Character::IsSkillAvailable(Character *this, int a2)
{
  int Level; // r4

  Level = Character::GetLevel(this);
  return Level >= *(_DWORD *)(Character::GetCharSkill(this, a2) + 32);
}


// ===== 3bca84 Character::IsSkillEquippable(int) =====
bool __fastcall Character::IsSkillEquippable(Character *this, unsigned int a2)
{
  return Character::IsSkillAvailable(this, a2)
      && *(_DWORD *)(Character::GetCharSkill(this, a2) + 72) != -1
      && Character::SG_GetSkillLevel(this, a2) > 0;
}


// ===== 3bcad8 Character::IsSkillUsable(int) =====
int __fastcall Character::IsSkillUsable(Character *this, unsigned int a2)
{
  int v4; // r3
  int v5; // r5
  int result; // r0

  if ( !Character::CTRLIsAllowed(this) )
    return 0;
  v4 = *((_DWORD *)this + 1338);
  if ( !v4 )
    return 0;
  v5 = *(_DWORD *)(v4 + 128);
  if ( !v5 )
    return 0;
  result = CharAI::AI_IsSkillUsable((Character *)((char *)this + 968), a2);
  *(_BYTE *)(v5 + 8 * a2 + 6) = result;
  return result;
}


// ===== 3bcb2c `global constructor keyed to'.._.._sources_Game_Objects_Characters_Character_Skills.cpp =====
int `global constructor keyed to'.._.._sources_Game_Objects_Characters_Character_Skills.cpp()
{
  int result; // r0

  result = `guard variable for'Singleton<PlayerStatManager>::s_inst;
  dword_9A2A04 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9A2A00 = 1056964608;
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


// ===== 3bcc08 std::string::_M_range_initialize(char const*,char const*) [clone] =====
char *__fastcall std::string::_M_range_initialize(std::string *this, const char *a2, const char *a3)
{
  size_t v5; // r4
  char *result; // r0

  v5 = a2 - "isTracingChar_Stats";
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block(this, a2 - "isTracingChar_Stats" + 1);
  result = this->_M_start_of_storage._M_data;
  if ( a2 != "isTracingChar_Stats" )
    result = (char *)memcpy(result, "isTracingChar_Stats", v5) + v5;
  this->_M_finish = result;
  *result = 0;
  return result;
}


// ===== 3bcc58 Character::IncSkill(int,bool) =====
int __fastcall Character::IncSkill(Character *this, int a2, int a3)
{
  int v4; // r3
  const char *v7; // r2
  const char *v9; // r2
  int v10; // r11
  int Int; // r0
  const char *v12; // r2
  int Constant; // [sp+Ch] [bp-58h]
  std::priv::_String_base<char,std::allocator<char> > v14; // [sp+14h] [bp-50h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v15; // [sp+2Ch] [bp-38h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v16; // [sp+44h] [bp-20h] BYREF

  v4 = *((_DWORD *)this + 1338);
  if ( !v4 || !*(_DWORD *)(v4 + 128) )
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
        "m_playerSavegame && m_playerSavegame->SG_GetSkills()",
        "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Objects\\Characters\\Character_Skills.cpp",
        134);
    }
  }
  if ( CharProperties::PROPS_GetInt((Character *)((char *)this + 1376), 157, 0) <= 0 )
  {
    DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
    v16._M_finish = (char *)&v16;
    v16._M_start_of_storage._M_data = (char *)&v16;
    std::string::_M_range_initialize((std::string *)&v16, "", v9);
    DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, (const std::string *)&v16);
    std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v16);
    return 0;
  }
  else if ( Character::IsSkillAvailable(this, a2) )
  {
    Constant = PyDataConstants::getConstant((PyDataConstants *)dword_99F758, "CharacterDesign", "MaxSkillLevelBNormal");
    if ( Character::SG_GetGameDifficultyUnlocked(this) == 1 )
    {
      Constant = PyDataConstants::getConstant((PyDataConstants *)dword_99F758, "CharacterDesign", "MaxSkillLevelCHard");
    }
    else if ( Character::SG_GetGameDifficultyUnlocked(this) == 2 )
    {
      Constant = PyDataConstants::getConstant(
                   (PyDataConstants *)dword_99F758,
                   "CharacterDesign",
                   "MaxSkillLevelDVeryHard");
    }
    if ( Constant > *(unsigned __int16 *)(*(_DWORD *)(*((_DWORD *)this + 1338) + 128) + 8 * a2 + 4)
      && Character::CanIncrementSkill(this, a2) )
    {
      if ( !a3 )
      {
        CharProperties::PROPS_AddInt((Character *)((char *)this + 1376), 157, -1);
        v10 = *(_DWORD *)(*((_DWORD *)this + 1338) + 128) + 8 * a2;
        ++*(_WORD *)(v10 + 4);
        CharAI::UpdateAllSkills((Character *)((char *)this + 968));
        CharProperties::RecalcProperties((Character *)((char *)this + 1376), 1);
        Int = CharProperties::PROPS_GetInt((Character *)((char *)this + 1376), 194, 0);
        *((_BYTE *)this + 936) = Int & ~(unsigned __int8)(Int >> 31);
        DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
        v14._M_finish = (char *)&v14;
        v14._M_start_of_storage._M_data = (char *)&v14;
        std::string::_M_range_initialize((std::string *)&v14, "", v12);
        DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, (const std::string *)&v14);
        std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v14);
      }
      return 1;
    }
    else
    {
      return 0;
    }
  }
  else
  {
    DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
    v15._M_finish = (char *)&v15;
    v15._M_start_of_storage._M_data = (char *)&v15;
    std::string::_M_range_initialize((std::string *)&v15, "", v7);
    DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, (const std::string *)&v15);
    std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v15);
    return 0;
  }
}


// ===== 3bcf8c std::priv::_Deque_iterator_base<StatusMsg>::_M_subtract(std::priv::_Deque_iterator_base<StatusMsg> const&) =====
unsigned int __fastcall std::priv::_Deque_iterator_base<StatusMsg>::_M_subtract(_DWORD *a1, _DWORD *a2)
{
  return -1227133513 * ((*a1 - a1[1]) >> 2) - 1227133513 * ((a2[2] - *a2) >> 2) + ((a1[3] - a2[3]) & 0xFFFFFFFC) - 4;
}


// ===== 3bd000 Character::VerifySpecialization(void) =====
int __fastcall Character::VerifySpecialization(Character *this)
{
  int Instance; // r6
  bool v3; // r5
  RenderFX *v4; // r0
  _BYTE v6[12]; // [sp+Ch] [bp-Ch] BYREF

  Instance = MenuManager::GetInstance(this);
  v3 = Character::SG_GetPlayerLevel(this) > 11
    && (Character::SG_GetPlayerClass(this) == 263
     || Character::SG_GetPlayerClass(this) == 325
     || Character::SG_GetPlayerClass(this) == 290);
  v4 = *(RenderFX **)(*(_DWORD *)(Instance + 244) + 312);
  v6[0] = 0;
  v6[4] = v3;
  v6[1] = 1;
  RenderFX::InvokeASCallback(v4, "_root.menu_CharacterMenu", "IsSpecTime", (const gameswf::as_value *)v6, 1);
  return gameswf::as_value::drop_refs((gameswf::as_value *)v6);
}


// ===== 3bd0c0 Character::SetMP(int) =====
int __fastcall Character::SetMP(Character *this, int a2)
{
  return CharProperties::PROPS_SetInt((Character *)((char *)this + 1376), 41, a2);
}


// ===== 3bd0d0 Character::SetHP(int) =====
int __fastcall Character::SetHP(Character *this, int a2)
{
  return CharProperties::PROPS_SetInt((Character *)((char *)this + 1376), 36, a2);
}


// ===== 3bd0e0 Character::GetTotalMP(void) =====
int __fastcall Character::GetTotalMP(Character *this)
{
  return CharProperties::PROPS_GetInt((Character *)((char *)this + 1376), 43, 0);
}


// ===== 3bd0f0 Character::GetTotalHP(void) =====
int __fastcall Character::GetTotalHP(Character *this)
{
  return CharProperties::PROPS_GetInt((Character *)((char *)this + 1376), 38, 0);
}


// ===== 3bd100 Character::GetMP(void) =====
int __fastcall Character::GetMP(Character *this)
{
  return CharProperties::PROPS_GetInt((Character *)((char *)this + 1376), 41, 0);
}


// ===== 3bd110 Character::GetHP(void) =====
int __fastcall Character::GetHP(Character *this)
{
  return CharProperties::PROPS_GetInt((Character *)((char *)this + 1376), 36, 0);
}


// ===== 3bd120 Character::GetLevel(void) =====
int __fastcall Character::GetLevel(Character *this)
{
  return CharProperties::PROPS_GetInt((Character *)((char *)this + 1376), 19, 0);
}


// ===== 3bd130 CharProperties::PROPS_Get(int,bool) [clone] =====
int __fastcall CharProperties::PROPS_Get(int a1, int a2)
{
  return CharProperties::_GetProperty(a1, a1 + 2708, a2);
}


// ===== 3bd140 Character::ValidateHPMP(void) =====
int __fastcall Character::ValidateHPMP(Character *this)
{
  CharProperties *v1; // r4
  char *v2; // r5
  int Property; // r6
  int v4; // r0
  int v5; // r2
  int v6; // r6
  int v7; // r0
  int v8; // r2

  v1 = (Character *)((char *)this + 1376);
  v2 = (char *)this + 4084;
  Property = CharProperties::_GetProperty((int)this + 1376, (int)this + 4084, 36);
  v4 = CharProperties::_GetProperty((int)v1, (int)v2, 38);
  if ( v4 >= Property )
    v5 = Property;
  else
    v5 = v4;
  CharProperties::PROPS_Set(v1, 36, v5);
  v6 = CharProperties::_GetProperty((int)v1, (int)v2, 41);
  v7 = CharProperties::_GetProperty((int)v1, (int)v2, 43);
  if ( v7 >= v6 )
    v8 = v6;
  else
    v8 = v7;
  return CharProperties::PROPS_Set(v1, 41, v8);
}


// ===== 3bd1cc Character::ResetStatsChange(int,int,int,int) =====
PlayerSavegame *__fastcall Character::ResetStatsChange(Character *this, int a2, int a3, int a4, int a5)
{
  CharProperties *v6; // r7

  v6 = (Character *)((char *)this + 1376);
  CharProperties::PROPS_AddInt((Character *)((char *)this + 1376), 148, a3 + a2 + a4 + a5);
  CharProperties::PROPS_AddInt(v6, 149, -a2);
  CharProperties::PROPS_AddInt(v6, 150, -a3);
  CharProperties::PROPS_AddInt(v6, 151, -a4);
  CharProperties::PROPS_AddInt(v6, 152, -a5);
  CharProperties::UpdateBaseProperties(v6, *((__int16 *)this + 2532));
  Character::INV_CheckItemsRequirements(this);
  Character::ValidateHPMP(this);
  return Character::SG_Save(this);
}


// ===== 3bd26c Character::ResetStats(void) =====
PlayerSavegame *__fastcall Character::ResetStats(Character *this)
{
  int v2; // r2
  int v3; // r1

  v2 = *((_DWORD *)this + 721)
     + *((_DWORD *)this + 720)
     + *((_DWORD *)this + 722)
     + *((_DWORD *)this + 723)
     + *((_DWORD *)this + 724);
  *((_DWORD *)this + 721) = 0;
  *((_DWORD *)this + 720) = v2;
  v3 = *((__int16 *)this + 2532);
  *((_DWORD *)this + 724) = 0;
  *((_DWORD *)this + 723) = 0;
  *((_DWORD *)this + 722) = 0;
  CharProperties::UpdateBaseProperties((Character *)((char *)this + 1376), v3);
  Character::INV_CheckItemsRequirements(this);
  Character::ValidateHPMP(this);
  return Character::SG_Save(this);
}


// ===== 3bd2dc Character::GetHPPercent(void) =====
float __fastcall Character::GetHPPercent(Character *this)
{
  char *v1; // r4
  char *v2; // r5
  int Property; // r6

  v1 = (char *)this + 4084;
  v2 = (char *)this + 1376;
  Property = CharProperties::_GetProperty((int)this + 1376, (int)this + 4084, 36);
  return (float)Property / (float)CharProperties::_GetProperty((int)v2, (int)v1, 38);
}


// ===== 3bd338 Character::GetMPPercent(void) =====
float __fastcall Character::GetMPPercent(Character *this)
{
  char *v1; // r4
  char *v2; // r5
  int Property; // r6

  v1 = (char *)this + 4084;
  v2 = (char *)this + 1376;
  Property = CharProperties::_GetProperty((int)this + 1376, (int)this + 4084, 41);
  return (float)Property / (float)CharProperties::_GetProperty((int)v2, (int)v1, 43);
}


// ===== 3bd394 Character::GetEffectiveThreatPerDamage(void) =====
float __fastcall Character::GetEffectiveThreatPerDamage(Character *this)
{
  return (float)CharProperties::_GetProperty((int)this + 1376, (int)this + 4084, 204) * 0.0039062;
}


// ===== 3bd3bc Character::GetEffectiveThreatPerHeal(void) =====
float __fastcall Character::GetEffectiveThreatPerHeal(Character *this)
{
  return (float)CharProperties::_GetProperty((int)this + 1376, (int)this + 4084, 205) * 0.0039062;
}


// ===== 3bd3e4 Character::GetEffectiveThreatPerDamageToFriendly(void) =====
float __fastcall Character::GetEffectiveThreatPerDamageToFriendly(Character *this)
{
  return (float)CharProperties::_GetProperty((int)this + 1376, (int)this + 4084, 206) * 0.0039062;
}


// ===== 3bd40c Character::HasMana(int) =====
int __fastcall Character::HasMana(Character *this, int a2)
{
  if ( !*(_BYTE *)(GetOnline() + 5) )
  {
    if ( a2 >= 0 )
      return a2 <= CharProperties::_GetProperty((int)this + 1376, (int)this + 4084, 41);
LABEL_7:
    if ( gAssertLevel == 2 )
    {
      dword_0 = 0;
    }
    else if ( gAssertLevel == 1 )
    {
      fprintf(
        (FILE *)&_sF + 2,
        "ASSERT(%s) FAILED: %s:%d\n",
        "amount >= 0",
        "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Objects\\Characters\\Character_Stats.cpp",
        145);
    }
    return a2 <= CharProperties::_GetProperty((int)this + 1376, (int)this + 4084, 41);
  }
  if ( !(*(int (__fastcall **)(Character *))(*(_DWORD *)this + 84))(this) )
  {
    if ( a2 >= 0 )
      return a2 <= CharProperties::_GetProperty((int)this + 1376, (int)this + 4084, 41);
    goto LABEL_7;
  }
  return 1;
}


// ===== 3bd4f8 Character::IncStatNrg(void) =====
void __fastcall Character::IncStatNrg(Character *this)
{
  CharProperties *v1; // r5
  std::string *v3; // r5
  std::string *v4; // r0
  _BYTE v5[24]; // [sp+Ch] [bp-38h] BYREF
  _BYTE v6[24]; // [sp+24h] [bp-20h] BYREF

  v1 = (Character *)((char *)this + 1376);
  if ( CharProperties::PROPS_GetInt((Character *)((char *)this + 1376), 148, 0) <= 0 )
  {
    v3 = (std::string *)v6;
    DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
    v4 = (std::string *)v6;
  }
  else
  {
    CharProperties::PROPS_AddInt(v1, 148, -1);
    CharProperties::PROPS_AddInt(v1, 152, 1);
    CharProperties::UpdateBaseProperties(v1, *((__int16 *)this + 2532));
    v3 = (std::string *)v5;
    DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
    v4 = (std::string *)v5;
  }
  std::string::string(v4, "isTracingChar_Stats");
  DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, v3);
  std::string::~string(v3);
}


// ===== 3bd600 Character::IncStatEnd(void) =====
void __fastcall Character::IncStatEnd(Character *this)
{
  CharProperties *v1; // r5
  std::string *v3; // r5
  std::string *v4; // r0
  _BYTE v5[24]; // [sp+Ch] [bp-38h] BYREF
  _BYTE v6[24]; // [sp+24h] [bp-20h] BYREF

  v1 = (Character *)((char *)this + 1376);
  if ( CharProperties::PROPS_GetInt((Character *)((char *)this + 1376), 148, 0) <= 0 )
  {
    v3 = (std::string *)v6;
    DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
    v4 = (std::string *)v6;
  }
  else
  {
    CharProperties::PROPS_AddInt(v1, 148, -1);
    CharProperties::PROPS_AddInt(v1, 151, 1);
    CharProperties::UpdateBaseProperties(v1, *((__int16 *)this + 2532));
    v3 = (std::string *)v5;
    DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
    v4 = (std::string *)v5;
  }
  std::string::string(v4, "isTracingChar_Stats");
  DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, v3);
  std::string::~string(v3);
}


// ===== 3bd708 Character::IncStatDex(void) =====
void __fastcall Character::IncStatDex(Character *this)
{
  CharProperties *v1; // r5
  std::string *v3; // r5
  std::string *v4; // r0
  _BYTE v5[24]; // [sp+Ch] [bp-38h] BYREF
  _BYTE v6[24]; // [sp+24h] [bp-20h] BYREF

  v1 = (Character *)((char *)this + 1376);
  if ( CharProperties::PROPS_GetInt((Character *)((char *)this + 1376), 148, 0) <= 0 )
  {
    v3 = (std::string *)v6;
    DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
    v4 = (std::string *)v6;
  }
  else
  {
    CharProperties::PROPS_AddInt(v1, 148, -1);
    CharProperties::PROPS_AddInt(v1, 150, 1);
    CharProperties::UpdateBaseProperties(v1, *((__int16 *)this + 2532));
    v3 = (std::string *)v5;
    DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
    v4 = (std::string *)v5;
  }
  std::string::string(v4, "isTracingChar_Stats");
  DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, v3);
  std::string::~string(v3);
}


// ===== 3bd810 Character::IncStatStr(void) =====
void __fastcall Character::IncStatStr(Character *this)
{
  CharProperties *v1; // r5
  std::string *v3; // r5
  _BYTE *v4; // r0
  _BYTE v5[24]; // [sp+Ch] [bp-38h] BYREF
  _BYTE v6[24]; // [sp+24h] [bp-20h] BYREF

  v1 = (Character *)((char *)this + 1376);
  if ( CharProperties::PROPS_GetInt((Character *)((char *)this + 1376), 148, 0) <= 0 )
  {
    v3 = (std::string *)v6;
    DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
    v4 = v6;
  }
  else
  {
    CharProperties::PROPS_AddInt(v1, 148, -1);
    CharProperties::PROPS_AddInt(v1, 149, 1);
    CharProperties::UpdateBaseProperties(v1, *((__int16 *)this + 2532));
    v3 = (std::string *)v5;
    DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
    v4 = v5;
  }
  std::string::string((int)v4, "isTracingChar_Stats");
  DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, v3);
  std::string::~string(v3);
}


// ===== 3bd918 GetLevelScaledXP(float,Character *,Character *) =====
float __fastcall GetLevelScaledXP(float a1, Character *a2, Character *this)
{
  int v5; // r8
  int Level; // r10
  int v7; // r7
  float v8; // r0
  float v9; // r3
  float v10; // r10
  float v11; // r8
  float v12; // r7
  std::string v14; // [sp+4h] [bp-20h] BYREF

  v5 = Arrays::DesignSettingsTable::members;
  Level = Character::GetLevel(this);
  v7 = Level - Character::GetLevel(a2);
  if ( v7 >= (int)*(float *)(v5 + 156) )
    v7 = (int)*(float *)(v5 + 156);
  v8 = *(float *)(v5 + 140);
  v9 = *(float *)(v5 + 144);
  v10 = *(float *)(v5 + 152);
  v11 = *(float *)(v5 + 148);
  if ( v7 > 0 )
    goto LABEL_4;
  if ( v7 )
  {
    v8 = v9;
LABEL_4:
    v12 = (float)((int)v8 * v7) + 100.0;
    goto LABEL_5;
  }
  v12 = 100.0;
LABEL_5:
  if ( v10 >= v12 )
    v12 = v10;
  if ( v11 <= v12 )
    v12 = v11;
  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string(&v14, "isTracingXPDistribution");
  DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v14);
  std::string::~string(&v14);
  return (float)(v12 / 100.0) * a1;
}


// ===== 3bda74 Character::ModifyCharProps(int,int) =====
void __fastcall Character::ModifyCharProps(Character *this, int a2, int a3)
{
  std::string v6; // [sp+Ch] [bp-20h] BYREF

  if ( (*(int (__fastcall **)(Character *))(*(_DWORD *)this + 40))(this) )
  {
    if ( a3 < 0 )
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
          "amount >= 0",
          "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Objects\\Characters\\Character_Stats.cpp",
          398);
      }
    }
    CharProperties::PROPS_Add((Character *)((char *)this + 1376), a2, a3);
    CharProperties::UpdateBaseProperties((Character *)((char *)this + 1376), *((__int16 *)this + 2532));
    DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
    std::string::string(&v6, "isTracingChar_Stats");
    DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v6);
    std::string::~string(&v6);
  }
}


// ===== 3bdbb8 Character::RegenMP(int) =====
int __fastcall Character::RegenMP(Character *this, int a2)
{
  char *v2; // r6
  CharProperties *v3; // r7
  int Property; // r10
  int result; // r0
  std::string v7; // [sp+4h] [bp-20h] BYREF

  v2 = (char *)this + 4084;
  v3 = (Character *)((char *)this + 1376);
  Property = CharProperties::_GetProperty((int)this + 1376, (int)this + 4084, 41);
  result = CharProperties::_GetProperty((int)v3, (int)v2, 43);
  if ( a2 < 0 )
    a2 = result;
  if ( a2 + Property > result )
    a2 = result - Property;
  if ( a2 > 0 )
  {
    DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
    std::string::string((int)&v7, "isTracingChar_Stats");
    DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v7);
    std::string::~string(&v7);
    return CharProperties::PROPS_Add(v3, 41, a2);
  }
  return result;
}


// ===== 3bdca4 Character::RegenHP(int) =====
int __fastcall Character::RegenHP(Character *this, int a2)
{
  char *v2; // r6
  CharProperties *v3; // r7
  int Property; // r10
  int result; // r0
  std::string v7; // [sp+4h] [bp-20h] BYREF

  v2 = (char *)this + 4084;
  v3 = (Character *)((char *)this + 1376);
  Property = CharProperties::_GetProperty((int)this + 1376, (int)this + 4084, 36);
  result = CharProperties::_GetProperty((int)v3, (int)v2, 38);
  if ( a2 < 0 )
    a2 = result;
  if ( a2 + Property > result )
    a2 = result - Property;
  if ( a2 > 0 )
  {
    DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
    std::string::string((int)&v7, "isTracingChar_Stats");
    DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v7);
    std::string::~string(&v7);
    return CharProperties::PROPS_Add(v3, 36, a2);
  }
  return result;
}


// ===== 3bdd90 Character::RegenTick(bool) =====
int __fastcall Character::RegenTick(Character *this, int a2)
{
  char *v3; // r9
  char *v4; // r7
  int Property; // r0
  int v6; // r0
  int v8; // r0
  int v9; // r0
  std::string v10; // [sp+Ch] [bp-34h] BYREF
  std::string v11; // [sp+24h] [bp-1Ch] BYREF

  v3 = (char *)this + 1376;
  v4 = (char *)this + 4084;
  if ( a2 )
  {
    DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
    std::string::string(&v11, "isTracingChar_Stats");
    DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v11);
    std::string::~string(&v11);
    Property = CharProperties::_GetProperty((int)v3, (int)v4, 40);
    Character::RegenHP(this, Property);
    v6 = CharProperties::_GetProperty((int)v3, (int)v4, 45);
    return Character::RegenMP(this, v6);
  }
  else
  {
    DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
    std::string::string(&v10, "isTracingChar_Stats");
    DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v10);
    std::string::~string(&v10);
    v8 = CharProperties::_GetProperty((int)v3, (int)v4, 39);
    Character::RegenHP(this, v8);
    v9 = CharProperties::_GetProperty((int)v3, (int)v4, 44);
    return Character::RegenMP(this, v9);
  }
}


// ===== 3bdef4 Character::UseMana(int) =====
int __fastcall Character::UseMana(Character *this, int a2)
{
  int result; // r0
  int Switch; // r9
  std::string v6; // [sp+14h] [bp-34h] BYREF
  std::string v7; // [sp+2Ch] [bp-1Ch] BYREF

  if ( !*(_BYTE *)(GetOnline() + 5) )
  {
    if ( a2 >= 0 )
      goto LABEL_3;
    goto LABEL_8;
  }
  if ( (*(int (__fastcall **)(Character *))(*(_DWORD *)this + 84))(this) )
    return 1;
  if ( a2 < 0 )
  {
LABEL_8:
    if ( gAssertLevel == 2 )
    {
      dword_0 = 0;
    }
    else if ( gAssertLevel == 1 )
    {
      fprintf(
        (FILE *)&_sF + 2,
        "ASSERT(%s) FAILED: %s:%d\n",
        "amount >= 0",
        "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Objects\\Characters\\Character_Stats.cpp",
        159);
    }
  }
LABEL_3:
  if ( Application::IsSavedOptionOn((Application *)&Singleton<Application>::s_inst, "GOD_MANA") )
    return 1;
  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string(&v7, "GOD_MANA");
  Switch = DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v7);
  std::string::~string(&v7);
  if ( Switch || *((_BYTE *)this + 5360) )
    return 1;
  result = Character::HasMana(this, a2);
  if ( result )
  {
    CharProperties::PROPS_Add((Character *)((char *)this + 1376), 41, -a2);
    DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
    std::string::string(&v6, "isTracingChar_Stats");
    DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v6);
    std::string::~string(&v6);
    return 1;
  }
  return result;
}


// ===== 3be0d0 std::allocator<StatusMsg>::allocate(uint,void const*) [clone] =====
void *std::allocator<StatusMsg>::allocate()
{
  size_t v1; // [sp+4h] [bp-8h] BYREF

  v1 = 112;
  return __ZNSt12__node_alloc11_M_allocateERj_veneer(&v1);
}


// ===== 3be0f0 std::deque<StatusMsg,std::allocator<StatusMsg>>::_M_push_back_aux_v(StatusMsg const&) =====
char *__fastcall std::deque<StatusMsg>::_M_push_back_aux_v(_DWORD *a1, int a2)
{
  char *v2; // r10
  int v3; // r2
  unsigned int v4; // r3
  std::string *v7; // r5
  char *result; // r0
  int *v9; // r2
  int v10; // r3
  int v11; // r2
  char *v12; // r1
  int v13; // r7
  int v14; // r9
  char *v15; // r5
  int v16; // r2
  unsigned int v17; // r8
  char *v18; // r0
  const void *v19; // r1
  size_t v20; // r2
  char *v21; // r10
  void *v22; // r0
  size_t v23; // r1
  int v24; // r3
  int v25; // r3

  v2 = (char *)a1[7];
  v3 = a1[8];
  v4 = a1[9];
  if ( v4 - ((int)&v2[-v3] >> 2) <= 1 )
  {
    v12 = (char *)a1[3];
    v13 = ((v2 - v12) >> 2) + 1;
    v14 = ((v2 - v12) >> 2) + 2;
    if ( v4 <= 2 * v14 )
    {
      if ( v4 )
        v16 = a1[9];
      else
        v16 = 1;
      v17 = v4 + 2 + v16;
      v18 = (char *)std::allocator<StatusMsg *>::allocate((int)(a1 + 8), v17);
      v19 = (const void *)a1[3];
      v20 = a1[7] + 4 - (_DWORD)v19;
      v21 = v18;
      v15 = &v18[4 * ((v17 - v14) >> 1)];
      if ( v20 )
        memmove(&v18[4 * ((v17 - v14) >> 1)], v19, v20);
      v22 = (void *)a1[8];
      if ( v22 )
      {
        v23 = 4 * a1[9];
        if ( v23 > 0x80 )
          CustomFree(v22);
        else
          __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v22, v23);
      }
      a1[8] = v21;
      a1[9] = v17;
    }
    else
    {
      v15 = (char *)(v3 + 4 * ((v4 - v14) >> 1));
      if ( v12 <= v15 )
      {
        if ( v2 + 4 - v12 > 0 )
          memmove(&v15[4 * v13 - (v2 + 4 - v12)], v12, v2 + 4 - v12);
      }
      else if ( v2 + 4 != v12 )
      {
        memmove(v15, v12, v2 + 4 - v12);
      }
    }
    a1[3] = v15;
    v24 = *(_DWORD *)v15;
    v2 = &v15[4 * v13 - 4];
    a1[2] = *(_DWORD *)v15 + 112;
    a1[1] = v24;
    a1[7] = v2;
    v25 = *(_DWORD *)v2;
    a1[6] = *(_DWORD *)v2 + 112;
    a1[5] = v25;
  }
  *((_DWORD *)v2 + 1) = std::allocator<StatusMsg>::allocate();
  v7 = (std::string *)a1[4];
  v7->_M_finish = (char *)v7;
  v7->_M_start_of_storage._M_data = (char *)v7;
  result = std::string::_M_range_initialize(v7, *(const char **)(a2 + 20), *(const char **)(a2 + 16));
  v7[1]._M_buffers._M_end_of_storage = *(char **)(a2 + 24);
  v9 = (int *)(a1[7] + 4);
  a1[7] = v9;
  v10 = *v9;
  v11 = *v9 + 112;
  a1[4] = v10;
  a1[6] = v11;
  a1[5] = v10;
  return result;
}


// ===== 3be28c std::deque<StatusMsg,std::allocator<StatusMsg>>::push_back(StatusMsg const&) =====
char *__fastcall std::deque<StatusMsg>::push_back(_DWORD *a1, int a2)
{
  std::string *v2; // r4
  char *result; // r0

  v2 = (std::string *)a1[4];
  if ( v2 == (std::string *)(a1[6] - 28) )
    return std::deque<StatusMsg>::_M_push_back_aux_v(a1, a2);
  v2->_M_finish = (char *)v2;
  v2->_M_start_of_storage._M_data = (char *)v2;
  result = std::string::_M_range_initialize(v2, *(const char **)(a2 + 20), *(const char **)(a2 + 16));
  v2[1]._M_buffers._M_end_of_storage = *(char **)(a2 + 24);
  a1[4] += 28;
  return result;
}


// ===== 3be2e4 `global constructor keyed to'.._.._sources_Game_Objects_Characters_Character_Stats.cpp =====
int __fastcall `global constructor keyed to'.._.._sources_Game_Objects_Characters_Character_Stats.cpp(CMessage *a1)
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
  int *v16; // r4
  _DWORD *v17; // r9
  unsigned int v18; // r11
  int *v19; // r3
  int v20; // r2
  int v21; // r3
  _DWORD *v22; // r6
  unsigned int v23; // r7
  int v24; // r12
  int v25; // r3
  _DWORD *v26; // r6
  unsigned int v27; // r7
  int v28; // r12
  int v29; // r3
  _DWORD *v30; // r6
  unsigned int v31; // r7
  int v32; // r12
  int v33; // r3
  _DWORD *v34; // r6
  unsigned int v35; // r7
  int v36; // r12
  int v37; // r3
  _DWORD *v38; // r6
  unsigned int v39; // r7
  int v40; // r12
  int v41; // r3
  size_t v42; // [sp+4h] [bp-8h] BYREF

  dword_9A2A10 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9A2A0C = 1056964608;
  messageCreationMap = CMessage::InitializeMessageRegistration(a1);
  byte_9A2A15 = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgStartGame",
                  (const char *)GetNewInstance<CMsgStartGame>,
                  v1);
  byte_9A2A16 = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgControllerAction",
                  (const char *)GetNewInstance<CMsgControllerAction>,
                  v2);
  byte_9A2A17 = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgAttackResult",
                  (const char *)GetNewInstance<CMsgAttackResult>,
                  v3);
  byte_9A2A18 = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgRaisedEvent",
                  (const char *)GetNewInstance<CMsgRaisedEvent>,
                  v4);
  byte_9A2A19 = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgMenuReady",
                  (const char *)GetNewInstance<CMsgMenuReady>,
                  v5);
  byte_9A2A1A = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgScriptCmd",
                  (const char *)GetNewInstance<CMsgScriptCmd>,
                  v6);
  byte_9A2A1B = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgInitialSetup",
                  (const char *)GetNewInstance<CMsgInitialSetup>,
                  v7);
  byte_9A2A1C = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgQuestsSync",
                  (const char *)GetNewInstance<CMsgQuestsSync>,
                  v8);
  byte_9A2A1D = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgDropLoot",
                  (const char *)GetNewInstance<CMsgDropLoot>,
                  v9);
  byte_9A2A1E = CMessage::RegisterMessageType((CMessage *)"CMsgIsHost", (const char *)GetNewInstance<CMsgIsHost>, v10);
  byte_9A2A1F = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgSpawnObject",
                  (const char *)GetNewInstance<CMsgSpawnObject>,
                  v11);
  byte_9A2A20 = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgGlobalDeath",
                  (const char *)GetNewInstance<CMsgGlobalDeath>,
                  v12);
  v14 = (CMessage *)CMessage::RegisterMessageType(
                      (CMessage *)"CMsgAskResendAttributes",
                      (const char *)GetNewInstance<CMsgAskResendAttributes>,
                      v13);
  byte_9A2A21 = (char)v14;
  result = CMessage::TerminateMessageRegistration(v14);
  byte_9A2A22 = result;
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
  if ( (`guard variable for'Singleton<MenuMessageManager<StatusMsg,4>>::s_inst & 1) == 0 )
  {
    `guard variable for'Singleton<MenuMessageManager<StatusMsg,4>>::s_inst = 1;
    Singleton<MenuMessageManager<StatusMsg,4>>::s_inst = (int)off_95B150;
    v16 = &dword_99FA90;
    do
    {
      *v16 = 0;
      v16[1] = 0;
      v16[2] = 0;
      v16[3] = 0;
      v16[4] = 0;
      v16[5] = 0;
      v16[6] = 0;
      v16[7] = 0;
      v16[8] = 0;
      v16[9] = 8;
      v17 = std::allocator<StatusMsg *>::allocate((int)(v16 + 8), 8u);
      v16[8] = (int)v17;
      v18 = (unsigned int)(v16[9] - 1) >> 1;
      v17[v18] = std::allocator<StatusMsg>::allocate();
      v19 = &v17[v18];
      v16[3] = (int)v19;
      v20 = *v19;
      v16[7] = (int)v19;
      v16[1] = v20;
      v16[2] = v20 + 112;
      v21 = *v19;
      *v16 = v20;
      v16[6] = v21 + 112;
      v16[4] = v21;
      v16[5] = v21;
      v16 += 10;
    }
    while ( v16 != &Singleton<MenuMessageManager<OnlineStatusMsg,1>>::s_inst );
    result = _aeabi_atexit(
               (int)&Singleton<MenuMessageManager<StatusMsg,4>>::s_inst,
               (int)MenuMessageManager<StatusMsg,4>::~MenuMessageManager,
               (int)&_dso_handle);
  }
  if ( (`guard variable for'Singleton<MenuMessageManager<OnlineStatusMsg,1>>::s_inst & 1) == 0 )
  {
    `guard variable for'Singleton<MenuMessageManager<OnlineStatusMsg,1>>::s_inst = 1;
    dword_99FB58 = (int)byte_8;
    Singleton<MenuMessageManager<OnlineStatusMsg,1>>::s_inst = (int)off_95B160;
    dword_99FB34 = 0;
    dword_99FB38 = 0;
    dword_99FB3C = 0;
    dword_99FB40 = 0;
    dword_99FB44 = 0;
    dword_99FB48 = 0;
    dword_99FB4C = 0;
    dword_99FB50 = 0;
    dword_99FB54 = 0;
    v22 = std::allocator<OnlineStatusMsg *>::allocate((int)&dword_99FB54, (unsigned int)byte_8);
    v42 = 112;
    dword_99FB54 = (int)v22;
    v23 = (unsigned int)(dword_99FB58 - 1) >> 1;
    v22[v23] = __ZNSt12__node_alloc11_M_allocateERj_veneer(&v42);
    dword_99FB40 = (int)&v22[v23];
    v24 = v22[v23];
    dword_99FB50 = (int)&v22[v23];
    dword_99FB3C = v24 + 112;
    dword_99FB38 = v24;
    v25 = v22[v23];
    dword_99FB4C = v25 + 112;
    dword_99FB34 = v24;
    dword_99FB44 = v25;
    dword_99FB48 = v25;
    result = _aeabi_atexit(
               (int)&Singleton<MenuMessageManager<OnlineStatusMsg,1>>::s_inst,
               (int)MenuMessageManager<OnlineStatusMsg,1>::~MenuMessageManager,
               (int)&_dso_handle);
  }
  if ( (`guard variable for'Singleton<MenuMessageManager<TutorialMsg,1>>::s_inst & 1) == 0 )
  {
    `guard variable for'Singleton<MenuMessageManager<TutorialMsg,1>>::s_inst = 1;
    dword_99FB84 = (int)byte_8;
    Singleton<MenuMessageManager<TutorialMsg,1>>::s_inst = (int)off_95B170;
    dword_99FB60 = 0;
    dword_99FB64 = 0;
    dword_99FB68 = 0;
    dword_99FB6C = 0;
    dword_99FB70 = 0;
    dword_99FB74 = 0;
    dword_99FB78 = 0;
    dword_99FB7C = 0;
    dword_99FB80 = 0;
    v26 = std::allocator<TutorialMsg *>::allocate((int)&dword_99FB80, (unsigned int)byte_8);
    v42 = 128;
    dword_99FB80 = (int)v26;
    v27 = (unsigned int)(dword_99FB84 - 1) >> 1;
    v26[v27] = __ZNSt12__node_alloc11_M_allocateERj_veneer(&v42);
    dword_99FB6C = (int)&v26[v27];
    v28 = v26[v27];
    dword_99FB7C = (int)&v26[v27];
    dword_99FB68 = v28 + 128;
    dword_99FB64 = v28;
    v29 = v26[v27];
    dword_99FB78 = v29 + 128;
    dword_99FB60 = v28;
    dword_99FB70 = v29;
    dword_99FB74 = v29;
    result = _aeabi_atexit(
               (int)&Singleton<MenuMessageManager<TutorialMsg,1>>::s_inst,
               (int)MenuMessageManager<TutorialMsg,1>::~MenuMessageManager,
               (int)&_dso_handle);
  }
  if ( (`guard variable for'Singleton<MenuMessageManager<DialogMsg,1>>::s_inst & 1) == 0 )
  {
    `guard variable for'Singleton<MenuMessageManager<DialogMsg,1>>::s_inst = 1;
    dword_99FBB0 = (int)byte_8;
    Singleton<MenuMessageManager<DialogMsg,1>>::s_inst = (int)off_95B180;
    dword_99FB8C = 0;
    dword_99FB90 = 0;
    dword_99FB94 = 0;
    dword_99FB98 = 0;
    dword_99FB9C = 0;
    dword_99FBA0 = 0;
    dword_99FBA4 = 0;
    dword_99FBA8 = 0;
    dword_99FBAC = 0;
    v30 = std::allocator<DialogMsg *>::allocate((int)&dword_99FBAC, (unsigned int)byte_8);
    v42 = 76;
    dword_99FBAC = (int)v30;
    v31 = (unsigned int)(dword_99FBB0 - 1) >> 1;
    v30[v31] = __ZNSt12__node_alloc11_M_allocateERj_veneer(&v42);
    dword_99FB98 = (int)&v30[v31];
    v32 = v30[v31];
    dword_99FBA8 = (int)&v30[v31];
    dword_99FB94 = v32 + 76;
    dword_99FB90 = v32;
    v33 = v30[v31];
    dword_99FBA4 = v33 + 76;
    dword_99FB8C = v32;
    dword_99FB9C = v33;
    dword_99FBA0 = v33;
    result = _aeabi_atexit(
               (int)&Singleton<MenuMessageManager<DialogMsg,1>>::s_inst,
               (int)MenuMessageManager<DialogMsg,1>::~MenuMessageManager,
               (int)&_dso_handle);
  }
  if ( (`guard variable for'Singleton<MenuMessageManager<CharMenuTutorialMsg,1>>::s_inst & 1) == 0 )
  {
    `guard variable for'Singleton<MenuMessageManager<CharMenuTutorialMsg,1>>::s_inst = 1;
    dword_99FBDC = (int)byte_8;
    Singleton<MenuMessageManager<CharMenuTutorialMsg,1>>::s_inst = (int)off_95B190;
    dword_99FBB8 = 0;
    dword_99FBBC = 0;
    dword_99FBC0 = 0;
    dword_99FBC4 = 0;
    dword_99FBC8 = 0;
    dword_99FBCC = 0;
    dword_99FBD0 = 0;
    dword_99FBD4 = 0;
    dword_99FBD8 = 0;
    v34 = std::allocator<CharMenuTutorialMsg *>::allocate((int)&dword_99FBD8, (unsigned int)byte_8);
    v42 = 104;
    dword_99FBD8 = (int)v34;
    v35 = (unsigned int)(dword_99FBDC - 1) >> 1;
    v34[v35] = __ZNSt12__node_alloc11_M_allocateERj_veneer(&v42);
    dword_99FBC4 = (int)&v34[v35];
    v36 = v34[v35];
    dword_99FBD4 = (int)&v34[v35];
    dword_99FBC0 = v36 + 104;
    dword_99FBBC = v36;
    v37 = v34[v35];
    dword_99FBD0 = v37 + 104;
    dword_99FBB8 = v36;
    dword_99FBC8 = v37;
    dword_99FBCC = v37;
    result = _aeabi_atexit(
               (int)&Singleton<MenuMessageManager<CharMenuTutorialMsg,1>>::s_inst,
               (int)MenuMessageManager<CharMenuTutorialMsg,1>::~MenuMessageManager,
               (int)&_dso_handle);
  }
  if ( (`guard variable for'Singleton<MenuMessageManager<AchievementMsg,1>>::s_inst & 1) == 0 )
  {
    `guard variable for'Singleton<MenuMessageManager<AchievementMsg,1>>::s_inst = 1;
    dword_99FC08 = (int)byte_8;
    Singleton<MenuMessageManager<AchievementMsg,1>>::s_inst = (int)off_95B1A0;
    dword_99FBE4 = 0;
    dword_99FBE8 = 0;
    dword_99FBEC = 0;
    dword_99FBF0 = 0;
    dword_99FBF4 = 0;
    dword_99FBF8 = 0;
    dword_99FBFC = 0;
    dword_99FC00 = 0;
    dword_99FC04 = 0;
    v38 = std::allocator<AchievementMsg *>::allocate((int)&dword_99FC04, (unsigned int)byte_8);
    v42 = 120;
    dword_99FC04 = (int)v38;
    v39 = (unsigned int)(dword_99FC08 - 1) >> 1;
    v38[v39] = __ZNSt12__node_alloc11_M_allocateERj_veneer(&v42);
    dword_99FBF0 = (int)&v38[v39];
    v40 = v38[v39];
    dword_99FC00 = (int)&v38[v39];
    dword_99FBEC = v40 + 120;
    dword_99FBE8 = v40;
    v41 = v38[v39];
    dword_99FBFC = v41 + 120;
    dword_99FBE4 = v40;
    dword_99FBF4 = v41;
    dword_99FBF8 = v41;
    result = _aeabi_atexit(
               (int)&Singleton<MenuMessageManager<AchievementMsg,1>>::s_inst,
               (int)MenuMessageManager<AchievementMsg,1>::~MenuMessageManager,
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


// ===== 3beb88 Character::LevelUp(int) =====
int __fastcall Character::LevelUp(Character *this, int a2)
{
  int Constant; // r8
  int result; // r0
  int Int; // r0
  StringManager *v6; // r11
  int v7; // r0
  const char *String; // r11
  size_t v9; // r0
  int IDFromName; // r1
  int v11; // r0
  int v12; // r11
  char *v13; // r0
  TrophyManager *v14; // r9
  int v15; // r0
  RenderFX *v16; // r0
  MenuManager *Instance; // r0
  void *v18; // r0
  gameswf::character *Char; // r0
  int v21; // r1
  int v22; // r1
  gameswf::as_value *v23; // [sp+10h] [bp-84h]
  gameswf::as_value *HUDRoot; // [sp+10h] [bp-84h]
  ScriptManager *v26; // [sp+18h] [bp-7Ch]
  const char *v27; // [sp+18h] [bp-7Ch]
  _DWORD v28[4]; // [sp+20h] [bp-74h] BYREF
  _BYTE v29[4]; // [sp+30h] [bp-64h] BYREF
  int v30; // [sp+34h] [bp-60h]
  int v31; // [sp+38h] [bp-5Ch]
  _BYTE v32[12]; // [sp+3Ch] [bp-58h] BYREF
  int v33; // [sp+48h] [bp-4Ch]
  int v34; // [sp+4Ch] [bp-48h]
  std::string v35; // [sp+58h] [bp-3Ch] BYREF
  std::string v36; // [sp+74h] [bp-20h] BYREF

  Constant = PyDataConstants::getConstant((PyDataConstants *)dword_99F758, "CharacterDesign", "MaxLevelBNormal");
  if ( Character::SG_GetGameDifficultyUnlocked(this) == 1 )
  {
    Constant = PyDataConstants::getConstant((PyDataConstants *)dword_99F758, "CharacterDesign", "MaxLevelCHard");
  }
  else if ( Character::SG_GetGameDifficultyUnlocked(this) == 2 )
  {
    Constant = PyDataConstants::getConstant((PyDataConstants *)dword_99F758, "CharacterDesign", "MaxLevelDVeryHard");
  }
  result = CharProperties::PROPS_GetInt((Character *)((char *)this + 1376), 19, 0);
  if ( Constant > result )
  {
    DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
    std::string::string((int)&v36, "isTracingChar_Stats");
    DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v36);
    std::string::~string(&v36);
    CharProperties::PROPS_AddInt((Character *)((char *)this + 1376), 19, 1);
    CharProperties::PROPS_SetInt((Character *)((char *)this + 1376), 33, 0);
    CharProperties::UpdateBaseProperties((Character *)((char *)this + 1376), *((__int16 *)this + 2532));
    Character::RegenHP(this, -1);
    Character::RegenMP(this, -1);
    Int = CharProperties::PROPS_GetInt((Character *)((char *)this + 1376), 19, 0);
    Character::SG_SetPlayerLevel(this, Int);
    Character::SG_Save(this);
    if ( !(*(int (__fastcall **)(Character *))(*(_DWORD *)this + 40))(this) )
    {
LABEL_18:
      result = CharProperties::PROPS_GetInt((Character *)((char *)this + 1376), 19, 0);
      if ( Constant > result )
      {
        if ( a2 > CharProperties::_GetProperty((char *)this + 1376, (char *)this + 4084, 34) >> 8 )
          a2 = (CharProperties::PROPS_Get((char *)this + 1376, 34) >> 8) - 1;
        return CharProperties::PROPS_AddInt((Character *)((char *)this + 1376), 33, a2);
      }
      return result;
    }
    v35._M_finish = (char *)&v35;
    v35._M_start_of_storage._M_data = (char *)&v35;
    std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block((int)&v35, 0x10u);
    *v35._M_finish = 0;
    v6 = (StringManager *)dword_99F760;
    v7 = PyDataConstants::getConstant((PyDataConstants *)dword_99F758, "StrID", "MENU_LEVEL_UP");
    String = (const char *)StringManager::getString(v6, v7);
    v9 = LC_API_STRLEN_0(String);
    std::string::_M_assign(&v35, String, &String[v9]);
    std::deque<StatusMsg>::push_back(&dword_99FA90, &v35);
    v28[0] = dword_99FA90;
    v28[1] = *(_DWORD *)algn_99FA94;
    v28[2] = *(_DWORD *)&algn_99FA94[4];
    v28[3] = *(_DWORD *)&algn_99FA94[8];
    if ( std::priv::_Deque_iterator_base<StatusMsg>::_M_subtract(&dword_99FAA0, v28) != 1
      || (v27 = StatusMsg::s_StartFuncName[0],
          Instance = (MenuManager *)MenuManager::GetInstance((MenuManager *)((char *)&dword_0 + 1)),
          (HUDRoot = (gameswf::as_value *)MenuManager::GetHUDRoot(Instance)) == nullptr) )
    {
LABEL_8:
      v26 = (ScriptManager *)dword_99F778;
      IDFromName = ScriptManager::GetIDFromName((ScriptManager *)&ScriptManager::s_inst, "PlayerLevelUp", 1);
      if ( IDFromName != -1 )
        ScriptManager::StartScript((ScriptManager *)&ScriptManager::s_inst, IDFromName, -1, 0);
      VisualFXManager::PlayAnimFXSet(&Singleton<VisualFXManager>::s_inst, 135, this, 0);
      v11 = CharProperties::PROPS_GetInt((Character *)((char *)this + 1376), 19, 0);
      v12 = v11;
      if ( v11 == 2 )
      {
        if ( !*(_BYTE *)(GetOnline() + 5) && !Character::SG_GetGameDifficulty(this) && *((_BYTE *)v26 + 46) )
        {
          v22 = ScriptManager::GetIDFromName((ScriptManager *)&ScriptManager::s_inst, "cinematic_Tuto_levelUp", 1);
          if ( v22 != -1 )
            ScriptManager::StartScript((ScriptManager *)&ScriptManager::s_inst, v22, -1, 0);
          *(_BYTE *)(dword_99F778 + 46) = 0;
          updateJob_thread::Start2((updateJob_thread *)m_updateJobThread4);
        }
        if ( !*(_BYTE *)(GetOnline() + 5) && !Character::SG_GetGameDifficulty(this) )
        {
          if ( *((_BYTE *)v26 + 41) )
          {
            v21 = ScriptManager::GetIDFromName(
                    (ScriptManager *)&ScriptManager::s_inst,
                    "cinematic_Tuto_menuCharacterSheet",
                    1);
            if ( v21 != -1 )
              ScriptManager::StartScript((ScriptManager *)&ScriptManager::s_inst, v21, -1, 0);
          }
        }
        if ( !*(_BYTE *)(GetOnline() + 5) && !Character::SG_GetGameDifficulty(this) )
        {
          if ( *((_BYTE *)v26 + 44) )
          {
            v23 = (gameswf::as_value *)ScriptManager::GetIDFromName(
                                         (ScriptManager *)&ScriptManager::s_inst,
                                         "cinematic_Tuto_menuSkillSheet",
                                         1);
            if ( v23 != (gameswf::as_value *)-1 )
            {
              if ( *(_BYTE *)(GetOnline() + 5) )
                ScriptManager::StartScript((ScriptManager *)&ScriptManager::s_inst, (int)v23, -1, 0);
            }
          }
        }
      }
      else if ( v11 == 12 )
      {
        v16 = *(RenderFX **)(*(_DWORD *)(MenuManager::GetInstance((MenuManager *)&byte_9[3]) + 244) + 312);
        v32[0] = 0;
        v32[1] = 1;
        v32[4] = 1;
        RenderFX::InvokeASCallback(v16, "_root.menu_CharacterMenu", "IsSpecTime", (const gameswf::as_value *)v32, 1);
        gameswf::as_value::drop_refs((gameswf::as_value *)v32);
      }
      if ( PlayerManager::IsLocalPlayer((PlayerManager *)dword_99F76C, this) )
      {
        switch ( v12 )
        {
          case 10:
            v13 = "epic_lvl10";
            goto LABEL_16;
          case 20:
            v13 = "epic_lvl20";
            goto LABEL_16;
          case 30:
            v13 = "epic_lvl30";
            goto LABEL_16;
          case 40:
            v13 = "epic_lvl40";
            goto LABEL_16;
          case 50:
            v13 = "epic_lvl50";
            goto LABEL_16;
          case 60:
            v13 = "epic_lvl60";
            goto LABEL_16;
          case 70:
            v13 = "epic_lvl70";
            goto LABEL_16;
          case 80:
            v13 = "epic_lvl80";
            goto LABEL_16;
          case 90:
            v13 = "epic_lvl90";
            goto LABEL_16;
          case 100:
            v13 = "epic_lvl100";
LABEL_16:
            v14 = (TrophyManager *)TrophyManager::s_instance;
            v15 = Arrays::GetMemberIDByString<Arrays::TrophyTable>(v13);
            TrophyManager::UnlockTrophy(v14, v15);
            break;
          default:
            break;
        }
      }
      std::string::~string(&v35);
      goto LABEL_18;
    }
    if ( dword_9A53DC )
    {
      v18 = (void *)dword_9A53D8;
      if ( *(_BYTE *)(dword_9A53D8 + 4) )
      {
LABEL_48:
        Char = (gameswf::character *)DebugCachedCharacter::GetChar((DebugCachedCharacter *)&StatusMsg::s_NodeCachedChar);
        v29[0] = 0;
        v33 = 0;
        v34 = 0;
        v29[1] = 2;
        v30 = 0;
        v31 = 0;
        RenderFX::InvokeASCallback(HUDRoot, Char, v27, (const gameswf::as_value *)v29, 1);
        gameswf::as_value::drop_refs((gameswf::as_value *)v29);
        goto LABEL_8;
      }
      if ( (*(_DWORD *)dword_9A53D8)-- == 1 )
        gameswf::free_internal(v18);
      dword_9A53DC = 0;
      dword_9A53D8 = 0;
    }
    DebugCachedCharacter::RefreshCache(
      (DebugCachedCharacter *)&StatusMsg::s_NodeCachedChar,
      StatusMsg::s_NodeName[0],
      HUDRoot,
      nullptr);
    goto LABEL_48;
  }
  return result;
}


// ===== 3bf498 Character::_GiveXP(int,bool) =====
int __fastcall Character::_GiveXP(Character *this, int a2, int a3)
{
  int Constant; // r8
  int Switch; // r10
  int GameDifficultyUnlocked; // r10
  int ModifiedXP; // r0
  int v10; // r8
  int PlayerByCharacter; // r0
  int v12; // r8
  int v13; // r0
  int v14; // r8
  int v15; // r0
  int v16; // r11
  std::string v18; // [sp+1Ch] [bp-38h] BYREF
  std::string v19; // [sp+34h] [bp-20h] BYREF

  Constant = PyDataConstants::getConstant((PyDataConstants *)dword_99F758, "CharacterDesign", "MaxLevelBNormal");
  if ( Character::SG_GetGameDifficultyUnlocked(this) == 1 )
  {
    Constant = PyDataConstants::getConstant((PyDataConstants *)dword_99F758, "CharacterDesign", "MaxLevelCHard");
  }
  else if ( Character::SG_GetGameDifficultyUnlocked(this) == 2 )
  {
    Constant = PyDataConstants::getConstant((PyDataConstants *)dword_99F758, "CharacterDesign", "MaxLevelDVeryHard");
  }
  if ( Constant <= CharProperties::PROPS_GetInt((Character *)((char *)this + 1376), 19, 0)
    || !(*(int (__fastcall **)(Character *))(*(_DWORD *)this + 40))(this)
    || (*(int (__fastcall **)(Character *))(*(_DWORD *)this + 84))(this)
    || *(_DWORD *)(Application::GetCurrentLevel((Application *)&Singleton<Application>::s_inst) + 336) )
  {
    return 0;
  }
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
        "amount >= 0",
        "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Objects\\Characters\\Character_Stats.cpp",
        350);
    }
  }
  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string((int)&v19, "OneKillLevelUp");
  Switch = DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v19);
  std::string::~string(&v19);
  if ( Switch )
  {
    v16 = CharProperties::PROPS_Get((char *)this + 1376, 34);
    a2 = v16 - CharProperties::PROPS_Get((char *)this + 1376, 33);
  }
  GameDifficultyUnlocked = Character::SG_GetGameDifficultyUnlocked(this);
  if ( GameDifficultyUnlocked < *(_DWORD *)(Application::GetCurrentLevel((Application *)&Singleton<Application>::s_inst)
                                          + 280) )
    a2 = 256;
  ModifiedXP = CharProperties::PROPS_GetModifiedXP((Character *)((char *)this + 1376), a2);
  CharProperties::PROPS_Add((Character *)((char *)this + 1376), 33, ModifiedXP);
  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string((int)&v18, "isTracingChar_Stats");
  DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v18);
  std::string::~string(&v18);
  v10 = CharProperties::PROPS_Get((char *)this + 1376, 33);
  if ( v10 >= CharProperties::PROPS_Get((char *)this + 1376, 34) )
  {
    v12 = CharProperties::PROPS_Get((char *)this + 1376, 33);
    v13 = CharProperties::PROPS_Get((char *)this + 1376, 34);
    Character::LevelUp(this, (v12 - v13) >> 8);
    v14 = CharProperties::PROPS_Get((char *)this + 1376, 33);
    if ( v14 > CharProperties::PROPS_Get((char *)this + 1376, 34) )
    {
      v15 = CharProperties::PROPS_Get((char *)this + 1376, 34);
      CharProperties::PROPS_Set((Character *)((char *)this + 1376), 33, v15);
    }
  }
  if ( a3 )
  {
    PlayerByCharacter = PlayerManager::GetPlayerByCharacter((PlayerManager *)dword_99F76C, this, 0);
    PlayerStatManager::IncreaseStat(
      &Singleton<PlayerStatManager>::s_inst,
      6,
      a2 >> 8,
      *(_DWORD *)(PlayerByCharacter + 1648));
  }
  return 1;
}

