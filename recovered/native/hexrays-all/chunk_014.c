// ===== 43dbb8 NativeReloadSkills(gameswf::fn_call const&) =====
Character *__fastcall NativeReloadSkills(const gameswf::fn_call *a1)
{
  int v1; // r0
  Character *result; // r0
  double v3; // r0

  if ( *((_DWORD *)a1 + 4) == 1 )
  {
    LODWORD(v3) = gameswf::as_value::to_number((gameswf::as_value *)(**((_DWORD **)a1 + 3) + 12 * *((_DWORD *)a1 + 5)));
    v1 = (int)v3;
  }
  else
  {
    v1 = 0;
  }
  result = (Character *)NativeGetPlayerChar(v1, 0);
  if ( result )
    return (Character *)Character::ReloadSkills(result);
  return result;
}


// ===== 43dc08 NativeSaveGame(gameswf::fn_call const&) =====
Character *__fastcall NativeSaveGame(const gameswf::fn_call *a1)
{
  int v1; // r0
  Character *result; // r0
  Character *v3; // r5
  int v4; // r3
  unsigned int v5; // r10
  unsigned int v6; // r4
  int v7; // r8
  int v8; // r3
  int SkillLevel; // r10
  int v10; // r0
  CharProperties *v11; // r5
  Character *Int; // r4
  int v13; // r0
  int v14; // r0
  double v15; // r0
  TrophyManager *v16; // [sp+8h] [bp-Ch]

  if ( *((_DWORD *)a1 + 4) == 1 )
  {
    LODWORD(v15) = gameswf::as_value::to_number((gameswf::as_value *)(**((_DWORD **)a1 + 3) + 12 * *((_DWORD *)a1 + 5)));
    v1 = (int)v15;
  }
  else
  {
    v1 = 0;
  }
  result = (Character *)NativeGetPlayerChar(v1, 0);
  v3 = result;
  if ( result )
  {
    Character::SG_Save(result);
    v4 = *((_DWORD *)v3 + 1338);
    v16 = (TrophyManager *)TrophyManager::s_instance;
    if ( v4 && *(_DWORD *)(v4 + 132) )
    {
      v5 = 0;
      v6 = 0;
      v7 = 1;
      while ( Character::SG_GetSkillLevel(v3, v5) )
      {
        SkillLevel = Character::SG_GetSkillLevel(v3, v5);
        if ( SkillLevel != PyDataConstants::getConstant(
                             (PyDataConstants *)dword_99F758,
                             "CharacterDesign",
                             "MaxSkillLevelDVeryHard") )
          goto LABEL_8;
        v10 = Arrays::GetMemberIDByString<Arrays::TrophyTable>("epic_maxskill");
        TrophyManager::UnlockTrophy(v16, v10);
        v8 = *((_DWORD *)v3 + 1338);
        v5 = ++v6;
        if ( !v8 )
          goto LABEL_14;
LABEL_9:
        if ( *(_DWORD *)(v8 + 132) <= v6 )
          goto LABEL_14;
      }
      v7 = 0;
LABEL_8:
      v8 = *((_DWORD *)v3 + 1338);
      v5 = ++v6;
      if ( !v8 )
        goto LABEL_14;
      goto LABEL_9;
    }
    v7 = 1;
LABEL_14:
    result = (Character *)(*(int (__fastcall **)(Character *))(*(_DWORD *)v3 + 40))(v3);
    if ( result )
    {
      if ( v7 )
      {
        v14 = Arrays::GetMemberIDByString<Arrays::TrophyTable>("epic_all_skills_unlocked");
        TrophyManager::UnlockTrophy(v16, v14);
      }
      v11 = (Character *)((char *)v3 + 1376);
      result = (Character *)CharProperties::PROPS_GetInt(v11, 157, 0);
      if ( !result )
      {
        Int = (Character *)CharProperties::PROPS_GetInt(v11, 19, 0);
        result = (Character *)PyDataConstants::getConstant(
                                (PyDataConstants *)dword_99F758,
                                "CharacterDesign",
                                "MaxLevelDVeryHard");
        if ( Int == result )
        {
          v13 = Arrays::GetMemberIDByString<Arrays::TrophyTable>("epic_spent_all_skill_points");
          return (Character *)TrophyManager::UnlockTrophy(v16, v13);
        }
      }
    }
  }
  return result;
}


// ===== 43de30 NativeStartFromGCInvite(gameswf::fn_call const&) =====
int __fastcall NativeStartFromGCInvite(gameswf::as_value **a1)
{
  gameswf::as_value **v1; // r5
  PlayerSavegame *v2; // r6
  unsigned int v3; // r1
  MenuManager *Instance; // r0
  RenderFX *Root; // r0
  bool v6; // r1
  int v8; // r3
  _BOOL4 IsWifiEnabled; // r0
  MenuManager *v10; // r0
  RenderFX *v11; // r0
  double v12; // r0
  MenuManager *v13; // r0
  RenderFX *v14; // r0
  OnlineGameState *v15; // r0
  MenuManager *v16; // r0
  MenuManager *v17; // r0
  RenderFX *v18; // r0
  _BYTE v19[12]; // [sp+Ch] [bp-28h] BYREF
  _BYTE v20[12]; // [sp+18h] [bp-1Ch] BYREF
  _BYTE v21[16]; // [sp+24h] [bp-10h] BYREF

  v1 = a1;
  if ( a1[4] == (gameswf::as_value *)((char *)&dword_0 + 1) )
  {
    LODWORD(v12) = gameswf::as_value::to_number((gameswf::as_value *)(*(_DWORD *)a1[3] + 12 * (_DWORD)a1[5]));
    a1 = (gameswf::as_value **)(int)v12;
    v2 = (PlayerSavegame *)a1;
  }
  else
  {
    v2 = nullptr;
  }
  if ( Device::IsHighPerformance((Device *)a1) || Is_In_Multiplayer_Mode || SHARP_DEVICES || HTC_DEVICES )
  {
    if ( !PlayerSavegame::SG_Exists(v2, v3) )
    {
      Instance = (MenuManager *)MenuManager::GetInstance(nullptr);
      Root = (RenderFX *)MenuManager::GetRoot(Instance);
      v21[1] = 1;
      v21[4] = 1;
      v21[0] = 0;
      RenderFX::InvokeASCallback(Root, "_root", "SettingInvitationPending", (const gameswf::as_value *)v21, 1);
      gameswf::as_value::drop_refs((gameswf::as_value *)v21);
      v6 = 0;
      return gameswf::as_value::set_bool(*v1, v6);
    }
    IsWifiEnabled = Application::IsWifiEnabled((Application *)&Singleton<Application>::s_inst);
    if ( IsWifiEnabled )
    {
      v13 = (MenuManager *)MenuManager::GetInstance((MenuManager *)IsWifiEnabled);
      v14 = (RenderFX *)MenuManager::GetRoot(v13);
      v20[1] = 1;
      v20[0] = 0;
      v20[4] = 0;
      RenderFX::InvokeASCallback(v14, "_root", "SettingInvitationPending", (const gameswf::as_value *)v20, 1);
      gameswf::as_value::drop_refs((gameswf::as_value *)v20);
      AssignSaveSlotToPlayer((int)v2, 0);
      if ( byte_99F83A )
      {
        v15 = (OnlineGameState *)OnlineSingleton<OnlineGameState>::GetInstance();
        v16 = (MenuManager *)OnlineGameState::Init(v15, 3);
        v17 = (MenuManager *)MenuManager::GetInstance(v16);
        v18 = (RenderFX *)MenuManager::GetRoot(v17);
        RenderFX::InvokeASCallback(v18, "_root", "GoToVerificationScreen", nullptr, 0);
        v6 = 1;
        return gameswf::as_value::set_bool(*v1, v6);
      }
      goto LABEL_18;
    }
    v8 = (unsigned __int8)byte_99F81A;
  }
  else
  {
    v8 = (unsigned __int8)byte_99F81A;
  }
  if ( !v8 && !byte_99F83A )
  {
LABEL_18:
    v6 = 0;
    return gameswf::as_value::set_bool(*v1, v6);
  }
  v10 = (MenuManager *)MenuManager::GetInstance(nullptr);
  v11 = (RenderFX *)MenuManager::GetRoot(v10);
  v19[1] = 1;
  v19[0] = 0;
  v19[4] = 0;
  RenderFX::InvokeASCallback(v11, "_root", "SettingInvitationPending", (const gameswf::as_value *)v19, 1);
  gameswf::as_value::drop_refs((gameswf::as_value *)v19);
  v6 = 0;
  byte_99F83A = 0;
  byte_99F81A = 0;
  return gameswf::as_value::set_bool(*v1, v6);
}


// ===== 43e0d0 NativeStartGame(gameswf::fn_call const&) =====
void __fastcall NativeStartGame(const gameswf::fn_call *a1)
{
  int CurrentLevel; // r0
  PlayerSavegame *LocalPlayer; // r0
  int v4; // r7
  int v5; // r11
  int v6; // r9
  _BYTE *v7; // r3
  int v8; // r2
  int IsLocalPlayerHosting; // r0
  double v10; // r0
  int v11; // r0
  const char *v12; // [sp+18h] [bp-1ACh]
  char v13; // [sp+1Ch] [bp-1A8h]
  std::priv::_String_base<char,std::allocator<char> > v14[2]; // [sp+24h] [bp-1A0h] BYREF
  int v15; // [sp+60h] [bp-164h]
  _DWORD v16[85]; // [sp+64h] [bp-160h]
  char v17; // [sp+1B8h] [bp-Ch]
  _BYTE v18[4]; // [sp+1C0h] [bp-4h] BYREF

  CurrentLevel = Application::GetCurrentLevel((Application *)&Singleton<Application>::s_inst);
  if ( CurrentLevel && *(_DWORD *)(CurrentLevel + 304) == 38 )
    return;
  LocalPlayer = (PlayerSavegame *)PlayerManager::GetLocalPlayer((PlayerManager *)dword_99F76C, 0, 0);
  v4 = *((_DWORD *)LocalPlayer + 409);
  if ( v4 >= 0 )
    PlayerSavegame::SG_GetNextFreeSlot(LocalPlayer);
  PlayerSavegame::PlayerSavegame((PlayerSavegame *)v14, v4, 1, 0);
  if ( *((_DWORD *)a1 + 4) == 1
    && gameswf::as_value::is_number((gameswf::as_value *)(**((_DWORD **)a1 + 3) + 12 * *((_DWORD *)a1 + 5))) )
  {
    LODWORD(v10) = gameswf::as_value::to_number((gameswf::as_value *)(**((_DWORD **)a1 + 3) + 12 * *((_DWORD *)a1 + 5)));
    v11 = (int)v10;
    v5 = v11;
    if ( v15 >= v11 )
      PlayerSavegame::m_difficultyLevel = v11;
    PlayerSavegame::SG_Save((PlayerSavegame *)v14);
  }
  else
  {
    v5 = 0;
  }
  v6 = v16[PlayerSavegame::m_difficultyLevel + 4];
  if ( *(_BYTE *)(GetOnline() + 5) )
  {
    IsLocalPlayerHosting = PlayerManager::IsLocalPlayerHosting((PlayerManager *)dword_99F76C);
    if ( IsLocalPlayerHosting )
    {
      v8 = v16[PlayerSavegame::m_difficultyLevel];
    }
    else
    {
      v13 = 0;
      v8 = 1;
    }
    if ( IsLocalPlayerHosting )
      v13 = 0;
    v7 = &v18[PlayerSavegame::m_difficultyLevel];
    if ( v6 != -1 )
      goto LABEL_9;
    goto LABEL_19;
  }
  v7 = &v18[PlayerSavegame::m_difficultyLevel];
  v8 = v16[PlayerSavegame::m_difficultyLevel];
  v13 = *((_BYTE *)&v16[3] + PlayerSavegame::m_difficultyLevel);
  if ( v6 == -1 )
LABEL_19:
    v6 = *(_DWORD *)(Arrays::DesignSettingsTable::members + 36);
LABEL_9:
  *(v7 - 336) = 0;
  v12 = (const char *)v8;
  PlayerSavegame::SG_Save((PlayerSavegame *)v14);
  Application::LoadLevel(
    (Application *)&Singleton<Application>::s_inst,
    *(char **)(Arrays::LevelList::members + 72 * v6 + 32),
    v12,
    v4,
    1,
    v13,
    v5,
    0,
    0,
    0);
  if ( v17 )
    v17 = 0;
  PlayerSavegame::~PlayerSavegame(v14);
}


// ===== 43e308 NativeStartMultiplayerGame(gameswf::fn_call const&) =====
void __fastcall NativeStartMultiplayerGame(const gameswf::fn_call *a1)
{
  CMatching *Instance; // r0
  CMatchingGLLive *v3; // r0

  *(_DWORD *)(OnlineSingleton<OnlineGameState>::GetInstance() + 20) = 300;
  if ( *(_DWORD *)(OnlineSingleton<OnlineGameState>::GetInstance() + 52) == 3 )
  {
    Instance = (CMatching *)OnlineSingleton<OnlineGameState>::GetInstance();
    if ( !*((_BYTE *)Instance + 40) )
    {
      v3 = (CMatchingGLLive *)CMatching::Get(Instance);
      CMatchingGLLive::StartGame(v3);
      *(_BYTE *)(OnlineSingleton<OnlineGameState>::GetInstance() + 40) = 1;
    }
  }
  else
  {
    NativeStartGame(a1);
  }
}


// ===== 43e364 gameswf::fn_call::get_player(void) =====
int __fastcall gameswf::fn_call::get_player(gameswf::fn_call *this)
{
  int v1; // r4
  int result; // r0
  _BYTE *v3; // r3

  v1 = *((_DWORD *)this + 3);
  result = *(_DWORD *)(v1 + 104);
  if ( result )
  {
    v3 = *(_BYTE **)(v1 + 100);
    if ( !v3[4] )
    {
      if ( (*(_DWORD *)v3)-- == 1 )
        gameswf::free_internal(v3);
      *(_DWORD *)(v1 + 104) = 0;
      *(_DWORD *)(v1 + 100) = 0;
      return 0;
    }
  }
  return result;
}


// ===== 43e3b8 std::allocator<Quest *>::_M_allocate(uint,uint &) =====
void *__fastcall std::allocator<Quest *>::_M_allocate(int a1, unsigned int a2, size_t *a3)
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


// ===== 43e428 std::allocator<tRoomInfo>::_M_allocate(uint,uint &) =====
void *__fastcall std::allocator<tRoomInfo>::_M_allocate(int a1, unsigned int a2, unsigned int *a3)
{
  void *result; // r0
  unsigned int v5; // r5

  if ( a2 > 0x43B3D5 )
  {
    puts("out of memory\n");
    exit(1);
  }
  if ( !a2 )
    return nullptr;
  v5 = 968 * a2;
  result = CustomAlloc(968 * a2);
  *a3 = v5 / 0x3C8;
  return result;
}


// ===== 43e494 NativeStatsReset(gameswf::fn_call const&) =====
gameswf::as_value **__fastcall NativeStatsReset(gameswf::as_value **result)
{
  gameswf::as_value **v1; // r5
  gameswf::as_value ***v2; // r7
  int v3; // r8
  gameswf::as_value *v4; // r12
  int v5; // r8
  int v6; // r7
  Character *PlayerChar; // r6
  int Constant; // r4
  int v9; // r4
  gameswf::as_value *v10; // r4

  v1 = result;
  if ( result[4] == (gameswf::as_value *)((char *)&dword_0 + 2) )
  {
    v2 = (gameswf::as_value ***)result[3];
    v3 = 3 * (_DWORD)result[5];
    if ( BYTE1((*v2)[v3]) == 2 )
    {
      v4 = result[5];
      result = *v2;
      if ( BYTE1((*v2)[3 * ((_DWORD)v4 - 1)]) == 1 )
      {
        v5 = gameswf::as_value::to_int((gameswf::as_value *)&result[v3]);
        v6 = gameswf::as_value::to_bool((gameswf::as_value *)(*(_DWORD *)v1[3] + 12 * ((_DWORD)v1[5] - 1)));
        PlayerChar = NativeGetPlayerChar(v5, 0);
        if ( PlayerChar )
        {
          Constant = PyDataConstants::getConstant(
                       (PyDataConstants *)dword_99F758,
                       "CharacterDesign",
                       "StatsReset_GoldCostPerLevel");
          v9 = Constant * Character::GetLevel(PlayerChar);
          if ( !v6 )
          {
            Character::ResetStats(PlayerChar);
            Character::ResetSkills(PlayerChar);
            ItemInventory::AddGold((Character *)((char *)PlayerChar + 892), -v9);
          }
          return (gameswf::as_value **)gameswf::as_value::set_double(*v1, (double)v9);
        }
        else
        {
          v10 = *v1;
          result = (gameswf::as_value **)gameswf::as_value::drop_refs(*v1);
          *((_BYTE *)v10 + 1) = 0;
        }
      }
    }
  }
  return result;
}


// ===== 43e600 NativeInvEquipItem(gameswf::fn_call const&) =====
gameswf::as_value **__fastcall NativeInvEquipItem(gameswf::as_value **result)
{
  gameswf::as_value **v1; // r4
  gameswf::as_value *v2; // r7
  gameswf::as_value *v3; // r6
  int v4; // r6
  int v5; // r0
  gameswf::as_value *v6; // r4
  int v7; // [sp+4h] [bp-18h]

  v1 = result;
  if ( result[4] == (gameswf::as_value *)((char *)&dword_0 + 3) )
  {
    v2 = result[3];
    v3 = result[5];
    if ( *(_BYTE *)(*(_DWORD *)v2 + 12 * (_DWORD)v3 + 1) == 2 )
    {
      result = (gameswf::as_value **)gameswf::as_value::is_number((gameswf::as_value *)(*(_DWORD *)v2
                                                                                      + 12 * ((_DWORD)v3 - 1)));
      if ( result )
      {
        result = (gameswf::as_value **)gameswf::as_value::is_number((gameswf::as_value *)(*(_DWORD *)v1[3]
                                                                                        + 12 * ((_DWORD)v1[5] - 2)));
        if ( result )
        {
          v4 = gameswf::as_value::to_int((gameswf::as_value *)(*(_DWORD *)v1[3] + 12 * (_DWORD)v1[5]));
          v7 = gameswf::as_value::to_int((gameswf::as_value *)(*(_DWORD *)v1[3] + 12 * ((_DWORD)v1[5] - 1)));
          v5 = gameswf::as_value::to_int((gameswf::as_value *)(*(_DWORD *)v1[3] + 12 * ((_DWORD)v1[5] - 2)));
          result = (gameswf::as_value **)NativeGetPlayerChar(v5, 0);
          if ( result )
          {
            (*((void (__fastcall **)(gameswf::as_value **, int, int))*result + 79))(result, v4, v7);
            v6 = *v1;
            result = (gameswf::as_value **)gameswf::as_value::drop_refs(v6);
            *((_BYTE *)v6 + 1) = 0;
          }
        }
      }
    }
  }
  return result;
}


// ===== 43e734 NativeHUDSkill(gameswf::fn_call const&) =====
unsigned int __fastcall NativeHUDSkill(unsigned int result)
{
  _DWORD *v1; // r7
  int v2; // r6
  int v3; // r6
  v2Controller **v4; // r4
  unsigned int v5; // r5

  if ( *(_DWORD *)(result + 16) == 1 )
  {
    v1 = *(_DWORD **)(result + 12);
    v2 = 12 * *(_DWORD *)(result + 20);
    if ( *(_BYTE *)(*v1 + v2 + 1) == 2 )
    {
      v3 = gameswf::as_value::to_int((gameswf::as_value *)(*v1 + v2));
      result = PlayerManager::GetLocalPlayer((PlayerManager *)dword_99F76C, 0, 1);
      v4 = *(v2Controller ***)(result + 1632);
      if ( v4 )
      {
        result = Character::CTRLIsAllowed(*(Character **)(result + 1632));
        if ( result )
        {
          result = Character::SG_GetSkillInSlot((Character *)v4, v3);
          v5 = result;
          if ( result != -1 )
          {
            v2Controller::Cmd_BeginSkill(v4[222], result);
            return v2Controller::Cmd_EndSkill(v4[222], v5);
          }
        }
      }
    }
  }
  return result;
}


// ===== 43e830 NativeMoveCharacter(gameswf::fn_call const&) =====
Character *__fastcall NativeMoveCharacter(Character *result)
{
  Character *v1; // r4
  _DWORD *v2; // r7
  int v3; // r6
  int v4; // r3
  float v5; // r2
  float v6; // r3
  int v7; // r1
  double v8; // r10
  int v9; // r0
  Character *v10; // r5
  float v11; // r0
  float v12[3]; // [sp+10h] [bp-2Ch] BYREF
  float v13[8]; // [sp+1Ch] [bp-20h] BYREF

  v1 = result;
  if ( *((_DWORD *)result + 4) == 3 )
  {
    v2 = *((_DWORD **)result + 3);
    v3 = *((_DWORD *)result + 5);
    v4 = *v2 + 12 * v3;
    if ( *(_BYTE *)(v4 + 1) == 2 )
    {
      v5 = *(float *)(v4 + 8);
      v6 = *(float *)(v4 + 4);
      v13[6] = v5;
      v13[5] = v6;
      v13[3] = v6;
      v13[4] = v5;
      result = (Character *)gameswf::as_value::is_number((gameswf::as_value *)(*v2 + 12 * (v3 - 1)));
      if ( result )
      {
        result = (Character *)gameswf::as_value::is_number((gameswf::as_value *)(**((_DWORD **)v1 + 3)
                                                                               + 12 * (*((_DWORD *)v1 + 5) - 2)));
        if ( result )
        {
          LODWORD(v8) = gameswf::as_value::to_number((gameswf::as_value *)(**((_DWORD **)v1 + 3)
                                                                         + 12 * *((_DWORD *)v1 + 5)));
          HIDWORD(v8) = v7;
          gameswf::as_value::to_number((gameswf::as_value *)(**((_DWORD **)v1 + 3) + 12 * (*((_DWORD *)v1 + 5) - 1)));
          v9 = gameswf::as_value::to_int((gameswf::as_value *)(**((_DWORD **)v1 + 3) + 12 * (*((_DWORD *)v1 + 5) - 2)));
          result = NativeGetPlayerChar(v9, 0);
          v10 = result;
          if ( result )
          {
            result = (Character *)Character::CTRLIsAllowed(result);
            if ( result )
            {
              v13[0] = 1.0;
              v13[1] = -1.0;
              v13[2] = 0.0;
              Point3D<float>::normalize(v13);
              v11 = v8;
              memset(v12, 0, sizeof(v12));
              Point3D<float>::rotateXYBy(v13, 90.0 - v11, v12);
              return (Character *)v2Controller::Cmd_HeadTowards(*((_DWORD *)v10 + 222));
            }
          }
        }
      }
    }
  }
  return result;
}


// ===== 43ea0c NativeUnlockCharacter(gameswf::fn_call const&) =====
Character *__fastcall NativeUnlockCharacter(Character *result)
{
  gameswf::as_value **v1; // r4
  _DWORD *v2; // r6
  int v3; // r5
  int v4; // r0

  v1 = (gameswf::as_value **)result;
  if ( *((_DWORD *)result + 4) == 1 )
  {
    v2 = *((_DWORD **)result + 3);
    v3 = 12 * *((_DWORD *)result + 5);
    if ( *(_BYTE *)(*v2 + v3 + 1) == 2 )
    {
      v4 = gameswf::as_value::to_int((gameswf::as_value *)(*v2 + v3));
      result = NativeGetPlayerChar(v4, 0);
      if ( result )
      {
        *(_BYTE *)(*((_DWORD *)result + 222) + 8) = 0;
        NativeSetLockZoom(0);
        return (Character *)gameswf::as_value::set_bool(*v1, 0);
      }
    }
  }
  return result;
}


// ===== 43eac0 NativeLockCharacter(gameswf::fn_call const&) =====
Character *__fastcall NativeLockCharacter(Character *result)
{
  gameswf::as_value **v1; // r4
  _DWORD *v2; // r7
  int v3; // r6
  int v4; // r0
  Character *v5; // r6

  v1 = (gameswf::as_value **)result;
  if ( *((_DWORD *)result + 4) == 1 )
  {
    v2 = *((_DWORD **)result + 3);
    v3 = 12 * *((_DWORD *)result + 5);
    if ( *(_BYTE *)(*v2 + v3 + 1) == 2 )
    {
      v4 = gameswf::as_value::to_int((gameswf::as_value *)(*v2 + v3));
      result = NativeGetPlayerChar(v4, 0);
      v5 = result;
      if ( result )
      {
        v2Controller::Cmd_Stop(*((_DWORD *)result + 222));
        *(_BYTE *)(*((_DWORD *)v5 + 222) + 8) = 1;
        NativeSetLockZoom(1);
        return (Character *)gameswf::as_value::set_bool(*v1, 0);
      }
    }
  }
  return result;
}


// ===== 43eb7c NativeStatsAssignPoint(gameswf::fn_call const&) =====
Character *__fastcall NativeStatsAssignPoint(Character *result)
{
  Character *v1; // r4
  _DWORD *v2; // r7
  int v3; // r6
  int v4; // r6
  int v5; // r0
  gameswf::as_value *v6; // r4

  v1 = result;
  if ( *((_DWORD *)result + 4) == 2 )
  {
    v2 = *((_DWORD **)result + 3);
    v3 = *((_DWORD *)result + 5);
    if ( *(_BYTE *)(*v2 + 12 * v3 + 1) == 2 )
    {
      result = (Character *)gameswf::as_value::is_number((gameswf::as_value *)(*v2 + 12 * (v3 - 1)));
      if ( result )
      {
        v4 = gameswf::as_value::to_int((gameswf::as_value *)(**((_DWORD **)v1 + 3) + 12 * *((_DWORD *)v1 + 5)));
        v5 = gameswf::as_value::to_int((gameswf::as_value *)(**((_DWORD **)v1 + 3) + 12 * (*((_DWORD *)v1 + 5) - 1)));
        result = (Character *)NativeGetPlayerChar(v5, 0);
        if ( result )
        {
          switch ( v4 )
          {
            case 0:
              Character::IncStatStr(result);
              break;
            case 1:
              Character::IncStatDex(result);
              break;
            case 2:
              Character::IncStatEnd(result);
              break;
            case 3:
              Character::IncStatNrg(result);
              break;
            default:
              break;
          }
          v6 = *(gameswf::as_value **)v1;
          result = (Character *)gameswf::as_value::drop_refs(v6);
          *((_BYTE *)v6 + 1) = 0;
        }
      }
    }
  }
  return result;
}


// ===== 43ec98 NativeSkillsGetSkillPointsLeft(gameswf::fn_call const&) =====
Character *__fastcall NativeSkillsGetSkillPointsLeft(Character *result)
{
  gameswf::as_value **v1; // r4
  _DWORD *v2; // r6
  int v3; // r5
  int v4; // r0
  double Int; // r0

  v1 = (gameswf::as_value **)result;
  if ( *((_DWORD *)result + 4) == 1 )
  {
    v2 = *((_DWORD **)result + 3);
    v3 = 12 * *((_DWORD *)result + 5);
    if ( *(_BYTE *)(*v2 + v3 + 1) == 2 )
    {
      v4 = gameswf::as_value::to_int((gameswf::as_value *)(*v2 + v3));
      result = NativeGetPlayerChar(v4, 0);
      if ( result )
      {
        Int = (double)CharProperties::PROPS_GetInt((Character *)((char *)result + 1376), 157, 0);
        return (Character *)gameswf::as_value::set_double(*v1, Int);
      }
    }
  }
  return result;
}


// ===== 43ed58 NativeHUDGetIsFaeryUnlocked(gameswf::fn_call const&) =====
Character *__fastcall NativeHUDGetIsFaeryUnlocked(Character *result)
{
  Character *v1; // r4
  _DWORD *v2; // r7
  int v3; // r6
  unsigned int v4; // r6
  int v5; // r0
  char IsFaerieUnlocked; // r0

  v1 = result;
  if ( *((_DWORD *)result + 4) == 2 )
  {
    v2 = *((_DWORD **)result + 3);
    v3 = *((_DWORD *)result + 5);
    if ( *(_BYTE *)(*v2 + 12 * v3 + 1) == 2 )
    {
      result = (Character *)gameswf::as_value::is_number((gameswf::as_value *)(*v2 + 12 * (v3 - 1)));
      if ( result )
      {
        v4 = gameswf::as_value::to_int((gameswf::as_value *)(**((_DWORD **)v1 + 3) + 12 * *((_DWORD *)v1 + 5)));
        v5 = gameswf::as_value::to_int((gameswf::as_value *)(**((_DWORD **)v1 + 3) + 12 * (*((_DWORD *)v1 + 5) - 1)));
        result = (Character *)NativeGetPlayerChar(v5, 0);
        if ( result )
        {
          IsFaerieUnlocked = Character::SG_IsFaerieUnlocked(result, v4, -1);
          return (Character *)gameswf::as_value::set_bool(*(gameswf::as_value **)v1, IsFaerieUnlocked);
        }
      }
    }
  }
  return result;
}


// ===== 43ee40 NativeHUDSetActiveFaery(gameswf::fn_call const&) =====
Character *__fastcall NativeHUDSetActiveFaery(Character *result)
{
  gameswf::as_value **v1; // r5
  _DWORD *v2; // r7
  int v3; // r8
  unsigned int v4; // r7
  int v5; // r0
  Level *CurrentLevel; // r0
  gameswf::as_value *v7; // r4

  v1 = (gameswf::as_value **)result;
  if ( *((_DWORD *)result + 4) == 2 )
  {
    v2 = *((_DWORD **)result + 3);
    v3 = *((_DWORD *)result + 5);
    if ( *(_BYTE *)(*v2 + 12 * v3 + 1) == 2 )
    {
      result = (Character *)gameswf::as_value::is_number((gameswf::as_value *)(*v2 + 12 * (v3 - 1)));
      if ( result )
      {
        v4 = gameswf::as_value::to_int((gameswf::as_value *)(*(_DWORD *)v1[3] + 12 * (_DWORD)v1[5]));
        v5 = gameswf::as_value::to_int((gameswf::as_value *)(*(_DWORD *)v1[3] + 12 * ((_DWORD)v1[5] - 1)));
        result = (Character *)NativeGetPlayerChar(v5, 0);
        if ( result )
        {
          Character::ChangeFaery(result, v4);
          if ( Application::GetCurrentLevel((Application *)&Singleton<Application>::s_inst) )
          {
            CurrentLevel = (Level *)Application::GetCurrentLevel((Application *)&Singleton<Application>::s_inst);
            Level::PlaceFaeryAndFollowers(CurrentLevel, nullptr);
          }
          v7 = *v1;
          result = (Character *)gameswf::as_value::drop_refs(*v1);
          *((_BYTE *)v7 + 1) = 0;
        }
      }
    }
  }
  return result;
}


// ===== 43ef64 NativeInvUnequipItem(gameswf::fn_call const&) =====
_DWORD *__fastcall NativeInvUnequipItem(_DWORD *result)
{
  _DWORD *v1; // r4
  _DWORD *v2; // r7
  int v3; // r6
  int v4; // r6
  int v5; // r0

  v1 = result;
  if ( result[4] == 2 )
  {
    v2 = (_DWORD *)result[3];
    v3 = result[5];
    if ( *(_BYTE *)(*v2 + 12 * v3 + 1) == 2 )
    {
      result = (_DWORD *)gameswf::as_value::is_number((gameswf::as_value *)(*v2 + 12 * (v3 - 1)));
      if ( result )
      {
        v4 = gameswf::as_value::to_int((gameswf::as_value *)(*(_DWORD *)v1[3] + 12 * v1[5]));
        v5 = gameswf::as_value::to_int((gameswf::as_value *)(*(_DWORD *)v1[3] + 12 * (v1[5] - 1)));
        result = (_DWORD *)NativeGetPlayerChar(v5, 0);
        if ( result )
          return (_DWORD *)(*(int (__fastcall **)(_DWORD *, int))(*result + 324))(result, v4);
      }
    }
  }
  return result;
}


// ===== 43f044 NativeInvGetHasOffHandWeapon(gameswf::fn_call const&) =====
gameswf::as_value **__fastcall NativeInvGetHasOffHandWeapon(gameswf::as_value **result)
{
  gameswf::as_value **v1; // r4
  gameswf::as_value *v2; // r6
  int v3; // r5
  int v4; // r0
  Character *PlayerChar; // r0

  v1 = result;
  if ( result[4] == (gameswf::as_value *)((char *)&dword_0 + 1) )
  {
    v2 = result[3];
    v3 = 12 * (_DWORD)result[5];
    if ( *(_BYTE *)(*(_DWORD *)v2 + v3 + 1) == 2 )
    {
      v4 = gameswf::as_value::to_int((gameswf::as_value *)(*(_DWORD *)v2 + v3));
      PlayerChar = NativeGetPlayerChar(v4, 0);
      if ( PlayerChar )
        LOBYTE(PlayerChar) = (unsigned __int8)ItemInventory::HasOffHandWeapon((Character *)((char *)PlayerChar + 892));
      return (gameswf::as_value **)gameswf::as_value::set_bool(*v1, (bool)PlayerChar);
    }
  }
  return result;
}


// ===== 43f0f0 NativeInvGetHasTwoHandedWeapon(gameswf::fn_call const&) =====
gameswf::as_value **__fastcall NativeInvGetHasTwoHandedWeapon(gameswf::as_value **result)
{
  gameswf::as_value **v1; // r4
  gameswf::as_value *v2; // r6
  int v3; // r5
  int v4; // r0
  Character *PlayerChar; // r0

  v1 = result;
  if ( result[4] == (gameswf::as_value *)((char *)&dword_0 + 1) )
  {
    v2 = result[3];
    v3 = 12 * (_DWORD)result[5];
    if ( *(_BYTE *)(*(_DWORD *)v2 + v3 + 1) == 2 )
    {
      v4 = gameswf::as_value::to_int((gameswf::as_value *)(*(_DWORD *)v2 + v3));
      PlayerChar = NativeGetPlayerChar(v4, 0);
      if ( PlayerChar )
        LOBYTE(PlayerChar) = (unsigned __int8)ItemInventory::HasTwoHander((Character *)((char *)PlayerChar + 892), 0);
      return (gameswf::as_value **)gameswf::as_value::set_bool(*v1, (bool)PlayerChar);
    }
  }
  return result;
}


// ===== 43f1a0 std::vector<int,std::allocator<int>>::~vector() =====
int __fastcall std::vector<int>::~vector(int a1)
{
  void *v2; // r0
  size_t v3; // r1

  v2 = *(void **)a1;
  if ( !v2 )
    return a1;
  v3 = (*(_DWORD *)(a1 + 8) - (_DWORD)v2) & 0xFFFFFFFC;
  if ( v3 <= 0x80 )
  {
    __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v2, v3);
    return a1;
  }
  CustomFree(v2);
  return a1;
}


// ===== 43f1e0 std::vector<ItemInventory::Item,std::allocator<ItemInventory::Item>>::~vector() =====
int __fastcall std::vector<ItemInventory::Item>::~vector(int a1)
{
  void *v2; // r0
  size_t v3; // r1

  v2 = *(void **)a1;
  if ( !v2 )
    return a1;
  v3 = 4 * ((*(_DWORD *)(a1 + 8) - (int)v2) >> 2);
  if ( v3 <= 0x80 )
  {
    __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v2, v3);
    return a1;
  }
  CustomFree(v2);
  return a1;
}


// ===== 43f23c NativeInvTransmuteItem(gameswf::fn_call const&) =====
gameswf::as_value **__fastcall NativeInvTransmuteItem(gameswf::as_value **result)
{
  gameswf::as_value **v1; // r4
  gameswf::as_value *v2; // r7
  gameswf::as_value *v3; // r6
  int v4; // r3
  int v5; // r2
  int v6; // r3
  unsigned int v7; // r6
  int v8; // r0
  Character *PlayerChar; // r0
  Character *v10; // r5
  gameswf::as_value *v11; // r4
  _DWORD v12[8]; // [sp+4h] [bp-20h] BYREF

  v1 = result;
  if ( result[4] == (gameswf::as_value *)((char *)&dword_0 + 2) )
  {
    v2 = result[3];
    v3 = result[5];
    v4 = *(_DWORD *)v2 + 12 * (_DWORD)v3;
    if ( *(_BYTE *)(v4 + 1) == 2 )
    {
      v5 = *(_DWORD *)(v4 + 8);
      v6 = *(_DWORD *)(v4 + 4);
      v12[6] = v5;
      v12[5] = v6;
      v12[3] = v6;
      v12[4] = v5;
      result = (gameswf::as_value **)gameswf::as_value::is_number((gameswf::as_value *)(*(_DWORD *)v2
                                                                                      + 12 * ((_DWORD)v3 - 1)));
      if ( result )
      {
        v7 = gameswf::as_value::to_int((gameswf::as_value *)(*(_DWORD *)v1[3] + 12 * (_DWORD)v1[5]));
        v8 = gameswf::as_value::to_int((gameswf::as_value *)(*(_DWORD *)v1[3] + 12 * ((_DWORD)v1[5] - 1)));
        memset(v12, 0, 12);
        PlayerChar = (Character *)NativeGetPlayerChar(v8, 0);
        v10 = PlayerChar;
        if ( PlayerChar )
        {
          Character::INV_TransmuteItem(PlayerChar, v7, 0);
          Character::INV_UpdateSkin(v10);
          v11 = *v1;
          gameswf::as_value::drop_refs(v11);
          *((_BYTE *)v11 + 1) = 0;
        }
        return (gameswf::as_value **)std::vector<ItemInventory::Item>::~vector(v12);
      }
    }
  }
  return result;
}


// ===== 43f350 std::vector<int,std::allocator<int>>::_M_insert_overflow(int *,int const&,std::__true_type const&,uint,bool) [clone] =====
void __fastcall std::vector<int>::_M_insert_overflow(int a1, int a2, _DWORD *a3)
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
  v8 = (char *)std::allocator<int>::_M_allocate(a1 + 8, v6, &v16);
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


// ===== 43f414 std::vector<VarArgs::Variant,std::allocator<VarArgs::Variant>>::_M_insert_overflow_aux(VarArgs::Variant*,VarArgs::Variant const&,std::__false_type const&,uint,bool) [clone] =====
void __fastcall std::vector<VarArgs::Variant>::_M_insert_overflow_aux(void **a1, int a2, _DWORD *a3)
{
  unsigned int v6; // r0
  unsigned int v7; // r1
  _DWORD *v8; // r0
  char *v9; // r12
  _DWORD *v10; // r7
  int v11; // r5
  _DWORD *v12; // r3
  int v13; // r0
  int v14; // r3
  _DWORD *v15; // r2
  int v16; // r1
  _DWORD *v17; // r5
  _BYTE *v18; // r0
  _BYTE *v19; // r3
  size_t v20; // r1
  size_t v21; // r3
  size_t v22; // [sp+4h] [bp-4h] BYREF

  v6 = -1431655765 * (((_BYTE *)a1[1] - (_BYTE *)*a1) >> 2);
  if ( v6 )
    v7 = 2 * v6;
  else
    v7 = 1;
  if ( v7 > 0x15555555 || v6 > v7 )
    v7 = 357913941;
  v22 = v7;
  v8 = std::allocator<VarArgs::Variant>::_M_allocate((int)(a1 + 2), v7, &v22);
  v9 = (char *)*a1;
  v10 = v8;
  v11 = -1431655765 * ((a2 - (int)*a1) >> 2);
  if ( v11 > 0 )
  {
    v13 = v11;
    v14 = 0;
    do
    {
      v10[v14] = *(_DWORD *)&v9[v14 * 4];
      v10[v14 + 1] = *(_DWORD *)&v9[v14 * 4 + 4];
      v15 = &v10[v14 + 2];
      v16 = *(_DWORD *)&v9[v14 * 4 + 8];
      --v13;
      v14 += 3;
      *v15 = v16;
    }
    while ( v13 );
    v12 = &v10[3 * v11];
  }
  else
  {
    v12 = v8;
  }
  v17 = v12 + 3;
  *v12 = *a3;
  v12[1] = a3[1];
  v12[2] = a3[2];
  v18 = *a1;
  v19 = a1[1];
  if ( v19 != *a1 )
    v19 += -12 * ((715827883 * ((unsigned int)(v19 - 12 - v18) >> 2)) & 0x3FFFFFFF) - 12;
  if ( v19 )
  {
    v20 = 4 * (((_BYTE *)a1[2] - v19) >> 2);
    if ( v20 > 0x80 )
      CustomFree(v18);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v18, v20);
  }
  v21 = v22;
  *a1 = v10;
  a1[1] = v17;
  a1[2] = &v10[3 * v21];
}


// ===== 43f5c8 NativeGetSaveIDsListSize(gameswf::fn_call const&) =====
std::priv::_String_base<char,std::allocator<char> > **__fastcall NativeGetSaveIDsListSize(gameswf::as_value **a1)
{
  std::priv::_String_base<char,std::allocator<char> > *v3[4]; // [sp+4h] [bp-10h] BYREF

  PlayerSavegame::SG_GetSavegameList((PlayerSavegame *)v3, 0);
  gameswf::as_value::set_double(*a1, (double)(-1431655765 * (((char *)v3[1] - (char *)v3[0]) >> 3)));
  return std::vector<std::string>::~vector(v3);
}


// ===== 43f630 NativeCreateSaveSlot(gameswf::fn_call const&) =====
void __fastcall NativeCreateSaveSlot(const gameswf::fn_call *a1)
{
  char *v2; // r10
  char *v3; // r0
  const char *v4; // r9
  int v5; // r7
  int v6; // r8
  int v7; // r11
  PlayerSavegame *v8; // r0
  signed int NextFreeSlot; // r9
  char *v10; // r1
  std::priv::_String_base<char,std::allocator<char> > *v11; // r12
  std::priv::_String_base<char,std::allocator<char> > *v12; // r2
  std::priv::_String_base<char,std::allocator<char> > *v13; // r3
  std::priv::_String_base<char,std::allocator<char> > v14; // [sp+4h] [bp-1A0h] BYREF
  _DWORD v15[9]; // [sp+1Ch] [bp-188h] BYREF
  int v16; // [sp+40h] [bp-164h]
  char v17; // [sp+198h] [bp-Ch]

  if ( *((_DWORD *)a1 + 4) == 2 )
  {
    v2 = (char *)gameswf::as_value::to_tu_string((gameswf::as_value *)(**((_DWORD **)a1 + 3) + 12 * *((_DWORD *)a1 + 5)));
    v3 = (char *)gameswf::as_value::to_tu_string((gameswf::as_value *)(**((_DWORD **)a1 + 3)
                                                                     + 12 * (*((_DWORD *)a1 + 5) - 1)));
    if ( *v3 == -1 )
      v4 = *((const char **)v3 + 3);
    else
      v4 = v3 + 1;
    v5 = Arrays::CharacterTable::size;
    if ( Arrays::CharacterTable::size )
    {
      v6 = 0;
      v7 = Arrays::CharacterTable::m_memberNames;
      while ( LC_API_STRCMP_0(v4, *(const char **)(v7 + 4 * v6)) )
      {
        if ( ++v6 == v5 )
          goto LABEL_20;
      }
    }
    else
    {
LABEL_20:
      v6 = -1;
    }
    v8 = (PlayerSavegame *)IsPlayableClassID(v6);
    if ( v8 )
    {
      NextFreeSlot = PlayerSavegame::SG_GetNextFreeSlot(v8);
      PlayerSavegame::PlayerSavegame((PlayerSavegame *)&v14, NextFreeSlot, 1, 0);
      if ( *v2 == -1 )
        v10 = *((char **)v2 + 3);
      else
        v10 = v2 + 1;
      std::string::operator=((int)v15, v10);
      v15[6] = 1;
      v15[7] = v6;
      if ( v16 < 0 )
        v16 = 0;
      PlayerSavegame::m_difficultyLevel = 0;
      PlayerSavegame::SG_GenerateSeeds((PlayerSavegame *)&v14);
      PlayerSavegame::SG_SetSaveDate((PlayerSavegame *)&v14);
      v17 = 1;
      if ( Arrays::GameDifficulties::size )
      {
        v11 = (std::priv::_String_base<char,std::allocator<char> > *)((char *)&v14 + Arrays::GameDifficulties::size);
        v12 = &v14;
        v13 = &v14;
        do
        {
          *(_DWORD *)&v13[3]._M_buffers._M_static_buf[8] = 41;
          v13[2]._M_finish = nullptr;
          v12[3]._M_buffers._M_static_buf[4] = 1;
          v12 = (std::priv::_String_base<char,std::allocator<char> > *)((char *)v12 + 1);
          v13 = (std::priv::_String_base<char,std::allocator<char> > *)((char *)v13 + 4);
        }
        while ( v12 != v11 );
      }
      PlayerSavegame::SG_Save((PlayerSavegame *)&v14);
      gameswf::as_value::set_double(*(gameswf::as_value **)a1, (double)NextFreeSlot);
      PlayerSavegame::~PlayerSavegame(&v14);
    }
  }
}


// ===== 43f828 DialogMsg::operator=(DialogMsg const&) =====
int __fastcall DialogMsg::operator=(int a1, int a2)
{
  if ( a1 != a2 )
    std::string::_M_assign((std::string *const)a1, *(const char **)(a2 + 20), *(const char **)(a2 + 16));
  if ( a1 + 24 != a2 + 24 )
    std::string::_M_assign((std::string *const)(a1 + 24), *(const char **)(a2 + 44), *(const char **)(a2 + 40));
  *(_DWORD *)(a1 + 48) = *(_DWORD *)(a2 + 48);
  if ( a1 + 52 != a2 + 52 )
    std::string::_M_assign((std::string *const)(a1 + 52), *(const char **)(a2 + 72), *(const char **)(a2 + 68));
  return a1;
}


// ===== 43f890 MenuMessageManager<DialogMsg,1>::GetNextEnqueuedMessage(DialogMsg&,int) [clone] =====
int MenuMessageManager<DialogMsg,1>::GetNextEnqueuedMessage()
{
  if ( dword_99FB9C == dword_99FB8C )
    return 0;
  DialogMsg::operator=();
  return 1;
}


// ===== 43f8d0 tRoomInfo::operator=(tRoomInfo const&) =====
int __fastcall tRoomInfo::operator=(int a1, int a2)
{
  std::string *v3; // r0

  *(_QWORD *)a1 = *(_QWORD *)a2;
  v3 = (std::string *)(a1 + 8);
  if ( v3 != (std::string *)(a2 + 8) )
    std::string::_M_assign(v3, *(const char **)(a2 + 28), *(const char **)(a2 + 24));
  *(_DWORD *)(a1 + 32) = *(_DWORD *)(a2 + 32);
  CRoomAttributes::operator=(a1 + 40, a2 + 40);
  *(_DWORD *)(a1 + 960) = *(_DWORD *)(a2 + 960);
  return a1;
}


// ===== 43f920 std::__destroy_range<std::reverse_iterator<tRoomInfo *>,tRoomInfo>(std::reverse_iterator<tRoomInfo *>,std::reverse_iterator<tRoomInfo *>,tRoomInfo *) [clone] =====
void __fastcall std::__destroy_range<std::reverse_iterator<tRoomInfo *>,tRoomInfo>(int *a1, int *a2)
{
  int v2; // r5
  int i; // r4

  v2 = *a2;
  for ( i = *a1;
        v2 != i;
        std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block((std::priv::_String_base<char,std::allocator<char> > *const)(i + 8)) )
  {
    i -= 968;
    CRoomAttributes::~CRoomAttributes((CRoomAttributes *)(i + 40));
  }
}


// ===== 43f954 std::vector<tRoomInfo,std::allocator<tRoomInfo>>::~vector() =====
int *__fastcall std::vector<tRoomInfo>::~vector(int *a1)
{
  int v1; // r3
  void *v3; // r0
  size_t v4; // r1
  int v6; // [sp+0h] [bp-8h] BYREF
  int v7; // [sp+4h] [bp-4h] BYREF

  v1 = *a1;
  v6 = a1[1];
  v7 = v1;
  std::__destroy_range<std::reverse_iterator<tRoomInfo *>,tRoomInfo>(&v6, &v7);
  v3 = (void *)*a1;
  if ( *a1 )
  {
    v4 = 8 * ((a1[2] - (int)v3) >> 3);
    if ( v4 > 0x80 )
      CustomFree(v3);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v3, v4);
  }
  return a1;
}


// ===== 43f9c4 OnlineGameState::~OnlineGameState() =====
void __fastcall OnlineGameState::~OnlineGameState(OnlineGameState *this)
{
  int v3; // r2
  char *v4; // r4
  _DWORD *i; // r0
  int v6; // r3
  bool v7; // zf

  *(_DWORD *)this = off_968348;
  std::vector<tRoomInfo>::~vector((int *)this + 20);
  *(_DWORD *)this = off_968358;
  v4 = (char *)this + 4;
  for ( i = *((_DWORD **)v4 + 1); i; i = *((_DWORD **)v4 + 1) )
  {
    v6 = i[2];
    v7 = v6 == 0;
    if ( v6 )
      v3 = i[3];
    else
      v6 = i[3];
    if ( v7 )
      *((_DWORD *)v4 + 2) = v6;
    else
      *(_DWORD *)(v6 + 12) = v3;
    *(_DWORD *)i[3] = i[2];
    free(i);
  }
  *((_BYTE *)this + 4) = 0;
}


// ===== 43fa58 NativeGetLoadingProgress(gameswf::fn_call const&) =====
int __fastcall NativeGetLoadingProgress(gameswf::as_value **a1)
{
  int CurrentLevel; // r0
  int v3; // r0
  int v5; // r6
  _BYTE v6[92]; // [sp+4h] [bp-5Ch] BYREF

  CurrentLevel = Application::GetCurrentLevel((Application *)&Singleton<Application>::s_inst);
  if ( CurrentLevel )
  {
    v3 = *(_DWORD *)(CurrentLevel + 48);
  }
  else
  {
    OnlineGameState::OnlineGameState((OnlineGameState *)v6);
    v5 = *(_DWORD *)(OnlineSingleton<OnlineGameState>::GetInstance() + 52);
    OnlineGameState::~OnlineGameState((OnlineGameState *)v6);
    if ( v5 == 3 )
      v3 = 0;
    else
      v3 = 100;
  }
  return gameswf::as_value::set_double(*a1, (double)v3);
}


// ===== 43fad8 OnlineGameState::~OnlineGameState() =====
void __fastcall OnlineGameState::~OnlineGameState(OnlineGameState *this)
{
  OnlineGameState::~OnlineGameState(this);
  CustomFree(this);
}


// ===== 43faf4 std::vector<tRoomInfo,std::allocator<tRoomInfo>>::_M_clear(void) =====
void __fastcall std::vector<tRoomInfo>::_M_clear(int *a1)
{
  int v1; // r3
  void *v3; // r0
  size_t v4; // r1
  int v5; // [sp+0h] [bp-8h] BYREF
  int v6; // [sp+4h] [bp-4h] BYREF

  v1 = *a1;
  v5 = a1[1];
  v6 = v1;
  std::__destroy_range<std::reverse_iterator<tRoomInfo *>,tRoomInfo>(&v5, &v6);
  v3 = (void *)*a1;
  if ( *a1 )
  {
    v4 = 8 * ((a1[2] - (int)v3) >> 3);
    if ( v4 > 0x80 )
      CustomFree(v3);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v3, v4);
  }
}


// ===== 43fb60 tRoomInfo::tRoomInfo(tRoomInfo const&) =====
int __fastcall tRoomInfo::tRoomInfo(int a1, int a2)
{
  *(_QWORD *)a1 = *(_QWORD *)a2;
  std::string::string((std::string *)(a1 + 8), (const std::string *)(a2 + 8));
  *(_DWORD *)(a1 + 32) = *(_DWORD *)(a2 + 32);
  CRoomAttributes::CRoomAttributes((CRoomAttributes *)(a1 + 40), (const CRoomAttributes *)(a2 + 40));
  *(_DWORD *)(a1 + 960) = *(_DWORD *)(a2 + 960);
  return a1;
}


// ===== 43fb9c std::vector<tRoomInfo,std::allocator<tRoomInfo>>::_M_allocate_and_copy<tRoomInfo const*>(uint &,tRoomInfo const*,tRoomInfo const*) =====
void *__fastcall std::vector<tRoomInfo>::_M_allocate_and_copy<tRoomInfo const*>(
        int a1,
        unsigned int *a2,
        int a3,
        int a4)
{
  int v5; // r5
  void *v6; // r7
  int v7; // r6

  v5 = 1455319497 * ((a4 - a3) >> 3);
  v6 = std::allocator<tRoomInfo>::_M_allocate(a1 + 8, *a2, a2);
  if ( v5 > 0 )
  {
    v7 = 0;
    do
    {
      tRoomInfo::tRoomInfo((int)v6 + v7, a3 + v7);
      --v5;
      v7 += 968;
    }
    while ( v5 );
  }
  return v6;
}


// ===== 43fbfc std::vector<tRoomInfo,std::allocator<tRoomInfo>>::operator=(std::vector<tRoomInfo,std::allocator<tRoomInfo>> const&) =====
int *__fastcall std::vector<tRoomInfo>::operator=(int *a1, int *a2)
{
  int v4; // r3
  int v5; // r8
  char *v6; // r6
  int v7; // r5
  int v8; // r11
  int v9; // r7
  int v11; // r10
  int v12; // r7
  int v13; // r8
  int v14; // r10
  int v15; // r7
  int v16; // r6
  unsigned int v17; // r3
  char *v18; // [sp+4h] [bp-10h]
  int v19; // [sp+Ch] [bp-8h] BYREF

  if ( a2 != a1 )
  {
    v4 = a2[1];
    v5 = *a2;
    v6 = (char *)*a1;
    v7 = 1455319497 * ((v4 - *a2) >> 3);
    v8 = v7;
    if ( v7 > (unsigned int)(1455319497 * ((a1[2] - *a1) >> 3)) )
    {
      v19 = 1455319497 * ((v4 - *a2) >> 3);
      v6 = (char *)std::vector<tRoomInfo>::_M_allocate_and_copy<tRoomInfo const*>((int)a1, (unsigned int *)&v19, v5, v4);
      std::vector<tRoomInfo>::_M_clear(a1);
      v17 = v19;
      *a1 = (int)v6;
      a1[2] = (int)&v6[968 * v17];
    }
    else
    {
      v18 = (char *)a1[1];
      if ( v7 > (unsigned int)(1455319497 * ((v18 - v6) >> 3)) )
      {
        v11 = v5 + 8 * ((a1[1] - (int)v6) >> 3);
        v12 = 1455319497 * ((8 * ((a1[1] - (int)v6) >> 3)) >> 3);
        if ( v12 > 0 )
        {
          v14 = 0;
          do
          {
            tRoomInfo::operator=((int)&v6[v14], v5 + v14);
            --v12;
            v14 += 968;
          }
          while ( v12 );
          v6 = (char *)*a1;
          v13 = a1[1];
          v4 = a2[1];
          v11 = *a2 + 8 * ((v13 - *a1) >> 3);
        }
        else
        {
          v13 = a1[1];
        }
        v15 = 1455319497 * ((v4 - v11) >> 3);
        if ( v15 <= 0 )
          goto LABEL_11;
        v16 = 0;
        do
        {
          tRoomInfo::tRoomInfo(v13 + v16, v11 + v16);
          --v15;
          v16 += 968;
        }
        while ( v15 );
      }
      else
      {
        if ( v7 > 0 )
        {
          v9 = 0;
          do
          {
            tRoomInfo::operator=((int)&v6[v9], v5 + v9);
            --v8;
            v9 += 968;
          }
          while ( v8 );
          v6 += 968 * v7;
          v18 = (char *)a1[1];
        }
        for ( ; v6 != v18; v6 += 968 )
        {
          CRoomAttributes::~CRoomAttributes((CRoomAttributes *)(v6 + 40));
          std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block((std::priv::_String_base<char,std::allocator<char> > *const)(v6 + 8));
        }
      }
      v6 = (char *)*a1;
    }
LABEL_11:
    a1[1] = (int)&v6[968 * v7];
  }
  return a1;
}


// ===== 43fdbc NativeConnectToServer(gameswf::fn_call const&) =====
int *__fastcall NativeConnectToServer(int *result)
{
  gameswf::as_value **v1; // r4
  double v2; // r0
  int v3; // r6
  CMatching *Instance; // r0
  int v5; // r0
  int v6; // r0
  int v7[3]; // [sp+0h] [bp-1Ch] BYREF
  int v8; // [sp+Ch] [bp-10h] BYREF
  int v9; // [sp+10h] [bp-Ch]
  int v10; // [sp+14h] [bp-8h]

  v1 = (gameswf::as_value **)result;
  if ( result[4] == 1 )
  {
    LODWORD(v2) = gameswf::as_value::to_number((gameswf::as_value *)(*(_DWORD *)result[3] + 12 * result[5]));
    v10 = 0;
    v8 = 0;
    v9 = 0;
    v3 = (int)v2;
    Instance = (CMatching *)OnlineSingleton<OnlineGameState>::GetInstance();
    if ( *((_DWORD *)Instance + 13) == 2 )
    {
      v6 = CMatching::Get(Instance);
      (*(void (__fastcall **)(int *, int))(*(_DWORD *)v6 + 144))(v7, v6);
      std::vector<tRoomInfo>::operator=(&v8, v7);
      std::vector<tRoomInfo>::~vector(v7);
    }
    else
    {
      v5 = OnlineSingleton<OnlineGameState>::GetInstance();
      std::vector<tRoomInfo>::operator=(&v8, (int *)(v5 + 80));
    }
    if ( v3 < (unsigned int)(1455319497 * ((v9 - v8) >> 3)) && v3 >= 0 )
    {
      *(_DWORD *)(OnlineSingleton<OnlineGameState>::GetInstance() + 48) = v3;
      *(_DWORD *)(OnlineSingleton<OnlineGameState>::GetInstance() + 20) = 103;
    }
    gameswf::as_value::set_bool(*v1, 1);
    return std::vector<tRoomInfo>::~vector(&v8);
  }
  return result;
}


// ===== 43fec4 NativeGetNextStatusMessage(gameswf::fn_call const&) =====
void __fastcall NativeGetNextStatusMessage(const gameswf::fn_call *a1)
{
  int v1; // r7
  _DWORD *v3; // r8
  int v4; // r10
  int v5; // r8
  gameswf::as_value *v6; // r0
  std::string v7; // [sp+18h] [bp-38h] BYREF
  int v8; // [sp+30h] [bp-20h]
  std::priv::_String_base<char,std::allocator<char> > v9; // [sp+34h] [bp-1Ch] BYREF

  v1 = *((_DWORD *)a1 + 4);
  if ( (unsigned int)(v1 - 1) <= 1 )
  {
    v3 = *((_DWORD **)a1 + 3);
    v4 = *((_DWORD *)a1 + 5);
    if ( *(_BYTE *)(*v3 + 12 * v4 + 1) == 2
      && (v1 != 2 || *(_BYTE *)(*v3 + 12 * (v4 - 1) + 1) == 1 || !*(_BYTE *)(*v3 + 12 * (v4 - 1) + 1)) )
    {
      std::string::string((int)&v9, "not yet supported with no hud code");
      PlayerManager::GetLocalPlayer((PlayerManager *)dword_99F76C, 0, 0);
      if ( *((_DWORD *)a1 + 4) == 2 )
        gameswf::as_value::to_bool((gameswf::as_value *)(**((_DWORD **)a1 + 3) + 12 * (*((_DWORD *)a1 + 5) - 1)));
      v7._M_finish = (char *)&v7;
      v7._M_start_of_storage._M_data = (char *)&v7;
      std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block((int)&v7, 0x10u);
      *v7._M_finish = 0;
      v5 = dword_99FA90;
      if ( dword_99FAA0 != dword_99FA90 )
      {
        if ( (std::string *)dword_99FA90 != &v7 )
          std::string::_M_assign(&v7, *(const char **)(dword_99FA90 + 20), *(const char **)(dword_99FA90 + 16));
        v6 = *(gameswf::as_value **)a1;
        v8 = *(_DWORD *)(v5 + 24);
        gameswf::as_value::set_string(v6, v7._M_start_of_storage._M_data);
      }
      std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v7);
      std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v9);
    }
  }
}


// ===== 440080 GetQuestFunctor(char const*) =====
_DWORD (*__fastcall GetQuestFunctor(const char *a1))(const Quest *)
{
  int Switch; // r10
  int v4; // r6
  std::priv::_String_base<char,std::allocator<char> > v5; // [sp+Ch] [bp-38h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v6; // [sp+24h] [bp-20h] BYREF

  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string((int)&v6, "DisplayAllQuestInLog");
  Switch = DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, (const std::string *)&v6);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v6);
  if ( Switch )
    return IsNonDebugQuest;
  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string((int)&v5, "DisplayAllDebugOnlyQuestInLog");
  v4 = DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, (const std::string *)&v5);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v5);
  if ( v4 )
    return IsDebugQuest;
  if ( !LC_API_STRCMP_0(a1, "Active") || LC_API_STRCMP_0(a1, "Closed") )
    return IsNonDebugQuestActiveButNotClosedQuest;
  return IsNonDebugQuestClosedQuest;
}


// ===== 4401d4 NativeGetQuestCount(gameswf::fn_call const&) =====
int __fastcall NativeGetQuestCount(const gameswf::fn_call *a1)
{
  double v2; // r6
  int v3; // r1
  char *v4; // r5
  Character *PlayerChar; // r6
  int NumQuests; // r0
  const char *v7; // r0
  bool (*QuestFunctor)(const Quest *); // r0

  LODWORD(v2) = gameswf::as_value::to_number((gameswf::as_value *)(**((_DWORD **)a1 + 3) + 12 * *((_DWORD *)a1 + 5)));
  HIDWORD(v2) = v3;
  v4 = (char *)gameswf::as_value::to_tu_string((gameswf::as_value *)(**((_DWORD **)a1 + 3)
                                                                   + 12 * (*((_DWORD *)a1 + 5) - 1)));
  PlayerChar = (Character *)NativeGetPlayerChar((int)v2, 0);
  if ( PlayerChar )
  {
    if ( *v4 == -1 )
      v7 = *((const char **)v4 + 3);
    else
      v7 = v4 + 1;
    QuestFunctor = (bool (*)(const Quest *))GetQuestFunctor(v7);
    NumQuests = Character::SG_GetNumQuests(PlayerChar, QuestFunctor, -1);
  }
  else
  {
    NumQuests = -1;
  }
  return gameswf::as_value::set_double(*(gameswf::as_value **)a1, (double)NumQuests);
}


// ===== 440278 NativeGetNextAchievementMessage(gameswf::fn_call const&) =====
void __fastcall NativeGetNextAchievementMessage(const gameswf::fn_call *a1)
{
  int v2; // r3
  int v3; // r7
  int v4; // r10
  bool v5; // r1
  void (__fastcall *v6)(int, void **, _BYTE *); // r10
  void (__fastcall *v7)(int, void **, _BYTE *); // r10
  void (__fastcall *v8)(int, void **, _BYTE *); // r10
  void (__fastcall *v9)(int, void **, _BYTE *); // r10
  void (__fastcall *v10)(int, void **, _BYTE *); // r10
  _BYTE v11[12]; // [sp+18h] [bp-11Ch] BYREF
  _BYTE v12[12]; // [sp+24h] [bp-110h] BYREF
  _BYTE v13[12]; // [sp+30h] [bp-104h] BYREF
  _BYTE v14[12]; // [sp+3Ch] [bp-F8h] BYREF
  _BYTE v15[12]; // [sp+48h] [bp-ECh] BYREF
  std::string v16; // [sp+5Ch] [bp-D8h] BYREF
  std::string v17; // [sp+74h] [bp-C0h] BYREF
  int v18; // [sp+8Ch] [bp-A8h]
  int v19; // [sp+90h] [bp-A4h]
  int v20; // [sp+94h] [bp-A0h]
  std::priv::_String_base<char,std::allocator<char> > v21; // [sp+98h] [bp-9Ch] BYREF
  std::priv::_String_base<char,std::allocator<char> > v22; // [sp+B0h] [bp-84h] BYREF
  void *v23[5]; // [sp+C8h] [bp-6Ch] BYREF
  void *v24[5]; // [sp+DCh] [bp-58h] BYREF
  void *v25[5]; // [sp+F0h] [bp-44h] BYREF
  void *v26[5]; // [sp+104h] [bp-30h] BYREF
  void *v27[5]; // [sp+118h] [bp-1Ch] BYREF

  if ( *((_DWORD *)a1 + 4) == 1 )
  {
    v2 = **((_DWORD **)a1 + 3) + 12 * *((_DWORD *)a1 + 5);
    if ( *(_BYTE *)(v2 + 1) == 5 )
    {
      v3 = gameswf::cast_to<gameswf::as_object>(*(_DWORD *)(v2 + 4));
      std::string::string((std::string *)&v22, "");
      std::string::string((std::string *)&v21, "");
      AchievementMsg::AchievementMsg(
        (AchievementMsg *)&v16,
        (const std::string *)&v22,
        (const std::string *)&v21,
        0,
        0,
        0);
      std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v21);
      std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v22);
      v4 = dword_99FBE4;
      if ( dword_99FBF4 == dword_99FBE4 )
      {
        v5 = 0;
      }
      else
      {
        if ( (std::string *)dword_99FBE4 != &v16 )
          std::string::_M_assign(&v16, *(const char **)(dword_99FBE4 + 20), *(const char **)(dword_99FBE4 + 16));
        if ( &v17 != (std::string *)(v4 + 24) )
          std::string::_M_assign(&v17, *(const char **)(v4 + 44), *(const char **)(v4 + 40));
        v18 = *(_DWORD *)(v4 + 48);
        v19 = *(_DWORD *)(v4 + 52);
        v20 = *(_DWORD *)(v4 + 56);
        v6 = *(void (__fastcall **)(int, void **, _BYTE *))(*(_DWORD *)v3 + 28);
        gameswf::tu_string::tu_string((gameswf::tu_string *)v27, "Name");
        gameswf::as_value::as_value((gameswf::as_value *)v15, v16._M_start_of_storage._M_data);
        v6(v3, v27, v15);
        gameswf::as_value::drop_refs((gameswf::as_value *)v15);
        gameswf::tu_string::~tu_string(v27);
        v7 = *(void (__fastcall **)(int, void **, _BYTE *))(*(_DWORD *)v3 + 28);
        gameswf::tu_string::tu_string((gameswf::tu_string *)v26, "Desc");
        gameswf::as_value::as_value((gameswf::as_value *)v14, v17._M_start_of_storage._M_data);
        v7(v3, v26, v14);
        gameswf::as_value::drop_refs((gameswf::as_value *)v14);
        gameswf::tu_string::~tu_string(v26);
        v8 = *(void (__fastcall **)(int, void **, _BYTE *))(*(_DWORD *)v3 + 28);
        gameswf::tu_string::tu_string((gameswf::tu_string *)v25, "TrophyType");
        gameswf::as_value::as_value((gameswf::as_value *)v13, v18);
        v8(v3, v25, v13);
        gameswf::as_value::drop_refs((gameswf::as_value *)v13);
        gameswf::tu_string::~tu_string(v25);
        v9 = *(void (__fastcall **)(int, void **, _BYTE *))(*(_DWORD *)v3 + 28);
        gameswf::tu_string::tu_string((gameswf::tu_string *)v24, "Grade");
        gameswf::as_value::as_value((gameswf::as_value *)v12, v19);
        v9(v3, v24, v12);
        gameswf::as_value::drop_refs((gameswf::as_value *)v12);
        gameswf::tu_string::~tu_string(v24);
        v10 = *(void (__fastcall **)(int, void **, _BYTE *))(*(_DWORD *)v3 + 28);
        gameswf::tu_string::tu_string((gameswf::tu_string *)v23, "Label");
        gameswf::as_value::as_value((gameswf::as_value *)v11, v20);
        v10(v3, v23, v11);
        gameswf::as_value::drop_refs((gameswf::as_value *)v11);
        gameswf::tu_string::~tu_string(v23);
        v5 = 1;
      }
      gameswf::as_value::set_bool(*(gameswf::as_value **)a1, v5);
      std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v17);
      std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v16);
    }
  }
}


// ===== 44058c NativeMerchantSellItem(gameswf::fn_call const&) =====
int __fastcall NativeMerchantSellItem(const gameswf::fn_call *a1)
{
  MenuManager *Instance; // r0
  int MenuByName; // r0
  const char *v4; // r6
  int v6; // r1
  ItemInstance *v7; // r1
  char *v8; // r9
  int v9; // r1
  double v10; // r10
  Character *v11; // r0
  Character *v12; // r10
  ItemInventory *v13; // r11
  signed int v14; // r9
  int v15; // r1
  bool v16; // r2
  TrophyManager *v17; // r6
  int v18; // r0
  ItemInstance *v19; // [sp+8h] [bp-54h]
  ItemInstance *Item; // [sp+8h] [bp-54h]
  DebugSwitches *v21; // [sp+Ch] [bp-50h]
  float v22; // [sp+Ch] [bp-50h]
  DebugSwitches *v23; // [sp+Ch] [bp-50h]
  double v24; // [sp+10h] [bp-4Ch]
  Character *PlayerChar; // [sp+18h] [bp-44h]
  CharProperties *v26; // [sp+1Ch] [bp-40h]
  _BYTE v27[12]; // [sp+20h] [bp-3Ch] BYREF
  _DWORD v28[3]; // [sp+2Ch] [bp-30h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v29; // [sp+3Ch] [bp-20h] BYREF

  Instance = (MenuManager *)MenuManager::GetInstance(a1);
  MenuByName = MenuManager::GetMenuByName(Instance, "menu_Merchant");
  if ( MenuByName )
  {
    v4 = (const char *)*(unsigned __int8 *)(MenuByName + 196);
    if ( !*(_BYTE *)(MenuByName + 196) )
    {
      *(_BYTE *)(MenuByName + 196) = 1;
      LODWORD(v24) = gameswf::as_value::to_number((gameswf::as_value *)(**((_DWORD **)a1 + 3) + 12 * *((_DWORD *)a1 + 5)));
      HIDWORD(v24) = v6;
      v21 = (DebugSwitches *)gameswf::as_value::to_number((gameswf::as_value *)(**((_DWORD **)a1 + 3)
                                                                              + 12 * (*((_DWORD *)a1 + 5) - 1)));
      v19 = v7;
      v8 = (char *)gameswf::as_value::to_string((gameswf::as_value *)(**((_DWORD **)a1 + 3)
                                                                    + 12 * (*((_DWORD *)a1 + 5) - 2)));
      LODWORD(v10) = gameswf::as_value::to_number((gameswf::as_value *)(**((_DWORD **)a1 + 3)
                                                                      + 12 * (*((_DWORD *)a1 + 5) - 3)));
      HIDWORD(v10) = v9;
      PlayerChar = (Character *)NativeGetPlayerChar(
                                  (int)COERCE_DOUBLE(__PAIR64__((unsigned int)v19, (unsigned int)v21)),
                                  (bool)v4);
      v28[0] = v4;
      v28[1] = v4;
      v28[2] = v4;
      if ( PlayerChar )
      {
        ObjectManager::GetObjectByName((ObjectManager *)v27, (const char *)dword_99F764, v8, (int)v10, v4);
        v11 = (Character *)ObjectHandle::operator Character *(v27);
        v12 = v11;
        if ( v11 )
        {
          if ( Character::IsMerchant(v11) )
          {
            if ( Character::IsMerchant(v12) )
            {
              v13 = (Character *)((char *)PlayerChar + 892);
              v14 = (int)v24;
              if ( (unsigned int)(int)v24 < ItemInventory::GetNumItems((Character *)((char *)PlayerChar + 892))
                && v14 >= 0 )
              {
                v26 = (Character *)((char *)PlayerChar + 1376);
                v22 = (float)*(int *)(Arrays::MerchantTable::members + 20 * Character::GetLoot(v12) + 4) / 100.0;
                Item = (ItemInstance *)ItemInventory::GetItem(v13, v14);
                if ( (int)(float)((float)*((int *)Item + 21) * v22) < 1 )
                  v15 = 1;
                else
                  v15 = (int)(float)((float)*((int *)Item + 21) * v22);
                v23 = (DebugSwitches *)v15;
                ItemInstance::GetItem(Item);
                ItemInventory::AddGold(v13, (int)v23);
                DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
                std::string::string((int)&v29, "isTracingMerchant");
                DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, (const std::string *)&v29);
                std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v29);
                *((_BYTE *)Item + 105) = 1;
                ItemInventory::TransferItemTo(v13, v14, (Character *)((char *)v12 + 892), 1, (bool)v4, 1);
                Character::INV_UpdateSkin(PlayerChar);
                CharProperties::PROPS_AddInt(v26, 220, 1);
                v16 = (char)v4;
                v17 = (TrophyManager *)TrophyManager::s_instance;
                if ( (int)CharProperties::PROPS_GetInt(v26, 220, v16) > 99 )
                {
                  v18 = Arrays::GetMemberIDByString<Arrays::TrophyTable>("sell_100_items");
                  TrophyManager::UnlockTrophy(v17, v18);
                }
              }
            }
          }
        }
      }
      std::vector<ItemInventory::Item>::~vector(v28);
    }
  }
  return gameswf::as_value::set_bool(*(gameswf::as_value **)a1, 0);
}


// ===== 4408d4 NativeMerchantBuyItem(gameswf::fn_call const&) =====
int __fastcall NativeMerchantBuyItem(const gameswf::fn_call *a1)
{
  int v2; // r1
  double v3; // r8
  int v4; // r1
  char *v5; // r10
  int v6; // r1
  int PlayerChar; // r8
  Character *v8; // r0
  Character *v9; // r7
  double v10; // r2
  ItemInventory *v12; // r11
  signed int v13; // r9
  int v14; // r7
  int Item; // r10
  int v16; // r0
  float v17; // r7
  int v18; // r7
  int v19; // r2
  CharProperties *v20; // r8
  TrophyManager *v21; // r7
  int v22; // r0
  int v23; // r0
  double v24; // [sp+10h] [bp-44h]
  ItemInventory *v25; // [sp+10h] [bp-44h]
  double v26; // [sp+18h] [bp-3Ch]
  _BOOL4 v27; // [sp+18h] [bp-3Ch]
  _BYTE v28[12]; // [sp+24h] [bp-30h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v29; // [sp+34h] [bp-20h] BYREF

  LODWORD(v26) = gameswf::as_value::to_number((gameswf::as_value *)(**((_DWORD **)a1 + 3) + 12 * *((_DWORD *)a1 + 5)));
  HIDWORD(v26) = v2;
  LODWORD(v3) = gameswf::as_value::to_number((gameswf::as_value *)(**((_DWORD **)a1 + 3) + 12
                                                                                         * (*((_DWORD *)a1 + 5) - 1)));
  HIDWORD(v3) = v4;
  v5 = (char *)gameswf::as_value::to_string((gameswf::as_value *)(**((_DWORD **)a1 + 3) + 12 * (*((_DWORD *)a1 + 5) - 2)));
  LODWORD(v24) = gameswf::as_value::to_number((gameswf::as_value *)(**((_DWORD **)a1 + 3)
                                                                  + 12 * (*((_DWORD *)a1 + 5) - 3)));
  HIDWORD(v24) = v6;
  PlayerChar = NativeGetPlayerChar((int)v3, 0);
  if ( PlayerChar )
  {
    ObjectManager::GetObjectByName((ObjectManager *)v28, (const char *)dword_99F764, v5, (int)v24, nullptr);
    v8 = (Character *)ObjectHandle::operator Character *(v28);
    v9 = v8;
    if ( v8 )
    {
      if ( Character::IsMerchant(v8) )
      {
        if ( Character::IsMerchant(v9) )
        {
          v12 = (Character *)((char *)v9 + 892);
          v13 = (int)v26;
          if ( (unsigned int)(int)v26 < ItemInventory::GetNumItems((Character *)((char *)v9 + 892)) && v13 >= 0 )
          {
            v14 = Arrays::MerchantTable::members + 20 * Character::GetLoot(v9);
            Item = ItemInventory::GetItem(v12, v13);
            if ( *(_BYTE *)(Item + 105) )
              v16 = *(_DWORD *)(v14 + 4);
            else
              v16 = *(_DWORD *)(v14 + 8);
            v17 = (float)v16 / 100.0;
            if ( (int)(float)(v17 * (float)*(int *)(Item + 84)) < 1 )
              v18 = 1;
            else
              v18 = (int)(float)(v17 * (float)*(int *)(Item + 84));
            v19 = *(_DWORD *)(ItemInstance::GetItem((ItemInstance *)Item) + 88);
            if ( v18 > *(_DWORD *)(PlayerChar + 924) )
            {
              v10 = 1.0;
              return gameswf::as_value::set_double(*(gameswf::as_value **)a1, v10);
            }
            v25 = (ItemInventory *)(PlayerChar + 892);
            v27 = v19 == 14;
            if ( ItemInventory::IsInventoryFull((ItemInventory *)(PlayerChar + 892)) )
            {
              if ( !v27 )
              {
                v10 = 2.0;
                return gameswf::as_value::set_double(*(gameswf::as_value **)a1, v10);
              }
            }
            else if ( !v27 )
            {
LABEL_24:
              ItemInventory::AddGold(v25, -v18);
              v20 = (CharProperties *)(PlayerChar + 1376);
              DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
              std::string::string((int)&v29, "isTracingMerchant");
              DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, (const std::string *)&v29);
              std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v29);
              *(_BYTE *)(Item + 105) = 0;
              ItemInventory::TransferItemTo(v12, v13, v25, 1, 0, 1);
              CharProperties::PROPS_AddInt(v20, 221, v18);
              v21 = (TrophyManager *)TrophyManager::s_instance;
              if ( (int)CharProperties::PROPS_GetInt(v20, 221, 0) >= 1000 )
              {
                v23 = Arrays::GetMemberIDByString<Arrays::TrophyTable>("spend_1000_gold");
                TrophyManager::UnlockTrophy(v21, v23);
              }
              if ( (int)CharProperties::PROPS_GetInt(v20, 221, 0) > 9999 )
              {
                v22 = Arrays::GetMemberIDByString<Arrays::TrophyTable>("spend_10000_gold");
                TrophyManager::UnlockTrophy(v21, v22);
                v10 = 0.0;
                return gameswf::as_value::set_double(*(gameswf::as_value **)a1, v10);
              }
              goto LABEL_4;
            }
            if ( ItemInventory::GetNumPotions(v25) == *(char *)(PlayerChar + 936) )
            {
              v10 = 3.0;
              return gameswf::as_value::set_double(*(gameswf::as_value **)a1, v10);
            }
            goto LABEL_24;
          }
        }
      }
    }
  }
LABEL_4:
  v10 = 0.0;
  return gameswf::as_value::set_double(*(gameswf::as_value **)a1, v10);
}


// ===== 440c84 NativeHasPushNotification(gameswf::fn_call const&) =====
int __fastcall NativeHasPushNotification(const gameswf::fn_call *a1)
{
  char v2; // r4

  if ( Device::IsHighPerformance(a1) || Is_In_Multiplayer_Mode || SHARP_DEVICES || (v2 = HTC_DEVICES) != 0 )
  {
    if ( byte_99F83A )
    {
      v2 = 1;
    }
    else
    {
      v2 = byte_99F81A;
      if ( byte_99F81A )
        v2 = 1;
    }
    if ( *(_BYTE *)(GCSingleton<GameCenter>::GetInstance() + 21) )
      v2 = 1;
  }
  return gameswf::as_value::set_bool(*(gameswf::as_value **)a1, v2);
}


// ===== 440d3c NativeGLXPlayerSignin(gameswf::fn_call const&) =====
int __fastcall NativeGLXPlayerSignin(const gameswf::fn_call *a1)
{
  int result; // r0
  char *v3; // r8
  char *v4; // r7
  char v5; // r5
  const char *v6; // r0
  char *v7; // r8
  const char *v8; // r0
  char *v9; // r6
  void *v10; // r5
  CSignInCredentials *v11; // r4
  CSignIn *v12; // r0
  int v13; // r0

  result = GetOnline();
  if ( *(_BYTE *)(result + 5) )
  {
    if ( *((_DWORD *)a1 + 4) == 3 )
    {
      v3 = gameswf::as_value::to_tu_string((gameswf::as_value *)(**((_DWORD **)a1 + 3) + 12 * *((_DWORD *)a1 + 5)));
      v4 = gameswf::as_value::to_tu_string((gameswf::as_value *)(**((_DWORD **)a1 + 3) + 12 * (*((_DWORD *)a1 + 5) - 1)));
      v5 = gameswf::as_value::to_bool((gameswf::as_value *)(**((_DWORD **)a1 + 3) + 12 * (*((_DWORD *)a1 + 5) - 2)));
      result = OnlineSingleton<OnlineGameState>::GetInstance();
      if ( *(_BYTE *)(result + 39) )
      {
        save_remember = v5;
        if ( *v3 == -1 )
          v6 = *((const char **)v3 + 3);
        else
          v6 = v3 + 1;
        v7 = strdup(v6);
        if ( *v4 == -1 )
          v8 = *((const char **)v4 + 3);
        else
          v8 = v4 + 1;
        v9 = strdup(v8);
        *(_BYTE *)(CMatching::Get((CMatching *)v9) + 27633) = v5;
        v10 = *(void **)(GCSingleton<GameCenter>::GetInstance() + 24);
        v11 = (CSignInCredentials *)CustomAlloc(0xCu);
        v12 = CSignInCredentials::CSignInCredentials(v11, v7, v9, v10);
        v13 = CSignIn::Get(v12);
        return (*(int (__fastcall **)(int, CSignInCredentials *))(*(_DWORD *)v13 + 16))(v13, v11);
      }
    }
  }
  return result;
}


// ===== 440e5c NativeGetNextOnlineStatusMessage(gameswf::fn_call const&) =====
void __fastcall NativeGetNextOnlineStatusMessage(gameswf::as_value **a1)
{
  int v2; // r6
  gameswf::as_value *v3; // r0
  std::string v4; // [sp+8h] [bp-3Ch] BYREF
  int v5; // [sp+20h] [bp-24h]
  std::priv::_String_base<char,std::allocator<char> > v6; // [sp+24h] [bp-20h] BYREF

  std::string::string((std::string *)&v6, "not yet supported with no hud code");
  v4._M_finish = (char *)&v4;
  v4._M_start_of_storage._M_data = (char *)&v4;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block(&v4, 0x10u);
  *v4._M_finish = 0;
  v2 = dword_99FB34;
  if ( dword_99FB44 != dword_99FB34 )
  {
    if ( (std::string *)dword_99FB34 != &v4 )
      std::string::_M_assign(&v4, *(const char **)(dword_99FB34 + 20), *(const char **)(dword_99FB34 + 16));
    v3 = *a1;
    v5 = *(_DWORD *)(v2 + 24);
    gameswf::as_value::set_string(v3, v4._M_start_of_storage._M_data);
  }
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v4);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v6);
}


// ===== 440f40 `global constructor keyed to'.._.._sources_Game_Menus_NativeCommands.cpp =====
int __fastcall `global constructor keyed to'.._.._sources_Game_Menus_NativeCommands.cpp(CMessage *a1)
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
  char *v17; // r0
  int v18; // r2
  void *v19; // r0
  int *v20; // r1
  int v21; // r0
  int v22; // r3
  _DWORD *v23; // r6
  unsigned int v24; // r7
  int v25; // r12
  int v26; // r3
  _DWORD *v27; // r6
  unsigned int v28; // r7
  int v29; // r12
  int v30; // r3
  _DWORD *v31; // r6
  unsigned int v32; // r7
  int v33; // r12
  int v34; // r3
  _DWORD *v35; // r6
  unsigned int v36; // r7
  int v37; // r12
  int v38; // r3
  _DWORD *v39; // r6
  unsigned int v40; // r7
  int v41; // r12
  int v42; // r3
  unsigned int v43; // [sp+0h] [bp-14h]
  char *v44; // [sp+4h] [bp-10h]
  size_t v45; // [sp+Ch] [bp-8h] BYREF

  dword_9A5B64 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9A5B60 = 1056964608;
  messageCreationMap = CMessage::InitializeMessageRegistration(a1);
  byte_9A5B69 = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgStartGame",
                  (const char *)GetNewInstance<CMsgStartGame>,
                  v1);
  byte_9A5B6A = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgControllerAction",
                  (const char *)GetNewInstance<CMsgControllerAction>,
                  v2);
  byte_9A5B6B = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgAttackResult",
                  (const char *)GetNewInstance<CMsgAttackResult>,
                  v3);
  byte_9A5B6C = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgRaisedEvent",
                  (const char *)GetNewInstance<CMsgRaisedEvent>,
                  v4);
  byte_9A5B6D = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgMenuReady",
                  (const char *)GetNewInstance<CMsgMenuReady>,
                  v5);
  byte_9A5B6E = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgScriptCmd",
                  (const char *)GetNewInstance<CMsgScriptCmd>,
                  v6);
  byte_9A5B6F = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgInitialSetup",
                  (const char *)GetNewInstance<CMsgInitialSetup>,
                  v7);
  byte_9A5B70 = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgQuestsSync",
                  (const char *)GetNewInstance<CMsgQuestsSync>,
                  v8);
  byte_9A5B71 = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgDropLoot",
                  (const char *)GetNewInstance<CMsgDropLoot>,
                  v9);
  byte_9A5B72 = CMessage::RegisterMessageType((CMessage *)"CMsgIsHost", (const char *)GetNewInstance<CMsgIsHost>, v10);
  byte_9A5B73 = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgSpawnObject",
                  (const char *)GetNewInstance<CMsgSpawnObject>,
                  v11);
  byte_9A5B74 = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgGlobalDeath",
                  (const char *)GetNewInstance<CMsgGlobalDeath>,
                  v12);
  v14 = (CMessage *)CMessage::RegisterMessageType(
                      (CMessage *)"CMsgAskResendAttributes",
                      (const char *)GetNewInstance<CMsgAskResendAttributes>,
                      v13);
  byte_9A5B75 = (char)v14;
  result = CMessage::TerminateMessageRegistration(v14);
  byte_9A5B76 = result;
  if ( (`guard variable for'Singleton<PlayerStatManager>::s_inst & 1) != 0 )
  {
    if ( (`guard variable for'Singleton<Application>::s_inst & 1) != 0 )
      goto LABEL_3;
  }
  else
  {
    `guard variable for'Singleton<PlayerStatManager>::s_inst = 1;
    PlayerStatManager::PlayerStatManager((PlayerStatManager *)&Singleton<PlayerStatManager>::s_inst);
    result = _aeabi_atexit(
               (int)&Singleton<PlayerStatManager>::s_inst,
               (int)PlayerStatManager::~PlayerStatManager,
               (int)&_dso_handle);
    if ( (`guard variable for'Singleton<Application>::s_inst & 1) != 0 )
      goto LABEL_3;
  }
  `guard variable for'Singleton<Application>::s_inst = 1;
  Application::Application((Application *)&Singleton<Application>::s_inst);
  result = _aeabi_atexit((int)&Singleton<Application>::s_inst, (int)Application::~Application, (int)&_dso_handle);
LABEL_3:
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
      v17 = (char *)std::allocator<StatusMsg *>::allocate((int)(v16 + 8), 8u);
      v18 = v16[9];
      v16[8] = (int)v17;
      v43 = (unsigned int)(v18 - 1) >> 1;
      v44 = v17;
      v45 = 112;
      v19 = __ZNSt12__node_alloc11_M_allocateERj_veneer(&v45);
      v20 = (int *)&v44[4 * v43];
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
    v23 = std::allocator<OnlineStatusMsg *>::allocate((int)&dword_99FB54, (unsigned int)byte_8);
    v45 = 112;
    dword_99FB54 = (int)v23;
    v24 = (unsigned int)(dword_99FB58 - 1) >> 1;
    v23[v24] = __ZNSt12__node_alloc11_M_allocateERj_veneer(&v45);
    dword_99FB40 = (int)&v23[v24];
    v25 = v23[v24];
    dword_99FB50 = (int)&v23[v24];
    dword_99FB3C = v25 + 112;
    dword_99FB38 = v25;
    v26 = v23[v24];
    dword_99FB4C = v26 + 112;
    dword_99FB34 = v25;
    dword_99FB44 = v26;
    dword_99FB48 = v26;
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
    v27 = std::allocator<TutorialMsg *>::allocate((int)&dword_99FB80, (unsigned int)byte_8);
    v45 = 128;
    dword_99FB80 = (int)v27;
    v28 = (unsigned int)(dword_99FB84 - 1) >> 1;
    v27[v28] = __ZNSt12__node_alloc11_M_allocateERj_veneer(&v45);
    dword_99FB6C = (int)&v27[v28];
    v29 = v27[v28];
    dword_99FB7C = (int)&v27[v28];
    dword_99FB68 = v29 + 128;
    dword_99FB64 = v29;
    v30 = v27[v28];
    dword_99FB78 = v30 + 128;
    dword_99FB60 = v29;
    dword_99FB70 = v30;
    dword_99FB74 = v30;
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
    v31 = std::allocator<DialogMsg *>::allocate((int)&dword_99FBAC, (unsigned int)byte_8);
    v45 = 76;
    dword_99FBAC = (int)v31;
    v32 = (unsigned int)(dword_99FBB0 - 1) >> 1;
    v31[v32] = __ZNSt12__node_alloc11_M_allocateERj_veneer(&v45);
    dword_99FB98 = (int)&v31[v32];
    v33 = v31[v32];
    dword_99FBA8 = (int)&v31[v32];
    dword_99FB94 = v33 + 76;
    dword_99FB90 = v33;
    v34 = v31[v32];
    dword_99FBA4 = v34 + 76;
    dword_99FB8C = v33;
    dword_99FB9C = v34;
    dword_99FBA0 = v34;
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
    v35 = std::allocator<CharMenuTutorialMsg *>::allocate((int)&dword_99FBD8, (unsigned int)byte_8);
    v45 = 104;
    dword_99FBD8 = (int)v35;
    v36 = (unsigned int)(dword_99FBDC - 1) >> 1;
    v35[v36] = __ZNSt12__node_alloc11_M_allocateERj_veneer(&v45);
    dword_99FBC4 = (int)&v35[v36];
    v37 = v35[v36];
    dword_99FBD4 = (int)&v35[v36];
    dword_99FBC0 = v37 + 104;
    dword_99FBBC = v37;
    v38 = v35[v36];
    dword_99FBD0 = v38 + 104;
    dword_99FBB8 = v37;
    dword_99FBC8 = v38;
    dword_99FBCC = v38;
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
    v39 = std::allocator<AchievementMsg *>::allocate((int)&dword_99FC04, (unsigned int)byte_8);
    v45 = 120;
    dword_99FC04 = (int)v39;
    v40 = (unsigned int)(dword_99FC08 - 1) >> 1;
    v39[v40] = __ZNSt12__node_alloc11_M_allocateERj_veneer(&v45);
    dword_99FBF0 = (int)&v39[v40];
    v41 = v39[v40];
    dword_99FC00 = (int)&v39[v40];
    dword_99FBEC = v41 + 120;
    dword_99FBE8 = v41;
    v42 = v39[v40];
    dword_99FBFC = v42 + 120;
    dword_99FBE4 = v41;
    dword_99FBF4 = v42;
    dword_99FBF8 = v42;
    return _aeabi_atexit(
             (int)&Singleton<MenuMessageManager<AchievementMsg,1>>::s_inst,
             (int)MenuMessageManager<AchievementMsg,1>::~MenuMessageManager,
             (int)&_dso_handle);
  }
  return result;
}


// ===== 4417b8 std::allocator<std::priv::_Rb_tree_node<std::pair<int const,NetStruct::tPacketHistory>>>::allocate(uint,void const*) [clone] =====
void *std::allocator<std::priv::_Rb_tree_node<std::pair<int const,NetStruct::tPacketHistory>>>::allocate()
{
  size_t v1; // [sp+4h] [bp-8h] BYREF

  v1 = 40;
  return __ZNSt12__node_alloc11_M_allocateERj_veneer(&v1);
}


// ===== 4417d8 CNetPlayerInfo::CNetPlayerInfo(CNetPlayerInfo const&) =====
void __fastcall CNetPlayerInfo::CNetPlayerInfo(CNetPlayerInfo *this, const CNetPlayerInfo *a2)
{
  int v4; // r1
  int v5; // r1
  char v6; // r0
  int v7; // r0
  char v8; // r10
  int v9; // r10
  char v10; // r7
  int v11; // r2
  int v12; // r2
  int v13; // r2
  int v14; // r2
  char v15; // r3

  *(_DWORD *)this = off_9924D8;
  memcpy((char *)this + 4, (char *)a2 + 4, 0x100u);
  *((_DWORD *)this + 65) = *((_DWORD *)a2 + 65);
  *((_BYTE *)this + 264) = *((_BYTE *)a2 + 264);
  std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,std::map<int,NetStruct::tPacketHistory>>,std::priv::_Select1st<std::pair<int const,std::map<int,NetStruct::tPacketHistory>>>,std::priv::_MapTraitsT<std::pair<int const,std::map<int,NetStruct::tPacketHistory>>>,std::allocator<std::pair<int const,std::map<int,NetStruct::tPacketHistory>>>>::_Rb_tree(
    (int)this + 268,
    (int)a2 + 268);
  *((_BYTE *)this + 292) = *((_BYTE *)a2 + 292);
  *((_BYTE *)this + 293) = *((_BYTE *)a2 + 293);
  v4 = *((_DWORD *)a2 + 74);
  *((_DWORD *)this + 76) = &off_963648;
  *((_DWORD *)this + 74) = v4;
  *(_DWORD *)this = off_992370;
  *((_DWORD *)this + 77) = *((_DWORD *)a2 + 77);
  *((_QWORD *)this + 39) = *((_QWORD *)a2 + 39);
  *((_DWORD *)this + 80) = *((_DWORD *)a2 + 80);
  *((_DWORD *)this + 81) = *((_DWORD *)a2 + 81);
  *((_DWORD *)this + 82) = *((_DWORD *)a2 + 82);
  LOBYTE(v4) = *((_BYTE *)a2 + 332);
  *((_DWORD *)this + 76) = &off_963618;
  *((_BYTE *)this + 332) = v4;
  v5 = *((_DWORD *)a2 + 84);
  *((_DWORD *)this + 86) = &off_963648;
  *((_DWORD *)this + 84) = v5;
  *((_DWORD *)this + 76) = &off_9637C0;
  *((_DWORD *)this + 87) = *((_DWORD *)a2 + 87);
  *((_QWORD *)this + 44) = *((_QWORD *)a2 + 44);
  *((_DWORD *)this + 90) = *((_DWORD *)a2 + 90);
  *((_DWORD *)this + 91) = *((_DWORD *)a2 + 91);
  *((_DWORD *)this + 92) = *((_DWORD *)a2 + 92);
  v6 = *((_BYTE *)a2 + 372);
  *((_DWORD *)this + 86) = &off_963618;
  *((_BYTE *)this + 372) = v6;
  v7 = *((_DWORD *)a2 + 94);
  *((_DWORD *)this + 96) = &off_963648;
  *((_DWORD *)this + 86) = &off_9637F0;
  *((_DWORD *)this + 94) = v7;
  *((_DWORD *)this + 97) = *((_DWORD *)a2 + 97);
  *((_QWORD *)this + 49) = *((_QWORD *)a2 + 49);
  *((_DWORD *)this + 100) = *((_DWORD *)a2 + 100);
  *((_DWORD *)this + 101) = *((_DWORD *)a2 + 101);
  *((_DWORD *)this + 102) = *((_DWORD *)a2 + 102);
  v8 = *((_BYTE *)a2 + 412);
  *((_DWORD *)this + 96) = &off_963618;
  *((_BYTE *)this + 412) = v8;
  v9 = *((_DWORD *)a2 + 104);
  *((_DWORD *)this + 106) = &off_963648;
  *((_DWORD *)this + 104) = v9;
  *((_DWORD *)this + 96) = &off_9637C0;
  *((_DWORD *)this + 107) = *((_DWORD *)a2 + 107);
  *((_QWORD *)this + 54) = *((_QWORD *)a2 + 54);
  *((_DWORD *)this + 110) = *((_DWORD *)a2 + 110);
  *((_DWORD *)this + 111) = *((_DWORD *)a2 + 111);
  *((_DWORD *)this + 112) = *((_DWORD *)a2 + 112);
  v10 = *((_BYTE *)a2 + 452);
  *((_DWORD *)this + 106) = &off_963618;
  *((_BYTE *)this + 452) = v10;
  v11 = *((_DWORD *)a2 + 114);
  *((_DWORD *)this + 116) = &off_963648;
  *((_DWORD *)this + 106) = &off_963730;
  *((_DWORD *)this + 114) = v11;
  *((_DWORD *)this + 117) = *((_DWORD *)a2 + 117);
  *((_QWORD *)this + 59) = *((_QWORD *)a2 + 59);
  *((_DWORD *)this + 120) = *((_DWORD *)a2 + 120);
  *((_DWORD *)this + 121) = *((_DWORD *)a2 + 121);
  *((_DWORD *)this + 122) = *((_DWORD *)a2 + 122);
  LOBYTE(v11) = *((_BYTE *)a2 + 492);
  *((_DWORD *)this + 116) = &off_9636A0;
  *((_BYTE *)this + 492) = v11;
  v12 = *((_DWORD *)a2 + 124);
  *((_DWORD *)this + 116) = &off_963670;
  *((_DWORD *)this + 126) = &off_963648;
  *((_DWORD *)this + 124) = v12;
  *((_DWORD *)this + 127) = *((_DWORD *)a2 + 127);
  *((_QWORD *)this + 64) = *((_QWORD *)a2 + 64);
  *((_DWORD *)this + 130) = *((_DWORD *)a2 + 130);
  *((_DWORD *)this + 131) = *((_DWORD *)a2 + 131);
  *((_DWORD *)this + 132) = *((_DWORD *)a2 + 132);
  LOBYTE(v12) = *((_BYTE *)a2 + 532);
  *((_DWORD *)this + 126) = &off_9636A0;
  *((_BYTE *)this + 532) = v12;
  v13 = *((_DWORD *)a2 + 134);
  *((_DWORD *)this + 136) = &off_963648;
  *((_DWORD *)this + 126) = &off_963670;
  *((_DWORD *)this + 134) = v13;
  *((_DWORD *)this + 137) = *((_DWORD *)a2 + 137);
  *((_QWORD *)this + 69) = *((_QWORD *)a2 + 69);
  *((_DWORD *)this + 140) = *((_DWORD *)a2 + 140);
  *((_DWORD *)this + 141) = *((_DWORD *)a2 + 141);
  *((_DWORD *)this + 142) = *((_DWORD *)a2 + 142);
  LOBYTE(v13) = *((_BYTE *)a2 + 572);
  *((_DWORD *)this + 136) = &off_9636A0;
  *((_BYTE *)this + 572) = v13;
  v14 = *((_DWORD *)a2 + 144);
  *((_DWORD *)this + 136) = &off_963670;
  *((_DWORD *)this + 146) = &off_963648;
  *((_DWORD *)this + 144) = v14;
  *((_DWORD *)this + 147) = *((_DWORD *)a2 + 147);
  *((_QWORD *)this + 74) = *((_QWORD *)a2 + 74);
  *((_DWORD *)this + 150) = *((_DWORD *)a2 + 150);
  *((_DWORD *)this + 151) = *((_DWORD *)a2 + 151);
  *((_DWORD *)this + 152) = *((_DWORD *)a2 + 152);
  v15 = *((_BYTE *)a2 + 612);
  *((_DWORD *)this + 146) = &off_963790;
  *((_BYTE *)this + 612) = v15;
  std::string::string((std::string *)((char *)this + 616), (const std::string *)((char *)a2 + 616));
  *((_DWORD *)this + 146) = off_963760;
  *((_DWORD *)this + 160) = *((_DWORD *)a2 + 160);
}


// ===== 441b60 NativeKickPlayerOut(gameswf::fn_call const&) =====
void __fastcall NativeKickPlayerOut(const gameswf::fn_call *a1)
{
  double v1; // r0
  int v2; // r4
  CMatching *Instance; // r0
  CNetPlayerManager *NetPlayerMgr; // r0
  int PlayerIdList; // r0
  int *v6; // r7
  void *v7; // r0
  CNetPlayerManager *v8; // r0
  const CNetPlayerInfo *Player; // r0
  CNetPlayerManager *v10; // r0
  CMatching *v11; // r0
  int v12; // r0
  size_t v13; // r1
  CMatchingGLLive *v14; // r0
  int MemberByMemberId; // r7
  int v16; // r1
  int v17; // r2
  int v18; // r3
  CMatching *v19; // r0
  int v20; // r1
  int v21; // r2
  int v22; // r3
  int v23; // r0
  void *__p; // [sp+4h] [bp-2ECh] BYREF
  int *v25; // [sp+8h] [bp-2E8h]
  int v26; // [sp+Ch] [bp-2E4h]
  _BYTE v27[648]; // [sp+10h] [bp-2E0h] BYREF
  int v28; // [sp+298h] [bp-58h]
  int v29; // [sp+29Ch] [bp-54h]
  int v30; // [sp+2A0h] [bp-50h]
  std::priv::_String_base<char,std::allocator<char> > v31; // [sp+2A4h] [bp-4Ch] BYREF
  int v32; // [sp+2BCh] [bp-34h]
  int v33; // [sp+2C0h] [bp-30h]
  int v34; // [sp+2C4h] [bp-2Ch]
  int v35; // [sp+2C8h] [bp-28h]
  int v36; // [sp+2CCh] [bp-24h]
  CMatching *v37; // [sp+2D0h] [bp-20h]
  int v38; // [sp+2D4h] [bp-1Ch]
  int v39; // [sp+2D8h] [bp-18h]
  int v40; // [sp+2DCh] [bp-14h]
  char v41; // [sp+2E0h] [bp-10h]
  int v42; // [sp+2E4h] [bp-Ch]
  char v43; // [sp+2E8h] [bp-8h]

  LODWORD(v1) = gameswf::as_value::to_number((gameswf::as_value *)(**((_DWORD **)a1 + 3) + 12 * *((_DWORD *)a1 + 5)));
  v2 = (int)v1;
  Instance = (CMatching *)OnlineSingleton<OnlineGameState>::GetInstance();
  if ( *((_DWORD *)Instance + 13) == 3 )
  {
    v14 = (CMatchingGLLive *)CMatching::Get(Instance);
    MemberByMemberId = CMatchingGLLive::GetMemberByMemberId(v14, v2);
    v28 = *(_DWORD *)MemberByMemberId;
    v29 = *(_DWORD *)(MemberByMemberId + 4);
    v30 = *(_DWORD *)(MemberByMemberId + 8);
    std::string::string((std::string *)&v31, (const std::string *)(MemberByMemberId + 12));
    v32 = *(_DWORD *)(MemberByMemberId + 36);
    v16 = *(_DWORD *)(MemberByMemberId + 44);
    v17 = *(_DWORD *)(MemberByMemberId + 48);
    v18 = *(_DWORD *)(MemberByMemberId + 52);
    v33 = *(_DWORD *)(MemberByMemberId + 40);
    v34 = v16;
    v35 = v17;
    v36 = v18;
    v19 = *(CMatching **)(MemberByMemberId + 56);
    v20 = *(_DWORD *)(MemberByMemberId + 60);
    v21 = *(_DWORD *)(MemberByMemberId + 64);
    v22 = *(_DWORD *)(MemberByMemberId + 68);
    v37 = v19;
    v38 = v20;
    v39 = v21;
    v40 = v22;
    v41 = *(_DWORD *)(MemberByMemberId + 72);
    v42 = *(_DWORD *)(MemberByMemberId + 76);
    v43 = *(_BYTE *)(MemberByMemberId + 80);
    if ( v28 != -1 )
    {
      v23 = CMatching::Get(v19);
      (*(void (__fastcall **)(int, int))(*(_DWORD *)v23 + 64))(v23, v2);
    }
    v32 = 0;
    v28 = -1;
    std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v31);
  }
  else
  {
    NetPlayerMgr = (CNetPlayerManager *)GetNetPlayerMgr();
    PlayerIdList = CNetPlayerManager::GetPlayerIdList(NetPlayerMgr);
    std::vector<int>::vector(&__p, PlayerIdList);
    v6 = (int *)__p;
    v7 = v25;
    if ( __p != v25 )
    {
      do
      {
        while ( 1 )
        {
          v8 = (CNetPlayerManager *)GetNetPlayerMgr();
          Player = (const CNetPlayerInfo *)CNetPlayerManager::GetPlayer(v8, *v6, 0);
          CNetPlayerInfo::CNetPlayerInfo((CNetPlayerInfo *)v27, Player);
          v10 = (CNetPlayerManager *)GetNetPlayerMgr();
          v11 = (CMatching *)CNetPlayerManager::GetPlayer(v10, *v6, 0);
          if ( *((_DWORD *)v11 + 104) == v2 )
            break;
          CNetPlayerInfo::~CNetPlayerInfo((CNetPlayerInfo *)v27);
          if ( ++v6 == v25 )
            goto LABEL_7;
        }
        v12 = CMatching::Get(v11);
        (*(void (__fastcall **)(int, int))(*(_DWORD *)v12 + 64))(v12, v2);
        CNetPlayerInfo::~CNetPlayerInfo((CNetPlayerInfo *)v27);
        ++v6;
      }
      while ( v6 != v25 );
LABEL_7:
      v7 = __p;
    }
    if ( v7 )
    {
      v13 = (v26 - (_DWORD)v7) & 0xFFFFFFFC;
      if ( v13 > 0x80 )
        CustomFree(v7);
      else
        __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v7, v13);
    }
  }
}


// ===== 441d58 std::deque<CharMenuTutorialMsg,std::allocator<CharMenuTutorialMsg>>::pop_front(void) =====
void __fastcall std::deque<CharMenuTutorialMsg>::pop_front(_DWORD *a1)
{
  int v1; // r5
  void *v3; // r0
  int *v4; // r2
  int v5; // r3
  int v6; // r2

  v1 = *a1;
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block((std::priv::_String_base<char,std::allocator<char> > *const)(*a1 + 28));
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block((std::priv::_String_base<char,std::allocator<char> > *const)(v1 + 4));
  if ( *a1 == a1[2] - 52 )
  {
    v3 = (void *)a1[1];
    if ( v3 )
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v3, 0x68u);
    v4 = (int *)(a1[3] + 4);
    a1[3] = v4;
    v5 = *v4;
    v6 = *v4 + 104;
    *a1 = v5;
    a1[2] = v6;
    a1[1] = v5;
  }
  else
  {
    *a1 += 52;
  }
}


// ===== 441dcc fillLeaderBoard(void) =====
int __fastcall fillLeaderBoard(CMatching *a1)
{
  GLXPlayerLeaderboard *v1; // r6
  MenuManager *LeaderboardSize; // r0
  MenuManager *v3; // r0
  int v4; // r10
  int LeaderboardEntryPlayerPosition; // r0
  int LeaderboardEntryPlayerScore; // r0
  gameswf::as_value *v7; // r8
  const char *LeaderboardEntryPlayerName; // r0
  const char *LeaderboardEntryPlayerCountry; // r0
  gameswf::as_value *v10; // r10
  int result; // r0
  MenuManager *Instance; // r0
  gameswf::as_value *v13; // r5
  int v14; // r6
  RenderFX *Root; // r9
  const char *v16; // r8
  double *v17; // r7
  int v18; // r6
  int v19; // r3
  const char *v20; // r11
  double *v21; // r8
  int v22; // r7
  gameswf::as_value *v23; // r6
  gameswf::as_value *v24; // r5
  bool v25; // zf
  int v26; // [sp+8h] [bp-FCh]
  gameswf::as_value *v27; // [sp+14h] [bp-F0h]
  RenderFX *v28; // [sp+18h] [bp-ECh]
  _BYTE v29[4]; // [sp+3Ch] [bp-C8h] BYREF
  int v30; // [sp+40h] [bp-C4h]
  int v31; // [sp+44h] [bp-C0h]
  _BYTE v32[12]; // [sp+48h] [bp-BCh] BYREF
  _BYTE v33[12]; // [sp+54h] [bp-B0h] BYREF
  _BYTE v34[36]; // [sp+60h] [bp-A4h] BYREF
  _BYTE v35[4]; // [sp+84h] [bp-80h] BYREF
  double v36; // [sp+88h] [bp-7Ch]
  _BYTE v37[12]; // [sp+90h] [bp-74h] BYREF
  _BYTE v38[12]; // [sp+9Ch] [bp-68h] BYREF
  _BYTE v39[12]; // [sp+A8h] [bp-5Ch] BYREF
  _BYTE v40[12]; // [sp+B4h] [bp-50h] BYREF
  _BYTE v41[12]; // [sp+C0h] [bp-44h] BYREF
  _BYTE v42[12]; // [sp+CCh] [bp-38h] BYREF
  double v43; // [sp+D8h] [bp-2Ch] BYREF
  char v44[12]; // [sp+E4h] [bp-20h] BYREF
  char v45[12]; // [sp+F0h] [bp-14h] BYREF

  v1 = *(GLXPlayerLeaderboard **)(CMatching::Get(a1) + 26396);
  _DEBUG_OUT("XSocket::Run(): Connecting... \n");
  LeaderboardSize = (MenuManager *)GLXPlayerLeaderboard::getLeaderboardSize(v1);
  v27 = LeaderboardSize;
  if ( (int)LeaderboardSize <= 0 )
  {
    Instance = (MenuManager *)MenuManager::GetInstance(LeaderboardSize);
    v13 = (gameswf::as_value *)v29;
    v14 = 0;
    Root = (RenderFX *)MenuManager::GetRoot(Instance);
    v16 = "";
    v17 = &v43;
    do
    {
      v18 = v14 + 1;
      v29[0] = 0;
      v29[1] = 2;
      v43 = (double)v18;
      v30 = *(_DWORD *)v17;
      v19 = *((_DWORD *)v17 + 1);
      v32[0] = 0;
      v32[1] = 0;
      v31 = v19;
      gameswf::as_value::set_string((gameswf::as_value *)v32, v16);
      v33[0] = 0;
      v33[1] = 0;
      gameswf::as_value::set_string((gameswf::as_value *)v33, v16);
      v34[0] = 0;
      v34[1] = 0;
      gameswf::as_value::set_string((gameswf::as_value *)v34, v16);
      v34[12] = 0;
      v34[13] = 0;
      gameswf::as_value::set_string((gameswf::as_value *)((char *)v13 + 48), v16);
      v34[25] = 1;
      v34[24] = 0;
      v34[28] = 0;
      RenderFX::InvokeASCallback(Root, "_root.Multiplayer_Leaderboard", "addLeaderboardEntry", v13, 6);
      v20 = v16;
      v21 = v17;
      v22 = v18;
      v23 = v13;
      v24 = (gameswf::as_value *)((char *)v13 + 72);
      do
      {
        v24 = (gameswf::as_value *)((char *)v24 - 12);
        result = gameswf::as_value::drop_refs(v24);
      }
      while ( v24 != v23 );
      v13 = v23;
      v14 = v22;
      v25 = v22 == 10;
      v17 = v21;
      v16 = v20;
    }
    while ( !v25 );
  }
  else
  {
    v3 = (MenuManager *)MenuManager::GetInstance(LeaderboardSize);
    v4 = 0;
    v28 = (RenderFX *)MenuManager::GetRoot(v3);
    while ( 1 )
    {
      LeaderboardEntryPlayerPosition = GLXPlayerLeaderboard::getLeaderboardEntryPlayerPosition(v1, v4);
      sprintf(v45, "%d", LeaderboardEntryPlayerPosition);
      LeaderboardEntryPlayerScore = GLXPlayerLeaderboard::getLeaderboardEntryPlayerScore(v1, v4);
      sprintf(v44, "%d", LeaderboardEntryPlayerScore);
      v7 = (gameswf::as_value *)(v4 + 1);
      GLXPlayerLeaderboard::getLeaderboardEntryPlayerScore(v1, v4);
      v35[1] = 2;
      v35[0] = 0;
      v43 = (double)(v4 + 1);
      v36 = v43;
      v37[0] = 0;
      v37[1] = 0;
      gameswf::as_value::set_string((gameswf::as_value *)v37, v45);
      LeaderboardEntryPlayerName = (const char *)GLXPlayerLeaderboard::getLeaderboardEntryPlayerName(v1, v4);
      v38[0] = 0;
      v38[1] = 0;
      gameswf::as_value::set_string((gameswf::as_value *)v38, LeaderboardEntryPlayerName);
      LeaderboardEntryPlayerCountry = (const char *)GLXPlayerLeaderboard::getLeaderboardEntryPlayerCountry(v1, v4);
      v39[0] = 0;
      v39[1] = 0;
      gameswf::as_value::set_string((gameswf::as_value *)v39, LeaderboardEntryPlayerCountry);
      v40[0] = 0;
      v40[1] = 0;
      gameswf::as_value::set_string((gameswf::as_value *)v40, v44);
      v41[0] = 0;
      v41[1] = 1;
      v41[4] = 0;
      v26 = GLXPlayerLeaderboard::getLeaderboardEntryPlayerPosition(v1, v4);
      if ( v26 == GLXPlayerLeaderboard::getCurrentPlayerLeaderboardPosition(v1) )
      {
        v42[4] = 1;
        v42[0] = 0;
        v42[1] = 1;
        gameswf::as_value::operator=((gameswf::as_value *)v41);
        gameswf::as_value::drop_refs((gameswf::as_value *)v42);
      }
      RenderFX::InvokeASCallback(
        v28,
        "_root.Multiplayer_Leaderboard",
        "addLeaderboardEntry",
        (const gameswf::as_value *)v35,
        6);
      v10 = (gameswf::as_value *)v42;
      do
      {
        v10 = (gameswf::as_value *)((char *)v10 - 12);
        result = gameswf::as_value::drop_refs(v10);
      }
      while ( v10 != (gameswf::as_value *)v35 );
      if ( v7 == v27 )
        break;
      v4 = (int)v7;
    }
  }
  return result;
}


// ===== 442198 NativeSwapEquipment(gameswf::fn_call const&) =====
int __fastcall NativeSwapEquipment(const gameswf::fn_call *a1)
{
  double v1; // r0
  int PlayerChar; // r0
  int v3; // r4
  RenderFX *HUDRoot; // r5
  gameswf::root *Root; // r0
  gameswf::character *root_movie; // r0
  gameswf::root *v7; // r0
  MenuManager *v8; // r7
  int v9; // r0
  _BYTE v11[4]; // [sp+Ch] [bp-18h] BYREF
  double v12; // [sp+10h] [bp-14h]
  double v13; // [sp+18h] [bp-Ch]

  LODWORD(v1) = gameswf::as_value::to_number((gameswf::as_value *)(**((_DWORD **)a1 + 3) + 12 * *((_DWORD *)a1 + 5)));
  PlayerChar = NativeGetPlayerChar((int)v1, 0);
  v3 = PlayerChar;
  if ( PlayerChar )
  {
    ItemInventory::SwapEquipmentSet((ItemInventory *)(PlayerChar + 892));
    CharProperties::UpdateGearsProperties((CharProperties *)(v3 + 1376));
    Character::INV_CheckItemsRequirements((Character *)v3);
    Character::INV_UpdateSkin((Character *)v3);
    Character::ValidateHPMP((Character *)v3);
  }
  HUDRoot = (RenderFX *)MenuManager::GetHUDRoot((MenuManager *)dword_99F780);
  Root = (gameswf::root *)RenderFX::GetRoot(HUDRoot);
  root_movie = (gameswf::character *)gameswf::root::get_root_movie(Root);
  RenderFX::InvokeASCallback(HUDRoot, root_movie, "DisplayRightHud", nullptr, 0);
  v7 = (gameswf::root *)RenderFX::GetRoot(HUDRoot);
  v8 = (MenuManager *)gameswf::root::get_root_movie(v7);
  v9 = *(_DWORD *)(MenuManager::GetInstance(v8) + 264);
  v11[1] = 2;
  v11[0] = 0;
  v13 = (double)v9;
  v12 = (double)v9;
  RenderFX::InvokeASCallback(HUDRoot, v8, "FillActionIcon", (const gameswf::as_value *)v11, 1);
  return gameswf::as_value::drop_refs((gameswf::as_value *)v11);
}


// ===== 4422b8 NativeGoToZone(gameswf::fn_call const&) =====
void __fastcall NativeGoToZone(const gameswf::fn_call *a1)
{
  char *v2; // r0
  int v3; // r1
  double v4; // r8
  Level *CurrentLevel; // r0
  Level *v6; // r7
  int v7; // r0
  int LocalPlayer; // r0
  char *M_data; // r8
  int v10; // r9
  int v11; // r7
  int v12; // r11
  int v13; // r3
  int v14; // r0
  RenderFX *v15; // r0
  gameswf::root *Root; // r0
  gameswf::character *root_movie; // r0
  RenderFX *HUDRoot; // [sp+18h] [bp-74h]
  const char *v19; // [sp+20h] [bp-6Ch]
  unsigned int Slot; // [sp+24h] [bp-68h]
  int GameDifficulty; // [sp+28h] [bp-64h]
  int v22; // [sp+2Ch] [bp-60h]
  _BYTE v23[12]; // [sp+30h] [bp-5Ch] BYREF
  _BYTE v24[12]; // [sp+3Ch] [bp-50h] BYREF
  _BYTE v25[12]; // [sp+48h] [bp-44h] BYREF
  _BYTE v26[4]; // [sp+54h] [bp-38h] BYREF
  double v27; // [sp+58h] [bp-34h]
  double v28; // [sp+60h] [bp-2Ch]
  std::priv::_String_base<char,std::allocator<char> > v29; // [sp+6Ch] [bp-20h] BYREF

  v2 = (char *)gameswf::as_value::to_string((gameswf::as_value *)(**((_DWORD **)a1 + 3) + 12 * *((_DWORD *)a1 + 5)));
  std::string::string((int)&v29, v2);
  LODWORD(v4) = gameswf::as_value::to_number((gameswf::as_value *)(**((_DWORD **)a1 + 3) + 12
                                                                                         * (*((_DWORD *)a1 + 5) - 1)));
  HIDWORD(v4) = v3;
  CurrentLevel = (Level *)Application::GetCurrentLevel((Application *)&Singleton<Application>::s_inst);
  v6 = CurrentLevel;
  if ( !CurrentLevel || *((_BYTE *)CurrentLevel + 324) )
  {
    v7 = (int)v4;
    if ( (int)v4 == -1 )
      v7 = 0;
    v19 = (const char *)v7;
    if ( v6 )
    {
      if ( *((_DWORD *)v6 + 76) == 38 )
        Level::QuickSave(v6, 0);
      Level::SG_SaveAllPlayer(v6, 0);
      LocalPlayer = PlayerManager::GetLocalPlayer((PlayerManager *)dword_99F76C, 0, 1);
      Slot = Character::SG_GetSlot(*(Character **)(LocalPlayer + 1632));
    }
    else
    {
      Slot = 0;
    }
    M_data = v29._M_start_of_storage._M_data;
    if ( v29._M_start_of_storage._M_data != v29._M_finish )
    {
      v10 = Arrays::LevelList::size;
      if ( Arrays::LevelList::size )
      {
        v11 = 0;
        v12 = Arrays::LevelList::m_memberNames;
        while ( LC_API_STRCMP_0(M_data, *(const char **)(v12 + 4 * v11)) )
        {
          if ( ++v11 == v10 )
            goto LABEL_17;
        }
        v13 = 72 * v11;
      }
      else
      {
LABEL_17:
        v13 = -72;
      }
      v22 = Arrays::LevelList::members + v13;
      v14 = PlayerManager::GetLocalPlayer((PlayerManager *)dword_99F76C, 0, 1);
      GameDifficulty = Character::SG_GetGameDifficulty(*(Character **)(v14 + 1632));
      v23[0] = 0;
      v23[1] = 1;
      v23[4] = 0;
      v24[0] = 0;
      v24[1] = 0;
      gameswf::as_value::set_string((gameswf::as_value *)v24, v29._M_start_of_storage._M_data);
      v25[0] = 0;
      v25[1] = 0;
      gameswf::as_value::set_string((gameswf::as_value *)v25, v29._M_start_of_storage._M_data);
      v26[1] = 2;
      v26[0] = 0;
      v28 = (double)(int)v19;
      v27 = (double)(int)v19;
      HUDRoot = (RenderFX *)MenuManager::GetHUDRoot((MenuManager *)dword_99F780);
      v15 = (RenderFX *)MenuManager::GetHUDRoot((MenuManager *)dword_99F780);
      Root = (gameswf::root *)RenderFX::GetRoot(v15);
      root_movie = (gameswf::character *)gameswf::root::get_root_movie(Root);
      RenderFX::InvokeASCallback(HUDRoot, root_movie, "DisplayFastTravel", (const gameswf::as_value *)v23, 4);
      Application::LoadLevel(
        (Application *)&Singleton<Application>::s_inst,
        *(char **)(v22 + 32),
        v19,
        Slot,
        1,
        1,
        GameDifficulty,
        0,
        0,
        0);
      gameswf::as_value::drop_refs((gameswf::as_value *)v26);
      gameswf::as_value::drop_refs((gameswf::as_value *)v25);
      gameswf::as_value::drop_refs((gameswf::as_value *)v24);
      gameswf::as_value::drop_refs((gameswf::as_value *)v23);
    }
  }
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v29);
}


// ===== 4425a0 NativeSkillGetEquipedSkillsIDs(gameswf::fn_call const&) =====
int __fastcall NativeSkillGetEquipedSkillsIDs(int result)
{
  int v1; // r4
  int v2; // r2
  int v3; // r3
  int v4; // r2
  int v5; // r3
  int v6; // r3
  int v7; // r0
  gameswf::as_array *v8; // r9
  double v9; // r0
  int v10; // r6
  char v11; // r1
  Character *v12; // r10
  int i; // r5
  int SkillInSlot; // r0
  _BYTE v15[4]; // [sp+4h] [bp-18h] BYREF
  double v16; // [sp+8h] [bp-14h]
  double v17; // [sp+10h] [bp-Ch]

  v1 = result;
  if ( (unsigned int)(*(_DWORD *)(result + 16) - 2) <= 1 )
  {
    v2 = *(_DWORD *)(result + 20);
    v3 = **(_DWORD **)(result + 12);
    if ( *(_BYTE *)(v3 + 12 * v2 + 1) == 5 )
    {
      result = gameswf::as_value::is_number((gameswf::as_value *)(v3 + 12 * (v2 - 1)));
      if ( result )
      {
        if ( *(_DWORD *)(v1 + 16) == 3 )
        {
          v4 = *(_DWORD *)(v1 + 20);
          v5 = **(_DWORD **)(v1 + 12);
          if ( *(_BYTE *)(v5 + 12 * (v4 - 2) + 1) != 1 && *(_BYTE *)(v5 + 12 * (v4 - 2) + 1) )
            return result;
        }
        else
        {
          v4 = *(_DWORD *)(v1 + 20);
          v5 = **(_DWORD **)(v1 + 12);
        }
        v6 = v5 + 12 * v4;
        if ( *(_BYTE *)(v6 + 1) == 5 )
          v7 = *(_DWORD *)(v6 + 4);
        else
          v7 = 0;
        v8 = (gameswf::as_array *)gameswf::cast_to<gameswf::as_array>(v7);
        LODWORD(v9) = gameswf::as_value::to_number((gameswf::as_value *)(**(_DWORD **)(v1 + 12)
                                                                       + 12 * (*(_DWORD *)(v1 + 20) - 1)));
        v10 = (int)v9;
        if ( *(_DWORD *)(v1 + 16) == 3 )
          v11 = gameswf::as_value::to_bool((gameswf::as_value *)(**(_DWORD **)(v1 + 12) + 12
                                                                                        * (*(_DWORD *)(v1 + 20) - 2)));
        else
          v11 = 0;
        result = NativeGetPlayerChar(v10, v11);
        v12 = (Character *)result;
        if ( result )
        {
          for ( i = 0; i != 3; ++i )
          {
            SkillInSlot = Character::SG_GetSkillInSlot(v12, i);
            v15[1] = 2;
            v15[0] = 0;
            v17 = (double)SkillInSlot;
            v16 = (double)SkillInSlot;
            gameswf::as_array::push(v8, (const gameswf::as_value *)v15);
            gameswf::as_value::drop_refs((gameswf::as_value *)v15);
          }
          return gameswf::as_value::set_bool(*(gameswf::as_value **)v1, 1);
        }
      }
    }
  }
  return result;
}


// ===== 442734 MenuMessageManager<CharMenuTutorialMsg,1>::Invoke(char const*,int) [clone] =====
int __fastcall MenuMessageManager<CharMenuTutorialMsg,1>::Invoke(MenuManager *a1)
{
  MenuManager *Instance; // r0
  int result; // r0
  RenderFX *v4; // r5
  void *v5; // r0
  gameswf::character *Char; // r0
  _BYTE v8[4]; // [sp+Ch] [bp-18h] BYREF
  int v9; // [sp+10h] [bp-14h]
  int v10; // [sp+14h] [bp-10h]
  int v11; // [sp+18h] [bp-Ch]
  int v12; // [sp+1Ch] [bp-8h]

  Instance = (MenuManager *)MenuManager::GetInstance(a1);
  result = MenuManager::GetHUDRoot(Instance);
  v4 = (RenderFX *)result;
  if ( result )
  {
    if ( dword_9A54A8 )
    {
      v5 = (void *)dword_9A54A4;
      if ( *(_BYTE *)(dword_9A54A4 + 4) )
      {
LABEL_4:
        Char = (gameswf::character *)DebugCachedCharacter::GetChar((DebugCachedCharacter *)&CharMenuTutorialMsg::s_NodeCachedChar);
        v8[0] = 0;
        v11 = 0;
        v12 = 0;
        v8[1] = 2;
        v9 = 0;
        v10 = 0;
        RenderFX::InvokeASCallback(v4, Char, (const char *)a1, (const gameswf::as_value *)v8, 1);
        return gameswf::as_value::drop_refs((gameswf::as_value *)v8);
      }
      if ( (*(_DWORD *)dword_9A54A4)-- == 1 )
        gameswf::free_internal(v5);
      dword_9A54A8 = 0;
      dword_9A54A4 = 0;
    }
    DebugCachedCharacter::RefreshCache(
      (DebugCachedCharacter *)&CharMenuTutorialMsg::s_NodeCachedChar,
      (const char *)CharMenuTutorialMsg::s_NodeName,
      v4,
      nullptr);
    goto LABEL_4;
  }
  return result;
}


// ===== 442838 NativeSkipCharMenuTutorialMessage(gameswf::fn_call const&) =====
int *__fastcall NativeSkipCharMenuTutorialMessage(const gameswf::fn_call *a1)
{
  int *result; // r0

  result = &Singleton<MenuMessageManager<CharMenuTutorialMsg,1>>::s_inst;
  if ( dword_99FBC8 != dword_99FBB8 )
  {
    std::deque<CharMenuTutorialMsg>::pop_front(&dword_99FBB8);
    result = (int *)CharMenuTutorialMsg::s_SkipFuncName;
    if ( CharMenuTutorialMsg::s_SkipFuncName )
      return (int *)MenuMessageManager<CharMenuTutorialMsg,1>::Invoke((MenuManager *)CharMenuTutorialMsg::s_SkipFuncName);
  }
  return result;
}


// ===== 442890 MenuMessageManager<AchievementMsg,1>::Invoke(char const*,int) [clone] =====
int __fastcall MenuMessageManager<AchievementMsg,1>::Invoke(MenuManager *a1)
{
  MenuManager *Instance; // r0
  int result; // r0
  RenderFX *v4; // r5
  void *v5; // r0
  gameswf::character *Char; // r0
  _BYTE v8[4]; // [sp+Ch] [bp-18h] BYREF
  int v9; // [sp+10h] [bp-14h]
  int v10; // [sp+14h] [bp-10h]
  int v11; // [sp+18h] [bp-Ch]
  int v12; // [sp+1Ch] [bp-8h]

  Instance = (MenuManager *)MenuManager::GetInstance(a1);
  result = MenuManager::GetHUDRoot(Instance);
  v4 = (RenderFX *)result;
  if ( result )
  {
    if ( dword_9A54E4 )
    {
      v5 = (void *)dword_9A54E0;
      if ( *(_BYTE *)(dword_9A54E0 + 4) )
      {
LABEL_4:
        Char = (gameswf::character *)DebugCachedCharacter::GetChar((DebugCachedCharacter *)&AchievementMsg::s_NodeCachedChar);
        v8[0] = 0;
        v11 = 0;
        v12 = 0;
        v8[1] = 2;
        v9 = 0;
        v10 = 0;
        RenderFX::InvokeASCallback(v4, Char, (const char *)a1, (const gameswf::as_value *)v8, 1);
        return gameswf::as_value::drop_refs((gameswf::as_value *)v8);
      }
      if ( (*(_DWORD *)dword_9A54E0)-- == 1 )
        gameswf::free_internal(v5);
      dword_9A54E4 = 0;
      dword_9A54E0 = 0;
    }
    DebugCachedCharacter::RefreshCache(
      (DebugCachedCharacter *)&AchievementMsg::s_NodeCachedChar,
      AchievementMsg::s_NodeName[0],
      v4,
      nullptr);
    goto LABEL_4;
  }
  return result;
}


// ===== 442994 NativeSkipAchievementMessage(gameswf::fn_call const&) =====
int *__fastcall NativeSkipAchievementMessage(const gameswf::fn_call *a1)
{
  int *result; // r0

  result = &Singleton<MenuMessageManager<AchievementMsg,1>>::s_inst;
  if ( dword_99FBF4 != dword_99FBE4 )
  {
    std::deque<AchievementMsg>::pop_front(&dword_99FBE4);
    result = (int *)AchievementMsg::s_SkipFuncName;
    if ( AchievementMsg::s_SkipFuncName )
      result = (int *)MenuMessageManager<AchievementMsg,1>::Invoke((MenuManager *)AchievementMsg::s_SkipFuncName);
    if ( dword_99FBF4 != dword_99FBE4 )
      return (int *)MenuMessageManager<AchievementMsg,1>::Invoke((MenuManager *)AchievementMsg::s_StartFuncName);
  }
  return result;
}


// ===== 442a14 MenuMessageManager<TutorialMsg,1>::Invoke(char const*,int) [clone] =====
int __fastcall MenuMessageManager<TutorialMsg,1>::Invoke(MenuManager *a1)
{
  MenuManager *Instance; // r0
  int result; // r0
  RenderFX *v4; // r5
  void *v5; // r0
  gameswf::character *Char; // r0
  _BYTE v8[4]; // [sp+Ch] [bp-18h] BYREF
  int v9; // [sp+10h] [bp-14h]
  int v10; // [sp+14h] [bp-10h]
  int v11; // [sp+18h] [bp-Ch]
  int v12; // [sp+1Ch] [bp-8h]

  Instance = (MenuManager *)MenuManager::GetInstance(a1);
  result = MenuManager::GetHUDRoot(Instance);
  v4 = (RenderFX *)result;
  if ( result )
  {
    if ( dword_9A5444 )
    {
      v5 = (void *)dword_9A5440;
      if ( *(_BYTE *)(dword_9A5440 + 4) )
      {
LABEL_4:
        Char = (gameswf::character *)DebugCachedCharacter::GetChar((DebugCachedCharacter *)&TutorialMsg::s_NodeCachedChar);
        v8[0] = 0;
        v11 = 0;
        v12 = 0;
        v8[1] = 2;
        v9 = 0;
        v10 = 0;
        RenderFX::InvokeASCallback(v4, Char, (const char *)a1, (const gameswf::as_value *)v8, 1);
        return gameswf::as_value::drop_refs((gameswf::as_value *)v8);
      }
      if ( (*(_DWORD *)dword_9A5440)-- == 1 )
        gameswf::free_internal(v5);
      dword_9A5444 = 0;
      dword_9A5440 = 0;
    }
    DebugCachedCharacter::RefreshCache(
      (DebugCachedCharacter *)&TutorialMsg::s_NodeCachedChar,
      TutorialMsg::s_NodeName[0],
      v4,
      nullptr);
    goto LABEL_4;
  }
  return result;
}


// ===== 442b18 MenuMessageManager<DialogMsg,1>::Invoke(char const*,int) [clone] =====
RenderFX *__fastcall MenuMessageManager<DialogMsg,1>::Invoke(MenuManager *a1)
{
  MenuManager *Instance; // r0
  RenderFX *result; // r0
  RenderFX *v4; // r5
  void *v5; // r0
  gameswf::character *Char; // r0
  _BYTE v8[4]; // [sp+Ch] [bp-18h] BYREF
  int v9; // [sp+10h] [bp-14h]
  int v10; // [sp+14h] [bp-10h]
  int v11; // [sp+18h] [bp-Ch]
  int v12; // [sp+1Ch] [bp-8h]

  Instance = (MenuManager *)MenuManager::GetInstance(a1);
  result = (RenderFX *)MenuManager::GetHUDRoot(Instance);
  v4 = result;
  if ( result )
  {
    if ( dword_9A5474 )
    {
      v5 = (void *)dword_9A5470;
      if ( *(_BYTE *)(dword_9A5470 + 4) )
      {
LABEL_4:
        Char = (gameswf::character *)DebugCachedCharacter::GetChar((DebugCachedCharacter *)&DialogMsg::s_NodeCachedChar);
        v8[0] = 0;
        v11 = 0;
        v12 = 0;
        v8[1] = 2;
        v9 = 0;
        v10 = 0;
        RenderFX::InvokeASCallback(v4, Char, (const char *)a1, (const gameswf::as_value *)v8, 1);
        return (RenderFX *)gameswf::as_value::drop_refs((gameswf::as_value *)v8);
      }
      if ( (*(_DWORD *)dword_9A5470)-- == 1 )
        gameswf::free_internal(v5);
      dword_9A5474 = 0;
      dword_9A5470 = 0;
    }
    DebugCachedCharacter::RefreshCache(
      (DebugCachedCharacter *)&DialogMsg::s_NodeCachedChar,
      DialogMsg::s_NodeName[0],
      v4,
      nullptr);
    goto LABEL_4;
  }
  return result;
}


// ===== 442c1c MenuMessageManager<DialogMsg,1>::SkipEnqueuedMessage(int,bool) [clone] =====
int *MenuMessageManager<DialogMsg,1>::SkipEnqueuedMessage()
{
  int *result; // r0

  result = &Singleton<MenuMessageManager<DialogMsg,1>>::s_inst;
  if ( dword_99FB9C != dword_99FB8C )
  {
    std::deque<DialogMsg>::pop_front(&dword_99FB8C);
    result = (int *)DialogMsg::s_SkipFuncName;
    if ( DialogMsg::s_SkipFuncName )
      result = (int *)((int (*)(void))MenuMessageManager<DialogMsg,1>::Invoke)();
    if ( dword_99FB9C != dword_99FB8C )
      return (int *)MenuMessageManager<DialogMsg,1>::Invoke(DialogMsg::s_StartFuncName[0]);
  }
  return result;
}


// ===== 442c9c MenuMessageManager<StatusMsg,4>::Invoke(char const*,int) [clone] =====
RenderFX *__fastcall MenuMessageManager<StatusMsg,4>::Invoke(MenuManager *a1)
{
  MenuManager *Instance; // r0
  RenderFX *result; // r0
  RenderFX *v4; // r5
  void *v5; // r0
  gameswf::character *Char; // r0
  _BYTE v8[4]; // [sp+Ch] [bp-18h] BYREF
  int v9; // [sp+10h] [bp-14h]
  int v10; // [sp+14h] [bp-10h]
  int v11; // [sp+18h] [bp-Ch]
  int v12; // [sp+1Ch] [bp-8h]

  Instance = (MenuManager *)MenuManager::GetInstance(a1);
  result = (RenderFX *)MenuManager::GetHUDRoot(Instance);
  v4 = result;
  if ( result )
  {
    if ( dword_9A53DC )
    {
      v5 = (void *)dword_9A53D8;
      if ( *(_BYTE *)(dword_9A53D8 + 4) )
      {
LABEL_4:
        Char = (gameswf::character *)DebugCachedCharacter::GetChar((DebugCachedCharacter *)&StatusMsg::s_NodeCachedChar);
        v8[0] = 0;
        v11 = 0;
        v12 = 0;
        v8[1] = 2;
        v9 = 0;
        v10 = 0;
        RenderFX::InvokeASCallback(v4, Char, (const char *)a1, (const gameswf::as_value *)v8, 1);
        return (RenderFX *)gameswf::as_value::drop_refs((gameswf::as_value *)v8);
      }
      if ( (*(_DWORD *)dword_9A53D8)-- == 1 )
        gameswf::free_internal(v5);
      dword_9A53DC = 0;
      dword_9A53D8 = 0;
    }
    DebugCachedCharacter::RefreshCache(
      (DebugCachedCharacter *)&StatusMsg::s_NodeCachedChar,
      StatusMsg::s_NodeName[0],
      v4,
      nullptr);
    goto LABEL_4;
  }
  return result;
}


// ===== 442da0 MenuMessageManager<OnlineStatusMsg,1>::Invoke(char const*,int) [clone] =====
int __fastcall MenuMessageManager<OnlineStatusMsg,1>::Invoke(MenuManager *a1)
{
  MenuManager *Instance; // r0
  int result; // r0
  RenderFX *v4; // r5
  void *v5; // r0
  gameswf::character *Char; // r0
  _BYTE v8[4]; // [sp+Ch] [bp-18h] BYREF
  int v9; // [sp+10h] [bp-14h]
  int v10; // [sp+14h] [bp-10h]
  int v11; // [sp+18h] [bp-Ch]
  int v12; // [sp+1Ch] [bp-8h]

  Instance = (MenuManager *)MenuManager::GetInstance(a1);
  result = MenuManager::GetHUDRoot(Instance);
  v4 = (RenderFX *)result;
  if ( result )
  {
    if ( dword_9A5410 )
    {
      v5 = (void *)dword_9A540C;
      if ( *(_BYTE *)(dword_9A540C + 4) )
      {
LABEL_4:
        Char = (gameswf::character *)DebugCachedCharacter::GetChar((DebugCachedCharacter *)&OnlineStatusMsg::s_NodeCachedChar);
        v8[0] = 0;
        v11 = 0;
        v12 = 0;
        v8[1] = 2;
        v9 = 0;
        v10 = 0;
        RenderFX::InvokeASCallback(v4, Char, (const char *)a1, (const gameswf::as_value *)v8, 1);
        return gameswf::as_value::drop_refs((gameswf::as_value *)v8);
      }
      if ( (*(_DWORD *)dword_9A540C)-- == 1 )
        gameswf::free_internal(v5);
      dword_9A5410 = 0;
      dword_9A540C = 0;
    }
    DebugCachedCharacter::RefreshCache(
      (DebugCachedCharacter *)&OnlineStatusMsg::s_NodeCachedChar,
      OnlineStatusMsg::s_NodeName[0],
      v4,
      nullptr);
    goto LABEL_4;
  }
  return result;
}


// ===== 442ea4 NativeStopMessage(gameswf::fn_call const&) =====
void __fastcall NativeStopMessage(const gameswf::fn_call *a1)
{
  char *v2; // r0
  char *M_data; // r8
  size_t v4; // r7
  CMessaging *IsLocalPlayerHosting; // r0
  CMessaging *v6; // r7
  bool v7; // r2
  CMessage *Message; // r0
  int v9; // r1
  std::priv::_String_base<char,std::allocator<char> > v10; // [sp+1Ch] [bp-20h] BYREF

  if ( *((int *)a1 + 4) > 0
    && (unsigned __int8)(*(_BYTE *)(**((_DWORD **)a1 + 3) + 12 * *((_DWORD *)a1 + 5) + 1) - 3) <= 1u )
  {
    if ( (`guard variable for'NativeStopMessage(gameswf::fn_call const&)::statusMsg & 1) == 0
      && _cxa_guard_acquire(&`guard variable for'NativeStopMessage(gameswf::fn_call const&)::statusMsg) )
    {
      std::string::string((int)&NativeStopMessage(gameswf::fn_call const&)::statusMsg, "status");
      _cxa_guard_release(&`guard variable for'NativeStopMessage(gameswf::fn_call const&)::statusMsg);
      _aeabi_atexit(&NativeStopMessage(gameswf::fn_call const&)::statusMsg, std::string::~string, &_dso_handle);
    }
    if ( (`guard variable for'NativeStopMessage(gameswf::fn_call const&)::tutorialMsg & 1) == 0
      && _cxa_guard_acquire(&`guard variable for'NativeStopMessage(gameswf::fn_call const&)::tutorialMsg) )
    {
      std::string::string((int)&NativeStopMessage(gameswf::fn_call const&)::tutorialMsg, "tutorial");
      _cxa_guard_release(&`guard variable for'NativeStopMessage(gameswf::fn_call const&)::tutorialMsg);
      _aeabi_atexit(&NativeStopMessage(gameswf::fn_call const&)::tutorialMsg, std::string::~string, &_dso_handle);
    }
    if ( (`guard variable for'NativeStopMessage(gameswf::fn_call const&)::dialogMsg & 1) == 0
      && _cxa_guard_acquire(&`guard variable for'NativeStopMessage(gameswf::fn_call const&)::dialogMsg) )
    {
      std::string::string((int)&NativeStopMessage(gameswf::fn_call const&)::dialogMsg, "dialog");
      _cxa_guard_release(&`guard variable for'NativeStopMessage(gameswf::fn_call const&)::dialogMsg);
      _aeabi_atexit(&NativeStopMessage(gameswf::fn_call const&)::dialogMsg, std::string::~string, &_dso_handle);
    }
    if ( (`guard variable for'NativeStopMessage(gameswf::fn_call const&)::questMsg & 1) == 0
      && _cxa_guard_acquire(&`guard variable for'NativeStopMessage(gameswf::fn_call const&)::questMsg) )
    {
      std::string::string((int)&NativeStopMessage(gameswf::fn_call const&)::questMsg, "quest");
      _cxa_guard_release(&`guard variable for'NativeStopMessage(gameswf::fn_call const&)::questMsg);
      _aeabi_atexit(&NativeStopMessage(gameswf::fn_call const&)::questMsg, std::string::~string, &_dso_handle);
    }
    if ( (`guard variable for'NativeStopMessage(gameswf::fn_call const&)::onlineMsg & 1) == 0
      && _cxa_guard_acquire(&`guard variable for'NativeStopMessage(gameswf::fn_call const&)::onlineMsg) )
    {
      std::string::string((int)&NativeStopMessage(gameswf::fn_call const&)::onlineMsg, "online");
      _cxa_guard_release(&`guard variable for'NativeStopMessage(gameswf::fn_call const&)::onlineMsg);
      _aeabi_atexit(&NativeStopMessage(gameswf::fn_call const&)::onlineMsg, std::string::~string, &_dso_handle);
    }
    v2 = (char *)gameswf::as_value::to_xstring((gameswf::as_value *)(**((_DWORD **)a1 + 3) + 12 * *((_DWORD *)a1 + 5)));
    std::string::string((int)&v10, v2);
    PlayerManager::GetLocalPlayer((PlayerManager *)dword_99F76C, 0, 0);
    M_data = v10._M_start_of_storage._M_data;
    v4 = v10._M_finish - v10._M_start_of_storage._M_data;
    if ( v10._M_finish - v10._M_start_of_storage._M_data == dword_9A5B8C - dword_9A5B90
      && !memcmp(
            v10._M_start_of_storage._M_data,
            (const void *)dword_9A5B90,
            v10._M_finish - v10._M_start_of_storage._M_data) )
    {
      if ( dword_99FAA0 != dword_99FA90 )
      {
        std::deque<StatusMsg>::pop_front(&dword_99FA90);
        if ( StatusMsg::s_SkipFuncName )
          MenuMessageManager<StatusMsg,4>::Invoke((MenuManager *)StatusMsg::s_SkipFuncName);
        if ( dword_99FAA0 != dword_99FA90 )
          MenuMessageManager<StatusMsg,4>::Invoke((MenuManager *)StatusMsg::s_StartFuncName[0]);
      }
      goto LABEL_41;
    }
    if ( v4 == dword_9A5BA8 - dword_9A5BAC && !memcmp(M_data, (const void *)dword_9A5BAC, v4) )
    {
      if ( dword_99FB70 != dword_99FB60 )
      {
        if ( dword_99FB60 == dword_99FB68 - 8 )
        {
          if ( dword_99FB64 )
            std::__node_alloc::deallocate((std::__node_alloc *)dword_99FB64, &dword_80, dword_99FB60);
          dword_99FB6C += 4;
          v9 = *(_DWORD *)dword_99FB6C + 128;
          dword_99FB60 = *(_DWORD *)dword_99FB6C;
          dword_99FB68 = v9;
          dword_99FB64 = dword_99FB60;
        }
        else
        {
          dword_99FB60 += 8;
        }
        if ( TutorialMsg::s_SkipFuncName[0] )
          ((void (*)(void))MenuMessageManager<TutorialMsg,1>::Invoke)();
        if ( dword_99FB70 != dword_99FB60 )
          MenuMessageManager<TutorialMsg,1>::Invoke(TutorialMsg::s_StartFuncName[0]);
      }
      goto LABEL_41;
    }
    if ( std::operator==<char>(&v10, &NativeStopMessage(gameswf::fn_call const&)::dialogMsg) )
    {
      if ( *(_BYTE *)(GetOnline() + 5) )
      {
        IsLocalPlayerHosting = (CMessaging *)PlayerManager::IsLocalPlayerHosting((PlayerManager *)dword_99F76C);
        if ( !IsLocalPlayerHosting )
        {
LABEL_41:
          std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v10);
          return;
        }
        v6 = (CMessaging *)CMessaging::Get(IsLocalPlayerHosting);
        Message = (CMessage *)CMessage::CreateMessage((CMessage *)"CMsgScriptCmd", (const char *)&dword_0 + 1, v7);
        *((_DWORD *)Message + 20) = 3;
        *((_DWORD *)Message + 22) = -1;
        *((_DWORD *)Message + 21) = -1;
        CMessaging::SendMsg(v6, Message);
      }
    }
    else if ( !std::operator==<char>(&v10, &NativeStopMessage(gameswf::fn_call const&)::questMsg) )
    {
      if ( std::operator==<char>(&v10, &NativeStopMessage(gameswf::fn_call const&)::onlineMsg)
        && dword_99FB44 != dword_99FB34 )
      {
        std::deque<OnlineStatusMsg>::pop_front(&dword_99FB34);
        if ( OnlineStatusMsg::s_SkipFuncName )
          ((void (*)(void))MenuMessageManager<OnlineStatusMsg,1>::Invoke)();
        if ( dword_99FB44 != dword_99FB34 )
          MenuMessageManager<OnlineStatusMsg,1>::Invoke(OnlineStatusMsg::s_StartFuncName[0]);
      }
      goto LABEL_41;
    }
    MenuMessageManager<DialogMsg,1>::SkipEnqueuedMessage();
    goto LABEL_41;
  }
}


// ===== 44344c NativeGetPlayerRanking(gameswf::fn_call const&) =====
Elf32_Dyn **__fastcall NativeGetPlayerRanking(const gameswf::fn_call *a1)
{
  int v1; // r3
  int v2; // r4
  int v3; // r0
  gameswf::as_object *v4; // r5
  double v5; // r0
  void (__fastcall *v6)(gameswf::as_object *, _BYTE *, _BYTE *); // r11
  int StatValue; // r0
  int v9; // [sp+8h] [bp-5Ch]
  _BYTE v11[4]; // [sp+1Ch] [bp-48h] BYREF
  double v12; // [sp+20h] [bp-44h]
  double v13; // [sp+28h] [bp-3Ch]
  std::priv::_String_base<char,std::allocator<char> > v14; // [sp+30h] [bp-34h] BYREF
  _BYTE v15[8]; // [sp+48h] [bp-1Ch] BYREF
  void *p; // [sp+54h] [bp-10h]

  v1 = **((_DWORD **)a1 + 3) + 12 * *((_DWORD *)a1 + 5);
  v2 = 0;
  if ( *(_BYTE *)(v1 + 1) == 5 )
    v3 = *(_DWORD *)(v1 + 4);
  else
    v3 = 0;
  v4 = (gameswf::as_object *)gameswf::cast_to<gameswf::as_object>(v3);
  LODWORD(v5) = gameswf::as_value::to_number((gameswf::as_value *)(**((_DWORD **)a1 + 3) + 12
                                                                                         * (*((_DWORD *)a1 + 5) - 1)));
  v9 = (int)v5;
  do
  {
    while ( 1 )
    {
      v6 = *(void (__fastcall **)(gameswf::as_object *, _BYTE *, _BYTE *))(*(_DWORD *)v4 + 28);
      PlayerStatManager::GetStatStr((int)&v14, v2);
      gameswf::tu_string::tu_string((gameswf::tu_string *)v15, v14._M_start_of_storage._M_data);
      StatValue = PlayerStatManager::GetStatValue((int)&Singleton<PlayerStatManager>::s_inst, v2, v9);
      v11[1] = 2;
      v11[0] = 0;
      v13 = (double)StatValue;
      v12 = (double)StatValue;
      v6(v4, v15, v11);
      gameswf::as_value::drop_refs((gameswf::as_value *)v11);
      if ( v15[0] == -1 )
        break;
      ++v2;
      std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v14);
      if ( v2 == 7 )
        goto LABEL_8;
    }
    gameswf::free_internal(p);
    ++v2;
    std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v14);
  }
  while ( v2 != 7 );
LABEL_8:
  gameswf::as_value::set_as_object(*(gameswf::as_value **)a1, v4);
  return &__GLOBAL_OFFSET_TABLE_;
}


// ===== 4435e4 NativeGetWorldMapLocations(gameswf::fn_call const&) =====
int __fastcall NativeGetWorldMapLocations(const gameswf::fn_call *a1)
{
  int v1; // r3
  int v2; // r0
  double v3; // r0
  unsigned int v4; // r2
  unsigned int v5; // r7
  gameswf::as_object *v6; // r4
  void (__fastcall *v7)(gameswf::as_object *, _BYTE *, _BYTE *); // r11
  const char *String; // r0
  void (__fastcall *v9)(gameswf::as_object *, _BYTE *, _BYTE *); // r11
  int v10; // r0
  void (__fastcall *v11)(gameswf::as_object *, _BYTE *, _BYTE *); // r11
  const char *v12; // r1
  void (__fastcall *v13)(gameswf::as_object *, _BYTE *, _BYTE *); // r11
  int v14; // r0
  void (__fastcall *v15)(gameswf::as_object *, _BYTE *, _BYTE *); // r11
  const char *v16; // r0
  void (__fastcall *v17)(gameswf::as_object *, _BYTE *, _BYTE *); // r6
  char FastTravelIdUnlocked; // r0
  int v19; // r4
  gameswf::player *v20; // r11
  int *v21; // r6
  _BYTE *v22; // r0
  gameswf::as_object *v26; // [sp+3Ch] [bp-110h]
  Character *PlayerChar; // [sp+44h] [bp-108h]
  _BYTE v28[4]; // [sp+6Ch] [bp-E0h] BYREF
  gameswf::as_object *v29; // [sp+70h] [bp-DCh]
  _BYTE v30[12]; // [sp+78h] [bp-D4h] BYREF
  _BYTE v31[12]; // [sp+84h] [bp-C8h] BYREF
  _BYTE v32[4]; // [sp+90h] [bp-BCh] BYREF
  double v33; // [sp+94h] [bp-B8h]
  _BYTE v34[12]; // [sp+9Ch] [bp-B0h] BYREF
  _BYTE v35[4]; // [sp+A8h] [bp-A4h] BYREF
  double v36; // [sp+ACh] [bp-A0h]
  _BYTE v37[12]; // [sp+B4h] [bp-98h] BYREF
  double v38; // [sp+C0h] [bp-8Ch]
  _BYTE v39[8]; // [sp+CCh] [bp-80h] BYREF
  void *p; // [sp+D8h] [bp-74h]
  _BYTE v41[8]; // [sp+E0h] [bp-6Ch] BYREF
  void *v42; // [sp+ECh] [bp-60h]
  _BYTE v43[8]; // [sp+F4h] [bp-58h] BYREF
  void *v44; // [sp+100h] [bp-4Ch]
  _BYTE v45[8]; // [sp+108h] [bp-44h] BYREF
  void *v46; // [sp+114h] [bp-38h]
  _BYTE v47[8]; // [sp+11Ch] [bp-30h] BYREF
  void *v48; // [sp+128h] [bp-24h]
  _BYTE v49[8]; // [sp+130h] [bp-1Ch] BYREF
  void *v50; // [sp+13Ch] [bp-10h]

  v1 = **((_DWORD **)a1 + 3) + 12 * *((_DWORD *)a1 + 5);
  if ( *(_BYTE *)(v1 + 1) == 5 )
    v2 = *(_DWORD *)(v1 + 4);
  else
    v2 = 0;
  v26 = (gameswf::as_object *)gameswf::cast_to<gameswf::as_array>(v2);
  LODWORD(v3) = gameswf::as_value::to_number((gameswf::as_value *)(**((_DWORD **)a1 + 3) + 12
                                                                                         * (*((_DWORD *)a1 + 5) - 1)));
  PlayerChar = (Character *)NativeGetPlayerChar((int)v3, 0);
  if ( PlayerChar && Arrays::FastTravelList::size )
  {
    v4 = 0;
    v5 = 0;
    do
    {
      v19 = *((_DWORD *)a1 + 3);
      v20 = *(gameswf::player **)(v19 + 104);
      v21 = (int *)(Arrays::FastTravelList::members + 28 * v4);
      if ( v20 )
      {
        v22 = *(_BYTE **)(v19 + 100);
        if ( !v22[4] )
        {
          if ( (*(_DWORD *)v22)-- == 1 )
            gameswf::free_internal(v22);
          *(_DWORD *)(v19 + 104) = 0;
          *(_DWORD *)(v19 + 100) = 0;
          v20 = nullptr;
        }
      }
      v6 = (gameswf::as_object *)operator new(56, 0);
      gameswf::as_object::as_object(v6, v20);
      v7 = *(void (__fastcall **)(gameswf::as_object *, _BYTE *, _BYTE *))(*(_DWORD *)v6 + 28);
      gameswf::tu_string::tu_string((gameswf::tu_string *)v49, "Name");
      String = (const char *)StringManager::getString((StringManager *)dword_99F760, v21[6]);
      v37[0] = 0;
      v37[1] = 0;
      gameswf::as_value::set_string((gameswf::as_value *)v37, String);
      v7(v6, v49, v37);
      gameswf::as_value::drop_refs((gameswf::as_value *)v37);
      if ( v49[0] == -1 )
        gameswf::free_internal(v50);
      v9 = *(void (__fastcall **)(gameswf::as_object *, _BYTE *, _BYTE *))(*(_DWORD *)v6 + 28);
      gameswf::tu_string::tu_string((gameswf::tu_string *)v47, "Importance");
      v10 = v21[5];
      v35[1] = 2;
      v35[0] = 0;
      v38 = (double)v10;
      v36 = (double)v10;
      v9(v6, v47, v35);
      gameswf::as_value::drop_refs((gameswf::as_value *)v35);
      if ( v47[0] == -1 )
        gameswf::free_internal(v48);
      v11 = *(void (__fastcall **)(gameswf::as_object *, _BYTE *, _BYTE *))(*(_DWORD *)v6 + 28);
      gameswf::tu_string::tu_string((gameswf::tu_string *)v45, "LevelName");
      v12 = (const char *)v21[4];
      v34[0] = 0;
      v34[1] = 0;
      gameswf::as_value::set_string((gameswf::as_value *)v34, v12);
      v11(v6, v45, v34);
      gameswf::as_value::drop_refs((gameswf::as_value *)v34);
      if ( v45[0] == -1 )
        gameswf::free_internal(v46);
      v13 = *(void (__fastcall **)(gameswf::as_object *, _BYTE *, _BYTE *))(*(_DWORD *)v6 + 28);
      gameswf::tu_string::tu_string((gameswf::tu_string *)v43, "EntryPointId");
      v14 = v21[2];
      v32[1] = 2;
      v32[0] = 0;
      v38 = (double)v14;
      v33 = (double)v14;
      v13(v6, v43, v32);
      gameswf::as_value::drop_refs((gameswf::as_value *)v32);
      if ( v43[0] == -1 )
        gameswf::free_internal(v44);
      v15 = *(void (__fastcall **)(gameswf::as_object *, _BYTE *, _BYTE *))(*(_DWORD *)v6 + 28);
      gameswf::tu_string::tu_string((gameswf::tu_string *)v41, "Description");
      v16 = (const char *)StringManager::getString((StringManager *)dword_99F760, v21[1]);
      v31[0] = 0;
      v31[1] = 0;
      gameswf::as_value::set_string((gameswf::as_value *)v31, v16);
      v15(v6, v41, v31);
      gameswf::as_value::drop_refs((gameswf::as_value *)v31);
      if ( v41[0] == -1 )
        gameswf::free_internal(v42);
      v17 = *(void (__fastcall **)(gameswf::as_object *, _BYTE *, _BYTE *))(*(_DWORD *)v6 + 28);
      gameswf::tu_string::tu_string((gameswf::tu_string *)v39, "Visible");
      FastTravelIdUnlocked = Character::SG_GetFastTravelIdUnlocked(PlayerChar, v5, -1);
      v30[1] = 1;
      v30[4] = FastTravelIdUnlocked;
      v30[0] = 0;
      v17(v6, v39, v30);
      gameswf::as_value::drop_refs((gameswf::as_value *)v30);
      if ( v39[0] == -1 )
        gameswf::free_internal(p);
      v28[1] = 5;
      v28[0] = 0;
      v29 = v6;
      gameswf::ref_counted::add_ref(v6);
      gameswf::as_array::push(v26, (const gameswf::as_value *)v28);
      gameswf::as_value::drop_refs((gameswf::as_value *)v28);
      v4 = ++v5;
    }
    while ( Arrays::FastTravelList::size > v5 );
  }
  gameswf::as_value::set_as_object(*(gameswf::as_value **)a1, v26);
  return 16556;
}


// ===== 443b18 NativeGetQuestIDsInRange(gameswf::fn_call const&) =====
int __fastcall NativeGetQuestIDsInRange(const gameswf::fn_call *a1)
{
  const gameswf::fn_call *v1; // r9
  int v2; // r3
  int v3; // r0
  double v4; // r6
  int v5; // r1
  int v6; // r1
  double v7; // r10
  int v8; // r1
  char *v9; // r4
  int v10; // r6
  const char *v11; // r0
  bool (*QuestFunctor)(const Quest *); // r5
  int NumQuests; // r6
  int v14; // r4
  int QuestByID; // r0
  bool v16; // cc
  int v17; // r7
  int NextQuest; // r0
  bool v19; // cc
  char *v20; // r0
  int v21; // r1
  unsigned int v22; // r7
  int v23; // r4
  unsigned int v24; // r6
  unsigned int v25; // r3
  int v26; // r5
  const char *Title; // r8
  const char *v28; // r0
  int v29; // r2
  int v30; // r11
  gameswf::as_object *v31; // r4
  void (__fastcall *v32)(gameswf::as_object *, _BYTE *, _BYTE *); // r9
  const char *v33; // r0
  void (__fastcall *v34)(gameswf::as_object *, _BYTE *, _BYTE *); // r9
  int v35; // r0
  void (__fastcall *v36)(gameswf::as_object *, _BYTE *, _BYTE *); // r9
  int CurrentQuest; // r0
  int v38; // r3
  int v39; // r4
  gameswf::player *v40; // r8
  _BYTE *v41; // r0
  size_t v43; // r1
  unsigned int v45; // r2
  unsigned int v46; // r3
  char *v47; // r0
  char *v48; // r3
  size_t v49; // r10
  int *v50; // r10
  char *v51; // r0
  char *v52; // r10
  char *v53; // [sp+4h] [bp-D0h]
  char *v54; // [sp+4h] [bp-D0h]
  double v55; // [sp+8h] [bp-CCh]
  Character *PlayerChar; // [sp+28h] [bp-ACh]
  const gameswf::fn_call *v57; // [sp+2Ch] [bp-A8h]
  gameswf::as_array *v58; // [sp+30h] [bp-A4h]
  _BYTE v59[4]; // [sp+4Ch] [bp-88h] BYREF
  gameswf::as_object *v60; // [sp+50h] [bp-84h]
  _BYTE v61[12]; // [sp+58h] [bp-7Ch] BYREF
  _BYTE v62[4]; // [sp+64h] [bp-70h] BYREF
  double v63; // [sp+68h] [bp-6Ch]
  _BYTE v64[12]; // [sp+70h] [bp-64h] BYREF
  void *__p; // [sp+7Ch] [bp-58h]
  char *v66; // [sp+80h] [bp-54h]
  char *v67; // [sp+84h] [bp-50h] BYREF
  double v68; // [sp+88h] [bp-4Ch] BYREF
  _BYTE v69[8]; // [sp+90h] [bp-44h] BYREF
  void *p; // [sp+9Ch] [bp-38h]
  _BYTE v71[8]; // [sp+A4h] [bp-30h] BYREF
  void *v72; // [sp+B0h] [bp-24h]
  _BYTE v73[8]; // [sp+B8h] [bp-1Ch] BYREF
  void *v74; // [sp+C4h] [bp-10h]

  v1 = a1;
  v2 = **((_DWORD **)a1 + 3) + 12 * *((_DWORD *)a1 + 5);
  if ( *(_BYTE *)(v2 + 1) == 5 )
    v3 = *(_DWORD *)(v2 + 4);
  else
    v3 = 0;
  v58 = (gameswf::as_array *)gameswf::cast_to<gameswf::as_array>(v3);
  LODWORD(v4) = gameswf::as_value::to_number((gameswf::as_value *)(**((_DWORD **)v1 + 3) + 12
                                                                                         * (*((_DWORD *)v1 + 5) - 1)));
  HIDWORD(v4) = v5;
  LODWORD(v7) = gameswf::as_value::to_number((gameswf::as_value *)(**((_DWORD **)v1 + 3) + 12
                                                                                         * (*((_DWORD *)v1 + 5) - 2)));
  HIDWORD(v7) = v6;
  LODWORD(v55) = gameswf::as_value::to_number((gameswf::as_value *)(**((_DWORD **)v1 + 3)
                                                                  + 12 * (*((_DWORD *)v1 + 5) - 3)));
  HIDWORD(v55) = v8;
  v9 = (char *)gameswf::as_value::to_tu_string((gameswf::as_value *)(**((_DWORD **)v1 + 3)
                                                                   + 12 * (*((_DWORD *)v1 + 5) - 4)));
  PlayerChar = (Character *)NativeGetPlayerChar((int)v4, 0);
  if ( PlayerChar )
  {
    if ( *v9 == -1 )
      v11 = *((const char **)v9 + 3);
    else
      v11 = v9 + 1;
    QuestFunctor = (bool (*)(const Quest *))GetQuestFunctor(v11);
    NumQuests = Character::SG_GetNumQuests(PlayerChar, QuestFunctor, -1);
    v14 = (int)v7 & ~((int)v7 >> 31);
    if ( NumQuests >= (int)v55 )
      NumQuests = (int)v55;
    v67 = nullptr;
    __p = nullptr;
    v66 = nullptr;
    QuestByID = Character::SG_GetQuestByID(PlayerChar, QuestFunctor, (int)v7 & ~((int)v7 >> 31), -1);
    v16 = QuestByID < 0;
    if ( QuestByID )
      v16 = v14 < NumQuests;
    v17 = QuestByID;
    if ( v16 )
    {
      do
      {
        if ( v66 == v67 )
        {
          v45 = (v66 - (_BYTE *)__p) >> 2;
          if ( v45 )
            v46 = 2 * v45;
          else
            v46 = 1;
          if ( v46 > 0x3FFFFFFF || v45 > v46 )
            v46 = 0x3FFFFFFF;
          LODWORD(v68) = v46;
          v47 = (char *)std::allocator<Quest *>::_M_allocate(&v67, v46, &v68);
          v48 = v47;
          v49 = v66 - (_BYTE *)__p;
          if ( v66 == __p )
          {
            v50 = (int *)v47;
          }
          else
          {
            v53 = v47;
            v51 = (char *)memmove(v47, __p, v49);
            v48 = v53;
            v50 = (int *)&v51[v49];
          }
          *v50 = v17;
          v52 = (char *)(v50 + 1);
          if ( __p )
          {
            v54 = v48;
            if ( ((v67 - (_BYTE *)__p) & 0xFFFFFFFC) > 0x80 )
              CustomFree(__p);
            else
              __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(__p, (v67 - (_BYTE *)__p) & 0xFFFFFFFC);
            v48 = v54;
          }
          __p = v48;
          v66 = v52;
          v67 = &v48[4 * LODWORD(v68)];
        }
        else
        {
          *(_DWORD *)v66 = v17;
          v66 += 4;
        }
        NextQuest = Character::SG_GetNextQuest(PlayerChar, QuestFunctor, *(_DWORD *)(v17 + 8) + 1, -1);
        ++v14;
        v19 = NextQuest < 0;
        if ( NextQuest )
          v19 = v14 < NumQuests;
        v17 = NextQuest;
      }
      while ( v19 );
    }
    v20 = (char *)__p;
    v21 = v66 - (_BYTE *)__p;
    if ( !((unsigned int)(v66 - (_BYTE *)__p) >> 2) )
      goto LABEL_65;
    v22 = 1;
    do
    {
      v23 = 0;
      v24 = 0;
      while ( 1 )
      {
        v25 = v21 >> 2;
        if ( (v21 >> 2) - 1 <= v24 )
          break;
        v26 = v23 + 4;
        Title = (const char *)Quest::GetTitle(*(Quest **)&v20[v23 + 4]);
        ++v24;
        v28 = (const char *)Quest::GetTitle(*(Quest **)((char *)__p + v23));
        if ( LC_API_STRCMP_0(Title, v28) < 0 )
        {
          v29 = *(_DWORD *)((char *)__p + v26);
          *(_DWORD *)((char *)__p + v26) = *(_DWORD *)((char *)__p + v23);
          *(_DWORD *)((char *)__p + v23) = v29;
        }
        v20 = (char *)__p;
        v23 += 4;
        v21 = v66 - (_BYTE *)__p;
      }
      ++v22;
    }
    while ( v22 <= v25 );
    if ( v25 )
    {
      v30 = 0;
      v10 = 0;
      v57 = v1;
      do
      {
        ++v10;
        v39 = *((_DWORD *)v57 + 3);
        v40 = *(gameswf::player **)(v39 + 104);
        if ( v40 )
        {
          v41 = *(_BYTE **)(v39 + 100);
          if ( !v41[4] )
          {
            if ( (*(_DWORD *)v41)-- == 1 )
              gameswf::free_internal(v41);
            *(_DWORD *)(v39 + 104) = 0;
            *(_DWORD *)(v39 + 100) = 0;
            v40 = nullptr;
          }
        }
        v31 = (gameswf::as_object *)operator new(56, 0);
        gameswf::as_object::as_object(v31, v40);
        v32 = *(void (__fastcall **)(gameswf::as_object *, _BYTE *, _BYTE *))(*(_DWORD *)v31 + 28);
        gameswf::tu_string::tu_string((gameswf::tu_string *)v73, "QuestTitle");
        v33 = (const char *)Quest::GetTitle(*((Quest **)__p + v30));
        v64[0] = 0;
        v64[1] = 0;
        gameswf::as_value::set_string((gameswf::as_value *)v64, v33);
        v32(v31, v73, v64);
        gameswf::as_value::drop_refs((gameswf::as_value *)v64);
        if ( v73[0] == -1 )
          gameswf::free_internal(v74);
        v34 = *(void (__fastcall **)(gameswf::as_object *, _BYTE *, _BYTE *))(*(_DWORD *)v31 + 28);
        gameswf::tu_string::tu_string((gameswf::tu_string *)v71, "QuestID");
        v35 = *(_DWORD *)(*((_DWORD *)__p + v30) + 8);
        v62[1] = 2;
        v62[0] = 0;
        v68 = (double)v35;
        v63 = (double)v35;
        v34(v31, v71, v62);
        gameswf::as_value::drop_refs((gameswf::as_value *)v62);
        if ( v71[0] == -1 )
          gameswf::free_internal(v72);
        v36 = *(void (__fastcall **)(gameswf::as_object *, _BYTE *, _BYTE *))(*(_DWORD *)v31 + 28);
        gameswf::tu_string::tu_string((gameswf::tu_string *)v69, "IsCurrent");
        CurrentQuest = Character::SG_GetCurrentQuest(PlayerChar, -1);
        v38 = *(_DWORD *)(*((_DWORD *)__p + v30) + 8);
        v61[1] = 1;
        v61[0] = 0;
        v61[4] = CurrentQuest == v38;
        v36(v31, v69, v61);
        gameswf::as_value::drop_refs((gameswf::as_value *)v61);
        if ( v69[0] == -1 )
          gameswf::free_internal(p);
        v59[1] = 5;
        v59[0] = 0;
        v60 = v31;
        gameswf::ref_counted::add_ref(v31);
        gameswf::as_array::push(v58, (const gameswf::as_value *)v59);
        gameswf::as_value::drop_refs((gameswf::as_value *)v59);
        v20 = (char *)__p;
        v30 = v10;
      }
      while ( v10 < (unsigned int)((v66 - (_BYTE *)__p) >> 2) );
      v1 = v57;
    }
    else
    {
LABEL_65:
      v10 = 0;
    }
    if ( v20 )
    {
      v43 = (v67 - v20) & 0xFFFFFFFC;
      if ( v43 > 0x80 )
        CustomFree(v20);
      else
        __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v20, v43);
    }
  }
  else
  {
    v10 = 0;
  }
  return gameswf::as_value::set_double(*(gameswf::as_value **)v1, (double)v10);
}


// ===== 444168 NativeMerchantGetItemsListForSlot(gameswf::fn_call const&) =====
int __fastcall NativeMerchantGetItemsListForSlot(const gameswf::fn_call *a1)
{
  int v2; // r1
  int v3; // r4
  int v4; // r0
  double v5; // r8
  int v6; // r1
  char *v7; // r10
  int v8; // r1
  Character *v9; // r0
  Character *v10; // r4
  int Constant; // r0
  char *v13; // r5
  char *v14; // r7
  int v15; // r4
  int v16; // r3
  int v17; // r2
  int v18; // r2
  char *j; // r4
  char *v20; // r1
  int v21; // r2
  int v22; // r3
  ItemInstance **v23; // r4
  char *v24; // r3
  ItemInstance *v25; // r5
  int Color; // r0
  int v27; // r8
  gameswf::player *v28; // r10
  _BYTE *v29; // r0
  gameswf::as_object *v30; // r8
  void (__fastcall *v31)(gameswf::as_object *, _BYTE *, _BYTE *); // r9
  void (__fastcall *v32)(gameswf::as_object *, _BYTE *, _BYTE *); // r10
  int v33; // r0
  void (__fastcall *v34)(gameswf::as_object *, _BYTE *, _BYTE *); // r10
  bool v35; // r3
  void (__fastcall *v36)(gameswf::as_object *, _BYTE *, _BYTE *); // r10
  bool v37; // r3
  void (__fastcall *v38)(gameswf::as_object *, _BYTE *, _BYTE *); // r10
  char v39; // r3
  void (__fastcall *v40)(gameswf::as_object *, _BYTE *, _BYTE *); // r10
  char *v42; // r4
  char *v43; // r1
  int v44; // r2
  int v45; // r3
  char *i; // r10
  char *v47; // r4
  char *v48; // r5
  _DWORD *v49; // r3
  int v50; // r0
  char *v51; // r2
  char *v52; // [sp+0h] [bp-254h]
  char *v53; // [sp+0h] [bp-254h]
  int v54; // [sp+4h] [bp-250h]
  double v55; // [sp+10h] [bp-244h]
  gameswf::as_object *v56; // [sp+1Ch] [bp-238h]
  double format; // [sp+20h] [bp-234h]
  Character *PlayerChar; // [sp+40h] [bp-214h]
  int v59; // [sp+44h] [bp-210h]
  _BOOL4 v60; // [sp+4Ch] [bp-208h]
  int v61; // [sp+50h] [bp-204h] BYREF
  int v62; // [sp+54h] [bp-200h]
  int v63; // [sp+58h] [bp-1FCh]
  _BYTE v64[4]; // [sp+5Ch] [bp-1F8h] BYREF
  gameswf::as_object *v65; // [sp+60h] [bp-1F4h]
  _BYTE v66[12]; // [sp+68h] [bp-1ECh] BYREF
  _BYTE v67[12]; // [sp+74h] [bp-1E0h] BYREF
  _BYTE v68[12]; // [sp+80h] [bp-1D4h] BYREF
  _BYTE v69[12]; // [sp+8Ch] [bp-1C8h] BYREF
  _BYTE v70[4]; // [sp+98h] [bp-1BCh] BYREF
  double v71; // [sp+9Ch] [bp-1B8h]
  _BYTE v72[12]; // [sp+A4h] [bp-1B0h] BYREF
  _BYTE v73[12]; // [sp+B0h] [bp-1A4h] BYREF
  char *v74; // [sp+BCh] [bp-198h] BYREF
  char *v75; // [sp+C0h] [bp-194h]
  int v76; // [sp+C4h] [bp-190h]
  double v77; // [sp+C8h] [bp-18Ch]
  char s[256]; // [sp+D4h] [bp-180h] BYREF
  _BYTE v79[8]; // [sp+1D4h] [bp-80h] BYREF
  void *p; // [sp+1E0h] [bp-74h]
  _BYTE v81[8]; // [sp+1E8h] [bp-6Ch] BYREF
  void *v82; // [sp+1F4h] [bp-60h]
  _BYTE v83[8]; // [sp+1FCh] [bp-58h] BYREF
  void *v84; // [sp+208h] [bp-4Ch]
  _BYTE v85[8]; // [sp+210h] [bp-44h] BYREF
  void *v86; // [sp+21Ch] [bp-38h]
  _BYTE v87[8]; // [sp+224h] [bp-30h] BYREF
  void *v88; // [sp+230h] [bp-24h]
  _BYTE v89[8]; // [sp+238h] [bp-1Ch] BYREF
  void *v90; // [sp+244h] [bp-10h]

  LODWORD(format) = gameswf::as_value::to_number((gameswf::as_value *)(**((_DWORD **)a1 + 3) + 12 * *((_DWORD *)a1 + 5)));
  HIDWORD(format) = v2;
  v3 = **((_DWORD **)a1 + 3) + 12 * (*((_DWORD *)a1 + 5) - 1);
  if ( *(_BYTE *)(v3 + 1) == 5 )
    v4 = *(_DWORD *)(v3 + 4);
  else
    v4 = 0;
  v56 = (gameswf::as_object *)gameswf::cast_to<gameswf::as_array>(v4);
  LODWORD(v5) = gameswf::as_value::to_number((gameswf::as_value *)(**((_DWORD **)a1 + 3) + 12
                                                                                         * (*((_DWORD *)a1 + 5) - 2)));
  HIDWORD(v5) = v6;
  v7 = (char *)gameswf::as_value::to_string((gameswf::as_value *)(**((_DWORD **)a1 + 3) + 12 * (*((_DWORD *)a1 + 5) - 3)));
  LODWORD(v55) = gameswf::as_value::to_number((gameswf::as_value *)(**((_DWORD **)a1 + 3)
                                                                  + 12 * (*((_DWORD *)a1 + 5) - 4)));
  HIDWORD(v55) = v8;
  PlayerChar = (Character *)NativeGetPlayerChar((int)v5, 0);
  v74 = nullptr;
  v75 = nullptr;
  v76 = 0;
  if ( PlayerChar )
  {
    v54 = 0;
    ObjectManager::GetObjectByName((ObjectManager *)v73, (const char *)dword_99F764, v7, (int)v55, nullptr);
    v9 = (Character *)ObjectHandle::operator Character *(v73);
    v10 = v9;
    if ( v9 )
    {
      if ( Character::IsMerchant(v9) && Character::IsMerchant(v10) )
      {
        v59 = (int)format;
        Constant = PyDataConstants::getConstant((PyDataConstants *)dword_99F758, "EquipmentSlots", "Count");
        v60 = Constant == (int)format;
        if ( Constant == (int)format )
          ItemInventory::GetValuableItems((char *)v10 + 892);
        else
          ItemInventory::GetItemListForSlot((Character *)((char *)v10 + 892), v59);
        v13 = v74;
        v14 = v75;
        if ( v74 != v75 )
        {
          v15 = v75 - v74;
          v16 = -1431655765 * ((v75 - v74) >> 2);
          if ( v16 == 1 )
          {
            v17 = 0;
          }
          else
          {
            v18 = 0;
            do
            {
              v16 >>= 1;
              ++v18;
            }
            while ( v16 != 1 );
            v17 = 2 * v18;
          }
          std::priv::__introsort_loop<ItemInventory::Item *,ItemInventory::Item,int,bool (*)(ItemInventory::Item const&,ItemInventory::Item const&)>(
            v74,
            v75,
            v17);
          if ( v15 > 203 )
          {
            v42 = v13 + 12;
            do
            {
              v43 = v42;
              v53 = *((char **)v42 + 2);
              v44 = *(_DWORD *)v42;
              v45 = *((_DWORD *)v42 + 1);
              v42 += 12;
              std::priv::__linear_insert<ItemInventory::Item *,ItemInventory::Item,bool (*)(ItemInventory::Item const&,ItemInventory::Item const&)>(
                v13,
                v43,
                v44,
                v45,
                v53,
                v54);
            }
            while ( v42 != v13 + 192 );
            for ( i = v13 + 192; v14 != i; *((_DWORD *)v48 + 2) = v63 )
            {
              v47 = i - 12;
              v48 = i;
              v61 = *(_DWORD *)i;
              v62 = *((_DWORD *)i + 1);
              v63 = *((_DWORD *)i + 2);
              while ( 1 )
              {
                v50 = II_Item_sortbybuyback(&v61, v47);
                v51 = v47;
                v47 -= 12;
                if ( !v50 )
                  break;
                *(_DWORD *)v48 = *((_DWORD *)v47 + 3);
                v49 = v48 + 4;
                *((_DWORD *)v48 + 1) = *((_DWORD *)v47 + 4);
                v48 = v51;
                v49[1] = *((_DWORD *)v47 + 5);
              }
              i += 12;
              *(_DWORD *)v48 = v61;
              *((_DWORD *)v48 + 1) = v62;
            }
          }
          else
          {
            for ( j = v13 + 12; v14 != j; j += 12 )
            {
              v20 = j;
              v52 = *((char **)j + 2);
              v21 = *(_DWORD *)j;
              v22 = *((_DWORD *)j + 1);
              std::priv::__linear_insert<ItemInventory::Item *,ItemInventory::Item,bool (*)(ItemInventory::Item const&,ItemInventory::Item const&)>(
                v13,
                v20,
                v21,
                v22,
                v52,
                v54);
            }
          }
          v23 = (ItemInstance **)v74;
          v24 = v75;
          if ( v74 != v75 )
          {
            do
            {
              v25 = *v23;
              if ( *v23 )
              {
                Color = ItemInstance::GetColor(*v23);
                sprintf(s, "<font color='#%000000X'>%s</font>", Color, *((_DWORD *)v25 + 7));
                v27 = *((_DWORD *)a1 + 3);
                v28 = *(gameswf::player **)(v27 + 104);
                if ( v28 )
                {
                  v29 = *(_BYTE **)(v27 + 100);
                  if ( !v29[4] )
                  {
                    if ( (*(_DWORD *)v29)-- == 1 )
                      gameswf::free_internal(v29);
                    v28 = nullptr;
                    *(_DWORD *)(v27 + 104) = 0;
                    *(_DWORD *)(v27 + 100) = 0;
                  }
                }
                v30 = (gameswf::as_object *)operator new(56, 0);
                gameswf::as_object::as_object(v30, v28);
                v31 = *(void (__fastcall **)(_DWORD, _DWORD, _DWORD))(*(_DWORD *)v30 + 28);
                gameswf::tu_string::tu_string((gameswf::tu_string *)v89, "ItemName");
                v72[1] = 0;
                v72[0] = 0;
                gameswf::as_value::set_string((gameswf::as_value *)v72, s);
                v31(v30, v89, v72);
                gameswf::as_value::drop_refs((gameswf::as_value *)v72);
                if ( v89[0] == -1 )
                  gameswf::free_internal(v90);
                v32 = *(void (__fastcall **)(_DWORD, _DWORD, _DWORD))(*(_DWORD *)v30 + 28);
                gameswf::tu_string::tu_string((gameswf::tu_string *)v87, "ItemIndex");
                v33 = (int)v23[2];
                v70[0] = 0;
                v70[1] = 2;
                v77 = (double)v33;
                v71 = (double)v33;
                v32(v30, v87, v70);
                gameswf::as_value::drop_refs((gameswf::as_value *)v70);
                if ( v87[0] == -1 )
                  gameswf::free_internal(v88);
                v34 = *(void (__fastcall **)(_DWORD, _DWORD, _DWORD))(*(_DWORD *)v30 + 28);
                gameswf::tu_string::tu_string((gameswf::tu_string *)v85, "ItemEquippable");
                v35 = v60 || ItemInstance::IsEquippableBy(v25, PlayerChar);
                v69[0] = 0;
                v69[4] = v35;
                v69[1] = 1;
                v34(v30, v85, v69);
                gameswf::as_value::drop_refs((gameswf::as_value *)v69);
                if ( v85[0] == -1 )
                  gameswf::free_internal(v86);
                v36 = *(void (__fastcall **)(_DWORD, _DWORD, _DWORD))(*(_DWORD *)v30 + 28);
                gameswf::tu_string::tu_string((gameswf::tu_string *)v83, "ItemEquipped");
                v37 = !v60
                   && *v23 == (ItemInstance *)ItemInventory::GetEquippedItem(
                                                (Character *)((char *)PlayerChar + 892),
                                                v59);
                v68[0] = 0;
                v68[4] = v37;
                v68[1] = 1;
                v36(v30, v83, v68);
                gameswf::as_value::drop_refs((gameswf::as_value *)v68);
                if ( v83[0] == -1 )
                  gameswf::free_internal(v84);
                v38 = *(void (__fastcall **)(_DWORD, _DWORD, _DWORD))(*(_DWORD *)v30 + 28);
                gameswf::tu_string::tu_string((gameswf::tu_string *)v81, "ItemBuyback");
                v39 = *((_BYTE *)v25 + 105);
                v67[0] = 0;
                v67[4] = v39;
                v67[1] = 1;
                v38(v30, v81, v67);
                gameswf::as_value::drop_refs((gameswf::as_value *)v67);
                if ( v81[0] == -1 )
                  gameswf::free_internal(v82);
                if ( v60 )
                  sprintf((char *)&v61, "%d", *((__int16 *)v25 + 40));
                else
                  LOWORD(v61) = 32;
                v40 = *(void (__fastcall **)(_DWORD, _DWORD, _DWORD))(*(_DWORD *)v30 + 28);
                gameswf::tu_string::tu_string((gameswf::tu_string *)v79, "ItemQuantity");
                v66[1] = 0;
                v66[0] = 0;
                gameswf::as_value::set_string((gameswf::as_value *)v66, (const char *)&v61);
                v40(v30, v79, v66);
                gameswf::as_value::drop_refs((gameswf::as_value *)v66);
                if ( v79[0] == -1 )
                  gameswf::free_internal(p);
                v64[0] = 0;
                v64[1] = 5;
                v65 = v30;
                gameswf::ref_counted::add_ref(v30);
                gameswf::as_array::push(v56, (const gameswf::as_value *)v64);
                gameswf::as_value::drop_refs((gameswf::as_value *)v64);
                v24 = v75;
              }
              v23 += 3;
            }
            while ( v23 != (ItemInstance **)v24 );
          }
        }
      }
    }
  }
  gameswf::as_value::set_as_object(*(gameswf::as_value **)a1, v56);
  return std::vector<ItemInventory::Item>::~vector(&v74);
}


// ===== 444990 NativeBackToHud(gameswf::fn_call const&) =====
void __fastcall NativeBackToHud(const gameswf::fn_call *a1)
{
  int CurrentLevel; // r0
  int v2; // r6
  HUDControls *updated; // r0
  HUDControls *Instance; // r0
  DH2_PlayerInfoCharacterPrefix *LocalPlayer; // r0
  RenderFX *HUDRoot; // r8
  gameswf::root *Root; // r0
  gameswf::character *root_movie; // r0
  gameswf::root *v9; // r0
  MenuManager *v10; // r10
  int v11; // r0
  _BYTE v12[4]; // [sp+Ch] [bp-18h] BYREF
  double v13; // [sp+10h] [bp-14h]
  double v14; // [sp+18h] [bp-Ch]

  CurrentLevel = Application::GetCurrentLevel((Application *)&Singleton<Application>::s_inst);
  if ( CurrentLevel )
  {
    *(_BYTE *)(CurrentLevel + 408) = 1;
    v2 = (unsigned __int8)byte_9A600C;
    if ( !byte_9A600C )
    {
      HUDRoot = (RenderFX *)MenuManager::GetHUDRoot((MenuManager *)dword_99F780);
      Root = (gameswf::root *)RenderFX::GetRoot(HUDRoot);
      root_movie = (gameswf::character *)gameswf::root::get_root_movie(Root);
      RenderFX::InvokeASCallback(HUDRoot, root_movie, "DisplayRightHud", (const gameswf::as_value *)v2, v2);
      v9 = (gameswf::root *)RenderFX::GetRoot(HUDRoot);
      v10 = (MenuManager *)gameswf::root::get_root_movie(v9);
      v11 = *(_DWORD *)(MenuManager::GetInstance(v10) + 264);
      v12[0] = v2;
      v12[1] = 2;
      v14 = (double)v11;
      v13 = (double)v11;
      RenderFX::InvokeASCallback(HUDRoot, v10, "FillActionIcon", (const gameswf::as_value *)v12, 1);
      gameswf::as_value::drop_refs((gameswf::as_value *)v12);
    }
    ZoomHandler::ResetFingerMap((ZoomHandler *)dword_99F77C);
    updated = (HUDControls *)MultiMenuManager::ResetUpdateCursor(*(MultiMenuManager **)(dword_99F780 + 244));
    Instance = (HUDControls *)HUDControls::GetInstance(updated);
    HUDControls::Touch(Instance);
    if ( PlayerManager::GetLocalPlayer((PlayerManager *)dword_99F76C, 0, 1)->character_660 )
    {
      LocalPlayer = PlayerManager::GetLocalPlayer((PlayerManager *)dword_99F76C, 0, 1);
      ItemInventory::TrophyCheckArmorSet((ItemInventory *)((char *)LocalPlayer->character_660 + 892));
    }
  }
}


// ===== 444ae0 NativeLoginInfos(gameswf::fn_call const&) =====
int __fastcall NativeLoginInfos(const gameswf::fn_call *a1)
{
  int v2; // r3
  int v3; // r0
  CMatching *v4; // r5
  char *v5; // r8
  int v6; // r7
  void (__fastcall *v7)(CMatching *, _BYTE *, _BYTE *); // r9
  const char *v8; // r7
  void (__fastcall *v9)(CMatching *, _BYTE *, _BYTE *); // r9
  _BYTE v11[12]; // [sp+4h] [bp-2Ch] BYREF
  _BYTE v12[12]; // [sp+10h] [bp-20h] BYREF
  _BYTE v13[8]; // [sp+1Ch] [bp-14h] BYREF
  void *v14; // [sp+28h] [bp-8h]
  _BYTE v15[8]; // [sp+30h] [bp+0h] BYREF
  void *p; // [sp+3Ch] [bp+Ch]

  v2 = **((_DWORD **)a1 + 3) + 12 * *((_DWORD *)a1 + 5);
  if ( *(_BYTE *)(v2 + 1) == 5 )
    v3 = *(_DWORD *)(v2 + 4);
  else
    v3 = 0;
  v4 = (CMatching *)gameswf::cast_to<gameswf::as_object>(v3);
  v5 = (char *)CMatching::Get(v4);
  v6 = CMatching::Get((CMatching *)v5) + 27392;
  v7 = *(void (__fastcall **)(CMatching *, _BYTE *, _BYTE *))(*(_DWORD *)v4 + 28);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v15, "Username");
  v12[1] = 0;
  v12[0] = 0;
  gameswf::as_value::set_string((gameswf::as_value *)v12, v5 + 27617);
  v7(v4, v15, v12);
  gameswf::as_value::drop_refs((gameswf::as_value *)v12);
  v8 = (const char *)(v6 + 242);
  if ( v15[0] == -1 )
    gameswf::free_internal(p);
  v9 = *(void (__fastcall **)(CMatching *, _BYTE *, _BYTE *))(*(_DWORD *)v4 + 28);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v13, "Password");
  v11[1] = 0;
  v11[0] = 0;
  gameswf::as_value::set_string((gameswf::as_value *)v11, v8);
  v9(v4, v13, v11);
  gameswf::as_value::drop_refs((gameswf::as_value *)v11);
  if ( v13[0] == -1 )
    gameswf::free_internal(v14);
  return gameswf::as_value::set_bool(*(gameswf::as_value **)a1, save_remember);
}


// ===== 444c68 NativeGetMapIcons(gameswf::fn_call const&) =====
int __fastcall NativeGetMapIcons(const gameswf::fn_call *a1)
{
  int v2; // r3
  int v3; // r0
  gameswf::as_object *v4; // r5
  void (__fastcall *v5)(gameswf::as_object *, _BYTE *, _BYTE *); // r10
  void (__fastcall *v6)(gameswf::as_object *, _BYTE *, _BYTE *); // r10
  _BYTE v8[12]; // [sp+0h] [bp-Ch] BYREF
  _BYTE v9[4]; // [sp+Ch] [bp+0h] BYREF
  int v10; // [sp+10h] [bp+4h]
  int v11; // [sp+14h] [bp+8h]
  int v12; // [sp+18h] [bp+Ch]
  int v13; // [sp+1Ch] [bp+10h]
  _BYTE v14[8]; // [sp+24h] [bp+18h] BYREF
  void *v15; // [sp+30h] [bp+24h]
  _BYTE v16[8]; // [sp+38h] [bp+2Ch] BYREF
  void *p; // [sp+44h] [bp+38h]

  v2 = **((_DWORD **)a1 + 3) + 12 * *((_DWORD *)a1 + 5);
  if ( *(_BYTE *)(v2 + 1) == 5 )
    v3 = *(_DWORD *)(v2 + 4);
  else
    v3 = 0;
  v4 = (gameswf::as_object *)gameswf::cast_to<gameswf::as_object>(v3);
  v5 = *(void (__fastcall **)(gameswf::as_object *, _BYTE *, _BYTE *))(*(_DWORD *)v4 + 28);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v16, "length");
  v12 = 0;
  v13 = 1075314688;
  v9[0] = 0;
  v9[1] = 2;
  v10 = 0;
  v11 = 1075314688;
  v5(v4, v16, v9);
  gameswf::as_value::drop_refs((gameswf::as_value *)v9);
  if ( v16[0] == -1 )
    gameswf::free_internal(p);
  v6 = *(void (__fastcall **)(gameswf::as_object *, _BYTE *, _BYTE *))(*(_DWORD *)v4 + 28);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v14, "Graphic");
  v8[1] = 0;
  v8[0] = 0;
  gameswf::as_value::set_string((gameswf::as_value *)v8, "Objective");
  v6(v4, v14, v8);
  gameswf::as_value::drop_refs((gameswf::as_value *)v8);
  if ( v14[0] == -1 )
    gameswf::free_internal(v15);
  return gameswf::as_value::set_as_object(*(gameswf::as_value **)a1, v4);
}


// ===== 444dec NativeGetIPodPlaylistName(gameswf::fn_call const&) =====
void __fastcall NativeGetIPodPlaylistName(gameswf::as_value **a1)
{
  gameswf::as_value *v1; // r8
  int v2; // r10
  double v3; // r0
  std::string v4; // [sp+0h] [bp-18h] BYREF
  _BYTE v5[8]; // [sp+18h] [bp+0h] BYREF
  void *p; // [sp+24h] [bp+Ch]

  v1 = *a1;
  v2 = VoxSoundManager::s_instance;
  LODWORD(v3) = gameswf::as_value::to_number((gameswf::as_value *)(*(_DWORD *)a1[3] + 12 * (_DWORD)a1[5]));
  VoxSoundManager::GetIPodPlaylistName(&v4, v2, (int)v3);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v5, v4._M_start_of_storage._M_data);
  gameswf::as_value::set_tu_string(v1, (const gameswf::tu_string *)v5);
  if ( v5[0] == -1 )
    gameswf::free_internal(p);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v4);
}


// ===== 444ebc NativeGetStringFromSymbol(gameswf::fn_call const&) =====
void __fastcall NativeGetStringFromSymbol(const gameswf::fn_call *a1)
{
  const char *v2; // r5
  char *v3; // r0
  const char *v4; // r1
  int v5; // r2
  StringManager *v6; // r8
  const char *StringFromSymbol; // r10
  gameswf::as_value *v8; // r8
  char *M_data; // r1
  std::priv::_String_base<char,std::allocator<char> > v10; // [sp+0h] [bp-4Ch] BYREF
  std::string v11; // [sp+18h] [bp-34h] BYREF
  _BYTE v12[8]; // [sp+30h] [bp-1Ch] BYREF
  void *p; // [sp+3Ch] [bp-10h]

  v2 = (const char *)gameswf::as_value::to_string((gameswf::as_value *)(**((_DWORD **)a1 + 3) + 12 * *((_DWORD *)a1 + 5)));
  if ( !LC_API_STRCMP_0(v2, "MENU_ERROR_NO_USERNAME") || !LC_API_STRCMP_0(v2, "MENU_ERROR_NO_PASSWORD") )
    Back_key_Glive = 1;
  v3 = gameswf::as_value::to_tu_string((gameswf::as_value *)(**((_DWORD **)a1 + 3) + 12 * *((_DWORD *)a1 + 5)));
  v5 = *v3;
  if ( v5 != -1 )
    v4 = v3 + 1;
  v6 = (StringManager *)dword_99F760;
  if ( v5 == -1 )
    v4 = *((const char **)v3 + 3);
  StringFromSymbol = (const char *)StringManager::getStringFromSymbol((StringManager *)dword_99F760, v4);
  v11._M_finish = (char *)&v11;
  v11._M_start_of_storage._M_data = (char *)&v11;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block(&v11, 0x10u);
  *v11._M_finish = 0;
  if ( StringFromSymbol )
  {
    StringManager::parse(v6, &v11, StringFromSymbol);
    ParsePlayerName((std::string *)&v10, &v11);
    std::string::_M_assign(&v11, v10._M_start_of_storage._M_data, v10._M_finish);
    std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v10);
    v8 = *(gameswf::as_value **)a1;
    M_data = v11._M_start_of_storage._M_data;
  }
  else
  {
    v8 = *(gameswf::as_value **)a1;
    M_data = "notfound";
  }
  gameswf::tu_string::tu_string((gameswf::tu_string *)v12, M_data);
  gameswf::as_value::set_tu_string(v8, (const gameswf::tu_string *)v12);
  if ( v12[0] == -1 )
    gameswf::free_internal(p);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v11);
}


// ===== 44506c NativeGetStringFromID(gameswf::fn_call const&) =====
void __fastcall NativeGetStringFromID(const gameswf::fn_call *a1)
{
  double v2; // r0
  StringManager *v3; // r8
  const char *String; // r10
  gameswf::as_value *v5; // r8
  char *M_data; // r1
  std::priv::_String_base<char,std::allocator<char> > v7; // [sp+0h] [bp-4Ch] BYREF
  std::string v8; // [sp+18h] [bp-34h] BYREF
  _BYTE v9[8]; // [sp+30h] [bp-1Ch] BYREF
  void *p; // [sp+3Ch] [bp-10h]

  LODWORD(v2) = gameswf::as_value::to_number((gameswf::as_value *)(**((_DWORD **)a1 + 3) + 12 * *((_DWORD *)a1 + 5)));
  v3 = (StringManager *)dword_99F760;
  String = (const char *)StringManager::getString((StringManager *)dword_99F760, (int)v2);
  v8._M_finish = (char *)&v8;
  v8._M_start_of_storage._M_data = (char *)&v8;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block(&v8, 0x10u);
  *v8._M_finish = 0;
  if ( String )
  {
    StringManager::parse(v3, &v8, String);
    ParsePlayerName((std::string *)&v7, &v8);
    std::string::_M_assign(&v8, v7._M_start_of_storage._M_data, v7._M_finish);
    std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v7);
    v5 = *(gameswf::as_value **)a1;
    M_data = v8._M_start_of_storage._M_data;
  }
  else
  {
    v5 = *(gameswf::as_value **)a1;
    M_data = "notfound";
  }
  gameswf::tu_string::tu_string((gameswf::tu_string *)v9, M_data);
  gameswf::as_value::set_tu_string(v5, (const gameswf::tu_string *)v9);
  if ( v9[0] == -1 )
    gameswf::free_internal(p);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v8);
}


// ===== 4451ac NativeGetMultiplayerGameRooms(gameswf::fn_call const&) =====
int __fastcall NativeGetMultiplayerGameRooms(int result)
{
  int v1; // r10
  int v2; // r3
  int v3; // r0
  CMatching *v4; // r0
  int v5; // r0
  int Instance; // r0
  unsigned int v7; // r9
  unsigned int v8; // r11
  gameswf::as_object *v9; // r4
  int v10; // r9
  int v11; // r0
  int v12; // r2
  int Constant; // r0
  const char *String; // r0
  char *v15; // r0
  char *v16; // r5
  int v17; // r0
  void (__fastcall *v18)(gameswf::as_object *, _BYTE *, _BYTE *); // r5
  void (__fastcall *v19)(gameswf::as_object *, _BYTE *, _BYTE *); // r5
  void (__fastcall *v20)(gameswf::as_object *, _BYTE *, gameswf::as_value *); // r5
  int v21; // r0
  void (__fastcall *v22)(gameswf::as_object *, _BYTE *, char *); // r5
  int v23; // r4
  gameswf::player *v24; // r5
  _BYTE *v25; // r0
  void (__fastcall *v27)(gameswf::as_object *, _BYTE *, _BYTE *); // [sp+0h] [bp-22Ch]
  StringManager *v29; // [sp+4h] [bp-228h]
  gameswf::as_value *v30; // [sp+Ch] [bp-220h]
  int v31; // [sp+54h] [bp-1D8h]
  int AttributeInt; // [sp+58h] [bp-1D4h]
  gameswf::as_array *v33; // [sp+98h] [bp-194h]
  _BYTE v34[4]; // [sp+A0h] [bp-18Ch] BYREF
  gameswf::as_object *v35; // [sp+A4h] [bp-188h]
  _BYTE v36[12]; // [sp+ACh] [bp-180h] BYREF
  _BYTE v37[12]; // [sp+B8h] [bp-174h] BYREF
  _BYTE v38[4]; // [sp+C4h] [bp-168h] BYREF
  int v39; // [sp+C8h] [bp-164h]
  int v40; // [sp+CCh] [bp-160h]
  _BYTE v41[12]; // [sp+D0h] [bp-15Ch] BYREF
  _BYTE v42[4]; // [sp+DCh] [bp-150h] BYREF
  double v43; // [sp+E0h] [bp-14Ch]
  _BYTE v44[12]; // [sp+E8h] [bp-144h] BYREF
  int v45; // [sp+F4h] [bp-138h] BYREF
  int v46; // [sp+F8h] [bp-134h]
  double v47; // [sp+100h] [bp-12Ch]
  __int16 v48; // [sp+114h] [bp-118h] BYREF
  __int16 v49; // [sp+116h] [bp-116h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v50; // [sp+134h] [bp-F8h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v51; // [sp+14Ch] [bp-E0h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v52; // [sp+164h] [bp-C8h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v53; // [sp+17Ch] [bp-B0h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v54; // [sp+194h] [bp-98h] BYREF
  _BYTE v55[8]; // [sp+1ACh] [bp-80h] BYREF
  void *v56; // [sp+1B8h] [bp-74h]
  _BYTE v57[8]; // [sp+1C0h] [bp-6Ch] BYREF
  void *v58; // [sp+1CCh] [bp-60h]
  _BYTE v59[8]; // [sp+1D4h] [bp-58h] BYREF
  void *v60; // [sp+1E0h] [bp-4Ch]
  _BYTE v61[8]; // [sp+1E8h] [bp-44h] BYREF
  void *v62; // [sp+1F4h] [bp-38h]
  _BYTE v63[8]; // [sp+1FCh] [bp-30h] BYREF
  void *v64; // [sp+208h] [bp-24h]
  _BYTE v65[8]; // [sp+210h] [bp-1Ch] BYREF
  void *p; // [sp+21Ch] [bp-10h]
  std::string v67; // 0:r1.12,12:^0.12

  v1 = result;
  if ( *(_DWORD *)(result + 16) == 1 )
  {
    result = OnlineSingleton<OnlineGameState>::GetInstance();
    if ( *(_DWORD *)(result + 20) != 300 )
    {
      *(_DWORD *)(OnlineSingleton<OnlineGameState>::GetInstance() + 20) = 102;
      if ( *(int *)(v1 + 16) > 0 )
      {
        v2 = **(_DWORD **)(v1 + 12) + 12 * *(_DWORD *)(v1 + 20);
        v3 = *(_BYTE *)(v2 + 1) == 5 ? *(_DWORD *)(v2 + 4) : 0;
        v4 = (CMatching *)gameswf::cast_to<gameswf::as_array>(v3);
        v33 = v4;
        if ( v4 )
        {
          v5 = CMatching::Get(v4);
          (*(void (__fastcall **)(int *, int))(*(_DWORD *)v5 + 144))(&v45, v5);
          if ( *(_DWORD *)(OnlineSingleton<OnlineGameState>::GetInstance() + 52) != 2 )
          {
            Instance = OnlineSingleton<OnlineGameState>::GetInstance();
            if ( *(_DWORD *)(Instance + 52) != 2 )
              std::vector<tRoomInfo>::operator=((int *)(Instance + 80), &v45);
          }
          if ( 1455319497 * ((v46 - v45) >> 3) )
          {
            v7 = 0;
            v8 = 0;
            v30 = (gameswf::as_value *)v37;
            v67._M_start_of_storage._M_data = v36;
            do
            {
              v23 = *(_DWORD *)(v1 + 12);
              v24 = *(gameswf::player **)(v23 + 104);
              if ( v24 )
              {
                v25 = *(_BYTE **)(v23 + 100);
                if ( !v25[4] )
                {
                  if ( (*(_DWORD *)v25)-- == 1 )
                    gameswf::free_internal(v25);
                  v24 = nullptr;
                  *(_DWORD *)(v23 + 104) = 0;
                  *(_DWORD *)(v23 + 100) = 0;
                }
              }
              v9 = (gameswf::as_object *)operator new(56, 0);
              gameswf::as_object::as_object(v9, v24);
              v10 = 968 * v7;
              AttributeInt = CRoomAttributes::GetAttributeInt(v45 + v10 + 40, 5);
              v11 = CRoomAttributes::GetAttributeInt(v45 + v10 + 40, 6);
              if ( v11 < 0 )
                v12 = 14200;
              else
                v12 = 284 * v11;
              v31 = Arrays::v2Quests::members + v12;
              v54._M_finish = (char *)&v54;
              v54._M_start_of_storage._M_data = (char *)&v54;
              std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block(&v54, 0x10u);
              *v54._M_finish = 0;
              v67._M_finish = (char *)dword_99F760;
              Constant = PyDataConstants::getConstant((PyDataConstants *)dword_99F758, "StrID", "MENU_ACT");
              String = (const char *)StringManager::getString((StringManager *)v67._M_finish, Constant);
              StringManager::parse((StringManager *)dword_99F760, (std::string *)&v54, String, AttributeInt);
              std::string::string((std::string *)&v53, " ");
              v15 = (char *)StringManager::getString((StringManager *)dword_99F760, *(_DWORD *)(v31 + 4));
              std::operator+<char>((std::string *)&v52, (int)&v53, v15);
              std::string::_M_append((std::string *)&v54, v52._M_start_of_storage._M_data, v52._M_finish);
              std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v52);
              std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v53);
              v48 = 0;
              LC_API_MEMSET_0(&v49, 0, 0x1Eu);
              if ( (unsigned int)(*(_DWORD *)(OnlineSingleton<OnlineGameState>::GetInstance() + 52) - 3) <= 1 )
                sprintf((char *)&v48, *(const char **)(v45 + v10 + 28));
              else
                CRoomAttributes::GetAttributeBin(v45 + v10 + 40, 3, &v48, 32);
              *(_DWORD *)&v67._M_buffers._M_static_buf[12] = *(_DWORD *)(*(_DWORD *)v9 + 28);
              gameswf::tu_string::tu_string((gameswf::tu_string *)v65, "name");
              v16 = (char *)dword_99F760;
              std::string::string((std::string *)&v51, (char *)&v48);
              *(_DWORD *)&v67._M_buffers._M_static_buf[4] = &v51;
              v67._M_buffers._M_end_of_storage = v16;
              *(_DWORD *)&v67._M_buffers._M_static_buf[8] = 0;
              StringManager::formatForMulti((std::string *)&v50, v67, (bool)v30);
              v44[1] = 0;
              v44[0] = 0;
              gameswf::as_value::set_string((gameswf::as_value *)v44, v50._M_start_of_storage._M_data);
              v27(v9, v65, v44);
              gameswf::as_value::drop_refs((gameswf::as_value *)v44);
              std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v50);
              std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v51);
              if ( v65[0] == -1 )
                gameswf::free_internal(p);
              v29 = *(StringManager **)(*(_DWORD *)v9 + 28);
              gameswf::tu_string::tu_string((gameswf::tu_string *)v63, "level");
              v17 = CRoomAttributes::GetAttributeInt(v45 + v10 + 40, 3);
              v42[0] = 0;
              v42[1] = 2;
              v47 = (double)v17;
              v43 = (double)v17;
              ((void (__fastcall *)(gameswf::as_object *, _BYTE *, _BYTE *))v29)(v9, v63, v42);
              gameswf::as_value::drop_refs((gameswf::as_value *)v42);
              if ( v63[0] == -1 )
                gameswf::free_internal(v64);
              v18 = *(void (__fastcall **)(gameswf::as_object *, _BYTE *, _BYTE *))(*(_DWORD *)v9 + 28);
              gameswf::tu_string::tu_string((gameswf::tu_string *)v61, "act");
              v41[1] = 0;
              v41[0] = 0;
              gameswf::as_value::set_string((gameswf::as_value *)v41, v54._M_start_of_storage._M_data);
              v18(v9, v61, v41);
              gameswf::as_value::drop_refs((gameswf::as_value *)v41);
              if ( v61[0] == -1 )
                gameswf::free_internal(v62);
              v19 = *(void (__fastcall **)(gameswf::as_object *, _BYTE *, _BYTE *))(*(_DWORD *)v9 + 28);
              gameswf::tu_string::tu_string((gameswf::tu_string *)v59, "friendCount");
              v38[0] = 0;
              v38[1] = 2;
              v47 = 0.0;
              v39 = 0;
              v40 = 0;
              v19(v9, v59, v38);
              gameswf::as_value::drop_refs((gameswf::as_value *)v38);
              if ( v59[0] == -1 )
                gameswf::free_internal(v60);
              v20 = *(void (__fastcall **)(gameswf::as_object *, _BYTE *, gameswf::as_value *))(*(_DWORD *)v9 + 28);
              gameswf::tu_string::tu_string((gameswf::tu_string *)v57, "playerCount");
              v21 = *(_DWORD *)(v45 + v10 + 32);
              v37[0] = 0;
              v37[1] = 2;
              v47 = (double)v21;
              *(double *)((char *)v30 + 4) = (double)v21;
              v20(v9, v57, v30);
              gameswf::as_value::drop_refs(v30);
              if ( v57[0] == -1 )
                gameswf::free_internal(v58);
              v22 = *(void (__fastcall **)(gameswf::as_object *, _BYTE *, char *))(*(_DWORD *)v9 + 28);
              gameswf::tu_string::tu_string((gameswf::tu_string *)v55, "maxPlayercount");
              v36[0] = 0;
              v36[1] = 2;
              v47 = 4.0;
              *((_DWORD *)v67._M_start_of_storage._M_data + 1) = 0;
              *((_DWORD *)v67._M_start_of_storage._M_data + 2) = 1074790400;
              v22(v9, v55, v67._M_start_of_storage._M_data);
              gameswf::as_value::drop_refs((gameswf::as_value *)v67._M_start_of_storage._M_data);
              if ( v55[0] == -1 )
                gameswf::free_internal(v56);
              v34[0] = 0;
              v34[1] = 5;
              v35 = v9;
              gameswf::ref_counted::add_ref(v9);
              gameswf::as_array::push(v33, (const gameswf::as_value *)v34);
              gameswf::as_value::drop_refs((gameswf::as_value *)v34);
              std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v54);
              v7 = ++v8;
            }
            while ( v8 < 1455319497 * ((v46 - v45) >> 3) );
          }
          gameswf::as_value::set_bool(*(gameswf::as_value **)v1, 1);
          std::vector<tRoomInfo>::~vector(&v45);
        }
      }
      return gameswf::as_value::set_bool(*(gameswf::as_value **)v1, 1);
    }
  }
  return result;
}


// ===== 445a10 NativeGetSkillDetails(gameswf::fn_call const&) =====
Elf32_Dyn **__fastcall NativeGetSkillDetails(const gameswf::fn_call *a1)
{
  int v1; // r1
  double v2; // r6
  int v3; // r4
  int v4; // r0
  double v5; // r0
  int v6; // r5
  char v7; // r1
  int CharSkill; // r5
  StringManager *v9; // r6
  int v10; // r0
  const char *v11; // r6
  size_t v12; // r0
  _DWORD *v13; // r1
  float *v14; // r4
  int v15; // r2
  float *v16; // r4
  char v17; // r8
  void (__fastcall *v18)(gameswf::as_object *, _BYTE *, _BYTE *); // r7
  int v19; // r1
  const char *v20; // r1
  void (__fastcall *v21)(gameswf::as_object *, _BYTE *, _BYTE *); // r7
  int v22; // r1
  const char *v23; // r1
  void (__fastcall *v24)(gameswf::as_object *, _BYTE *, _BYTE *); // r7
  void (__fastcall *v25)(gameswf::as_object *, _BYTE *, _BYTE *); // r7
  void (__fastcall *v26)(gameswf::as_object *, _BYTE *, _BYTE *); // r7
  char v27; // r3
  void (__fastcall *v28)(gameswf::as_object *, _BYTE *, _BYTE *); // r7
  const char *v29; // r1
  void (__fastcall *v30)(gameswf::as_object *, _BYTE *, _BYTE *); // r6
  int v31; // r0
  double v32; // kr00_8
  void (__fastcall *v33)(gameswf::as_object *, _BYTE *, _BYTE *); // r6
  int SkillSlot; // r0
  double v35; // kr08_8
  void (__fastcall *v36)(gameswf::as_object *, _BYTE *, _BYTE *); // r5
  int v38; // r4
  int v39; // r0
  const char *v40; // r4
  const char *v41; // r2
  int v42; // r6
  int v43; // r4
  int CurrentFaerieId; // r0
  const char *v45; // r0
  const char *v46; // r4
  StringManager *v47; // r4
  int v48; // r0
  size_t v49; // r0
  _DWORD *v50; // r4
  int SkillLevel; // r0
  int v52; // r8
  int i; // r0
  int v54; // r11
  int v55; // r3
  _DWORD *v56; // r1
  int v57; // r10
  StringManager *v58; // r4
  int v59; // r0
  char *v60; // r0
  StringManager *v61; // r4
  int Constant; // r0
  char *String; // r0
  int v64; // [sp+4h] [bp-220h]
  int v65; // [sp+Ch] [bp-218h]
  gameswf::as_object *v66; // [sp+10h] [bp-214h]
  int v67; // [sp+14h] [bp-210h]
  Character *PlayerChar; // [sp+1Ch] [bp-208h]
  void (**v70)(VarArgs *__hidden); // [sp+54h] [bp-1D0h] BYREF
  int v71; // [sp+58h] [bp-1CCh] BYREF
  _DWORD *v72; // [sp+5Ch] [bp-1C8h]
  _DWORD *v73; // [sp+60h] [bp-1C4h] BYREF
  _DWORD v74[4]; // [sp+64h] [bp-1C0h] BYREF
  int v75; // [sp+74h] [bp-1B0h]
  int v76; // [sp+78h] [bp-1ACh]
  int v77; // [sp+7Ch] [bp-1A8h]
  int v78; // [sp+80h] [bp-1A4h]
  int v79; // [sp+84h] [bp-1A0h]
  int v80; // [sp+88h] [bp-19Ch]
  _BYTE v81[12]; // [sp+8Ch] [bp-198h] BYREF
  _BYTE v82[4]; // [sp+98h] [bp-18Ch] BYREF
  unsigned __int64 v83; // [sp+9Ch] [bp-188h]
  _BYTE v84[4]; // [sp+A4h] [bp-180h] BYREF
  unsigned __int64 v85; // [sp+A8h] [bp-17Ch]
  _BYTE v86[12]; // [sp+B0h] [bp-174h] BYREF
  _BYTE v87[12]; // [sp+BCh] [bp-168h] BYREF
  _BYTE v88[12]; // [sp+C8h] [bp-15Ch] BYREF
  _BYTE v89[12]; // [sp+D4h] [bp-150h] BYREF
  _BYTE v90[12]; // [sp+E0h] [bp-144h] BYREF
  _BYTE v91[12]; // [sp+ECh] [bp-138h] BYREF
  double v92; // [sp+F8h] [bp-12Ch] BYREF
  std::string v93; // [sp+108h] [bp-11Ch] BYREF
  std::string v94; // [sp+120h] [bp-104h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v95; // [sp+138h] [bp-ECh] BYREF
  std::priv::_String_base<char,std::allocator<char> > v96; // [sp+150h] [bp-D4h] BYREF
  _BYTE v97[8]; // [sp+168h] [bp-BCh] BYREF
  void *v98; // [sp+174h] [bp-B0h]
  _BYTE v99[8]; // [sp+17Ch] [bp-A8h] BYREF
  void *v100; // [sp+188h] [bp-9Ch]
  _BYTE v101[8]; // [sp+190h] [bp-94h] BYREF
  void *v102; // [sp+19Ch] [bp-88h]
  _BYTE v103[8]; // [sp+1A4h] [bp-80h] BYREF
  void *v104; // [sp+1B0h] [bp-74h]
  _BYTE v105[8]; // [sp+1B8h] [bp-6Ch] BYREF
  void *v106; // [sp+1C4h] [bp-60h]
  _BYTE v107[8]; // [sp+1CCh] [bp-58h] BYREF
  void *v108; // [sp+1D8h] [bp-4Ch]
  _BYTE v109[8]; // [sp+1E0h] [bp-44h] BYREF
  void *v110; // [sp+1ECh] [bp-38h]
  _BYTE v111[8]; // [sp+1F4h] [bp-30h] BYREF
  void *v112; // [sp+200h] [bp-24h]
  _BYTE v113[8]; // [sp+208h] [bp-1Ch] BYREF
  void *p; // [sp+214h] [bp-10h]

  LODWORD(v2) = gameswf::as_value::to_number((gameswf::as_value *)(**((_DWORD **)a1 + 3) + 12 * *((_DWORD *)a1 + 5)));
  HIDWORD(v2) = v1;
  v3 = **((_DWORD **)a1 + 3) + 12 * (*((_DWORD *)a1 + 5) - 1);
  if ( *(_BYTE *)(v3 + 1) == 5 )
    v4 = *(_DWORD *)(v3 + 4);
  else
    v4 = 0;
  v66 = (gameswf::as_object *)gameswf::cast_to<gameswf::as_object>(v4);
  LODWORD(v5) = gameswf::as_value::to_number((gameswf::as_value *)(**((_DWORD **)a1 + 3) + 12
                                                                                         * (*((_DWORD *)a1 + 5) - 2)));
  v6 = (int)v5;
  if ( *((_DWORD *)a1 + 4) == 4 )
    v7 = gameswf::as_value::to_bool((gameswf::as_value *)(**((_DWORD **)a1 + 3) + 12 * (*((_DWORD *)a1 + 5) - 3)));
  else
    v7 = 0;
  PlayerChar = (Character *)NativeGetPlayerChar(v6, v7);
  if ( !PlayerChar )
    goto LABEL_35;
  v74[0] = off_967748;
  v70 = off_967748;
  v96._M_finish = (char *)&v96;
  v96._M_start_of_storage._M_data = (char *)&v96;
  v71 = 0;
  v72 = nullptr;
  v73 = nullptr;
  memset(&v74[1], 0, 12);
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block((int)&v96, 0x10u);
  *v96._M_finish = 0;
  v95._M_finish = (char *)&v95;
  v95._M_start_of_storage._M_data = (char *)&v95;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block((int)&v95, 0x10u);
  *v95._M_finish = 0;
  v67 = (int)v2;
  Character::SG_GetSkillId(PlayerChar, (int)v2);
  std::string::string((int)&v94, "");
  std::string::string((int)&v93, "");
  CharSkill = Character::GetCharSkill(PlayerChar, (int)v2);
  if ( Character::GetLevel(PlayerChar) >= *(_DWORD *)(CharSkill + 32) )
  {
    if ( (int)Character::SG_GetSkillLevel(PlayerChar, v67) <= 0 )
    {
      v61 = (StringManager *)dword_99F760;
      Constant = PyDataConstants::getConstant(
                   (PyDataConstants *)dword_99F758,
                   "StrID",
                   "GAMEPLAYMENUS_NEEDS_SKILL_POINTS");
      String = (char *)StringManager::getString(v61, Constant);
      std::string::operator=((int)&v94, String);
LABEL_43:
      v42 = PyDataConstants::getConstant((PyDataConstants *)dword_99F758, "CharacterDesign", "MaxSkillLevelBNormal");
      if ( Character::SG_GetGameDifficultyUnlocked(PlayerChar) == 1 )
      {
        v42 = PyDataConstants::getConstant((PyDataConstants *)dword_99F758, "CharacterDesign", "MaxSkillLevelCHard");
      }
      else if ( Character::SG_GetGameDifficultyUnlocked(PlayerChar) == 2 )
      {
        v42 = PyDataConstants::getConstant((PyDataConstants *)dword_99F758, "CharacterDesign", "MaxSkillLevelDVeryHard");
      }
      if ( v42 <= Character::SG_GetSkillLevel(PlayerChar, v67) )
      {
        v47 = (StringManager *)dword_99F760;
        v48 = PyDataConstants::getConstant((PyDataConstants *)dword_99F758, "StrID", "GAMEPLAYMENUS_MAX_SKILL_LEVEL");
        v45 = (const char *)StringManager::getString(v47, v48);
        v46 = v45;
        goto LABEL_56;
      }
      if ( !Character::CanIncrementSkill(PlayerChar, v67) )
      {
        v58 = (StringManager *)dword_99F760;
        v59 = PyDataConstants::getConstant(
                (PyDataConstants *)dword_99F758,
                "StrID",
                "GAMEPLAYMENUS_SKILL_MAXIMUM_LEVEL_TRAINING");
        v60 = (char *)StringManager::getString(v58, v59);
        std::string::operator=((int)&v93, v60);
LABEL_57:
        v50 = &v73;
        v65 = 0;
        v64 = (int)PlayerChar + 1376;
        do
        {
          SkillLevel = Character::SG_GetSkillLevel(PlayerChar, v67);
          CharAI::AI_SkillInfo((Character *)((char *)PlayerChar + 968), v67, v65 + SkillLevel, (float *)&v92);
          if ( *(_DWORD *)(CharSkill + 12) )
          {
            v52 = 0;
            for ( i = CharProperties::_GetProperty(v64, (int)&CharProperties::s_temp, **(_DWORD **)(CharSkill + 16));
                  ;
                  i = CharProperties::_GetProperty(
                        v64,
                        (int)&CharProperties::s_temp,
                        *(_DWORD *)(*(_DWORD *)(CharSkill + 16) + 4 * v52)) )
            {
              v75 = 0;
              v76 = 0;
              v77 = 0;
              v56 = (_DWORD *)*(v50 - 1);
              v57 = i;
              if ( v56 == (_DWORD *)*v50 )
              {
                std::vector<VarArgs::Variant>::_M_insert_overflow_aux(&(&v70)[4 * v65 + 1]);
                v54 = *(v50 - 1);
              }
              else
              {
                *v56 = v75;
                v56[1] = v76;
                v56[2] = v77;
                v54 = *(v50 - 1) + 12;
                *(v50 - 1) = v54;
              }
              v55 = v54 - 12;
              *(float *)(v54 - 12) = (float)v57 * 0.0039062;
              *(_DWORD *)(v55 + 4) = v57 >> 8;
              *(_DWORD *)(v55 + 8) = 0;
              if ( *(_DWORD *)(CharSkill + 12) <= (unsigned int)++v52 )
                break;
            }
          }
          v50 += 4;
          ++v65;
        }
        while ( v65 != 2 );
        v17 = 1;
        goto LABEL_12;
      }
      v43 = *(_DWORD *)(CharSkill + 68);
      if ( *(_BYTE *)(CharSkill + 24) )
      {
        if ( v43 == -1 )
          goto LABEL_69;
        CurrentFaerieId = Character::SG_GetCurrentFaerieId(PlayerChar, -1);
        v43 += *(_DWORD *)(Character::GetCharFaery(PlayerChar, CurrentFaerieId) + 8);
      }
      if ( v43 >= 0 )
      {
        v45 = (const char *)StringManager::getString((StringManager *)dword_99F760, v43);
        v46 = v45;
LABEL_56:
        v49 = LC_API_STRLEN_0(v45);
        std::string::_M_assign(&v93, v46, &v46[v49]);
        goto LABEL_57;
      }
LABEL_69:
      v46 = "";
      v45 = "";
      goto LABEL_56;
    }
    v38 = *(_DWORD *)(CharSkill + 48);
    if ( *(_BYTE *)(CharSkill + 24) )
    {
      if ( v38 == -1 )
        goto LABEL_67;
      v39 = Character::SG_GetCurrentFaerieId(PlayerChar, -1);
      v38 += *(_DWORD *)(Character::GetCharFaery(PlayerChar, v39) + 8);
    }
    if ( v38 >= 0 )
    {
      v40 = (const char *)StringManager::getString((StringManager *)dword_99F760, v38);
      v41 = &v40[LC_API_STRLEN_0(v40)];
LABEL_42:
      std::string::_M_assign(&v94, v40, v41);
      goto LABEL_43;
    }
LABEL_67:
    v41 = "";
    v40 = "";
    goto LABEL_42;
  }
  v9 = (StringManager *)dword_99F760;
  v10 = PyDataConstants::getConstant((PyDataConstants *)dword_99F758, "StrID", "GAMEPLAYMENUS_SKILL_UNLOCK_AT_LEVEL");
  v11 = (const char *)StringManager::getString(v9, v10);
  v12 = LC_API_STRLEN_0(v11);
  std::string::_M_assign(&v94, v11, &v11[v12]);
  v13 = v72;
  v80 = 0;
  v79 = 0;
  v78 = 0;
  if ( v72 == v73 )
  {
    std::vector<VarArgs::Variant>::_M_insert_overflow_aux(&v71);
    v14 = (float *)v72;
  }
  else
  {
    *v72 = v78;
    *(_DWORD *)&byte_4[(_DWORD)v13] = v79;
    *(_DWORD *)&byte_8[(_DWORD)v13] = v80;
    v14 = (float *)(v72 + 3);
    v72 += 3;
  }
  *(v14 - 3) = (float)*(int *)(CharSkill + 32);
  v15 = *(_DWORD *)(CharSkill + 32);
  v16 = v14 - 3;
  v16[2] = 0.0;
  v17 = 0;
  *((_DWORD *)v16 + 1) = v15;
LABEL_12:
  StringManager::parseEx(
    (StringManager *)dword_99F760,
    (std::string *)&v96,
    v94._M_start_of_storage._M_data,
    (const VarArgs *)&v70);
  StringManager::parseEx(
    (StringManager *)dword_99F760,
    (std::string *)&v95,
    v93._M_start_of_storage._M_data,
    (const VarArgs *)v74);
  v18 = *(void (__fastcall **)(gameswf::as_object *, _BYTE *, _BYTE *))(*(_DWORD *)v66 + 28);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v113, "SkillName");
  v19 = *(_DWORD *)(CharSkill + 64);
  if ( v19 >= 0 )
    v20 = (const char *)StringManager::getString((StringManager *)dword_99F760, v19);
  else
    v20 = "";
  v91[1] = 0;
  v91[0] = 0;
  gameswf::as_value::set_string((gameswf::as_value *)v91, v20);
  v18(v66, v113, v91);
  gameswf::as_value::drop_refs((gameswf::as_value *)v91);
  if ( v113[0] == -1 )
    gameswf::free_internal(p);
  v21 = *(void (__fastcall **)(gameswf::as_object *, _BYTE *, _BYTE *))(*(_DWORD *)v66 + 28);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v111, "SkillDescription");
  v22 = *(_DWORD *)(CharSkill + 52);
  if ( v22 >= 0 )
    v23 = (const char *)StringManager::getString((StringManager *)dword_99F760, v22);
  else
    v23 = "";
  v90[1] = 0;
  v90[0] = 0;
  gameswf::as_value::set_string((gameswf::as_value *)v90, v23);
  v21(v66, v111, v90);
  gameswf::as_value::drop_refs((gameswf::as_value *)v90);
  if ( v111[0] == -1 )
    gameswf::free_internal(v112);
  v24 = *(void (__fastcall **)(gameswf::as_object *, _BYTE *, _BYTE *))(*(_DWORD *)v66 + 28);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v109, "SkillCurrLevel");
  v89[1] = 0;
  v89[0] = 0;
  gameswf::as_value::set_string((gameswf::as_value *)v89, v96._M_start_of_storage._M_data);
  v24(v66, v109, v89);
  gameswf::as_value::drop_refs((gameswf::as_value *)v89);
  if ( v109[0] == -1 )
    gameswf::free_internal(v110);
  v25 = *(void (__fastcall **)(gameswf::as_object *, _BYTE *, _BYTE *))(*(_DWORD *)v66 + 28);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v107, "SkillNextLevel");
  v88[1] = 0;
  v88[0] = 0;
  gameswf::as_value::set_string((gameswf::as_value *)v88, v95._M_start_of_storage._M_data);
  v25(v66, v107, v88);
  gameswf::as_value::drop_refs((gameswf::as_value *)v88);
  if ( v107[0] == -1 )
    gameswf::free_internal(v108);
  v26 = *(void (__fastcall **)(gameswf::as_object *, _BYTE *, _BYTE *))(*(_DWORD *)v66 + 28);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v105, "SkillAssignable");
  v27 = *(_BYTE *)(CharSkill + 44);
  v87[0] = 0;
  v87[4] = v27;
  v87[1] = 1;
  v26(v66, v105, v87);
  gameswf::as_value::drop_refs((gameswf::as_value *)v87);
  if ( v105[0] == -1 )
    gameswf::free_internal(v106);
  v28 = *(void (__fastcall **)(gameswf::as_object *, _BYTE *, _BYTE *))(*(_DWORD *)v66 + 28);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v103, "SkillIcon");
  v29 = *(const char **)(CharSkill + 60);
  v86[1] = 0;
  v86[0] = 0;
  gameswf::as_value::set_string((gameswf::as_value *)v86, v29);
  v28(v66, v103, v86);
  gameswf::as_value::drop_refs((gameswf::as_value *)v86);
  if ( v103[0] == -1 )
    gameswf::free_internal(v104);
  v30 = *(void (__fastcall **)(gameswf::as_object *, _BYTE *, _BYTE *))(*(_DWORD *)v66 + 28);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v101, "SkillLevel");
  v31 = Character::SG_GetSkillLevel(PlayerChar, v67);
  v84[0] = 0;
  v84[1] = 2;
  v92 = (double)v31;
  v32 = (double)v31;
  v85 = __PAIR64__(HIDWORD(v92), LODWORD(v32));
  v30(v66, v101, v84);
  gameswf::as_value::drop_refs((gameswf::as_value *)v84);
  if ( v101[0] == -1 )
    gameswf::free_internal(v102);
  v33 = *(void (__fastcall **)(gameswf::as_object *, _BYTE *, _BYTE *))(*(_DWORD *)v66 + 28);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v99, "SkillAssignedToSlot");
  SkillSlot = Character::SG_GetSkillSlot(PlayerChar, v67);
  v82[0] = 0;
  v82[1] = 2;
  v92 = (double)SkillSlot;
  v35 = (double)SkillSlot;
  v83 = __PAIR64__(HIDWORD(v92), LODWORD(v35));
  v33(v66, v99, v82);
  gameswf::as_value::drop_refs((gameswf::as_value *)v82);
  if ( v99[0] == -1 )
    gameswf::free_internal(v100);
  v36 = *(void (__fastcall **)(gameswf::as_object *, _BYTE *, _BYTE *))(*(_DWORD *)v66 + 28);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v97, "SkillUnlocked");
  v81[0] = 0;
  v81[1] = 1;
  v81[4] = v17;
  v36(v66, v97, v81);
  gameswf::as_value::drop_refs((gameswf::as_value *)v81);
  if ( v97[0] == -1 )
    gameswf::free_internal(v98);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v93);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v94);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v95);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v96);
  (*(void (__fastcall **)(VarArgs *__hidden))v74[0])((VarArgs *)v74);
  (*v70)((VarArgs *)&v70);
LABEL_35:
  gameswf::as_value::set_as_object(*(gameswf::as_value **)a1, v66);
  return &__GLOBAL_OFFSET_TABLE_;
}


// ===== 4466c4 NativeGetPlayerInfos(gameswf::fn_call const&) =====
int __fastcall NativeGetPlayerInfos(const gameswf::fn_call *a1)
{
  int v2; // r3
  int v3; // r0
  gameswf::as_object *v4; // r6
  double v5; // r0
  int v6; // r7
  Character *PlayerChar; // r9
  const char *PlayerName; // r0
  const char *ClassName; // r0
  void (__fastcall *v10)(gameswf::as_object *, _BYTE *, _BYTE *); // r9
  int v11; // r0
  void (__fastcall *v13)(gameswf::as_object *, _BYTE *, _BYTE *); // [sp+0h] [bp-7Ch]
  void (__fastcall *v14)(gameswf::as_object *, _BYTE *, _BYTE *); // [sp+0h] [bp-7Ch]
  int v15; // [sp+4h] [bp-78h]
  _BYTE v16[4]; // [sp+Ch] [bp-70h] BYREF
  double v17; // [sp+10h] [bp-6Ch]
  _BYTE v18[12]; // [sp+18h] [bp-64h] BYREF
  _BYTE v19[12]; // [sp+24h] [bp-58h] BYREF
  double v20; // [sp+30h] [bp-4Ch]
  _BYTE v21[8]; // [sp+38h] [bp-44h] BYREF
  void *p; // [sp+44h] [bp-38h]
  _BYTE v23[8]; // [sp+4Ch] [bp-30h] BYREF
  void *v24; // [sp+58h] [bp-24h]
  _BYTE v25[8]; // [sp+60h] [bp-1Ch] BYREF
  void *v26; // [sp+6Ch] [bp-10h]

  v2 = **((_DWORD **)a1 + 3) + 12 * *((_DWORD *)a1 + 5);
  if ( *(_BYTE *)(v2 + 1) == 5 )
    v3 = *(_DWORD *)(v2 + 4);
  else
    v3 = 0;
  v4 = (gameswf::as_object *)gameswf::cast_to<gameswf::as_object>(v3);
  LODWORD(v5) = gameswf::as_value::to_number((gameswf::as_value *)(**((_DWORD **)a1 + 3) + 12
                                                                                         * (*((_DWORD *)a1 + 5) - 1)));
  v15 = (int)v5;
  if ( *((_DWORD *)a1 + 4) == 3 )
    v6 = gameswf::as_value::to_bool((gameswf::as_value *)(**((_DWORD **)a1 + 3) + 12 * (*((_DWORD *)a1 + 5) - 2)));
  else
    v6 = 0;
  PlayerChar = NativeGetPlayerChar(v15, v6);
  if ( PlayerChar )
  {
    v13 = *(void (__fastcall **)(gameswf::as_object *, _BYTE *, _BYTE *))(*(_DWORD *)v4 + 28);
    gameswf::tu_string::tu_string((gameswf::tu_string *)v25, "PlayerName");
    PlayerName = (const char *)Character::SG_GetPlayerName(PlayerChar);
    v19[1] = 0;
    v19[0] = 0;
    gameswf::as_value::set_string((gameswf::as_value *)v19, PlayerName);
    v13(v4, v25, v19);
    gameswf::as_value::drop_refs((gameswf::as_value *)v19);
    if ( v25[0] == -1 )
      gameswf::free_internal(v26);
    v14 = *(void (__fastcall **)(gameswf::as_object *, _BYTE *, _BYTE *))(*(_DWORD *)v4 + 28);
    gameswf::tu_string::tu_string((gameswf::tu_string *)v23, "PlayerClass");
    ClassName = (const char *)Character::GetClassName(PlayerChar);
    v18[1] = 0;
    v18[0] = 0;
    gameswf::as_value::set_string((gameswf::as_value *)v18, ClassName);
    v14(v4, v23, v18);
    gameswf::as_value::drop_refs((gameswf::as_value *)v18);
    if ( v23[0] == -1 )
      gameswf::free_internal(v24);
    v10 = *(void (__fastcall **)(gameswf::as_object *, _BYTE *, _BYTE *))(*(_DWORD *)v4 + 28);
    gameswf::tu_string::tu_string((gameswf::tu_string *)v21, "PlayerNumber");
    if ( v6 )
      v11 = *((_DWORD *)PlayerManager::GetRemotePlayer((PlayerManager *)dword_99F76C, v15, 0) + 414);
    else
      v11 = *(_DWORD *)&PlayerManager::GetLocalPlayer((PlayerManager *)dword_99F76C, v15, 0)[1].unknown_000[20];
    v16[0] = 0;
    v16[1] = 2;
    v20 = (double)v11;
    v17 = (double)v11;
    v10(v4, v21, v16);
    gameswf::as_value::drop_refs((gameswf::as_value *)v16);
    if ( v21[0] == -1 )
      gameswf::free_internal(p);
  }
  return gameswf::as_value::set_as_object(*(gameswf::as_value **)a1, v4);
}


// ===== 446978 NativeGetStringNumPotions(gameswf::fn_call const&) =====
void __fastcall NativeGetStringNumPotions(const gameswf::fn_call *a1)
{
  int v1; // r7
  int *v2; // r3
  int v3; // r0
  int v4; // r3
  int v5; // r2
  int v6; // r0
  int v7; // r1
  gameswf::as_value *v8; // r0
  double v9; // r0
  Character *PlayerChar; // r9
  StringManager *v11; // r10
  int Constant; // r0
  const char *String; // r11
  int NumPotions; // r0
  void (__fastcall *v15)(int, _BYTE *, _BYTE *); // r9
  _BYTE v16[12]; // [sp+4h] [bp-40h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v17; // [sp+10h] [bp-34h] BYREF
  _BYTE v18[8]; // [sp+28h] [bp-1Ch] BYREF
  void *p; // [sp+34h] [bp-10h]

  v2 = *((int **)a1 + 3);
  v3 = *((_DWORD *)a1 + 5);
  v4 = *v2;
  v5 = v4 + 12 * v3;
  v6 = v3 - 1;
  v7 = *(char *)(v5 + 1);
  if ( v7 == 5 )
    v1 = *(_DWORD *)(v5 + 4);
  v8 = (gameswf::as_value *)(v4 + 12 * v6);
  if ( v7 != 5 )
    v1 = 0;
  LODWORD(v9) = gameswf::as_value::to_number(v8);
  PlayerChar = NativeGetPlayerChar((int)v9, 0);
  if ( PlayerChar )
  {
    v17._M_finish = (char *)&v17;
    v17._M_start_of_storage._M_data = (char *)&v17;
    std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block(&v17, 0x10u);
    *v17._M_finish = 0;
    v11 = (StringManager *)dword_99F760;
    Constant = PyDataConstants::getConstant((PyDataConstants *)dword_99F758, "StrID", "GAMEPLAYMENUS_POTIONS");
    String = (const char *)StringManager::getString(v11, Constant);
    NumPotions = ItemInventory::GetNumPotions((Character *)((char *)PlayerChar + 892));
    StringManager::parse(v11, (std::string *)&v17, String, NumPotions);
    v15 = *(void (__fastcall **)(int, _BYTE *, _BYTE *))(*(_DWORD *)v1 + 28);
    gameswf::tu_string::tu_string((gameswf::tu_string *)v18, "StrNumPotions");
    v16[1] = 0;
    v16[0] = 0;
    gameswf::as_value::set_string((gameswf::as_value *)v16, v17._M_start_of_storage._M_data);
    v15(v1, v18, v16);
    gameswf::as_value::drop_refs((gameswf::as_value *)v16);
    if ( v18[0] == -1 )
      gameswf::free_internal(p);
    std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v17);
  }
}


// ===== 446afc NativeGetPlayerStats(gameswf::fn_call const&) =====
int __fastcall NativeGetPlayerStats(const gameswf::fn_call *a1)
{
  int v2; // r3
  int v3; // r0
  gameswf::as_object *v4; // r4
  double v5; // r0
  Character *PlayerChar; // r0
  double v7; // r10
  CharProperties *v8; // r5
  int Int; // r6
  int v10; // r6
  int v11; // r6
  int v12; // r6
  int v13; // r6
  void (__fastcall *v14)(gameswf::as_object *, _BYTE *, _BYTE *); // r7
  const char *PlayerName; // r0
  void (__fastcall *v16)(gameswf::as_object *, _BYTE *, _BYTE *); // r7
  const char *ClassName; // r0
  void (__fastcall *v18)(gameswf::as_object *, _BYTE *, _BYTE *); // r6
  void (__fastcall *v19)(gameswf::as_object *, _BYTE *, _BYTE *); // r8
  void (__fastcall *v20)(gameswf::as_object *, _BYTE *, _BYTE *); // r10
  double v21; // kr00_8
  void (__fastcall *v22)(gameswf::as_object *, _BYTE *, _BYTE *); // r8
  void (__fastcall *v23)(gameswf::as_object *, _BYTE *, _BYTE *); // r8
  void (__fastcall *v24)(gameswf::as_object *, _BYTE *, _BYTE *); // r8
  void (__fastcall *v25)(gameswf::as_object *, _BYTE *, _BYTE *); // r10
  double v26; // kr08_8
  void (__fastcall *v27)(gameswf::as_object *, _BYTE *, _BYTE *); // r8
  void (__fastcall *v28)(gameswf::as_object *, _BYTE *, _BYTE *); // r8
  void (__fastcall *v29)(gameswf::as_object *, _BYTE *, _BYTE *); // r8
  void (__fastcall *v30)(gameswf::as_object *, _BYTE *, _BYTE *); // r10
  double v31; // kr10_8
  void (__fastcall *v32)(gameswf::as_object *, _BYTE *, _BYTE *); // r8
  void (__fastcall *v33)(gameswf::as_object *, _BYTE *, _BYTE *); // r8
  void (__fastcall *v34)(gameswf::as_object *, _BYTE *, _BYTE *); // r8
  void (__fastcall *v35)(gameswf::as_object *, _BYTE *, _BYTE *); // r10
  double v36; // kr18_8
  void (__fastcall *v37)(gameswf::as_object *, _BYTE *, _BYTE *); // r6
  void (__fastcall *v38)(gameswf::as_object *, _BYTE *, _BYTE *); // r8
  int v39; // r6
  void (__fastcall *v40)(gameswf::as_object *, _BYTE *, _BYTE *); // r8
  void (__fastcall *v41)(gameswf::as_object *, _BYTE *, _BYTE *); // r10
  double v42; // kr20_8
  void (__fastcall *v43)(gameswf::as_object *, _BYTE *, _BYTE *); // r8
  void (__fastcall *v44)(gameswf::as_object *, _BYTE *, _BYTE *); // r8
  void (__fastcall *v45)(gameswf::as_object *, _BYTE *, _BYTE *); // r8
  void (__fastcall *v46)(gameswf::as_object *, _BYTE *, _BYTE *); // r10
  double v47; // kr28_8
  void (__fastcall *v48)(gameswf::as_object *, _BYTE *, _BYTE *); // r8
  void (__fastcall *v49)(gameswf::as_object *, _BYTE *, _BYTE *); // r8
  void (__fastcall *v50)(gameswf::as_object *, _BYTE *, _BYTE *); // r7
  void (__fastcall *v51)(gameswf::as_object *, _BYTE *, _BYTE *); // r8
  double v52; // kr30_8
  void (__fastcall *v53)(gameswf::as_object *, _BYTE *, _BYTE *); // r8
  void (__fastcall *v54)(gameswf::as_object *, _BYTE *, _BYTE *); // r8
  void (__fastcall *v55)(gameswf::as_object *, _BYTE *, _BYTE *); // r8
  void (__fastcall *v56)(gameswf::as_object *, _BYTE *, _BYTE *); // r8
  double v57; // kr38_8
  void (__fastcall *v58)(gameswf::as_object *, _BYTE *, _BYTE *); // r7
  void (__fastcall *v59)(gameswf::as_object *, _BYTE *, _BYTE *); // r8
  void (__fastcall *v60)(gameswf::as_object *, _BYTE *, _BYTE *); // r8
  void (__fastcall *v61)(gameswf::as_object *, _BYTE *, _BYTE *); // r10
  double v62; // kr40_8
  void (__fastcall *v63)(gameswf::as_object *, _BYTE *, _BYTE *); // r8
  void (__fastcall *v64)(gameswf::as_object *, _BYTE *, _BYTE *); // r8
  void (__fastcall *v65)(gameswf::as_object *, _BYTE *, _BYTE *); // r8
  void (__fastcall *v66)(gameswf::as_object *, _BYTE *, _BYTE *); // r10
  double v67; // kr48_8
  void (__fastcall *v68)(gameswf::as_object *, _BYTE *, _BYTE *); // r8
  void (__fastcall *v69)(gameswf::as_object *, _BYTE *, _BYTE *); // r8
  void (__fastcall *v70)(gameswf::as_object *, _BYTE *, _BYTE *); // r8
  void (__fastcall *v71)(gameswf::as_object *, _BYTE *, _BYTE *); // r10
  double v72; // kr50_8
  void (__fastcall *v73)(gameswf::as_object *, _BYTE *, _BYTE *); // r8
  void (__fastcall *v74)(gameswf::as_object *, _BYTE *, _BYTE *); // r8
  ItemInventory *v75; // r6
  void (__fastcall *v76)(gameswf::as_object *, _BYTE *, _BYTE *); // r8
  void (__fastcall *v77)(gameswf::as_object *, _BYTE *, _BYTE *); // r8
  void (__fastcall *v78)(gameswf::as_object *, _BYTE *, _BYTE *); // r8
  void (__fastcall *v79)(gameswf::as_object *, _BYTE *, _BYTE *); // r7
  void (__fastcall *v80)(gameswf::as_object *, _BYTE *, _BYTE *); // r8
  void (__fastcall *v81)(gameswf::as_object *, _BYTE *, _BYTE *); // r10
  double v82; // kr58_8
  void (__fastcall *v83)(gameswf::as_object *, _BYTE *, _BYTE *); // r8
  void (__fastcall *v84)(gameswf::as_object *, _BYTE *, _BYTE *); // r8
  void (__fastcall *v85)(gameswf::as_object *, _BYTE *, _BYTE *); // r8
  void (__fastcall *v86)(gameswf::as_object *, _BYTE *, _BYTE *); // r10
  void (__fastcall *v87)(gameswf::as_object *, _BYTE *, _BYTE *); // r8
  void (__fastcall *v88)(gameswf::as_object *, _BYTE *, _BYTE *); // r8
  void (__fastcall *v89)(gameswf::as_object *, _BYTE *, _BYTE *); // r8
  void (__fastcall *v90)(gameswf::as_object *, _BYTE *, _BYTE *); // r10
  double v91; // kr60_8
  void (__fastcall *v92)(gameswf::as_object *, _BYTE *, _BYTE *); // r8
  void (__fastcall *v93)(gameswf::as_object *, _BYTE *, _BYTE *); // r8
  void (__fastcall *v94)(gameswf::as_object *, _BYTE *, _BYTE *); // r8
  void (__fastcall *v95)(gameswf::as_object *, _BYTE *, _BYTE *); // r10
  double v96; // kr68_8
  void (__fastcall *v97)(gameswf::as_object *, _BYTE *, _BYTE *); // r8
  void (__fastcall *v98)(gameswf::as_object *, _BYTE *, _BYTE *); // r8
  void (__fastcall *v99)(gameswf::as_object *, _BYTE *, _BYTE *); // r8
  void (__fastcall *v100)(gameswf::as_object *, _BYTE *, _BYTE *); // r8
  double v101; // kr70_8
  Character *v103; // [sp+4h] [bp-8D0h]
  int v104; // [sp+Ch] [bp-8C8h]
  int v105; // [sp+10h] [bp-8C4h]
  int v106; // [sp+14h] [bp-8C0h]
  int v107; // [sp+18h] [bp-8BCh]
  int v108; // [sp+1Ch] [bp-8B8h]
  _BYTE v109[4]; // [sp+24h] [bp-8B0h] BYREF
  unsigned __int64 v110; // [sp+28h] [bp-8ACh]
  _BYTE v111[4]; // [sp+30h] [bp-8A4h] BYREF
  double v112; // [sp+34h] [bp-8A0h]
  _BYTE v113[4]; // [sp+3Ch] [bp-898h] BYREF
  double v114; // [sp+40h] [bp-894h]
  _BYTE v115[4]; // [sp+48h] [bp-88Ch] BYREF
  double v116; // [sp+4Ch] [bp-888h]
  _BYTE v117[4]; // [sp+54h] [bp-880h] BYREF
  unsigned __int64 v118; // [sp+58h] [bp-87Ch]
  _BYTE v119[4]; // [sp+60h] [bp-874h] BYREF
  double v120; // [sp+64h] [bp-870h]
  _BYTE v121[4]; // [sp+6Ch] [bp-868h] BYREF
  double v122; // [sp+70h] [bp-864h]
  _BYTE v123[4]; // [sp+78h] [bp-85Ch] BYREF
  double v124; // [sp+7Ch] [bp-858h]
  _BYTE v125[4]; // [sp+84h] [bp-850h] BYREF
  unsigned __int64 v126; // [sp+88h] [bp-84Ch]
  _BYTE v127[4]; // [sp+90h] [bp-844h] BYREF
  double v128; // [sp+94h] [bp-840h]
  _BYTE v129[4]; // [sp+9Ch] [bp-838h] BYREF
  double v130; // [sp+A0h] [bp-834h]
  _BYTE v131[4]; // [sp+A8h] [bp-82Ch] BYREF
  double v132; // [sp+ACh] [bp-828h]
  _BYTE v133[4]; // [sp+B4h] [bp-820h] BYREF
  double v134; // [sp+B8h] [bp-81Ch]
  _BYTE v135[4]; // [sp+C0h] [bp-814h] BYREF
  double v136; // [sp+C4h] [bp-810h]
  _BYTE v137[4]; // [sp+CCh] [bp-808h] BYREF
  double v138; // [sp+D0h] [bp-804h]
  _BYTE v139[4]; // [sp+D8h] [bp-7FCh] BYREF
  double v140; // [sp+DCh] [bp-7F8h]
  _BYTE v141[4]; // [sp+E4h] [bp-7F0h] BYREF
  unsigned __int64 v142; // [sp+E8h] [bp-7ECh]
  _BYTE v143[4]; // [sp+F0h] [bp-7E4h] BYREF
  double v144; // [sp+F4h] [bp-7E0h]
  _BYTE v145[12]; // [sp+FCh] [bp-7D8h] BYREF
  _BYTE v146[8]; // [sp+108h] [bp-7CCh] BYREF
  _BYTE v147[12]; // [sp+114h] [bp-7C0h] BYREF
  _BYTE v148[12]; // [sp+120h] [bp-7B4h] BYREF
  _BYTE v149[4]; // [sp+12Ch] [bp-7A8h] BYREF
  double v150; // [sp+130h] [bp-7A4h]
  _BYTE v151[4]; // [sp+138h] [bp-79Ch] BYREF
  double v152; // [sp+13Ch] [bp-798h]
  _BYTE v153[4]; // [sp+144h] [bp-790h] BYREF
  unsigned __int64 v154; // [sp+148h] [bp-78Ch]
  _BYTE v155[4]; // [sp+150h] [bp-784h] BYREF
  double v156; // [sp+154h] [bp-780h]
  _BYTE v157[4]; // [sp+15Ch] [bp-778h] BYREF
  double v158; // [sp+160h] [bp-774h]
  _BYTE v159[4]; // [sp+168h] [bp-76Ch] BYREF
  double v160; // [sp+16Ch] [bp-768h]
  _BYTE v161[4]; // [sp+174h] [bp-760h] BYREF
  unsigned __int64 v162; // [sp+178h] [bp-75Ch]
  _BYTE v163[4]; // [sp+180h] [bp-754h] BYREF
  double v164; // [sp+184h] [bp-750h]
  _BYTE v165[4]; // [sp+18Ch] [bp-748h] BYREF
  double v166; // [sp+190h] [bp-744h]
  _BYTE v167[4]; // [sp+198h] [bp-73Ch] BYREF
  double v168; // [sp+19Ch] [bp-738h]
  _BYTE v169[4]; // [sp+1A4h] [bp-730h] BYREF
  unsigned __int64 v170; // [sp+1A8h] [bp-72Ch]
  _BYTE v171[4]; // [sp+1B0h] [bp-724h] BYREF
  double v172; // [sp+1B4h] [bp-720h]
  _BYTE v173[4]; // [sp+1BCh] [bp-718h] BYREF
  double v174; // [sp+1C0h] [bp-714h]
  _BYTE v175[4]; // [sp+1C8h] [bp-70Ch] BYREF
  double v176; // [sp+1CCh] [bp-708h]
  _BYTE v177[4]; // [sp+1D4h] [bp-700h] BYREF
  unsigned __int64 v178; // [sp+1D8h] [bp-6FCh]
  _BYTE v179[4]; // [sp+1E0h] [bp-6F4h] BYREF
  double v180; // [sp+1E4h] [bp-6F0h]
  _BYTE v181[4]; // [sp+1ECh] [bp-6E8h] BYREF
  double v182; // [sp+1F0h] [bp-6E4h]
  _BYTE v183[4]; // [sp+1F8h] [bp-6DCh] BYREF
  double v184; // [sp+1FCh] [bp-6D8h]
  _BYTE v185[4]; // [sp+204h] [bp-6D0h] BYREF
  unsigned __int64 v186; // [sp+208h] [bp-6CCh]
  _BYTE v187[4]; // [sp+210h] [bp-6C4h] BYREF
  double v188; // [sp+214h] [bp-6C0h]
  _BYTE v189[4]; // [sp+21Ch] [bp-6B8h] BYREF
  double v190; // [sp+220h] [bp-6B4h]
  _BYTE v191[4]; // [sp+228h] [bp-6ACh] BYREF
  double v192; // [sp+22Ch] [bp-6A8h]
  _BYTE v193[4]; // [sp+234h] [bp-6A0h] BYREF
  unsigned __int64 v194; // [sp+238h] [bp-69Ch]
  _BYTE v195[4]; // [sp+240h] [bp-694h] BYREF
  double v196; // [sp+244h] [bp-690h]
  _BYTE v197[4]; // [sp+24Ch] [bp-688h] BYREF
  double v198; // [sp+250h] [bp-684h]
  _BYTE v199[4]; // [sp+258h] [bp-67Ch] BYREF
  double v200; // [sp+25Ch] [bp-678h]
  _BYTE v201[4]; // [sp+264h] [bp-670h] BYREF
  unsigned __int64 v202; // [sp+268h] [bp-66Ch]
  _BYTE v203[4]; // [sp+270h] [bp-664h] BYREF
  double v204; // [sp+274h] [bp-660h]
  _BYTE v205[4]; // [sp+27Ch] [bp-658h] BYREF
  double v206; // [sp+280h] [bp-654h]
  _BYTE v207[4]; // [sp+288h] [bp-64Ch] BYREF
  double v208; // [sp+28Ch] [bp-648h]
  _BYTE v209[4]; // [sp+294h] [bp-640h] BYREF
  unsigned __int64 v210; // [sp+298h] [bp-63Ch]
  _BYTE v211[4]; // [sp+2A0h] [bp-634h] BYREF
  double v212; // [sp+2A4h] [bp-630h]
  _BYTE v213[4]; // [sp+2ACh] [bp-628h] BYREF
  double v214; // [sp+2B0h] [bp-624h]
  _BYTE v215[4]; // [sp+2B8h] [bp-61Ch] BYREF
  double v216; // [sp+2BCh] [bp-618h]
  _BYTE v217[4]; // [sp+2C4h] [bp-610h] BYREF
  unsigned __int64 v218; // [sp+2C8h] [bp-60Ch]
  _BYTE v219[4]; // [sp+2D0h] [bp-604h] BYREF
  double v220; // [sp+2D4h] [bp-600h]
  _BYTE v221[4]; // [sp+2DCh] [bp-5F8h] BYREF
  double v222; // [sp+2E0h] [bp-5F4h]
  _BYTE v223[4]; // [sp+2E8h] [bp-5ECh] BYREF
  double v224; // [sp+2ECh] [bp-5E8h]
  _BYTE v225[4]; // [sp+2F4h] [bp-5E0h] BYREF
  unsigned __int64 v226; // [sp+2F8h] [bp-5DCh]
  _BYTE v227[4]; // [sp+300h] [bp-5D4h] BYREF
  double v228; // [sp+304h] [bp-5D0h]
  _BYTE v229[4]; // [sp+30Ch] [bp-5C8h] BYREF
  double v230; // [sp+310h] [bp-5C4h]
  _BYTE v231[4]; // [sp+318h] [bp-5BCh] BYREF
  double v232; // [sp+31Ch] [bp-5B8h]
  _BYTE v233[4]; // [sp+324h] [bp-5B0h] BYREF
  unsigned __int64 v234; // [sp+328h] [bp-5ACh]
  _BYTE v235[4]; // [sp+330h] [bp-5A4h] BYREF
  double v236; // [sp+334h] [bp-5A0h]
  _BYTE v237[4]; // [sp+33Ch] [bp-598h] BYREF
  double v238; // [sp+340h] [bp-594h]
  _BYTE v239[8]; // [sp+348h] [bp-58Ch] BYREF
  _BYTE v240[12]; // [sp+354h] [bp-580h] BYREF
  double v241; // [sp+360h] [bp-574h]
  _BYTE v242[8]; // [sp+368h] [bp-56Ch] BYREF
  void *p; // [sp+374h] [bp-560h]
  _BYTE v244[4]; // [sp+37Ch] [bp-558h] BYREF
  void *v245; // [sp+388h] [bp-54Ch]
  _BYTE v246[8]; // [sp+390h] [bp-544h] BYREF
  void *v247; // [sp+39Ch] [bp-538h]
  _BYTE v248[8]; // [sp+3A4h] [bp-530h] BYREF
  void *v249; // [sp+3B0h] [bp-524h]
  _BYTE v250[8]; // [sp+3B8h] [bp-51Ch] BYREF
  void *v251; // [sp+3C4h] [bp-510h]
  _BYTE v252[4]; // [sp+3CCh] [bp-508h] BYREF
  void *v253; // [sp+3D8h] [bp-4FCh]
  _BYTE v254[8]; // [sp+3E0h] [bp-4F4h] BYREF
  void *v255; // [sp+3ECh] [bp-4E8h]
  _BYTE v256[8]; // [sp+3F4h] [bp-4E0h] BYREF
  void *v257; // [sp+400h] [bp-4D4h]
  _BYTE v258[8]; // [sp+408h] [bp-4CCh] BYREF
  void *v259; // [sp+414h] [bp-4C0h]
  _BYTE v260[4]; // [sp+41Ch] [bp-4B8h] BYREF
  void *v261; // [sp+428h] [bp-4ACh]
  _BYTE v262[8]; // [sp+430h] [bp-4A4h] BYREF
  void *v263; // [sp+43Ch] [bp-498h]
  _BYTE v264[8]; // [sp+444h] [bp-490h] BYREF
  void *v265; // [sp+450h] [bp-484h]
  _BYTE v266[8]; // [sp+458h] [bp-47Ch] BYREF
  void *v267; // [sp+464h] [bp-470h]
  _BYTE v268[4]; // [sp+46Ch] [bp-468h] BYREF
  void *v269; // [sp+478h] [bp-45Ch]
  _BYTE v270[8]; // [sp+480h] [bp-454h] BYREF
  void *v271; // [sp+48Ch] [bp-448h]
  _BYTE v272[8]; // [sp+494h] [bp-440h] BYREF
  void *v273; // [sp+4A0h] [bp-434h]
  _BYTE v274[8]; // [sp+4A8h] [bp-42Ch] BYREF
  void *v275; // [sp+4B4h] [bp-420h]
  _BYTE v276[4]; // [sp+4BCh] [bp-418h] BYREF
  void *v277; // [sp+4C8h] [bp-40Ch]
  _BYTE v278[8]; // [sp+4D0h] [bp-404h] BYREF
  void *v279; // [sp+4DCh] [bp-3F8h]
  _BYTE v280[8]; // [sp+4E4h] [bp-3F0h] BYREF
  void *v281; // [sp+4F0h] [bp-3E4h]
  _BYTE v282[8]; // [sp+4F8h] [bp-3DCh] BYREF
  void *v283; // [sp+504h] [bp-3D0h]
  _BYTE v284[8]; // [sp+50Ch] [bp-3C8h] BYREF
  void *v285; // [sp+518h] [bp-3BCh]
  _BYTE v286[8]; // [sp+520h] [bp-3B4h] BYREF
  void *v287; // [sp+52Ch] [bp-3A8h]
  _BYTE v288[8]; // [sp+534h] [bp-3A0h] BYREF
  void *v289; // [sp+540h] [bp-394h]
  _BYTE v290[8]; // [sp+548h] [bp-38Ch] BYREF
  void *v291; // [sp+554h] [bp-380h]
  _BYTE v292[8]; // [sp+55Ch] [bp-378h] BYREF
  void *v293; // [sp+568h] [bp-36Ch]
  _BYTE v294[8]; // [sp+570h] [bp-364h] BYREF
  void *v295; // [sp+57Ch] [bp-358h]
  _BYTE v296[8]; // [sp+584h] [bp-350h] BYREF
  void *v297; // [sp+590h] [bp-344h]
  _BYTE v298[8]; // [sp+598h] [bp-33Ch] BYREF
  void *v299; // [sp+5A4h] [bp-330h]
  _BYTE v300[8]; // [sp+5ACh] [bp-328h] BYREF
  void *v301; // [sp+5B8h] [bp-31Ch]
  _BYTE v302[8]; // [sp+5C0h] [bp-314h] BYREF
  void *v303; // [sp+5CCh] [bp-308h]
  _BYTE v304[8]; // [sp+5D4h] [bp-300h] BYREF
  void *v305; // [sp+5E0h] [bp-2F4h]
  _BYTE v306[8]; // [sp+5E8h] [bp-2ECh] BYREF
  void *v307; // [sp+5F4h] [bp-2E0h]
  _BYTE v308[8]; // [sp+5FCh] [bp-2D8h] BYREF
  void *v309; // [sp+608h] [bp-2CCh]
  _BYTE v310[8]; // [sp+610h] [bp-2C4h] BYREF
  void *v311; // [sp+61Ch] [bp-2B8h]
  _BYTE v312[8]; // [sp+624h] [bp-2B0h] BYREF
  void *v313; // [sp+630h] [bp-2A4h]
  _BYTE v314[8]; // [sp+638h] [bp-29Ch] BYREF
  void *v315; // [sp+644h] [bp-290h]
  _BYTE v316[8]; // [sp+64Ch] [bp-288h] BYREF
  void *v317; // [sp+658h] [bp-27Ch]
  _BYTE v318[8]; // [sp+660h] [bp-274h] BYREF
  void *v319; // [sp+66Ch] [bp-268h]
  _BYTE v320[8]; // [sp+674h] [bp-260h] BYREF
  void *v321; // [sp+680h] [bp-254h]
  _BYTE v322[8]; // [sp+688h] [bp-24Ch] BYREF
  void *v323; // [sp+694h] [bp-240h]
  _BYTE v324[8]; // [sp+69Ch] [bp-238h] BYREF
  void *v325; // [sp+6A8h] [bp-22Ch]
  _BYTE v326[8]; // [sp+6B0h] [bp-224h] BYREF
  void *v327; // [sp+6BCh] [bp-218h]
  _BYTE v328[8]; // [sp+6C4h] [bp-210h] BYREF
  void *v329; // [sp+6D0h] [bp-204h]
  _BYTE v330[8]; // [sp+6D8h] [bp-1FCh] BYREF
  void *v331; // [sp+6E4h] [bp-1F0h]
  _BYTE v332[8]; // [sp+6ECh] [bp-1E8h] BYREF
  void *v333; // [sp+6F8h] [bp-1DCh]
  _BYTE v334[8]; // [sp+700h] [bp-1D4h] BYREF
  void *v335; // [sp+70Ch] [bp-1C8h]
  _BYTE v336[8]; // [sp+714h] [bp-1C0h] BYREF
  void *v337; // [sp+720h] [bp-1B4h]
  _BYTE v338[8]; // [sp+728h] [bp-1ACh] BYREF
  void *v339; // [sp+734h] [bp-1A0h]
  _BYTE v340[8]; // [sp+73Ch] [bp-198h] BYREF
  void *v341; // [sp+748h] [bp-18Ch]
  _BYTE v342[8]; // [sp+750h] [bp-184h] BYREF
  void *v343; // [sp+75Ch] [bp-178h]
  _BYTE v344[8]; // [sp+764h] [bp-170h] BYREF
  void *v345; // [sp+770h] [bp-164h]
  _BYTE v346[8]; // [sp+778h] [bp-15Ch] BYREF
  void *v347; // [sp+784h] [bp-150h]
  _BYTE v348[8]; // [sp+78Ch] [bp-148h] BYREF
  void *v349; // [sp+798h] [bp-13Ch]
  _BYTE v350[8]; // [sp+7A0h] [bp-134h] BYREF
  void *v351; // [sp+7ACh] [bp-128h]
  _BYTE v352[8]; // [sp+7B4h] [bp-120h] BYREF
  void *v353; // [sp+7C0h] [bp-114h]
  _BYTE v354[8]; // [sp+7C8h] [bp-10Ch] BYREF
  void *v355; // [sp+7D4h] [bp-100h]
  _BYTE v356[8]; // [sp+7DCh] [bp-F8h] BYREF
  void *v357; // [sp+7E8h] [bp-ECh]
  _BYTE v358[8]; // [sp+7F0h] [bp-E4h] BYREF
  void *v359; // [sp+7FCh] [bp-D8h]
  _BYTE v360[8]; // [sp+804h] [bp-D0h] BYREF
  void *v361; // [sp+810h] [bp-C4h]
  _BYTE v362[8]; // [sp+818h] [bp-BCh] BYREF
  void *v363; // [sp+824h] [bp-B0h]
  _BYTE v364[8]; // [sp+82Ch] [bp-A8h] BYREF
  void *v365; // [sp+838h] [bp-9Ch]
  _BYTE v366[8]; // [sp+840h] [bp-94h] BYREF
  void *v367; // [sp+84Ch] [bp-88h]
  _BYTE v368[8]; // [sp+854h] [bp-80h] BYREF
  void *v369; // [sp+860h] [bp-74h]
  _BYTE v370[8]; // [sp+868h] [bp-6Ch] BYREF
  void *v371; // [sp+874h] [bp-60h]
  _BYTE v372[8]; // [sp+87Ch] [bp-58h] BYREF
  void *v373; // [sp+888h] [bp-4Ch]
  _BYTE v374[8]; // [sp+890h] [bp-44h] BYREF
  void *v375; // [sp+89Ch] [bp-38h]
  _BYTE v376[8]; // [sp+8A4h] [bp-30h] BYREF
  void *v377; // [sp+8B0h] [bp-24h]
  _BYTE v378[8]; // [sp+8B8h] [bp-1Ch] BYREF
  void *v379; // [sp+8C4h] [bp-10h]

  v2 = **((_DWORD **)a1 + 3) + 12 * *((_DWORD *)a1 + 5);
  if ( *(_BYTE *)(v2 + 1) == 5 )
    v3 = *(_DWORD *)(v2 + 4);
  else
    v3 = 0;
  v4 = (gameswf::as_object *)gameswf::cast_to<gameswf::as_object>(v3);
  LODWORD(v5) = gameswf::as_value::to_number((gameswf::as_value *)(**((_DWORD **)a1 + 3) + 12
                                                                                         * (*((_DWORD *)a1 + 5) - 1)));
  PlayerChar = NativeGetPlayerChar((int)v5, 0);
  v103 = PlayerChar;
  if ( PlayerChar )
  {
    switch ( Character::SG_GetPlayerClass(PlayerChar) )
    {
      case 290:
      case 291:
      case 292:
        v7 = 3.0;
        break;
      case 325:
      case 326:
      case 327:
        v7 = 2.0;
        break;
      default:
        v7 = 1.0;
        break;
    }
    v8 = (Character *)((char *)v103 + 1376);
    Int = CharProperties::PROPS_GetInt((Character *)((char *)v103 + 1376), 79, 0);
    v108 = Int + (CharProperties::PROPS_GetBonusDamage((Character *)((char *)v103 + 1376), 0) >> 8);
    v10 = CharProperties::PROPS_GetInt((Character *)((char *)v103 + 1376), 80, 0);
    v107 = v10 + (CharProperties::PROPS_GetBonusDamage((Character *)((char *)v103 + 1376), 0) >> 8);
    v11 = CharProperties::PROPS_GetInt((Character *)((char *)v103 + 1376), 81, 0);
    v106 = v11 + (CharProperties::PROPS_GetBonusDamage((Character *)((char *)v103 + 1376), 1) >> 8);
    v12 = CharProperties::PROPS_GetInt((Character *)((char *)v103 + 1376), 82, 0);
    v105 = v12 + (CharProperties::PROPS_GetBonusDamage((Character *)((char *)v103 + 1376), 1) >> 8);
    v13 = CharProperties::PROPS_GetInt((Character *)((char *)v103 + 1376), 50, 0);
    v104 = v13 + (CharProperties::PROPS_GetBonusAttackRating((Character *)((char *)v103 + 1376), 0) >> 8);
    v14 = *(void (__fastcall **)(gameswf::as_object *, _BYTE *, _BYTE *))(*(_DWORD *)v4 + 28);
    gameswf::tu_string::tu_string((gameswf::tu_string *)v378, "Name");
    PlayerName = (const char *)Character::SG_GetPlayerName(v103);
    v240[1] = 0;
    v240[0] = 0;
    gameswf::as_value::set_string((gameswf::as_value *)v240, PlayerName);
    v14(v4, v378, v240);
    gameswf::as_value::drop_refs((gameswf::as_value *)v240);
    if ( v378[0] == -1 )
      gameswf::free_internal(v379);
    v16 = *(void (__fastcall **)(gameswf::as_object *, _BYTE *, _BYTE *))(*(_DWORD *)v4 + 28);
    gameswf::tu_string::tu_string((gameswf::tu_string *)v376, "Class");
    ClassName = (const char *)Character::GetClassName(v103);
    v239[1] = 0;
    v239[0] = 0;
    gameswf::as_value::set_string((gameswf::as_value *)v239, ClassName);
    v16(v4, v376, v239);
    gameswf::as_value::drop_refs((gameswf::as_value *)v239);
    if ( v376[0] == -1 )
      gameswf::free_internal(v377);
    v18 = *(void (__fastcall **)(gameswf::as_object *, _BYTE *, _BYTE *))(*(_DWORD *)v4 + 28);
    gameswf::tu_string::tu_string((gameswf::tu_string *)v374, "Icon");
    v237[0] = 0;
    v237[1] = 2;
    v241 = v7;
    v238 = v7;
    v18(v4, v374, v237);
    gameswf::as_value::drop_refs((gameswf::as_value *)v237);
    if ( v374[0] == -1 )
      gameswf::free_internal(v375);
    v19 = *(void (__fastcall **)(gameswf::as_object *, _BYTE *, _BYTE *))(*(_DWORD *)v4 + 28);
    gameswf::tu_string::tu_string((gameswf::tu_string *)v372, "Level");
    v235[0] = 0;
    v235[1] = 2;
    v241 = (double)CharProperties::PROPS_GetInt(v8, 19, 0);
    v236 = v241;
    v19(v4, v372, v235);
    gameswf::as_value::drop_refs((gameswf::as_value *)v235);
    if ( v372[0] == -1 )
      gameswf::free_internal(v373);
    v20 = *(void (__fastcall **)(gameswf::as_object *, _BYTE *, _BYTE *))(*(_DWORD *)v4 + 28);
    gameswf::tu_string::tu_string((gameswf::tu_string *)v370, "HP");
    v233[0] = 0;
    v233[1] = 2;
    v241 = (double)CharProperties::PROPS_GetInt(v8, 36, 0);
    v21 = v241;
    v234 = __PAIR64__(HIDWORD(v241), LODWORD(v21));
    v20(v4, v370, v233);
    gameswf::as_value::drop_refs((gameswf::as_value *)v233);
    if ( v370[0] == -1 )
      gameswf::free_internal(v371);
    v22 = *(void (__fastcall **)(gameswf::as_object *, _BYTE *, _BYTE *))(*(_DWORD *)v4 + 28);
    gameswf::tu_string::tu_string((gameswf::tu_string *)v368, "HP_Bonus");
    v231[0] = 0;
    v231[1] = 2;
    v241 = (double)CharProperties::PROPS_GetInt(v8, 37, 0);
    v232 = v241;
    v22(v4, v368, v231);
    gameswf::as_value::drop_refs((gameswf::as_value *)v231);
    if ( v368[0] == -1 )
      gameswf::free_internal(v369);
    v23 = *(void (__fastcall **)(gameswf::as_object *, _BYTE *, _BYTE *))(*(_DWORD *)v4 + 28);
    gameswf::tu_string::tu_string((gameswf::tu_string *)v366, "Max_HP");
    v229[0] = 0;
    v229[1] = 2;
    v241 = (double)CharProperties::PROPS_GetInt(v8, 38, 0);
    v230 = v241;
    v23(v4, v366, v229);
    gameswf::as_value::drop_refs((gameswf::as_value *)v229);
    if ( v366[0] == -1 )
      gameswf::free_internal(v367);
    v24 = *(void (__fastcall **)(gameswf::as_object *, _BYTE *, _BYTE *))(*(_DWORD *)v4 + 28);
    gameswf::tu_string::tu_string((gameswf::tu_string *)v364, "MP");
    v227[0] = 0;
    v227[1] = 2;
    v241 = (double)CharProperties::PROPS_GetInt(v8, 41, 0);
    v228 = v241;
    v24(v4, v364, v227);
    gameswf::as_value::drop_refs((gameswf::as_value *)v227);
    if ( v364[0] == -1 )
      gameswf::free_internal(v365);
    v25 = *(void (__fastcall **)(gameswf::as_object *, _BYTE *, _BYTE *))(*(_DWORD *)v4 + 28);
    gameswf::tu_string::tu_string((gameswf::tu_string *)v362, "MP_Bonus");
    v225[0] = 0;
    v225[1] = 2;
    v241 = (double)CharProperties::PROPS_GetInt(v8, 42, 0);
    v26 = v241;
    v226 = __PAIR64__(HIDWORD(v241), LODWORD(v26));
    v25(v4, v362, v225);
    gameswf::as_value::drop_refs((gameswf::as_value *)v225);
    if ( v362[0] == -1 )
      gameswf::free_internal(v363);
    v27 = *(void (__fastcall **)(gameswf::as_object *, _BYTE *, _BYTE *))(*(_DWORD *)v4 + 28);
    gameswf::tu_string::tu_string((gameswf::tu_string *)v360, "Max_MP");
    v223[0] = 0;
    v223[1] = 2;
    v241 = (double)CharProperties::PROPS_GetInt(v8, 43, 0);
    v224 = v241;
    v27(v4, v360, v223);
    gameswf::as_value::drop_refs((gameswf::as_value *)v223);
    if ( v360[0] == -1 )
      gameswf::free_internal(v361);
    v28 = *(void (__fastcall **)(gameswf::as_object *, _BYTE *, _BYTE *))(*(_DWORD *)v4 + 28);
    gameswf::tu_string::tu_string((gameswf::tu_string *)v358, "XP");
    v221[0] = 0;
    v221[1] = 2;
    v241 = (double)CharProperties::PROPS_GetInt(v8, 33, 0);
    v222 = v241;
    v28(v4, v358, v221);
    gameswf::as_value::drop_refs((gameswf::as_value *)v221);
    if ( v358[0] == -1 )
      gameswf::free_internal(v359);
    v29 = *(void (__fastcall **)(gameswf::as_object *, _BYTE *, _BYTE *))(*(_DWORD *)v4 + 28);
    gameswf::tu_string::tu_string((gameswf::tu_string *)v356, "Max_XP");
    v219[0] = 0;
    v219[1] = 2;
    v241 = (double)CharProperties::PROPS_GetInt(v8, 34, 0);
    v220 = v241;
    v29(v4, v356, v219);
    gameswf::as_value::drop_refs((gameswf::as_value *)v219);
    if ( v356[0] == -1 )
      gameswf::free_internal(v357);
    v30 = *(void (__fastcall **)(gameswf::as_object *, _BYTE *, _BYTE *))(*(_DWORD *)v4 + 28);
    gameswf::tu_string::tu_string((gameswf::tu_string *)v354, "Stat_Strength");
    v217[0] = 0;
    v217[1] = 2;
    v241 = (double)CharProperties::PROPS_GetInt(v8, 149, 0);
    v31 = v241;
    v218 = __PAIR64__(HIDWORD(v241), LODWORD(v31));
    v30(v4, v354, v217);
    gameswf::as_value::drop_refs((gameswf::as_value *)v217);
    if ( v354[0] == 255 )
      gameswf::free_internal(v355);
    v32 = *(void (__fastcall **)(gameswf::as_object *, _BYTE *, _BYTE *))(*(_DWORD *)v4 + 28);
    gameswf::tu_string::tu_string((gameswf::tu_string *)v352, "Stat_Dexterity");
    v215[0] = 0;
    v215[1] = 2;
    v241 = (double)CharProperties::PROPS_GetInt(v8, 150, 0);
    v216 = v241;
    v32(v4, v352, v215);
    gameswf::as_value::drop_refs((gameswf::as_value *)v215);
    if ( v352[0] == 255 )
      gameswf::free_internal(v353);
    v33 = *(void (__fastcall **)(gameswf::as_object *, _BYTE *, _BYTE *))(*(_DWORD *)v4 + 28);
    gameswf::tu_string::tu_string((gameswf::tu_string *)v350, "Stat_Endurance");
    v213[0] = 0;
    v213[1] = 2;
    v241 = (double)CharProperties::PROPS_GetInt(v8, 151, 0);
    v214 = v241;
    v33(v4, v350, v213);
    gameswf::as_value::drop_refs((gameswf::as_value *)v213);
    if ( v350[0] == 255 )
      gameswf::free_internal(v351);
    v34 = *(void (__fastcall **)(gameswf::as_object *, _BYTE *, _BYTE *))(*(_DWORD *)v4 + 28);
    gameswf::tu_string::tu_string((gameswf::tu_string *)v348, "Stat_Energy");
    v211[0] = 0;
    v211[1] = 2;
    v241 = (double)CharProperties::PROPS_GetInt(v8, 152, 0);
    v212 = v241;
    v34(v4, v348, v211);
    gameswf::as_value::drop_refs((gameswf::as_value *)v211);
    if ( v348[0] == 255 )
      gameswf::free_internal(v349);
    v35 = *(void (__fastcall **)(gameswf::as_object *, _BYTE *, _BYTE *))(*(_DWORD *)v4 + 28);
    gameswf::tu_string::tu_string((gameswf::tu_string *)v346, "Stat_Points");
    v209[0] = 0;
    v209[1] = 2;
    v241 = (double)CharProperties::PROPS_GetInt(v8, 148, 0);
    v36 = v241;
    v210 = __PAIR64__(HIDWORD(v241), LODWORD(v36));
    v35(v4, v346, v209);
    gameswf::as_value::drop_refs((gameswf::as_value *)v209);
    if ( v346[0] == 255 )
      gameswf::free_internal(v347);
    v37 = *(void (__fastcall **)(gameswf::as_object *, _BYTE *, _BYTE *))(*(_DWORD *)v4 + 28);
    gameswf::tu_string::tu_string((gameswf::tu_string *)v344, "Rating_Attack");
    v207[0] = 0;
    v207[1] = 2;
    v241 = (double)v104;
    v208 = (double)v104;
    v37(v4, v344, v207);
    gameswf::as_value::drop_refs((gameswf::as_value *)v207);
    if ( v344[0] == 255 )
      gameswf::free_internal(v345);
    v38 = *(void (__fastcall **)(gameswf::as_object *, _BYTE *, _BYTE *))(*(_DWORD *)v4 + 28);
    gameswf::tu_string::tu_string((gameswf::tu_string *)v342, "Rating_Critical");
    v39 = CharProperties::PROPS_GetInt(v8, 63, 0);
    v205[0] = 0;
    v205[1] = 2;
    v241 = (double)(v39 + (CharProperties::PROPS_GetBonusCritRating(v8, 0) >> 8));
    v206 = v241;
    v38(v4, v342, v205);
    gameswf::as_value::drop_refs((gameswf::as_value *)v205);
    if ( v342[0] == 255 )
      gameswf::free_internal(v343);
    v40 = *(void (__fastcall **)(gameswf::as_object *, _BYTE *, _BYTE *))(*(_DWORD *)v4 + 28);
    gameswf::tu_string::tu_string((gameswf::tu_string *)v340, "Rating_Defense");
    v203[0] = 0;
    v203[1] = 2;
    v241 = (double)CharProperties::PROPS_GetInt(v8, 59, 0);
    v204 = v241;
    v40(v4, v340, v203);
    gameswf::as_value::drop_refs((gameswf::as_value *)v203);
    if ( v340[0] == 255 )
      gameswf::free_internal(v341);
    v41 = *(void (__fastcall **)(gameswf::as_object *, _BYTE *, _BYTE *))(*(_DWORD *)v4 + 28);
    gameswf::tu_string::tu_string((gameswf::tu_string *)v338, "Rating_Dodge");
    v201[0] = 0;
    v201[1] = 2;
    v241 = (double)CharProperties::PROPS_GetInt(v8, 60, 0);
    v42 = v241;
    v202 = __PAIR64__(HIDWORD(v241), LODWORD(v42));
    v41(v4, v338, v201);
    gameswf::as_value::drop_refs((gameswf::as_value *)v201);
    if ( v338[0] == 255 )
      gameswf::free_internal(v339);
    v43 = *(void (__fastcall **)(gameswf::as_object *, _BYTE *, _BYTE *))(*(_DWORD *)v4 + 28);
    gameswf::tu_string::tu_string((gameswf::tu_string *)v336, "Rating_Block");
    v199[0] = 0;
    v199[1] = 2;
    v241 = (double)CharProperties::PROPS_GetInt(v8, 61, 0);
    v200 = v241;
    v43(v4, v336, v199);
    gameswf::as_value::drop_refs((gameswf::as_value *)v199);
    if ( v336[0] == 255 )
      gameswf::free_internal(v337);
    v44 = *(void (__fastcall **)(gameswf::as_object *, _BYTE *, _BYTE *))(*(_DWORD *)v4 + 28);
    gameswf::tu_string::tu_string((gameswf::tu_string *)v334, "Resistance_Fire");
    v197[0] = 0;
    v197[1] = 2;
    v241 = (double)CharProperties::PROPS_GetInt(v8, 74, 0);
    v198 = v241;
    v44(v4, v334, v197);
    gameswf::as_value::drop_refs((gameswf::as_value *)v197);
    if ( v334[0] == 255 )
      gameswf::free_internal(v335);
    v45 = *(void (__fastcall **)(gameswf::as_object *, _BYTE *, _BYTE *))(*(_DWORD *)v4 + 28);
    gameswf::tu_string::tu_string((gameswf::tu_string *)v332, "Resistance_Earth");
    v195[0] = 0;
    v195[1] = 2;
    v241 = (double)CharProperties::PROPS_GetInt(v8, 77, 0);
    v196 = v241;
    v45(v4, v332, v195);
    gameswf::as_value::drop_refs((gameswf::as_value *)v195);
    if ( v332[0] == 255 )
      gameswf::free_internal(v333);
    v46 = *(void (__fastcall **)(gameswf::as_object *, _BYTE *, _BYTE *))(*(_DWORD *)v4 + 28);
    gameswf::tu_string::tu_string((gameswf::tu_string *)v330, "Resistance_Water");
    v193[0] = 0;
    v193[1] = 2;
    v241 = (double)CharProperties::PROPS_GetInt(v8, 75, 0);
    v47 = v241;
    v194 = __PAIR64__(HIDWORD(v241), LODWORD(v47));
    v46(v4, v330, v193);
    gameswf::as_value::drop_refs((gameswf::as_value *)v193);
    if ( v330[0] == 255 )
      gameswf::free_internal(v331);
    v48 = *(void (__fastcall **)(gameswf::as_object *, _BYTE *, _BYTE *))(*(_DWORD *)v4 + 28);
    gameswf::tu_string::tu_string((gameswf::tu_string *)v328, "Resistance_Air");
    v191[0] = 0;
    v191[1] = 2;
    v241 = (double)CharProperties::PROPS_GetInt(v8, 78, 0);
    v192 = v241;
    v48(v4, v328, v191);
    gameswf::as_value::drop_refs((gameswf::as_value *)v191);
    if ( v328[0] == 255 )
      gameswf::free_internal(v329);
    v49 = *(void (__fastcall **)(gameswf::as_object *, _BYTE *, _BYTE *))(*(_DWORD *)v4 + 28);
    gameswf::tu_string::tu_string((gameswf::tu_string *)v326, "Resistance_Lightning");
    v189[0] = 0;
    v189[1] = 2;
    v241 = (double)CharProperties::PROPS_GetInt(v8, 76, 0);
    v190 = v241;
    v49(v4, v326, v189);
    gameswf::as_value::drop_refs((gameswf::as_value *)v189);
    if ( v326[0] == 255 )
      gameswf::free_internal(v327);
    v50 = *(void (__fastcall **)(gameswf::as_object *, _BYTE *, _BYTE *))(*(_DWORD *)v4 + 28);
    gameswf::tu_string::tu_string((gameswf::tu_string *)v324, "Damage_Min_Main_Hand");
    v187[0] = 0;
    v187[1] = 2;
    v241 = (double)v108;
    v188 = (double)v108;
    v50(v4, v324, v187);
    gameswf::as_value::drop_refs((gameswf::as_value *)v187);
    if ( v324[0] == 255 )
      gameswf::free_internal(v325);
    v51 = *(void (__fastcall **)(gameswf::as_object *, _BYTE *, _BYTE *))(*(_DWORD *)v4 + 28);
    gameswf::tu_string::tu_string((gameswf::tu_string *)v322, "Damage_Max_Main_Hand");
    v185[0] = 0;
    v185[1] = 2;
    v241 = (double)v107;
    v52 = (double)v107;
    v186 = __PAIR64__(HIDWORD(v241), LODWORD(v52));
    v51(v4, v322, v185);
    gameswf::as_value::drop_refs((gameswf::as_value *)v185);
    if ( v322[0] == 255 )
      gameswf::free_internal(v323);
    v53 = *(void (__fastcall **)(gameswf::as_object *, _BYTE *, _BYTE *))(*(_DWORD *)v4 + 28);
    gameswf::tu_string::tu_string((gameswf::tu_string *)v320, "Damage_Elemental_Min_Main_Hand");
    v183[0] = 0;
    v183[1] = 2;
    v241 = (double)CharProperties::PROPS_GetInt(v8, 95, 0);
    v184 = v241;
    v53(v4, v320, v183);
    gameswf::as_value::drop_refs((gameswf::as_value *)v183);
    if ( v320[0] == 255 )
      gameswf::free_internal(v321);
    v54 = *(void (__fastcall **)(gameswf::as_object *, _BYTE *, _BYTE *))(*(_DWORD *)v4 + 28);
    gameswf::tu_string::tu_string((gameswf::tu_string *)v318, "Damage_Elemental_Max_Main_Hand");
    v181[0] = 0;
    v181[1] = 2;
    v241 = (double)CharProperties::PROPS_GetInt(v8, 96, 0);
    v182 = v241;
    v54(v4, v318, v181);
    gameswf::as_value::drop_refs((gameswf::as_value *)v181);
    if ( v318[0] == 255 )
      gameswf::free_internal(v319);
    v55 = *(void (__fastcall **)(gameswf::as_object *, _BYTE *, _BYTE *))(*(_DWORD *)v4 + 28);
    gameswf::tu_string::tu_string((gameswf::tu_string *)v316, "Damage_Elemental_Type_Main_Hand");
    v179[0] = 0;
    v179[1] = 2;
    v241 = (double)CharProperties::PROPS_GetInt(v8, 97, 0);
    v180 = v241;
    v55(v4, v316, v179);
    gameswf::as_value::drop_refs((gameswf::as_value *)v179);
    if ( v316[0] == 255 )
      gameswf::free_internal(v317);
    v56 = *(void (__fastcall **)(gameswf::as_object *, _BYTE *, _BYTE *))(*(_DWORD *)v4 + 28);
    gameswf::tu_string::tu_string((gameswf::tu_string *)v314, "Damage_Min_Off_Hand");
    v177[0] = 0;
    v177[1] = 2;
    v241 = (double)v106;
    v57 = (double)v106;
    v178 = __PAIR64__(HIDWORD(v241), LODWORD(v57));
    v56(v4, v314, v177);
    gameswf::as_value::drop_refs((gameswf::as_value *)v177);
    if ( v314[0] == 255 )
      gameswf::free_internal(v315);
    v58 = *(void (__fastcall **)(gameswf::as_object *, _BYTE *, _BYTE *))(*(_DWORD *)v4 + 28);
    gameswf::tu_string::tu_string((gameswf::tu_string *)v312, "Damage_Max_Off_Hand");
    v175[0] = 0;
    v175[1] = 2;
    v241 = (double)v105;
    v176 = (double)v105;
    v58(v4, v312, v175);
    gameswf::as_value::drop_refs((gameswf::as_value *)v175);
    if ( v312[0] == 255 )
      gameswf::free_internal(v313);
    v59 = *(void (__fastcall **)(gameswf::as_object *, _BYTE *, _BYTE *))(*(_DWORD *)v4 + 28);
    gameswf::tu_string::tu_string((gameswf::tu_string *)v310, "Damage_Elemental_Min_Off_Hand");
    v173[0] = 0;
    v173[1] = 2;
    v241 = (double)CharProperties::PROPS_GetInt(v8, 98, 0);
    v174 = v241;
    v59(v4, v310, v173);
    gameswf::as_value::drop_refs((gameswf::as_value *)v173);
    if ( v310[0] == 255 )
      gameswf::free_internal(v311);
    v60 = *(void (__fastcall **)(gameswf::as_object *, _BYTE *, _BYTE *))(*(_DWORD *)v4 + 28);
    gameswf::tu_string::tu_string((gameswf::tu_string *)v308, "Damage_Elemental_Max_Off_Hand");
    v171[0] = 0;
    v171[1] = 2;
    v241 = (double)CharProperties::PROPS_GetInt(v8, 99, 0);
    v172 = v241;
    v60(v4, v308, v171);
    gameswf::as_value::drop_refs((gameswf::as_value *)v171);
    if ( v308[0] == 255 )
      gameswf::free_internal(v309);
    v61 = *(void (__fastcall **)(gameswf::as_object *, _BYTE *, _BYTE *))(*(_DWORD *)v4 + 28);
    gameswf::tu_string::tu_string((gameswf::tu_string *)v306, "Damage_Elemental_Type_Off_Hand");
    v169[0] = 0;
    v169[1] = 2;
    v241 = (double)CharProperties::PROPS_GetInt(v8, 100, 0);
    v62 = v241;
    v170 = __PAIR64__(HIDWORD(v241), LODWORD(v62));
    v61(v4, v306, v169);
    gameswf::as_value::drop_refs((gameswf::as_value *)v169);
    if ( v306[0] == 255 )
      gameswf::free_internal(v307);
    v63 = *(void (__fastcall **)(gameswf::as_object *, _BYTE *, _BYTE *))(*(_DWORD *)v4 + 28);
    gameswf::tu_string::tu_string((gameswf::tu_string *)v304, "Damage_Fire_Min_Main_Hand");
    v167[0] = 0;
    v167[1] = 2;
    v241 = (double)CharProperties::PROPS_GetInt(v8, 101, 0);
    v168 = v241;
    v63(v4, v304, v167);
    gameswf::as_value::drop_refs((gameswf::as_value *)v167);
    if ( v304[0] == 255 )
      gameswf::free_internal(v305);
    v64 = *(void (__fastcall **)(gameswf::as_object *, _BYTE *, _BYTE *))(*(_DWORD *)v4 + 28);
    gameswf::tu_string::tu_string((gameswf::tu_string *)v302, "Damage_Fire_Max_Main_Hand");
    v165[0] = 0;
    v165[1] = 2;
    v241 = (double)CharProperties::PROPS_GetInt(v8, 102, 0);
    v166 = v241;
    v64(v4, v302, v165);
    gameswf::as_value::drop_refs((gameswf::as_value *)v165);
    if ( v302[0] == 255 )
      gameswf::free_internal(v303);
    v65 = *(void (__fastcall **)(gameswf::as_object *, _BYTE *, _BYTE *))(*(_DWORD *)v4 + 28);
    gameswf::tu_string::tu_string((gameswf::tu_string *)v300, "Damage_Water_Min_Main_Hand");
    v163[0] = 0;
    v163[1] = 2;
    v241 = (double)CharProperties::PROPS_GetInt(v8, 105, 0);
    v164 = v241;
    v65(v4, v300, v163);
    gameswf::as_value::drop_refs((gameswf::as_value *)v163);
    if ( v300[0] == 255 )
      gameswf::free_internal(v301);
    v66 = *(void (__fastcall **)(gameswf::as_object *, _BYTE *, _BYTE *))(*(_DWORD *)v4 + 28);
    gameswf::tu_string::tu_string((gameswf::tu_string *)v298, "Damage_Water_Max_Main_Hand");
    v161[0] = 0;
    v161[1] = 2;
    v241 = (double)CharProperties::PROPS_GetInt(v8, 106, 0);
    v67 = v241;
    v162 = __PAIR64__(HIDWORD(v241), LODWORD(v67));
    v66(v4, v298, v161);
    gameswf::as_value::drop_refs((gameswf::as_value *)v161);
    if ( v298[0] == 255 )
      gameswf::free_internal(v299);
    v68 = *(void (__fastcall **)(gameswf::as_object *, _BYTE *, _BYTE *))(*(_DWORD *)v4 + 28);
    gameswf::tu_string::tu_string((gameswf::tu_string *)v296, "Damage_Lightning_Min_Main_Hand");
    v159[0] = 0;
    v159[1] = 2;
    v241 = (double)CharProperties::PROPS_GetInt(v8, 109, 0);
    v160 = v241;
    v68(v4, v296, v159);
    gameswf::as_value::drop_refs((gameswf::as_value *)v159);
    if ( v296[0] == 255 )
      gameswf::free_internal(v297);
    v69 = *(void (__fastcall **)(gameswf::as_object *, _BYTE *, _BYTE *))(*(_DWORD *)v4 + 28);
    gameswf::tu_string::tu_string((gameswf::tu_string *)v294, "Damage_Lightning_Max_Main_Hand");
    v157[0] = 0;
    v157[1] = 2;
    v241 = (double)CharProperties::PROPS_GetInt(v8, 110, 0);
    v158 = v241;
    v69(v4, v294, v157);
    gameswf::as_value::drop_refs((gameswf::as_value *)v157);
    if ( v294[0] == 255 )
      gameswf::free_internal(v295);
    v70 = *(void (__fastcall **)(gameswf::as_object *, _BYTE *, _BYTE *))(*(_DWORD *)v4 + 28);
    gameswf::tu_string::tu_string((gameswf::tu_string *)v292, "Damage_Air_Min_Main_Hand");
    v155[0] = 0;
    v155[1] = 2;
    v241 = (double)CharProperties::PROPS_GetInt(v8, 117, 0);
    v156 = v241;
    v70(v4, v292, v155);
    gameswf::as_value::drop_refs((gameswf::as_value *)v155);
    if ( v292[0] == 255 )
      gameswf::free_internal(v293);
    v71 = *(void (__fastcall **)(gameswf::as_object *, _BYTE *, _BYTE *))(*(_DWORD *)v4 + 28);
    gameswf::tu_string::tu_string((gameswf::tu_string *)v290, "Damage_Air_Max_Main_Hand");
    v153[0] = 0;
    v153[1] = 2;
    v241 = (double)CharProperties::PROPS_GetInt(v8, 118, 0);
    v72 = v241;
    v154 = __PAIR64__(HIDWORD(v241), LODWORD(v72));
    v71(v4, v290, v153);
    gameswf::as_value::drop_refs((gameswf::as_value *)v153);
    if ( v290[0] == 255 )
      gameswf::free_internal(v291);
    v73 = *(void (__fastcall **)(gameswf::as_object *, _BYTE *, _BYTE *))(*(_DWORD *)v4 + 28);
    gameswf::tu_string::tu_string((gameswf::tu_string *)v288, "Damage_Earth_Min_Main_Hand");
    v151[0] = 0;
    v151[1] = 2;
    v241 = (double)CharProperties::PROPS_GetInt(v8, 113, 0);
    v152 = v241;
    v73(v4, v288, v151);
    gameswf::as_value::drop_refs((gameswf::as_value *)v151);
    if ( v288[0] == 255 )
      gameswf::free_internal(v289);
    v74 = *(void (__fastcall **)(gameswf::as_object *, _BYTE *, _BYTE *))(*(_DWORD *)v4 + 28);
    gameswf::tu_string::tu_string((gameswf::tu_string *)v286, "Damage_Earth_Max_Main_Hand");
    v149[0] = 0;
    v149[1] = 2;
    v241 = (double)CharProperties::PROPS_GetInt(v8, 114, 0);
    v150 = v241;
    v74(v4, v286, v149);
    gameswf::as_value::drop_refs((gameswf::as_value *)v149);
    if ( v286[0] == 255 )
      gameswf::free_internal(v287);
    v75 = (Character *)((char *)v103 + 892);
    v76 = *(void (__fastcall **)(gameswf::as_object *, _BYTE *, _BYTE *))(*(_DWORD *)v4 + 28);
    gameswf::tu_string::tu_string((gameswf::tu_string *)v284, "IsWeaponTwoHanded");
    v148[0] = 0;
    v148[1] = 1;
    v148[4] = (unsigned __int8)ItemInventory::HasTwoHander((Character *)((char *)v103 + 892), 0);
    v76(v4, v284, v148);
    gameswf::as_value::drop_refs((gameswf::as_value *)v148);
    if ( v284[0] == 255 )
      gameswf::free_internal(v285);
    v77 = *(void (__fastcall **)(gameswf::as_object *, _BYTE *, _BYTE *))(*(_DWORD *)v4 + 28);
    gameswf::tu_string::tu_string((gameswf::tu_string *)v282, "HasOffHandWeapon");
    v147[0] = 0;
    v147[1] = 1;
    v147[4] = (unsigned __int8)ItemInventory::HasOffHandWeapon(v75);
    v77(v4, v282, v147);
    gameswf::as_value::drop_refs((gameswf::as_value *)v147);
    if ( v282[0] == 255 )
      gameswf::free_internal(v283);
    v78 = *(void (__fastcall **)(gameswf::as_object *, _BYTE *, _BYTE *))(*(_DWORD *)v4 + 28);
    gameswf::tu_string::tu_string((gameswf::tu_string *)v280, "HasStaff");
    v146[0] = 0;
    v146[1] = 1;
    v146[4] = (unsigned __int8)ItemInventory::HasStaff(v75);
    v78(v4, v280, v146);
    gameswf::as_value::drop_refs((gameswf::as_value *)v146);
    if ( v280[0] == 255 )
      gameswf::free_internal(v281);
    v79 = *(void (__fastcall **)(gameswf::as_object *, _BYTE *, _BYTE *))(*(_DWORD *)v4 + 28);
    gameswf::tu_string::tu_string((gameswf::tu_string *)v278, "HasBow");
    v145[4] = (unsigned __int8)ItemInventory::HasBow(v75);
    v145[0] = 0;
    v145[1] = 1;
    v79(v4, v278, v145);
    gameswf::as_value::drop_refs((gameswf::as_value *)v145);
    if ( v278[0] == 255 )
      gameswf::free_internal(v279);
    v80 = *(void (__fastcall **)(gameswf::as_object *, _BYTE *, _BYTE *))(*(_DWORD *)v4 + 28);
    gameswf::tu_string::tu_string((gameswf::tu_string *)v276, "Menu_Average_Melee_To_Hit");
    v143[0] = 0;
    v143[1] = 2;
    v241 = (double)CharProperties::PROPS_GetInt(v8, 207, 0);
    v144 = v241;
    v80(v4, v276, v143);
    gameswf::as_value::drop_refs((gameswf::as_value *)v143);
    if ( v276[0] == 255 )
      gameswf::free_internal(v277);
    v81 = *(void (__fastcall **)(gameswf::as_object *, _BYTE *, _BYTE *))(*(_DWORD *)v4 + 28);
    gameswf::tu_string::tu_string((gameswf::tu_string *)v274, "Physical_Armor");
    v141[0] = 0;
    v141[1] = 2;
    v241 = (double)CharProperties::PROPS_GetInt(v8, 71, 0);
    v82 = v241;
    v142 = __PAIR64__(HIDWORD(v241), LODWORD(v82));
    v81(v4, v274, v141);
    gameswf::as_value::drop_refs((gameswf::as_value *)v141);
    if ( v274[0] == 255 )
      gameswf::free_internal(v275);
    v83 = *(void (__fastcall **)(gameswf::as_object *, _BYTE *, _BYTE *))(*(_DWORD *)v4 + 28);
    gameswf::tu_string::tu_string((gameswf::tu_string *)v272, "Spell_Rating_Dodge");
    v139[0] = 0;
    v139[1] = 2;
    v241 = (double)CharProperties::PROPS_GetInt(v8, 164, 0);
    v140 = v241;
    v83(v4, v272, v139);
    gameswf::as_value::drop_refs((gameswf::as_value *)v139);
    if ( v272[0] == 255 )
      gameswf::free_internal(v273);
    v84 = *(void (__fastcall **)(gameswf::as_object *, _BYTE *, _BYTE *))(*(_DWORD *)v4 + 28);
    gameswf::tu_string::tu_string((gameswf::tu_string *)v270, "Menu_Melee_Damage_Reduction");
    v137[0] = 0;
    v137[1] = 2;
    v241 = (double)CharProperties::PROPS_GetInt(v8, 209, 0);
    v138 = v241;
    v84(v4, v270, v137);
    gameswf::as_value::drop_refs((gameswf::as_value *)v137);
    if ( v270[0] == 255 )
      gameswf::free_internal(v271);
    v85 = *(void (__fastcall **)(gameswf::as_object *, _BYTE *, _BYTE *))(*(_DWORD *)v4 + 28);
    gameswf::tu_string::tu_string((gameswf::tu_string *)v268, "Spell_Rating_Critical");
    v135[0] = 0;
    v135[1] = 2;
    v241 = (double)CharProperties::PROPS_GetInt(v8, 165, 0);
    v136 = v241;
    v85(v4, v268, v135);
    gameswf::as_value::drop_refs((gameswf::as_value *)v135);
    if ( v268[0] == 255 )
      gameswf::free_internal(v269);
    v86 = *(void (__fastcall **)(gameswf::as_object *, _BYTE *, _BYTE *))(*(_DWORD *)v4 + 28);
    gameswf::tu_string::tu_string((gameswf::tu_string *)v266, "Menu_Average_Spell_To_Hit");
    v133[0] = 0;
    v133[1] = 2;
    v241 = (double)CharProperties::PROPS_GetInt(v8, 208, 0);
    v134 = v241;
    v86(v4, v266, v133);
    gameswf::as_value::drop_refs((gameswf::as_value *)v133);
    if ( v266[0] == 255 )
      gameswf::free_internal(v267);
    v87 = *(void (__fastcall **)(gameswf::as_object *, _BYTE *, _BYTE *))(*(_DWORD *)v4 + 28);
    gameswf::tu_string::tu_string((gameswf::tu_string *)v264, "Spell_Damage_Bonus_Fire");
    v131[0] = 0;
    v131[1] = 2;
    v241 = (double)CharProperties::PROPS_GetInt(v8, 166, 0);
    v132 = v241;
    v87(v4, v264, v131);
    gameswf::as_value::drop_refs((gameswf::as_value *)v131);
    if ( v264[0] == 255 )
      gameswf::free_internal(v265);
    v88 = *(void (__fastcall **)(gameswf::as_object *, _BYTE *, _BYTE *))(*(_DWORD *)v4 + 28);
    gameswf::tu_string::tu_string((gameswf::tu_string *)v262, "Spell_Damage_Bonus_Earth");
    v129[0] = 0;
    v129[1] = 2;
    v241 = (double)CharProperties::PROPS_GetInt(v8, 169, 0);
    v130 = v241;
    v88(v4, v262, v129);
    gameswf::as_value::drop_refs((gameswf::as_value *)v129);
    if ( v262[0] == 255 )
      gameswf::free_internal(v263);
    v89 = *(void (__fastcall **)(gameswf::as_object *, _BYTE *, _BYTE *))(*(_DWORD *)v4 + 28);
    gameswf::tu_string::tu_string((gameswf::tu_string *)v260, "Spell_Damage_Bonus_Water");
    v127[0] = 0;
    v127[1] = 2;
    v241 = (double)CharProperties::PROPS_GetInt(v8, 167, 0);
    v128 = v241;
    v89(v4, v260, v127);
    gameswf::as_value::drop_refs((gameswf::as_value *)v127);
    if ( v260[0] == 255 )
      gameswf::free_internal(v261);
    v90 = *(void (__fastcall **)(gameswf::as_object *, _BYTE *, _BYTE *))(*(_DWORD *)v4 + 28);
    gameswf::tu_string::tu_string((gameswf::tu_string *)v258, "Spell_Damage_Bonus_Air");
    v125[0] = 0;
    v125[1] = 2;
    v241 = (double)CharProperties::PROPS_GetInt(v8, 170, 0);
    v91 = v241;
    v126 = __PAIR64__(HIDWORD(v241), LODWORD(v91));
    v90(v4, v258, v125);
    gameswf::as_value::drop_refs((gameswf::as_value *)v125);
    if ( v258[0] == 255 )
      gameswf::free_internal(v259);
    v92 = *(void (__fastcall **)(gameswf::as_object *, _BYTE *, _BYTE *))(*(_DWORD *)v4 + 28);
    gameswf::tu_string::tu_string((gameswf::tu_string *)v256, "Spell_Damage_Bonus_Lightning");
    v123[0] = 0;
    v123[1] = 2;
    v241 = (double)CharProperties::PROPS_GetInt(v8, 168, 0);
    v124 = v241;
    v92(v4, v256, v123);
    gameswf::as_value::drop_refs((gameswf::as_value *)v123);
    if ( v256[0] == 255 )
      gameswf::free_internal(v257);
    v93 = *(void (__fastcall **)(gameswf::as_object *, _BYTE *, _BYTE *))(*(_DWORD *)v4 + 28);
    gameswf::tu_string::tu_string((gameswf::tu_string *)v254, "Regen_HP");
    v121[0] = 0;
    v121[1] = 2;
    v241 = (double)CharProperties::PROPS_GetInt(v8, 39, 0);
    v122 = v241;
    v93(v4, v254, v121);
    gameswf::as_value::drop_refs((gameswf::as_value *)v121);
    if ( v254[0] == 255 )
      gameswf::free_internal(v255);
    v94 = *(void (__fastcall **)(gameswf::as_object *, _BYTE *, _BYTE *))(*(_DWORD *)v4 + 28);
    gameswf::tu_string::tu_string((gameswf::tu_string *)v252, "Regen_MP");
    v119[0] = 0;
    v119[1] = 2;
    v241 = (double)CharProperties::PROPS_GetInt(v8, 44, 0);
    v120 = v241;
    v94(v4, v252, v119);
    gameswf::as_value::drop_refs((gameswf::as_value *)v119);
    if ( v252[0] == 255 )
      gameswf::free_internal(v253);
    v95 = *(void (__fastcall **)(gameswf::as_object *, _BYTE *, _BYTE *))(*(_DWORD *)v4 + 28);
    gameswf::tu_string::tu_string((gameswf::tu_string *)v250, "Leech_HP");
    v117[0] = 0;
    v117[1] = 2;
    v241 = (double)CharProperties::PROPS_GetInt(v8, 132, 0);
    v96 = v241;
    v118 = __PAIR64__(HIDWORD(v241), LODWORD(v96));
    v95(v4, v250, v117);
    gameswf::as_value::drop_refs((gameswf::as_value *)v117);
    if ( v250[0] == 255 )
      gameswf::free_internal(v251);
    v97 = *(void (__fastcall **)(gameswf::as_object *, _BYTE *, _BYTE *))(*(_DWORD *)v4 + 28);
    gameswf::tu_string::tu_string((gameswf::tu_string *)v248, "Leech_MP");
    v115[0] = 0;
    v115[1] = 2;
    v241 = (double)CharProperties::PROPS_GetInt(v8, 133, 0);
    v116 = v241;
    v97(v4, v248, v115);
    gameswf::as_value::drop_refs((gameswf::as_value *)v115);
    if ( v248[0] == 255 )
      gameswf::free_internal(v249);
    v98 = *(void (__fastcall **)(gameswf::as_object *, _BYTE *, _BYTE *))(*(_DWORD *)v4 + 28);
    gameswf::tu_string::tu_string((gameswf::tu_string *)v246, "Special_Loot_Gold_Multiplier");
    v113[0] = 0;
    v113[1] = 2;
    v241 = (double)CharProperties::PROPS_GetInt(v8, 195, 0);
    v114 = v241;
    v98(v4, v246, v113);
    gameswf::as_value::drop_refs((gameswf::as_value *)v113);
    if ( v246[0] == 255 )
      gameswf::free_internal(v247);
    v99 = *(void (__fastcall **)(gameswf::as_object *, _BYTE *, _BYTE *))(*(_DWORD *)v4 + 28);
    gameswf::tu_string::tu_string((gameswf::tu_string *)v244, "Special_Loot_Magical_Chance");
    v111[0] = 0;
    v111[1] = 2;
    v241 = (double)CharProperties::PROPS_GetInt(v8, 196, 0);
    v112 = v241;
    v99(v4, v244, v111);
    gameswf::as_value::drop_refs((gameswf::as_value *)v111);
    if ( v244[0] == 255 )
      gameswf::free_internal(v245);
    v100 = *(void (__fastcall **)(gameswf::as_object *, _BYTE *, _BYTE *))(*(_DWORD *)v4 + 28);
    gameswf::tu_string::tu_string((gameswf::tu_string *)v242, "Stun_Resist_Chance");
    v109[0] = 0;
    v109[1] = 2;
    v241 = (double)CharProperties::PROPS_GetInt(v8, 138, 0);
    v101 = v241;
    v110 = __PAIR64__(HIDWORD(v241), LODWORD(v101));
    v100(v4, v242, v109);
    gameswf::as_value::drop_refs((gameswf::as_value *)v109);
    if ( v242[0] == 255 )
      gameswf::free_internal(p);
  }
  return gameswf::as_value::set_as_object(*(gameswf::as_value **)a1, v4);
}


// ===== 4497f4 NativeGetKeyboardLastString(gameswf::fn_call const&) =====
int __fastcall NativeGetKeyboardLastString(const gameswf::fn_call *a1)
{
  int v2; // r3
  int v3; // r0
  gameswf::as_object *v4; // r5
  void (__fastcall *v5)(gameswf::as_object *, _BYTE *, _BYTE *); // r10
  void (__fastcall *v6)(gameswf::as_object *, _BYTE *, _BYTE *); // r10
  GSKeyboard *v7; // r0
  const char *LastString; // r0
  _BYTE v10[12]; // [sp+4h] [bp-44h] BYREF
  _BYTE v11[12]; // [sp+10h] [bp-38h] BYREF
  _BYTE v12[8]; // [sp+1Ch] [bp-2Ch] BYREF
  void *v13; // [sp+28h] [bp-20h]
  _BYTE v14[8]; // [sp+30h] [bp-18h] BYREF
  void *p; // [sp+3Ch] [bp-Ch]

  v2 = **((_DWORD **)a1 + 3) + 12 * *((_DWORD *)a1 + 5);
  if ( *(_BYTE *)(v2 + 1) == 5 )
    v3 = *(_DWORD *)(v2 + 4);
  else
    v3 = 0;
  v4 = (gameswf::as_object *)gameswf::cast_to<gameswf::as_object>(v3);
  if ( v4 )
  {
    v5 = *(void (__fastcall **)(gameswf::as_object *, _BYTE *, _BYTE *))(*(_DWORD *)v4 + 28);
    gameswf::tu_string::tu_string((gameswf::tu_string *)v14, "opened");
    v11[0] = 0;
    v11[1] = 1;
    v11[4] = byte_9A24D4;
    v5(v4, v14, v11);
    gameswf::as_value::drop_refs((gameswf::as_value *)v11);
    if ( v14[0] == -1 )
      gameswf::free_internal(p);
    v6 = *(void (__fastcall **)(gameswf::as_object *, _BYTE *, _BYTE *))(*(_DWORD *)v4 + 28);
    v7 = gameswf::tu_string::tu_string((gameswf::tu_string *)v12, "string");
    LastString = (const char *)GSKeyboard::GetLastString(v7);
    v10[1] = 0;
    v10[0] = 0;
    gameswf::as_value::set_string((gameswf::as_value *)v10, LastString);
    v6(v4, v12, v10);
    gameswf::as_value::drop_refs((gameswf::as_value *)v10);
    if ( v12[0] == -1 )
      gameswf::free_internal(v13);
  }
  return gameswf::as_value::set_as_object(*(gameswf::as_value **)a1, v4);
}


// ===== 44996c NativeGetNumPotions(gameswf::fn_call const&) =====
void __fastcall NativeGetNumPotions(const gameswf::fn_call *a1)
{
  int v1; // r3
  int v2; // r5
  Character *character_660; // r6
  void (__fastcall *v4)(int, _BYTE *, _BYTE *); // r10
  void (__fastcall *v5)(int, _BYTE *, _BYTE *); // r7
  char v6; // r0
  _BYTE v7[4]; // [sp+0h] [bp-50h] BYREF
  double v8; // [sp+4h] [bp-4Ch]
  _BYTE v9[4]; // [sp+Ch] [bp-44h] BYREF
  double v10; // [sp+10h] [bp-40h]
  double NumPotions; // [sp+18h] [bp-38h]
  _BYTE v12[8]; // [sp+24h] [bp-2Ch] BYREF
  void *v13; // [sp+30h] [bp-20h]
  _BYTE v14[8]; // [sp+38h] [bp-18h] BYREF
  void *p; // [sp+44h] [bp-Ch]

  v1 = **((_DWORD **)a1 + 3) + 12 * *((_DWORD *)a1 + 5);
  if ( *(_BYTE *)(v1 + 1) == 5 )
    v2 = *(_DWORD *)(v1 + 4);
  else
    v2 = 0;
  character_660 = PlayerManager::GetLocalPlayer((PlayerManager *)dword_99F76C, 0, 1)->character_660;
  if ( character_660 )
  {
    v4 = *(void (__fastcall **)(int, _BYTE *, _BYTE *))(*(_DWORD *)v2 + 28);
    gameswf::tu_string::tu_string((gameswf::tu_string *)v14, "NumPotions");
    v9[0] = 0;
    v9[1] = 2;
    NumPotions = (double)ItemInventory::GetNumPotions((Character *)((char *)character_660 + 892));
    v10 = NumPotions;
    v4(v2, v14, v9);
    gameswf::as_value::drop_refs((gameswf::as_value *)v9);
    if ( v14[0] == -1 )
      gameswf::free_internal(p);
    v5 = *(void (__fastcall **)(int, _BYTE *, _BYTE *))(*(_DWORD *)v2 + 28);
    gameswf::tu_string::tu_string((gameswf::tu_string *)v12, "MaxNumPotions");
    v6 = *((_BYTE *)character_660 + 936);
    v7[0] = 0;
    v7[1] = 2;
    NumPotions = (double)v6;
    v8 = NumPotions;
    v5(v2, v12, v7);
    gameswf::as_value::drop_refs((gameswf::as_value *)v7);
    if ( v12[0] == -1 )
      gameswf::free_internal(v13);
  }
}


// ===== 449b10 NativeGetPossibleClassSpec(gameswf::fn_call const&) =====
DH2_PlayerInfoCharacterPrefix *__fastcall NativeGetPossibleClassSpec(const gameswf::fn_call *a1)
{
  int v2; // r3
  int v3; // r0
  gameswf::as_object *v4; // r5
  DH2_PlayerInfoCharacterPrefix *result; // r0
  Character *character_660; // r7
  int v7; // r9
  int PlayerClass; // r0
  const char *String; // r0
  int v10; // r9
  int v11; // r0
  const char *v12; // r0
  StringManager *v13; // r9
  int v14; // r0
  const char *v15; // r0
  void (__fastcall *v16)(gameswf::as_object *, _BYTE *, _BYTE *); // r11
  Character *v17; // r0
  StringManager *v18; // r6
  int v19; // r7
  int v20; // r0
  const char *v21; // r0
  void (__fastcall *v22)(gameswf::as_object *, _BYTE *, _BYTE *); // [sp+4h] [bp-98h]
  void (__fastcall *v23)(gameswf::as_object *, _BYTE *, _BYTE *); // [sp+4h] [bp-98h]
  void (__fastcall *v24)(gameswf::as_object *, _BYTE *, _BYTE *); // [sp+4h] [bp-98h]
  StringManager *v25; // [sp+8h] [bp-94h]
  StringManager *v26; // [sp+8h] [bp-94h]
  StringManager *v27; // [sp+8h] [bp-94h]
  _BYTE v28[12]; // [sp+14h] [bp-88h] BYREF
  _BYTE v29[12]; // [sp+20h] [bp-7Ch] BYREF
  _BYTE v30[12]; // [sp+2Ch] [bp-70h] BYREF
  _BYTE v31[12]; // [sp+38h] [bp-64h] BYREF
  _BYTE v32[8]; // [sp+44h] [bp-58h] BYREF
  void *v33; // [sp+50h] [bp-4Ch]
  _BYTE v34[8]; // [sp+58h] [bp-44h] BYREF
  void *v35; // [sp+64h] [bp-38h]
  _BYTE v36[8]; // [sp+6Ch] [bp-30h] BYREF
  void *v37; // [sp+78h] [bp-24h]
  _BYTE v38[8]; // [sp+80h] [bp-1Ch] BYREF
  void *p; // [sp+8Ch] [bp-10h]

  v2 = **((_DWORD **)a1 + 3) + 12 * *((_DWORD *)a1 + 5);
  if ( *(_BYTE *)(v2 + 1) == 5 )
    v3 = *(_DWORD *)(v2 + 4);
  else
    v3 = 0;
  v4 = (gameswf::as_object *)gameswf::cast_to<gameswf::as_object>(v3);
  result = PlayerManager::GetLocalPlayer((PlayerManager *)dword_99F76C, 0, 1);
  character_660 = result->character_660;
  if ( v4 )
  {
    v22 = *(void (__fastcall **)(gameswf::as_object *, _BYTE *, _BYTE *))(*(_DWORD *)v4 + 28);
    gameswf::tu_string::tu_string((gameswf::tu_string *)v38, "Class1Name");
    v7 = Arrays::CharacterTable::members;
    v25 = (StringManager *)dword_99F760;
    PlayerClass = Character::SG_GetPlayerClass(character_660);
    String = (const char *)StringManager::getString(v25, *(_DWORD *)(v7 + 900 * PlayerClass + 900 + 24));
    v31[1] = 0;
    v31[0] = 0;
    gameswf::as_value::set_string((gameswf::as_value *)v31, String);
    v22(v4, v38, v31);
    gameswf::as_value::drop_refs((gameswf::as_value *)v31);
    if ( v38[0] == -1 )
      gameswf::free_internal(p);
    v23 = *(void (__fastcall **)(gameswf::as_object *, _BYTE *, _BYTE *))(*(_DWORD *)v4 + 28);
    gameswf::tu_string::tu_string((gameswf::tu_string *)v36, "Class1Desc");
    v10 = Arrays::CharacterTable::members;
    v26 = (StringManager *)dword_99F760;
    v11 = Character::SG_GetPlayerClass(character_660);
    v12 = (const char *)StringManager::getString(v26, *(_DWORD *)(v10 + 900 * v11 + 900 + 28));
    v30[1] = 0;
    v30[0] = 0;
    gameswf::as_value::set_string((gameswf::as_value *)v30, v12);
    v23(v4, v36, v30);
    gameswf::as_value::drop_refs((gameswf::as_value *)v30);
    if ( v36[0] == -1 )
      gameswf::free_internal(v37);
    v24 = *(void (__fastcall **)(gameswf::as_object *, _BYTE *, _BYTE *))(*(_DWORD *)v4 + 28);
    gameswf::tu_string::tu_string((gameswf::tu_string *)v34, "Class2Name");
    v13 = (StringManager *)dword_99F760;
    v27 = (StringManager *)Arrays::CharacterTable::members;
    v14 = Character::SG_GetPlayerClass(character_660);
    v15 = (const char *)StringManager::getString(v13, *((_DWORD *)v27 + 225 * v14 + 456));
    v29[1] = 0;
    v29[0] = 0;
    gameswf::as_value::set_string((gameswf::as_value *)v29, v15);
    v24(v4, v34, v29);
    gameswf::as_value::drop_refs((gameswf::as_value *)v29);
    if ( v34[0] == -1 )
      gameswf::free_internal(v35);
    v16 = *(void (__fastcall **)(gameswf::as_object *, _BYTE *, _BYTE *))(*(_DWORD *)v4 + 28);
    gameswf::tu_string::tu_string((gameswf::tu_string *)v32, "Class2Desc");
    v17 = character_660;
    v18 = (StringManager *)dword_99F760;
    v19 = Arrays::CharacterTable::members;
    v20 = Character::SG_GetPlayerClass(v17);
    v21 = (const char *)StringManager::getString(v18, *(_DWORD *)(v19 + 900 * v20 + 1828));
    v28[1] = 0;
    v28[0] = 0;
    gameswf::as_value::set_string((gameswf::as_value *)v28, v21);
    v16(v4, v32, v28);
    gameswf::as_value::drop_refs((gameswf::as_value *)v28);
    if ( v32[0] == -1 )
      gameswf::free_internal(v33);
    return (DH2_PlayerInfoCharacterPrefix *)gameswf::as_value::set_as_object(*(gameswf::as_value **)a1, v4);
  }
  return result;
}


// ===== 449e70 NativeSetOptions(gameswf::fn_call const&) =====
int __fastcall NativeSetOptions(const gameswf::fn_call *a1)
{
  const char *v2; // r6
  int v3; // r7
  int v4; // r0
  gameswf::as_object *v5; // r7
  double v6; // r0
  int v7; // r11
  int v8; // r0
  int Option; // r9
  int OptionString; // r1
  int result; // r0
  void (__fastcall *v12)(gameswf::as_object *, _BYTE *, _BYTE *); // r8
  void (__fastcall *v13)(gameswf::as_object *, _BYTE *, _BYTE *); // r8
  int SavedOption; // r0
  char v15; // r0
  int v16; // r3
  int v17; // r1
  int v18; // r0
  MultiMenuManager **Instance; // r0
  bool v20; // zf
  VoxSoundManager *v22; // [sp+0h] [bp-5Ch]
  VoxSoundManager *v23; // [sp+0h] [bp-5Ch]
  char *String; // [sp+4h] [bp-58h]
  _BYTE v25[12]; // [sp+8h] [bp-54h] BYREF
  _BYTE v26[4]; // [sp+14h] [bp-48h] BYREF
  double v27; // [sp+18h] [bp-44h]
  double v28; // [sp+20h] [bp-3Ch]
  _BYTE v29[8]; // [sp+2Ch] [bp-30h] BYREF
  void *v30; // [sp+38h] [bp-24h]
  _BYTE v31[8]; // [sp+40h] [bp-1Ch] BYREF
  void *p; // [sp+4Ch] [bp-10h]

  v2 = (const char *)gameswf::as_value::to_string((gameswf::as_value *)(**((_DWORD **)a1 + 3) + 12 * *((_DWORD *)a1 + 5)));
  v3 = **((_DWORD **)a1 + 3) + 12 * (*((_DWORD *)a1 + 5) - 1);
  if ( *(_BYTE *)(v3 + 1) == 5 )
    v4 = *(_DWORD *)(v3 + 4);
  else
    v4 = 0;
  v5 = (gameswf::as_object *)gameswf::cast_to<gameswf::as_object>(v4);
  LODWORD(v6) = gameswf::as_value::to_number((gameswf::as_value *)(**((_DWORD **)a1 + 3) + 12
                                                                                         * (*((_DWORD *)a1 + 5) - 2)));
  v7 = (int)v6;
  if ( isKOREAN_BUILD )
  {
    if ( LC_API_STRCMP_0("Language", v2) )
      goto LABEL_6;
    v15 = lang_kor;
    if ( !lang_kor )
    {
      v7 = 5;
      goto LABEL_25;
    }
    if ( lang_kor == 5 )
    {
      v15 = 0;
      v7 = 0;
      goto LABEL_25;
    }
  }
  else if ( LC_API_STRCMP_0("Language", v2) )
  {
    goto LABEL_6;
  }
  v15 = v7 == 6;
LABEL_25:
  v16 = lang_curr;
  if ( lang_curr < 0 )
    v16 = v7;
  if ( v16 == 3 )
    v17 = v15 & 1;
  else
    v17 = 0;
  if ( v17 )
  {
    v7 = 4;
  }
  else
  {
    if ( v16 == 4 )
      v18 = v15 & 1;
    else
      v18 = 0;
    if ( v18 )
      goto LABEL_36;
    v20 = v16 == 6;
    if ( v16 == 6 )
      v20 = v7 == 3;
    if ( v20 )
    {
LABEL_36:
      v7 = 5;
    }
    else if ( v16 == 5 && v7 == 3 )
    {
      v7 = 4;
    }
  }
  lang_curr = v7;
LABEL_6:
  SavegameManager::setOption((SavegameManager *)dword_99F778, v2, v7);
  UpdateSavedValues();
  if ( LC_API_STRCMP_0(v2, "VolumeFX") )
  {
    if ( !LC_API_STRCMP_0(v2, "VolumeMusic") && VoxSoundManager::s_instance )
    {
      v23 = (VoxSoundManager *)VoxSoundManager::s_instance;
      SavedOption = Application::GetSavedOption((Application *)&Singleton<Application>::s_inst, "VolumeMusic");
      VoxSoundManager::SetSoundVolume(v23, 2, COERCE_INT((float)SavedOption));
    }
  }
  else if ( VoxSoundManager::s_instance )
  {
    v22 = (VoxSoundManager *)VoxSoundManager::s_instance;
    v8 = Application::GetSavedOption((Application *)&Singleton<Application>::s_inst, "VolumeFX");
    VoxSoundManager::SetSoundVolume(v22, 1, COERCE_INT((float)v8));
  }
  Option = SavegameManager::getOption((SavegameManager *)dword_99F778, v2);
  OptionString = SavegameManager::getOptionString((SavegameManager *)dword_99F778, v2);
  if ( OptionString - Option == -1 )
    String = "";
  else
    String = (char *)StringManager::getString((StringManager *)dword_99F760, OptionString);
  result = LC_API_STRCMP_0(v2, "Language");
  if ( !result )
  {
    Instance = (MultiMenuManager **)MenuManager::GetInstance(nullptr);
    result = MenuManager::ResetFonts(Instance);
  }
  if ( v5 )
  {
    v12 = *(void (__fastcall **)(gameswf::as_object *, _BYTE *, _BYTE *))(*(_DWORD *)v5 + 28);
    gameswf::tu_string::tu_string((gameswf::tu_string *)v31, "CurrentOption");
    v26[0] = 0;
    v26[1] = 2;
    v28 = (double)Option;
    v27 = (double)Option;
    v12(v5, v31, v26);
    gameswf::as_value::drop_refs((gameswf::as_value *)v26);
    if ( v31[0] == -1 )
      gameswf::free_internal(p);
    v13 = *(void (__fastcall **)(gameswf::as_object *, _BYTE *, _BYTE *))(*(_DWORD *)v5 + 28);
    gameswf::tu_string::tu_string((gameswf::tu_string *)v29, "OptionString");
    v25[1] = 0;
    v25[0] = 0;
    gameswf::as_value::set_string((gameswf::as_value *)v25, String);
    v13(v5, v29, v25);
    gameswf::as_value::drop_refs((gameswf::as_value *)v25);
    if ( v29[0] == -1 )
      gameswf::free_internal(v30);
    return gameswf::as_value::set_as_object(*(gameswf::as_value **)a1, v5);
  }
  return result;
}


// ===== 44a298 NativeGetOptionParameters(gameswf::fn_call const&) =====
int __fastcall NativeGetOptionParameters(const gameswf::fn_call *a1)
{
  const char *v2; // r7
  int v3; // r5
  int v4; // r0
  gameswf::as_object *v5; // r5
  int Option; // r10
  int OptionMax; // r8
  int result; // r0
  void (__fastcall *v9)(gameswf::as_object *, _BYTE *, _BYTE *); // [sp+4h] [bp-80h]
  void (__fastcall *v10)(gameswf::as_object *, _BYTE *, _BYTE *); // [sp+4h] [bp-80h]
  void (__fastcall *v11)(gameswf::as_object *, _BYTE *, _BYTE *); // [sp+4h] [bp-80h]
  char *v12; // [sp+Ch] [bp-78h]
  _BYTE v13[12]; // [sp+14h] [bp-70h] BYREF
  _BYTE v14[4]; // [sp+20h] [bp-64h] BYREF
  double v15; // [sp+24h] [bp-60h]
  _BYTE v16[4]; // [sp+2Ch] [bp-58h] BYREF
  double v17; // [sp+30h] [bp-54h]
  double v18; // [sp+38h] [bp-4Ch]
  _BYTE v19[8]; // [sp+40h] [bp-44h] BYREF
  void *p; // [sp+4Ch] [bp-38h]
  _BYTE v21[8]; // [sp+54h] [bp-30h] BYREF
  void *v22; // [sp+60h] [bp-24h]
  _BYTE v23[8]; // [sp+68h] [bp-1Ch] BYREF
  void *v24; // [sp+74h] [bp-10h]

  v2 = (const char *)gameswf::as_value::to_string((gameswf::as_value *)(**((_DWORD **)a1 + 3) + 12 * *((_DWORD *)a1 + 5)));
  v3 = **((_DWORD **)a1 + 3) + 12 * (*((_DWORD *)a1 + 5) - 1);
  if ( *(_BYTE *)(v3 + 1) == 5 )
    v4 = *(_DWORD *)(v3 + 4);
  else
    v4 = 0;
  v5 = (gameswf::as_object *)gameswf::cast_to<gameswf::as_object>(v4);
  Option = SavegameManager::getOption((SavegameManager *)dword_99F778, v2);
  OptionMax = SavegameManager::getOptionMax((SavegameManager *)dword_99F778, v2);
  result = SavegameManager::getOptionString((SavegameManager *)dword_99F778, v2);
  if ( result - Option == -1 )
  {
    v12 = "";
    if ( !v5 )
      goto LABEL_14;
  }
  else
  {
    result = StringManager::getString((StringManager *)dword_99F760, result);
    v12 = (char *)result;
    if ( !v5 )
      goto LABEL_14;
  }
  if ( isKOREAN_BUILD && !LC_API_STRCMP_0("Language", v2) )
    OptionMax = 5;
  v9 = *(void (__fastcall **)(gameswf::as_object *, _BYTE *, _BYTE *))(*(_DWORD *)v5 + 28);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v23, "NumOptions");
  v16[0] = 0;
  v16[1] = 2;
  v18 = (double)OptionMax;
  v17 = (double)OptionMax;
  v9(v5, v23, v16);
  gameswf::as_value::drop_refs((gameswf::as_value *)v16);
  if ( v23[0] == -1 )
    gameswf::free_internal(v24);
  v10 = *(void (__fastcall **)(gameswf::as_object *, _BYTE *, _BYTE *))(*(_DWORD *)v5 + 28);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v21, "CurrentOption");
  v14[0] = 0;
  v14[1] = 2;
  v18 = (double)Option;
  v15 = (double)Option;
  v10(v5, v21, v14);
  gameswf::as_value::drop_refs((gameswf::as_value *)v14);
  if ( v21[0] == -1 )
    gameswf::free_internal(v22);
  v11 = *(void (__fastcall **)(gameswf::as_object *, _BYTE *, _BYTE *))(*(_DWORD *)v5 + 28);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v19, "OptionString");
  v13[1] = 0;
  v13[0] = 0;
  gameswf::as_value::set_string((gameswf::as_value *)v13, v12);
  v11(v5, v19, v13);
  gameswf::as_value::drop_refs((gameswf::as_value *)v13);
  if ( v19[0] == -1 )
    gameswf::free_internal(p);
  result = gameswf::as_value::set_as_object(*(gameswf::as_value **)a1, v5);
LABEL_14:
  if ( isKOREAN_BUILD )
  {
    result = LC_API_STRCMP_0("Language", v2);
    if ( !result )
      lang_kor = Option;
  }
  return result;
}


// ===== 44a5c4 NativeInvGetPlayerGold(gameswf::fn_call const&) =====
void __fastcall NativeInvGetPlayerGold(const gameswf::fn_call *a1)
{
  double v2; // r0
  int v3; // r3
  int v4; // r9
  gameswf::as_object *v5; // r5
  int v6; // r11
  Character *PlayerChar; // r0
  Character *v8; // r9
  int v9; // r0
  void (__fastcall *v10)(gameswf::as_object *, _BYTE *, _BYTE *); // r9
  int v11; // r6
  void (__fastcall *v12)(gameswf::as_object *, _BYTE *, _BYTE *); // [sp+4h] [bp-70h]
  _BYTE v13[12]; // [sp+8h] [bp-6Ch] BYREF
  _BYTE v14[4]; // [sp+14h] [bp-60h] BYREF
  double v15; // [sp+18h] [bp-5Ch]
  double v16; // [sp+20h] [bp-54h]
  std::priv::_String_base<char,std::allocator<char> > v17; // [sp+2Ch] [bp-48h] BYREF
  _BYTE v18[8]; // [sp+44h] [bp-30h] BYREF
  void *p; // [sp+50h] [bp-24h]
  _BYTE v20[8]; // [sp+58h] [bp-1Ch] BYREF
  void *v21; // [sp+64h] [bp-10h]

  LODWORD(v2) = gameswf::as_value::to_number((gameswf::as_value *)(**((_DWORD **)a1 + 3) + 12 * *((_DWORD *)a1 + 5)));
  v3 = *((_DWORD *)a1 + 4);
  v4 = (int)v2;
  if ( v3 == 2 )
  {
    v11 = **((_DWORD **)a1 + 3) + 12 * (*((_DWORD *)a1 + 5) - 1);
    if ( *(_BYTE *)(v11 + 1) == 5 )
      v5 = *(gameswf::as_object **)(v11 + 4);
    else
      v5 = nullptr;
    v6 = 0;
  }
  else
  {
    v5 = nullptr;
    if ( v3 == 3 )
      v6 = gameswf::as_value::to_bool((gameswf::as_value *)(**((_DWORD **)a1 + 3) + 12 * (*((_DWORD *)a1 + 5) - 2)));
    else
      v6 = 0;
  }
  v17._M_finish = (char *)&v17;
  v17._M_start_of_storage._M_data = (char *)&v17;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block(&v17, 0x10u);
  *v17._M_finish = 0;
  PlayerChar = NativeGetPlayerChar(v4, v6);
  v8 = PlayerChar;
  if ( PlayerChar )
  {
    StringManager::parse((StringManager *)dword_99F760, (std::string *)&v17, "^d", *((_DWORD *)PlayerChar + 231));
    if ( v5 )
    {
      v12 = *(void (__fastcall **)(gameswf::as_object *, _BYTE *, _BYTE *))(*(_DWORD *)v5 + 28);
      gameswf::tu_string::tu_string((gameswf::tu_string *)v20, "Gold");
      v9 = *((_DWORD *)v8 + 231);
      v14[0] = 0;
      v14[1] = 2;
      v16 = (double)v9;
      v15 = (double)v9;
      v12(v5, v20, v14);
      gameswf::as_value::drop_refs((gameswf::as_value *)v14);
      if ( v20[0] == -1 )
        gameswf::free_internal(v21);
      v10 = *(void (__fastcall **)(gameswf::as_object *, _BYTE *, _BYTE *))(*(_DWORD *)v5 + 28);
      gameswf::tu_string::tu_string((gameswf::tu_string *)v18, "GoldString");
      v13[1] = 0;
      v13[0] = 0;
      gameswf::as_value::set_string((gameswf::as_value *)v13, v17._M_start_of_storage._M_data);
      v10(v5, v18, v13);
      gameswf::as_value::drop_refs((gameswf::as_value *)v13);
      if ( v18[0] == -1 )
        gameswf::free_internal(p);
      gameswf::as_value::set_as_object(*(gameswf::as_value **)a1, v5);
    }
    else
    {
      gameswf::as_value::set_string(*(gameswf::as_value **)a1, v17._M_start_of_storage._M_data);
    }
  }
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v17);
}


// ===== 44a820 NativeHUDGetActiveFaery(gameswf::fn_call const&) =====
Character *__fastcall NativeHUDGetActiveFaery(const gameswf::fn_call *a1)
{
  double v2; // r0
  int v3; // r0
  gameswf::as_object *v4; // r6
  Character *result; // r0
  Character *v6; // r8
  void (__fastcall *v7)(gameswf::as_object *, _BYTE *, _BYTE *); // r9
  void (__fastcall *v8)(gameswf::as_object *, _BYTE *, _BYTE *); // r9
  unsigned int v9; // r0
  int v10; // r6
  double v11; // r0
  _BYTE v12[12]; // [sp+0h] [bp-54h] BYREF
  _BYTE v13[4]; // [sp+Ch] [bp-48h] BYREF
  double v14; // [sp+10h] [bp-44h]
  double CurrentFaerieId; // [sp+18h] [bp-3Ch]
  _BYTE v16[8]; // [sp+24h] [bp-30h] BYREF
  void *p; // [sp+30h] [bp-24h]
  _BYTE v18[8]; // [sp+38h] [bp-1Ch] BYREF
  void *v19; // [sp+44h] [bp-10h]

  LODWORD(v2) = gameswf::as_value::to_number((gameswf::as_value *)(**((_DWORD **)a1 + 3) + 12 * *((_DWORD *)a1 + 5)));
  v3 = (int)v2;
  if ( *((_DWORD *)a1 + 4) == 2
    && (v10 = **((_DWORD **)a1 + 3) + 12 * (*((_DWORD *)a1 + 5) - 1), *(_BYTE *)(v10 + 1) == 5) )
  {
    v4 = *(gameswf::as_object **)(v10 + 4);
  }
  else
  {
    v4 = nullptr;
  }
  result = (Character *)NativeGetPlayerChar(v3, 0);
  v6 = result;
  if ( result )
  {
    if ( v4 )
    {
      v7 = *(void (__fastcall **)(gameswf::as_object *, _BYTE *, _BYTE *))(*(_DWORD *)v4 + 28);
      gameswf::tu_string::tu_string((gameswf::tu_string *)v18, "Id");
      v13[0] = 0;
      v13[1] = 2;
      CurrentFaerieId = (double)(int)Character::SG_GetCurrentFaerieId(v6, -1);
      v14 = CurrentFaerieId;
      v7(v4, v18, v13);
      gameswf::as_value::drop_refs((gameswf::as_value *)v13);
      if ( v18[0] == -1 )
        gameswf::free_internal(v19);
      v8 = *(void (__fastcall **)(gameswf::as_object *, _BYTE *, _BYTE *))(*(_DWORD *)v4 + 28);
      gameswf::tu_string::tu_string((gameswf::tu_string *)v16, "Upgraded");
      v9 = Character::SG_GetCurrentFaerieId(v6, -1);
      v12[0] = 0;
      v12[1] = 1;
      v12[4] = Character::SG_GetFaerieLevel(v6, v9, -1) > 0;
      v8(v4, v16, v12);
      gameswf::as_value::drop_refs((gameswf::as_value *)v12);
      if ( v16[0] == -1 )
        gameswf::free_internal(p);
      return (Character *)gameswf::as_value::set_as_object(*(gameswf::as_value **)a1, v4);
    }
    else
    {
      v11 = (double)(int)Character::SG_GetCurrentFaerieId(result, -1);
      return (Character *)gameswf::as_value::set_double(*(gameswf::as_value **)a1, v11);
    }
  }
  return result;
}


// ===== 44aa28 NativeGetSaveSlotDetails(gameswf::fn_call const&) =====
void *__fastcall NativeGetSaveSlotDetails(const gameswf::fn_call *a1)
{
  double v2; // r0
  int v3; // r5
  int v4; // r4
  int v5; // r0
  int v6; // r1
  gameswf::as_object *v7; // r4
  PlayerSavegame *v8; // r0
  bool v9; // cc
  int v10; // r3
  int v11; // r5
  char *String; // r1
  int v13; // r2
  StringManager *v14; // r10
  int Constant; // r0
  char *v16; // r0
  void (__fastcall *v17)(_DWORD, _DWORD, _DWORD); // r8
  void (__fastcall *v18)(_DWORD, _DWORD, _DWORD); // r10
  void (__fastcall *v19)(_DWORD, _DWORD, _DWORD); // r10
  char *v20; // r1
  void (__fastcall *v21)(_DWORD, _DWORD, _DWORD); // r10
  char *M_data; // r1
  void (__fastcall *v23)(_DWORD, _DWORD, _DWORD); // r10
  int v24; // r0
  void (__fastcall *v25)(_DWORD, _DWORD, _DWORD); // r10
  char *v26; // r1
  int *v27; // r8
  void (__fastcall *v28)(_DWORD, _DWORD, _DWORD); // r10
  const char *v29; // r1
  void (__fastcall *v30)(_DWORD, _DWORD, _DWORD); // r10
  char *v31; // r1
  void (__fastcall *v32)(_DWORD, _DWORD, _DWORD); // r10
  int v33; // r0
  void (__fastcall *v34)(_DWORD, _DWORD, _DWORD); // r10
  int v35; // r0
  void (__fastcall *v36)(_DWORD, _DWORD, _DWORD); // r10
  int v37; // r0
  size_t v38; // r1
  void *result; // r0
  size_t v40; // r1
  int v41; // r2
  int v42; // r3
  struct tm *v43; // r8
  double v44; // r0
  int v45; // [sp+14h] [bp-428h]
  int v46; // [sp+24h] [bp-418h]
  _BYTE v47[4]; // [sp+2Ch] [bp-410h] BYREF
  double v48; // [sp+30h] [bp-40Ch]
  _BYTE v49[4]; // [sp+38h] [bp-404h] BYREF
  double v50; // [sp+3Ch] [bp-400h]
  _BYTE v51[4]; // [sp+44h] [bp-3F8h] BYREF
  double v52; // [sp+48h] [bp-3F4h]
  _BYTE v53[12]; // [sp+50h] [bp-3ECh] BYREF
  _BYTE v54[12]; // [sp+5Ch] [bp-3E0h] BYREF
  _BYTE v55[12]; // [sp+68h] [bp-3D4h] BYREF
  _BYTE v56[4]; // [sp+74h] [bp-3C8h] BYREF
  double v57; // [sp+78h] [bp-3C4h]
  _BYTE v58[12]; // [sp+80h] [bp-3BCh] BYREF
  _BYTE v59[12]; // [sp+8Ch] [bp-3B0h] BYREF
  _BYTE v60[12]; // [sp+98h] [bp-3A4h] BYREF
  _BYTE v61[4]; // [sp+A4h] [bp-398h] BYREF
  double v62; // [sp+A8h] [bp-394h]
  void *__p; // [sp+B0h] [bp-38Ch] BYREF
  char *v64; // [sp+B4h] [bp-388h]
  char *v65; // [sp+B8h] [bp-384h]
  void *p; // [sp+BCh] [bp-380h] BYREF
  unsigned int v67; // [sp+C0h] [bp-37Ch]
  int v68; // [sp+C4h] [bp-378h]
  double v69; // [sp+C8h] [bp-374h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v70; // [sp+D8h] [bp-364h] BYREF
  char *v71; // [sp+104h] [bp-338h]
  int v72; // [sp+108h] [bp-334h]
  int v73; // [sp+10Ch] [bp-330h]
  int v74; // [sp+110h] [bp-32Ch]
  int v75; // [sp+114h] [bp-328h]
  char v76[80]; // [sp+270h] [bp-1CCh] BYREF
  char s[32]; // [sp+2C0h] [bp-17Ch] BYREF
  std::priv::_String_base<char,std::allocator<char> > v78; // [sp+2E0h] [bp-15Ch] BYREF
  std::priv::_String_base<char,std::allocator<char> > v79; // [sp+2F8h] [bp-144h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v80; // [sp+310h] [bp-12Ch] BYREF
  std::priv::_String_base<char,std::allocator<char> > v81; // [sp+328h] [bp-114h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v82; // [sp+340h] [bp-FCh] BYREF
  _BYTE v83[8]; // [sp+358h] [bp-E4h] BYREF
  void *v84; // [sp+364h] [bp-D8h]
  _BYTE v85[8]; // [sp+36Ch] [bp-D0h] BYREF
  void *v86; // [sp+378h] [bp-C4h]
  _BYTE v87[8]; // [sp+380h] [bp-BCh] BYREF
  void *v88; // [sp+38Ch] [bp-B0h]
  _BYTE v89[8]; // [sp+394h] [bp-A8h] BYREF
  void *v90; // [sp+3A0h] [bp-9Ch]
  _BYTE v91[8]; // [sp+3A8h] [bp-94h] BYREF
  void *v92; // [sp+3B4h] [bp-88h]
  _BYTE v93[8]; // [sp+3BCh] [bp-80h] BYREF
  void *v94; // [sp+3C8h] [bp-74h]
  _BYTE v95[8]; // [sp+3D0h] [bp-6Ch] BYREF
  void *v96; // [sp+3DCh] [bp-60h]
  _BYTE v97[8]; // [sp+3E4h] [bp-58h] BYREF
  void *v98; // [sp+3F0h] [bp-4Ch]
  _BYTE v99[8]; // [sp+3F8h] [bp-44h] BYREF
  void *v100; // [sp+404h] [bp-38h]
  _BYTE v101[8]; // [sp+40Ch] [bp-30h] BYREF
  void *v102; // [sp+418h] [bp-24h]
  _BYTE v103[8]; // [sp+420h] [bp-1Ch] BYREF
  void *v104; // [sp+42Ch] [bp-10h]
  int v105; // [sp+438h] [bp-4h] BYREF

  LODWORD(v2) = gameswf::as_value::to_number((gameswf::as_value *)(**((_DWORD **)a1 + 3) + 12 * *((_DWORD *)a1 + 5)));
  v3 = (int)v2;
  v4 = **((_DWORD **)a1 + 3) + 12 * (*((_DWORD *)a1 + 5) - 1);
  if ( *(_BYTE *)(v4 + 1) == 5 )
    v5 = *(_DWORD *)(v4 + 4);
  else
    v5 = 0;
  v7 = (gameswf::as_object *)gameswf::cast_to<gameswf::as_object>(v5);
  if ( *((_DWORD *)a1 + 4) == 3 )
  {
    LODWORD(v44) = gameswf::as_value::to_number((gameswf::as_value *)(**((_DWORD **)a1 + 3)
                                                                    + 12 * (*((_DWORD *)a1 + 5) - 2)));
    LODWORD(v44) = (int)v44;
    v45 = LODWORD(v44);
  }
  else
  {
    v45 = -1;
  }
  v8 = nullptr;
  p = nullptr;
  v67 = 0;
  v68 = 0;
  __p = nullptr;
  v64 = nullptr;
  v65 = nullptr;
  LODWORD(v69) = 0;
  do
  {
    while ( 1 )
    {
      if ( PlayerSavegame::SG_Exists(v8, v6) )
      {
        v6 = v67;
        if ( v67 == v68 )
        {
          std::vector<int>::_M_insert_overflow((int)&p, v67, &v69);
        }
        else
        {
          *(_DWORD *)v67 = LODWORD(v69);
          v67 += 4;
        }
        goto LABEL_10;
      }
      v6 = (int)v64;
      if ( v64 != v65 )
        break;
      std::vector<int>::_M_insert_overflow((int)&__p, (int)v64, &v69);
LABEL_10:
      v8 = (PlayerSavegame *)++LODWORD(v69);
      if ( SLODWORD(v69) > 3 )
        goto LABEL_14;
    }
    *(_DWORD *)v64 = LODWORD(v69);
    v8 = (PlayerSavegame *)(LODWORD(v69) + 1);
    v9 = LODWORD(v69) + 1 <= 3;
    v64 += 4;
    ++LODWORD(v69);
  }
  while ( v9 );
LABEL_14:
  v10 = (int)(v67 - (_DWORD)p) >> 2;
  if ( v10 == 4 || v10 - 1 >= v3 )
  {
    v46 = *((_DWORD *)p + v3);
    PlayerSavegame::PlayerSavegame((PlayerSavegame *)&v70, v46, 17, 0);
    v11 = 1;
    String = (char *)StringManager::getString(
                       (StringManager *)dword_99F760,
                       *(_DWORD *)(Arrays::CharacterTable::members + 900 * v73 + 24));
  }
  else
  {
    v46 = *(_DWORD *)__p;
    PlayerSavegame::PlayerSavegame((PlayerSavegame *)&v70, *(_DWORD *)__p, 17, 0);
    v11 = 0;
    String = "";
  }
  std::string::string((std::string *)&v82, String);
  if ( v11 )
    v13 = v72;
  else
    v13 = 1;
  sprintf(s, "%d", v13);
  std::operator+<char>((std::string *)&v80, (int)&v82, " ");
  v14 = (StringManager *)dword_99F760;
  Constant = PyDataConstants::getConstant((PyDataConstants *)dword_99F758, "StrID", "GAMEPLAYMENUS_LEVEL");
  v16 = (char *)StringManager::getString(v14, Constant);
  std::operator+<char>((std::string *)&v79, (int)&v80, v16);
  std::operator+<char>((std::string *)&v78, (int)&v79, " ");
  std::operator+<char>((std::string *)&v81, (int)&v78, s);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v78);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v79);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v80);
  if ( v11 )
  {
    LODWORD(v69) = v74;
    v43 = localtime((const time_t *)&v69);
    switch ( SavegameManager::getLanguage((SavegameManager *)dword_99F778) )
    {
      case 1:
      case 3:
      case 7:
        strftime(v76, 0x50u, "%d/%m     %H:%M", v43);
        break;
      case 2:
        strftime(v76, 0x50u, "%d.%m.     %H:%M", v43);
        break;
      case 4:
      case 5:
      case 6:
        strftime(v76, 0x50u, "%m.%d.     %H:%M", v43);
        break;
      default:
        strftime(v76, 0x50u, "%m/%d     %H:%M", v43);
        break;
    }
  }
  if ( v45 == -1 && v11 )
    v45 = PlayerSavegame::m_difficultyLevel;
  if ( v7 )
  {
    v17 = *(void (__fastcall **)(_DWORD, _DWORD, _DWORD))(*(_DWORD *)v7 + 28);
    gameswf::tu_string::tu_string((gameswf::tu_string *)v103, "SlotID");
    v61[0] = 0;
    v61[1] = 2;
    v69 = (double)v46;
    v62 = (double)v46;
    v17(v7, v103, v61);
    gameswf::as_value::drop_refs((gameswf::as_value *)v61);
    if ( v103[0] == -1 )
      gameswf::free_internal(v104);
    v18 = *(void (__fastcall **)(_DWORD, _DWORD, _DWORD))(*(_DWORD *)v7 + 28);
    gameswf::tu_string::tu_string((gameswf::tu_string *)v101, "InUse");
    v60[0] = 0;
    v60[1] = 1;
    v60[4] = v11;
    v18(v7, v101, v60);
    gameswf::as_value::drop_refs((gameswf::as_value *)v60);
    if ( v101[0] == -1 )
      gameswf::free_internal(v102);
    v19 = *(void (__fastcall **)(_DWORD, _DWORD, _DWORD))(*(_DWORD *)v7 + 28);
    gameswf::tu_string::tu_string((gameswf::tu_string *)v99, "PlayerName");
    if ( v11 )
      v20 = v71;
    else
      v20 = "";
    v59[1] = 0;
    v59[0] = 0;
    gameswf::as_value::set_string((gameswf::as_value *)v59, v20);
    v19(v7, v99, v59);
    gameswf::as_value::drop_refs((gameswf::as_value *)v59);
    if ( v99[0] == -1 )
      gameswf::free_internal(v100);
    v21 = *(void (__fastcall **)(_DWORD, _DWORD, _DWORD))(*(_DWORD *)v7 + 28);
    gameswf::tu_string::tu_string((gameswf::tu_string *)v97, "PlayerClass");
    if ( v11 )
      M_data = v82._M_start_of_storage._M_data;
    else
      M_data = "";
    v58[1] = 0;
    v58[0] = 0;
    gameswf::as_value::set_string((gameswf::as_value *)v58, M_data);
    v21(v7, v97, v58);
    gameswf::as_value::drop_refs((gameswf::as_value *)v58);
    if ( v97[0] == -1 )
      gameswf::free_internal(v98);
    v23 = *(void (__fastcall **)(_DWORD, _DWORD, _DWORD))(*(_DWORD *)v7 + 28);
    gameswf::tu_string::tu_string((gameswf::tu_string *)v95, "PlayerLVL");
    if ( v11 )
      v24 = v72;
    else
      v24 = -1;
    v56[0] = 0;
    v56[1] = 2;
    v69 = (double)v24;
    v57 = (double)v24;
    v23(v7, v95, v56);
    gameswf::as_value::drop_refs((gameswf::as_value *)v56);
    if ( v95[0] == -1 )
      gameswf::free_internal(v96);
    v25 = *(void (__fastcall **)(_DWORD, _DWORD, _DWORD))(*(_DWORD *)v7 + 28);
    gameswf::tu_string::tu_string((gameswf::tu_string *)v93, "StringClassLVL");
    if ( v11 )
      v26 = v81._M_start_of_storage._M_data;
    else
      v26 = "";
    v55[1] = 0;
    v55[0] = 0;
    gameswf::as_value::set_string((gameswf::as_value *)v55, v26);
    v25(v7, v93, v55);
    gameswf::as_value::drop_refs((gameswf::as_value *)v55);
    if ( v93[0] == -1 )
      gameswf::free_internal(v94);
    v27 = &v105 + v45 + 20;
    printf("INFO: %d\n", *(v27 - 216));
    v28 = *(void (__fastcall **)(_DWORD, _DWORD, _DWORD))(*(_DWORD *)v7 + 28);
    gameswf::tu_string::tu_string((gameswf::tu_string *)v91, "PlayerLocation");
    if ( v11 )
    {
      v41 = *(v27 - 216);
      if ( v41 == -1 )
        v42 = 0;
      else
        v42 = 72 * v41;
      v29 = (const char *)StringManager::getString(
                            (StringManager *)dword_99F760,
                            *(_DWORD *)(Arrays::LevelList::members + v42 + 36));
    }
    else
    {
      v29 = "";
    }
    v54[1] = 0;
    v54[0] = 0;
    gameswf::as_value::set_string((gameswf::as_value *)v54, v29);
    v28(v7, v91, v54);
    gameswf::as_value::drop_refs((gameswf::as_value *)v54);
    if ( v91[0] == -1 )
      gameswf::free_internal(v92);
    v30 = *(void (__fastcall **)(_DWORD, _DWORD, _DWORD))(*(_DWORD *)v7 + 28);
    gameswf::tu_string::tu_string((gameswf::tu_string *)v89, "PlayerLastSave");
    if ( v11 )
      v31 = v76;
    else
      v31 = "";
    v53[1] = 0;
    v53[0] = 0;
    gameswf::as_value::set_string((gameswf::as_value *)v53, v31);
    v30(v7, v89, v53);
    gameswf::as_value::drop_refs((gameswf::as_value *)v53);
    if ( v89[0] == -1 )
      gameswf::free_internal(v90);
    v32 = *(void (__fastcall **)(_DWORD, _DWORD, _DWORD))(*(_DWORD *)v7 + 28);
    gameswf::tu_string::tu_string((gameswf::tu_string *)v87, "PlayerCurrentAct");
    if ( v11 )
      v33 = *(_DWORD *)&PlayerSavegame::SG_GetQuestSG((PlayerSavegame *)&v70)[4 * v45 + 68];
    else
      v33 = 1;
    v51[0] = 0;
    v51[1] = 2;
    v69 = (double)v33;
    v52 = (double)v33;
    v32(v7, v87, v51);
    gameswf::as_value::drop_refs((gameswf::as_value *)v51);
    if ( v87[0] == -1 )
      gameswf::free_internal(v88);
    v34 = *(void (__fastcall **)(_DWORD, _DWORD, _DWORD))(*(_DWORD *)v7 + 28);
    gameswf::tu_string::tu_string((gameswf::tu_string *)v85, "Difficulty");
    v35 = v45;
    v49[0] = 0;
    if ( !v11 )
      v35 = 0;
    v49[1] = 2;
    v69 = (double)v35;
    v50 = (double)v35;
    v34(v7, v85, v49);
    gameswf::as_value::drop_refs((gameswf::as_value *)v49);
    if ( v85[0] == -1 )
      gameswf::free_internal(v86);
    v36 = *(void (__fastcall **)(_DWORD, _DWORD, _DWORD))(*(_DWORD *)v7 + 28);
    gameswf::tu_string::tu_string((gameswf::tu_string *)v83, "DifficultyUnlocked");
    if ( v11 )
      v37 = v75;
    else
      v37 = 0;
    v47[0] = 0;
    v47[1] = 2;
    v69 = (double)v37;
    v48 = (double)v37;
    v36(v7, v83, v47);
    gameswf::as_value::drop_refs((gameswf::as_value *)v47);
    if ( v83[0] == -1 )
      gameswf::free_internal(v84);
  }
  gameswf::as_value::set_as_object(*(gameswf::as_value **)a1, v7);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v81);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v82);
  PlayerSavegame::~PlayerSavegame(&v70);
  if ( __p )
  {
    v38 = (v65 - (_BYTE *)__p) & 0xFFFFFFFC;
    if ( v38 > 0x80 )
      CustomFree(__p);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(__p, v38);
  }
  result = p;
  if ( p )
  {
    v40 = (v68 - (_DWORD)p) & 0xFFFFFFFC;
    if ( v40 > 0x80 )
      CustomFree(p);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(p, v40);
  }
  return result;
}


// ===== 44b604 NativeGetBuffs(gameswf::fn_call const&) =====
Character *__fastcall NativeGetBuffs(Character *result)
{
  Character *v1; // r7
  int v2; // r2
  int v3; // r3
  int v4; // r3
  _DWORD *v5; // r2
  int v6; // r3
  int v7; // r0
  double v8; // r0
  int v9; // r6
  int v10; // r1
  _DWORD *v11; // r4
  _DWORD *v12; // r5
  int v13; // r1
  int v14; // r2
  int v15; // r3
  _DWORD *v16; // r3
  int v17; // r6
  gameswf::player *v18; // r8
  _BYTE *v19; // r0
  gameswf::as_object *v20; // r6
  void (__fastcall *v21)(gameswf::as_object *, _BYTE *, _BYTE *); // r10
  int v22; // r1
  int v23; // r2
  int v24; // r3
  int v25; // r0
  const char *v26; // r1
  int v27; // r1
  int v28; // r2
  int v29; // r3
  void (__fastcall *v30)(gameswf::as_object *, _BYTE *, _BYTE *); // r7
  void (__fastcall *v31)(gameswf::as_object *, _BYTE *, _BYTE *); // r5
  int v32; // r2
  int v33; // r1
  int v34; // r2
  int v35; // r3
  int v36; // r1
  int v37; // r2
  int v38; // r3
  void (__fastcall *v40)(gameswf::as_object *, _BYTE *, _BYTE *); // [sp+0h] [bp-11Ch]
  _DWORD *v41; // [sp+8h] [bp-114h]
  gameswf::as_object *v42; // [sp+10h] [bp-10Ch]
  Character *v43; // [sp+14h] [bp-108h]
  CharTimers *v44; // [sp+2Ch] [bp-F0h]
  int v45; // [sp+34h] [bp-E8h] BYREF
  int v46; // [sp+38h] [bp-E4h]
  int v47; // [sp+3Ch] [bp-E0h]
  int v48; // [sp+40h] [bp-DCh]
  _DWORD v49[4]; // [sp+44h] [bp-D8h] BYREF
  _DWORD v50[4]; // [sp+54h] [bp-C8h] BYREF
  _DWORD v51[4]; // [sp+64h] [bp-B8h] BYREF
  _BYTE v52[4]; // [sp+74h] [bp-A8h] BYREF
  gameswf::as_object *v53; // [sp+78h] [bp-A4h]
  _BYTE v54[4]; // [sp+80h] [bp-9Ch] BYREF
  double v55; // [sp+84h] [bp-98h]
  _BYTE v56[4]; // [sp+8Ch] [bp-90h] BYREF
  double v57; // [sp+90h] [bp-8Ch]
  _BYTE v58[12]; // [sp+98h] [bp-84h] BYREF
  _BYTE v59[4]; // [sp+A4h] [bp-78h] BYREF
  double v60; // [sp+A8h] [bp-74h]
  double v61; // [sp+B0h] [bp-6Ch]
  unsigned int v62; // [sp+BCh] [bp-60h] BYREF
  unsigned int v63; // [sp+C0h] [bp-5Ch] BYREF
  _BYTE v64[8]; // [sp+C4h] [bp-58h] BYREF
  void *v65; // [sp+D0h] [bp-4Ch]
  _BYTE v66[8]; // [sp+D8h] [bp-44h] BYREF
  void *p; // [sp+E4h] [bp-38h]
  _BYTE v68[8]; // [sp+ECh] [bp-30h] BYREF
  void *v69; // [sp+F8h] [bp-24h]
  _BYTE v70[8]; // [sp+100h] [bp-1Ch] BYREF
  void *v71; // [sp+10Ch] [bp-10h]

  v1 = result;
  if ( (unsigned int)(*((_DWORD *)result + 4) - 2) <= 1 )
  {
    v2 = *((_DWORD *)result + 5);
    v3 = **((_DWORD **)result + 3);
    if ( *(_BYTE *)(v3 + 12 * v2 + 1) == 5 )
    {
      result = (Character *)gameswf::as_value::is_number((gameswf::as_value *)(v3 + 12 * (v2 - 1)));
      if ( result )
      {
        if ( *((_DWORD *)v1 + 4) == 3 )
        {
          v5 = *((_DWORD **)v1 + 3);
          v4 = *((_DWORD *)v1 + 5);
          result = (Character *)(v4 - 2);
          if ( *(_BYTE *)(*v5 + 12 * (v4 - 2) + 1) != 1 && *(_BYTE *)(*v5 + 12 * (v4 - 2) + 1) )
            return result;
        }
        else
        {
          v4 = *((_DWORD *)v1 + 5);
          v5 = *((_DWORD **)v1 + 3);
        }
        v6 = *v5 + 12 * v4;
        v7 = *(_BYTE *)(v6 + 1) == 5 ? *(_DWORD *)(v6 + 4) : 0;
        v42 = (gameswf::as_object *)gameswf::cast_to<gameswf::as_array>(v7);
        LODWORD(v8) = gameswf::as_value::to_number((gameswf::as_value *)(**((_DWORD **)v1 + 3)
                                                                       + 12 * (*((_DWORD *)v1 + 5) - 1)));
        v9 = (int)v8;
        v10 = *((_DWORD *)v1 + 4) == 3
            ? gameswf::as_value::to_bool((gameswf::as_value *)(**((_DWORD **)v1 + 3) + 12 * (*((_DWORD *)v1 + 5) - 2)))
            : 0;
        result = NativeGetPlayerChar(v9, v10);
        if ( result )
        {
          v11 = *((_DWORD **)result + 1248);
          v41 = (_DWORD *)((char *)result + 4984);
          if ( v11 == (_DWORD *)((char *)result + 4984) )
            return (Character *)gameswf::as_value::set_as_object(*(gameswf::as_value **)v1, v42);
          v44 = (Character *)((char *)result + 948);
          v43 = v1;
          while ( 1 )
          {
            v12 = v11 + 13;
            v13 = v11[14];
            v14 = v11[15];
            v15 = v11[16];
            v51[0] = v11[13];
            v51[1] = v13;
            v51[2] = v14;
            v51[3] = v15;
            if ( std::priv::_Deque_iterator_base<CharProperties::BuffInst *>::_M_subtract(v11 + 17, v51) )
            {
              v17 = *((_DWORD *)v43 + 3);
              v18 = *(gameswf::player **)(v17 + 104);
              if ( v18 )
              {
                v19 = *(_BYTE **)(v17 + 100);
                if ( !v19[4] )
                {
                  if ( (*(_DWORD *)v19)-- == 1 )
                    gameswf::free_internal(v19);
                  v18 = nullptr;
                  *(_DWORD *)(v17 + 104) = 0;
                  *(_DWORD *)(v17 + 100) = 0;
                }
              }
              v20 = (gameswf::as_object *)operator new(56, 0);
              gameswf::as_object::as_object(v20, v18);
              v63 = 0;
              v62 = 0;
              v21 = *(void (__fastcall **)(gameswf::as_object *, _BYTE *, _BYTE *))(*(_DWORD *)v20 + 28);
              gameswf::tu_string::tu_string((gameswf::tu_string *)v70, "BuffCount");
              v22 = v11[14];
              v23 = v11[15];
              v24 = v11[16];
              v50[0] = *v12;
              v50[1] = v22;
              v50[2] = v23;
              v50[3] = v24;
              v25 = std::priv::_Deque_iterator_base<CharProperties::BuffInst *>::_M_subtract(v11 + 17, v50);
              v59[0] = 0;
              v59[1] = 2;
              v61 = (double)v25;
              v60 = (double)v25;
              v21(v20, v70, v59);
              gameswf::as_value::drop_refs((gameswf::as_value *)v59);
              if ( v70[0] == -1 )
                gameswf::free_internal(v71);
              v40 = *(void (__fastcall **)(gameswf::as_object *, _BYTE *, _BYTE *))(*(_DWORD *)v20 + 28);
              gameswf::tu_string::tu_string((gameswf::tu_string *)v68, "BuffIcon");
              v26 = (const char *)v11[12];
              v58[1] = 0;
              v58[0] = 0;
              gameswf::as_value::set_string((gameswf::as_value *)v58, v26);
              v40(v20, v68, v58);
              gameswf::as_value::drop_refs((gameswf::as_value *)v58);
              if ( v68[0] == -1 )
                gameswf::free_internal(v69);
              v27 = v11[14];
              v28 = v11[15];
              v29 = v11[16];
              v49[0] = *v12;
              v49[1] = v27;
              v49[2] = v28;
              v49[3] = v29;
              if ( std::priv::_Deque_iterator_base<CharProperties::BuffInst *>::_M_subtract(v11 + 17, v49) == 1 )
              {
                v33 = v11[14];
                v34 = v11[15];
                v35 = v11[16];
                v45 = *v12;
                v46 = v33;
                v47 = v34;
                v48 = v35;
                std::priv::_Deque_iterator_base<CharProperties::BuffInst *>::_M_advance(&v45);
                if ( *(_DWORD *)(*(_DWORD *)v45 + 904) != -1 )
                {
                  v36 = v11[14];
                  v37 = v11[15];
                  v38 = v11[16];
                  v45 = *v12;
                  v46 = v36;
                  v47 = v37;
                  v48 = v38;
                  std::priv::_Deque_iterator_base<CharProperties::BuffInst *>::_M_advance(&v45);
                  CharTimers::TMR_TimeLeft(v44, *(_DWORD *)(*(_DWORD *)v45 + 904), &v63, &v62);
                }
              }
              v30 = *(void (__fastcall **)(gameswf::as_object *, _BYTE *, _BYTE *))(*(_DWORD *)v20 + 28);
              gameswf::tu_string::tu_string((gameswf::tu_string *)v66, "BuffTime");
              v56[0] = 0;
              v56[1] = 2;
              v61 = (double)(int)v63;
              v57 = (double)(int)v63;
              v30(v20, v66, v56);
              gameswf::as_value::drop_refs((gameswf::as_value *)v56);
              if ( v66[0] == -1 )
                gameswf::free_internal(p);
              v31 = *(void (__fastcall **)(gameswf::as_object *, _BYTE *, _BYTE *))(*(_DWORD *)v20 + 28);
              gameswf::tu_string::tu_string((gameswf::tu_string *)v64, "BuffTotalTime");
              v54[0] = 0;
              v54[1] = 2;
              v61 = (double)(int)v62;
              v55 = (double)(int)v62;
              v31(v20, v64, v54);
              gameswf::as_value::drop_refs((gameswf::as_value *)v54);
              if ( v64[0] == -1 )
                gameswf::free_internal(v65);
              v52[0] = 0;
              v52[1] = 5;
              v53 = v20;
              gameswf::ref_counted::add_ref(v20);
              gameswf::as_array::push(v42, (const gameswf::as_value *)v52);
              gameswf::as_value::drop_refs((gameswf::as_value *)v52);
              v16 = (_DWORD *)v11[3];
              if ( !v16 )
              {
LABEL_38:
                v32 = v11[1];
                if ( v11 == *(_DWORD **)(v32 + 12) )
                {
                  do
                  {
                    v11 = (_DWORD *)v32;
                    v32 = *(_DWORD *)(v32 + 4);
                  }
                  while ( v11 == *(_DWORD **)(v32 + 12) );
                  v16 = (_DWORD *)v11[3];
                }
                if ( v16 != (_DWORD *)v32 )
                  v11 = (_DWORD *)v32;
                goto LABEL_23;
              }
            }
            else
            {
              v16 = (_DWORD *)v11[3];
              if ( !v16 )
                goto LABEL_38;
            }
            while ( v16[2] )
              v16 = (_DWORD *)v16[2];
            v11 = v16;
LABEL_23:
            if ( v41 == v11 )
            {
              v1 = v43;
              return (Character *)gameswf::as_value::set_as_object(*(gameswf::as_value **)v1, v42);
            }
          }
        }
      }
    }
  }
  return result;
}


// ===== 44bb94 NativeInvGetItemsListForSlot(gameswf::fn_call const&) =====
gameswf::as_value **__fastcall NativeInvGetItemsListForSlot(gameswf::as_value **result)
{
  gameswf::as_value **v1; // r7
  gameswf::as_value *v2; // r6
  gameswf::as_value *v3; // r10
  int v4; // r3
  unsigned int v5; // lr
  int v6; // r8
  int v7; // r0
  int v8; // r0
  _BOOL4 v9; // r9
  unsigned int v10; // [sp+8h] [bp-23Ch]
  gameswf::as_object *v11; // [sp+10h] [bp-234h]
  Character *PlayerChar; // [sp+38h] [bp-20Ch]
  int v13; // [sp+9Ch] [bp-1A8h] BYREF
  int v14; // [sp+A0h] [bp-1A4h]
  int v15; // [sp+A4h] [bp-1A0h]
  unsigned int v16; // [sp+A8h] [bp-19Ch]
  unsigned int v17; // [sp+ACh] [bp-198h]
  unsigned __int64 v18; // [sp+B4h] [bp-190h]
  Character *v19; // [sp+BCh] [bp-188h]
  unsigned int v20; // [sp+C0h] [bp-184h]

  v1 = result;
  if ( result[4] == (gameswf::as_value *)((char *)&dword_0 + 3) )
  {
    v2 = result[3];
    v3 = result[5];
    v4 = *(_DWORD *)v2 + 12 * (_DWORD)v3;
    if ( *(_BYTE *)(v4 + 1) == 2 )
    {
      v5 = *(_DWORD *)(v4 + 4);
      v17 = *(_DWORD *)(v4 + 8);
      v16 = v5;
      v18 = __PAIR64__(v17, v5);
      result = nullptr;
      if ( *(_BYTE *)(*(_DWORD *)v2 + 12 * ((_DWORD)v3 - 1) + 1) == 5 )
      {
        result = (gameswf::as_value **)gameswf::as_value::is_number((gameswf::as_value *)(*(_DWORD *)v2
                                                                                        + 12 * ((_DWORD)v3 - 2)));
        if ( result )
        {
          v10 = gameswf::as_value::to_int((gameswf::as_value *)(*(_DWORD *)v1[3] + 12 * (_DWORD)v1[5]));
          v6 = *(_DWORD *)v1[3] + 12 * ((_DWORD)v1[5] - 1);
          if ( *(_BYTE *)(v6 + 1) == 5 )
            v7 = *(_DWORD *)(v6 + 4);
          else
            v7 = 0;
          v11 = (gameswf::as_object *)gameswf::cast_to<gameswf::as_array>(v7);
          v8 = gameswf::as_value::to_int((gameswf::as_value *)(*(_DWORD *)v1[3] + 12 * ((_DWORD)v1[5] - 2)));
          PlayerChar = (Character *)NativeGetPlayerChar(v8, 0);
          v13 = 0;
          v14 = 0;
          v15 = 0;
          if ( PlayerChar )
          {
            v9 = v10 == PyDataConstants::getConstant((PyDataConstants *)dword_99F758, "EquipmentSlots", "Count");
            if ( v10 != PyDataConstants::getConstant((PyDataConstants *)dword_99F758, "EquipmentSlots", "LeftHand") )
              PyDataConstants::getConstant((PyDataConstants *)dword_99F758, "EquipmentSlots", "RightHand");
            if ( v10 != PyDataConstants::getConstant(
                          (PyDataConstants *)dword_99F758,
                          "EquipmentSlots",
                          "LeftHandRingFinger") )
              PyDataConstants::getConstant((PyDataConstants *)dword_99F758, "EquipmentSlots", "RightHandRingFinger");
            if ( v9 )
              ItemInventory::GetValuableItems((char *)PlayerChar + 892);
            else
              ItemInventory::GetItemListForSlot((Character *)((char *)PlayerChar + 892), v10);
            v20 = v10;
            v19 = PlayerChar;
            std::sort<ItemInventory::Item *,SortByEquipability>(v13, v14);
            gameswf::as_value::set_as_object(*v1, v11);
            return (gameswf::as_value **)std::vector<ItemInventory::Item>::~vector(&v13);
          }
          else
          {
            return (gameswf::as_value **)std::vector<ItemInventory::Item>::~vector(&v13);
          }
        }
      }
    }
  }
  return result;
}


// ===== 44c444 NativeGetQuestDetails(gameswf::fn_call const&) =====
void __fastcall NativeGetQuestDetails(const gameswf::fn_call *a1)
{
  int *v1; // r3
  int v3; // r0
  int v4; // r3
  int v5; // r2
  gameswf::as_value *v6; // r0
  int v7; // r5
  double v8; // r10
  int v9; // r1
  int v10; // r1
  Character *PlayerChar; // r0
  Character *v12; // r8
  int v13; // r7
  int NumQuests; // r0
  bool v15; // cc
  Quest *QuestByID; // r7
  void (__fastcall *v17)(int, _BYTE *, _BYTE *); // r10
  const char *Title; // r0
  void (__fastcall *v19)(int, _BYTE *, _BYTE *); // r10
  const char *PreDescription; // r0
  void (__fastcall *v21)(int, _BYTE *, _BYTE *); // r9
  void (__fastcall *v22)(int, _BYTE *, _BYTE *); // r10
  const char *PostDescription; // r0
  void (__fastcall *v24)(int, _BYTE *, _BYTE *); // r8
  double v25; // [sp+0h] [bp-CCh]
  _BYTE v26[12]; // [sp+Ch] [bp-C0h] BYREF
  _BYTE v27[12]; // [sp+18h] [bp-B4h] BYREF
  _BYTE v28[12]; // [sp+24h] [bp-A8h] BYREF
  _BYTE v29[12]; // [sp+30h] [bp-9Ch] BYREF
  _BYTE v30[12]; // [sp+3Ch] [bp-90h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v31; // [sp+48h] [bp-84h] BYREF
  _BYTE v32[8]; // [sp+60h] [bp-6Ch] BYREF
  void *p; // [sp+6Ch] [bp-60h]
  _BYTE v34[8]; // [sp+74h] [bp-58h] BYREF
  void *v35; // [sp+80h] [bp-4Ch]
  _BYTE v36[8]; // [sp+88h] [bp-44h] BYREF
  void *v37; // [sp+94h] [bp-38h]
  _BYTE v38[8]; // [sp+9Ch] [bp-30h] BYREF
  void *v39; // [sp+A8h] [bp-24h]
  _BYTE v40[8]; // [sp+B0h] [bp-1Ch] BYREF
  void *v41; // [sp+BCh] [bp-10h]

  v1 = *((int **)a1 + 3);
  v3 = *((_DWORD *)a1 + 5);
  v4 = *v1;
  v5 = v4 + 12 * v3;
  v6 = (gameswf::as_value *)(v4 + 12 * (v3 - 1));
  if ( *(_BYTE *)(v5 + 1) == 5 )
    v7 = *(_DWORD *)(v5 + 4);
  else
    v7 = 0;
  LODWORD(v8) = gameswf::as_value::to_number(v6);
  HIDWORD(v8) = v9;
  LODWORD(v25) = gameswf::as_value::to_number((gameswf::as_value *)(**((_DWORD **)a1 + 3)
                                                                  + 12 * (*((_DWORD *)a1 + 5) - 2)));
  HIDWORD(v25) = v10;
  PlayerChar = (Character *)NativeGetPlayerChar((int)v8, 0);
  v12 = PlayerChar;
  if ( PlayerChar )
  {
    v13 = (int)v25;
    NumQuests = Character::SG_GetNumQuests(PlayerChar, -1);
    v15 = (int)v25 <= 0;
    if ( (int)v25 >= 0 )
      v15 = NumQuests <= v13;
    if ( !v15 )
    {
      QuestByID = (Quest *)Character::SG_GetQuestByID(v12, v13, -1);
      v17 = *(void (__fastcall **)(int, _BYTE *, _BYTE *))(*(_DWORD *)v7 + 28);
      gameswf::tu_string::tu_string((gameswf::tu_string *)v40, "Title");
      Title = (const char *)Quest::GetTitle(QuestByID);
      v30[1] = 0;
      v30[0] = 0;
      gameswf::as_value::set_string((gameswf::as_value *)v30, Title);
      v17(v7, v40, v30);
      gameswf::as_value::drop_refs((gameswf::as_value *)v30);
      if ( v40[0] == -1 )
        gameswf::free_internal(v41);
      v19 = *(void (__fastcall **)(int, _BYTE *, _BYTE *))(*(_DWORD *)v7 + 28);
      gameswf::tu_string::tu_string((gameswf::tu_string *)v38, "PreDescription");
      PreDescription = (const char *)Quest::GetPreDescription(QuestByID);
      v29[1] = 0;
      v29[0] = 0;
      gameswf::as_value::set_string((gameswf::as_value *)v29, PreDescription);
      v19(v7, v38, v29);
      gameswf::as_value::drop_refs((gameswf::as_value *)v29);
      if ( v38[0] == -1 )
        gameswf::free_internal(v39);
      v21 = *(void (__fastcall **)(int, _BYTE *, _BYTE *))(*(_DWORD *)v7 + 28);
      gameswf::tu_string::tu_string((gameswf::tu_string *)v36, "ObjectiveDescription");
      Quest::GetObjectiveDescription((Quest *)&v31);
      v28[1] = 0;
      v28[0] = 0;
      gameswf::as_value::set_string((gameswf::as_value *)v28, v31._M_start_of_storage._M_data);
      v21(v7, v36, v28);
      gameswf::as_value::drop_refs((gameswf::as_value *)v28);
      std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v31);
      if ( v36[0] == -1 )
        gameswf::free_internal(v37);
      v22 = *(void (__fastcall **)(int, _BYTE *, _BYTE *))(*(_DWORD *)v7 + 28);
      gameswf::tu_string::tu_string((gameswf::tu_string *)v34, "PostDescription");
      PostDescription = (const char *)Quest::GetPostDescription(QuestByID);
      v27[1] = 0;
      v27[0] = 0;
      gameswf::as_value::set_string((gameswf::as_value *)v27, PostDescription);
      v22(v7, v34, v27);
      gameswf::as_value::drop_refs((gameswf::as_value *)v27);
      if ( v34[0] == -1 )
        gameswf::free_internal(v35);
      v24 = *(void (__fastcall **)(int, _BYTE *, _BYTE *))(*(_DWORD *)v7 + 28);
      gameswf::tu_string::tu_string((gameswf::tu_string *)v32, "IsPrimary");
      v26[0] = 0;
      v26[1] = 1;
      v26[4] = Quest::IsPrimary(QuestByID);
      v24(v7, v32, v26);
      gameswf::as_value::drop_refs((gameswf::as_value *)v26);
      if ( v32[0] == -1 )
        gameswf::free_internal(p);
    }
  }
}


// ===== 44c7a0 NativeGetCharMenuTutorialMessage(gameswf::fn_call const&) =====
void __fastcall NativeGetCharMenuTutorialMessage(const gameswf::fn_call *a1)
{
  int v2; // r3
  int v3; // r0
  int v4; // r10
  int v5; // r6
  bool v6; // r1
  void (__fastcall *v7)(int, _BYTE *, _BYTE *); // r7
  const char *String; // r0
  void (__fastcall *v9)(int, _BYTE *, _BYTE *); // r7
  void (__fastcall *v10)(int, _BYTE *, _BYTE *); // r7
  _BYTE v11[12]; // [sp+0h] [bp-60h] BYREF
  _BYTE v12[12]; // [sp+Ch] [bp-54h] BYREF
  _BYTE v13[12]; // [sp+18h] [bp-48h] BYREF
  int v14; // [sp+2Ch] [bp-34h] BYREF
  std::string v15; // [sp+30h] [bp-30h] BYREF
  std::string v16; // [sp+48h] [bp-18h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v17; // [sp+60h] [bp+0h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v18; // [sp+78h] [bp+18h] BYREF
  _BYTE v19[8]; // [sp+90h] [bp+30h] BYREF
  void *p; // [sp+9Ch] [bp+3Ch]
  _BYTE v21[8]; // [sp+A4h] [bp+44h] BYREF
  void *v22; // [sp+B0h] [bp+50h]
  _BYTE v23[8]; // [sp+B8h] [bp+58h] BYREF
  void *v24; // [sp+C4h] [bp+64h]

  v2 = **((_DWORD **)a1 + 3) + 12 * *((_DWORD *)a1 + 5);
  if ( *(_BYTE *)(v2 + 1) == 5 )
    v3 = *(_DWORD *)(v2 + 4);
  else
    v3 = 0;
  v4 = gameswf::cast_to<gameswf::as_object>(v3);
  std::string::string((std::string *)&v18, "");
  std::string::string((std::string *)&v17, "");
  CharMenuTutorialMsg::CharMenuTutorialMsg(
    (CharMenuTutorialMsg *)&v14,
    -1,
    (const std::string *)&v18,
    (const std::string *)&v17);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v17);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v18);
  v5 = dword_99FBB8;
  if ( dword_99FBC8 == dword_99FBB8 )
  {
    v6 = 0;
  }
  else
  {
    v14 = *(_DWORD *)dword_99FBB8;
    if ( &v15 != (std::string *)(dword_99FBB8 + 4) )
      std::string::_M_assign(&v15, *(const char **)(dword_99FBB8 + 24), *(const char **)(dword_99FBB8 + 20));
    if ( &v16 != (std::string *)(v5 + 28) )
      std::string::_M_assign(&v16, *(const char **)(v5 + 48), *(const char **)(v5 + 44));
    v7 = *(void (__fastcall **)(int, _BYTE *, _BYTE *))(*(_DWORD *)v4 + 28);
    gameswf::tu_string::tu_string((gameswf::tu_string *)v23, "TutorialMessage");
    String = (const char *)StringManager::getString((StringManager *)dword_99F760, v14);
    v13[1] = 0;
    v13[0] = 0;
    gameswf::as_value::set_string((gameswf::as_value *)v13, String);
    v7(v4, v23, v13);
    gameswf::as_value::drop_refs((gameswf::as_value *)v13);
    if ( v23[0] == -1 )
      gameswf::free_internal(v24);
    v9 = *(void (__fastcall **)(int, _BYTE *, _BYTE *))(*(_DWORD *)v4 + 28);
    gameswf::tu_string::tu_string((gameswf::tu_string *)v21, "TutorialFrame");
    v12[1] = 0;
    v12[0] = 0;
    gameswf::as_value::set_string((gameswf::as_value *)v12, v15._M_start_of_storage._M_data);
    v9(v4, v21, v12);
    gameswf::as_value::drop_refs((gameswf::as_value *)v12);
    if ( v21[0] == -1 )
      gameswf::free_internal(v22);
    v10 = *(void (__fastcall **)(int, _BYTE *, _BYTE *))(*(_DWORD *)v4 + 28);
    gameswf::tu_string::tu_string((gameswf::tu_string *)v19, "TutorialMenu");
    v11[1] = 0;
    v11[0] = 0;
    gameswf::as_value::set_string((gameswf::as_value *)v11, v16._M_start_of_storage._M_data);
    v10(v4, v19, v11);
    gameswf::as_value::drop_refs((gameswf::as_value *)v11);
    if ( v19[0] == -1 )
      gameswf::free_internal(p);
    v6 = 1;
  }
  gameswf::as_value::set_bool(*(gameswf::as_value **)a1, v6);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v16);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v15);
}


// ===== 44ca5c NativeInvGetItemDetails(gameswf::fn_call const&) =====
int __fastcall NativeInvGetItemDetails(int result)
{
  _DWORD *v1; // r7
  int v2; // r8
  int v3; // r3
  unsigned int v4; // lr
  gameswf::as_object *v5; // r4
  int v6; // r1
  int v7; // r3
  int v8; // r0
  int v9; // r5
  gameswf::as_value *v10; // r0
  double v11; // r0
  int v12; // r5
  Character *v13; // r10
  int v14; // r8
  int v15; // r5
  float v16; // r9
  float v17; // r7
  unsigned int v18; // r1
  int v19; // r5
  int v20; // r11
  int v21; // r0
  int v22; // r3
  int v23; // r9
  int v24; // r1
  void (__fastcall *v25)(gameswf::as_object *, _BYTE *, _BYTE *); // r11
  int v26; // r0
  void (__fastcall *v27)(gameswf::as_object *, _BYTE *, _BYTE *); // r10
  void (__fastcall *v28)(gameswf::as_object *, _BYTE *, _BYTE *); // r8
  void (__fastcall *v29)(gameswf::as_object *, _BYTE *, _BYTE *); // r8
  void (__fastcall *v30)(gameswf::as_object *, _BYTE *, _BYTE *); // r8
  void (__fastcall *v31)(gameswf::as_object *, _BYTE *, _BYTE *); // r8
  void (__fastcall *v32)(gameswf::as_object *, _BYTE *, _BYTE *); // r8
  void (__fastcall *v33)(gameswf::as_object *, _BYTE *, _BYTE *); // r8
  void (__fastcall *v34)(gameswf::as_object *, _BYTE *, _BYTE *); // r8
  void (__fastcall *v35)(gameswf::as_object *, _BYTE *, _BYTE *); // r8
  const char *v36; // r1
  void (__fastcall *v37)(gameswf::as_object *, _BYTE *, _BYTE *); // r8
  const char *v38; // r1
  void (__fastcall *v39)(gameswf::as_object *, _BYTE *, _BYTE *); // r8
  void (__fastcall *v40)(gameswf::as_object *, _BYTE *, _BYTE *); // r8
  const char *IconName; // r0
  void (__fastcall *v42)(gameswf::as_object *, _BYTE *, _BYTE *); // r8
  signed int i; // r7
  void (__fastcall *v44)(gameswf::as_object *, _BYTE *, _BYTE *); // r6
  const char *PowerDesc; // r0
  int v46; // r2
  int v47; // r3
  char *v48; // r9
  double v49; // r0
  Character *v50; // r0
  int v51; // [sp+8h] [bp-2A4h]
  float v52; // [sp+8h] [bp-2A4h]
  char *format; // [sp+Ch] [bp-2A0h]
  int v54; // [sp+10h] [bp-29Ch]
  double v55; // [sp+18h] [bp-294h]
  int v56; // [sp+30h] [bp-27Ch]
  int v57; // [sp+34h] [bp-278h]
  int v58; // [sp+34h] [bp-278h]
  _BYTE v59[12]; // [sp+38h] [bp-274h] BYREF
  _BYTE v60[12]; // [sp+44h] [bp-268h] BYREF
  _BYTE v61[12]; // [sp+50h] [bp-25Ch] BYREF
  _BYTE v62[4]; // [sp+5Ch] [bp-250h] BYREF
  double v63; // [sp+60h] [bp-24Ch]
  _BYTE v64[12]; // [sp+68h] [bp-244h] BYREF
  _BYTE v65[12]; // [sp+74h] [bp-238h] BYREF
  _BYTE v66[12]; // [sp+80h] [bp-22Ch] BYREF
  _BYTE v67[12]; // [sp+8Ch] [bp-220h] BYREF
  _BYTE v68[12]; // [sp+98h] [bp-214h] BYREF
  _BYTE v69[12]; // [sp+A4h] [bp-208h] BYREF
  _BYTE v70[12]; // [sp+B0h] [bp-1FCh] BYREF
  _BYTE v71[4]; // [sp+BCh] [bp-1F0h] BYREF
  double v72; // [sp+C0h] [bp-1ECh]
  _BYTE v73[4]; // [sp+C8h] [bp-1E4h] BYREF
  double v74; // [sp+CCh] [bp-1E0h]
  _BYTE v75[4]; // [sp+D4h] [bp-1D8h] BYREF
  double v76; // [sp+D8h] [bp-1D4h]
  _BYTE v77[4]; // [sp+E0h] [bp-1CCh] BYREF
  double v78; // [sp+E4h] [bp-1C8h]
  unsigned __int64 v79; // [sp+ECh] [bp-1C0h] BYREF
  double NumPowers; // [sp+F8h] [bp-1B4h]
  std::priv::_String_base<char,std::allocator<char> > v81; // [sp+104h] [bp-1A8h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v82; // [sp+11Ch] [bp-190h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v83; // [sp+134h] [bp-178h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v84; // [sp+14Ch] [bp-160h] BYREF
  _BYTE v85[8]; // [sp+164h] [bp-148h] BYREF
  void *p; // [sp+170h] [bp-13Ch]
  char s[20]; // [sp+178h] [bp-134h] BYREF
  _BYTE v88[8]; // [sp+18Ch] [bp-120h] BYREF
  void *v89; // [sp+198h] [bp-114h]
  _BYTE v90[8]; // [sp+1A0h] [bp-10Ch] BYREF
  void *v91; // [sp+1ACh] [bp-100h]
  _BYTE v92[8]; // [sp+1B4h] [bp-F8h] BYREF
  void *v93; // [sp+1C0h] [bp-ECh]
  _BYTE v94[8]; // [sp+1C8h] [bp-E4h] BYREF
  void *v95; // [sp+1D4h] [bp-D8h]
  _BYTE v96[8]; // [sp+1DCh] [bp-D0h] BYREF
  void *v97; // [sp+1E8h] [bp-C4h]
  _BYTE v98[8]; // [sp+1F0h] [bp-BCh] BYREF
  void *v99; // [sp+1FCh] [bp-B0h]
  _BYTE v100[8]; // [sp+204h] [bp-A8h] BYREF
  void *v101; // [sp+210h] [bp-9Ch]
  _BYTE v102[8]; // [sp+218h] [bp-94h] BYREF
  void *v103; // [sp+224h] [bp-88h]
  _BYTE v104[8]; // [sp+22Ch] [bp-80h] BYREF
  void *v105; // [sp+238h] [bp-74h]
  _BYTE v106[8]; // [sp+240h] [bp-6Ch] BYREF
  void *v107; // [sp+24Ch] [bp-60h]
  _BYTE v108[8]; // [sp+254h] [bp-58h] BYREF
  void *v109; // [sp+260h] [bp-4Ch]
  _BYTE v110[8]; // [sp+268h] [bp-44h] BYREF
  void *v111; // [sp+274h] [bp-38h]
  _BYTE v112[8]; // [sp+27Ch] [bp-30h] BYREF
  void *v113; // [sp+288h] [bp-24h]
  _BYTE v114[8]; // [sp+290h] [bp-1Ch] BYREF
  void *v115; // [sp+29Ch] [bp-10h]

  v54 = result;
  v1 = *(_DWORD **)(result + 12);
  v2 = *(_DWORD *)(result + 20);
  v3 = *v1 + 12 * v2;
  if ( *(_BYTE *)(v3 + 1) == 2 )
  {
    v4 = *(_DWORD *)(v3 + 4);
    HIDWORD(NumPowers) = *(_DWORD *)(v3 + 8);
    LODWORD(NumPowers) = v4;
    v79 = __PAIR64__(HIDWORD(NumPowers), v4);
    result = 0;
    v5 = nullptr;
    if ( *(_BYTE *)(*v1 + 12 * (v2 - 1) + 1) == 5 )
    {
      result = gameswf::as_value::is_number((gameswf::as_value *)(*v1 + 12 * (v2 - 2)));
      if ( result )
      {
        LODWORD(v55) = gameswf::as_value::to_number((gameswf::as_value *)(**(_DWORD **)(v54 + 12)
                                                                        + 12 * *(_DWORD *)(v54 + 20)));
        HIDWORD(v55) = v6;
        v7 = *(_DWORD *)(v54 + 20);
        v8 = **(_DWORD **)(v54 + 12);
        v9 = v8 + 12 * (v7 - 1);
        v10 = (gameswf::as_value *)(v8 + 12 * (v7 - 2));
        if ( *(_BYTE *)(v9 + 1) == 5 )
          v5 = *(gameswf::as_object **)(v9 + 4);
        LODWORD(v11) = gameswf::as_value::to_number(v10);
        v12 = (int)v11;
        if ( *(_DWORD *)(v54 + 16) == 6
          && (v46 = *(_DWORD *)(v54 + 20), v47 = **(_DWORD **)(v54 + 12), *(_BYTE *)(v47 + 12 * (v46 - 3) + 1) == 1)
          && (unsigned __int8)(*(_BYTE *)(v47 + 12 * (v46 - 4) + 1) - 3) <= 1u
          && gameswf::as_value::is_number((gameswf::as_value *)(v47 + 12 * (v46 - 5))) )
        {
          v14 = gameswf::as_value::to_bool((gameswf::as_value *)(**(_DWORD **)(v54 + 12)
                                                               + 12 * (*(_DWORD *)(v54 + 20) - 3)));
          v48 = (char *)gameswf::as_value::to_string((gameswf::as_value *)(**(_DWORD **)(v54 + 12)
                                                                         + 12 * (*(_DWORD *)(v54 + 20) - 4)));
          LODWORD(v49) = gameswf::as_value::to_number((gameswf::as_value *)(**(_DWORD **)(v54 + 12)
                                                                          + 12 * (*(_DWORD *)(v54 + 20) - 5)));
          ObjectManager::GetObjectByName((ObjectManager *)&v79, (const char *)dword_99F764, v48, (int)v49, nullptr);
          v50 = (Character *)ObjectHandle::operator Character *(&v79);
          v13 = v50;
          if ( !v50 || !Character::IsMerchant(v50) )
            v13 = nullptr;
        }
        else
        {
          v13 = nullptr;
          v14 = 0;
        }
        result = NativeGetPlayerChar(v12, 0);
        format = (char *)result;
        if ( result )
        {
          if ( v13 && Character::IsMerchant(v13) )
          {
            v15 = Arrays::MerchantTable::members + 20 * Character::GetLoot(v13);
            v16 = (float)*(int *)(v15 + 4) / 100.0;
            v17 = (float)*(int *)(v15 + 8) / 100.0;
            v18 = (int)v55;
            if ( !v14 )
              goto LABEL_60;
          }
          else
          {
            v17 = 0.0;
            v16 = 0.0;
            v18 = (int)v55;
            if ( !v14 )
              goto LABEL_60;
          }
          if ( v13 )
          {
            result = ItemInventory::GetItem((Character *)((char *)v13 + 892), v18);
            v19 = result;
            goto LABEL_15;
          }
LABEL_60:
          result = ItemInventory::GetItem((ItemInventory *)(format + 892), v18);
          v19 = result;
LABEL_15:
          if ( v19 )
          {
            v51 = *(_DWORD *)(v19 + 84) << 8;
            v20 = CharProperties::_GetProperty((int)(format + 1376), (int)(format + 4084), 197) + 256;
            v57 = (PyDataConstants::getConstant(
                     (PyDataConstants *)dword_99F758,
                     "CharacterDesign",
                     "TransmuteMultiplier")
                 * ((v51 * v20) >> 8)) >> 16;
            v52 = (float)*(int *)(v19 + 84);
            v21 = (int)(float)(v52 * v16);
            v22 = (int)(float)(v17 * v52);
            if ( *(_BYTE *)(v19 + 105) && v14 )
            {
              v23 = (int)(float)(v52 * v16);
            }
            else
            {
              v23 = (int)(float)(v17 * v52);
              v22 = v21;
            }
            if ( v22 < 1 )
              v22 = 1;
            v56 = v22;
            v84._M_finish = (char *)&v84;
            v84._M_start_of_storage._M_data = (char *)&v84;
            std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block((int)&v84, 0x10u);
            *v84._M_finish = 0;
            if ( v23 < 1 )
              v23 = 1;
            v83._M_finish = (char *)&v83;
            v83._M_start_of_storage._M_data = (char *)&v83;
            std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block((int)&v83, 0x10u);
            *v83._M_finish = 0;
            v82._M_finish = (char *)&v82;
            v82._M_start_of_storage._M_data = (char *)&v82;
            std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block((int)&v82, 0x10u);
            *v82._M_finish = 0;
            v81._M_finish = (char *)&v81;
            v81._M_start_of_storage._M_data = (char *)&v81;
            std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block((int)&v81, 0x10u);
            *v81._M_finish = 0;
            StringManager::parse((StringManager *)dword_99F760, (std::string *)&v84, "^d", *(_DWORD *)(v19 + 84));
            StringManager::parse((StringManager *)dword_99F760, (std::string *)&v83, "^d", v23);
            v24 = v57;
            if ( v57 < 1 )
              v24 = 1;
            v58 = v24;
            StringManager::parse((StringManager *)dword_99F760, (std::string *)&v82, "^d", v56);
            StringManager::parse((StringManager *)dword_99F760, (std::string *)&v81, "^d", v58);
            v25 = *(void (__fastcall **)(gameswf::as_object *, _BYTE *, _BYTE *))(*(_DWORD *)v5 + 28);
            gameswf::tu_string::tu_string((gameswf::tu_string *)v114, "ItemValue");
            v26 = *(_DWORD *)(v19 + 84);
            v77[1] = 2;
            v77[0] = 0;
            NumPowers = (double)v26;
            v78 = (double)v26;
            v25(v5, v114, v77);
            gameswf::as_value::drop_refs((gameswf::as_value *)v77);
            if ( v114[0] == -1 )
              gameswf::free_internal(v115);
            v27 = *(void (__fastcall **)(gameswf::as_object *, _BYTE *, _BYTE *))(*(_DWORD *)v5 + 28);
            gameswf::tu_string::tu_string((gameswf::tu_string *)v112, "ItemBuyValue");
            v75[0] = 0;
            v75[1] = 2;
            NumPowers = (double)v23;
            v76 = (double)v23;
            v27(v5, v112, v75);
            gameswf::as_value::drop_refs((gameswf::as_value *)v75);
            if ( v112[0] == -1 )
              gameswf::free_internal(v113);
            v28 = *(void (__fastcall **)(gameswf::as_object *, _BYTE *, _BYTE *))(*(_DWORD *)v5 + 28);
            gameswf::tu_string::tu_string((gameswf::tu_string *)v110, "ItemSellValue");
            v73[0] = 0;
            v73[1] = 2;
            NumPowers = (double)v56;
            v74 = (double)v56;
            v28(v5, v110, v73);
            gameswf::as_value::drop_refs((gameswf::as_value *)v73);
            if ( v110[0] == -1 )
              gameswf::free_internal(v111);
            v29 = *(void (__fastcall **)(gameswf::as_object *, _BYTE *, _BYTE *))(*(_DWORD *)v5 + 28);
            gameswf::tu_string::tu_string((gameswf::tu_string *)v108, "ItemTransmuteValue");
            v71[0] = 0;
            v71[1] = 2;
            NumPowers = (double)v58;
            v72 = (double)v58;
            v29(v5, v108, v71);
            gameswf::as_value::drop_refs((gameswf::as_value *)v71);
            if ( v108[0] == -1 )
              gameswf::free_internal(v109);
            v30 = *(void (__fastcall **)(gameswf::as_object *, _BYTE *, _BYTE *))(*(_DWORD *)v5 + 28);
            gameswf::tu_string::tu_string((gameswf::tu_string *)v106, "ItemValueString");
            v70[1] = 0;
            v70[0] = 0;
            gameswf::as_value::set_string((gameswf::as_value *)v70, v84._M_start_of_storage._M_data);
            v30(v5, v106, v70);
            gameswf::as_value::drop_refs((gameswf::as_value *)v70);
            if ( v106[0] == -1 )
              gameswf::free_internal(v107);
            v31 = *(void (__fastcall **)(gameswf::as_object *, _BYTE *, _BYTE *))(*(_DWORD *)v5 + 28);
            gameswf::tu_string::tu_string((gameswf::tu_string *)v104, "ItemBuyValueString");
            v69[1] = 0;
            v69[0] = 0;
            gameswf::as_value::set_string((gameswf::as_value *)v69, v83._M_start_of_storage._M_data);
            v31(v5, v104, v69);
            gameswf::as_value::drop_refs((gameswf::as_value *)v69);
            if ( v104[0] == -1 )
              gameswf::free_internal(v105);
            v32 = *(void (__fastcall **)(gameswf::as_object *, _BYTE *, _BYTE *))(*(_DWORD *)v5 + 28);
            gameswf::tu_string::tu_string((gameswf::tu_string *)v102, "ItemSellValueString");
            v68[1] = 0;
            v68[0] = 0;
            gameswf::as_value::set_string((gameswf::as_value *)v68, v82._M_start_of_storage._M_data);
            v32(v5, v102, v68);
            gameswf::as_value::drop_refs((gameswf::as_value *)v68);
            if ( v102[0] == -1 )
              gameswf::free_internal(v103);
            v33 = *(void (__fastcall **)(gameswf::as_object *, _BYTE *, _BYTE *))(*(_DWORD *)v5 + 28);
            gameswf::tu_string::tu_string((gameswf::tu_string *)v100, "ItemTransmuteValueString");
            v67[1] = 0;
            v67[0] = 0;
            gameswf::as_value::set_string((gameswf::as_value *)v67, v81._M_start_of_storage._M_data);
            v33(v5, v100, v67);
            gameswf::as_value::drop_refs((gameswf::as_value *)v67);
            if ( v100[0] == -1 )
              gameswf::free_internal(v101);
            v34 = *(void (__fastcall **)(gameswf::as_object *, _BYTE *, _BYTE *))(*(_DWORD *)v5 + 28);
            gameswf::tu_string::tu_string((gameswf::tu_string *)v98, "ItemEquippable");
            v66[0] = 0;
            v66[1] = 1;
            v66[4] = ItemInstance::IsEquippableBy((ItemInstance *)v19, (Character *)format);
            v34(v5, v98, v66);
            gameswf::as_value::drop_refs((gameswf::as_value *)v66);
            if ( v98[0] == -1 )
              gameswf::free_internal(v99);
            v35 = *(void (__fastcall **)(gameswf::as_object *, _BYTE *, _BYTE *))(*(_DWORD *)v5 + 28);
            gameswf::tu_string::tu_string((gameswf::tu_string *)v96, "ItemReqsDesc");
            v36 = *(const char **)(v19 + 76);
            v65[1] = 0;
            v65[0] = 0;
            gameswf::as_value::set_string((gameswf::as_value *)v65, v36);
            v35(v5, v96, v65);
            gameswf::as_value::drop_refs((gameswf::as_value *)v65);
            if ( v96[0] == -1 )
              gameswf::free_internal(v97);
            v37 = *(void (__fastcall **)(gameswf::as_object *, _BYTE *, _BYTE *))(*(_DWORD *)v5 + 28);
            gameswf::tu_string::tu_string((gameswf::tu_string *)v94, "ItemStatsDesc");
            v38 = *(const char **)(v19 + 52);
            v64[1] = 0;
            v64[0] = 0;
            gameswf::as_value::set_string((gameswf::as_value *)v64, v38);
            v37(v5, v94, v64);
            gameswf::as_value::drop_refs((gameswf::as_value *)v64);
            if ( v94[0] == -1 )
              gameswf::free_internal(v95);
            v39 = *(void (__fastcall **)(gameswf::as_object *, _BYTE *, _BYTE *))(*(_DWORD *)v5 + 28);
            gameswf::tu_string::tu_string((gameswf::tu_string *)v92, "ItemMagics");
            v62[0] = 0;
            v62[1] = 2;
            NumPowers = (double)(int)ItemInstance::GetNumPowers((ItemInstance *)v19);
            v63 = NumPowers;
            v39(v5, v92, v62);
            gameswf::as_value::drop_refs((gameswf::as_value *)v62);
            if ( v92[0] == -1 )
              gameswf::free_internal(v93);
            v40 = *(void (__fastcall **)(gameswf::as_object *, _BYTE *, _BYTE *))(*(_DWORD *)v5 + 28);
            gameswf::tu_string::tu_string((gameswf::tu_string *)v90, "ItemIcon");
            IconName = (const char *)ItemInstance::GetIconName((ItemInstance *)v19);
            v61[1] = 0;
            v61[0] = 0;
            gameswf::as_value::set_string((gameswf::as_value *)v61, IconName);
            v40(v5, v90, v61);
            gameswf::as_value::drop_refs((gameswf::as_value *)v61);
            if ( v90[0] == 255 )
              gameswf::free_internal(v91);
            v42 = *(void (__fastcall **)(gameswf::as_object *, _BYTE *, _BYTE *))(*(_DWORD *)v5 + 28);
            gameswf::tu_string::tu_string((gameswf::tu_string *)v88, "IsStackable");
            v60[0] = 0;
            v60[1] = 1;
            v60[4] = ItemInstance::IsStackable((ItemInstance *)v19);
            v42(v5, v88, v60);
            gameswf::as_value::drop_refs((gameswf::as_value *)v60);
            if ( v88[0] == 255 )
              gameswf::free_internal(v89);
            for ( i = 0; i < ItemInstance::GetNumPowers((ItemInstance *)v19); ++i )
            {
              sprintf(s, "ItemPowers%dDesc", i);
              v44 = *(void (__fastcall **)(gameswf::as_object *, _BYTE *, _BYTE *))(*(_DWORD *)v5 + 28);
              gameswf::tu_string::tu_string((gameswf::tu_string *)v85, s);
              PowerDesc = (const char *)ItemInstance::GetPowerDesc((ItemInstance *)v19, i);
              v59[0] = 0;
              v59[1] = 0;
              gameswf::as_value::set_string((gameswf::as_value *)v59, PowerDesc);
              v44(v5, v85, v59);
              gameswf::as_value::drop_refs((gameswf::as_value *)v59);
              if ( v85[0] == 255 )
                gameswf::free_internal(p);
            }
            std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v81);
            std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v82);
            std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v83);
            std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v84);
            return gameswf::as_value::set_as_object(*(gameswf::as_value **)v54, v5);
          }
        }
      }
    }
  }
  return result;
}


// ===== 44d770 NativeInvitePlayer(gameswf::fn_call const&) =====
void __fastcall NativeInvitePlayer(const gameswf::fn_call *a1)
{
  CMatching *Instance; // r0
  CMatchingGLLive *v3; // r0
  CMatching *v4; // r0
  int v5; // r7
  CMatchingGLLive *v6; // r0
  CMatching *GLFriendsCount; // r0
  void (__fastcall *v8)(gameswf::as_object *, _BYTE *, _BYTE *); // r9
  void (__fastcall *v9)(gameswf::as_object *, _BYTE *, _BYTE *); // r9
  CMatching *v10; // r0
  int v11; // r0
  CMatchingGLLive *v12; // r0
  const char *GLFriendsName; // r0
  char *v14; // r6
  CMatchingGLLive *v15; // r0
  const char *GLFriendsNumber; // r0
  char *v17; // r8
  CMatchingGLLive *v18; // r0
  int v19; // r3
  int v20; // r0
  int v21; // r4
  gameswf::player *v22; // r10
  int v23; // r3
  gameswf::player *v24; // r9
  gameswf::as_object *v25; // r4
  void (__fastcall *v26)(gameswf::as_object *, _BYTE *, _BYTE *); // r9
  int *i; // r8
  int v28; // r3
  int v29; // r0
  gameswf::as_array *v30; // r10
  int v31; // r4
  gameswf::player *v32; // r6
  int v33; // r3
  gameswf::player *v34; // r7
  gameswf::as_object *v35; // r4
  void (__fastcall *v36)(gameswf::as_object *, _BYTE *, _BYTE *); // r7
  const char *v37; // r1
  void (__fastcall *v38)(gameswf::as_object *, _BYTE *, _BYTE *); // r7
  const char *v39; // r1
  void (__fastcall *v40)(gameswf::as_object *, _BYTE *, _BYTE *); // r7
  char v41; // r3
  void (__fastcall *v42)(gameswf::as_object *, _BYTE *, _BYTE *); // r7
  char v43; // r3
  _DWORD *v44; // r0
  _DWORD *v45; // r5
  CMatchingGLLive *v46; // r0
  void (__fastcall *v47)(gameswf::as_object *, _BYTE *, _BYTE *); // [sp+4h] [bp-158h]
  gameswf::tu_string *v48; // [sp+8h] [bp-154h]
  gameswf::as_array *v49; // [sp+10h] [bp-14Ch]
  char *v50; // [sp+14h] [bp-148h]
  _BYTE v51[4]; // [sp+30h] [bp-12Ch] BYREF
  gameswf::as_object *v52; // [sp+34h] [bp-128h]
  _BYTE v53[12]; // [sp+3Ch] [bp-120h] BYREF
  _BYTE v54[12]; // [sp+48h] [bp-114h] BYREF
  _BYTE v55[12]; // [sp+54h] [bp-108h] BYREF
  _BYTE v56[12]; // [sp+60h] [bp-FCh] BYREF
  _DWORD v57[2]; // [sp+6Ch] [bp-F0h] BYREF
  int v58; // [sp+74h] [bp-E8h]
  _BYTE v59[4]; // [sp+78h] [bp-E4h] BYREF
  gameswf::as_object *v60; // [sp+7Ch] [bp-E0h]
  _BYTE v61[12]; // [sp+84h] [bp-D8h] BYREF
  _BYTE v62[12]; // [sp+90h] [bp-CCh] BYREF
  _BYTE v63[12]; // [sp+9Ch] [bp-C0h] BYREF
  _BYTE v64[12]; // [sp+A8h] [bp-B4h] BYREF
  _BYTE v65[8]; // [sp+B4h] [bp-A8h] BYREF
  void *v66; // [sp+C0h] [bp-9Ch]
  _BYTE v67[8]; // [sp+C8h] [bp-94h] BYREF
  void *v68; // [sp+D4h] [bp-88h]
  _BYTE v69[8]; // [sp+DCh] [bp-80h] BYREF
  void *v70; // [sp+E8h] [bp-74h]
  _BYTE v71[8]; // [sp+F0h] [bp-6Ch] BYREF
  void *p; // [sp+FCh] [bp-60h]
  _BYTE v73[8]; // [sp+104h] [bp-58h] BYREF
  void *v74; // [sp+110h] [bp-4Ch]
  _BYTE v75[8]; // [sp+118h] [bp-44h] BYREF
  void *v76; // [sp+124h] [bp-38h]
  _BYTE v77[8]; // [sp+12Ch] [bp-30h] BYREF
  void *v78; // [sp+138h] [bp-24h]
  _BYTE v79[8]; // [sp+140h] [bp-1Ch] BYREF
  void *v80; // [sp+14Ch] [bp-10h]

  if ( *(_BYTE *)(GetOnline() + 5) )
  {
    Instance = (CMatching *)OnlineSingleton<OnlineGameState>::GetInstance();
    if ( *((_DWORD *)Instance + 13) == 3 )
    {
      v3 = (CMatchingGLLive *)CMatching::Get(Instance);
      v4 = (CMatching *)CMatchingGLLive::GLFriendsListLoaded(v3);
      v5 = (int)v4;
      if ( v4 )
      {
        CMatching::Get(v4);
        CMatchingGLLive::GetGLFriendsList((CMatchingGLLive *)v57);
        for ( i = (int *)v57[0]; i != v57; i = (int *)*i )
        {
          if ( *((int *)a1 + 4) > 0 )
          {
            v28 = **((_DWORD **)a1 + 3) + 12 * *((_DWORD *)a1 + 5);
            v29 = *(_BYTE *)(v28 + 1) == 5 ? *(_DWORD *)(v28 + 4) : 0;
            v30 = (gameswf::as_array *)gameswf::cast_to<gameswf::as_array>(v29);
            if ( v30 )
            {
              v31 = *((_DWORD *)a1 + 3);
              v32 = *(gameswf::player **)(v31 + 104);
              if ( v32 )
              {
                v33 = *(_DWORD *)(v31 + 100);
                v34 = (gameswf::player *)*(unsigned __int8 *)(v33 + 4);
                if ( !*(_BYTE *)(v33 + 4) )
                {
                  gameswf::smart_ptr_proxy::operator=((_DWORD **)(v31 + 100));
                  v32 = v34;
                  *(_DWORD *)(v31 + 104) = v34;
                }
              }
              v35 = (gameswf::as_object *)operator new(56, 0);
              gameswf::as_object::as_object(v35, v32);
              v36 = *(void (__fastcall **)(gameswf::as_object *, _BYTE *, _BYTE *))(*(_DWORD *)v35 + 28);
              gameswf::tu_string::tu_string((gameswf::tu_string *)v79, "name");
              v37 = (const char *)i[3];
              v64[1] = 0;
              v64[0] = 0;
              gameswf::as_value::set_string((gameswf::as_value *)v64, v37);
              v36(v35, v79, v64);
              gameswf::as_value::drop_refs((gameswf::as_value *)v64);
              if ( v79[0] == -1 )
                gameswf::free_internal(v80);
              v38 = *(void (__fastcall **)(gameswf::as_object *, _BYTE *, _BYTE *))(*(_DWORD *)v35 + 28);
              gameswf::tu_string::tu_string((gameswf::tu_string *)v77, "id");
              v39 = (const char *)i[2];
              v63[1] = 0;
              v63[0] = 0;
              gameswf::as_value::set_string((gameswf::as_value *)v63, v39);
              v38(v35, v77, v63);
              gameswf::as_value::drop_refs((gameswf::as_value *)v63);
              if ( v77[0] == -1 )
                gameswf::free_internal(v78);
              v40 = *(void (__fastcall **)(gameswf::as_object *, _BYTE *, _BYTE *))(*(_DWORD *)v35 + 28);
              gameswf::tu_string::tu_string((gameswf::tu_string *)v75, "sent");
              v41 = *((_BYTE *)i + 17);
              v62[0] = 0;
              v62[4] = v41;
              v62[1] = 1;
              v40(v35, v75, v62);
              gameswf::as_value::drop_refs((gameswf::as_value *)v62);
              if ( v75[0] == -1 )
                gameswf::free_internal(v76);
              v42 = *(void (__fastcall **)(gameswf::as_object *, _BYTE *, _BYTE *))(*(_DWORD *)v35 + 28);
              gameswf::tu_string::tu_string((gameswf::tu_string *)v73, "online");
              v43 = *((_BYTE *)i + 16);
              v61[0] = 0;
              v61[4] = v43;
              v61[1] = 1;
              v42(v35, v73, v61);
              gameswf::as_value::drop_refs((gameswf::as_value *)v61);
              if ( v73[0] == -1 )
                gameswf::free_internal(v74);
              v59[0] = 0;
              v59[1] = 5;
              v60 = v35;
              gameswf::ref_counted::add_ref(v35);
              gameswf::as_array::push(v30, (const gameswf::as_value *)v59);
              gameswf::as_value::drop_refs((gameswf::as_value *)v59);
            }
          }
        }
        v44 = (_DWORD *)v57[0];
        if ( (_DWORD *)v57[0] != v57 )
        {
          while ( 1 )
          {
            v45 = (_DWORD *)*v44;
            __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v44, 0x14u);
            if ( v45 == v57 )
              break;
            v44 = v45;
          }
        }
      }
      else
      {
        v6 = (CMatchingGLLive *)CMatching::Get(nullptr);
        GLFriendsCount = (CMatching *)CMatchingGLLive::GetGLFriendsCount(v6);
        v50 = (char *)GLFriendsCount;
        if ( (int)GLFriendsCount > 0 )
        {
          do
          {
            v12 = (CMatchingGLLive *)CMatching::Get(GLFriendsCount);
            GLFriendsName = (const char *)CMatchingGLLive::GetGLFriendsName(v12, v5);
            v14 = strdup(GLFriendsName);
            v15 = (CMatchingGLLive *)CMatching::Get((CMatching *)v14);
            GLFriendsNumber = (const char *)CMatchingGLLive::GetGLFriendsNumber(v15, v5);
            v17 = strdup(GLFriendsNumber);
            v18 = (CMatchingGLLive *)CMatching::Get((CMatching *)v17);
            GLFriendsCount = (CMatching *)CMatchingGLLive::GetGLFriendState(v18, v5);
            v48 = GLFriendsCount;
            if ( *((int *)a1 + 4) > 0 )
            {
              v19 = **((_DWORD **)a1 + 3) + 12 * *((_DWORD *)a1 + 5);
              v20 = *(_BYTE *)(v19 + 1) == 5 ? *(_DWORD *)(v19 + 4) : 0;
              GLFriendsCount = (CMatching *)gameswf::cast_to<gameswf::as_array>(v20);
              v49 = GLFriendsCount;
              if ( GLFriendsCount )
              {
                v21 = *((_DWORD *)a1 + 3);
                v22 = *(gameswf::player **)(v21 + 104);
                if ( v22 )
                {
                  v23 = *(_DWORD *)(v21 + 100);
                  v24 = (gameswf::player *)*(unsigned __int8 *)(v23 + 4);
                  if ( !*(_BYTE *)(v23 + 4) )
                  {
                    gameswf::smart_ptr_proxy::operator=((_DWORD **)(v21 + 100));
                    v22 = v24;
                    *(_DWORD *)(v21 + 104) = v24;
                  }
                }
                v25 = (gameswf::as_object *)operator new(56, 0);
                gameswf::as_object::as_object(v25, v22);
                v26 = *(void (__fastcall **)(gameswf::as_object *, _BYTE *, _BYTE *))(*(_DWORD *)v25 + 28);
                gameswf::tu_string::tu_string((gameswf::tu_string *)v71, "name");
                v56[1] = 0;
                v56[0] = 0;
                gameswf::as_value::set_string((gameswf::as_value *)v56, v14);
                v26(v25, v71, v56);
                gameswf::as_value::drop_refs((gameswf::as_value *)v56);
                if ( v71[0] == -1 )
                  gameswf::free_internal(p);
                v8 = *(void (__fastcall **)(gameswf::as_object *, _BYTE *, _BYTE *))(*(_DWORD *)v25 + 28);
                gameswf::tu_string::tu_string((gameswf::tu_string *)v69, "id");
                v55[1] = 0;
                v55[0] = 0;
                gameswf::as_value::set_string((gameswf::as_value *)v55, v17);
                v8(v25, v69, v55);
                gameswf::as_value::drop_refs((gameswf::as_value *)v55);
                if ( v69[0] == -1 )
                  gameswf::free_internal(v70);
                v9 = *(void (__fastcall **)(gameswf::as_object *, _BYTE *, _BYTE *))(*(_DWORD *)v25 + 28);
                gameswf::tu_string::tu_string((gameswf::tu_string *)v67, "sent");
                v54[4] = 0;
                v54[0] = 0;
                v54[1] = 1;
                v9(v25, v67, v54);
                gameswf::as_value::drop_refs((gameswf::as_value *)v54);
                if ( v67[0] == -1 )
                  gameswf::free_internal(v68);
                v47 = *(void (__fastcall **)(gameswf::as_object *, _BYTE *, _BYTE *))(*(_DWORD *)v25 + 28);
                gameswf::tu_string::tu_string((gameswf::tu_string *)v65, "online");
                v53[0] = 0;
                v53[1] = 1;
                v53[4] = v48 == (gameswf::tu_string *)((char *)&dword_0 + 2);
                v47(v25, v65, v53);
                gameswf::as_value::drop_refs((gameswf::as_value *)v53);
                if ( v65[0] == -1 )
                  gameswf::free_internal(v66);
                v51[1] = 5;
                v51[0] = 0;
                v52 = v25;
                gameswf::ref_counted::add_ref(v25);
                gameswf::as_array::push(v49, (const gameswf::as_value *)v51);
                v10 = (CMatching *)gameswf::as_value::drop_refs((gameswf::as_value *)v51);
                v11 = CMatching::Get(v10);
                LOBYTE(v58) = v48 == (gameswf::tu_string *)((char *)&dword_0 + 2);
                BYTE1(v58) = 0;
                v57[0] = v17;
                v57[1] = v14;
                GLFriendsCount = (CMatching *)CMatchingGLLive::AddFriendInGameList(v11, v17, v14, v58);
              }
            }
            ++v5;
          }
          while ( (char *)v5 != v50 );
        }
        v46 = (CMatchingGLLive *)CMatching::Get(GLFriendsCount);
        CMatchingGLLive::GLFriendsListLoaded(v46, 1);
      }
    }
  }
}


// ===== 44de4c NativeGetParsedString(gameswf::fn_call const&) =====
void __fastcall NativeGetParsedString(const gameswf::fn_call *a1)
{
  int v2; // r2
  int v3; // r3
  gameswf::as_value *v4; // r0
  const char *v5; // r10
  int v6; // r5
  int v7; // r0
  _DWORD *v8; // r6
  int v9; // r5
  signed int v10; // r1
  _BYTE *v11; // r0
  gameswf::as_value *v12; // r4
  _DWORD *v13; // r1
  _DWORD *v14; // r8
  _DWORD *v15; // r8
  int v16; // r2
  int v17; // r3
  std::__node_alloc *v18; // r1
  std::__node_alloc *v19; // r3
  unsigned int v20; // r5
  void *v21; // r6
  int v22; // r2
  int v23; // t0
  double v24; // r0
  double v25; // r0
  void *v26; // r3
  char *StringFromSymbol; // [sp+28h] [bp-84h]
  void (**v28)(VarArgs *__hidden); // [sp+40h] [bp-6Ch] BYREF
  void *v29; // [sp+44h] [bp-68h] BYREF
  _DWORD *v30; // [sp+48h] [bp-64h]
  _DWORD *v31; // [sp+4Ch] [bp-60h]
  int v32; // [sp+50h] [bp-5Ch] BYREF
  int v33; // [sp+54h] [bp-58h]
  int v34; // [sp+58h] [bp-54h]
  std::__node_alloc *v35; // [sp+5Ch] [bp-50h] BYREF
  std::__node_alloc *v36; // [sp+60h] [bp-4Ch]
  unsigned int v37; // [sp+64h] [bp-48h]
  __int64 v38; // [sp+68h] [bp-44h]
  __int64 v39; // [sp+70h] [bp-3Ch]
  std::priv::_String_base<char,std::allocator<char> > v40; // [sp+78h] [bp-34h] BYREF
  char v41; // [sp+90h] [bp-1Ch] BYREF
  char v42; // [sp+91h] [bp-1Bh] BYREF
  void *p; // [sp+9Ch] [bp-10h]
  unsigned int v44; // [sp+A0h] [bp-Ch]

  if ( *((_DWORD *)a1 + 4) == 2 )
  {
    v2 = *((_DWORD *)a1 + 5);
    v3 = **((_DWORD **)a1 + 3);
    v4 = (gameswf::as_value *)(v3 + 12 * v2);
    if ( (unsigned __int8)(*((_BYTE *)v4 + 1) - 3) <= 1u && *(_BYTE *)(v3 + 12 * (v2 - 1) + 1) == 5 )
    {
      v5 = (const char *)gameswf::as_value::to_xstring(v4);
      v6 = **((_DWORD **)a1 + 3) + 12 * (*((_DWORD *)a1 + 5) - 1);
      v7 = *(_BYTE *)(v6 + 1) == 5 ? *(_DWORD *)(v6 + 4) : 0;
      v8 = (_DWORD *)gameswf::cast_to<gameswf::as_array>(v7);
      if ( v5 )
      {
        StringFromSymbol = (char *)StringManager::getStringFromSymbol((StringManager *)dword_99F760, v5);
        v9 = 0;
        v40._M_finish = (char *)&v40;
        v40._M_start_of_storage._M_data = (char *)&v40;
        std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block(&v40, 0x10u);
        *v40._M_finish = 0;
        v29 = nullptr;
        v28 = off_967748;
        v30 = nullptr;
        v31 = nullptr;
        v10 = v8[20];
        if ( v10 < 1 )
          v10 = 1;
        std::vector<gameswf::as_value *>::vector(&v35, v10);
        if ( (int)v8[20] > 0 )
        {
          do
          {
            v11 = (_BYTE *)operator new(0xCu, 0);
            *v11 = 0;
            v11[1] = 0;
            *(_DWORD *)&v35[4 * v9].gap0 = v11;
            v12 = *(gameswf::as_value **)&v35[4 * v9].gap0;
            (*(void (__fastcall **)(_DWORD *, int, gameswf::as_value *))(*v8 + 40))(v8, v9, v12);
            v13 = v30;
            v34 = 0;
            v32 = 0;
            v33 = 0;
            if ( v30 == v31 )
            {
              std::vector<VarArgs::Variant>::_M_insert_overflow_aux(&v29, (int)v30, &v32);
              v14 = v30;
            }
            else
            {
              *v30 = v32;
              v13[1] = v33;
              v13[2] = v34;
              v14 = v30 + 3;
              v30 += 3;
            }
            v15 = v14 - 3;
            v16 = *(_DWORD *)&v35[4 * v9].gap0;
            v17 = *(unsigned __int8 *)(v16 + 1);
            if ( (unsigned __int8)(v17 - 3) > 1u )
            {
              if ( v17 == 2 )
              {
                v23 = v16 + 4;
                v22 = *(_DWORD *)(v16 + 4);
                HIDWORD(v39) = *(_DWORD *)(v23 + 4);
                LODWORD(v39) = v22;
                v38 = v39;
                LODWORD(v24) = gameswf::as_value::to_number(v12);
                v15[1] = (int)v24;
                LODWORD(v25) = gameswf::as_value::to_number(v12);
                *(float *)&v25 = v25;
                *v15 = LODWORD(v25);
                v44 = v44 & 0xFF000000 | 0xFFFFFF;
                v41 = 1;
                HIBYTE(v44) &= ~1u;
                v42 = 0;
                gameswf::as_value::to_string(v12, (gameswf::tu_string *)&v41);
                v26 = v41 == -1 ? p : &v42;
                v15[2] = v26;
                if ( v41 == -1 )
                  gameswf::free_internal(p);
              }
            }
            else
            {
              v15[2] = gameswf::as_value::to_xstring(v12);
            }
            ++v9;
          }
          while ( v9 < v8[20] );
        }
        StringManager::parseEx(
          (StringManager *)dword_99F760,
          (std::string *)&v40,
          StringFromSymbol,
          (const VarArgs *)&v28);
        gameswf::as_value::set_string(*(gameswf::as_value **)a1, v40._M_start_of_storage._M_data);
        v18 = v36;
        v19 = v35;
        if ( (unsigned int)(v36 - v35) >> 2 )
        {
          v20 = 0;
          do
          {
            v21 = *(void **)&v19[4 * v20].gap0;
            if ( v21 )
            {
              gameswf::as_value::drop_refs(*(gameswf::as_value **)&v19[4 * v20].gap0);
              CustomFree(v21);
              v19 = v35;
              v18 = v36;
            }
            ++v20;
          }
          while ( v20 < (v18 - v19) >> 2 );
        }
        if ( v18 != v19 )
          v36 = v19;
        if ( v19 )
          std::__node_alloc::deallocate(v19, (v37 - (_DWORD)v19) & 0xFFFFFFFC, v37);
        v28 = off_967748;
        std::vector<VarArgs::Variant>::~vector((int)&v29);
        std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v40);
      }
    }
  }
}


// ===== 44e270 NativeGetCursorState(gameswf::fn_call const&) =====
int __fastcall NativeGetCursorState(const gameswf::fn_call *a1)
{
  gameswf::as_object *v2; // r7
  double v4; // r0
  RenderFX *HUDRoot; // r0
  float *Controller; // r3
  MenuManager *v7; // r0
  int v8; // r11
  int v9; // r8
  int v10; // r7
  _DWORD *v11; // r11
  gameswf::player *v12; // r10
  _BYTE *v13; // r0
  gameswf::as_object *v14; // r7
  RenderFX *v16; // r0
  gameswf::root *Root; // r0
  void (__fastcall *v18)(gameswf::as_object *, _BYTE *, _BYTE *); // r10
  void (__fastcall *v19)(gameswf::as_object *, _BYTE *, _BYTE *); // r10
  void (__fastcall *v20)(gameswf::as_object *, _BYTE *, _BYTE *); // r8
  int v21; // [sp+4h] [bp-98h]
  float v22; // [sp+Ch] [bp-90h]
  float v23; // [sp+10h] [bp-8Ch]
  int v24; // [sp+14h] [bp-88h]
  _BYTE v25[4]; // [sp+1Ch] [bp-80h] BYREF
  double v26; // [sp+20h] [bp-7Ch]
  _BYTE v27[4]; // [sp+28h] [bp-74h] BYREF
  double v28; // [sp+2Ch] [bp-70h]
  _BYTE v29[4]; // [sp+34h] [bp-68h] BYREF
  double v30; // [sp+38h] [bp-64h]
  double v31; // [sp+40h] [bp-5Ch]
  float v32; // [sp+4Ch] [bp-50h] BYREF
  float v33; // [sp+50h] [bp-4Ch]
  gameswf::ref_counted *v34; // [sp+54h] [bp-48h] BYREF
  _BYTE v35[8]; // [sp+58h] [bp-44h] BYREF
  void *p; // [sp+64h] [bp-38h]
  _BYTE v37[8]; // [sp+6Ch] [bp-30h] BYREF
  void *v38; // [sp+78h] [bp-24h]
  _BYTE v39[8]; // [sp+80h] [bp-1Ch] BYREF
  void *v40; // [sp+8Ch] [bp-10h]

  if ( *((_DWORD *)a1 + 4) == 1 )
  {
    LODWORD(v4) = gameswf::as_value::to_number((gameswf::as_value *)(**((_DWORD **)a1 + 3) + 12 * *((_DWORD *)a1 + 5)));
    v21 = (int)v4;
    HUDRoot = (RenderFX *)MenuManager::GetHUDRoot((MenuManager *)dword_99F780);
    Controller = (float *)RenderFX::GetController(HUDRoot, v21);
    v7 = (MenuManager *)dword_99F780;
    v22 = *Controller;
    v24 = *((_DWORD *)Controller + 3);
    v8 = *(_DWORD *)(dword_99F780 + 244);
    v23 = Controller[1];
    v9 = *(_DWORD *)(v8 + 344);
    if ( !v9 )
    {
      v10 = *((_DWORD *)a1 + 3);
      v11 = (_DWORD *)(v8 + 340);
      v12 = *(gameswf::player **)(v10 + 104);
      if ( v12 )
      {
        v13 = *(_BYTE **)(v10 + 100);
        if ( !v13[4] )
          goto LABEL_10;
      }
      while ( 1 )
      {
        v14 = (gameswf::as_object *)operator new(56, 0);
        ++v9;
        gameswf::as_object::as_object(v14, v12);
        v34 = v14;
        gameswf::array<gameswf::smart_ptr<gameswf::as_object>>::push_back<gameswf::as_object*>(v11, &v34);
        if ( v9 == 4 )
          break;
        v10 = *((_DWORD *)a1 + 3);
        v12 = *(gameswf::player **)(v10 + 104);
        v11 = (_DWORD *)(*(_DWORD *)(dword_99F780 + 244) + 340);
        if ( v12 )
        {
          v13 = *(_BYTE **)(v10 + 100);
          if ( !v13[4] )
          {
LABEL_10:
            if ( (*(_DWORD *)v13)-- == 1 )
              gameswf::free_internal(v13);
            *(_DWORD *)(v10 + 104) = 0;
            *(_DWORD *)(v10 + 100) = 0;
            v12 = nullptr;
          }
        }
      }
      v7 = (MenuManager *)dword_99F780;
    }
    v32 = v22;
    v33 = v23;
    v16 = (RenderFX *)MenuManager::GetHUDRoot(v7);
    Root = (gameswf::root *)RenderFX::GetRoot(v16);
    gameswf::root::screen_to_logical(Root, (gameswf::point *)&v32);
    v2 = *(gameswf::as_object **)(*(_DWORD *)(*(_DWORD *)(dword_99F780 + 244) + 340) + 4 * v21);
    v18 = *(void (__fastcall **)(gameswf::as_object *, _BYTE *, _BYTE *))(*(_DWORD *)v2 + 28);
    gameswf::tu_string::tu_string((gameswf::tu_string *)v39, "x");
    v29[0] = 0;
    v29[1] = 2;
    v31 = v32;
    v30 = v32;
    v18(v2, v39, v29);
    gameswf::as_value::drop_refs((gameswf::as_value *)v29);
    if ( v39[0] == -1 )
      gameswf::free_internal(v40);
    v19 = *(void (__fastcall **)(gameswf::as_object *, _BYTE *, _BYTE *))(*(_DWORD *)v2 + 28);
    gameswf::tu_string::tu_string((gameswf::tu_string *)v37, "y");
    v27[0] = 0;
    v27[1] = 2;
    v31 = v33;
    v28 = v33;
    v19(v2, v37, v27);
    gameswf::as_value::drop_refs((gameswf::as_value *)v27);
    if ( v37[0] == -1 )
      gameswf::free_internal(v38);
    v20 = *(void (__fastcall **)(gameswf::as_object *, _BYTE *, _BYTE *))(*(_DWORD *)v2 + 28);
    gameswf::tu_string::tu_string((gameswf::tu_string *)v35, "state");
    v25[0] = 0;
    v25[1] = 2;
    v31 = (double)v24;
    v26 = (double)v24;
    v20(v2, v35, v25);
    gameswf::as_value::drop_refs((gameswf::as_value *)v25);
    if ( v35[0] == -1 )
      gameswf::free_internal(p);
  }
  else
  {
    v2 = nullptr;
  }
  return gameswf::as_value::set_as_object(*(gameswf::as_value **)a1, v2);
}


// ===== 44e5cc NativeGetPlayerHUDInfos(gameswf::fn_call const&) =====
int __fastcall NativeGetPlayerHUDInfos(int result)
{
  int v1; // r6
  int v2; // r3
  int v3; // r0
  gameswf::as_object *v4; // r4
  double v5; // r0
  int v6; // r10
  char v7; // r1
  _BYTE *PlayerChar; // r0
  _DWORD *v9; // r8
  char v10; // r9
  int v11; // r1
  unsigned int v12; // r10
  unsigned int v13; // r11
  CharAI *v14; // r9
  unsigned int SkillLevel; // r0
  unsigned int v16; // r0
  unsigned int v17; // r0
  int v18; // r0
  int v19; // r0
  int v20; // r0
  void (__fastcall *v21)(gameswf::as_object *, _BYTE *, _BYTE *); // r9
  void (__fastcall *v22)(gameswf::as_object *, _BYTE *, _BYTE *); // r9
  void (__fastcall *v23)(gameswf::as_object *, _BYTE *, _BYTE *); // r9
  void (__fastcall *v24)(gameswf::as_object *, _BYTE *, _BYTE *); // r9
  void (__fastcall *v25)(gameswf::as_object *, _BYTE *, _BYTE *); // r9
  void (__fastcall *v26)(gameswf::as_object *, _BYTE *, _BYTE *); // r9
  void (__fastcall *v27)(gameswf::as_object *, _BYTE *, _BYTE *); // r10
  void (__fastcall *v28)(gameswf::as_object *, _BYTE *, _BYTE *); // r9
  void (__fastcall *v29)(gameswf::as_object *, _BYTE *, _BYTE *); // r8
  void (__fastcall *v30)(gameswf::as_object *, _BYTE *, _BYTE *); // r10
  void (__fastcall *v31)(gameswf::as_object *, _BYTE *, _BYTE *); // [sp+0h] [bp-27Ch]
  void (__fastcall *v32)(gameswf::as_object *, _BYTE *, _BYTE *); // [sp+0h] [bp-27Ch]
  void (__fastcall *v33)(gameswf::as_object *, _BYTE *, _BYTE *); // [sp+0h] [bp-27Ch]
  void (__fastcall *v34)(gameswf::as_object *, _BYTE *, _BYTE *); // [sp+0h] [bp-27Ch]
  void (__fastcall *v35)(gameswf::as_object *, _BYTE *, _BYTE *); // [sp+0h] [bp-27Ch]
  void (__fastcall *v36)(gameswf::as_object *, _BYTE *, _BYTE *); // [sp+0h] [bp-27Ch]
  void (__fastcall *v37)(gameswf::as_object *, _BYTE *, _BYTE *); // [sp+0h] [bp-27Ch]
  void (__fastcall *v38)(gameswf::as_object *, _BYTE *, _BYTE *); // [sp+0h] [bp-27Ch]
  CharProperties *SkillInSlot; // [sp+4h] [bp-278h]
  char v40; // [sp+Ch] [bp-270h]
  char v41; // [sp+10h] [bp-26Ch]
  char IsSkillUsable; // [sp+14h] [bp-268h]
  _BYTE v43[12]; // [sp+18h] [bp-264h] BYREF
  _BYTE v44[12]; // [sp+24h] [bp-258h] BYREF
  _BYTE v45[12]; // [sp+30h] [bp-24Ch] BYREF
  _BYTE v46[4]; // [sp+3Ch] [bp-240h] BYREF
  double v47; // [sp+40h] [bp-23Ch]
  _BYTE v48[12]; // [sp+48h] [bp-234h] BYREF
  _BYTE v49[4]; // [sp+54h] [bp-228h] BYREF
  double v50; // [sp+58h] [bp-224h]
  _BYTE v51[12]; // [sp+60h] [bp-21Ch] BYREF
  _BYTE v52[4]; // [sp+6Ch] [bp-210h] BYREF
  double v53; // [sp+70h] [bp-20Ch]
  _BYTE v54[12]; // [sp+78h] [bp-204h] BYREF
  _BYTE v55[4]; // [sp+84h] [bp-1F8h] BYREF
  double v56; // [sp+88h] [bp-1F4h]
  _BYTE v57[12]; // [sp+90h] [bp-1ECh] BYREF
  _BYTE v58[4]; // [sp+9Ch] [bp-1E0h] BYREF
  double v59; // [sp+A0h] [bp-1DCh]
  _BYTE v60[4]; // [sp+A8h] [bp-1D4h] BYREF
  double v61; // [sp+ACh] [bp-1D0h]
  _BYTE v62[4]; // [sp+B4h] [bp-1C8h] BYREF
  double v63; // [sp+B8h] [bp-1C4h]
  _BYTE v64[4]; // [sp+C0h] [bp-1BCh] BYREF
  double v65; // [sp+C4h] [bp-1B8h]
  _BYTE v66[4]; // [sp+CCh] [bp-1B0h] BYREF
  double v67; // [sp+D0h] [bp-1ACh]
  _BYTE v68[4]; // [sp+D8h] [bp-1A4h] BYREF
  double v69; // [sp+DCh] [bp-1A0h]
  _BYTE v70[12]; // [sp+E4h] [bp-198h] BYREF
  double Int; // [sp+F0h] [bp-18Ch]
  float v72; // [sp+FCh] [bp-180h] BYREF
  float v73; // [sp+100h] [bp-17Ch] BYREF
  float v74; // [sp+104h] [bp-178h] BYREF
  float v75; // [sp+108h] [bp-174h] BYREF
  _BYTE v76[8]; // [sp+10Ch] [bp-170h] BYREF
  void *v77; // [sp+118h] [bp-164h]
  _BYTE v78[8]; // [sp+120h] [bp-15Ch] BYREF
  void *p; // [sp+12Ch] [bp-150h]
  _BYTE v80[8]; // [sp+134h] [bp-148h] BYREF
  void *v81; // [sp+140h] [bp-13Ch]
  _BYTE v82[8]; // [sp+148h] [bp-134h] BYREF
  void *v83; // [sp+154h] [bp-128h]
  _BYTE v84[8]; // [sp+15Ch] [bp-120h] BYREF
  void *v85; // [sp+168h] [bp-114h]
  _BYTE v86[8]; // [sp+170h] [bp-10Ch] BYREF
  void *v87; // [sp+17Ch] [bp-100h]
  _BYTE v88[8]; // [sp+184h] [bp-F8h] BYREF
  void *v89; // [sp+190h] [bp-ECh]
  _BYTE v90[8]; // [sp+198h] [bp-E4h] BYREF
  void *v91; // [sp+1A4h] [bp-D8h]
  _BYTE v92[8]; // [sp+1ACh] [bp-D0h] BYREF
  void *v93; // [sp+1B8h] [bp-C4h]
  _BYTE v94[8]; // [sp+1C0h] [bp-BCh] BYREF
  void *v95; // [sp+1CCh] [bp-B0h]
  _BYTE v96[8]; // [sp+1D4h] [bp-A8h] BYREF
  void *v97; // [sp+1E0h] [bp-9Ch]
  _BYTE v98[8]; // [sp+1E8h] [bp-94h] BYREF
  void *v99; // [sp+1F4h] [bp-88h]
  _BYTE v100[8]; // [sp+1FCh] [bp-80h] BYREF
  void *v101; // [sp+208h] [bp-74h]
  _BYTE v102[8]; // [sp+210h] [bp-6Ch] BYREF
  void *v103; // [sp+21Ch] [bp-60h]
  _BYTE v104[8]; // [sp+224h] [bp-58h] BYREF
  void *v105; // [sp+230h] [bp-4Ch]
  _BYTE v106[8]; // [sp+238h] [bp-44h] BYREF
  void *v107; // [sp+244h] [bp-38h]
  _BYTE v108[8]; // [sp+24Ch] [bp-30h] BYREF
  void *v109; // [sp+258h] [bp-24h]
  _BYTE v110[8]; // [sp+260h] [bp-1Ch] BYREF
  void *v111; // [sp+26Ch] [bp-10h]

  v1 = result;
  if ( (unsigned int)(*(_DWORD *)(result + 16) - 2) <= 1 )
  {
    v2 = **(_DWORD **)(result + 12) + 12 * *(_DWORD *)(result + 20);
    if ( *(_BYTE *)(v2 + 1) == 5 )
      v3 = *(_DWORD *)(v2 + 4);
    else
      v3 = 0;
    v4 = (gameswf::as_object *)gameswf::cast_to<gameswf::as_object>(v3);
    LODWORD(v5) = gameswf::as_value::to_number((gameswf::as_value *)(**(_DWORD **)(v1 + 12)
                                                                   + 12 * (*(_DWORD *)(v1 + 20) - 1)));
    v6 = (int)v5;
    if ( *(_DWORD *)(v1 + 16) == 3 )
      v7 = gameswf::as_value::to_bool((gameswf::as_value *)(**(_DWORD **)(v1 + 12) + 12 * (*(_DWORD *)(v1 + 20) - 2)));
    else
      v7 = 0;
    PlayerChar = (_BYTE *)NativeGetPlayerChar(v6, v7);
    v9 = PlayerChar;
    if ( PlayerChar && (v10 = PlayerChar[129]) == 0 && PlayerChar[128] )
    {
      v11 = (unsigned __int8)PlayerChar[129];
      v72 = 0.0;
      v74 = 0.0;
      v73 = 0.0;
      SkillInSlot = (CharProperties *)Character::SG_GetSkillInSlot((Character *)PlayerChar, v11);
      v12 = Character::SG_GetSkillInSlot((Character *)v9, 1);
      v13 = Character::SG_GetSkillInSlot((Character *)v9, 2);
      if ( SkillInSlot == (CharProperties *)-1 )
      {
        IsSkillUsable = v10;
        v14 = (CharAI *)(v9 + 242);
      }
      else
      {
        v14 = (CharAI *)(v9 + 242);
        IsSkillUsable = CharAI::AI_IsSkillUsable((CharAI *)(v9 + 242), (unsigned int)SkillInSlot);
        SkillLevel = Character::SG_GetSkillLevel((Character *)v9, (unsigned int)SkillInSlot);
        CharAI::AI_SkillInfo((CharAI *)(v9 + 242), (unsigned int)SkillInSlot, SkillLevel, &v74);
      }
      if ( v12 == -1 )
      {
        v41 = 0;
      }
      else
      {
        v41 = CharAI::AI_IsSkillUsable(v14, v12);
        v16 = Character::SG_GetSkillLevel((Character *)v9, v12);
        CharAI::AI_SkillInfo(v14, v12, v16, &v73);
      }
      if ( v13 == -1 )
      {
        v40 = 0;
      }
      else
      {
        v40 = CharAI::AI_IsSkillUsable(v14, v13);
        v17 = Character::SG_GetSkillLevel((Character *)v9, v13);
        CharAI::AI_SkillInfo(v14, v13, v17, &v72);
      }
      CharAI::AI_SpellInfo(v14, &v75);
      v31 = *(void (__fastcall **)(gameswf::as_object *, _BYTE *, _BYTE *))(*(_DWORD *)v4 + 28);
      gameswf::tu_string::tu_string((gameswf::tu_string *)v110, "PlayerActive");
      v70[0] = 0;
      v70[4] = 1;
      v70[1] = 1;
      v31(v4, v110, v70);
      gameswf::as_value::drop_refs((gameswf::as_value *)v70);
      if ( v110[0] == -1 )
        gameswf::free_internal(v111);
      v32 = *(void (__fastcall **)(gameswf::as_object *, _BYTE *, _BYTE *))(*(_DWORD *)v4 + 28);
      gameswf::tu_string::tu_string((gameswf::tu_string *)v108, "LEVEL");
      v68[0] = 0;
      v68[1] = 2;
      Int = (double)CharProperties::PROPS_GetInt((CharProperties *)(v9 + 344), 19, 0);
      v69 = Int;
      v32(v4, v108, v68);
      gameswf::as_value::drop_refs((gameswf::as_value *)v68);
      if ( v108[0] == -1 )
        gameswf::free_internal(v109);
      v33 = *(void (__fastcall **)(gameswf::as_object *, _BYTE *, _BYTE *))(*(_DWORD *)v4 + 28);
      gameswf::tu_string::tu_string((gameswf::tu_string *)v106, "HP_PCT");
      v18 = 100 * v9[1058] / v9[1060];
      v66[0] = 0;
      v66[1] = 2;
      Int = (double)v18;
      v67 = (double)v18;
      v33(v4, v106, v66);
      gameswf::as_value::drop_refs((gameswf::as_value *)v66);
      if ( v106[0] == -1 )
        gameswf::free_internal(v107);
      v34 = *(void (__fastcall **)(gameswf::as_object *, _BYTE *, _BYTE *))(*(_DWORD *)v4 + 28);
      gameswf::tu_string::tu_string((gameswf::tu_string *)v104, "HP_LOWPCT");
      v64[0] = 0;
      v64[1] = 2;
      Int = (double)(int)PyDataConstants::getConstant(
                           (PyDataConstants *)dword_99F758,
                           "CharacterDesign",
                           "LowHealthPercentage");
      v65 = Int;
      v34(v4, v104, v64);
      gameswf::as_value::drop_refs((gameswf::as_value *)v64);
      if ( v104[0] == -1 )
        gameswf::free_internal(v105);
      v35 = *(void (__fastcall **)(gameswf::as_object *, _BYTE *, _BYTE *))(*(_DWORD *)v4 + 28);
      gameswf::tu_string::tu_string((gameswf::tu_string *)v102, "MP_PCT");
      v19 = 100 * v9[1063] / v9[1065];
      v62[0] = 0;
      v62[1] = 2;
      Int = (double)v19;
      v63 = (double)v19;
      v35(v4, v102, v62);
      gameswf::as_value::drop_refs((gameswf::as_value *)v62);
      if ( v102[0] == -1 )
        gameswf::free_internal(v103);
      v36 = *(void (__fastcall **)(gameswf::as_object *, _BYTE *, _BYTE *))(*(_DWORD *)v4 + 28);
      gameswf::tu_string::tu_string((gameswf::tu_string *)v100, "XP_PCT");
      v20 = 100 * v9[1055] / v9[1056];
      v60[0] = 0;
      v60[1] = 2;
      Int = (double)v20;
      v61 = (double)v20;
      v36(v4, v100, v60);
      gameswf::as_value::drop_refs((gameswf::as_value *)v60);
      if ( v100[0] == -1 )
        gameswf::free_internal(v101);
      v37 = *(void (__fastcall **)(gameswf::as_object *, _BYTE *, _BYTE *))(*(_DWORD *)v4 + 28);
      gameswf::tu_string::tu_string((gameswf::tu_string *)v98, "SPELL_PCT");
      v58[0] = 0;
      v58[1] = 2;
      Int = (double)(int)(float)(v75 * 100.0);
      v59 = Int;
      v37(v4, v98, v58);
      gameswf::as_value::drop_refs((gameswf::as_value *)v58);
      if ( v98[0] == -1 )
        gameswf::free_internal(v99);
      v38 = *(void (__fastcall **)(gameswf::as_object *, _BYTE *, _BYTE *))(*(_DWORD *)v4 + 28);
      gameswf::tu_string::tu_string((gameswf::tu_string *)v96, "SPELL_MP");
      v57[0] = 0;
      v57[4] = CharAI::AI_IsSpellUsable(v14);
      v57[1] = 1;
      v38(v4, v96, v57);
      gameswf::as_value::drop_refs((gameswf::as_value *)v57);
      if ( v96[0] == -1 )
        gameswf::free_internal(v97);
      v21 = *(void (__fastcall **)(gameswf::as_object *, _BYTE *, _BYTE *))(*(_DWORD *)v4 + 28);
      gameswf::tu_string::tu_string((gameswf::tu_string *)v94, "SKILL1_PCT");
      v55[0] = 0;
      v55[1] = 2;
      Int = (double)(int)(float)(v74 * 100.0);
      v56 = Int;
      v21(v4, v94, v55);
      gameswf::as_value::drop_refs((gameswf::as_value *)v55);
      if ( v94[0] == -1 )
        gameswf::free_internal(v95);
      v22 = *(void (__fastcall **)(gameswf::as_object *, _BYTE *, _BYTE *))(*(_DWORD *)v4 + 28);
      gameswf::tu_string::tu_string((gameswf::tu_string *)v92, "SKILL1_MP");
      v54[0] = 0;
      v54[1] = 1;
      v54[4] = IsSkillUsable;
      v22(v4, v92, v54);
      gameswf::as_value::drop_refs((gameswf::as_value *)v54);
      if ( v92[0] == -1 )
        gameswf::free_internal(v93);
      v23 = *(void (__fastcall **)(gameswf::as_object *, _BYTE *, _BYTE *))(*(_DWORD *)v4 + 28);
      gameswf::tu_string::tu_string((gameswf::tu_string *)v90, "SKILL2_PCT");
      v52[0] = 0;
      v52[1] = 2;
      Int = (double)(int)(float)(v73 * 100.0);
      v53 = Int;
      v23(v4, v90, v52);
      gameswf::as_value::drop_refs((gameswf::as_value *)v52);
      if ( v90[0] == -1 )
        gameswf::free_internal(v91);
      v24 = *(void (__fastcall **)(gameswf::as_object *, _BYTE *, _BYTE *))(*(_DWORD *)v4 + 28);
      gameswf::tu_string::tu_string((gameswf::tu_string *)v88, "SKILL2_MP");
      v51[0] = 0;
      v51[1] = 1;
      v51[4] = v41;
      v24(v4, v88, v51);
      gameswf::as_value::drop_refs((gameswf::as_value *)v51);
      if ( v88[0] == -1 )
        gameswf::free_internal(v89);
      v25 = *(void (__fastcall **)(gameswf::as_object *, _BYTE *, _BYTE *))(*(_DWORD *)v4 + 28);
      gameswf::tu_string::tu_string((gameswf::tu_string *)v86, "SKILL3_PCT");
      v49[0] = 0;
      v49[1] = 2;
      Int = (double)(int)(float)(v72 * 100.0);
      v50 = Int;
      v25(v4, v86, v49);
      gameswf::as_value::drop_refs((gameswf::as_value *)v49);
      if ( v86[0] == 255 )
        gameswf::free_internal(v87);
      v26 = *(void (__fastcall **)(gameswf::as_object *, _BYTE *, _BYTE *))(*(_DWORD *)v4 + 28);
      gameswf::tu_string::tu_string((gameswf::tu_string *)v84, "SKILL3_MP");
      v48[0] = 0;
      v48[1] = 1;
      v48[4] = v40;
      v26(v4, v84, v48);
      gameswf::as_value::drop_refs((gameswf::as_value *)v48);
      if ( v84[0] == 255 )
        gameswf::free_internal(v85);
      v27 = *(void (__fastcall **)(gameswf::as_object *, _BYTE *, _BYTE *))(*(_DWORD *)v4 + 28);
      gameswf::tu_string::tu_string((gameswf::tu_string *)v82, "NB_POTIONS");
      v46[0] = 0;
      v46[1] = 2;
      Int = (double)(int)ItemInventory::GetNumPotions((ItemInventory *)(v9 + 223));
      v47 = Int;
      v27(v4, v82, v46);
      gameswf::as_value::drop_refs((gameswf::as_value *)v46);
      if ( v82[0] == 255 )
        gameswf::free_internal(v83);
      v28 = *(void (__fastcall **)(gameswf::as_object *, _BYTE *, _BYTE *))(*(_DWORD *)v4 + 28);
      gameswf::tu_string::tu_string((gameswf::tu_string *)v80, "AVAIL_POINTS");
      v45[0] = 0;
      v45[1] = 1;
      v45[4] = CharProperties::PROPS_GetInt((CharProperties *)(v9 + 344), 148, 0) != 0;
      v28(v4, v80, v45);
      gameswf::as_value::drop_refs((gameswf::as_value *)v45);
      if ( v80[0] == 255 )
        gameswf::free_internal(v81);
      v29 = *(void (__fastcall **)(gameswf::as_object *, _BYTE *, _BYTE *))(*(_DWORD *)v4 + 28);
      gameswf::tu_string::tu_string((gameswf::tu_string *)v78, "TouchToMove");
      v44[0] = 0;
      v44[1] = 1;
      v44[4] = Application::GetSavedOption((Application *)&Singleton<Application>::s_inst, "DPad") == 0;
      v29(v4, v78, v44);
      gameswf::as_value::drop_refs((gameswf::as_value *)v44);
      if ( v78[0] == 255 )
        gameswf::free_internal(p);
    }
    else
    {
      v30 = *(void (__fastcall **)(gameswf::as_object *, _BYTE *, _BYTE *))(*(_DWORD *)v4 + 28);
      gameswf::tu_string::tu_string((gameswf::tu_string *)v76, "PlayerActive");
      v43[4] = 0;
      v43[0] = 0;
      v43[1] = 1;
      v30(v4, v76, v43);
      gameswf::as_value::drop_refs((gameswf::as_value *)v43);
      if ( v76[0] == 255 )
        gameswf::free_internal(v77);
    }
    return gameswf::as_value::set_as_object(*(gameswf::as_value **)v1, v4);
  }
  return result;
}


// ===== 44f27c NativeGetSaveIDsList(gameswf::fn_call const&) =====
int __fastcall NativeGetSaveIDsList(int result)
{
  gameswf::fn_call *v1; // r7
  _DWORD *v2; // r6
  int v3; // r10
  int v4; // r3
  time_t v5; // lr
  int v6; // r3
  int v7; // r10
  int v8; // r6
  int v9; // r8
  int v10; // r0
  int v11; // r3
  int v12; // r2
  const char *v13; // r1
  int v14; // r2
  int v15; // r6
  int v16; // r2
  int v17; // r8
  int v18; // r9
  signed int SlotFromFilename; // r5
  char *String; // r0
  StringManager *v21; // r11
  int Constant; // r0
  char *v23; // r0
  PlayerManager *v24; // r0
  int v25; // r7
  struct tm *v26; // r7
  gameswf::player *player; // r11
  gameswf::as_object *v28; // r7
  int v29; // r3
  const char *v30; // r1
  void (__fastcall *v31)(gameswf::as_object *, _BYTE *, _BYTE *); // r6
  void (__fastcall *v32)(gameswf::as_object *, _BYTE *, _BYTE *); // r6
  std::priv::_String_base<char,std::allocator<char> > *v33; // [sp+0h] [bp-424h]
  std::priv::_String_base<char,std::allocator<char> > *v34; // [sp+0h] [bp-424h]
  std::priv::_String_base<char,std::allocator<char> > *v35; // [sp+0h] [bp-424h]
  std::priv::_String_base<char,std::allocator<char> > *v36; // [sp+0h] [bp-424h]
  std::priv::_String_base<char,std::allocator<char> > *v37; // [sp+0h] [bp-424h]
  std::priv::_String_base<char,std::allocator<char> > *v38; // [sp+0h] [bp-424h]
  std::priv::_String_base<char,std::allocator<char> > *v39; // [sp+4h] [bp-420h]
  int v40; // [sp+8h] [bp-41Ch]
  char v41; // [sp+20h] [bp-404h]
  gameswf::as_object *v42; // [sp+24h] [bp-400h]
  gameswf::fn_call *v43; // [sp+28h] [bp-3FCh]
  _BYTE v44[4]; // [sp+44h] [bp-3E0h] BYREF
  gameswf::as_object *v45; // [sp+48h] [bp-3DCh]
  _BYTE v46[12]; // [sp+50h] [bp-3D4h] BYREF
  _BYTE v47[12]; // [sp+5Ch] [bp-3C8h] BYREF
  _BYTE v48[12]; // [sp+68h] [bp-3BCh] BYREF
  _BYTE v49[12]; // [sp+74h] [bp-3B0h] BYREF
  _BYTE v50[4]; // [sp+80h] [bp-3A4h] BYREF
  double v51; // [sp+84h] [bp-3A0h]
  _BYTE v52[12]; // [sp+8Ch] [bp-398h] BYREF
  _BYTE v53[12]; // [sp+98h] [bp-38Ch] BYREF
  _BYTE v54[12]; // [sp+A4h] [bp-380h] BYREF
  _BYTE v55[4]; // [sp+B0h] [bp-374h] BYREF
  double v56; // [sp+B4h] [bp-370h]
  _DWORD v57[3]; // [sp+BCh] [bp-368h] BYREF
  double v58; // [sp+C8h] [bp-35Ch]
  time_t v59; // [sp+D0h] [bp-354h] BYREF
  int v60; // [sp+D4h] [bp-350h]
  time_t v61; // [sp+DCh] [bp-348h]
  int v62; // [sp+E0h] [bp-344h]
  std::priv::_String_base<char,std::allocator<char> > v63; // [sp+E8h] [bp-33Ch] BYREF
  char *v64; // [sp+114h] [bp-310h]
  int v65; // [sp+118h] [bp-30Ch]
  int v66; // [sp+11Ch] [bp-308h]
  time_t v67; // [sp+120h] [bp-304h]
  _DWORD v68[82]; // [sp+138h] [bp-2ECh]
  char v69[80]; // [sp+280h] [bp-1A4h] BYREF
  char v70[32]; // [sp+2D0h] [bp-154h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v71; // [sp+2F0h] [bp-134h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v72; // [sp+308h] [bp-11Ch] BYREF
  std::priv::_String_base<char,std::allocator<char> > v73; // [sp+320h] [bp-104h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v74; // [sp+338h] [bp-ECh] BYREF
  std::priv::_String_base<char,std::allocator<char> > v75; // [sp+350h] [bp-D4h] BYREF
  _BYTE v76[8]; // [sp+368h] [bp-BCh] BYREF
  void *v77; // [sp+374h] [bp-B0h]
  _BYTE v78[8]; // [sp+37Ch] [bp-A8h] BYREF
  void *v79; // [sp+388h] [bp-9Ch]
  _BYTE v80[8]; // [sp+390h] [bp-94h] BYREF
  void *p; // [sp+39Ch] [bp-88h]
  _BYTE v82[8]; // [sp+3A4h] [bp-80h] BYREF
  void *v83; // [sp+3B0h] [bp-74h]
  _BYTE v84[8]; // [sp+3B8h] [bp-6Ch] BYREF
  void *v85; // [sp+3C4h] [bp-60h]
  _BYTE v86[8]; // [sp+3CCh] [bp-58h] BYREF
  void *v87; // [sp+3D8h] [bp-4Ch]
  _BYTE v88[8]; // [sp+3E0h] [bp-44h] BYREF
  void *v89; // [sp+3ECh] [bp-38h]
  _BYTE v90[8]; // [sp+3F4h] [bp-30h] BYREF
  void *v91; // [sp+400h] [bp-24h]
  _BYTE v92[8]; // [sp+408h] [bp-1Ch] BYREF
  void *v93; // [sp+414h] [bp-10h]

  v1 = (gameswf::fn_call *)result;
  if ( *(_DWORD *)(result + 16) == 3 )
  {
    v2 = *(_DWORD **)(result + 12);
    v3 = *(_DWORD *)(result + 20);
    v4 = *v2 + 12 * v3;
    if ( *(_BYTE *)(v4 + 1) == 2 )
    {
      v5 = *(_DWORD *)(v4 + 4);
      v60 = *(_DWORD *)(v4 + 8);
      v59 = v5;
      v62 = v60;
      v61 = v5;
      result = gameswf::as_value::is_number((gameswf::as_value *)(*v2 + 12 * (v3 - 1)));
      if ( result )
      {
        result = *((_DWORD *)v1 + 5);
        v6 = **((_DWORD **)v1 + 3);
        if ( *(_BYTE *)(v6 + 12 * (result - 2) + 1) == 5 )
        {
          v7 = gameswf::as_value::to_int((gameswf::as_value *)(v6 + 12 * result));
          v8 = gameswf::as_value::to_int((gameswf::as_value *)(**((_DWORD **)v1 + 3) + 12 * (*((_DWORD *)v1 + 5) - 1)));
          v9 = **((_DWORD **)v1 + 3) + 12 * (*((_DWORD *)v1 + 5) - 2);
          if ( *(_BYTE *)(v9 + 1) == 5 )
            v10 = *(_DWORD *)(v9 + 4);
          else
            v10 = 0;
          v42 = (gameswf::as_object *)gameswf::cast_to<gameswf::as_array>(v10);
          PlayerSavegame::SG_GetSavegameList((PlayerSavegame *)v57, 1);
          v11 = v57[0];
          v12 = (v57[1] - v57[0]) >> 3;
          v13 = (const char *)(1431655765 * v12);
          v14 = -1431655765 * v12;
          if ( v8 >= v14 )
            v8 = v14;
          if ( v7 < v14 )
            v14 = v7;
          v15 = v8 & ~(v8 >> 31);
          v16 = v14 & ~(v14 >> 31);
          v40 = v15;
          if ( v15 >= v16 )
          {
            if ( v15 <= v16 )
            {
LABEL_54:
              gameswf::as_value::set_as_object(*(gameswf::as_value **)v1, v42);
              return std::vector<std::string>::~vector(v57);
            }
            v17 = v16;
          }
          else
          {
            v17 = v15;
            v40 = v16;
          }
          v18 = 24 * v17;
          v43 = v1;
          while ( 1 )
          {
            SlotFromFilename = PlayerSavegame::SG_GetSlotFromFilename(*(PlayerSavegame **)(v11 + v18 + 20), v13);
            PlayerSavegame::PlayerSavegame((PlayerSavegame *)&v63, SlotFromFilename, 1, 0);
            if ( v66 >= 0 && v66 < (unsigned int)Arrays::CharacterTable::size )
            {
              String = (char *)StringManager::getString(
                                 (StringManager *)dword_99F760,
                                 *(_DWORD *)(Arrays::CharacterTable::members + 900 * v66 + 24));
              std::string::string((int)&v75, String);
              sprintf(v70, "%d", v65);
              std::operator+<char>((int)&v73, (int)&v75, " ");
              v21 = (StringManager *)dword_99F760;
              Constant = PyDataConstants::getConstant((PyDataConstants *)dword_99F758, "StrID", "GAMEPLAYMENUS_LEVEL");
              v23 = (char *)StringManager::getString(v21, Constant);
              std::operator+<char>((int)&v72, (int)&v73, v23);
              std::operator+<char>((int)&v71, (int)&v72, " ");
              std::operator+<char>((int)&v74, (int)&v71, v70);
              std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v71);
              std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v72);
              std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v73);
              v24 = (PlayerManager *)dword_99F76C;
              if ( *(int *)(dword_99F76C + 1732) <= 0 )
              {
LABEL_52:
                v41 = 0;
              }
              else
              {
                v25 = 0;
                while ( SlotFromFilename != *(_DWORD *)(PlayerManager::GetPlayer(v24, v25, 1) + 1636) )
                {
                  ++v25;
                  v24 = (PlayerManager *)dword_99F76C;
                  if ( v25 >= *(_DWORD *)(dword_99F76C + 1732) )
                    goto LABEL_52;
                }
                v41 = 1;
              }
              v59 = v67;
              v26 = localtime(&v59);
              switch ( SavegameManager::getLanguage((SavegameManager *)dword_99F778) )
              {
                case 1:
                case 3:
                case 7:
                  strftime(v69, 0x50u, "%d/%m     %H:%M", v26);
                  break;
                case 2:
                  strftime(v69, 0x50u, "%d.%m.     %H:%M", v26);
                  break;
                case 4:
                case 5:
                case 6:
                  strftime(v69, 0x50u, "%m.%d.     %H:%M", v26);
                  break;
                default:
                  strftime(v69, 0x50u, "%m/%d     %H:%M", v26);
                  break;
              }
              player = (gameswf::player *)gameswf::fn_call::get_player(v43);
              v28 = (gameswf::as_object *)operator new(56, 0);
              gameswf::as_object::as_object(v28, player);
              v33 = *(std::priv::_String_base<char,std::allocator<char> > **)(*(_DWORD *)v28 + 28);
              gameswf::tu_string::tu_string((gameswf::tu_string *)v92, "SlotID");
              v55[0] = 0;
              v55[1] = 2;
              v58 = (double)SlotFromFilename;
              v56 = (double)SlotFromFilename;
              ((void (__fastcall *)(gameswf::as_object *, _BYTE *, _BYTE *))v33)(v28, v92, v55);
              gameswf::as_value::drop_refs((gameswf::as_value *)v55);
              if ( v92[0] == -1 )
                gameswf::free_internal(v93);
              v34 = *(std::priv::_String_base<char,std::allocator<char> > **)(*(_DWORD *)v28 + 28);
              gameswf::tu_string::tu_string((gameswf::tu_string *)v90, "InUse");
              v54[0] = 0;
              v54[4] = 1;
              v54[1] = 1;
              ((void (__fastcall *)(gameswf::as_object *, _BYTE *, _BYTE *))v34)(v28, v90, v54);
              gameswf::as_value::drop_refs((gameswf::as_value *)v54);
              if ( v90[0] == -1 )
                gameswf::free_internal(v91);
              v35 = *(std::priv::_String_base<char,std::allocator<char> > **)(*(_DWORD *)v28 + 28);
              gameswf::tu_string::tu_string((gameswf::tu_string *)v88, "PlayerName");
              v53[1] = 0;
              v53[0] = 0;
              gameswf::as_value::set_string((gameswf::as_value *)v53, v64);
              ((void (__fastcall *)(gameswf::as_object *, _BYTE *, _BYTE *))v35)(v28, v88, v53);
              gameswf::as_value::drop_refs((gameswf::as_value *)v53);
              if ( v88[0] == -1 )
                gameswf::free_internal(v89);
              v36 = *(std::priv::_String_base<char,std::allocator<char> > **)(*(_DWORD *)v28 + 28);
              gameswf::tu_string::tu_string((gameswf::tu_string *)v86, "PlayerClass");
              v52[1] = 0;
              v52[0] = 0;
              gameswf::as_value::set_string((gameswf::as_value *)v52, v75._M_start_of_storage._M_data);
              ((void (__fastcall *)(gameswf::as_object *, _BYTE *, _BYTE *))v36)(v28, v86, v52);
              gameswf::as_value::drop_refs((gameswf::as_value *)v52);
              if ( v86[0] == -1 )
                gameswf::free_internal(v87);
              v37 = *(std::priv::_String_base<char,std::allocator<char> > **)(*(_DWORD *)v28 + 28);
              gameswf::tu_string::tu_string((gameswf::tu_string *)v84, "PlayerLVL");
              v50[0] = 0;
              v50[1] = 2;
              v58 = (double)v65;
              v51 = (double)v65;
              ((void (__fastcall *)(gameswf::as_object *, _BYTE *, _BYTE *))v37)(v28, v84, v50);
              gameswf::as_value::drop_refs((gameswf::as_value *)v50);
              if ( v84[0] == -1 )
                gameswf::free_internal(v85);
              v38 = *(std::priv::_String_base<char,std::allocator<char> > **)(*(_DWORD *)v28 + 28);
              gameswf::tu_string::tu_string((gameswf::tu_string *)v82, "StringClassLVL");
              v49[1] = 0;
              v49[0] = 0;
              gameswf::as_value::set_string((gameswf::as_value *)v49, v74._M_start_of_storage._M_data);
              ((void (__fastcall *)(gameswf::as_object *, _BYTE *, _BYTE *))v38)(v28, v82, v49);
              gameswf::as_value::drop_refs((gameswf::as_value *)v49);
              if ( v82[0] == -1 )
                gameswf::free_internal(v83);
              v39 = *(std::priv::_String_base<char,std::allocator<char> > **)(*(_DWORD *)v28 + 28);
              gameswf::tu_string::tu_string((gameswf::tu_string *)v80, "PlayerLocation");
              v29 = v68[PlayerSavegame::m_difficultyLevel];
              if ( v29 == -1 )
                v30 = "invalid";
              else
                v30 = (const char *)StringManager::getString(
                                      (StringManager *)dword_99F760,
                                      *(_DWORD *)(Arrays::LevelList::members + 72 * v29 + 36));
              v48[1] = 0;
              v48[0] = 0;
              gameswf::as_value::set_string((gameswf::as_value *)v48, v30);
              ((void (__fastcall *)(gameswf::as_object *, _BYTE *, _BYTE *))v39)(v28, v80, v48);
              gameswf::as_value::drop_refs((gameswf::as_value *)v48);
              if ( v80[0] == -1 )
                gameswf::free_internal(p);
              v31 = *(void (__fastcall **)(gameswf::as_object *, _BYTE *, _BYTE *))(*(_DWORD *)v28 + 28);
              gameswf::tu_string::tu_string((gameswf::tu_string *)v78, "PlayerLastSave");
              v47[1] = 0;
              v47[0] = 0;
              gameswf::as_value::set_string((gameswf::as_value *)v47, v69);
              v31(v28, v78, v47);
              gameswf::as_value::drop_refs((gameswf::as_value *)v47);
              if ( v78[0] == -1 )
                gameswf::free_internal(v79);
              v32 = *(void (__fastcall **)(gameswf::as_object *, _BYTE *, _BYTE *))(*(_DWORD *)v28 + 28);
              gameswf::tu_string::tu_string((gameswf::tu_string *)v76, "IsActive");
              v46[0] = 0;
              v46[1] = 1;
              v46[4] = v41;
              v32(v28, v76, v46);
              gameswf::as_value::drop_refs((gameswf::as_value *)v46);
              if ( v76[0] == -1 )
                gameswf::free_internal(v77);
              v44[0] = 0;
              v44[1] = 5;
              v45 = v28;
              gameswf::ref_counted::add_ref(v28);
              gameswf::as_array::push(v42, (const gameswf::as_value *)v44);
              gameswf::as_value::drop_refs((gameswf::as_value *)v44);
              std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v74);
              std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v75);
            }
            PlayerSavegame::~PlayerSavegame(&v63);
            ++v17;
            v18 += 24;
            if ( v17 >= v40 )
              break;
            v11 = v57[0];
          }
          v1 = v43;
          goto LABEL_54;
        }
      }
    }
  }
  return result;
}


// ===== 44fce0 NativeGetNextQuestMessage(gameswf::fn_call const&) =====
void __fastcall NativeGetNextQuestMessage(const gameswf::fn_call *a1)
{
  int v2; // r2
  int v3; // r3
  int v4; // r7
  int v5; // r0
  int v6; // r7
  void (__fastcall *v7)(int, _BYTE *, _BYTE *); // r9
  void (__fastcall *v8)(int, _BYTE *, _BYTE *); // r9
  char NextEnqueuedMessage; // [sp+Ch] [bp-D0h]
  _BYTE v10[12]; // [sp+10h] [bp-CCh] BYREF
  _BYTE v11[12]; // [sp+1Ch] [bp-C0h] BYREF
  _BYTE v12[20]; // [sp+30h] [bp-ACh] BYREF
  char *v13; // [sp+44h] [bp-98h]
  char *v14; // [sp+5Ch] [bp-80h]
  std::priv::_String_base<char,std::allocator<char> > v15; // [sp+7Ch] [bp-60h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v16; // [sp+94h] [bp-48h] BYREF
  _BYTE v17[8]; // [sp+ACh] [bp-30h] BYREF
  void *v18; // [sp+B8h] [bp-24h]
  _BYTE v19[8]; // [sp+C0h] [bp-1Ch] BYREF
  void *p; // [sp+CCh] [bp-10h]

  if ( *((_DWORD *)a1 + 4) == 2 )
  {
    v2 = *((_DWORD *)a1 + 5);
    v3 = **((_DWORD **)a1 + 3);
    if ( *(_BYTE *)(v3 + 12 * v2 + 1) == 5 )
    {
      if ( gameswf::as_value::is_number((gameswf::as_value *)(v3 + 12 * (v2 - 1))) )
      {
        gameswf::as_value::to_number((gameswf::as_value *)(**((_DWORD **)a1 + 3) + 12 * (*((_DWORD *)a1 + 5) - 1)));
        v4 = **((_DWORD **)a1 + 3) + 12 * *((_DWORD *)a1 + 5);
        if ( *(_BYTE *)(v4 + 1) == 5 )
          v5 = *(_DWORD *)(v4 + 4);
        else
          v5 = 0;
        v6 = gameswf::cast_to<gameswf::as_object>(v5);
        std::string::string((int)&v16, "");
        std::string::string((int)&v15, "");
        DialogMsg::DialogMsg((DialogMsg *)v12, (const std::string *)&v16, (const std::string *)&v15, -1, -1);
        std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v15);
        std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v16);
        NextEnqueuedMessage = MenuMessageManager<DialogMsg,1>::GetNextEnqueuedMessage();
        v7 = *(void (__fastcall **)(int, _BYTE *, _BYTE *))(*(_DWORD *)v6 + 28);
        gameswf::tu_string::tu_string((gameswf::tu_string *)v19, "QuestTitle");
        v11[1] = 0;
        v11[0] = 0;
        gameswf::as_value::set_string((gameswf::as_value *)v11, v13);
        v7(v6, v19, v11);
        gameswf::as_value::drop_refs((gameswf::as_value *)v11);
        if ( v19[0] == -1 )
          gameswf::free_internal(p);
        v8 = *(void (__fastcall **)(int, _BYTE *, _BYTE *))(*(_DWORD *)v6 + 28);
        gameswf::tu_string::tu_string((gameswf::tu_string *)v17, "QuestMessage");
        v10[1] = 0;
        v10[0] = 0;
        gameswf::as_value::set_string((gameswf::as_value *)v10, v14);
        v8(v6, v17, v10);
        gameswf::as_value::drop_refs((gameswf::as_value *)v10);
        if ( v17[0] == -1 )
          gameswf::free_internal(v18);
        gameswf::as_value::set_bool(*(gameswf::as_value **)a1, NextEnqueuedMessage);
        DialogMsg::~DialogMsg((DialogMsg *)v12);
      }
    }
  }
}


// ===== 44ff14 NativeGetNextDialogMessage(gameswf::fn_call const&) =====
void __fastcall NativeGetNextDialogMessage(const gameswf::fn_call *a1)
{
  int v2; // r3
  int v3; // r7
  void (__fastcall *v4)(int, _BYTE *, _BYTE *); // r9
  void (__fastcall *v5)(int, _BYTE *, _BYTE *); // r10
  void (__fastcall *v6)(int, _BYTE *, _BYTE *); // r10
  const char *ConstantName; // r11
  void (__fastcall *v8)(int, _BYTE *, _BYTE *); // r9
  void (__fastcall *v9)(int, _BYTE *, _BYTE *); // r10
  char NextEnqueuedMessage; // [sp+Ch] [bp-140h]
  _BYTE v11[12]; // [sp+14h] [bp-138h] BYREF
  _BYTE v12[12]; // [sp+20h] [bp-12Ch] BYREF
  _BYTE v13[4]; // [sp+2Ch] [bp-120h] BYREF
  double v14; // [sp+30h] [bp-11Ch]
  _BYTE v15[12]; // [sp+38h] [bp-114h] BYREF
  _BYTE v16[12]; // [sp+44h] [bp-108h] BYREF
  double v17; // [sp+50h] [bp-FCh]
  _BYTE v18[20]; // [sp+64h] [bp-E8h] BYREF
  char *v19; // [sp+78h] [bp-D4h]
  char *v20; // [sp+90h] [bp-BCh]
  int v21; // [sp+94h] [bp-B8h]
  char *v22; // [sp+ACh] [bp-A0h]
  std::priv::_String_base<char,std::allocator<char> > v23; // [sp+B0h] [bp-9Ch] BYREF
  std::priv::_String_base<char,std::allocator<char> > v24; // [sp+C8h] [bp-84h] BYREF
  _BYTE v25[8]; // [sp+E0h] [bp-6Ch] BYREF
  void *v26; // [sp+ECh] [bp-60h]
  _BYTE v27[8]; // [sp+F4h] [bp-58h] BYREF
  void *v28; // [sp+100h] [bp-4Ch]
  _BYTE v29[8]; // [sp+108h] [bp-44h] BYREF
  void *v30; // [sp+114h] [bp-38h]
  _BYTE v31[8]; // [sp+11Ch] [bp-30h] BYREF
  void *v32; // [sp+128h] [bp-24h]
  _BYTE v33[8]; // [sp+130h] [bp-1Ch] BYREF
  void *p; // [sp+13Ch] [bp-10h]

  if ( *((_DWORD *)a1 + 4) == 1 )
  {
    v2 = **((_DWORD **)a1 + 3) + 12 * *((_DWORD *)a1 + 5);
    if ( *(_BYTE *)(v2 + 1) == 5 )
    {
      v3 = gameswf::cast_to<gameswf::as_object>(*(_DWORD *)(v2 + 4));
      std::string::string((int)&v24, "");
      std::string::string((int)&v23, "");
      DialogMsg::DialogMsg((DialogMsg *)v18, (const std::string *)&v24, (const std::string *)&v23, -1, -1);
      std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v23);
      std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v24);
      NextEnqueuedMessage = MenuMessageManager<DialogMsg,1>::GetNextEnqueuedMessage(v18);
      v4 = *(void (__fastcall **)(int, _BYTE *, _BYTE *))(*(_DWORD *)v3 + 28);
      gameswf::tu_string::tu_string((gameswf::tu_string *)v33, "DialogTitle");
      v16[1] = 0;
      v16[0] = 0;
      gameswf::as_value::set_string((gameswf::as_value *)v16, v19);
      v4(v3, v33, v16);
      gameswf::as_value::drop_refs((gameswf::as_value *)v16);
      if ( v33[0] == -1 )
        gameswf::free_internal(p);
      v5 = *(void (__fastcall **)(int, _BYTE *, _BYTE *))(*(_DWORD *)v3 + 28);
      gameswf::tu_string::tu_string((gameswf::tu_string *)v31, "DialogMessage");
      v15[1] = 0;
      v15[0] = 0;
      gameswf::as_value::set_string((gameswf::as_value *)v15, v20);
      v5(v3, v31, v15);
      gameswf::as_value::drop_refs((gameswf::as_value *)v15);
      if ( v31[0] == -1 )
        gameswf::free_internal(v32);
      v6 = *(void (__fastcall **)(int, _BYTE *, _BYTE *))(*(_DWORD *)v3 + 28);
      gameswf::tu_string::tu_string((gameswf::tu_string *)v29, "DialogStyle");
      v13[0] = 0;
      v13[1] = 2;
      v17 = (double)v21;
      v14 = (double)v21;
      v6(v3, v29, v13);
      gameswf::as_value::drop_refs((gameswf::as_value *)v13);
      if ( v29[0] == -1 )
        gameswf::free_internal(v30);
      ConstantName = (const char *)PyDataConstants::getConstantName(
                                     (PyDataConstants *)dword_99F758,
                                     "DialogStyles",
                                     v21);
      v8 = *(void (__fastcall **)(int, _BYTE *, _BYTE *))(*(_DWORD *)v3 + 28);
      gameswf::tu_string::tu_string((gameswf::tu_string *)v27, "DialogStyleStr");
      v12[1] = 0;
      v12[0] = 0;
      gameswf::as_value::set_string((gameswf::as_value *)v12, ConstantName);
      v8(v3, v27, v12);
      gameswf::as_value::drop_refs((gameswf::as_value *)v12);
      if ( v27[0] == -1 )
        gameswf::free_internal(v28);
      v9 = *(void (__fastcall **)(int, _BYTE *, _BYTE *))(*(_DWORD *)v3 + 28);
      gameswf::tu_string::tu_string((gameswf::tu_string *)v25, "DialogActorStr");
      v11[1] = 0;
      v11[0] = 0;
      gameswf::as_value::set_string((gameswf::as_value *)v11, v22);
      v9(v3, v25, v11);
      gameswf::as_value::drop_refs((gameswf::as_value *)v11);
      if ( v25[0] == -1 )
        gameswf::free_internal(v26);
      gameswf::as_value::set_bool(*(gameswf::as_value **)a1, NextEnqueuedMessage);
      DialogMsg::~DialogMsg((DialogMsg *)v18);
    }
  }
}


// ===== 450298 NativeGetNextTutorialMessage(gameswf::fn_call const&) =====
int __fastcall NativeGetNextTutorialMessage(int result)
{
  int v1; // r8
  gameswf::as_value **v2; // r6
  int v3; // r3
  int v4; // r0
  int v5; // r7
  int v6; // r3
  char *String; // r0
  void (__fastcall *v8)(int, _BYTE *, _BYTE *); // r8
  void (__fastcall *v9)(int, _BYTE *, _BYTE *); // [sp+4h] [bp-90h]
  bool v10; // [sp+8h] [bp-8Ch]
  int v11; // [sp+Ch] [bp-88h]
  _BYTE v12[4]; // [sp+10h] [bp-84h] BYREF
  double v13; // [sp+14h] [bp-80h]
  _BYTE v14[12]; // [sp+1Ch] [bp-78h] BYREF
  double v15; // [sp+28h] [bp-6Ch]
  std::priv::_String_base<char,std::allocator<char> > v16; // [sp+34h] [bp-60h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v17; // [sp+4Ch] [bp-48h] BYREF
  _BYTE v18[8]; // [sp+64h] [bp-30h] BYREF
  void *v19; // [sp+70h] [bp-24h]
  _BYTE v20[8]; // [sp+78h] [bp-1Ch] BYREF
  void *p; // [sp+84h] [bp-10h]

  v2 = (gameswf::as_value **)result;
  if ( *(_DWORD *)(result + 16) == 1 )
  {
    v3 = **(_DWORD **)(result + 12) + 12 * *(_DWORD *)(result + 20);
    if ( *(_BYTE *)(v3 + 1) == 5 )
    {
      v4 = gameswf::cast_to<gameswf::as_object>(*(_DWORD *)(v3 + 4));
      v5 = v4;
      if ( dword_99FB70 == dword_99FB60 )
      {
        v6 = 0;
      }
      else
      {
        v1 = *(_DWORD *)dword_99FB60;
        v6 = *(_DWORD *)(dword_99FB60 + 4);
      }
      if ( dword_99FB70 == dword_99FB60 )
        v10 = v6;
      else
        v10 = 1;
      if ( dword_99FB70 != dword_99FB60 )
        v11 = v6;
      v9 = *(void (__fastcall **)(int, _BYTE *, _BYTE *))(*(_DWORD *)v4 + 28);
      gameswf::tu_string::tu_string((gameswf::tu_string *)v20, "TutorialMessage");
      String = (char *)StringManager::getString((StringManager *)dword_99F760, v1);
      std::string::string((std::string *)&v17, String);
      ParsePlayerName((std::string *)&v16, (const std::string *)&v17);
      v14[1] = 0;
      v14[0] = 0;
      gameswf::as_value::set_string((gameswf::as_value *)v14, v16._M_start_of_storage._M_data);
      v9(v5, v20, v14);
      gameswf::as_value::drop_refs((gameswf::as_value *)v14);
      std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v16);
      std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v17);
      if ( v20[0] == -1 )
        gameswf::free_internal(p);
      v8 = *(void (__fastcall **)(int, _BYTE *, _BYTE *))(*(_DWORD *)v5 + 28);
      gameswf::tu_string::tu_string((gameswf::tu_string *)v18, "TutorialDuration");
      v12[0] = 0;
      v12[1] = 2;
      v15 = (double)v11;
      v13 = (double)v11;
      v8(v5, v18, v12);
      gameswf::as_value::drop_refs((gameswf::as_value *)v12);
      if ( v18[0] == -1 )
        gameswf::free_internal(v19);
      return gameswf::as_value::set_bool(*v2, v10);
    }
  }
  return result;
}


// ===== 4504a0 NativeGetMultiplayerQuestInfo(gameswf::fn_call const&) =====
void __fastcall NativeGetMultiplayerQuestInfo(const gameswf::fn_call *a1)
{
  int v2; // r0
  const CRoomAttributes *v3; // r0
  int v4; // r3
  int v5; // r0
  gameswf::as_object *v6; // r4
  void (__fastcall *v7)(gameswf::as_object *, _BYTE *, _BYTE *); // r9
  void (__fastcall *v8)(gameswf::as_object *, _BYTE *, _BYTE *); // r9
  void (__fastcall *v9)(gameswf::as_object *, _BYTE *, _BYTE *); // r9
  CMessaging *v10; // r0
  int v12; // r12
  StringManager *v13; // r11
  int Constant; // r0
  const char *String; // r0
  int v16; // r12
  const char *v17; // r0
  const char *v18; // r0
  CMessaging *v19; // r10
  bool v20; // r2
  CMessage *Message; // r0
  void (__fastcall *v22)(gameswf::as_object *, _BYTE *, _BYTE *); // r9
  void (__fastcall *v23)(gameswf::as_object *, _BYTE *, _BYTE *); // r9
  int v24; // [sp+4h] [bp-4E8h]
  void (__fastcall *v25)(gameswf::as_object *, _BYTE *, _BYTE *); // [sp+4h] [bp-4E8h]
  void (__fastcall *v26)(gameswf::as_object *, _BYTE *, _BYTE *); // [sp+4h] [bp-4E8h]
  void (__fastcall *v27)(gameswf::as_object *, _BYTE *, _BYTE *); // [sp+4h] [bp-4E8h]
  void (__fastcall *v28)(gameswf::as_object *, _BYTE *, _BYTE *); // [sp+4h] [bp-4E8h]
  int AttributeInt; // [sp+8h] [bp-4E4h]
  int v30; // [sp+8h] [bp-4E4h]
  _BYTE v31[8]; // [sp+10h] [bp-4DCh] BYREF
  _BYTE v32[12]; // [sp+3ACh] [bp-140h] BYREF
  _BYTE v33[12]; // [sp+3B8h] [bp-134h] BYREF
  _BYTE v34[12]; // [sp+3C4h] [bp-128h] BYREF
  _BYTE v35[12]; // [sp+3D0h] [bp-11Ch] BYREF
  _BYTE v36[12]; // [sp+3DCh] [bp-110h] BYREF
  _BYTE v37[12]; // [sp+3E8h] [bp-104h] BYREF
  _BYTE v38[12]; // [sp+3F4h] [bp-F8h] BYREF
  _BYTE v39[12]; // [sp+400h] [bp-ECh] BYREF
  _BYTE v40[4]; // [sp+40Ch] [bp-E0h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v41; // [sp+418h] [bp-D4h] BYREF
  _BYTE v42[8]; // [sp+430h] [bp-BCh] BYREF
  void *v43; // [sp+43Ch] [bp-B0h]
  _BYTE v44[8]; // [sp+444h] [bp-A8h] BYREF
  void *p; // [sp+450h] [bp-9Ch]
  _BYTE v46[8]; // [sp+458h] [bp-94h] BYREF
  void *v47; // [sp+464h] [bp-88h]
  _BYTE v48[8]; // [sp+46Ch] [bp-80h] BYREF
  void *v49; // [sp+478h] [bp-74h]
  _BYTE v50[8]; // [sp+480h] [bp-6Ch] BYREF
  void *v51; // [sp+48Ch] [bp-60h]
  _BYTE v52[8]; // [sp+494h] [bp-58h] BYREF
  void *v53; // [sp+4A0h] [bp-4Ch]
  _BYTE v54[8]; // [sp+4A8h] [bp-44h] BYREF
  void *v55; // [sp+4B4h] [bp-38h]
  _BYTE v56[8]; // [sp+4BCh] [bp-30h] BYREF
  void *v57; // [sp+4C8h] [bp-24h]
  _BYTE v58[8]; // [sp+4D0h] [bp-1Ch] BYREF
  void *v59; // [sp+4DCh] [bp-10h]

  v2 = CMatching::Get(a1);
  v3 = (const CRoomAttributes *)(*(int (__fastcall **)(int))(*(_DWORD *)v2 + 164))(v2);
  CRoomAttributes::CRoomAttributes((CRoomAttributes *)v31, v3);
  v4 = **((_DWORD **)a1 + 3) + 12 * *((_DWORD *)a1 + 5);
  if ( *(_BYTE *)(v4 + 1) == 5 )
    v5 = *(_DWORD *)(v4 + 4);
  else
    v5 = 0;
  v6 = (gameswf::as_object *)gameswf::cast_to<gameswf::as_object>(v5);
  if ( CRoomAttributes::IsAttibuteActive(v31, 5) && CRoomAttributes::IsAttibuteActive(v31, 6) )
  {
    NativeGetMultiplayerQuestInfo(gameswf::fn_call const&)::resendCnt = 0;
    AttributeInt = CRoomAttributes::GetAttributeInt(v31, 5);
    v12 = CRoomAttributes::GetAttributeInt(v31, 6);
    if ( AttributeInt <= 0 )
    {
      v28 = *(void (__fastcall **)(gameswf::as_object *, _BYTE *, _BYTE *))(*(_DWORD *)v6 + 28);
      gameswf::tu_string::tu_string((gameswf::tu_string *)v52, "act");
      v37[1] = 0;
      v37[0] = 0;
      gameswf::as_value::set_string((gameswf::as_value *)v37, "");
      v28(v6, v52, v37);
      gameswf::as_value::drop_refs((gameswf::as_value *)v37);
      if ( v52[0] == -1 )
        gameswf::free_internal(v53);
      v22 = *(void (__fastcall **)(gameswf::as_object *, _BYTE *, _BYTE *))(*(_DWORD *)v6 + 28);
      gameswf::tu_string::tu_string((gameswf::tu_string *)v50, "questName");
      v36[1] = 0;
      v36[0] = 0;
      gameswf::as_value::set_string((gameswf::as_value *)v36, "");
      v22(v6, v50, v36);
      gameswf::as_value::drop_refs((gameswf::as_value *)v36);
      if ( v50[0] == -1 )
        gameswf::free_internal(v51);
      v23 = *(void (__fastcall **)(gameswf::as_object *, _BYTE *, _BYTE *))(*(_DWORD *)v6 + 28);
      gameswf::tu_string::tu_string((gameswf::tu_string *)v48, "questDesc");
      v35[1] = 0;
      v35[0] = 0;
      gameswf::as_value::set_string((gameswf::as_value *)v35, "");
      v23(v6, v48, v35);
      gameswf::as_value::drop_refs((gameswf::as_value *)v35);
      if ( v48[0] == -1 )
        gameswf::free_internal(v49);
    }
    else
    {
      v24 = v12;
      v41._M_finish = (char *)&v41;
      v41._M_start_of_storage._M_data = (char *)&v41;
      std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block(&v41, 0x10u);
      *v41._M_finish = 0;
      v13 = (StringManager *)dword_99F760;
      Constant = PyDataConstants::getConstant((PyDataConstants *)dword_99F758, "StrID", "MENU_ACT");
      String = (const char *)StringManager::getString(v13, Constant);
      StringManager::parse((StringManager *)dword_99F760, (std::string *)&v41, String, AttributeInt);
      if ( v24 < 0 )
        v16 = 14200;
      else
        v16 = 284 * v24;
      v30 = Arrays::v2Quests::members + v16;
      v25 = *(void (__fastcall **)(gameswf::as_object *, _BYTE *, _BYTE *))(*(_DWORD *)v6 + 28);
      gameswf::tu_string::tu_string((gameswf::tu_string *)v58, "act");
      v40[1] = 0;
      v40[0] = 0;
      gameswf::as_value::set_string((gameswf::as_value *)v40, v41._M_start_of_storage._M_data);
      v25(v6, v58, v40);
      gameswf::as_value::drop_refs((gameswf::as_value *)v40);
      if ( v58[0] == -1 )
        gameswf::free_internal(v59);
      v26 = *(void (__fastcall **)(gameswf::as_object *, _BYTE *, _BYTE *))(*(_DWORD *)v6 + 28);
      gameswf::tu_string::tu_string((gameswf::tu_string *)v56, "questName");
      v17 = (const char *)StringManager::getString((StringManager *)dword_99F760, *(_DWORD *)(v30 + 4));
      v39[1] = 0;
      v39[0] = 0;
      gameswf::as_value::set_string((gameswf::as_value *)v39, v17);
      v26(v6, v56, v39);
      gameswf::as_value::drop_refs((gameswf::as_value *)v39);
      if ( v56[0] == -1 )
        gameswf::free_internal(v57);
      v27 = *(void (__fastcall **)(gameswf::as_object *, _BYTE *, _BYTE *))(*(_DWORD *)v6 + 28);
      gameswf::tu_string::tu_string((gameswf::tu_string *)v54, "questDesc");
      v18 = (const char *)StringManager::getString((StringManager *)dword_99F760, *(_DWORD *)(v30 + 8));
      v38[1] = 0;
      v38[0] = 0;
      gameswf::as_value::set_string((gameswf::as_value *)v38, v18);
      v27(v6, v54, v38);
      gameswf::as_value::drop_refs((gameswf::as_value *)v38);
      if ( v54[0] == -1 )
        gameswf::free_internal(v55);
      std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v41);
    }
  }
  else
  {
    v7 = *(void (__fastcall **)(gameswf::as_object *, _BYTE *, _BYTE *))(*(_DWORD *)v6 + 28);
    gameswf::tu_string::tu_string((gameswf::tu_string *)v46, "act");
    v34[1] = 0;
    v34[0] = 0;
    gameswf::as_value::set_string((gameswf::as_value *)v34, "");
    v7(v6, v46, v34);
    gameswf::as_value::drop_refs((gameswf::as_value *)v34);
    if ( v46[0] == -1 )
      gameswf::free_internal(v47);
    v8 = *(void (__fastcall **)(gameswf::as_object *, _BYTE *, _BYTE *))(*(_DWORD *)v6 + 28);
    gameswf::tu_string::tu_string((gameswf::tu_string *)v44, "questName");
    v33[1] = 0;
    v33[0] = 0;
    gameswf::as_value::set_string((gameswf::as_value *)v33, "");
    v8(v6, v44, v33);
    gameswf::as_value::drop_refs((gameswf::as_value *)v33);
    if ( v44[0] == -1 )
      gameswf::free_internal(p);
    v9 = *(void (__fastcall **)(gameswf::as_object *, _BYTE *, _BYTE *))(*(_DWORD *)v6 + 28);
    gameswf::tu_string::tu_string((gameswf::tu_string *)v42, "questDesc");
    v32[1] = 0;
    v32[0] = 0;
    gameswf::as_value::set_string((gameswf::as_value *)v32, "");
    v9(v6, v42, v32);
    v10 = (CMessaging *)gameswf::as_value::drop_refs((gameswf::as_value *)v32);
    if ( v42[0] == -1 )
      gameswf::free_internal(v43);
    if ( NativeGetMultiplayerQuestInfo(gameswf::fn_call const&)::resendCnt-- <= 0 )
    {
      NativeGetMultiplayerQuestInfo(gameswf::fn_call const&)::resendCnt = 30;
      v19 = (CMessaging *)CMessaging::Get(v10);
      Message = (CMessage *)CMessage::CreateMessage(
                              (CMessage *)"CMsgAskResendAttributes",
                              (const char *)&dword_0 + 1,
                              v20);
      CMessaging::SendMsg(v19, Message);
    }
  }
  gameswf::as_value::set_as_object(*(gameswf::as_value **)a1, v6);
  CRoomAttributes::~CRoomAttributes((CRoomAttributes *)v31);
}


// ===== 450b78 NativeGetMultiplayerRoomInfo(gameswf::fn_call const&) =====
void __fastcall NativeGetMultiplayerRoomInfo(gameswf::as_value **a1)
{
  CNetPlayerManager *NetPlayerMgr; // r0
  CNetPlayerManager *v3; // r0
  int PlayerIdList; // r0
  int v5; // r3
  int v6; // r0
  CMatching *Instance; // r0
  std::__node_alloc *v8; // r7
  void (__fastcall *v9)(gameswf::as_object *, _BYTE *, _BYTE *); // r11
  void (__fastcall *v10)(gameswf::as_object *, _BYTE *, _BYTE *); // r11
  void (__fastcall *v11)(gameswf::as_object *, _BYTE *, _BYTE *); // r11
  void (__fastcall *v12)(gameswf::as_object *, _BYTE *, _BYTE *); // r11
  void (__fastcall *v13)(gameswf::as_object *, _BYTE *, _BYTE *); // r11
  void (__fastcall *v14)(gameswf::as_object *, _BYTE *, _BYTE *); // r10
  int v15; // r10
  void (__fastcall *v16)(gameswf::as_object *, _BYTE *, _BYTE *); // r8
  const char *v17; // r0
  std::__node_alloc *v18; // r3
  CNetPlayerManager *v19; // r0
  const CNetPlayerInfo *v20; // r0
  CNetPlayerManager *v21; // r0
  CNetPlayerManager *v22; // r0
  char *PlayerByInternalID; // r6
  int v24; // r5
  gameswf::player *v25; // r8
  _BYTE *v26; // r0
  gameswf::as_object *v27; // r5
  char *v28; // r10
  void (__fastcall *v29)(gameswf::as_object *, _BYTE *, _BYTE *); // r9
  int v30; // r0
  CNetPlayerInfo *v31; // r0
  void (__fastcall *v32)(gameswf::as_object *, _BYTE *, _BYTE *); // r11
  void (__fastcall *v33)(gameswf::as_object *, _BYTE *, _BYTE *); // r11
  void (__fastcall *v34)(gameswf::as_object *, _BYTE *, _BYTE *); // r11
  void (__fastcall *v35)(gameswf::as_object *, _BYTE *, _BYTE *); // r11
  void (__fastcall *v36)(gameswf::as_object *, _BYTE *, _BYTE *); // r8
  void **v37; // r5
  void (__fastcall *v38)(gameswf::as_object *, void **, gameswf::as_value *); // r10
  gameswf::as_value *v39; // r8
  gameswf::as_value *v40; // r0
  const char *v41; // r1
  CMatching *v42; // r0
  CMatchingGLLive *v43; // r0
  void (__fastcall *v44)(gameswf::as_object *, void **, _BYTE *); // r8
  void **v45; // r9
  void (__fastcall *v46)(gameswf::as_object *, void **, std::priv::_String_base<char,std::allocator<char> > *); // r8
  void (__fastcall *v47)(gameswf::as_object *, _BYTE *, _BYTE *); // r8
  void (__fastcall *v48)(gameswf::as_object *, _BYTE *, _BYTE *); // r5
  double v49; // r2
  void (__fastcall *v50)(gameswf::as_object *, _BYTE *, _BYTE *); // r8
  const char *String; // r0
  CMatching *v52; // r0
  int *v53; // r11
  void (__fastcall *v55)(gameswf::as_object *, void **, _BYTE *); // r10
  void (__fastcall *v56)(gameswf::as_object *, void **, _BYTE *); // r11
  int i; // r5
  gameswf::ref_counted *v58; // r0
  CNetPlayerManager *v59; // r0
  CNetPlayerManager *v60; // r0
  const CNetPlayerInfo *LocalPlayer; // r0
  void (__fastcall *v62)(gameswf::as_object *, void **, _BYTE *); // r11
  void (__fastcall *v63)(gameswf::as_object *, void **, _BYTE *); // r11
  CMatching *GLLiveMemberIdList; // r0
  int v65; // r0
  int v66; // r0
  CMatchingGLLive *v67; // r0
  int MemberByMemberId; // r5
  int v69; // r1
  int v70; // r2
  int v71; // r3
  int v72; // r1
  int v73; // r2
  int v74; // r3
  gameswf::player *player; // r8
  gameswf::as_object *v76; // r6
  void (__fastcall *v77)(gameswf::as_object *, _BYTE *, _BYTE *); // r10
  void (__fastcall *v78)(gameswf::as_object *, _BYTE *, _BYTE *); // r8
  double v79; // r2
  CMatching *v80; // r0
  CMatchingGLLive *v81; // r0
  void (__fastcall *v82)(gameswf::as_object *, void **, _BYTE *); // r10
  void (__fastcall *v83)(gameswf::as_object *, void **, _BYTE *); // r8
  int v84; // [sp+0h] [bp-E2Ch]
  void (__fastcall *v85)(gameswf::as_object *, _BYTE *, _BYTE *); // [sp+0h] [bp-E2Ch]
  void (__fastcall *v86)(gameswf::as_object *, void **, _BYTE *); // [sp+0h] [bp-E2Ch]
  void (__fastcall *v87)(gameswf::as_object *, void **, _BYTE *); // [sp+0h] [bp-E2Ch]
  void (__fastcall *v88)(gameswf::as_object *, void **, _BYTE *); // [sp+0h] [bp-E2Ch]
  void (__fastcall *v89)(gameswf::as_object *, void **, _BYTE *); // [sp+0h] [bp-E2Ch]
  char *v90; // [sp+4h] [bp-E28h]
  void (__fastcall *v91)(gameswf::as_object *, void **, _BYTE *); // [sp+4h] [bp-E28h]
  void (__fastcall *v92)(gameswf::as_object *, void **, _BYTE *); // [sp+4h] [bp-E28h]
  void (__fastcall *v93)(gameswf::as_object *, void **, _BYTE *); // [sp+4h] [bp-E28h]
  void (__fastcall *v94)(gameswf::as_object *, void **, _BYTE *); // [sp+4h] [bp-E28h]
  char *v95; // [sp+8h] [bp-E24h]
  bool v96[4]; // [sp+Ch] [bp-E20h]
  bool v97[4]; // [sp+Ch] [bp-E20h]
  std::priv::_String_base<char,std::allocator<char> > *v98; // [sp+10h] [bp-E1Ch]
  CNetPlayerInfo *v99; // [sp+14h] [bp-E18h]
  int v100; // [sp+18h] [bp-E14h]
  gameswf::fn_call *v101; // [sp+1Ch] [bp-E10h]
  gameswf::fn_call *v102; // [sp+1Ch] [bp-E10h]
  int v103; // [sp+24h] [bp-E08h]
  CNetPlayerInfo *v104; // [sp+24h] [bp-E08h]
  int v105; // [sp+2Ch] [bp-E00h]
  char *v106; // [sp+30h] [bp-DFCh]
  gameswf::as_array *v107; // [sp+40h] [bp-DECh]
  int *v108; // [sp+5Ch] [bp-DD0h] BYREF
  int *v109; // [sp+60h] [bp-DCCh]
  _BYTE v110[4]; // [sp+6Ch] [bp-DC0h] BYREF
  gameswf::as_object *v111; // [sp+70h] [bp-DBCh]
  _BYTE v112[12]; // [sp+78h] [bp-DB4h] BYREF
  _BYTE v113[4]; // [sp+84h] [bp-DA8h] BYREF
  unsigned __int64 v114; // [sp+88h] [bp-DA4h]
  _BYTE v115[8]; // [sp+90h] [bp-D9Ch] BYREF
  _BYTE v116[12]; // [sp+9Ch] [bp-D90h] BYREF
  _BYTE v117[12]; // [sp+A8h] [bp-D84h] BYREF
  _BYTE v118[12]; // [sp+B4h] [bp-D78h] BYREF
  _BYTE v119[8]; // [sp+C0h] [bp-D6Ch] BYREF
  _BYTE v120[12]; // [sp+CCh] [bp-D60h] BYREF
  _BYTE v121[12]; // [sp+D8h] [bp-D54h] BYREF
  _BYTE v122[12]; // [sp+E4h] [bp-D48h] BYREF
  _BYTE v123[8]; // [sp+F0h] [bp-D3Ch] BYREF
  _BYTE v124[12]; // [sp+FCh] [bp-D30h] BYREF
  _BYTE v125[12]; // [sp+108h] [bp-D24h] BYREF
  int v126; // [sp+114h] [bp-D18h] BYREF
  _BYTE v127[8]; // [sp+120h] [bp-D0Ch] BYREF
  _BYTE v128[12]; // [sp+12Ch] [bp-D00h] BYREF
  _BYTE v129[4]; // [sp+138h] [bp-CF4h] BYREF
  unsigned __int64 v130; // [sp+13Ch] [bp-CF0h]
  _BYTE v131[4]; // [sp+144h] [bp-CE8h] BYREF
  _BYTE v132[4]; // [sp+150h] [bp-CDCh] BYREF
  gameswf::ref_counted *v133; // [sp+154h] [bp-CD8h]
  _BYTE v134[4]; // [sp+15Ch] [bp-CD0h] BYREF
  gameswf::as_object *v135; // [sp+160h] [bp-CCCh]
  _BYTE v136[12]; // [sp+168h] [bp-CC4h] BYREF
  _BYTE v137[4]; // [sp+174h] [bp-CB8h] BYREF
  _BYTE v138[4]; // [sp+180h] [bp-CACh] BYREF
  double v139; // [sp+184h] [bp-CA8h]
  _BYTE v140[12]; // [sp+18Ch] [bp-CA0h] BYREF
  _BYTE v141[12]; // [sp+198h] [bp-C94h] BYREF
  _BYTE v142[12]; // [sp+1A4h] [bp-C88h] BYREF
  _BYTE v143[8]; // [sp+1B0h] [bp-C7Ch] BYREF
  _BYTE v144[12]; // [sp+1BCh] [bp-C70h] BYREF
  _BYTE v145[12]; // [sp+1C8h] [bp-C64h] BYREF
  _BYTE v146[4]; // [sp+1D4h] [bp-C58h] BYREF
  _BYTE v147[8]; // [sp+1E0h] [bp-C4Ch] BYREF
  _BYTE v148[12]; // [sp+1ECh] [bp-C40h] BYREF
  _BYTE v149[12]; // [sp+1F8h] [bp-C34h] BYREF
  _BYTE v150[4]; // [sp+204h] [bp-C28h] BYREF
  _BYTE v151[8]; // [sp+210h] [bp-C1Ch] BYREF
  _BYTE v152[12]; // [sp+21Ch] [bp-C10h] BYREF
  _BYTE v153[12]; // [sp+228h] [bp-C04h] BYREF
  _BYTE v154[12]; // [sp+234h] [bp-BF8h] BYREF
  _BYTE v155[8]; // [sp+240h] [bp-BECh] BYREF
  _BYTE v156[12]; // [sp+24Ch] [bp-BE0h] BYREF
  _BYTE v157[12]; // [sp+258h] [bp-BD4h] BYREF
  _BYTE v158[4]; // [sp+264h] [bp-BC8h] BYREF
  double v159; // [sp+268h] [bp-BC4h]
  _BYTE v160[8]; // [sp+270h] [bp-BBCh] BYREF
  std::__node_alloc *v161; // [sp+27Ch] [bp-BB0h] BYREF
  std::__node_alloc *v162; // [sp+280h] [bp-BACh]
  unsigned int v163; // [sp+284h] [bp-BA8h]
  double v164; // [sp+288h] [bp-BA4h]
  double v165; // [sp+290h] [bp-B9Ch] BYREF
  int v166; // [sp+29Ch] [bp-B90h] BYREF
  _BYTE v167[8]; // [sp+2A0h] [bp-B8Ch] BYREF
  int v168; // [sp+418h] [bp-A14h]
  std::string v169; // [sp+508h] [bp-924h] BYREF
  _DWORD v170[162]; // [sp+528h] [bp-904h] BYREF
  _BYTE v171[640]; // [sp+7B0h] [bp-67Ch] BYREF
  int v172; // [sp+A3Ch] [bp-3F0h]
  int v173; // [sp+A40h] [bp-3ECh]
  int v174; // [sp+A44h] [bp-3E8h]
  std::priv::_String_base<char,std::allocator<char> > v175; // [sp+A48h] [bp-3E4h] BYREF
  int v176; // [sp+A60h] [bp-3CCh]
  _DWORD v177[8]; // [sp+A64h] [bp-3C8h] BYREF
  char v178; // [sp+A84h] [bp-3A8h]
  int v179; // [sp+A88h] [bp-3A4h]
  char v180; // [sp+A8Ch] [bp-3A0h]
  std::priv::_String_base<char,std::allocator<char> > v181; // [sp+A90h] [bp-39Ch] BYREF
  std::priv::_String_base<char,std::allocator<char> > v182; // [sp+AA8h] [bp-384h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v183; // [sp+AC0h] [bp-36Ch] BYREF
  std::string v184; // [sp+AD8h] [bp-354h] BYREF
  _BYTE v185[8]; // [sp+AF0h] [bp-33Ch] BYREF
  void *v186; // [sp+AFCh] [bp-330h]
  _BYTE v187[8]; // [sp+B04h] [bp-328h] BYREF
  void *v188; // [sp+B10h] [bp-31Ch]
  _BYTE v189[8]; // [sp+B18h] [bp-314h] BYREF
  void *v190; // [sp+B24h] [bp-308h]
  _BYTE v191[20]; // [sp+B2Ch] [bp-300h] BYREF
  void *v192[4]; // [sp+B40h] [bp-2ECh] BYREF
  void *v193[3]; // [sp+B54h] [bp-2D8h] BYREF
  void *v194[2]; // [sp+B68h] [bp-2C4h] BYREF
  _BYTE v195[20]; // [sp+B7Ch] [bp-2B0h] BYREF
  void *v196[4]; // [sp+B90h] [bp-29Ch] BYREF
  void *v197[3]; // [sp+BA4h] [bp-288h] BYREF
  void *v198[2]; // [sp+BB8h] [bp-274h] BYREF
  _BYTE v199[20]; // [sp+BCCh] [bp-260h] BYREF
  _BYTE v200[16]; // [sp+BE0h] [bp-24Ch] BYREF
  _BYTE v201[12]; // [sp+BF4h] [bp-238h] BYREF
  _BYTE v202[8]; // [sp+C08h] [bp-224h] BYREF
  void *v203[5]; // [sp+C1Ch] [bp-210h] BYREF
  _BYTE v204[8]; // [sp+C30h] [bp-1FCh] BYREF
  void *v205; // [sp+C3Ch] [bp-1F0h]
  _BYTE v206[8]; // [sp+C44h] [bp-1E8h] BYREF
  void *v207; // [sp+C50h] [bp-1DCh]
  _BYTE v208[8]; // [sp+C58h] [bp-1D4h] BYREF
  void *v209; // [sp+C64h] [bp-1C8h]
  _BYTE v210[8]; // [sp+C6Ch] [bp-1C0h] BYREF
  void *v211; // [sp+C78h] [bp-1B4h]
  _BYTE v212[8]; // [sp+C80h] [bp-1ACh] BYREF
  void *v213; // [sp+C8Ch] [bp-1A0h]
  _BYTE v214[8]; // [sp+C94h] [bp-198h] BYREF
  void *p; // [sp+CA0h] [bp-18Ch]
  _BYTE v216[8]; // [sp+CA8h] [bp-184h] BYREF
  void *v217; // [sp+CB4h] [bp-178h]
  _BYTE v218[8]; // [sp+CBCh] [bp-170h] BYREF
  void *v219; // [sp+CC8h] [bp-164h]
  _BYTE v220[8]; // [sp+CD0h] [bp-15Ch] BYREF
  void *v221; // [sp+CDCh] [bp-150h]
  _BYTE v222[8]; // [sp+CE4h] [bp-148h] BYREF
  void *v223; // [sp+CF0h] [bp-13Ch]
  void *v224[2]; // [sp+CF8h] [bp-134h] BYREF
  _BYTE v225[8]; // [sp+D0Ch] [bp-120h] BYREF
  void *v226; // [sp+D18h] [bp-114h]
  _BYTE v227[8]; // [sp+D20h] [bp-10Ch] BYREF
  void *v228; // [sp+D2Ch] [bp-100h]
  _BYTE v229[8]; // [sp+D34h] [bp-F8h] BYREF
  void *v230; // [sp+D40h] [bp-ECh]
  void *v231[2]; // [sp+D48h] [bp-E4h] BYREF
  _BYTE v232[8]; // [sp+D5Ch] [bp-D0h] BYREF
  void *v233; // [sp+D68h] [bp-C4h]
  _BYTE v234[8]; // [sp+D70h] [bp-BCh] BYREF
  void *v235; // [sp+D7Ch] [bp-B0h]
  void *v236[3]; // [sp+D84h] [bp-A8h] BYREF
  void *v237[2]; // [sp+D98h] [bp-94h] BYREF
  void *v238[5]; // [sp+DACh] [bp-80h] BYREF
  void *v239[4]; // [sp+DC0h] [bp-6Ch] BYREF
  void *v240[3]; // [sp+DD4h] [bp-58h] BYREF
  void *v241[2]; // [sp+DE8h] [bp-44h] BYREF
  _BYTE v242[8]; // [sp+DFCh] [bp-30h] BYREF
  void *v243; // [sp+E08h] [bp-24h]
  _BYTE v244[8]; // [sp+E10h] [bp-1Ch] BYREF
  void *v245; // [sp+E1Ch] [bp-10h]
  std::string v246; // 0:kr00_24.24

  if ( *(_BYTE *)(GetOnline() + 5) && a1[4] == (gameswf::as_value *)((char *)&dword_0 + 1) )
  {
    NetPlayerMgr = (CNetPlayerManager *)GetNetPlayerMgr();
    CNetPlayerManager::GetPlayerCount(NetPlayerMgr);
    v3 = (CNetPlayerManager *)GetNetPlayerMgr();
    PlayerIdList = CNetPlayerManager::GetPlayerIdList(v3);
    std::vector<int>::vector(&v161, PlayerIdList);
    v184._M_finish = (char *)&v184;
    v184._M_start_of_storage._M_data = (char *)&v184;
    std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block(&v184, 0x10u);
    *v184._M_finish = 0;
    gameswf::as_value::set_bool(*a1, 0);
    if ( (int)a1[4] > 0 )
    {
      v5 = *(_DWORD *)a1[3] + 12 * (_DWORD)a1[5];
      v6 = *(_BYTE *)(v5 + 1) == 5 ? *(_DWORD *)(v5 + 4) : 0;
      v107 = (gameswf::as_array *)gameswf::cast_to<gameswf::as_array>(v6);
      if ( v107 )
      {
        Instance = (CMatching *)OnlineSingleton<OnlineGameState>::GetInstance();
        if ( *((_DWORD *)Instance + 13) == 3 )
        {
          CMatching::Get(Instance);
          GLLiveMemberIdList = (CMatching *)CMatchingGLLive::GetGLLiveMemberIdList((CMatchingGLLive *)&v108);
          v65 = CMatching::Get(GLLiveMemberIdList);
          v66 = (*(int (__fastcall **)(int))(*(_DWORD *)v65 + 108))(v65);
          v53 = v108;
          v104 = (CNetPlayerInfo *)v66;
          if ( v108 != v109 )
          {
            v52 = (CMatching *)v177;
            v102 = (gameswf::fn_call *)a1;
            do
            {
              v67 = (CMatchingGLLive *)CMatching::Get(v52);
              MemberByMemberId = CMatchingGLLive::GetMemberByMemberId(v67, *v53);
              v172 = *(_DWORD *)MemberByMemberId;
              v173 = *(_DWORD *)(MemberByMemberId + 4);
              v174 = *(_DWORD *)(MemberByMemberId + 8);
              std::string::string((std::string *)&v175, (const std::string *)(MemberByMemberId + 12));
              v176 = *(_DWORD *)(MemberByMemberId + 36);
              v69 = *(_DWORD *)(MemberByMemberId + 44);
              v70 = *(_DWORD *)(MemberByMemberId + 48);
              v71 = *(_DWORD *)(MemberByMemberId + 52);
              v177[0] = *(_DWORD *)(MemberByMemberId + 40);
              v177[1] = v69;
              v177[2] = v70;
              v177[3] = v71;
              v72 = *(_DWORD *)(MemberByMemberId + 60);
              v73 = *(_DWORD *)(MemberByMemberId + 64);
              v74 = *(_DWORD *)(MemberByMemberId + 68);
              v177[4] = *(_DWORD *)(MemberByMemberId + 56);
              v177[5] = v72;
              v177[6] = v73;
              v177[7] = v74;
              v178 = *(_DWORD *)(MemberByMemberId + 72);
              v179 = *(_DWORD *)(MemberByMemberId + 76);
              v180 = *(_BYTE *)(MemberByMemberId + 80);
              if ( v172 != -1 )
              {
                LODWORD(v165) = 1;
                v166 = 0;
                sscanf(v175._M_start_of_storage._M_data, "%d %d", &v166, &v165);
                v99 = (CNetPlayerInfo *)v172;
                player = (gameswf::player *)gameswf::fn_call::get_player(v102);
                v76 = (gameswf::as_object *)operator new(56, 0);
                gameswf::as_object::as_object(v76, player);
                v77 = *(void (__fastcall **)(gameswf::as_object *, _BYTE *, _BYTE *))(*(_DWORD *)v76 + 28);
                gameswf::tu_string::tu_string((gameswf::tu_string *)v206, "name");
                v131[1] = 0;
                v131[0] = 0;
                gameswf::as_value::set_string((gameswf::as_value *)v131, (const char *)v177);
                v77(v76, v206, v131);
                gameswf::as_value::drop_refs((gameswf::as_value *)v131);
                if ( v206[0] == 255 )
                  gameswf::free_internal(v207);
                v78 = *(void (__fastcall **)(gameswf::as_object *, _BYTE *, _BYTE *))(*(_DWORD *)v76 + 28);
                gameswf::tu_string::tu_string((gameswf::tu_string *)v204, "level");
                v129[0] = 0;
                v129[1] = 2;
                v164 = (double)SLODWORD(v165);
                v79 = (double)SLODWORD(v165);
                v130 = __PAIR64__(HIDWORD(v164), LODWORD(v79));
                v78(v76, v204, v129);
                v80 = (CMatching *)gameswf::as_value::drop_refs((gameswf::as_value *)v129);
                if ( v204[0] == 255 )
                  gameswf::free_internal(v205);
                v81 = (CMatchingGLLive *)CMatching::Get(v80);
                switch ( CMatchingGLLive::IsMyFriend(v81, (char *)v177) )
                {
                  case 0xFFFFFFFF:
                    v82 = *(void (__fastcall **)(gameswf::as_object *, void **, _BYTE *))(*(_DWORD *)v76 + 28);
                    gameswf::tu_string::tu_string((gameswf::tu_string *)v203, "Invitation");
                    gameswf::as_value::as_value((gameswf::as_value *)v128, "None");
                    v82(v76, v203, v128);
                    gameswf::as_value::drop_refs((gameswf::as_value *)v128);
                    gameswf::tu_string::~tu_string(v203);
                    goto LABEL_59;
                  case 0:
                    v37 = (void **)v202;
                    v38 = *(void (__fastcall **)(gameswf::as_object *, void **, gameswf::as_value *))(*(_DWORD *)v76 + 28);
                    gameswf::tu_string::tu_string((gameswf::tu_string *)v202, "Invitation");
                    v39 = (gameswf::as_value *)v127;
                    v41 = "None";
                    v40 = (gameswf::as_value *)v127;
                    goto LABEL_58;
                  case 1:
                    v37 = (void **)v201;
                    v38 = *(void (__fastcall **)(gameswf::as_object *, void **, gameswf::as_value *))(*(_DWORD *)v76 + 28);
                    gameswf::tu_string::tu_string((gameswf::tu_string *)v201, "Invitation");
                    v39 = (gameswf::as_value *)&v126;
                    v41 = "Friend";
                    v40 = (gameswf::as_value *)&v126;
                    goto LABEL_58;
                  case 2:
                    v37 = (void **)v200;
                    v38 = *(void (__fastcall **)(gameswf::as_object *, void **, gameswf::as_value *))(*(_DWORD *)v76 + 28);
                    gameswf::tu_string::tu_string((gameswf::tu_string *)v200, "Invitation");
                    v39 = (gameswf::as_value *)v125;
                    v40 = (gameswf::as_value *)v125;
                    v41 = "Idle";
                    goto LABEL_58;
                  default:
                    v37 = (void **)v199;
                    v38 = *(void (__fastcall **)(gameswf::as_object *, void **, gameswf::as_value *))(*(_DWORD *)v76 + 28);
                    gameswf::tu_string::tu_string((gameswf::tu_string *)v199, "Invitation");
                    v39 = (gameswf::as_value *)v124;
                    v41 = "Idle";
                    v40 = (gameswf::as_value *)v124;
LABEL_58:
                    gameswf::as_value::as_value(v40, v41);
                    v38(v76, v37, v39);
                    gameswf::as_value::drop_refs(v39);
                    gameswf::tu_string::~tu_string(v37);
LABEL_59:
                    if ( v104 == v99 )
                    {
                      v94 = *(void (__fastcall **)(gameswf::as_object *, void **, _BYTE *))(*(_DWORD *)v76 + 28);
                      gameswf::tu_string::tu_string((gameswf::tu_string *)v198, "playerReady");
                      v123[0] = 0;
                      v123[1] = 1;
                      v123[4] = 1;
                      v94(v76, v198, v123);
                      gameswf::as_value::drop_refs((gameswf::as_value *)v123);
                      gameswf::tu_string::~tu_string(v198);
                      v83 = *(void (__fastcall **)(gameswf::as_object *, void **, _BYTE *))(*(_DWORD *)v76 + 28);
                      gameswf::tu_string::tu_string((gameswf::tu_string *)v192, "Kick");
                      v117[0] = 0;
                      v117[1] = 1;
                      v117[4] = 0;
                      v83(v76, v192, v117);
                      gameswf::as_value::drop_refs((gameswf::as_value *)v117);
                      gameswf::tu_string::~tu_string(v192);
                      v45 = (void **)v191;
                      v98 = (std::priv::_String_base<char,std::allocator<char> > *)v116;
                      v46 = *(void (__fastcall **)(gameswf::as_object *, void **, std::priv::_String_base<char,std::allocator<char> > *))(*(_DWORD *)v76 + 28);
                      gameswf::tu_string::tu_string((gameswf::tu_string *)v191, "Slot");
                      v116[1] = 1;
                      v116[4] = 0;
                      v116[0] = 0;
                      goto LABEL_62;
                    }
                    v91 = *(void (__fastcall **)(gameswf::as_object *, void **, _BYTE *))(*(_DWORD *)v76 + 28);
                    gameswf::tu_string::tu_string((gameswf::tu_string *)v197, "playerReady");
                    v122[4] = 0;
                    v122[0] = 0;
                    v122[1] = 1;
                    v91(v76, v197, v122);
                    gameswf::as_value::drop_refs((gameswf::as_value *)v122);
                    gameswf::tu_string::~tu_string(v197);
                    v43 = (CMatchingGLLive *)CMatching::Get(v42);
                    if ( CMatchingGLLive::IsHost(v43) )
                    {
                      v44 = *(void (__fastcall **)(gameswf::as_object *, void **, _BYTE *))(*(_DWORD *)v76 + 28);
                      gameswf::tu_string::tu_string((gameswf::tu_string *)v196, "Kick");
                      v121[0] = 0;
                      v121[1] = 1;
                      v121[4] = 1;
                      v44(v76, v196, v121);
                      gameswf::as_value::drop_refs((gameswf::as_value *)v121);
                      gameswf::tu_string::~tu_string(v196);
                      v45 = (void **)v195;
                      v98 = (std::priv::_String_base<char,std::allocator<char> > *)v120;
                      v46 = *(void (__fastcall **)(gameswf::as_object *, void **, std::priv::_String_base<char,std::allocator<char> > *))(*(_DWORD *)v76 + 28);
                      gameswf::tu_string::tu_string((gameswf::tu_string *)v195, "Slot");
                      v120[1] = 1;
                      v120[4] = 0;
                      v120[0] = 0;
LABEL_62:
                      v46(v76, v45, v98);
                      gameswf::as_value::drop_refs((gameswf::as_value *)v98);
                      gameswf::tu_string::~tu_string(v45);
                      goto LABEL_63;
                    }
                    v92 = *(void (__fastcall **)(gameswf::as_object *, void **, _BYTE *))(*(_DWORD *)v76 + 28);
                    gameswf::tu_string::tu_string((gameswf::tu_string *)v194, "Kick");
                    v119[0] = 0;
                    v119[1] = 1;
                    v119[4] = 0;
                    v92(v76, v194, v119);
                    gameswf::as_value::drop_refs((gameswf::as_value *)v119);
                    gameswf::tu_string::~tu_string(v194);
                    v93 = *(void (__fastcall **)(gameswf::as_object *, void **, _BYTE *))(*(_DWORD *)v76 + 28);
                    gameswf::tu_string::tu_string((gameswf::tu_string *)v193, "Slot");
                    v118[4] = 0;
                    v118[1] = 1;
                    v118[0] = 0;
                    v93(v76, v193, v118);
                    gameswf::as_value::drop_refs((gameswf::as_value *)v118);
                    gameswf::tu_string::~tu_string(v193);
LABEL_63:
                    v47 = *(void (__fastcall **)(gameswf::as_object *, _BYTE *, _BYTE *))(*(_DWORD *)v76 + 28);
                    gameswf::tu_string::tu_string((gameswf::tu_string *)v189, "SlotStr");
                    v115[1] = 0;
                    v115[0] = 0;
                    gameswf::as_value::set_string((gameswf::as_value *)v115, "");
                    v47(v76, v189, v115);
                    gameswf::as_value::drop_refs((gameswf::as_value *)v115);
                    if ( v189[0] == 255 )
                      gameswf::free_internal(v190);
                    v48 = *(void (__fastcall **)(gameswf::as_object *, _BYTE *, _BYTE *))(*(_DWORD *)v76 + 28);
                    gameswf::tu_string::tu_string((gameswf::tu_string *)v187, "PlayerId");
                    v113[0] = 0;
                    v113[1] = 2;
                    v164 = (double)(int)v99;
                    v49 = (double)(int)v99;
                    v114 = __PAIR64__(HIDWORD(v164), LODWORD(v49));
                    v48(v76, v187, v113);
                    gameswf::as_value::drop_refs((gameswf::as_value *)v113);
                    if ( v187[0] == 255 )
                      gameswf::free_internal(v188);
                    v50 = *(void (__fastcall **)(gameswf::as_object *, _BYTE *, _BYTE *))(*(_DWORD *)v76 + 28);
                    gameswf::tu_string::tu_string((gameswf::tu_string *)v185, "Class");
                    String = (const char *)StringManager::getString(
                                             (StringManager *)dword_99F760,
                                             *(_DWORD *)(Arrays::CharacterTable::members + 900 * v166 + 24));
                    v112[1] = 0;
                    v112[0] = 0;
                    gameswf::as_value::set_string((gameswf::as_value *)v112, String);
                    v50(v76, v185, v112);
                    gameswf::as_value::drop_refs((gameswf::as_value *)v112);
                    if ( v185[0] == 255 )
                      gameswf::free_internal(v186);
                    v110[0] = 0;
                    v110[1] = 5;
                    v111 = v76;
                    gameswf::ref_counted::add_ref(v76);
                    gameswf::as_array::push(v107, (const gameswf::as_value *)v110);
                    gameswf::as_value::drop_refs((gameswf::as_value *)v110);
                    break;
                }
              }
              v176 = 0;
              v172 = -1;
              std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v175);
              ++v53;
            }
            while ( v53 != v109 );
            a1 = (gameswf::as_value **)v102;
          }
          std::vector<int>::~vector((int)&v108);
        }
        else
        {
          CNetPlayerInfo::CNetPlayerInfo((CNetPlayerInfo *)v171);
          if ( *(_BYTE *)(OnlineSingleton<OnlineGameState>::GetInstance() + 36)
            && (v59 = (CNetPlayerManager *)GetNetPlayerMgr(), CNetPlayerManager::IsInitialized(v59)) )
          {
            v103 = *(_DWORD *)(GetNetPlayerMgr() + 368);
            v60 = (CNetPlayerManager *)GetNetPlayerMgr();
            LocalPlayer = (const CNetPlayerInfo *)CNetPlayerManager::GetLocalPlayer(v60, 0);
            CNetPlayerInfo::CNetPlayerInfo((CNetPlayerInfo *)v170, LocalPlayer);
            v105 = v170[104];
            CNetPlayerInfo::~CNetPlayerInfo((CNetPlayerInfo *)v170);
          }
          else
          {
            v105 = -1;
            v103 = -1;
          }
          if ( v161 != v162 )
          {
            v95 = (_BYTE *)(elf_hash_bucket + 14104);
            v8 = v161 + 4;
            v100 = 0;
            v106 = (char *)a1;
            do
            {
              v19 = (CNetPlayerManager *)GetNetPlayerMgr();
              v20 = (const CNetPlayerInfo *)CNetPlayerManager::GetPlayer(v19, *(_DWORD *)&v8[-4].gap0, 0);
              CNetPlayerInfo::CNetPlayerInfo((CNetPlayerInfo *)v167, v20);
              std::string::string((std::string *)&v183, &v169);
              std::string::_M_assign(&v184, v183._M_start_of_storage._M_data, v183._M_finish);
              std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v183);
              v21 = (CNetPlayerManager *)GetNetPlayerMgr();
              *(_DWORD *)v96 = *(_DWORD *)(CNetPlayerManager::GetPlayer(v21, *(_DWORD *)&v8[-4].gap0, 0) + 416);
              v22 = (CNetPlayerManager *)GetNetPlayerMgr();
              v101 = *(gameswf::fn_call **)(CNetPlayerManager::GetPlayer(v22, *(_DWORD *)&v8[-4].gap0, 0) + 376);
              PlayerByInternalID = PlayerManager::GetPlayerByInternalID((PlayerManager *)dword_99F76C, v168, 0);
              if ( *((_DWORD *)PlayerByInternalID + 412) != -1 )
              {
                v24 = *((_DWORD *)v106 + 3);
                v25 = *(gameswf::player **)(v24 + 104);
                if ( v25 )
                {
                  v26 = *(_BYTE **)(v24 + 100);
                  if ( !v26[4] )
                  {
                    if ( (*(_DWORD *)v26)-- == 1 )
                      gameswf::free_internal(v26);
                    v25 = nullptr;
                    *(_DWORD *)(v24 + 104) = 0;
                    *(_DWORD *)(v24 + 100) = 0;
                  }
                }
                v27 = (gameswf::as_object *)operator new(56, 0);
                gameswf::as_object::as_object(v27, v25);
                v84 = *(_DWORD *)(*(_DWORD *)v27 + 28);
                gameswf::tu_string::tu_string((gameswf::tu_string *)v244, "name");
                v28 = (char *)dword_99F760;
                std::string::string((std::string *)&v182, (const std::string *)PlayerByInternalID + 30);
                v246._M_buffers._M_end_of_storage = v28;
                *(_DWORD *)&v246._M_buffers._M_static_buf[4] = &v182;
                *(_DWORD *)&v246._M_buffers._M_static_buf[8] = 0;
                *(_DWORD *)&v246._M_buffers._M_static_buf[12] = v84;
                v246._M_finish = v90;
                v246._M_start_of_storage._M_data = v95;
                StringManager::formatForMulti((std::string *)&v181, v246, v96[0]);
                v160[1] = 0;
                v160[0] = 0;
                gameswf::as_value::set_string((gameswf::as_value *)v160, v181._M_start_of_storage._M_data);
                v85(v27, v244, v160);
                gameswf::as_value::drop_refs((gameswf::as_value *)v160);
                std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v181);
                std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v182);
                if ( v244[0] == -1 )
                  gameswf::free_internal(v245);
                v29 = *(void (__fastcall **)(gameswf::as_object *, _BYTE *, _BYTE *))(*(_DWORD *)v27 + 28);
                gameswf::tu_string::tu_string((gameswf::tu_string *)v242, "level");
                v30 = *((_DWORD *)PlayerByInternalID + 204);
                v158[0] = 0;
                v158[1] = 2;
                v165 = (double)v30;
                v159 = (double)v30;
                v29(v27, v242, v158);
                gameswf::as_value::drop_refs((gameswf::as_value *)v158);
                if ( v242[0] == -1 )
                  gameswf::free_internal(v243);
                v31 = (CNetPlayerInfo *)PlayerManager::GetLocalPlayer((PlayerManager *)dword_99F76C, 0, 0);
                if ( CNetPlayerInfo::IsHost(v31) )
                {
                  if ( v105 == *(_DWORD *)v97 )
                  {
                    v63 = *(void (__fastcall **)(gameswf::as_object *, void **, _BYTE *))(*(_DWORD *)v27 + 28);
                    gameswf::tu_string::tu_string((gameswf::tu_string *)v241, "playerReady");
                    v157[0] = 0;
                    v157[4] = 1;
                    v157[1] = 1;
                    v63(v27, v241, v157);
                    gameswf::as_value::drop_refs((gameswf::as_value *)v157);
                    gameswf::tu_string::~tu_string(v241);
                  }
                  if ( (gameswf::fn_call *)v103 == v101 )
                  {
                    v86 = *(void (__fastcall **)(gameswf::as_object *, void **, _BYTE *))(*(_DWORD *)v27 + 28);
                    gameswf::tu_string::tu_string((gameswf::tu_string *)v240, "playerReady");
                    v156[1] = 1;
                    v156[4] = 1;
                    v90 = (_BYTE *)(&dword_0 + 1);
                    v156[0] = 0;
                    v86(v27, v240, v156);
                    gameswf::as_value::drop_refs((gameswf::as_value *)v156);
                    gameswf::tu_string::~tu_string(v240);
                    v87 = *(void (__fastcall **)(gameswf::as_object *, void **, _BYTE *))(*(_DWORD *)v27 + 28);
                    gameswf::tu_string::tu_string((gameswf::tu_string *)v239, "Invitation");
                    gameswf::as_value::as_value((gameswf::as_value *)v155, "None");
                    v87(v27, v239, v155);
                    gameswf::as_value::drop_refs((gameswf::as_value *)v155);
                    gameswf::tu_string::~tu_string(v239);
                    v88 = *(void (__fastcall **)(gameswf::as_object *, void **, _BYTE *))(*(_DWORD *)v27 + 28);
                    gameswf::tu_string::tu_string((gameswf::tu_string *)v238, "Kick");
                    v154[4] = 0;
                    v154[1] = 1;
                    v154[0] = 0;
                    v88(v27, v238, v154);
                    gameswf::as_value::drop_refs((gameswf::as_value *)v154);
                    gameswf::tu_string::~tu_string(v238);
                    v55 = *(void (__fastcall **)(gameswf::as_object *, void **, _BYTE *))(*(_DWORD *)v27 + 28);
                    gameswf::tu_string::tu_string((gameswf::tu_string *)v237, "Slot");
                    v153[1] = 1;
                    v153[4] = 0;
                    v153[0] = 0;
                    v55(v27, v237, v153);
                    gameswf::as_value::drop_refs((gameswf::as_value *)v153);
                    gameswf::tu_string::~tu_string(v237);
                    v56 = *(void (__fastcall **)(gameswf::as_object *, void **, _BYTE *))(*(_DWORD *)v27 + 28);
                    gameswf::tu_string::tu_string((gameswf::tu_string *)v236, "SlotStr");
                    gameswf::as_value::as_value((gameswf::as_value *)v152, "");
                    v56(v27, v236, v152);
                    gameswf::as_value::drop_refs((gameswf::as_value *)v152);
                    gameswf::tu_string::~tu_string(v236);
                  }
                  else
                  {
                    v9 = *(void (__fastcall **)(gameswf::as_object *, _BYTE *, _BYTE *))(*(_DWORD *)v27 + 28);
                    gameswf::tu_string::tu_string((gameswf::tu_string *)v234, "playerReady");
                    v151[4] = 0;
                    v151[0] = 0;
                    v151[1] = 1;
                    v9(v27, v234, v151);
                    gameswf::as_value::drop_refs((gameswf::as_value *)v151);
                    if ( v234[0] == -1 )
                      gameswf::free_internal(v235);
                    v10 = *(void (__fastcall **)(gameswf::as_object *, _BYTE *, _BYTE *))(*(_DWORD *)v27 + 28);
                    gameswf::tu_string::tu_string((gameswf::tu_string *)v232, "Invitation");
                    v150[1] = 0;
                    v150[0] = 0;
                    gameswf::as_value::set_string((gameswf::as_value *)v150, "None");
                    v10(v27, v232, v150);
                    gameswf::as_value::drop_refs((gameswf::as_value *)v150);
                    if ( v232[0] == -1 )
                      gameswf::free_internal(v233);
                    if ( *(_DWORD *)(OnlineSingleton<OnlineGameState>::GetInstance() + 52) == 2 )
                    {
                      v62 = *(void (__fastcall **)(gameswf::as_object *, void **, _BYTE *))(*(_DWORD *)v27 + 28);
                      gameswf::tu_string::tu_string((gameswf::tu_string *)v231, "Kick");
                      v149[1] = 1;
                      v149[4] = 0;
                      v149[0] = 0;
                      v62(v27, v231, v149);
                      gameswf::as_value::drop_refs((gameswf::as_value *)v149);
                      gameswf::tu_string::~tu_string(v231);
                    }
                    else
                    {
                      v11 = *(void (__fastcall **)(gameswf::as_object *, _BYTE *, _BYTE *))(*(_DWORD *)v27 + 28);
                      gameswf::tu_string::tu_string((gameswf::tu_string *)v229, "Kick");
                      v148[4] = 1;
                      v148[1] = 1;
                      v148[0] = 0;
                      v11(v27, v229, v148);
                      gameswf::as_value::drop_refs((gameswf::as_value *)v148);
                      if ( v229[0] == -1 )
                        gameswf::free_internal(v230);
                    }
                    v12 = *(void (__fastcall **)(gameswf::as_object *, _BYTE *, _BYTE *))(*(_DWORD *)v27 + 28);
                    gameswf::tu_string::tu_string((gameswf::tu_string *)v227, "Slot");
                    v147[4] = 0;
                    v147[0] = 0;
                    v147[1] = 1;
                    v12(v27, v227, v147);
                    gameswf::as_value::drop_refs((gameswf::as_value *)v147);
                    if ( v227[0] == 255 )
                      gameswf::free_internal(v228);
                    v13 = *(void (__fastcall **)(gameswf::as_object *, _BYTE *, _BYTE *))(*(_DWORD *)v27 + 28);
                    gameswf::tu_string::tu_string((gameswf::tu_string *)v225, "SlotStr");
                    v146[1] = 0;
                    v146[0] = 0;
                    gameswf::as_value::set_string((gameswf::as_value *)v146, "");
                    v13(v27, v225, v146);
                    gameswf::as_value::drop_refs((gameswf::as_value *)v146);
                    if ( v225[0] == 255 )
                      gameswf::free_internal(v226);
                  }
                }
                else
                {
                  if ( v105 == *(_DWORD *)v97 )
                  {
                    v89 = *(void (__fastcall **)(gameswf::as_object *, void **, _BYTE *))(*(_DWORD *)v27 + 28);
                    gameswf::tu_string::tu_string((gameswf::tu_string *)v224, "playerReady");
                    v145[4] = 1;
                    v145[1] = 1;
                    v145[0] = 0;
                    v89(v27, v224, v145);
                    gameswf::as_value::drop_refs((gameswf::as_value *)v145);
                    gameswf::tu_string::~tu_string(v224);
                  }
                  else
                  {
                    v90 = *(char **)(*(_DWORD *)v27 + 28);
                    gameswf::tu_string::tu_string((gameswf::tu_string *)v222, "playerReady");
                    v144[1] = 1;
                    v144[4] = 0;
                    v144[0] = 0;
                    ((void (__fastcall *)(gameswf::as_object *, _BYTE *, _BYTE *))v90)(v27, v222, v144);
                    gameswf::as_value::drop_refs((gameswf::as_value *)v144);
                    if ( v222[0] == 255 )
                      gameswf::free_internal(v223);
                  }
                  v32 = *(void (__fastcall **)(gameswf::as_object *, _BYTE *, _BYTE *))(*(_DWORD *)v27 + 28);
                  gameswf::tu_string::tu_string((gameswf::tu_string *)v220, "Invitation");
                  v143[1] = 0;
                  v143[0] = 0;
                  gameswf::as_value::set_string((gameswf::as_value *)v143, "None");
                  v32(v27, v220, v143);
                  gameswf::as_value::drop_refs((gameswf::as_value *)v143);
                  if ( v220[0] == 255 )
                    gameswf::free_internal(v221);
                  v33 = *(void (__fastcall **)(gameswf::as_object *, _BYTE *, _BYTE *))(*(_DWORD *)v27 + 28);
                  gameswf::tu_string::tu_string((gameswf::tu_string *)v218, "Kick");
                  v142[4] = 0;
                  v142[0] = 0;
                  v142[1] = 1;
                  v33(v27, v218, v142);
                  gameswf::as_value::drop_refs((gameswf::as_value *)v142);
                  if ( v218[0] == 255 )
                    gameswf::free_internal(v219);
                  v34 = *(void (__fastcall **)(gameswf::as_object *, _BYTE *, _BYTE *))(*(_DWORD *)v27 + 28);
                  gameswf::tu_string::tu_string((gameswf::tu_string *)v216, "Slot");
                  v141[4] = 0;
                  v141[0] = 0;
                  v141[1] = 1;
                  v34(v27, v216, v141);
                  gameswf::as_value::drop_refs((gameswf::as_value *)v141);
                  if ( v216[0] == 255 )
                    gameswf::free_internal(v217);
                  v35 = *(void (__fastcall **)(gameswf::as_object *, _BYTE *, _BYTE *))(*(_DWORD *)v27 + 28);
                  gameswf::tu_string::tu_string((gameswf::tu_string *)v214, "SlotStr");
                  v140[1] = 0;
                  v140[0] = 0;
                  gameswf::as_value::set_string((gameswf::as_value *)v140, "");
                  v35(v27, v214, v140);
                  gameswf::as_value::drop_refs((gameswf::as_value *)v140);
                  if ( v214[0] == 255 )
                    gameswf::free_internal(p);
                }
                v14 = *(void (__fastcall **)(gameswf::as_object *, _BYTE *, _BYTE *))(*(_DWORD *)v27 + 28);
                gameswf::tu_string::tu_string((gameswf::tu_string *)v212, "PlayerId");
                v138[0] = 0;
                v138[1] = 2;
                v165 = (double)*(int *)v97;
                v139 = (double)*(int *)v97;
                v14(v27, v212, v138);
                gameswf::as_value::drop_refs((gameswf::as_value *)v138);
                if ( v212[0] == 255 )
                  gameswf::free_internal(v213);
                v15 = *((_DWORD *)PlayerByInternalID + 224);
                if ( v15 == -1 )
                {
                  v36 = *(void (__fastcall **)(gameswf::as_object *, _BYTE *, _BYTE *))(*(_DWORD *)v27 + 28);
                  gameswf::tu_string::tu_string((gameswf::tu_string *)v210, "Class");
                  v137[1] = 0;
                  v137[0] = 0;
                  gameswf::as_value::set_string((gameswf::as_value *)v137, "");
                  v36(v27, v210, v137);
                  gameswf::as_value::drop_refs((gameswf::as_value *)v137);
                  if ( v210[0] == 255 )
                    gameswf::free_internal(v211);
                }
                else
                {
                  v16 = *(void (__fastcall **)(gameswf::as_object *, _BYTE *, _BYTE *))(*(_DWORD *)v27 + 28);
                  gameswf::tu_string::tu_string((gameswf::tu_string *)v208, "Class");
                  v17 = (const char *)StringManager::getString(
                                        (StringManager *)dword_99F760,
                                        *(_DWORD *)(Arrays::CharacterTable::members + 900 * v15 + 24));
                  v136[1] = 0;
                  v136[0] = 0;
                  gameswf::as_value::set_string((gameswf::as_value *)v136, v17);
                  v16(v27, v208, v136);
                  gameswf::as_value::drop_refs((gameswf::as_value *)v136);
                  if ( v208[0] == 255 )
                    gameswf::free_internal(v209);
                }
                if ( (gameswf::fn_call *)v103 == v101 )
                {
                  v135 = v27;
                  v134[0] = 0;
                  v134[1] = 5;
                  gameswf::ref_counted::add_ref(v27);
                  gameswf::as_array::push(v107, (const gameswf::as_value *)v134);
                  gameswf::as_value::drop_refs((gameswf::as_value *)v134);
                }
                else
                {
                  (&v108)[v100++] = (int *)v27;
                }
              }
              CNetPlayerInfo::~CNetPlayerInfo((CNetPlayerInfo *)v167);
              v18 = v8;
              v8 += 4;
            }
            while ( v162 != v18 );
            a1 = (gameswf::as_value **)v106;
            if ( v100 )
            {
              for ( i = 0; i != v100; ++i )
              {
                v58 = (gameswf::ref_counted *)(&v108)[i];
                v132[0] = 0;
                v132[1] = 5;
                v133 = v58;
                if ( v58 )
                  gameswf::ref_counted::add_ref(v58);
                gameswf::as_array::push(v107, (const gameswf::as_value *)v132);
                gameswf::as_value::drop_refs((gameswf::as_value *)v132);
              }
            }
          }
          CNetPlayerInfo::~CNetPlayerInfo((CNetPlayerInfo *)v171);
        }
      }
    }
    gameswf::as_value::set_bool(*a1, 1);
    std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v184);
    if ( v161 )
      std::__node_alloc::deallocate(v161, (v163 - (_DWORD)v161) & 0xFFFFFFFC, v163);
  }
}


// ===== 452468 MenuCharMenu_InvMain::RenderCharacterPane(gameswf::render_state &,void *) =====
DH2_PlayerInfoCharacterPrefix *__fastcall MenuCharMenu_InvMain::RenderCharacterPane(int a1, MenuBase *this)
{
  RenderFX *v3; // r5
  gameswf::character *CurrentMenuContext; // r0
  gameswf::character **v5; // r0
  RenderFX *v6; // r0
  int v7; // r8
  _DWORD *v8; // r3
  GameSWFUtils *Root; // r0
  gameswf::root *v10; // r1
  float InvPixelScaleX; // r7
  GameSWFUtils *v12; // r0
  gameswf::root *v13; // r1
  float InvPixelScaleY; // r4
  int CurrentLevel; // r11
  DH2_PlayerInfoCharacterPrefix *result; // r0
  Character *character_660; // r5
  float *v18; // r4
  void (__fastcall *v19)(float *, float, _DWORD); // r9
  int Dt; // r0
  float v21; // r0
  RootSceneNode *v22; // r4
  void (__fastcall *v23)(RootSceneNode *, _DWORD *); // r3
  float *v24; // r0
  void (__fastcall *v25)(RootSceneNode *, _BYTE *); // r7
  _DWORD *v26; // r3
  int v27; // r3
  int *v28; // r4
  _BYTE v29[16]; // [sp+0h] [bp-5Ch] BYREF
  int v30; // [sp+10h] [bp-4Ch] BYREF
  int v31; // [sp+14h] [bp-48h]
  int v32; // [sp+18h] [bp-44h]
  int v33; // [sp+1Ch] [bp-40h]
  _DWORD v34[4]; // [sp+20h] [bp-3Ch] BYREF
  float v35[4]; // [sp+30h] [bp-2Ch] BYREF
  float v36; // [sp+40h] [bp-1Ch] BYREF
  float v37; // [sp+44h] [bp-18h]
  float v38; // [sp+48h] [bp-14h]
  _DWORD v39[4]; // [sp+4Ch] [bp-10h] BYREF

  v3 = *((RenderFX **)this + 1);
  CurrentMenuContext = (gameswf::character *)MenuBase::GetCurrentMenuContext(this);
  v5 = (gameswf::character **)RenderFX::Find(v3, "avatarpane", CurrentMenuContext);
  GameSWFUtils::GetAbsoluteBoundingRect((GameSWFUtils *)v35, v5);
  v6 = *((RenderFX **)this + 1);
  v7 = *(_DWORD *)(dword_99F73C + 16);
  v8 = *(_DWORD **)(*(_DWORD *)(v7 + 204) - 4);
  v34[0] = v8[5];
  v34[1] = v8[6];
  v34[2] = v8[7];
  v34[3] = v8[8];
  Root = (GameSWFUtils *)RenderFX::GetRoot(v6);
  InvPixelScaleX = GameSWFUtils::GetInvPixelScaleX(Root, v10);
  v12 = (GameSWFUtils *)RenderFX::GetRoot(*((RenderFX **)this + 1));
  InvPixelScaleY = GameSWFUtils::GetInvPixelScaleY(v12, v13);
  v32 = (int)(float)(v35[1] / InvPixelScaleX);
  v33 = (int)(float)(v35[3] / InvPixelScaleY);
  v30 = (int)(float)(v35[0] / InvPixelScaleX);
  v31 = (int)(float)(v35[2] / InvPixelScaleY);
  (*(void (__fastcall **)(_DWORD, int *))(**(_DWORD **)(*(_DWORD *)(v7 + 204) - 4) + 12))(
    *(_DWORD *)(*(_DWORD *)(v7 + 204) - 4),
    &v30);
  (*(void (__fastcall **)(int, _DWORD))(*(_DWORD *)MenuCharMenu_InvMain::m_inventoryPaneCam + 312))(
    MenuCharMenu_InvMain::m_inventoryPaneCam,
    (float)(v32 - v30) / (float)(v33 - v31));
  glitch::scene::CSceneManager::setActiveCamera(
    *(glitch::scene::CSceneManager **)(dword_99F73C + 28),
    (glitch::scene::ICameraSceneNode *)MenuCharMenu_InvMain::m_inventoryPaneCam);
  CurrentLevel = Application::GetCurrentLevel((Application *)&Singleton<Application>::s_inst);
  result = PlayerManager::GetLocalPlayer((PlayerManager *)dword_99F76C, 0, 1);
  character_660 = result->character_660;
  if ( character_660 )
  {
    CharAnimator::Update((Character *)((char *)character_660 + 1180));
    v18 = *(float **)(dword_99F73C + 28);
    v19 = *(void (__fastcall **)(float *, float, _DWORD))(*(_DWORD *)v18 + 96);
    Dt = Application::GetDt((Application *)&Singleton<Application>::s_inst);
    ((void (__fastcall *)(_DWORD, _DWORD, _DWORD))v19)(v18, (float)(unsigned int)Dt, 0);
    v21 = v18[149];
    v22 = *(RootSceneNode **)(*((_DWORD *)character_660 + 182) + 8);
    RootSceneNode::PlainOnAnimate(v22, (int)v21);
    (*(void (__fastcall **)(RootSceneNode *))(*(_DWORD *)v22 + 160))(v22);
    v23 = *(void (__fastcall **)(RootSceneNode *, _DWORD *))(*(_DWORD *)v22 + 164);
    memset(v39, 0, 12);
    v23(v22, v39);
    (*(void (__fastcall **)(RootSceneNode *))(*(_DWORD *)v22 + 152))(v22);
    v38 = 0.0;
    v36 = 0.0;
    v37 = 0.0;
    v24 = (float *)(*(int (__fastcall **)(RootSceneNode *))(*(_DWORD *)v22 + 152))(v22);
    glitch::core::quaternion::toEulerDegree(v24, &v36);
    v36 = v36 * 0.017453;
    v37 = v37 * 0.017453;
    v38 = v38 * 0.017453;
    v25 = *(void (__fastcall **)(RootSceneNode *, _BYTE *))(*(_DWORD *)v22 + 156);
    glitch::core::quaternion::set((glitch::core::quaternion *)v29, v36, v37, -0.5);
    v25(v22, v29);
    (*(void (__fastcall **)(RootSceneNode *, int))(*(_DWORD *)v22 + 184))(v22, 1);
    v26 = *(_DWORD **)(dword_99F73C + 28);
    if ( v26[57] )
      (*(void (__fastcall **)(_DWORD, RootSceneNode *))(*v26 + 60))(*(_DWORD *)(dword_99F73C + 28), v22);
    (*(void (__fastcall **)(_DWORD, _DWORD *))(**(_DWORD **)(*(_DWORD *)(v7 + 204) - 4) + 12))(
      *(_DWORD *)(*(_DWORD *)(v7 + 204) - 4),
      v34);
    GameObject::SetPosition(character_660, (float *)character_660 + 88, 1);
    v27 = *((_DWORD *)character_660 + 184);
    if ( v27 )
    {
      (*(void (__fastcall **)(_DWORD))(*(_DWORD *)v27 + 8))(*((_DWORD *)character_660 + 184));
      (*(void (__fastcall **)(_DWORD))(**((_DWORD **)character_660 + 184) + 12))(*((_DWORD *)character_660 + 184));
    }
    v28 = *(int **)(CurrentLevel + 296);
    CameraTarget::SetTarget(v28, character_660, 0);
    CameraBase::SetActive((int)v28);
    (*(void (__fastcall **)(int *))(*v28 + 16))(v28);
    return (DH2_PlayerInfoCharacterPrefix *)VisualObject::SyncRotation(*((_DWORD *)character_660 + 182));
  }
  return result;
}


// ===== 452810 MenuCharMenu_InvMain::DestroyAvatarCamera(void) =====
void __fastcall MenuCharMenu_InvMain::DestroyAvatarCamera(MenuCharMenu_InvMain *this)
{
  MenuManager *v1; // r0
  MenuManager *Instance; // r0
  glitch::scene::CSceneManager *v3; // r4
  glitch::scene::ICameraSceneNode *v4; // r1

  if ( MenuCharMenu_InvMain::m_inventoryPaneCam )
  {
    (*(void (__fastcall **)(int))(*(_DWORD *)MenuCharMenu_InvMain::m_inventoryPaneCam + 104))(MenuCharMenu_InvMain::m_inventoryPaneCam);
    v1 = (MenuManager *)glitch::IReferenceCounted::drop((glitch::IReferenceCounted *)(MenuCharMenu_InvMain::m_inventoryPaneCam
                                                                                    + *(_DWORD *)(*(_DWORD *)MenuCharMenu_InvMain::m_inventoryPaneCam
                                                                                                - 12)));
    MenuCharMenu_InvMain::m_inventoryPaneCam = 0;
    Instance = (MenuManager *)MenuManager::GetInstance(v1);
    if ( *((_DWORD *)Instance + 24) )
    {
      v3 = *(glitch::scene::CSceneManager **)(dword_99F73C + 28);
      v4 = *(glitch::scene::ICameraSceneNode **)(MenuManager::GetInstance(Instance) + 96);
      glitch::scene::CSceneManager::setActiveCamera(v3, v4);
    }
  }
}


// ===== 4528a0 MenuCharMenu_InvMain::Hide(void) =====
int __fastcall MenuCharMenu_InvMain::Hide(MenuCharMenu_InvMain *this)
{
  MenuCharMenu_InvMain::DestroyAvatarCamera(this);
  return MenuBase::Hide((DragAndDrop **)this);
}


// ===== 4528b8 MenuCharMenu_InvDetails::Hide(void) =====
int __fastcall MenuCharMenu_InvDetails::Hide(MenuCharMenu_InvDetails *this)
{
  MenuCharMenu_InvMain::DestroyAvatarCamera(this);
  return MenuBase::Hide((DragAndDrop **)this);
}


// ===== 4528d0 MenuCharMenu_InvMain::CreateAvatarCamera(void) =====
DH2_PlayerInfoCharacterPrefix *__fastcall MenuCharMenu_InvMain::CreateAvatarCamera(DH2_PlayerInfoCharacterPrefix *this)
{
  MenuManager *Instance; // r0
  int v2; // r7
  Character *character_660; // r3
  int v4; // r3
  void (__fastcall *v5)(int, _DWORD *); // r3
  Character *v6; // r4
  CharStateMachine *v7; // r4
  _DWORD v8[3]; // [sp+Ch] [bp-24h] BYREF
  _DWORD v9[3]; // [sp+18h] [bp-18h] BYREF
  _DWORD v10[3]; // [sp+24h] [bp-Ch] BYREF

  if ( !MenuCharMenu_InvMain::m_inventoryPaneCam )
  {
    Instance = (MenuManager *)MenuManager::GetInstance((MenuManager *)this);
    if ( !*((_DWORD *)Instance + 24) )
      *(_DWORD *)(MenuManager::GetInstance(Instance) + 96) = *(_DWORD *)(*(_DWORD *)(dword_99F73C + 28) + 228);
    v10[1] = -1001914368;
    v9[1] = 0;
    v9[2] = 1128792064;
    v10[0] = 0;
    v10[2] = 1128792064;
    v9[0] = 0;
    v2 = operator new(908, 0);
    glitch::scene::CCameraSceneNode::CCameraSceneNode(v2, -1, v10, v9, 0);
    MenuCharMenu_InvMain::m_inventoryPaneCam = v2;
    (*(void (__fastcall **)(_DWORD, int))(**(_DWORD **)(*(_DWORD *)(dword_99F73C + 28) + 4) + 92))(
      *(_DWORD *)(*(_DWORD *)(dword_99F73C + 28) + 4),
      v2);
    character_660 = PlayerManager::GetLocalPlayer((PlayerManager *)dword_99F76C, 0, 1)->character_660;
    if ( character_660 )
    {
      v4 = *((_DWORD *)character_660 + 182);
      if ( v4 )
        (*(void (__fastcall **)(_DWORD, int))(**(_DWORD **)(v4 + 8) + 92))(
          *(_DWORD *)(v4 + 8),
          MenuCharMenu_InvMain::m_inventoryPaneCam);
    }
    glitch::IReferenceCounted::drop((glitch::IReferenceCounted *)(MenuCharMenu_InvMain::m_inventoryPaneCam
                                                                + *(_DWORD *)(*(_DWORD *)MenuCharMenu_InvMain::m_inventoryPaneCam
                                                                            - 12)));
    glitch::scene::CSceneManager::setActiveCamera(
      *(glitch::scene::CSceneManager **)(dword_99F73C + 28),
      (glitch::scene::ICameraSceneNode *)MenuCharMenu_InvMain::m_inventoryPaneCam);
    v5 = *(void (__fastcall **)(int, _DWORD *))(*(_DWORD *)MenuCharMenu_InvMain::m_inventoryPaneCam + 276);
    v8[2] = 1065353216;
    v8[1] = 0;
    v8[0] = 0;
    v5(MenuCharMenu_InvMain::m_inventoryPaneCam, v8);
    (*(void (__fastcall **)(int, int))(*(_DWORD *)MenuCharMenu_InvMain::m_inventoryPaneCam + 312))(
      MenuCharMenu_InvMain::m_inventoryPaneCam,
      1070954729);
    (*(void (__fastcall **)(int, int))(*(_DWORD *)MenuCharMenu_InvMain::m_inventoryPaneCam + 316))(
      MenuCharMenu_InvMain::m_inventoryPaneCam,
      1057946394);
    ++*(_DWORD *)(MenuCharMenu_InvMain::m_inventoryPaneCam
                + *(_DWORD *)(*(_DWORD *)MenuCharMenu_InvMain::m_inventoryPaneCam - 12)
                + 4);
    (*(void (__fastcall **)(int, int))(*(_DWORD *)MenuCharMenu_InvMain::m_inventoryPaneCam + 304))(
      MenuCharMenu_InvMain::m_inventoryPaneCam,
      1092616192);
    (*(void (__fastcall **)(int, int))(*(_DWORD *)MenuCharMenu_InvMain::m_inventoryPaneCam + 308))(
      MenuCharMenu_InvMain::m_inventoryPaneCam,
      1148846080);
    this = PlayerManager::GetLocalPlayer((PlayerManager *)dword_99F76C, 0, 1);
    v6 = this->character_660;
    if ( v6 )
    {
      v7 = (Character *)((char *)v6 + 1276);
      this = (DH2_PlayerInfoCharacterPrefix *)CharStateMachine::SM_IsDead(v7);
      if ( !this )
        return (DH2_PlayerInfoCharacterPrefix *)CharStateMachine::SM_SetIdleState(v7, 0);
    }
  }
  return this;
}


// ===== 452b1c MenuCharMenu_InvMain::Show(void) =====
int __fastcall MenuCharMenu_InvMain::Show(MenuCharMenu_InvMain *this)
{
  DH2_PlayerInfoCharacterPrefix *v2; // r0

  v2 = (DH2_PlayerInfoCharacterPrefix *)RenderFX::RegisterDisplayCallback(
                                          *((_DWORD *)this + 1),
                                          "avatarpane",
                                          MenuCharMenu_InvMain::RenderCharacterPane,
                                          this);
  MenuCharMenu_InvMain::CreateAvatarCamera(v2);
  return MenuBase::Show(this);
}


// ===== 452b64 MenuCharMenu_InvMain::~MenuCharMenu_InvMain() =====
void __fastcall MenuCharMenu_InvMain::~MenuCharMenu_InvMain(MenuCharMenu_InvMain *this)
{
  *(_DWORD *)this = off_9683C0;
  if ( MenuCharMenu_InvMain::m_inventoryPaneCam )
  {
    glitch::IReferenceCounted::drop((glitch::IReferenceCounted *)(MenuCharMenu_InvMain::m_inventoryPaneCam
                                                                + *(_DWORD *)(*(_DWORD *)MenuCharMenu_InvMain::m_inventoryPaneCam
                                                                            - 12)));
    MenuCharMenu_InvMain::m_inventoryPaneCam = 0;
  }
  MenuBase::~MenuBase(this);
}


// ===== 452bcc MenuCharMenu_InvMain::~MenuCharMenu_InvMain() =====
void __fastcall MenuCharMenu_InvMain::~MenuCharMenu_InvMain(MenuCharMenu_InvMain *this)
{
  MenuCharMenu_InvMain::~MenuCharMenu_InvMain(this);
  CustomFree(this);
}


// ===== 452be8 MenuCharMenu_InvMain::~MenuCharMenu_InvMain() =====
void __fastcall MenuCharMenu_InvMain::~MenuCharMenu_InvMain(MenuCharMenu_InvMain *this)
{
  *(_DWORD *)this = off_9683C0;
  if ( MenuCharMenu_InvMain::m_inventoryPaneCam )
  {
    glitch::IReferenceCounted::drop((glitch::IReferenceCounted *)(MenuCharMenu_InvMain::m_inventoryPaneCam
                                                                + *(_DWORD *)(*(_DWORD *)MenuCharMenu_InvMain::m_inventoryPaneCam
                                                                            - 12)));
    MenuCharMenu_InvMain::m_inventoryPaneCam = 0;
  }
  MenuBase::~MenuBase(this);
}


// ===== 452c50 MenuCharMenu_InvDetails::~MenuCharMenu_InvDetails() =====
void __fastcall MenuCharMenu_InvDetails::~MenuCharMenu_InvDetails(MenuCharMenu_InvDetails *this)
{
  *(_DWORD *)this = off_968368;
  MenuBase::~MenuBase(this);
}


// ===== 452c84 MenuCharMenu_InvDetails::~MenuCharMenu_InvDetails() =====
void __fastcall MenuCharMenu_InvDetails::~MenuCharMenu_InvDetails(MenuCharMenu_InvDetails *this)
{
  MenuCharMenu_InvDetails::~MenuCharMenu_InvDetails(this);
  CustomFree(this);
}


// ===== 452ca0 MenuCharMenu_InvDetails::~MenuCharMenu_InvDetails() =====
void __fastcall MenuCharMenu_InvDetails::~MenuCharMenu_InvDetails(MenuCharMenu_InvDetails *this)
{
  *(_DWORD *)this = off_968368;
  MenuBase::~MenuBase(this);
}


// ===== 452cd4 MenuCharMenu_InvDetails::Init(void) =====
void __fastcall MenuCharMenu_InvDetails::Init(MenuCharMenu_InvDetails *this)
{
  MenuManager *Instance; // r0

  Instance = (MenuManager *)MenuManager::GetInstance(this);
  MenuManager::RegisterMenu(Instance, this);
}


// ===== 452cec MenuCharMenu_InvDetails::MenuCharMenu_InvDetails(void) =====
void __fastcall MenuCharMenu_InvDetails::MenuCharMenu_InvDetails(MenuCharMenu_InvDetails *this)
{
  MenuBase::MenuBase(this, "menu_InventorySheetDetails");
  *(_DWORD *)this = off_968368;
  MenuCharMenu_InvDetails::Init(this);
}


// ===== 452d34 MenuCharMenu_InvDetails::MenuCharMenu_InvDetails(void) =====
void __fastcall MenuCharMenu_InvDetails::MenuCharMenu_InvDetails(MenuCharMenu_InvDetails *this)
{
  MenuBase::MenuBase(this, "menu_InventorySheetDetails");
  *(_DWORD *)this = off_968368;
  MenuCharMenu_InvDetails::Init(this);
}


// ===== 452d7c MenuCharMenu_InvDetails::GetInstance(void) =====
void *__fastcall MenuCharMenu_InvDetails::GetInstance(MenuCharMenu_InvDetails *this)
{
  if ( (`guard variable for'MenuCharMenu_InvDetails::GetInstance(void)::mdt & 1) == 0
    && _cxa_guard_acquire(&`guard variable for'MenuCharMenu_InvDetails::GetInstance(void)::mdt) )
  {
    MenuCharMenu_InvDetails::MenuCharMenu_InvDetails((MenuCharMenu_InvDetails *)&MenuCharMenu_InvDetails::GetInstance(void)::mdt);
    _cxa_guard_release(&`guard variable for'MenuCharMenu_InvDetails::GetInstance(void)::mdt);
    _aeabi_atexit(
      (int)&MenuCharMenu_InvDetails::GetInstance(void)::mdt,
      (int)MenuCharMenu_InvDetails::~MenuCharMenu_InvDetails,
      (int)&_dso_handle);
  }
  return &MenuCharMenu_InvDetails::GetInstance(void)::mdt;
}


// ===== 452e00 MenuCharMenu_InvMain::Init(void) =====
void __fastcall MenuCharMenu_InvMain::Init(MenuCharMenu_InvMain *this)
{
  MenuManager *Instance; // r0
  MenuCharMenu_InvDetails *v3; // r0
  MenuCharMenu_InvDetails *v4; // r0

  Instance = (MenuManager *)MenuManager::GetInstance(this);
  MenuManager::RegisterMenu(Instance, this);
  v4 = (MenuCharMenu_InvDetails *)MenuCharMenu_InvDetails::GetInstance(v3);
  MenuCharMenu_InvDetails::Init(v4);
}


// ===== 452e20 MenuCharMenu_InvMain::MenuCharMenu_InvMain(void) =====
void __fastcall MenuCharMenu_InvMain::MenuCharMenu_InvMain(MenuCharMenu_InvMain *this)
{
  MenuBase::MenuBase(this, "menu_InventorySheetMain");
  *(_DWORD *)this = off_9683C0;
  MenuCharMenu_InvMain::Init(this);
}


// ===== 452e68 MenuCharMenu_InvMain::MenuCharMenu_InvMain(void) =====
void __fastcall MenuCharMenu_InvMain::MenuCharMenu_InvMain(MenuCharMenu_InvMain *this)
{
  MenuBase::MenuBase(this, "menu_InventorySheetMain");
  *(_DWORD *)this = off_9683C0;
  MenuCharMenu_InvMain::Init(this);
}


// ===== 452eb0 MenuCharMenu_InvMain::GetInstance(void) =====
void *__fastcall MenuCharMenu_InvMain::GetInstance(MenuCharMenu_InvMain *this)
{
  if ( (`guard variable for'MenuCharMenu_InvMain::GetInstance(void)::mdt & 1) == 0
    && _cxa_guard_acquire(&`guard variable for'MenuCharMenu_InvMain::GetInstance(void)::mdt) )
  {
    MenuCharMenu_InvMain::MenuCharMenu_InvMain((MenuCharMenu_InvMain *)&MenuCharMenu_InvMain::GetInstance(void)::mdt);
    _cxa_guard_release(&`guard variable for'MenuCharMenu_InvMain::GetInstance(void)::mdt);
    _aeabi_atexit(
      (int)&MenuCharMenu_InvMain::GetInstance(void)::mdt,
      (int)MenuCharMenu_InvMain::~MenuCharMenu_InvMain,
      (int)&_dso_handle);
  }
  return &MenuCharMenu_InvMain::GetInstance(void)::mdt;
}


// ===== 452f38 `global constructor keyed to'.._.._sources_Game_Menus_CharacterMenu_MenuCharMenu_Inv.cpp =====
int `global constructor keyed to'.._.._sources_Game_Menus_CharacterMenu_MenuCharMenu_Inv.cpp()
{
  int result; // r0

  result = `guard variable for'Singleton<PlayerStatManager>::s_inst;
  dword_9A5DB4 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9A5DB0 = 1056964608;
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


// ===== 453014 MenuCharMenu_InvDetails::Show(void) =====
int __fastcall MenuCharMenu_InvDetails::Show(MenuCharMenu_InvDetails *this)
{
  int result; // r0
  DH2_PlayerInfoCharacterPrefix *v3; // r0
  std::priv::_String_base<char,std::allocator<char> > v4; // [sp+4h] [bp-1Ch] BYREF

  result = (*(int (__fastcall **)(MenuCharMenu_InvDetails *))(*(_DWORD *)this + 60))(this);
  if ( result )
  {
    DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
    v4._M_finish = (char *)&v4;
    v4._M_start_of_storage._M_data = (char *)&v4;
    std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block(&v4, 0x21u);
    v4._M_finish = (char *)memcpy(v4._M_start_of_storage._M_data, "isTracingMenuCharMenu_InvDetails", 0x20u) + 32;
    *v4._M_finish = 0;
    DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, (const std::string *)&v4);
    std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v4);
    MenuCharMenu_InvMain::CreateAvatarCamera(v3);
    RenderFX::RegisterDisplayCallback(
      *((_DWORD *)this + 1),
      "avatarpane",
      MenuCharMenu_InvMain::RenderCharacterPane,
      this);
    return MenuBase::Show(this);
  }
  return result;
}


// ===== 45310c MenuCharMenu_Map::UpdateMapCamera(void) =====
int __fastcall MenuCharMenu_Map::UpdateMapCamera(int this)
{
  float *v1; // r5
  int v2; // r4
  float v3; // r9
  float v4; // r10
  float v5; // r7
  float v6; // r0
  float v7; // r8
  float v8; // r6
  float v9; // r11
  float v10; // r11
  float v11; // [sp+4h] [bp-8h]

  v1 = *(float **)(this + 488);
  v2 = this;
  if ( v1 )
  {
    v3 = *(float *)(this + 236);
    v4 = *(float *)(this + 240);
    v5 = v3 + v1[38];
    v7 = *(float *)(this + 244);
    v6 = v4 + v1[39];
    v8 = *(float *)(v2 + 240) + v1[39];
    v11 = *(float *)(v2 + 244) + v1[40];
    v9 = *(float *)(v2 + 224);
    if ( v9 < v5 || (v9 = *(float *)(v2 + 212), v9 > v5) )
      v5 = v9;
    v10 = *(float *)(v2 + 228);
    if ( v10 < v6 || (v10 = *(float *)(v2 + 216), v10 > v6) )
      v8 = v10;
    v1[38] = v5 - v3;
    v1[40] = v11 - v7;
    v1[39] = v8 - v4;
    return (*(int (__fastcall **)(_DWORD))(**(_DWORD **)(v2 + 488) + 16))(*(_DWORD *)(v2 + 488));
  }
  return this;
}


// ===== 453224 MenuCharMenu_Map::ClearIconType(MenuCharMenu_Map::EIconType) =====
void __fastcall MenuCharMenu_Map::ClearIconType(int a1, int a2)
{
  int v4; // r3
  _DWORD *v5; // r6
  _DWORD *v6; // r7
  int v7; // r8
  int v8; // r8
  int v9; // r4
  int v10; // r3

  if ( a2 > 17 )
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
        "iconType < ICON_COUNT",
        "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Menus\\CharacterMenu\\MenuCharMenu_Map.cpp",
        597);
    }
  }
  v4 = a1 + 12 * a2;
  v5 = *(_DWORD **)(v4 + 260);
  v6 = *(_DWORD **)(v4 + 264);
  if ( v6 != v5 )
  {
    do
    {
      v7 = *v5;
      gameswf::weak_ptr<gameswf::character>::check_proxy(*v5 + 60);
      if ( *(_DWORD *)(v7 + 64) )
      {
        v8 = *v5;
        gameswf::weak_ptr<gameswf::character>::check_proxy(*v5 + 60);
        (*(void (__fastcall **)(_DWORD, _DWORD))(**(_DWORD **)(v8 + 64) + 168))(*(_DWORD *)(v8 + 64), *v5);
      }
      v5 += 4;
    }
    while ( v5 != v6 );
    v9 = a1 + 12 * a2;
    v10 = *(_DWORD *)(v9 + 260);
    if ( v10 != *(_DWORD *)(v9 + 264) )
      *(_DWORD *)(v9 + 264) = v10;
  }
}


// ===== 453334 MenuCharMenu_Map::ClearAllIcons(void) =====
void __fastcall MenuCharMenu_Map::ClearAllIcons(MenuCharMenu_Map *this)
{
  int i; // r4
  int v3; // r1

  for ( i = 0; i != 18; ++i )
  {
    v3 = i;
    MenuCharMenu_Map::ClearIconType((int)this, v3);
  }
}


// ===== 45335c MenuCharMenu_Map::ShowLevelName(void) =====
int __fastcall MenuCharMenu_Map::ShowLevelName(MenuCharMenu_Map *this)
{
  int result; // r0
  gameswf::character *v3; // r4
  int v4; // r2
  bool v5; // zf
  RenderFX *v6; // r5
  const char *String; // r0

  result = Application::GetCurrentLevel((Application *)&Singleton<Application>::s_inst);
  if ( result )
  {
    v3 = *((gameswf::character **)this + 63);
    if ( v3 )
    {
      v4 = *(_DWORD *)(result + 60);
      v5 = v4 == -1;
      if ( v4 != -1 )
        v4 *= 72;
      if ( v5 )
        v4 = 0;
      v6 = *((RenderFX **)this + 1);
      String = (const char *)StringManager::getString(
                               (StringManager *)dword_99F760,
                               *(_DWORD *)(Arrays::LevelList::members + v4 + 36));
      return RenderFX::SetText(v6, v3, String, 0);
    }
  }
  return result;
}


// ===== 4533ec MenuCharMenu_Map::IsPointInsideRenderZone(int,int) =====
bool __fastcall MenuCharMenu_Map::IsPointInsideRenderZone(gameswf::character ***this, int a2, int a3)
{
  float v5; // r0
  float v6; // r4
  float v8[5]; // [sp+0h] [bp-14h] BYREF

  GameSWFUtils::GetAbsoluteBoundingRect((GameSWFUtils *)v8, *(this + 64));
  v5 = (float)a2;
  v6 = (float)a2;
  return v5 >= v8[0] && v6 <= v8[1] && (float)a3 >= v8[2] && (float)a3 <= v8[3];
}


// ===== 453488 MenuCharMenu_Map::DestroyMapCamera(void) =====
MenuManager *__fastcall MenuCharMenu_Map::DestroyMapCamera(MenuManager *this)
{
  MenuManager *v1; // r5
  MenuManager *v2; // r0
  int v3; // r3
  glitch::scene::CSceneManager *v4; // r4
  glitch::scene::ICameraSceneNode *v5; // r1

  v1 = this;
  if ( *((_DWORD *)this + 122) )
  {
    ZoomHandler::ResetFingerMap((ZoomHandler *)dword_99F77C);
    v3 = *((_DWORD *)v1 + 122);
    if ( v3 )
    {
      v2 = (MenuManager *)(*(int (__fastcall **)(_DWORD))(*(_DWORD *)v3 + 4))(*((_DWORD *)v1 + 122));
      *((_DWORD *)v1 + 122) = 0;
    }
    *((_DWORD *)v1 + 122) = 0;
    this = (MenuManager *)MenuManager::GetInstance(v2);
    if ( !*((_DWORD *)this + 24) )
    {
      v4 = *(glitch::scene::CSceneManager **)(dword_99F73C + 28);
      v5 = *(glitch::scene::ICameraSceneNode **)(MenuManager::GetInstance(this) + 96);
      return (MenuManager *)glitch::scene::CSceneManager::setActiveCamera(v4, v5);
    }
  }
  return this;
}


// ===== 45351c MenuCharMenu_Map::CreateMapCamera(void) =====
int *__fastcall MenuCharMenu_Map::CreateMapCamera(int *this)
{
  int *v1; // r5
  MenuManager *Instance; // r0
  CameraLevel *v3; // r6
  int v4; // r8
  int v5; // r7
  int v6; // r10
  int v7; // r2
  int v8; // r0
  void (__fastcall *v9)(int, _DWORD *); // r3
  int *v10; // r7
  DH2_PlayerInfoCharacterPrefix *LocalPlayer; // r0
  _DWORD v12[4]; // [sp+Ch] [bp-10h] BYREF

  v1 = this;
  if ( !*(this + 122) )
  {
    Instance = (MenuManager *)MenuManager::GetInstance((MenuManager *)this);
    if ( !*((_DWORD *)Instance + 24) )
      *(_DWORD *)(MenuManager::GetInstance(Instance) + 96) = *(_DWORD *)(*(_DWORD *)(dword_99F73C + 28) + 228);
    v3 = (CameraLevel *)operator new(0xA8u, 0);
    CameraLevel::CameraLevel(v3);
    v1[122] = (int)v3;
    if ( !v3 )
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
          "m_mapCam",
          "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Menus\\CharacterMenu\\MenuCharMenu_Map.cpp",
          280);
        v3 = (CameraLevel *)v1[122];
      }
    }
    v4 = Arrays::CamAnimSetTable::size;
    if ( Arrays::CamAnimSetTable::size )
    {
      v5 = 0;
      v6 = Arrays::CamAnimSetTable::m_memberNames;
      while ( LC_API_STRCMP_0("Default", *(const char **)(v6 + 4 * v5)) )
      {
        if ( ++v5 == v4 )
          goto LABEL_10;
      }
      v7 = v5;
    }
    else
    {
LABEL_10:
      v7 = -1;
    }
    CameraLevel::Load(v3, "data/3D/camera/minimapcameras.bdae", v7, "PlayerCamera_Default_minimap");
    *(_BYTE *)(v1[122] + 133) = 1;
    *(_DWORD *)(v1[122] + 140) = 1065353216;
    *(_DWORD *)(v1[122] + 136) = 0;
    CameraTarget::EnableDamping(v1[122], 0);
    CameraBase::SetData(v1[122], 0.42963, 1.5, 0.0, 100000.0, 0);
    v8 = *(_DWORD *)(v1[122] + 8);
    v9 = *(void (__fastcall **)(int, _DWORD *))(*(_DWORD *)v8 + 276);
    v12[0] = -1082130432;
    v12[2] = 0;
    v12[1] = 1065353216;
    v9(v8, v12);
    CameraBase::SetActive((CameraBase *)v1[122]);
    CameraLevel::PlayAnim(
      (CameraLevel *)v1[122],
      *(_DWORD *)(Arrays::CamAnimSetTable::members + 28 * *(_DWORD *)(v1[122] + 128) + 16),
      0,
      0);
    v10 = (int *)v1[122];
    LocalPlayer = PlayerManager::GetLocalPlayer((PlayerManager *)dword_99F76C, 0, 1);
    CameraTarget::SetTarget(v10, LocalPlayer->character_660, 0);
    (*(void (__fastcall **)(_DWORD, _DWORD))(**(_DWORD **)(*(_DWORD *)(dword_99F73C + 28) + 652) + 92))(
      *(_DWORD *)(*(_DWORD *)(dword_99F73C + 28) + 652),
      *(_DWORD *)(v1[122] + 4));
    ZoomHandler::setCamera((ZoomHandler *)dword_99F77C, (CameraLevel *)v1[122]);
    *(_BYTE *)(dword_99F77C + 36) = 1;
    return (int *)MenuCharMenu_Map::UpdateMapCamera((MenuCharMenu_Map *)v1);
  }
  return this;
}


// ===== 4537c0 MenuCharMenu_Map::Hide(void) =====
int __fastcall MenuCharMenu_Map::Hide(MenuCharMenu_Map *this)
{
  int *CurrentLevel; // r5
  GameObject *character_660; // r1
  int result; // r0
  int v5; // r3

  CurrentLevel = (int *)Application::GetCurrentLevel((Application *)&Singleton<Application>::s_inst);
  if ( CurrentLevel )
    CurrentLevel = (int *)CurrentLevel[74];
  character_660 = PlayerManager::GetLocalPlayer((PlayerManager *)dword_99F76C, 0, 1)->character_660;
  if ( character_660 )
  {
    CameraTarget::SetTarget(CurrentLevel, character_660, 0);
    CameraBase::SetActive((int)CurrentLevel);
    (*(void (__fastcall **)(int *))(*CurrentLevel + 16))(CurrentLevel);
  }
  ZoomHandler::setCamera((ZoomHandler *)dword_99F77C, (CameraLevel *)CurrentLevel);
  MenuCharMenu_Map::DestroyMapCamera(this);
  result = MenuBase::Hide((DragAndDrop **)this);
  v5 = *(_DWORD *)(*(_DWORD *)(dword_99F73C + 28) + 652);
  if ( v5 )
    return (*(int (__fastcall **)(_DWORD, _DWORD))(*(_DWORD *)v5 + 72))(
             *(_DWORD *)(*(_DWORD *)(dword_99F73C + 28) + 652),
             0);
  return result;
}


// ===== 45387c MenuCharMenu_Map::ResetZoom(void) =====
int __fastcall MenuCharMenu_Map::ResetZoom(MenuCharMenu_Map *this)
{
  return ZoomHandler::ResetZoom((ZoomHandler *)dword_99F77C);
}


// ===== 45389c MenuCharMenu_Map::GetMapScreenCoord(Point3D<float> const&,float,float,float,float) =====
float *__fastcall MenuCharMenu_Map::GetMapScreenCoord(
        float *a1,
        int a2,
        int a3,
        float a4,
        float a5,
        float a6,
        float a7)
{
  float v9; // r0
  int v10; // r3
  float v11; // r0
  float v13; // [sp+0h] [bp-Ch] BYREF
  int v14; // [sp+4h] [bp-8h]

  a1[1] = 0.0;
  *a1 = 0.0;
  v13 = 0.0;
  v14 = 0;
  CameraBase::GetScreenCoord(a3, &v13);
  v10 = v14;
  v9 = (float)(a4 * v13) * 0.5 + a6;
  *a1 = v9;
  v11 = (float)(COERCE_FLOAT(v10 + 0x80000000) * a5) * 0.5 + a7;
  a1[1] = v11;
  return a1;
}


// ===== 453974 MenuCharMenu_Map::RenderIconType(MenuCharMenu_Map::EIconType,gameswf::rect const&,float) =====
float __fastcall MenuCharMenu_Map::RenderIconType(float result, int a2, float *a3, float a4)
{
  int v5; // r7
  int v7; // r8
  float v8; // r11
  float v9; // r8
  unsigned int v10; // r3
  float v11; // r0
  int v12; // r5
  int v13; // r4
  int i; // r10
  int *v15; // r12
  int v16; // r0
  int v17; // r1
  int v18; // r2
  int v19; // r3
  int v20; // r1
  gameswf::character *v21; // t1
  float v23; // [sp+18h] [bp-44h]
  float x; // [sp+1Ch] [bp-40h]
  float v25; // [sp+20h] [bp-3Ch]
  float v26; // [sp+24h] [bp-38h]
  int v27[6]; // [sp+2Ch] [bp-30h] BYREF
  _DWORD v28[3]; // [sp+44h] [bp-18h] BYREF
  float v29[3]; // [sp+50h] [bp-Ch] BYREF

  v5 = LODWORD(result);
  if ( a2 > 17 )
  {
    if ( gAssertLevel == 2 )
    {
      dword_0 = 0;
    }
    else if ( gAssertLevel == 1 )
    {
      result = COERCE_FLOAT(
                 fprintf(
                   (FILE *)&_sF + 2,
                   "ASSERT(%s) FAILED: %s:%d\n",
                   "iconType < ICON_COUNT",
                   "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Menus\\CharacterMenu\\MenuCharMenu_Map.cpp",
                   659));
    }
  }
  v7 = *(_DWORD *)(v5 + 488);
  if ( v7 )
  {
    v23 = a3[3] - a3[2];
    v8 = a3[1] - *a3;
    v26 = *a3 + (float)(v8 * 0.5);
    v25 = a3[2] + (float)(v23 * 0.5);
    v9 = *(float *)(v5 + 476) + *(float *)(v7 + 144);
    v10 = a2 - 14;
    if ( v9 < a4 )
      v9 = a4;
    if ( v10 <= 3 )
      v11 = CSWTCH_6123[v10];
    else
      v11 = 0.0;
    result = v11 * 0.017453;
    v12 = v5 + 12 * a2;
    x = result;
    v13 = *(_DWORD *)(v12 + 260);
    for ( i = *(_DWORD *)(v12 + 264); v13 != i; *((_BYTE *)v21 + 155) = v9 > 0.1 )
    {
      result = COERCE_FLOAT(v29);
      if ( v9 > 0.1 )
      {
        v28[0] = *(_DWORD *)(v13 + 4);
        v28[1] = *(_DWORD *)(v13 + 8);
        v28[2] = *(_DWORD *)(v13 + 12);
        MenuCharMenu_Map::GetMapScreenCoord(v29, v5, (int)v28, v8, v23, v26, v25);
        RenderFX::SetPosition(*(RenderFX **)(v5 + 4), *(gameswf::character **)v13, (int)v29[0], (int)v29[1]);
        v15 = *(int **)(*(_DWORD *)v13 + 76);
        v16 = *v15;
        v17 = v15[1];
        v18 = v15[2];
        v19 = v15[3];
        v15 += 4;
        v27[0] = v16;
        v27[1] = v17;
        v27[2] = v18;
        v27[3] = v19;
        v20 = v15[1];
        v27[4] = *v15;
        v27[5] = v20;
        gameswf::matrix::set_scale_rotation((gameswf::matrix *)v27, v9, v9, x);
        result = COERCE_FLOAT(gameswf::character::set_matrix(*(_DWORD *)v13, v27));
      }
      v21 = *(gameswf::character **)v13;
      v13 += 16;
    }
  }
  return result;
}


// ===== 453be8 MenuCharMenu_Map::IsInsideRooms(Point3D<float> const&,bool) =====
int __fastcall MenuCharMenu_Map::IsInsideRooms(int a1, float *a2, int a3)
{
  int *v3; // r4
  int *v4; // r5

  if ( a3 )
  {
    v4 = (int *)(a1 + 196);
    v3 = *(int **)(a1 + 196);
  }
  else
  {
    v4 = (int *)(a1 + 204);
    v3 = *(int **)(a1 + 204);
  }
  if ( v4 == v3 )
    return 0;
  while ( !RoomZone::HasInside((float *)v3[2], a2) )
  {
    v3 = (int *)*v3;
    if ( v3 == v4 )
      return 0;
  }
  return 1;
}


// ===== 453c3c MenuCharMenu_Map::Init(void) =====
RenderFX *__fastcall MenuCharMenu_Map::Init(RenderFX **this)
{
  MenuManager *Instance; // r0
  RenderFX *v3; // r5
  gameswf::character *CurrentMenuContext; // r0
  RenderFX *v5; // r5
  gameswf::character *v6; // r0
  RenderFX *v7; // r5
  gameswf::character *v8; // r0
  RenderFX *result; // r0

  Instance = (MenuManager *)MenuManager::GetInstance((MenuManager *)this);
  MenuManager::RegisterMenu(Instance, (MenuBase *)this);
  v3 = *(this + 1);
  CurrentMenuContext = (gameswf::character *)MenuBase::GetCurrentMenuContext((MenuBase *)this);
  *(this + 62) = (RenderFX *)RenderFX::Find(v3, "MapIconsDummy", CurrentMenuContext);
  v5 = *(this + 1);
  v6 = (gameswf::character *)MenuBase::GetCurrentMenuContext((MenuBase *)this);
  *(this + 63) = (RenderFX *)RenderFX::Find(v5, "MapName", v6);
  v7 = *(this + 1);
  v8 = (gameswf::character *)MenuBase::GetCurrentMenuContext((MenuBase *)this);
  result = (RenderFX *)RenderFX::Find(v7, "RenderMap", v8);
  *(this + 64) = result;
  return result;
}


// ===== 453ccc MenuCharMenu_Map::MenuCharMenu_Map(void) =====
void __fastcall MenuCharMenu_Map::MenuCharMenu_Map(MenuCharMenu_Map *this)
{
  _DWORD *v2; // r3

  MenuBase::MenuBase(this, "menu_MapSheet");
  *(_DWORD *)this = off_968418;
  *((_DWORD *)this + 50) = (char *)this + 196;
  *((_DWORD *)this + 58) = 1065353216;
  *((_DWORD *)this + 61) = 0;
  *((_DWORD *)this + 49) = (char *)this + 196;
  *((_DWORD *)this + 56) = 1065353216;
  *((_DWORD *)this + 57) = 1065353216;
  *((_DWORD *)this + 59) = 0;
  *((_DWORD *)this + 60) = 0;
  *((_DWORD *)this + 52) = (char *)this + 204;
  *((_DWORD *)this + 55) = -1082130432;
  *((_DWORD *)this + 51) = (char *)this + 204;
  *((_DWORD *)this + 53) = -1082130432;
  *((_DWORD *)this + 54) = -1082130432;
  v2 = (_DWORD *)((char *)this + 260);
  do
  {
    *v2 = 0;
    v2[1] = 0;
    v2[2] = 0;
    v2 += 3;
  }
  while ( v2 != (_DWORD *)((char *)this + 476) );
  *((_DWORD *)this + 119) = 1067024384;
  *((_DWORD *)this + 122) = 0;
  *((_DWORD *)this + 120) = 1053556736;
  *((_BYTE *)this + 484) = 0;
  MenuCharMenu_Map::Init((RenderFX **)this);
}


// ===== 453da4 MenuCharMenu_Map::GetInstance(void) =====
void *__fastcall MenuCharMenu_Map::GetInstance(MenuCharMenu_Map *this)
{
  if ( (`guard variable for'MenuCharMenu_Map::GetInstance(void)::mdt & 1) == 0
    && _cxa_guard_acquire(&`guard variable for'MenuCharMenu_Map::GetInstance(void)::mdt) )
  {
    MenuCharMenu_Map::MenuCharMenu_Map((MenuCharMenu_Map *)&MenuCharMenu_Map::GetInstance(void)::mdt);
    _cxa_guard_release(&`guard variable for'MenuCharMenu_Map::GetInstance(void)::mdt);
    _aeabi_atexit(
      (int)&MenuCharMenu_Map::GetInstance(void)::mdt,
      (int)MenuCharMenu_Map::~MenuCharMenu_Map,
      (int)&_dso_handle);
  }
  return &MenuCharMenu_Map::GetInstance(void)::mdt;
}


// ===== 453e28 MenuCharMenu_Map::MenuCharMenu_Map(void) =====
void __fastcall MenuCharMenu_Map::MenuCharMenu_Map(MenuCharMenu_Map *this)
{
  _DWORD *v2; // r3

  MenuBase::MenuBase(this, "menu_MapSheet");
  *(_DWORD *)this = off_968418;
  *((_DWORD *)this + 50) = (char *)this + 196;
  *((_DWORD *)this + 58) = 1065353216;
  *((_DWORD *)this + 61) = 0;
  *((_DWORD *)this + 49) = (char *)this + 196;
  *((_DWORD *)this + 56) = 1065353216;
  *((_DWORD *)this + 57) = 1065353216;
  *((_DWORD *)this + 59) = 0;
  *((_DWORD *)this + 60) = 0;
  *((_DWORD *)this + 52) = (char *)this + 204;
  *((_DWORD *)this + 55) = -1082130432;
  *((_DWORD *)this + 51) = (char *)this + 204;
  *((_DWORD *)this + 53) = -1082130432;
  *((_DWORD *)this + 54) = -1082130432;
  v2 = (_DWORD *)((char *)this + 260);
  do
  {
    *v2 = 0;
    v2[1] = 0;
    v2[2] = 0;
    v2 += 3;
  }
  while ( v2 != (_DWORD *)((char *)this + 476) );
  *((_DWORD *)this + 119) = 1067024384;
  *((_DWORD *)this + 122) = 0;
  *((_DWORD *)this + 120) = 1053556736;
  *((_BYTE *)this + 484) = 0;
  MenuCharMenu_Map::Init((RenderFX **)this);
}


// ===== 453f00 `global constructor keyed to'.._.._sources_Game_Menus_CharacterMenu_MenuCharMenu_Map.cpp =====
int `global constructor keyed to'.._.._sources_Game_Menus_CharacterMenu_MenuCharMenu_Map.cpp()
{
  int result; // r0

  result = `guard variable for'Singleton<PlayerStatManager>::s_inst;
  dword_9A5FB4 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9A5FB0 = 1056964608;
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


// ===== 454030 MenuCharMenu_Map::RenderAllIcons(gameswf::rect const&) =====
float __fastcall MenuCharMenu_Map::RenderAllIcons(MenuCharMenu_Map *this, const gameswf::rect *a2)
{
  unsigned int i; // r4
  int v5; // r1
  float result; // r0
  int v7; // r1

  for ( i = 0; i != 18; ++i )
  {
    while ( i >= 4 && i != 7 && i != 8 && i != 9 )
    {
      v5 = i++;
      result = MenuCharMenu_Map::RenderIconType(*(float *)&this, v5, (float *)a2, 0.0);
      if ( i == 18 )
        return result;
    }
    v7 = i;
    result = MenuCharMenu_Map::RenderIconType(*(float *)&this, v7, (float *)a2, *((float *)this + 120));
  }
  return result;
}


// ===== 454108 MenuCharMenu_Map::RenderMap(gameswf::render_state &,void *) =====
int __fastcall MenuCharMenu_Map::RenderMap(int a1, int a2)
{
  RenderFX *v3; // r0
  int v4; // r7
  _DWORD *v5; // r3
  GameSWFUtils *Root; // r0
  gameswf::root *v7; // r1
  float InvPixelScaleX; // r11
  GameSWFUtils *v9; // r0
  gameswf::root *v10; // r1
  float InvPixelScaleY; // r0
  int v12; // r11
  void (__fastcall *v13)(int, float, _DWORD); // r9
  int Dt; // r0
  int v15; // r3
  _DWORD v17[4]; // [sp+8h] [bp-34h] BYREF
  _DWORD v18[4]; // [sp+18h] [bp-24h] BYREF
  float v19[5]; // [sp+28h] [bp-14h] BYREF

  GameSWFUtils::GetAbsoluteBoundingRect((GameSWFUtils *)v19, *(gameswf::character ***)(a2 + 256));
  v3 = *(RenderFX **)(a2 + 4);
  v4 = *(_DWORD *)(dword_99F73C + 16);
  v5 = *(_DWORD **)(*(_DWORD *)(v4 + 204) - 4);
  v18[0] = v5[5];
  v18[1] = v5[6];
  v18[2] = v5[7];
  v18[3] = v5[8];
  Root = (GameSWFUtils *)RenderFX::GetRoot(v3);
  InvPixelScaleX = GameSWFUtils::GetInvPixelScaleX(Root, v7);
  v9 = (GameSWFUtils *)RenderFX::GetRoot(*(RenderFX **)(a2 + 4));
  InvPixelScaleY = GameSWFUtils::GetInvPixelScaleY(v9, v10);
  v17[3] = (int)(float)(v19[3] / InvPixelScaleY);
  v17[0] = (int)(float)(v19[0] / InvPixelScaleX);
  v17[1] = (int)(float)(v19[2] / InvPixelScaleY);
  v17[2] = (int)(float)(v19[1] / InvPixelScaleX);
  (*(void (__fastcall **)(_DWORD, _DWORD *))(**(_DWORD **)(*(_DWORD *)(v4 + 204) - 4) + 12))(
    *(_DWORD *)(*(_DWORD *)(v4 + 204) - 4),
    v17);
  MenuCharMenu_Map::UpdateMapCamera(a2);
  v12 = *(_DWORD *)(dword_99F73C + 28);
  v13 = *(void (__fastcall **)(int, float, _DWORD))(*(_DWORD *)v12 + 96);
  Dt = Application::GetDt((Application *)&Singleton<Application>::s_inst);
  ((void (__fastcall *)(_DWORD, _DWORD, _DWORD))v13)(v12, (float)(unsigned int)Dt, 0);
  *(_BYTE *)(*(_DWORD *)(dword_99F73C + 28) + 592) = 0;
  v15 = *(_DWORD *)(dword_99F73C + 28);
  if ( *(_DWORD *)(v15 + 228) )
  {
    if ( *(_DWORD *)(v15 + 652) )
      (*(void (__fastcall **)(_DWORD))(*(_DWORD *)v15 + 60))(*(_DWORD *)(dword_99F73C + 28));
    MenuCharMenu_Map::RenderAllIcons((MenuCharMenu_Map *)a2, (const gameswf::rect *)v19);
    v15 = *(_DWORD *)(dword_99F73C + 28);
  }
  *(_BYTE *)(v15 + 592) = 1;
  return (*(int (__fastcall **)(_DWORD, _DWORD *))(**(_DWORD **)(*(_DWORD *)(v4 + 204) - 4) + 12))(
           *(_DWORD *)(*(_DWORD *)(v4 + 204) - 4),
           v18);
}


// ===== 4542c8 std::allocator<std::priv::_List_node<RoomZone *>>::allocate(uint,void const*) [clone] =====
void *std::allocator<std::priv::_List_node<RoomZone *>>::allocate()
{
  size_t v1; // [sp+4h] [bp-8h] BYREF

  v1 = 12;
  return __ZNSt12__node_alloc11_M_allocateERj_veneer(&v1);
}


// ===== 4542e8 std::priv::_List_base<RoomZone *,std::allocator<RoomZone *>>::clear(void) =====
_DWORD *__fastcall std::priv::_List_base<RoomZone *,std::allocator<RoomZone *>>::clear(_DWORD *a1)
{
  _DWORD *result; // r0
  _DWORD *v3; // r4

  result = (_DWORD *)*a1;
  if ( result != a1 )
  {
    while ( 1 )
    {
      v3 = (_DWORD *)*result;
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(result, 0xCu);
      if ( v3 == a1 )
        break;
      result = v3;
    }
    result = a1;
  }
  a1[1] = result;
  *a1 = result;
  return result;
}


// ===== 454328 std::vector<std::pair<gameswf::character *,glitch::core::vector3d<float>>,std::allocator<std::pair<gameswf::character *,glitch::core::vector3d<float>>>>::~vector() =====
int __fastcall std::vector<std::pair<gameswf::character *,glitch::core::vector3d<float>>>::~vector(int a1)
{
  void *v2; // r0
  size_t v3; // r1

  v2 = *(void **)a1;
  if ( !v2 )
    return a1;
  v3 = (*(_DWORD *)(a1 + 8) - (_DWORD)v2) & 0xFFFFFFF0;
  if ( v3 <= 0x80 )
  {
    __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v2, v3);
    return a1;
  }
  CustomFree(v2);
  return a1;
}


// ===== 454368 MenuCharMenu_Map::~MenuCharMenu_Map() =====
void __fastcall MenuCharMenu_Map::~MenuCharMenu_Map(MenuCharMenu_Map *this)
{
  int v1; // r1
  MenuCharMenu_Map *v3; // r4

  v1 = *((_DWORD *)this + 122);
  *(_DWORD *)this = off_968418;
  if ( v1 )
  {
    (*(void (__fastcall **)(int))(*(_DWORD *)v1 + 4))(v1);
    *((_DWORD *)this + 122) = 0;
  }
  v3 = (MenuCharMenu_Map *)((char *)this + 476);
  do
  {
    v3 = (MenuCharMenu_Map *)((char *)v3 - 12);
    std::vector<std::pair<gameswf::character *,glitch::core::vector3d<float>>>::~vector((int)v3);
  }
  while ( v3 != (MenuCharMenu_Map *)((char *)this + 260) );
  std::priv::_List_base<RoomZone *,std::allocator<RoomZone *>>::clear((_DWORD *)this + 51);
  std::priv::_List_base<RoomZone *,std::allocator<RoomZone *>>::clear((_DWORD *)this + 49);
  MenuBase::~MenuBase(this);
}


// ===== 4543f0 MenuCharMenu_Map::~MenuCharMenu_Map() =====
void __fastcall MenuCharMenu_Map::~MenuCharMenu_Map(MenuCharMenu_Map *this)
{
  MenuCharMenu_Map::~MenuCharMenu_Map(this);
  CustomFree(this);
}


// ===== 45440c MenuCharMenu_Map::~MenuCharMenu_Map() =====
void __fastcall MenuCharMenu_Map::~MenuCharMenu_Map(MenuCharMenu_Map *this)
{
  int v1; // r1
  MenuCharMenu_Map *v3; // r4

  v1 = *((_DWORD *)this + 122);
  *(_DWORD *)this = off_968418;
  if ( v1 )
  {
    (*(void (__fastcall **)(int))(*(_DWORD *)v1 + 4))(v1);
    *((_DWORD *)this + 122) = 0;
  }
  v3 = (MenuCharMenu_Map *)((char *)this + 476);
  do
  {
    v3 = (MenuCharMenu_Map *)((char *)v3 - 12);
    std::vector<std::pair<gameswf::character *,glitch::core::vector3d<float>>>::~vector((int)v3);
  }
  while ( v3 != (MenuCharMenu_Map *)((char *)this + 260) );
  std::priv::_List_base<RoomZone *,std::allocator<RoomZone *>>::clear((_DWORD *)this + 51);
  std::priv::_List_base<RoomZone *,std::allocator<RoomZone *>>::clear((_DWORD *)this + 49);
  MenuBase::~MenuBase(this);
}


// ===== 454494 std::allocator<std::pair<gameswf::character *,glitch::core::vector3d<float>>>::_M_allocate(uint,uint &) =====
void *__fastcall std::allocator<std::pair<gameswf::character *,glitch::core::vector3d<float>>>::_M_allocate(
        int a1,
        unsigned int a2,
        size_t *a3)
{
  void *result; // r0
  size_t __n; // [sp+4h] [bp-4h] BYREF

  if ( a2 > 0xFFFFFFF )
  {
    puts("out of memory\n");
    exit(1);
  }
  if ( !a2 )
    return nullptr;
  __n = 16 * a2;
  if ( 16 * a2 > 0x80 )
    result = CustomAlloc(16 * a2);
  else
    result = __ZNSt12__node_alloc11_M_allocateERj_veneer(&__n);
  *a3 = __n >> 4;
  return result;
}


// ===== 454504 MenuCharMenu_Map::DuplicateIcon(MenuCharMenu_Map::EIconType,glitch::core::vector3d<float> const&) =====
void *__fastcall MenuCharMenu_Map::DuplicateIcon(int a1, int a2, int *a3)
{
  int v6; // r2
  size_t v7; // r0
  _DWORD *v8; // r8
  gameswf::sprite_instance *v9; // r10
  int highest_depth; // r0
  int (__fastcall *v11)(_DWORD *, _BYTE *, int); // r10
  int v12; // r10
  int v13; // r1
  _DWORD *v14; // r3
  int v15; // r12
  int *v16; // r8
  int v17; // r9
  int v18; // r6
  void *result; // r0
  unsigned int v20; // r3
  unsigned int v21; // r1
  _DWORD *v22; // r0
  int v23; // r2
  int v24; // r8
  int *v25; // r8
  int v26; // r2
  char *v27; // r3
  int v28; // r1
  int v29; // r0
  int v30; // r3
  char *v31; // r0
  char *v32; // r3
  _DWORD *v33; // r8
  size_t v34; // r1
  _DWORD *v35; // r5
  size_t v36; // r3
  int v37; // [sp+10h] [bp-CCh]
  int v38; // [sp+10h] [bp-CCh]
  _DWORD *v39; // [sp+1Ch] [bp-C0h]
  size_t v40; // [sp+24h] [bp-B8h] BYREF
  char s[100]; // [sp+2Ch] [bp-B0h] BYREF
  std::string v42; // [sp+90h] [bp-4Ch] BYREF
  void *v43[5]; // [sp+A8h] [bp-34h] BYREF
  void *p; // [sp+BCh] [bp-20h]
  _BYTE v45[8]; // [sp+C0h] [bp-1Ch] BYREF
  void *v46; // [sp+CCh] [bp-10h]

  if ( a2 > 17 )
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
        "iconType < ICON_COUNT",
        "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Menus\\CharacterMenu\\MenuCharMenu_Map.cpp",
        625);
    }
  }
  v6 = MenuCharMenu_Map::DuplicateIcon(MenuCharMenu_Map::EIconType,glitch::core::vector3d<float> const&)::i++;
  LOBYTE(v43[0]) = 0;
  v43[4] = v43;
  p = v43;
  sprintf(s, "MapIcon_%d", v6);
  v7 = LC_API_STRLEN_0(s);
  std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_append(
    v43,
    s,
    &s[v7]);
  v8 = *(_DWORD **)(a1 + 248);
  gameswf::weak_ptr<gameswf::character>::check_proxy((int)(v8 + 15));
  v9 = (gameswf::sprite_instance *)v8[16];
  std::string::string(&v42, (char *)p);
  highest_depth = gameswf::sprite_instance::get_highest_depth(v9);
  v11 = *(int (__fastcall **)(_DWORD *, _BYTE *, int))(*v8 + 212);
  v37 = highest_depth;
  gameswf::tu_string::tu_string((gameswf::tu_string *)v45, v42._M_start_of_storage._M_data);
  v12 = v11(v8, v45, v37);
  if ( v45[0] == -1 )
    gameswf::free_internal(v46);
  if ( (unsigned int)(a2 - 14) <= 3 )
    v13 = 13;
  else
    v13 = a2;
  (*(void (__fastcall **)(int, int))(*(_DWORD *)v12 + 332))(v12, v13);
  v14 = (_DWORD *)(a1 + 12 * a2);
  v15 = a3[2];
  v16 = (int *)v14[66];
  v17 = *a3;
  v18 = a3[1];
  if ( v16 == (int *)v14[67] )
  {
    v20 = ((int)v16 - v14[65]) >> 4;
    if ( v20 )
      v21 = 2 * v20;
    else
      v21 = 1;
    if ( v21 > 0xFFFFFFF || v20 > v21 )
      v21 = 0xFFFFFFF;
    v40 = v21;
    v38 = v15;
    v22 = std::allocator<std::pair<gameswf::character *,glitch::core::vector3d<float>>>::_M_allocate(
            a1 + 12 * a2 + 268,
            v21,
            &v40);
    v39 = v22;
    v23 = *(_DWORD *)(a1 + 12 * a2 + 260);
    v24 = ((int)v16 - v23) >> 4;
    if ( v24 > 0 )
    {
      v26 = v23 + 16;
      v27 = (char *)(v22 + 4);
      v28 = v24;
      do
      {
        --v28;
        *((_DWORD *)v27 - 4) = *(_DWORD *)(v26 - 16);
        *((_DWORD *)v27 - 3) = *(_DWORD *)(v26 - 12);
        *((_DWORD *)v27 - 2) = *(_DWORD *)(v26 - 8);
        v29 = *(_DWORD *)(v26 - 4);
        v26 += 16;
        *((_DWORD *)v27 - 1) = v29;
        v27 += 16;
      }
      while ( v28 );
      v25 = &v39[4 * v24];
    }
    else
    {
      v25 = v22;
    }
    v30 = a1 + 12 * a2;
    *v25 = v12;
    v25[1] = v17;
    v25[2] = v18;
    v25[3] = v38;
    v31 = *(char **)(v30 + 260);
    v32 = *(char **)(v30 + 264);
    v33 = v25 + 4;
    if ( v32 != v31 )
      v32 += 16 * ~((unsigned int)(v32 - 16 - v31) >> 4);
    if ( v32 )
    {
      v34 = (*(_DWORD *)(a1 + 12 * a2 + 268) - (_DWORD)v32) & 0xFFFFFFF0;
      if ( v34 > 0x80 )
        CustomFree(v31);
      else
        __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v31, v34);
    }
    v35 = (_DWORD *)(a1 + 12 * a2);
    v36 = v40;
    v35[66] = v33;
    v35[65] = v39;
    v35[67] = &v39[4 * v36];
  }
  else
  {
    v16[3] = v15;
    *v16 = v12;
    v16[1] = v17;
    v16[2] = v18;
    v14[66] += 16;
  }
  if ( (std::string *)v42._M_start_of_storage._M_data != &v42 && v42._M_start_of_storage._M_data )
  {
    if ( (unsigned int)(v42._M_buffers._M_end_of_storage - v42._M_start_of_storage._M_data) > 0x80 )
      CustomFree(v42._M_start_of_storage._M_data);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(
        v42._M_start_of_storage._M_data,
        v42._M_buffers._M_end_of_storage - v42._M_start_of_storage._M_data);
  }
  result = p;
  if ( p != v43 )
  {
    if ( p )
      GlitchFree(p);
  }
  return result;
}


// ===== 4548ac MenuCharMenu_Map::ShowObjectivesIcons(void) =====
void __fastcall MenuCharMenu_Map::ShowObjectivesIcons(MenuCharMenu_Map *this)
{
  DH2_PlayerInfoCharacterPrefix *LocalPlayer; // r0
  int CurrentQuest; // r4
  DH2_PlayerInfoCharacterPrefix *v4; // r0
  int NumQuests; // r0
  bool v6; // cc
  DH2_PlayerInfoCharacterPrefix *v7; // r0
  PlayerSavegame *QuestByID; // r0
  PlayerSavegame *v9; // r10
  int v10; // r9
  int i; // r7
  int v12; // r4
  int *v13; // r0
  int v14; // [sp+4h] [bp-D8h]
  _BYTE v15[200]; // [sp+Ch] [bp-D0h] BYREF

  LocalPlayer = PlayerManager::GetLocalPlayer((PlayerManager *)dword_99F76C, 0, 1);
  CurrentQuest = Character::SG_GetCurrentQuest(LocalPlayer->character_660, -1);
  v4 = PlayerManager::GetLocalPlayer((PlayerManager *)dword_99F76C, 0, 1);
  NumQuests = Character::SG_GetNumQuests(v4->character_660, -1);
  v6 = CurrentQuest < -1;
  if ( CurrentQuest != -1 )
    v6 = CurrentQuest < NumQuests;
  if ( v6 )
  {
    v7 = PlayerManager::GetLocalPlayer((PlayerManager *)dword_99F76C, 0, 1);
    QuestByID = Character::SG_GetQuestByID(v7->character_660, CurrentQuest, -1);
    v9 = QuestByID;
    if ( QuestByID )
    {
      v10 = *((_DWORD *)QuestByID + 11);
      if ( v10 > 0 )
      {
        for ( i = 0; i != v10; ++i )
        {
          v12 = 0;
          v14 = *(_DWORD *)(*((_DWORD *)v9 + 12) + 4 * i);
          Vector3DFList::Vector3DFList((Vector3DFList *)v15);
          (*(void (__fastcall **)(int, _BYTE *))(*(_DWORD *)v14 + 32))(v14, v15);
          while ( v12 < Vector3DFList::getCount((Vector3DFList *)v15) )
          {
            v13 = (int *)Vector3DFList::operator[](v15, v12);
            MenuCharMenu_Map::DuplicateIcon((int)this, 0, v13);
            ++v12;
          }
          Vector3DFList::~Vector3DFList((Vector3DFList *)v15);
        }
      }
    }
  }
}


// ===== 454a08 MenuCharMenu_Map::ShowPlayersIcons(void) =====
MenuCharMenu_Map *__fastcall MenuCharMenu_Map::ShowPlayersIcons(MenuCharMenu_Map *this)
{
  int Online; // r0
  int v3; // r8
  MenuCharMenu_Map *result; // r0
  int *v5; // r5
  int v6; // r11
  int v7; // r3
  int v8; // lr
  int v9; // r6
  _DWORD *v10; // r4
  int v11; // r12
  int v12; // lr
  int v13; // r1
  int v14; // r2
  _DWORD *v15; // r4
  int v16; // r12
  int v17; // lr
  int v18; // r2
  int v19; // r3
  int v20[3]; // [sp+Ch] [bp-28h] BYREF
  int v21[3]; // [sp+18h] [bp-1Ch] BYREF
  int v22[4]; // [sp+24h] [bp-10h] BYREF

  Online = GetOnline();
  if ( *(_BYTE *)(Online + 5) )
  {
    v3 = dword_99F76C;
    result = (MenuCharMenu_Map *)PlayerManager::GetLocalPlayer((PlayerManager *)dword_99F76C, 0, 0);
    v5 = *(int **)(v3 + 1704);
    v6 = *((_DWORD *)result + 412);
    if ( v5 != *(int **)(v3 + 1708) )
    {
      while ( 1 )
      {
        v9 = *v5;
        v10 = *((_DWORD **)PlayerManager::GetPlayerByInternalID((PlayerManager *)dword_99F76C, *v5, 0) + 408);
        result = this;
        if ( !v10 )
          goto LABEL_5;
        if ( v9 == v6 )
        {
          v11 = v10[90];
          v12 = v10[88];
          v22[1] = v10[89];
          v22[0] = v12;
          v22[2] = v11;
          result = (MenuCharMenu_Map *)MenuCharMenu_Map::DuplicateIcon((int)this, 3, v22);
          v13 = v10[88];
          v14 = v10[89];
          *((_DWORD *)this + 61) = v10[90];
          *((_DWORD *)this + 59) = v13;
          *((_DWORD *)this + 60) = v14;
          if ( ++v5 == *(int **)(v3 + 1708) )
            return result;
        }
        else
        {
          v7 = v10[89];
          v8 = v10[90];
          v21[0] = v10[88];
          v21[1] = v7;
          v21[2] = v8;
          result = (MenuCharMenu_Map *)MenuCharMenu_Map::DuplicateIcon((int)this, 7, v21);
LABEL_5:
          if ( ++v5 == *(int **)(v3 + 1708) )
            return result;
        }
      }
    }
  }
  else
  {
    result = (MenuCharMenu_Map *)PlayerManager::GetLocalPlayer(
                                   (PlayerManager *)dword_99F76C,
                                   *(unsigned __int8 *)(Online + 5),
                                   1);
    v15 = *((_DWORD **)result + 408);
    if ( v15 )
    {
      v16 = v15[89];
      v17 = v15[88];
      v20[2] = v15[90];
      v20[0] = v17;
      v20[1] = v16;
      result = (MenuCharMenu_Map *)MenuCharMenu_Map::DuplicateIcon((int)this, 3, v20);
      v18 = v15[89];
      v19 = v15[90];
      *((_DWORD *)this + 59) = v15[88];
      *((_DWORD *)this + 60) = v18;
      *((_DWORD *)this + 61) = v19;
    }
  }
  return result;
}


// ===== 454b8c MenuCharMenu_Map::ShowRoomExitsIcons(void) =====
void *__fastcall MenuCharMenu_Map::ShowRoomExitsIcons(void *this)
{
  float v1; // r8
  int v2; // r4
  int v3; // r9
  int i; // r5
  float v5; // r7
  int v6; // r6
  float v7; // r3
  float v8; // r10
  int v9; // r3
  float v10[3]; // [sp+2Ch] [bp-38h] BYREF
  float v11[3]; // [sp+38h] [bp-2Ch] BYREF
  float v12[3]; // [sp+44h] [bp-20h] BYREF
  float v13; // [sp+50h] [bp-14h] BYREF
  float v14; // [sp+54h] [bp-10h]
  float v15; // [sp+58h] [bp-Ch]
  float v16[2]; // [sp+5Ch] [bp-8h] BYREF

  v2 = dword_9A275C;
  v3 = dword_9A2760;
  for ( i = (int)this; v2 != v3; v2 += 16 )
  {
    v9 = *(_DWORD *)v2;
    if ( *(_DWORD *)v2 == 2 )
    {
      v5 = 1.0;
      v1 = 0.0;
      v6 = 16;
    }
    else if ( v9 == 3 )
    {
      v5 = -1.0;
      v1 = 0.0;
      v6 = 17;
    }
    else
    {
      if ( v9 == 1 )
        v1 = -0.5;
      v5 = 0.0;
      if ( v9 == 1 )
      {
        LODWORD(v1) += 0x800000;
        v6 = 15;
      }
      else
      {
        v1 = 1.0;
        v6 = 14;
      }
    }
    v13 = *(float *)(v2 + 4);
    v14 = *(float *)(v2 + 8);
    v7 = *(float *)(v2 + 12);
    v12[0] = v13;
    v12[1] = v14;
    v12[2] = v7;
    v15 = v7;
    this = (void *)MenuCharMenu_Map::IsInsideRooms(i, v12, 1);
    if ( this )
    {
      v8 = (float)(v1 * 3000.0) + v14;
      v1 = v15 + 0.0;
      v11[0] = (float)(v5 * 3000.0) + v13;
      v11[1] = v8;
      v11[2] = v15 + 0.0;
      this = (void *)MenuCharMenu_Map::IsInsideRooms(i, v11, 0);
      if ( this )
      {
        v10[0] = v13;
        v10[1] = v14;
        v15 = 0.0;
        v16[0] = 0.0;
        v10[2] = 0.0;
        PFWorld::GetFloorHeightAt((int)&Singleton<PFWorld>::s_inst, v10, (int)v16, 0, nullptr, 0, 0);
        v15 = v16[0];
        this = MenuCharMenu_Map::DuplicateIcon(i, v6, (int *)&v13);
      }
    }
  }
  return this;
}


// ===== 454d5c MenuCharMenu_Map::ShowMapExitsIcons(void) =====
float *__fastcall MenuCharMenu_Map::ShowMapExitsIcons(MenuCharMenu_Map *this)
{
  float *result; // r0
  _DWORD *v3; // r4
  int v4; // r9
  int v5; // r1
  char *Object; // r0
  char *v7; // r5
  char *v8; // r0
  char *v9; // r5
  float *v10; // r5
  _DWORD *v11; // r3
  int v12; // r12
  int v13; // lr
  int v14; // r12
  int v15; // lr
  int v16; // r12
  int v17; // lr
  int v18; // r2
  float *v19; // [sp+4h] [bp-58h]
  int v20[3]; // [sp+10h] [bp-4Ch] BYREF
  char *v21[3]; // [sp+1Ch] [bp-40h] BYREF
  int v22[3]; // [sp+28h] [bp-34h] BYREF
  char *v23[3]; // [sp+34h] [bp-28h] BYREF
  int v24[3]; // [sp+40h] [bp-1Ch] BYREF
  char *v25[4]; // [sp+4Ch] [bp-10h] BYREF

  result = (float *)Application::GetCurrentLevel((Application *)&Singleton<Application>::s_inst);
  v19 = result;
  v3 = *(_DWORD **)(dword_99F764 + 20);
  v4 = dword_99F764 + 12;
  while ( (_DWORD *)v4 != v3 )
  {
    while ( 1 )
    {
      v5 = v3[11];
      if ( v5 )
      {
        ObjectBase::GetHandle((ObjectBase *)v25, v5);
        Object = ObjectHandle::GetObject(v25, 0);
        v7 = Object;
        if ( Object
          && *((_DWORD *)Object + 61) == 13
          && *((_DWORD *)Object + 221) == *((_DWORD *)v19 + 68)
          && Object[138]
          && MenuCharMenu_Map::IsInsideRooms((int)this, (float *)Object + 88, 1) )
        {
          v12 = *((_DWORD *)v7 + 89);
          v13 = *((_DWORD *)v7 + 90);
          v24[0] = *((_DWORD *)v7 + 88);
          v24[1] = v12;
          v24[2] = v13;
          MenuCharMenu_Map::DuplicateIcon((int)this, 1, v24);
        }
        ObjectBase::GetHandle((ObjectBase *)v23, v3[11]);
        v8 = ObjectHandle::GetObject(v23, 0);
        v9 = v8;
        if ( v8
          && *((_DWORD *)v8 + 61) == 14
          && v8[138]
          && MenuCharMenu_Map::IsInsideRooms((int)this, (float *)v8 + 88, 1) )
        {
          v14 = *((_DWORD *)v9 + 89);
          v15 = *((_DWORD *)v9 + 90);
          v22[0] = *((_DWORD *)v9 + 88);
          v22[1] = v14;
          v22[2] = v15;
          MenuCharMenu_Map::DuplicateIcon((int)this, 2, v22);
        }
        ObjectBase::GetHandle((ObjectBase *)v21, v3[11]);
        result = (float *)ObjectHandle::GetObject(v21, 0);
        v10 = result;
        if ( result )
        {
          if ( *((_DWORD *)result + 61) == 12 )
          {
            result = (float *)MenuCharMenu_Map::IsInsideRooms((int)this, result + 88, 1);
            if ( result )
              break;
          }
        }
      }
      v11 = (_DWORD *)v3[3];
      if ( !v11 )
        goto LABEL_25;
LABEL_13:
      while ( v11[2] )
        v11 = (_DWORD *)v11[2];
      v3 = v11;
      if ( (_DWORD *)v4 == v11 )
        return result;
    }
    v16 = *((_DWORD *)v10 + 89);
    v17 = *((_DWORD *)v10 + 90);
    v20[0] = (int)v10[88];
    v20[1] = v16;
    v20[2] = v17;
    result = (float *)MenuCharMenu_Map::DuplicateIcon((int)this, 12, v20);
    v11 = (_DWORD *)v3[3];
    if ( v11 )
      goto LABEL_13;
LABEL_25:
    v18 = v3[1];
    if ( *(_DWORD **)(v18 + 12) == v3 )
    {
      do
      {
        v3 = (_DWORD *)v18;
        v18 = *(_DWORD *)(v18 + 4);
      }
      while ( v3 == *(_DWORD **)(v18 + 12) );
      v11 = (_DWORD *)v3[3];
    }
    if ( v11 != (_DWORD *)v18 )
      v3 = (_DWORD *)v18;
  }
  return result;
}


// ===== 454fb8 MenuCharMenu_Map::ShowNpcIcons(void) =====
int __fastcall MenuCharMenu_Map::ShowNpcIcons(int this)
{
  int v1; // r7
  _DWORD *v2; // r5
  int v3; // r6
  int v4; // r4
  int v5; // r12
  int v6; // lr
  int v7; // r12
  int v8; // lr
  int v9; // r3
  int v10; // lr
  int v11[3]; // [sp+4h] [bp-24h] BYREF
  int v12[3]; // [sp+10h] [bp-18h] BYREF
  int v13[3]; // [sp+1Ch] [bp-Ch] BYREF

  v1 = this;
  v2 = *(_DWORD **)(dword_99F764 + 96);
  v3 = dword_99F764 + 96;
  while ( (_DWORD *)v3 != v2 )
  {
    v4 = v2[2];
    if ( v4 )
    {
      this = *(_DWORD *)(v4 + 728);
      if ( this )
      {
        this = VisualObject::IsVisible((VisualObject *)this);
        if ( this )
        {
          if ( *(_BYTE *)(v4 + 128) )
          {
            this = (*(int (__fastcall **)(int))(*(_DWORD *)v4 + 52))(v4);
            if ( !this )
            {
              this = MenuCharMenu_Map::IsInsideRooms(v1, (float *)(v4 + 352), 1);
              if ( this )
              {
                if ( Character::IsMonster((Character *)v4) )
                {
                  v9 = *(_DWORD *)(v4 + 356);
                  v10 = *(_DWORD *)(v4 + 360);
                  v13[0] = *(_DWORD *)(v4 + 352);
                  v13[1] = v9;
                  v13[2] = v10;
                  this = (int)MenuCharMenu_Map::DuplicateIcon(v1, 4, v13);
                  v2 = (_DWORD *)*v2;
                  continue;
                }
                if ( *(_BYTE *)(v4 + 762) && !*(_BYTE *)(v4 + 763) )
                {
                  v5 = *(_DWORD *)(v4 + 356);
                  v6 = *(_DWORD *)(v4 + 360);
                  v12[0] = *(_DWORD *)(v4 + 352);
                  v12[1] = v5;
                  v12[2] = v6;
                  this = (int)MenuCharMenu_Map::DuplicateIcon(v1, 10, v12);
                  v2 = (_DWORD *)*v2;
                  continue;
                }
                this = Character::IsMerchant((Character *)v4);
                if ( this )
                {
                  v7 = *(_DWORD *)(v4 + 356);
                  v8 = *(_DWORD *)(v4 + 360);
                  v11[0] = *(_DWORD *)(v4 + 352);
                  v11[1] = v7;
                  v11[2] = v8;
                  this = (int)MenuCharMenu_Map::DuplicateIcon(v1, 11, v11);
                  v2 = (_DWORD *)*v2;
                  continue;
                }
              }
            }
          }
        }
      }
    }
    v2 = (_DWORD *)*v2;
  }
  return this;
}


// ===== 455138 MenuCharMenu_Map::Show(void) =====
DH2_PlayerInfoCharacterPrefix *__fastcall MenuCharMenu_Map::Show(MenuCharMenu_Map *this)
{
  DH2_PlayerInfoCharacterPrefix *result; // r0
  int v3; // r3
  int *v4; // r6
  int v5; // r7
  _DWORD *v6; // r0
  _DWORD *v7; // r3
  _DWORD *v8; // r5
  _DWORD *v9; // r6
  float *v10; // r0
  float v11; // r7
  float v12; // r10
  float v13; // r11
  float v14; // r8
  float v15; // r9
  int IsInsideRooms; // r11
  float v17; // r6
  float v18; // r10
  float v19; // r6
  float v20; // r7
  float v21; // r7
  float v22; // r6
  float v23; // r0
  int Switch; // r6
  int v25; // lr
  int v26; // r5
  int v27; // r6
  _DWORD *v28; // r0
  _DWORD *v29; // r3
  float v30; // [sp+4h] [bp-78h]
  int v31; // [sp+Ch] [bp-70h]
  int v32[3]; // [sp+1Ch] [bp-60h] BYREF
  int v33[3]; // [sp+28h] [bp-54h] BYREF
  int v34[3]; // [sp+34h] [bp-48h] BYREF
  int v35[3]; // [sp+40h] [bp-3Ch] BYREF
  float v36[3]; // [sp+4Ch] [bp-30h] BYREF
  std::string v37; // [sp+5Ch] [bp-20h] BYREF

  RenderFX::RegisterDisplayCallback(*((_DWORD *)this + 1), "RenderMap", MenuCharMenu_Map::RenderMap, this);
  result = (DH2_PlayerInfoCharacterPrefix *)MenuBase::Show(this);
  v3 = *(_DWORD *)(*(_DWORD *)(dword_99F73C + 28) + 652);
  if ( v3 )
  {
    (*(void (__fastcall **)(_DWORD, int))(*(_DWORD *)v3 + 72))(*(_DWORD *)(*(_DWORD *)(dword_99F73C + 28) + 652), 1);
    result = PlayerManager::GetLocalPlayer((PlayerManager *)dword_99F76C, 0, 1);
    if ( result->character_660 )
    {
      v5 = dword_99F764 + 36;
      v4 = *(int **)(dword_99F764 + 36);
      std::priv::_List_base<RoomZone *,std::allocator<RoomZone *>>::clear((_DWORD *)this + 49);
      std::priv::_List_base<RoomZone *,std::allocator<RoomZone *>>::clear((_DWORD *)this + 51);
      for ( ; (int *)v5 != v4; v4 = (int *)*v4 )
      {
        if ( RoomZone::HasBeenVisited((RoomZone *)v4[2]) )
        {
          v6 = std::allocator<std::priv::_List_node<RoomZone *>>::allocate();
          v6[2] = v4[2];
          v7 = *((_DWORD **)this + 50);
          *v6 = (char *)this + 196;
          v6[1] = v7;
          *v7 = v6;
          *((_DWORD *)this + 50) = v6;
        }
        else
        {
          v28 = std::allocator<std::priv::_List_node<RoomZone *>>::allocate();
          v28[2] = v4[2];
          v29 = *((_DWORD **)this + 52);
          *v28 = (char *)this + 204;
          v28[1] = v29;
          *v29 = v28;
          *((_DWORD *)this + 52) = v28;
        }
      }
      *((_DWORD *)this + 58) = -8388609;
      *((_DWORD *)this + 55) = 2139095039;
      *((_DWORD *)this + 56) = -8388609;
      *((_DWORD *)this + 57) = -8388609;
      *((_DWORD *)this + 53) = 2139095039;
      *((_DWORD *)this + 54) = 2139095039;
      v8 = *(_DWORD **)(*(_DWORD *)(*(_DWORD *)(dword_99F73C + 28) + 652) + 244);
      v31 = *(_DWORD *)(*(_DWORD *)(dword_99F73C + 28) + 652) + 244;
      if ( v8 == (_DWORD *)v31 )
        goto LABEL_34;
      do
      {
        if ( v8 )
          v9 = v8 - 1;
        else
          v9 = nullptr;
        v8 = (_DWORD *)*v8;
        v10 = (float *)(*(int (__fastcall **)(_DWORD *))(*v9 + 52))(v9);
        v11 = v10[3];
        v12 = *v10;
        v13 = v10[5];
        v14 = v10[1];
        v15 = v10[4];
        v30 = v10[2];
        v36[0] = (float)(*v10 + v11) * 0.5;
        v36[1] = (float)(v14 + v15) * 0.5;
        v36[2] = (float)(v30 + v13) * 0.5;
        IsInsideRooms = MenuCharMenu_Map::IsInsideRooms((int)this, v36, 1);
        (*(void (__fastcall **)(_DWORD *, int))(*v9 + 72))(v9, IsInsideRooms);
        if ( IsInsideRooms )
        {
          v17 = *((float *)this + 53);
          if ( v12 < v17 )
            v17 = v12;
          v18 = *((float *)this + 54);
          *((float *)this + 53) = v17;
          v19 = *((float *)this + 56);
          if ( v14 < v18 )
            v18 = v14;
          *((float *)this + 54) = v18;
          if ( v11 > v19 )
            v19 = v11;
          v20 = *((float *)this + 57);
          *((float *)this + 56) = v19;
          if ( v15 > v20 )
            v20 = v15;
          *((float *)this + 57) = v20;
        }
      }
      while ( (_DWORD *)v31 != v8 );
      if ( *((float *)this + 56) < *((float *)this + 53) )
      {
LABEL_34:
        *((_DWORD *)this + 53) = 0;
        *((_DWORD *)this + 56) = 0;
      }
      v21 = *((float *)this + 53);
      if ( *((float *)this + 54) > *((float *)this + 57) )
      {
        *((_DWORD *)this + 54) = 0;
        *((_DWORD *)this + 57) = 0;
      }
      *((_DWORD *)this + 55) = 0;
      *((_DWORD *)this + 58) = 0;
      v22 = *((float *)this + 56) - v21;
      v23 = *((float *)this + 57) - *((float *)this + 54);
      *((float *)this + 53) = v21 - v22;
      *((float *)this + 54) = *((float *)this + 54) - v23;
      *((float *)this + 56) = *((float *)this + 56) + v22;
      *((float *)this + 57) = *((float *)this + 57) + v23;
      MenuCharMenu_Map::ClearAllIcons(this);
      MenuCharMenu_Map::ShowPlayersIcons(this);
      MenuCharMenu_Map::ShowNpcIcons((int)this);
      MenuCharMenu_Map::ShowMapExitsIcons(this);
      MenuCharMenu_Map::ShowRoomExitsIcons(this);
      MenuCharMenu_Map::ShowObjectivesIcons(this);
      MenuCharMenu_Map::ShowLevelName(this);
      DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
      std::string::string(&v37, "isDisplayingMiniMapBoundingBox");
      Switch = DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v37);
      if ( (std::string *)v37._M_start_of_storage._M_data != &v37 && v37._M_start_of_storage._M_data )
      {
        if ( (unsigned int)(v37._M_buffers._M_end_of_storage - v37._M_start_of_storage._M_data) > 0x80 )
          CustomFree(v37._M_start_of_storage._M_data);
        else
          __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(
            v37._M_start_of_storage._M_data,
            v37._M_buffers._M_end_of_storage - v37._M_start_of_storage._M_data);
      }
      if ( Switch )
      {
        v25 = *((_DWORD *)this + 54);
        v26 = *((_DWORD *)this + 57);
        v27 = *((_DWORD *)this + 53);
        v32[0] = *((_DWORD *)this + 56);
        v32[1] = v25;
        v32[2] = 0;
        v35[2] = 0;
        v34[1] = v25;
        v34[2] = 0;
        v33[0] = v32[0];
        v33[2] = 0;
        v34[0] = v27;
        v33[1] = v26;
        v35[0] = v27;
        v35[1] = v26;
        MenuCharMenu_Map::DuplicateIcon((int)this, 0, v35);
        MenuCharMenu_Map::DuplicateIcon((int)this, 0, v34);
        MenuCharMenu_Map::DuplicateIcon((int)this, 0, v33);
        MenuCharMenu_Map::DuplicateIcon((int)this, 0, v32);
      }
      return (DH2_PlayerInfoCharacterPrefix *)MenuCharMenu_Map::CreateMapCamera((int *)this);
    }
  }
  return result;
}


// ===== 455628 ScriptCmdImpl::Init(void) =====
void __fastcall ScriptCmdImpl::Init(ScriptCmdImpl *this)
{
  ;
}


// ===== 45562c ScriptCmdImpl::Update(void) =====
void __fastcall ScriptCmdImpl::Update(ScriptCmdImpl *this)
{
  ;
}


// ===== 455630 Script_EmptyImpl::IsBlocking(void) =====
int __fastcall Script_EmptyImpl::IsBlocking(Script_EmptyImpl *this)
{
  return 0;
}


// ===== 455638 Script_EnterCutSceneMode::IsBlocking(void) =====
int __fastcall Script_EnterCutSceneMode::IsBlocking(Script_EnterCutSceneMode *this)
{
  return 0;
}


// ===== 455640 Script_ExitCutSceneMode::IsBlocking(void) =====
int __fastcall Script_ExitCutSceneMode::IsBlocking(Script_ExitCutSceneMode *this)
{
  return 0;
}


// ===== 455648 Script_CONSOLE::IsBlocking(void) =====
int __fastcall Script_CONSOLE::IsBlocking(Script_CONSOLE *this)
{
  return 0;
}


// ===== 455650 Script_PlaySound::IsBlocking(void) =====
int __fastcall Script_PlaySound::IsBlocking(Script_PlaySound *this)
{
  return 0;
}


// ===== 455658 Script_StopSound::IsBlocking(void) =====
int __fastcall Script_StopSound::IsBlocking(Script_StopSound *this)
{
  return 0;
}


// ===== 455660 Script_PlayLevelMusic::IsBlocking(void) =====
int __fastcall Script_PlayLevelMusic::IsBlocking(Script_PlayLevelMusic *this)
{
  return 0;
}


// ===== 455668 Script_EnterSafeZone::IsBlocking(void) =====
int __fastcall Script_EnterSafeZone::IsBlocking(Script_EnterSafeZone *this)
{
  return 0;
}


// ===== 455670 Script_LeaveSafeZone::IsBlocking(void) =====
int __fastcall Script_LeaveSafeZone::IsBlocking(Script_LeaveSafeZone *this)
{
  return 0;
}


// ===== 455678 Script_SetCamera::Execute(bool,int) =====
void __fastcall Script_SetCamera::Execute(Script_SetCamera *this, bool a2, int a3)
{
  ;
}


// ===== 45567c Script_SetCamera::IsBlocking(void) =====
int __fastcall Script_SetCamera::IsBlocking(Script_SetCamera *this)
{
  return 0;
}


// ===== 455684 Script_SetCameraClip::IsBlocking(void) =====
int __fastcall Script_SetCameraClip::IsBlocking(Script_SetCameraClip *this)
{
  return 0;
}


// ===== 45568c Script_StartDialog::IsBlocking(void) =====
int __fastcall Script_StartDialog::IsBlocking(Script_StartDialog *this)
{
  return 0;
}


// ===== 455694 Script_StartDialogID::IsBlocking(void) =====
int __fastcall Script_StartDialogID::IsBlocking(Script_StartDialogID *this)
{
  return 0;
}


// ===== 45569c Script_PlayAnimById::IsBlocking(void) =====
int __fastcall Script_PlayAnimById::IsBlocking(Script_PlayAnimById *this)
{
  return 0;
}


// ===== 4556a4 Script_PlayAnimByName::IsBlocking(void) =====
int __fastcall Script_PlayAnimByName::IsBlocking(Script_PlayAnimByName *this)
{
  return 0;
}


// ===== 4556ac Script_PlayEffect::IsBlocking(void) =====
int __fastcall Script_PlayEffect::IsBlocking(Script_PlayEffect *this)
{
  return 0;
}


// ===== 4556b4 Script_StopEffect::IsBlocking(void) =====
int __fastcall Script_StopEffect::IsBlocking(Script_StopEffect *this)
{
  return 0;
}


// ===== 4556bc Script_LockCharacter::IsBlocking(void) =====
int __fastcall Script_LockCharacter::IsBlocking(Script_LockCharacter *this)
{
  return 0;
}


// ===== 4556c4 Script_ShowFlash::IsBlocking(void) =====
bool __fastcall Script_ShowFlash::IsBlocking(Script_ShowFlash *this)
{
  int v1; // r2
  int v2; // r3
  int v3; // r3

  v1 = *((_DWORD *)this + 4);
  v2 = *((_DWORD *)this + 3);
  if ( v1 && *(_BYTE *)(v2 + 20) && (v3 = *(_DWORD *)(v2 + 8), v3 > 0) )
    return v3 > *(_DWORD *)(v1 + 120);
  else
    return 0;
}


// ===== 455708 Script_HideFlash::IsBlocking(void) =====
bool __fastcall Script_HideFlash::IsBlocking(Script_HideFlash *this)
{
  int v1; // r2
  int v2; // r3
  int v3; // r3

  v1 = *((_DWORD *)this + 4);
  v2 = *((_DWORD *)this + 3);
  if ( v1 && *(_BYTE *)(v2 + 20) && (v3 = *(_DWORD *)(v2 + 8), v3 > 0) )
    return v3 > *(_DWORD *)(v1 + 120);
  else
    return 0;
}


// ===== 45574c Script_UnlockCharacter::IsBlocking(void) =====
int __fastcall Script_UnlockCharacter::IsBlocking(Script_UnlockCharacter *this)
{
  return 0;
}


// ===== 455754 Script_Wait::IsBlocking(void) =====
bool __fastcall Script_Wait::IsBlocking(Script_Wait *this)
{
  return *((_DWORD *)this + 4) < *((_DWORD *)this + 5);
}


// ===== 45576c Script_SetFaeryState::IsBlocking(void) =====
int __fastcall Script_SetFaeryState::IsBlocking(Script_SetFaeryState *this)
{
  return 0;
}


// ===== 455774 Script_IncFaeryLevel::IsBlocking(void) =====
int __fastcall Script_IncFaeryLevel::IsBlocking(Script_IncFaeryLevel *this)
{
  return 0;
}


// ===== 45577c Script_PutCharacterInLimbus::IsBlocking(void) =====
int __fastcall Script_PutCharacterInLimbus::IsBlocking(Script_PutCharacterInLimbus *this)
{
  return 0;
}


// ===== 455784 Script_SpawnCharacter::IsBlocking(void) =====
int __fastcall Script_SpawnCharacter::IsBlocking(Script_SpawnCharacter *this)
{
  return 0;
}


// ===== 45578c Script_PutCharacterInIdle::IsBlocking(void) =====
int __fastcall Script_PutCharacterInIdle::IsBlocking(Script_PutCharacterInIdle *this)
{
  return 0;
}


// ===== 455794 Script_MarkCharacterAsScripted::IsBlocking(void) =====
int __fastcall Script_MarkCharacterAsScripted::IsBlocking(Script_MarkCharacterAsScripted *this)
{
  return 0;
}


// ===== 45579c Script_AIEnableTimer::Execute(bool,int) =====
void __fastcall Script_AIEnableTimer::Execute(Script_AIEnableTimer *this, bool a2, int a3)
{
  ;
}


// ===== 4557a0 Script_AIEnableTimer::IsBlocking(void) =====
int __fastcall Script_AIEnableTimer::IsBlocking(Script_AIEnableTimer *this)
{
  return 0;
}


// ===== 4557a8 Script_AIResetTimer::Execute(bool,int) =====
void __fastcall Script_AIResetTimer::Execute(Script_AIResetTimer *this, bool a2, int a3)
{
  ;
}


// ===== 4557ac Script_AIResetTimer::IsBlocking(void) =====
int __fastcall Script_AIResetTimer::IsBlocking(Script_AIResetTimer *this)
{
  return 0;
}


// ===== 4557b4 Script_AIDoSkill::Execute(bool,int) =====
void __fastcall Script_AIDoSkill::Execute(Script_AIDoSkill *this, bool a2, int a3)
{
  ;
}


// ===== 4557b8 Script_AIDoSkill::IsBlocking(void) =====
int __fastcall Script_AIDoSkill::IsBlocking(Script_AIDoSkill *this)
{
  return 0;
}


// ===== 4557c0 Script_AISetHP::Execute(bool,int) =====
void __fastcall Script_AISetHP::Execute(Script_AISetHP *this, bool a2, int a3)
{
  ;
}


// ===== 4557c4 Script_AISetHP::IsBlocking(void) =====
int __fastcall Script_AISetHP::IsBlocking(Script_AISetHP *this)
{
  return 0;
}


// ===== 4557cc Script_AIChangeScript::Execute(bool,int) =====
void __fastcall Script_AIChangeScript::Execute(Script_AIChangeScript *this, bool a2, int a3)
{
  ;
}


// ===== 4557d0 Script_AIChangeScript::IsBlocking(void) =====
int __fastcall Script_AIChangeScript::IsBlocking(Script_AIChangeScript *this)
{
  return 0;
}


// ===== 4557d8 Script_AISetInt::IsBlocking(void) =====
int __fastcall Script_AISetInt::IsBlocking(Script_AISetInt *this)
{
  return 0;
}


// ===== 4557e0 Script_StopActor::IsBlocking(void) =====
int __fastcall Script_StopActor::IsBlocking(Script_StopActor *this)
{
  return 0;
}


// ===== 4557e8 Script_DropLoot::IsBlocking(void) =====
int __fastcall Script_DropLoot::IsBlocking(Script_DropLoot *this)
{
  return 0;
}


// ===== 4557f0 Script_AutoEquip::IsBlocking(void) =====
int __fastcall Script_AutoEquip::IsBlocking(Script_AutoEquip *this)
{
  return 0;
}


// ===== 4557f8 Script_UnEquipItemFromSlot::IsBlocking(void) =====
int __fastcall Script_UnEquipItemFromSlot::IsBlocking(Script_UnEquipItemFromSlot *this)
{
  return 0;
}


// ===== 455800 Script_UnEquipHands::IsBlocking(void) =====
int __fastcall Script_UnEquipHands::IsBlocking(Script_UnEquipHands *this)
{
  return 0;
}


// ===== 455808 Script_ReEquipHands::IsBlocking(void) =====
int __fastcall Script_ReEquipHands::IsBlocking(Script_ReEquipHands *this)
{
  return 0;
}


// ===== 455810 Script_SetStatic::IsBlocking(void) =====
int __fastcall Script_SetStatic::IsBlocking(Script_SetStatic *this)
{
  return 0;
}


// ===== 455818 Script_LookActor::IsBlocking(void) =====
int __fastcall Script_LookActor::IsBlocking(Script_LookActor *this)
{
  return 0;
}


// ===== 455820 Script_ShowActor::IsBlocking(void) =====
int __fastcall Script_ShowActor::IsBlocking(Script_ShowActor *this)
{
  return 0;
}


// ===== 455828 Script_HideActor::IsBlocking(void) =====
int __fastcall Script_HideActor::IsBlocking(Script_HideActor *this)
{
  return 0;
}


// ===== 455830 Script_KillActor::IsBlocking(void) =====
int __fastcall Script_KillActor::IsBlocking(Script_KillActor *this)
{
  return 0;
}


// ===== 455838 Script_SetActorPosition::IsBlocking(void) =====
int __fastcall Script_SetActorPosition::IsBlocking(Script_SetActorPosition *this)
{
  return 0;
}


// ===== 455840 Script_SetActorMaster::IsBlocking(void) =====
int __fastcall Script_SetActorMaster::IsBlocking(Script_SetActorMaster *this)
{
  return 0;
}


// ===== 455848 Script_OpenDoor::IsBlocking(void) =====
int __fastcall Script_OpenDoor::IsBlocking(Script_OpenDoor *this)
{
  int v1; // r3
  int v2; // r0
  bool v3; // zf
  int v4; // r0

  v1 = *((_DWORD *)this + 4);
  if ( !v1 || !*((_BYTE *)this + 20) )
    return 0;
  v2 = *(_DWORD *)(v1 + 936);
  v3 = v2 == 1;
  if ( v2 != 1 )
    v3 = v2 == 3;
  v4 = v3;
  return v4 ^ 1;
}


// ===== 455884 Script_CloseDoor::IsBlocking(void) =====
bool __fastcall Script_CloseDoor::IsBlocking(Script_CloseDoor *this)
{
  int v1; // r3
  int v2; // r0
  bool v3; // zf

  v1 = *((_DWORD *)this + 4);
  if ( !v1 || !*((_BYTE *)this + 20) )
    return 0;
  v2 = *(_DWORD *)(v1 + 936);
  v3 = v2 == 1;
  if ( v2 != 1 )
    return v2 == 3;
  return v3;
}


// ===== 4558bc Script_ActivateProjectileTrap::IsBlocking(void) =====
int __fastcall Script_ActivateProjectileTrap::IsBlocking(Script_ActivateProjectileTrap *this)
{
  return 0;
}


// ===== 4558c4 Script_DeactivateProjectileTrap::IsBlocking(void) =====
int __fastcall Script_DeactivateProjectileTrap::IsBlocking(Script_DeactivateProjectileTrap *this)
{
  return 0;
}


// ===== 4558cc Script_ActivateTriggerPlate::IsBlocking(void) =====
int __fastcall Script_ActivateTriggerPlate::IsBlocking(Script_ActivateTriggerPlate *this)
{
  return 0;
}


// ===== 4558d4 Script_DeactivateTriggerPlate::IsBlocking(void) =====
int __fastcall Script_DeactivateTriggerPlate::IsBlocking(Script_DeactivateTriggerPlate *this)
{
  return 0;
}


// ===== 4558dc Script_SpawnContainer::IsBlocking(void) =====
int __fastcall Script_SpawnContainer::IsBlocking(Script_SpawnContainer *this)
{
  return 0;
}


// ===== 4558e4 Script_SetLevelState::IsBlocking(void) =====
int __fastcall Script_SetLevelState::IsBlocking(Script_SetLevelState *this)
{
  return 0;
}


// ===== 4558ec Script_SetWorldMapLocationState::IsBlocking(void) =====
int __fastcall Script_SetWorldMapLocationState::IsBlocking(Script_SetWorldMapLocationState *this)
{
  return 0;
}


// ===== 4558f4 Script_RestartLevel::IsBlocking(void) =====
int __fastcall Script_RestartLevel::IsBlocking(Script_RestartLevel *this)
{
  return 0;
}


// ===== 4558fc Script_ChangeLevel::IsBlocking(void) =====
int __fastcall Script_ChangeLevel::IsBlocking(Script_ChangeLevel *this)
{
  return 0;
}


// ===== 455904 Script_ShowTrophies::Execute(bool,int) =====
void __fastcall Script_ShowTrophies::Execute(Script_ShowTrophies *this, bool a2, int a3)
{
  ;
}


// ===== 455908 Script_ShowTrophies::IsBlocking(void) =====
int __fastcall Script_ShowTrophies::IsBlocking(Script_ShowTrophies *this)
{
  return 1;
}


// ===== 455910 Script_EndGame::IsBlocking(void) =====
int __fastcall Script_EndGame::IsBlocking(Script_EndGame *this)
{
  return 0;
}


// ===== 455918 Script_AwardEndGameTrophies::IsBlocking(void) =====
int __fastcall Script_AwardEndGameTrophies::IsBlocking(Script_AwardEndGameTrophies *this)
{
  return 0;
}


// ===== 455920 Script_AwardTrophy::IsBlocking(void) =====
int __fastcall Script_AwardTrophy::IsBlocking(Script_AwardTrophy *this)
{
  return 0;
}


// ===== 455928 Script_SaveGame::IsBlocking(void) =====
int __fastcall Script_SaveGame::IsBlocking(Script_SaveGame *this)
{
  return 0;
}


// ===== 455930 Script_BlockSaveGame::IsBlocking(void) =====
int __fastcall Script_BlockSaveGame::IsBlocking(Script_BlockSaveGame *this)
{
  return 0;
}


// ===== 455938 Script_EnqueueTutorialMessage::IsBlocking(void) =====
int __fastcall Script_EnqueueTutorialMessage::IsBlocking(Script_EnqueueTutorialMessage *this)
{
  return 0;
}


// ===== 455940 Script_SkipTutorialMessage::IsBlocking(void) =====
int __fastcall Script_SkipTutorialMessage::IsBlocking(Script_SkipTutorialMessage *this)
{
  return 0;
}


// ===== 455948 Script_SkipAllTutorialMessages::IsBlocking(void) =====
int __fastcall Script_SkipAllTutorialMessages::IsBlocking(Script_SkipAllTutorialMessages *this)
{
  return 0;
}


// ===== 455950 Script_EnqueueCharMenuTutorialMessage::IsBlocking(void) =====
int __fastcall Script_EnqueueCharMenuTutorialMessage::IsBlocking(Script_EnqueueCharMenuTutorialMessage *this)
{
  return 0;
}


// ===== 455958 Script_SkipCharMenuTutorialMessage::IsBlocking(void) =====
int __fastcall Script_SkipCharMenuTutorialMessage::IsBlocking(Script_SkipCharMenuTutorialMessage *this)
{
  return 0;
}


// ===== 455960 Script_SkipAllCharMenuTutorialMessages::IsBlocking(void) =====
int __fastcall Script_SkipAllCharMenuTutorialMessages::IsBlocking(Script_SkipAllCharMenuTutorialMessages *this)
{
  return 0;
}


// ===== 455968 Script_LockTutorial::IsBlocking(void) =====
int __fastcall Script_LockTutorial::IsBlocking(Script_LockTutorial *this)
{
  return 0;
}


// ===== 455970 Script_DoTutorial::IsBlocking(void) =====
int __fastcall Script_DoTutorial::IsBlocking(Script_DoTutorial *this)
{
  return 0;
}


// ===== 455978 Script_FlushMessages::IsBlocking(void) =====
int __fastcall Script_FlushMessages::IsBlocking(Script_FlushMessages *this)
{
  return 0;
}


// ===== 455980 ScriptManager::ScriptManager(void) =====
void __fastcall ScriptManager::ScriptManager(ScriptManager *this)
{
  *((_BYTE *)this + 48) = 0;
  *(_DWORD *)this = -1;
  *((_DWORD *)this + 1) = 0;
  *((_DWORD *)this + 2) = 0;
  *((_DWORD *)this + 3) = 0;
  *((_DWORD *)this + 4) = 0;
  *((_DWORD *)this + 5) = 0;
  *((_DWORD *)this + 6) = 0;
  *((_DWORD *)this + 7) = 0;
  *((_DWORD *)this + 8) = 0;
  *((_DWORD *)this + 9) = 0;
  *((_DWORD *)this + 10) = 0;
  *((_DWORD *)this + 11) = 0;
}


// ===== 4559bc ScriptManager::ScriptManager(void) =====
void __fastcall ScriptManager::ScriptManager(ScriptManager *this)
{
  *((_BYTE *)this + 48) = 0;
  *(_DWORD *)this = -1;
  *((_DWORD *)this + 1) = 0;
  *((_DWORD *)this + 2) = 0;
  *((_DWORD *)this + 3) = 0;
  *((_DWORD *)this + 4) = 0;
  *((_DWORD *)this + 5) = 0;
  *((_DWORD *)this + 6) = 0;
  *((_DWORD *)this + 7) = 0;
  *((_DWORD *)this + 8) = 0;
  *((_DWORD *)this + 9) = 0;
  *((_DWORD *)this + 10) = 0;
  *((_DWORD *)this + 11) = 0;
}


// ===== 4559f8 ScriptCmdImpl::~ScriptCmdImpl() =====
void __fastcall ScriptCmdImpl::~ScriptCmdImpl(ScriptCmdImpl *this)
{
  int v1; // r1
  int v3; // r3

  v1 = *((_DWORD *)this + 3);
  *(_DWORD *)this = off_968488;
  if ( v1 )
  {
    (*(void (__fastcall **)(int))(*(_DWORD *)v1 + 8))(v1);
    v3 = *((_DWORD *)this + 3);
    if ( v3 )
      (*(void (__fastcall **)(_DWORD))(*(_DWORD *)v3 + 4))(*((_DWORD *)this + 3));
    *((_DWORD *)this + 3) = 0;
  }
}


// ===== 455a68 ScriptCmdImpl::~ScriptCmdImpl() =====
void __fastcall ScriptCmdImpl::~ScriptCmdImpl(ScriptCmdImpl *this)
{
  int v1; // r1
  int v3; // r3

  v1 = *((_DWORD *)this + 3);
  *(_DWORD *)this = off_968488;
  if ( v1 )
  {
    (*(void (__fastcall **)(int))(*(_DWORD *)v1 + 8))(v1);
    v3 = *((_DWORD *)this + 3);
    if ( v3 )
      (*(void (__fastcall **)(_DWORD))(*(_DWORD *)v3 + 4))(*((_DWORD *)this + 3));
    *((_DWORD *)this + 3) = 0;
  }
}


// ===== 455ad8 ScriptManager::InitCommands(void) =====
int __fastcall ScriptManager::InitCommands(ScriptManager *this)
{
  int v2; // r3
  int result; // r0
  int v4; // r5
  unsigned int v5; // r7
  int v6; // r2
  int v7; // r4
  void (__fastcall ***v8)(_DWORD); // r3

  v2 = *((_DWORD *)this + 6);
  result = *((_DWORD *)this + 7);
  if ( -1431655765 * ((result - v2) >> 2) )
  {
    v4 = 0;
    v5 = 0;
    do
    {
      v6 = v2 + v4;
      if ( *(int *)(v2 + v4) > 0 )
      {
        v7 = 0;
        do
        {
          v8 = *(void (__fastcall ****)(_DWORD))(*(_DWORD *)(v6 + 8) + 4 * v7++);
          (**v8)(v8);
          v2 = *((_DWORD *)this + 6);
          v6 = v2 + v4;
        }
        while ( *(_DWORD *)(v2 + v4) > v7 );
        result = *((_DWORD *)this + 7);
      }
      ++v5;
      v4 += 12;
    }
    while ( v5 < -1431655765 * ((result - v2) >> 2) );
  }
  return result;
}


// ===== 455b8c ScriptManager::GetNameFromID(int) =====
int __fastcall ScriptManager::GetNameFromID(ScriptManager *this, int a2)
{
  int v3; // r3

  if ( a2 < 0 )
    return 0;
  v3 = *((_DWORD *)this + 9);
  if ( a2 >= (*((_DWORD *)this + 10) - v3) >> 2 )
    return 0;
  else
    return *(_DWORD *)(v3 + 4 * a2);
}


// ===== 455bb8 ScriptManager::StopScript(int,bool) =====
int __fastcall ScriptManager::StopScript(int this, int a2, bool a3)
{
  int v3; // r3

  v3 = 12 * a2;
  *(_DWORD *)(*(_DWORD *)(this + 12) + v3 + 8) = 2;
  *(_DWORD *)(*(_DWORD *)(this + 12) + v3) = -1;
  return this;
}


// ===== 455be0 ScriptManager::StopSkipping(void) =====
_DWORD *__fastcall ScriptManager::StopSkipping(_DWORD *this)
{
  *this = -1;
  return this;
}


// ===== 455bec ScriptManager::IsScriptRunning(int) =====
bool __fastcall ScriptManager::IsScriptRunning(ScriptManager *this, int a2)
{
  return *(_DWORD *)(*((_DWORD *)this + 3) + 12 * a2 + 8) != 2;
}


// ===== 455c08 Script_ExecScript::IsBlocking(void) =====
int __fastcall Script_ExecScript::IsBlocking(Script_ExecScript *this)
{
  if ( *(_BYTE *)(*((_DWORD *)this + 3) + 24) )
    return ScriptManager::IsScriptRunning((ScriptManager *)&ScriptManager::s_inst, *((_DWORD *)this + 4));
  else
    return *(unsigned __int8 *)(*((_DWORD *)this + 3) + 24);
}


// ===== 455c40 ScriptManager::GetScriptModule(int) =====
int __fastcall ScriptManager::GetScriptModule(ScriptManager *this, int a2)
{
  return *(_DWORD *)(*((_DWORD *)this + 3) + 12 * a2);
}


// ===== 455c54 ScriptManager::IsCutSceneRunning(void) =====
int __fastcall ScriptManager::IsCutSceneRunning(ScriptManager *this)
{
  int v2; // r6
  int v3; // r4

  v2 = -1431655765 * ((*((_DWORD *)this + 7) - *((_DWORD *)this + 6)) >> 2);
  if ( v2 <= 0 )
    return 0;
  v3 = 0;
  while ( !ScriptManager::IsScriptRunning(this, v3++) )
  {
    if ( v3 == v2 )
      return 0;
  }
  return 1;
}


// ===== 455cc0 std::vector<ScriptManager::ScriptCmds,std::allocator<ScriptManager::ScriptCmds>>::_M_fill_insert_aux(ScriptManager::ScriptCmds*,uint,ScriptManager::ScriptCmds const&,std::__false_type const&) =====
_DWORD *__fastcall std::vector<ScriptManager::ScriptCmds>::_M_fill_insert_aux(
        _DWORD *result,
        int a2,
        unsigned int a3,
        int *a4)
{
  _DWORD *v4; // r12
  unsigned int v6; // r6
  int v7; // r5
  int v8; // lr
  int v9; // r7
  int v10; // r4
  unsigned int v11; // r8
  int v12; // r7
  unsigned int v13; // r0
  int v14; // r2
  _DWORD *v15; // r1
  int v16; // r0
  int v17; // r1
  unsigned int v18; // r2
  int v19; // r4
  int v20; // r1
  _DWORD *v21; // r2
  unsigned int v22; // r4
  int v23; // r8
  int v24; // r1
  _DWORD *v25; // r2
  int v26; // r6
  int v27; // r2
  _DWORD *v28; // r1
  int v29; // r0
  int v30; // r1
  _DWORD *v31; // r2
  _DWORD v32[3]; // [sp+8h] [bp-10h] BYREF
  char v33[4]; // [sp+14h] [bp-4h] BYREF

  v4 = result;
  if ( (unsigned int)a4 >= *result )
  {
    v6 = result[1];
    if ( (unsigned int)a4 < v6 )
    {
      v7 = *a4;
      v8 = a4[2];
      v32[1] = a4[1];
      v32[2] = v8;
      v32[0] = v7;
      return (_DWORD *)std::vector<ScriptManager::ScriptCmds>::_M_fill_insert_aux(result, a2, a3, v32, v33);
    }
  }
  else
  {
    v6 = result[1];
  }
  v9 = -1431655765 * ((int)(v6 - a2) >> 2);
  if ( a3 >= v9 )
  {
    v22 = v6 + 12 * (a3 - v9);
    v23 = -1431655765 * ((int)(12 * (a3 - v9)) >> 2);
    if ( v23 > 0 )
    {
      result = a4 + 1;
      v24 = 0;
      do
      {
        v25 = (_DWORD *)(v6 + v24 + 4);
        *(_DWORD *)(v6 + v24) = *a4;
        --v23;
        v24 += 12;
        *v25 = *result;
        v25[1] = a4[2];
      }
      while ( v23 );
    }
    v4[1] = v22;
    if ( v9 <= 0 )
    {
      v4[1] = v22 + 4 * ((int)(v6 - a2) >> 2);
    }
    else
    {
      v26 = -1431655765 * ((int)(v6 - a2) >> 2);
      v27 = 0;
      do
      {
        *(_DWORD *)(v22 + v27) = *(_DWORD *)(a2 + v27);
        *(_DWORD *)(v22 + v27 + 4) = *(_DWORD *)(a2 + v27 + 4);
        v28 = (_DWORD *)(v22 + v27 + 8);
        v29 = *(_DWORD *)(a2 + v27 + 8);
        --v26;
        v27 += 12;
        *v28 = v29;
      }
      while ( v26 );
      result = a4 + 1;
      v30 = 0;
      v4[1] += 12 * v9;
      do
      {
        v31 = (_DWORD *)(a2 + v30 + 4);
        *(_DWORD *)(a2 + v30) = *a4;
        --v9;
        v30 += 12;
        *v31 = *result;
        v31[1] = a4[2];
      }
      while ( v9 );
    }
  }
  else
  {
    v10 = 12 * a3;
    v11 = v6 - 12 * a3;
    v12 = -1431655765 * ((int)(12 * a3) >> 2);
    if ( v12 > 0 )
    {
      v14 = 0;
      do
      {
        *(_DWORD *)(v6 + v14) = *(_DWORD *)(v11 + v14);
        *(_DWORD *)(v6 + v14 + 4) = *(_DWORD *)(v11 + v14 + 4);
        v15 = (_DWORD *)(v6 + v14 + 8);
        v16 = *(_DWORD *)(v11 + v14 + 8);
        --v12;
        v14 += 12;
        *v15 = v16;
      }
      while ( v12 );
      v13 = v4[1];
    }
    else
    {
      v13 = v6;
    }
    result = (_DWORD *)(v13 + v10);
    v4[1] = result;
    v17 = -1431655765 * ((int)(v11 - a2) >> 2);
    if ( v17 > 0 )
    {
      v18 = v6 - v10;
      do
      {
        --v17;
        *(_DWORD *)(v6 - 12) = *(_DWORD *)(v18 - 12);
        *(_DWORD *)(v6 - 8) = *(_DWORD *)(v18 - 8);
        result = *(_DWORD **)(v18 - 4);
        v18 -= 12;
        *(_DWORD *)(v6 - 4) = result;
        v6 -= 12;
      }
      while ( v17 );
    }
    v19 = -1431655765 * (v10 >> 2);
    if ( v19 > 0 )
    {
      result = a4 + 1;
      v20 = 0;
      do
      {
        v21 = (_DWORD *)(a2 + v20 + 4);
        *(_DWORD *)(a2 + v20) = *a4;
        --v19;
        v20 += 12;
        *v21 = *result;
        v21[1] = a4[2];
      }
      while ( v19 );
    }
  }
  return result;
}


// ===== 455f78 std::vector<ScriptManager::ScriptContext,std::allocator<ScriptManager::ScriptContext>>::_M_fill_insert_aux(ScriptManager::ScriptContext*,uint,ScriptManager::ScriptContext const&,std::__false_type const&) =====
_DWORD *__fastcall std::vector<ScriptManager::ScriptContext>::_M_fill_insert_aux(
        _DWORD *result,
        int a2,
        unsigned int a3,
        int *a4)
{
  _DWORD *v4; // r12
  unsigned int v6; // r6
  int v7; // r5
  int v8; // lr
  int v9; // r7
  int v10; // r4
  unsigned int v11; // r8
  int v12; // r7
  unsigned int v13; // r0
  int v14; // r2
  _DWORD *v15; // r1
  int v16; // r0
  int v17; // r1
  unsigned int v18; // r2
  int v19; // r4
  int v20; // r1
  _DWORD *v21; // r2
  unsigned int v22; // r4
  int v23; // r8
  int v24; // r1
  _DWORD *v25; // r2
  int v26; // r6
  int v27; // r2
  _DWORD *v28; // r1
  int v29; // r0
  int v30; // r1
  _DWORD *v31; // r2
  _DWORD v32[3]; // [sp+8h] [bp-10h] BYREF
  char v33[4]; // [sp+14h] [bp-4h] BYREF

  v4 = result;
  if ( (unsigned int)a4 >= *result )
  {
    v6 = result[1];
    if ( (unsigned int)a4 < v6 )
    {
      v7 = *a4;
      v8 = a4[2];
      v32[1] = a4[1];
      v32[2] = v8;
      v32[0] = v7;
      return (_DWORD *)std::vector<ScriptManager::ScriptContext>::_M_fill_insert_aux(result, a2, a3, v32, v33);
    }
  }
  else
  {
    v6 = result[1];
  }
  v9 = -1431655765 * ((int)(v6 - a2) >> 2);
  if ( a3 >= v9 )
  {
    v22 = v6 + 12 * (a3 - v9);
    v23 = -1431655765 * ((int)(12 * (a3 - v9)) >> 2);
    if ( v23 > 0 )
    {
      result = a4 + 1;
      v24 = 0;
      do
      {
        v25 = (_DWORD *)(v6 + v24 + 4);
        *(_DWORD *)(v6 + v24) = *a4;
        --v23;
        v24 += 12;
        *v25 = *result;
        v25[1] = a4[2];
      }
      while ( v23 );
    }
    v4[1] = v22;
    if ( v9 <= 0 )
    {
      v4[1] = v22 + 4 * ((int)(v6 - a2) >> 2);
    }
    else
    {
      v26 = -1431655765 * ((int)(v6 - a2) >> 2);
      v27 = 0;
      do
      {
        *(_DWORD *)(v22 + v27) = *(_DWORD *)(a2 + v27);
        *(_DWORD *)(v22 + v27 + 4) = *(_DWORD *)(a2 + v27 + 4);
        v28 = (_DWORD *)(v22 + v27 + 8);
        v29 = *(_DWORD *)(a2 + v27 + 8);
        --v26;
        v27 += 12;
        *v28 = v29;
      }
      while ( v26 );
      result = a4 + 1;
      v30 = 0;
      v4[1] += 12 * v9;
      do
      {
        v31 = (_DWORD *)(a2 + v30 + 4);
        *(_DWORD *)(a2 + v30) = *a4;
        --v9;
        v30 += 12;
        *v31 = *result;
        v31[1] = a4[2];
      }
      while ( v9 );
    }
  }
  else
  {
    v10 = 12 * a3;
    v11 = v6 - 12 * a3;
    v12 = -1431655765 * ((int)(12 * a3) >> 2);
    if ( v12 > 0 )
    {
      v14 = 0;
      do
      {
        *(_DWORD *)(v6 + v14) = *(_DWORD *)(v11 + v14);
        *(_DWORD *)(v6 + v14 + 4) = *(_DWORD *)(v11 + v14 + 4);
        v15 = (_DWORD *)(v6 + v14 + 8);
        v16 = *(_DWORD *)(v11 + v14 + 8);
        --v12;
        v14 += 12;
        *v15 = v16;
      }
      while ( v12 );
      v13 = v4[1];
    }
    else
    {
      v13 = v6;
    }
    result = (_DWORD *)(v13 + v10);
    v4[1] = result;
    v17 = -1431655765 * ((int)(v11 - a2) >> 2);
    if ( v17 > 0 )
    {
      v18 = v6 - v10;
      do
      {
        --v17;
        *(_DWORD *)(v6 - 12) = *(_DWORD *)(v18 - 12);
        *(_DWORD *)(v6 - 8) = *(_DWORD *)(v18 - 8);
        result = *(_DWORD **)(v18 - 4);
        v18 -= 12;
        *(_DWORD *)(v6 - 4) = result;
        v6 -= 12;
      }
      while ( v17 );
    }
    v19 = -1431655765 * (v10 >> 2);
    if ( v19 > 0 )
    {
      result = a4 + 1;
      v20 = 0;
      do
      {
        v21 = (_DWORD *)(a2 + v20 + 4);
        *(_DWORD *)(a2 + v20) = *a4;
        --v19;
        v20 += 12;
        *v21 = *result;
        v21[1] = a4[2];
      }
      while ( v19 );
    }
  }
  return result;
}


// ===== 456230 std::priv::_Deque_iterator_base<DialogMsg>::_M_subtract(std::priv::_Deque_iterator_base<DialogMsg> const&) =====
int __fastcall std::priv::_Deque_iterator_base<DialogMsg>::_M_subtract(_DWORD *a1, _DWORD *a2)
{
  return ((a1[3] - a2[3]) >> 2) - -678152731 * ((*a1 - a1[1]) >> 2) - 1 - -678152731 * ((a2[2] - *a2) >> 2);
}


// ===== 456298 std::priv::_Deque_iterator_base<TutorialMsg>::_M_subtract(std::priv::_Deque_iterator_base<TutorialMsg> const&) =====
int __fastcall std::priv::_Deque_iterator_base<TutorialMsg>::_M_subtract(_DWORD *a1, _DWORD *a2)
{
  return ((*a1 - a1[1]) >> 3) + ((a2[2] - *a2) >> 3) + 16 * (((a1[3] - a2[3]) >> 2) - 1);
}


// ===== 4562dc std::priv::_Deque_iterator_base<CharMenuTutorialMsg>::_M_subtract(std::priv::_Deque_iterator_base<CharMenuTutorialMsg> const&) =====
int __fastcall std::priv::_Deque_iterator_base<CharMenuTutorialMsg>::_M_subtract(_DWORD *a1, _DWORD *a2)
{
  return -991146299 * ((*a1 - a1[1]) >> 2) - 991146299 * ((a2[2] - *a2) >> 2) + 2 * (((a1[3] - a2[3]) >> 2) - 1);
}


// ===== 45632c ScriptManager::ScriptCmds::Free(void) =====
void __fastcall ScriptManager::ScriptCmds::Free(ScriptManager::ScriptCmds *this)
{
  _DWORD *v2; // r0
  int v3; // r3
  int v4; // r4
  ScriptCmdImpl *v5; // r5

  v2 = *((_DWORD **)this + 2);
  if ( v2 )
  {
    v3 = *(_DWORD *)this;
    if ( *(int *)this > 0 )
    {
      v4 = 0;
      do
      {
        v5 = (ScriptCmdImpl *)v2[v4++];
        if ( v5 )
        {
          ScriptCmdImpl::~ScriptCmdImpl(v5);
          CustomFree(v5);
          v3 = *(_DWORD *)this;
          v2 = *((_DWORD **)this + 2);
        }
      }
      while ( v3 > v4 );
    }
    CustomFree(v2);
  }
  *(_DWORD *)this = 0;
  *((_DWORD *)this + 2) = 0;
}


// ===== 456394 GetNewScriptCmdDataInstance<Structs::FlushMessages>(void) =====
_DWORD *GetNewScriptCmdDataInstance<Structs::FlushMessages>()
{
  _DWORD *result; // r0

  result = (_DWORD *)operator new(8u, 0);
  result[1] = 0;
  *result = off_96A480;
  return result;
}


// ===== 4563d0 GetNewScriptCmdDataInstance<Structs::DoTutorial>(void) =====
_DWORD *GetNewScriptCmdDataInstance<Structs::DoTutorial>()
{
  _DWORD *result; // r0

  result = (_DWORD *)operator new(0x14u, 0);
  result[3] = 0;
  *result = off_96A498;
  return result;
}


// ===== 45640c GetNewScriptCmdDataInstance<Structs::LockTutorial>(void) =====
_DWORD *GetNewScriptCmdDataInstance<Structs::LockTutorial>()
{
  _DWORD *result; // r0

  result = (_DWORD *)operator new(0xCu, 0);
  result[2] = 0;
  result[1] = 0;
  *result = off_96A4B0;
  return result;
}


// ===== 45644c GetNewScriptCmdDataInstance<Structs::SkipAllCharMenuTutorialMessages>(void) =====
_DWORD *GetNewScriptCmdDataInstance<Structs::SkipAllCharMenuTutorialMessages>()
{
  _DWORD *result; // r0

  result = (_DWORD *)operator new(8u, 0);
  result[1] = 0;
  *result = off_96A4C8;
  return result;
}


// ===== 456488 GetNewScriptCmdDataInstance<Structs::SkipCharMenuTutorialMessage>(void) =====
_DWORD *GetNewScriptCmdDataInstance<Structs::SkipCharMenuTutorialMessage>()
{
  _DWORD *result; // r0

  result = (_DWORD *)operator new(8u, 0);
  result[1] = 0;
  *result = off_96A4E0;
  return result;
}


// ===== 4564c4 GetNewScriptCmdDataInstance<Structs::EnqueueCharMenuTutorialMessage>(void) =====
_DWORD *GetNewScriptCmdDataInstance<Structs::EnqueueCharMenuTutorialMessage>()
{
  _DWORD *result; // r0

  result = (_DWORD *)operator new(0x1Cu, 0);
  result[5] = 0;
  result[3] = 0;
  *result = off_96A4F8;
  return result;
}


// ===== 456504 GetNewScriptCmdDataInstance<Structs::SkipAllTutorialMessages>(void) =====
_DWORD *GetNewScriptCmdDataInstance<Structs::SkipAllTutorialMessages>()
{
  _DWORD *result; // r0

  result = (_DWORD *)operator new(8u, 0);
  result[1] = 0;
  *result = off_96A510;
  return result;
}


// ===== 456540 GetNewScriptCmdDataInstance<Structs::SkipTutorialMessage>(void) =====
_DWORD *GetNewScriptCmdDataInstance<Structs::SkipTutorialMessage>()
{
  _DWORD *result; // r0

  result = (_DWORD *)operator new(8u, 0);
  result[1] = 0;
  *result = off_96A528;
  return result;
}


// ===== 45657c GetNewScriptCmdDataInstance<Structs::EnqueueTutorialMessage>(void) =====
_DWORD *GetNewScriptCmdDataInstance<Structs::EnqueueTutorialMessage>()
{
  _DWORD *result; // r0

  result = (_DWORD *)operator new(0x10u, 0);
  result[3] = 0;
  result[1] = 0;
  *result = off_96A540;
  result[2] = 0;
  return result;
}


// ===== 4565c0 GetNewScriptCmdDataInstance<Structs::BlockSaveGame>(void) =====
_DWORD *GetNewScriptCmdDataInstance<Structs::BlockSaveGame>()
{
  _DWORD *result; // r0

  result = (_DWORD *)operator new(8u, 0);
  result[1] = 0;
  *result = off_96A558;
  return result;
}


// ===== 4565fc GetNewScriptCmdDataInstance<Structs::SaveGame>(void) =====
_DWORD *GetNewScriptCmdDataInstance<Structs::SaveGame>()
{
  _DWORD *result; // r0

  result = (_DWORD *)operator new(8u, 0);
  result[1] = 0;
  *result = off_96A570;
  return result;
}


// ===== 456638 GetNewScriptCmdDataInstance<Structs::ShowTrophies>(void) =====
_DWORD *GetNewScriptCmdDataInstance<Structs::ShowTrophies>()
{
  _DWORD *result; // r0

  result = (_DWORD *)operator new(8u, 0);
  result[1] = 0;
  *result = off_96A588;
  return result;
}


// ===== 456674 GetNewScriptCmdDataInstance<Structs::AwardEndGameTrophies>(void) =====
_DWORD *GetNewScriptCmdDataInstance<Structs::AwardEndGameTrophies>()
{
  _DWORD *result; // r0

  result = (_DWORD *)operator new(8u, 0);
  result[1] = 0;
  *result = off_96A5A0;
  return result;
}


// ===== 4566b0 GetNewScriptCmdDataInstance<Structs::AwardTrophy>(void) =====
_DWORD *GetNewScriptCmdDataInstance<Structs::AwardTrophy>()
{
  _DWORD *result; // r0

  result = (_DWORD *)operator new(0xCu, 0);
  result[2] = 0;
  result[1] = 0;
  *result = off_96A5B8;
  return result;
}


// ===== 4566f0 GetNewScriptCmdDataInstance<Structs::EndGame>(void) =====
_DWORD *GetNewScriptCmdDataInstance<Structs::EndGame>()
{
  _DWORD *result; // r0

  result = (_DWORD *)operator new(8u, 0);
  result[1] = 0;
  *result = off_96A5D0;
  return result;
}


// ===== 45672c GetNewScriptCmdDataInstance<Structs::ChangeLevel>(void) =====
_DWORD *GetNewScriptCmdDataInstance<Structs::ChangeLevel>()
{
  _DWORD *result; // r0

  result = (_DWORD *)operator new(0x14u, 0);
  result[4] = 0;
  *result = off_96A5E8;
  return result;
}


// ===== 456768 GetNewScriptCmdDataInstance<Structs::RestartLevel>(void) =====
_DWORD *GetNewScriptCmdDataInstance<Structs::RestartLevel>()
{
  _DWORD *result; // r0

  result = (_DWORD *)operator new(8u, 0);
  result[1] = 0;
  *result = off_96A600;
  return result;
}


// ===== 4567a4 GetNewScriptCmdDataInstance<Structs::SetWorldMapLocationState>(void) =====
_DWORD *GetNewScriptCmdDataInstance<Structs::SetWorldMapLocationState>()
{
  _DWORD *result; // r0

  result = (_DWORD *)operator new(0x10u, 0);
  result[3] = 0;
  result[1] = 0;
  *result = off_96A618;
  result[2] = 0;
  return result;
}


// ===== 4567e8 GetNewScriptCmdDataInstance<Structs::SetLevelState>(void) =====
_DWORD *GetNewScriptCmdDataInstance<Structs::SetLevelState>()
{
  _DWORD *result; // r0

  result = (_DWORD *)operator new(0x10u, 0);
  result[3] = 0;
  result[1] = 0;
  *result = off_96A630;
  result[2] = 0;
  return result;
}


// ===== 45682c GetNewScriptCmdDataInstance<Structs::SpawnContainer>(void) =====
_DWORD *GetNewScriptCmdDataInstance<Structs::SpawnContainer>()
{
  _DWORD *result; // r0

  result = (_DWORD *)operator new(0x10u, 0);
  result[3] = 0;
  *result = off_96A648;
  return result;
}


// ===== 456868 GetNewScriptCmdDataInstance<Structs::DeactivateTriggerPlate>(void) =====
_DWORD *GetNewScriptCmdDataInstance<Structs::DeactivateTriggerPlate>()
{
  _DWORD *result; // r0

  result = (_DWORD *)operator new(0x10u, 0);
  result[3] = 0;
  *result = off_96A660;
  return result;
}


// ===== 4568a4 GetNewScriptCmdDataInstance<Structs::ActivateTriggerPlate>(void) =====
_DWORD *GetNewScriptCmdDataInstance<Structs::ActivateTriggerPlate>()
{
  _DWORD *result; // r0

  result = (_DWORD *)operator new(0x10u, 0);
  result[3] = 0;
  *result = off_96A678;
  return result;
}


// ===== 4568e0 GetNewScriptCmdDataInstance<Structs::DeactivateProjectileTrap>(void) =====
_DWORD *GetNewScriptCmdDataInstance<Structs::DeactivateProjectileTrap>()
{
  _DWORD *result; // r0

  result = (_DWORD *)operator new(0x10u, 0);
  result[3] = 0;
  *result = off_96A690;
  return result;
}


// ===== 45691c GetNewScriptCmdDataInstance<Structs::ActivateProjectileTrap>(void) =====
_DWORD *GetNewScriptCmdDataInstance<Structs::ActivateProjectileTrap>()
{
  _DWORD *result; // r0

  result = (_DWORD *)operator new(0x10u, 0);
  result[3] = 0;
  *result = off_96A6A8;
  return result;
}


// ===== 456958 GetNewScriptCmdDataInstance<Structs::CloseDoor>(void) =====
_DWORD *GetNewScriptCmdDataInstance<Structs::CloseDoor>()
{
  _DWORD *result; // r0

  result = (_DWORD *)operator new(0x14u, 0);
  result[3] = 0;
  *result = off_96A6C0;
  return result;
}


// ===== 456994 GetNewScriptCmdDataInstance<Structs::OpenDoor>(void) =====
_DWORD *GetNewScriptCmdDataInstance<Structs::OpenDoor>()
{
  _DWORD *result; // r0

  result = (_DWORD *)operator new(0x14u, 0);
  result[3] = 0;
  *result = off_96A6D8;
  return result;
}


// ===== 4569d0 GetNewScriptCmdDataInstance<Structs::SetStatic>(void) =====
_DWORD *GetNewScriptCmdDataInstance<Structs::SetStatic>()
{
  _DWORD *result; // r0

  result = (_DWORD *)operator new(0x14u, 0);
  result[4] = 0;
  *result = off_96A6F0;
  return result;
}


// ===== 456a0c GetNewScriptCmdDataInstance<Structs::ReEquipHands>(void) =====
_DWORD *GetNewScriptCmdDataInstance<Structs::ReEquipHands>()
{
  _DWORD *result; // r0

  result = (_DWORD *)operator new(0x10u, 0);
  result[3] = 0;
  *result = off_96A708;
  return result;
}


// ===== 456a48 GetNewScriptCmdDataInstance<Structs::UnEquipHands>(void) =====
_DWORD *GetNewScriptCmdDataInstance<Structs::UnEquipHands>()
{
  _DWORD *result; // r0

  result = (_DWORD *)operator new(0x10u, 0);
  result[3] = 0;
  *result = off_96A720;
  return result;
}


// ===== 456a84 GetNewScriptCmdDataInstance<Structs::UnEquipItemFromSlot>(void) =====
_DWORD *GetNewScriptCmdDataInstance<Structs::UnEquipItemFromSlot>()
{
  _DWORD *result; // r0

  result = (_DWORD *)operator new(0x14u, 0);
  result[4] = 0;
  *result = off_96A738;
  return result;
}


// ===== 456ac0 GetNewScriptCmdDataInstance<Structs::AutoEquip>(void) =====
_DWORD *GetNewScriptCmdDataInstance<Structs::AutoEquip>()
{
  _DWORD *result; // r0

  result = (_DWORD *)operator new(0x10u, 0);
  result[3] = 0;
  *result = off_96A750;
  return result;
}


// ===== 456afc GetNewScriptCmdDataInstance<Structs::DropLoot>(void) =====
_DWORD *GetNewScriptCmdDataInstance<Structs::DropLoot>()
{
  _DWORD *result; // r0

  result = (_DWORD *)operator new(0x18u, 0);
  result[5] = 0;
  result[3] = 0;
  *result = off_96A768;
  return result;
}


// ===== 456b3c GetNewScriptCmdDataInstance<Structs::SetActorMaster>(void) =====
_DWORD *GetNewScriptCmdDataInstance<Structs::SetActorMaster>()
{
  _DWORD *result; // r0

  result = (_DWORD *)operator new(0x20u, 0);
  result[7] = 0;
  result[4] = 0;
  *result = off_96A780;
  return result;
}


// ===== 456b7c GetNewScriptCmdDataInstance<Structs::SetActorPosition>(void) =====
_DWORD *GetNewScriptCmdDataInstance<Structs::SetActorPosition>()
{
  _DWORD *result; // r0

  result = (_DWORD *)operator new(0x18u, 0);
  result[5] = 0;
  result[3] = 0;
  *result = off_96A798;
  return result;
}


// ===== 456bbc GetNewScriptCmdDataInstance<Structs::PlayActorAnim>(void) =====
_DWORD *GetNewScriptCmdDataInstance<Structs::PlayActorAnim>()
{
  _DWORD *result; // r0

  result = (_DWORD *)operator new(0x20u, 0);
  result[6] = 0;
  *result = off_96A7B0;
  return result;
}


// ===== 456bf8 GetNewScriptCmdDataInstance<Structs::KillActor>(void) =====
_DWORD *GetNewScriptCmdDataInstance<Structs::KillActor>()
{
  _DWORD *result; // r0

  result = (_DWORD *)operator new(0x10u, 0);
  result[3] = 0;
  *result = off_96A7C8;
  return result;
}


// ===== 456c34 GetNewScriptCmdDataInstance<Structs::HideActor>(void) =====
_DWORD *GetNewScriptCmdDataInstance<Structs::HideActor>()
{
  _DWORD *result; // r0

  result = (_DWORD *)operator new(0x10u, 0);
  result[3] = 0;
  *result = off_96A7E0;
  return result;
}


// ===== 456c70 GetNewScriptCmdDataInstance<Structs::ShowActor>(void) =====
_DWORD *GetNewScriptCmdDataInstance<Structs::ShowActor>()
{
  _DWORD *result; // r0

  result = (_DWORD *)operator new(0x10u, 0);
  result[3] = 0;
  *result = off_96A7F8;
  return result;
}


// ===== 456cac GetNewScriptCmdDataInstance<Structs::LookActor>(void) =====
_DWORD *GetNewScriptCmdDataInstance<Structs::LookActor>()
{
  _DWORD *result; // r0

  result = (_DWORD *)operator new(0x18u, 0);
  result[5] = 0;
  result[3] = 0;
  *result = off_96A810;
  return result;
}


// ===== 456cec GetNewScriptCmdDataInstance<Structs::MoveActor>(void) =====
_DWORD *GetNewScriptCmdDataInstance<Structs::MoveActor>()
{
  _DWORD *result; // r0

  result = (_DWORD *)operator new(0x20u, 0);
  result[6] = 0;
  result[3] = 0;
  *result = off_96A828;
  return result;
}


// ===== 456d2c GetNewScriptCmdDataInstance<Structs::StopActor>(void) =====
_DWORD *GetNewScriptCmdDataInstance<Structs::StopActor>()
{
  _DWORD *result; // r0

  result = (_DWORD *)operator new(0x10u, 0);
  result[3] = 0;
  *result = off_96A840;
  return result;
}


// ===== 456d68 GetNewScriptCmdDataInstance<Structs::AISetInt>(void) =====
_DWORD *GetNewScriptCmdDataInstance<Structs::AISetInt>()
{
  _DWORD *result; // r0

  result = (_DWORD *)operator new(0x1Cu, 0);
  result[5] = 0;
  result[3] = 0;
  *result = off_96A858;
  return result;
}


// ===== 456da8 GetNewScriptCmdDataInstance<Structs::AIChangeScript>(void) =====
_DWORD *GetNewScriptCmdDataInstance<Structs::AIChangeScript>()
{
  _DWORD *result; // r0

  result = (_DWORD *)operator new(0x18u, 0);
  result[5] = 0;
  result[3] = 0;
  *result = off_96A870;
  return result;
}


// ===== 456de8 GetNewScriptCmdDataInstance<Structs::AISetHP>(void) =====
_DWORD *GetNewScriptCmdDataInstance<Structs::AISetHP>()
{
  _DWORD *result; // r0

  result = (_DWORD *)operator new(0xCu, 0);
  result[2] = 0;
  result[1] = 0;
  *result = off_96A888;
  return result;
}


// ===== 456e28 GetNewScriptCmdDataInstance<Structs::AIDoSkill>(void) =====
_DWORD *GetNewScriptCmdDataInstance<Structs::AIDoSkill>()
{
  _DWORD *result; // r0

  result = (_DWORD *)operator new(0x14u, 0);
  result[4] = 0;
  *result = off_96A8A0;
  return result;
}


// ===== 456e64 GetNewScriptCmdDataInstance<Structs::AIResetTimer>(void) =====
_DWORD *GetNewScriptCmdDataInstance<Structs::AIResetTimer>()
{
  _DWORD *result; // r0

  result = (_DWORD *)operator new(8u, 0);
  result[1] = 0;
  *result = off_96A8B8;
  return result;
}


// ===== 456ea0 GetNewScriptCmdDataInstance<Structs::AIEnableTimer>(void) =====
int GetNewScriptCmdDataInstance<Structs::AIEnableTimer>()
{
  int result; // r0

  result = operator new(0xCu, 0);
  *(_BYTE *)(result + 8) = 0;
  *(_DWORD *)(result + 4) = 0;
  *(_DWORD *)result = off_96A8D0;
  return result;
}


// ===== 456ee0 GetNewScriptCmdDataInstance<Structs::MarkCharacterAsScripted>(void) =====
_DWORD *GetNewScriptCmdDataInstance<Structs::MarkCharacterAsScripted>()
{
  _DWORD *result; // r0

  result = (_DWORD *)operator new(0x14u, 0);
  result[4] = 0;
  *result = off_96A8E8;
  return result;
}


// ===== 456f1c GetNewScriptCmdDataInstance<Structs::PutCharacterInIdle>(void) =====
_DWORD *GetNewScriptCmdDataInstance<Structs::PutCharacterInIdle>()
{
  _DWORD *result; // r0

  result = (_DWORD *)operator new(0x10u, 0);
  result[3] = 0;
  *result = off_96A900;
  return result;
}


// ===== 456f58 GetNewScriptCmdDataInstance<Structs::SpawnCharacter>(void) =====
_DWORD *GetNewScriptCmdDataInstance<Structs::SpawnCharacter>()
{
  _DWORD *result; // r0

  result = (_DWORD *)operator new(0x10u, 0);
  result[3] = 0;
  *result = off_96A918;
  return result;
}


// ===== 456f94 GetNewScriptCmdDataInstance<Structs::PutCharacterInLimbus>(void) =====
_DWORD *GetNewScriptCmdDataInstance<Structs::PutCharacterInLimbus>()
{
  _DWORD *result; // r0

  result = (_DWORD *)operator new(0x14u, 0);
  result[4] = 0;
  *result = off_96A930;
  return result;
}


// ===== 456fd0 GetNewScriptCmdDataInstance<Structs::IncFaeryLevel>(void) =====
_DWORD *GetNewScriptCmdDataInstance<Structs::IncFaeryLevel>()
{
  _DWORD *result; // r0

  result = (_DWORD *)operator new(0xCu, 0);
  result[2] = 0;
  result[1] = 0;
  *result = off_96A948;
  return result;
}


// ===== 457010 GetNewScriptCmdDataInstance<Structs::SetFaeryState>(void) =====
_DWORD *GetNewScriptCmdDataInstance<Structs::SetFaeryState>()
{
  _DWORD *result; // r0

  result = (_DWORD *)operator new(0x10u, 0);
  result[3] = 0;
  result[1] = 0;
  *result = off_96A960;
  result[2] = 0;
  return result;
}


// ===== 457054 GetNewScriptCmdDataInstance<Structs::Wait>(void) =====
_DWORD *GetNewScriptCmdDataInstance<Structs::Wait>()
{
  _DWORD *result; // r0

  result = (_DWORD *)operator new(0xCu, 0);
  result[2] = 0;
  result[1] = 0;
  *result = off_96A978;
  return result;
}


// ===== 457094 GetNewScriptCmdDataInstance<Structs::UnlockCharacter>(void) =====
_DWORD *GetNewScriptCmdDataInstance<Structs::UnlockCharacter>()
{
  _DWORD *result; // r0

  result = (_DWORD *)operator new(0x10u, 0);
  result[3] = 0;
  *result = off_96A990;
  return result;
}


// ===== 4570d0 GetNewScriptCmdDataInstance<Structs::LockCharacter>(void) =====
_DWORD *GetNewScriptCmdDataInstance<Structs::LockCharacter>()
{
  _DWORD *result; // r0

  result = (_DWORD *)operator new(0x10u, 0);
  result[3] = 0;
  *result = off_96A9A8;
  return result;
}


// ===== 45710c GetNewScriptCmdDataInstance<Structs::HideFlash>(void) =====
_DWORD *GetNewScriptCmdDataInstance<Structs::HideFlash>()
{
  _DWORD *result; // r0

  result = (_DWORD *)operator new(0x18u, 0);
  result[4] = 0;
  *result = off_96A9F0;
  return result;
}


// ===== 457148 GetNewScriptCmdDataInstance<Structs::ShowFlash>(void) =====
_DWORD *GetNewScriptCmdDataInstance<Structs::ShowFlash>()
{
  _DWORD *result; // r0

  result = (_DWORD *)operator new(0x18u, 0);
  result[4] = 0;
  *result = off_96AA08;
  return result;
}


// ===== 457184 GetNewScriptCmdDataInstance<Structs::StopEffect>(void) =====
_DWORD *GetNewScriptCmdDataInstance<Structs::StopEffect>()
{
  _DWORD *result; // r0

  result = (_DWORD *)operator new(0xCu, 0);
  result[2] = 0;
  result[1] = 0;
  *result = off_96AA20;
  return result;
}


// ===== 4571c4 GetNewScriptCmdDataInstance<Structs::PlayEffect>(void) =====
_DWORD *GetNewScriptCmdDataInstance<Structs::PlayEffect>()
{
  _DWORD *result; // r0

  result = (_DWORD *)operator new(0x28u, 0);
  result[8] = 0;
  *result = off_96AA38;
  result[3] = off_96AC48;
  return result;
}


// ===== 457214 GetNewScriptCmdDataInstance<Structs::PlayAnimByName>(void) =====
_DWORD *GetNewScriptCmdDataInstance<Structs::PlayAnimByName>()
{
  _DWORD *result; // r0

  result = (_DWORD *)operator new(0x20u, 0);
  result[6] = 0;
  result[3] = 0;
  *result = off_96AA50;
  return result;
}


// ===== 457254 GetNewScriptCmdDataInstance<Structs::PlayAnimById>(void) =====
_DWORD *GetNewScriptCmdDataInstance<Structs::PlayAnimById>()
{
  _DWORD *result; // r0

  result = (_DWORD *)operator new(0x1Cu, 0);
  result[5] = 0;
  *result = off_96AA68;
  return result;
}


// ===== 457290 GetNewScriptCmdDataInstance<Structs::LeaveSafeZone>(void) =====
_DWORD *GetNewScriptCmdDataInstance<Structs::LeaveSafeZone>()
{
  _DWORD *result; // r0

  result = (_DWORD *)operator new(8u, 0);
  result[1] = 0;
  *result = off_96AA80;
  return result;
}


// ===== 4572cc GetNewScriptCmdDataInstance<Structs::EnterSafeZone>(void) =====
_DWORD *GetNewScriptCmdDataInstance<Structs::EnterSafeZone>()
{
  _DWORD *result; // r0

  result = (_DWORD *)operator new(8u, 0);
  result[1] = 0;
  *result = off_96AA98;
  return result;
}


// ===== 457308 GetNewScriptCmdDataInstance<Structs::PlayLevelMusic>(void) =====
_DWORD *GetNewScriptCmdDataInstance<Structs::PlayLevelMusic>()
{
  _DWORD *result; // r0

  result = (_DWORD *)operator new(0xCu, 0);
  result[2] = 0;
  result[1] = 0;
  *result = off_96AAB0;
  return result;
}


// ===== 457348 GetNewScriptCmdDataInstance<Structs::StopSound>(void) =====
int GetNewScriptCmdDataInstance<Structs::StopSound>()
{
  int result; // r0

  result = operator new(0x14u, 0);
  *(_DWORD *)(result + 16) = 0;
  *(_DWORD *)(result + 4) = 0;
  *(_DWORD *)result = off_96AAC8;
  *(_DWORD *)(result + 8) = 0;
  *(_BYTE *)(result + 12) = 0;
  return result;
}


// ===== 457390 GetNewScriptCmdDataInstance<Structs::PlaySound>(void) =====
int GetNewScriptCmdDataInstance<Structs::PlaySound>()
{
  int result; // r0

  result = operator new(0x14u, 0);
  *(_DWORD *)(result + 16) = 0;
  *(_DWORD *)(result + 4) = 0;
  *(_DWORD *)result = off_96AAE0;
  *(_DWORD *)(result + 8) = 0;
  *(_BYTE *)(result + 12) = 0;
  *(_BYTE *)(result + 13) = 0;
  return result;
}


// ===== 4573dc GetNewScriptCmdDataInstance<Structs::WaitDialog>(void) =====
_DWORD *GetNewScriptCmdDataInstance<Structs::WaitDialog>()
{
  _DWORD *result; // r0

  result = (_DWORD *)operator new(8u, 0);
  result[1] = 0;
  *result = off_96AAF8;
  return result;
}


// ===== 457418 GetNewScriptCmdDataInstance<Structs::StartDialogID>(void) =====
_DWORD *GetNewScriptCmdDataInstance<Structs::StartDialogID>()
{
  _DWORD *result; // r0

  result = (_DWORD *)operator new(0xCu, 0);
  result[2] = 0;
  result[1] = 0;
  *result = off_96AB10;
  return result;
}


// ===== 457458 GetNewScriptCmdDataInstance<Structs::StartDialog>(void) =====
_DWORD *GetNewScriptCmdDataInstance<Structs::StartDialog>()
{
  _DWORD *result; // r0

  result = (_DWORD *)operator new(0x14u, 0);
  result[4] = 0;
  result[1] = 0;
  *result = off_96AB28;
  result[2] = 0;
  result[3] = 0;
  return result;
}


// ===== 4574a0 GetNewScriptCmdDataInstance<Structs::NilCmd>(void) =====
_DWORD *GetNewScriptCmdDataInstance<Structs::NilCmd>()
{
  _DWORD *result; // r0

  result = (_DWORD *)operator new(8u, 0);
  result[1] = 0;
  *result = off_96AB40;
  return result;
}


// ===== 4574dc GetNewScriptCmdDataInstance<Structs::SetCameraTarget>(void) =====
_DWORD *GetNewScriptCmdDataInstance<Structs::SetCameraTarget>()
{
  _DWORD *result; // r0

  result = (_DWORD *)operator new(0x18u, 0);
  result[4] = 0;
  *result = off_96AB58;
  return result;
}


// ===== 457518 GetNewScriptCmdDataInstance<Structs::WaitCamera>(void) =====
_DWORD *GetNewScriptCmdDataInstance<Structs::WaitCamera>()
{
  _DWORD *result; // r0

  result = (_DWORD *)operator new(0xCu, 0);
  result[1] = 0;
  *result = off_96AB70;
  result[2] = 0;
  return result;
}


// ===== 45755c GetNewScriptCmdDataInstance<Structs::SetCameraClip>(void) =====
_DWORD *GetNewScriptCmdDataInstance<Structs::SetCameraClip>()
{
  _DWORD *result; // r0

  result = (_DWORD *)operator new(0x10u, 0);
  result[3] = 0;
  result[1] = 0;
  *result = off_96AB88;
  result[2] = 0;
  return result;
}


// ===== 4575a0 GetNewScriptCmdDataInstance<Structs::PlayCamera>(void) =====
int GetNewScriptCmdDataInstance<Structs::PlayCamera>()
{
  int result; // r0

  result = operator new(0x10u, 0);
  *(_BYTE *)(result + 12) = 0;
  *(_DWORD *)(result + 4) = 0;
  *(_DWORD *)result = off_96ABA0;
  *(_DWORD *)(result + 8) = 0;
  return result;
}


// ===== 4575e4 GetNewScriptCmdDataInstance<Structs::SetCamera>(void) =====
_DWORD *GetNewScriptCmdDataInstance<Structs::SetCamera>()
{
  _DWORD *result; // r0

  result = (_DWORD *)operator new(0x20u, 0);
  result[5] = 0;
  result[3] = 0;
  *result = off_96ABB8;
  return result;
}


// ===== 457624 GetNewScriptCmdDataInstance<Structs::CONSOLE>(void) =====
_DWORD *GetNewScriptCmdDataInstance<Structs::CONSOLE>()
{
  _DWORD *result; // r0

  result = (_DWORD *)operator new(0x10u, 0);
  result[3] = 0;
  *result = off_96ABD0;
  return result;
}


// ===== 457660 GetNewScriptCmdDataInstance<Structs::ExitCutSceneMode>(void) =====
_DWORD *GetNewScriptCmdDataInstance<Structs::ExitCutSceneMode>()
{
  _DWORD *result; // r0

  result = (_DWORD *)operator new(8u, 0);
  result[1] = 0;
  *result = off_96ABE8;
  return result;
}


// ===== 45769c GetNewScriptCmdDataInstance<Structs::EnterCutSceneMode>(void) =====
_DWORD *GetNewScriptCmdDataInstance<Structs::EnterCutSceneMode>()
{
  _DWORD *result; // r0

  result = (_DWORD *)operator new(8u, 0);
  result[1] = 0;
  *result = off_96AC00;
  return result;
}


// ===== 4576d8 GetNewScriptCmdDataInstance<Structs::ExecScript>(void) =====
_DWORD *GetNewScriptCmdDataInstance<Structs::ExecScript>()
{
  _DWORD *result; // r0

  result = (_DWORD *)operator new(0x1Cu, 0);
  result[5] = 0;
  *result = off_96AC18;
  return result;
}


// ===== 457714 GetNewScriptCmdImplInstance<Script_FlushMessages>(void) =====
int GetNewScriptCmdImplInstance<Script_FlushMessages>()
{
  int result; // r0

  result = operator new(0x10u, 0);
  *(_DWORD *)(result + 12) = 0;
  *(_BYTE *)(result + 4) = 0;
  *(_DWORD *)result = off_968470;
  *(_DWORD *)(result + 8) = -1;
  return result;
}


// ===== 45775c GetNewScriptCmdImplInstance<Script_DoTutorial>(void) =====
int GetNewScriptCmdImplInstance<Script_DoTutorial>()
{
  int result; // r0

  result = operator new(0x10u, 0);
  *(_DWORD *)(result + 12) = 0;
  *(_BYTE *)(result + 4) = 0;
  *(_DWORD *)result = off_9684A0;
  *(_DWORD *)(result + 8) = -1;
  return result;
}


// ===== 4577a4 GetNewScriptCmdImplInstance<Script_LockTutorial>(void) =====
int GetNewScriptCmdImplInstance<Script_LockTutorial>()
{
  int result; // r0

  result = operator new(0x10u, 0);
  *(_DWORD *)(result + 12) = 0;
  *(_BYTE *)(result + 4) = 0;
  *(_DWORD *)result = off_9684B8;
  *(_DWORD *)(result + 8) = -1;
  return result;
}


// ===== 4577ec GetNewScriptCmdImplInstance<Script_SkipAllCharMenuTutorialMessages>(void) =====
int GetNewScriptCmdImplInstance<Script_SkipAllCharMenuTutorialMessages>()
{
  int result; // r0

  result = operator new(0x10u, 0);
  *(_DWORD *)(result + 12) = 0;
  *(_BYTE *)(result + 4) = 0;
  *(_DWORD *)result = off_9684D0;
  *(_DWORD *)(result + 8) = -1;
  return result;
}


// ===== 457834 GetNewScriptCmdImplInstance<Script_SkipCharMenuTutorialMessage>(void) =====
int GetNewScriptCmdImplInstance<Script_SkipCharMenuTutorialMessage>()
{
  int result; // r0

  result = operator new(0x10u, 0);
  *(_DWORD *)(result + 12) = 0;
  *(_BYTE *)(result + 4) = 0;
  *(_DWORD *)result = off_9684E8;
  *(_DWORD *)(result + 8) = -1;
  return result;
}


// ===== 45787c GetNewScriptCmdImplInstance<Script_EnqueueCharMenuTutorialMessage>(void) =====
int GetNewScriptCmdImplInstance<Script_EnqueueCharMenuTutorialMessage>()
{
  int result; // r0

  result = operator new(0x10u, 0);
  *(_DWORD *)(result + 12) = 0;
  *(_BYTE *)(result + 4) = 0;
  *(_DWORD *)result = off_968500;
  *(_DWORD *)(result + 8) = -1;
  return result;
}


// ===== 4578c4 GetNewScriptCmdImplInstance<Script_SkipAllTutorialMessages>(void) =====
int GetNewScriptCmdImplInstance<Script_SkipAllTutorialMessages>()
{
  int result; // r0

  result = operator new(0x10u, 0);
  *(_DWORD *)(result + 12) = 0;
  *(_BYTE *)(result + 4) = 0;
  *(_DWORD *)result = off_968518;
  *(_DWORD *)(result + 8) = -1;
  return result;
}


// ===== 45790c GetNewScriptCmdImplInstance<Script_SkipTutorialMessage>(void) =====
int GetNewScriptCmdImplInstance<Script_SkipTutorialMessage>()
{
  int result; // r0

  result = operator new(0x10u, 0);
  *(_DWORD *)(result + 12) = 0;
  *(_BYTE *)(result + 4) = 0;
  *(_DWORD *)result = off_968530;
  *(_DWORD *)(result + 8) = -1;
  return result;
}


// ===== 457954 GetNewScriptCmdImplInstance<Script_EnqueueTutorialMessage>(void) =====
int GetNewScriptCmdImplInstance<Script_EnqueueTutorialMessage>()
{
  int result; // r0

  result = operator new(0x10u, 0);
  *(_DWORD *)(result + 12) = 0;
  *(_BYTE *)(result + 4) = 0;
  *(_DWORD *)result = off_968548;
  *(_DWORD *)(result + 8) = -1;
  return result;
}


// ===== 45799c GetNewScriptCmdImplInstance<Script_BlockSaveGame>(void) =====
int GetNewScriptCmdImplInstance<Script_BlockSaveGame>()
{
  int result; // r0

  result = operator new(0x10u, 0);
  *(_DWORD *)(result + 12) = 0;
  *(_BYTE *)(result + 4) = 0;
  *(_DWORD *)result = off_968560;
  *(_DWORD *)(result + 8) = -1;
  return result;
}


// ===== 4579e4 GetNewScriptCmdImplInstance<Script_SaveGame>(void) =====
int GetNewScriptCmdImplInstance<Script_SaveGame>()
{
  int result; // r0

  result = operator new(0x10u, 0);
  *(_DWORD *)(result + 12) = 0;
  *(_BYTE *)(result + 4) = 0;
  *(_DWORD *)result = off_968578;
  *(_DWORD *)(result + 8) = -1;
  return result;
}


// ===== 457a2c GetNewScriptCmdImplInstance<Script_ShowTrophies>(void) =====
int GetNewScriptCmdImplInstance<Script_ShowTrophies>()
{
  int result; // r0

  result = operator new(0x10u, 0);
  *(_DWORD *)(result + 12) = 0;
  *(_BYTE *)(result + 4) = 0;
  *(_DWORD *)result = off_968590;
  *(_DWORD *)(result + 8) = -1;
  return result;
}


// ===== 457a74 GetNewScriptCmdImplInstance<Script_AwardEndGameTrophies>(void) =====
int GetNewScriptCmdImplInstance<Script_AwardEndGameTrophies>()
{
  int result; // r0

  result = operator new(0x10u, 0);
  *(_DWORD *)(result + 12) = 0;
  *(_BYTE *)(result + 4) = 0;
  *(_DWORD *)result = off_9685A8;
  *(_DWORD *)(result + 8) = -1;
  return result;
}


// ===== 457abc GetNewScriptCmdImplInstance<Script_AwardTrophy>(void) =====
int GetNewScriptCmdImplInstance<Script_AwardTrophy>()
{
  int result; // r0

  result = operator new(0x10u, 0);
  *(_DWORD *)(result + 12) = 0;
  *(_BYTE *)(result + 4) = 0;
  *(_DWORD *)result = off_9685C0;
  *(_DWORD *)(result + 8) = -1;
  return result;
}


// ===== 457b04 GetNewScriptCmdImplInstance<Script_EndGame>(void) =====
int GetNewScriptCmdImplInstance<Script_EndGame>()
{
  int result; // r0

  result = operator new(0x10u, 0);
  *(_DWORD *)(result + 12) = 0;
  *(_BYTE *)(result + 4) = 0;
  *(_DWORD *)result = off_9685D8;
  *(_DWORD *)(result + 8) = -1;
  return result;
}


// ===== 457b4c GetNewScriptCmdImplInstance<Script_ChangeLevel>(void) =====
int GetNewScriptCmdImplInstance<Script_ChangeLevel>()
{
  int result; // r0

  result = operator new(0x10u, 0);
  *(_DWORD *)(result + 12) = 0;
  *(_BYTE *)(result + 4) = 0;
  *(_DWORD *)result = off_9685F0;
  *(_DWORD *)(result + 8) = -1;
  return result;
}


// ===== 457b94 GetNewScriptCmdImplInstance<Script_RestartLevel>(void) =====
int GetNewScriptCmdImplInstance<Script_RestartLevel>()
{
  int result; // r0

  result = operator new(0x10u, 0);
  *(_DWORD *)(result + 12) = 0;
  *(_BYTE *)(result + 4) = 0;
  *(_DWORD *)result = off_968608;
  *(_DWORD *)(result + 8) = -1;
  return result;
}


// ===== 457bdc GetNewScriptCmdImplInstance<Script_SetWorldMapLocationState>(void) =====
int GetNewScriptCmdImplInstance<Script_SetWorldMapLocationState>()
{
  int result; // r0

  result = operator new(0x10u, 0);
  *(_DWORD *)(result + 12) = 0;
  *(_BYTE *)(result + 4) = 0;
  *(_DWORD *)result = off_968620;
  *(_DWORD *)(result + 8) = -1;
  return result;
}


// ===== 457c24 GetNewScriptCmdImplInstance<Script_SetLevelState>(void) =====
int GetNewScriptCmdImplInstance<Script_SetLevelState>()
{
  int result; // r0

  result = operator new(0x10u, 0);
  *(_DWORD *)(result + 12) = 0;
  *(_BYTE *)(result + 4) = 0;
  *(_DWORD *)result = off_968638;
  *(_DWORD *)(result + 8) = -1;
  return result;
}


// ===== 457c6c GetNewScriptCmdImplInstance<Script_SpawnContainer>(void) =====
int GetNewScriptCmdImplInstance<Script_SpawnContainer>()
{
  int result; // r0

  result = operator new(0x10u, 0);
  *(_DWORD *)(result + 12) = 0;
  *(_BYTE *)(result + 4) = 0;
  *(_DWORD *)result = off_968650;
  *(_DWORD *)(result + 8) = -1;
  return result;
}


// ===== 457cb4 GetNewScriptCmdImplInstance<Script_DeactivateTriggerPlate>(void) =====
int GetNewScriptCmdImplInstance<Script_DeactivateTriggerPlate>()
{
  int result; // r0

  result = operator new(0x14u, 0);
  *(_DWORD *)(result + 16) = 0;
  *(_BYTE *)(result + 4) = 0;
  *(_DWORD *)result = off_968668;
  *(_DWORD *)(result + 8) = -1;
  *(_DWORD *)(result + 12) = 0;
  return result;
}


// ===== 457d00 GetNewScriptCmdImplInstance<Script_ActivateTriggerPlate>(void) =====
int GetNewScriptCmdImplInstance<Script_ActivateTriggerPlate>()
{
  int result; // r0

  result = operator new(0x14u, 0);
  *(_DWORD *)(result + 16) = 0;
  *(_BYTE *)(result + 4) = 0;
  *(_DWORD *)result = off_968680;
  *(_DWORD *)(result + 8) = -1;
  *(_DWORD *)(result + 12) = 0;
  return result;
}


// ===== 457d4c GetNewScriptCmdImplInstance<Script_DeactivateProjectileTrap>(void) =====
int GetNewScriptCmdImplInstance<Script_DeactivateProjectileTrap>()
{
  int result; // r0

  result = operator new(0x14u, 0);
  *(_DWORD *)(result + 16) = 0;
  *(_BYTE *)(result + 4) = 0;
  *(_DWORD *)result = off_968698;
  *(_DWORD *)(result + 8) = -1;
  *(_DWORD *)(result + 12) = 0;
  return result;
}


// ===== 457d98 GetNewScriptCmdImplInstance<Script_ActivateProjectileTrap>(void) =====
int GetNewScriptCmdImplInstance<Script_ActivateProjectileTrap>()
{
  int result; // r0

  result = operator new(0x14u, 0);
  *(_DWORD *)(result + 16) = 0;
  *(_BYTE *)(result + 4) = 0;
  *(_DWORD *)result = off_9686B0;
  *(_DWORD *)(result + 8) = -1;
  *(_DWORD *)(result + 12) = 0;
  return result;
}


// ===== 457de4 GetNewScriptCmdImplInstance<Script_CloseDoor>(void) =====
int GetNewScriptCmdImplInstance<Script_CloseDoor>()
{
  int result; // r0

  result = operator new(0x18u, 0);
  *(_BYTE *)(result + 20) = 0;
  *(_BYTE *)(result + 4) = 0;
  *(_DWORD *)result = off_9686C8;
  *(_DWORD *)(result + 8) = -1;
  *(_DWORD *)(result + 12) = 0;
  *(_DWORD *)(result + 16) = 0;
  return result;
}


// ===== 457e34 GetNewScriptCmdImplInstance<Script_OpenDoor>(void) =====
int GetNewScriptCmdImplInstance<Script_OpenDoor>()
{
  int result; // r0

  result = operator new(0x18u, 0);
  *(_BYTE *)(result + 20) = 0;
  *(_BYTE *)(result + 4) = 0;
  *(_DWORD *)result = off_9686E0;
  *(_DWORD *)(result + 8) = -1;
  *(_DWORD *)(result + 12) = 0;
  *(_DWORD *)(result + 16) = 0;
  return result;
}


// ===== 457e84 GetNewScriptCmdImplInstance<Script_SetStatic>(void) =====
int GetNewScriptCmdImplInstance<Script_SetStatic>()
{
  int result; // r0

  result = operator new(0x10u, 0);
  *(_DWORD *)(result + 12) = 0;
  *(_BYTE *)(result + 4) = 0;
  *(_DWORD *)result = off_9686F8;
  *(_DWORD *)(result + 8) = -1;
  return result;
}


// ===== 457ecc GetNewScriptCmdImplInstance<Script_ReEquipHands>(void) =====
int GetNewScriptCmdImplInstance<Script_ReEquipHands>()
{
  int result; // r0

  result = operator new(0x10u, 0);
  *(_DWORD *)(result + 12) = 0;
  *(_BYTE *)(result + 4) = 0;
  *(_DWORD *)result = off_968710;
  *(_DWORD *)(result + 8) = -1;
  return result;
}


// ===== 457f14 GetNewScriptCmdImplInstance<Script_UnEquipHands>(void) =====
int GetNewScriptCmdImplInstance<Script_UnEquipHands>()
{
  int result; // r0

  result = operator new(0x10u, 0);
  *(_DWORD *)(result + 12) = 0;
  *(_BYTE *)(result + 4) = 0;
  *(_DWORD *)result = off_968728;
  *(_DWORD *)(result + 8) = -1;
  return result;
}


// ===== 457f5c GetNewScriptCmdImplInstance<Script_UnEquipItemFromSlot>(void) =====
int GetNewScriptCmdImplInstance<Script_UnEquipItemFromSlot>()
{
  int result; // r0

  result = operator new(0x10u, 0);
  *(_DWORD *)(result + 12) = 0;
  *(_BYTE *)(result + 4) = 0;
  *(_DWORD *)result = off_968740;
  *(_DWORD *)(result + 8) = -1;
  return result;
}


// ===== 457fa4 GetNewScriptCmdImplInstance<Script_AutoEquip>(void) =====
int GetNewScriptCmdImplInstance<Script_AutoEquip>()
{
  int result; // r0

  result = operator new(0x10u, 0);
  *(_DWORD *)(result + 12) = 0;
  *(_BYTE *)(result + 4) = 0;
  *(_DWORD *)result = off_968758;
  *(_DWORD *)(result + 8) = -1;
  return result;
}


// ===== 457fec GetNewScriptCmdImplInstance<Script_DropLoot>(void) =====
int GetNewScriptCmdImplInstance<Script_DropLoot>()
{
  int result; // r0

  result = operator new(0x10u, 0);
  *(_DWORD *)(result + 12) = 0;
  *(_BYTE *)(result + 4) = 0;
  *(_DWORD *)result = off_968770;
  *(_DWORD *)(result + 8) = -1;
  return result;
}


// ===== 458034 GetNewScriptCmdImplInstance<Script_SetActorMaster>(void) =====
int GetNewScriptCmdImplInstance<Script_SetActorMaster>()
{
  int result; // r0

  result = operator new(0x10u, 0);
  *(_DWORD *)(result + 12) = 0;
  *(_BYTE *)(result + 4) = 0;
  *(_DWORD *)result = off_968788;
  *(_DWORD *)(result + 8) = -1;
  return result;
}


// ===== 45807c GetNewScriptCmdImplInstance<Script_SetActorPosition>(void) =====
int GetNewScriptCmdImplInstance<Script_SetActorPosition>()
{
  int result; // r0

  result = operator new(0x10u, 0);
  *(_DWORD *)(result + 12) = 0;
  *(_BYTE *)(result + 4) = 0;
  *(_DWORD *)result = off_9687A0;
  *(_DWORD *)(result + 8) = -1;
  return result;
}


// ===== 4580c4 GetNewScriptCmdImplInstance<Script_KillActor>(void) =====
int GetNewScriptCmdImplInstance<Script_KillActor>()
{
  int result; // r0

  result = operator new(0x10u, 0);
  *(_DWORD *)(result + 12) = 0;
  *(_BYTE *)(result + 4) = 0;
  *(_DWORD *)result = off_9687D0;
  *(_DWORD *)(result + 8) = -1;
  return result;
}


// ===== 45810c GetNewScriptCmdImplInstance<Script_HideActor>(void) =====
int GetNewScriptCmdImplInstance<Script_HideActor>()
{
  int result; // r0

  result = operator new(0x10u, 0);
  *(_DWORD *)(result + 12) = 0;
  *(_BYTE *)(result + 4) = 0;
  *(_DWORD *)result = off_9687E8;
  *(_DWORD *)(result + 8) = -1;
  return result;
}


// ===== 458154 GetNewScriptCmdImplInstance<Script_ShowActor>(void) =====
int GetNewScriptCmdImplInstance<Script_ShowActor>()
{
  int result; // r0

  result = operator new(0x10u, 0);
  *(_DWORD *)(result + 12) = 0;
  *(_BYTE *)(result + 4) = 0;
  *(_DWORD *)result = off_968800;
  *(_DWORD *)(result + 8) = -1;
  return result;
}


// ===== 45819c GetNewScriptCmdImplInstance<Script_LookActor>(void) =====
int GetNewScriptCmdImplInstance<Script_LookActor>()
{
  int result; // r0

  result = operator new(0x10u, 0);
  *(_DWORD *)(result + 12) = 0;
  *(_BYTE *)(result + 4) = 0;
  *(_DWORD *)result = off_968818;
  *(_DWORD *)(result + 8) = -1;
  return result;
}


// ===== 4581e4 GetNewScriptCmdImplInstance<Script_MoveActor>(void) =====
int GetNewScriptCmdImplInstance<Script_MoveActor>()
{
  int result; // r0

  result = operator new(0x1Cu, 0);
  *(_BYTE *)(result + 24) = 0;
  *(_BYTE *)(result + 4) = 0;
  *(_DWORD *)result = off_968830;
  *(_DWORD *)(result + 8) = -1;
  *(_DWORD *)(result + 12) = 0;
  *(_BYTE *)(result + 16) = 0;
  *(_DWORD *)(result + 20) = 0;
  return result;
}


// ===== 458238 GetNewScriptCmdImplInstance<Script_StopActor>(void) =====
int GetNewScriptCmdImplInstance<Script_StopActor>()
{
  int result; // r0

  result = operator new(0x10u, 0);
  *(_DWORD *)(result + 12) = 0;
  *(_BYTE *)(result + 4) = 0;
  *(_DWORD *)result = off_968848;
  *(_DWORD *)(result + 8) = -1;
  return result;
}


// ===== 458280 GetNewScriptCmdImplInstance<Script_AISetInt>(void) =====
int GetNewScriptCmdImplInstance<Script_AISetInt>()
{
  int result; // r0

  result = operator new(0x10u, 0);
  *(_DWORD *)(result + 12) = 0;
  *(_BYTE *)(result + 4) = 0;
  *(_DWORD *)result = off_968860;
  *(_DWORD *)(result + 8) = -1;
  return result;
}


// ===== 4582c8 GetNewScriptCmdImplInstance<Script_AIChangeScript>(void) =====
int GetNewScriptCmdImplInstance<Script_AIChangeScript>()
{
  int result; // r0

  result = operator new(0x10u, 0);
  *(_DWORD *)(result + 12) = 0;
  *(_BYTE *)(result + 4) = 0;
  *(_DWORD *)result = off_968878;
  *(_DWORD *)(result + 8) = -1;
  return result;
}


// ===== 458310 GetNewScriptCmdImplInstance<Script_AISetHP>(void) =====
int GetNewScriptCmdImplInstance<Script_AISetHP>()
{
  int result; // r0

  result = operator new(0x10u, 0);
  *(_DWORD *)(result + 12) = 0;
  *(_BYTE *)(result + 4) = 0;
  *(_DWORD *)result = off_968890;
  *(_DWORD *)(result + 8) = -1;
  return result;
}


// ===== 458358 GetNewScriptCmdImplInstance<Script_AIDoSkill>(void) =====
int GetNewScriptCmdImplInstance<Script_AIDoSkill>()
{
  int result; // r0

  result = operator new(0x10u, 0);
  *(_DWORD *)(result + 12) = 0;
  *(_BYTE *)(result + 4) = 0;
  *(_DWORD *)result = off_9688A8;
  *(_DWORD *)(result + 8) = -1;
  return result;
}


// ===== 4583a0 GetNewScriptCmdImplInstance<Script_AIResetTimer>(void) =====
int GetNewScriptCmdImplInstance<Script_AIResetTimer>()
{
  int result; // r0

  result = operator new(0x10u, 0);
  *(_DWORD *)(result + 12) = 0;
  *(_BYTE *)(result + 4) = 0;
  *(_DWORD *)result = off_9688C0;
  *(_DWORD *)(result + 8) = -1;
  return result;
}


// ===== 4583e8 GetNewScriptCmdImplInstance<Script_AIEnableTimer>(void) =====
int GetNewScriptCmdImplInstance<Script_AIEnableTimer>()
{
  int result; // r0

  result = operator new(0x10u, 0);
  *(_DWORD *)(result + 12) = 0;
  *(_BYTE *)(result + 4) = 0;
  *(_DWORD *)result = off_9688D8;
  *(_DWORD *)(result + 8) = -1;
  return result;
}


// ===== 458430 GetNewScriptCmdImplInstance<Script_MarkCharacterAsScripted>(void) =====
int GetNewScriptCmdImplInstance<Script_MarkCharacterAsScripted>()
{
  int result; // r0

  result = operator new(0x10u, 0);
  *(_DWORD *)(result + 12) = 0;
  *(_BYTE *)(result + 4) = 0;
  *(_DWORD *)result = off_9688F0;
  *(_DWORD *)(result + 8) = -1;
  return result;
}


// ===== 458478 GetNewScriptCmdImplInstance<Script_PutCharacterInIdle>(void) =====
int GetNewScriptCmdImplInstance<Script_PutCharacterInIdle>()
{
  int result; // r0

  result = operator new(0x10u, 0);
  *(_DWORD *)(result + 12) = 0;
  *(_BYTE *)(result + 4) = 0;
  *(_DWORD *)result = off_968908;
  *(_DWORD *)(result + 8) = -1;
  return result;
}


// ===== 4584c0 GetNewScriptCmdImplInstance<Script_SpawnCharacter>(void) =====
int GetNewScriptCmdImplInstance<Script_SpawnCharacter>()
{
  int result; // r0

  result = operator new(0x10u, 0);
  *(_DWORD *)(result + 12) = 0;
  *(_BYTE *)(result + 4) = 0;
  *(_DWORD *)result = off_968920;
  *(_DWORD *)(result + 8) = -1;
  return result;
}


// ===== 458508 GetNewScriptCmdImplInstance<Script_PutCharacterInLimbus>(void) =====
int GetNewScriptCmdImplInstance<Script_PutCharacterInLimbus>()
{
  int result; // r0

  result = operator new(0x10u, 0);
  *(_DWORD *)(result + 12) = 0;
  *(_BYTE *)(result + 4) = 0;
  *(_DWORD *)result = off_968938;
  *(_DWORD *)(result + 8) = -1;
  return result;
}


// ===== 458550 GetNewScriptCmdImplInstance<Script_IncFaeryLevel>(void) =====
int GetNewScriptCmdImplInstance<Script_IncFaeryLevel>()
{
  int result; // r0

  result = operator new(0x10u, 0);
  *(_DWORD *)(result + 12) = 0;
  *(_BYTE *)(result + 4) = 0;
  *(_DWORD *)result = off_968950;
  *(_DWORD *)(result + 8) = -1;
  return result;
}


// ===== 458598 GetNewScriptCmdImplInstance<Script_SetFaeryState>(void) =====
int GetNewScriptCmdImplInstance<Script_SetFaeryState>()
{
  int result; // r0

  result = operator new(0x10u, 0);
  *(_DWORD *)(result + 12) = 0;
  *(_BYTE *)(result + 4) = 0;
  *(_DWORD *)result = off_968968;
  *(_DWORD *)(result + 8) = -1;
  return result;
}


// ===== 4585e0 GetNewScriptCmdImplInstance<Script_Wait>(void) =====
int GetNewScriptCmdImplInstance<Script_Wait>()
{
  int result; // r0

  result = operator new(0x18u, 0);
  *(_DWORD *)(result + 20) = 0;
  *(_BYTE *)(result + 4) = 0;
  *(_DWORD *)result = off_968980;
  *(_DWORD *)(result + 8) = -1;
  *(_DWORD *)(result + 12) = 0;
  *(_DWORD *)(result + 16) = 0;
  return result;
}


// ===== 458630 GetNewScriptCmdImplInstance<Script_UnlockCharacter>(void) =====
int GetNewScriptCmdImplInstance<Script_UnlockCharacter>()
{
  int result; // r0

  result = operator new(0x10u, 0);
  *(_DWORD *)(result + 12) = 0;
  *(_BYTE *)(result + 4) = 0;
  *(_DWORD *)result = off_968998;
  *(_DWORD *)(result + 8) = -1;
  return result;
}


// ===== 458678 GetNewScriptCmdImplInstance<Script_LockCharacter>(void) =====
int GetNewScriptCmdImplInstance<Script_LockCharacter>()
{
  int result; // r0

  result = operator new(0x10u, 0);
  *(_DWORD *)(result + 12) = 0;
  *(_BYTE *)(result + 4) = 0;
  *(_DWORD *)result = off_9689B0;
  *(_DWORD *)(result + 8) = -1;
  return result;
}


// ===== 4586c0 GetNewScriptCmdImplInstance<Script_HideFlash>(void) =====
int GetNewScriptCmdImplInstance<Script_HideFlash>()
{
  int result; // r0

  result = operator new(0x14u, 0);
  *(_DWORD *)(result + 16) = 0;
  *(_BYTE *)(result + 4) = 0;
  *(_DWORD *)result = off_9689C8;
  *(_DWORD *)(result + 8) = -1;
  *(_DWORD *)(result + 12) = 0;
  return result;
}


// ===== 45870c GetNewScriptCmdImplInstance<Script_ShowFlash>(void) =====
int GetNewScriptCmdImplInstance<Script_ShowFlash>()
{
  int result; // r0

  result = operator new(0x14u, 0);
  *(_DWORD *)(result + 16) = 0;
  *(_BYTE *)(result + 4) = 0;
  *(_DWORD *)result = off_9689E0;
  *(_DWORD *)(result + 8) = -1;
  *(_DWORD *)(result + 12) = 0;
  return result;
}


// ===== 458758 GetNewScriptCmdImplInstance<Script_StopEffect>(void) =====
int GetNewScriptCmdImplInstance<Script_StopEffect>()
{
  int result; // r0

  result = operator new(0x10u, 0);
  *(_DWORD *)(result + 12) = 0;
  *(_BYTE *)(result + 4) = 0;
  *(_DWORD *)result = off_9689F8;
  *(_DWORD *)(result + 8) = -1;
  return result;
}


// ===== 4587a0 GetNewScriptCmdImplInstance<Script_PlayEffect>(void) =====
int GetNewScriptCmdImplInstance<Script_PlayEffect>()
{
  int result; // r0

  result = operator new(0x10u, 0);
  *(_DWORD *)(result + 12) = 0;
  *(_BYTE *)(result + 4) = 0;
  *(_DWORD *)result = off_968A10;
  *(_DWORD *)(result + 8) = -1;
  return result;
}


// ===== 4587e8 GetNewScriptCmdImplInstance<Script_PlayAnimByName>(void) =====
int GetNewScriptCmdImplInstance<Script_PlayAnimByName>()
{
  int result; // r0

  result = operator new(0x10u, 0);
  *(_DWORD *)(result + 12) = 0;
  *(_BYTE *)(result + 4) = 0;
  *(_DWORD *)result = off_968A28;
  *(_DWORD *)(result + 8) = -1;
  return result;
}


// ===== 458830 GetNewScriptCmdImplInstance<Script_PlayAnimById>(void) =====
int GetNewScriptCmdImplInstance<Script_PlayAnimById>()
{
  int result; // r0

  result = operator new(0x10u, 0);
  *(_DWORD *)(result + 12) = 0;
  *(_BYTE *)(result + 4) = 0;
  *(_DWORD *)result = off_968A40;
  *(_DWORD *)(result + 8) = -1;
  return result;
}


// ===== 458878 GetNewScriptCmdImplInstance<Script_LeaveSafeZone>(void) =====
int GetNewScriptCmdImplInstance<Script_LeaveSafeZone>()
{
  int result; // r0

  result = operator new(0x10u, 0);
  *(_DWORD *)(result + 12) = 0;
  *(_BYTE *)(result + 4) = 0;
  *(_DWORD *)result = off_968A58;
  *(_DWORD *)(result + 8) = -1;
  return result;
}


// ===== 4588c0 GetNewScriptCmdImplInstance<Script_EnterSafeZone>(void) =====
int GetNewScriptCmdImplInstance<Script_EnterSafeZone>()
{
  int result; // r0

  result = operator new(0x10u, 0);
  *(_DWORD *)(result + 12) = 0;
  *(_BYTE *)(result + 4) = 0;
  *(_DWORD *)result = off_968A70;
  *(_DWORD *)(result + 8) = -1;
  return result;
}


// ===== 458908 GetNewScriptCmdImplInstance<Script_PlayLevelMusic>(void) =====
int GetNewScriptCmdImplInstance<Script_PlayLevelMusic>()
{
  int result; // r0

  result = operator new(0x10u, 0);
  *(_DWORD *)(result + 12) = 0;
  *(_BYTE *)(result + 4) = 0;
  *(_DWORD *)result = off_968A88;
  *(_DWORD *)(result + 8) = -1;
  return result;
}


// ===== 458950 GetNewScriptCmdImplInstance<Script_StopSound>(void) =====
int GetNewScriptCmdImplInstance<Script_StopSound>()
{
  int result; // r0

  result = operator new(0x10u, 0);
  *(_DWORD *)(result + 12) = 0;
  *(_BYTE *)(result + 4) = 0;
  *(_DWORD *)result = off_968AA0;
  *(_DWORD *)(result + 8) = -1;
  return result;
}


// ===== 458998 GetNewScriptCmdImplInstance<Script_PlaySound>(void) =====
int GetNewScriptCmdImplInstance<Script_PlaySound>()
{
  int result; // r0

  result = operator new(0x10u, 0);
  *(_DWORD *)(result + 12) = 0;
  *(_BYTE *)(result + 4) = 0;
  *(_DWORD *)result = off_968AB8;
  *(_DWORD *)(result + 8) = -1;
  return result;
}


// ===== 4589e0 GetNewScriptCmdImplInstance<Script_WaitDialog>(void) =====
int GetNewScriptCmdImplInstance<Script_WaitDialog>()
{
  int result; // r0

  result = operator new(0x10u, 0);
  *(_DWORD *)(result + 12) = 0;
  *(_BYTE *)(result + 4) = 0;
  *(_DWORD *)result = off_968AD0;
  *(_DWORD *)(result + 8) = -1;
  return result;
}


// ===== 458a28 GetNewScriptCmdImplInstance<Script_StartDialogID>(void) =====
int GetNewScriptCmdImplInstance<Script_StartDialogID>()
{
  int result; // r0

  result = operator new(0x10u, 0);
  *(_DWORD *)(result + 12) = 0;
  *(_BYTE *)(result + 4) = 0;
  *(_DWORD *)result = off_968AE8;
  *(_DWORD *)(result + 8) = -1;
  return result;
}


// ===== 458a70 GetNewScriptCmdImplInstance<Script_StartDialog>(void) =====
int GetNewScriptCmdImplInstance<Script_StartDialog>()
{
  int result; // r0

  result = operator new(0x10u, 0);
  *(_DWORD *)(result + 12) = 0;
  *(_BYTE *)(result + 4) = 0;
  *(_DWORD *)result = off_968B00;
  *(_DWORD *)(result + 8) = -1;
  return result;
}


// ===== 458ab8 GetNewScriptCmdImplInstance<Script_EmptyImpl>(void) =====
int GetNewScriptCmdImplInstance<Script_EmptyImpl>()
{
  int result; // r0

  result = operator new(0x10u, 0);
  *(_DWORD *)(result + 12) = 0;
  *(_BYTE *)(result + 4) = 0;
  *(_DWORD *)result = off_968B18;
  *(_DWORD *)(result + 8) = -1;
  return result;
}


// ===== 458b00 GetNewScriptCmdImplInstance<Script_SetCameraTarget>(void) =====
int GetNewScriptCmdImplInstance<Script_SetCameraTarget>()
{
  int result; // r0

  result = operator new(0x10u, 0);
  *(_DWORD *)(result + 12) = 0;
  *(_BYTE *)(result + 4) = 0;
  *(_DWORD *)result = off_968B30;
  *(_DWORD *)(result + 8) = -1;
  return result;
}


// ===== 458b48 GetNewScriptCmdImplInstance<Script_WaitCamera>(void) =====
int GetNewScriptCmdImplInstance<Script_WaitCamera>()
{
  int result; // r0

  result = operator new(0x10u, 0);
  *(_DWORD *)(result + 12) = 0;
  *(_BYTE *)(result + 4) = 0;
  *(_DWORD *)result = off_968B48;
  *(_DWORD *)(result + 8) = -1;
  return result;
}


// ===== 458b90 GetNewScriptCmdImplInstance<Script_SetCameraClip>(void) =====
int GetNewScriptCmdImplInstance<Script_SetCameraClip>()
{
  int result; // r0

  result = operator new(0x10u, 0);
  *(_DWORD *)(result + 12) = 0;
  *(_BYTE *)(result + 4) = 0;
  *(_DWORD *)result = off_968B60;
  *(_DWORD *)(result + 8) = -1;
  return result;
}


// ===== 458bd8 GetNewScriptCmdImplInstance<Script_PlayCamera>(void) =====
int GetNewScriptCmdImplInstance<Script_PlayCamera>()
{
  int result; // r0

  result = operator new(0x10u, 0);
  *(_DWORD *)(result + 12) = 0;
  *(_BYTE *)(result + 4) = 0;
  *(_DWORD *)result = off_968B78;
  *(_DWORD *)(result + 8) = -1;
  return result;
}


// ===== 458c20 GetNewScriptCmdImplInstance<Script_SetCamera>(void) =====
int GetNewScriptCmdImplInstance<Script_SetCamera>()
{
  int result; // r0

  result = operator new(0x10u, 0);
  *(_DWORD *)(result + 12) = 0;
  *(_BYTE *)(result + 4) = 0;
  *(_DWORD *)result = off_968B90;
  *(_DWORD *)(result + 8) = -1;
  return result;
}


// ===== 458c68 GetNewScriptCmdImplInstance<Script_CONSOLE>(void) =====
int GetNewScriptCmdImplInstance<Script_CONSOLE>()
{
  int result; // r0

  result = operator new(0x10u, 0);
  *(_DWORD *)(result + 12) = 0;
  *(_BYTE *)(result + 4) = 0;
  *(_DWORD *)result = off_968BA8;
  *(_DWORD *)(result + 8) = -1;
  return result;
}


// ===== 458cb0 GetNewScriptCmdImplInstance<Script_ExitCutSceneMode>(void) =====
int GetNewScriptCmdImplInstance<Script_ExitCutSceneMode>()
{
  int result; // r0

  result = operator new(0x10u, 0);
  *(_DWORD *)(result + 12) = 0;
  *(_BYTE *)(result + 4) = 0;
  *(_DWORD *)result = off_968BC0;
  *(_DWORD *)(result + 8) = -1;
  return result;
}


// ===== 458cf8 GetNewScriptCmdImplInstance<Script_EnterCutSceneMode>(void) =====
int GetNewScriptCmdImplInstance<Script_EnterCutSceneMode>()
{
  int result; // r0

  result = operator new(0x10u, 0);
  *(_DWORD *)(result + 12) = 0;
  *(_BYTE *)(result + 4) = 0;
  *(_DWORD *)result = off_968BD8;
  *(_DWORD *)(result + 8) = -1;
  return result;
}


// ===== 458d40 GetNewScriptCmdImplInstance<Script_ExecScript>(void) =====
int GetNewScriptCmdImplInstance<Script_ExecScript>()
{
  int result; // r0

  result = operator new(0x14u, 0);
  *(_DWORD *)(result + 16) = 0;
  *(_BYTE *)(result + 4) = 0;
  *(_DWORD *)result = off_968BF0;
  *(_DWORD *)(result + 8) = -1;
  *(_DWORD *)(result + 12) = 0;
  return result;
}


// ===== 458d8c std::vector<char *,std::allocator<char *>>::_M_fill_insert_aux(char **,uint,char * const&,std::__false_type const&) =====
char *__fastcall std::vector<char *>::_M_fill_insert_aux(char *result, char *a2, unsigned int a3, char *a4)
{
  bool v5; // cf
  char *v6; // r4
  char *v9; // r7
  size_t v10; // r2
  int v11; // r8
  int v12; // r8
  char *v13; // r3
  char *v14; // r10
  int v15; // r8
  int k; // r2
  unsigned int v17; // r3
  int v18; // r10
  char *v19; // r0
  int i; // r1
  int j; // r3

  v5 = (unsigned int)a4 >= *(_DWORD *)result;
  v6 = result;
  if ( v5 )
  {
    v9 = *((char **)result + 1);
    if ( a4 < v9 )
      return (char *)std::vector<char *>::_M_fill_insert_aux(result);
  }
  else
  {
    v9 = *((char **)result + 1);
  }
  v10 = v9 - a2;
  v11 = (v9 - a2) >> 2;
  if ( a3 >= v11 )
  {
    v17 = a3 - v11;
    v18 = (int)(4 * v17) >> 2;
    v19 = &v9[4 * v17];
    if ( v18 > 0 )
    {
      for ( i = 0; i != v18; ++i )
        *(_DWORD *)&v9[4 * i] = *(_DWORD *)a4;
    }
    *((_DWORD *)v6 + 1) = v19;
    if ( a2 != v9 )
    {
      memcpy(v19, a2, v10);
      v19 = *((char **)v6 + 1);
    }
    result = &v19[4 * v11];
    *((_DWORD *)v6 + 1) = result;
    if ( v11 > 0 )
    {
      for ( j = 0; j != v11; ++j )
        *(_DWORD *)&a2[4 * j] = *(_DWORD *)a4;
    }
  }
  else
  {
    v12 = 4 * a3;
    v13 = &v9[-4 * a3];
    if ( v13 == v9 )
    {
      v14 = v9;
    }
    else
    {
      v14 = v13;
      result = (char *)memcpy(v9, v13, v9 - v13);
      v13 = *((char **)v6 + 1);
    }
    *((_DWORD *)v6 + 1) = &v13[v12];
    if ( v14 - a2 > 0 )
      result = (char *)memmove(&v9[-(v14 - a2)], a2, v14 - a2);
    v15 = v12 >> 2;
    if ( v15 > 0 )
    {
      for ( k = 0; k != v15; ++k )
        *(_DWORD *)&a2[4 * k] = *(_DWORD *)a4;
    }
  }
  return result;
}


// ===== 458ed4 std::vector<char *,std::allocator<char *>>::_M_compute_next_size(uint) =====
unsigned int __fastcall std::vector<char *>::_M_compute_next_size(_DWORD *a1, unsigned int a2)
{
  unsigned int v2; // r4
  unsigned int result; // r0

  v2 = (a1[1] - *a1) >> 2;
  if ( 0x3FFFFFFF - v2 < a2 )
    __ZSt24__stl_throw_length_errorPKc_veneer("vector");
  if ( v2 < a2 )
    result = v2 + a2;
  else
    result = 2 * v2;
  if ( result > 0x3FFFFFFF || result < v2 )
    return 0x3FFFFFFF;
  return result;
}


// ===== 458f34 std::vector<ScriptManager::ScriptCmds,std::allocator<ScriptManager::ScriptCmds>>::_M_compute_next_size(uint) =====
unsigned int __fastcall std::vector<ScriptManager::ScriptCmds>::_M_compute_next_size(_DWORD *a1, unsigned int a2)
{
  unsigned int v3; // r4
  unsigned int result; // r0

  v3 = -1431655765 * ((a1[1] - *a1) >> 2);
  if ( 357913941 - v3 < a2 )
    __ZSt24__stl_throw_length_errorPKc_veneer("vector");
  if ( v3 < a2 )
    result = v3 + a2;
  else
    result = 2 * v3;
  if ( result > 0x15555555 || result < v3 )
    return 357913941;
  return result;
}


// ===== 458fb4 std::vector<ScriptManager::ScriptContext,std::allocator<ScriptManager::ScriptContext>>::_M_compute_next_size(uint) =====
unsigned int __fastcall std::vector<ScriptManager::ScriptContext>::_M_compute_next_size(_DWORD *a1, unsigned int a2)
{
  unsigned int v3; // r4
  unsigned int result; // r0

  v3 = -1431655765 * ((a1[1] - *a1) >> 2);
  if ( 357913941 - v3 < a2 )
    __ZSt24__stl_throw_length_errorPKc_veneer("vector");
  if ( v3 < a2 )
    result = v3 + a2;
  else
    result = 2 * v3;
  if ( result > 0x15555555 || result < v3 )
    return 357913941;
  return result;
}


// ===== 459034 Script_StartDialog::Init(void) =====
bool __fastcall Script_StartDialog::Init(Script_StartDialog *this)
{
  int v2; // r5
  _BOOL4 result; // r0

  v2 = *(_DWORD *)(*((_DWORD *)this + 3) + 12);
  result = v2 == PyDataConstants::getConstant((PyDataConstants *)dword_99F758, "DialogStyles", "EnterLocationDialog");
  *((_BYTE *)this + 4) = result;
  return result;
}


// ===== 459090 StreamReader::readAs<int>(IStreamBase *,int *) =====
int __fastcall StreamReader::readAs<int>(int a1, int a2)
{
  int result; // r0
  int v3; // r1

  result = (*(int (__fastcall **)(int, int, int, _DWORD))(*(_DWORD *)a1 + 24))(a1, a2, 4, 0);
  if ( result != 4 || v3 )
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
               "..\\..\\project_vs2005\\Game/..\\..\\sources/Utils/StreamReader.h",
               80);
    }
  }
  return result;
}


// ===== 459140 StreamReader::peekAs<int>(IStreamBase *,int *) =====
int __fastcall StreamReader::peekAs<int>(int a1, int a2)
{
  int result; // r0
  int v3; // r1

  result = (*(int (__fastcall **)(int, int, int, _DWORD))(*(_DWORD *)a1 + 20))(a1, a2, 4, 0);
  if ( result != 4 || v3 )
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
               "..\\..\\project_vs2005\\Game/..\\..\\sources/Utils/StreamReader.h",
               104);
    }
  }
  return result;
}


// ===== 4591f0 ScriptManager::GetIDFromName(char const*,bool) =====
int __fastcall ScriptManager::GetIDFromName(ScriptManager *this, const char *a2, int a3)
{
  int v3; // r5
  int v4; // r4
  int v5; // r7
  int i; // r6

  v4 = *((_DWORD *)this + 9);
  if ( !a3 )
    v3 = *((_DWORD *)this + 2);
  v5 = (*((_DWORD *)this + 10) - v4) >> 2;
  if ( a3 )
    v3 = 0;
  if ( v3 >= v5 )
    return -1;
  for ( i = 4 * v3; LC_API_STRCASECMP_0(*(const char **)(v4 + i), a2); i += 4 )
  {
    if ( ++v3 == v5 )
      return -1;
  }
  return v3;
}


// ===== 45925c Script_LockTutorial::Execute(bool,int) =====
int __fastcall Script_LockTutorial::Execute(int this, bool a2, int a3)
{
  int v3; // r2

  v3 = *(_DWORD *)(this + 12);
  if ( v3 )
  {
    *(_BYTE *)(dword_99F778 + *(_DWORD *)(v3 + 8) + 41) = 0;
    if ( lastOpenMenuID == 17 )
      return SavegameManager::saveSettings((SavegameManager *)dword_99F778);
    else
      return updateJob_thread::Start2((updateJob_thread *)m_updateJobThread1);
  }
  return this;
}


// ===== 4592cc Script_SetCameraTarget::IsBlocking(void) =====
bool __fastcall Script_SetCameraTarget::IsBlocking(Script_SetCameraTarget *this)
{
  int CurrentLevel; // r0
  int v3; // r3

  return *(_BYTE *)(*((_DWORD *)this + 3) + 20)
      && (CurrentLevel = Application::GetCurrentLevel((Application *)&Singleton<Application>::s_inst)) != 0
      && (v3 = *(_DWORD *)(CurrentLevel + 296)) != 0
      && *(_DWORD *)(v3 + 32) > 0;
}


// ===== 45932c Script_WaitCamera::IsBlocking(void) =====
int __fastcall Script_WaitCamera::IsBlocking(Script_WaitCamera *this)
{
  int CurrentLevel; // r0
  int v2; // r3

  CurrentLevel = Application::GetCurrentLevel((Application *)&Singleton<Application>::s_inst);
  if ( CurrentLevel && (v2 = *(_DWORD *)(CurrentLevel + 296)) != 0 )
    return *(unsigned __int8 *)(v2 + 132);
  else
    return 0;
}


// ===== 459370 Script_PlayCamera::IsBlocking(void) =====
int __fastcall Script_PlayCamera::IsBlocking(Script_PlayCamera *this)
{
  int CurrentLevel; // r0
  int v3; // r3

  if ( *(_BYTE *)(*((_DWORD *)this + 3) + 12)
    && (CurrentLevel = Application::GetCurrentLevel((Application *)&Singleton<Application>::s_inst)) != 0
    && (v3 = *(_DWORD *)(CurrentLevel + 296)) != 0 )
  {
    return *(unsigned __int8 *)(v3 + 132);
  }
  else
  {
    return 0;
  }
}


// ===== 4593c4 Script_AwardTrophy::Execute(bool,int) =====
int __fastcall Script_AwardTrophy::Execute(int this, bool a2, int a3)
{
  int v3; // r2

  v3 = *(_DWORD *)(this + 12);
  if ( v3 )
    return TrophyManager::UnlockTrophy((TrophyManager *)TrophyManager::s_instance, *(_DWORD *)(v3 + 8));
  return this;
}


// ===== 4593f4 _ZN12ObjectHandlecvPT_I9ContainerEEv =====
char *__fastcall ZN12ObjectHandlecvPT_I9ContainerEEv(char **a1)
{
  char *Object; // r4

  Object = ObjectHandle::GetObject(a1, 0);
  if ( gAssertLevel == 2 )
  {
    dword_0 = 0;
  }
  else if ( gAssertLevel == 1 )
  {
    fprintf(
      (FILE *)&_sF + 2,
      "ASSERT(%s) FAILED: %s:%d\n",
      "(int)T::ClassID < (int)ObjectBase::GO_ID_INVALID",
      "..\\..\\project_vs2005\\Game/..\\..\\sources/Core/ObjectManager/ObjectHandle.h",
      72);
  }
  if ( Object && *((_DWORD *)Object + 61) == 21 )
    return Object;
  else
    return nullptr;
}


// ===== 4594a8 Script_CharacterState_Callback(char const*,int,void (*)(ObjectBase *)) =====
int __fastcall Script_CharacterState_Callback(char *a1, int a2, int (__fastcall *a3)(int))
{
  int v5; // r5
  int result; // r0
  _DWORD *v8; // r5
  _DWORD *i; // r6
  _DWORD *v10; // t1
  int Object; // r0
  _BYTE v12[12]; // [sp+Ch] [bp-Ch] BYREF

  v5 = dword_99F764;
  result = LC_API_STRCASECMP_0(a1, "All");
  if ( result )
  {
    ObjectManager::GetObjectByName((ObjectManager *)v12, (const char *)v5, a1, a2, nullptr, 0);
    Object = ObjectHandle::GetObject((ObjectHandle *)v12, 0);
    return a3(Object);
  }
  else
  {
    v10 = *(_DWORD **)(v5 + 44);
    v8 = (_DWORD *)(v5 + 44);
    for ( i = v10; v8 != i; i = (_DWORD *)*i )
      result = a3(i[2]);
  }
  return result;
}


// ===== 459550 Script_MarkCharacterAsScripted::Unset(ObjectBase *) =====
int __fastcall Script_MarkCharacterAsScripted::Unset(int this, ObjectBase *a2)
{
  _BYTE v2[12]; // [sp+4h] [bp-Ch] BYREF

  if ( this )
  {
    ObjectBase::GetHandle((ObjectBase *)v2);
    this = ObjectHandle::operator Character *(v2);
    if ( this )
      *(_BYTE *)(this + 5248) = 0;
  }
  return this;
}


// ===== 45958c Script_MarkCharacterAsScripted::Set(ObjectBase *) =====
int __fastcall Script_MarkCharacterAsScripted::Set(int this, ObjectBase *a2)
{
  _BYTE v2[12]; // [sp+4h] [bp-Ch] BYREF

  if ( this )
  {
    ObjectBase::GetHandle((ObjectBase *)v2);
    this = ObjectHandle::operator Character *(v2);
    if ( this )
      *(_BYTE *)(this + 5248) = 1;
  }
  return this;
}


// ===== 4595c8 GetNewScriptCmdImplInstance<Script_PlayActorAnim>(void) =====
int GetNewScriptCmdImplInstance<Script_PlayActorAnim>()
{
  int v0; // r5

  v0 = operator new(0x1Cu, 0);
  *(_DWORD *)(v0 + 24) = 0;
  *(_DWORD *)(v0 + 8) = -1;
  *(_BYTE *)(v0 + 4) = 0;
  *(_DWORD *)(v0 + 12) = 0;
  *(_DWORD *)(v0 + 16) = 0;
  *(_DWORD *)(v0 + 20) = 0;
  *(_DWORD *)v0 = off_9687B8;
  ObjectHandle::ObjectHandle((ObjectHandle *)(v0 + 16));
  return v0;
}


// ===== 459628 Script_PlayActorAnim::IsBlocking(void) =====
bool __fastcall Script_PlayActorAnim::IsBlocking(Script_PlayActorAnim *this)
{
  int v1; // r4
  ObjectHandle *v3; // r5
  int Object; // r0

  v1 = *((_DWORD *)this + 3);
  if ( *(_BYTE *)(v1 + 28)
    && (v3 = (Script_PlayActorAnim *)((char *)this + 16),
        ObjectHandle::GetObject((Script_PlayActorAnim *)((char *)this + 16), 0))
    && (Object = ObjectHandle::GetObject(v3, 0)) != 0
    && !*(_DWORD *)(Object + 244) )
  {
    return *(_DWORD *)(v1 + 16) + 2 == *(_DWORD *)(Object + 1256);
  }
  else
  {
    return 0;
  }
}


// ===== 459698 Script_MoveActor::IsBlocking(void) =====
int __fastcall Script_MoveActor::IsBlocking(Script_MoveActor *this)
{
  int v2; // r1
  _DWORD *v3; // r3

  if ( !*((_BYTE *)this + 16) )
    return 0;
  v2 = *((_DWORD *)this + 5);
  if ( !v2 )
    return 0;
  v3 = *(_DWORD **)(v2 + 512);
  if ( v3 == (_DWORD *)(v2 + 512) )
  {
    v2Controller::Cmd_Stop(*(_DWORD *)(v2 + 888));
    if ( *((_BYTE *)this + 24) )
    {
      *(_BYTE *)(*((_DWORD *)this + 5) + 132) = 1;
      Character::Revive(*((Character **)this + 5), nullptr, 1);
      return 0;
    }
    return 0;
  }
  do
    v3 = (_DWORD *)*v3;
  while ( (_DWORD *)(v2 + 512) != v3 );
  return 1;
}


// ===== 45971c Script_PutCharacterInIdle::SetState(ObjectBase *) =====
int __fastcall Script_PutCharacterInIdle::SetState(int this, ObjectBase *a2)
{
  int v2; // r5
  CharStateMachine *v3; // r5
  _BYTE v4[16]; // [sp+4h] [bp-10h] BYREF

  if ( this )
  {
    ObjectBase::GetHandle((ObjectBase *)v4);
    this = ObjectHandle::operator Character *(v4);
    v2 = this;
    if ( this )
    {
      this = (*(int (__fastcall **)(int))(*(_DWORD *)this + 52))(this);
      if ( !this )
      {
        v3 = (CharStateMachine *)(v2 + 1276);
        this = CharStateMachine::SM_IsInLimbus(v3);
        if ( !this )
        {
          this = CharStateMachine::SM_IsAwaitingToSpawn(v3);
          if ( !this )
            return CharStateMachine::SM_SetIdleState(v3, Script_PutCharacterInIdle::waitForAnim);
        }
      }
    }
  }
  return this;
}


// ===== 4597b4 Script_Wait::Update(void) =====
int __fastcall Script_Wait::Update(Script_Wait *this)
{
  int v2; // r5
  int result; // r0

  v2 = *((_DWORD *)this + 4);
  result = Application::GetDt((Application *)&Singleton<Application>::s_inst) + v2;
  *((_DWORD *)this + 4) = result;
  return result;
}


// ===== 4597e8 Script_HideFlash::Init(void) =====
char *__fastcall Script_HideFlash::Init(Script_HideFlash *this)
{
  MenuManager *Instance; // r6
  const char *v3; // r5
  char *result; // r0

  Instance = (MenuManager *)MenuManager::GetInstance(this);
  v3 = *(const char **)(*((_DWORD *)this + 3) + 16);
  result = LC_API_STRSTR_0(v3, "HUD");
  if ( result )
  {
    *((_DWORD *)this + 4) = 0;
  }
  else
  {
    result = (char *)MenuManager::GetMenuByName(Instance, v3);
    *((_DWORD *)this + 4) = result;
  }
  return result;
}


// ===== 45983c Script_ShowFlash::Init(void) =====
char *__fastcall Script_ShowFlash::Init(Script_ShowFlash *this)
{
  MenuManager *Instance; // r6
  const char *v3; // r5
  char *result; // r0

  Instance = (MenuManager *)MenuManager::GetInstance(this);
  v3 = *(const char **)(*((_DWORD *)this + 3) + 16);
  result = LC_API_STRSTR_0(v3, "HUD");
  if ( result )
  {
    *((_DWORD *)this + 4) = 0;
  }
  else
  {
    result = (char *)MenuManager::GetMenuByName(Instance, v3);
    *((_DWORD *)this + 4) = result;
  }
  return result;
}


// ===== 459890 Script_StopEffect::Execute(bool,int) =====
void __fastcall Script_StopEffect::Execute(Script_StopEffect *this, bool a2, int a3)
{
  VisualFXManager::DropAnimatedFXSetByID(
    (VisualFXManager *)&Singleton<VisualFXManager>::s_inst,
    *(_DWORD *)(*((_DWORD *)this + 3) + 8));
}


// ===== 4598b4 Script_PlayEffect::Init(void) =====
void __fastcall Script_PlayEffect::Init(Script_PlayEffect *this)
{
  VisualFXManager::RegisterFXSetToLoad(
    (VisualFXManager *)&Singleton<VisualFXManager>::s_inst,
    *(_DWORD *)(*((_DWORD *)this + 3) + 8));
}


// ===== 4598d8 Script_WaitDialog::IsBlocking(void) =====
int __fastcall Script_WaitDialog::IsBlocking(Script_WaitDialog *this)
{
  Level *CurrentLevel; // r0

  CurrentLevel = (Level *)Application::GetCurrentLevel((Application *)&Singleton<Application>::s_inst);
  return Level::hasActiveDialog(CurrentLevel);
}


// ===== 459900 PlayerInfo::SetInCutscene(bool) =====
int __fastcall PlayerInfo::SetInCutscene(PlayerInfo *this, int a2)
{
  int v3; // r3
  _DWORD v5[7]; // [sp+0h] [bp-24h] BYREF
  char v6; // [sp+1Ch] [bp-8h]
  _BYTE v7[7]; // [sp+1Dh] [bp-7h] BYREF

  v5[2] = 0;
  v5[3] = 0;
  v5[1] = 1;
  v5[5] = -1;
  v6 = 0;
  v5[0] = &off_963700;
  v5[4] = -1;
  v5[6] = 0;
  if ( v7[0] != a2 )
  {
    v7[0] = a2;
    NetStructMember::SetChanged((NetStructMember *)v5);
  }
  v3 = *((_DWORD *)this + 314);
  v5[0] = &off_9636D0;
  return (*(int (__fastcall **)(char *, _BYTE *))(v3 + 28))((char *)this + 1256, v7);
}


// ===== 4599ac Script_ExitCutSceneMode::Execute(bool,int) =====
CMessaging *__fastcall Script_ExitCutSceneMode::Execute(Script_ExitCutSceneMode *this, bool a2, int a3)
{
  MenuManager *Instance; // r0
  MenuManager *HUDRoot; // r4
  MenuManager *v5; // r0
  RenderFX *v6; // r0
  gameswf::root *Root; // r0
  gameswf::character *root_movie; // r0
  int v9; // r5
  CMessaging *result; // r0
  CMessaging *v11; // r8
  bool v12; // r2
  CMessage *Message; // r0
  int v14; // r3
  PlayerInfo *Player; // r7

  Instance = (MenuManager *)MenuManager::GetInstance(this);
  HUDRoot = (MenuManager *)MenuManager::GetHUDRoot(Instance);
  v5 = (MenuManager *)MenuManager::GetInstance(HUDRoot);
  v6 = (RenderFX *)MenuManager::GetHUDRoot(v5);
  Root = (gameswf::root *)RenderFX::GetRoot(v6);
  root_movie = (gameswf::character *)gameswf::root::get_root_movie(Root);
  v9 = 0;
  RenderFX::InvokeASCallback(HUDRoot, root_movie, "StopCutscene", nullptr, 0);
  byte_9A600C = 0;
  AnimController::s_scalingEnabled = 1;
  result = (CMessaging *)GetOnline();
  if ( *((_BYTE *)result + 5) )
  {
    v11 = (CMessaging *)CMessaging::Get(result);
    Message = (CMessage *)CMessage::CreateMessage((CMessage *)"CMsgScriptCmd", (_BYTE *)&dword_0 + 1, v12);
    *((_DWORD *)Message + 21) = -2;
    *((_DWORD *)Message + 22) = -1;
    *((_DWORD *)Message + 20) = 1;
    CMessaging::SendMsg(v11, Message);
    result = (CMessaging *)dword_99F76C;
    if ( *(int *)(dword_99F76C + 1732) > 0 )
    {
      do
      {
        Player = (PlayerInfo *)PlayerManager::GetPlayer(result, v9, 0);
        if ( (*(int (**)(void))(*(_DWORD *)Player + 80))() )
        {
          PlayerInfo::SetInCutscene(Player, 0);
        }
        else
        {
          v14 = *((_DWORD *)Player + 408);
          if ( v14 )
            (*(void (__fastcall **)(_DWORD, int))(*(_DWORD *)v14 + 64))(*((_DWORD *)Player + 408), 1);
        }
        ++v9;
        result = (CMessaging *)dword_99F76C;
      }
      while ( v9 < *(_DWORD *)(dword_99F76C + 1732) );
    }
  }
  return result;
}


// ===== 459b04 Script_AwardEndGameTrophies::Execute(bool,int) =====
int __fastcall Script_AwardEndGameTrophies::Execute(Script_AwardEndGameTrophies *this, bool a2, int a3)
{
  Character *character_660; // r5
  TrophyManager *v4; // r10
  int v5; // r0
  int v6; // r0
  int v7; // r0
  int NumQuests; // r8
  int v9; // r7
  int v10; // r4
  int v11; // r6
  Quest *QuestByID; // r0
  int v13; // r0
  int Int; // r6
  int result; // r0
  int v16; // r1
  int v17; // r0
  int v18; // r0
  int v19; // r0
  int v20; // r0
  int v21; // r0
  int v22; // r0
  int v23; // r0
  int v24; // r0
  int v25; // r0
  int v26; // r0
  int v27; // r0
  int v28; // r0
  int v29; // r0
  int v30; // r0
  int v31; // r0

  character_660 = PlayerManager::GetLocalPlayer((PlayerManager *)dword_99F76C, 0, 1)->character_660;
  v4 = (TrophyManager *)TrophyManager::s_instance;
  if ( Character::SG_GetPlayerClass(character_660) == 263 )
  {
    v7 = Arrays::GetMemberIDByString<Arrays::TrophyTable>("quest_warriorwin");
    TrophyManager::UnlockTrophy(v4, v7);
  }
  else if ( Character::SG_GetPlayerClass(character_660) == 264 )
  {
    v19 = Arrays::GetMemberIDByString<Arrays::TrophyTable>("quest_warriorwin");
    TrophyManager::UnlockTrophy(v4, v19);
    v20 = Arrays::GetMemberIDByString<Arrays::TrophyTable>("quest_berserkerwin");
    TrophyManager::UnlockTrophy(v4, v20);
  }
  else if ( Character::SG_GetPlayerClass(character_660) == 265 )
  {
    v21 = Arrays::GetMemberIDByString<Arrays::TrophyTable>("quest_warriorwin");
    TrophyManager::UnlockTrophy(v4, v21);
    v22 = Arrays::GetMemberIDByString<Arrays::TrophyTable>("quest_paladinwin");
    TrophyManager::UnlockTrophy(v4, v22);
  }
  else if ( Character::SG_GetPlayerClass(character_660) == 325 )
  {
    v26 = Arrays::GetMemberIDByString<Arrays::TrophyTable>("quest_roguewin");
    TrophyManager::UnlockTrophy(v4, v26);
  }
  else if ( Character::SG_GetPlayerClass(character_660) == 326 )
  {
    v23 = Arrays::GetMemberIDByString<Arrays::TrophyTable>("quest_roguewin");
    TrophyManager::UnlockTrophy(v4, v23);
    v24 = Arrays::GetMemberIDByString<Arrays::TrophyTable>("quest_archerwin");
    TrophyManager::UnlockTrophy(v4, v24);
  }
  else if ( Character::SG_GetPlayerClass(character_660) == 327 )
  {
    v27 = Arrays::GetMemberIDByString<Arrays::TrophyTable>("quest_roguewin");
    TrophyManager::UnlockTrophy(v4, v27);
    v28 = Arrays::GetMemberIDByString<Arrays::TrophyTable>("quest_assassinwin");
    TrophyManager::UnlockTrophy(v4, v28);
  }
  else if ( Character::SG_GetPlayerClass(character_660) == 290 )
  {
    v29 = Arrays::GetMemberIDByString<Arrays::TrophyTable>("quest_magewin");
    TrophyManager::UnlockTrophy(v4, v29);
  }
  else if ( Character::SG_GetPlayerClass(character_660) == 291 )
  {
    v30 = Arrays::GetMemberIDByString<Arrays::TrophyTable>("quest_magewin");
    TrophyManager::UnlockTrophy(v4, v30);
    v31 = Arrays::GetMemberIDByString<Arrays::TrophyTable>("quest_illusionistwin");
    TrophyManager::UnlockTrophy(v4, v31);
  }
  else if ( Character::SG_GetPlayerClass(character_660) == 292 )
  {
    v5 = Arrays::GetMemberIDByString<Arrays::TrophyTable>("quest_magewin");
    TrophyManager::UnlockTrophy(v4, v5);
    v6 = Arrays::GetMemberIDByString<Arrays::TrophyTable>("quest_necromancerwin");
    TrophyManager::UnlockTrophy(v4, v6);
  }
  NumQuests = Character::SG_GetNumQuests(character_660, -1);
  if ( NumQuests )
  {
    v10 = 0;
    v9 = 0;
    v11 = 1;
    while ( 1 )
    {
      if ( *(int *)Character::SG_GetQuestByID(character_660, v10, -1) <= 12 && v10 != 22 )
        v11 = 0;
      if ( *(int *)Character::SG_GetQuestByID(character_660, v10, -1) > 12 )
      {
        QuestByID = (Quest *)Character::SG_GetQuestByID(character_660, v10, -1);
        if ( Quest::IsSecondary(QuestByID) )
          v9 = 1;
      }
      ++v10;
      if ( !v11 )
      {
        if ( v9 )
          break;
      }
      if ( v10 == NumQuests )
      {
        if ( v11 )
          goto LABEL_34;
        goto LABEL_26;
      }
    }
  }
  else
  {
    v9 = 0;
LABEL_34:
    v18 = Arrays::GetMemberIDByString<Arrays::TrophyTable>("quest_allcomplete");
    TrophyManager::UnlockTrophy(v4, v18);
LABEL_26:
    if ( !v9 )
    {
      v13 = Arrays::GetMemberIDByString<Arrays::TrophyTable>("completed_no_sidequests");
      TrophyManager::UnlockTrophy(v4, v13);
    }
  }
  if ( !CharProperties::PROPS_GetInt((Character *)((char *)character_660 + 1376), 25, 0) )
  {
    v17 = Arrays::GetMemberIDByString<Arrays::TrophyTable>("completed_never_died");
    TrophyManager::UnlockTrophy(v4, v17);
  }
  Int = CharProperties::PROPS_GetInt((Character *)((char *)character_660 + 1376), 148, 0);
  if ( Int == 2 * (Character::SG_GetPlayerLevel(character_660) - 1) )
  {
    v25 = Arrays::GetMemberIDByString<Arrays::TrophyTable>("completed_never_increase_stats");
    TrophyManager::UnlockTrophy(v4, v25);
  }
  result = CharProperties::PROPS_GetInt((Character *)((char *)character_660 + 1376), 218, 0);
  if ( !result )
  {
    v16 = Arrays::GetMemberIDByString<Arrays::TrophyTable>("completed_never_open_chests");
    return TrophyManager::UnlockTrophy(v4, v16);
  }
  return result;
}


// ===== 459f64 MenuMessageManager<DialogMsg,1>::Invoke(char const*,int) [clone] =====
MenuFX *__fastcall MenuMessageManager<DialogMsg,1>::Invoke(MenuManager *a1)
{
  MenuManager *Instance; // r0
  MenuFX *result; // r0
  MenuFX *v4; // r5
  gameswf::character *Char; // r0
  _BYTE v6[4]; // [sp+Ch] [bp-14h] BYREF
  int v7; // [sp+10h] [bp-10h]
  int v8; // [sp+14h] [bp-Ch]
  int v9; // [sp+18h] [bp-8h]
  int v10; // [sp+1Ch] [bp-4h]

  Instance = (MenuManager *)MenuManager::GetInstance(a1);
  result = (MenuFX *)MenuManager::GetHUDRoot(Instance);
  v4 = result;
  if ( result )
  {
    gameswf::weak_ptr<gameswf::character>::check_proxy(&dword_9A5470);
    if ( !dword_9A5474 )
      DebugCachedCharacter::RefreshCache(
        (DebugCachedCharacter *)&DialogMsg::s_NodeCachedChar,
        DialogMsg::s_NodeName[0],
        v4,
        nullptr);
    Char = (gameswf::character *)DebugCachedCharacter::GetChar((DebugCachedCharacter *)&DialogMsg::s_NodeCachedChar);
    v6[0] = 0;
    v9 = 0;
    v10 = 0;
    v6[1] = 2;
    v7 = 0;
    v8 = 0;
    RenderFX::InvokeASCallback(v4, Char, (const char *)a1, (const gameswf::as_value *)v6, 1);
    return (MenuFX *)gameswf::as_value::drop_refs((gameswf::as_value *)v6);
  }
  return result;
}


// ===== 45a030 MenuMessageManager<TutorialMsg,1>::Invoke(char const*,int) [clone] =====
int __fastcall MenuMessageManager<TutorialMsg,1>::Invoke(MenuManager *a1)
{
  MenuManager *Instance; // r0
  int result; // r0
  MenuFX *v4; // r5
  gameswf::character *Char; // r0
  _BYTE v6[4]; // [sp+Ch] [bp-14h] BYREF
  int v7; // [sp+10h] [bp-10h]
  int v8; // [sp+14h] [bp-Ch]
  int v9; // [sp+18h] [bp-8h]
  int v10; // [sp+1Ch] [bp-4h]

  Instance = (MenuManager *)MenuManager::GetInstance(a1);
  result = MenuManager::GetHUDRoot(Instance);
  v4 = (MenuFX *)result;
  if ( result )
  {
    gameswf::weak_ptr<gameswf::character>::check_proxy((int)&dword_9A5440);
    if ( !dword_9A5444 )
      DebugCachedCharacter::RefreshCache(
        (DebugCachedCharacter *)&TutorialMsg::s_NodeCachedChar,
        TutorialMsg::s_NodeName[0],
        v4,
        nullptr);
    Char = (gameswf::character *)DebugCachedCharacter::GetChar((DebugCachedCharacter *)&TutorialMsg::s_NodeCachedChar);
    v6[0] = 0;
    v9 = 0;
    v10 = 0;
    v6[1] = 2;
    v7 = 0;
    v8 = 0;
    RenderFX::InvokeASCallback(v4, Char, (const char *)a1, (const gameswf::as_value *)v6, 1);
    return gameswf::as_value::drop_refs((gameswf::as_value *)v6);
  }
  return result;
}


// ===== 45a0fc MenuMessageManager<CharMenuTutorialMsg,1>::Invoke(char const*,int) [clone] =====
int __fastcall MenuMessageManager<CharMenuTutorialMsg,1>::Invoke(MenuManager *a1)
{
  MenuManager *Instance; // r0
  int result; // r0
  MenuFX *v4; // r5
  gameswf::character *Char; // r0
  _BYTE v6[4]; // [sp+Ch] [bp-14h] BYREF
  int v7; // [sp+10h] [bp-10h]
  int v8; // [sp+14h] [bp-Ch]
  int v9; // [sp+18h] [bp-8h]
  int v10; // [sp+1Ch] [bp-4h]

  Instance = (MenuManager *)MenuManager::GetInstance(a1);
  result = MenuManager::GetHUDRoot(Instance);
  v4 = (MenuFX *)result;
  if ( result )
  {
    gameswf::weak_ptr<gameswf::character>::check_proxy((int)&dword_9A54A4);
    if ( !dword_9A54A8 )
      DebugCachedCharacter::RefreshCache(
        (DebugCachedCharacter *)&CharMenuTutorialMsg::s_NodeCachedChar,
        (const char *)CharMenuTutorialMsg::s_NodeName,
        v4,
        nullptr);
    Char = (gameswf::character *)DebugCachedCharacter::GetChar((DebugCachedCharacter *)&CharMenuTutorialMsg::s_NodeCachedChar);
    v6[0] = 0;
    v9 = 0;
    v10 = 0;
    v6[1] = 2;
    v7 = 0;
    v8 = 0;
    RenderFX::InvokeASCallback(v4, Char, (const char *)a1, (const gameswf::as_value *)v6, 1);
    return gameswf::as_value::drop_refs((gameswf::as_value *)v6);
  }
  return result;
}


// ===== 45a1c8 ScriptManager::UnLoadAllScripts(void) =====
_DWORD *__fastcall ScriptManager::UnLoadAllScripts(ScriptManager *this)
{
  int v2; // r3
  int v3; // r0
  int v4; // r7
  int v5; // r4
  int v6; // r6
  int v7; // r2
  int v8; // r3
  int v9; // r6
  int v10; // r4
  int v11; // r3
  int v12; // r3
  _DWORD *result; // r0

  v2 = *((_DWORD *)this + 7);
  v3 = *((_DWORD *)this + 6);
  v4 = -1431655765 * ((v2 - v3) >> 2);
  if ( v4 > 0 )
  {
    v5 = 0;
    v6 = 0;
    while ( 1 )
    {
      ++v6;
      ScriptManager::ScriptCmds::Free((ScriptManager::ScriptCmds *)(v3 + v5));
      v5 += 12;
      if ( v6 == v4 )
        break;
      v3 = *((_DWORD *)this + 6);
    }
  }
  v7 = *((_DWORD *)this + 10);
  v8 = *((_DWORD *)this + 9);
  v9 = (v7 - v8) >> 2;
  if ( v9 > 0 )
  {
    v10 = 0;
    while ( 1 )
    {
      CustomFree(*(void **)(v8 + 4 * v10));
      *(_DWORD *)(*((_DWORD *)this + 9) + 4 * v10++) = 0;
      if ( v10 == v9 )
        break;
      v8 = *((_DWORD *)this + 9);
    }
    v8 = *((_DWORD *)this + 9);
    v7 = *((_DWORD *)this + 10);
  }
  if ( v8 != v7 )
    *((_DWORD *)this + 10) = v8;
  v11 = *((_DWORD *)this + 6);
  if ( v11 != *((_DWORD *)this + 7) )
    *((_DWORD *)this + 7) = v11;
  v12 = *((_DWORD *)this + 3);
  if ( v12 != *((_DWORD *)this + 4) )
    *((_DWORD *)this + 4) = v12;
  result = ScriptManager::StopSkipping(this);
  *((_DWORD *)this + 2) = 0;
  return result;
}


// ===== 45a2ac ScriptManager::Flush(void) =====
_DWORD *__fastcall ScriptManager::Flush(ScriptManager *this)
{
  _DWORD *result; // r0

  *(_DWORD *)this = -1;
  *((_BYTE *)this + 48) = 0;
  *((_DWORD *)this + 1) = 0;
  *((_DWORD *)this + 2) = 0;
  result = ScriptManager::UnLoadAllScripts(this);
  v2Controller::s_blocked = 0;
  return result;
}


// ===== 45a2ec Script_PlayActorAnim::Init(void) =====
int __fastcall Script_PlayActorAnim::Init(Script_PlayActorAnim *this)
{
  int v1; // r5
  int result; // r0
  CharAnimator *v3; // r4
  _BYTE v4[12]; // [sp+Ch] [bp-Ch] BYREF

  v1 = *((_DWORD *)this + 3);
  ObjectManager::GetObjectByName((ObjectManager *)v4, (const char *)dword_99F764, *(char **)(v1 + 24), -1, nullptr, 0);
  result = ObjectHandle::GetObject((ObjectHandle *)v4, 0);
  if ( result )
  {
    result = ObjectHandle::operator Character *(v4);
    if ( result )
    {
      v3 = (CharAnimator *)(result + 1180);
      CharAnimator::ANIM_AddAnimDictToSet((CharAnimator *)(result + 1180), *(_DWORD *)(v1 + 8));
      return CharAnimator::ANIM_AddAnimDictToSet(v3, *(_DWORD *)(v1 + 12));
    }
  }
  return result;
}


// ===== 45a384 Script_EnterCutSceneMode::Execute(bool,int) =====
PlayerManager *__fastcall Script_EnterCutSceneMode::Execute(Script_EnterCutSceneMode *this, bool a2, int a3)
{
  MenuManager *CurrentLevel; // r0
  int Instance; // r0
  DH2_PlayerInfoCharacterPrefix *LocalPlayer; // r0
  DH2_PlayerInfoCharacterPrefix *Online; // r0
  MenuManager *v7; // r0
  MenuManager *HUDRoot; // r7
  MenuManager *v9; // r0
  RenderFX *v10; // r0
  gameswf::root *Root; // r0
  gameswf::character *root_movie; // r0
  int v13; // r6
  PlayerManager *result; // r0
  int v15; // r3
  PlayerInfo *Player; // r7
  DH2_PlayerInfoCharacterPrefix *v17; // r0
  DH2_PlayerInfoCharacterPrefix *v18; // r6
  _DWORD v19[7]; // [sp+8h] [bp-2Ch] BYREF
  char v20; // [sp+24h] [bp-10h]
  int v21[3]; // [sp+28h] [bp-Ch] BYREF

  if ( !Application::GetCurrentLevel((Application *)&Singleton<Application>::s_inst) )
    goto LABEL_6;
  CurrentLevel = (MenuManager *)Application::GetCurrentLevel((Application *)&Singleton<Application>::s_inst);
  if ( !*((_BYTE *)CurrentLevel + 408) || MenuBase::s_igmOpened )
  {
    Instance = MenuManager::GetInstance(CurrentLevel);
    (*(void (__fastcall **)(_DWORD, int))(**(_DWORD **)(Instance + 244) + 56))(*(_DWORD *)(Instance + 244), 1);
    if ( PlayerManager::GetLocalPlayer((PlayerManager *)dword_99F76C, 0, 1)->character_660 )
    {
      LocalPlayer = PlayerManager::GetLocalPlayer((PlayerManager *)dword_99F76C, 0, 1);
      Character::ReloadSkills(LocalPlayer->character_660);
    }
    Application::ShowStatubBar((Application *)&Singleton<Application>::s_inst, 0);
LABEL_6:
    Online = (DH2_PlayerInfoCharacterPrefix *)GetOnline();
    if ( !Online->unknown_000[5] )
      goto LABEL_7;
    goto LABEL_18;
  }
  Online = (DH2_PlayerInfoCharacterPrefix *)GetOnline();
  if ( !Online->unknown_000[5] )
    goto LABEL_7;
LABEL_18:
  Online = PlayerManager::GetLocalPlayer((PlayerManager *)dword_99F76C, 0, 1);
  if ( Online->character_660 )
  {
    v17 = PlayerManager::GetLocalPlayer((PlayerManager *)dword_99F76C, 0, 1);
    Online = (DH2_PlayerInfoCharacterPrefix *)(*(int (__fastcall **)(Character *))(*(_DWORD *)v17->character_660 + 52))(v17->character_660);
    if ( Online )
    {
      v18 = PlayerManager::GetLocalPlayer((PlayerManager *)dword_99F76C, 0, 0);
      v19[1] = 16;
      v19[2] = 0;
      v19[3] = 0;
      v20 = 0;
      v19[0] = &off_963618;
      v19[4] = -1;
      v19[5] = -1;
      v19[6] = 0;
      if ( v21[0] != -1 )
      {
        v21[0] = -1;
        NetStructMember::SetChanged((NetStructMember *)v19);
      }
      v19[0] = &off_963730;
      Online = (DH2_PlayerInfoCharacterPrefix *)(*(int (__fastcall **)(unsigned __int8 *, int *))(*(_DWORD *)&v18->unknown_000[904]
                                                                                                + 28))(
                                                  &v18->unknown_000[904],
                                                  v21);
      v19[0] = &off_963648;
    }
  }
LABEL_7:
  v7 = (MenuManager *)MenuManager::GetInstance((MenuManager *)Online);
  HUDRoot = (MenuManager *)MenuManager::GetHUDRoot(v7);
  v9 = (MenuManager *)MenuManager::GetInstance(HUDRoot);
  v10 = (RenderFX *)MenuManager::GetHUDRoot(v9);
  Root = (gameswf::root *)RenderFX::GetRoot(v10);
  root_movie = (gameswf::character *)gameswf::root::get_root_movie(Root);
  v13 = 0;
  RenderFX::InvokeASCallback(HUDRoot, root_movie, "StartCutscene", nullptr, 0);
  byte_9A600C = 1;
  AnimController::s_scalingEnabled = 0;
  result = (PlayerManager *)GetOnline();
  if ( *((_BYTE *)result + 5) )
  {
    result = (PlayerManager *)dword_99F76C;
    if ( *(int *)(dword_99F76C + 1732) > 0 )
    {
      do
      {
        while ( 1 )
        {
          Player = (PlayerInfo *)PlayerManager::GetPlayer(result, v13, 0);
          if ( !(*(int (**)(void))(*(_DWORD *)Player + 80))() )
            break;
          PlayerInfo::SetInCutscene(Player, 1);
          ++v13;
          result = (PlayerManager *)dword_99F76C;
          if ( v13 >= *(_DWORD *)(dword_99F76C + 1732) )
            return result;
        }
        v15 = *((_DWORD *)Player + 408);
        if ( v15 )
          (*(void (__fastcall **)(_DWORD))(*(_DWORD *)v15 + 64))(*((_DWORD *)Player + 408));
        ++v13;
        result = (PlayerManager *)dword_99F76C;
      }
      while ( v13 < *(_DWORD *)(dword_99F76C + 1732) );
    }
  }
  return result;
}


// ===== 45a670 std::allocator<ScriptManager::ScriptCmds>::_M_allocate(uint,uint &) =====
void *__fastcall std::allocator<ScriptManager::ScriptCmds>::_M_allocate(int a1, unsigned int a2, size_t *a3)
{
  void *result; // r0
  size_t __n; // [sp+4h] [bp-4h] BYREF

  if ( a2 > 0x15555555 )
  {
    puts("out of memory\n");
    exit(1);
  }
  if ( !a2 )
    return nullptr;
  __n = 12 * a2;
  if ( 12 * a2 > 0x80 )
    result = CustomAlloc(12 * a2);
  else
    result = __ZNSt12__node_alloc11_M_allocateERj_veneer(&__n);
  *a3 = __n / 0xC;
  return result;
}


// ===== 45a6f8 std::allocator<ScriptManager::ScriptContext>::_M_allocate(uint,uint &) =====
void *__fastcall std::allocator<ScriptManager::ScriptContext>::_M_allocate(int a1, unsigned int a2, size_t *a3)
{
  void *result; // r0
  size_t __n; // [sp+4h] [bp-4h] BYREF

  if ( a2 > 0x15555555 )
  {
    puts("out of memory\n");
    exit(1);
  }
  if ( !a2 )
    return nullptr;
  __n = 12 * a2;
  if ( 12 * a2 > 0x80 )
    result = CustomAlloc(12 * a2);
  else
    result = __ZNSt12__node_alloc11_M_allocateERj_veneer(&__n);
  *a3 = __n / 0xC;
  return result;
}


// ===== 45a780 CharMenuTutorialMsg::CharMenuTutorialMsg(CharMenuTutorialMsg const&) =====
void __fastcall CharMenuTutorialMsg::CharMenuTutorialMsg(CharMenuTutorialMsg *this, const char **a2)
{
  std::string *v4; // r0

  *(_DWORD *)this = *a2;
  v4 = (std::string *)((char *)this + 4);
  *((_DWORD *)this + 5) = v4;
  *((_DWORD *)this + 6) = v4;
  std::string::_M_range_initialize(v4, a2[6], a2[5]);
  *((_DWORD *)this + 11) = (char *)this + 28;
  *((_DWORD *)this + 12) = (char *)this + 28;
  std::string::_M_range_initialize((std::string *)((char *)this + 28), a2[12], a2[11]);
}


// ===== 45a7c8 std::vector<ScriptManager::ScriptCmds,std::allocator<ScriptManager::ScriptCmds>>::~vector() =====
int __fastcall std::vector<ScriptManager::ScriptCmds>::~vector(int a1)
{
  void *v2; // r0
  size_t v3; // r1

  v2 = *(void **)a1;
  if ( !v2 )
    return a1;
  v3 = 4 * ((*(_DWORD *)(a1 + 8) - (int)v2) >> 2);
  if ( v3 <= 0x80 )
  {
    __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v2, v3);
    return a1;
  }
  CustomFree(v2);
  return a1;
}


// ===== 45a824 std::vector<ScriptManager::ScriptContext,std::allocator<ScriptManager::ScriptContext>>::~vector() =====
int __fastcall std::vector<ScriptManager::ScriptContext>::~vector(int a1)
{
  void *v2; // r0
  size_t v3; // r1

  v2 = *(void **)a1;
  if ( !v2 )
    return a1;
  v3 = 4 * ((*(_DWORD *)(a1 + 8) - (int)v2) >> 2);
  if ( v3 <= 0x80 )
  {
    __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v2, v3);
    return a1;
  }
  CustomFree(v2);
  return a1;
}


// ===== 45a880 ScriptManager::~ScriptManager() =====
void __fastcall ScriptManager::~ScriptManager(ScriptManager *this)
{
  void *v2; // r0
  size_t v3; // r1

  ScriptManager::UnLoadAllScripts(this);
  v2 = *((void **)this + 9);
  if ( !v2 )
    goto LABEL_4;
  v3 = (*((_DWORD *)this + 11) - (_DWORD)v2) & 0xFFFFFFFC;
  if ( v3 <= 0x80 )
  {
    __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v2, v3);
LABEL_4:
    std::vector<ScriptManager::ScriptCmds>::~vector((int)this + 24);
    std::vector<ScriptManager::ScriptContext>::~vector((int)this + 12);
    return;
  }
  CustomFree(v2);
  std::vector<ScriptManager::ScriptCmds>::~vector((int)this + 24);
  std::vector<ScriptManager::ScriptContext>::~vector((int)this + 12);
}


// ===== 45a8e8 std::vector<ScriptManager::ScriptContext,std::allocator<ScriptManager::ScriptContext>>::_M_fill_insert(ScriptManager::ScriptContext*,uint,ScriptManager::ScriptContext const&) =====
void __fastcall std::vector<ScriptManager::ScriptContext>::_M_fill_insert(void **a1, int a2, unsigned int a3, int *a4)
{
  _DWORD *v8; // r0
  char *v9; // r12
  _DWORD *v10; // r8
  int v11; // r3
  int v12; // r10
  int *v13; // r10
  int v14; // r0
  int v15; // r3
  _DWORD *v16; // r2
  int v17; // r1
  int *v18; // r7
  int v19; // r1
  int v20; // r2
  int *v21; // r3
  _BYTE *v22; // r3
  int v23; // r6
  int v24; // r0
  int v25; // r3
  int *v26; // r2
  int v27; // r1
  _BYTE *v28; // r0
  size_t v29; // r1
  size_t v30; // r3
  size_t v31; // r3
  size_t size; // [sp+8h] [bp-8h] BYREF

  if ( a3 )
  {
    if ( a3 <= -1431655765 * (((_BYTE *)a1[2] - (_BYTE *)a1[1]) >> 2) )
    {
      std::vector<ScriptManager::ScriptContext>::_M_fill_insert_aux(a1, a2, a3, a4);
      return;
    }
    size = std::vector<ScriptManager::ScriptContext>::_M_compute_next_size(a1, a3);
    v8 = std::allocator<ScriptManager::ScriptContext>::_M_allocate((int)(a1 + 2), size, &size);
    v9 = (char *)*a1;
    v10 = v8;
    v11 = (a2 - (int)*a1) >> 2;
    v12 = -1431655765 * v11;
    if ( -1431655765 * v11 > 0 )
    {
      v14 = -1431655765 * v11;
      v15 = 0;
      do
      {
        v10[v15] = *(_DWORD *)&v9[v15 * 4];
        v10[v15 + 1] = *(_DWORD *)&v9[v15 * 4 + 4];
        v16 = &v10[v15 + 2];
        v17 = *(_DWORD *)&v9[v15 * 4 + 8];
        --v14;
        v15 += 3;
        *v16 = v17;
      }
      while ( v14 );
      v13 = &v10[3 * v12];
    }
    else
    {
      v13 = v8;
    }
    if ( a3 == 1 )
    {
      v18 = v13 + 3;
      *v13 = *a4;
      v13[1] = a4[1];
      v13[2] = a4[2];
    }
    else
    {
      v18 = &v13[3 * a3];
      v19 = -1431655765 * (v18 - v13);
      if ( v19 > 0 )
      {
        v20 = 0;
        do
        {
          v21 = &v13[v20 + 1];
          v13[v20] = *a4;
          --v19;
          v20 += 3;
          *v21 = a4[1];
          v21[1] = a4[2];
        }
        while ( v19 );
      }
    }
    v22 = a1[1];
    v23 = -1431655765 * ((int)&v22[-a2] >> 2);
    if ( v23 > 0 )
    {
      v24 = -1431655765 * ((int)&v22[-a2] >> 2);
      v25 = 0;
      do
      {
        v18[v25] = *(_DWORD *)(a2 + v25 * 4);
        v18[v25 + 1] = *(_DWORD *)(a2 + v25 * 4 + 4);
        v26 = &v18[v25 + 2];
        v27 = *(_DWORD *)(a2 + v25 * 4 + 8);
        --v24;
        v25 += 3;
        *v26 = v27;
      }
      while ( v24 );
      v18 += 3 * v23;
      v22 = a1[1];
    }
    v28 = *a1;
    if ( *a1 != v22 )
      v22 += -12 * ((715827883 * ((unsigned int)(v22 - 12 - v28) >> 2)) & 0x3FFFFFFF) - 12;
    if ( v22 )
    {
      v29 = 4 * (((_BYTE *)a1[2] - v22) >> 2);
      if ( v29 > 0x80 )
      {
        CustomFree(v28);
        v31 = size;
        *a1 = v10;
        a1[1] = v18;
        a1[2] = &v10[3 * v31];
        return;
      }
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v28, v29);
    }
    v30 = size;
    *a1 = v10;
    a1[1] = v18;
    a1[2] = &v10[3 * v30];
  }
}


// ===== 45ab8c std::vector<ScriptManager::ScriptContext,std::allocator<ScriptManager::ScriptContext>>::resize(uint,ScriptManager::ScriptContext const&) =====
void __fastcall std::vector<ScriptManager::ScriptContext>::resize(int a1, unsigned int a2, int *a3)
{
  int v3; // r4
  unsigned int v5; // r2
  int v6; // r5

  v3 = *(_DWORD *)(a1 + 4);
  v5 = -1431655765 * ((v3 - *(_DWORD *)a1) >> 2);
  if ( a2 >= v5 )
  {
    std::vector<ScriptManager::ScriptContext>::_M_fill_insert((void **)a1, *(_DWORD *)(a1 + 4), a2 - v5, a3);
  }
  else
  {
    v6 = *(_DWORD *)a1 + 12 * a2;
    if ( v6 != v3 )
      *(_DWORD *)(a1 + 4) = v6;
  }
}


// ===== 45abe8 std::vector<char *,std::allocator<char *>>::_M_fill_insert(char **,uint,char * const&) =====
void __fastcall std::vector<char *>::_M_fill_insert(int a1, char *a2, unsigned int a3, char *a4)
{
  char *v8; // r0
  char *v9; // r8
  size_t v10; // r10
  unsigned int v11; // r2
  int v12; // r3
  char *v13; // r3
  char *v14; // r0
  char *v15; // r6
  void *v16; // r0
  size_t v17; // r1
  size_t v18; // r3
  size_t v19; // r3
  size_t size; // [sp+8h] [bp-Ch] BYREF

  if ( a3 )
  {
    if ( a3 <= (*(_DWORD *)(a1 + 8) - *(_DWORD *)(a1 + 4)) >> 2 )
    {
      std::vector<char *>::_M_fill_insert_aux((char *)a1, a2, a3, a4);
      return;
    }
    size = std::vector<char *>::_M_compute_next_size((_DWORD *)a1, a3);
    v8 = (char *)std::allocator<char *>::_M_allocate(a1 + 8, size, &size);
    v9 = v8;
    if ( a2 != *(char **)a1 )
    {
      v10 = (size_t)&a2[-*(_DWORD *)a1];
      v8 = (char *)memmove(v8, *(const void **)a1, v10) + v10;
    }
    v11 = a3;
    v12 = 0;
    do
    {
      --v11;
      *(_DWORD *)&v8[v12] = *(_DWORD *)a4;
      v12 += 4;
    }
    while ( v11 );
    v13 = *(char **)(a1 + 4);
    v14 = &v8[4 * a3];
    if ( v13 == a2 )
      v15 = v14;
    else
      v15 = (char *)memmove(v14, a2, v13 - a2) + v13 - a2;
    v16 = *(void **)a1;
    if ( *(_DWORD *)a1 )
    {
      v17 = (*(_DWORD *)(a1 + 8) - (_DWORD)v16) & 0xFFFFFFFC;
      if ( v17 > 0x80 )
      {
        CustomFree(v16);
        v19 = size;
        *(_DWORD *)a1 = v9;
        *(_DWORD *)(a1 + 4) = v15;
        *(_DWORD *)(a1 + 8) = &v9[4 * v19];
        return;
      }
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v16, v17);
    }
    v18 = size;
    *(_DWORD *)a1 = v9;
    *(_DWORD *)(a1 + 4) = v15;
    *(_DWORD *)(a1 + 8) = &v9[4 * v18];
  }
}


// ===== 45acfc std::vector<char *,std::allocator<char *>>::resize(uint,char * const&) =====
void __fastcall std::vector<char *>::resize(int a1, unsigned int a2, char *a3)
{
  int v3; // r4
  unsigned int v5; // r2
  int v6; // r5

  v3 = *(_DWORD *)(a1 + 4);
  v5 = (v3 - *(_DWORD *)a1) >> 2;
  if ( a2 >= v5 )
  {
    std::vector<char *>::_M_fill_insert(a1, *(char **)(a1 + 4), a2 - v5, a3);
  }
  else
  {
    v6 = *(_DWORD *)a1 + 4 * a2;
    if ( v6 != v3 )
      *(_DWORD *)(a1 + 4) = v6;
  }
}


// ===== 45ad40 ScriptManager::LoadScriptFileNames(char const*,bool) =====
void __fastcall ScriptManager::LoadScriptFileNames(ScriptManager *this, const char *a2, int a3)
{
  IStreamBase *v4; // r0
  int v5; // r5
  int v6; // r9
  int v7; // r6
  IStreamBase *v8; // r4
  unsigned __int64 v9; // [sp+0h] [bp-54h]
  void *v10[13]; // [sp+8h] [bp-4Ch] BYREF
  int v11; // [sp+3Ch] [bp-18h]
  char *v12; // [sp+40h] [bp-14h] BYREF
  int v13; // [sp+44h] [bp-10h] BYREF
  int v14; // [sp+48h] [bp-Ch] BYREF
  IStreamBase *v15; // [sp+4Ch] [bp-8h] BYREF

  if ( !a3 || *((_DWORD *)this + 2) >= -1431655765 * ((*((_DWORD *)this + 7) - *((_DWORD *)this + 6)) >> 2) )
  {
    v4 = (IStreamBase *)(*(int (__fastcall **)(_DWORD, const char *, _DWORD, _DWORD))(**(_DWORD **)(dword_99F73C + 52)
                                                                                    + 136))(
                          *(_DWORD *)(dword_99F73C + 52),
                          a2,
                          0,
                          0);
    if ( v4 )
    {
      v15 = v4;
      StreamBuffer::StreamBuffer((StreamBuffer *)v10, v4);
      (*(void (__fastcall **)(_DWORD, IStreamBase **))(**(_DWORD **)(dword_99F73C + 52) + 120))(
        *(_DWORD *)(dword_99F73C + 52),
        &v15);
      StreamBuffer::read((StreamBuffer *)v10, &v14, 4u);
      v11 = 1;
      v5 = (*((_DWORD *)this + 10) - *((_DWORD *)this + 9)) >> 2;
      v6 = v5 + v14;
      v13 = 0;
      std::vector<char *>::resize((int)this + 36, v5 + v14, (char *)&v13);
      if ( v6 > v5 )
      {
        v7 = 4 * v5;
        LODWORD(v9) = (char *)&v12 + 1;
        HIDWORD(v9) = (char *)&v12 + 2;
        do
        {
          StreamReader::readAs<unsigned int>((int)v10, (int)&v12);
          v11 = 1;
          ++v5;
          v8 = (IStreamBase *)operator new[]((size_t)(v12 + 1), 0);
          StreamReader::readStringEx((StreamReader *)v10, v8, v12, 0, v9);
          v12[(_DWORD)v8] = 0;
          *(_DWORD *)(*((_DWORD *)this + 9) + v7) = v8;
          v7 += 4;
        }
        while ( v5 != v6 );
      }
      StreamBuffer::~StreamBuffer(v10);
    }
  }
}


// ===== 45af64 std::vector<ScriptManager::ScriptCmds,std::allocator<ScriptManager::ScriptCmds>>::_M_fill_insert(ScriptManager::ScriptCmds*,uint,ScriptManager::ScriptCmds const&) =====
void __fastcall std::vector<ScriptManager::ScriptCmds>::_M_fill_insert(void **a1, int a2, unsigned int a3, int *a4)
{
  _DWORD *v8; // r0
  char *v9; // r12
  _DWORD *v10; // r8
  int v11; // r3
  int v12; // r10
  int *v13; // r10
  int v14; // r0
  int v15; // r3
  _DWORD *v16; // r2
  int v17; // r1
  int *v18; // r7
  int v19; // r1
  int v20; // r2
  int *v21; // r3
  _BYTE *v22; // r3
  int v23; // r6
  int v24; // r0
  int v25; // r3
  int *v26; // r2
  int v27; // r1
  _BYTE *v28; // r0
  size_t v29; // r1
  size_t v30; // r3
  size_t v31; // r3
  size_t size; // [sp+8h] [bp-8h] BYREF

  if ( a3 )
  {
    if ( a3 <= -1431655765 * (((_BYTE *)a1[2] - (_BYTE *)a1[1]) >> 2) )
    {
      std::vector<ScriptManager::ScriptCmds>::_M_fill_insert_aux(a1, a2, a3, a4);
      return;
    }
    size = std::vector<ScriptManager::ScriptCmds>::_M_compute_next_size(a1, a3);
    v8 = std::allocator<ScriptManager::ScriptCmds>::_M_allocate((int)(a1 + 2), size, &size);
    v9 = (char *)*a1;
    v10 = v8;
    v11 = (a2 - (int)*a1) >> 2;
    v12 = -1431655765 * v11;
    if ( -1431655765 * v11 > 0 )
    {
      v14 = -1431655765 * v11;
      v15 = 0;
      do
      {
        v10[v15] = *(_DWORD *)&v9[v15 * 4];
        v10[v15 + 1] = *(_DWORD *)&v9[v15 * 4 + 4];
        v16 = &v10[v15 + 2];
        v17 = *(_DWORD *)&v9[v15 * 4 + 8];
        --v14;
        v15 += 3;
        *v16 = v17;
      }
      while ( v14 );
      v13 = &v10[3 * v12];
    }
    else
    {
      v13 = v8;
    }
    if ( a3 == 1 )
    {
      v18 = v13 + 3;
      *v13 = *a4;
      v13[1] = a4[1];
      v13[2] = a4[2];
    }
    else
    {
      v18 = &v13[3 * a3];
      v19 = -1431655765 * (v18 - v13);
      if ( v19 > 0 )
      {
        v20 = 0;
        do
        {
          v21 = &v13[v20 + 1];
          v13[v20] = *a4;
          --v19;
          v20 += 3;
          *v21 = a4[1];
          v21[1] = a4[2];
        }
        while ( v19 );
      }
    }
    v22 = a1[1];
    v23 = -1431655765 * ((int)&v22[-a2] >> 2);
    if ( v23 > 0 )
    {
      v24 = -1431655765 * ((int)&v22[-a2] >> 2);
      v25 = 0;
      do
      {
        v18[v25] = *(_DWORD *)(a2 + v25 * 4);
        v18[v25 + 1] = *(_DWORD *)(a2 + v25 * 4 + 4);
        v26 = &v18[v25 + 2];
        v27 = *(_DWORD *)(a2 + v25 * 4 + 8);
        --v24;
        v25 += 3;
        *v26 = v27;
      }
      while ( v24 );
      v18 += 3 * v23;
      v22 = a1[1];
    }
    v28 = *a1;
    if ( *a1 != v22 )
      v22 += -12 * ((715827883 * ((unsigned int)(v22 - 12 - v28) >> 2)) & 0x3FFFFFFF) - 12;
    if ( v22 )
    {
      v29 = 4 * (((_BYTE *)a1[2] - v22) >> 2);
      if ( v29 > 0x80 )
      {
        CustomFree(v28);
        v31 = size;
        *a1 = v10;
        a1[1] = v18;
        a1[2] = &v10[3 * v31];
        return;
      }
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v28, v29);
    }
    v30 = size;
    *a1 = v10;
    a1[1] = v18;
    a1[2] = &v10[3 * v30];
  }
}


// ===== 45b208 std::vector<ScriptManager::ScriptCmds,std::allocator<ScriptManager::ScriptCmds>>::resize(uint,ScriptManager::ScriptCmds const&) =====
void __fastcall std::vector<ScriptManager::ScriptCmds>::resize(int a1, unsigned int a2, int *a3)
{
  int v3; // r4
  unsigned int v5; // r2
  int v6; // r5

  v3 = *(_DWORD *)(a1 + 4);
  v5 = -1431655765 * ((v3 - *(_DWORD *)a1) >> 2);
  if ( a2 >= v5 )
  {
    std::vector<ScriptManager::ScriptCmds>::_M_fill_insert((void **)a1, *(_DWORD *)(a1 + 4), a2 - v5, a3);
  }
  else
  {
    v6 = *(_DWORD *)a1 + 12 * a2;
    if ( v6 != v3 )
      *(_DWORD *)(a1 + 4) = v6;
  }
}


// ===== 45b264 ScriptManager::LoadScriptFile(char const*,bool) =====
void __fastcall ScriptManager::LoadScriptFile(ScriptManager *this, const char *a2, int a3)
{
  IStreamBase *v5; // r0
  int v6; // r2
  int v7; // r3
  int v8; // r5
  int v9; // r10
  int i; // r10
  int v11; // r9
  int v12; // r9
  int v13; // r3
  void (__fastcall ***v14)(_DWORD); // r0
  int v15; // r3
  int v16; // r2
  int v17; // r1
  int v18; // [sp+Ch] [bp-70h]
  int v19; // [sp+14h] [bp-68h]
  _BYTE v20[52]; // [sp+18h] [bp-64h] BYREF
  _DWORD v21[3]; // [sp+4Ch] [bp-30h] BYREF
  int v22; // [sp+58h] [bp-24h] BYREF
  char v23; // [sp+5Ch] [bp-20h]
  int v24; // [sp+60h] [bp-1Ch]
  int v25; // [sp+64h] [bp-18h]
  int v26; // [sp+68h] [bp-14h] BYREF
  int v27; // [sp+6Ch] [bp-10h] BYREF
  int v28; // [sp+70h] [bp-Ch] BYREF
  IStreamBase *v29; // [sp+74h] [bp-8h] BYREF

  if ( !a3 || *((_DWORD *)this + 2) >= -1431655765 * ((*((_DWORD *)this + 7) - *((_DWORD *)this + 6)) >> 2) )
  {
    v5 = (IStreamBase *)(*(int (__fastcall **)(_DWORD, const char *, _DWORD, _DWORD))(**(_DWORD **)(dword_99F73C + 52)
                                                                                    + 136))(
                          *(_DWORD *)(dword_99F73C + 52),
                          a2,
                          0,
                          0);
    v29 = v5;
    if ( v5 )
    {
      StreamBuffer::StreamBuffer((StreamBuffer *)v20, v5);
      (*(void (__fastcall **)(_DWORD, IStreamBase **))(**(_DWORD **)(dword_99F73C + 52) + 120))(
        *(_DWORD *)(dword_99F73C + 52),
        &v29);
      StreamReader::readAs<int>((int)v20, (int)&v28);
      v25 = 1;
      v6 = -1431655765 * ((*((_DWORD *)this + 7) - *((_DWORD *)this + 6)) >> 2);
      v18 = v6;
      if ( a3 )
        v6 = *((_DWORD *)this + 2);
      v7 = v28;
      if ( a3 )
        *((_DWORD *)this + 2) = v6 + v28;
      v22 = 0;
      v19 = v18 + v7;
      v23 = 0;
      v24 = 0;
      std::vector<ScriptManager::ScriptCmds>::resize((char *)this + 24, v18 + v7, &v22);
      memset(v21, 0, sizeof(v21));
      std::vector<ScriptManager::ScriptContext>::resize((char *)this + 12, v19, v21);
      if ( v19 > v18 )
      {
        v8 = 12 * v18;
        do
        {
          StreamReader::readAs<int>((int)v20, (int)&v27);
          v25 = 1;
          *(_DWORD *)(*((_DWORD *)this + 6) + v8) = v27;
          v9 = *((_DWORD *)this + 6);
          *(_DWORD *)(v9 + v8 + 8) = operator new[](4 * v27, 0);
          if ( v27 > 0 )
          {
            for ( i = 0; i < v27; ++i )
            {
              StreamReader::peekAs<int>(v20, &v26);
              v25 = 1;
              v11 = *(_DWORD *)(*((_DWORD *)this + 6) + v8 + 8);
              *(_DWORD *)(v11 + 4 * i) = s_scriptCmdImplMap[v26]();
              v12 = s_scriptCmdImplMap[v26 + 80]();
              (*(void (__fastcall **)(int, _BYTE *))(*(_DWORD *)v12 + 12))(v12, v20);
              v13 = *(_DWORD *)(*(_DWORD *)(*((_DWORD *)this + 6) + v8 + 8) + 4 * i);
              *(_DWORD *)(v13 + 8) = v26;
              *(_DWORD *)(v13 + 12) = v12;
              v14 = *(void (__fastcall ****)(_DWORD))(*(_DWORD *)(*((_DWORD *)this + 6) + v8 + 8) + 4 * i);
              (**v14)(v14);
              v15 = *((_DWORD *)this + 6) + v8;
              v16 = *(_DWORD *)(*(_DWORD *)(v15 + 8) + 4 * i);
              if ( *(_BYTE *)(v16 + 4) )
                *(_BYTE *)(v15 + 4) = 1;
            }
          }
          v17 = v18;
          v8 += 12;
          ++v18;
          ScriptManager::StopScript(this, v17, 0);
        }
        while ( v18 != v19 );
      }
      StreamBuffer::~StreamBuffer((StreamBuffer *)v20);
    }
  }
}


// ===== 45b614 std::allocator<TutorialMsg>::allocate(uint,void const*) [clone] =====
void *std::allocator<TutorialMsg>::allocate()
{
  size_t v1; // [sp+4h] [bp-8h] BYREF

  v1 = 128;
  return __ZNSt12__node_alloc11_M_allocateERj_veneer(&v1);
}


// ===== 45b634 std::allocator<DialogMsg>::allocate(uint,void const*) [clone] =====
void *std::allocator<DialogMsg>::allocate()
{
  size_t v1; // [sp+4h] [bp-8h] BYREF

  v1 = 76;
  return __ZNSt12__node_alloc11_M_allocateERj_veneer(&v1);
}


// ===== 45b654 std::allocator<CharMenuTutorialMsg>::allocate(uint,void const*) [clone] =====
void *std::allocator<CharMenuTutorialMsg>::allocate()
{
  size_t v1; // [sp+4h] [bp-8h] BYREF

  v1 = 104;
  return __ZNSt12__node_alloc11_M_allocateERj_veneer(&v1);
}


// ===== 45b674 std::deque<CharMenuTutorialMsg,std::allocator<CharMenuTutorialMsg>>::_M_push_back_aux_v(CharMenuTutorialMsg const&) =====
void __fastcall std::deque<CharMenuTutorialMsg>::_M_push_back_aux_v(int a1, const char **a2)
{
  char *v2; // r10
  int v3; // r2
  unsigned int v4; // r3
  int *v7; // r2
  int v8; // r3
  int v9; // r2
  char *v10; // r1
  int v11; // r7
  int v12; // r9
  char *v13; // r6
  signed int v14; // r2
  int v15; // r3
  int v16; // r3
  int v17; // r2
  unsigned int v18; // r8
  char *v19; // r0
  const void *v20; // r1
  size_t v21; // r2
  char *v22; // r10
  void *v23; // r0
  size_t v24; // r1

  v2 = *(char **)(a1 + 28);
  v3 = *(_DWORD *)(a1 + 32);
  v4 = *(_DWORD *)(a1 + 36);
  if ( v4 - ((int)&v2[-v3] >> 2) <= 1 )
  {
    v10 = *(char **)(a1 + 12);
    v11 = ((v2 - v10) >> 2) + 1;
    v12 = ((v2 - v10) >> 2) + 2;
    if ( v4 <= 2 * v12 )
    {
      if ( v4 )
        v17 = *(_DWORD *)(a1 + 36);
      else
        v17 = 1;
      v18 = v4 + 2 + v17;
      v19 = (char *)std::allocator<CharMenuTutorialMsg *>::allocate(a1 + 32, v18);
      v20 = *(const void **)(a1 + 12);
      v21 = *(_DWORD *)(a1 + 28) + 4 - (_DWORD)v20;
      v22 = v19;
      v13 = &v19[4 * ((v18 - v12) >> 1)];
      if ( v21 )
        memmove(&v19[4 * ((v18 - v12) >> 1)], v20, v21);
      v23 = *(void **)(a1 + 32);
      if ( v23 )
      {
        v24 = 4 * *(_DWORD *)(a1 + 36);
        if ( v24 > 0x80 )
          CustomFree(v23);
        else
          __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v23, v24);
      }
      *(_DWORD *)(a1 + 32) = v22;
      *(_DWORD *)(a1 + 36) = v18;
    }
    else
    {
      v13 = (char *)(v3 + 4 * ((v4 - v12) >> 1));
      if ( v10 > v13 )
      {
        if ( v2 + 4 != v10 )
          memmove(v13, v10, v2 + 4 - v10);
      }
      else
      {
        v14 = v2 + 4 - v10;
        if ( v14 > 0 )
          memmove(&v13[4 * v11 - v14], v10, v14);
      }
    }
    *(_DWORD *)(a1 + 12) = v13;
    v15 = *(_DWORD *)v13;
    v2 = &v13[4 * v11 - 4];
    *(_DWORD *)(a1 + 8) = *(_DWORD *)v13 + 104;
    *(_DWORD *)(a1 + 4) = v15;
    *(_DWORD *)(a1 + 28) = v2;
    v16 = *(_DWORD *)v2;
    *(_DWORD *)(a1 + 24) = *(_DWORD *)v2 + 104;
    *(_DWORD *)(a1 + 20) = v16;
  }
  *((_DWORD *)v2 + 1) = std::allocator<CharMenuTutorialMsg>::allocate();
  CharMenuTutorialMsg::CharMenuTutorialMsg(*(CharMenuTutorialMsg **)(a1 + 16), a2);
  v7 = (int *)(*(_DWORD *)(a1 + 28) + 4);
  *(_DWORD *)(a1 + 28) = v7;
  v8 = *v7;
  v9 = *v7 + 104;
  *(_DWORD *)(a1 + 16) = v8;
  *(_DWORD *)(a1 + 24) = v9;
  *(_DWORD *)(a1 + 20) = v8;
}


// ===== 45b7f4 std::deque<CharMenuTutorialMsg,std::allocator<CharMenuTutorialMsg>>::push_back(CharMenuTutorialMsg const&) =====
void __fastcall std::deque<CharMenuTutorialMsg>::push_back(int a1, const char **a2)
{
  if ( *(_DWORD *)(a1 + 16) == *(_DWORD *)(a1 + 24) - 52 )
  {
    std::deque<CharMenuTutorialMsg>::_M_push_back_aux_v(a1, a2);
  }
  else
  {
    CharMenuTutorialMsg::CharMenuTutorialMsg(*(CharMenuTutorialMsg **)(a1 + 16), a2);
    *(_DWORD *)(a1 + 16) += 52;
  }
}


// ===== 45b830 `global constructor keyed to'.._.._sources_Game_Scripts_ScriptManager.cpp =====
int __fastcall `global constructor keyed to'.._.._sources_Game_Scripts_ScriptManager.cpp(CMessage *a1)
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

  dword_9A5FC4 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9A5FC0 = 1056964608;
  messageCreationMap = CMessage::InitializeMessageRegistration(a1);
  byte_9A5FC9 = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgStartGame",
                  (const char *)GetNewInstance<CMsgStartGame>,
                  v1);
  byte_9A5FCA = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgControllerAction",
                  (const char *)GetNewInstance<CMsgControllerAction>,
                  v2);
  byte_9A5FCB = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgAttackResult",
                  (const char *)GetNewInstance<CMsgAttackResult>,
                  v3);
  byte_9A5FCC = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgRaisedEvent",
                  (const char *)GetNewInstance<CMsgRaisedEvent>,
                  v4);
  byte_9A5FCD = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgMenuReady",
                  (const char *)GetNewInstance<CMsgMenuReady>,
                  v5);
  byte_9A5FCE = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgScriptCmd",
                  (const char *)GetNewInstance<CMsgScriptCmd>,
                  v6);
  byte_9A5FCF = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgInitialSetup",
                  (const char *)GetNewInstance<CMsgInitialSetup>,
                  v7);
  byte_9A5FD0 = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgQuestsSync",
                  (const char *)GetNewInstance<CMsgQuestsSync>,
                  v8);
  byte_9A5FD1 = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgDropLoot",
                  (const char *)GetNewInstance<CMsgDropLoot>,
                  v9);
  byte_9A5FD2 = CMessage::RegisterMessageType((CMessage *)"CMsgIsHost", (const char *)GetNewInstance<CMsgIsHost>, v10);
  byte_9A5FD3 = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgSpawnObject",
                  (const char *)GetNewInstance<CMsgSpawnObject>,
                  v11);
  byte_9A5FD4 = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgGlobalDeath",
                  (const char *)GetNewInstance<CMsgGlobalDeath>,
                  v12);
  v14 = (CMessage *)CMessage::RegisterMessageType(
                      (CMessage *)"CMsgAskResendAttributes",
                      (const char *)GetNewInstance<CMsgAskResendAttributes>,
                      v13);
  byte_9A5FD5 = (char)v14;
  byte_9A5FD6 = CMessage::TerminateMessageRegistration(v14);
  ScriptManager::ScriptManager((ScriptManager *)&ScriptManager::s_inst);
  result = _aeabi_atexit(&ScriptManager::s_inst, ScriptManager::~ScriptManager, &_dso_handle);
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
    dword_99FB60 = 0;
    dword_99FB64 = 0;
    dword_99FB68 = 0;
    dword_99FB6C = 0;
    dword_99FB70 = 0;
    dword_99FB74 = 0;
    dword_99FB78 = 0;
    dword_99FB7C = 0;
    dword_99FB80 = 0;
    dword_99FB84 = (int)&byte_8;
    Singleton<MenuMessageManager<TutorialMsg,1>>::s_inst = (int)off_95B170;
    v27 = std::allocator<TutorialMsg *>::allocate(&dword_99FB80, &byte_8, 0);
    dword_99FB80 = v27;
    v28 = (unsigned int)(dword_99FB84 - 1) >> 1;
    *(_DWORD *)(v27 + 4 * v28) = std::allocator<TutorialMsg>::allocate(&dword_99FB84);
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
    dword_99FB8C = 0;
    dword_99FB90 = 0;
    dword_99FB94 = 0;
    dword_99FB98 = 0;
    dword_99FB9C = 0;
    dword_99FBA0 = 0;
    dword_99FBA4 = 0;
    dword_99FBA8 = 0;
    dword_99FBAC = 0;
    dword_99FBB0 = (int)&byte_8;
    Singleton<MenuMessageManager<DialogMsg,1>>::s_inst = (int)off_95B180;
    v31 = std::allocator<DialogMsg *>::allocate(&dword_99FBAC, &byte_8, 0);
    dword_99FBAC = v31;
    v32 = (unsigned int)(dword_99FBB0 - 1) >> 1;
    *(_DWORD *)(v31 + 4 * v32) = std::allocator<DialogMsg>::allocate(&dword_99FBB0);
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
    dword_99FBB8 = 0;
    dword_99FBBC = 0;
    dword_99FBC0 = 0;
    dword_99FBC4 = 0;
    dword_99FBC8 = 0;
    dword_99FBCC = 0;
    dword_99FBD0 = 0;
    dword_99FBD4 = 0;
    dword_99FBD8 = 0;
    dword_99FBDC = (int)&byte_8;
    Singleton<MenuMessageManager<CharMenuTutorialMsg,1>>::s_inst = (int)off_95B190;
    v35 = std::allocator<CharMenuTutorialMsg *>::allocate(&dword_99FBD8, &byte_8, 0);
    dword_99FBD8 = v35;
    v36 = (unsigned int)(dword_99FBDC - 1) >> 1;
    *(_DWORD *)(v35 + 4 * v36) = std::allocator<CharMenuTutorialMsg>::allocate(&dword_99FBDC);
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
    return _aeabi_atexit(&Singleton<VisualFXManager>::s_inst, VisualFXManager::~VisualFXManager, &_dso_handle);
  }
  return result;
}


// ===== 45c0e8 std::vector<DialogMsg,std::allocator<DialogMsg>>::~vector() =====
DialogMsg **__fastcall std::vector<DialogMsg>::~vector(DialogMsg **a1)
{
  DialogMsg *v1; // r5
  DialogMsg *v2; // r6
  DialogMsg *v4; // r0
  size_t v5; // r1

  v1 = a1[1];
  v2 = *a1;
  while ( v2 != v1 )
  {
    v1 = (DialogMsg *)((char *)v1 - 76);
    DialogMsg::~DialogMsg(v1);
  }
  v4 = *a1;
  if ( !*a1 )
    return a1;
  v5 = 4 * ((a1[2] - v4) >> 2);
  if ( v5 <= 0x80 )
  {
    __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v4, v5);
    return a1;
  }
  CustomFree(v4);
  return a1;
}


// ===== 45c16c ScriptManager::ExecuteScript(int) =====
int __fastcall ScriptManager::ExecuteScript(ScriptManager *this, int a2)
{
  int v3; // r3
  int v4; // r4
  int v5; // r1
  int v6; // r6
  _DWORD *v7; // r4
  int v8; // r3
  _DWORD *v9; // r6
  int v10; // r10
  int Constant; // r0
  int v12; // r3
  int v14; // r0
  int v15; // r0
  std::string v16; // [sp+14h] [bp-20h] BYREF

  v3 = *(_DWORD *)(*((_DWORD *)this + 9) + 4 * a2);
  v4 = *((_DWORD *)this + 3);
  v5 = 12 * a2;
  v6 = *((_DWORD *)this + 6);
  s_dbgRunningScriptName = v3;
  v7 = (_DWORD *)(v4 + v5);
  v8 = v7[2];
  v9 = (_DWORD *)(v6 + v5);
  while ( 2 )
  {
    if ( v8 == 2 )
      return 0;
LABEL_3:
    if ( v8 )
    {
      if ( v8 != 1 )
        continue;
      goto LABEL_5;
    }
    break;
  }
  while ( 1 )
  {
    (*(void (__fastcall **)(_DWORD, bool, _DWORD))(**(_DWORD **)(v9[2] + 4 * v7[1]) + 8))(
      *(_DWORD *)(v9[2] + 4 * v7[1]),
      *(_DWORD *)this != -1,
      *v7);
    v7[2] = 1;
LABEL_5:
    v10 = *(_DWORD *)(*(_DWORD *)(v9[2] + 4 * v7[1]) + 8);
    Constant = PyDataConstants::getConstant((PyDataConstants *)dword_99F758, "ScriptCmdID", "ExecScript");
    if ( *(_DWORD *)this == -1 || Constant == v10 )
    {
      v14 = *(_DWORD *)(v9[2] + 4 * v7[1]);
      if ( (*(int (__fastcall **)(int))(*(_DWORD *)v14 + 12))(v14) )
        break;
    }
    v12 = v7[1];
    v7[2] = 0;
    v7[1] = ++v12;
    if ( v12 >= *v9 )
    {
      v7[2] = 2;
      --*((_DWORD *)this + 1);
      DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
      std::string::string((int)&v16, "isTracingScriptCmd");
      DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v16);
      std::string::~string(&v16);
      v8 = v7[2];
      if ( v8 == 2 )
        return 0;
      goto LABEL_3;
    }
  }
  v15 = *(_DWORD *)(v9[2] + 4 * v7[1]);
  (*(void (__fastcall **)(int))(*(_DWORD *)v15 + 4))(v15);
  return 1;
}


// ===== 45c37c ScriptManager::ExecuteAllScripts(void) =====
int __fastcall ScriptManager::ExecuteAllScripts(ScriptManager *this)
{
  int v2; // r7
  int v3; // r5
  int i; // r4
  char v5; // r0

  PushProfilingContext("ScriptManager::ExecuteAllScripts");
  v2 = -1431655765 * ((*((_DWORD *)this + 7) - *((_DWORD *)this + 6)) >> 2);
  if ( v2 > 0 )
  {
    LOBYTE(v3) = 0;
    for ( i = 0; i != v2; ++i )
    {
      v5 = ScriptManager::ExecuteScript(this, i);
      v3 = (unsigned __int8)(v5 | v3);
    }
  }
  else
  {
    v3 = 0;
  }
  if ( !*((_DWORD *)this + 1) )
  {
    ScriptManager::StopSkipping(this);
    if ( v3 )
      goto LABEL_7;
LABEL_9:
    *((_DWORD *)this + 1) = v3;
    ScriptManager::StopSkipping(this);
    goto LABEL_7;
  }
  if ( !v3 )
    goto LABEL_9;
LABEL_7:
  PopProfilingContext("ScriptManager::ExecuteAllScripts");
  return v3;
}


// ===== 45c438 Script_Wait::Execute(bool,int) =====
void __fastcall Script_Wait::Execute(Script_Wait *this, bool a2, int a3)
{
  int v4; // r8
  std::string v5; // [sp+4h] [bp-1Ch] BYREF

  v4 = *((_DWORD *)this + 3);
  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string(&v5, "isTracingScriptCmd");
  DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v5);
  std::string::~string(&v5);
  *((_DWORD *)this + 4) = 0;
  *((_DWORD *)this + 5) = *(_DWORD *)(v4 + 8);
}


// ===== 45c4d8 Script_WaitDialog::Execute(bool,int) =====
void __fastcall Script_WaitDialog::Execute(Script_WaitDialog *this, bool a2, int a3)
{
  std::string v3; // [sp+4h] [bp-1Ch] BYREF

  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string((int)&v3, "isTracingScriptCmd");
  DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v3);
  std::string::~string(&v3);
}


// ===== 45c560 Script_EmptyImpl::Execute(bool,int) =====
void __fastcall Script_EmptyImpl::Execute(Script_EmptyImpl *this, bool a2, int a3)
{
  std::string v3; // [sp+4h] [bp-1Ch] BYREF

  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string(&v3, "isTracingScriptCmd");
  DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v3);
  std::string::~string(&v3);
}


// ===== 45c5e8 Script_WaitCamera::Execute(bool,int) =====
void __fastcall Script_WaitCamera::Execute(Script_WaitCamera *this, bool a2, int a3)
{
  std::string v3; // [sp+4h] [bp-1Ch] BYREF

  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string(&v3, "isTracingScriptCmd");
  DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v3);
  std::string::~string(&v3);
}


// ===== 45c670 Script_SetCameraClip::Execute(bool,int) =====
int __fastcall Script_SetCameraClip::Execute(Script_SetCameraClip *this, bool a2, int a3)
{
  int v3; // r7
  int result; // r0
  int v5; // r8
  int v6; // r6
  int v7; // r0
  int v8; // r10
  int v9; // r3
  void (__fastcall *v10)(int, float); // r9
  int v11; // r6
  int v12; // r3
  int (__fastcall *v13)(int, float); // r7
  std::string v14; // [sp+Ch] [bp-1Ch] BYREF

  v3 = *((_DWORD *)this + 3);
  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string((int)&v14, "isTracingScriptCmd");
  DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v14);
  std::string::~string(&v14);
  result = Application::GetCurrentLevel((Application *)&Singleton<Application>::s_inst);
  v5 = result;
  if ( !result )
    return result;
  v6 = *(_DWORD *)(result + 296);
  if ( !v6 )
    return result;
  v7 = *(_DWORD *)(v3 + 12);
  if ( v7 <= 0 )
  {
    if ( v7 == -2 )
    {
      v8 = *(_DWORD *)(v6 + 8);
      v9 = *(_DWORD *)(v5 + 56);
      v10 = *(void (__fastcall **)(int, float))(*(_DWORD *)v8 + 304);
      if ( !v9 )
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
            "m_levelConfig != 0",
            "..\\..\\project_vs2005\\Game/..\\..\\sources/Game/Level/Level.h",
            476);
          v9 = *(_DWORD *)(v5 + 56);
        }
      }
      ((void (__fastcall *)(_DWORD, _DWORD))v10)(v8, (float)*(int *)(v9 + 660));
      result = *(_DWORD *)(v3 + 8);
      if ( result <= 0 )
        goto LABEL_6;
      return (*(int (__fastcall **)(_DWORD, float))(**(_DWORD **)(v6 + 8) + 308))(*(_DWORD *)(v6 + 8), (float)result);
    }
  }
  else
  {
    (*(void (__fastcall **)(_DWORD, float))(**(_DWORD **)(v6 + 8) + 304))(*(_DWORD *)(v6 + 8), (float)v7);
  }
  result = *(_DWORD *)(v3 + 8);
  if ( result > 0 )
    return (*(int (__fastcall **)(_DWORD, float))(**(_DWORD **)(v6 + 8) + 308))(*(_DWORD *)(v6 + 8), (float)result);
LABEL_6:
  if ( result == -2 )
  {
    v11 = *(_DWORD *)(v6 + 8);
    v12 = *(_DWORD *)(v5 + 56);
    v13 = *(int (__fastcall **)(int, float))(*(_DWORD *)v11 + 308);
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
          "m_levelConfig != 0",
          "..\\..\\project_vs2005\\Game/..\\..\\sources/Game/Level/Level.h",
          476);
        v12 = *(_DWORD *)(v5 + 56);
      }
    }
    return ((int (__fastcall *)(_DWORD, _DWORD))v13)(v11, (float)*(int *)(v12 + 664));
  }
  return result;
}


// ===== 45c8c0 Script_BlockSaveGame::Execute(bool,int) =====
int __fastcall Script_BlockSaveGame::Execute(Script_BlockSaveGame *this, bool a2, int a3)
{
  Character *character_660; // r0
  int result; // r0
  std::string v5; // [sp+4h] [bp-1Ch] BYREF

  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string((int)&v5, "isTracingScriptCmd");
  DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v5);
  std::string::~string(&v5);
  character_660 = PlayerManager::GetLocalPlayer((PlayerManager *)dword_99F76C, 0, 1)->character_660;
  if ( character_660 )
    Character::SG_Block(character_660, 1);
  result = Application::GetCurrentLevel((Application *)&Singleton<Application>::s_inst);
  if ( result )
    return Level::SG_BlockLevel(result, 1);
  return result;
}


// ===== 45c994 Script_SaveGame::Execute(bool,int) =====
DH2_PlayerInfoCharacterPrefix *__fastcall Script_SaveGame::Execute(Script_SaveGame *this, bool a2, int a3)
{
  int CurrentLevel; // r0
  Level *v4; // r5
  DH2_PlayerInfoCharacterPrefix *result; // r0
  Character *character_660; // r5
  std::string v7; // [sp+4h] [bp-1Ch] BYREF

  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string((int)&v7, "isTracingScriptCmd");
  DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v7);
  std::string::~string(&v7);
  CurrentLevel = Application::GetCurrentLevel((Application *)&Singleton<Application>::s_inst);
  v4 = (Level *)CurrentLevel;
  if ( CurrentLevel )
  {
    Level::SG_BlockLevel(CurrentLevel, 0);
    Level::QuickSave(v4, 0);
  }
  result = PlayerManager::GetLocalPlayer((PlayerManager *)dword_99F76C, 0, 1);
  character_660 = result->character_660;
  if ( character_660 )
  {
    Character::SG_Block(result->character_660, 0);
    return (DH2_PlayerInfoCharacterPrefix *)Character::SG_Save(character_660);
  }
  return result;
}


// ===== 45ca80 Script_EndGame::Execute(bool,int) =====
int __fastcall Script_EndGame::Execute(Script_EndGame *this, bool a2, int a3)
{
  Character *character_660; // r5
  int GameDifficulty; // r10
  int v5; // r8
  std::string v7; // [sp+4h] [bp-20h] BYREF

  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string((int)&v7, "isTracingScriptCmd");
  DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v7);
  std::string::~string(&v7);
  character_660 = PlayerManager::GetLocalPlayer((PlayerManager *)dword_99F76C, 0, 1)->character_660;
  GameDifficulty = Character::SG_GetGameDifficulty(character_660);
  v5 = Character::SG_GetGameDifficulty(character_660) + 1;
  Character::SG_SetLevelId(character_660, 45, GameDifficulty);
  if ( v5 >= 2 )
    v5 = 2;
  Character::SG_SetLevelEntryPoint(character_660, 5, GameDifficulty);
  Character::SG_SetGameDifficultyUnlocked(character_660, v5);
  Character::SG_Save(character_660);
  Character::SG_SetGameDifficulty(character_660, v5);
  return StateMachine::SwitchState(dword_99F744, (int)&GSEndGame::s_inst, 0);
}


// ===== 45cba0 Script_ChangeLevel::Execute(bool,int) =====
int __fastcall Script_ChangeLevel::Execute(Script_ChangeLevel *this, bool a2, int a3)
{
  int v3; // r10
  Level *CurrentLevel; // r6
  DH2_PlayerInfoCharacterPrefix *LocalPlayer; // r0
  const char *v6; // r9
  int v7; // r6
  int v8; // r8
  int v9; // r11
  int v10; // r11
  int v11; // r9
  DH2_PlayerInfoCharacterPrefix *v12; // r0
  DH2_PlayerInfoCharacterPrefix *v13; // r0
  char *v14; // r7
  const char *v15; // r8
  DH2_PlayerInfoCharacterPrefix *v16; // r0
  int Slot; // r3
  int result; // r0
  Character *character_660; // r8
  int GameDifficulty; // [sp+1Ch] [bp-28h]
  std::string v21; // [sp+24h] [bp-20h] BYREF

  v3 = *((_DWORD *)this + 3);
  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string((int)&v21, "isTracingScriptCmd");
  DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v21);
  std::string::~string(&v21);
  CurrentLevel = (Level *)Application::GetCurrentLevel((Application *)&Singleton<Application>::s_inst);
  LocalPlayer = PlayerManager::GetLocalPlayer((PlayerManager *)dword_99F76C, 0, 1);
  GameDifficulty = Character::SG_GetGameDifficulty(LocalPlayer->character_660);
  if ( CurrentLevel )
  {
    Level::SG_SaveAllPlayer(CurrentLevel, 0);
    GameDifficulty = *((_DWORD *)CurrentLevel + 70);
  }
  v6 = *(const char **)(v3 + 16);
  v7 = Arrays::LevelList::size;
  if ( Arrays::LevelList::size )
  {
    v8 = 0;
    v9 = Arrays::LevelList::m_memberNames;
    while ( LC_API_STRCMP_0(v6, *(const char **)(v9 + 4 * v8)) )
    {
      if ( ++v8 == v7 )
        goto LABEL_8;
    }
    v10 = 72 * v8;
  }
  else
  {
LABEL_8:
    v10 = -72;
    v8 = -1;
  }
  v11 = Arrays::LevelList::members;
  v12 = PlayerManager::GetLocalPlayer((PlayerManager *)dword_99F76C, 0, 1);
  Character::SG_SetLevelId(v12->character_660, v8, -1);
  v13 = PlayerManager::GetLocalPlayer((PlayerManager *)dword_99F76C, 0, 1);
  Character::SG_Save(v13->character_660);
  if ( !*(_BYTE *)(GetOnline() + 5)
    || (character_660 = PlayerManager::GetLocalPlayer((PlayerManager *)dword_99F76C, 0, 1)->character_660,
        result = PlayerManager::GetHostingPlayer((PlayerManager *)dword_99F76C),
        *(Character **)(result + 1632) == character_660) )
  {
    v14 = *(char **)(v11 + v10 + 32);
    v15 = *(const char **)(v3 + 8);
    v16 = PlayerManager::GetLocalPlayer((PlayerManager *)dword_99F76C, 0, 1);
    Slot = Character::SG_GetSlot(v16->character_660);
    return Application::LoadLevel(
             (Application *)&Singleton<Application>::s_inst,
             v14,
             v15,
             Slot,
             1,
             1,
             GameDifficulty,
             0,
             0,
             0);
  }
  return result;
}


// ===== 45cdd0 Script_RestartLevel::Execute(bool,int) =====
Level *__fastcall Script_RestartLevel::Execute(Script_RestartLevel *this, bool a2, int a3)
{
  Level *result; // r0
  std::string v4; // [sp+4h] [bp-20h] BYREF

  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string((int)&v4, "isTracingScriptCmd");
  DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v4);
  std::string::~string(&v4);
  result = (Level *)Application::GetCurrentLevel((Application *)&Singleton<Application>::s_inst);
  if ( result )
    return (Level *)Level::Restart(result);
  return result;
}


// ===== 45ce78 Script_SetWorldMapLocationState::Execute(bool,int) =====
PlayerSavegame *__fastcall Script_SetWorldMapLocationState::Execute(
        Script_SetWorldMapLocationState *this,
        bool a2,
        int a3)
{
  int v3; // r8
  PlayerSavegame *result; // r0
  std::string v5; // [sp+4h] [bp-1Ch] BYREF

  v3 = *((_DWORD *)this + 3);
  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string(&v5, "isTracingScriptCmd");
  DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v5);
  std::string::~string(&v5);
  result = PlayerManager::GetLocalPlayer((PlayerManager *)dword_99F76C, 0, 1)->character_660;
  if ( result )
    return Character::SG_SetMapLocState(result, *(_DWORD *)(v3 + 8), *(_DWORD *)(v3 + 12), -1);
  return result;
}


// ===== 45cf40 Script_SetLevelState::Execute(bool,int) =====
PlayerSavegame *__fastcall Script_SetLevelState::Execute(Script_SetLevelState *this, bool a2, int a3)
{
  int v3; // r8
  PlayerSavegame *result; // r0
  std::string v5; // [sp+4h] [bp-1Ch] BYREF

  v3 = *((_DWORD *)this + 3);
  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string(&v5, "isTracingScriptCmd");
  DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v5);
  std::string::~string(&v5);
  result = PlayerManager::GetLocalPlayer((PlayerManager *)dword_99F76C, 0, 1)->character_660;
  if ( result )
    return Character::SG_SetLevelState(result, *(_DWORD *)(v3 + 8), *(_DWORD *)(v3 + 12), -1);
  return result;
}


// ===== 45d008 Script_SpawnContainer::Execute(bool,int) =====
char *__fastcall Script_SpawnContainer::Execute(Script_SpawnContainer *this, bool a2, int a3)
{
  int v4; // r10
  char *result; // r0
  char *v6[3]; // [sp+Ch] [bp-10h] BYREF
  std::string v7; // [sp+1Ch] [bp+0h] BYREF

  v4 = *((_DWORD *)this + 3);
  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string(&v7, "isTracingScriptCmd");
  DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v7);
  std::string::~string(&v7);
  ObjectManager::GetObjectByName((ObjectManager *)v6, (const char *)dword_99F764, *(char **)(v4 + 12), a3, nullptr, 0);
  result = ZN12ObjectHandlecvPT_I9ContainerEEv(v6);
  if ( result )
    return (char *)Container::Spawn((int)result);
  return result;
}


// ===== 45d0e0 Script_DeactivateTriggerPlate::Execute(bool,int) =====
char *__fastcall Script_DeactivateTriggerPlate::Execute(Script_DeactivateTriggerPlate *this, bool a2, int a3)
{
  int v5; // r10
  char *result; // r0
  char *v7[3]; // [sp+Ch] [bp-2Ch] BYREF
  std::string v8; // [sp+1Ch] [bp-1Ch] BYREF

  v5 = *((_DWORD *)this + 3);
  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string(&v8, "isTracingScriptCmd");
  DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v8);
  std::string::~string(&v8);
  ObjectManager::GetObjectByName((ObjectManager *)v7, (const char *)dword_99F764, *(char **)(v5 + 12), a3, nullptr, 0);
  result = ObjectHandle::GetObject(v7, 0);
  if ( result && *((_DWORD *)result + 61) == 18 )
  {
    *((_DWORD *)this + 4) = result;
    result[1913] = 0;
  }
  else
  {
    *((_DWORD *)this + 4) = 0;
  }
  return result;
}


// ===== 45d1d8 Script_ActivateTriggerPlate::Execute(bool,int) =====
char *__fastcall Script_ActivateTriggerPlate::Execute(Script_ActivateTriggerPlate *this, bool a2, int a3)
{
  int v5; // r10
  char *result; // r0
  char *v7[3]; // [sp+Ch] [bp-2Ch] BYREF
  std::string v8; // [sp+1Ch] [bp-1Ch] BYREF

  v5 = *((_DWORD *)this + 3);
  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string(&v8, "isTracingScriptCmd");
  DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v8);
  std::string::~string(&v8);
  ObjectManager::GetObjectByName((ObjectManager *)v7, (const char *)dword_99F764, *(char **)(v5 + 12), a3, nullptr, 0);
  result = ObjectHandle::GetObject(v7, 0);
  if ( result && *((_DWORD *)result + 61) == 18 )
  {
    *((_DWORD *)this + 4) = result;
    result[1913] = 1;
  }
  else
  {
    *((_DWORD *)this + 4) = 0;
  }
  return result;
}


// ===== 45d2d4 Script_DeactivateProjectileTrap::Execute(bool,int) =====
char *__fastcall Script_DeactivateProjectileTrap::Execute(Script_DeactivateProjectileTrap *this, bool a2, int a3)
{
  int v5; // r10
  char *result; // r0
  char *v7[3]; // [sp+Ch] [bp-2Ch] BYREF
  std::string v8; // [sp+1Ch] [bp-1Ch] BYREF

  v5 = *((_DWORD *)this + 3);
  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string(&v8, "isTracingScriptCmd");
  DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v8);
  std::string::~string(&v8);
  ObjectManager::GetObjectByName((ObjectManager *)v7, (const char *)dword_99F764, *(char **)(v5 + 12), a3, nullptr, 0);
  result = ObjectHandle::GetObject(v7, 0);
  if ( result && *((_DWORD *)result + 61) == 17 )
  {
    *((_DWORD *)this + 4) = result;
    result[1036] = 0;
  }
  else
  {
    *((_DWORD *)this + 4) = 0;
  }
  return result;
}


// ===== 45d3cc Script_ActivateProjectileTrap::Execute(bool,int) =====
char *__fastcall Script_ActivateProjectileTrap::Execute(Script_ActivateProjectileTrap *this, bool a2, int a3)
{
  int v5; // r10
  char *result; // r0
  char *v7[3]; // [sp+Ch] [bp-2Ch] BYREF
  std::string v8; // [sp+1Ch] [bp-1Ch] BYREF

  v5 = *((_DWORD *)this + 3);
  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string(&v8, "isTracingScriptCmd");
  DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v8);
  std::string::~string(&v8);
  ObjectManager::GetObjectByName((ObjectManager *)v7, (const char *)dword_99F764, *(char **)(v5 + 12), a3, nullptr, 0);
  result = ObjectHandle::GetObject(v7, 0);
  if ( result && *((_DWORD *)result + 61) == 17 )
  {
    *((_DWORD *)this + 4) = result;
    result[1036] = 1;
  }
  else
  {
    *((_DWORD *)this + 4) = 0;
  }
  return result;
}


// ===== 45d4c8 Script_MarkCharacterAsScripted::Execute(bool,int) =====
int __fastcall Script_MarkCharacterAsScripted::Execute(Script_MarkCharacterAsScripted *this, bool a2, int a3)
{
  int v4; // r7
  void (*v5)(ObjectBase *); // r2
  std::string v7; // [sp+4h] [bp-20h] BYREF

  v4 = *((_DWORD *)this + 3);
  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string((int)&v7, "isTracingScriptCmd");
  DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v7);
  std::string::~string(&v7);
  if ( *(_BYTE *)(v4 + 8) )
    v5 = (void (*)(ObjectBase *))Script_MarkCharacterAsScripted::Set;
  else
    v5 = (void (*)(ObjectBase *))Script_MarkCharacterAsScripted::Unset;
  return Script_CharacterState_Callback(*(const char **)(v4 + 16), a3, v5);
}


// ===== 45d590 Script_PutCharacterInIdle::Execute(bool,int) =====
int __fastcall Script_PutCharacterInIdle::Execute(Script_PutCharacterInIdle *this, bool a2, int a3)
{
  bool v4; // r10
  int v5; // r9
  std::string v7; // [sp+4h] [bp-1Ch] BYREF

  v4 = !a2;
  v5 = *((_DWORD *)this + 3);
  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string((int)&v7, "isTracingScriptCmd");
  DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v7);
  std::string::~string(&v7);
  Script_PutCharacterInIdle::waitForAnim = v4;
  return Script_CharacterState_Callback(
           *(const char **)(v5 + 12),
           a3,
           (void (*)(ObjectBase *))Script_PutCharacterInIdle::SetState);
}

