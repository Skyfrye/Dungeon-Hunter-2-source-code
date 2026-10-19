// ===== 3d84e0 CharAI::AI_CancelSkill(uint) =====
int __fastcall CharAI::AI_CancelSkill(CharAI *this, unsigned int a2)
{
  int v3; // r2
  int result; // r0

  v3 = *((_DWORD *)this + 45);
  result = *((_DWORD *)this + 46) - v3;
  if ( a2 >= result >> 2 )
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
                 "skillId < m_skillScripts.size()",
                 "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Objects\\Characters\\AI\\CharAI_Skills.cpp",
                 290);
      v3 = *((_DWORD *)this + 45);
    }
  }
  if ( *(_DWORD *)(v3 + 4 * a2) )
  {
    result = Character::GetCharSkill(*((Character **)this + 1), a2);
    if ( *(_DWORD *)(result + 72) == 1 )
    {
      result = CharAISkillScript::OnSkillCheck_Active(*(CharAISkillScript **)(*((_DWORD *)this + 45) + 4 * a2));
      if ( result )
        return CharAISkillScript::OnPreSkill(*(CharAISkillScript **)(*((_DWORD *)this + 45) + 4 * a2));
    }
  }
  return result;
}


// ===== 3d85d4 CharAI::AI_IsSkillActive(uint) =====
CharAISkillScript *__fastcall CharAI::AI_IsSkillActive(CharAI *this, unsigned int a2)
{
  CharAISkillScript *result; // r0

  if ( a2 >= (*((_DWORD *)this + 46) - *((_DWORD *)this + 45)) >> 2 )
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
        199);
    }
  }
  if ( CharStateMachine::SM_IsUsingSkill((CharStateMachine *)(*((_DWORD *)this + 1) + 1276))
    && a2 == *((_DWORD *)this + 51) )
  {
    return (CharAISkillScript *)(&dword_0 + 1);
  }
  result = *(CharAISkillScript **)(*((_DWORD *)this + 45) + 4 * a2);
  if ( result )
    return (CharAISkillScript *)CharAISkillScript::OnSkillCheck_Active(result);
  return result;
}


// ===== 3d86bc CharAI::AI_BeginSkill(uint) =====
int __fastcall CharAI::AI_BeginSkill(Character **this, Character *a2)
{
  int CharSkill; // r8
  int result; // r0
  int v6; // r0
  int v7; // r6
  TrophyManager *v8; // r7
  int v9; // r10
  int v10; // r5
  int v11; // r1

  CharSkill = Character::GetCharSkill(*(this + 1), (int)a2);
  if ( *(_DWORD *)(CharSkill + 72) == 1 && CharAI::AI_IsSkillActive((CharAI *)this, (unsigned int)a2) )
  {
    CharAISkillScript::OnPreSkill(*((CharAISkillScript **)*(this + 45) + (_DWORD)a2));
    return 1;
  }
  else
  {
    result = CharAI::AI_IsSkillUsable((CharAI *)this, (unsigned int)a2);
    if ( result )
    {
      v6 = (int)*(this + 1);
      v7 = 0;
      *(this + 51) = a2;
      *((_BYTE *)this + 208) = 0;
      *((_BYTE *)this + 209) = 0;
      CharStateMachine::SM_SetSkillState(
        (CharStateMachine *)(v6 + 1276),
        (unsigned int)a2,
        *(_BYTE *)(CharSkill + 8),
        nullptr,
        0);
      if ( (*(int (__fastcall **)(_DWORD))(*(_DWORD *)*(this + 1) + 40))(*(this + 1)) )
      {
        CharProperties::PROPS_AddInt((Character *)((char *)*(this + 1) + 1376), 216, 1);
        v8 = (TrophyManager *)TrophyManager::s_instance;
        if ( CharProperties::PROPS_GetInt((Character *)((char *)*(this + 1) + 1376), 216, 0) > 199 )
        {
          if ( PlayerManager::IsLocalPlayer((PlayerManager *)dword_99F76C, *(this + 1)) )
          {
            v9 = Arrays::TrophyTable::size;
            if ( Arrays::TrophyTable::size )
            {
              v10 = Arrays::TrophyTable::m_memberNames;
              while ( LC_API_STRCMP_0("epic_withskills", *(const char **)(v10 + 4 * v7)) )
              {
                if ( ++v7 == v9 )
                  goto LABEL_15;
              }
              v11 = v7;
            }
            else
            {
LABEL_15:
              v11 = -1;
            }
            TrophyManager::UnlockTrophy(v8, v11);
          }
        }
      }
      return CharStateMachine::SM_IsUsingSkill((Character *)((char *)*(this + 1) + 1276));
    }
  }
  return result;
}


// ===== 3d8868 CharAI::AI_UseSkill(uint) =====
int __fastcall CharAI::AI_UseSkill(Character **this, Character *a2)
{
  int result; // r0

  result = CharAI::AI_BeginSkill(this, a2);
  if ( result )
  {
    CharAI::AI_EndSkill((CharAI *)this, (int)a2);
    return 1;
  }
  return result;
}


// ===== 3d8894 CharAI::UpdateAllSkills(void) =====
void __fastcall CharAI::UpdateAllSkills(CharAI *this)
{
  int IsCasting; // r4
  int v3; // r3
  int v4; // r6
  CharAISkillScript *v5; // r0
  int v6; // r3
  int v7; // r6
  int v8; // r4
  CharAISkillScript *v9; // r0

  if ( !CharStateMachine::SM_IsUsingSkill((CharStateMachine *)(*((_DWORD *)this + 1) + 1276)) )
  {
    IsCasting = CharStateMachine::SM_IsCasting((CharStateMachine *)(*((_DWORD *)this + 1) + 1276));
    if ( !IsCasting )
    {
      v3 = *((_DWORD *)this + 45);
      v4 = (*((_DWORD *)this + 46) - v3) >> 2;
      if ( v4 )
      {
        while ( 1 )
        {
          v5 = *(CharAISkillScript **)(v3 + 4 * IsCasting++);
          if ( v5 )
            CharAISkillScript::OnSkillUpdate(v5);
          if ( IsCasting == v4 )
            break;
          v3 = *((_DWORD *)this + 45);
        }
      }
      v6 = *((_DWORD *)this + 48);
      v7 = (*((_DWORD *)this + 49) - v6) >> 2;
      if ( v7 )
      {
        v8 = 0;
        while ( 1 )
        {
          v9 = *(CharAISkillScript **)(v6 + 4 * v8++);
          if ( v9 )
            CharAISkillScript::OnSkillUpdate(v9);
          if ( v8 == v7 )
            break;
          v6 = *((_DWORD *)this + 48);
        }
      }
    }
  }
}


// ===== 3d8948 CharAI::_UpdateSkillsCB(int,uint,void *) =====
void __fastcall CharAI::_UpdateSkillsCB(CharAI *this, unsigned int a2, unsigned int a3, void *a4)
{
  int v6; // r3
  CharAISkillScript *v7; // r0

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
        "_this",
        "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Objects\\Characters\\AI\\CharAI_Skills.cpp",
        114);
    }
  }
  v6 = *(_DWORD *)(a3 + 180);
  if ( a2 < (*(_DWORD *)(a3 + 184) - v6) >> 2 )
  {
    v7 = *(CharAISkillScript **)(v6 + 4 * a2);
    if ( v7 )
      CharAISkillScript::OnSkillUpdate(v7);
  }
}


// ===== 3d8a04 CharAI::UpdateSkills(void) =====
void __fastcall CharAI::UpdateSkills(Character **this)
{
  unsigned int CurrentFaerieId; // r0
  int v3; // r3
  CharAISkillScript *v4; // r0

  if ( !CharStateMachine::SM_IsUsingSkill((Character *)((char *)*(this + 1) + 1276))
    && !CharStateMachine::SM_IsCasting((Character *)((char *)*(this + 1) + 1276)) )
  {
    Character::SG_TellSlots(*(this + 1), (void (*)(int, unsigned int, void *))CharAI::_UpdateSkillsCB, this);
    CurrentFaerieId = Character::SG_GetCurrentFaerieId(*(this + 1), -1);
    v3 = (int)*(this + 48);
    if ( CurrentFaerieId < ((int)*(this + 49) - v3) >> 2 )
    {
      v4 = *(CharAISkillScript **)(v3 + 4 * CurrentFaerieId);
      if ( v4 )
        CharAISkillScript::OnSkillUpdate(v4);
    }
  }
}


// ===== 3d8a98 CharAI::_SpellCleanUp(void) =====
void __fastcall CharAI::_SpellCleanUp(CharAI *this)
{
  int v1; // r3
  int v3; // r6
  int v4; // r4
  CharAISkillScript *v5; // r0

  v1 = *((_DWORD *)this + 48);
  v3 = (*((_DWORD *)this + 49) - v1) >> 2;
  if ( v3 )
  {
    v4 = 0;
    while ( 1 )
    {
      v5 = *(CharAISkillScript **)(v1 + 4 * v4++);
      if ( v5 )
        CharAISkillScript::OnSkillCleanUp(v5);
      if ( v4 == v3 )
        break;
      v1 = *((_DWORD *)this + 48);
    }
  }
}


// ===== 3d8ae0 CharAI::_SkillCleanUp(void) =====
CharAISkillScript *__fastcall CharAI::_SkillCleanUp(CharAISkillScript *this)
{
  int v1; // r3
  CharAISkillScript *v2; // r5
  int v3; // r6
  int v4; // r4

  v1 = *((_DWORD *)this + 45);
  v2 = this;
  v3 = (*((_DWORD *)this + 46) - v1) >> 2;
  if ( v3 )
  {
    v4 = 0;
    while ( 1 )
    {
      this = *(CharAISkillScript **)(v1 + 4 * v4++);
      if ( this )
        this = (CharAISkillScript *)CharAISkillScript::OnSkillCleanUp(this);
      if ( v4 == v3 )
        break;
      v1 = *((_DWORD *)v2 + 45);
    }
  }
  return this;
}


// ===== 3d8b28 CharAI::_SpellBlur(void) =====
unsigned int __fastcall CharAI::_SpellBlur(Character **this)
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
      return CharAISkillScript::OnPostSkill(v4);
    }
  }
  return result;
}


// ===== 3d8b7c CharAI::_SkillBlur(void) =====
unsigned int *__fastcall CharAI::_SkillBlur(unsigned int *this)
{
  int v1; // r3
  unsigned int v2; // r2

  v1 = *(this + 45);
  v2 = *(this + 51);
  if ( v2 < (int)(*(this + 46) - v1) >> 2 )
  {
    this = *(unsigned int **)(v1 + 4 * v2);
    if ( this )
      return (unsigned int *)CharAISkillScript::OnPostSkill((CharAISkillScript *)this);
  }
  return this;
}


// ===== 3d8ba4 CharAI::_SpellEvent(void) =====
unsigned int __fastcall CharAI::_SpellEvent(Character **this)
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
      return CharAISkillScript::OnSkill(v4);
    }
  }
  return result;
}


// ===== 3d8bf8 CharAI::_SkillEvent(void) =====
unsigned int *__fastcall CharAI::_SkillEvent(unsigned int *this)
{
  int v1; // r3
  unsigned int v2; // r2

  v1 = *(this + 45);
  v2 = *(this + 51);
  if ( v2 < (int)(*(this + 46) - v1) >> 2 )
  {
    this = *(unsigned int **)(v1 + 4 * v2);
    if ( this )
      return (unsigned int *)CharAISkillScript::OnSkill((CharAISkillScript *)this);
  }
  return this;
}


// ===== 3d8c20 `global constructor keyed to'.._.._sources_Game_Objects_Characters_AI_CharAI_Skills.cpp =====
int `global constructor keyed to'.._.._sources_Game_Objects_Characters_AI_CharAI_Skills.cpp()
{
  int result; // r0

  result = `guard variable for'Singleton<PlayerStatManager>::s_inst;
  dword_9A2BE0 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9A2BDC = 1056964608;
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


// ===== 3d8cfc CharAI::AI_ReloadSkills(void) =====
void __fastcall CharAI::AI_ReloadSkills(CharAI *this)
{
  _DWORD *v1; // r4
  _DWORD *v2; // r5
  int v4; // r3

  v1 = *((_DWORD **)this + 45);
  v2 = *((_DWORD **)this + 46);
  if ( v1 != v2 )
  {
    do
    {
      if ( *v1 )
      {
        (*(void (__fastcall **)(_DWORD))(*(_DWORD *)*v1 + 4))(*v1);
        *v1 = 0;
      }
      ++v1;
    }
    while ( v2 != v1 );
    v4 = *((_DWORD *)this + 45);
    if ( v4 != *((_DWORD *)this + 46) )
      *((_DWORD *)this + 46) = v4;
  }
  Character::SG_ReloadSkills(*((Character **)this + 1));
  CharAI::SetSkillsAndSpells(this);
  CharAI::UpdateAllSkills(this);
}


// ===== 3d8d70 CharAI::_ClearNonStickyTarget(void) =====
unsigned __int8 *__fastcall CharAI::_ClearNonStickyTarget(unsigned __int8 *this)
{
  int v1; // r4

  v1 = (int)this;
  if ( !*(this + 75) )
  {
    CharAI::AI_SetTarget((CharAI *)this, (GameObject *)*(this + 75), *(this + 75));
    return (unsigned __int8 *)CharAI::AI_SyncLastTarget(v1);
  }
  return this;
}


// ===== 3d8d9c `global constructor keyed to'.._.._sources_Game_Objects_Characters_AI_CharAI_Utils.cpp =====
int `global constructor keyed to'.._.._sources_Game_Objects_Characters_AI_CharAI_Utils.cpp()
{
  int result; // r0

  result = `guard variable for'Singleton<PlayerStatManager>::s_inst;
  dword_9A2BEC = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9A2BE8 = 1056964608;
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


// ===== 3d8e78 CharAIScript::CallStatePost(void) =====
void __fastcall CharAIScript::CallStatePost(CharAIScript *this)
{
  int v1; // r3

  v1 = *((_DWORD *)this + 45);
  if ( v1 )
    LuaScript::Call(this, *(glitch::core **)(v1 + 92));
}


// ===== 3d8e8c CharAIScript::CallStateInit(void) =====
void __fastcall CharAIScript::CallStateInit(CharAIScript *this)
{
  int v1; // r3

  v1 = *((_DWORD *)this + 45);
  if ( v1 )
    LuaScript::Call(this, *(glitch::core **)(v1 + 68));
}


// ===== 3d8ea0 CharAIScript::CallStateConditions(void) =====
void __fastcall CharAIScript::CallStateConditions(CharAIScript *this)
{
  int v1; // r3

  v1 = *((_DWORD *)this + 45);
  if ( v1 )
    LuaScript::Call(this, *(glitch::core **)(v1 + 44));
}


// ===== 3d8eb4 CharAIScript::CallStateUpdate(void) =====
LuaScript *__fastcall CharAIScript::CallStateUpdate(LuaScript *this)
{
  int v1; // r3

  v1 = *((_DWORD *)this + 45);
  if ( v1 )
    return (LuaScript *)LuaScript::Call(this, *(const char **)(v1 + 20));
  return this;
}


// ===== 3d8ec8 CharAIScript::CharAIScriptBindFunction(void) =====
int __fastcall CharAIScript::CharAIScriptBindFunction(CharAIScript *this)
{
  sfc::script::lua::Binder *v2; // r6

  v2 = (CharAIScript *)((char *)this + 16);
  sfc::script::lua::Binder::bindFunction(
    (CharAIScript *)((char *)this + 16),
    "RegisterAIState",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))CharAIScript::_RegisterState,
    this);
  return sfc::script::lua::Binder::bindFunction(
           v2,
           "ChangeAIState",
           (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))CharAIScript::_ChangeState,
           this);
}


// ===== 3d8f2c CharAIScript::BindFunction(void) =====
int __fastcall CharAIScript::BindFunction(CharAIScript *this)
{
  LuaScript::BindFunction(this);
  return CharAIScript::CharAIScriptBindFunction(this);
}


// ===== 3d8f44 CharAIScript::CharAIScript(bool) =====
void __fastcall CharAIScript::CharAIScript(CharAIScript *this, _BOOL4 a2)
{
  LuaScript::LuaScript(this, a2);
  *((_DWORD *)this + 38) = 0;
  *(_DWORD *)this = off_966870;
  *((_DWORD *)this + 40) = 0;
  *((_BYTE *)this + 156) = 0;
  *((_DWORD *)this + 42) = (char *)this + 156;
  *((_DWORD *)this + 45) = 0;
  *((_DWORD *)this + 41) = (char *)this + 156;
  *((_DWORD *)this + 43) = 0;
  if ( !a2 )
    CharAIScript::CharAIScriptBindFunction(this);
}


// ===== 3d8fb0 CharAIScript::CharAIScript(bool) =====
void __fastcall CharAIScript::CharAIScript(CharAIScript *this, _BOOL4 a2)
{
  LuaScript::LuaScript(this, a2);
  *((_DWORD *)this + 38) = 0;
  *(_DWORD *)this = off_966870;
  *((_DWORD *)this + 40) = 0;
  *((_BYTE *)this + 156) = 0;
  *((_DWORD *)this + 42) = (char *)this + 156;
  *((_DWORD *)this + 45) = 0;
  *((_DWORD *)this + 41) = (char *)this + 156;
  *((_DWORD *)this + 43) = 0;
  if ( !a2 )
    CharAIScript::CharAIScriptBindFunction(this);
}


// ===== 3d901c `global constructor keyed to'.._.._sources_Game_Objects_Characters_AI_CharAIScript.cpp =====
int `global constructor keyed to'.._.._sources_Game_Objects_Characters_AI_CharAIScript.cpp()
{
  int result; // r0

  result = `guard variable for'Singleton<PlayerStatManager>::s_inst;
  dword_9A2BF8 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9A2BF4 = 1056964608;
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


// ===== 3d90f8 CharAIScript::SetCharacter(Character *) =====
std::string *__fastcall CharAIScript::SetCharacter(CharAIScript *this, Character *a2)
{
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
        "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Objects\\Characters\\AI\\CharAIScript.cpp",
        131);
    }
  }
  *((_DWORD *)this + 38) = a2;
  (*(void (__fastcall **)(Character *, char *))(*(_DWORD *)a2 + 12))(a2, (char *)this + 16);
  return std::string::_M_assign((std::string *const)((char *)this + 104), "data/scripts/ai/", "");
}


// ===== 3d91b8 CharAIScript::_State::~_State() =====
void __fastcall CharAIScript::_State::~_State(std::string *this)
{
  std::string::~string(this + 3);
  std::string::~string(this + 2);
  std::string::~string(this + 1);
  std::string::~string(this);
}


// ===== 3d91e8 std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,CharAIScript::_State>,std::priv::_Select1st<std::pair<std::string const,CharAIScript::_State>>,std::priv::_MapTraitsT<std::pair<std::string const,CharAIScript::_State>>,std::allocator<std::pair<std::string const,CharAIScript::_State>>>::_M_erase(std::priv::_Rb_tree_node_base *) =====
void __fastcall std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,CharAIScript::_State>,std::priv::_Select1st<std::pair<std::string const,CharAIScript::_State>>,std::priv::_MapTraitsT<std::pair<std::string const,CharAIScript::_State>>,std::allocator<std::pair<std::string const,CharAIScript::_State>>>::_M_erase(
        int a1,
        int a2)
{
  int v2; // r4
  int v4; // r5
  void *v5; // r3
  size_t v6; // r1

  v2 = a2;
  if ( a2 )
  {
    while ( 1 )
    {
      std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,CharAIScript::_State>,std::priv::_Select1st<std::pair<std::string const,CharAIScript::_State>>,std::priv::_MapTraitsT<std::pair<std::string const,CharAIScript::_State>>,std::allocator<std::pair<std::string const,CharAIScript::_State>>>::_M_erase(
        a1,
        *(_DWORD *)(v2 + 12));
      v4 = *(_DWORD *)(v2 + 8);
      CharAIScript::_State::~_State((std::string *)(v2 + 40));
      v5 = *(void **)(v2 + 36);
      if ( v5 == (void *)(v2 + 16) || !v5 )
        goto LABEL_4;
      v6 = *(_DWORD *)(v2 + 16) - (_DWORD)v5;
      if ( v6 <= 0x80 )
      {
        __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v5, v6);
LABEL_4:
        CustomFree((void *)v2);
        v2 = v4;
        if ( !v4 )
          return;
      }
      else
      {
        CustomFree(v5);
        CustomFree((void *)v2);
        v2 = v4;
        if ( !v4 )
          return;
      }
    }
  }
}


// ===== 3d926c CharAIScript::~CharAIScript() =====
void __fastcall CharAIScript::~CharAIScript(CharAIScript *this)
{
  int v1; // r1
  char *v3; // r5

  v1 = *((_DWORD *)this + 43);
  *(_DWORD *)this = off_966870;
  if ( v1 )
  {
    v3 = (char *)this + 156;
    std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,CharAIScript::_State>,std::priv::_Select1st<std::pair<std::string const,CharAIScript::_State>>,std::priv::_MapTraitsT<std::pair<std::string const,CharAIScript::_State>>,std::allocator<std::pair<std::string const,CharAIScript::_State>>>::_M_erase(
      (int)this + 156,
      *((_DWORD *)this + 40));
    *((_DWORD *)this + 42) = v3;
    *((_DWORD *)this + 43) = 0;
    *((_DWORD *)this + 41) = v3;
    *((_DWORD *)this + 40) = 0;
  }
  LuaScript::~LuaScript(this);
}


// ===== 3d92d4 CharAIScript::~CharAIScript() =====
void __fastcall CharAIScript::~CharAIScript(CharAIScript *this)
{
  CharAIScript::~CharAIScript(this);
  CustomFree(this);
}


// ===== 3d92f0 CharAIScript::~CharAIScript() =====
void __fastcall CharAIScript::~CharAIScript(CharAIScript *this)
{
  int v1; // r1
  char *v3; // r5

  v1 = *((_DWORD *)this + 43);
  *(_DWORD *)this = off_966870;
  if ( v1 )
  {
    v3 = (char *)this + 156;
    std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,CharAIScript::_State>,std::priv::_Select1st<std::pair<std::string const,CharAIScript::_State>>,std::priv::_MapTraitsT<std::pair<std::string const,CharAIScript::_State>>,std::allocator<std::pair<std::string const,CharAIScript::_State>>>::_M_erase(
      (int)this + 156,
      *((_DWORD *)this + 40));
    *((_DWORD *)this + 42) = v3;
    *((_DWORD *)this + 43) = 0;
    *((_DWORD *)this + 41) = v3;
    *((_DWORD *)this + 40) = 0;
  }
  LuaScript::~LuaScript(this);
}


// ===== 3d9358 std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,CharAIScript::_State>,std::priv::_Select1st<std::pair<std::string const,CharAIScript::_State>>,std::priv::_MapTraitsT<std::pair<std::string const,CharAIScript::_State>>,std::allocator<std::pair<std::string const,CharAIScript::_State>>>::_M_find<char const*>(char const* const&) =====
_DWORD *__fastcall std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,CharAIScript::_State>,std::priv::_Select1st<std::pair<std::string const,CharAIScript::_State>>,std::priv::_MapTraitsT<std::pair<std::string const,CharAIScript::_State>>,std::allocator<std::pair<std::string const,CharAIScript::_State>>>::_M_find<char const*>(
        _DWORD *a1,
        char **a2)
{
  _DWORD *v2; // r5
  _DWORD *v4; // r10
  const void *v5; // r3
  std::string *M_data; // r4
  int v7; // r7
  int v8; // r6
  size_t v9; // r2
  int v10; // r11
  const void *v11; // r1
  int v12; // r5
  int v13; // r6
  size_t v14; // r2
  int v15; // r7
  std::string v18; // [sp+1Ch] [bp-38h] BYREF
  std::string v19; // [sp+34h] [bp-20h] BYREF

  v2 = (_DWORD *)a1[1];
  if ( !v2 )
    return a1;
  v4 = a1;
  do
  {
    while ( 1 )
    {
      std::string::string(&v19, *a2);
      v5 = (const void *)v2[9];
      M_data = (std::string *)v19._M_start_of_storage._M_data;
      v7 = v2[8] - (_DWORD)v5;
      v8 = v19._M_finish - v19._M_start_of_storage._M_data;
      if ( v19._M_finish - v19._M_start_of_storage._M_data >= v7 )
        v9 = v2[8] - (_DWORD)v5;
      else
        v9 = v19._M_finish - v19._M_start_of_storage._M_data;
      v10 = memcmp(v5, v19._M_start_of_storage._M_data, v9);
      if ( !v10 )
      {
        if ( v7 >= v8 )
          v10 = v7 > v8;
        else
          v10 = -1;
      }
      if ( M_data == &v19 || !M_data )
        break;
      if ( (unsigned int)(v19._M_buffers._M_end_of_storage - (char *)M_data) <= 0x80 )
      {
        __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(M_data, v19._M_buffers._M_end_of_storage - (char *)M_data);
        break;
      }
      CustomFree(M_data);
      if ( v10 < 0 )
        v2 = (_DWORD *)v2[3];
      else
        v4 = v2;
      if ( v10 >= 0 )
        v2 = (_DWORD *)v2[2];
      if ( !v2 )
        goto LABEL_26;
    }
    if ( v10 < 0 )
      v2 = (_DWORD *)v2[3];
    else
      v4 = v2;
    if ( v10 >= 0 )
      v2 = (_DWORD *)v2[2];
  }
  while ( v2 );
LABEL_26:
  if ( v4 != a1 )
  {
    std::string::string(&v18, *a2);
    v11 = (const void *)v4[9];
    v12 = v4[8] - (_DWORD)v11;
    v13 = v18._M_finish - v18._M_start_of_storage._M_data;
    v14 = v12 >= v18._M_finish - v18._M_start_of_storage._M_data
        ? v18._M_finish - v18._M_start_of_storage._M_data
        : v4[8] - (_DWORD)v11;
    v15 = memcmp(v18._M_start_of_storage._M_data, v11, v14);
    if ( !v15 )
    {
      if ( v13 >= v12 )
        v15 = v13 > v12;
      else
        v15 = -1;
    }
    std::string::~string(&v18);
    if ( v15 < 0 )
      return a1;
  }
  return v4;
}


// ===== 3d9514 std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,CharAIScript::_State>,std::priv::_Select1st<std::pair<std::string const,CharAIScript::_State>>,std::priv::_MapTraitsT<std::pair<std::string const,CharAIScript::_State>>,std::allocator<std::pair<std::string const,CharAIScript::_State>>>::_M_lower_bound<char const*>(char const* const&) =====
_DWORD *__fastcall std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,CharAIScript::_State>,std::priv::_Select1st<std::pair<std::string const,CharAIScript::_State>>,std::priv::_MapTraitsT<std::pair<std::string const,CharAIScript::_State>>,std::allocator<std::pair<std::string const,CharAIScript::_State>>>::_M_lower_bound<char const*>(
        _DWORD *a1,
        char **a2)
{
  _DWORD *v3; // r5
  const void *v4; // r3
  std::string *M_data; // r4
  int v6; // r7
  int v7; // r6
  size_t v8; // r2
  int v9; // r11
  _DWORD *v11; // [sp+4h] [bp-30h]
  std::string v12; // [sp+14h] [bp-20h] BYREF

  v11 = a1;
  v3 = (_DWORD *)a1[1];
  if ( v3 )
  {
    while ( 1 )
    {
      std::string::string(&v12, *a2);
      v4 = (const void *)v3[9];
      M_data = (std::string *)v12._M_start_of_storage._M_data;
      v6 = v3[8] - (_DWORD)v4;
      v7 = v12._M_finish - v12._M_start_of_storage._M_data;
      if ( v12._M_finish - v12._M_start_of_storage._M_data >= v6 )
        v8 = v3[8] - (_DWORD)v4;
      else
        v8 = v12._M_finish - v12._M_start_of_storage._M_data;
      v9 = memcmp(v4, v12._M_start_of_storage._M_data, v8);
      if ( !v9 )
      {
        if ( v6 >= v7 )
          v9 = v6 > v7;
        else
          v9 = -1;
      }
      if ( M_data == &v12 || !M_data )
        goto LABEL_4;
      if ( (unsigned int)(v12._M_buffers._M_end_of_storage - (char *)M_data) <= 0x80 )
      {
        __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(M_data, v12._M_buffers._M_end_of_storage - (char *)M_data);
LABEL_4:
        if ( v9 < 0 )
        {
          v3 = (_DWORD *)v3[3];
        }
        else
        {
          v11 = v3;
          v3 = (_DWORD *)v3[2];
        }
        if ( !v3 )
          return v11;
      }
      else
      {
        CustomFree(M_data);
        if ( v9 < 0 )
        {
          v3 = (_DWORD *)v3[3];
        }
        else
        {
          v11 = v3;
          v3 = (_DWORD *)v3[2];
        }
        if ( !v3 )
          return v11;
      }
    }
  }
  return v11;
}


// ===== 3d9648 CharAIScript::_State::_State(CharAIScript::_State const&) =====
std::string *__fastcall CharAIScript::_State::_State(std::string *this, const std::string *a2)
{
  std::string::string(this, a2);
  std::string::string(this + 1, a2 + 1);
  std::string::string(this + 2, a2 + 2);
  std::string::string(this + 3, a2 + 3);
  return this;
}


// ===== 3d9684 CharAIScript::_State::_State(void) =====
CharAIScript::_State *__fastcall CharAIScript::_State::_State(CharAIScript::_State *this)
{
  *((_DWORD *)this + 4) = this;
  *((_DWORD *)this + 5) = this;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block(this, 0x10u);
  **((_BYTE **)this + 4) = 0;
  *((_DWORD *)this + 10) = (char *)this + 24;
  *((_DWORD *)this + 11) = (char *)this + 24;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block((_DWORD *)this + 6, 0x10u);
  **((_BYTE **)this + 10) = 0;
  *((_DWORD *)this + 16) = (char *)this + 48;
  *((_DWORD *)this + 17) = (char *)this + 48;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block((_DWORD *)this + 12, 0x10u);
  **((_BYTE **)this + 16) = 0;
  *((_DWORD *)this + 22) = (char *)this + 72;
  *((_DWORD *)this + 23) = (char *)this + 72;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block((_DWORD *)this + 18, 0x10u);
  **((_BYTE **)this + 22) = 0;
  return this;
}


// ===== 3d9710 CharAIScript::_ChangeState(sfc::script::lua::Arguments const&,sfc::script::lua::ReturnValues &,void *) =====
sfc::script::lua::Value *__fastcall CharAIScript::_ChangeState(
        CharAIScript *this,
        const sfc::script::lua::Arguments *a2,
        sfc::script::lua::ReturnValues *a3,
        void *a4)
{
  int v4; // r3
  sfc::script::lua::Value *result; // r0
  sfc::script::lua::Value *v7; // r6
  int String; // [sp+4h] [bp-4h] BYREF

  v4 = *((_DWORD *)this + 1);
  result = *(sfc::script::lua::Value **)v4;
  if ( 1227133513 * ((*(_DWORD *)(v4 + 4) - *(_DWORD *)v4) >> 4) == -1 )
  {
    String = sfc::script::lua::Value::getString(result);
    result = (sfc::script::lua::Value *)std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,CharAIScript::_State>,std::priv::_Select1st<std::pair<std::string const,CharAIScript::_State>>,std::priv::_MapTraitsT<std::pair<std::string const,CharAIScript::_State>>,std::allocator<std::pair<std::string const,CharAIScript::_State>>>::_M_find<char const*>(
                                          (char *)a3 + 156,
                                          &String);
    v7 = result;
    if ( result != (sfc::script::lua::ReturnValues *)((char *)a3 + 156) )
    {
      CharAIScript::CallStatePost(a3);
      *((_DWORD *)a3 + 45) = (char *)v7 + 40;
      return (sfc::script::lua::Value *)CharAIScript::CallStateInit(a3);
    }
  }
  return result;
}


// ===== 3d9790 std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,CharAIScript::_State>,std::priv::_Select1st<std::pair<std::string const,CharAIScript::_State>>,std::priv::_MapTraitsT<std::pair<std::string const,CharAIScript::_State>>,std::allocator<std::pair<std::string const,CharAIScript::_State>>>::_M_create_node(std::pair<std::string const,CharAIScript::_State> const&) =====
char *__fastcall std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,CharAIScript::_State>,std::priv::_Select1st<std::pair<std::string const,CharAIScript::_State>>,std::priv::_MapTraitsT<std::pair<std::string const,CharAIScript::_State>>,std::allocator<std::pair<std::string const,CharAIScript::_State>>>::_M_create_node(
        int a1,
        const std::string *a2)
{
  char *v3; // r4

  v3 = (char *)CustomAlloc(0x88u);
  std::string::string((std::string *)(v3 + 16), a2);
  CharAIScript::_State::_State((std::string *)(v3 + 40), a2 + 1);
  *((_DWORD *)v3 + 3) = 0;
  *((_DWORD *)v3 + 2) = 0;
  return v3;
}


// ===== 3d97d0 std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,CharAIScript::_State>,std::priv::_Select1st<std::pair<std::string const,CharAIScript::_State>>,std::priv::_MapTraitsT<std::pair<std::string const,CharAIScript::_State>>,std::allocator<std::pair<std::string const,CharAIScript::_State>>>::_M_insert(std::priv::_Rb_tree_node_base *,std::pair<std::string const,CharAIScript::_State> const&,std::priv::_Rb_tree_node_base *,std::priv::_Rb_tree_node_base *) =====
char **__fastcall std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,CharAIScript::_State>,std::priv::_Select1st<std::pair<std::string const,CharAIScript::_State>>,std::priv::_MapTraitsT<std::pair<std::string const,CharAIScript::_State>>,std::allocator<std::pair<std::string const,CharAIScript::_State>>>::_M_insert(
        char **a1,
        _DWORD *a2,
        _DWORD *a3,
        const std::string *a4,
        int a5,
        int a6)
{
  char *v9; // r0
  char *node; // r7
  char *v12; // r0
  unsigned int v13; // r0
  const std::string *v14; // [sp+4h] [bp-8h]

  if ( a2 == a3 )
  {
    node = std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,CharAIScript::_State>,std::priv::_Select1st<std::pair<std::string const,CharAIScript::_State>>,std::priv::_MapTraitsT<std::pair<std::string const,CharAIScript::_State>>,std::allocator<std::pair<std::string const,CharAIScript::_State>>>::_M_create_node(
             (int)a2,
             a4);
    a2[2] = node;
    a2[1] = node;
    a2[3] = node;
  }
  else if ( !a6
         && (a5
          || (v14 = a4, v13 = std::less<std::string>::operator()((int)(a2 + 5), (int)a4, (int)(a3 + 4)), a4 = v14, v13)) )
  {
    v12 = std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,CharAIScript::_State>,std::priv::_Select1st<std::pair<std::string const,CharAIScript::_State>>,std::priv::_MapTraitsT<std::pair<std::string const,CharAIScript::_State>>,std::allocator<std::pair<std::string const,CharAIScript::_State>>>::_M_create_node(
            (int)a2,
            a4);
    a3[2] = v12;
    node = v12;
    if ( a3 == (_DWORD *)a2[2] )
      a2[2] = v12;
  }
  else
  {
    v9 = std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,CharAIScript::_State>,std::priv::_Select1st<std::pair<std::string const,CharAIScript::_State>>,std::priv::_MapTraitsT<std::pair<std::string const,CharAIScript::_State>>,std::allocator<std::pair<std::string const,CharAIScript::_State>>>::_M_create_node(
           (int)a2,
           a4);
    a3[3] = v9;
    node = v9;
    if ( a3 == (_DWORD *)a2[3] )
      a2[3] = v9;
  }
  *((_DWORD *)node + 1) = a3;
  std::priv::_Rb_global<bool>::_Rebalance((int)node, a2 + 1);
  ++a2[4];
  *a1 = node;
  return a1;
}


// ===== 3d98c0 std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,CharAIScript::_State>,std::priv::_Select1st<std::pair<std::string const,CharAIScript::_State>>,std::priv::_MapTraitsT<std::pair<std::string const,CharAIScript::_State>>,std::allocator<std::pair<std::string const,CharAIScript::_State>>>::insert_unique(std::pair<std::string const,CharAIScript::_State> const&) =====
int __fastcall std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,CharAIScript::_State>,std::priv::_Select1st<std::pair<std::string const,CharAIScript::_State>>,std::priv::_MapTraitsT<std::pair<std::string const,CharAIScript::_State>>,std::allocator<std::pair<std::string const,CharAIScript::_State>>>::insert_unique(
        int a1,
        _DWORD *a2,
        const std::string *a3)
{
  _DWORD *v3; // r5
  char *M_data; // r7
  char *M_finish; // r11
  int v9; // r10
  _DWORD *v10; // r3
  int v11; // r1
  const void *v12; // r3
  int v13; // r6
  size_t v14; // r2
  int v15; // r0
  _DWORD *v16; // r2
  _DWORD *v17; // r10
  const void *v18; // r0
  signed int v19; // r11
  int v20; // r6
  size_t v21; // r2
  int v22; // r0
  char *v24; // r3
  int v25; // r3
  char *v26; // r3
  char *v27; // [sp+8h] [bp-Ch] BYREF
  char *v28; // [sp+Ch] [bp-8h] BYREF

  v3 = (_DWORD *)a2[1];
  if ( !v3 )
  {
    v3 = a2;
    goto LABEL_27;
  }
  M_data = a3->_M_start_of_storage._M_data;
  M_finish = a3->_M_finish;
  v9 = M_finish - M_data;
  while ( 1 )
  {
    v12 = (const void *)v3[9];
    v13 = v3[8] - (_DWORD)v12;
    if ( v13 >= v9 )
      v14 = M_finish - M_data;
    else
      v14 = v3[8] - (_DWORD)v12;
    v15 = memcmp(M_data, v12, v14);
    v16 = v3;
    if ( !v15 )
    {
      if ( v9 < v13 )
        goto LABEL_3;
      v15 = v9 > v13;
    }
    if ( v15 >= 0 )
      break;
LABEL_3:
    v10 = (_DWORD *)v3[2];
    v11 = 1;
    if ( !v10 )
      goto LABEL_13;
LABEL_4:
    v3 = v10;
  }
  v10 = (_DWORD *)v3[3];
  v11 = 0;
  if ( v10 )
    goto LABEL_4;
LABEL_13:
  if ( !v11 )
  {
    v17 = v3;
    goto LABEL_16;
  }
LABEL_27:
  if ( v3 == (_DWORD *)a2[2] )
  {
    std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,CharAIScript::_State>,std::priv::_Select1st<std::pair<std::string const,CharAIScript::_State>>,std::priv::_MapTraitsT<std::pair<std::string const,CharAIScript::_State>>,std::allocator<std::pair<std::string const,CharAIScript::_State>>>::_M_insert(
      &v28,
      a2,
      v3,
      a3,
      (int)v3,
      0);
    v26 = v28;
    *(_BYTE *)(a1 + 4) = 1;
    *(_DWORD *)a1 = v26;
  }
  else
  {
    if ( !*(_BYTE *)v3 && v3 == *(_DWORD **)(v3[1] + 4) )
    {
      v16 = (_DWORD *)v3[3];
      M_data = a3->_M_start_of_storage._M_data;
      M_finish = a3->_M_finish;
      v17 = v16;
    }
    else
    {
      v16 = (_DWORD *)v3[2];
      if ( v16 )
      {
        while ( v16[3] )
          v16 = (_DWORD *)v16[3];
LABEL_34:
        v17 = v16;
        M_data = a3->_M_start_of_storage._M_data;
        M_finish = a3->_M_finish;
      }
      else
      {
        v25 = v3[1];
        if ( v3 != *(_DWORD **)(v25 + 8) )
        {
          v16 = (_DWORD *)v3[1];
          goto LABEL_34;
        }
        while ( 1 )
        {
          v16 = *(_DWORD **)(v25 + 4);
          if ( v16[2] != v25 )
            break;
          v25 = *(_DWORD *)(v25 + 4);
        }
        M_data = a3->_M_start_of_storage._M_data;
        M_finish = a3->_M_finish;
        v17 = *(_DWORD **)(v25 + 4);
      }
    }
LABEL_16:
    v18 = (const void *)v16[9];
    v19 = M_finish - M_data;
    v20 = v16[8] - (_DWORD)v18;
    if ( v19 >= v20 )
      v21 = v16[8] - (_DWORD)v18;
    else
      v21 = v19;
    v22 = memcmp(v18, M_data, v21);
    if ( v22 )
    {
LABEL_22:
      if ( v22 < 0 )
        goto LABEL_35;
      *(_DWORD *)a1 = v17;
      *(_BYTE *)(a1 + 4) = 0;
    }
    else
    {
      if ( v20 >= v19 )
      {
        v22 = v20 > v19;
        goto LABEL_22;
      }
LABEL_35:
      std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,CharAIScript::_State>,std::priv::_Select1st<std::pair<std::string const,CharAIScript::_State>>,std::priv::_MapTraitsT<std::pair<std::string const,CharAIScript::_State>>,std::allocator<std::pair<std::string const,CharAIScript::_State>>>::_M_insert(
        &v27,
        a2,
        v3,
        a3,
        0,
        0);
      v24 = v27;
      *(_BYTE *)(a1 + 4) = 1;
      *(_DWORD *)a1 = v24;
    }
  }
  return a1;
}


// ===== 3d9ad8 std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,CharAIScript::_State>,std::priv::_Select1st<std::pair<std::string const,CharAIScript::_State>>,std::priv::_MapTraitsT<std::pair<std::string const,CharAIScript::_State>>,std::allocator<std::pair<std::string const,CharAIScript::_State>>>::insert_unique(std::priv::_Rb_tree_iterator<std::pair<std::string const,CharAIScript::_State>,std::priv::_MapTraitsT<std::pair<std::string const,CharAIScript::_State>>>,std::pair<std::string const,CharAIScript::_State> const&) =====
char **__fastcall std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,CharAIScript::_State>,std::priv::_Select1st<std::pair<std::string const,CharAIScript::_State>>,std::priv::_MapTraitsT<std::pair<std::string const,CharAIScript::_State>>,std::allocator<std::pair<std::string const,CharAIScript::_State>>>::insert_unique(
        char **a1,
        char *a2,
        char **a3,
        const std::string *a4)
{
  char *v4; // r5
  _DWORD *v8; // r4
  const void *v9; // r3
  char *v10; // r9
  signed int v11; // r11
  signed int v12; // r2
  int v13; // r0
  const void *v14; // r3
  unsigned int v15; // r12
  char *v16; // r4
  int v17; // r0
  const void *v18; // r2
  const void *v19; // r0
  signed int v20; // r10
  size_t v21; // r2
  int v22; // r0
  int v23; // r12
  char *M_data; // r3
  const void *v26; // r1
  int v27; // r4
  int v28; // r10
  size_t v29; // r2
  int v30; // r0
  int v31; // r12
  int v32; // r3
  int v33; // r4
  char *v34; // r1
  char *M_finish; // r9
  int v36; // r3
  signed int v37; // r9
  signed int v38; // r10
  size_t v39; // r2
  int v40; // r0
  int v41; // r2
  void *v42; // [sp+Ch] [bp-38h]
  unsigned int v43; // [sp+10h] [bp-34h]
  signed int v45; // [sp+18h] [bp-2Ch]
  size_t v46; // [sp+1Ch] [bp-28h]
  char *v47; // [sp+20h] [bp-24h] BYREF
  char *v48; // [sp+28h] [bp-1Ch] BYREF
  char *v49; // [sp+30h] [bp-14h] BYREF
  char *v50; // [sp+38h] [bp-Ch] BYREF

  v4 = *a3;
  if ( *a3 == *((char **)a2 + 2) )
  {
    if ( !*((_DWORD *)a2 + 4) )
    {
      std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,CharAIScript::_State>,std::priv::_Select1st<std::pair<std::string const,CharAIScript::_State>>,std::priv::_MapTraitsT<std::pair<std::string const,CharAIScript::_State>>,std::allocator<std::pair<std::string const,CharAIScript::_State>>>::insert_unique(
        (int)&v50,
        a2,
        a4);
      *a1 = v50;
      return a1;
    }
    M_data = a4->_M_start_of_storage._M_data;
    v26 = *((const void **)v4 + 9);
    v27 = a4->_M_finish - M_data;
    v28 = *((_DWORD *)v4 + 8) - (_DWORD)v26;
    if ( v28 >= v27 )
      v29 = a4->_M_finish - M_data;
    else
      v29 = *((_DWORD *)v4 + 8) - (_DWORD)v26;
    v30 = memcmp(M_data, v26, v29);
    if ( !v30 )
    {
      if ( v27 < v28 )
        goto LABEL_37;
      v30 = v27 > v28;
    }
    if ( v30 >= 0 )
    {
      if ( !std::less<std::string>::operator()((int)(a2 + 20), (int)(v4 + 16), (int)a4) )
      {
        *a1 = *a3;
        return a1;
      }
      v31 = (int)*a3;
      v16 = *((char **)*a3 + 3);
      if ( v16 )
      {
        while ( *((_DWORD *)v16 + 2) )
          v16 = *((char **)v16 + 2);
      }
      else
      {
        v32 = *(_DWORD *)(v31 + 4);
        if ( v31 == *(_DWORD *)(v32 + 12) )
        {
          do
          {
            v16 = (char *)v32;
            v32 = *(_DWORD *)(v32 + 4);
          }
          while ( *(char **)(v32 + 12) == v16 );
        }
        else
        {
          v16 = *a3;
        }
        if ( v32 != *((_DWORD *)v16 + 3) )
          v16 = (char *)v32;
      }
      if ( a2 == v16 )
        goto LABEL_93;
      if ( !std::less<std::string>::operator()((int)(a2 + 20), (int)a4, (int)(v16 + 16)) )
      {
        std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,CharAIScript::_State>,std::priv::_Select1st<std::pair<std::string const,CharAIScript::_State>>,std::priv::_MapTraitsT<std::pair<std::string const,CharAIScript::_State>>,std::allocator<std::pair<std::string const,CharAIScript::_State>>>::insert_unique(
          (int)&v49,
          a2,
          a4);
        *a1 = v49;
        return a1;
      }
      v31 = (int)*a3;
      if ( !*((_DWORD *)*a3 + 3) )
      {
LABEL_93:
        std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,CharAIScript::_State>,std::priv::_Select1st<std::pair<std::string const,CharAIScript::_State>>,std::priv::_MapTraitsT<std::pair<std::string const,CharAIScript::_State>>,std::allocator<std::pair<std::string const,CharAIScript::_State>>>::_M_insert(
          a1,
          a2,
          *a3,
          a4,
          0,
          v31);
        return a1;
      }
      goto LABEL_61;
    }
    goto LABEL_37;
  }
  if ( v4 == a2 )
  {
    v33 = *((_DWORD *)v4 + 3);
    v34 = a4->_M_start_of_storage._M_data;
    M_finish = a4->_M_finish;
    v36 = *(_DWORD *)(v33 + 36);
    v37 = M_finish - v34;
    v38 = *(_DWORD *)(v33 + 32) - v36;
    if ( v37 >= v38 )
      v39 = *(_DWORD *)(v33 + 32) - v36;
    else
      v39 = v37;
    v40 = memcmp(*(const void **)(v33 + 36), v34, v39);
    if ( !v40 )
    {
      if ( v38 < v37 )
      {
LABEL_76:
        std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,CharAIScript::_State>,std::priv::_Select1st<std::pair<std::string const,CharAIScript::_State>>,std::priv::_MapTraitsT<std::pair<std::string const,CharAIScript::_State>>,std::allocator<std::pair<std::string const,CharAIScript::_State>>>::_M_insert(
          a1,
          a2,
          (_DWORD *)v33,
          a4,
          0,
          (int)v4);
        return a1;
      }
      v40 = v38 > v37;
    }
    if ( v40 >= 0 )
    {
      std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,CharAIScript::_State>,std::priv::_Select1st<std::pair<std::string const,CharAIScript::_State>>,std::priv::_MapTraitsT<std::pair<std::string const,CharAIScript::_State>>,std::allocator<std::pair<std::string const,CharAIScript::_State>>>::insert_unique(
        (int)&v48,
        a2,
        a4);
      *a1 = v48;
      return a1;
    }
    goto LABEL_76;
  }
  if ( !*v4 )
  {
    if ( v4 == *(char **)(*((_DWORD *)v4 + 1) + 4) )
    {
      v8 = *((_DWORD **)v4 + 3);
      goto LABEL_8;
    }
    v8 = *((_DWORD **)v4 + 2);
    if ( !v8 )
      goto LABEL_26;
LABEL_7:
    while ( v8[3] )
      v8 = (_DWORD *)v8[3];
    goto LABEL_8;
  }
  v8 = *((_DWORD **)v4 + 2);
  if ( v8 )
    goto LABEL_7;
LABEL_26:
  v8 = *((_DWORD **)v4 + 1);
  if ( v4 == (char *)v8[2] )
  {
    while ( *(_DWORD **)(v8[1] + 8) == v8 )
      v8 = (_DWORD *)v8[1];
    v8 = (_DWORD *)v8[1];
  }
LABEL_8:
  v9 = *((const void **)v4 + 9);
  v10 = a4->_M_start_of_storage._M_data;
  v11 = a4->_M_finish - v10;
  v12 = *((_DWORD *)v4 + 8) - (_DWORD)v9;
  v45 = v12;
  if ( v12 >= v11 )
    v12 = a4->_M_finish - v10;
  v42 = *((void **)v4 + 9);
  v46 = v12;
  v13 = memcmp(a4->_M_start_of_storage._M_data, v9, v12);
  v14 = v42;
  if ( !v13 )
  {
    if ( v11 >= v45 )
      v13 = v11 > v45;
    else
      v13 = -1;
  }
  v15 = (unsigned int)v13 >> 31;
  if ( v13 < 0 )
  {
    v18 = (const void *)v8[9];
    v19 = v18;
    v20 = v8[8] - (_DWORD)v18;
    if ( v11 >= v20 )
      v21 = v8[8] - (_DWORD)v18;
    else
      v21 = v11;
    v43 = v15;
    v22 = memcmp(v19, v10, v21);
    v14 = v42;
    v15 = v43;
    if ( !v22 )
    {
      if ( v11 <= v20 )
        goto LABEL_15;
      v23 = v8[3];
      if ( v23 )
        goto LABEL_37;
LABEL_65:
      std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,CharAIScript::_State>,std::priv::_Select1st<std::pair<std::string const,CharAIScript::_State>>,std::priv::_MapTraitsT<std::pair<std::string const,CharAIScript::_State>>,std::allocator<std::pair<std::string const,CharAIScript::_State>>>::_M_insert(
        a1,
        a2,
        v8,
        a4,
        v23,
        (int)v8);
      return a1;
    }
    if ( v22 >= 0 )
      goto LABEL_15;
    v23 = v8[3];
    if ( !v23 )
      goto LABEL_65;
LABEL_37:
    std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,CharAIScript::_State>,std::priv::_Select1st<std::pair<std::string const,CharAIScript::_State>>,std::priv::_MapTraitsT<std::pair<std::string const,CharAIScript::_State>>,std::allocator<std::pair<std::string const,CharAIScript::_State>>>::_M_insert(
      a1,
      a2,
      v4,
      a4,
      (int)v4,
      0);
    return a1;
  }
LABEL_15:
  v16 = *((char **)v4 + 3);
  if ( v16 )
  {
    while ( *((_DWORD *)v16 + 2) )
      v16 = *((char **)v16 + 2);
  }
  else
  {
    v41 = *((_DWORD *)v4 + 1);
    if ( v4 == *(char **)(v41 + 12) )
    {
      while ( *(_DWORD *)(*(_DWORD *)(v41 + 4) + 12) == v41 )
        v41 = *(_DWORD *)(v41 + 4);
      v16 = (char *)v41;
      v41 = *(_DWORD *)(v41 + 4);
    }
    else
    {
      v16 = v4;
    }
    if ( v41 != *((_DWORD *)v16 + 3) )
      v16 = (char *)v41;
  }
  if ( v15 )
    goto LABEL_41;
  v17 = memcmp(v14, v10, v46);
  if ( v17 )
  {
    if ( v17 >= 0 )
      goto LABEL_22;
    goto LABEL_39;
  }
  if ( v11 > v45 )
  {
LABEL_39:
    if ( a2 != v16 )
    {
      if ( !std::less<std::string>::operator()((int)(a2 + 20), (int)a4, (int)(v16 + 16)) )
      {
LABEL_41:
        std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,CharAIScript::_State>,std::priv::_Select1st<std::pair<std::string const,CharAIScript::_State>>,std::priv::_MapTraitsT<std::pair<std::string const,CharAIScript::_State>>,std::allocator<std::pair<std::string const,CharAIScript::_State>>>::insert_unique(
          (int)&v47,
          a2,
          a4);
        *a1 = v47;
        return a1;
      }
      v4 = *a3;
    }
    if ( !*((_DWORD *)v4 + 3) )
    {
      std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,CharAIScript::_State>,std::priv::_Select1st<std::pair<std::string const,CharAIScript::_State>>,std::priv::_MapTraitsT<std::pair<std::string const,CharAIScript::_State>>,std::allocator<std::pair<std::string const,CharAIScript::_State>>>::_M_insert(
        a1,
        a2,
        v4,
        a4,
        0,
        (int)v4);
      return a1;
    }
LABEL_61:
    std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,CharAIScript::_State>,std::priv::_Select1st<std::pair<std::string const,CharAIScript::_State>>,std::priv::_MapTraitsT<std::pair<std::string const,CharAIScript::_State>>,std::allocator<std::pair<std::string const,CharAIScript::_State>>>::_M_insert(
      a1,
      a2,
      v16,
      a4,
      (int)v16,
      0);
    return a1;
  }
LABEL_22:
  *a1 = v4;
  return a1;
}


// ===== 3d9fdc std::map<std::string,CharAIScript::_State,std::less<std::string>,std::allocator<std::pair<std::string const,CharAIScript::_State>>>::operator[]<char const*>(char const* const&) =====
char *__fastcall std::map<std::string,CharAIScript::_State>::operator[]<char const*>(char *a1, char **a2)
{
  char *v4; // r5
  const void *v5; // r1
  int v6; // r8
  int v7; // r10
  size_t v8; // r2
  int v9; // r0
  char *v10; // r3
  char *v12; // r5
  char *v13; // [sp+Ch] [bp-120h] BYREF
  char *v14; // [sp+10h] [bp-11Ch] BYREF
  std::string v15; // [sp+1Ch] [bp-110h] BYREF
  std::string v16[4]; // [sp+34h] [bp-F8h] BYREF
  std::string v17[4]; // [sp+94h] [bp-98h] BYREF
  std::string v18; // [sp+F4h] [bp-38h] BYREF
  std::string v19; // [sp+10Ch] [bp-20h] BYREF

  v4 = (char *)std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,CharAIScript::_State>,std::priv::_Select1st<std::pair<std::string const,CharAIScript::_State>>,std::priv::_MapTraitsT<std::pair<std::string const,CharAIScript::_State>>,std::allocator<std::pair<std::string const,CharAIScript::_State>>>::_M_lower_bound<char const*>(
                 a1,
                 a2);
  if ( v4 == a1 )
    goto LABEL_11;
  std::string::string(&v19, *a2);
  v5 = *((const void **)v4 + 9);
  v6 = *((_DWORD *)v4 + 8) - (_DWORD)v5;
  v7 = v19._M_finish - v19._M_start_of_storage._M_data;
  if ( v6 >= v19._M_finish - v19._M_start_of_storage._M_data )
    v8 = v19._M_finish - v19._M_start_of_storage._M_data;
  else
    v8 = *((_DWORD *)v4 + 8) - (_DWORD)v5;
  v9 = memcmp(v19._M_start_of_storage._M_data, v5, v8);
  if ( v9 )
  {
    if ( v9 >= 0 )
      goto LABEL_7;
    goto LABEL_10;
  }
  if ( v7 < v6 )
  {
LABEL_10:
    std::string::~string(&v19);
LABEL_11:
    std::string::string(&v18, *a2);
    LC_API_MEMSET_0(v17, 0, 0x60u);
    CharAIScript::_State::_State((CharAIScript::_State *)v17);
    std::string::string(&v15, &v18);
    CharAIScript::_State::_State(v16, v17);
    v13 = v4;
    std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,CharAIScript::_State>,std::priv::_Select1st<std::pair<std::string const,CharAIScript::_State>>,std::priv::_MapTraitsT<std::pair<std::string const,CharAIScript::_State>>,std::allocator<std::pair<std::string const,CharAIScript::_State>>>::insert_unique(
      &v14,
      a1,
      &v13,
      &v15);
    v12 = v14;
    CharAIScript::_State::~_State(v16);
    std::string::~string(&v15);
    CharAIScript::_State::~_State(v17);
    std::string::~string(&v18);
    v10 = v12;
    return v10 + 40;
  }
LABEL_7:
  std::string::~string(&v19);
  v10 = v4;
  return v10 + 40;
}


// ===== 3da144 CharAIScript::_RegisterState(sfc::script::lua::Arguments const&,sfc::script::lua::ReturnValues &,void *) =====
int __fastcall CharAIScript::_RegisterState(
        CharAIScript *this,
        const sfc::script::lua::Arguments *a2,
        sfc::script::lua::ReturnValues *a3,
        void *a4)
{
  int *v4; // r4
  int result; // r0
  unsigned int v7; // r7
  int v8; // r3
  unsigned int v9; // r1
  int v10; // r12
  char *v11; // r6
  char *v12; // r0
  char *v13; // r3
  std::string *v14; // r6
  unsigned int v15; // r2
  unsigned int i; // r4
  size_t v17; // r0
  size_t v18; // r0
  size_t v19; // r0
  size_t v20; // r0
  char *__f; // [sp+4h] [bp-18h]
  char *__fa; // [sp+4h] [bp-18h]
  char *__fb; // [sp+4h] [bp-18h]
  char *__fc; // [sp+4h] [bp-18h]
  char *__fd; // [sp+4h] [bp-18h]
  char *__fe; // [sp+4h] [bp-18h]
  char *__ff; // [sp+4h] [bp-18h]
  char *__fg; // [sp+4h] [bp-18h]
  char *String; // [sp+14h] [bp-8h] BYREF

  v4 = *((int **)this + 1);
  result = *v4;
  v7 = -1227133513 * ((v4[1] - *v4) >> 4);
  if ( v7 > 1 && v7 <= 5 )
  {
    v8 = 0;
    v9 = 0;
    while ( 1 )
    {
      v10 = *(_DWORD *)(result + v8 + 4);
      ++v9;
      v8 += 112;
      if ( v10 != 4 )
        break;
      if ( v9 >= v7 )
      {
        v11 = (char *)a3 + 156;
        String = (char *)sfc::script::lua::Value::getString((sfc::script::lua::Value *)result);
        v12 = std::map<std::string,CharAIScript::_State>::operator[]<char const*>(v11, &String);
        v13 = *((char **)this + 1);
        v14 = (std::string *)v12;
        result = *(_DWORD *)v13;
        v15 = -1227133513 * ((*((_DWORD *)v13 + 1) - *(_DWORD *)v13) >> 4);
        if ( v15 > 1 )
        {
          for ( i = 1; i < v15; ++i )
          {
            switch ( i )
            {
              case 1u:
                if ( v15 <= 1 )
                {
                  __ff = v13;
                  __ZSt24__stl_throw_out_of_rangePKc_veneer("vector");
                  result = *(_DWORD *)__ff;
                }
                __fg = (char *)sfc::script::lua::Value::getString((sfc::script::lua::Value *)(result + 112));
                v20 = LC_API_STRLEN_0(__fg);
                std::string::_M_assign(v14, __fg, &__fg[v20]);
                v13 = *((char **)this + 1);
                break;
              case 2u:
                if ( v15 <= 2 )
                {
                  __fd = v13;
                  __ZSt24__stl_throw_out_of_rangePKc_veneer("vector");
                  result = *(_DWORD *)__fd;
                }
                __fe = (char *)sfc::script::lua::Value::getString((sfc::script::lua::Value *)(result + 224));
                v19 = LC_API_STRLEN_0(__fe);
                std::string::_M_assign(v14 + 1, __fe, &__fe[v19]);
                v13 = *((char **)this + 1);
                break;
              case 3u:
                if ( v15 <= 3 )
                {
                  __fb = v13;
                  __ZSt24__stl_throw_out_of_rangePKc_veneer("vector");
                  result = *(_DWORD *)__fb;
                }
                __fc = (char *)sfc::script::lua::Value::getString((sfc::script::lua::Value *)(result + 336));
                v18 = LC_API_STRLEN_0(__fc);
                std::string::_M_assign(v14 + 2, __fc, &__fc[v18]);
                v13 = *((char **)this + 1);
                break;
              case 4u:
                if ( v15 <= 4 )
                {
                  __f = v13;
                  __ZSt24__stl_throw_out_of_rangePKc_veneer("vector");
                  result = *(_DWORD *)__f;
                }
                __fa = (char *)sfc::script::lua::Value::getString((sfc::script::lua::Value *)(result + 448));
                v17 = LC_API_STRLEN_0(__fa);
                std::string::_M_assign(v14 + 3, __fa, &__fa[v17]);
                v13 = *((char **)this + 1);
                break;
              default:
                break;
            }
            result = *(_DWORD *)v13;
            v15 = -1227133513 * ((*((_DWORD *)v13 + 1) - *(_DWORD *)v13) >> 4);
          }
        }
        return result;
      }
    }
  }
  return result;
}


// ===== 3da3d0 CharAISkillScript::GetCooldown(void) =====
float __fastcall CharAISkillScript::GetCooldown(CharAISkillScript *this)
{
  unsigned int v1; // r1
  unsigned int v3; // [sp+0h] [bp-8h] BYREF
  unsigned int v4; // [sp+4h] [bp-4h] BYREF

  v1 = *((_DWORD *)this + 6);
  if ( v1 == -1 || !CharTimers::TMR_TimeLeft((CharTimers *)(*((_DWORD *)this + 1) + 948), v1, &v4, &v3) )
    return 0.0;
  else
    return 1.0 - (float)((float)v4 / (float)v3);
}


// ===== 3da43c sfc::script::lua::ReturnValues::operator[](uint) =====
int __fastcall sfc::script::lua::ReturnValues::operator[](int a1, unsigned int a2)
{
  int *v2; // r4
  int v4; // r2

  v2 = *(int **)(a1 + 36);
  v4 = *v2;
  if ( a2 >= -1227133513 * ((v2[1] - *v2) >> 4) )
  {
    __ZSt24__stl_throw_out_of_rangePKc_veneer("vector");
    v4 = *v2;
  }
  return v4 + 112 * a2;
}


// ===== 3da494 CharAISkillScript::SpawnProjectile(uint,float) =====
int __fastcall CharAISkillScript::SpawnProjectile(GameObject **this, unsigned int a2, float a3)
{
  if ( Arrays::ProjectileTable::size > a2 )
    return ProjectileManager::Spawn(
             (ProjectileManager *)&Singleton<ProjectileManager>::s_inst,
             a2,
             *(this + 1),
             nullptr,
             (int (*)(Projectile *, void *))CharAISkillScript::_ProjectileCheck,
             (int (*)(Projectile *, void *))CharAISkillScript::_ProjectileHit,
             this,
             a3);
  else
    return 0;
}


// ===== 3da510 CharAISkillScript::SpawnProjectile(uint,bool) =====
int __fastcall CharAISkillScript::SpawnProjectile(GameObject **this, unsigned int a2, bool a3)
{
  if ( Arrays::ProjectileTable::size > a2 )
    return ProjectileManager::Spawn(
             (ProjectileManager *)&Singleton<ProjectileManager>::s_inst,
             a2,
             *(this + 1),
             nullptr,
             (int (*)(Projectile *, void *))CharAISkillScript::_ProjectileCheck,
             (int (*)(Projectile *, void *))CharAISkillScript::_ProjectileHit,
             this,
             a3);
  else
    return 0;
}


// ===== 3da58c `global constructor keyed to'.._.._sources_Game_Objects_Characters_AI_CharAISkillScript.cpp =====
int `global constructor keyed to'.._.._sources_Game_Objects_Characters_AI_CharAISkillScript.cpp()
{
  int result; // r0

  result = `guard variable for'Singleton<PlayerStatManager>::s_inst;
  dword_9A2C04 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9A2C00 = 1056964608;
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


// ===== 3da6bc std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block(uint) [clone] =====
void std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block()
{
  ;
}


// ===== 3da6c0 CharAISkillScript::OnPostSkill(void) =====
void __fastcall CharAISkillScript::OnPostSkill(CharAISkillScript *this)
{
  LuaScript *v2; // r0
  int v3; // r2
  _BYTE v4[8]; // [sp+4h] [bp-30h] BYREF
  int v5; // [sp+Ch] [bp-28h]
  int v6; // [sp+28h] [bp-Ch]

  sfc::script::lua::ReturnValues::ReturnValues((sfc::script::lua::ReturnValues *)v4);
  v2 = *(LuaScript **)(*((_DWORD *)this + 1) + 996);
  if ( v2
    && (LuaScript::Call(
          v2,
          (glitch::core *)"SetSkill",
          (CharAISkillScript *)((char *)this + 12),
          (sfc::script::lua::ReturnValues *)v4),
        !v5) )
  {
    v3 = *(_DWORD *)(v6 + 4);
    if ( *(_DWORD *)v6 != v3 )
      std::vector<sfc::script::lua::Value>::_M_erase(v6, *(void (__fastcall ****)(_DWORD))v6, v3);
    LuaScript::Call(
      *(LuaScript **)(*((_DWORD *)this + 1) + 996),
      (glitch::core *)"OnPostSkill",
      (sfc::script::lua::ReturnValues *)v4);
    sfc::script::lua::ReturnValues::~ReturnValues((sfc::script::lua::ReturnValues *)v4);
  }
  else
  {
    sfc::script::lua::ReturnValues::~ReturnValues((sfc::script::lua::ReturnValues *)v4);
  }
}


// ===== 3da794 CharAISkillScript::OnSkill(void) =====
int __fastcall CharAISkillScript::OnSkill(CharAISkillScript *this)
{
  LuaScript *v2; // r0
  int Bool; // r6
  sfc::script::lua::Value *v5; // r0
  _BYTE v6[8]; // [sp+4h] [bp-30h] BYREF
  int v7; // [sp+Ch] [bp-28h]
  _DWORD *v8; // [sp+28h] [bp-Ch]

  sfc::script::lua::ReturnValues::ReturnValues((sfc::script::lua::ReturnValues *)v6);
  v2 = *(LuaScript **)(*((_DWORD *)this + 1) + 996);
  if ( !v2 )
    goto LABEL_3;
  LuaScript::Call(
    v2,
    (glitch::core *)"SetSkill",
    (CharAISkillScript *)((char *)this + 12),
    (sfc::script::lua::ReturnValues *)v6);
  if ( v7 )
    goto LABEL_3;
  if ( *v8 != v8[1] )
    std::vector<sfc::script::lua::Value>::_M_erase(v8, *v8);
  LuaScript::Call(
    *(LuaScript **)(*((_DWORD *)this + 1) + 996),
    (glitch::core *)"OnSkill",
    (sfc::script::lua::ReturnValues *)v6);
  if ( v7 )
  {
LABEL_3:
    Bool = 0;
  }
  else if ( 1227133513 * ((v8[1] - *v8) >> 4) )
  {
    v5 = (sfc::script::lua::Value *)sfc::script::lua::ReturnValues::operator[](v6);
    Bool = sfc::script::lua::Value::getBool(v5);
  }
  else
  {
    Bool = 1;
  }
  sfc::script::lua::ReturnValues::~ReturnValues((sfc::script::lua::ReturnValues *)v6);
  return Bool;
}


// ===== 3da8b8 CharAISkillScript::OnPreSkill(void) =====
bool __fastcall CharAISkillScript::OnPreSkill(CharAISkillScript *this)
{
  LuaScript *v2; // r0
  _BOOL4 Bool; // r6
  int v5; // r2
  sfc::script::lua::Value *v6; // r0
  _BYTE v7[8]; // [sp+4h] [bp-30h] BYREF
  int v8; // [sp+Ch] [bp-28h]
  int v9; // [sp+28h] [bp-Ch]

  sfc::script::lua::ReturnValues::ReturnValues((sfc::script::lua::ReturnValues *)v7);
  v2 = *(LuaScript **)(*((_DWORD *)this + 1) + 996);
  if ( !v2 )
    goto LABEL_3;
  LuaScript::Call(
    v2,
    (glitch::core *)"SetSkill",
    (CharAISkillScript *)((char *)this + 12),
    (sfc::script::lua::ReturnValues *)v7);
  if ( v8 )
    goto LABEL_3;
  v5 = *(_DWORD *)(v9 + 4);
  if ( *(_DWORD *)v9 != v5 )
    std::vector<sfc::script::lua::Value>::_M_erase(v9, *(void (__fastcall ****)(_DWORD))v9, v5);
  LuaScript::Call(
    *(LuaScript **)(*((_DWORD *)this + 1) + 996),
    (glitch::core *)"OnPreSkill",
    (sfc::script::lua::ReturnValues *)v7);
  if ( v8 )
  {
LABEL_3:
    Bool = 0;
  }
  else if ( 1227133513 * ((*(_DWORD *)(v9 + 4) - *(_DWORD *)v9) >> 4) )
  {
    v6 = (sfc::script::lua::Value *)sfc::script::lua::ReturnValues::operator[]((int)v7, 0);
    Bool = sfc::script::lua::Value::getBool(v6);
  }
  else
  {
    Bool = 1;
  }
  sfc::script::lua::ReturnValues::~ReturnValues((sfc::script::lua::ReturnValues *)v7);
  return Bool;
}


// ===== 3da9dc CharAISkillScript::OnSkillCheck_Usable(void) =====
bool __fastcall CharAISkillScript::OnSkillCheck_Usable(CharAISkillScript *this)
{
  LuaScript *v2; // r0
  _BOOL4 Bool; // r6
  int v5; // r2
  sfc::script::lua::Value *v6; // r0
  _BYTE v7[8]; // [sp+4h] [bp-30h] BYREF
  int v8; // [sp+Ch] [bp-28h]
  int v9; // [sp+28h] [bp-Ch]

  sfc::script::lua::ReturnValues::ReturnValues((sfc::script::lua::ReturnValues *)v7);
  v2 = *(LuaScript **)(*((_DWORD *)this + 1) + 996);
  if ( !v2 )
    goto LABEL_3;
  LuaScript::Call(
    v2,
    (glitch::core *)"SetSkill",
    (CharAISkillScript *)((char *)this + 12),
    (sfc::script::lua::ReturnValues *)v7);
  if ( v8 )
    goto LABEL_3;
  v5 = *(_DWORD *)(v9 + 4);
  if ( *(_DWORD *)v9 != v5 )
    std::vector<sfc::script::lua::Value>::_M_erase(v9, *(void (__fastcall ****)(_DWORD))v9, v5);
  LuaScript::Call(
    *(LuaScript **)(*((_DWORD *)this + 1) + 996),
    (glitch::core *)"OnSkillCheck",
    (sfc::script::lua::ReturnValues *)v7);
  if ( v8 || !(1227133513 * ((*(_DWORD *)(v9 + 4) - *(_DWORD *)v9) >> 4)) )
  {
LABEL_3:
    Bool = 0;
  }
  else
  {
    v6 = (sfc::script::lua::Value *)sfc::script::lua::ReturnValues::operator[]((int)v7, 0);
    Bool = sfc::script::lua::Value::getBool(v6);
  }
  sfc::script::lua::ReturnValues::~ReturnValues((sfc::script::lua::ReturnValues *)v7);
  return Bool;
}


// ===== 3daafc CharAISkillScript::OnSkillCleanUp(void) =====
void __fastcall CharAISkillScript::OnSkillCleanUp(CharAISkillScript *this)
{
  LuaScript *v2; // r0
  _BYTE v3[8]; // [sp+4h] [bp-30h] BYREF
  int v4; // [sp+Ch] [bp-28h]
  _DWORD *v5; // [sp+28h] [bp-Ch]

  sfc::script::lua::ReturnValues::ReturnValues((sfc::script::lua::ReturnValues *)v3);
  v2 = *(LuaScript **)(*((_DWORD *)this + 1) + 996);
  if ( v2
    && (LuaScript::Call(
          v2,
          (glitch::core *)"SetSkill",
          (CharAISkillScript *)((char *)this + 12),
          (sfc::script::lua::ReturnValues *)v3),
        !v4) )
  {
    if ( *v5 != v5[1] )
      std::vector<sfc::script::lua::Value>::_M_erase();
    LuaScript::Call(
      *(LuaScript **)(*((_DWORD *)this + 1) + 996),
      (glitch::core *)"OnSkillCleanUp",
      (sfc::script::lua::ReturnValues *)v3);
    sfc::script::lua::ReturnValues::~ReturnValues((sfc::script::lua::ReturnValues *)v3);
  }
  else
  {
    sfc::script::lua::ReturnValues::~ReturnValues((sfc::script::lua::ReturnValues *)v3);
  }
}


// ===== 3dabd0 CharAISkillScript::OnSkillUpdate(void) =====
void __fastcall CharAISkillScript::OnSkillUpdate(CharAISkillScript *this)
{
  LuaScript *v2; // r0
  _BYTE v3[8]; // [sp+4h] [bp-30h] BYREF
  int v4; // [sp+Ch] [bp-28h]
  _DWORD *v5; // [sp+28h] [bp-Ch]

  sfc::script::lua::ReturnValues::ReturnValues((sfc::script::lua::ReturnValues *)v3);
  v2 = *(LuaScript **)(*((_DWORD *)this + 1) + 996);
  if ( v2
    && (LuaScript::Call(
          v2,
          (glitch::core *)"SetSkill",
          (CharAISkillScript *)((char *)this + 12),
          (sfc::script::lua::ReturnValues *)v3),
        !v4) )
  {
    if ( *v5 != v5[1] )
      std::vector<sfc::script::lua::Value>::_M_erase();
    LuaScript::Call(
      *(LuaScript **)(*((_DWORD *)this + 1) + 996),
      (glitch::core *)"OnSkillUpdate",
      (sfc::script::lua::ReturnValues *)v3);
    sfc::script::lua::ReturnValues::~ReturnValues((sfc::script::lua::ReturnValues *)v3);
  }
  else
  {
    sfc::script::lua::ReturnValues::~ReturnValues((sfc::script::lua::ReturnValues *)v3);
  }
}


// ===== 3daca4 std::priv::_String_base<wchar_t,std::allocator<wchar_t>>::_M_allocate_block(uint) [clone] =====
void std::priv::_String_base<wchar_t,std::allocator<wchar_t>>::_M_allocate_block()
{
  ;
}


// ===== 3daca8 CharAISkillScript::GetInfo(uint,float *) =====
void __fastcall CharAISkillScript::GetInfo(CharAISkillScript *this, int a2, float *a3)
{
  LuaScript *v6; // r0
  int v7; // r2
  _DWORD *v8; // r2
  sfc::script::lua::Value *v9; // r0
  float v10; // r0
  _BYTE v11[8]; // [sp+0h] [bp-40h] BYREF
  unsigned int v12; // [sp+8h] [bp-38h] BYREF
  unsigned int v13; // [sp+Ch] [bp-34h] BYREF
  _BYTE v14[8]; // [sp+14h] [bp-2Ch] BYREF
  int v15; // [sp+1Ch] [bp-24h]
  _DWORD *v16; // [sp+38h] [bp-8h]

  sfc::script::lua::Arguments::Arguments((sfc::script::lua::Arguments *)v11);
  sfc::script::lua::ReturnValues::ReturnValues((sfc::script::lua::ReturnValues *)v14);
  v6 = *(LuaScript **)(*((_DWORD *)this + 1) + 996);
  if ( v6 )
  {
    LuaScript::Call(
      v6,
      (glitch::core *)"SetSkill",
      (CharAISkillScript *)((char *)this + 12),
      (sfc::script::lua::ReturnValues *)v14);
    if ( !v15 )
    {
      sfc::script::lua::Arguments::pushInteger((sfc::script::lua::Arguments *)v11, a2);
      v7 = v16[1];
      if ( *v16 != v7 )
        std::vector<sfc::script::lua::Value>::_M_erase((int)v16, (void (__fastcall ***)(_DWORD))*v16, v7);
      LuaScript::Call(
        *(LuaScript **)(*((_DWORD *)this + 1) + 996),
        (glitch::core *)"OnSkillInfo",
        (const sfc::script::lua::Arguments *)v11,
        (sfc::script::lua::ReturnValues *)v14);
      if ( !v15 )
      {
        if ( a3 )
        {
          v8 = v16;
          *a3 = 0.0;
          if ( 1227133513 * ((v8[1] - *v8) >> 4) )
          {
            if ( *(_DWORD *)(sfc::script::lua::ReturnValues::operator[]((int)v14, 0) + 4) == 3 )
            {
              v9 = (sfc::script::lua::Value *)sfc::script::lua::ReturnValues::operator[]((int)v14, 0);
              v10 = COERCE_FLOAT(sfc::script::lua::Value::getNumber(v9));
              if ( CharTimers::TMR_TimeLeft((CharTimers *)(*((_DWORD *)this + 1) + 948), (int)v10, &v13, &v12) )
                *a3 = 1.0 - (float)((float)v13 / (float)v12);
            }
          }
        }
      }
    }
  }
  else if ( a3 )
  {
    *a3 = 0.0;
  }
  sfc::script::lua::ReturnValues::~ReturnValues((sfc::script::lua::ReturnValues *)v14);
  sfc::script::lua::Arguments::~Arguments((sfc::script::lua::Arguments *)v11);
}


// ===== 3dae7c CharAISkillScript::_ProjectileHit(Projectile *,void *) =====
int __fastcall CharAISkillScript::_ProjectileHit(Projectile *projectile, CharAISkillScript *skill_context)
{
  LuaScript *v4; // r0
  int v5; // r7
  int v7; // r2
  sfc::script::lua::Value *v8; // r0
  _BYTE v9[8]; // [sp+0h] [bp-3Ch] BYREF
  _BYTE v10[8]; // [sp+Ch] [bp-30h] BYREF
  unsigned int v11; // [sp+14h] [bp-28h]
  int v12; // [sp+30h] [bp-Ch]

  sfc::script::lua::Arguments::Arguments((sfc::script::lua::Arguments *)v9);
  sfc::script::lua::ReturnValues::ReturnValues((sfc::script::lua::ReturnValues *)v10);
  v4 = *(LuaScript **)(*((_DWORD *)skill_context + 1) + 996);
  if ( !v4 )
    goto LABEL_11;
  LuaScript::Call(
    v4,
    (glitch::core *)"SetSkill",
    (CharAISkillScript *)((char *)skill_context + 12),
    (sfc::script::lua::ReturnValues *)v10);
  if ( v11 )
    goto LABEL_3;
  sfc::script::lua::Arguments::pushUserData(
    (sfc::script::lua::Arguments *)v9,
    *((sfc::script::lua::UserData **)projectile + 243));
  sfc::script::lua::Arguments::pushPointer((sfc::script::lua::Arguments *)v9, projectile);
  v7 = *(_DWORD *)(v12 + 4);
  if ( *(_DWORD *)v12 != v7 )
    std::vector<sfc::script::lua::Value>::_M_erase(v12, *(void (__fastcall ****)(_DWORD))v12, v7);
  LuaScript::Call(
    *(LuaScript **)(*((_DWORD *)skill_context + 1) + 996),
    (glitch::core *)"OnDelayedSkill",
    (const sfc::script::lua::Arguments *)v9,
    (sfc::script::lua::ReturnValues *)v10);
  if ( v11
    || !(1227133513 * ((*(_DWORD *)(v12 + 4) - *(_DWORD *)v12) >> 4))
    || *(_DWORD *)(sfc::script::lua::ReturnValues::operator[]((int)v10, v11) + 4) != 1
    || (v8 = (sfc::script::lua::Value *)sfc::script::lua::ReturnValues::operator[]((int)v10, 0),
        sfc::script::lua::Value::getBool(v8)) )
  {
LABEL_3:
    v5 = 0;
  }
  else
  {
LABEL_11:
    v5 = 1;
  }
  sfc::script::lua::ReturnValues::~ReturnValues((sfc::script::lua::ReturnValues *)v10);
  sfc::script::lua::Arguments::~Arguments((sfc::script::lua::Arguments *)v9);
  return v5;
}


// ===== 3daff4 CharAISkillScript::_ProjectileCheck(Projectile *,void *) =====
int __fastcall CharAISkillScript::_ProjectileCheck(Projectile *projectile, CharAISkillScript *skill_context)
{
  LuaScript *v4; // r0
  int v5; // r7
  int v7; // r2
  sfc::script::lua::Value *v8; // r0
  _BYTE v9[8]; // [sp+0h] [bp-3Ch] BYREF
  _BYTE v10[8]; // [sp+Ch] [bp-30h] BYREF
  unsigned int v11; // [sp+14h] [bp-28h]
  int v12; // [sp+30h] [bp-Ch]

  sfc::script::lua::Arguments::Arguments((sfc::script::lua::Arguments *)v9);
  sfc::script::lua::ReturnValues::ReturnValues((sfc::script::lua::ReturnValues *)v10);
  v4 = *(LuaScript **)(*((_DWORD *)skill_context + 1) + 996);
  if ( !v4 )
    goto LABEL_11;
  LuaScript::Call(
    v4,
    (glitch::core *)"SetSkill",
    (CharAISkillScript *)((char *)skill_context + 12),
    (sfc::script::lua::ReturnValues *)v10);
  if ( v11 )
    goto LABEL_3;
  sfc::script::lua::Arguments::pushUserData(
    (sfc::script::lua::Arguments *)v9,
    *((sfc::script::lua::UserData **)projectile + 243));
  sfc::script::lua::Arguments::pushPointer((sfc::script::lua::Arguments *)v9, projectile);
  v7 = *(_DWORD *)(v12 + 4);
  if ( *(_DWORD *)v12 != v7 )
    std::vector<sfc::script::lua::Value>::_M_erase(v12, *(void (__fastcall ****)(_DWORD))v12, v7);
  LuaScript::Call(
    *(LuaScript **)(*((_DWORD *)skill_context + 1) + 996),
    (glitch::core *)"OnDelayedSkillCheck",
    (const sfc::script::lua::Arguments *)v9,
    (sfc::script::lua::ReturnValues *)v10);
  if ( v11
    || !(1227133513 * ((*(_DWORD *)(v12 + 4) - *(_DWORD *)v12) >> 4))
    || *(_DWORD *)(sfc::script::lua::ReturnValues::operator[]((int)v10, v11) + 4) != 1
    || (v8 = (sfc::script::lua::Value *)sfc::script::lua::ReturnValues::operator[]((int)v10, 0),
        sfc::script::lua::Value::getBool(v8)) )
  {
LABEL_3:
    v5 = 0;
  }
  else
  {
LABEL_11:
    v5 = 1;
  }
  sfc::script::lua::ReturnValues::~ReturnValues((sfc::script::lua::ReturnValues *)v10);
  sfc::script::lua::Arguments::~Arguments((sfc::script::lua::Arguments *)v9);
  return v5;
}


// ===== 3db16c CharAISkillScript::OnSkillCheck_Active(void) =====
bool __fastcall CharAISkillScript::OnSkillCheck_Active(CharAISkillScript *this)
{
  LuaScript *v2; // r0
  _BOOL4 Bool; // r6
  int v5; // r2
  _BYTE v6[8]; // [sp+4h] [bp-30h] BYREF
  int v7; // [sp+Ch] [bp-28h]
  _DWORD *v8; // [sp+28h] [bp-Ch]

  sfc::script::lua::ReturnValues::ReturnValues((sfc::script::lua::ReturnValues *)v6);
  v2 = *(LuaScript **)(*((_DWORD *)this + 1) + 996);
  if ( !v2 )
    goto LABEL_3;
  LuaScript::Call(
    v2,
    (glitch::core *)"SetSkill",
    (CharAISkillScript *)((char *)this + 12),
    (sfc::script::lua::ReturnValues *)v6);
  if ( v7 )
    goto LABEL_3;
  v5 = v8[1];
  if ( *v8 != v5 )
    std::vector<sfc::script::lua::Value>::_M_erase((int)v8, (void (__fastcall ***)(_DWORD))*v8, v5);
  LuaScript::Call(
    *(LuaScript **)(*((_DWORD *)this + 1) + 996),
    (glitch::core *)"OnSkillCheck",
    (sfc::script::lua::ReturnValues *)v6);
  if ( v7 || (unsigned int)(-1227133513 * ((v8[1] - *v8) >> 4)) <= 1 )
LABEL_3:
    Bool = 0;
  else
    Bool = sfc::script::lua::Value::getBool((sfc::script::lua::Value *)(*v8 + 112));
  sfc::script::lua::ReturnValues::~ReturnValues((sfc::script::lua::ReturnValues *)v6);
  return Bool;
}


// ===== 3db288 CharTimers::_Timer::GetID(void) =====
int __fastcall CharTimers::_Timer::GetID(CharTimers::_Timer *this)
{
  return *((_DWORD *)this + 1);
}


// ===== 3db290 CharTimers::_Timer::GetRef(void) =====
int __fastcall CharTimers::_Timer::GetRef(CharTimers::_Timer *this)
{
  return *((_DWORD *)this + 7);
}


// ===== 3db298 CharTimers::TMR_Pause(uint) =====
int __fastcall CharTimers::TMR_Pause(int this, unsigned int a2)
{
  int v2; // r3

  v2 = *(_DWORD *)(this + 8);
  if ( a2 < (*(_DWORD *)(this + 12) - v2) >> 5 )
    *(_BYTE *)(v2 + 32 * a2 + 21) = 1;
  return this;
}


// ===== 3db2b8 CharTimers::TMR_Resume(uint) =====
int __fastcall CharTimers::TMR_Resume(int this, unsigned int a2)
{
  int v2; // r3

  v2 = *(_DWORD *)(this + 8);
  if ( a2 < (*(_DWORD *)(this + 12) - v2) >> 5 )
    *(_BYTE *)(v2 + 32 * a2 + 21) = 0;
  return this;
}


// ===== 3db2d8 CharTimers::TMR_Stop(uint) =====
int __fastcall CharTimers::TMR_Stop(int this, unsigned int a2)
{
  int v2; // r3

  v2 = *(_DWORD *)(this + 8);
  if ( a2 < (*(_DWORD *)(this + 12) - v2) >> 5 )
    *(_BYTE *)(v2 + 32 * a2 + 20) = 0;
  return this;
}


// ===== 3db2f8 CharTimers::TMR_StopAll(void) =====
int __fastcall CharTimers::TMR_StopAll(int this)
{
  int v1; // r2
  int v2; // r1
  int v3; // r3
  int v4; // r2

  v1 = *(_DWORD *)(this + 8);
  v2 = (*(_DWORD *)(this + 12) - v1) >> 5;
  if ( v2 )
  {
    v3 = 1;
    for ( *(_BYTE *)(v1 + 20) = 0; v3 != v2; *(_BYTE *)(v4 + 20) = 0 )
      v4 = *(_DWORD *)(this + 8) + 32 * v3++;
  }
  return this;
}


// ===== 3db344 CharTimers::TMR_TimeLeft(uint,uint &,uint &) =====
int __fastcall CharTimers::TMR_TimeLeft(CharTimers *this, unsigned int a2, unsigned int *a3, unsigned int *a4)
{
  int v4; // r12
  int v5; // r0
  int v6; // r1

  v4 = *((_DWORD *)this + 3);
  v5 = *((_DWORD *)this + 2);
  if ( a2 >= (v4 - v5) >> 5 )
    return 0;
  v6 = v5 + 32 * a2;
  if ( !*(_BYTE *)(v6 + 20) )
    return 0;
  *a3 = *(_DWORD *)(v6 + 16);
  *a4 = *(_DWORD *)(v6 + 12);
  return 1;
}


// ===== 3db388 std::vector<CharTimers::_Timer,std::allocator<CharTimers::_Timer>>::~vector() =====
void **__fastcall std::vector<CharTimers::_Timer>::~vector(void **a1)
{
  char *v1; // r2
  char *v2; // r3
  _BYTE *v4; // r0
  size_t v5; // r1

  v1 = (char *)*a1;
  v2 = (char *)a1[1];
  if ( v2 != *a1 )
  {
    do
    {
      *((_DWORD *)v2 - 8) = off_966948;
      v2 -= 32;
    }
    while ( v1 != v2 );
  }
  v4 = *a1;
  if ( !*a1 )
    return a1;
  v5 = ((_BYTE *)a1[2] - v4) & 0xFFFFFFE0;
  if ( v5 <= 0x80 )
  {
    __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v4, v5);
    return a1;
  }
  CustomFree(v4);
  return a1;
}


// ===== 3db3fc CharTimers::~CharTimers() =====
void __fastcall CharTimers::~CharTimers(void **this)
{
  *this = off_966968;
  std::vector<CharTimers::_Timer>::~vector(this + 2);
}


// ===== 3db430 CharTimers::~CharTimers() =====
void __fastcall CharTimers::~CharTimers(void **this)
{
  *this = off_966968;
  std::vector<CharTimers::_Timer>::~vector(this + 2);
}


// ===== 3db464 CharTimers::~CharTimers() =====
void __fastcall CharTimers::~CharTimers(void **this)
{
  CharTimers::~CharTimers(this);
  CustomFree(this);
}


// ===== 3db480 CharTimers::SetCharacter(Character *) =====
int __fastcall CharTimers::SetCharacter(int this, Character *a2)
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
               "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Objects\\Characters\\Timers\\CharTimers.cpp",
               61);
    }
  }
  *(_DWORD *)(v3 + 4) = a2;
  return this;
}


// ===== 3db514 `global constructor keyed to'.._.._sources_Game_Objects_Characters_Timers_CharTimers.cpp =====
int `global constructor keyed to'.._.._sources_Game_Objects_Characters_Timers_CharTimers.cpp()
{
  int result; // r0

  result = `guard variable for'Singleton<PlayerStatManager>::s_inst;
  dword_9A2C10 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9A2C0C = 1056964608;
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


// ===== 3db5f0 std::string::_M_range_initialize(char const*,char const*) [clone] =====
char *__fastcall std::string::_M_range_initialize(std::string *this, const char *a2, const char *a3)
{
  size_t v5; // r4
  char *result; // r0

  v5 = a2 - "isTracingCharTimers";
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block(this, a2 - "isTracingCharTimers" + 1);
  result = this->_M_start_of_storage._M_data;
  if ( a2 != "isTracingCharTimers" )
    result = (char *)memcpy(result, "isTracingCharTimers", v5) + v5;
  this->_M_finish = result;
  *result = 0;
  return result;
}


// ===== 3db640 CharTimers::Update(void) =====
int __fastcall CharTimers::Update(int this)
{
  int v1; // r10
  int v2; // r6
  int v3; // r4
  int v4; // r7
  int v5; // r4
  int v6; // r3
  unsigned int v7; // r2
  unsigned int v8; // r3
  int v9; // r1
  bool v10; // cc
  unsigned int v11; // r3
  const char *v12; // r2
  const char *v13; // r2
  int v14; // [sp+8h] [bp-4Ch]
  int v15; // [sp+14h] [bp-40h]
  std::string v16; // [sp+1Ch] [bp-38h] BYREF
  std::string v17; // [sp+34h] [bp-20h] BYREF

  v1 = (unsigned __int8)byte_9A600C;
  v2 = this;
  if ( !byte_9A600C )
  {
    this = Application::GetDt((Application *)&Singleton<Application>::s_inst);
    v15 = this;
    v3 = *(_DWORD *)(v2 + 8);
    v14 = (*(_DWORD *)(v2 + 12) - v3) >> 5;
    if ( v14 )
    {
      while ( 1 )
      {
        v4 = 32 * v1;
        v5 = v3 + 32 * v1;
        v6 = *(unsigned __int8 *)(v5 + 20);
        if ( *(_BYTE *)(v5 + 20) && !*(_BYTE *)(v5 + 21) )
        {
          *(_DWORD *)(v5 + 16) += v15;
          while ( v6 )
          {
            v7 = *(_DWORD *)(v5 + 16);
            v8 = *(_DWORD *)(v5 + 12);
            if ( v7 < v8 || !v8 )
              break;
            v9 = *(_DWORD *)(v5 + 8);
            v10 = v9 <= 0;
            if ( v9 )
            {
              v11 = v7 - v8;
              if ( v9 > 0 )
                --v9;
              *(_DWORD *)(v5 + 16) = v11;
              if ( !v10 )
                *(_DWORD *)(v5 + 8) = v9;
            }
            else
            {
              *(_BYTE *)(v5 + 20) = 0;
            }
            if ( *(_DWORD *)(v5 + 24) == -1 )
            {
              DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
              v17._M_finish = (char *)&v17;
              v17._M_start_of_storage._M_data = (char *)&v17;
              std::string::_M_range_initialize(&v17, "", v13);
              DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v17);
              if ( (std::string *)v17._M_start_of_storage._M_data != &v17 && v17._M_start_of_storage._M_data )
              {
                if ( (unsigned int)(v17._M_buffers._M_end_of_storage - v17._M_start_of_storage._M_data) > 0x80 )
                  CustomFree(v17._M_start_of_storage._M_data);
                else
                  __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(
                    v17._M_start_of_storage._M_data,
                    v17._M_buffers._M_end_of_storage - v17._M_start_of_storage._M_data);
              }
              this = Character::RaiseEvent(*(Character **)(v2 + 4), 41, (char *)(*(_DWORD *)(v2 + 8) + v4));
              v6 = *(unsigned __int8 *)(v5 + 20);
            }
            else
            {
              DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
              v16._M_finish = (char *)&v16;
              v16._M_start_of_storage._M_data = (char *)&v16;
              std::string::_M_range_initialize(&v16, "", v12);
              DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v16);
              if ( (std::string *)v16._M_start_of_storage._M_data != &v16 && v16._M_start_of_storage._M_data )
              {
                if ( (unsigned int)(v16._M_buffers._M_end_of_storage - v16._M_start_of_storage._M_data) > 0x80 )
                  CustomFree(v16._M_start_of_storage._M_data);
                else
                  __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(
                    v16._M_start_of_storage._M_data,
                    v16._M_buffers._M_end_of_storage - v16._M_start_of_storage._M_data);
              }
              this = Character::RaiseEvent(
                       *(Character **)(v2 + 4),
                       *(_DWORD *)(v5 + 24),
                       (char *)(*(_DWORD *)(v2 + 8) + v4));
              v6 = *(unsigned __int8 *)(v5 + 20);
            }
          }
        }
        if ( ++v1 == v14 )
          break;
        v3 = *(_DWORD *)(v2 + 8);
      }
    }
  }
  return this;
}


// ===== 3db8a4 std::vector<CharTimers::_Timer,std::allocator<CharTimers::_Timer>>::_M_clear(void) =====
void __fastcall std::vector<CharTimers::_Timer>::_M_clear(void **a1)
{
  char *v1; // r2
  char *v2; // r3
  size_t v3; // r1

  v1 = (char *)*a1;
  v2 = (char *)a1[1];
  if ( v2 != *a1 )
  {
    do
    {
      *((_DWORD *)v2 - 8) = off_966948;
      v2 -= 32;
    }
    while ( v1 != v2 );
    v2 = (char *)*a1;
  }
  if ( v2 )
  {
    v3 = ((_BYTE *)a1[2] - v2) & 0xFFFFFFE0;
    if ( v3 > 0x80 )
      CustomFree(v2);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v2, v3);
  }
}


// ===== 3db908 std::vector<CharTimers::_Timer,std::allocator<CharTimers::_Timer>>::_M_clear_after_move(void) =====
void __fastcall std::vector<CharTimers::_Timer>::_M_clear_after_move(void **a1)
{
  char *v1; // r2
  char *v2; // r3
  size_t v3; // r1

  v1 = (char *)*a1;
  v2 = (char *)a1[1];
  if ( v2 != *a1 )
  {
    do
    {
      *((_DWORD *)v2 - 8) = off_966948;
      v2 -= 32;
    }
    while ( v1 != v2 );
    v2 = (char *)*a1;
  }
  if ( v2 )
  {
    v3 = ((_BYTE *)a1[2] - v2) & 0xFFFFFFE0;
    if ( v3 > 0x80 )
      CustomFree(v2);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v2, v3);
  }
}


// ===== 3db96c std::allocator<CharTimers::_Timer>::_M_allocate(uint,uint &) =====
void *__fastcall std::allocator<CharTimers::_Timer>::_M_allocate(int a1, unsigned int a2, size_t *a3)
{
  void *result; // r0
  size_t __n; // [sp+4h] [bp-4h] BYREF

  if ( a2 > 0x7FFFFFF )
  {
    puts("out of memory\n");
    exit(1);
  }
  if ( !a2 )
    return nullptr;
  __n = 32 * a2;
  if ( 32 * a2 > 0x80 )
    result = CustomAlloc(32 * a2);
  else
    result = __ZNSt12__node_alloc11_M_allocateERj_veneer(&__n);
  *a3 = __n >> 5;
  return result;
}


// ===== 3db9dc std::vector<CharTimers::_Timer,std::allocator<CharTimers::_Timer>>::_M_allocate_and_copy<CharTimers::_Timer*>(uint &,CharTimers::_Timer*,CharTimers::_Timer*) =====
_DWORD *__fastcall std::vector<CharTimers::_Timer>::_M_allocate_and_copy<CharTimers::_Timer*>(
        int a1,
        unsigned int *a2,
        int a3,
        int a4)
{
  _DWORD *result; // r0
  int v7; // r5
  _DWORD *i; // r3
  int v9; // r2

  result = std::allocator<CharTimers::_Timer>::_M_allocate(a1 + 8, *a2, a2);
  v7 = (a4 - a3) >> 5;
  if ( v7 > 0 )
  {
    for ( i = result; ; i += 8 )
    {
      *i = off_966948;
      --v7;
      i[1] = *(_DWORD *)(a3 + 4);
      i[2] = *(_DWORD *)(a3 + 8);
      i[3] = *(_DWORD *)(a3 + 12);
      i[4] = *(_DWORD *)(a3 + 16);
      *((_BYTE *)i + 20) = *(_BYTE *)(a3 + 20);
      *((_BYTE *)i + 21) = *(_BYTE *)(a3 + 21);
      i[6] = *(_DWORD *)(a3 + 24);
      v9 = *(_DWORD *)(a3 + 28);
      a3 += 32;
      i[7] = v9;
      if ( !v7 )
        break;
    }
  }
  return result;
}


// ===== 3dba84 std::vector<CharTimers::_Timer,std::allocator<CharTimers::_Timer>>::reserve(uint) [clone] =====
void __fastcall std::vector<CharTimers::_Timer>::reserve(int a1)
{
  int v1; // r2
  unsigned int v2; // r3
  int v4; // r3
  int v5; // r5
  char *v6; // r6
  unsigned int v7; // r3
  unsigned int v8; // [sp+4h] [bp-4h] BYREF

  v1 = *(_DWORD *)a1;
  v2 = (*(_DWORD *)(a1 + 8) - *(_DWORD *)a1) >> 5;
  v8 = 20;
  if ( v2 <= 0x13 )
  {
    v4 = *(_DWORD *)(a1 + 4);
    v5 = (v4 - v1) >> 5;
    if ( v1 )
    {
      v6 = (char *)std::vector<CharTimers::_Timer>::_M_allocate_and_copy<CharTimers::_Timer*>(a1, &v8, v1, v4);
      std::vector<CharTimers::_Timer>::_M_clear((void **)a1);
    }
    else
    {
      v6 = (char *)std::allocator<CharTimers::_Timer>::_M_allocate(a1 + 8, 0x14u, &v8);
    }
    v7 = v8;
    *(_DWORD *)(a1 + 4) = &v6[32 * v5];
    *(_DWORD *)(a1 + 8) = &v6[32 * v7];
    *(_DWORD *)a1 = v6;
  }
}


// ===== 3dbb0c CharTimers::CharTimers(void) =====
void __fastcall CharTimers::CharTimers(CharTimers *this)
{
  *((_DWORD *)this + 4) = 0;
  *(_DWORD *)this = off_966968;
  *((_DWORD *)this + 1) = 0;
  *((_DWORD *)this + 2) = 0;
  *((_DWORD *)this + 3) = 0;
  std::vector<CharTimers::_Timer>::reserve((int)this + 8);
}


// ===== 3dbb58 CharTimers::CharTimers(void) =====
void __fastcall CharTimers::CharTimers(CharTimers *this)
{
  *((_DWORD *)this + 4) = 0;
  *(_DWORD *)this = off_966968;
  *((_DWORD *)this + 1) = 0;
  *((_DWORD *)this + 2) = 0;
  *((_DWORD *)this + 3) = 0;
  std::vector<CharTimers::_Timer>::reserve((int)this + 8);
}


// ===== 3dbba4 std::vector<CharTimers::_Timer,std::allocator<CharTimers::_Timer>>::push_back(CharTimers::_Timer const&) =====
void __fastcall std::vector<CharTimers::_Timer>::push_back(void **a1, int a2)
{
  _DWORD *v2; // r3
  _BYTE *v3; // r7
  unsigned int v6; // r3
  unsigned int v7; // r1
  char *v8; // r0
  _DWORD *v9; // r2
  char *v10; // r8
  int v11; // r7
  int v12; // r1
  char *v13; // r3
  int v14; // r0
  char *v15; // r7
  size_t v16; // r3
  size_t v17; // [sp+4h] [bp-4h] BYREF

  v2 = a1[1];
  v3 = a1[2];
  if ( v2 == (_DWORD *)v3 )
  {
    v6 = (v3 - (_BYTE *)*a1) >> 5;
    if ( v6 )
      v7 = 2 * v6;
    else
      v7 = 1;
    if ( v7 > 0x7FFFFFF || v6 > v7 )
      v7 = 0x7FFFFFF;
    v17 = v7;
    v8 = (char *)std::allocator<CharTimers::_Timer>::_M_allocate((int)(a1 + 2), v7, &v17);
    v9 = *a1;
    v10 = v8;
    v11 = (v3 - (_BYTE *)*a1) >> 5;
    if ( v11 <= 0 )
    {
      v15 = v8;
    }
    else
    {
      v12 = v11;
      v13 = v8;
      do
      {
        *(_DWORD *)v13 = off_966948;
        --v12;
        *((_DWORD *)v13 + 1) = v9[1];
        *((_DWORD *)v13 + 2) = v9[2];
        *((_DWORD *)v13 + 3) = v9[3];
        *((_DWORD *)v13 + 4) = v9[4];
        v13[20] = *((_BYTE *)v9 + 20);
        v13[21] = *((_BYTE *)v9 + 21);
        *((_DWORD *)v13 + 6) = v9[6];
        v14 = v9[7];
        v9 += 8;
        *((_DWORD *)v13 + 7) = v14;
        v13 += 32;
      }
      while ( v12 );
      v15 = &v10[32 * v11];
    }
    *(_DWORD *)v15 = off_966948;
    *((_DWORD *)v15 + 1) = *(_DWORD *)(a2 + 4);
    *((_DWORD *)v15 + 2) = *(_DWORD *)(a2 + 8);
    *((_DWORD *)v15 + 3) = *(_DWORD *)(a2 + 12);
    *((_DWORD *)v15 + 4) = *(_DWORD *)(a2 + 16);
    v15[20] = *(_BYTE *)(a2 + 20);
    v15[21] = *(_BYTE *)(a2 + 21);
    *((_DWORD *)v15 + 6) = *(_DWORD *)(a2 + 24);
    *((_DWORD *)v15 + 7) = *(_DWORD *)(a2 + 28);
    std::vector<CharTimers::_Timer>::_M_clear_after_move(a1);
    v16 = v17;
    *a1 = v10;
    a1[1] = v15 + 32;
    a1[2] = &v10[32 * v16];
  }
  else
  {
    *v2 = off_966948;
    v2[1] = *(_DWORD *)(a2 + 4);
    v2[2] = *(_DWORD *)(a2 + 8);
    v2[3] = *(_DWORD *)(a2 + 12);
    v2[4] = *(_DWORD *)(a2 + 16);
    *((_BYTE *)v2 + 20) = *(_BYTE *)(a2 + 20);
    *((_BYTE *)v2 + 21) = *(_BYTE *)(a2 + 21);
    v2[6] = *(_DWORD *)(a2 + 24);
    v2[7] = *(_DWORD *)(a2 + 28);
    a1[1] = (char *)a1[1] + 32;
  }
}


// ===== 3dbd70 CharTimers::_findTimerSlot(void) =====
unsigned int __fastcall CharTimers::_findTimerSlot(CharTimers *this)
{
  int v2; // r3
  unsigned int result; // r0
  int v4; // r3
  int v5; // r1
  _DWORD v6[5]; // [sp+0h] [bp-24h] BYREF
  char v7; // [sp+14h] [bp-10h]
  char v8; // [sp+15h] [bp-Fh]

  v2 = *((_DWORD *)this + 3);
  result = *((_DWORD *)this + 2);
  v4 = (int)(v2 - result) >> 5;
  if ( v4 )
  {
    if ( !*(_BYTE *)(result + 20) )
      return result;
    v5 = 0;
    while ( ++v5 != v4 )
    {
      if ( !*(_BYTE *)(result + 32 * v5 + 20) )
      {
        result += 32 * v5;
        return result;
      }
    }
  }
  v6[1] = v4;
  v6[0] = off_966948;
  v8 = 0;
  v7 = 0;
  std::vector<CharTimers::_Timer>::push_back((void **)this + 2, (int)v6);
  return *((_DWORD *)this + 2) + ((*((_DWORD *)this + 3) - *((_DWORD *)this + 2)) & 0xFFFFFFE0) - 32;
}


// ===== 3dbe24 CharTimers::TMR_Start(uint,int,int,void *) =====
int __fastcall CharTimers::TMR_Start(CharTimers *this, unsigned int a2, int a3, int a4, void *a5)
{
  unsigned int TimerSlot; // r0
  unsigned int v9; // r3
  int result; // r0

  TimerSlot = CharTimers::_findTimerSlot(this);
  v9 = TimerSlot;
  if ( !TimerSlot )
    return -1;
  *(_BYTE *)(TimerSlot + 20) = 1;
  *(_DWORD *)(TimerSlot + 8) = a3;
  *(_DWORD *)(TimerSlot + 12) = a2;
  *(_DWORD *)(TimerSlot + 16) = 0;
  *(_DWORD *)(TimerSlot + 24) = a4;
  result = *(_DWORD *)(TimerSlot + 4);
  *(_BYTE *)(v9 + 21) = 0;
  *(_DWORD *)(v9 + 28) = a5;
  return result;
}


// ===== 3dbe78 AISDefault::OnInit(void) =====
void __fastcall AISDefault::OnInit(AISDefault *this)
{
  ;
}


// ===== 3dbe7c AISDefault::OnInitPost(void) =====
void __fastcall AISDefault::OnInitPost(AISDefault *this)
{
  ;
}


// ===== 3dbe80 AISDefault::OnInitFinal(void) =====
void __fastcall AISDefault::OnInitFinal(AISDefault *this)
{
  ;
}


// ===== 3dbe84 AISDefault::OnTerminate(void) =====
void __fastcall AISDefault::OnTerminate(AISDefault *this)
{
  ;
}


// ===== 3dbe88 AISDefault::OnMsg(int,void const*) =====
void __fastcall AISDefault::OnMsg(AISDefault *this, int a2, const void *a3)
{
  ;
}


// ===== 3dbe8c AISDefault::OnStateChanged(int,int) =====
void __fastcall AISDefault::OnStateChanged(AISDefault *this, int a2, int a3)
{
  ;
}


// ===== 3dbe90 AISDefault::OnDied(GameObject *) =====
void __fastcall AISDefault::OnDied(AISDefault *this, GameObject *a2)
{
  ;
}


// ===== 3dbe94 AISDefault::OnRevived(GameObject *) =====
void __fastcall AISDefault::OnRevived(AISDefault *this, GameObject *a2)
{
  ;
}


// ===== 3dbe98 AISDefault::OnFriendSpotted(Character *) =====
void __fastcall AISDefault::OnFriendSpotted(AISDefault *this, Character *a2)
{
  ;
}


// ===== 3dbe9c AISDefault::OnNeutralSpotted(Character *) =====
void __fastcall AISDefault::OnNeutralSpotted(AISDefault *this, Character *a2)
{
  ;
}


// ===== 3dbea0 AISDefault::OnEnemySpotted(Character *) =====
void __fastcall AISDefault::OnEnemySpotted(AISDefault *this, Character *a2)
{
  ;
}


// ===== 3dbea4 AISDefault::OnAggro(Character *) =====
void __fastcall AISDefault::OnAggro(AISDefault *this, Character *a2)
{
  ;
}


// ===== 3dbea8 AISDefault::OnDeAggro(Character *) =====
void __fastcall AISDefault::OnDeAggro(AISDefault *this, Character *a2)
{
  ;
}


// ===== 3dbeac AISDefault::OnTargetDied(void) =====
void __fastcall AISDefault::OnTargetDied(AISDefault *this)
{
  ;
}


// ===== 3dbeb0 AISDefault::OnTargetRevived(void) =====
void __fastcall AISDefault::OnTargetRevived(AISDefault *this)
{
  ;
}


// ===== 3dbeb4 AISDefault::OnTargetOutOfSight(void) =====
void __fastcall AISDefault::OnTargetOutOfSight(AISDefault *this)
{
  ;
}


// ===== 3dbeb8 AISDefault::OnTargetInSight(void) =====
void __fastcall AISDefault::OnTargetInSight(AISDefault *this)
{
  ;
}


// ===== 3dbebc AISDefault::OnMasterDied(void) =====
void __fastcall AISDefault::OnMasterDied(AISDefault *this)
{
  ;
}


// ===== 3dbec0 AISDefault::OnMasterRevived(void) =====
void __fastcall AISDefault::OnMasterRevived(AISDefault *this)
{
  ;
}


// ===== 3dbec4 AISDefault::OnMasterOutOfSight(void) =====
void __fastcall AISDefault::OnMasterOutOfSight(AISDefault *this)
{
  ;
}


// ===== 3dbec8 AISDefault::OnMasterInSight(void) =====
void __fastcall AISDefault::OnMasterInSight(AISDefault *this)
{
  ;
}


// ===== 3dbecc AISDefault::OnMasterOutOfRange(void) =====
void __fastcall AISDefault::OnMasterOutOfRange(AISDefault *this)
{
  ;
}


// ===== 3dbed0 AISDefault::OnMasterInRangedRange(void) =====
void __fastcall AISDefault::OnMasterInRangedRange(AISDefault *this)
{
  ;
}


// ===== 3dbed4 AISDefault::OnMasterInCloseRange(void) =====
void __fastcall AISDefault::OnMasterInCloseRange(AISDefault *this)
{
  ;
}


// ===== 3dbed8 AISDefault::OnMasterInMeleeRange(void) =====
void __fastcall AISDefault::OnMasterInMeleeRange(AISDefault *this)
{
  ;
}


// ===== 3dbedc AISDefault::OnTimer(void *) =====
void __fastcall AISDefault::OnTimer(AISDefault *this, void *a2)
{
  ;
}


// ===== 3dbee0 AISDefault::OnStunExpired(void) =====
void __fastcall AISDefault::OnStunExpired(AISDefault *this)
{
  ;
}


// ===== 3dbee4 AISDefault::OnFearExpired(void) =====
void __fastcall AISDefault::OnFearExpired(AISDefault *this)
{
  ;
}


// ===== 3dbee8 AISDefault::OnAttackDelayExpired(void) =====
void __fastcall AISDefault::OnAttackDelayExpired(AISDefault *this)
{
  ;
}


// ===== 3dbeec AISDefault::OnEndOfAnim(void) =====
void __fastcall AISDefault::OnEndOfAnim(AISDefault *this)
{
  ;
}


// ===== 3dbef0 AISDefault::OnPreInteract(void) =====
int __fastcall AISDefault::OnPreInteract(AISDefault *this)
{
  return 1;
}


// ===== 3dbef8 AISDefault::OnPreAttack(int) =====
void __fastcall AISDefault::OnPreAttack(AISDefault *this, int a2)
{
  ;
}


// ===== 3dbefc AISDefault::OnProjectileHit(GameObject *) =====
void __fastcall AISDefault::OnProjectileHit(AISDefault *this, GameObject *a2)
{
  ;
}


// ===== 3dbf00 AISDefault::OnKill(Character *) =====
void __fastcall AISDefault::OnKill(AISDefault *this, Character *a2)
{
  ;
}


// ===== 3dbf04 AISDefault::OnCombatResults(GameObject *,void *) =====
void __fastcall AISDefault::OnCombatResults(AISDefault *this, GameObject *a2, void *a3)
{
  ;
}


// ===== 3dbf08 AISDefault::OnCollisionBegin(GameObject *,bool) =====
int __fastcall AISDefault::OnCollisionBegin(AISDefault *this, GameObject *a2, bool a3)
{
  ++AISDefault::s_collisionCount;
  return (*(int (__fastcall **)(AISDefault *, GameObject *, bool))(*(_DWORD *)this + 192))(this, a2, a3);
}


// ===== 3dbf40 AISDefault::OnCollisionEnd(GameObject *,bool) =====
void __fastcall AISDefault::OnCollisionEnd(AISDefault *this, GameObject *a2, bool a3)
{
  --AISDefault::s_collisionCount;
}


// ===== 3dbf68 AISDefault::OnCollisionResult(GameObject *,bool) =====
void __fastcall AISDefault::OnCollisionResult(AISDefault *this, GameObject *a2, bool a3)
{
  ;
}


// ===== 3dbf6c AISDefault::~AISDefault() =====
void __fastcall AISDefault::~AISDefault(AISDefault *this)
{
  *(_DWORD *)this = off_966978;
  CharAIScript::~CharAIScript(this);
}


// ===== 3dbfa0 AISDefault::OnCollisionPersist(GameObject *,bool) =====
void __fastcall AISDefault::OnCollisionPersist(AISDefault *this, GameObject *a2, int a3)
{
  GameObject *v6; // r10
  int v7; // r5
  _DWORD *v8; // r0
  GameObject *v9; // r9
  _BOOL4 v10; // r10
  int v11; // r3

  if ( CharStateMachine::SM_IsMoving((CharStateMachine *)(*((_DWORD *)this + 38) + 1276), 0) )
  {
    v6 = *(GameObject **)(*((_DWORD *)this + 38) + 1032);
    if ( a2 != v6 )
    {
      if ( (*(int (__fastcall **)(GameObject *))(*(_DWORD *)a2 + 36))(a2) )
      {
        v8 = *((_DWORD **)this + 38);
        v9 = (GameObject *)v8[262];
        if ( !(*(int (__fastcall **)(_DWORD *))(*v8 + 40))(v8) )
        {
          v10 = v9 != v6 || v9 == nullptr;
          if ( v10 && CharAI::AI_IsEnemy((CharAI *)(*((_DWORD *)this + 38) + 968), a2) )
          {
            CharAI::AI_SetTarget((CharAI *)(*((_DWORD *)this + 38) + 968), a2, 0);
            return;
          }
        }
        if ( (*(int (__fastcall **)(_DWORD))(**((_DWORD **)this + 38) + 40))(*((_DWORD *)this + 38))
          && CharAI::AI_IsEnemy((CharAI *)(*((_DWORD *)this + 38) + 968), a2) )
        {
          Character::CancelSneaking(*((Character **)this + 38));
        }
      }
      if ( a3 )
      {
        if ( (*(int (__fastcall **)(GameObject *))(*(_DWORD *)a2 + 36))(a2)
          || (v11 = *((_DWORD *)a2 + 61), v11 == 21)
          || v11 == 2 )
        {
          if ( *((_DWORD *)this + 48) != dword_99F7A0 && !*(_BYTE *)(*((_DWORD *)this + 38) + 992) )
          {
            *((_DWORD *)this + 48) = dword_99F7A0;
            v7 = *((_DWORD *)this + 47);
            *((_DWORD *)this + 47) = Application::GetDt((Application *)&Singleton<Application>::s_inst) + v7;
          }
        }
      }
    }
  }
}


// ===== 3dc12c AISDefault::OnAttack(int,int,bool) =====
CMessaging *__fastcall AISDefault::OnAttack(AISDefault *this, int a2, int a3, int a4)
{
  CMessaging *result; // r0
  CMessaging *v7; // r5
  int v8; // r1
  int v9; // r3
  _BYTE v10[44]; // [sp+8h] [bp-2Ch] BYREF

  result = (CMessaging *)CharAI::AI_GetTargetAsCharacter((CharAI *)(*((_DWORD *)this + 38) + 968));
  v7 = result;
  if ( result )
  {
    Character::F_MeleeAttack(v10, *((_DWORD *)this + 38), result, a4, 0);
    return Character::F_ApplyResult((int)v10, *((_DWORD **)this + 38), v7, 0);
  }
  else
  {
    v8 = *((_DWORD *)this + 38);
    v9 = *(_DWORD *)(v8 + 1032);
    if ( v9 )
      return (CMessaging *)(*(int (__fastcall **)(_DWORD))(*(_DWORD *)v9 + 152))(*(_DWORD *)(v8 + 1032));
  }
  return result;
}


// ===== 3dc1b0 AISDefault::OnInteract(void) =====
int __fastcall AISDefault::OnInteract(int this)
{
  int v1; // r4
  int v2; // r3
  _BYTE *v3; // r3
  Character *v4; // r0
  Character *TargetAsCharacter; // r0

  v1 = this;
  v2 = *(_DWORD *)(*(_DWORD *)(this + 152) + 1032);
  if ( v2 )
  {
    if ( !(*(int (__fastcall **)(_DWORD))(*(_DWORD *)v2 + 36))(*(_DWORD *)(*(_DWORD *)(this + 152) + 1032))
      || (v4 = (Character *)CharAI::AI_GetTargetAsCharacter((CharAI *)(*(_DWORD *)(v1 + 152) + 968)),
          (this = Character::IsMonster(v4)) == 0) )
    {
      this = (*(int (__fastcall **)(_DWORD))(**(_DWORD **)(*(_DWORD *)(v1 + 152) + 1032) + 152))(*(_DWORD *)(*(_DWORD *)(v1 + 152) + 1032));
      v3 = *(_BYTE **)(*(_DWORD *)(v1 + 152) + 1032);
      if ( !v3[762] )
      {
        if ( !(*(int (__fastcall **)(_DWORD))(*(_DWORD *)v3 + 36))(*(_DWORD *)(*(_DWORD *)(v1 + 152) + 1032))
          || (TargetAsCharacter = (Character *)CharAI::AI_GetTargetAsCharacter((CharAI *)(*(_DWORD *)(v1 + 152) + 968)),
              (this = Character::IsMerchant(TargetAsCharacter)) == 0) )
        {
          CharAI::AI_SetTarget((CharAI *)(*(_DWORD *)(v1 + 152) + 968), nullptr, 0);
          return CharAI::AI_SyncLastTarget((CharAI *)(*(_DWORD *)(v1 + 152) + 968));
        }
      }
    }
  }
  return this;
}


// ===== 3dc284 AISDefault::OnTargetInMeleeRange(void) =====
int __fastcall AISDefault::OnTargetInMeleeRange(AISDefault *this)
{
  int result; // r0

  if ( CharAI::AI_IsEnemy((CharAI *)(*((_DWORD *)this + 38) + 968), nullptr) )
  {
    v2Controller::Cmd_Stop(*(_DWORD *)(*((_DWORD *)this + 38) + 888));
    return v2Controller::Cmd_Attack(
             *(_DWORD *)(*((_DWORD *)this + 38) + 888),
             *(GameObject ***)(*((_DWORD *)this + 38) + 1032));
  }
  else
  {
    result = CharAI::AI_IsInInteractionRange(
               (GameObject **)(*((_DWORD *)this + 38) + 968),
               *(const GameObject **)(*((_DWORD *)this + 38) + 1032));
    if ( result )
    {
      v2Controller::Cmd_Stop(*(_DWORD *)(*((_DWORD *)this + 38) + 888));
      return CharAI::AI_InteractWith((CharAI *)(*((_DWORD *)this + 38) + 968), nullptr);
    }
  }
  return result;
}


// ===== 3dc300 AISDefault::OnTargetInCloseRange(void) =====
_DWORD *__fastcall AISDefault::OnTargetInCloseRange(AISDefault *this)
{
  _DWORD *result; // r0
  _DWORD *v3; // r3
  _DWORD *v4; // r2
  float *TargetPosition; // r5
  float *v6; // r0
  float v7; // r10
  float v8; // r7
  float v9; // r6
  GameObject *v10; // r0
  int v11; // r8
  float *v12; // r0
  float v13; // r7
  float v14; // r6
  _DWORD **v15; // r2
  _DWORD *v16; // r3
  _DWORD **v17; // r3
  int v18; // r7
  _DWORD *v19; // r3
  _DWORD *v20; // r3
  float v21[7]; // [sp+0h] [bp-1Ch] BYREF

  if ( CharAI::AI_IsEnemy((CharAI *)(*((_DWORD *)this + 38) + 968), nullptr) )
  {
    result = (_DWORD *)CharAI::AI_IsTargetSeeking(*((_DWORD *)this + 38) + 968);
    if ( !result )
      return result;
    if ( CharStateMachine::SM_IsIdle((CharStateMachine *)(*((_DWORD *)this + 38) + 1276), 0)
      || CharStateMachine::SM_IsAttacking((CharStateMachine *)(*((_DWORD *)this + 38) + 1276)) )
    {
      result = *((_DWORD **)this + 38);
    }
    else
    {
      result = *((_DWORD **)this + 38);
      v20 = (_DWORD *)result[128];
      if ( v20 != result + 128 )
      {
        do
          v20 = (_DWORD *)*v20;
        while ( result + 128 != v20 );
        return result;
      }
    }
    TargetPosition = (float *)GameObject::GetTargetPosition((GameObject *)result);
    v6 = (float *)GameObject::GetTargetPosition(*(GameObject **)(*((_DWORD *)this + 38) + 1032));
    v7 = *TargetPosition - *v6;
    v8 = TargetPosition[1] - v6[1];
    v9 = TargetPosition[2] - v6[2];
    v10 = *((GameObject **)this + 38);
    v11 = *((_DWORD *)v10 + 222);
    v12 = (float *)GameObject::GetTargetPosition(v10);
    v13 = v8 + v12[1];
    v14 = v9 + v12[2];
    v21[3] = v7 + *v12;
    v21[4] = v13;
    v21[5] = v14;
    v2Controller::Cmd_MoveTo(v11);
    result = *((_DWORD **)this + 38);
    v15 = (_DWORD **)(result + 128);
    v16 = (_DWORD *)result[128];
    if ( v16 == result + 128 )
    {
      CharAI::AI_SetTarget((CharAI *)(result + 242), nullptr, 0);
      result = (_DWORD *)CharAI::AI_SyncLastTarget(*((_DWORD *)this + 38) + 968);
      *(_BYTE *)(*((_DWORD *)this + 38) + 1042) = 0;
    }
    else
    {
      do
      {
        v17 = (_DWORD **)*v16;
        if ( v15 == v17 )
          break;
        v16 = *v17;
      }
      while ( v15 != v16 );
    }
  }
  else
  {
    result = (_DWORD *)CharAI::AI_IsInInteractionRange(
                         (GameObject **)(*((_DWORD *)this + 38) + 968),
                         *(const GameObject **)(*((_DWORD *)this + 38) + 1032));
    if ( result )
    {
      v2Controller::Cmd_Stop(*(_DWORD *)(*((_DWORD *)this + 38) + 888));
      return (_DWORD *)CharAI::AI_InteractWith((CharAI *)(*((_DWORD *)this + 38) + 968), nullptr);
    }
    else
    {
      v3 = *((_DWORD **)this + 38);
      v4 = (_DWORD *)v3[128];
      if ( v4 == v3 + 128 )
      {
        v18 = v3[222];
        GameObject::GetInteractionSpot((GameObject *)v21, v3[258]);
        v2Controller::Cmd_MoveTo(v18);
        result = *((_DWORD **)this + 38);
        v19 = (_DWORD *)result[128];
        if ( v19 == result + 128 )
        {
          CharAI::AI_SetTarget((CharAI *)(result + 242), nullptr, 0);
          result = (_DWORD *)CharAI::AI_SyncLastTarget(*((_DWORD *)this + 38) + 968);
          *(_BYTE *)(*((_DWORD *)this + 38) + 1042) = 0;
        }
        else
        {
          do
            v19 = (_DWORD *)*v19;
          while ( result + 128 != v19 );
        }
      }
      else
      {
        do
          v4 = (_DWORD *)*v4;
        while ( v3 + 128 != v4 );
      }
    }
  }
  return result;
}


// ===== 3dc560 AISDefault::OnTargetInRangedRange(void) =====
int __fastcall AISDefault::OnTargetInRangedRange(AISDefault *this)
{
  int result; // r0
  _DWORD *v3; // r3
  int v4; // r6
  _DWORD **v5; // r2
  _DWORD *v6; // r3
  _DWORD **v7; // r3
  _DWORD *v8; // r2
  _BYTE v9[12]; // [sp+4h] [bp-Ch] BYREF

  if ( CharAI::AI_IsEnemy((CharAI *)(*((_DWORD *)this + 38) + 968), nullptr) )
  {
    v2Controller::Cmd_Stop(*(_DWORD *)(*((_DWORD *)this + 38) + 888));
    return v2Controller::Cmd_Attack(
             *(_DWORD *)(*((_DWORD *)this + 38) + 888),
             *(GameObject ***)(*((_DWORD *)this + 38) + 1032));
  }
  result = CharAI::AI_IsTargetSeeking(*((_DWORD *)this + 38) + 968);
  if ( result )
  {
    if ( CharStateMachine::SM_IsIdle((CharStateMachine *)(*((_DWORD *)this + 38) + 1276), 0)
      || (result = CharStateMachine::SM_IsAttacking((CharStateMachine *)(*((_DWORD *)this + 38) + 1276))) != 0 )
    {
      v3 = *((_DWORD **)this + 38);
    }
    else
    {
      v3 = *((_DWORD **)this + 38);
      v8 = (_DWORD *)v3[128];
      if ( v8 != v3 + 128 )
      {
        do
          v8 = (_DWORD *)*v8;
        while ( v3 + 128 != v8 );
        return result;
      }
    }
    v4 = v3[222];
    GameObject::GetInteractionSpot((GameObject *)v9, v3[258]);
    v2Controller::Cmd_MoveTo(v4);
    result = *((_DWORD *)this + 38);
    v5 = (_DWORD **)(result + 512);
    v6 = *(_DWORD **)(result + 512);
    if ( v6 == (_DWORD *)(result + 512) )
    {
      CharAI::AI_SetTarget((CharAI *)(result + 968), nullptr, 0);
      result = CharAI::AI_SyncLastTarget(*((_DWORD *)this + 38) + 968);
      *(_BYTE *)(*((_DWORD *)this + 38) + 1042) = 0;
    }
    else
    {
      do
      {
        v7 = (_DWORD **)*v6;
        if ( v5 == v7 )
          break;
        v6 = *v7;
      }
      while ( v5 != v6 );
    }
  }
  return result;
}


// ===== 3dc698 AISDefault::OnTargetOutOfRange(void) =====
unsigned int __fastcall AISDefault::OnTargetOutOfRange(AISDefault *this)
{
  unsigned int result; // r0
  _DWORD *v3; // r3
  int v4; // r6
  _DWORD **v5; // r2
  _DWORD *v6; // r3
  _DWORD **v7; // r3
  _DWORD *v8; // r2
  _BYTE v9[12]; // [sp+4h] [bp-Ch] BYREF

  result = CharAI::AI_IsTargetSeeking(*((_DWORD *)this + 38) + 968);
  if ( result )
  {
    if ( CharStateMachine::SM_IsIdle((CharStateMachine *)(*((_DWORD *)this + 38) + 1276), 0)
      || (result = CharStateMachine::SM_IsAttacking((CharStateMachine *)(*((_DWORD *)this + 38) + 1276))) != 0 )
    {
      v3 = *((_DWORD **)this + 38);
    }
    else
    {
      v3 = *((_DWORD **)this + 38);
      v8 = (_DWORD *)v3[128];
      if ( v8 != v3 + 128 )
      {
        do
          v8 = (_DWORD *)*v8;
        while ( v3 + 128 != v8 );
        return result;
      }
    }
    v4 = v3[222];
    GameObject::GetInteractionSpot((GameObject *)v9, v3[258]);
    v2Controller::Cmd_MoveTo(v4);
    result = *((_DWORD *)this + 38);
    v5 = (_DWORD **)(result + 512);
    v6 = *(_DWORD **)(result + 512);
    if ( v6 == (_DWORD *)(result + 512) )
    {
      CharAI::AI_SetTarget((CharAI *)(result + 968), nullptr, 0);
      result = CharAI::AI_SyncLastTarget(*((_DWORD *)this + 38) + 968);
      *(_BYTE *)(*((_DWORD *)this + 38) + 1042) = 0;
    }
    else
    {
      do
      {
        v7 = (_DWORD **)*v6;
        if ( v5 == v7 )
          break;
        v6 = *v7;
      }
      while ( v5 != v6 );
    }
  }
  return result;
}


// ===== 3dc798 AISDefault::OnUpdate(void) =====
int __fastcall AISDefault::OnUpdate(int this)
{
  int v1; // r4
  int v2; // r0

  v1 = this;
  if ( *(_DWORD *)(this + 188) > 0xC7u )
  {
    v2 = *(_DWORD *)(this + 152);
    *(_DWORD *)(v1 + 188) = 0;
    CharAI::AI_PauseUpdate((CharAI *)(v2 + 968), 0x3E8u);
    return v2Controller::Cmd_Stop(*(v2Controller **)(*(_DWORD *)(v1 + 152) + 888));
  }
  return this;
}


// ===== 3dc7d8 AISDefault::InitVCB(void) =====
int __fastcall AISDefault::InitVCB(AISDefault *this)
{
  int v2; // r5
  int result; // r0

  *((_DWORD *)this + 46) = 0;
  if ( LuaScript::IsInVFTable(this, (glitch::core *)"OnTargetHit") )
    v2 = 2048;
  else
    v2 = 0;
  *((_DWORD *)this + 46) = v2;
  if ( LuaScript::IsInVFTable(this, (glitch::core *)"OnTargetMissed") )
    result = 4096;
  else
    result = 0;
  *((_DWORD *)this + 46) = result | v2;
  return result;
}


// ===== 3dc834 `global constructor keyed to'.._.._sources_Game_Objects_Characters_AIScripts_AISDefault.cpp =====
int `global constructor keyed to'.._.._sources_Game_Objects_Characters_AIScripts_AISDefault.cpp()
{
  int result; // r0

  result = `guard variable for'Singleton<PlayerStatManager>::s_inst;
  dword_9A2C1C = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9A2C18 = 1056964608;
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


// ===== 3dc964 std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block(uint) [clone] =====
void std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block()
{
  ;
}


// ===== 3dc968 AISDefault::~AISDefault() =====
void __fastcall AISDefault::~AISDefault(AISDefault *this)
{
  *(_DWORD *)this = off_966978;
  CharAIScript::~CharAIScript(this);
  CustomFree(this);
}


// ===== 3dc9a4 std::priv::_String_base<wchar_t,std::allocator<wchar_t>>::_M_allocate_block(uint) [clone] =====
void std::priv::_String_base<wchar_t,std::allocator<wchar_t>>::_M_allocate_block()
{
  ;
}


// ===== 3dc9a8 AISDefault::OnCombatResults(Character *,Character *,void *) =====
void __fastcall AISDefault::OnCombatResults(AISDefault *this, Character *a2, Character *a3, _BYTE *a4)
{
  _BYTE v8[8]; // [sp+0h] [bp-8h] BYREF

  sfc::script::lua::Arguments::Arguments((sfc::script::lua::Arguments *)v8);
  sfc::script::lua::Arguments::pushUserData((sfc::script::lua::Arguments *)v8, a2);
  sfc::script::lua::Arguments::pushUserData((sfc::script::lua::Arguments *)v8, a3);
  if ( (a4[24] & 3) != 0 )
  {
    if ( (*((_DWORD *)this + 46) & 0x1000) != 0 )
      LuaScript::Call(this, "OnTargetMissed", (const sfc::script::lua::Arguments *)v8);
  }
  else if ( (*((_DWORD *)this + 46) & 0x800) != 0 )
  {
    LuaScript::Call(this, "OnTargetHit", (const sfc::script::lua::Arguments *)v8);
  }
  sfc::script::lua::Arguments::~Arguments((sfc::script::lua::Arguments *)v8);
}


// ===== 3dca50 AISDefault::OnAnimEvent(char const*) =====
void __fastcall AISDefault::OnAnimEvent(AISDefault *this, const char *a2)
{
  int FXFootprint; // r0
  int v5; // r2
  int v6; // r3
  int v7; // r3
  int v8; // r10
  int v9; // r9
  int v10; // r8
  int v11; // r6
  _DWORD v12[3]; // [sp+Ch] [bp-30h] BYREF
  _DWORD v13[3]; // [sp+18h] [bp-24h] BYREF
  int v14; // [sp+24h] [bp-18h] BYREF
  int v15; // [sp+28h] [bp-14h]
  int v16; // [sp+2Ch] [bp-10h]
  _BYTE v17[12]; // [sp+30h] [bp-Ch] BYREF

  sfc::script::lua::Arguments::Arguments((sfc::script::lua::Arguments *)v17);
  sfc::script::lua::Arguments::pushString((sfc::script::lua::Arguments *)v17, a2);
  sfc::script::lua::Arguments::pushInteger(
    (sfc::script::lua::Arguments *)v17,
    *(_DWORD *)(*((_DWORD *)this + 38) + 1268));
  LuaScript::Call(this, "OnAnimEvent", (const sfc::script::lua::Arguments *)v17);
  if ( !LC_API_STRCMP_0(a2, "step_right") || !LC_API_STRCMP_0(a2, "step_left") )
  {
    v16 = 0;
    v14 = 0;
    v15 = 0;
    if ( LC_API_STRCMP_0(a2, "step_right") )
    {
      Character::GetLeftFootPosition((Character *)v12);
      v14 = v12[0];
      v15 = v12[1];
      v16 = v12[2];
    }
    else
    {
      Character::GetRightFootPosition((Character *)v13);
      v14 = v13[0];
      v15 = v13[1];
      v16 = v13[2];
    }
    FXFootprint = Character::GetFXFootprint(*((Character **)this + 38));
    VisualFXManager::PlayAnimFXSet(&Singleton<VisualFXManager>::s_inst, FXFootprint, &v14, 0, 0);
    v5 = *((_DWORD *)this + 38);
    v6 = *(_DWORD *)(v5 + 4116);
    if ( v6 < 0 || v6 >= Arrays::CharEffectTable::size )
      v7 = *(unsigned __int8 *)(Arrays::CharEffectTable::members + 20);
    else
      v7 = *(unsigned __int8 *)(Arrays::CharEffectTable::members + 24 * v6 + 20);
    v8 = *(_DWORD *)(v5 + 472);
    if ( v8 )
      v8 = *(_DWORD *)(v8 + 60);
    if ( v7 )
    {
      if ( v8 )
      {
        v9 = Arrays::FootstepEffectTable::size;
        if ( Arrays::FootstepEffectTable::size > 0 )
        {
          v10 = 0;
          v11 = Arrays::FootstepEffectTable::members;
          while ( 1 )
          {
            ++v10;
            if ( !LC_API_STRCMP_0(*(const char **)(v11 + 12), (const char *)v8) )
              break;
            v11 += 32;
            if ( v10 == v9 )
              goto LABEL_17;
          }
          VisualFXManager::PlayAnimFXSet(&Singleton<VisualFXManager>::s_inst, *(_DWORD *)(v11 + 4), &v14, 0, 0);
        }
      }
    }
  }
LABEL_17:
  sfc::script::lua::Arguments::~Arguments((sfc::script::lua::Arguments *)v17);
}


// ===== 3dcc80 AISDefault::OnScriptTimer(uint) =====
void __fastcall AISDefault::OnScriptTimer(AISDefault *this, int a2)
{
  _BYTE v4[8]; // [sp+0h] [bp-8h] BYREF

  sfc::script::lua::Arguments::Arguments((sfc::script::lua::Arguments *)v4);
  sfc::script::lua::Arguments::pushInteger((sfc::script::lua::Arguments *)v4, a2);
  LuaScript::Call(this, "OnTimer", (const sfc::script::lua::Arguments *)v4);
  sfc::script::lua::Arguments::~Arguments((sfc::script::lua::Arguments *)v4);
}


// ===== 3dccd0 AISExternal::OnEndOfAnim(void) =====
void __fastcall AISExternal::OnEndOfAnim(AISExternal *this)
{
  AISDefault::OnEndOfAnim(this);
  LuaScript::Call(this, (glitch::core *)"OnEndOfAnim");
}


// ===== 3dccf4 AISExternal::OnMasterInMeleeRange(void) =====
void __fastcall AISExternal::OnMasterInMeleeRange(AISExternal *this)
{
  if ( (*((_DWORD *)this + 46) & 0x200) != 0 )
    LuaScript::Call(this, (glitch::core *)"OnMasterInMeleeRange");
}


// ===== 3dcd10 AISExternal::OnMasterInCloseRange(void) =====
void __fastcall AISExternal::OnMasterInCloseRange(AISExternal *this)
{
  if ( (*((_DWORD *)this + 46) & 0x100) != 0 )
    LuaScript::Call(this, (glitch::core *)"OnMasterInCloseRange");
}


// ===== 3dcd2c AISExternal::OnMasterInRangedRange(void) =====
void __fastcall AISExternal::OnMasterInRangedRange(AISExternal *this)
{
  if ( (*((_DWORD *)this + 46) & 0x80) != 0 )
    LuaScript::Call(this, (glitch::core *)"OnMasterInRangedRange");
}


// ===== 3dcd48 AISExternal::OnMasterOutOfRange(void) =====
void __fastcall AISExternal::OnMasterOutOfRange(AISExternal *this)
{
  if ( (*((_DWORD *)this + 46) & 0x40) != 0 )
    LuaScript::Call(this, (glitch::core *)"OnMasterOutOfRange");
}


// ===== 3dcd64 AISExternal::OnMasterInSight(void) =====
void __fastcall AISExternal::OnMasterInSight(AISExternal *this)
{
  LuaScript::Call(this, (glitch::core *)"OnMasterInSight");
}


// ===== 3dcd74 AISExternal::OnMasterOutOfSight(void) =====
void __fastcall AISExternal::OnMasterOutOfSight(AISExternal *this)
{
  LuaScript::Call(this, (glitch::core *)"OnMasterOutOfSight");
}


// ===== 3dcd84 AISExternal::OnMasterDied(void) =====
void __fastcall AISExternal::OnMasterDied(AISExternal *this)
{
  LuaScript::Call(this, (glitch::core *)"OnMasterDied");
}


// ===== 3dcd94 AISExternal::OnTargetInMeleeRange(void) =====
LuaScript *__fastcall AISExternal::OnTargetInMeleeRange(LuaScript *this)
{
  if ( (*((_DWORD *)this + 46) & 0x20) != 0 )
    return (LuaScript *)LuaScript::Call(this, "OnTargetInMeleeRange");
  return this;
}


// ===== 3dcdb0 AISExternal::OnTargetInCloseRange(void) =====
void __fastcall AISExternal::OnTargetInCloseRange(AISExternal *this)
{
  if ( (*((_DWORD *)this + 46) & 0x10) != 0 )
    LuaScript::Call(this, (glitch::core *)"OnTargetInCloseRange");
}


// ===== 3dcdcc AISExternal::OnTargetInRangedRange(void) =====
void __fastcall AISExternal::OnTargetInRangedRange(AISExternal *this)
{
  if ( (*((_DWORD *)this + 46) & 8) != 0 )
    LuaScript::Call(this, (glitch::core *)"OnTargetInRangedRange");
}


// ===== 3dcde8 AISExternal::OnTargetOutOfRange(void) =====
void __fastcall AISExternal::OnTargetOutOfRange(AISExternal *this)
{
  if ( (*((_DWORD *)this + 46) & 4) != 0 )
    LuaScript::Call(this, (glitch::core *)"OnTargetOutOfRange");
}


// ===== 3dce04 AISExternal::OnTargetInSight(void) =====
void __fastcall AISExternal::OnTargetInSight(AISExternal *this)
{
  LuaScript::Call(this, (glitch::core *)"OnTargetInSight");
}


// ===== 3dce14 AISExternal::OnTargetOutOfSight(void) =====
void __fastcall AISExternal::OnTargetOutOfSight(AISExternal *this)
{
  LuaScript::Call(this, (glitch::core *)"OnTargetOutOfSight");
}


// ===== 3dce24 AISExternal::OnTargetDied(void) =====
void __fastcall AISExternal::OnTargetDied(AISExternal *this)
{
  LuaScript::Call(this, (glitch::core *)"OnTargetDied");
}


// ===== 3dce34 AISExternal::OnTerminate(void) =====
void __fastcall AISExternal::OnTerminate(AISExternal *this)
{
  LuaScript::Call(this, (glitch::core *)"OnTerminate");
}


// ===== 3dce44 AISExternal::OnInitFinal(void) =====
void __fastcall AISExternal::OnInitFinal(AISExternal *this)
{
  LuaScript::Call(this, (glitch::core *)"OnInitFinal");
}


// ===== 3dce54 AISExternal::OnInitPost(void) =====
void __fastcall AISExternal::OnInitPost(AISExternal *this)
{
  LuaScript::Call(this, (glitch::core *)"OnInitPost");
}


// ===== 3dce64 AISExternal::OnUpdate(void) =====
int __fastcall AISExternal::OnUpdate(AISExternal *this)
{
  AISDefault::OnUpdate(this);
  if ( (*((_DWORD *)this + 46) & 1) != 0 )
    LuaScript::Call(this, "OnUpdate");
  CharAIScript::CallStateUpdate(this);
  return CharAIScript::CallStateConditions(this);
}


// ===== 3dcea4 AISExternal::OnInit(void) =====
void __fastcall AISExternal::OnInit(AISExternal *this)
{
  AISDefault::OnInit(this);
  LuaScript::Call(this, (glitch::core *)"OnInit");
}


// ===== 3dcec8 AISExternal::InitVCB(void) =====
int __fastcall AISExternal::InitVCB(AISExternal *this)
{
  int v2; // r5
  int v3; // r5
  int v4; // r0
  int v5; // r5
  int v6; // r0
  int v7; // r5
  int v8; // r0
  int v9; // r5
  int v10; // r0
  int v11; // r5
  int v12; // r0
  int v13; // r5
  int v14; // r0
  int v15; // r5
  int v16; // r0
  int v17; // r5
  int v18; // r0
  int v19; // r5
  int result; // r0

  AISDefault::InitVCB(this);
  v2 = *((_DWORD *)this + 46);
  v3 = LuaScript::IsInVFTable(this, (glitch::core *)"OnUpdate") | v2;
  *((_DWORD *)this + 46) = v3;
  if ( LuaScript::IsInVFTable(this, (glitch::core *)"OnFriendSpotted") )
    v4 = 2;
  else
    v4 = 0;
  v5 = v4 | v3;
  *((_DWORD *)this + 46) = v5;
  if ( LuaScript::IsInVFTable(this, (glitch::core *)"OnTargetOutOfRange") )
    v6 = 4;
  else
    v6 = 0;
  v7 = v6 | v5;
  *((_DWORD *)this + 46) = v7;
  if ( LuaScript::IsInVFTable(this, (glitch::core *)"OnTargetInRangedRange") )
    v8 = 8;
  else
    v8 = 0;
  v9 = v8 | v7;
  *((_DWORD *)this + 46) = v9;
  if ( LuaScript::IsInVFTable(this, (glitch::core *)"OnTargetInCloseRange") )
    v10 = 16;
  else
    v10 = 0;
  v11 = v10 | v9;
  *((_DWORD *)this + 46) = v11;
  if ( LuaScript::IsInVFTable(this, (glitch::core *)"OnTargetInMeleeRange") )
    v12 = 32;
  else
    v12 = 0;
  v13 = v12 | v11;
  *((_DWORD *)this + 46) = v13;
  if ( LuaScript::IsInVFTable(this, (glitch::core *)"OnMasterOutOfRange") )
    v14 = 64;
  else
    v14 = 0;
  v15 = v14 | v13;
  *((_DWORD *)this + 46) = v15;
  if ( LuaScript::IsInVFTable(this, (glitch::core *)"OnMasterInRangedRange") )
    v16 = 128;
  else
    v16 = 0;
  v17 = v16 | v15;
  *((_DWORD *)this + 46) = v17;
  if ( LuaScript::IsInVFTable(this, (glitch::core *)"OnMasterInCloseRange") )
    v18 = 256;
  else
    v18 = 0;
  v19 = v18 | v17;
  *((_DWORD *)this + 46) = v19;
  if ( LuaScript::IsInVFTable(this, (glitch::core *)"OnMasterInMeleeRange") )
    result = 512;
  else
    result = 0;
  *((_DWORD *)this + 46) = result | v19;
  return result;
}


// ===== 3dd060 AISExternal::~AISExternal() =====
void __fastcall AISExternal::~AISExternal(AISExternal *this)
{
  *(_DWORD *)this = off_966978;
  CharAIScript::~CharAIScript(this);
}


// ===== 3dd094 AISExternal::~AISExternal() =====
void __fastcall AISExternal::~AISExternal(AISExternal *this)
{
  AISExternal::~AISExternal(this);
  CustomFree(this);
}


// ===== 3dd0b0 AISExternal::~AISExternal() =====
void __fastcall AISExternal::~AISExternal(AISExternal *this)
{
  *(_DWORD *)this = off_966978;
  CharAIScript::~CharAIScript(this);
}


// ===== 3dd0e4 AISExternal::AISExternal(bool) =====
void __fastcall AISExternal::AISExternal(AISExternal *this, bool a2)
{
  CharAIScript::CharAIScript(this, a2);
  *((_DWORD *)this + 48) = 0;
  *((_DWORD *)this + 46) = 0;
  *(_DWORD *)this = off_966A50;
  *((_DWORD *)this + 47) = 0;
}


// ===== 3dd128 AISExternal::AISExternal(bool) =====
void __fastcall AISExternal::AISExternal(AISExternal *this, bool a2)
{
  CharAIScript::CharAIScript(this, a2);
  *((_DWORD *)this + 48) = 0;
  *((_DWORD *)this + 46) = 0;
  *(_DWORD *)this = off_966A50;
  *((_DWORD *)this + 47) = 0;
}


// ===== 3dd16c `global constructor keyed to'.._.._sources_Game_Objects_Characters_AIScripts_AISExternal.cpp =====
int `global constructor keyed to'.._.._sources_Game_Objects_Characters_AIScripts_AISExternal.cpp()
{
  int result; // r0

  result = `guard variable for'Singleton<PlayerStatManager>::s_inst;
  dword_9A2C2C = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9A2C28 = 1056964608;
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


// ===== 3dd248 std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block(uint) [clone] =====
void std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block()
{
  ;
}


// ===== 3dd24c std::priv::_String_base<wchar_t,std::allocator<wchar_t>>::_M_allocate_block(uint) [clone] =====
void std::priv::_String_base<wchar_t,std::allocator<wchar_t>>::_M_allocate_block()
{
  ;
}


// ===== 3dd250 AISExternal::OnCombatResults(GameObject *,void *) =====
void __fastcall AISExternal::OnCombatResults(AISExternal *this, GameObject *a2, void *a3)
{
  _BYTE v5[8]; // [sp+0h] [bp-8h] BYREF

  sfc::script::lua::Arguments::Arguments((sfc::script::lua::Arguments *)v5);
  sfc::script::lua::Arguments::pushPointer((sfc::script::lua::Arguments *)v5, a3);
  LuaScript::Call(this, (glitch::core *)"OnCombatResults", (const sfc::script::lua::Arguments *)v5);
  sfc::script::lua::Arguments::~Arguments((sfc::script::lua::Arguments *)v5);
}


// ===== 3dd2a0 AISExternal::OnProjectileHit(GameObject *) =====
void __fastcall AISExternal::OnProjectileHit(AISExternal *this, GameObject *a2)
{
  _BYTE v4[8]; // [sp+0h] [bp-8h] BYREF

  AISDefault::OnProjectileHit(this, a2);
  sfc::script::lua::Arguments::Arguments((sfc::script::lua::Arguments *)v4);
  sfc::script::lua::Arguments::pushUserData((sfc::script::lua::Arguments *)v4, a2);
  LuaScript::Call(this, (glitch::core *)"OnProjectileHit", (const sfc::script::lua::Arguments *)v4);
  sfc::script::lua::Arguments::~Arguments((sfc::script::lua::Arguments *)v4);
}


// ===== 3dd2f4 AISExternal::OnEnemySpotted(Character *) =====
void __fastcall AISExternal::OnEnemySpotted(AISExternal *this, Character *a2)
{
  _BYTE v4[8]; // [sp+0h] [bp-8h] BYREF

  sfc::script::lua::Arguments::Arguments((sfc::script::lua::Arguments *)v4);
  sfc::script::lua::Arguments::pushUserData((sfc::script::lua::Arguments *)v4, a2);
  LuaScript::Call(this, "OnEnemySpotted", (const sfc::script::lua::Arguments *)v4);
  sfc::script::lua::Arguments::~Arguments((sfc::script::lua::Arguments *)v4);
}


// ===== 3dd344 AISExternal::OnNeutralSpotted(Character *) =====
void __fastcall AISExternal::OnNeutralSpotted(AISExternal *this, Character *a2)
{
  _BYTE v4[8]; // [sp+0h] [bp-8h] BYREF

  sfc::script::lua::Arguments::Arguments((sfc::script::lua::Arguments *)v4);
  sfc::script::lua::Arguments::pushUserData((sfc::script::lua::Arguments *)v4, a2);
  LuaScript::Call(this, (glitch::core *)"OnNeutralSpotted", (const sfc::script::lua::Arguments *)v4);
  sfc::script::lua::Arguments::~Arguments((sfc::script::lua::Arguments *)v4);
}


// ===== 3dd394 AISExternal::OnFriendSpotted(Character *) =====
void __fastcall AISExternal::OnFriendSpotted(AISExternal *this, Character *a2)
{
  _BYTE v4[8]; // [sp+0h] [bp-8h] BYREF

  if ( (*((_DWORD *)this + 46) & 2) != 0 )
  {
    sfc::script::lua::Arguments::Arguments((sfc::script::lua::Arguments *)v4);
    sfc::script::lua::Arguments::pushUserData((sfc::script::lua::Arguments *)v4, a2);
    LuaScript::Call(this, (glitch::core *)"OnFriendSpotted", (const sfc::script::lua::Arguments *)v4);
    sfc::script::lua::Arguments::~Arguments((sfc::script::lua::Arguments *)v4);
  }
}


// ===== 3dd3f0 AISExternal::OnRevived(GameObject *) =====
void __fastcall AISExternal::OnRevived(AISExternal *this, GameObject *a2)
{
  _BYTE v4[8]; // [sp+0h] [bp-8h] BYREF

  sfc::script::lua::Arguments::Arguments((sfc::script::lua::Arguments *)v4);
  sfc::script::lua::Arguments::pushUserData((sfc::script::lua::Arguments *)v4, a2);
  LuaScript::Call(this, (glitch::core *)"OnRevived", (const sfc::script::lua::Arguments *)v4);
  sfc::script::lua::Arguments::~Arguments((sfc::script::lua::Arguments *)v4);
}


// ===== 3dd440 AISExternal::OnDied(GameObject *) =====
void __fastcall AISExternal::OnDied(AISExternal *this, GameObject *a2)
{
  _BYTE v4[8]; // [sp+0h] [bp-8h] BYREF

  sfc::script::lua::Arguments::Arguments((sfc::script::lua::Arguments *)v4);
  sfc::script::lua::Arguments::pushUserData((sfc::script::lua::Arguments *)v4, a2);
  LuaScript::Call(this, "OnDied", (const sfc::script::lua::Arguments *)v4);
  sfc::script::lua::Arguments::~Arguments((sfc::script::lua::Arguments *)v4);
}


// ===== 3dd490 AISMonster::OnTargetRevived(void) =====
void __fastcall AISMonster::OnTargetRevived(AISMonster *this)
{
  ;
}


// ===== 3dd494 AISMonster::OnTargetInSight(void) =====
void __fastcall AISMonster::OnTargetInSight(AISMonster *this)
{
  ;
}


// ===== 3dd498 AISMonster::~AISMonster() =====
void __fastcall AISMonster::~AISMonster(AISMonster *this)
{
  *(_DWORD *)this = off_966978;
  CharAIScript::~CharAIScript(this);
}


// ===== 3dd4cc AISMonster::OnEnemySpotted(Character *) =====
void __fastcall AISMonster::OnEnemySpotted(AISMonster *this, Character *a2)
{
  int v3; // r0

  v3 = *((_DWORD *)this + 38);
  if ( !*(_DWORD *)(v3 + 1032) )
  {
    CharAI::AI_SetTarget((CharAI *)(v3 + 968), a2, 0);
    *(_BYTE *)(*((_DWORD *)this + 38) + 1042) = 1;
  }
}


// ===== 3dd500 AISMonster::OnTargetOutOfSight(void) =====
int __fastcall AISMonster::OnTargetOutOfSight(AISMonster *this)
{
  _DWORD *v1; // r3
  GameObject *v3; // r0
  int v4; // r5

  v1 = *((_DWORD **)this + 38);
  v3 = (GameObject *)v1[258];
  if ( v3 )
  {
    v4 = v1[222];
    GameObject::GetTargetPosition(v3);
    v2Controller::Cmd_MoveTo(v4);
    v1 = *((_DWORD **)this + 38);
  }
  CharAI::AI_SetTarget((CharAI *)(v1 + 242), nullptr, 0);
  return CharAI::AI_SyncLastTarget(*((_DWORD *)this + 38) + 968);
}


// ===== 3dd550 AISMonster::OnTargetDied(void) =====
int __fastcall AISMonster::OnTargetDied(AISMonster *this)
{
  v2Controller::Cmd_Stop(*(_DWORD *)(*((_DWORD *)this + 38) + 888));
  CharAI::AI_SetTarget((CharAI *)(*((_DWORD *)this + 38) + 968), nullptr, 0);
  return CharAI::AI_SyncLastTarget(*((_DWORD *)this + 38) + 968);
}


// ===== 3dd588 AISMonster::OnUpdate(void) =====
int __fastcall AISMonster::OnUpdate(Character **this)
{
  int result; // r0
  float *v3; // r6
  float *TargetPosition; // r0
  float v5; // r10
  float v6; // r8
  float v7; // r7
  int v8; // r4
  int v9; // r4
  float v10; // r4

  AISDefault::OnUpdate((AISDefault *)this);
  result = CharStateMachine::SM_IsIdle((Character *)((char *)*(this + 38) + 1276), 0);
  if ( result )
  {
    result = (int)*(this + 38);
    if ( !*(_DWORD *)(result + 1032) )
    {
      result = GameObject::IsNearby(result, result + 5200, 1065353216);
      if ( !result )
      {
        v3 = (float *)*(this + 38);
        TargetPosition = (float *)GameObject::GetTargetPosition((GameObject *)v3);
        v5 = v3[1300] - *TargetPosition;
        v6 = v3[1301] - TargetPosition[1];
        v7 = v3[1302] - TargetPosition[2];
        v8 = Arrays::AITable::members;
        v9 = v8 + 68 * Character::GetCharAIId(*(this + 38));
        v10 = *(float *)(v9 + 28) * *(float *)(v9 + 28);
        result = v10 < (float)((float)((float)(v5 * v5) + (float)(v6 * v6)) + (float)(v7 * v7));
        if ( v10 < (float)((float)((float)(v5 * v5) + (float)(v6 * v6)) + (float)(v7 * v7)) )
          return v2Controller::Cmd_MoveTo(*((_DWORD *)*(this + 38) + 222), (char *)*(this + 38) + 5200);
      }
    }
  }
  return result;
}


// ===== 3dd6d4 `global constructor keyed to'.._.._sources_Game_Objects_Characters_AIScripts_AISMonster.cpp =====
int `global constructor keyed to'.._.._sources_Game_Objects_Characters_AIScripts_AISMonster.cpp()
{
  int result; // r0

  result = `guard variable for'Singleton<PlayerStatManager>::s_inst;
  dword_9A2C38 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9A2C34 = 1056964608;
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


// ===== 3dd7b0 AISMonster::~AISMonster() =====
void __fastcall AISMonster::~AISMonster(AISMonster *this)
{
  *(_DWORD *)this = off_966978;
  CharAIScript::~CharAIScript(this);
  CustomFree(this);
}


// ===== 3dd7ec AISPlayer::OnAttack(int,int,bool) =====
// attributes: thunk
CMessaging *__fastcall AISPlayer::OnAttack(AISDefault *this, int a2, int a3, int a4)
{
  return AISDefault::OnAttack(this, a2, a3, a4);
}


// ===== 3dd7f0 AISPlayer::OnTargetInMeleeRange(void) =====
unsigned int __fastcall AISPlayer::OnTargetInMeleeRange(AISPlayer *this)
{
  unsigned int result; // r0

  result = CharStateMachine::SM_IsAttacking((CharStateMachine *)(*((_DWORD *)this + 38) + 1276));
  if ( result || (result = CharAI::AI_IsTargetSeeking(*((_DWORD *)this + 38) + 968)) == 0 )
  {
    *(_BYTE *)(*((_DWORD *)this + 38) + 1042) = 0;
  }
  else
  {
    result = AISDefault::OnTargetInMeleeRange(this);
    *(_BYTE *)(*((_DWORD *)this + 38) + 1042) = 0;
  }
  return result;
}


// ===== 3dd84c AISPlayer::OnTargetDied(void) =====
int __fastcall AISPlayer::OnTargetDied(AISPlayer *this)
{
  v2Controller::Cmd_Stop(*(_DWORD *)(*((_DWORD *)this + 38) + 888));
  CharAI::AI_SetTarget((CharAI *)(*((_DWORD *)this + 38) + 968), nullptr, 0);
  return CharAI::AI_SyncLastTarget(*((_DWORD *)this + 38) + 968);
}


// ===== 3dd884 AISPlayer::InitVCB(void) =====
int __fastcall AISPlayer::InitVCB(AISPlayer *this)
{
  int v2; // r5
  int result; // r0

  AISDefault::InitVCB(this);
  v2 = *((_DWORD *)this + 46);
  if ( LuaScript::IsInVFTable(this, (glitch::core *)"OnKill") )
    result = 1024;
  else
    result = 0;
  *((_DWORD *)this + 46) = result | v2;
  return result;
}


// ===== 3dd8c0 `global constructor keyed to'.._.._sources_Game_Objects_Characters_AIScripts_AISPlayer.cpp =====
int `global constructor keyed to'.._.._sources_Game_Objects_Characters_AIScripts_AISPlayer.cpp()
{
  int result; // r0

  result = `guard variable for'Singleton<PlayerStatManager>::s_inst;
  dword_9A2C44 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9A2C40 = 1056964608;
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


// ===== 3dd99c AISPlayer::~AISPlayer() =====
void __fastcall AISPlayer::~AISPlayer(AISPlayer *this)
{
  char *v2; // r2
  void *v3; // r0
  size_t v4; // r1

  *(_DWORD *)this = off_966C00;
  v2 = (char *)this + 196;
  v3 = *((void **)this + 49);
  if ( v3 )
  {
    v4 = (*((_DWORD *)v2 + 2) - (_DWORD)v3) & 0xFFFFFFFC;
    if ( v4 > 0x80 )
      CustomFree(v3);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v3, v4);
  }
  *(_DWORD *)this = off_966978;
  CharAIScript::~CharAIScript(this);
}


// ===== 3dda18 AISPlayer::~AISPlayer() =====
void __fastcall AISPlayer::~AISPlayer(AISPlayer *this)
{
  AISPlayer::~AISPlayer(this);
  CustomFree(this);
}


// ===== 3dda34 AISPlayer::OnEnemySpotted(Character *) =====
void __fastcall AISPlayer::OnEnemySpotted(GameObject **this, v2Controller **a2)
{
  int Switch; // r7
  std::string v5; // [sp+4h] [bp-20h] BYREF

  AISDefault::OnEnemySpotted((AISDefault *)this, (Character *)a2);
  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string(&v5, "AutomaticKill");
  Switch = DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v5);
  if ( (std::string *)v5._M_start_of_storage._M_data != &v5 && v5._M_start_of_storage._M_data )
  {
    if ( (unsigned int)(v5._M_buffers._M_end_of_storage - v5._M_start_of_storage._M_data) > 0x80 )
      CustomFree(v5._M_start_of_storage._M_data);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(
        v5._M_start_of_storage._M_data,
        v5._M_buffers._M_end_of_storage - v5._M_start_of_storage._M_data);
  }
  if ( Switch )
    v2Controller::Cmd_Kill(a2[222], *(this + 38), 0);
}


// ===== 3ddb10 AISPlayer::OnKill(Character *) =====
void __fastcall AISPlayer::OnKill(AISPlayer *this, Character *a2)
{
  _BYTE v4[8]; // [sp+0h] [bp-8h] BYREF

  AISDefault::OnKill(this, a2);
  if ( (*((_DWORD *)this + 46) & 0x400) != 0 )
  {
    sfc::script::lua::Arguments::Arguments((sfc::script::lua::Arguments *)v4);
    sfc::script::lua::Arguments::pushUserData((sfc::script::lua::Arguments *)v4, a2);
    LuaScript::Call(this, "OnKill", (const sfc::script::lua::Arguments *)v4);
    sfc::script::lua::Arguments::~Arguments((sfc::script::lua::Arguments *)v4);
  }
}


// ===== 3ddb70 AISPlayer::OnAggro(Character *) =====
void __fastcall AISPlayer::OnAggro(const Character **this, Character *a2)
{
  int Switch; // r10
  VoxSoundManager *v5; // r10
  int CurrentLevel; // r8
  Character *v7; // r0
  int v8; // r9
  int v9; // r3
  int v10; // r8
  std::string v11; // [sp+14h] [bp-34h] BYREF
  std::string v12; // [sp+2Ch] [bp-1Ch] BYREF

  AISDefault::OnAggro((AISDefault *)this, a2);
  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string((int)&v12, "isTracingAggroCount");
  Switch = DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v12);
  if ( (std::string *)v12._M_start_of_storage._M_data != &v12 && v12._M_start_of_storage._M_data )
  {
    if ( (unsigned int)(v12._M_buffers._M_end_of_storage - v12._M_start_of_storage._M_data) > 0x80 )
      CustomFree(v12._M_start_of_storage._M_data);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(
        v12._M_start_of_storage._M_data,
        v12._M_buffers._M_end_of_storage - v12._M_start_of_storage._M_data);
  }
  if ( Switch )
    fprintf((FILE *)&_sF + 2, "OnAggro-Pre - AggroCount: %d\t AggroForMusic:%d\n", *(this + 52), *(this + 53));
  *(this + 52) = (const Character *)((char *)*(this + 52) + 1);
  if ( !*(_BYTE *)(GetOnline() + 5) || PlayerManager::IsLocalPlayer((PlayerManager *)dword_99F76C, *(this + 38)) )
  {
    v5 = (VoxSoundManager *)VoxSoundManager::s_instance;
    CurrentLevel = Application::GetCurrentLevel((Application *)&Singleton<Application>::s_inst);
    v7 = a2;
    v8 = (int)*(this + 53);
    *(this + 53) = (const Character *)(*(_DWORD *)(Character::GetCharAI(v7) + 20) + v8);
    if ( CurrentLevel )
    {
      v9 = *(_DWORD *)(CurrentLevel + 56);
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
          v9 = *(_DWORD *)(CurrentLevel + 56);
        }
      }
      if ( *(_BYTE *)(v9 + 456)
        && *((_BYTE *)v5 + 49)
        && (int)*(this + 53) >= *(_DWORD *)(Arrays::DesignSettingsTable::members + 20) )
      {
        VoxSoundManager::SetMusicState(v5, "combat");
        *((_BYTE *)v5 + 49) = 0;
      }
    }
    DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
    std::string::string((int)&v11, "isTracingAggroCount");
    v10 = DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v11);
    if ( (std::string *)v11._M_start_of_storage._M_data != &v11 && v11._M_start_of_storage._M_data )
    {
      if ( (unsigned int)(v11._M_buffers._M_end_of_storage - v11._M_start_of_storage._M_data) > 0x80 )
        CustomFree(v11._M_start_of_storage._M_data);
      else
        __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(
          v11._M_start_of_storage._M_data,
          v11._M_buffers._M_end_of_storage - v11._M_start_of_storage._M_data);
    }
    if ( v10 )
      fprintf((FILE *)&_sF + 2, "OnAggro-Post - AggroCount: %d\t AggroForMusic:%d\n", *(this + 52), *(this + 53));
  }
}


// ===== 3dde48 AISPlayer::OnDeAggro(Character *) =====
void __fastcall AISPlayer::OnDeAggro(const Character **this, Character *a2)
{
  int Switch; // r10
  VoxSoundManager *v5; // r8
  int v6; // r10
  const Character *v7; // r10
  int v8; // r3
  int v9; // r8
  const Character *v10; // r3
  int v11; // r1
  std::string v12; // [sp+14h] [bp-38h] BYREF
  std::string v13; // [sp+2Ch] [bp-20h] BYREF

  AISDefault::OnDeAggro((AISDefault *)this, a2);
  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string((int)&v13, "isTracingAggroCount");
  Switch = DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v13);
  if ( (std::string *)v13._M_start_of_storage._M_data != &v13 && v13._M_start_of_storage._M_data )
  {
    if ( (unsigned int)(v13._M_buffers._M_end_of_storage - v13._M_start_of_storage._M_data) > 0x80 )
      CustomFree(v13._M_start_of_storage._M_data);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(
        v13._M_start_of_storage._M_data,
        v13._M_buffers._M_end_of_storage - v13._M_start_of_storage._M_data);
  }
  if ( Switch )
    fprintf((FILE *)&_sF + 2, "OnDeAggro-Pre - AggroCount: %d\t AggroForMusic:%d\n", *(this + 52), *(this + 53));
  *(this + 52) = (const Character *)((char *)*(this + 52) - 1);
  if ( !*(_BYTE *)(GetOnline() + 5) || PlayerManager::IsLocalPlayer((PlayerManager *)dword_99F76C, *(this + 38)) )
  {
    v5 = (VoxSoundManager *)VoxSoundManager::s_instance;
    Application::GetCurrentLevel((Application *)&Singleton<Application>::s_inst);
    v6 = (int)*(this + 53);
    v7 = (const Character *)(v6 - *(_DWORD *)(Character::GetCharAI(a2) + 20));
    *(this + 53) = v7;
    if ( !*((_BYTE *)v5 + 49) && !v7 )
    {
      VoxSoundManager::SetMusicState(v5, "ambient");
      v8 = *((unsigned __int8 *)v5 + 50);
      *((_BYTE *)v5 + 49) = 1;
      if ( v8 )
      {
        v11 = *(_DWORD *)(Application::GetCurrentLevel((Application *)&Singleton<Application>::s_inst) + 288);
        if ( v11 >= 0 )
          VoxSoundManager::PlayMusic(v5, v11, 1, 0, 2000);
      }
    }
    if ( !*(this + 52) && !*((_BYTE *)v5 + 50) )
    {
      v10 = *(this + 49);
      if ( v10 != *(this + 50) )
        *(this + 50) = v10;
    }
    DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
    std::string::string((int)&v12, "isTracingAggroCount");
    v9 = DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v12);
    if ( (std::string *)v12._M_start_of_storage._M_data != &v12 && v12._M_start_of_storage._M_data )
    {
      if ( (unsigned int)(v12._M_buffers._M_end_of_storage - v12._M_start_of_storage._M_data) > 0x80 )
        CustomFree(v12._M_start_of_storage._M_data);
      else
        __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(
          v12._M_start_of_storage._M_data,
          v12._M_buffers._M_end_of_storage - v12._M_start_of_storage._M_data);
    }
    if ( v9 )
      fprintf((FILE *)&_sF + 2, "OnDeAggro-Post - AggroCount: %d\t AggroForMusic:%d\n", *(this + 52), *(this + 53));
  }
}


// ===== 3de0e4 std::allocator<Character *>::deallocate(Character **,uint) =====
void __fastcall std::allocator<Character *>::deallocate(int a1, void *a2, int a3)
{
  if ( a2 )
  {
    if ( (unsigned int)(4 * a3) > 0x80 )
      CustomFree(a2);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(a2, 4 * a3);
  }
}


// ===== 3de100 AISPlayer::~AISPlayer() =====
void __fastcall AISPlayer::~AISPlayer(AISPlayer *this)
{
  int v2; // r3

  *(_DWORD *)this = off_966C00;
  v2 = *((_DWORD *)this + 49);
  if ( v2 )
    std::allocator<Character *>::deallocate(
      (char *)this + 204,
      *((_DWORD *)this + 49),
      (*((_DWORD *)this + 51) - v2) >> 2);
  *(_DWORD *)this = off_966978;
  CharAIScript::~CharAIScript(this);
}


// ===== 3de174 AISPlayerIPhone::~AISPlayerIPhone() =====
void __fastcall AISPlayerIPhone::~AISPlayerIPhone(AISPlayerIPhone *this)
{
  *(_DWORD *)this = off_966CD8;
  AISPlayer::~AISPlayer(this);
}


// ===== 3de1a8 AISPlayerIPhone::OnTargetInMeleeRange(void) =====
// attributes: thunk
int __fastcall AISPlayerIPhone::OnTargetInMeleeRange(AISDefault *this)
{
  return AISDefault::OnTargetInMeleeRange(this);
}


// ===== 3de1ac AISPlayerIPhone::OnTargetInCloseRange(void) =====
// attributes: thunk
_DWORD *__fastcall AISPlayerIPhone::OnTargetInCloseRange(AISDefault *this)
{
  return AISDefault::OnTargetInCloseRange(this);
}


// ===== 3de1b0 AISPlayerIPhone::OnTargetInRangedRange(void) =====
// attributes: thunk
int __fastcall AISPlayerIPhone::OnTargetInRangedRange(AISDefault *this)
{
  return AISDefault::OnTargetInRangedRange(this);
}


// ===== 3de1b4 AISPlayerIPhone::OnTargetOutOfRange(void) =====
// attributes: thunk
unsigned int __fastcall AISPlayerIPhone::OnTargetOutOfRange(AISDefault *this)
{
  return AISDefault::OnTargetOutOfRange(this);
}


// ===== 3de1b8 `global constructor keyed to'.._.._sources_Game_Objects_Characters_AIScripts_AISPlayerIPhone.cpp =====
int `global constructor keyed to'.._.._sources_Game_Objects_Characters_AIScripts_AISPlayerIPhone.cpp()
{
  int result; // r0

  result = `guard variable for'Singleton<PlayerStatManager>::s_inst;
  dword_9A2C50 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9A2C4C = 1056964608;
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


// ===== 3de294 AISPlayerIPhone::~AISPlayerIPhone() =====
void __fastcall AISPlayerIPhone::~AISPlayerIPhone(AISPlayerIPhone *this)
{
  *(_DWORD *)this = off_966CD8;
  AISPlayer::~AISPlayer(this);
  CustomFree(this);
}


// ===== 3de2d0 AISFaery::OnMasterInCloseRange(void) =====
int __fastcall AISFaery::OnMasterInCloseRange(AISFaery *this)
{
  return (*(int (__fastcall **)(AISFaery *))(*(_DWORD *)this + 124))(this);
}


// ===== 3de2e4 AISFaery::~AISFaery() =====
void __fastcall AISFaery::~AISFaery(AISFaery *this)
{
  *(_DWORD *)this = off_966978;
  CharAIScript::~CharAIScript(this);
}


// ===== 3de318 AISFaery::OnMasterInMeleeRange(void) =====
int __fastcall AISFaery::OnMasterInMeleeRange(AISFaery *this)
{
  int result; // r0
  int v3; // r6
  int v4; // r3
  int v5; // r7
  float *TargetPosition; // r0
  float v7; // r6
  float v8; // r5
  float v9[3]; // [sp+0h] [bp-18h] BYREF
  float v10; // [sp+Ch] [bp-Ch] BYREF
  float v11; // [sp+10h] [bp-8h]
  float v12; // [sp+14h] [bp-4h]

  result = CharStateMachine::SM_IsIdle((CharStateMachine *)(*((_DWORD *)this + 38) + 1276), 0);
  if ( result )
  {
    v3 = *(_DWORD *)(*((_DWORD *)this + 38) + 1048);
    if ( v3 )
    {
      result = CharStateMachine::SM_IsIdle((CharStateMachine *)(v3 + 1276), 0);
      if ( result )
      {
        v12 = 0.0;
        v10 = 0.0;
        v11 = 0.0;
        GameObject::GetLookAtVec(v3, &v10);
        v10 = COERCE_FLOAT(LODWORD(v10) + 0x80000000) * 200.0;
        v11 = COERCE_FLOAT(LODWORD(v11) + 0x80000000) * 200.0;
        v4 = *((_DWORD *)this + 38);
        v12 = COERCE_FLOAT(LODWORD(v12) + 0x80000000) * 200.0;
        v5 = *(_DWORD *)(v4 + 888);
        TargetPosition = (float *)GameObject::GetTargetPosition((GameObject *)v3);
        v7 = TargetPosition[1] + v11;
        v8 = TargetPosition[2] + v12;
        v9[0] = *TargetPosition + v10;
        v9[1] = v7;
        v9[2] = v8;
        return v2Controller::Cmd_HeadTo(v5, v9);
      }
    }
  }
  return result;
}


// ===== 3de444 AISFaery::OnMasterInRangedRange(void) =====
int __fastcall AISFaery::OnMasterInRangedRange(AISFaery *this)
{
  return v2Controller::Cmd_Stop(*(_DWORD *)(*((_DWORD *)this + 38) + 888));
}


// ===== 3de450 AISFaery::OnMasterOutOfRange(void) =====
int __fastcall AISFaery::OnMasterOutOfRange(AISFaery *this)
{
  float *TargetPosition; // r5
  float *v3; // r6
  float v4; // r8
  float v5; // r0
  int v6; // r3
  float v8[3]; // [sp+4h] [bp-Ch] BYREF

  TargetPosition = (float *)GameObject::GetTargetPosition(*(GameObject **)(*((_DWORD *)this + 38) + 1048));
  v3 = (float *)GameObject::GetTargetPosition(*((GameObject **)this + 38));
  v4 = TargetPosition[1] - v3[1];
  v5 = TargetPosition[2] - v3[2];
  v6 = *((_DWORD *)this + 38);
  v8[0] = *TargetPosition - *v3;
  v8[1] = v4;
  v8[2] = v5;
  return v2Controller::Cmd_HeadTowards(*(_DWORD *)(v6 + 888), v8);
}


// ===== 3de4c8 AISFaery::OnMasterOutOfSight(void) =====
int __fastcall AISFaery::OnMasterOutOfSight(AISFaery *this)
{
  int v1; // r3
  int v2; // r4
  char *TargetPosition; // r1

  v1 = *((_DWORD *)this + 38);
  v2 = *(_DWORD *)(v1 + 888);
  TargetPosition = GameObject::GetTargetPosition(*(GameObject **)(v1 + 1048));
  return v2Controller::Cmd_WarpTo(v2, TargetPosition);
}


// ===== 3de4ec AISFaery::OnFriendSpotted(Character *) =====
int __fastcall AISFaery::OnFriendSpotted(AISFaery *this, Character *a2)
{
  int result; // r0
  unsigned int CurrentFaerieId; // r1

  result = *((_DWORD *)this + 38);
  if ( !*(_DWORD *)(result + 1048) && !*((_DWORD *)a2 + 264) )
  {
    CharAI::AI_SetMaster((CharAI *)(result + 968), a2);
    *((_DWORD *)a2 + 264) = *((_DWORD *)this + 38);
    CurrentFaerieId = Character::SG_GetCurrentFaerieId(a2, -1);
    return Character::ChangeFaery(a2, CurrentFaerieId);
  }
  return result;
}


// ===== 3de544 AISFaery::OnUpdate(void) =====
int __fastcall AISFaery::OnUpdate(AISFaery *this)
{
  int result; // r0
  int v3; // r3
  Character *v4; // r5
  VisualObject *v5; // r6
  int v6; // r7
  int CurrentFaerieId; // r2

  result = AISDefault::OnUpdate((int)this);
  v3 = *((_DWORD *)this + 38);
  v4 = *(Character **)(v3 + 1048);
  if ( v4 )
  {
    v5 = *(VisualObject **)(v3 + 728);
    if ( v5 )
    {
      v6 = *((_DWORD *)this + 49);
      result = Character::SG_GetCurrentFaerieId(*(Character **)(v3 + 1048), -1);
      if ( v6 != result )
      {
        CurrentFaerieId = Character::SG_GetCurrentFaerieId(v4, -1);
        *((_DWORD *)this + 49) = CurrentFaerieId;
        return VisualObject::SetModularSkin(v5, 0, CurrentFaerieId);
      }
    }
  }
  return result;
}


// ===== 3de5ac `global constructor keyed to'.._.._sources_Game_Objects_Characters_AIScripts_AISFaery.cpp =====
int `global constructor keyed to'.._.._sources_Game_Objects_Characters_AIScripts_AISFaery.cpp()
{
  int result; // r0

  result = `guard variable for'Singleton<PlayerStatManager>::s_inst;
  dword_9A2C5C = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9A2C58 = 1056964608;
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


// ===== 3de688 AISFaery::~AISFaery() =====
void __fastcall AISFaery::~AISFaery(AISFaery *this)
{
  *(_DWORD *)this = off_966978;
  CharAIScript::~CharAIScript(this);
  CustomFree(this);
}


// ===== 3de6c4 CharProperties::PROPS_GetWalkSpeed(void) =====
int __fastcall CharProperties::PROPS_GetWalkSpeed(CharProperties *this)
{
  float v1; // r4

  v1 = (float)((float)((float)*((int *)this + 724) * 0.0039062) * 0.01) + 1.0;
  if ( v1 <= 0.0 )
    v1 = 0.0;
  return LODWORD(v1);
}


// ===== 3de708 CharProperties::PROPS_GetRotationSpeed(void) =====
int __fastcall CharProperties::PROPS_GetRotationSpeed(CharProperties *this)
{
  float v1; // r4

  v1 = (float)((float)((float)*((int *)this + 725) * 0.0039062) * 0.01) + 1.0;
  if ( v1 <= 0.0 )
    v1 = 0.0;
  return LODWORD(v1);
}


// ===== 3de74c CharProperties::PROPS_GetAttackSpeed(void) =====
int __fastcall CharProperties::PROPS_GetAttackSpeed(CharProperties *this)
{
  float v1; // r4

  v1 = (float)((float)((float)*((int *)this + 726) * 0.0039062) * 0.01) + 1.0;
  if ( v1 <= 0.0 )
    v1 = 0.0;
  return LODWORD(v1);
}


// ===== 3de790 CharProperties::PROPS_GetOpacity(void) =====
int __fastcall CharProperties::PROPS_GetOpacity(CharProperties *this)
{
  float v1; // r4

  v1 = (float)((float)((float)*((int *)this + 727) * 0.0039062) * 0.01) + 1.0;
  if ( v1 > 0.0 )
  {
    if ( v1 >= 1.0 )
      v1 = 1.0;
  }
  else
  {
    v1 = 0.0;
  }
  return LODWORD(v1);
}


// ===== 3de7ec CharProperties::PROPS_GetModifiedXP(int) =====
int __fastcall CharProperties::PROPS_GetModifiedXP(CharProperties *this, int a2)
{
  return ((*((_DWORD *)this + 878) + 25600) / 100 * a2) >> 8;
}


// ===== 3de814 CharProperties::PROPS_GetModifiedPrice(int) =====
int __fastcall CharProperties::PROPS_GetModifiedPrice(CharProperties *this, int a2)
{
  return ((*((_DWORD *)this + 879) + 25600) / 100 * a2) >> 8;
}


// ===== 3de83c CharProperties::PROPS_RemoveDot(int) =====
void __fastcall CharProperties::PROPS_RemoveDot(CharProperties *this, int a2)
{
  ;
}


// ===== 3de840 CharProperties::DBG_PROPS_DumpToFile(char const*,bool) =====
void __fastcall CharProperties::DBG_PROPS_DumpToFile(CharProperties *this, const char *a2, bool a3)
{
  ;
}


// ===== 3de844 CharProperties::DBG_PROPS_Print(int,int) =====
void __fastcall CharProperties::DBG_PROPS_Print(CharProperties *this, int a2, int a3)
{
  ;
}


// ===== 3de848 CharProperties::DBG_PROPS_GetName(int) =====
int __fastcall CharProperties::DBG_PROPS_GetName(CharProperties *this, int a2)
{
  return Structs::CharacterProperties::m_dataNames[6 * a2 + 5];
}


// ===== 3de870 std::priv::_Deque_iterator_base<CharProperties::BuffInst *>::_M_subtract(std::priv::_Deque_iterator_base<CharProperties::BuffInst *> const&) =====
int __fastcall std::priv::_Deque_iterator_base<CharProperties::BuffInst *>::_M_subtract(_DWORD *a1, _DWORD *a2)
{
  return ((*a1 - a1[1]) >> 2) + ((a2[2] - *a2) >> 2) + 32 * (((a1[3] - a2[3]) >> 2) - 1);
}


// ===== 3de8b4 std::priv::_Deque_iterator_base<CharProperties::BuffInst *>::_M_advance(int) =====
_DWORD *__fastcall std::priv::_Deque_iterator_base<CharProperties::BuffInst *>::_M_advance(_DWORD *result, int a2)
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


// ===== 3de928 std::priv::__ucopy<std::priv::_Deque_iterator<CharProperties::BuffInst *,std::_Const_traits<CharProperties::BuffInst *>>,std::priv::_Deque_iterator<CharProperties::BuffInst *,std::_Nonconst_traits<CharProperties::BuffInst *>>,int>(std::priv::_Deque_iterator<CharProperties::BuffInst *,std::_Const_traits<CharProperties::BuffInst *>>,std::priv::_Deque_iterator<CharProperties::BuffInst *,std::_Const_traits<CharProperties::BuffInst *>>,std::priv::_Deque_iterator<CharProperties::BuffInst *,std::_Nonconst_traits<CharProperties::BuffInst *>>,std::random_access_iterator_tag const&,int *) =====
int *std::priv::__ucopy<std::priv::_Deque_iterator<CharProperties::BuffInst *,std::_Const_traits<CharProperties::BuffInst *>>,std::priv::_Deque_iterator<CharProperties::BuffInst *,std::_Nonconst_traits<CharProperties::BuffInst *>>,int>(
        int *a1,
        ...)
{
  int v2; // r1
  int v3; // r2
  int v4; // r3
  int v5; // r0
  int v6; // r2
  int v7; // r3
  _DWORD *v8; // r3
  int v9; // r2
  int v10; // r3
  int *v11; // r2
  int v12; // r3
  _DWORD *varg_r1; // [sp+Ch] [bp+Ch] BYREF
  va_list varg_r1a; // [sp+Ch] [bp+Ch]
  _DWORD *varg_r2; // [sp+10h] [bp+10h]
  int varg_r3; // [sp+14h] [bp+14h]
  _DWORD *v18; // [sp+18h] [bp+18h]
  int v19; // [sp+1Ch] [bp+1Ch] BYREF
  va_list va1; // [sp+1Ch] [bp+1Ch]
  int v21; // [sp+20h] [bp+20h]
  int v22; // [sp+24h] [bp+24h]
  int v23; // [sp+28h] [bp+28h]
  int *v24; // [sp+2Ch] [bp+2Ch]
  va_list va2; // [sp+30h] [bp+30h] BYREF

  va_start(va2, a1);
  va_start(va1, a1);
  va_start(varg_r1a, a1);
  varg_r1 = va_arg(va1, _DWORD *);
  varg_r2 = va_arg(va1, _DWORD *);
  varg_r3 = va_arg(va1, _DWORD);
  v18 = va_arg(va1, _DWORD *);
  va_copy(va2, va1);
  v19 = va_arg(va2, _DWORD);
  v21 = va_arg(va2, _DWORD);
  v22 = va_arg(va2, _DWORD);
  v23 = va_arg(va2, _DWORD);
  v24 = va_arg(va2, int *);
  v2 = v24[1];
  v3 = v24[2];
  v4 = v24[3];
  *a1 = *v24;
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
  v5 = std::priv::_Deque_iterator_base<CharProperties::BuffInst *>::_M_subtract((int *)&va1, (_DWORD **)&varg_r1a);
  if ( v5 > 0 )
  {
    while ( 1 )
    {
      *(_DWORD *)*a1 = *varg_r1++;
      if ( varg_r1 == (_DWORD *)varg_r3 )
      {
        v8 = (_DWORD *)*++v18;
        varg_r3 = *v18 + 128;
        varg_r1 = v8;
        varg_r2 = v8;
        v9 = a1[2];
        v10 = *a1 + 4;
        *a1 = v10;
        if ( v10 == v9 )
          goto LABEL_7;
LABEL_4:
        if ( !--v5 )
          return a1;
      }
      else
      {
        v6 = a1[2];
        v7 = *a1 + 4;
        *a1 = v7;
        if ( v7 != v6 )
          goto LABEL_4;
LABEL_7:
        --v5;
        v11 = (int *)(a1[3] + 4);
        a1[3] = (int)v11;
        v12 = *v11;
        a1[2] = *v11 + 128;
        *a1 = v12;
        a1[1] = v12;
        if ( !v5 )
          return a1;
      }
    }
  }
  return a1;
}


// ===== 3dea18 std::priv::__copy_backward<std::priv::_Deque_iterator<CharProperties::BuffInst *,std::_Nonconst_traits<CharProperties::BuffInst *>>,std::priv::_Deque_iterator<CharProperties::BuffInst *,std::_Nonconst_traits<CharProperties::BuffInst *>>,int>(std::priv::_Deque_iterator<CharProperties::BuffInst *,std::_Nonconst_traits<CharProperties::BuffInst *>>,std::priv::_Deque_iterator<CharProperties::BuffInst *,std::_Nonconst_traits<CharProperties::BuffInst *>>,std::priv::_Deque_iterator<CharProperties::BuffInst *,std::_Nonconst_traits<CharProperties::BuffInst *>>,std::random_access_iterator_tag const&,int *) =====
int *__fastcall std::priv::__copy_backward<std::priv::_Deque_iterator<CharProperties::BuffInst *,std::_Nonconst_traits<CharProperties::BuffInst *>>,std::priv::_Deque_iterator<CharProperties::BuffInst *,std::_Nonconst_traits<CharProperties::BuffInst *>>,int>(
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
  v12 = std::priv::_Deque_iterator_base<CharProperties::BuffInst *>::_M_subtract(a3, v25);
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


// ===== 3deb14 std::priv::__copy<std::priv::_Deque_iterator<CharProperties::BuffInst *,std::_Nonconst_traits<CharProperties::BuffInst *>>,std::priv::_Deque_iterator<CharProperties::BuffInst *,std::_Nonconst_traits<CharProperties::BuffInst *>>,int>(std::priv::_Deque_iterator<CharProperties::BuffInst *,std::_Nonconst_traits<CharProperties::BuffInst *>>,std::priv::_Deque_iterator<CharProperties::BuffInst *,std::_Nonconst_traits<CharProperties::BuffInst *>>,std::priv::_Deque_iterator<CharProperties::BuffInst *,std::_Nonconst_traits<CharProperties::BuffInst *>>,std::random_access_iterator_tag const&,int *) =====
_DWORD *__fastcall std::priv::__copy<std::priv::_Deque_iterator<CharProperties::BuffInst *,std::_Nonconst_traits<CharProperties::BuffInst *>>,std::priv::_Deque_iterator<CharProperties::BuffInst *,std::_Nonconst_traits<CharProperties::BuffInst *>>,int>(
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
  v13 = std::priv::_Deque_iterator_base<CharProperties::BuffInst *>::_M_subtract(a3, v28);
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


// ===== 3dec0c CharProperties::SetCharacter(Character *) =====
int __fastcall CharProperties::SetCharacter(int this, Character *a2)
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
               "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Objects\\Characters\\Properties\\CharProperties.cpp",
               327);
    }
  }
  *(_DWORD *)(v3 + 4) = a2;
  return this;
}


// ===== 3deca0 CharProperties::_SetProperty(Structs::CharacterProperties &,int,int) =====
_DWORD *__fastcall CharProperties::_SetProperty(int a1, int a2, int a3, int a4)
{
  _DWORD *result; // r0

  if ( a3 >= 0 )
  {
    if ( a3 <= 223 )
    {
      *(_DWORD *)(a2 + Structs::CharacterProperties::m_dataOffsets[a3] + 4) = a4;
      return Structs::CharacterProperties::m_dataOffsets;
    }
    if ( gAssertLevel != 2 )
    {
      if ( gAssertLevel == 1 )
        return (_DWORD *)fprintf(
                           (FILE *)&_sF + 2,
                           "ASSERT(%s) FAILED: %s:%d\n",
                           "idx < size",
                           "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Objects\\Characters\\Properties\\CharProperties.cpp",
                           276);
      return result;
    }
LABEL_8:
    dword_0 = 0;
    return result;
  }
  if ( gAssertLevel == 2 )
    goto LABEL_8;
  if ( gAssertLevel == 1 )
    return (_DWORD *)fprintf(
                       (FILE *)&_sF + 2,
                       "ASSERT(%s) FAILED: %s:%d\n",
                       "idx >= 0",
                       "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Objects\\Characters\\Properties\\CharProperties.cpp",
                       275);
  return result;
}


// ===== 3dedb4 CharProperties::_GetProperty(Structs::CharacterProperties const&,int) =====
int __fastcall CharProperties::_GetProperty(int a1, int a2, int a3)
{
  if ( a3 < 0 )
  {
    if ( gAssertLevel != 2 )
    {
      if ( gAssertLevel != 1 )
        return -1;
      fprintf(
        (FILE *)&_sF + 2,
        "ASSERT(%s) FAILED: %s:%d\n",
        "idx >= 0",
        "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Objects\\Characters\\Properties\\CharProperties.cpp",
        259);
      return -1;
    }
LABEL_7:
    dword_0 = 0;
    return -1;
  }
  if ( a3 <= 223 )
    return *(_DWORD *)(a2 + Structs::CharacterProperties::m_dataOffsets[a3] + 4);
  if ( gAssertLevel == 2 )
    goto LABEL_7;
  if ( gAssertLevel != 1 )
    return -1;
  fprintf(
    (FILE *)&_sF + 2,
    "ASSERT(%s) FAILED: %s:%d\n",
    "idx < size",
    "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Objects\\Characters\\Properties\\CharProperties.cpp",
    260);
  return -1;
}


// ===== 3deed8 CharProperties::_GetType(int) =====
int __fastcall CharProperties::_GetType(CharProperties *this, int a2)
{
  int result; // r0

  result = CharProperties::_GetProperty((int)this, Arrays::CharacterTable::members + 900, a2);
  if ( result == -1 )
    return 16;
  return result;
}


// ===== 3def10 CharProperties::_GetDefault(int) =====
int __fastcall CharProperties::_GetDefault(CharProperties *this, int a2)
{
  return CharProperties::_GetProperty((int)this, Arrays::CharacterTable::members, a2);
}


// ===== 3def34 CharProperties::_ResetProperties(Structs::CharacterProperties &) =====
int __fastcall CharProperties::_ResetProperties(CharProperties *this, int a2)
{
  int i; // r4
  int v5; // r5
  int result; // r0

  for ( i = 0; i != 224; ++i )
  {
    v5 = Structs::CharacterProperties::m_dataOffsets[i];
    result = CharProperties::_GetDefault(this, i);
    *(_DWORD *)(a2 + v5 + 4) = result;
  }
  return result;
}


// ===== 3def84 CharProperties::PROPS_ResetSheet(Structs::CharacterProperties *) =====
int __fastcall CharProperties::PROPS_ResetSheet(CharProperties *a1, int *a2)
{
  if ( !a2 )
    a2 = &CharProperties::s_temp;
  return CharProperties::_ResetProperties(a1, (int)a2);
}


// ===== 3defac CharProperties::ResetGearsProperties(void) =====
int __fastcall CharProperties::ResetGearsProperties(CharProperties *this)
{
  return CharProperties::_ResetProperties(this);
}


// ===== 3defb4 CharProperties::ResetSavedProperties(void) =====
int __fastcall CharProperties::ResetSavedProperties(CharProperties *this)
{
  return CharProperties::_ResetProperties(this);
}


// ===== 3defbc CharProperties::ResetBaseProperties(void) =====
int __fastcall CharProperties::ResetBaseProperties(CharProperties *this)
{
  return CharProperties::_ResetProperties(this);
}


// ===== 3defc4 CharProperties::ResetAllProperties(void) =====
int __fastcall CharProperties::ResetAllProperties(CharProperties *this)
{
  CharProperties::ResetBaseProperties(this);
  CharProperties::ResetSavedProperties(this);
  CharProperties::ResetGearsProperties(this);
  return CharProperties::_ResetProperties(this);
}


// ===== 3deff4 CharProperties::CharProperties(void) =====
void __fastcall CharProperties::CharProperties(CharProperties *this)
{
  *(_DWORD *)this = off_966E88;
  *((_DWORD *)this + 905) = (char *)this + 3608;
  *((_DWORD *)this + 904) = (char *)this + 3608;
  *((_DWORD *)this + 677) = off_96BBC0;
  *((_DWORD *)this + 908) = 0;
  *((_DWORD *)this + 1) = 0;
  *((_DWORD *)this + 2) = off_96BBC0;
  *((_DWORD *)this + 227) = off_96BBC0;
  *((_DWORD *)this + 452) = off_96BBC0;
  *((_DWORD *)this + 903) = 0;
  *((_BYTE *)this + 3608) = 0;
  *((_DWORD *)this + 906) = 0;
  CharProperties::ResetAllProperties(this);
  CharProperties::_ResetProperties(this);
}


// ===== 3df084 CharProperties::CharProperties(void) =====
void __fastcall CharProperties::CharProperties(CharProperties *this)
{
  *(_DWORD *)this = off_966E88;
  *((_DWORD *)this + 905) = (char *)this + 3608;
  *((_DWORD *)this + 904) = (char *)this + 3608;
  *((_DWORD *)this + 677) = off_96BBC0;
  *((_DWORD *)this + 908) = 0;
  *((_DWORD *)this + 1) = 0;
  *((_DWORD *)this + 2) = off_96BBC0;
  *((_DWORD *)this + 227) = off_96BBC0;
  *((_DWORD *)this + 452) = off_96BBC0;
  *((_DWORD *)this + 903) = 0;
  *((_BYTE *)this + 3608) = 0;
  *((_DWORD *)this + 906) = 0;
  CharProperties::ResetAllProperties(this);
  CharProperties::_ResetProperties(this);
}


// ===== 3df114 CharProperties::_IsPropertySet(Structs::CharacterProperties const&,int) =====
bool __fastcall CharProperties::_IsPropertySet(CharProperties *a1, int a2, int a3)
{
  int Property; // r6

  Property = CharProperties::_GetProperty((int)a1, a2, a3);
  return Property != CharProperties::_GetDefault(a1, a3);
}


// ===== 3df140 CharProperties::_AddProperty(Structs::CharacterProperties &,int,int) =====
_DWORD *__fastcall CharProperties::_AddProperty(CharProperties *a1, int a2, int a3, int a4)
{
  int v8; // r0
  int v9; // r1
  int v10; // r2
  int v11; // r3
  int Property; // r0

  if ( CharProperties::_IsPropertySet(a1, a2, a3) )
  {
    Property = CharProperties::_GetProperty((int)a1, a2, a3);
    v9 = a2;
    v11 = Property + a4;
    v10 = a3;
    v8 = (int)a1;
  }
  else
  {
    v8 = (int)a1;
    v9 = a2;
    v10 = a3;
    v11 = a4;
  }
  return CharProperties::_SetProperty(v8, v9, v10, v11);
}


// ===== 3df1a0 StreamReader::readAs<uint>(IStreamBase *,uint *) =====
int __fastcall StreamReader::readAs<unsigned int>(int a1, int a2)
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


// ===== 3df250 CharProperties::_LoadFromCharTable(Structs::CharacterProperties &,int) =====
void *__fastcall CharProperties::_LoadFromCharTable(int a1, int a2, int a3)
{
  void *result; // r0

  if ( a3 >= 0 && a3 < Arrays::CharacterTable::size )
    return memcpy((void *)(a2 + 4), (const void *)(Arrays::CharacterTable::members + 900 * a3 + 4), 0x380u);
  return result;
}


// ===== 3df2a4 CharProperties::LoadBaseProperties(int) =====
void *__fastcall CharProperties::LoadBaseProperties(CharProperties *this, int a2)
{
  return CharProperties::_LoadFromCharTable((int)this, (int)this + 8, a2);
}


// ===== 3df2b0 CharProperties::UnLoadPropNames(void) =====
void __fastcall CharProperties::UnLoadPropNames(CharProperties *this)
{
  void **v1; // r4
  int v2; // r5

  v1 = (void **)CharProperties::s_propNames;
  v2 = dword_9A2C70;
  if ( CharProperties::s_propNames != dword_9A2C70 )
  {
    do
    {
      if ( *v1 )
      {
        CustomFree(*v1);
        *v1 = nullptr;
      }
      ++v1;
    }
    while ( v1 != (void **)v2 );
    if ( CharProperties::s_propNames != dword_9A2C70 )
      dword_9A2C70 = CharProperties::s_propNames;
  }
}


// ===== 3df314 CharProperties::PROPS_ApplyClassToSheet(int,Structs::CharacterProperties *) =====
CharProperties *__fastcall CharProperties::PROPS_ApplyClassToSheet(
        CharProperties *this,
        int a2,
        Structs::CharacterProperties *a3)
{
  if ( a3 )
    return CharProperties::_LoadClass(this, a3, a2, 1);
  if ( gAssertLevel == 2 )
  {
    *(_DWORD *)a3 = a3;
  }
  else if ( gAssertLevel == 1 )
  {
    return (CharProperties *)fprintf(
                               (FILE *)&_sF + 2,
                               "ASSERT(%s) FAILED: %s:%d\n",
                               "sheet",
                               "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Objects\\Characters\\Properties\\CharProperties.cpp",
                               796);
  }
  return this;
}


// ===== 3df3b8 CharProperties::PROPS_ApplyClass(int,bool) =====
CharProperties *__fastcall CharProperties::PROPS_ApplyClass(CharProperties *this, int a2, _BOOL4 a3)
{
  bool v4; // r3
  Structs::CharacterProperties *v6; // r1

  v4 = a3;
  if ( !a3 )
  {
    v6 = (CharProperties *)((char *)this + 2708);
  }
  else
  {
    v4 = 1;
    v6 = (Structs::CharacterProperties *)&CharProperties::s_temp;
  }
  return CharProperties::_LoadClass(this, v6, a2, v4);
}


// ===== 3df3f0 CharProperties::HandleDots(void) =====
_BYTE *__fastcall CharProperties::HandleDots(CharProperties *this)
{
  char *v2; // r6
  int i; // r4
  _BYTE *result; // r0
  _BYTE *v5; // r8
  int v6; // r0
  _BYTE *v7; // r3
  bool v8; // zf
  int v9; // r8
  _BYTE v10[40]; // [sp+8h] [bp+0h] BYREF

  v2 = (char *)this + 2708;
  for ( i = -1; i != 5; ++i )
  {
    result = (_BYTE *)CharProperties::_GetProperty(this, v2, i + 127);
    v5 = result;
    if ( (int)result > 0 )
    {
      v6 = (*(int (__fastcall **)(_DWORD))(**((_DWORD **)this + 1) + 52))(*((_DWORD *)this + 1));
      v7 = v5;
      v9 = v6;
      v8 = v6 == 0;
      result = v10;
      if ( v8 )
      {
        Character::F_DotAttack(v10, *((_DWORD *)this + 1), *((_DWORD *)this + 1), v7, i);
        result = (_BYTE *)Character::F_ApplyResult(v10, *((_DWORD *)this + 1), *((_DWORD *)this + 1), v9);
      }
    }
  }
  return result;
}


// ===== 3df480 CharProperties::LoadGearsProperties(void) =====
unsigned int __fastcall CharProperties::LoadGearsProperties(CharProperties *this)
{
  unsigned int v2; // r7
  unsigned int result; // r0
  ItemInstance *EquippedItem; // r0
  ItemInstance *v5; // r6
  int ItemId; // r8
  unsigned int v7; // r4
  char IsEquipmentSlotLeftHand; // r0
  int PowerId; // r8
  char v10; // r0

  v2 = 0;
  result = ItemInventory::GetNumEquipmentSlots((ItemInventory *)(*((_DWORD *)this + 1) + 892));
  if ( result )
  {
    do
    {
      EquippedItem = (ItemInstance *)ItemInventory::GetEquippedItem((ItemInventory *)(*((_DWORD *)this + 1) + 892), v2);
      v5 = EquippedItem;
      if ( EquippedItem )
      {
        ItemId = ItemInstance::GetItemId(EquippedItem);
        v7 = 0;
        IsEquipmentSlotLeftHand = ItemInventory::IsEquipmentSlotLeftHand(
                                    (ItemInventory *)(*((_DWORD *)this + 1) + 892),
                                    v2);
        CharProperties::_LoadGearStats(this, ItemId, IsEquipmentSlotLeftHand);
        while ( v7 < ItemInstance::GetNumPowers(v5) )
        {
          PowerId = ItemInstance::GetPowerId(v5, v7++);
          v10 = ItemInventory::IsEquipmentSlotLeftHand((ItemInventory *)(*((_DWORD *)this + 1) + 892), v2);
          CharProperties::_LoadGearPower(this, PowerId, v10);
        }
      }
      ++v2;
      result = ItemInventory::GetNumEquipmentSlots((ItemInventory *)(*((_DWORD *)this + 1) + 892));
    }
    while ( v2 < result );
  }
  return result;
}


// ===== 3df548 `global constructor keyed to'.._.._sources_Game_Objects_Characters_Properties_CharProperties.cpp =====
int `global constructor keyed to'.._.._sources_Game_Objects_Characters_Properties_CharProperties.cpp()
{
  int result; // r0

  dword_9A2C68 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9A2C64 = 1056964608;
  dword_9A2C74 = 0;
  CharProperties::s_propNames = 0;
  dword_9A2C70 = 0;
  _aeabi_atexit((int)&CharProperties::s_propNames, (int)std::vector<char *>::~vector, (int)&_dso_handle);
  CharProperties::s_temp = (int)off_96BBC0;
  result = _aeabi_atexit(
             (int)&CharProperties::s_temp,
             (int)Structs::CharacterProperties::~CharacterProperties,
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


// ===== 3df6e0 CharProperties::PROPS_GetInt(int,bool) =====
int __fastcall CharProperties::PROPS_GetInt(CharProperties *this, int a2, int a3)
{
  int *v5; // r1

  if ( a3 == 0 )
    v5 = (int *)((char *)this + 2708);
  else
    v5 = &CharProperties::s_temp;
  return CharProperties::_GetProperty((int)this, (int)v5, a2) >> 8;
}


// ===== 3df718 CharProperties::PROPS_GetMagicDamageBonus(void) =====
int __fastcall CharProperties::PROPS_GetMagicDamageBonus(CharProperties *this)
{
  Character *v1; // r4
  int CurrentFaerieId; // r0
  int v4; // r2

  v1 = *((Character **)this + 1);
  CurrentFaerieId = Character::SG_GetCurrentFaerieId(v1, -1);
  v4 = *(_DWORD *)(Character::GetCharFaery(v1, CurrentFaerieId) + 8);
  if ( v4 == -1 )
    return 0;
  else
    return CharProperties::_GetProperty(*((_DWORD *)this + 1) + 1376, *((_DWORD *)this + 1) + 4084, v4 + 166);
}


// ===== 3df76c CharProperties::PROPS_GetMagicToHit(void) =====
int __fastcall CharProperties::PROPS_GetMagicToHit(CharProperties *this)
{
  Character *v1; // r4
  int CurrentFaerieId; // r0
  int v4; // r2

  v1 = *((Character **)this + 1);
  CurrentFaerieId = Character::SG_GetCurrentFaerieId(v1, -1);
  v4 = *(_DWORD *)(Character::GetCharFaery(v1, CurrentFaerieId) + 8);
  if ( v4 == -1 )
    return 19200;
  else
    return CharProperties::_GetProperty(*((_DWORD *)this + 1) + 1376, *((_DWORD *)this + 1) + 4084, v4 + 159) + 19200;
}


// ===== 3df7c4 CharProperties::PROPS_GetBonusCritRating(bool) =====
int __fastcall CharProperties::PROPS_GetBonusCritRating(CharProperties *this, int a2)
{
  int v3; // r0
  unsigned int v4; // r1
  ItemInstance *EquippedItem; // r0
  int v6; // r2

  v3 = *((_DWORD *)this + 1);
  if ( a2 )
    v4 = 2;
  else
    v4 = 1;
  EquippedItem = (ItemInstance *)ItemInventory::GetEquippedItem((ItemInventory *)(v3 + 892), v4);
  if ( !EquippedItem )
    return 0;
  v6 = *(_DWORD *)(ItemInstance::GetItem(EquippedItem) + 148);
  if ( v6 == -1 )
    return 0;
  else
    return CharProperties::_GetProperty((int)this, (int)this + 2708, v6 + 64);
}


// ===== 3df81c CharProperties::PROPS_GetBonusAttackRating(bool) =====
int __fastcall CharProperties::PROPS_GetBonusAttackRating(CharProperties *this, int a2)
{
  int v3; // r0
  unsigned int v4; // r1
  ItemInstance *EquippedItem; // r0
  int v6; // r2
  int Property; // r6

  v3 = *((_DWORD *)this + 1);
  if ( a2 )
    v4 = 2;
  else
    v4 = 1;
  EquippedItem = (ItemInstance *)ItemInventory::GetEquippedItem((ItemInventory *)(v3 + 892), v4);
  if ( !EquippedItem )
    return 0;
  v6 = *(_DWORD *)(ItemInstance::GetItem(EquippedItem) + 148);
  if ( v6 == -1 )
    return 0;
  Property = CharProperties::_GetProperty((int)this, (int)this + 2708, v6 + 51);
  if ( ItemInventory::IsDualWielding((ItemInventory *)(*((_DWORD *)this + 1) + 892)) )
    return CharProperties::_GetProperty((int)this, (int)this + 2708, 58) + Property;
  else
    return Property;
}


// ===== 3df8ac CharProperties::PROPS_GetBonusDamage(bool) =====
int __fastcall CharProperties::PROPS_GetBonusDamage(CharProperties *this, int a2)
{
  int v3; // r0
  unsigned int v4; // r1
  ItemInstance *EquippedItem; // r0
  int v6; // r2
  int Property; // r7
  int v8; // r6
  int IsDualWielding; // r0

  v3 = *((_DWORD *)this + 1);
  if ( a2 )
    v4 = 2;
  else
    v4 = 1;
  EquippedItem = (ItemInstance *)ItemInventory::GetEquippedItem((ItemInventory *)(v3 + 892), v4);
  if ( !EquippedItem )
    return 0;
  v6 = *(_DWORD *)(ItemInstance::GetItem(EquippedItem) + 148);
  if ( v6 == -1 )
    return 0;
  Property = CharProperties::_GetProperty((int)this, (int)this + 2708, v6 + 83);
  if ( ItemInventory::HasTwoHander((ItemInventory *)(*((_DWORD *)this + 1) + 892), 1) )
  {
    v8 = CharProperties::_GetProperty((int)this, (int)this + 2708, 91) + Property;
    IsDualWielding = ItemInventory::IsDualWielding((ItemInventory *)(*((_DWORD *)this + 1) + 892));
    if ( !IsDualWielding )
      return v8 + IsDualWielding;
  }
  else
  {
    v8 = Property;
    IsDualWielding = ItemInventory::IsDualWielding((ItemInventory *)(*((_DWORD *)this + 1) + 892));
    if ( !IsDualWielding )
      return v8 + IsDualWielding;
  }
  return v8 + CharProperties::_GetProperty((int)this, (int)this + 2708, 90);
}


// ===== 3df980 CharProperties::PROPS_GetIntWithBonus(int,bool) =====
int __fastcall CharProperties::PROPS_GetIntWithBonus(CharProperties *this, int a2, int a3)
{
  int v3; // r5
  int *v5; // r1
  int v6; // r6
  int result; // r0

  v3 = a2;
  if ( !a3 )
    a2 = (int)this + 2704;
  if ( a3 )
    v5 = &CharProperties::s_temp;
  else
    v5 = (int *)(a2 + 4);
  v6 = CharProperties::_GetProperty((int)this, (int)v5, v3) >> 8;
  switch ( v3 )
  {
    case '2':
      result = v6 + (CharProperties::PROPS_GetBonusAttackRating(this, 0) >> 8);
      break;
    case 'O':
    case 'P':
      result = v6 + (CharProperties::PROPS_GetBonusDamage(this, 0) >> 8);
      break;
    case 'Q':
    case 'R':
      v6 += CharProperties::PROPS_GetBonusDamage(this, 1) >> 8;
      goto LABEL_8;
    default:
LABEL_8:
      result = v6;
      break;
  }
  return result;
}


// ===== 3dfa9c std::deque<CharProperties::BuffInst *,std::allocator<CharProperties::BuffInst *>>::_M_erase(std::priv::_Deque_iterator<CharProperties::BuffInst *,std::_Nonconst_traits<CharProperties::BuffInst *>>,std::__false_type const&) =====
int *__fastcall std::deque<CharProperties::BuffInst *>::_M_erase(int *a1, int *a2, int *a3)
{
  int v3; // r7
  int v4; // r11
  int v5; // r6
  int v6; // r9
  int v7; // t1
  int v11; // r0
  int v12; // r1
  int v13; // r2
  int v14; // r3
  _DWORD *v15; // t0
  unsigned int v16; // r8
  int v17; // r1
  int v18; // r2
  int v19; // r3
  int v20; // r12
  int v21; // r5
  unsigned int v22; // r2
  int v23; // r1
  int v24; // r2
  int v25; // r3
  int v26; // r1
  int v27; // r2
  int v28; // r3
  int v30; // lr
  int v31; // r5
  unsigned int v32; // r2
  std::__node_alloc *v33; // r0
  int *v34; // r2
  int v35; // r3
  int v36; // r2
  std::__node_alloc *v37; // r0
  int *v38; // r2
  int v39; // r3
  int v40; // [sp+8h] [bp-D4h]
  int v41; // [sp+8h] [bp-D4h]
  int v42; // [sp+Ch] [bp-D0h]
  int v43; // [sp+Ch] [bp-D0h]
  int v44; // [sp+10h] [bp-CCh]
  int v45; // [sp+10h] [bp-CCh]
  int v46; // [sp+14h] [bp-C8h]
  int v47; // [sp+18h] [bp-C4h]
  int v48; // [sp+18h] [bp-C4h]
  int v49; // [sp+1Ch] [bp-C0h]
  _DWORD v50[4]; // [sp+20h] [bp-BCh] BYREF
  int v51; // [sp+30h] [bp-ACh] BYREF
  int v52; // [sp+34h] [bp-A8h]
  int v53; // [sp+38h] [bp-A4h]
  int v54; // [sp+3Ch] [bp-A0h]
  _DWORD v55[4]; // [sp+40h] [bp-9Ch] BYREF
  _DWORD v56[4]; // [sp+50h] [bp-8Ch] BYREF
  _DWORD v57[4]; // [sp+60h] [bp-7Ch] BYREF
  int v58[4]; // [sp+70h] [bp-6Ch] BYREF
  int v59[4]; // [sp+80h] [bp-5Ch] BYREF
  int v60[4]; // [sp+90h] [bp-4Ch] BYREF
  int v61[4]; // [sp+A0h] [bp-3Ch] BYREF
  int v62[4]; // [sp+B0h] [bp-2Ch] BYREF
  _DWORD v63[4]; // [sp+C0h] [bp-1Ch] BYREF

  v3 = a3[2];
  v4 = a3[3];
  v5 = *a3 + 4;
  v6 = a3[1];
  if ( v5 == v3 )
  {
    v7 = *(_DWORD *)(v4 + 4);
    v4 += 4;
    v6 = v7;
  }
  v11 = *a2;
  v15 = a2 + 1;
  v12 = a2[1];
  v13 = *++v15;
  v14 = v15[1];
  v63[0] = v11;
  v63[1] = v12;
  v63[2] = v13;
  v63[3] = v14;
  if ( v5 == v3 )
  {
    v3 = v6 + 128;
    v5 = v6;
  }
  v16 = std::priv::_Deque_iterator_base<CharProperties::BuffInst *>::_M_subtract(a3, v63);
  v17 = a2[1];
  v18 = a2[2];
  v19 = a2[3];
  v50[0] = *a2;
  v50[1] = v17;
  v50[2] = v18;
  v50[3] = v19;
  if ( v16 >= (unsigned int)std::priv::_Deque_iterator_base<CharProperties::BuffInst *>::_M_subtract(a2 + 4, v50) >> 1 )
  {
    v41 = a3[3];
    v48 = a2[4];
    v46 = a2[5];
    v30 = a2[6];
    v45 = *a3;
    v43 = a3[1];
    v31 = a3[2];
    v56[3] = a2[7];
    v56[2] = v30;
    v56[1] = v46;
    v56[0] = v48;
    v55[2] = v31;
    v55[3] = v41;
    v57[3] = v4;
    v57[2] = v3;
    v57[1] = v6;
    v57[0] = v5;
    v55[1] = v43;
    v55[0] = v45;
    std::priv::__copy<std::priv::_Deque_iterator<CharProperties::BuffInst *,std::_Nonconst_traits<CharProperties::BuffInst *>>,std::priv::_Deque_iterator<CharProperties::BuffInst *,std::_Nonconst_traits<CharProperties::BuffInst *>>,int>(
      v58,
      (int)v57,
      v56,
      (int)v55);
    v33 = (std::__node_alloc *)a2[4];
    if ( v33 == (std::__node_alloc *)a2[5] )
    {
      if ( v33 )
        std::__node_alloc::deallocate(v33, (unsigned int)&dword_80, v32);
      v34 = (int *)(a2[7] - 4);
      a2[7] = (int)v34;
      v35 = *v34;
      v36 = *v34 + 124;
      a2[6] = v35 + 128;
      a2[4] = v36;
      a2[5] = v35;
    }
    else
    {
      a2[4] = (int)&v33[-4];
    }
  }
  else
  {
    v40 = a3[3];
    v49 = *a2;
    v47 = a2[1];
    v44 = *a3;
    v42 = a3[1];
    v20 = a3[2];
    v21 = a2[3];
    v61[2] = a2[2];
    v61[3] = v21;
    v60[2] = v20;
    v61[1] = v47;
    v61[0] = v49;
    v60[0] = v44;
    v60[3] = v40;
    v60[1] = v42;
    v59[3] = v4;
    v59[2] = v3;
    v59[1] = v6;
    v59[0] = v5;
    std::priv::__copy_backward<std::priv::_Deque_iterator<CharProperties::BuffInst *,std::_Nonconst_traits<CharProperties::BuffInst *>>,std::priv::_Deque_iterator<CharProperties::BuffInst *,std::_Nonconst_traits<CharProperties::BuffInst *>>,int>(
      v62,
      v61,
      v60,
      v59);
    v22 = a2[2] - 4;
    if ( *a2 == v22 )
    {
      v37 = (std::__node_alloc *)a2[1];
      if ( v37 )
        std::__node_alloc::deallocate(v37, (unsigned int)&dword_80, v22);
      v38 = (int *)(a2[3] + 4);
      a2[3] = (int)v38;
      v39 = *v38;
      a2[2] = *v38 + 128;
      *a2 = v39;
      a2[1] = v39;
    }
    else
    {
      *a2 += 4;
    }
  }
  v23 = a2[1];
  v24 = a2[2];
  v25 = a2[3];
  v51 = *a2;
  v52 = v23;
  v53 = v24;
  v54 = v25;
  std::priv::_Deque_iterator_base<CharProperties::BuffInst *>::_M_advance(&v51, v16);
  v26 = v52;
  v27 = v53;
  v28 = v54;
  *a1 = v51;
  a1[1] = v26;
  a1[2] = v27;
  a1[3] = v28;
  return a1;
}


// ===== 3dfd18 CharProperties::PROPS_IsBonus(int) =====
int __fastcall CharProperties::PROPS_IsBonus(CharProperties *this, int a2)
{
  int Default; // r8
  _DWORD *v6; // r11
  int v7; // r1
  int v8; // r2
  int v9; // r3
  int v10; // r9
  int v11; // r5
  int v12; // r1
  int v13; // r2
  int v14; // r3
  _DWORD *v15; // r1
  _DWORD *v16; // r2
  _DWORD *v17; // r3
  _DWORD v18[4]; // [sp+8h] [bp-24h] BYREF
  _DWORD v19[5]; // [sp+18h] [bp-14h] BYREF

  Default = CharProperties::_GetDefault(this, a2);
  if ( Default != CharProperties::_GetProperty((int)this, (int)this + 1808, a2) )
    return 1;
  v6 = *((_DWORD **)this + 904);
  if ( v6 != (_DWORD *)((char *)this + 3608) )
  {
    while ( 1 )
    {
      v7 = v6[14];
      v8 = v6[15];
      v9 = v6[16];
      v18[0] = v6[13];
      v18[1] = v7;
      v18[2] = v8;
      v18[3] = v9;
      v10 = std::priv::_Deque_iterator_base<CharProperties::BuffInst *>::_M_subtract(v6 + 17, v18);
      if ( v10 )
        break;
LABEL_9:
      v15 = (_DWORD *)v6[3];
      v16 = v15;
      if ( v15 )
      {
        while ( v16[2] )
          v16 = (_DWORD *)v16[2];
        v6 = v16;
      }
      else
      {
        v17 = (_DWORD *)v6[1];
        if ( v6 == (_DWORD *)v17[3] )
        {
          while ( *(_DWORD **)(v17[1] + 12) == v17 )
            v17 = (_DWORD *)v17[1];
          v6 = v17;
          v15 = (_DWORD *)v17[3];
          v17 = (_DWORD *)v17[1];
        }
        if ( v17 != v15 )
          v6 = v17;
      }
      if ( (_DWORD *)((char *)this + 3608) == v6 )
        return 0;
    }
    v11 = 0;
    while ( 1 )
    {
      v12 = v6[14];
      v13 = v6[15];
      v14 = v6[16];
      v19[0] = v6[13];
      v19[1] = v12;
      v19[2] = v13;
      v19[3] = v14;
      std::priv::_Deque_iterator_base<CharProperties::BuffInst *>::_M_advance(v19, v11++);
      if ( Default != CharProperties::_GetProperty((int)this, *(_DWORD *)v19[0], a2) )
        return 1;
      if ( v11 == v10 )
        goto LABEL_9;
    }
  }
  return 0;
}


// ===== 3dfe60 CharProperties::RecalcProperty(int) =====
int __fastcall CharProperties::RecalcProperty(CharProperties *this, int a2)
{
  CharProperties *v2; // r6
  char Type; // r0
  char *v5; // r9
  CharProperties *v6; // r8
  _DWORD *v7; // r12
  int **v8; // r5
  int v9; // r1
  int v10; // r2
  int v11; // r3
  int v12; // r10
  int v13; // r11
  int k; // r6
  int *v15; // r1
  int *v16; // r2
  int *v17; // r3
  int *v18; // r1
  int *v19; // r2
  int *v20; // r3
  int *v21; // r1
  int *v22; // r2
  int *v23; // r3
  int v24; // r0
  _DWORD *v25; // r3
  int v26; // r4
  int v27; // r0
  _DWORD *v29; // r2
  int Default; // r0
  _DWORD *v31; // r9
  int **v32; // r8
  int v33; // r1
  int v34; // r2
  int v35; // r3
  int v36; // r10
  int i; // r5
  int *v38; // r1
  int *v39; // r2
  int *v40; // r3
  int *v41; // r1
  int *v42; // r2
  int *v43; // r3
  int v44; // r0
  _DWORD *v45; // r2
  int v46; // r3
  _DWORD *j; // r10
  int **v48; // r5
  int v49; // r1
  int v50; // r2
  int v51; // r3
  int v52; // r9
  int v53; // r6
  int v54; // r11
  int *v55; // r1
  int *v56; // r2
  int *v57; // r3
  int *v58; // r1
  int *v59; // r2
  int *v60; // r3
  int *v61; // r1
  int *v62; // r2
  int *v63; // r3
  int v64; // r0
  int v65; // r2
  int v66; // r1
  int v67; // r0
  char *v68; // r2
  int v69; // r3
  int v70; // r3
  int v71; // r0
  int v72; // r0
  int Property; // r0
  int v74; // r0
  int v75; // r0
  int v76; // r0
  int v77; // r0
  Structs::CharacterProperties *v78; // [sp+4h] [bp-50h]
  int v79; // [sp+4h] [bp-50h]
  CharProperties *v80; // [sp+Ch] [bp-48h]
  _DWORD *v81; // [sp+Ch] [bp-48h]
  int *v82; // [sp+10h] [bp-44h] BYREF
  int *v83; // [sp+14h] [bp-40h]
  int *v84; // [sp+18h] [bp-3Ch]
  int *v85; // [sp+1Ch] [bp-38h]
  _DWORD v86[4]; // [sp+20h] [bp-34h] BYREF
  _DWORD v87[4]; // [sp+30h] [bp-24h] BYREF
  _DWORD v88[5]; // [sp+40h] [bp-14h] BYREF

  v2 = this;
  Type = CharProperties::_GetType(this, a2);
  if ( (Type & 4) != 0 )
  {
    v78 = (CharProperties *)((char *)v2 + 2708);
    Default = CharProperties::_GetDefault(v2, a2);
    CharProperties::_SetProperty(v2, (CharProperties *)((char *)v2 + 2708), a2, Default);
    if ( CharProperties::_IsPropertySet(v2, (char *)v2 + 8, a2) )
    {
      Property = CharProperties::_GetProperty((int)v2, (int)v2 + 8, a2);
      CharProperties::_AddProperty(v2, v78, a2, Property);
    }
    if ( CharProperties::_IsPropertySet(v2, (char *)v2 + 908, a2) )
    {
      v72 = CharProperties::_GetProperty((int)v2, (int)v2 + 908, a2);
      CharProperties::_AddProperty(v2, v78, a2, v72);
    }
    if ( CharProperties::_IsPropertySet(v2, (char *)v2 + 1808, a2) )
    {
      v71 = CharProperties::_GetProperty((int)v2, (int)v2 + 1808, a2);
      CharProperties::_AddProperty(v2, v78, a2, v71);
    }
    v31 = *((_DWORD **)v2 + 904);
    while ( v31 != (_DWORD *)((char *)v2 + 3608) )
    {
      v32 = (int **)(v31 + 13);
      v33 = v31[14];
      v34 = v31[15];
      v35 = v31[16];
      v88[0] = v31[13];
      v88[1] = v33;
      v88[2] = v34;
      v88[3] = v35;
      v36 = std::priv::_Deque_iterator_base<CharProperties::BuffInst *>::_M_subtract(v31 + 17, v88);
      if ( v36 )
      {
        for ( i = 0; i != v36; ++i )
        {
          while ( 1 )
          {
            v38 = (int *)v31[14];
            v39 = (int *)v31[15];
            v40 = (int *)v31[16];
            v82 = *v32;
            v83 = v38;
            v84 = v39;
            v85 = v40;
            std::priv::_Deque_iterator_base<CharProperties::BuffInst *>::_M_advance(&v82, i);
            if ( CharProperties::_IsPropertySet(v2, *v82, a2) )
              break;
            if ( ++i == v36 )
              goto LABEL_57;
          }
          v41 = (int *)v31[14];
          v42 = (int *)v31[15];
          v43 = (int *)v31[16];
          v82 = *v32;
          v83 = v41;
          v84 = v42;
          v85 = v43;
          std::priv::_Deque_iterator_base<CharProperties::BuffInst *>::_M_advance(&v82, i);
          v44 = CharProperties::_GetProperty((int)v2, *v82, a2);
          CharProperties::_AddProperty(v2, v78, a2, v44);
        }
      }
LABEL_57:
      v45 = (_DWORD *)v31[3];
      if ( v45 )
      {
        while ( v45[2] )
          v45 = (_DWORD *)v45[2];
        v31 = v45;
      }
      else
      {
        v46 = v31[1];
        if ( v31 == *(_DWORD **)(v46 + 12) )
        {
          do
          {
            v31 = (_DWORD *)v46;
            v46 = *(_DWORD *)(v46 + 4);
          }
          while ( v31 == *(_DWORD **)(v46 + 12) );
          v45 = (_DWORD *)v31[3];
        }
        if ( (_DWORD *)v46 != v45 )
          v31 = (_DWORD *)v46;
      }
    }
    return CharProperties::_GetProperty((int)v2, (int)v78, a2);
  }
  if ( (Type & 2) != 0 )
  {
    if ( CharProperties::_IsPropertySet(v2, (char *)v2 + 8, a2) )
    {
      v66 = (int)v2 + 8;
LABEL_85:
      v67 = CharProperties::_GetProperty((int)v2, v66, a2);
      v68 = (char *)v2 + 2704;
      v69 = v67;
LABEL_86:
      v79 = (int)(v68 + 4);
      CharProperties::_SetProperty(v2, (Structs::CharacterProperties *)(v68 + 4), a2, v69);
      return CharProperties::_GetProperty((int)v2, v79, a2);
    }
    if ( !CharProperties::_IsPropertySet(v2, (char *)v2 + 908, a2) )
    {
      if ( !CharProperties::_IsPropertySet(v2, (char *)v2 + 1808, a2) )
      {
        v81 = (_DWORD *)((char *)v2 + 3608);
        v78 = (CharProperties *)((char *)v2 + 2708);
        j = *((_DWORD **)v2 + 904);
        v6 = v2;
        while ( v81 != j )
        {
          v48 = (int **)(j + 13);
          v49 = j[14];
          v50 = j[15];
          v51 = j[16];
          v87[0] = j[13];
          v87[1] = v49;
          v87[2] = v50;
          v87[3] = v51;
          v52 = std::priv::_Deque_iterator_base<CharProperties::BuffInst *>::_M_subtract(j + 17, v87);
          if ( v52 )
          {
            v53 = 0;
            v54 = 0;
            do
            {
              v55 = (int *)j[14];
              v56 = (int *)j[15];
              v57 = (int *)j[16];
              v82 = *v48;
              v83 = v55;
              v84 = v56;
              v85 = v57;
              std::priv::_Deque_iterator_base<CharProperties::BuffInst *>::_M_advance(&v82, v53);
              v58 = (int *)j[14];
              v59 = (int *)j[15];
              v60 = (int *)j[16];
              v82 = *v48;
              v83 = v58;
              v84 = v59;
              v85 = v60;
              std::priv::_Deque_iterator_base<CharProperties::BuffInst *>::_M_advance(&v82, v53);
              if ( CharProperties::_IsPropertySet(v6, *v82, a2) )
              {
                v61 = (int *)j[14];
                v62 = (int *)j[15];
                v63 = (int *)j[16];
                v82 = *v48;
                v83 = v61;
                v84 = v62;
                v85 = v63;
                std::priv::_Deque_iterator_base<CharProperties::BuffInst *>::_M_advance(&v82, v53);
                v64 = CharProperties::_GetProperty((int)v6, *v82, a2);
                CharProperties::_SetProperty(v6, v78, a2, v64);
                v54 = 1;
              }
              ++v53;
            }
            while ( v53 != v52 );
            if ( v54 )
            {
LABEL_87:
              v2 = v6;
              return CharProperties::_GetProperty((int)v2, (int)v78, a2);
            }
          }
          v65 = j[3];
          if ( v65 )
          {
            for ( j = (_DWORD *)j[3]; j[2]; j = (_DWORD *)j[2] )
              ;
          }
          else
          {
            v70 = j[1];
            if ( j == *(_DWORD **)(v70 + 12) )
            {
              do
              {
                j = (_DWORD *)v70;
                v70 = *(_DWORD *)(v70 + 4);
              }
              while ( *(_DWORD **)(v70 + 12) == j );
              v65 = j[3];
            }
            if ( v70 != v65 )
              j = (_DWORD *)v70;
          }
        }
        v2 = v6;
        v27 = CharProperties::_GetDefault(v6, a2);
LABEL_89:
        CharProperties::_SetProperty(v2, v78, a2, v27);
        return CharProperties::_GetProperty((int)v2, (int)v78, a2);
      }
      v77 = CharProperties::_GetProperty((int)v2, (int)v2 + 1808, a2);
      v68 = (char *)v2 + 2704;
      v69 = v77;
      goto LABEL_86;
    }
    v76 = CharProperties::_GetProperty((int)v2, (int)v2 + 908, a2);
    CharProperties::_SetProperty(v2, (CharProperties *)((char *)v2 + 2708), a2, v76);
    return CharProperties::_GetProperty((int)v2, (int)v2 + 2708, a2);
  }
  else
  {
    if ( (Type & 1) != 0 )
    {
      v78 = (CharProperties *)((char *)v2 + 2708);
      v5 = (char *)v2 + 3608;
      v80 = *((CharProperties **)v2 + 904);
      v6 = v2;
      if ( v80 != (CharProperties *)((char *)v2 + 3608) )
      {
        do
        {
          if ( *v5 || *(char **)(*((_DWORD *)v5 + 1) + 4) != v5 )
          {
            v7 = *((_DWORD **)v5 + 2);
            if ( v7 )
            {
              while ( v7[3] )
                v7 = (_DWORD *)v7[3];
            }
            else
            {
              v7 = *((_DWORD **)v5 + 1);
              if ( (char *)v7[2] == v5 )
              {
                while ( *(_DWORD **)(v7[1] + 8) == v7 )
                  v7 = (_DWORD *)v7[1];
                v7 = (_DWORD *)v7[1];
              }
            }
          }
          else
          {
            v7 = *((_DWORD **)v5 + 3);
          }
          v8 = (int **)(v7 + 13);
          v9 = v7[14];
          v10 = v7[15];
          v11 = v7[16];
          v86[0] = v7[13];
          v86[1] = v9;
          v86[2] = v10;
          v86[3] = v11;
          v12 = std::priv::_Deque_iterator_base<CharProperties::BuffInst *>::_M_subtract(v7 + 17, v86);
          if ( v12 )
          {
            v13 = 0;
            for ( k = 0; k != v12; ++k )
            {
              v15 = v8[1];
              v16 = v8[2];
              v17 = v8[3];
              v82 = *v8;
              v83 = v15;
              v84 = v16;
              v85 = v17;
              std::priv::_Deque_iterator_base<CharProperties::BuffInst *>::_M_advance(&v82, k);
              v18 = v8[1];
              v19 = v8[2];
              v20 = v8[3];
              v82 = *v8;
              v83 = v18;
              v84 = v19;
              v85 = v20;
              std::priv::_Deque_iterator_base<CharProperties::BuffInst *>::_M_advance(&v82, k);
              if ( CharProperties::_IsPropertySet(v6, *v82, a2) )
              {
                v21 = v8[1];
                v22 = v8[2];
                v23 = v8[3];
                v82 = *v8;
                v83 = v21;
                v84 = v22;
                v85 = v23;
                std::priv::_Deque_iterator_base<CharProperties::BuffInst *>::_M_advance(&v82, k);
                v24 = CharProperties::_GetProperty((int)v6, *v82, a2);
                CharProperties::_SetProperty(v6, v78, a2, v24);
                v13 = 1;
              }
            }
            if ( v13 )
              goto LABEL_87;
          }
          if ( *v5 || *(char **)(*((_DWORD *)v5 + 1) + 4) != v5 )
          {
            v25 = *((_DWORD **)v5 + 2);
            if ( v25 )
            {
              while ( v25[3] )
                v25 = (_DWORD *)v25[3];
            }
            else
            {
              v25 = *((_DWORD **)v5 + 1);
              if ( v5 == (char *)v25[2] )
              {
                do
                {
                  v29 = v25;
                  v25 = (_DWORD *)v25[1];
                }
                while ( (_DWORD *)v25[2] == v29 );
                v5 = (char *)v25;
                continue;
              }
            }
          }
          else
          {
            v25 = *((_DWORD **)v5 + 3);
          }
          v5 = (char *)v25;
        }
        while ( v80 != (CharProperties *)v5 );
      }
      v26 = (int)v6 + 1808;
      v2 = v6;
      if ( CharProperties::_IsPropertySet(v6, (char *)v6 + 1808, a2)
        || (v26 = (int)v6 + 908, CharProperties::_IsPropertySet(v6, (char *)v6 + 908, a2))
        || (v26 = (int)v6 + 8, CharProperties::_IsPropertySet(v6, (char *)v6 + 8, a2)) )
      {
        v27 = CharProperties::_GetProperty((int)v6, v26, a2);
      }
      else
      {
        v27 = CharProperties::_GetDefault(v6, a2);
      }
      goto LABEL_89;
    }
    if ( (Type & 0x20) == 0 )
    {
      if ( (Type & 0x10) == 0 )
        return CharProperties::_GetProperty((int)v2, (int)v2 + 2708, a2);
      v66 = (int)v2 + 8;
      goto LABEL_85;
    }
    v74 = CharProperties::_GetProperty((int)v2, (int)v2 + 8, a2);
    CharProperties::_SetProperty(v2, (CharProperties *)((char *)v2 + 2708), a2, v74);
    v75 = CharProperties::_GetProperty((int)v2, (int)v2 + 908, a2);
    CharProperties::_AddProperty(v2, (CharProperties *)((char *)v2 + 2708), a2, v75);
    return CharProperties::_GetProperty((int)v2, (int)v2 + 2708, a2);
  }
}


// ===== 3e0614 CharProperties::PROPS_SetToSheet(int,int,Structs::CharacterProperties *) =====
int __fastcall CharProperties::PROPS_SetToSheet(int result, int a2, int a3, Structs::CharacterProperties *a4)
{
  int v6; // r5

  v6 = result;
  if ( a4 )
  {
    result = CharProperties::_GetType((CharProperties *)result, a2);
    if ( (result & 4) != 0 )
    {
      CharProperties::_SetProperty((CharProperties *)v6, a4, a2, a3);
      return CharProperties::RecalcProperty((CharProperties *)v6, a2);
    }
    else if ( (result & 8) != 0 )
    {
      return CharProperties::_SetProperty((CharProperties *)v6, (Structs::CharacterProperties *)(v6 + 2708), a2, a3);
    }
  }
  else if ( gAssertLevel == 2 )
  {
    dword_0 = 0;
  }
  else if ( gAssertLevel == 1 )
  {
    return fprintf(
             (FILE *)&_sF + 2,
             "ASSERT(%s) FAILED: %s:%d\n",
             "sheet",
             "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Objects\\Characters\\Properties\\CharProperties.cpp",
             806);
  }
  return result;
}


// ===== 3e0708 CharProperties::PROPS_Add(int,int) =====
int __fastcall CharProperties::PROPS_Add(CharProperties *this, int a2, int a3)
{
  int result; // r0
  int v7; // r0
  int Property; // r0

  result = CharProperties::_GetType(this, a2);
  if ( (result & 0x20) != 0 )
  {
    Property = CharProperties::_GetProperty((int)this, (int)this + 908, a2);
    CharProperties::_SetProperty((int)this, (int)this + 908, a2, Property + a3);
    return CharProperties::RecalcProperty(this, a2);
  }
  else if ( (result & 8) != 0 )
  {
    v7 = CharProperties::_GetProperty((int)this, (int)this + 2708, a2);
    return (int)CharProperties::_SetProperty((int)this, (int)this + 2708, a2, v7 + a3);
  }
  return result;
}


// ===== 3e0798 CharProperties::PROPS_AddInt(int,int) =====
int __fastcall CharProperties::PROPS_AddInt(CharProperties *this, int a2, int a3)
{
  return CharProperties::PROPS_Add(this, a2, a3 << 8);
}


// ===== 3e07a0 CharProperties::PROPS_Set(int,int) =====
int __fastcall CharProperties::PROPS_Set(CharProperties *this, int a2, int a3)
{
  int result; // r0

  result = CharProperties::_GetType(this, a2);
  if ( (result & 0x20) != 0 )
  {
    CharProperties::_SetProperty((int)this, (int)this + 908, a2, a3);
    return CharProperties::RecalcProperty(this, a2);
  }
  else if ( (result & 8) != 0 )
  {
    return (int)CharProperties::_SetProperty((int)this, (int)this + 2708, a2, a3);
  }
  return result;
}


// ===== 3e0808 CharProperties::PROPS_SetInt(int,int) =====
int __fastcall CharProperties::PROPS_SetInt(CharProperties *this, int a2, int a3)
{
  return CharProperties::PROPS_Set(this, a2, a3 << 8);
}


// ===== 3e0810 CharProperties::RecalcProperties(bool) =====
int __fastcall CharProperties::RecalcProperties(CharProperties *this, int a2)
{
  int i; // r5
  int v4; // r1
  int result; // r0

  if ( a2 )
    CharProperties::_LoadClass(this, (CharProperties *)((char *)this + 8), *((_DWORD *)this + 29), 0);
  for ( i = 0; i != 224; ++i )
  {
    v4 = i;
    result = CharProperties::RecalcProperty(this, v4);
  }
  return result;
}


// ===== 3e0854 CharProperties::LoadPropertiesForClassSelect(int) =====
int __fastcall CharProperties::LoadPropertiesForClassSelect(CharProperties *this, int a2)
{
  *(_WORD *)(*((_DWORD *)this + 1) + 5064) = a2;
  CharProperties::LoadBaseProperties(this, a2);
  return CharProperties::RecalcProperties(this, 1);
}


// ===== 3e087c CharProperties::UpdateBaseProperties(int) =====
int __fastcall CharProperties::UpdateBaseProperties(CharProperties *this, int a2)
{
  CharProperties::ResetBaseProperties(this);
  CharProperties::LoadBaseProperties(this, a2);
  return CharProperties::RecalcProperties(this, 1);
}


// ===== 3e08a8 CharProperties::UpdateGearsProperties(void) =====
int __fastcall CharProperties::UpdateGearsProperties(CharProperties *this)
{
  CharProperties::ResetGearsProperties(this);
  CharProperties::LoadGearsProperties(this);
  return CharProperties::RecalcProperties(this, 1);
}


// ===== 3e08cc std::allocator<CharProperties::BuffInst **>::allocate(uint,void const*) =====
void *__fastcall std::allocator<CharProperties::BuffInst **>::allocate(int a1, unsigned int a2)
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


// ===== 3e092c std::deque<CharProperties::BuffInst *,std::allocator<CharProperties::BuffInst *>>::clear(void) =====
int __fastcall std::deque<CharProperties::BuffInst *>::clear(int *a1)
{
  int v1; // r4
  unsigned int v2; // r3
  unsigned int v4; // r4
  void *v5; // r0
  bool v6; // cc
  void *v7; // r0
  int result; // r0
  int v9; // r1
  int v10; // r2
  int v11; // r3

  v1 = a1[3];
  v2 = a1[7];
  if ( v2 > v1 + 4 )
  {
    v4 = v1 + 8;
    do
    {
      v5 = *(void **)(v4 - 4);
      if ( v5 )
      {
        __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v5, 0x80u);
        v2 = a1[7];
      }
      v6 = v2 > v4;
      v4 += 4;
    }
    while ( v6 );
    v1 = a1[3];
  }
  if ( v1 != v2 )
  {
    v7 = (void *)a1[5];
    if ( v7 )
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v7, 0x80u);
  }
  result = *a1;
  v9 = a1[1];
  v10 = a1[2];
  v11 = a1[3];
  a1[4] = *a1;
  a1[5] = v9;
  a1[6] = v10;
  a1[7] = v11;
  return result;
}


// ===== 3e09a4 std::priv::_Deque_base<CharProperties::BuffInst *,std::allocator<CharProperties::BuffInst *>>::~_Deque_base() =====
_DWORD *__fastcall std::priv::_Deque_base<CharProperties::BuffInst *,std::allocator<CharProperties::BuffInst *>>::~_Deque_base(
        _DWORD *a1)
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


// ===== 3e0a28 std::vector<char *,std::allocator<char *>>::~vector() =====
int __fastcall std::vector<char *>::~vector(int a1)
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


// ===== 3e0a68 CharProperties::BuffDecl::~BuffDecl() =====
void __fastcall CharProperties::BuffDecl::~BuffDecl(CharProperties::BuffDecl *this)
{
  char *v2; // r0
  size_t v3; // r1

  std::priv::_Deque_base<CharProperties::BuffInst *,std::allocator<CharProperties::BuffInst *>>::~_Deque_base((_DWORD *)this + 8);
  v2 = *((char **)this + 7);
  if ( v2 != (char *)this + 8 && v2 )
  {
    v3 = *((_DWORD *)this + 2) - (_DWORD)v2;
    if ( v3 > 0x80 )
      CustomFree(v2);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v2, v3);
  }
}


// ===== 3e0ab8 std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,CharProperties::BuffDecl>,std::priv::_Select1st<std::pair<int const,CharProperties::BuffDecl>>,std::priv::_MapTraitsT<std::pair<int const,CharProperties::BuffDecl>>,std::allocator<std::pair<int const,CharProperties::BuffDecl>>>::_M_erase(std::priv::_Rb_tree_node_base *) =====
void __fastcall std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,CharProperties::BuffDecl>,std::priv::_Select1st<std::pair<int const,CharProperties::BuffDecl>>,std::priv::_MapTraitsT<std::pair<int const,CharProperties::BuffDecl>>,std::allocator<std::pair<int const,CharProperties::BuffDecl>>>::_M_erase(
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
      std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,CharProperties::BuffDecl>,std::priv::_Select1st<std::pair<int const,CharProperties::BuffDecl>>,std::priv::_MapTraitsT<std::pair<int const,CharProperties::BuffDecl>>,std::allocator<std::pair<int const,CharProperties::BuffDecl>>>::_M_erase(
        a1,
        v2[3]);
      v4 = (_DWORD *)v2[2];
      CharProperties::BuffDecl::~BuffDecl((CharProperties::BuffDecl *)(v2 + 5));
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v2, 0x5Cu);
      v2 = v4;
    }
    while ( v4 );
  }
}


// ===== 3e0af8 CharProperties::PROPS_RemoveAllBuffs(void) =====
int __fastcall CharProperties::PROPS_RemoveAllBuffs(CharProperties *this)
{
  int v1; // r10
  int v3; // r1
  int v4; // r2
  int v5; // r3
  int v6; // r8
  int v7; // r6
  int v8; // r1
  int v9; // r2
  int v10; // r3
  Structs::CharacterProperties *v11; // r11
  int v12; // r2
  int v14; // r3
  char *v15; // [sp+4h] [bp-30h]
  _DWORD v16[4]; // [sp+10h] [bp-24h] BYREF
  _DWORD v17[5]; // [sp+20h] [bp-14h] BYREF

  v15 = (char *)this + 3608;
  v1 = *((_DWORD *)this + 904);
  while ( v15 != (char *)v1 )
  {
    while ( 1 )
    {
      v3 = *(_DWORD *)(v1 + 56);
      v4 = *(_DWORD *)(v1 + 60);
      v5 = *(_DWORD *)(v1 + 64);
      v17[0] = *(_DWORD *)(v1 + 52);
      v17[1] = v3;
      v17[2] = v4;
      v17[3] = v5;
      v6 = std::priv::_Deque_iterator_base<CharProperties::BuffInst *>::_M_subtract(v1 + 68, v17);
      if ( v6 )
      {
        v7 = 0;
        do
        {
          v8 = *(_DWORD *)(v1 + 56);
          v9 = *(_DWORD *)(v1 + 60);
          v10 = *(_DWORD *)(v1 + 64);
          v16[0] = *(_DWORD *)(v1 + 52);
          v16[1] = v8;
          v16[2] = v9;
          v16[3] = v10;
          std::priv::_Deque_iterator_base<CharProperties::BuffInst *>::_M_advance(v16, v7++);
          v11 = *(Structs::CharacterProperties **)v16[0];
          CharTimers::TMR_Stop((CharTimers *)(*((_DWORD *)this + 1) + 948), *(_DWORD *)(*(_DWORD *)v16[0] + 904));
          Structs::CharacterProperties::~CharacterProperties(v11);
          CustomFree(v11);
        }
        while ( v7 != v6 );
      }
      VisualFXManager::DropAnimatedFX((int)&Singleton<VisualFXManager>::s_inst, (AnimatedFX **)(v1 + 24));
      v12 = *(_DWORD *)(v1 + 12);
      if ( !v12 )
        break;
      while ( *(_DWORD *)(v12 + 8) )
        v12 = *(_DWORD *)(v12 + 8);
      v1 = v12;
      if ( v15 == (char *)v12 )
        goto LABEL_11;
    }
    v14 = *(_DWORD *)(v1 + 4);
    if ( *(_DWORD *)(v14 + 12) == v1 )
    {
      do
      {
        v1 = v14;
        v14 = *(_DWORD *)(v14 + 4);
      }
      while ( *(_DWORD *)(v14 + 12) == v1 );
      v12 = *(_DWORD *)(v1 + 12);
    }
    if ( v14 != v12 )
      v1 = v14;
  }
LABEL_11:
  if ( *((_DWORD *)this + 906) )
  {
    std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,CharProperties::BuffDecl>,std::priv::_Select1st<std::pair<int const,CharProperties::BuffDecl>>,std::priv::_MapTraitsT<std::pair<int const,CharProperties::BuffDecl>>,std::allocator<std::pair<int const,CharProperties::BuffDecl>>>::_M_erase(
      v15,
      *((_DWORD *)this + 903));
    *((_DWORD *)this + 906) = 0;
    *((_DWORD *)this + 905) = v15;
    *((_DWORD *)this + 904) = v15;
    *((_DWORD *)this + 903) = 0;
  }
  return CharProperties::RecalcProperties(this, 1);
}


// ===== 3e0c6c CharProperties::~CharProperties() =====
void __fastcall CharProperties::~CharProperties(CharProperties *this)
{
  int v1; // r7
  char *v3; // r9
  int v4; // r1
  int v5; // r2
  int v6; // r3
  int v7; // r8
  int i; // r6
  int v9; // r1
  int v10; // r2
  int v11; // r3
  int v12; // r2
  int v13; // r3
  void *p; // [sp+4h] [bp-30h]
  _DWORD v15[4]; // [sp+10h] [bp-24h] BYREF
  _DWORD v16[5]; // [sp+20h] [bp-14h] BYREF

  *(_DWORD *)this = off_966E88;
  v1 = *((_DWORD *)this + 904);
  v3 = (char *)this + 3608;
  while ( v3 != (char *)v1 )
  {
    while ( 1 )
    {
      v4 = *(_DWORD *)(v1 + 56);
      v5 = *(_DWORD *)(v1 + 60);
      v6 = *(_DWORD *)(v1 + 64);
      v16[0] = *(_DWORD *)(v1 + 52);
      v16[1] = v4;
      v16[2] = v5;
      v16[3] = v6;
      v7 = std::priv::_Deque_iterator_base<CharProperties::BuffInst *>::_M_subtract(v1 + 68, v16);
      if ( v7 )
      {
        for ( i = 0; i != v7; ++i )
        {
          v9 = *(_DWORD *)(v1 + 56);
          v10 = *(_DWORD *)(v1 + 60);
          v11 = *(_DWORD *)(v1 + 64);
          v15[0] = *(_DWORD *)(v1 + 52);
          v15[1] = v9;
          v15[2] = v10;
          v15[3] = v11;
          std::priv::_Deque_iterator_base<CharProperties::BuffInst *>::_M_advance(v15, i);
          if ( *(_DWORD *)v15[0] )
          {
            p = *(void **)v15[0];
            Structs::CharacterProperties::~CharacterProperties(*(Structs::CharacterProperties **)v15[0]);
            CustomFree(p);
          }
        }
      }
      std::deque<CharProperties::BuffInst *>::clear(v1 + 52);
      if ( *(_DWORD *)(v1 + 24) )
        VisualFXManager::DropAnimatedFX(
          (VisualFXManager *)&Singleton<VisualFXManager>::s_inst,
          (AnimatedFX **)(v1 + 24));
      v12 = *(_DWORD *)(v1 + 12);
      if ( !v12 )
        break;
      while ( *(_DWORD *)(v12 + 8) )
        v12 = *(_DWORD *)(v12 + 8);
      v1 = v12;
      if ( v3 == (char *)v12 )
        goto LABEL_15;
    }
    v13 = *(_DWORD *)(v1 + 4);
    if ( v1 == *(_DWORD *)(v13 + 12) )
    {
      do
      {
        v1 = v13;
        v13 = *(_DWORD *)(v13 + 4);
      }
      while ( *(_DWORD *)(v13 + 12) == v1 );
      v12 = *(_DWORD *)(v1 + 12);
    }
    if ( v13 != v12 )
      v1 = v13;
  }
LABEL_15:
  if ( *((_DWORD *)this + 906) )
  {
    std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,CharProperties::BuffDecl>,std::priv::_Select1st<std::pair<int const,CharProperties::BuffDecl>>,std::priv::_MapTraitsT<std::pair<int const,CharProperties::BuffDecl>>,std::allocator<std::pair<int const,CharProperties::BuffDecl>>>::_M_erase(
      v3,
      *((_DWORD *)this + 903));
    *((_DWORD *)this + 905) = v3;
    *((_DWORD *)this + 906) = 0;
    *((_DWORD *)this + 904) = v3;
    *((_DWORD *)this + 903) = 0;
  }
  Structs::CharacterProperties::~CharacterProperties((CharProperties *)((char *)this + 2708));
  Structs::CharacterProperties::~CharacterProperties((CharProperties *)((char *)this + 1808));
  Structs::CharacterProperties::~CharacterProperties((CharProperties *)((char *)this + 908));
  Structs::CharacterProperties::~CharacterProperties((CharProperties *)((char *)this + 8));
}


// ===== 3e0e10 CharProperties::~CharProperties() =====
void __fastcall CharProperties::~CharProperties(CharProperties *this)
{
  CharProperties::~CharProperties(this);
  CustomFree(this);
}


// ===== 3e0e2c CharProperties::~CharProperties() =====
void __fastcall CharProperties::~CharProperties(CharProperties *this)
{
  int v1; // r7
  char *v3; // r9
  int v4; // r1
  int v5; // r2
  int v6; // r3
  int v7; // r8
  int i; // r6
  int v9; // r1
  int v10; // r2
  int v11; // r3
  int v12; // r2
  int v13; // r3
  void *p; // [sp+4h] [bp-30h]
  _DWORD v15[4]; // [sp+10h] [bp-24h] BYREF
  _DWORD v16[5]; // [sp+20h] [bp-14h] BYREF

  *(_DWORD *)this = off_966E88;
  v1 = *((_DWORD *)this + 904);
  v3 = (char *)this + 3608;
  while ( v3 != (char *)v1 )
  {
    while ( 1 )
    {
      v4 = *(_DWORD *)(v1 + 56);
      v5 = *(_DWORD *)(v1 + 60);
      v6 = *(_DWORD *)(v1 + 64);
      v16[0] = *(_DWORD *)(v1 + 52);
      v16[1] = v4;
      v16[2] = v5;
      v16[3] = v6;
      v7 = std::priv::_Deque_iterator_base<CharProperties::BuffInst *>::_M_subtract((_DWORD *)(v1 + 68), v16);
      if ( v7 )
      {
        for ( i = 0; i != v7; ++i )
        {
          v9 = *(_DWORD *)(v1 + 56);
          v10 = *(_DWORD *)(v1 + 60);
          v11 = *(_DWORD *)(v1 + 64);
          v15[0] = *(_DWORD *)(v1 + 52);
          v15[1] = v9;
          v15[2] = v10;
          v15[3] = v11;
          std::priv::_Deque_iterator_base<CharProperties::BuffInst *>::_M_advance(v15, i);
          if ( *(_DWORD *)v15[0] )
          {
            p = *(void **)v15[0];
            Structs::CharacterProperties::~CharacterProperties(*(Structs::CharacterProperties **)v15[0]);
            CustomFree(p);
          }
        }
      }
      std::deque<CharProperties::BuffInst *>::clear((int *)(v1 + 52));
      if ( *(_DWORD *)(v1 + 24) )
        VisualFXManager::DropAnimatedFX((int)&Singleton<VisualFXManager>::s_inst, (AnimatedFX **)(v1 + 24));
      v12 = *(_DWORD *)(v1 + 12);
      if ( !v12 )
        break;
      while ( *(_DWORD *)(v12 + 8) )
        v12 = *(_DWORD *)(v12 + 8);
      v1 = v12;
      if ( v3 == (char *)v12 )
        goto LABEL_15;
    }
    v13 = *(_DWORD *)(v1 + 4);
    if ( v1 == *(_DWORD *)(v13 + 12) )
    {
      do
      {
        v1 = v13;
        v13 = *(_DWORD *)(v13 + 4);
      }
      while ( *(_DWORD *)(v13 + 12) == v1 );
      v12 = *(_DWORD *)(v1 + 12);
    }
    if ( v13 != v12 )
      v1 = v13;
  }
LABEL_15:
  if ( *((_DWORD *)this + 906) )
  {
    std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,CharProperties::BuffDecl>,std::priv::_Select1st<std::pair<int const,CharProperties::BuffDecl>>,std::priv::_MapTraitsT<std::pair<int const,CharProperties::BuffDecl>>,std::allocator<std::pair<int const,CharProperties::BuffDecl>>>::_M_erase(
      (int)v3,
      *((_DWORD **)this + 903));
    *((_DWORD *)this + 905) = v3;
    *((_DWORD *)this + 906) = 0;
    *((_DWORD *)this + 904) = v3;
    *((_DWORD *)this + 903) = 0;
  }
  Structs::CharacterProperties::~CharacterProperties((CharProperties *)((char *)this + 2708));
  Structs::CharacterProperties::~CharacterProperties((CharProperties *)((char *)this + 1808));
  Structs::CharacterProperties::~CharacterProperties((CharProperties *)((char *)this + 908));
  Structs::CharacterProperties::~CharacterProperties((CharProperties *)((char *)this + 8));
}


// ===== 3e0fd0 std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,CharProperties::BuffDecl>,std::priv::_Select1st<std::pair<int const,CharProperties::BuffDecl>>,std::priv::_MapTraitsT<std::pair<int const,CharProperties::BuffDecl>>,std::allocator<std::pair<int const,CharProperties::BuffDecl>>>::erase(std::priv::_Rb_tree_iterator<std::pair<int const,CharProperties::BuffDecl>,std::priv::_MapTraitsT<std::pair<int const,CharProperties::BuffDecl>>>) =====
void __fastcall std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,CharProperties::BuffDecl>,std::priv::_Select1st<std::pair<int const,CharProperties::BuffDecl>>,std::priv::_MapTraitsT<std::pair<int const,CharProperties::BuffDecl>>,std::allocator<std::pair<int const,CharProperties::BuffDecl>>>::erase(
        int a1,
        unsigned __int8 **a2)
{
  unsigned __int8 *v3; // r5

  v3 = std::priv::_Rb_global<bool>::_Rebalance_for_erase(
         *a2,
         (unsigned __int8 **)(a1 + 4),
         (unsigned __int8 **)(a1 + 8),
         (unsigned __int8 **)(a1 + 12));
  CharProperties::BuffDecl::~BuffDecl((CharProperties::BuffDecl *)(v3 + 20));
  if ( v3 )
    __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v3, 0x5Cu);
  --*(_DWORD *)(a1 + 16);
}


// ===== 3e101c CharProperties::PROPS_DelBuff(int,Structs::CharacterProperties *) =====
int __fastcall CharProperties::PROPS_DelBuff(int this, int a2, Structs::CharacterProperties *a3)
{
  int v3; // r4
  CharProperties *v4; // r9
  int v6; // r5
  int v7; // r2
  int v8; // r3
  bool v9; // cc
  int v10; // r3
  int v11; // r1
  int v12; // r2
  int v13; // r3
  int v14; // r10
  unsigned int **v15; // r8
  unsigned int **v16; // r5
  unsigned int **v17; // r7
  unsigned int **v18; // r3
  unsigned int *v19; // r4
  Structs::CharacterProperties *v20; // r11
  unsigned int **v21; // t1
  int v22; // r12
  int v23; // r1
  int v24; // r2
  int v25; // r3
  CharTimers *v26; // r8
  int v27; // r1
  int v28; // r2
  int v29; // r3
  Structs::CharacterProperties *v30; // r6
  Structs::CharacterProperties ***v31; // [sp+4h] [bp-50h]
  Structs::CharacterProperties **v32; // [sp+8h] [bp-4Ch] BYREF
  int v33; // [sp+Ch] [bp-48h]
  int v34; // [sp+10h] [bp-44h]
  int v35; // [sp+14h] [bp-40h]
  _DWORD v36[4]; // [sp+18h] [bp-3Ch] BYREF
  _DWORD v37[4]; // [sp+28h] [bp-2Ch] BYREF
  char v38[16]; // [sp+38h] [bp-1Ch] BYREF
  int v39; // [sp+48h] [bp-Ch] BYREF
  char v40[4]; // [sp+4Ch] [bp-8h] BYREF

  v3 = *(_DWORD *)(this + 3612);
  v4 = (CharProperties *)this;
  v6 = this + 3608;
  if ( v3 )
  {
    v7 = this + 3608;
    while ( 1 )
    {
      v8 = *(_DWORD *)(v3 + 16);
      v9 = v8 < a2;
      if ( v8 >= a2 )
        v10 = *(_DWORD *)(v3 + 8);
      else
        v10 = *(_DWORD *)(v3 + 12);
      if ( v9 )
        v3 = v7;
      v7 = v3;
      if ( !v10 )
        break;
      v3 = v10;
    }
    if ( v6 != v3 && *(_DWORD *)(v3 + 16) <= a2 && v6 != v3 )
    {
      v31 = (Structs::CharacterProperties ***)(v3 + 52);
      v11 = *(_DWORD *)(v3 + 56);
      v12 = *(_DWORD *)(v3 + 60);
      v13 = *(_DWORD *)(v3 + 64);
      v36[0] = *(_DWORD *)(v3 + 52);
      v36[1] = v11;
      v36[2] = v12;
      v36[3] = v13;
      this = std::priv::_Deque_iterator_base<CharProperties::BuffInst *>::_M_subtract(v3 + 68, v36);
      if ( this == 1 )
      {
        v22 = *((_DWORD *)v4 + 1);
        v23 = *(_DWORD *)(v3 + 56);
        v24 = *(_DWORD *)(v3 + 60);
        v25 = *(_DWORD *)(v3 + 64);
        v32 = *v31;
        v33 = v23;
        v34 = v24;
        v35 = v25;
        v26 = (CharTimers *)(v22 + 948);
        std::priv::_Deque_iterator_base<CharProperties::BuffInst *>::_M_advance(&v32, 0);
        CharTimers::TMR_Stop(v26, *((_DWORD *)*v32 + 226));
        v27 = *(_DWORD *)(v3 + 56);
        v28 = *(_DWORD *)(v3 + 60);
        v29 = *(_DWORD *)(v3 + 64);
        v32 = *v31;
        v33 = v27;
        v34 = v28;
        v35 = v29;
        std::priv::_Deque_iterator_base<CharProperties::BuffInst *>::_M_advance(&v32, 0);
        v30 = *v32;
        if ( *v32 )
        {
          Structs::CharacterProperties::~CharacterProperties(*v32);
          CustomFree(v30);
        }
        VisualFXManager::DropAnimatedFX((int)&Singleton<VisualFXManager>::s_inst, (AnimatedFX **)(v3 + 24));
        v39 = v3;
        std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,CharProperties::BuffDecl>,std::priv::_Select1st<std::pair<int const,CharProperties::BuffDecl>>,std::priv::_MapTraitsT<std::pair<int const,CharProperties::BuffDecl>>,std::allocator<std::pair<int const,CharProperties::BuffDecl>>>::erase(
          v6,
          &v39);
        return CharProperties::RecalcProperties(v4, 1);
      }
      else if ( a3 )
      {
        v14 = *(_DWORD *)(v3 + 64);
        v15 = *(unsigned int ***)(v3 + 56);
        v16 = *(unsigned int ***)(v3 + 60);
        v17 = *(unsigned int ***)(v3 + 52);
        v18 = *(unsigned int ***)(v3 + 68);
        while ( v18 != v17 )
        {
          v19 = *v17;
          v20 = (Structs::CharacterProperties *)*v17;
          if ( *v17 == (unsigned int *)a3 )
          {
LABEL_25:
            CharTimers::TMR_Stop((CharTimers *)(*((_DWORD *)v4 + 1) + 948), v19[226]);
            Structs::CharacterProperties::~CharacterProperties(v20);
            CustomFree(v19);
            v37[3] = v14;
            v37[2] = v16;
            v37[1] = v15;
            v37[0] = v17;
            std::deque<CharProperties::BuffInst *>::_M_erase(v38, v31, v37, v40);
            return CharProperties::RecalcProperties(v4, 1);
          }
          if ( ++v17 != v16 )
          {
            while ( v18 != v17 )
            {
              v19 = *v17;
              if ( *v17 == (unsigned int *)a3 )
              {
                v20 = a3;
                goto LABEL_25;
              }
              if ( v16 == ++v17 )
                goto LABEL_22;
            }
            return this;
          }
LABEL_22:
          v21 = *(unsigned int ***)(v14 + 4);
          v14 += 4;
          v15 = v21;
          v16 = v21 + 32;
          v17 = v21;
        }
      }
    }
  }
  return this;
}


// ===== 3e123c CharProperties::BuffExpired(CharTimers::Timer *) =====
int __fastcall CharProperties::BuffExpired(int a1, int (__fastcall ***a2)(int))
{
  int v4; // r0
  int (__fastcall **v5)(int); // r3
  int v6; // r6
  int (__fastcall ***v7)(int); // r0
  int v8; // r5

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
        "timer",
        "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Objects\\Characters\\Properties\\CharProperties.cpp",
        832);
    }
  }
  v4 = (*a2)[1]((int)a2);
  v5 = *a2;
  v6 = v4;
  v7 = a2;
  v8 = *(_DWORD *)(v6 + 904);
  if ( v8 != (*v5)((int)v7) )
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
        "buffInst->timerID == timer->GetID()",
        "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Objects\\Characters\\Properties\\CharProperties.cpp",
        836);
    }
  }
  return CharProperties::PROPS_DelBuff(a1, **(_DWORD **)(v6 + 912), (Structs::CharacterProperties *)v6);
}


// ===== 3e1374 CharProperties::LoadPropNames(char const*) =====
void __fastcall CharProperties::LoadPropNames(CharProperties *this, const char *a2)
{
  IStreamBase *v3; // r0
  unsigned int i; // r5
  IStreamBase *v5; // r4
  int v6; // r10
  unsigned int v7; // r2
  unsigned int v8; // r3
  void *v9; // r0
  int v10; // r3
  size_t v11; // r10
  char *v12; // r10
  int v13; // r10
  size_t v14; // r1
  char *v15; // r0
  unsigned __int64 v16; // [sp+0h] [bp-7Ch]
  void *v17[13]; // [sp+18h] [bp-64h] BYREF
  size_t v18; // [sp+4Ch] [bp-30h] BYREF
  char *v19; // [sp+50h] [bp-2Ch] BYREF
  unsigned int v20; // [sp+54h] [bp-28h] BYREF
  IStreamBase *v21; // [sp+58h] [bp-24h] BYREF
  std::string v22; // [sp+5Ch] [bp-20h] BYREF

  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  v22._M_finish = (char *)&v22;
  v22._M_start_of_storage._M_data = (char *)&v22;
  std::string::_M_range_initialize(&v22, "isTracingCharProperties", "");
  DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v22);
  if ( (std::string *)v22._M_start_of_storage._M_data != &v22 && v22._M_start_of_storage._M_data )
  {
    if ( (unsigned int)(v22._M_buffers._M_end_of_storage - v22._M_start_of_storage._M_data) > 0x80 )
      CustomFree(v22._M_start_of_storage._M_data);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(
        v22._M_start_of_storage._M_data,
        v22._M_buffers._M_end_of_storage - v22._M_start_of_storage._M_data);
  }
  v3 = (IStreamBase *)(*(int (__fastcall **)(_DWORD, CharProperties *))(**(_DWORD **)(dword_99F73C + 52) + 144))(
                        *(_DWORD *)(dword_99F73C + 52),
                        this);
  if ( v3 )
  {
    v21 = v3;
    StreamBuffer::StreamBuffer((StreamBuffer *)v17, v3);
    (*(void (__fastcall **)(_DWORD, IStreamBase **))(**(_DWORD **)(dword_99F73C + 52) + 120))(
      *(_DWORD *)(dword_99F73C + 52),
      &v21);
    v20 = 0;
    StreamReader::readAs<unsigned int>((int)v17, (int)&v20);
    v18 = 1;
    if ( v20 )
    {
      for ( i = 0; i < v20; ++i )
      {
        StreamReader::readAs<unsigned int>((int)v17, (int)&v19);
        v18 = 1;
        v5 = (IStreamBase *)operator new[]((size_t)(v19 + 1), 0);
        StreamReader::readStringEx((StreamReader *)v17, v5, v19, 0, v16);
        v19[(_DWORD)v5] = 0;
        v6 = dword_9A2C70;
        if ( dword_9A2C70 == dword_9A2C74 )
        {
          v7 = (dword_9A2C70 - CharProperties::s_propNames) >> 2;
          if ( v7 )
            v8 = 2 * v7;
          else
            v8 = 1;
          if ( v8 > 0x3FFFFFFF || v7 > v8 )
            v8 = 0x3FFFFFFF;
          v18 = v8;
          HIDWORD(v16) = &CharProperties::s_propNames;
          v9 = std::allocator<char *>::_M_allocate((int)&dword_9A2C74, v8, &v18);
          v10 = (int)v9;
          v11 = v6 - CharProperties::s_propNames;
          if ( v11 )
          {
            HIDWORD(v16) = v9;
            v15 = (char *)memmove(v9, (const void *)CharProperties::s_propNames, v11);
            v10 = HIDWORD(v16);
            v12 = &v15[v11];
          }
          else
          {
            v12 = (char *)v9;
          }
          *(_DWORD *)v12 = v5;
          v13 = (int)(v12 + 4);
          if ( CharProperties::s_propNames )
          {
            v14 = (dword_9A2C74 - CharProperties::s_propNames) & 0xFFFFFFFC;
            HIDWORD(v16) = v10;
            if ( v14 > 0x80 )
              CustomFree((void *)CharProperties::s_propNames);
            else
              __ZNSt12__node_alloc13_M_deallocateEPvj_veneer((void *)CharProperties::s_propNames, v14);
            v10 = HIDWORD(v16);
          }
          dword_9A2C74 = v10 + 4 * v18;
          CharProperties::s_propNames = v10;
          dword_9A2C70 = v13;
        }
        else
        {
          *(_DWORD *)dword_9A2C70 = v5;
          dword_9A2C70 += 4;
        }
      }
    }
    StreamBuffer::~StreamBuffer(v17);
  }
}


// ===== 3e16e0 CharProperties::GetNameFromPropID(int) =====
int __fastcall CharProperties::GetNameFromPropID(int this, const char *a2)
{
  if ( (unsigned int)(dword_9A2C70 - CharProperties::s_propNames) >> 2 )
  {
    if ( this < 0 )
      return 0;
  }
  else
  {
    CharProperties::LoadPropNames((CharProperties *)"PyData/character_properties_pystructnames.bin", a2);
    if ( this < 0 )
      return 0;
  }
  if ( this >= (dword_9A2C70 - CharProperties::s_propNames) >> 2 )
    return 0;
  return *(_DWORD *)(CharProperties::s_propNames + 4 * this);
}


// ===== 3e1758 CharProperties::GetPropIDFromName(char const*) =====
int __fastcall CharProperties::GetPropIDFromName(CharProperties *this, const char *a2)
{
  int v3; // r5
  int v4; // r7
  int v5; // r6

  if ( !((unsigned int)(dword_9A2C70 - CharProperties::s_propNames) >> 2) )
    CharProperties::LoadPropNames((CharProperties *)"PyData/character_properties_pystructnames.bin", a2);
  if ( !this )
    return -1;
  v3 = CharProperties::s_propNames;
  v4 = (dword_9A2C70 - CharProperties::s_propNames) >> 2;
  if ( !v4 )
    return -1;
  v5 = 0;
  while ( LC_API_STRCASECMP_0((const char *)this, *(const char **)(v3 + 4 * v5)) )
  {
    if ( ++v5 == v4 )
      return -1;
  }
  return v5;
}


// ===== 3e17f8 std::allocator<CharProperties::BuffInst *>::allocate(uint,void const*) [clone] =====
void *std::allocator<CharProperties::BuffInst *>::allocate()
{
  size_t v1; // [sp+4h] [bp-8h] BYREF

  v1 = 128;
  return __ZNSt12__node_alloc11_M_allocateERj_veneer(&v1);
}


// ===== 3e1818 std::priv::_Deque_base<CharProperties::BuffInst *,std::allocator<CharProperties::BuffInst *>>::_M_initialize_map(uint) =====
char *__fastcall std::priv::_Deque_base<CharProperties::BuffInst *,std::allocator<CharProperties::BuffInst *>>::_M_initialize_map(
        _DWORD *a1,
        unsigned int a2)
{
  unsigned int v2; // r6
  char v3; // r5
  unsigned int v4; // r1
  char *result; // r0
  unsigned int v7; // r6
  char *v8; // r9
  unsigned int v9; // r11
  char *v10; // r10
  unsigned int v11; // r6
  char *v12; // r7
  int v13; // r2
  int v14; // r3

  v2 = a2 >> 5;
  v3 = a2;
  v4 = (a2 >> 5) + 3;
  if ( v4 < 8 )
    v4 = 8;
  a1[9] = v4;
  result = (char *)std::allocator<CharProperties::BuffInst **>::allocate((int)(a1 + 8), v4);
  v7 = v2 + 1;
  v8 = result;
  v9 = (a1[9] - v7) >> 1;
  a1[8] = result;
  v10 = &result[4 * v9];
  v11 = (unsigned int)&v10[4 * v7];
  if ( (unsigned int)v10 < v11 )
  {
    v12 = &result[4 * v9];
    do
    {
      result = (char *)std::allocator<CharProperties::BuffInst *>::allocate();
      *(_DWORD *)v12 = result;
      v12 += 4;
    }
    while ( v11 > (unsigned int)v12 );
  }
  a1[3] = v10;
  v13 = *(_DWORD *)&v8[4 * v9];
  a1[7] = v11 - 4;
  a1[1] = v13;
  a1[2] = v13 + 128;
  v14 = *(_DWORD *)(v11 - 4);
  *a1 = v13;
  a1[4] = v14 + 4 * (v3 & 0x1F);
  a1[6] = v14 + 128;
  a1[5] = v14;
  return result;
}


// ===== 3e18c4 std::deque<CharProperties::BuffInst *,std::allocator<CharProperties::BuffInst *>>::deque(std::deque<CharProperties::BuffInst *,std::allocator<CharProperties::BuffInst *>> const&) =====
int *__fastcall std::deque<CharProperties::BuffInst *>::deque(int *a1, int *a2)
{
  int v4; // r0
  int v5; // r1
  int v6; // r2
  int v7; // r3
  _DWORD *v8; // t0
  unsigned int v9; // r0
  int v10; // r7
  int v11; // r12
  int v12; // r11
  int v13; // r9
  int v14; // lr
  int v15; // r0
  int v16; // r8
  int v17; // r10
  int v18; // r1
  int v19; // r2
  int v20; // r3
  int v21; // r5
  _DWORD v23[4]; // [sp+24h] [bp-58h] BYREF
  _DWORD v24[4]; // [sp+34h] [bp-48h] BYREF
  int v25[12]; // [sp+44h] [bp-38h] BYREF
  char v26[8]; // [sp+74h] [bp-8h] BYREF

  v4 = *a2;
  v8 = a2 + 1;
  v5 = a2[1];
  v6 = *++v8;
  v7 = v8[1];
  v23[0] = v4;
  v23[1] = v5;
  v23[2] = v6;
  v23[3] = v7;
  v9 = std::priv::_Deque_iterator_base<CharProperties::BuffInst *>::_M_subtract(a2 + 4, v23);
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = 0;
  a1[4] = 0;
  a1[5] = 0;
  a1[6] = 0;
  a1[7] = 0;
  a1[8] = 0;
  a1[9] = 0;
  std::priv::_Deque_base<CharProperties::BuffInst *,std::allocator<CharProperties::BuffInst *>>::_M_initialize_map(
    a1,
    v9);
  v10 = a2[3];
  v11 = a2[4];
  v12 = a2[7];
  v13 = a2[6];
  v14 = a2[5];
  v15 = *a2;
  v16 = a2[1];
  v17 = a2[2];
  v18 = a1[3];
  v19 = a1[2];
  v20 = a1[1];
  v21 = *a1;
  v25[6] = v13;
  v25[5] = v14;
  v25[4] = v11;
  v25[7] = v12;
  v24[3] = v18;
  v24[2] = v19;
  v24[1] = v20;
  v24[0] = v21;
  v25[8] = v15;
  v25[10] = v17;
  v25[9] = v16;
  v25[11] = v10;
  std::priv::__ucopy<std::priv::_Deque_iterator<CharProperties::BuffInst *,std::_Const_traits<CharProperties::BuffInst *>>,std::priv::_Deque_iterator<CharProperties::BuffInst *,std::_Nonconst_traits<CharProperties::BuffInst *>>,int>(
    v25,
    v15,
    v16,
    v17,
    v10,
    v11,
    v14,
    v13,
    v12,
    v24,
    v26,
    0);
  return a1;
}


// ===== 3e19c0 CharProperties::BuffDecl::BuffDecl(CharProperties::BuffDecl const&) =====
CharProperties::BuffDecl *__fastcall CharProperties::BuffDecl::BuffDecl(
        CharProperties::BuffDecl *this,
        const CharProperties::BuffDecl *a2)
{
  std::string *v3; // r0
  int v4; // r3

  v3 = (std::string *)((char *)this + 8);
  *(_DWORD *)this = *(_DWORD *)a2;
  v4 = *((_DWORD *)a2 + 1);
  *((_DWORD *)this + 6) = v3;
  *((_DWORD *)this + 7) = v3;
  *((_DWORD *)this + 1) = v4;
  std::string::_M_range_initialize(v3, *((const char **)a2 + 7), *((const char **)a2 + 6));
  std::deque<CharProperties::BuffInst *>::deque((int *)this + 8, (int *)a2 + 8);
  return this;
}


// ===== 3e1a08 CharProperties::BuffDecl::BuffDecl(void) =====
CharProperties::BuffDecl *__fastcall CharProperties::BuffDecl::BuffDecl(CharProperties::BuffDecl *this)
{
  _DWORD *v2; // r0

  *(_DWORD *)this = -1;
  v2 = (_DWORD *)((char *)this + 8);
  *((_DWORD *)this + 6) = v2;
  *((_DWORD *)this + 7) = v2;
  *((_DWORD *)this + 1) = 0;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block(v2, 0x10u);
  **((_BYTE **)this + 6) = 0;
  *((_DWORD *)this + 8) = 0;
  *((_DWORD *)this + 9) = 0;
  *((_DWORD *)this + 10) = 0;
  *((_DWORD *)this + 11) = 0;
  *((_DWORD *)this + 12) = 0;
  *((_DWORD *)this + 13) = 0;
  *((_DWORD *)this + 14) = 0;
  *((_DWORD *)this + 15) = 0;
  *((_DWORD *)this + 16) = 0;
  *((_DWORD *)this + 17) = 0;
  std::priv::_Deque_base<CharProperties::BuffInst *,std::allocator<CharProperties::BuffInst *>>::_M_initialize_map(
    (_DWORD *)this + 8,
    0);
  return this;
}


// ===== 3e1a7c std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,CharProperties::BuffDecl>,std::priv::_Select1st<std::pair<int const,CharProperties::BuffDecl>>,std::priv::_MapTraitsT<std::pair<int const,CharProperties::BuffDecl>>,std::allocator<std::pair<int const,CharProperties::BuffDecl>>>::_M_create_node(std::pair<int const,CharProperties::BuffDecl> const&) =====
_DWORD *__fastcall std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,CharProperties::BuffDecl>,std::priv::_Select1st<std::pair<int const,CharProperties::BuffDecl>>,std::priv::_MapTraitsT<std::pair<int const,CharProperties::BuffDecl>>,std::allocator<std::pair<int const,CharProperties::BuffDecl>>>::_M_create_node(
        int a1,
        _DWORD *a2)
{
  _DWORD *v3; // r4
  size_t v5; // [sp+4h] [bp-8h] BYREF

  v5 = 92;
  v3 = __ZNSt12__node_alloc11_M_allocateERj_veneer(&v5);
  v3[4] = *a2;
  CharProperties::BuffDecl::BuffDecl((CharProperties::BuffDecl *)(v3 + 5), (const CharProperties::BuffDecl *)(a2 + 1));
  v3[3] = 0;
  v3[2] = 0;
  return v3;
}


// ===== 3e1ac8 std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,CharProperties::BuffDecl>,std::priv::_Select1st<std::pair<int const,CharProperties::BuffDecl>>,std::priv::_MapTraitsT<std::pair<int const,CharProperties::BuffDecl>>,std::allocator<std::pair<int const,CharProperties::BuffDecl>>>::_M_insert(std::priv::_Rb_tree_node_base *,std::pair<int const,CharProperties::BuffDecl> const&,std::priv::_Rb_tree_node_base *,std::priv::_Rb_tree_node_base *) =====
_DWORD *__fastcall std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,CharProperties::BuffDecl>,std::priv::_Select1st<std::pair<int const,CharProperties::BuffDecl>>,std::priv::_MapTraitsT<std::pair<int const,CharProperties::BuffDecl>>,std::allocator<std::pair<int const,CharProperties::BuffDecl>>>::_M_insert(
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
    node = std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,CharProperties::BuffDecl>,std::priv::_Select1st<std::pair<int const,CharProperties::BuffDecl>>,std::priv::_MapTraitsT<std::pair<int const,CharProperties::BuffDecl>>,std::allocator<std::pair<int const,CharProperties::BuffDecl>>>::_M_create_node(
             (int)a2,
             a4);
    a2[2] = node;
    a2[1] = node;
    a2[3] = node;
  }
  else if ( a6 || !a5 && *a4 >= a3[4] )
  {
    v9 = std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,CharProperties::BuffDecl>,std::priv::_Select1st<std::pair<int const,CharProperties::BuffDecl>>,std::priv::_MapTraitsT<std::pair<int const,CharProperties::BuffDecl>>,std::allocator<std::pair<int const,CharProperties::BuffDecl>>>::_M_create_node(
           (int)a2,
           a4);
    a3[3] = v9;
    node = v9;
    if ( a3 == (_DWORD *)a2[3] )
      a2[3] = v9;
  }
  else
  {
    v12 = std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,CharProperties::BuffDecl>,std::priv::_Select1st<std::pair<int const,CharProperties::BuffDecl>>,std::priv::_MapTraitsT<std::pair<int const,CharProperties::BuffDecl>>,std::allocator<std::pair<int const,CharProperties::BuffDecl>>>::_M_create_node(
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


// ===== 3e1ba0 std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,CharProperties::BuffDecl>,std::priv::_Select1st<std::pair<int const,CharProperties::BuffDecl>>,std::priv::_MapTraitsT<std::pair<int const,CharProperties::BuffDecl>>,std::allocator<std::pair<int const,CharProperties::BuffDecl>>>::insert_unique(std::pair<int const,CharProperties::BuffDecl> const&) =====
int __fastcall std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,CharProperties::BuffDecl>,std::priv::_Select1st<std::pair<int const,CharProperties::BuffDecl>>,std::priv::_MapTraitsT<std::pair<int const,CharProperties::BuffDecl>>,std::allocator<std::pair<int const,CharProperties::BuffDecl>>>::insert_unique(
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
    std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,CharProperties::BuffDecl>,std::priv::_Select1st<std::pair<int const,CharProperties::BuffDecl>>,std::priv::_MapTraitsT<std::pair<int const,CharProperties::BuffDecl>>,std::allocator<std::pair<int const,CharProperties::BuffDecl>>>::_M_insert(
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
      std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,CharProperties::BuffDecl>,std::priv::_Select1st<std::pair<int const,CharProperties::BuffDecl>>,std::priv::_MapTraitsT<std::pair<int const,CharProperties::BuffDecl>>,std::allocator<std::pair<int const,CharProperties::BuffDecl>>>::_M_insert(
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


// ===== 3e1d28 std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,CharProperties::BuffDecl>,std::priv::_Select1st<std::pair<int const,CharProperties::BuffDecl>>,std::priv::_MapTraitsT<std::pair<int const,CharProperties::BuffDecl>>,std::allocator<std::pair<int const,CharProperties::BuffDecl>>>::insert_unique(std::priv::_Rb_tree_iterator<std::pair<int const,CharProperties::BuffDecl>,std::priv::_MapTraitsT<std::pair<int const,CharProperties::BuffDecl>>>,std::pair<int const,CharProperties::BuffDecl> const&) =====
_DWORD *__fastcall std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,CharProperties::BuffDecl>,std::priv::_Select1st<std::pair<int const,CharProperties::BuffDecl>>,std::priv::_MapTraitsT<std::pair<int const,CharProperties::BuffDecl>>,std::allocator<std::pair<int const,CharProperties::BuffDecl>>>::insert_unique(
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
      std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,CharProperties::BuffDecl>,std::priv::_Select1st<std::pair<int const,CharProperties::BuffDecl>>,std::priv::_MapTraitsT<std::pair<int const,CharProperties::BuffDecl>>,std::allocator<std::pair<int const,CharProperties::BuffDecl>>>::insert_unique(
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
      std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,CharProperties::BuffDecl>,std::priv::_Select1st<std::pair<int const,CharProperties::BuffDecl>>,std::priv::_MapTraitsT<std::pair<int const,CharProperties::BuffDecl>>,std::allocator<std::pair<int const,CharProperties::BuffDecl>>>::_M_insert(
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
        std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,CharProperties::BuffDecl>,std::priv::_Select1st<std::pair<int const,CharProperties::BuffDecl>>,std::priv::_MapTraitsT<std::pair<int const,CharProperties::BuffDecl>>,std::allocator<std::pair<int const,CharProperties::BuffDecl>>>::insert_unique(
          (int)&v21,
          a2,
          a4);
        *a1 = v21;
        return a1;
      }
      if ( !v15 )
      {
LABEL_63:
        std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,CharProperties::BuffDecl>,std::priv::_Select1st<std::pair<int const,CharProperties::BuffDecl>>,std::priv::_MapTraitsT<std::pair<int const,CharProperties::BuffDecl>>,std::allocator<std::pair<int const,CharProperties::BuffDecl>>>::_M_insert(
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
            std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,CharProperties::BuffDecl>,std::priv::_Select1st<std::pair<int const,CharProperties::BuffDecl>>,std::priv::_MapTraitsT<std::pair<int const,CharProperties::BuffDecl>>,std::allocator<std::pair<int const,CharProperties::BuffDecl>>>::_M_insert(
              a1,
              a2,
              v4,
              a4,
              (int)v4,
              0);
          else
            std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,CharProperties::BuffDecl>,std::priv::_Select1st<std::pair<int const,CharProperties::BuffDecl>>,std::priv::_MapTraitsT<std::pair<int const,CharProperties::BuffDecl>>,std::allocator<std::pair<int const,CharProperties::BuffDecl>>>::_M_insert(
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
              std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,CharProperties::BuffDecl>,std::priv::_Select1st<std::pair<int const,CharProperties::BuffDecl>>,std::priv::_MapTraitsT<std::pair<int const,CharProperties::BuffDecl>>,std::allocator<std::pair<int const,CharProperties::BuffDecl>>>::_M_insert(
                a1,
                a2,
                v4,
                a4,
                0,
                (int)v4);
              return a1;
            }
LABEL_42:
            std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,CharProperties::BuffDecl>,std::priv::_Select1st<std::pair<int const,CharProperties::BuffDecl>>,std::priv::_MapTraitsT<std::pair<int const,CharProperties::BuffDecl>>,std::allocator<std::pair<int const,CharProperties::BuffDecl>>>::_M_insert(
              a1,
              a2,
              i,
              a4,
              (int)i,
              0);
            return a1;
          }
LABEL_31:
          std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,CharProperties::BuffDecl>,std::priv::_Select1st<std::pair<int const,CharProperties::BuffDecl>>,std::priv::_MapTraitsT<std::pair<int const,CharProperties::BuffDecl>>,std::allocator<std::pair<int const,CharProperties::BuffDecl>>>::insert_unique(
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
    std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,CharProperties::BuffDecl>,std::priv::_Select1st<std::pair<int const,CharProperties::BuffDecl>>,std::priv::_MapTraitsT<std::pair<int const,CharProperties::BuffDecl>>,std::allocator<std::pair<int const,CharProperties::BuffDecl>>>::insert_unique(
      (int)&v20,
      a2,
      a4);
    *a1 = v20;
  }
  else
  {
    std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,CharProperties::BuffDecl>,std::priv::_Select1st<std::pair<int const,CharProperties::BuffDecl>>,std::priv::_MapTraitsT<std::pair<int const,CharProperties::BuffDecl>>,std::allocator<std::pair<int const,CharProperties::BuffDecl>>>::_M_insert(
      a1,
      a2,
      v16,
      a4,
      0,
      (int)v4);
  }
  return a1;
}


// ===== 3e209c std::map<int,CharProperties::BuffDecl,std::less<int>,std::allocator<std::pair<int const,CharProperties::BuffDecl>>>::operator[]<int>(int const&) =====
_DWORD *__fastcall std::map<int,CharProperties::BuffDecl>::operator[]<int>(_DWORD *a1, int *a2)
{
  _DWORD *v2; // r4
  int v5; // r1
  _DWORD *v6; // r2
  int v7; // r3
  bool v8; // cc
  _DWORD *v9; // r3
  _DWORD *v10; // r0
  _DWORD *v12; // r4
  _DWORD *v13; // [sp+0h] [bp-A0h] BYREF
  _DWORD *v14; // [sp+4h] [bp-9Ch] BYREF
  int v15; // [sp+8h] [bp-98h] BYREF
  _BYTE v16[72]; // [sp+Ch] [bp-94h] BYREF
  _BYTE v17[72]; // [sp+54h] [bp-4Ch] BYREF

  v2 = (_DWORD *)a1[1];
  if ( v2 )
  {
    v5 = *a2;
    v6 = a1;
    while ( 1 )
    {
      v7 = v2[4];
      v8 = v5 <= v7;
      if ( v5 <= v7 )
        v9 = (_DWORD *)v2[2];
      else
        v9 = (_DWORD *)v2[3];
      if ( !v8 )
        v2 = v6;
      if ( !v9 )
        break;
      v6 = v2;
      v2 = v9;
    }
  }
  else
  {
    v2 = a1;
  }
  if ( a1 == v2 || (v10 = v2, *a2 < v2[4]) )
  {
    CharProperties::BuffDecl::BuffDecl((CharProperties::BuffDecl *)v17);
    v15 = *a2;
    CharProperties::BuffDecl::BuffDecl((CharProperties::BuffDecl *)v16, (const CharProperties::BuffDecl *)v17);
    v13 = v2;
    std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,CharProperties::BuffDecl>,std::priv::_Select1st<std::pair<int const,CharProperties::BuffDecl>>,std::priv::_MapTraitsT<std::pair<int const,CharProperties::BuffDecl>>,std::allocator<std::pair<int const,CharProperties::BuffDecl>>>::insert_unique(
      &v14,
      a1,
      &v13,
      &v15);
    v12 = v14;
    CharProperties::BuffDecl::~BuffDecl((CharProperties::BuffDecl *)v16);
    CharProperties::BuffDecl::~BuffDecl((CharProperties::BuffDecl *)v17);
    v10 = v12;
  }
  return v10 + 5;
}


// ===== 3e21a8 std::deque<CharProperties::BuffInst *,std::allocator<CharProperties::BuffInst *>>::_M_push_back_aux_v(CharProperties::BuffInst * const&) =====
void *__fastcall std::deque<CharProperties::BuffInst *>::_M_push_back_aux_v(int a1, _DWORD *a2)
{
  char *v2; // r10
  int v3; // r2
  unsigned int v4; // r3
  void *result; // r0
  int *v8; // r2
  int v9; // r3
  int v10; // r2
  char *v11; // r1
  int v12; // r7
  int v13; // r9
  char *v14; // r6
  int v15; // r2
  unsigned int v16; // r8
  char *v17; // r0
  const void *v18; // r1
  size_t v19; // r2
  char *v20; // r10
  void *v21; // r0
  size_t v22; // r1
  int v23; // r3
  int v24; // r3

  v2 = *(char **)(a1 + 28);
  v3 = *(_DWORD *)(a1 + 32);
  v4 = *(_DWORD *)(a1 + 36);
  if ( v4 - ((int)&v2[-v3] >> 2) <= 1 )
  {
    v11 = *(char **)(a1 + 12);
    v12 = ((v2 - v11) >> 2) + 1;
    v13 = ((v2 - v11) >> 2) + 2;
    if ( v4 <= 2 * v13 )
    {
      if ( v4 )
        v15 = *(_DWORD *)(a1 + 36);
      else
        v15 = 1;
      v16 = v4 + 2 + v15;
      v17 = (char *)std::allocator<CharProperties::BuffInst **>::allocate(a1 + 32, v16);
      v18 = *(const void **)(a1 + 12);
      v19 = *(_DWORD *)(a1 + 28) + 4 - (_DWORD)v18;
      v20 = v17;
      v14 = &v17[4 * ((v16 - v13) >> 1)];
      if ( v19 )
        memmove(&v17[4 * ((v16 - v13) >> 1)], v18, v19);
      v21 = *(void **)(a1 + 32);
      if ( v21 )
      {
        v22 = 4 * *(_DWORD *)(a1 + 36);
        if ( v22 > 0x80 )
          CustomFree(v21);
        else
          __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v21, v22);
      }
      *(_DWORD *)(a1 + 32) = v20;
      *(_DWORD *)(a1 + 36) = v16;
    }
    else
    {
      v14 = (char *)(v3 + 4 * ((v4 - v13) >> 1));
      if ( v11 <= v14 )
      {
        if ( v2 + 4 - v11 > 0 )
          memmove(&v14[4 * v12 - (v2 + 4 - v11)], v11, v2 + 4 - v11);
      }
      else if ( v2 + 4 != v11 )
      {
        memmove(v14, v11, v2 + 4 - v11);
      }
    }
    *(_DWORD *)(a1 + 12) = v14;
    v23 = *(_DWORD *)v14;
    v2 = &v14[4 * v12 - 4];
    *(_DWORD *)(a1 + 8) = *(_DWORD *)v14 + 128;
    *(_DWORD *)(a1 + 4) = v23;
    *(_DWORD *)(a1 + 28) = v2;
    v24 = *(_DWORD *)v2;
    *(_DWORD *)(a1 + 24) = *(_DWORD *)v2 + 128;
    *(_DWORD *)(a1 + 20) = v24;
  }
  result = std::allocator<CharProperties::BuffInst *>::allocate();
  *((_DWORD *)v2 + 1) = result;
  **(_DWORD **)(a1 + 16) = *a2;
  v8 = (int *)(*(_DWORD *)(a1 + 28) + 4);
  *(_DWORD *)(a1 + 28) = v8;
  v9 = *v8;
  v10 = *v8 + 128;
  *(_DWORD *)(a1 + 16) = v9;
  *(_DWORD *)(a1 + 24) = v10;
  *(_DWORD *)(a1 + 20) = v9;
  return result;
}


// ===== 3e232c CharProperties::PROPS_AddBuff(int,uint,int,uint,int,char const*) =====
Structs::CharacterProperties *__fastcall CharProperties::PROPS_AddBuff(
        CharProperties *this,
        int a2,
        unsigned int *a3,
        int a4,
        unsigned int a5,
        int a6,
        char *__f)
{
  unsigned int *v8; // r12
  unsigned int *v10; // r11
  int v11; // r3
  bool v12; // cc
  unsigned int *v13; // r3
  int v14; // r5
  _DWORD *v15; // r9
  unsigned int v16; // r1
  unsigned int v17; // r2
  unsigned int v18; // r3
  Structs::CharacterProperties *v19; // r1
  _DWORD *v20; // lr
  int v21; // r1
  int v22; // r2
  int v23; // r3
  int AnimController; // r0
  _DWORD *v25; // lr
  void (__fastcall *v26)(int, int, int); // r5
  int v27; // r4
  int v28; // r1
  int v29; // r2
  int v30; // r3
  int v31; // r0
  Structs::CharacterProperties *result; // r0
  int v33; // r4
  size_t v34; // r0
  _BOOL4 v35; // r3
  int v36; // r1
  int v37; // r2
  int v38; // r3
  Structs::CharacterProperties *v39; // r0
  Structs::CharacterProperties **v40; // r3
  Structs::CharacterProperties *v41; // r4
  int v42; // r1
  int v43; // r2
  int v44; // r3
  Structs::CharacterProperties *v45; // r6
  unsigned int v46; // r3
  unsigned int v47; // [sp+10h] [bp-84h]
  int v48; // [sp+24h] [bp-70h] BYREF
  _DWORD v49[4]; // [sp+2Ch] [bp-68h] BYREF
  _DWORD v50[4]; // [sp+3Ch] [bp-58h] BYREF
  _DWORD v51[4]; // [sp+4Ch] [bp-48h] BYREF
  _DWORD v52[4]; // [sp+5Ch] [bp-38h] BYREF
  _DWORD v53[4]; // [sp+6Ch] [bp-28h] BYREF
  unsigned int v54; // [sp+7Ch] [bp-18h] BYREF
  unsigned int *v55; // [sp+80h] [bp-14h] BYREF
  unsigned int v56; // [sp+84h] [bp-10h] BYREF
  unsigned int *v57; // [sp+88h] [bp-Ch] BYREF
  Structs::CharacterProperties *v58; // [sp+8Ch] [bp-8h] BYREF

  v8 = *((unsigned int **)this + 903);
  v48 = a2;
  v47 = (unsigned int)a3;
  v10 = (unsigned int *)((char *)this + 3608);
  if ( !v8 )
    goto LABEL_26;
  a3 = (unsigned int *)((char *)this + 3608);
  while ( 1 )
  {
    v11 = v8[4];
    v12 = a2 <= v11;
    if ( a2 <= v11 )
      v13 = (unsigned int *)v8[2];
    else
      v13 = (unsigned int *)v8[3];
    if ( !v12 )
      v8 = a3;
    a3 = v8;
    if ( !v13 )
      break;
    v8 = v13;
  }
  if ( v10 == v8 || a2 >= (int)v8[4] )
  {
    if ( a4 <= 0 )
      a4 = 128;
    v14 = 0;
    v58 = nullptr;
    if ( v10 != v8 )
    {
      v15 = v8 + 13;
      v16 = v8[14];
      v17 = v8[15];
      v18 = v8[16];
      v53[0] = v8[13];
      v53[1] = v16;
      v53[2] = v17;
      v53[3] = v18;
      if ( a4 == std::priv::_Deque_iterator_base<CharProperties::BuffInst *>::_M_subtract(v8 + 17, v53) )
      {
        do
        {
          v42 = v15[1];
          v43 = v15[2];
          v44 = v15[3];
          v52[0] = *v15;
          v52[1] = v42;
          v52[2] = v43;
          v52[3] = v44;
          std::priv::_Deque_iterator_base<CharProperties::BuffInst *>::_M_advance(v52, v14);
          v45 = *(Structs::CharacterProperties **)v52[0];
          v46 = *(_DWORD *)(*(_DWORD *)v52[0] + 900);
          if ( v46 >= a5 )
          {
            if ( v46 == a5 )
            {
              a3 = (unsigned int *)&v57;
              if ( *((_DWORD *)v45 + 226) == -1
                || !v58
                || (CharTimers::TMR_TimeLeft(
                      (CharTimers *)(*((_DWORD *)this + 1) + 948),
                      *((_DWORD *)v58 + 226),
                      (unsigned int *)&v57,
                      &v56),
                    CharTimers::TMR_TimeLeft(
                      (CharTimers *)(*((_DWORD *)this + 1) + 948),
                      *((_DWORD *)v45 + 226),
                      (unsigned int *)&v55,
                      &v54),
                    a3 = v57,
                    v57 < v55) )
              {
                v58 = v45;
              }
            }
          }
          else
          {
            v58 = *(Structs::CharacterProperties **)v52[0];
            *((_DWORD *)v45 + 225) = a5;
          }
          ++v14;
        }
        while ( a4 > v14 );
      }
      if ( v58 )
      {
        CharTimers::TMR_Stop((CharTimers *)(*((_DWORD *)this + 1) + 948), *((_DWORD *)v58 + 226));
        *((_DWORD *)v58 + 226) = -1;
        goto LABEL_18;
      }
    }
  }
  else
  {
LABEL_26:
    if ( a4 <= 0 )
      a4 = 128;
    v58 = nullptr;
  }
  v33 = std::map<int,CharProperties::BuffDecl>::operator[]<int>((char *)this + 3608, &v48, a3);
  *(_DWORD *)v33 = v48;
  v34 = LC_API_STRLEN_0(__f);
  std::string::_M_assign((std::string *const)(v33 + 8), __f, &__f[v34]);
  v35 = *(_DWORD *)(v33 + 4) == 0;
  if ( a6 == -1 )
    v35 = 0;
  if ( v35 )
    *(_DWORD *)(v33 + 4) = VisualFXManager::GrabAnimFX(
                             (VisualFXManager *)&Singleton<VisualFXManager>::s_inst,
                             a6,
                             *((GameObject **)this + 1));
  v36 = *(_DWORD *)(v33 + 36);
  v37 = *(_DWORD *)(v33 + 40);
  v38 = *(_DWORD *)(v33 + 44);
  v51[0] = *(_DWORD *)(v33 + 32);
  v51[1] = v36;
  v51[2] = v37;
  v51[3] = v38;
  if ( a4 <= (unsigned int)std::priv::_Deque_iterator_base<CharProperties::BuffInst *>::_M_subtract(v33 + 48, v51) )
    return nullptr;
  v39 = (Structs::CharacterProperties *)operator new(916, 0);
  *((_DWORD *)v39 + 228) = v33;
  *(_DWORD *)v39 = off_96BBC0;
  v58 = v39;
  *((_DWORD *)v39 + 227) = this;
  *((_DWORD *)v58 + 225) = a5;
  *((_DWORD *)v58 + 226) = -1;
  v40 = *(Structs::CharacterProperties ***)(v33 + 48);
  if ( v40 == (Structs::CharacterProperties **)(*(_DWORD *)(v33 + 56) - 4) )
  {
    std::deque<CharProperties::BuffInst *>::_M_push_back_aux_v(v33 + 32, &v58);
  }
  else
  {
    *v40 = v58;
    *(_DWORD *)(v33 + 48) += 4;
  }
LABEL_18:
  if ( v47 )
  {
    v41 = v58;
    *((_DWORD *)v41 + 226) = CharTimers::TMR_Start((CharTimers *)(*((_DWORD *)this + 1) + 948), v47, 0, 54, v58);
    v19 = v58;
    if ( *((_DWORD *)v58 + 226) != -1 )
      goto LABEL_21;
    CharProperties::PROPS_DelBuff(this, v48, v58);
    return nullptr;
  }
  v19 = v58;
LABEL_21:
  v20 = *((_DWORD **)v19 + 228);
  if ( v20[1] )
  {
    v21 = v20[9];
    v22 = v20[10];
    v23 = v20[11];
    v50[0] = v20[8];
    v50[1] = v21;
    v50[2] = v22;
    v50[3] = v23;
    if ( (unsigned int)std::priv::_Deque_iterator_base<CharProperties::BuffInst *>::_M_subtract(v20 + 12, v50) > 1 )
    {
      AnimController = AnimatedFX::GetAnimController(*(AnimatedFX **)(*((_DWORD *)v58 + 228) + 4));
      v25 = *((_DWORD **)v58 + 228);
      v26 = *(void (__fastcall **)(int, int, int))(*(_DWORD *)AnimController + 28);
      v27 = AnimController;
      v28 = v25[9];
      v29 = v25[10];
      v30 = v25[11];
      v49[0] = v25[8];
      v49[1] = v28;
      v49[2] = v29;
      v49[3] = v30;
      v31 = std::priv::_Deque_iterator_base<CharProperties::BuffInst *>::_M_subtract(v25 + 12, v49);
      v26(v27, v31 - 1, 1);
    }
    v19 = v58;
  }
  CharProperties::PROPS_ResetSheet(this, v19);
  *((_DWORD *)v58 + 173) = a5 << 8;
  result = v58;
  *((_DWORD *)this + 850) = a5 << 8;
  return result;
}


// ===== 3e2720 CharProperties::PROPS_AddDot(int,int,int) =====
Structs::CharacterProperties *__fastcall CharProperties::PROPS_AddDot(CharProperties *this, int a2, int a3, int a4)
{
  int v7; // r10
  int v8; // r8
  int v9; // r9
  int v10; // r10
  int v11; // r8
  int v12; // r9
  int v13; // r8
  const char *v14; // r12
  Structs::CharacterProperties *result; // r0
  int v16; // r5
  int v17; // [sp+10h] [bp-Ch]

  if ( a2 <= 0 )
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
        "durationMs > 0",
        "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Objects\\Characters\\Properties\\CharProperties.cpp",
        1077);
    }
  }
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
        "damage >= 0",
        "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Objects\\Characters\\Properties\\CharProperties.cpp",
        1078);
    }
  }
  v7 = Arrays::ClassTable::size;
  if ( Arrays::ClassTable::size )
  {
    v8 = 0;
    v9 = Arrays::ClassTable::m_memberNames;
    while ( LC_API_STRCMP_0("AUTO_DOT_01_FIRE", *(const char **)(v9 + 4 * v8)) )
    {
      if ( ++v8 == v7 )
        goto LABEL_13;
    }
  }
  else
  {
LABEL_13:
    v8 = -1;
  }
  v17 = v8 + a4;
  v10 = Arrays::AnimatedEffectTable::size;
  if ( Arrays::AnimatedEffectTable::size )
  {
    v11 = 0;
    v12 = Arrays::AnimatedEffectTable::m_memberNames;
    while ( LC_API_STRCMP_0("AUTO_DOT_01_FIRE", *(const char **)(v12 + 4 * v11)) )
    {
      if ( ++v11 == v10 )
        goto LABEL_12;
    }
  }
  else
  {
LABEL_12:
    v11 = -1;
  }
  v13 = v11 + a4;
  switch ( a4 )
  {
    case -1:
      v14 = "dot_normal";
      break;
    case 0:
      v14 = "dot_fire";
      break;
    case 1:
      v14 = "dot_water";
      break;
    case 2:
      v14 = "dot_lightning";
      break;
    case 3:
      v14 = "dot_earth";
      break;
    case 4:
      v14 = "dot_air";
      break;
    default:
      if ( gAssertLevel == 2 )
      {
        dword_0 = 0;
        v14 = "dot_unknown";
      }
      else
      {
        if ( gAssertLevel == 1 )
          fprintf(
            (FILE *)&_sF + 2,
            "ASSERT(%s) FAILED: %s:%d\n",
            "!\"WTF! Invalid element for the AddDot\"",
            "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Objects\\Characters\\Properties\\CharProperties.cpp",
            1093);
        v14 = "dot_unknown";
      }
      break;
  }
  result = (Structs::CharacterProperties *)CharProperties::PROPS_AddBuff(this, v17, a2, 1, a3, v13, v14);
  if ( result )
  {
    v16 = a4 + 127;
    CharProperties::_SetProperty(this, result, v16, a3);
    return (Structs::CharacterProperties *)CharProperties::RecalcProperty(this, v16);
  }
  return result;
}


// ===== 3e2a5c CharProperties::PROPS_DebuffSlow(uint) =====
Structs::CharacterProperties *__fastcall CharProperties::PROPS_DebuffSlow(Character **this, unsigned int a2)
{
  Structs::CharacterProperties *result; // r0
  int v5; // r4
  int v6; // r8
  int v7; // r9
  int v8; // r8
  int v9; // r6
  int v10; // r7
  int v11; // lr

  result = (Structs::CharacterProperties *)Character::IsBoss(*(this + 1));
  v5 = (int)result;
  if ( !result )
  {
    if ( a2 )
    {
      v6 = Arrays::ClassTable::size;
      if ( Arrays::ClassTable::size )
      {
        v7 = Arrays::ClassTable::m_memberNames;
        while ( 1 )
        {
          result = (Structs::CharacterProperties *)LC_API_STRCMP_0("Debuff_Slow", *(const char **)(v7 + 4 * v5));
          if ( !result )
            break;
          if ( ++v5 == v6 )
            return result;
        }
        if ( v5 != -1 )
        {
          v8 = Arrays::AnimatedEffectTable::size;
          if ( Arrays::AnimatedEffectTable::size )
          {
            v9 = 0;
            v10 = Arrays::AnimatedEffectTable::m_memberNames;
            while ( LC_API_STRCMP_0("AUTO_DEBUFF_SLOW", *(const char **)(v10 + 4 * v9)) )
            {
              if ( ++v9 == v8 )
                goto LABEL_16;
            }
            v11 = v9;
          }
          else
          {
LABEL_16:
            v11 = -1;
          }
          result = (Structs::CharacterProperties *)CharProperties::PROPS_AddBuff(
                                                     (CharProperties *)this,
                                                     v5,
                                                     a2,
                                                     1,
                                                     0,
                                                     v11,
                                                     "debuff_slow");
          if ( result )
          {
            CharProperties::PROPS_ApplyClassToSheet((CharProperties *)this, v5, result);
            CharProperties::RecalcProperty((CharProperties *)this, 48);
            CharProperties::RecalcProperty((CharProperties *)this, 47);
            return (Structs::CharacterProperties *)CharProperties::RecalcProperty((CharProperties *)this, 46);
          }
        }
      }
    }
  }
  return result;
}


// ===== 3e2bcc CharProperties::_ApplyGroupOnlyIf(Structs::CharacterProperties &,Structs::ClassFunc *) =====
void CharProperties::_ApplyGroupOnlyIf()
{
  ;
}


// ===== 3e2bd0 CharProperties::_SetOID(Structs::CharacterProperties &,Structs::ClassFunc *) =====
_DWORD *__fastcall CharProperties::_SetOID(int a1, int a2, int a3)
{
  return CharProperties::_SetProperty(a1, a2, *(_DWORD *)(a3 + 4), *(_DWORD *)(a3 + 12));
}


// ===== 3e2bdc CharProperties::_AddValue(Structs::CharacterProperties &,Structs::ClassFunc *) =====
_DWORD *__fastcall CharProperties::_AddValue(int a1, int a2, int a3)
{
  int Property; // r0

  Property = CharProperties::_GetProperty(a1, a2, *(_DWORD *)(a3 + 4));
  return CharProperties::_SetProperty(a1, a2, *(_DWORD *)(a3 + 4), Property + *(_DWORD *)(a3 + 12));
}


// ===== 3e2c10 CharProperties::_ScaleWithPercentageForBuff(Structs::CharacterProperties &,Structs::ClassFunc *,bool) =====
_DWORD *__fastcall CharProperties::_ScaleWithPercentageForBuff(int a1, int a2, int a3, int a4)
{
  int Property; // r7
  int v9; // r0

  Property = CharProperties::_GetProperty(a1, a2, *(_DWORD *)(a3 + 12));
  v9 = CharProperties::_GetProperty(a1, a2, *(_DWORD *)(a3 + 4));
  if ( a4 )
    v9 = CharProperties::_GetProperty(a1, a1 + 2708, *(_DWORD *)(a3 + 4));
  return CharProperties::_SetProperty(a1, a2, *(_DWORD *)(a3 + 4), (Property * v9) >> 8);
}


// ===== 3e2c78 CharProperties::_ScaleWithPercentage(Structs::CharacterProperties &,Structs::ClassFunc *,bool) =====
_DWORD *__fastcall CharProperties::_ScaleWithPercentage(int a1, int a2, int a3)
{
  int Property; // r7
  int v7; // r3

  Property = CharProperties::_GetProperty(a1, a2, *(_DWORD *)(a3 + 12));
  v7 = Property * CharProperties::_GetProperty(a1, a2, *(_DWORD *)(a3 + 4));
  return CharProperties::_SetProperty(a1, a2, *(_DWORD *)(a3 + 4), v7 >> 8);
}


// ===== 3e2cc0 CharProperties::_AddOtherProp(Structs::CharacterProperties &,Structs::ClassFunc *) =====
_DWORD *__fastcall CharProperties::_AddOtherProp(int a1, int a2, int a3)
{
  int Property; // r7
  int v7; // r0

  Property = CharProperties::_GetProperty(a1, a2, *(_DWORD *)(a3 + 4));
  v7 = CharProperties::_GetProperty(a1, a2, *(_DWORD *)(a3 + 12));
  return CharProperties::_SetProperty(a1, a2, *(_DWORD *)(a3 + 4), v7 + Property);
}


// ===== 3e2d04 CharProperties::_MinMax(Structs::CharacterProperties &,Structs::ClassFunc *) =====
_DWORD *__fastcall CharProperties::_MinMax(int a1, int a2, int *a3)
{
  int Property; // r0
  int v7; // r3

  Property = CharProperties::_GetProperty(a1, a2, a3[1]);
  v7 = a3[3];
  if ( Property >= v7 )
  {
    v7 = a3[4];
    if ( Property < v7 )
      v7 = Property;
  }
  return CharProperties::_SetProperty(a1, a2, a3[1], v7);
}


// ===== 3e2d4c CharProperties::_LinearWithPropPlusBaseValue(Structs::CharacterProperties &,Structs::ClassFunc *,bool) =====
_DWORD *__fastcall CharProperties::_LinearWithPropPlusBaseValue(CharProperties *a1, int *a2, int *a3, int a4)
{
  int v5; // r6
  int Property; // r10
  int v10; // r11

  v5 = a3[3];
  Property = CharProperties::_GetProperty((int)a1, (int)a2, a3[4]);
  v10 = a3[5];
  if ( v5 == -666 )
    v5 = CharProperties::_GetProperty((int)a1, (int)a2, a3[1]);
  if ( a2 == &CharProperties::s_temp )
  {
    if ( !a4 )
      return CharProperties::_SetProperty((int)a1, (int)a2, a3[1], v5 + v10 * (Property >> 8));
  }
  else if ( !a4 )
  {
    Property = CharProperties::RecalcProperty(a1, a3[4]);
    return CharProperties::_SetProperty((int)a1, (int)a2, a3[1], v5 + v10 * (Property >> 8));
  }
  Property = CharProperties::_GetProperty((int)a1, (int)a1 + 2708, a3[4]);
  return CharProperties::_SetProperty((int)a1, (int)a2, a3[1], v5 + v10 * (Property >> 8));
}


// ===== 3e2e20 CharProperties::_LoadClass(Structs::CharacterProperties &,int,bool) =====
CharProperties *__fastcall CharProperties::_LoadClass(
        CharProperties *this,
        Structs::CharacterProperties *a2,
        int a3,
        bool a4)
{
  CharProperties *v4; // r8
  int v7; // r7
  unsigned int v8; // r2
  int v9; // r4
  unsigned int v10; // r6
  Structs::ClassFunc *v11; // r5

  v4 = this;
  if ( a3 >= 0 && a3 < Arrays::ClassTable::size )
  {
    v7 = Arrays::ClassTable::members + 12 * a3;
    v8 = *(_DWORD *)(v7 + 4);
    if ( v8 )
    {
      v9 = 0;
      v10 = 0;
      while ( 2 )
      {
        v11 = (Structs::ClassFunc *)(*(_DWORD *)(v7 + 8) + v9);
        switch ( *((_DWORD *)v11 + 2) )
        {
          case 0:
            this = (CharProperties *)CharProperties::_Group(
                                       v4,
                                       a2,
                                       (Structs::ClassFunc *)(*(_DWORD *)(v7 + 8) + v9),
                                       a4);
            v8 = *(_DWORD *)(v7 + 4);
            ++v10;
            v9 += 24;
            if ( v8 > v10 )
              continue;
            return this;
          case 1:
            this = (CharProperties *)CharProperties::_LinearWithPropPlusBaseValue(
                                       v4,
                                       a2,
                                       (Structs::ClassFunc *)(*(_DWORD *)(v7 + 8) + v9),
                                       a4);
            v8 = *(_DWORD *)(v7 + 4);
            ++v10;
            v9 += 24;
            if ( v8 > v10 )
              continue;
            return this;
          case 2:
            this = (CharProperties *)CharProperties::_MinMax(v4, a2, (Structs::ClassFunc *)(*(_DWORD *)(v7 + 8) + v9));
            v8 = *(_DWORD *)(v7 + 4);
            ++v10;
            v9 += 24;
            if ( v8 > v10 )
              continue;
            return this;
          case 4:
            this = (CharProperties *)CharProperties::_AddOtherProp(
                                       v4,
                                       a2,
                                       (Structs::ClassFunc *)(*(_DWORD *)(v7 + 8) + v9));
            v8 = *(_DWORD *)(v7 + 4);
            ++v10;
            v9 += 24;
            if ( v8 > v10 )
              continue;
            return this;
          case 5:
            this = (CharProperties *)CharProperties::_ScaleWithPercentage(
                                       v4,
                                       a2,
                                       (Structs::ClassFunc *)(*(_DWORD *)(v7 + 8) + v9),
                                       a4);
            v8 = *(_DWORD *)(v7 + 4);
            ++v10;
            v9 += 24;
            if ( v8 > v10 )
              continue;
            return this;
          case 6:
            CharProperties::_ScaleWithPercentageForBuff(v4, a2, (Structs::ClassFunc *)(*(_DWORD *)(v7 + 8) + v9), a4);
            goto LABEL_10;
          case 7:
LABEL_10:
            this = (CharProperties *)CharProperties::_AddValue(v4, a2, v11);
            v8 = *(_DWORD *)(v7 + 4);
            ++v10;
            v9 += 24;
            if ( v8 <= v10 )
              return this;
            continue;
          case 8:
            return (CharProperties *)CharProperties::_ApplyGroupOnlyIf(
                                       v4,
                                       a2,
                                       (Structs::ClassFunc *)(*(_DWORD *)(v7 + 8) + v9));
          case 9:
            this = (CharProperties *)CharProperties::_SetOID(v4, a2, (Structs::ClassFunc *)(*(_DWORD *)(v7 + 8) + v9));
            v8 = *(_DWORD *)(v7 + 4);
            goto LABEL_7;
          default:
LABEL_7:
            ++v10;
            v9 += 24;
            if ( v8 <= v10 )
              return this;
            continue;
        }
      }
    }
  }
  return this;
}


// ===== 3e3014 CharProperties::_Group(Structs::CharacterProperties &,Structs::ClassFunc *,bool) =====
CharProperties *__fastcall CharProperties::_Group(
        CharProperties *this,
        Structs::CharacterProperties *a2,
        Structs::ClassFunc *a3,
        bool a4)
{
  int v5; // r2
  CharProperties *v6; // r7
  int v9; // r2
  int v10; // r2

  v5 = *((_DWORD *)a3 + 3);
  v6 = this;
  if ( v5 != -1 )
    this = CharProperties::_LoadClass(this, a2, v5, a4);
  v9 = *((_DWORD *)a3 + 4);
  if ( v9 != -1 )
    this = CharProperties::_LoadClass(v6, a2, v9, a4);
  v10 = *((_DWORD *)a3 + 5);
  if ( v10 != -1 )
    return CharProperties::_LoadClass(v6, a2, v10, a4);
  return this;
}


// ===== 3e3078 `global constructor keyed to'.._.._sources_Game_Objects_Characters_Properties_CharProperties_Base.cpp =====
int `global constructor keyed to'.._.._sources_Game_Objects_Characters_Properties_CharProperties_Base.cpp()
{
  int result; // r0

  result = `guard variable for'Singleton<PlayerStatManager>::s_inst;
  dword_9A3004 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9A3000 = 1056964608;
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


// ===== 3e3154 CharProperties::_LoadGearStats(int,bool) =====
CharProperties *__fastcall CharProperties::_LoadGearStats(CharProperties *this, int a2, int a3)
{
  CharProperties *v3; // r5
  _DWORD *v4; // r4
  int v5; // r3
  int v6; // r1
  int v7; // r2
  int v8; // r6
  int v9; // r6

  v3 = this;
  v4 = (_DWORD *)(Arrays::ItemTable::members + 164 * a2);
  switch ( v4[22] )
  {
    case 0:
    case 3:
      if ( a3 )
        goto LABEL_6;
      goto LABEL_3;
    case 1:
LABEL_6:
      CharProperties::_AddProperty(this, (int)this + 1808, 81, v4[35]);
      return (CharProperties *)CharProperties::_AddProperty(v3, (int)v3 + 1808, 82, v4[36]);
    case 2:
LABEL_3:
      CharProperties::_AddProperty(this, (int)this + 1808, 79, v4[35]);
      v5 = v4[36];
      this = v3;
      v6 = (int)v3 + 1808;
      v7 = 80;
      goto LABEL_4;
    case 4:
    case 5:
      v8 = (int)this + 1808;
      CharProperties::_AddProperty(this, (int)this + 1808, 79, v4[35]);
      CharProperties::_AddProperty(v3, v8, 80, v4[36]);
      return (CharProperties *)CharProperties::_AddProperty(v3, v8, 97, v4[25] << 8);
    case 6:
      v9 = (int)this + 1808;
      CharProperties::_AddProperty(this, (int)this + 1808, 71, v4[35]);
      return (CharProperties *)CharProperties::_AddProperty(v3, v9, 61, v4[36]);
    case 7:
    case 8:
    case 9:
    case 0xA:
    case 0xC:
      v5 = v4[35];
      v6 = (int)this + 1808;
      v7 = 71;
LABEL_4:
      this = (CharProperties *)CharProperties::_AddProperty(this, v6, v7, v5);
      break;
    default:
      return this;
  }
  return this;
}


// ===== 3e32b4 CharProperties::_LoadGearPower(int,bool) =====
CharProperties *__fastcall CharProperties::_LoadGearPower(CharProperties *this, int a2, int a3)
{
  CharProperties *v4; // r7
  int v5; // r6
  unsigned int v6; // r2
  int v7; // r8
  int v8; // r4
  int v9; // r5
  int v10; // r2
  int v11; // r2
  int v12; // r2
  int v13; // r2
  int v14; // r2
  int v15; // r2
  int v16; // r2
  int v17; // r2
  int v18; // r2
  int v19; // r2
  int v20; // r2
  int v21; // r2
  int v22; // r2

  v4 = this;
  v5 = Arrays::ItemPowerTable::members + 40 * a2;
  v6 = *(_DWORD *)(v5 + 12);
  if ( v6 )
  {
    v7 = (int)this + 1808;
    v8 = 0;
    while ( 1 )
    {
      v9 = *(_DWORD *)(v5 + 16) + 16 * v8;
      switch ( *(_DWORD *)(v9 + 4) )
      {
        case 0:
          CharProperties::_AddProperty(v4, v7, 149, *(_DWORD *)(v9 + 8));
          CharProperties::_AddProperty(v4, v7, 150, *(_DWORD *)(v9 + 8));
          CharProperties::_AddProperty(v4, v7, 151, *(_DWORD *)(v9 + 8));
          this = (CharProperties *)CharProperties::_AddProperty(v4, v7, 152, *(_DWORD *)(v9 + 8));
          v6 = *(_DWORD *)(v5 + 12);
          if ( v6 > ++v8 )
            continue;
          return this;
        case 1:
          this = (CharProperties *)CharProperties::_AddProperty(v4, v7, 149, *(_DWORD *)(v9 + 8));
          v6 = *(_DWORD *)(v5 + 12);
          if ( v6 > ++v8 )
            continue;
          return this;
        case 2:
          this = (CharProperties *)CharProperties::_AddProperty(v4, v7, 150, *(_DWORD *)(v9 + 8));
          v6 = *(_DWORD *)(v5 + 12);
          if ( v6 > ++v8 )
            continue;
          return this;
        case 3:
          this = (CharProperties *)CharProperties::_AddProperty(v4, v7, 151, *(_DWORD *)(v9 + 8));
          v6 = *(_DWORD *)(v5 + 12);
          if ( v6 > ++v8 )
            continue;
          return this;
        case 4:
          this = (CharProperties *)CharProperties::_AddProperty(v4, v7, 152, *(_DWORD *)(v9 + 8));
          v6 = *(_DWORD *)(v5 + 12);
          if ( v6 > ++v8 )
            continue;
          return this;
        case 5:
          this = (CharProperties *)CharProperties::_AddProperty(v4, v7, 38, *(_DWORD *)(v9 + 8));
          v6 = *(_DWORD *)(v5 + 12);
          if ( v6 > ++v8 )
            continue;
          return this;
        case 6:
          this = (CharProperties *)CharProperties::_AddProperty(v4, v7, 43, *(_DWORD *)(v9 + 8));
          v6 = *(_DWORD *)(v5 + 12);
          if ( v6 > ++v8 )
            continue;
          return this;
        case 7:
          if ( a3 )
            v22 = 98;
          else
            v22 = 95;
          this = (CharProperties *)CharProperties::_AddProperty(v4, v7, v22, *(_DWORD *)(v9 + 8));
          v6 = *(_DWORD *)(v5 + 12);
          if ( v6 > ++v8 )
            continue;
          return this;
        case 8:
          if ( a3 )
            v21 = 99;
          else
            v21 = 96;
          this = (CharProperties *)CharProperties::_AddProperty(v4, v7, v21, *(_DWORD *)(v9 + 8));
          v6 = *(_DWORD *)(v5 + 12);
          if ( v6 > ++v8 )
            continue;
          return this;
        case 9:
          if ( a3 )
            v20 = 100;
          else
            v20 = 97;
          this = (CharProperties *)CharProperties::_SetProperty((int)v4, v7, v20, *(_DWORD *)(v9 + 8));
          v6 = *(_DWORD *)(v5 + 12);
          if ( v6 > ++v8 )
            continue;
          return this;
        case 0xA:
          if ( a3 )
            v19 = 103;
          else
            v19 = 101;
          this = (CharProperties *)CharProperties::_AddProperty(v4, v7, v19, *(_DWORD *)(v9 + 8));
          v6 = *(_DWORD *)(v5 + 12);
          if ( v6 > ++v8 )
            continue;
          return this;
        case 0xB:
          if ( a3 )
            v18 = 104;
          else
            v18 = 102;
          this = (CharProperties *)CharProperties::_AddProperty(v4, v7, v18, *(_DWORD *)(v9 + 8));
          v6 = *(_DWORD *)(v5 + 12);
          if ( v6 > ++v8 )
            continue;
          return this;
        case 0xC:
          if ( a3 )
            v17 = 107;
          else
            v17 = 105;
          this = (CharProperties *)CharProperties::_AddProperty(v4, v7, v17, *(_DWORD *)(v9 + 8));
          v6 = *(_DWORD *)(v5 + 12);
          if ( v6 > ++v8 )
            continue;
          return this;
        case 0xD:
          if ( a3 )
            v16 = 108;
          else
            v16 = 106;
          this = (CharProperties *)CharProperties::_AddProperty(v4, v7, v16, *(_DWORD *)(v9 + 8));
          v6 = *(_DWORD *)(v5 + 12);
          if ( v6 > ++v8 )
            continue;
          return this;
        case 0xE:
          if ( a3 )
            v15 = 111;
          else
            v15 = 109;
          this = (CharProperties *)CharProperties::_AddProperty(v4, v7, v15, *(_DWORD *)(v9 + 8));
          v6 = *(_DWORD *)(v5 + 12);
          if ( v6 > ++v8 )
            continue;
          return this;
        case 0xF:
          if ( a3 )
            v14 = 112;
          else
            v14 = 110;
          this = (CharProperties *)CharProperties::_AddProperty(v4, v7, v14, *(_DWORD *)(v9 + 8));
          v6 = *(_DWORD *)(v5 + 12);
          if ( v6 > ++v8 )
            continue;
          return this;
        case 0x10:
          if ( a3 )
            v13 = 115;
          else
            v13 = 113;
          this = (CharProperties *)CharProperties::_AddProperty(v4, v7, v13, *(_DWORD *)(v9 + 8));
          v6 = *(_DWORD *)(v5 + 12);
          if ( v6 > ++v8 )
            continue;
          return this;
        case 0x11:
          if ( a3 )
            v10 = 116;
          else
            v10 = 114;
          this = (CharProperties *)CharProperties::_AddProperty(v4, v7, v10, *(_DWORD *)(v9 + 8));
          v6 = *(_DWORD *)(v5 + 12);
          goto LABEL_8;
        case 0x12:
          if ( a3 )
            v12 = 119;
          else
            v12 = 117;
          this = (CharProperties *)CharProperties::_AddProperty(v4, v7, v12, *(_DWORD *)(v9 + 8));
          v6 = *(_DWORD *)(v5 + 12);
          if ( v6 > ++v8 )
            continue;
          return this;
        case 0x13:
          if ( a3 )
            v11 = 120;
          else
            v11 = 118;
          this = (CharProperties *)CharProperties::_AddProperty(v4, v7, v11, *(_DWORD *)(v9 + 8));
          v6 = *(_DWORD *)(v5 + 12);
          if ( v6 > ++v8 )
            continue;
          return this;
        case 0x14:
          this = (CharProperties *)CharProperties::_AddProperty(v4, v7, 39, *(_DWORD *)(v9 + 8));
          v6 = *(_DWORD *)(v5 + 12);
          if ( v6 > ++v8 )
            continue;
          return this;
        case 0x15:
          this = (CharProperties *)CharProperties::_AddProperty(v4, v7, 44, *(_DWORD *)(v9 + 8));
          v6 = *(_DWORD *)(v5 + 12);
          if ( v6 > ++v8 )
            continue;
          return this;
        case 0x16:
          this = (CharProperties *)CharProperties::_AddProperty(v4, v7, 40, *(_DWORD *)(v9 + 8));
          v6 = *(_DWORD *)(v5 + 12);
          if ( v6 > ++v8 )
            continue;
          return this;
        case 0x17:
          this = (CharProperties *)CharProperties::_AddProperty(v4, v7, 45, *(_DWORD *)(v9 + 8));
          v6 = *(_DWORD *)(v5 + 12);
          if ( v6 > ++v8 )
            continue;
          return this;
        case 0x18:
          this = (CharProperties *)CharProperties::_AddProperty(v4, v7, 63, *(_DWORD *)(v9 + 8));
          v6 = *(_DWORD *)(v5 + 12);
          if ( v6 > ++v8 )
            continue;
          return this;
        case 0x19:
          this = (CharProperties *)CharProperties::_AddProperty(v4, v7, 60, *(_DWORD *)(v9 + 8));
          v6 = *(_DWORD *)(v5 + 12);
          if ( v6 > ++v8 )
            continue;
          return this;
        case 0x1A:
          this = (CharProperties *)CharProperties::_AddProperty(v4, v7, 61, *(_DWORD *)(v9 + 8));
          v6 = *(_DWORD *)(v5 + 12);
          if ( v6 > ++v8 )
            continue;
          return this;
        case 0x1B:
          this = (CharProperties *)CharProperties::_AddProperty(v4, v7, 71, *(_DWORD *)(v9 + 8));
          v6 = *(_DWORD *)(v5 + 12);
          if ( v6 > ++v8 )
            continue;
          return this;
        case 0x1C:
          if ( a3 )
          {
            CharProperties::_AddProperty(v4, v7, 81, *(_DWORD *)(v9 + 8));
            this = (CharProperties *)CharProperties::_AddProperty(v4, v7, 82, *(_DWORD *)(v9 + 8));
            v6 = *(_DWORD *)(v5 + 12);
            if ( v6 <= ++v8 )
              return this;
          }
          else
          {
            CharProperties::_AddProperty(v4, v7, 79, *(_DWORD *)(v9 + 8));
            this = (CharProperties *)CharProperties::_AddProperty(v4, v7, 80, *(_DWORD *)(v9 + 8));
            v6 = *(_DWORD *)(v5 + 12);
            if ( v6 <= ++v8 )
              return this;
          }
          break;
        case 0x1D:
          this = (CharProperties *)CharProperties::_AddProperty(v4, v7, 50, *(_DWORD *)(v9 + 8));
          v6 = *(_DWORD *)(v5 + 12);
          if ( v6 > ++v8 )
            continue;
          return this;
        case 0x1E:
          this = (CharProperties *)CharProperties::_AddProperty(v4, v7, 59, *(_DWORD *)(v9 + 8));
          v6 = *(_DWORD *)(v5 + 12);
          if ( v6 > ++v8 )
            continue;
          return this;
        case 0x1F:
          this = (CharProperties *)CharProperties::_AddProperty(v4, v7, 74, *(_DWORD *)(v9 + 8));
          v6 = *(_DWORD *)(v5 + 12);
          if ( v6 > ++v8 )
            continue;
          return this;
        case 0x20:
          this = (CharProperties *)CharProperties::_AddProperty(v4, v7, 77, *(_DWORD *)(v9 + 8));
          v6 = *(_DWORD *)(v5 + 12);
          if ( v6 > ++v8 )
            continue;
          return this;
        case 0x21:
          this = (CharProperties *)CharProperties::_AddProperty(v4, v7, 75, *(_DWORD *)(v9 + 8));
          v6 = *(_DWORD *)(v5 + 12);
          if ( v6 > ++v8 )
            continue;
          return this;
        case 0x22:
          this = (CharProperties *)CharProperties::_AddProperty(v4, v7, 78, *(_DWORD *)(v9 + 8));
          v6 = *(_DWORD *)(v5 + 12);
          if ( v6 > ++v8 )
            continue;
          return this;
        case 0x23:
          this = (CharProperties *)CharProperties::_AddProperty(v4, v7, 76, *(_DWORD *)(v9 + 8));
          v6 = *(_DWORD *)(v5 + 12);
          if ( v6 > ++v8 )
            continue;
          return this;
        case 0x24:
          CharProperties::_AddProperty(v4, v7, 74, *(_DWORD *)(v9 + 8));
          CharProperties::_AddProperty(v4, v7, 77, *(_DWORD *)(v9 + 8));
          CharProperties::_AddProperty(v4, v7, 75, *(_DWORD *)(v9 + 8));
          CharProperties::_AddProperty(v4, v7, 78, *(_DWORD *)(v9 + 8));
          this = (CharProperties *)CharProperties::_AddProperty(v4, v7, 76, *(_DWORD *)(v9 + 8));
          v6 = *(_DWORD *)(v5 + 12);
          if ( v6 > ++v8 )
            continue;
          return this;
        case 0x25:
          this = (CharProperties *)CharProperties::_AddProperty(v4, v7, 132, *(_DWORD *)(v9 + 8));
          v6 = *(_DWORD *)(v5 + 12);
          if ( v6 > ++v8 )
            continue;
          return this;
        case 0x26:
          this = (CharProperties *)CharProperties::_AddProperty(v4, v7, 133, *(_DWORD *)(v9 + 8));
          v6 = *(_DWORD *)(v5 + 12);
          if ( v6 > ++v8 )
            continue;
          return this;
        case 0x27:
          this = (CharProperties *)CharProperties::_AddProperty(v4, v7, 165, *(_DWORD *)(v9 + 8));
          v6 = *(_DWORD *)(v5 + 12);
          if ( v6 > ++v8 )
            continue;
          return this;
        case 0x28:
          this = (CharProperties *)CharProperties::_AddProperty(v4, v7, 158, *(_DWORD *)(v9 + 8));
          v6 = *(_DWORD *)(v5 + 12);
          if ( v6 > ++v8 )
            continue;
          return this;
        case 0x29:
          CharProperties::_AddProperty(v4, v7, 166, *(_DWORD *)(v9 + 8));
          CharProperties::_AddProperty(v4, v7, 169, *(_DWORD *)(v9 + 8));
          CharProperties::_AddProperty(v4, v7, 167, *(_DWORD *)(v9 + 8));
          CharProperties::_AddProperty(v4, v7, 170, *(_DWORD *)(v9 + 8));
          this = (CharProperties *)CharProperties::_AddProperty(v4, v7, 168, *(_DWORD *)(v9 + 8));
          v6 = *(_DWORD *)(v5 + 12);
          if ( v6 > ++v8 )
            continue;
          return this;
        case 0x2A:
          this = (CharProperties *)CharProperties::_AddProperty(v4, v7, 170, *(_DWORD *)(v9 + 8));
          v6 = *(_DWORD *)(v5 + 12);
          if ( v6 > ++v8 )
            continue;
          return this;
        case 0x2B:
          this = (CharProperties *)CharProperties::_AddProperty(v4, v7, 167, *(_DWORD *)(v9 + 8));
          v6 = *(_DWORD *)(v5 + 12);
          if ( v6 > ++v8 )
            continue;
          return this;
        case 0x2C:
          this = (CharProperties *)CharProperties::_AddProperty(v4, v7, 168, *(_DWORD *)(v9 + 8));
          v6 = *(_DWORD *)(v5 + 12);
          if ( v6 > ++v8 )
            continue;
          return this;
        case 0x2D:
          this = (CharProperties *)CharProperties::_AddProperty(v4, v7, 169, *(_DWORD *)(v9 + 8));
          v6 = *(_DWORD *)(v5 + 12);
          if ( v6 > ++v8 )
            continue;
          return this;
        case 0x2E:
          this = (CharProperties *)CharProperties::_AddProperty(v4, v7, 166, *(_DWORD *)(v9 + 8));
          v6 = *(_DWORD *)(v5 + 12);
          if ( v6 > ++v8 )
            continue;
          return this;
        case 0x2F:
          this = (CharProperties *)CharProperties::_AddProperty(v4, v7, 195, *(_DWORD *)(v9 + 8));
          v6 = *(_DWORD *)(v5 + 12);
          if ( v6 > ++v8 )
            continue;
          return this;
        case 0x30:
          this = (CharProperties *)CharProperties::_AddProperty(v4, v7, 196, *(_DWORD *)(v9 + 8));
          v6 = *(_DWORD *)(v5 + 12);
          if ( v6 > ++v8 )
            continue;
          return this;
        default:
LABEL_8:
          if ( v6 <= ++v8 )
            return this;
          continue;
      }
    }
  }
  return this;
}


// ===== 3e3d18 `global constructor keyed to'.._.._sources_Game_Objects_Characters_Properties_CharProperties_Gears.cpp =====
int `global constructor keyed to'.._.._sources_Game_Objects_Characters_Properties_CharProperties_Gears.cpp()
{
  int result; // r0

  result = `guard variable for'Singleton<PlayerStatManager>::s_inst;
  dword_9A3010 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9A300C = 1056964608;
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


// ===== 3e3df4 Projectile::IsDead(void) =====
int __fastcall Projectile::IsDead(Projectile *this)
{
  return *((unsigned __int8 *)this + 976);
}


// ===== 3e3dfc Projectile::IsValidatingFloorPosition(void) =====
int __fastcall Projectile::IsValidatingFloorPosition(Projectile *this)
{
  return 2;
}


// ===== 3e3e04 Projectile::IsZonable(void) =====
int __fastcall Projectile::IsZonable(Projectile *this)
{
  return 0;
}


// ===== 3e3e0c Projectile::IsUpdatable(void) =====
int __fastcall Projectile::IsUpdatable(Projectile *this)
{
  return 1;
}


// ===== 3e3e14 Projectile::IsAnimated(void) =====
int __fastcall Projectile::IsAnimated(Projectile *this)
{
  return 1;
}


// ===== 3e3e1c Projectile::IsInteractive(GameObject *) =====
int __fastcall Projectile::IsInteractive(Projectile *this, GameObject *a2)
{
  return 0;
}


// ===== 3e3e24 LaserTypeProjectile::GetSpeed(void) =====
int __fastcall LaserTypeProjectile::GetSpeed(LaserTypeProjectile *this)
{
  return *((_DWORD *)this + 235);
}


// ===== 3e3e2c LaserTypeProjectile::OnCollision(GameObject *,Point2D<float> const&) =====
int __fastcall LaserTypeProjectile::OnCollision(int a1, int *a2, int *a3)
{
  int v6; // r11
  int v7; // r11
  int v9; // r0
  GameObject *v10; // r0
  int v11; // r10
  int v12; // r9
  int v13; // r6
  int v14; // r12
  int v15; // [sp+Ch] [bp-30h]
  int v16[3]; // [sp+14h] [bp-28h] BYREF
  _BYTE v17[12]; // [sp+20h] [bp-1Ch] BYREF
  _BYTE v18[16]; // [sp+2Ch] [bp-10h] BYREF

  if ( !*(_BYTE *)(a1 + 976) && !*(_BYTE *)(a1 + 977) )
  {
    v6 = *(_DWORD *)(a1 + 884);
    if ( a2 )
    {
      if ( *(int **)(a1 + 896) != a2 )
      {
        v15 = Arrays::ProjectileTable::members;
        ObjectBase::GetHandle((ObjectBase *)v18);
        if ( ObjectHandle::operator Character *(v18) )
        {
          v7 = v15 + 72 * v6;
          if ( !*(_BYTE *)(v7 + 4) || *(int **)(a1 + 900) == a2 )
          {
            if ( *(_BYTE *)(v7 + 16)
              || (ObjectBase::GetHandle((ObjectBase *)v17), (v9 = ObjectHandle::operator Character *(v17)) == 0)
              || CharAI::AI_IsEnemy((CharAI *)(v9 + 968), (const GameObject *)a2) )
            {
              *(_DWORD *)(a1 + 900) = a2;
              VisualFXManager::PlayAnimFXSet(
                (int)&Singleton<VisualFXManager>::s_inst,
                *(_DWORD *)(Arrays::ProjectileTable::members + 72 * *(_DWORD *)(a1 + 884) + 20),
                a2 + 88,
                0,
                0);
LABEL_9:
              *(_BYTE *)(a1 + 977) = 1;
              return 1;
            }
          }
        }
        else if ( !*(_DWORD *)(a1 + 900) )
        {
          *(_DWORD *)(a1 + 900) = a2;
          v10 = (GameObject *)a2;
          v11 = a3[1];
          v12 = *(_DWORD *)(Arrays::ProjectileTable::members + 72 * *(_DWORD *)(a1 + 884) + 20);
          v13 = *a3;
          v14 = *((_DWORD *)GameObject::GetTargetPosition(v10) + 2);
          v16[0] = v13;
          v16[1] = v11;
          v16[2] = v14;
          VisualFXManager::PlayAnimFXSet((int)&Singleton<VisualFXManager>::s_inst, v12, v16, 0, 0);
          goto LABEL_9;
        }
      }
    }
  }
  return 0;
}


// ===== 3e3fcc LaserTypeProjectile::Update(void) =====
float *__fastcall LaserTypeProjectile::Update(float *this)
{
  int v1; // r6
  float *v2; // r4
  int v3; // r6
  void (__fastcall *v4)(float *, _DWORD); // r3
  int v5; // r3
  int v6; // r3
  GameObject *v7; // r0
  char *TargetPosition; // r0
  int v9; // r7
  void (__fastcall *v10)(int, _DWORD *); // r6
  char *v11; // r0
  int v12; // r1
  int v13; // r3
  int v14; // r7
  void (__fastcall *v15)(int, _DWORD *); // r6
  char *v16; // r0
  int v17; // r3
  int v18; // r1
  float v19; // r7
  float v20; // r8
  int v21; // r6
  int v22; // r0
  ProjectileManager *v23; // r0
  float *v24; // r0
  float v25; // r8
  float v26; // r7
  float *v27; // r0
  float v28; // r8
  float v29; // r7
  float *v30; // r6
  float v31; // r0
  float v32; // r7
  _DWORD v33[3]; // [sp+10h] [bp-3Ch] BYREF
  _DWORD v34[3]; // [sp+1Ch] [bp-30h] BYREF
  float v35[3]; // [sp+28h] [bp-24h] BYREF
  float v36; // [sp+34h] [bp-18h] BYREF
  float v37; // [sp+38h] [bp-14h]
  float v38; // [sp+3Ch] [bp-10h]
  PFFloor *v39; // [sp+40h] [bp-Ch] BYREF
  float v40[2]; // [sp+44h] [bp-8h] BYREF

  v1 = *((_DWORD *)this + 248);
  v2 = this;
  if ( v1 > 0 )
  {
    this = (float *)(v1 - Application::GetDt((Application *)&Singleton<Application>::s_inst));
    *((_DWORD *)v2 + 248) = this;
  }
  v3 = *((unsigned __int8 *)v2 + 977);
  if ( *((_BYTE *)v2 + 977) )
  {
    v4 = *((void (__fastcall **)(float *, _DWORD))v2 + 239);
    if ( v4 && *((int *)v2 + 248) < 0 )
    {
      v4(v2, *((_DWORD *)v2 + 240));
      v5 = *((_DWORD *)v2 + 221);
      this = (float *)&dword_48;
      v2[248] = *(float *)(Arrays::ProjectileTable::members + 72 * v5 + 56);
    }
    else
    {
      v5 = *((_DWORD *)v2 + 221);
    }
    if ( *(_BYTE *)(Arrays::ProjectileTable::members + 72 * v5 + 5) || *((int *)v2 + 237) <= 0 )
    {
      v23 = *((ProjectileManager **)v2 + 222);
      *((_BYTE *)v2 + 976) = 1;
      *((_BYTE *)v2 + 977) = 0;
      ProjectileManager::DeSpawn(v23, (Projectile *)v2, 1);
      return (float *)VisualObject::SetVisible(*((_DWORD *)v2 + 182), 0);
    }
    else
    {
      *((_BYTE *)v2 + 977) = 0;
    }
    return this;
  }
  v6 = *((_DWORD *)v2 + 225);
  if ( v6 )
  {
    this = (float *)(*(int (__fastcall **)(_DWORD))(*(_DWORD *)v6 + 52))(*((_DWORD *)v2 + 225));
    if ( this )
      *((_DWORD *)v2 + 225) = v3;
  }
  if ( !*((_BYTE *)v2 + 976) )
  {
    if ( *(_BYTE *)(Arrays::ProjectileTable::members + 72 * *((_DWORD *)v2 + 221) + 53)
      && (v7 = *((GameObject **)v2 + 225)) != nullptr )
    {
      TargetPosition = GameObject::GetTargetPosition(v7);
      GameObject::SetDestination(v2, TargetPosition);
    }
    else
    {
      v24 = (float *)GameObject::GetTargetPosition((GameObject *)v2);
      v25 = v2[107] - v24[1];
      v26 = v2[108] - v24[2];
      v36 = v2[106] - *v24;
      v37 = v25;
      v38 = v26;
      Point3D<float>::normalize(&v36);
      v36 = v36 * 1000.0;
      v37 = v37 * 1000.0;
      v38 = v38 * 1000.0;
      v27 = (float *)GameObject::GetTargetPosition((GameObject *)v2);
      v28 = v37 + v27[1];
      v29 = v38 + v27[2];
      v35[0] = v36 + *v27;
      v35[1] = v28;
      v35[2] = v29;
      GameObject::SetDestination(v2, v35);
    }
    v9 = *((_DWORD *)v2 + 245);
    v10 = *(void (__fastcall **)(int, _DWORD *))(*(_DWORD *)v9 + 164);
    v11 = GameObject::GetTargetPosition(*((GameObject **)v2 + 247));
    v12 = *(_DWORD *)v11;
    v13 = *((_DWORD *)v11 + 2);
    v34[1] = *((_DWORD *)v11 + 1);
    v34[0] = v12;
    v34[2] = v13;
    v10(v9, v34);
    v14 = *((_DWORD *)v2 + 246);
    v15 = *(void (__fastcall **)(int, _DWORD *))(*(_DWORD *)v14 + 164);
    v16 = GameObject::GetTargetPosition((GameObject *)v2);
    v17 = *((_DWORD *)v16 + 2);
    v18 = *(_DWORD *)v16;
    v33[1] = *((_DWORD *)v16 + 1);
    v33[2] = v17;
    v33[0] = v18;
    v15(v14, v33);
    GameObject::Update((GameObject *)v2);
    v19 = v2[235];
    v20 = v2[236];
    v2[235] = v19
            + (float)((float)(v20
                            * (float)(unsigned int)Application::GetDt((Application *)&Singleton<Application>::s_inst))
                    / -1000.0);
    v21 = *((_DWORD *)v2 + 237);
    v22 = v21 - Application::GetDt((Application *)&Singleton<Application>::s_inst);
    *((_DWORD *)v2 + 237) = v22;
    if ( v22 <= 0
      || v2[235] <= 0.0
      || v2[234] >= 0.0
      && (v30 = (float *)GameObject::GetTargetPosition((GameObject *)v2),
          v32 = v30[2] - v2[228],
          v31 = v30[1] - v2[227],
          v2[234] <= (float)((float)((float)((float)(*v30 - v2[226]) * (float)(*v30 - v2[226])) + (float)(v31 * v31))
                           + (float)(v32 * v32))) )
    {
      this = (float *)Projectile::OnExpire((GameObject *)v2, 1);
      v2[237] = NAN;
      return this;
    }
    if ( PFWorld::GetFloorHeightAt((int)&Singleton<PFWorld>::s_inst, v2 + 88, (int)v40, 0, nullptr, (int)&v39, 1u)
      && v39 )
    {
      this = (float *)PFObject::CanPathOn((PFObject *)(v2 + 114), v39);
      if ( this || (*((_DWORD *)v39 + 9) & 0x2000000) != 0 )
      {
        if ( !*((_DWORD *)v2 + 233) )
          return this;
        this = (float *)(v2[232] <= v40[0]);
        if ( v2[232] > v40[0] )
          return this;
      }
LABEL_28:
      this = (float *)Projectile::OnExpire((GameObject *)v2, 2);
      v2[237] = NAN;
      return this;
    }
    this = PFWorld::GetRoomAt((int)&Singleton<PFWorld>::s_inst, v2 + 88);
    if ( !this )
    {
      this = (float *)Projectile::OnExpire((GameObject *)v2, 0);
      v2[237] = NAN;
      return this;
    }
    if ( (*(_DWORD *)(this + 9) & 1) != 0 )
      goto LABEL_28;
  }
  return this;
}


// ===== 3e449c LaserTypeProjectile::SetInfo(int,GameObject *,GameObject *,int (*)(Projectile *,void *),int (*)(Projectile *,void *),void *,float) =====
int __fastcall LaserTypeProjectile::SetInfo(
        LaserTypeProjectile *this,
        int a2,
        GameObject *a3,
        GameObject *a4,
        int (*a5)(Projectile *, void *),
        int (*a6)(Projectile *, void *),
        void *a7,
        float a8)
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
      "!\"This version of SetInfo() is not supported by the laser projectile\"",
      "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Objects\\Projectiles\\LaserTypeProjectile.cpp",
      178);
  }
  return (*(int (__fastcall **)(LaserTypeProjectile *, int, GameObject *, GameObject *, int (*)(Projectile *, void *), int (*)(Projectile *, void *), void *, _DWORD))(*(_DWORD *)this + 200))(
           this,
           a2,
           a3,
           a4,
           a5,
           a6,
           a7,
           0);
}


// ===== 3e4570 LaserTypeProjectile::SetInfo(int,GameObject *,GameObject *,int (*)(Projectile *,void *),int (*)(Projectile *,void *),void *,bool) =====
int __fastcall LaserTypeProjectile::SetInfo(
        LaserTypeProjectile *this,
        int a2,
        GameObject *a3,
        GameObject *a4,
        int (*a5)(Projectile *, void *),
        int (*a6)(Projectile *, void *),
        void *a7,
        bool a8)
{
  int v12; // r3
  int v13; // r7
  char *TargetPosition; // r0
  int v15; // r3
  float v16; // r0
  int v17; // r3
  VisualObject *v18; // r0
  _DWORD *SpecificNode; // r1
  int v20; // r3
  int v21; // r1
  int v22; // r2
  int v23; // r3
  int v24; // r1
  VisualObject *v25; // r6
  int v26; // r0
  int v27; // r0
  int v28; // r0
  GameObject *v29; // r0
  char *v30; // r0
  char *v31; // r4
  _DWORD *v33; // r1
  float v34; // r6
  float v35; // r5
  float v36; // r6
  float v37; // r5
  PhysicalWorld *v38; // r8
  PhysicalObject *v39; // r7
  float v40[3]; // [sp+20h] [bp-4Ch] BYREF
  float v41[3]; // [sp+2Ch] [bp-40h] BYREF
  _DWORD v42[3]; // [sp+38h] [bp-34h] BYREF
  float v43[3]; // [sp+44h] [bp-28h] BYREF
  _DWORD v44[2]; // [sp+50h] [bp-1Ch] BYREF
  int v45; // [sp+58h] [bp-14h]
  float v46; // [sp+5Ch] [bp-10h] BYREF
  float v47; // [sp+60h] [bp-Ch]
  float v48; // [sp+64h] [bp-8h]

  if ( a2 < 0 || a2 >= Arrays::ProjectileTable::size )
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
        "projectileId >= 0 && projectileId < (int)Arrays::ProjectileTable::size",
        "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Objects\\Projectiles\\LaserTypeProjectile.cpp",
        63);
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
        "owner",
        "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Objects\\Projectiles\\LaserTypeProjectile.cpp",
        64);
    }
  }
  v12 = Arrays::ProjectileTable::members;
  *((_DWORD *)this + 221) = a2;
  *((_DWORD *)this + 225) = a4;
  *((_DWORD *)this + 239) = a6;
  *((_BYTE *)this + 977) = 0;
  *((_DWORD *)this + 247) = a3;
  *((_DWORD *)this + 240) = a7;
  *((_DWORD *)this + 224) = 0;
  *((_BYTE *)this + 976) = 0;
  v13 = v12 + 72 * a2;
  v46 = 0.0;
  v47 = 0.0;
  v48 = 0.0;
  GameObject::GetLookAtVec((int)a3, &v46);
  TargetPosition = GameObject::GetTargetPosition(*((GameObject **)this + 247));
  *((_DWORD *)this + 226) = *(_DWORD *)TargetPosition;
  *((_DWORD *)this + 227) = *((_DWORD *)TargetPosition + 1);
  v15 = *((_DWORD *)TargetPosition + 2);
  *((_DWORD *)this + 232) = v15;
  *((_DWORD *)this + 228) = v15;
  if ( *(float *)(v13 + 32) >= 0.0 )
    v16 = *(float *)(v13 + 32) * *(float *)(v13 + 32);
  else
    v16 = -1.0;
  v17 = *((_DWORD *)this + 247);
  *((float *)this + 234) = v16;
  v18 = *(VisualObject **)(v17 + 728);
  if ( v18 )
  {
    SpecificNode = (_DWORD *)VisualObject::GetSpecificNode(v18, "projectile_node");
    *((_DWORD *)this + 233) = SpecificNode;
    if ( SpecificNode )
    {
      glitch::scene::ISceneNode::getAbsolutePosition(v44, SpecificNode);
      v20 = v45;
      v21 = v44[0];
      v22 = v44[1];
      *((_DWORD *)this + 232) = v45;
      *((_DWORD *)this + 226) = v21;
      *((_DWORD *)this + 227) = v22;
      *((_DWORD *)this + 228) = v20;
    }
  }
  else
  {
    *((_DWORD *)this + 233) = 0;
  }
  *((_DWORD *)this + 235) = *(_DWORD *)(v13 + 64);
  *((_DWORD *)this + 236) = *(_DWORD *)(v13 + 68);
  v23 = *(_DWORD *)(v13 + 60);
  *((_DWORD *)this + 248) = -1;
  *((_DWORD *)this + 237) = v23;
  v24 = *(_DWORD *)(v13 + 40);
  if ( v24 < 0 )
  {
    GameObject::SetVisualObject((int)this, 0);
  }
  else
  {
    GameObject::SetVisualObject(
      (const char **)this,
      *(const char **)(Arrays::ProjectileDict::members + 12 * v24 + 8),
      nullptr,
      0);
    v25 = *((VisualObject **)this + 182);
    if ( v25 )
    {
      *((_DWORD *)this + 245) = VisualObject::GetSpecificNode(*((VisualObject **)this + 182), "_bone_origin");
      v26 = VisualObject::GetSpecificNode(v25, "_bone_target");
    }
    else
    {
      *((_DWORD *)this + 245) = 0;
      v26 = 0;
    }
    *((_DWORD *)this + 246) = v26;
  }
  if ( !*((_DWORD *)this + 183) )
  {
    v38 = (PhysicalWorld *)dword_99F770;
    v39 = (PhysicalObject *)operator new(0x28u, 0);
    PhysicalObject::PhysicalObject(v39, v38, this, 0, 1, 1, 1, 0, 0x20u, 0x51Fu, 0);
    *(_DWORD *)v39 = off_968FE8;
    GameObject::SetPhysicalObject(this, v39, 0);
  }
  memset(v43, 0, sizeof(v43));
  GameObject::SetPosition(this, v43, 1);
  glitch::scene::ISceneNode::setPosition(
    *((glitch::scene::ISceneNode **)this + 245),
    *((float *)this + 226),
    *((float *)this + 227),
    *((float *)this + 232));
  glitch::scene::ISceneNode::setPosition(
    *((glitch::scene::ISceneNode **)this + 246),
    *((float *)this + 226),
    *((float *)this + 227),
    *((float *)this + 232));
  v27 = *((_DWORD *)this + 182);
  if ( v27 )
  {
    VisualObject::SetVisible(v27, 1);
    VisualObject::SetParent(*((VisualObject **)this + 182), nullptr);
    (*(void (__fastcall **)(_DWORD, _DWORD, int, _DWORD, _DWORD))(**(_DWORD **)(*((_DWORD *)this + 182) + 56) + 28))(
      *(_DWORD *)(*((_DWORD *)this + 182) + 56),
      0,
      1,
      0,
      0);
    v28 = *((_DWORD *)this + 182);
    if ( *(_DWORD *)(v28 + 8) )
    {
      memset(v42, 0, sizeof(v42));
      VisualObject::SetPosition(v28, v42);
      (*(void (__fastcall **)(_DWORD, _DWORD))(**(_DWORD **)(*((_DWORD *)this + 182) + 8) + 20))(
        *(_DWORD *)(*((_DWORD *)this + 182) + 8),
        0);
    }
  }
  GameObject::SetPosition(this, (float *)this + 226, 1);
  v29 = *((GameObject **)this + 225);
  if ( v29 )
  {
    v30 = GameObject::GetTargetPosition(v29);
    GameObject::SetDestination(this, v30);
  }
  else
  {
    v33 = *((_DWORD **)this + 233);
    if ( v33 && a8 )
    {
      glitch::scene::ISceneNode::getAbsolutePosition(v41, v33);
      v36 = v41[1] - *((float *)this + 227);
      v37 = v41[2] - *((float *)this + 228);
      v46 = v41[0] - *((float *)this + 226);
      v47 = v36;
      v48 = v37;
      Point3D<float>::normalize(&v46);
    }
    v34 = (float)(v47 * 1000.0) + *((float *)this + 227);
    v35 = (float)(v48 * 1000.0) + *((float *)this + 228);
    v40[0] = (float)(v46 * 1000.0) + *((float *)this + 226);
    v40[1] = v34;
    v40[2] = v35;
    GameObject::SetDestination(this, v40);
  }
  v31 = (char *)this + 456;
  PFObject::SetFlying((int)v31, 1);
  return PFObject::SetSwimming((int)v31, 1);
}


// ===== 3e4ac0 `non-virtual thunk to'LaserTypeProjectile::~LaserTypeProjectile() =====
void __fastcall `non-virtual thunk to'LaserTypeProjectile::~LaserTypeProjectile(LaserTypeProjectile *this)
{
  LaserTypeProjectile::~LaserTypeProjectile((LaserTypeProjectile *)((char *)this - 36));
}


// ===== 3e4ac8 LaserTypeProjectile::~LaserTypeProjectile() =====
void __fastcall LaserTypeProjectile::~LaserTypeProjectile(LaserTypeProjectile *this)
{
  *(_DWORD *)this = off_966E98;
  *((_DWORD *)this + 1) = &off_966F74;
  *((_DWORD *)this + 9) = off_966F80;
  Projectile::~Projectile(this);
}


// ===== 3e4b08 `non-virtual thunk to'LaserTypeProjectile::~LaserTypeProjectile() =====
void __fastcall `non-virtual thunk to'LaserTypeProjectile::~LaserTypeProjectile(LaserTypeProjectile *this)
{
  LaserTypeProjectile::~LaserTypeProjectile((LaserTypeProjectile *)((char *)this - 36));
}


// ===== 3e4b10 LaserTypeProjectile::~LaserTypeProjectile() =====
void __fastcall LaserTypeProjectile::~LaserTypeProjectile(LaserTypeProjectile *this)
{
  LaserTypeProjectile::~LaserTypeProjectile(this);
  CustomFree(this);
}


// ===== 3e4b2c LaserTypeProjectile::~LaserTypeProjectile() =====
void __fastcall LaserTypeProjectile::~LaserTypeProjectile(LaserTypeProjectile *this)
{
  *(_DWORD *)this = off_966E98;
  *((_DWORD *)this + 1) = &off_966F74;
  *((_DWORD *)this + 9) = off_966F80;
  Projectile::~Projectile(this);
}


// ===== 3e4b6c LaserTypeProjectile::LaserTypeProjectile(ObjectBase::GO_IDS) =====
_DWORD *__fastcall LaserTypeProjectile::LaserTypeProjectile(_DWORD *a1)
{
  Projectile::Projectile();
  a1[247] = 0;
  a1[245] = 0;
  a1[1] = &off_966F74;
  *a1 = off_966E98;
  a1[9] = off_966F80;
  a1[248] = -1;
  a1[246] = 0;
  return a1;
}


// ===== 3e4bc8 LaserTypeProjectile::LaserTypeProjectile(ObjectBase::GO_IDS) =====
_DWORD *__fastcall LaserTypeProjectile::LaserTypeProjectile(_DWORD *a1)
{
  Projectile::Projectile();
  a1[247] = 0;
  a1[245] = 0;
  a1[1] = &off_966F74;
  *a1 = off_966E98;
  a1[9] = off_966F80;
  a1[248] = -1;
  a1[246] = 0;
  return a1;
}


// ===== 3e4c24 `global constructor keyed to'.._.._sources_Game_Objects_Projectiles_LaserTypeProjectile.cpp =====
int `global constructor keyed to'.._.._sources_Game_Objects_Projectiles_LaserTypeProjectile.cpp()
{
  int result; // r0

  result = `guard variable for'Singleton<PlayerStatManager>::s_inst;
  dword_9A301C = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9A3018 = 1056964608;
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
    result = _aeabi_atexit((int)&Singleton<PFWorld>::s_inst, (int)PFWorld::~PFWorld, (int)&_dso_handle);
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


// ===== 3e4da8 Projectile::GetSpeed(void) =====
int __fastcall Projectile::GetSpeed(Projectile *this)
{
  return *((_DWORD *)this + 235);
}


// ===== 3e4db0 Projectile::HandleImpactFX(Projectile::ImpactType,Point3D<float> const&) =====
int __fastcall Projectile::HandleImpactFX(int result, int a2, int a3)
{
  int v4; // r3
  int v5; // r6
  int v6; // r1
  int v7; // r7
  float v8; // r4
  _DWORD *v9; // r3
  float v10[4]; // [sp+14h] [bp-10h] BYREF

  switch ( a2 )
  {
    case 0:
      return result;
    case 1:
      v4 = Arrays::ProjectileTable::members + 72 * *(_DWORD *)(result + 884);
      v5 = *(_DWORD *)(v4 + 12);
      v6 = *(_DWORD *)(v4 + 8);
      goto LABEL_3;
    case 2:
    case 3:
      v9 = (_DWORD *)(Arrays::ProjectileTable::members + 72 * *(_DWORD *)(result + 884));
      v5 = v9[12];
      v6 = v9[11];
      if ( v5 == -1 )
        goto LABEL_12;
      if ( v6 != -1 )
        goto LABEL_4;
      v6 = v9[5];
LABEL_3:
      if ( v6 != -1 )
LABEL_4:
        result = VisualFXManager::PlayAnimFXSet((int)&Singleton<VisualFXManager>::s_inst, v6, (int *)a3, 0, 0);
      if ( v5 != -1 )
      {
        v7 = *(_DWORD *)a3;
        v8 = *(float *)(a3 + 4);
        v10[2] = *(float *)(a3 + 8);
        LODWORD(v10[0]) = v7;
        v10[1] = v8;
        return VoxSoundManager::Play3D(VoxSoundManager::s_instance, v5, v10, 0, COERCE_FLOAT(1), -1.0, -1.0);
      }
      return result;
    default:
      v9 = (_DWORD *)(Arrays::ProjectileTable::members + 72 * *(_DWORD *)(result + 884));
LABEL_12:
      v5 = v9[6];
      v6 = v9[5];
      goto LABEL_3;
  }
}


// ===== 3e4eec Projectile::HandleImpactFX(GameObject *,Point2D<float> const&) =====
int __fastcall Projectile::HandleImpactFX(int a1, GameObject *a2, int *a3)
{
  GameObject *v6; // r0
  int v7; // r4
  int v8; // r5
  int v9; // r3
  char *TargetPosition; // r0
  _DWORD v12[3]; // [sp+Ch] [bp-Ch] BYREF

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
        "go",
        "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Objects\\Projectiles\\Projectile.cpp",
        338);
    }
  }
  if ( (*(int (__fastcall **)(GameObject *))(*(_DWORD *)a2 + 36))(a2) )
  {
    TargetPosition = GameObject::GetTargetPosition(a2);
    return Projectile::HandleImpactFX(a1, 4, TargetPosition);
  }
  else
  {
    v6 = a2;
    v7 = a3[1];
    v8 = *a3;
    v9 = *((_DWORD *)GameObject::GetTargetPosition(v6) + 2);
    v12[0] = v8;
    v12[1] = v7;
    v12[2] = v9;
    return Projectile::HandleImpactFX(a1, 3, v12);
  }
}


// ===== 3e4fe4 Projectile::SetManager(ProjectileManager *) =====
int __fastcall Projectile::SetManager(int result, int a2)
{
  int v3; // r5

  v3 = result;
  if ( !a2 )
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
                 "mgr",
                 "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Objects\\Projectiles\\Projectile.cpp",
                 68);
    }
  }
  *(_DWORD *)(v3 + 888) = a2;
  return result;
}


// ===== 3e5078 Projectile::OnExpire(Projectile::ImpactType) =====
int __fastcall Projectile::OnExpire(GameObject *this, int a2)
{
  int v4; // r12
  int v5; // lr
  float v6; // r12
  char *TargetPosition; // r0
  float v9[3]; // [sp+14h] [bp-28h] BYREF
  float v10[3]; // [sp+20h] [bp-1Ch] BYREF
  int v11; // [sp+2Ch] [bp-10h] BYREF
  int v12; // [sp+30h] [bp-Ch] BYREF
  _DWORD v13[2]; // [sp+34h] [bp-8h] BYREF

  if ( *(_BYTE *)(Arrays::ProjectileTable::members + 72 * *((_DWORD *)this + 221) + 52) )
  {
    v4 = *((_DWORD *)this + 118);
    v5 = *((_DWORD *)this + 117);
    v13[0] = 0;
    memset(v10, 0, sizeof(v10));
    v12 = v4;
    v11 = v5;
    if ( v4 )
    {
      PFFloor::GetFloorHeightAt(v4, (int)this + 916, v13, v10);
    }
    else if ( v5 )
    {
      PFRoom::GetFloorHeightAt(v5, (float *)this + 229, (int)v13, (int)v10, &v12, 0);
    }
    else
    {
      PFWorld::GetFloorHeightAt(
        (int)&Singleton<PFWorld>::s_inst,
        (float *)this + 229,
        (int)v13,
        (int)v10,
        &v11,
        (int)&v12,
        0);
    }
    v6 = *((float *)this + 229);
    v9[1] = *((float *)this + 230);
    v9[0] = v6;
    v9[2] = *(float *)v13;
    GameObject::SetPosition(this, v9, 1);
  }
  *((_DWORD *)this + 243) = 0;
  *((_BYTE *)this + 977) = 1;
  TargetPosition = GameObject::GetTargetPosition(this);
  return Projectile::HandleImpactFX(this, a2, TargetPosition);
}


// ===== 3e51b0 Projectile::Update(void) =====
int __fastcall Projectile::Update(int this)
{
  int v1; // r4
  int (*v2)(void); // r3
  int v3; // r1
  int v4; // r3
  char *TargetPosition; // r0
  int v6; // r3
  GameObject *v7; // r0
  char *v8; // r0
  float v9; // r7
  float v10; // r8
  int v11; // r6
  int v12; // r0
  float *v13; // r0
  float v14; // r7
  float *v15; // r0
  float v16; // r8
  float v17; // r7
  float *v18; // r6
  float v19; // r0
  float v20; // r7
  float v21[3]; // [sp+10h] [bp-24h] BYREF
  float v22; // [sp+1Ch] [bp-18h] BYREF
  float v23; // [sp+20h] [bp-14h]
  float v24; // [sp+24h] [bp-10h]
  PFFloor *v25; // [sp+28h] [bp-Ch] BYREF
  float v26[2]; // [sp+2Ch] [bp-8h] BYREF

  v1 = this;
  if ( *(_BYTE *)(this + 977) )
  {
    v2 = *(int (**)(void))(this + 956);
    if ( v2 )
      this = v2();
    else
      this = 0;
    v3 = *(_DWORD *)(v1 + 972);
    if ( !v3 )
      goto LABEL_8;
    if ( !this )
    {
      Projectile::HandleImpactFX(v1, v3, v1 + 964);
LABEL_8:
      *(_BYTE *)(v1 + 976) = 1;
      *(_BYTE *)(v1 + 977) = 0;
      return ProjectileManager::DeSpawn(*(ProjectileManager **)(v1 + 888), (Projectile *)v1, 0);
    }
    if ( this == 1 )
    {
      *(_BYTE *)(v1 + 977) = 0;
      *(_BYTE *)(v1 + 976) = 0;
    }
  }
  v4 = *(_DWORD *)(v1 + 900);
  if ( v4 )
  {
    this = (*(int (__fastcall **)(_DWORD))(*(_DWORD *)v4 + 52))(*(_DWORD *)(v1 + 900));
    if ( this )
      *(_DWORD *)(v1 + 900) = 0;
  }
  if ( !*(_BYTE *)(v1 + 976) )
  {
    TargetPosition = GameObject::GetTargetPosition((GameObject *)v1);
    v6 = *(_DWORD *)(v1 + 884);
    *(_DWORD *)(v1 + 916) = *(_DWORD *)TargetPosition;
    *(_DWORD *)(v1 + 920) = *((_DWORD *)TargetPosition + 1);
    *(_DWORD *)(v1 + 924) = *((_DWORD *)TargetPosition + 2);
    if ( *(_BYTE *)(Arrays::ProjectileTable::members + 72 * v6 + 53) && (v7 = *(GameObject **)(v1 + 900)) != nullptr )
    {
      v8 = GameObject::GetTargetPosition(v7);
      GameObject::SetDestination((_DWORD *)v1, v8);
    }
    else
    {
      v13 = (float *)GameObject::GetTargetPosition((GameObject *)v1);
      v14 = *(float *)(v1 + 428) - v13[1];
      v22 = *(float *)(v1 + 424) - *v13;
      v24 = 0.0;
      v23 = v14;
      Point3D<float>::normalize(&v22);
      v22 = v22 * 1000.0;
      v23 = v23 * 1000.0;
      v24 = v24 * 1000.0;
      v15 = (float *)GameObject::GetTargetPosition((GameObject *)v1);
      v16 = v23 + v15[1];
      v17 = v24 + v15[2];
      v21[0] = v22 + *v15;
      v21[1] = v16;
      v21[2] = v17;
      GameObject::SetDestination((_DWORD *)v1, v21);
    }
    GameObject::Update((GameObject *)v1);
    v9 = *(float *)(v1 + 940);
    v10 = *(float *)(v1 + 944);
    *(float *)(v1 + 940) = v9
                         + (float)((float)(v10
                                         * (float)(unsigned int)Application::GetDt((Application *)&Singleton<Application>::s_inst))
                                 / -1000.0);
    v11 = *(_DWORD *)(v1 + 948);
    v12 = v11 - Application::GetDt((Application *)&Singleton<Application>::s_inst);
    *(_DWORD *)(v1 + 948) = v12;
    if ( v12 > 0 && *(float *)(v1 + 940) > 0.0 )
    {
      if ( *(float *)(v1 + 936) < 0.0
        || (v18 = (float *)GameObject::GetTargetPosition((GameObject *)v1),
            v20 = v18[2] - *(float *)(v1 + 912),
            v19 = v18[1] - *(float *)(v1 + 908),
            *(float *)(v1 + 936) > (float)((float)((float)((float)(*v18 - *(float *)(v1 + 904))
                                                         * (float)(*v18 - *(float *)(v1 + 904)))
                                                 + (float)(v19 * v19))
                                         + (float)(v20 * v20))) )
      {
        if ( PFWorld::GetFloorHeightAt(
               (int)&Singleton<PFWorld>::s_inst,
               (float *)(v1 + 352),
               (int)v26,
               0,
               nullptr,
               (int)&v25,
               1u)
          && v25 )
        {
          this = PFObject::CanPathOn((PFObject *)(v1 + 456), v25);
          if ( this || (*((_DWORD *)v25 + 9) & 0x2000000) != 0 )
          {
            if ( !*(_DWORD *)(v1 + 932) )
              return this;
            this = *(float *)(v1 + 928) <= v26[0];
            if ( *(float *)(v1 + 928) > v26[0] )
              return this;
          }
        }
        else
        {
          this = PFWorld::GetRoomAt(&Singleton<PFWorld>::s_inst, v1 + 352);
          if ( this && (*(_DWORD *)(this + 36) & 1) == 0 )
            return this;
        }
      }
    }
    return Projectile::OnExpire((GameObject *)v1);
  }
  return this;
}


// ===== 3e55b4 Projectile::OnCollision(GameObject *,Point2D<float> const&) =====
int __fastcall Projectile::OnCollision(int a1, const GameObject *a2, _DWORD *a3)
{
  int v6; // r10
  int v7; // r8
  int v8; // r8
  int (__fastcall *v9)(int, _DWORD); // r3
  int v10; // r0
  int v12; // r0
  void (__fastcall *v13)(int, _DWORD); // r3
  _BYTE v14[12]; // [sp+0h] [bp-1Ch] BYREF
  _BYTE v15[16]; // [sp+Ch] [bp-10h] BYREF

  if ( *(_BYTE *)(a1 + 976) )
    return 0;
  if ( *(_BYTE *)(a1 + 977) )
    return 0;
  v6 = *(_DWORD *)(a1 + 884);
  v7 = Arrays::ProjectileTable::members;
  if ( !a2 || *(const GameObject **)(a1 + 896) == a2 )
    return 0;
  ObjectBase::GetHandle((ObjectBase *)v15);
  if ( !ObjectHandle::operator Character *(v15) )
  {
    if ( !*(_DWORD *)(a1 + 900) )
      goto LABEL_8;
    return 0;
  }
  v8 = v7 + 72 * v6;
  if ( *(_BYTE *)(v8 + 4) && *(const GameObject **)(a1 + 900) != a2 )
    return 0;
  if ( !*(_BYTE *)(v8 + 16) )
  {
    ObjectBase::GetHandle((ObjectBase *)v14);
    v12 = ObjectHandle::operator Character *(v14);
    if ( v12 )
    {
      if ( !CharAI::AI_IsEnemy((CharAI *)(v12 + 968), a2) )
        return 0;
    }
  }
LABEL_8:
  *(_DWORD *)(a1 + 972) = a2;
  v9 = *(int (__fastcall **)(int, _DWORD))(a1 + 952);
  *(_DWORD *)(a1 + 964) = *a3;
  *(_DWORD *)(a1 + 968) = a3[1];
  if ( !v9 )
    goto LABEL_12;
  v10 = v9(a1, *(_DWORD *)(a1 + 960));
  if ( v10 != 2 )
  {
    if ( v10 == 3 )
    {
      Projectile::OnExpire((GameObject *)a1);
      goto LABEL_12;
    }
    if ( v10 != 1 )
    {
LABEL_12:
      *(_BYTE *)(a1 + 977) = 1;
      return 1;
    }
    return 0;
  }
  v13 = *(void (__fastcall **)(int, _DWORD))(a1 + 956);
  if ( v13 )
    v13(a1, *(_DWORD *)(a1 + 960));
  Projectile::HandleImpactFX(a1, *(_DWORD *)(a1 + 972), a1 + 964);
  return 0;
}


// ===== 3e5740 Point3D<float>::rotateXY(float) =====
float *__fastcall Point3D<float>::rotateXY(float *a1, float x)
{
  float v4; // r5
  float v5; // r0
  float v6; // r7
  float v7; // r6

  v4 = cosf(x);
  v5 = sinf(x);
  v6 = *a1;
  v7 = a1[1];
  *a1 = (float)(*a1 * v4) - (float)(v7 * v5);
  a1[1] = (float)(v6 * v5) + (float)(v7 * v4);
  return a1;
}


// ===== 3e57cc Projectile::SetInfo(int,GameObject *,GameObject *,int (*)(Projectile*,void *),int (*)(Projectile*,void *),void *,float) =====
VisualObject *__fastcall Projectile::SetInfo(
        Projectile *this,
        int a2,
        GameObject *a3,
        GameObject *a4,
        int (*a5)(Projectile *, void *),
        int (*a6)(Projectile *, void *),
        void *a7,
        float a8)
{
  int v9; // r0
  float *TargetPosition; // r0
  float v11; // r7
  float v12; // r6
  VisualObject *result; // r0
  float v14[3]; // [sp+10h] [bp-1Ch] BYREF
  float v15; // [sp+1Ch] [bp-10h] BYREF
  float v16; // [sp+20h] [bp-Ch]
  float v17; // [sp+24h] [bp-8h]

  (*(void (__fastcall **)(Projectile *, int, GameObject *, GameObject *, int (*)(Projectile *, void *), int (*)(Projectile *, void *), void *, _DWORD))(*(_DWORD *)this + 200))(
    this,
    a2,
    a3,
    a4,
    a5,
    a6,
    a7,
    0);
  v9 = *((_DWORD *)this + 224);
  v17 = 0.0;
  v15 = 0.0;
  v16 = 0.0;
  GameObject::GetLookAtVec(v9, &v15);
  Point3D<float>::rotateXY((int)&v15, a8 * 0.017453);
  TargetPosition = (float *)GameObject::GetTargetPosition(*((GameObject **)this + 224));
  v11 = (float)(v16 * 1000.0) + TargetPosition[1];
  v12 = (float)(v17 * 1000.0) + TargetPosition[2];
  v14[0] = (float)(v15 * 1000.0) + *TargetPosition;
  v14[1] = v11;
  v14[2] = v12;
  GameObject::SetDestination(this, v14);
  result = *((VisualObject **)this + 182);
  if ( result )
    return (VisualObject *)VisualObject::SyncRotation(result);
  return result;
}


// ===== 3e58cc Projectile::SetInfo(int,GameObject *,GameObject *,int (*)(Projectile*,void *),int (*)(Projectile*,void *),void *,bool) =====
int __fastcall Projectile::SetInfo(
        Projectile *this,
        int a2,
        GameObject *a3,
        GameObject *a4,
        int (*a5)(Projectile *, void *),
        int (*a6)(Projectile *, void *),
        void *a7,
        bool a8)
{
  int v12; // r3
  int v13; // r7
  char *TargetPosition; // r0
  int v15; // r3
  float v16; // r0
  int v17; // r3
  VisualObject *v18; // r0
  _DWORD *SpecificNode; // r1
  int v20; // r3
  int v21; // r1
  int v22; // r2
  int v23; // r1
  PhysicalWorld *v24; // r9
  PhysicalObject *v25; // r8
  GameObject *v26; // r0
  char *v27; // r0
  int v28; // r3
  PFObject *v29; // r4
  _DWORD *v31; // r1
  float *v32; // r0
  float v33; // r7
  float v34; // r6
  float *v35; // r0
  float v36; // r6
  float v37[3]; // [sp+28h] [bp-34h] BYREF
  float v38[3]; // [sp+34h] [bp-28h] BYREF
  _DWORD v39[2]; // [sp+40h] [bp-1Ch] BYREF
  int v40; // [sp+48h] [bp-14h]
  float v41; // [sp+4Ch] [bp-10h] BYREF
  float v42; // [sp+50h] [bp-Ch]
  float v43; // [sp+54h] [bp-8h]

  if ( a2 < 0 || a2 >= Arrays::ProjectileTable::size )
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
        "projectileId >= 0 && projectileId < (int)Arrays::ProjectileTable::size",
        "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Objects\\Projectiles\\Projectile.cpp",
        78);
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
        "owner",
        "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Objects\\Projectiles\\Projectile.cpp",
        79);
    }
  }
  v12 = Arrays::ProjectileTable::members;
  *((_DWORD *)this + 221) = a2;
  v13 = v12 + 72 * a2;
  LOBYTE(v12) = *(_BYTE *)(v13 + 29);
  *((_DWORD *)this + 225) = a4;
  *((_BYTE *)this + 892) = v12;
  *((_DWORD *)this + 238) = a5;
  *((_DWORD *)this + 239) = a6;
  *((_DWORD *)this + 224) = a3;
  *((_BYTE *)this + 976) = 0;
  *((_DWORD *)this + 240) = a7;
  *((_BYTE *)this + 977) = 0;
  v41 = 0.0;
  v42 = 0.0;
  v43 = 0.0;
  GameObject::GetLookAtVec((int)a3, &v41);
  TargetPosition = GameObject::GetTargetPosition(*((GameObject **)this + 224));
  *((_DWORD *)this + 226) = *(_DWORD *)TargetPosition;
  *((_DWORD *)this + 227) = *((_DWORD *)TargetPosition + 1);
  v15 = *((_DWORD *)TargetPosition + 2);
  *((_DWORD *)this + 233) = 0;
  *((_DWORD *)this + 232) = v15;
  *((_DWORD *)this + 228) = v15;
  if ( *(float *)(v13 + 32) >= 0.0 )
    v16 = *(float *)(v13 + 32) * *(float *)(v13 + 32);
  else
    v16 = -1.0;
  v17 = *((_DWORD *)this + 224);
  *((float *)this + 234) = v16;
  v18 = *(VisualObject **)(v17 + 728);
  if ( v18 )
  {
    SpecificNode = (_DWORD *)VisualObject::GetSpecificNode(v18, "projectile_node");
    *((_DWORD *)this + 233) = SpecificNode;
    if ( SpecificNode )
    {
      glitch::scene::ISceneNode::getAbsolutePosition(v39, SpecificNode);
      v20 = v40;
      v21 = v39[0];
      v22 = v39[1];
      *((_DWORD *)this + 232) = v40;
      *((_DWORD *)this + 226) = v21;
      *((_DWORD *)this + 227) = v22;
      *((_DWORD *)this + 228) = v20;
    }
  }
  *((_DWORD *)this + 235) = *(_DWORD *)(v13 + 64);
  *((_DWORD *)this + 236) = *(_DWORD *)(v13 + 68);
  *((_DWORD *)this + 237) = *(_DWORD *)(v13 + 60);
  v23 = *(_DWORD *)(v13 + 40);
  if ( v23 < 0 )
    GameObject::SetVisualObject((int)this, 0);
  else
    GameObject::SetVisualObject(
      (const char **)this,
      *(const char **)(Arrays::ProjectileDict::members + 12 * v23 + 8),
      nullptr,
      0);
  v24 = (PhysicalWorld *)dword_99F770;
  v25 = (PhysicalObject *)operator new(0x28u, 0);
  PhysicalObject::PhysicalObject(v25, v24, this, 0, 1, 1, 1, 0, 0x20u, 0x51Fu, 0);
  *(_DWORD *)v25 = off_968FE8;
  GameObject::SetPhysicalObject(this, v25, 0);
  GameObject::SetPosition(this, (float *)this + 226, 1);
  GameObject::SetRotation(this, (_DWORD *)(*((_DWORD *)this + 224) + 364));
  v26 = *((GameObject **)this + 225);
  if ( v26 )
  {
    v27 = GameObject::GetTargetPosition(v26);
    GameObject::SetDestination(this, v27);
  }
  else
  {
    v31 = *((_DWORD **)this + 233);
    if ( v31 && a8 )
    {
      glitch::scene::ISceneNode::getAbsolutePosition(v38, v31);
      v35 = (float *)GameObject::GetTargetPosition(*((GameObject **)this + 224));
      v36 = v38[1] - v35[1];
      v41 = v38[0] - *v35;
      v42 = v36;
      v43 = 0.0;
      Point3D<float>::normalize(&v41);
    }
    v32 = (float *)GameObject::GetTargetPosition(*((GameObject **)this + 224));
    v33 = (float)(v42 * 1000.0) + v32[1];
    v34 = (float)(v43 * 1000.0) + v32[2];
    v37[0] = (float)(v41 * 1000.0) + *v32;
    v37[1] = v33;
    v37[2] = v34;
    GameObject::SetDestination(this, v37);
  }
  v28 = *((_DWORD *)this + 182);
  if ( v28 )
  {
    (*(void (__fastcall **)(_DWORD, _DWORD, int, _DWORD, _DWORD))(**(_DWORD **)(v28 + 56) + 28))(
      *(_DWORD *)(v28 + 56),
      0,
      1,
      0,
      0);
    VisualObject::Sync(*((VisualObject **)this + 182));
    if ( *((_DWORD *)this + 237) == -666 )
      *((_DWORD *)this + 237) = (*(int (__fastcall **)(_DWORD, _DWORD))(**(_DWORD **)(*((_DWORD *)this + 182) + 56) + 24))(
                                  *(_DWORD *)(*((_DWORD *)this + 182) + 56),
                                  0);
  }
  v29 = (Projectile *)((char *)this + 456);
  PFObject::SetFlying(v29, 1);
  return PFObject::SetSwimming(v29, 1);
}


// ===== 3e5d94 `non-virtual thunk to'Projectile::~Projectile() =====
void __fastcall `non-virtual thunk to'Projectile::~Projectile(Projectile *this)
{
  Projectile::~Projectile((Projectile *)((char *)this - 36));
}


// ===== 3e5d9c Projectile::~Projectile() =====
void __fastcall Projectile::~Projectile(Projectile *this)
{
  *(_DWORD *)this = off_966F98;
  *((_DWORD *)this + 1) = &off_967074;
  *((_DWORD *)this + 9) = off_967080;
  GameObject::~GameObject(this);
}


// ===== 3e5ddc `non-virtual thunk to'Projectile::~Projectile() =====
void __fastcall `non-virtual thunk to'Projectile::~Projectile(Projectile *this)
{
  Projectile::~Projectile((Projectile *)((char *)this - 36));
}


// ===== 3e5de4 Projectile::~Projectile() =====
void __fastcall Projectile::~Projectile(Projectile *this)
{
  Projectile::~Projectile(this);
  CustomFree(this);
}


// ===== 3e5e00 Projectile::~Projectile() =====
void __fastcall Projectile::~Projectile(Projectile *this)
{
  *(_DWORD *)this = off_966F98;
  *((_DWORD *)this + 1) = &off_967074;
  *((_DWORD *)this + 9) = off_967080;
  GameObject::~GameObject(this);
}


// ===== 3e5e40 Projectile::Projectile(ObjectBase::GO_IDS) =====
int __fastcall Projectile::Projectile(int a1)
{
  GameObject::GameObject(a1);
  *(_DWORD *)(a1 + 968) = 0;
  *(_DWORD *)(a1 + 4) = &off_967074;
  *(_DWORD *)(a1 + 884) = -1;
  *(_DWORD *)(a1 + 36) = off_967080;
  *(_DWORD *)a1 = off_966F98;
  *(_BYTE *)(a1 + 977) = 0;
  *(_BYTE *)(a1 + 133) = 1;
  *(_DWORD *)(a1 + 888) = 0;
  *(_DWORD *)(a1 + 896) = 0;
  *(_DWORD *)(a1 + 900) = 0;
  *(_DWORD *)(a1 + 904) = 0;
  *(_DWORD *)(a1 + 908) = 0;
  *(_DWORD *)(a1 + 912) = 0;
  *(_DWORD *)(a1 + 916) = 0;
  *(_DWORD *)(a1 + 920) = 0;
  *(_DWORD *)(a1 + 924) = 0;
  *(_DWORD *)(a1 + 932) = 0;
  *(_DWORD *)(a1 + 952) = 0;
  *(_DWORD *)(a1 + 964) = 0;
  *(_DWORD *)(a1 + 972) = 0;
  *(_BYTE *)(a1 + 976) = 0;
  return a1;
}


// ===== 3e5edc Projectile::Projectile(ObjectBase::GO_IDS) =====
int __fastcall Projectile::Projectile(int a1)
{
  GameObject::GameObject(a1);
  *(_DWORD *)(a1 + 968) = 0;
  *(_DWORD *)(a1 + 4) = &off_967074;
  *(_DWORD *)(a1 + 884) = -1;
  *(_DWORD *)(a1 + 36) = off_967080;
  *(_DWORD *)a1 = off_966F98;
  *(_BYTE *)(a1 + 977) = 0;
  *(_BYTE *)(a1 + 133) = 1;
  *(_DWORD *)(a1 + 888) = 0;
  *(_DWORD *)(a1 + 896) = 0;
  *(_DWORD *)(a1 + 900) = 0;
  *(_DWORD *)(a1 + 904) = 0;
  *(_DWORD *)(a1 + 908) = 0;
  *(_DWORD *)(a1 + 912) = 0;
  *(_DWORD *)(a1 + 916) = 0;
  *(_DWORD *)(a1 + 920) = 0;
  *(_DWORD *)(a1 + 924) = 0;
  *(_DWORD *)(a1 + 932) = 0;
  *(_DWORD *)(a1 + 952) = 0;
  *(_DWORD *)(a1 + 964) = 0;
  *(_DWORD *)(a1 + 972) = 0;
  *(_BYTE *)(a1 + 976) = 0;
  return a1;
}


// ===== 3e5f78 `global constructor keyed to'.._.._sources_Game_Objects_Projectiles_Projectile.cpp =====
int `global constructor keyed to'.._.._sources_Game_Objects_Projectiles_Projectile.cpp()
{
  int result; // r0

  result = `guard variable for'Singleton<PlayerStatManager>::s_inst;
  dword_9A3028 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9A3024 = 1056964608;
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
    result = _aeabi_atexit((int)&Singleton<PFWorld>::s_inst, (int)PFWorld::~PFWorld, (int)&_dso_handle);
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


// ===== 3e60fc ProjectileManager::ProjectileManager(void) =====
void __fastcall ProjectileManager::ProjectileManager(ProjectileManager *this)
{
  *((_DWORD *)this + 13) = 0;
  *((_DWORD *)this + 1) = 0;
  *(_DWORD *)this = off_967098;
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
  *((_DWORD *)this + 12) = 0;
}


// ===== 3e6158 ProjectileManager::ProjectileManager(void) =====
void __fastcall ProjectileManager::ProjectileManager(ProjectileManager *this)
{
  *((_DWORD *)this + 13) = 0;
  *((_DWORD *)this + 1) = 0;
  *(_DWORD *)this = off_967098;
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
  *((_DWORD *)this + 12) = 0;
}


// ===== 3e61b4 ProjectileManager::DeSpawn(Projectile *,bool) =====
int __fastcall ProjectileManager::DeSpawn(int this, Projectile *a2, int a3)
{
  _DWORD *v4; // r5
  Projectile **v5; // r1
  int v6; // r8
  int v7; // r7
  int v8; // r3
  Projectile **v9; // r2
  int v10; // r1
  int v11; // r8
  int v12; // r7

  v4 = (_DWORD *)this;
  if ( !a2 )
  {
    v8 = gAssertLevel;
    if ( gAssertLevel == 2 )
    {
      dword_0 = 0;
      goto LABEL_27;
    }
    if ( gAssertLevel == 1 )
    {
      this = fprintf(
               (FILE *)&_sF + 2,
               "ASSERT(%s) FAILED: %s:%d\n",
               "p",
               "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Objects\\Projectiles\\ProjectileManager.cpp",
               282);
      v8 = gAssertLevel;
    }
LABEL_10:
    if ( v8 != 2 )
    {
      if ( v8 == 1 )
        return fprintf(
                 (FILE *)&_sF + 2,
                 "ASSERT(%s) FAILED: %s:%d\n",
                 "!\"ProjectileManager :: WTF!\"",
                 "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Objects\\Projectiles\\ProjectileManager.cpp",
                 318);
      return this;
    }
LABEL_27:
    dword_0 = 0;
    return this;
  }
  if ( !a3 )
  {
    v5 = *(Projectile ***)(this + 16);
    this = (*(_DWORD *)(this + 20) - (int)v5) >> 3;
    if ( this )
    {
      if ( a2 == *v5 )
      {
        v6 = 0;
        v7 = 0;
LABEL_22:
        (*(void (__fastcall **)(Projectile *, _DWORD))(*(_DWORD *)a2 + 64))(a2, 0);
        this = GameObject::Stop(a2);
        *((_BYTE *)a2 + 133) = 0;
        *(_BYTE *)(v4[4] + v6 + 4) = 0;
        v4[8] = v7;
        return this;
      }
      v7 = 0;
      while ( ++v7 != this )
      {
        v6 = 8 * v7;
        if ( a2 == v5[2 * v7] )
          goto LABEL_22;
      }
    }
    goto LABEL_9;
  }
  v9 = *(Projectile ***)(this + 36);
  v10 = (*(_DWORD *)(this + 40) - (int)v9) >> 3;
  if ( !v10 )
  {
LABEL_9:
    v8 = gAssertLevel;
    goto LABEL_10;
  }
  if ( a2 != *v9 )
  {
    v12 = 0;
    while ( ++v12 != v10 )
    {
      v11 = 8 * v12;
      if ( a2 == v9[2 * v12] )
        goto LABEL_21;
    }
    goto LABEL_9;
  }
  v11 = 0;
  v12 = 0;
LABEL_21:
  (*(void (__fastcall **)(Projectile *, _DWORD))(*(_DWORD *)a2 + 64))(a2, 0);
  this = GameObject::Stop(a2);
  *((_BYTE *)a2 + 133) = 0;
  *(_BYTE *)(v4[9] + v11 + 4) = 0;
  v4[13] = v12;
  return this;
}


// ===== 3e63c4 std::priv::__copy<ProjectileManager::_Projectile *,ProjectileManager::_Projectile *,int>(ProjectileManager::_Projectile *,ProjectileManager::_Projectile *,ProjectileManager::_Projectile *,std::random_access_iterator_tag const&,int *) =====
int __fastcall std::priv::__copy<ProjectileManager::_Projectile *,ProjectileManager::_Projectile *,int>(
        int a1,
        int a2,
        int a3)
{
  int v3; // r1
  int v5; // r4
  int v6; // r12
  char v7; // r5
  int v8; // r0

  v3 = (a2 - a1) >> 3;
  if ( v3 > 0 )
  {
    v5 = v3;
    v6 = 0;
    do
    {
      --v5;
      *(_DWORD *)(a3 + v6) = *(_DWORD *)(a1 + v6);
      v7 = *(_BYTE *)(a1 + v6 + 4);
      v8 = a3 + v6;
      v6 += 8;
      *(_BYTE *)(v8 + 4) = v7;
    }
    while ( v5 );
    a3 += 8 * v3;
  }
  return a3;
}


// ===== 3e6418 std::priv::__copy<ProjectileManager::_LaserTypeProjectile *,ProjectileManager::_LaserTypeProjectile *,int>(ProjectileManager::_LaserTypeProjectile *,ProjectileManager::_LaserTypeProjectile *,ProjectileManager::_LaserTypeProjectile *,std::random_access_iterator_tag const&,int *) =====
int __fastcall std::priv::__copy<ProjectileManager::_LaserTypeProjectile *,ProjectileManager::_LaserTypeProjectile *,int>(
        int a1,
        int a2,
        int a3)
{
  int v3; // r1
  int v5; // r4
  int v6; // r12
  char v7; // r5
  int v8; // r0

  v3 = (a2 - a1) >> 3;
  if ( v3 > 0 )
  {
    v5 = v3;
    v6 = 0;
    do
    {
      --v5;
      *(_DWORD *)(a3 + v6) = *(_DWORD *)(a1 + v6);
      v7 = *(_BYTE *)(a1 + v6 + 4);
      v8 = a3 + v6;
      v6 += 8;
      *(_BYTE *)(v8 + 4) = v7;
    }
    while ( v5 );
    a3 += 8 * v3;
  }
  return a3;
}


// ===== 3e646c ProjectileManager::Flush(void) =====
int __fastcall ProjectileManager::Flush(ProjectileManager *this)
{
  int v2; // r2
  int v3; // r0
  int v4; // r6
  int v5; // r5
  int v6; // r0
  int result; // r0
  int v8; // r2
  int v9; // r6
  int v10; // r5
  int v11; // r0

  v2 = *((_DWORD *)this + 4);
  v3 = *((_DWORD *)this + 5);
  v4 = (v3 - v2) >> 3;
  if ( v4 )
  {
    v5 = 0;
    while ( 1 )
    {
      (*(void (__fastcall **)(_DWORD, _DWORD))(**(_DWORD **)(v2 + 8 * v5) + 64))(*(_DWORD *)(v2 + 8 * v5), 0);
      v6 = *(_DWORD *)(*((_DWORD *)this + 4) + 8 * v5++);
      ObjectBase::Delete(v6);
      if ( v5 == v4 )
        break;
      v2 = *((_DWORD *)this + 4);
    }
    v2 = *((_DWORD *)this + 4);
    v3 = *((_DWORD *)this + 5);
  }
  if ( v2 != v3 )
    *((_DWORD *)this + 5) = std::priv::__copy<ProjectileManager::_Projectile *,ProjectileManager::_Projectile *,int>(
                              v3,
                              v3,
                              v2);
  result = *((_DWORD *)this + 10);
  v8 = *((_DWORD *)this + 9);
  v9 = (result - v8) >> 3;
  if ( v9 )
  {
    v10 = 0;
    while ( 1 )
    {
      (*(void (__fastcall **)(_DWORD, _DWORD))(**(_DWORD **)(v8 + 8 * v10) + 64))(*(_DWORD *)(v8 + 8 * v10), 0);
      v11 = *(_DWORD *)(*((_DWORD *)this + 9) + 8 * v10++);
      ObjectBase::Delete(v11);
      if ( v10 == v9 )
        break;
      v8 = *((_DWORD *)this + 9);
    }
    v8 = *((_DWORD *)this + 9);
    result = *((_DWORD *)this + 10);
  }
  if ( v8 != result )
  {
    result = std::priv::__copy<ProjectileManager::_LaserTypeProjectile *,ProjectileManager::_LaserTypeProjectile *,int>(
               result,
               result,
               v8);
    *((_DWORD *)this + 10) = result;
  }
  return result;
}


// ===== 3e6570 std::allocator<ProjectileManager::_LaserTypeProjectile>::_M_allocate(uint,uint &) =====
void *__fastcall std::allocator<ProjectileManager::_LaserTypeProjectile>::_M_allocate(
        int a1,
        unsigned int a2,
        size_t *a3)
{
  void *result; // r0
  size_t __n; // [sp+4h] [bp-4h] BYREF

  if ( a2 > 0x1FFFFFFF )
  {
    puts("out of memory\n");
    exit(1);
  }
  if ( !a2 )
    return nullptr;
  __n = 8 * a2;
  if ( 8 * a2 > 0x80 )
    result = CustomAlloc(8 * a2);
  else
    result = __ZNSt12__node_alloc11_M_allocateERj_veneer(&__n);
  *a3 = __n >> 3;
  return result;
}


// ===== 3e65e0 std::vector<ProjectileManager::_LaserTypeProjectile,std::allocator<ProjectileManager::_LaserTypeProjectile>>::_M_allocate_and_copy<ProjectileManager::_LaserTypeProjectile*>(uint &,ProjectileManager::_LaserTypeProjectile*,ProjectileManager::_LaserTypeProjectile*) =====
char *__fastcall std::vector<ProjectileManager::_LaserTypeProjectile>::_M_allocate_and_copy<ProjectileManager::_LaserTypeProjectile*>(
        int a1,
        unsigned int *a2,
        int a3,
        int a4)
{
  int v5; // r5
  char *result; // r0
  int v7; // r1
  char *v8; // r3
  char v9; // r2

  v5 = (a4 - a3) >> 3;
  result = (char *)std::allocator<ProjectileManager::_LaserTypeProjectile>::_M_allocate(a1 + 8, *a2, a2);
  if ( v5 > 0 )
  {
    v7 = 0;
    do
    {
      --v5;
      *(_DWORD *)&result[v7] = *(_DWORD *)(a3 + v7);
      v8 = &result[v7];
      v9 = *(_BYTE *)(a3 + v7 + 4);
      v7 += 8;
      v8[4] = v9;
    }
    while ( v5 );
  }
  return result;
}


// ===== 3e6638 `global constructor keyed to'.._.._sources_Game_Objects_Projectiles_ProjectileManager.cpp =====
int `global constructor keyed to'.._.._sources_Game_Objects_Projectiles_ProjectileManager.cpp()
{
  int result; // r0

  result = `guard variable for'Singleton<PlayerStatManager>::s_inst;
  dword_9A3034 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9A3030 = 1056964608;
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


// ===== 3e6768 std::allocator<ProjectileManager::_Projectile>::_M_allocate(uint,uint &) =====
void *__fastcall std::allocator<ProjectileManager::_Projectile>::_M_allocate(int a1, unsigned int a2, size_t *a3)
{
  void *result; // r0
  size_t __n; // [sp+4h] [bp-4h] BYREF

  if ( a2 > 0x1FFFFFFF )
  {
    puts("out of memory\n");
    exit(1);
  }
  if ( !a2 )
    return nullptr;
  __n = 8 * a2;
  if ( 8 * a2 > 0x80 )
    result = CustomAlloc(8 * a2);
  else
    result = __ZNSt12__node_alloc11_M_allocateERj_veneer(&__n);
  *a3 = __n >> 3;
  return result;
}


// ===== 3e67d8 std::vector<ProjectileManager::_Projectile,std::allocator<ProjectileManager::_Projectile>>::_M_allocate_and_copy<ProjectileManager::_Projectile*>(uint &,ProjectileManager::_Projectile*,ProjectileManager::_Projectile*) =====
char *__fastcall std::vector<ProjectileManager::_Projectile>::_M_allocate_and_copy<ProjectileManager::_Projectile*>(
        int a1,
        unsigned int *a2,
        int a3,
        int a4)
{
  int v5; // r5
  char *result; // r0
  int v7; // r1
  char *v8; // r3
  char v9; // r2

  v5 = (a4 - a3) >> 3;
  result = (char *)std::allocator<ProjectileManager::_Projectile>::_M_allocate(a1 + 8, *a2, a2);
  if ( v5 > 0 )
  {
    v7 = 0;
    do
    {
      --v5;
      *(_DWORD *)&result[v7] = *(_DWORD *)(a3 + v7);
      v8 = &result[v7];
      v9 = *(_BYTE *)(a3 + v7 + 4);
      v7 += 8;
      v8[4] = v9;
    }
    while ( v5 );
  }
  return result;
}


// ===== 3e6830 std::vector<ProjectileManager::_Projectile,std::allocator<ProjectileManager::_Projectile>>::~vector() =====
int __fastcall std::vector<ProjectileManager::_Projectile>::~vector(int a1)
{
  void *v2; // r0
  size_t v3; // r1

  v2 = *(void **)a1;
  if ( !v2 )
    return a1;
  v3 = (*(_DWORD *)(a1 + 8) - (_DWORD)v2) & 0xFFFFFFF8;
  if ( v3 <= 0x80 )
  {
    __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v2, v3);
    return a1;
  }
  CustomFree(v2);
  return a1;
}


// ===== 3e6870 std::vector<ProjectileManager::_LaserTypeProjectile,std::allocator<ProjectileManager::_LaserTypeProjectile>>::~vector() =====
int __fastcall std::vector<ProjectileManager::_LaserTypeProjectile>::~vector(int a1)
{
  void *v2; // r0
  size_t v3; // r1

  v2 = *(void **)a1;
  if ( !v2 )
    return a1;
  v3 = (*(_DWORD *)(a1 + 8) - (_DWORD)v2) & 0xFFFFFFF8;
  if ( v3 <= 0x80 )
  {
    __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v2, v3);
    return a1;
  }
  CustomFree(v2);
  return a1;
}


// ===== 3e68b0 ProjectileManager::~ProjectileManager() =====
void __fastcall ProjectileManager::~ProjectileManager(ProjectileManager *this)
{
  void *v2; // r0
  size_t v3; // r1

  *(_DWORD *)this = off_967098;
  std::vector<ProjectileManager::_LaserTypeProjectile>::~vector((int)this + 36);
  std::vector<ProjectileManager::_Projectile>::~vector((int)this + 16);
  v2 = *((void **)this + 1);
  if ( v2 )
  {
    v3 = (*((_DWORD *)this + 3) - (_DWORD)v2) & 0xFFFFFFFC;
    if ( v3 > 0x80 )
      CustomFree(v2);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v2, v3);
  }
}


// ===== 3e6920 ProjectileManager::~ProjectileManager() =====
void __fastcall ProjectileManager::~ProjectileManager(ProjectileManager *this)
{
  ProjectileManager::~ProjectileManager(this);
  CustomFree(this);
}


// ===== 3e693c ProjectileManager::_Create(bool,bool) =====
Projectile *__fastcall ProjectileManager::_Create(ProjectileManager *this, bool a2, int a3)
{
  int v5; // r0
  unsigned int v6; // r12
  unsigned int v7; // r8
  int v8; // r3
  unsigned int v9; // r3
  Projectile *v10; // r0
  Projectile *v11; // r9
  Projectile *v12; // r10
  int v13; // r8
  unsigned int v14; // r12
  unsigned int v15; // r0
  int v16; // r3
  int v17; // r2
  int v18; // r10
  unsigned int v19; // r2
  int v20; // r2
  int v21; // r3
  int v22; // r3
  Projectile *Object; // r0
  int v24; // r9
  int v25; // r2
  int v26; // r3
  int v28; // r11
  int v29; // r2
  int v30; // r3
  unsigned int v31; // r3
  unsigned int v32; // r1
  int v33; // r0
  int v34; // r12
  int v35; // r8
  int v36; // lr
  int v37; // lr
  int v38; // r1
  int v39; // r0
  int v40; // r3
  char v41; // r2
  int v42; // r11
  char *v43; // r3
  char *v44; // r0
  size_t v45; // r1
  unsigned int v46; // r3
  unsigned int v47; // r3
  unsigned int v48; // r1
  int v49; // r0
  int v50; // lr
  int v51; // r8
  int v52; // r9
  int v53; // r3
  int v54; // r1
  int v55; // r0
  int v56; // r3
  char v57; // r2
  int v58; // r9
  char *v59; // r3
  char *v60; // r0
  size_t v61; // r1
  unsigned int v62; // r3
  _BYTE v63[12]; // [sp+8h] [bp-44h] BYREF
  _BYTE v64[12]; // [sp+14h] [bp-38h] BYREF
  unsigned int v65; // [sp+20h] [bp-2Ch] BYREF
  char s[32]; // [sp+24h] [bp-28h] BYREF

  if ( a3 )
  {
    v13 = *((_DWORD *)this + 9);
    v14 = *((_DWORD *)this + 13);
    v15 = (*((_DWORD *)this + 10) - v13) >> 3;
    if ( v14 >= v15 )
    {
      v16 = 0;
      *((_DWORD *)this + 13) = 0;
      if ( !v15 )
      {
LABEL_35:
        sprintf(s, "LTProjectile_%03u", *((_DWORD *)this + 12));
        ObjectManager::Spawn((ObjectManager *)v63, (ObjectBase *)dword_99F764, "LaserTypeProjectile", s, 0, 1);
        Object = (Projectile *)ObjectHandle::GetObject((ObjectHandle *)v63, 0);
        v12 = Object;
        if ( !Object || *((_DWORD *)Object + 61) != 10 )
          return nullptr;
        v24 = *((_DWORD *)this + 10);
        v25 = *((_DWORD *)this + 11);
        v26 = *((_DWORD *)this + 12) + 1;
        *((_DWORD *)this + 13) = 0;
        *((_DWORD *)this + 12) = v26;
        if ( v24 == v25 )
        {
          v47 = (v24 - *((_DWORD *)this + 9)) >> 3;
          if ( v47 )
            v48 = 2 * v47;
          else
            v48 = 1;
          if ( v48 > 0x1FFFFFFF || v47 > v48 )
            v48 = 0x1FFFFFFF;
          v65 = v48;
          v49 = std::allocator<ProjectileManager::_LaserTypeProjectile>::_M_allocate((char *)this + 44, v48, &v65);
          v50 = *((_DWORD *)this + 9);
          v51 = v49;
          v52 = (v24 - v50) >> 3;
          if ( v52 > 0 )
          {
            v54 = v52;
            v55 = 0;
            do
            {
              --v54;
              *(_DWORD *)(v51 + v55) = *(_DWORD *)(v50 + v55);
              v56 = v51 + v55;
              v57 = *(_BYTE *)(v50 + v55 + 4);
              v55 += 8;
              *(_BYTE *)(v56 + 4) = v57;
            }
            while ( v54 );
            v53 = v51 + 8 * v52;
          }
          else
          {
            v53 = v49;
          }
          *(_BYTE *)(v53 + 4) = a2;
          *(_DWORD *)v53 = v12;
          v58 = v53 + 8;
          v59 = *((char **)this + 10);
          v60 = *((char **)this + 9);
          if ( v59 != v60 )
            v59 += 8 * ~((unsigned int)(v59 - 8 - v60) >> 3);
          if ( v59 )
          {
            v61 = (*((_DWORD *)this + 11) - (_DWORD)v59) & 0xFFFFFFF8;
            if ( v61 > 0x80 )
              CustomFree(v60);
            else
              __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v60, v61);
          }
          v62 = v65;
          *((_DWORD *)this + 9) = v51;
          *((_DWORD *)this + 10) = v58;
          *((_DWORD *)this + 11) = v51 + 8 * v62;
        }
        else
        {
          *(_BYTE *)(v24 + 4) = a2;
          *(_DWORD *)v24 = Object;
          *((_DWORD *)this + 10) += 8;
        }
        Projectile::SetManager(v12, this);
        return v12;
      }
      v17 = 1;
      v14 = 0;
    }
    else
    {
      v16 = 8 * v14;
      v17 = v14 + 1;
    }
    v18 = *((_DWORD *)this + 4);
    if ( !*(_BYTE *)(v18 + v16 + 4) )
    {
LABEL_48:
      *((_DWORD *)this + 13) = v17;
      *(_BYTE *)(v13 + v16 + 4) = 1;
      return *(Projectile **)(*((_DWORD *)this + 9) + v16);
    }
    v16 = 8 * (v14 + 1);
    v19 = v14;
    while ( ++v19 < v15 )
    {
      if ( !*(_BYTE *)(v18 + v16 + 4) )
      {
        v17 = v19 + 1;
        goto LABEL_48;
      }
      v16 += 8;
    }
    if ( !v14 )
      goto LABEL_35;
    v20 = *(unsigned __int8 *)(v13 + 4);
    if ( !*(_BYTE *)(v13 + 4) )
    {
      v21 = 1;
LABEL_50:
      *((_DWORD *)this + 13) = v21;
      *(_BYTE *)(v13 + v20 + 4) = 1;
      return *(Projectile **)(*((_DWORD *)this + 9) + v20);
    }
    v22 = 0;
    while ( ++v22 != v14 )
    {
      v20 = 8 * v22;
      if ( !*(_BYTE *)(v13 + 8 * v22 + 4) )
      {
        v21 = v22 + 1;
        goto LABEL_50;
      }
    }
    goto LABEL_35;
  }
  v5 = *((_DWORD *)this + 4);
  v6 = *((_DWORD *)this + 8);
  v7 = (*((_DWORD *)this + 5) - v5) >> 3;
  if ( v6 < v7 )
  {
    a3 = 8 * v6;
    v8 = v6 + 1;
LABEL_5:
    if ( !*(_BYTE *)(v5 + a3 + 4) )
    {
LABEL_45:
      *((_DWORD *)this + 8) = v8;
      *(_BYTE *)(v5 + a3 + 4) = 1;
      return *(Projectile **)(*((_DWORD *)this + 4) + a3);
    }
    a3 = 8 * (v6 + 1);
    v9 = v6;
    while ( ++v9 < v7 )
    {
      if ( !*(_BYTE *)(v5 + a3 + 4) )
      {
LABEL_44:
        v8 = v9 + 1;
        goto LABEL_45;
      }
      a3 += 8;
    }
    if ( !v6 )
      goto LABEL_17;
    a3 = *(unsigned __int8 *)(v5 + 4);
    if ( !*(_BYTE *)(v5 + 4) )
    {
      v8 = 1;
      goto LABEL_45;
    }
    v9 = 0;
    while ( ++v9 != v6 )
    {
      a3 = 8 * v9;
      if ( !*(_BYTE *)(v5 + 8 * v9 + 4) )
        goto LABEL_44;
    }
    goto LABEL_17;
  }
  *((_DWORD *)this + 8) = 0;
  if ( v7 )
  {
    v8 = 1;
    v6 = 0;
    goto LABEL_5;
  }
LABEL_17:
  sprintf(s, "Projectile_%03u", *((_DWORD *)this + 7));
  ObjectManager::Spawn((ObjectManager *)v64, (ObjectBase *)dword_99F764, "Projectile", s, 0, 1);
  v10 = (Projectile *)ObjectHandle::GetObject((ObjectHandle *)v64, 0);
  v11 = v10;
  if ( !v10 || *((_DWORD *)v10 + 61) != 9 )
    return nullptr;
  v28 = *((_DWORD *)this + 5);
  v29 = *((_DWORD *)this + 6);
  v30 = *((_DWORD *)this + 7) + 1;
  *((_DWORD *)this + 8) = 0;
  *((_DWORD *)this + 7) = v30;
  v12 = v10;
  if ( v28 == v29 )
  {
    v31 = (v28 - *((_DWORD *)this + 4)) >> 3;
    if ( v31 )
      v32 = 2 * v31;
    else
      v32 = 1;
    if ( v32 > 0x1FFFFFFF || v31 > v32 )
      v32 = 0x1FFFFFFF;
    v65 = v32;
    v33 = std::allocator<ProjectileManager::_Projectile>::_M_allocate((char *)this + 24, v32, &v65);
    v34 = *((_DWORD *)this + 4);
    v35 = v33;
    v36 = (v28 - v34) >> 3;
    if ( v36 > 0 )
    {
      v38 = (v28 - v34) >> 3;
      v39 = 0;
      do
      {
        --v38;
        *(_DWORD *)(v35 + v39) = *(_DWORD *)(v34 + v39);
        v40 = v35 + v39;
        v41 = *(_BYTE *)(v34 + v39 + 4);
        v39 += 8;
        *(_BYTE *)(v40 + 4) = v41;
      }
      while ( v38 );
      v37 = v35 + 8 * v36;
    }
    else
    {
      v37 = v33;
    }
    *(_BYTE *)(v37 + 4) = a2;
    *(_DWORD *)v37 = v11;
    v42 = v37 + 8;
    v43 = *((char **)this + 5);
    v44 = *((char **)this + 4);
    if ( v43 != v44 )
      v43 += 8 * ~((unsigned int)(v43 - 8 - v44) >> 3);
    if ( v43 )
    {
      v45 = (*((_DWORD *)this + 6) - (_DWORD)v43) & 0xFFFFFFF8;
      if ( v45 > 0x80 )
        CustomFree(v44);
      else
        __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v44, v45);
    }
    v46 = v65;
    *((_DWORD *)this + 4) = v35;
    *((_DWORD *)this + 5) = v42;
    *((_DWORD *)this + 6) = v35 + 8 * v46;
  }
  else
  {
    *(_BYTE *)(v28 + 4) = a2;
    *(_DWORD *)v28 = v10;
    *((_DWORD *)this + 5) += 8;
  }
  Projectile::SetManager(v11, this);
  return v12;
}


// ===== 3e6edc ProjectileManager::Spawn(int,GameObject *,GameObject *,int (*)(Projectile *,void *),int (*)(Projectile *,void *),void *,float) =====
_BYTE *__fastcall ProjectileManager::Spawn(
        ProjectileManager *this,
        int a2,
        GameObject *a3,
        GameObject *a4,
        int (*a5)(Projectile *, void *),
        int (*a6)(Projectile *, void *),
        void *a7,
        float a8)
{
  _BYTE *v10; // r5
  _BYTE *v12; // r0

  if ( a2 < 0 || a2 >= Arrays::ProjectileTable::size )
    return nullptr;
  v12 = (_BYTE *)ProjectileManager::_Create(this, 1, *(_BYTE *)(Arrays::ProjectileTable::members + 72 * a2 + 28));
  v10 = v12;
  if ( v12 )
  {
    (*(void (__fastcall **)(_BYTE *, int))(*(_DWORD *)v12 + 64))(v12, 1);
    (*(void (__fastcall **)(_BYTE *, int, GameObject *, GameObject *, int (*)(Projectile *, void *), int (*)(Projectile *, void *), void *, _DWORD))(*(_DWORD *)v10 + 204))(
      v10,
      a2,
      a3,
      a4,
      a5,
      a6,
      a7,
      LODWORD(a8));
    v10[133] = 1;
  }
  else if ( gAssertLevel == 2 )
  {
    dword_0 = 0;
  }
  else if ( gAssertLevel == 1 )
  {
    fprintf(
      (FILE *)&_sF + 2,
      "ASSERT(%s) FAILED: %s:%d\n",
      "p",
      "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Objects\\Projectiles\\ProjectileManager.cpp",
      266);
  }
  return v10;
}


// ===== 3e701c ProjectileManager::Spawn(int,GameObject *,GameObject *,int (*)(Projectile *,void *),int (*)(Projectile *,void *),void *,bool) =====
Projectile *__fastcall ProjectileManager::Spawn(
        ProjectileManager *this,
        int a2,
        GameObject *a3,
        GameObject *a4,
        int (*a5)(Projectile *, void *),
        int (*a6)(Projectile *, void *),
        void *a7,
        bool a8)
{
  Projectile *v10; // r5
  Projectile *v12; // r0

  if ( a2 < 0 || a2 >= Arrays::ProjectileTable::size )
    return nullptr;
  v12 = ProjectileManager::_Create(this, 1, *(unsigned __int8 *)(Arrays::ProjectileTable::members + 72 * a2 + 28));
  v10 = v12;
  if ( v12 )
  {
    (*(void (__fastcall **)(Projectile *, int))(*(_DWORD *)v12 + 64))(v12, 1);
    (*(void (__fastcall **)(Projectile *, int, GameObject *, GameObject *, int (*)(Projectile *, void *), int (*)(Projectile *, void *), void *, bool))(*(_DWORD *)v10 + 200))(
      v10,
      a2,
      a3,
      a4,
      a5,
      a6,
      a7,
      a8);
    *((_BYTE *)v10 + 133) = 1;
  }
  else if ( gAssertLevel == 2 )
  {
    dword_0 = 0;
  }
  else if ( gAssertLevel == 1 )
  {
    fprintf(
      (FILE *)&_sF + 2,
      "ASSERT(%s) FAILED: %s:%d\n",
      "p",
      "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Objects\\Projectiles\\ProjectileManager.cpp",
      243);
  }
  return v10;
}


// ===== 3e715c ProjectileManager::~ProjectileManager() =====
void __fastcall ProjectileManager::~ProjectileManager(ProjectileManager *this)
{
  void *v2; // r0
  size_t v3; // r1

  *(_DWORD *)this = off_967098;
  std::vector<ProjectileManager::_LaserTypeProjectile>::~vector((int)this + 36);
  std::vector<ProjectileManager::_Projectile>::~vector((int)this + 16);
  v2 = *((void **)this + 1);
  if ( v2 )
  {
    v3 = (*((_DWORD *)this + 3) - (_DWORD)v2) & 0xFFFFFFFC;
    if ( v3 > 0x80 )
      CustomFree(v2);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v2, v3);
  }
}


// ===== 3e71cc ProjectileManager::PreCache(void) =====
void __fastcall ProjectileManager::PreCache(ProjectileManager *this)
{
  int v1; // r2
  unsigned int v2; // r3
  int v4; // r3
  int v5; // r6
  char *v6; // r0
  char *v7; // r3
  char *v8; // r7
  char *v9; // r0
  size_t v10; // r1
  unsigned int v11; // r3
  int i; // r6
  int v13; // r3
  int v14; // r7
  int v15; // r6
  Projectile *v16; // r1
  int v17; // r2
  int v18; // r3
  int v19; // r3
  int v20; // r6
  char *v21; // r0
  char *v22; // r3
  char *v23; // r7
  char *v24; // r0
  size_t v25; // r1
  unsigned int v26; // r3
  int j; // r6
  int v28; // r3
  int v29; // r7
  int v30; // r6
  Projectile *v31; // r1
  int v32; // r6
  int v33; // r4
  int v34; // r5
  unsigned int v35; // r3
  unsigned int v36; // r3
  unsigned int v37; // [sp+4h] [bp-4h] BYREF

  v1 = *((_DWORD *)this + 4);
  v2 = (*((_DWORD *)this + 6) - v1) >> 3;
  v37 = 10;
  if ( v2 <= 9 )
  {
    v4 = *((_DWORD *)this + 5);
    v5 = (v4 - v1) >> 3;
    if ( v1 )
    {
      v6 = std::vector<ProjectileManager::_Projectile>::_M_allocate_and_copy<ProjectileManager::_Projectile*>(
             (int)this + 16,
             &v37,
             v1,
             v4);
      v7 = *((char **)this + 5);
      v8 = v6;
      v9 = *((char **)this + 4);
      if ( v7 != v9 )
        v7 += 8 * ~((unsigned int)(v7 - 8 - v9) >> 3);
      if ( v7 )
      {
        v10 = (*((_DWORD *)this + 6) - (_DWORD)v7) & 0xFFFFFFF8;
        if ( v10 > 0x80 )
        {
          CustomFree(v9);
          v36 = v37;
          *((_DWORD *)this + 5) = &v8[8 * v5];
          *((_DWORD *)this + 6) = &v8[8 * v36];
          *((_DWORD *)this + 4) = v8;
          goto LABEL_9;
        }
        __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v9, v10);
      }
    }
    else
    {
      v8 = (char *)std::allocator<ProjectileManager::_Projectile>::_M_allocate((int)this + 24, 0xAu, &v37);
    }
    v11 = v37;
    *((_DWORD *)this + 5) = &v8[8 * v5];
    *((_DWORD *)this + 6) = &v8[8 * v11];
    *((_DWORD *)this + 4) = v8;
  }
LABEL_9:
  for ( i = 0; i != 10; ++i )
    ProjectileManager::_Create(this, 0, 0);
  v13 = *((_DWORD *)this + 4);
  v14 = (*((_DWORD *)this + 5) - v13) >> 3;
  if ( v14 )
  {
    v15 = 0;
    while ( 1 )
    {
      v16 = *(Projectile **)(v13 + 8 * v15++);
      ProjectileManager::DeSpawn((int)this, v16, 0);
      if ( v15 == v14 )
        break;
      v13 = *((_DWORD *)this + 4);
    }
  }
  v17 = *((_DWORD *)this + 9);
  v18 = *((_DWORD *)this + 11);
  v37 = 10;
  if ( (unsigned int)((v18 - v17) >> 3) <= 9 )
  {
    v19 = *((_DWORD *)this + 10);
    v20 = (v19 - v17) >> 3;
    if ( v17 )
    {
      v21 = std::vector<ProjectileManager::_LaserTypeProjectile>::_M_allocate_and_copy<ProjectileManager::_LaserTypeProjectile*>(
              (int)this + 36,
              &v37,
              v17,
              v19);
      v22 = *((char **)this + 10);
      v23 = v21;
      v24 = *((char **)this + 9);
      if ( v22 != v24 )
        v22 += 8 * ~((unsigned int)(v22 - 8 - v24) >> 3);
      if ( v22 )
      {
        v25 = (*((_DWORD *)this + 11) - (_DWORD)v22) & 0xFFFFFFF8;
        if ( v25 > 0x80 )
        {
          CustomFree(v24);
          v35 = v37;
          *((_DWORD *)this + 10) = &v23[8 * v20];
          *((_DWORD *)this + 11) = &v23[8 * v35];
          *((_DWORD *)this + 9) = v23;
          goto LABEL_23;
        }
        __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v24, v25);
      }
    }
    else
    {
      v23 = (char *)std::allocator<ProjectileManager::_LaserTypeProjectile>::_M_allocate((int)this + 44, 0xAu, &v37);
    }
    v26 = v37;
    *((_DWORD *)this + 10) = &v23[8 * v20];
    *((_DWORD *)this + 11) = &v23[8 * v26];
    *((_DWORD *)this + 9) = v23;
  }
LABEL_23:
  for ( j = 0; j != 10; ++j )
    ProjectileManager::_Create(this, 0, 1);
  v28 = *((_DWORD *)this + 9);
  v29 = (*((_DWORD *)this + 10) - v28) >> 3;
  if ( v29 )
  {
    v30 = 0;
    while ( 1 )
    {
      v31 = *(Projectile **)(v28 + 8 * v30++);
      ProjectileManager::DeSpawn((int)this, v31, 1);
      if ( v30 == v29 )
        break;
      v28 = *((_DWORD *)this + 9);
    }
  }
  v32 = Arrays::ProjectileTable::size;
  if ( Arrays::ProjectileTable::size )
  {
    v33 = 0;
    v34 = 0;
    do
    {
      ++v34;
      VisualFXManager::RegisterFXSetToLoad(
        (VisualFXManager *)&Singleton<VisualFXManager>::s_inst,
        *(_DWORD *)(Arrays::ProjectileTable::members + v33 + 20));
      v33 += 72;
    }
    while ( v34 != v32 );
  }
}


// ===== 3e7498 Door::IsUpdatable(void) =====
int __fastcall Door::IsUpdatable(Door *this)
{
  return 1;
}


// ===== 3e74a0 Door::IsAnimated(void) =====
int __fastcall Door::IsAnimated(Door *this)
{
  return 1;
}


// ===== 3e74a8 Door::IsInteractive(GameObject *) =====
int __fastcall Door::IsInteractive(Door *this, GameObject *a2)
{
  return 0;
}


// ===== 3e74b0 Door::IsZonable(void) =====
int __fastcall Door::IsZonable(Door *this)
{
  return 1;
}


// ===== 3e74b8 Door::getUDTypeName(void) =====
const char *__fastcall Door::getUDTypeName(Door *this)
{
  return "Door";
}


// ===== 3e74c8 Door::createBindings(sfc::script::lua::Binder &) =====
int __fastcall Door::createBindings(Door *this, sfc::script::lua::Binder *a2)
{
  GameObject::createBindings(this, a2);
  sfc::script::lua::Binder::bindFunction(
    a2,
    "Open",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))Door::_Open,
    this);
  sfc::script::lua::Binder::bindMethod(
    (int)a2,
    "Open",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))Door::_Open);
  sfc::script::lua::Binder::bindFunction(
    a2,
    "Close",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))Door::_Close,
    this);
  return sfc::script::lua::Binder::bindMethod(
           (int)a2,
           "Close",
           (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))Door::_Close);
}


// ===== 3e7560 Door::Update(void) =====
int __fastcall Door::Update(VisualObject **this)
{
  VisualObject *v2; // r0

  if ( *((__int16 *)this + 440) >= 0 )
    GameObject::UpdateIdleSound((GameObject *)this);
  v2 = *(this + 182);
  if ( v2 )
    VisualObject::Sync(v2);
  return GameObject::RequireOnlineUpdate((GameObject *)this);
}


// ===== 3e7598 Door::Closed(bool) =====
int __fastcall Door::Closed(Door *this, int a2)
{
  int v2; // r3
  PhysicalObject *v4; // r6
  int result; // r0

  v2 = *((_DWORD *)this + 182);
  *((_DWORD *)this + 234) = 0;
  v4 = *((PhysicalObject **)this + 183);
  if ( v2 && !a2 )
    (*(void (__fastcall **)(_DWORD, const char *, int, _DWORD, _DWORD))(**(_DWORD **)(v2 + 56) + 32))(
      *(_DWORD *)(v2 + 56),
      "IdleClosed",
      1,
      0,
      0);
  if ( v4 )
    PhysicalObject::enableFilter(v4);
  result = PFWorld::FlagFloorAsDeadEnd((PFWorld *)&Singleton<PFWorld>::s_inst, (Door *)((char *)this + 456), 1);
  *((_BYTE *)this + 883) = 0;
  return result;
}


// ===== 3e763c Door::Close(bool) =====
int __fastcall Door::Close(int this, int a2)
{
  int v2; // r5
  int v3; // r6
  int v4; // r3
  float v5; // r6
  float v6; // r4
  int v7; // r1
  float v8[3]; // [sp+14h] [bp-Ch] BYREF

  v2 = this;
  if ( !*(_BYTE *)(this + 940) && *(_DWORD *)(this + 936) == 1 )
  {
    v3 = *(_DWORD *)(this + 728);
    if ( !v3
      || a2
      || (*(int (__fastcall **)(int))(*(_DWORD *)this + 196))(this) && *(_BYTE *)(v2 + 750) && !*(_BYTE *)(v2 + 752) )
    {
      this = Door::Closed((Door *)v2, 0);
    }
    else
    {
      *(_DWORD *)(v2 + 936) = 2;
      *(_BYTE *)(v2 + 940) = 1;
      *(_BYTE *)(v2 + 133) = 0;
      this = (*(int (__fastcall **)(_DWORD, const char *, _DWORD))(**(_DWORD **)(v3 + 56) + 32))(
               *(_DWORD *)(v3 + 56),
               "Close",
               0);
    }
    v4 = *(_DWORD *)(v2 + 928);
    if ( v4 != -1 )
    {
      v5 = *(float *)(v2 + 352);
      v6 = *(float *)(v2 + 356);
      v7 = *(_DWORD *)(Arrays::Doors::members + 24 * v4 + 12);
      v8[2] = *(float *)(v2 + 360);
      v8[0] = v5;
      v8[1] = v6;
      return VoxSoundManager::Play3D(VoxSoundManager::s_instance, v7, v8, 0, COERCE_FLOAT(1), -1.0, -1.0);
    }
  }
  return this;
}


// ===== 3e777c Door::_Close(sfc::script::lua::Arguments const&,sfc::script::lua::ReturnValues &,void *) =====
int __fastcall Door::_Close(
        Door *this,
        const sfc::script::lua::Arguments *a2,
        sfc::script::lua::ReturnValues *a3,
        void *a4)
{
  return Door::Close((int)a3, 0);
}


// ===== 3e7788 Door::Opened(bool) =====
int __fastcall Door::Opened(Door *this, int a2)
{
  int v2; // r3
  int v4; // r6
  int result; // r0

  v2 = *((_DWORD *)this + 182);
  *((_DWORD *)this + 234) = 1;
  v4 = *((_DWORD *)this + 183);
  if ( v2 && !a2 )
    (*(void (__fastcall **)(_DWORD, const char *))(**(_DWORD **)(v2 + 56) + 32))(*(_DWORD *)(v2 + 56), "IdleOpened");
  if ( v4 )
    PhysicalObject::disableFilter(v4);
  result = PFWorld::FlagFloorAsDeadEnd((PFWorld *)&Singleton<PFWorld>::s_inst, (Door *)((char *)this + 456), 0);
  *((_BYTE *)this + 883) = 1;
  return result;
}


// ===== 3e7828 Door::InterpretIncomingNetStruct(bool) =====
int __fastcall Door::InterpretIncomingNetStruct(int this, int a2)
{
  int v2; // r1
  bool v3; // zf
  int v4; // r3
  bool v5; // zf

  if ( a2 )
  {
    if ( *(_BYTE *)(this + 1677) )
    {
      v2 = *(_DWORD *)(this + 936);
      v3 = v2 == 1;
      if ( v2 != 1 )
        v3 = v2 == 3;
      if ( !v3 )
        return Door::Opened((Door *)this, 0);
    }
    else
    {
      v4 = *(_DWORD *)(this + 936);
      v5 = v4 == 1;
      if ( v4 != 1 )
        v5 = v4 == 3;
      if ( v5 )
        return Door::Closed((Door *)this, *(unsigned __int8 *)(this + 1677));
    }
  }
  return this;
}


// ===== 3e786c Door::Open(bool) =====
int __fastcall Door::Open(int this, int a2)
{
  int v2; // r4
  int v3; // r6
  int v4; // r3
  float v5; // r6
  float v6; // r5
  int v7; // r1
  float v8[3]; // [sp+14h] [bp-Ch] BYREF

  v2 = this;
  if ( !*(_BYTE *)(this + 940) && !*(_DWORD *)(this + 936) )
  {
    v3 = *(_DWORD *)(this + 728);
    if ( !v3
      || a2
      || (*(int (__fastcall **)(int))(*(_DWORD *)this + 196))(this) && *(_BYTE *)(v2 + 750) && !*(_BYTE *)(v2 + 752) )
    {
      this = Door::Opened((Door *)v2, 0);
    }
    else
    {
      *(_DWORD *)(v2 + 936) = 3;
      *(_BYTE *)(v2 + 940) = 1;
      *(_BYTE *)(v2 + 133) = 0;
      this = (*(int (__fastcall **)(_DWORD, const char *, _DWORD))(**(_DWORD **)(v3 + 56) + 32))(
               *(_DWORD *)(v3 + 56),
               "Open",
               0);
    }
    v4 = *(_DWORD *)(v2 + 928);
    if ( v4 != -1 )
    {
      v5 = *(float *)(v2 + 352);
      v6 = *(float *)(v2 + 356);
      v7 = *(_DWORD *)(Arrays::Doors::members + 24 * v4 + 16);
      v8[2] = *(float *)(v2 + 360);
      v8[0] = v5;
      v8[1] = v6;
      return VoxSoundManager::Play3D(VoxSoundManager::s_instance, v7, v8, 0, COERCE_FLOAT(1), -1.0, -1.0);
    }
  }
  return this;
}


// ===== 3e79a8 Door::_Open(sfc::script::lua::Arguments const&,sfc::script::lua::ReturnValues &,void *) =====
int __fastcall Door::_Open(
        Door *this,
        const sfc::script::lua::Arguments *a2,
        sfc::script::lua::ReturnValues *a3,
        void *a4)
{
  return Door::Open((int)a3, 0);
}


// ===== 3e79b4 IStreamBase::readAs<Door::DoorStates>(Door::DoorStates &) =====
int __fastcall IStreamBase::readAs<Door::DoorStates>(int a1, int a2)
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
               "..\\..\\project_vs2005\\Game/..\\..\\sources/Utils/IStream.h",
               69);
    }
  }
  return result;
}


// ===== 3e7a64 `non-virtual thunk to'Door::Deserialize(IStreamBase *) =====
int __fastcall `non-virtual thunk to'Door::Deserialize(VisualObject **this, IStreamBase *a2)
{
  return Door::Deserialize(this - 9, a2);
}


// ===== 3e7a6c Door::Deserialize(IStreamBase *) =====
int __fastcall Door::Deserialize(VisualObject **this, IStreamBase *a2)
{
  int v4; // r3

  GameObject::Deserialize(this, a2);
  IStreamBase::readAs<Door::DoorStates>(a2, this + 234);
  v4 = (int)*(this + 234);
  if ( v4 == 1 || v4 == 3 )
    return Door::Opened((Door *)this, 0);
  else
    return Door::Closed((Door *)this, 0);
}


// ===== 3e7abc IStreamBase::writeAs<Door::DoorStates>(Door::DoorStates const&) =====
int __fastcall IStreamBase::writeAs<Door::DoorStates>(int a1, int a2)
{
  int result; // r0
  int v3; // r1

  result = (*(int (__fastcall **)(int, int, int, _DWORD))(*(_DWORD *)a1 + 28))(a1, a2, 4, 0);
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
               "bytesWritten == sizeof(T)",
               "..\\..\\project_vs2005\\Game/..\\..\\sources/Utils/IStream.h",
               77);
    }
  }
  return result;
}


// ===== 3e7b6c `non-virtual thunk to'Door::Serialize(IStreamBase *) =====
int __fastcall `non-virtual thunk to'Door::Serialize(Door *this, IStreamBase *a2)
{
  return Door::Serialize((Door *)((char *)this - 36), a2);
}


// ===== 3e7b74 Door::Serialize(IStreamBase *) =====
int __fastcall Door::Serialize(Door *this, IStreamBase *a2)
{
  GameObject::Serialize(this, a2);
  return IStreamBase::writeAs<Door::DoorStates>(a2, (char *)this + 936);
}


// ===== 3e7b94 Door::Disabled(void) =====
PhysicalObject *__fastcall Door::Disabled(PhysicalObject **this)
{
  PhysicalObject *result; // r0

  result = GameObject::Disabled(this);
  if ( *(this + 234) != (PhysicalObject *)((char *)&dword_0 + 1) )
    return (PhysicalObject *)PFWorld::FlagFloorAsDeadEnd(
                               (PFWorld *)&Singleton<PFWorld>::s_inst,
                               (const PFObject *)(this + 114),
                               0);
  return result;
}


// ===== 3e7bd8 Door::Enabled(void) =====
PhysicalObject *__fastcall Door::Enabled(PhysicalObject **this)
{
  PhysicalObject *result; // r0

  result = GameObject::Enabled(this);
  if ( *(this + 234) != (PhysicalObject *)((char *)&dword_0 + 1) )
    return (PhysicalObject *)PFWorld::FlagFloorAsDeadEnd(
                               (PFWorld *)&Singleton<PFWorld>::s_inst,
                               (const PFObject *)(this + 114),
                               1);
  return result;
}


// ===== 3e7c1c Door::InitFinal(void) =====
int __fastcall Door::InitFinal(Door *this)
{
  int result; // r0

  result = GameObject::CheckSpawnProbability(this);
  if ( result < *((_DWORD *)this + 157) )
  {
    GameObject::InitFinal(this);
    result = GameObject::MeetCondition(this);
    if ( result )
    {
      if ( *((_BYTE *)this + 932) )
        return Door::Opened(this, 0);
      else
        return Door::Closed(this, *((unsigned __int8 *)this + 932));
    }
  }
  return result;
}


// ===== 3e7c78 `global constructor keyed to'.._.._sources_Game_Objects_Doors_Door.cpp =====
int `global constructor keyed to'.._.._sources_Game_Objects_Doors_Door.cpp()
{
  int result; // r0

  result = `guard variable for'Singleton<PlayerStatManager>::s_inst;
  dword_9A3040 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9A303C = 1056964608;
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


// ===== 3e7da8 Door::InitPost(void) =====
void __fastcall Door::InitPost(Door *this)
{
  const char *v2; // r8
  int v3; // r7
  int v4; // r6
  int v5; // r10
  int v6; // r3
  const char *v7; // r6
  size_t v8; // r0
  int v9; // r6
  int v10; // r3
  PhysicalWorld *v11; // r8
  PhysicalObject *v12; // r7

  if ( GameObject::CheckSpawnProbability(this) < *((_DWORD *)this + 157) )
  {
    v2 = *((const char **)this + 231);
    v3 = Arrays::Doors::size;
    if ( Arrays::Doors::size )
    {
      v4 = 0;
      v5 = Arrays::Doors::m_memberNames;
      while ( LC_API_STRCMP_0(v2, *(const char **)(v5 + 4 * v4)) )
      {
        if ( ++v4 == v3 )
          goto LABEL_19;
      }
      *((_DWORD *)this + 232) = v4;
      if ( v4 != -1 )
      {
        v6 = *(_DWORD *)(Arrays::Doors::members + 24 * v4 + 20);
        if ( v6 != -1 )
        {
          v7 = *(const char **)(Arrays::GameObjectDict::members + 12 * v6 + 8);
          v8 = LC_API_STRLEN_0(v7);
          std::string::_M_assign((std::string *const)((char *)this + 656), v7, &v7[v8]);
        }
      }
    }
    else
    {
LABEL_19:
      *((_DWORD *)this + 232) = -1;
    }
    Zone::InitPost(this);
    if ( GameObject::MeetCondition(this) )
    {
      v9 = *((_DWORD *)this + 182);
      if ( v9 )
      {
        (*(void (__fastcall **)(_DWORD, _DWORD (*)(Door *__hidden, glitch::scene::ITimelineController *, void *), Door *, int (*)(), Door *))(**(_DWORD **)(v9 + 56) + 44))(
          *(_DWORD *)(v9 + 56),
          Door::__Callback,
          this,
          Door::__EventCallback,
          this);
        VisualObject::ApplyMeshBox(v9);
      }
      if ( *((_BYTE *)this + 933) )
      {
        v11 = (PhysicalWorld *)dword_99F770;
        v12 = (PhysicalObject *)operator new(0x28u, 0);
        PhysicalObject::PhysicalObject(v12, v11, this, 1, 0, 0, 0, 0, 2u, 0xFFFFu, 1);
        *(_DWORD *)v12 = off_968F88;
        GameObject::SetPhysicalObject(this, v12, 0);
      }
      v10 = *((_DWORD *)this + 232);
      if ( v10 != -1 )
      {
        if ( VoxSoundManager::s_instance )
        {
          VoxSoundManager::LoadSound(VoxSoundManager::s_instance, *(_DWORD *)(Arrays::Doors::members + 24 * v10 + 16));
          VoxSoundManager::LoadSound(
            VoxSoundManager::s_instance,
            *(_DWORD *)(Arrays::Doors::members + 24 * *((_DWORD *)this + 232) + 12));
        }
      }
    }
    else
    {
      (*(void (__fastcall **)(Door *))(*(_DWORD *)this + 64))(this);
    }
  }
}


// ===== 3e7ffc PropertyMap::AddProperty<bool>(char const*,bool &,bool) [clone] =====
_DWORD *__fastcall PropertyMap::AddProperty<bool>(PropertyMap *a1, char *a2, int a3)
{
  int v6; // r4

  v6 = operator new(0x24u, 0);
  *(_DWORD *)v6 = &off_95C5E8;
  std::string::string(v6 + 8, a2);
  *(_BYTE *)(v6 + 32) = 1;
  *(_DWORD *)(v6 + 4) = a3 - (_DWORD)a1;
  *(_DWORD *)v6 = &off_95C608;
  return PropertyMap::AddProperty(a1, a2, (Property *)v6);
}


// ===== 3e8088 Door::PopulateOutgoingNetStruct(bool) =====
int __fastcall Door::PopulateOutgoingNetStruct(int this, int a2)
{
  int v2; // r4
  int v3; // r3
  bool v4; // zf
  int v5; // r3

  v2 = this;
  if ( a2 )
  {
    v3 = *(_DWORD *)(this + 936);
    v4 = v3 == 1;
    if ( v3 != 1 )
      v4 = v3 == 3;
    v5 = v4;
    if ( *(unsigned __int8 *)(this + 1277) != v5 )
    {
      *(_BYTE *)(this + 1277) = v5;
      NetStructMember::SetChanged((NetStructMember *)(this + 1248));
    }
    return NetStruct::Resend((NetStruct *)(v2 + 944));
  }
  return this;
}


// ===== 3e80d4 Door::NetStructDoor::NetStructDoor(void) =====
Door::NetStructDoor *__fastcall Door::NetStructDoor::NetStructDoor(Door::NetStructDoor *this)
{
  int v2; // r2
  int v3; // r3
  int v4; // r3

  NetStruct::NetStruct(this);
  v2 = *((unsigned __int8 *)this + 333);
  *((_QWORD *)this + 39) = 0;
  *(_DWORD *)this = off_9670A8;
  *((_DWORD *)this + 77) = 1;
  *((_DWORD *)this + 81) = -1;
  *((_DWORD *)this + 76) = &off_963700;
  *((_DWORD *)this + 80) = -1;
  *((_DWORD *)this + 82) = 0;
  *((_BYTE *)this + 332) = 0;
  if ( v2 )
  {
    *((_BYTE *)this + 333) = 0;
    NetStructMember::SetChanged((Door::NetStructDoor *)((char *)this + 304));
  }
  v3 = *((unsigned __int8 *)this + 365);
  *((_QWORD *)this + 43) = 0;
  *((_DWORD *)this + 76) = &off_9636D0;
  *((_DWORD *)this + 85) = 1;
  *((_DWORD *)this + 89) = -1;
  *((_DWORD *)this + 84) = &off_963700;
  *((_DWORD *)this + 88) = -1;
  *((_DWORD *)this + 90) = 0;
  *((_BYTE *)this + 364) = 0;
  if ( v3 )
  {
    *((_BYTE *)this + 365) = 0;
    NetStructMember::SetChanged((Door::NetStructDoor *)((char *)this + 336));
  }
  v4 = *((unsigned __int8 *)this + 397);
  *((_QWORD *)this + 47) = 0;
  *((_DWORD *)this + 84) = &off_9636D0;
  *((_DWORD *)this + 93) = 1;
  *((_DWORD *)this + 97) = -1;
  *((_DWORD *)this + 92) = &off_963700;
  *((_DWORD *)this + 96) = -1;
  *((_DWORD *)this + 98) = 0;
  *((_BYTE *)this + 396) = 0;
  if ( v4 )
  {
    *((_BYTE *)this + 397) = 0;
    NetStructMember::SetChanged((Door::NetStructDoor *)((char *)this + 368));
  }
  *((_DWORD *)this + 92) = &off_9636D0;
  NetStruct::DeclareMember(this, (Door::NetStructDoor *)((char *)this + 304));
  NetStruct::DeclareMember(this, (Door::NetStructDoor *)((char *)this + 336));
  NetStruct::DeclareMember(this, (Door::NetStructDoor *)((char *)this + 368));
  return this;
}


// ===== 3e8274 Door::Door(ObjectBase::GO_IDS) =====
int __fastcall Door::Door(int a1, int a2)
{
  Zone::Zone(a1, a2, 0, 1);
  *(_DWORD *)(a1 + 920) = a1 + 904;
  *(_DWORD *)a1 = off_9670F8;
  *(_DWORD *)(a1 + 4) = &off_9671D8;
  *(_DWORD *)(a1 + 36) = off_9671E4;
  *(_DWORD *)(a1 + 924) = a1 + 904;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block(a1 + 904, 0x10u);
  **(_BYTE **)(a1 + 920) = 0;
  *(_BYTE *)(a1 + 940) = 0;
  *(_BYTE *)(a1 + 932) = 0;
  *(_DWORD *)(a1 + 936) = 0;
  *(_BYTE *)(a1 + 933) = 1;
  Door::NetStructDoor::NetStructDoor((Door::NetStructDoor *)(a1 + 944));
  Door::NetStructDoor::NetStructDoor((Door::NetStructDoor *)(a1 + 1344));
  *(_BYTE *)(a1 + 40) = 1;
  *(_DWORD *)(a1 + 256) = a1 + 944;
  *(_DWORD *)(a1 + 260) = a1 + 1344;
  *(_BYTE *)(a1 + 248) = 3;
  return a1;
}


// ===== 3e8324 Door::Door(ObjectBase::GO_IDS) =====
int __fastcall Door::Door(int a1, int a2)
{
  Zone::Zone(a1, a2, 0, 1);
  *(_DWORD *)(a1 + 920) = a1 + 904;
  *(_DWORD *)a1 = off_9670F8;
  *(_DWORD *)(a1 + 4) = &off_9671D8;
  *(_DWORD *)(a1 + 36) = off_9671E4;
  *(_DWORD *)(a1 + 924) = a1 + 904;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block(a1 + 904, 0x10u);
  **(_BYTE **)(a1 + 920) = 0;
  *(_BYTE *)(a1 + 940) = 0;
  *(_BYTE *)(a1 + 932) = 0;
  *(_DWORD *)(a1 + 936) = 0;
  *(_BYTE *)(a1 + 933) = 1;
  Door::NetStructDoor::NetStructDoor((Door::NetStructDoor *)(a1 + 944));
  Door::NetStructDoor::NetStructDoor((Door::NetStructDoor *)(a1 + 1344));
  *(_BYTE *)(a1 + 40) = 1;
  *(_DWORD *)(a1 + 256) = a1 + 944;
  *(_DWORD *)(a1 + 260) = a1 + 1344;
  *(_BYTE *)(a1 + 248) = 3;
  return a1;
}


// ===== 3e83d4 Door::NetStructDoor::~NetStructDoor() =====
void __fastcall Door::NetStructDoor::~NetStructDoor(Door::NetStructDoor *this)
{
  int v2; // r0

  v2 = *((_DWORD *)this + 71);
  *((_DWORD *)this + 76) = &off_963648;
  *(_DWORD *)this = off_9924D8;
  *((_DWORD *)this + 92) = &off_963648;
  *((_DWORD *)this + 84) = &off_963648;
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


// ===== 3e8450 Door::__EventCallback(glitch::collada::STriggeredEvent const&,void *) =====
int __fastcall Door::__EventCallback(int a1, Door *a2)
{
  const char *v4; // r5
  int result; // r0
  std::string v6; // [sp+4h] [bp-20h] BYREF

  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string((int)&v6, "isTracingDoor");
  DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v6);
  if ( (std::string *)v6._M_start_of_storage._M_data != &v6 && v6._M_start_of_storage._M_data )
  {
    if ( (unsigned int)(v6._M_buffers._M_end_of_storage - v6._M_start_of_storage._M_data) > 0x80 )
      CustomFree(v6._M_start_of_storage._M_data);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(
        v6._M_start_of_storage._M_data,
        v6._M_buffers._M_end_of_storage - v6._M_start_of_storage._M_data);
  }
  v4 = *(const char **)(a1 + 4);
  if ( !LC_API_STRCMP_0(v4, "opened") )
    return Door::Opened(a2, 1);
  result = LC_API_STRCMP_0(v4, "closed");
  if ( !result )
    return Door::Closed(a2, 1);
  return result;
}


// ===== 3e8568 Door::__Callback(glitch::scene::ITimelineController *,void *) =====
void __fastcall Door::__Callback(Door *this, glitch::scene::ITimelineController *a2, void *a3)
{
  int v4; // r3
  std::string v5; // [sp+4h] [bp-1Ch] BYREF

  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string((int)&v5, "isTracingDoor");
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
  v4 = *((_DWORD *)a2 + 234);
  *((_BYTE *)a2 + 133) = 1;
  *((_BYTE *)a2 + 940) = 0;
  if ( v4 == 2 )
  {
    Door::Closed(a2, 0);
  }
  else if ( v4 == 3 )
  {
    Door::Opened(a2, 0);
  }
}


// ===== 3e8658 Door::~Door() =====
void __fastcall Door::~Door(Door *this)
{
  bool v2; // zf
  int v3; // r1
  Door *v4; // r0
  size_t v5; // r1

  v2 = *((_DWORD *)this + 407) == 0;
  *(_DWORD *)this = off_9670F8;
  *((_DWORD *)this + 1) = &off_9671D8;
  *((_DWORD *)this + 9) = off_9671E4;
  *((_DWORD *)this + 412) = &off_963648;
  *((_DWORD *)this + 336) = off_9924D8;
  *((_DWORD *)this + 428) = &off_963648;
  *((_DWORD *)this + 420) = &off_963648;
  if ( !v2 )
  {
    std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,std::map<int,NetStruct::tPacketHistory>>,std::priv::_Select1st<std::pair<int const,std::map<int,NetStruct::tPacketHistory>>>,std::priv::_MapTraitsT<std::pair<int const,std::map<int,NetStruct::tPacketHistory>>>,std::allocator<std::pair<int const,std::map<int,NetStruct::tPacketHistory>>>>::_M_erase(
      (int)this + 1612,
      *((_DWORD *)this + 404));
    *((_DWORD *)this + 405) = (char *)this + 1612;
    *((_DWORD *)this + 404) = 0;
    *((_DWORD *)this + 406) = (char *)this + 1612;
    *((_DWORD *)this + 407) = 0;
  }
  v3 = *((_DWORD *)this + 307);
  *((_DWORD *)this + 312) = &off_963648;
  *((_DWORD *)this + 236) = off_9924D8;
  *((_DWORD *)this + 328) = &off_963648;
  *((_DWORD *)this + 320) = &off_963648;
  if ( v3 )
  {
    std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,std::map<int,NetStruct::tPacketHistory>>,std::priv::_Select1st<std::pair<int const,std::map<int,NetStruct::tPacketHistory>>>,std::priv::_MapTraitsT<std::pair<int const,std::map<int,NetStruct::tPacketHistory>>>,std::allocator<std::pair<int const,std::map<int,NetStruct::tPacketHistory>>>>::_M_erase(
      (int)this + 1212,
      *((_DWORD *)this + 304));
    *((_DWORD *)this + 305) = (char *)this + 1212;
    *((_DWORD *)this + 304) = 0;
    *((_DWORD *)this + 306) = (char *)this + 1212;
    *((_DWORD *)this + 307) = 0;
  }
  v4 = *((Door **)this + 231);
  if ( v4 == (Door *)((char *)this + 904) || !v4 )
    goto LABEL_9;
  v5 = *((_DWORD *)this + 226) - (_DWORD)v4;
  if ( v5 <= 0x80 )
  {
    __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v4, v5);
LABEL_9:
    Zone::~Zone(this);
    return;
  }
  CustomFree(v4);
  Zone::~Zone(this);
}


// ===== 3e8798 Door::NetStructDoor::~NetStructDoor() =====
void __fastcall Door::NetStructDoor::~NetStructDoor(Door::NetStructDoor *this)
{
  int v2; // r0

  v2 = *((_DWORD *)this + 71);
  *((_DWORD *)this + 76) = &off_963648;
  *(_DWORD *)this = off_9924D8;
  *((_DWORD *)this + 92) = &off_963648;
  *((_DWORD *)this + 84) = &off_963648;
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
  CustomFree(this);
}


// ===== 3e881c `non-virtual thunk to'Door::~Door() =====
void __fastcall `non-virtual thunk to'Door::~Door(Door *this)
{
  Door::~Door((Door *)((char *)this - 36));
}


// ===== 3e8824 Door::~Door() =====
void __fastcall Door::~Door(Door *this)
{
  bool v2; // zf
  int v3; // r1
  Door *v4; // r0
  size_t v5; // r1

  v2 = *((_DWORD *)this + 407) == 0;
  *(_DWORD *)this = off_9670F8;
  *((_DWORD *)this + 1) = &off_9671D8;
  *((_DWORD *)this + 9) = off_9671E4;
  *((_DWORD *)this + 412) = &off_963648;
  *((_DWORD *)this + 336) = off_9924D8;
  *((_DWORD *)this + 428) = &off_963648;
  *((_DWORD *)this + 420) = &off_963648;
  if ( !v2 )
  {
    std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,std::map<int,NetStruct::tPacketHistory>>,std::priv::_Select1st<std::pair<int const,std::map<int,NetStruct::tPacketHistory>>>,std::priv::_MapTraitsT<std::pair<int const,std::map<int,NetStruct::tPacketHistory>>>,std::allocator<std::pair<int const,std::map<int,NetStruct::tPacketHistory>>>>::_M_erase(
      (int)this + 1612,
      *((_DWORD *)this + 404));
    *((_DWORD *)this + 405) = (char *)this + 1612;
    *((_DWORD *)this + 404) = 0;
    *((_DWORD *)this + 406) = (char *)this + 1612;
    *((_DWORD *)this + 407) = 0;
  }
  v3 = *((_DWORD *)this + 307);
  *((_DWORD *)this + 312) = &off_963648;
  *((_DWORD *)this + 236) = off_9924D8;
  *((_DWORD *)this + 328) = &off_963648;
  *((_DWORD *)this + 320) = &off_963648;
  if ( v3 )
  {
    std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,std::map<int,NetStruct::tPacketHistory>>,std::priv::_Select1st<std::pair<int const,std::map<int,NetStruct::tPacketHistory>>>,std::priv::_MapTraitsT<std::pair<int const,std::map<int,NetStruct::tPacketHistory>>>,std::allocator<std::pair<int const,std::map<int,NetStruct::tPacketHistory>>>>::_M_erase(
      (int)this + 1212,
      *((_DWORD *)this + 304));
    *((_DWORD *)this + 305) = (char *)this + 1212;
    *((_DWORD *)this + 304) = 0;
    *((_DWORD *)this + 306) = (char *)this + 1212;
    *((_DWORD *)this + 307) = 0;
  }
  v4 = *((Door **)this + 231);
  if ( v4 == (Door *)((char *)this + 904) || !v4 )
    goto LABEL_9;
  v5 = *((_DWORD *)this + 226) - (_DWORD)v4;
  if ( v5 <= 0x80 )
  {
    __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v4, v5);
LABEL_9:
    Zone::~Zone(this);
    return;
  }
  CustomFree(v4);
  Zone::~Zone(this);
}


// ===== 3e8964 `non-virtual thunk to'Door::~Door() =====
void __fastcall `non-virtual thunk to'Door::~Door(Door *this)
{
  Door::~Door((Door *)((char *)this - 36));
}


// ===== 3e896c Door::~Door() =====
void __fastcall Door::~Door(Door *this)
{
  Door::~Door(this);
  CustomFree(this);
}


// ===== 3e8988 `non-virtual thunk to'Door::DeclareProperties(void) =====
int __fastcall `non-virtual thunk to'Door::DeclareProperties(Door *this)
{
  return Door::DeclareProperties((Door *)((char *)this - 4));
}


// ===== 3e8990 Door::DeclareProperties(void) =====
int __fastcall Door::DeclareProperties(Door *this)
{
  int v2; // r5
  char *v3; // r6
  char *v4; // r9
  std::string v6; // [sp+4h] [bp-18h] BYREF
  _DWORD v7[4]; // [sp+1Ch] [bp+0h] BYREF
  char *v8; // [sp+2Ch] [bp+10h]
  void *p; // [sp+30h] [bp+14h]

  Zone::DeclareProperties(this);
  v8 = (char *)v7;
  p = v7;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block((int)v7, 0x10u);
  *v8 = 0;
  v6._M_finish = (char *)&v6;
  v6._M_start_of_storage._M_data = (char *)&v6;
  std::string::_M_range_initialize(&v6, (const char *)p, v8);
  v2 = operator new(0x38u, 0);
  *(_DWORD *)v2 = &off_95C5E8;
  std::string::string(v2 + 8, "data");
  v3 = (char *)this + 4;
  *(_DWORD *)(v2 + 4) = 900;
  *(_DWORD *)v2 = &off_95C5C8;
  *(_DWORD *)(v2 + 48) = v2 + 32;
  *(_DWORD *)(v2 + 52) = v2 + 32;
  std::string::_M_range_initialize((std::string *)(v2 + 32), v6._M_start_of_storage._M_data, v6._M_finish);
  PropertyMap::AddProperty((Door *)((char *)this + 4), "data", (Property *)v2);
  if ( (std::string *)v6._M_start_of_storage._M_data != &v6 && v6._M_start_of_storage._M_data )
  {
    if ( (unsigned int)(v6._M_buffers._M_end_of_storage - v6._M_start_of_storage._M_data) > 0x80 )
      CustomFree(v6._M_start_of_storage._M_data);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(
        v6._M_start_of_storage._M_data,
        v6._M_buffers._M_end_of_storage - v6._M_start_of_storage._M_data);
  }
  if ( p != v7 && p )
  {
    if ( (unsigned int)(v7[0] - (_DWORD)p) > 0x80 )
      CustomFree(p);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(p, v7[0] - (_DWORD)p);
  }
  v4 = (char *)this + 932;
  PropertyMap::AddProperty<bool>(v3, "opened", v4);
  return PropertyMap::AddProperty<bool>(v3, "door_collision", v4 + 1);
}


// ===== 3e8b3c SpawnGroupManager::SpawnGroupManager(void) =====
void __fastcall SpawnGroupManager::SpawnGroupManager(SpawnGroupManager *this)
{
  *((_DWORD *)this + 2) = 0;
  *(_DWORD *)this = off_967200;
  *((_BYTE *)this + 4) = 0;
  *((_DWORD *)this + 4) = (char *)this + 4;
  *((_DWORD *)this + 5) = 0;
  *((_DWORD *)this + 3) = (char *)this + 4;
}


// ===== 3e8b84 SpawnGroupManager::SpawnGroupManager(void) =====
void __fastcall SpawnGroupManager::SpawnGroupManager(SpawnGroupManager *this)
{
  *((_DWORD *)this + 2) = 0;
  *(_DWORD *)this = off_967200;
  *((_BYTE *)this + 4) = 0;
  *((_DWORD *)this + 4) = (char *)this + 4;
  *((_DWORD *)this + 5) = 0;
  *((_DWORD *)this + 3) = (char *)this + 4;
}


// ===== 3e8bcc Arrays::GetMemberIDByString<Arrays::SpawnGroups>(char const*) =====
int __fastcall Arrays::GetMemberIDByString<Arrays::SpawnGroups>(char *a1)
{
  int v2; // r5
  int v3; // r4
  int v4; // r7

  v2 = Arrays::SpawnGroups::size;
  if ( !Arrays::SpawnGroups::size )
    return -1;
  v3 = 0;
  v4 = Arrays::SpawnGroups::m_memberNames;
  while ( LC_API_STRCMP_0(a1, *(const char **)(v4 + 4 * v3)) )
  {
    if ( ++v3 == v2 )
      return -1;
  }
  return v3;
}


// ===== 3e8c40 SpawnGroupManager::GetGroup(char const*) =====
SpawnGroupManager *__fastcall SpawnGroupManager::GetGroup(SpawnGroupManager *this, const char *a2, char *a3)
{
  int v5; // r0
  const char *v6; // r3
  _DWORD *v7; // r2
  const char *v8; // r5
  const char *v9; // r1
  int v10; // r2
  bool v11; // cc
  const char *v12; // r2

  v5 = Arrays::GetMemberIDByString<Arrays::SpawnGroups>(a3);
  v6 = *((const char **)a2 + 2);
  if ( v6 )
  {
    v7 = *((_DWORD **)a2 + 2);
    do
    {
      if ( v5 > v7[4] )
        v7 = (_DWORD *)v7[3];
      else
        v7 = (_DWORD *)v7[2];
    }
    while ( v7 );
    v8 = a2 + 4;
    v9 = v8;
    while ( 1 )
    {
      v10 = *((_DWORD *)v6 + 4);
      v11 = v5 <= v10;
      if ( v5 <= v10 )
        v12 = *((const char **)v6 + 2);
      else
        v12 = *((const char **)v6 + 3);
      if ( !v11 )
        v6 = v9;
      v9 = v6;
      if ( !v12 )
        break;
      v6 = v12;
    }
    if ( v8 != v6 && v5 < *((_DWORD *)v6 + 4) )
      v6 = v8;
  }
  else
  {
    v6 = a2 + 4;
  }
  *(_DWORD *)this = v6;
  return this;
}


// ===== 3e8cd0 `global constructor keyed to'.._.._sources_Game_Objects_Spawns_SpawnGroupManager.cpp =====
int `global constructor keyed to'.._.._sources_Game_Objects_Spawns_SpawnGroupManager.cpp()
{
  int result; // r0

  result = `guard variable for'Singleton<PlayerStatManager>::s_inst;
  dword_9A304C = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9A3048 = 1056964608;
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


// ===== 3e8dac Random::GetRandom(int,bool) [clone] =====
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


// ===== 3e8e40 std::allocator<SpawnSpot *>::_M_allocate(uint,uint &) =====
void *__fastcall std::allocator<SpawnSpot *>::_M_allocate(int a1, unsigned int a2, size_t *a3)
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


// ===== 3e8eb0 std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,SpawnGroupManager::GroupInfo>,std::priv::_Select1st<std::pair<int const,SpawnGroupManager::GroupInfo>>,std::priv::_MapTraitsT<std::pair<int const,SpawnGroupManager::GroupInfo>>,std::allocator<std::pair<int const,SpawnGroupManager::GroupInfo>>>::_M_erase(std::priv::_Rb_tree_node_base *) =====
void __fastcall std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,SpawnGroupManager::GroupInfo>,std::priv::_Select1st<std::pair<int const,SpawnGroupManager::GroupInfo>>,std::priv::_MapTraitsT<std::pair<int const,SpawnGroupManager::GroupInfo>>,std::allocator<std::pair<int const,SpawnGroupManager::GroupInfo>>>::_M_erase(
        int a1,
        _DWORD *a2)
{
  _DWORD *v2; // r6
  _DWORD *v4; // r3
  _DWORD *v5; // r5
  _DWORD *v6; // r7
  _DWORD *i; // r0
  _DWORD *v8; // r4

  v2 = a2;
  if ( a2 )
  {
    do
    {
      std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,SpawnGroupManager::GroupInfo>,std::priv::_Select1st<std::pair<int const,SpawnGroupManager::GroupInfo>>,std::priv::_MapTraitsT<std::pair<int const,SpawnGroupManager::GroupInfo>>,std::allocator<std::pair<int const,SpawnGroupManager::GroupInfo>>>::_M_erase(
        a1,
        v2[3]);
      v4 = (_DWORD *)v2[5];
      v5 = v2 + 5;
      v6 = (_DWORD *)v2[2];
      if ( v4 != v2 + 5 )
      {
        for ( i = (_DWORD *)v2[5]; ; i = v8 )
        {
          v8 = (_DWORD *)*i;
          __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(i, 0xCu);
          if ( v8 == v5 )
            break;
        }
        v4 = v2 + 5;
      }
      v2[6] = v4;
      *v5 = v4;
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v2, 0x20u);
      v2 = v6;
    }
    while ( v6 );
  }
}


// ===== 3e8f24 SpawnGroupManager::~SpawnGroupManager() =====
void __fastcall SpawnGroupManager::~SpawnGroupManager(SpawnGroupManager *this)
{
  int v1; // r1
  char *v3; // r5

  v1 = *((_DWORD *)this + 5);
  *(_DWORD *)this = off_967200;
  if ( v1 )
  {
    v3 = (char *)this + 4;
    std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,SpawnGroupManager::GroupInfo>,std::priv::_Select1st<std::pair<int const,SpawnGroupManager::GroupInfo>>,std::priv::_MapTraitsT<std::pair<int const,SpawnGroupManager::GroupInfo>>,std::allocator<std::pair<int const,SpawnGroupManager::GroupInfo>>>::_M_erase(
      (int)this + 4,
      *((_DWORD **)this + 2));
    *((_DWORD *)this + 4) = v3;
    *((_DWORD *)this + 5) = 0;
    *((_DWORD *)this + 3) = v3;
    *((_DWORD *)this + 2) = 0;
  }
}


// ===== 3e8f84 SpawnGroupManager::~SpawnGroupManager() =====
void __fastcall SpawnGroupManager::~SpawnGroupManager(SpawnGroupManager *this)
{
  SpawnGroupManager::~SpawnGroupManager(this);
  CustomFree(this);
}


// ===== 3e8fa0 SpawnGroupManager::~SpawnGroupManager() =====
void __fastcall SpawnGroupManager::~SpawnGroupManager(SpawnGroupManager *this)
{
  int v1; // r1
  char *v3; // r5

  v1 = *((_DWORD *)this + 5);
  *(_DWORD *)this = off_967200;
  if ( v1 )
  {
    v3 = (char *)this + 4;
    std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,SpawnGroupManager::GroupInfo>,std::priv::_Select1st<std::pair<int const,SpawnGroupManager::GroupInfo>>,std::priv::_MapTraitsT<std::pair<int const,SpawnGroupManager::GroupInfo>>,std::allocator<std::pair<int const,SpawnGroupManager::GroupInfo>>>::_M_erase(
      (int)this + 4,
      *((_DWORD **)this + 2));
    *((_DWORD *)this + 4) = v3;
    *((_DWORD *)this + 5) = 0;
    *((_DWORD *)this + 3) = v3;
    *((_DWORD *)this + 2) = 0;
  }
}


// ===== 3e9000 std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,SpawnGroupManager::GroupInfo>,std::priv::_Select1st<std::pair<int const,SpawnGroupManager::GroupInfo>>,std::priv::_MapTraitsT<std::pair<int const,SpawnGroupManager::GroupInfo>>,std::allocator<std::pair<int const,SpawnGroupManager::GroupInfo>>>::erase(std::priv::_Rb_tree_iterator<std::pair<int const,SpawnGroupManager::GroupInfo>,std::priv::_MapTraitsT<std::pair<int const,SpawnGroupManager::GroupInfo>>>) =====
void __fastcall std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,SpawnGroupManager::GroupInfo>,std::priv::_Select1st<std::pair<int const,SpawnGroupManager::GroupInfo>>,std::priv::_MapTraitsT<std::pair<int const,SpawnGroupManager::GroupInfo>>,std::allocator<std::pair<int const,SpawnGroupManager::GroupInfo>>>::erase(
        int a1,
        unsigned __int8 **a2)
{
  unsigned __int8 *v3; // r7
  unsigned __int8 *v4; // r0
  unsigned __int8 *v5; // r5

  v3 = std::priv::_Rb_global<bool>::_Rebalance_for_erase(
         *a2,
         (unsigned __int8 **)(a1 + 4),
         (unsigned __int8 **)(a1 + 8),
         (unsigned __int8 **)(a1 + 12));
  v4 = *((unsigned __int8 **)v3 + 5);
  if ( v4 != v3 + 20 )
  {
    while ( 1 )
    {
      v5 = *(unsigned __int8 **)v4;
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v4, 0xCu);
      if ( v5 == v3 + 20 )
        break;
      v4 = v5;
    }
    v4 = v3 + 20;
  }
  *((_DWORD *)v3 + 5) = v4;
  *((_DWORD *)v3 + 6) = v4;
  if ( v3 )
    __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v3, 0x20u);
  --*(_DWORD *)(a1 + 16);
}


// ===== 3e907c SpawnGroupManager::DelSpawn(SpawnSpot *) =====
void __fastcall SpawnGroupManager::DelSpawn(int a1, int a2)
{
  int v4; // r0
  int v5; // r6
  int v6; // r5
  int v7; // r2
  int v8; // r3
  bool v9; // cc
  int v10; // r3
  _DWORD *v11; // r0
  _DWORD *v12; // r7
  _DWORD *v13; // r8
  _DWORD *v14; // r3
  _DWORD *v15; // r3
  unsigned __int8 *v16; // [sp+Ch] [bp-4h] BYREF

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
        "ss",
        "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Objects\\Spawns\\SpawnGroupManager.cpp",
        263);
    }
  }
  v4 = Arrays::GetMemberIDByString<Arrays::SpawnGroups>(*(char **)(a2 + 904));
  if ( v4 != -1 )
  {
    v5 = *(_DWORD *)(a1 + 8);
    v6 = a1 + 4;
    if ( !v5 )
    {
LABEL_23:
      v5 = v6;
LABEL_14:
      if ( v6 != v5 )
      {
        v12 = (_DWORD *)(v5 + 20);
        v11 = *(_DWORD **)(v5 + 20);
        if ( (_DWORD *)(v5 + 20) != v11 )
        {
          do
          {
            v13 = (_DWORD *)*v11;
            if ( v11[2] == a2 )
            {
              v15 = (_DWORD *)v11[1];
              *v15 = v13;
              v13[1] = v15;
              __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v11, 0xCu);
              v11 = v13;
            }
            else
            {
              v11 = (_DWORD *)*v11;
            }
          }
          while ( v12 != v11 );
        }
        v14 = *(_DWORD **)(v5 + 20);
        if ( v12 == v14 )
        {
          v16 = (unsigned __int8 *)v5;
          std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,SpawnGroupManager::GroupInfo>,std::priv::_Select1st<std::pair<int const,SpawnGroupManager::GroupInfo>>,std::priv::_MapTraitsT<std::pair<int const,SpawnGroupManager::GroupInfo>>,std::allocator<std::pair<int const,SpawnGroupManager::GroupInfo>>>::erase(
            v6,
            &v16);
        }
        else
        {
          do
            v14 = (_DWORD *)*v14;
          while ( v12 != v14 );
        }
      }
      return;
    }
    v7 = v6;
    while ( 1 )
    {
      v8 = *(_DWORD *)(v5 + 16);
      v9 = v4 <= v8;
      if ( v4 <= v8 )
        v10 = *(_DWORD *)(v5 + 8);
      else
        v10 = *(_DWORD *)(v5 + 12);
      if ( !v9 )
        v5 = v7;
      v7 = v5;
      if ( !v10 )
        break;
      v5 = v10;
    }
    if ( v6 != v5 )
    {
      if ( v4 >= *(_DWORD *)(v5 + 16) )
        goto LABEL_14;
      goto LABEL_23;
    }
  }
}


// ===== 3e91f0 std::string::string(char const*,std::allocator<char> const&) [clone] =====
int __fastcall std::string::string(int a1)
{
  _BYTE *v2; // r0

  *(_DWORD *)(a1 + 16) = a1;
  *(_DWORD *)(a1 + 20) = a1;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block((_DWORD *)a1, 0x1Bu);
  v2 = memcpy(*(void **)(a1 + 20), "isTracingSpawnGroupManager", 0x1Au);
  *(_DWORD *)(a1 + 16) = v2 + 26;
  v2[26] = 0;
  return a1;
}


// ===== 3e9238 SpawnGroupManager::update(double) =====
void __fastcall SpawnGroupManager::update(SpawnGroupManager *this, double a2)
{
  char *v3; // r4
  char *v4; // r7
  int Dt; // r9
  int v6; // r3
  bool v7; // zf
  char *v8; // r2
  size_t v9; // r1
  int v10; // r3
  int v11; // r10
  int v12; // r12
  int v13; // r2
  int v14; // r3
  Random *v15; // r0
  int v16; // r1
  int Random; // r0
  int v18; // r1
  _DWORD *v19; // r11
  int v20; // r2
  _DWORD *v21; // r11
  int v22; // r3
  int v23; // r0
  char *v24; // r8
  char *v25; // r5
  char *v26; // r7
  char *v27; // r4
  unsigned int v28; // r2
  _BYTE *v29; // r4
  unsigned int v30; // r2
  unsigned int v31; // r3
  char *v32; // r0
  size_t v33; // r4
  char *v34; // r4
  SpawnSpot **v35; // r4
  size_t v36; // r1
  int v37; // r1
  unsigned int v38; // r2
  int v39; // r0
  char *v40; // r2
  int v41; // r10
  int v42; // r0
  SpawnSpot **v43; // r3
  SpawnSpot **v44; // r12
  SpawnSpot *v45; // r4
  int v46; // r0
  GameObject *v47; // r7
  std::string *v48; // r5
  _BYTE *v49; // r0
  char *v50; // r1
  char *s; // [sp+Ch] [bp-118h]
  char *v52; // [sp+30h] [bp-F4h]
  _BYTE v53[12]; // [sp+38h] [bp-ECh] BYREF
  void *__p; // [sp+44h] [bp-E0h]
  SpawnSpot **v55; // [sp+48h] [bp-DCh]
  char *v56; // [sp+4Ch] [bp-D8h] BYREF
  unsigned int v57; // [sp+50h] [bp-D4h] BYREF
  char v58[4]; // [sp+54h] [bp-D0h] BYREF
  char v59; // [sp+58h] [bp-CCh] BYREF
  char v60[4]; // [sp+5Ch] [bp-C8h] BYREF
  char v61[4]; // [sp+60h] [bp-C4h] BYREF
  char v62; // [sp+64h] [bp-C0h] BYREF
  char v63[4]; // [sp+68h] [bp-BCh] BYREF
  char v64[32]; // [sp+6Ch] [bp-B8h] BYREF
  std::string v65; // [sp+8Ch] [bp-98h] BYREF
  _BYTE v66[24]; // [sp+A4h] [bp-80h] BYREF
  std::string v67; // [sp+BCh] [bp-68h] BYREF
  std::string v68; // [sp+D4h] [bp-50h] BYREF
  _BYTE v69[24]; // [sp+ECh] [bp-38h] BYREF
  std::string v70; // [sp+104h] [bp-20h] BYREF

  v3 = *((char **)this + 3);
  v4 = (char *)this + 4;
  v56 = nullptr;
  __p = nullptr;
  v55 = nullptr;
  Dt = Application::GetDt((Application *)&Singleton<Application>::s_inst);
  while ( v4 != v3 )
  {
    while ( 1 )
    {
      v6 = *((_DWORD *)v3 + 7) - Dt;
      v7 = *((_DWORD *)v3 + 7) == Dt;
      *((_DWORD *)v3 + 7) = v6;
      if ( v6 < 0 || v7 )
      {
        DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
        std::string::string(&v70, v63);
        DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v70);
        if ( (std::string *)v70._M_start_of_storage._M_data != &v70 && v70._M_start_of_storage._M_data )
        {
          if ( (unsigned int)(v70._M_buffers._M_end_of_storage - v70._M_start_of_storage._M_data) > 0x80 )
            CustomFree(v70._M_start_of_storage._M_data);
          else
            __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(
              v70._M_start_of_storage._M_data,
              v70._M_buffers._M_end_of_storage - v70._M_start_of_storage._M_data);
        }
        v11 = Arrays::SpawnGroups::members + 20 * *((_DWORD *)v3 + 4);
        *((_DWORD *)v3 + 7) = *(_DWORD *)(v11 + 8);
        v12 = *(_DWORD *)(v11 + 12);
        if ( v12 )
        {
          v13 = *(_DWORD *)(v11 + 16);
          v14 = 0;
          v15 = nullptr;
          do
          {
            v16 = *(_DWORD *)(v13 + 8);
            ++v14;
            v15 = (Random *)((char *)v15 + v16);
            v13 += 16;
          }
          while ( v14 != v12 );
          if ( (int)v15 > 0 )
          {
            Random = Random::GetRandom(v15, v16, v13);
            v18 = *(_DWORD *)(v11 + 12);
            if ( v18 )
            {
              v19 = *(_DWORD **)(v11 + 16);
              v20 = Random - v19[2];
              if ( v20 >= 0 )
              {
                v21 = v19 + 4;
                v22 = 0;
                do
                {
                  if ( ++v22 == v18 )
                    goto LABEL_4;
                  v23 = v21[2];
                  v21 += 4;
                  v20 -= v23;
                }
                while ( v20 >= 0 );
                v19 = v21 - 4;
              }
              if ( v19 )
              {
                if ( !v19[3] )
                {
                  v48 = (std::string *)v69;
                  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
                  v49 = v69;
                  v50 = &v62;
                  goto LABEL_89;
                }
                v24 = v4;
                if ( __p != v55 )
                  v55 = (SpawnSpot **)__p;
                v25 = *((char **)v3 + 5);
                v26 = v3 + 20;
                s = v3;
                while ( v26 != v25 )
                {
                  if ( *(_BYTE *)(v11 + 4)
                    && (v29 = *((_BYTE **)v25 + 2), (*(int (__fastcall **)(_BYTE *))(*(_DWORD *)v29 + 196))(v29))
                    && v29[750] )
                  {
                    if ( !v29[752] )
                      goto LABEL_42;
                    v27 = (char *)v55;
                    if ( v55 == (SpawnSpot **)v56 )
                    {
LABEL_53:
                      v30 = (v27 - (_BYTE *)__p) >> 2;
                      if ( v30 )
                        v31 = 2 * v30;
                      else
                        v31 = 1;
                      if ( v31 > 0x3FFFFFFF || v30 > v31 )
                        v31 = 0x3FFFFFFF;
                      v57 = v31;
                      v32 = (char *)std::allocator<SpawnSpot *>::_M_allocate(&v56, v31, &v57);
                      v52 = v32;
                      v33 = v27 - (_BYTE *)__p;
                      if ( v33 )
                        v34 = (char *)memmove(v32, __p, v33) + v33;
                      else
                        v34 = v32;
                      *(_DWORD *)v34 = *((_DWORD *)v25 + 2);
                      v35 = (SpawnSpot **)(v34 + 4);
                      if ( __p )
                      {
                        v36 = (v56 - (_BYTE *)__p) & 0xFFFFFFFC;
                        if ( v36 > 0x80 )
                          CustomFree(__p);
                        else
                          __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(__p, v36);
                      }
                      v55 = v35;
                      __p = v52;
                      v56 = &v52[4 * v57];
                      v25 = *(char **)v25;
                      continue;
                    }
                  }
                  else
                  {
                    v27 = (char *)v55;
                    if ( v55 == (SpawnSpot **)v56 )
                      goto LABEL_53;
                  }
                  *(_DWORD *)v27 = *((_DWORD *)v25 + 2);
                  ++v55;
LABEL_42:
                  v25 = *(char **)v25;
                }
                v3 = s;
                v4 = v24;
                if ( !((unsigned int)((char *)v55 - (_BYTE *)__p) >> 2) )
                {
                  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
                  std::string::string(&v68, v61);
                  DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v68);
                  if ( (std::string *)v68._M_start_of_storage._M_data != &v68 && v68._M_start_of_storage._M_data )
                    std::__node_alloc::deallocate(
                      (std::__node_alloc *)v68._M_start_of_storage._M_data,
                      (void *)(v68._M_buffers._M_end_of_storage - v68._M_start_of_storage._M_data),
                      v28);
                  *((_DWORD *)s + 7) = 1000;
                  goto LABEL_4;
                }
                DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
                std::string::string(&v67, v60);
                DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v67);
                if ( (std::string *)v67._M_start_of_storage._M_data != &v67 && v67._M_start_of_storage._M_data )
                  std::__node_alloc::deallocate(
                    (std::__node_alloc *)v67._M_start_of_storage._M_data,
                    (void *)(v67._M_buffers._M_end_of_storage - v67._M_start_of_storage._M_data),
                    v38);
                if ( (int)v19[3] > 0 )
                {
                  v39 = ((char *)v55 - (_BYTE *)__p) >> 2;
                  if ( v39 )
                  {
                    v40 = v64;
                    v41 = 0;
                    while ( 1 )
                    {
                      v42 = Random::GetRandom((Random *)v39, v37, (bool)v40);
                      v43 = (SpawnSpot **)__p;
                      v44 = v55;
                      v45 = *((SpawnSpot **)__p + v42);
                      if ( v55 != __p )
                      {
                        while ( *v43 != v45 )
                        {
                          if ( ++v43 == v55 )
                            goto LABEL_80;
                        }
                        if ( v55 != v43 + 1 )
                        {
                          memmove(v43, v43 + 1, (char *)v55 - (char *)(v43 + 1));
                          v44 = v55;
                        }
                        v55 = v44 - 1;
                      }
LABEL_80:
                      sprintf(v64, "Spawn_%05u", ++SpawnGroupManager::update(double)::spawnUniqueId);
                      ObjectManager::Spawn((ObjectManager *)v53, (ObjectBase *)dword_99F764, "Character", v64, 1, 1);
                      v46 = ObjectHandle::operator Character *(v53);
                      v47 = (GameObject *)v46;
                      if ( !v46 )
                        goto LABEL_85;
                      Character::InitSpawned(v46, v19[1], (int)v45 + 352);
                      SpawnSpot::PlaceObject(v45, v47);
                      DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
                      std::string::string(&v65, v58);
                      DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v65);
                      if ( (std::string *)v65._M_start_of_storage._M_data == &v65 || !v65._M_start_of_storage._M_data )
                        goto LABEL_85;
                      if ( (unsigned int)(v65._M_buffers._M_end_of_storage - v65._M_start_of_storage._M_data) <= 0x80 )
                        break;
                      CustomFree(v65._M_start_of_storage._M_data);
                      if ( v19[3] <= ++v41 )
                      {
LABEL_91:
                        v3 = s;
                        v4 = v24;
                        goto LABEL_4;
                      }
LABEL_86:
                      LOBYTE(v40) = (_BYTE)v55;
                      v39 = ((char *)v55 - (_BYTE *)__p) >> 2;
                      if ( !v39 )
                      {
                        v3 = s;
                        v4 = v24;
                        goto LABEL_88;
                      }
                    }
                    __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(
                      v65._M_start_of_storage._M_data,
                      v65._M_buffers._M_end_of_storage - v65._M_start_of_storage._M_data);
LABEL_85:
                    if ( v19[3] <= ++v41 )
                      goto LABEL_91;
                    goto LABEL_86;
                  }
LABEL_88:
                  v48 = (std::string *)v66;
                  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
                  v49 = v66;
                  v50 = &v59;
LABEL_89:
                  std::string::string(v49, v50);
                  DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, v48);
                  std::string::~string(v48);
                }
              }
            }
          }
        }
      }
LABEL_4:
      v8 = *((char **)v3 + 3);
      if ( !v8 )
        break;
      while ( *((_DWORD *)v8 + 2) )
        v8 = *((char **)v8 + 2);
      v3 = v8;
      if ( v4 == v8 )
        goto LABEL_9;
    }
    v10 = *((_DWORD *)v3 + 1);
    if ( v3 == *(char **)(v10 + 12) )
    {
      do
      {
        v3 = (char *)v10;
        v10 = *(_DWORD *)(v10 + 4);
      }
      while ( v3 == *(char **)(v10 + 12) );
      v8 = *((char **)v3 + 3);
    }
    if ( (char *)v10 != v8 )
      v3 = (char *)v10;
  }
LABEL_9:
  if ( __p )
  {
    v9 = (v56 - (_BYTE *)__p) & 0xFFFFFFFC;
    if ( v9 > 0x80 )
      CustomFree(__p);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(__p, v9);
  }
}


// ===== 3e98fc std::allocator<std::priv::_List_node<SpawnSpot *>>::allocate(uint,void const*) [clone] =====
void *std::allocator<std::priv::_List_node<SpawnSpot *>>::allocate()
{
  size_t v1; // [sp+4h] [bp-8h] BYREF

  v1 = 12;
  return __ZNSt12__node_alloc11_M_allocateERj_veneer(&v1);
}


// ===== 3e991c std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,SpawnGroupManager::GroupInfo>,std::priv::_Select1st<std::pair<int const,SpawnGroupManager::GroupInfo>>,std::priv::_MapTraitsT<std::pair<int const,SpawnGroupManager::GroupInfo>>,std::allocator<std::pair<int const,SpawnGroupManager::GroupInfo>>>::_M_create_node(std::pair<int const,SpawnGroupManager::GroupInfo> const&) =====
_DWORD *__fastcall std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,SpawnGroupManager::GroupInfo>,std::priv::_Select1st<std::pair<int const,SpawnGroupManager::GroupInfo>>,std::priv::_MapTraitsT<std::pair<int const,SpawnGroupManager::GroupInfo>>,std::allocator<std::pair<int const,SpawnGroupManager::GroupInfo>>>::_M_create_node(
        int a1,
        int *a2)
{
  _DWORD *v3; // r0
  int v4; // r3
  _DWORD *v5; // r4
  int *v6; // r5
  _DWORD *i; // r7
  _DWORD *v8; // r0
  _DWORD *v9; // r3
  int v10; // r2
  size_t v12; // [sp+4h] [bp-4h] BYREF

  v12 = 32;
  v3 = __ZNSt12__node_alloc11_M_allocateERj_veneer(&v12);
  v4 = *a2;
  v5 = v3 + 5;
  v3[5] = v3 + 5;
  v3[4] = v4;
  v3[6] = v3 + 5;
  v6 = (int *)a2[1];
  for ( i = v3; a2 + 1 != v6; v6 = (int *)*v6 )
  {
    v8 = std::allocator<std::priv::_List_node<SpawnSpot *>>::allocate();
    v8[2] = v6[2];
    v9 = (_DWORD *)v5[1];
    *v8 = v5;
    v8[1] = v9;
    *v9 = v8;
    v5[1] = v8;
  }
  v10 = a2[3];
  i[3] = 0;
  i[7] = v10;
  i[2] = 0;
  return i;
}


// ===== 3e99b0 std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,SpawnGroupManager::GroupInfo>,std::priv::_Select1st<std::pair<int const,SpawnGroupManager::GroupInfo>>,std::priv::_MapTraitsT<std::pair<int const,SpawnGroupManager::GroupInfo>>,std::allocator<std::pair<int const,SpawnGroupManager::GroupInfo>>>::_M_insert(std::priv::_Rb_tree_node_base *,std::pair<int const,SpawnGroupManager::GroupInfo> const&,std::priv::_Rb_tree_node_base *,std::priv::_Rb_tree_node_base *) =====
_DWORD *__fastcall std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,SpawnGroupManager::GroupInfo>,std::priv::_Select1st<std::pair<int const,SpawnGroupManager::GroupInfo>>,std::priv::_MapTraitsT<std::pair<int const,SpawnGroupManager::GroupInfo>>,std::allocator<std::pair<int const,SpawnGroupManager::GroupInfo>>>::_M_insert(
        _DWORD *a1,
        _DWORD *a2,
        _DWORD *a3,
        int *a4,
        int a5,
        int a6)
{
  _DWORD *v9; // r0
  _DWORD *node; // r7
  _DWORD *v12; // r0

  if ( a2 == a3 )
  {
    node = std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,SpawnGroupManager::GroupInfo>,std::priv::_Select1st<std::pair<int const,SpawnGroupManager::GroupInfo>>,std::priv::_MapTraitsT<std::pair<int const,SpawnGroupManager::GroupInfo>>,std::allocator<std::pair<int const,SpawnGroupManager::GroupInfo>>>::_M_create_node(
             (int)a2,
             a4);
    a2[2] = node;
    a2[1] = node;
    a2[3] = node;
  }
  else if ( a6 || !a5 && *a4 >= a3[4] )
  {
    v9 = std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,SpawnGroupManager::GroupInfo>,std::priv::_Select1st<std::pair<int const,SpawnGroupManager::GroupInfo>>,std::priv::_MapTraitsT<std::pair<int const,SpawnGroupManager::GroupInfo>>,std::allocator<std::pair<int const,SpawnGroupManager::GroupInfo>>>::_M_create_node(
           (int)a2,
           a4);
    a3[3] = v9;
    node = v9;
    if ( a3 == (_DWORD *)a2[3] )
      a2[3] = v9;
  }
  else
  {
    v12 = std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,SpawnGroupManager::GroupInfo>,std::priv::_Select1st<std::pair<int const,SpawnGroupManager::GroupInfo>>,std::priv::_MapTraitsT<std::pair<int const,SpawnGroupManager::GroupInfo>>,std::allocator<std::pair<int const,SpawnGroupManager::GroupInfo>>>::_M_create_node(
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


// ===== 3e9a88 std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,SpawnGroupManager::GroupInfo>,std::priv::_Select1st<std::pair<int const,SpawnGroupManager::GroupInfo>>,std::priv::_MapTraitsT<std::pair<int const,SpawnGroupManager::GroupInfo>>,std::allocator<std::pair<int const,SpawnGroupManager::GroupInfo>>>::insert_unique(std::pair<int const,SpawnGroupManager::GroupInfo> const&) =====
int __fastcall std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,SpawnGroupManager::GroupInfo>,std::priv::_Select1st<std::pair<int const,SpawnGroupManager::GroupInfo>>,std::priv::_MapTraitsT<std::pair<int const,SpawnGroupManager::GroupInfo>>,std::allocator<std::pair<int const,SpawnGroupManager::GroupInfo>>>::insert_unique(
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
    std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,SpawnGroupManager::GroupInfo>,std::priv::_Select1st<std::pair<int const,SpawnGroupManager::GroupInfo>>,std::priv::_MapTraitsT<std::pair<int const,SpawnGroupManager::GroupInfo>>,std::allocator<std::pair<int const,SpawnGroupManager::GroupInfo>>>::_M_insert(
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
      std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,SpawnGroupManager::GroupInfo>,std::priv::_Select1st<std::pair<int const,SpawnGroupManager::GroupInfo>>,std::priv::_MapTraitsT<std::pair<int const,SpawnGroupManager::GroupInfo>>,std::allocator<std::pair<int const,SpawnGroupManager::GroupInfo>>>::_M_insert(
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


// ===== 3e9c10 std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,SpawnGroupManager::GroupInfo>,std::priv::_Select1st<std::pair<int const,SpawnGroupManager::GroupInfo>>,std::priv::_MapTraitsT<std::pair<int const,SpawnGroupManager::GroupInfo>>,std::allocator<std::pair<int const,SpawnGroupManager::GroupInfo>>>::insert_unique(std::priv::_Rb_tree_iterator<std::pair<int const,SpawnGroupManager::GroupInfo>,std::priv::_MapTraitsT<std::pair<int const,SpawnGroupManager::GroupInfo>>>,std::pair<int const,SpawnGroupManager::GroupInfo> const&) =====
_DWORD *__fastcall std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,SpawnGroupManager::GroupInfo>,std::priv::_Select1st<std::pair<int const,SpawnGroupManager::GroupInfo>>,std::priv::_MapTraitsT<std::pair<int const,SpawnGroupManager::GroupInfo>>,std::allocator<std::pair<int const,SpawnGroupManager::GroupInfo>>>::insert_unique(
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
      std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,SpawnGroupManager::GroupInfo>,std::priv::_Select1st<std::pair<int const,SpawnGroupManager::GroupInfo>>,std::priv::_MapTraitsT<std::pair<int const,SpawnGroupManager::GroupInfo>>,std::allocator<std::pair<int const,SpawnGroupManager::GroupInfo>>>::insert_unique(
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
      std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,SpawnGroupManager::GroupInfo>,std::priv::_Select1st<std::pair<int const,SpawnGroupManager::GroupInfo>>,std::priv::_MapTraitsT<std::pair<int const,SpawnGroupManager::GroupInfo>>,std::allocator<std::pair<int const,SpawnGroupManager::GroupInfo>>>::_M_insert(
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
        std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,SpawnGroupManager::GroupInfo>,std::priv::_Select1st<std::pair<int const,SpawnGroupManager::GroupInfo>>,std::priv::_MapTraitsT<std::pair<int const,SpawnGroupManager::GroupInfo>>,std::allocator<std::pair<int const,SpawnGroupManager::GroupInfo>>>::insert_unique(
          (int)&v21,
          a2,
          a4);
        *a1 = v21;
        return a1;
      }
      if ( !v15 )
      {
LABEL_63:
        std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,SpawnGroupManager::GroupInfo>,std::priv::_Select1st<std::pair<int const,SpawnGroupManager::GroupInfo>>,std::priv::_MapTraitsT<std::pair<int const,SpawnGroupManager::GroupInfo>>,std::allocator<std::pair<int const,SpawnGroupManager::GroupInfo>>>::_M_insert(
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
            std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,SpawnGroupManager::GroupInfo>,std::priv::_Select1st<std::pair<int const,SpawnGroupManager::GroupInfo>>,std::priv::_MapTraitsT<std::pair<int const,SpawnGroupManager::GroupInfo>>,std::allocator<std::pair<int const,SpawnGroupManager::GroupInfo>>>::_M_insert(
              a1,
              a2,
              v4,
              a4,
              (int)v4,
              0);
          else
            std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,SpawnGroupManager::GroupInfo>,std::priv::_Select1st<std::pair<int const,SpawnGroupManager::GroupInfo>>,std::priv::_MapTraitsT<std::pair<int const,SpawnGroupManager::GroupInfo>>,std::allocator<std::pair<int const,SpawnGroupManager::GroupInfo>>>::_M_insert(
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
              std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,SpawnGroupManager::GroupInfo>,std::priv::_Select1st<std::pair<int const,SpawnGroupManager::GroupInfo>>,std::priv::_MapTraitsT<std::pair<int const,SpawnGroupManager::GroupInfo>>,std::allocator<std::pair<int const,SpawnGroupManager::GroupInfo>>>::_M_insert(
                a1,
                a2,
                v4,
                a4,
                0,
                (int)v4);
              return a1;
            }
LABEL_42:
            std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,SpawnGroupManager::GroupInfo>,std::priv::_Select1st<std::pair<int const,SpawnGroupManager::GroupInfo>>,std::priv::_MapTraitsT<std::pair<int const,SpawnGroupManager::GroupInfo>>,std::allocator<std::pair<int const,SpawnGroupManager::GroupInfo>>>::_M_insert(
              a1,
              a2,
              i,
              a4,
              (int)i,
              0);
            return a1;
          }
LABEL_31:
          std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,SpawnGroupManager::GroupInfo>,std::priv::_Select1st<std::pair<int const,SpawnGroupManager::GroupInfo>>,std::priv::_MapTraitsT<std::pair<int const,SpawnGroupManager::GroupInfo>>,std::allocator<std::pair<int const,SpawnGroupManager::GroupInfo>>>::insert_unique(
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
    std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,SpawnGroupManager::GroupInfo>,std::priv::_Select1st<std::pair<int const,SpawnGroupManager::GroupInfo>>,std::priv::_MapTraitsT<std::pair<int const,SpawnGroupManager::GroupInfo>>,std::allocator<std::pair<int const,SpawnGroupManager::GroupInfo>>>::insert_unique(
      (int)&v20,
      a2,
      a4);
    *a1 = v20;
  }
  else
  {
    std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,SpawnGroupManager::GroupInfo>,std::priv::_Select1st<std::pair<int const,SpawnGroupManager::GroupInfo>>,std::priv::_MapTraitsT<std::pair<int const,SpawnGroupManager::GroupInfo>>,std::allocator<std::pair<int const,SpawnGroupManager::GroupInfo>>>::_M_insert(
      a1,
      a2,
      v16,
      a4,
      0,
      (int)v4);
  }
  return a1;
}


// ===== 3e9f84 std::map<int,SpawnGroupManager::GroupInfo,std::less<int>,std::allocator<std::pair<int const,SpawnGroupManager::GroupInfo>>>::operator[]<int>(int const&) =====
_DWORD *__fastcall std::map<int,SpawnGroupManager::GroupInfo>::operator[]<int>(_DWORD *a1, int *a2)
{
  _DWORD *v2; // r12
  int v3; // r1
  _DWORD *v4; // r2
  int v5; // r3
  bool v6; // cc
  _DWORD *v7; // r3
  _DWORD *v8; // r8
  _DWORD *v9; // r0
  _DWORD *v10; // r7
  void **v11; // r0
  void **v12; // r5
  int v14; // [sp+4h] [bp-24h] BYREF
  _DWORD *v15; // [sp+8h] [bp-20h] BYREF
  _DWORD **v16; // [sp+Ch] [bp-1Ch]
  int v17; // [sp+10h] [bp-18h]
  void *__p[3]; // [sp+14h] [bp-14h] BYREF
  _DWORD *v19; // [sp+20h] [bp-8h] BYREF
  _DWORD *v20; // [sp+24h] [bp-4h] BYREF

  v2 = (_DWORD *)a1[1];
  if ( v2 )
  {
    v3 = *a2;
    v4 = a1;
    while ( 1 )
    {
      v5 = v2[4];
      v6 = v5 < v3;
      if ( v5 >= v3 )
        v7 = (_DWORD *)v2[2];
      else
        v7 = (_DWORD *)v2[3];
      if ( v6 )
        v2 = v4;
      v4 = v2;
      if ( !v7 )
        break;
      v2 = v7;
    }
  }
  else
  {
    v3 = *a2;
    v2 = a1;
  }
  if ( a1 == v2 || (v8 = v2, v3 < v2[4]) )
  {
    v14 = v3;
    v17 = 0;
    v19 = v2;
    __p[2] = nullptr;
    __p[0] = __p;
    __p[1] = __p;
    v15 = &v15;
    v16 = &v15;
    std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,SpawnGroupManager::GroupInfo>,std::priv::_Select1st<std::pair<int const,SpawnGroupManager::GroupInfo>>,std::priv::_MapTraitsT<std::pair<int const,SpawnGroupManager::GroupInfo>>,std::allocator<std::pair<int const,SpawnGroupManager::GroupInfo>>>::insert_unique(
      &v20,
      a1,
      &v19,
      &v14);
    v9 = v15;
    v8 = v20;
    if ( v15 != &v15 )
    {
      while ( 1 )
      {
        v10 = (_DWORD *)*v9;
        __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v9, 0xCu);
        if ( v10 == &v15 )
          break;
        v9 = v10;
      }
    }
    v11 = (void **)__p[0];
    if ( __p[0] != __p )
    {
      v16 = &v15;
      v15 = &v15;
      do
      {
        v12 = (void **)*v11;
        __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v11, 0xCu);
        v11 = v12;
      }
      while ( v12 != __p );
    }
  }
  return v8 + 5;
}


// ===== 3ea098 SpawnGroupManager::InsSpawn(SpawnSpot *) =====
_DWORD *__fastcall SpawnGroupManager::InsSpawn(int a1, int a2)
{
  _DWORD *result; // r0
  _DWORD *v5; // r6
  _DWORD *v6; // r5
  _DWORD *v7; // r2
  int v8; // r3
  bool v9; // cc
  _DWORD *v10; // r3
  _DWORD *v11; // r3
  _DWORD *v12; // r5
  _DWORD *v13; // r3
  _DWORD *v14; // [sp+Ch] [bp-4h] BYREF

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
        "ss",
        "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Objects\\Spawns\\SpawnGroupManager.cpp",
        229);
    }
  }
  result = (_DWORD *)Arrays::GetMemberIDByString<Arrays::SpawnGroups>(*(char **)(a2 + 904));
  if ( result != (_DWORD *)-1 )
  {
    v5 = *(_DWORD **)(a1 + 8);
    v14 = result;
    v6 = (_DWORD *)(a1 + 4);
    if ( !v5 )
      goto LABEL_17;
    v7 = v6;
    while ( 1 )
    {
      v8 = v5[4];
      v9 = (int)result <= v8;
      v10 = (_DWORD *)((int)result <= v8 ? v5[2] : v5[3]);
      if ( !v9 )
        v5 = v7;
      v7 = v5;
      if ( !v10 )
        break;
      v5 = v10;
    }
    if ( v6 == v5 || (int)result < v5[4] || v6 == v5 )
    {
LABEL_17:
      std::map<int,SpawnGroupManager::GroupInfo>::operator[]<int>(v6, (int *)&v14)[2] = 0;
      v12 = std::map<int,SpawnGroupManager::GroupInfo>::operator[]<int>(v6, (int *)&v14);
      result = std::allocator<std::priv::_List_node<SpawnSpot *>>::allocate();
      result[2] = a2;
      v13 = (_DWORD *)v12[1];
      *result = v12;
      result[1] = v13;
      *v13 = result;
      v12[1] = result;
    }
    else
    {
      result = std::allocator<std::priv::_List_node<SpawnSpot *>>::allocate();
      result[2] = a2;
      v11 = (_DWORD *)v5[6];
      *result = v5 + 5;
      result[1] = v11;
      *v11 = result;
      v5[6] = result;
    }
  }
  return result;
}


// ===== 3ea20c SpawnPoint::IsUpdatable(void) =====
int __fastcall SpawnPoint::IsUpdatable(SpawnPoint *this)
{
  return 0;
}


// ===== 3ea214 SpawnPoint::IsZonable(void) =====
int __fastcall SpawnPoint::IsZonable(SpawnPoint *this)
{
  return 0;
}


// ===== 3ea21c SpawnPoint::IsAnimated(void) =====
int __fastcall SpawnPoint::IsAnimated(SpawnPoint *this)
{
  return 0;
}


// ===== 3ea224 SpawnPoint::IsInteractive(GameObject *) =====
int __fastcall SpawnPoint::IsInteractive(SpawnPoint *this, GameObject *a2)
{
  return 0;
}


// ===== 3ea22c SpawnPoint::PlaceObject(GameObject *) =====
_DWORD *__fastcall SpawnPoint::PlaceObject(SpawnPoint *this, GameObject *a2)
{
  _DWORD *result; // r0
  int v5; // r1

  GameObject::SetPosition(a2, (float *)this + 88, 1);
  result = GameObject::SetRotation(a2, (_DWORD *)this + 91);
  v5 = *((_DWORD *)this + 228);
  if ( v5 != -1 )
    return (_DWORD *)ScriptManager::StartScript((ScriptManager *)&ScriptManager::s_inst, v5, *((_DWORD *)this + 25), 0);
  return result;
}


// ===== 3ea28c SpawnPoint::InitPost(void) =====
const char *__fastcall SpawnPoint::InitPost(const char **this)
{
  const char *result; // r0

  GameObject::InitPost((GameObject *)this);
  result = (const char *)ScriptManager::GetIDFromName((ScriptManager *)&ScriptManager::s_inst, *(this + 227), 0);
  *(this + 228) = result;
  return result;
}


// ===== 3ea2c4 `non-virtual thunk to'SpawnPoint::~SpawnPoint() =====
void __fastcall `non-virtual thunk to'SpawnPoint::~SpawnPoint(SpawnPoint *this)
{
  SpawnPoint::~SpawnPoint((SpawnPoint *)((char *)this - 36));
}


// ===== 3ea2cc SpawnPoint::~SpawnPoint() =====
void __fastcall SpawnPoint::~SpawnPoint(std::priv::_String_base<char,std::allocator<char> > *this)
{
  this->_M_buffers._M_end_of_storage = (char *)off_967210;
  *(_DWORD *)&this->_M_buffers._M_static_buf[4] = &off_9672E0;
  *((_DWORD *)this + 9) = off_9672EC;
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(this + 37);
  GameObject::~GameObject((GameObject *)this);
}


// ===== 3ea318 `non-virtual thunk to'SpawnPoint::~SpawnPoint() =====
void __fastcall `non-virtual thunk to'SpawnPoint::~SpawnPoint(SpawnPoint *this)
{
  SpawnPoint::~SpawnPoint((SpawnPoint *)((char *)this - 36));
}


// ===== 3ea320 SpawnPoint::~SpawnPoint() =====
void __fastcall SpawnPoint::~SpawnPoint(std::priv::_String_base<char,std::allocator<char> > *this)
{
  SpawnPoint::~SpawnPoint(this);
  CustomFree(this);
}


// ===== 3ea33c SpawnPoint::~SpawnPoint() =====
void __fastcall SpawnPoint::~SpawnPoint(std::priv::_String_base<char,std::allocator<char> > *this)
{
  this->_M_buffers._M_end_of_storage = (char *)off_967210;
  *(_DWORD *)&this->_M_buffers._M_static_buf[4] = &off_9672E0;
  *((_DWORD *)this + 9) = off_9672EC;
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(this + 37);
  GameObject::~GameObject((GameObject *)this);
}


// ===== 3ea388 SpawnPoint::SpawnPoint(ObjectBase::GO_IDS) =====
_DWORD *__fastcall SpawnPoint::SpawnPoint(_DWORD *a1)
{
  GameObject::GameObject((int)a1);
  a1[1] = &off_9672E0;
  a1[9] = off_9672EC;
  a1[226] = a1 + 222;
  a1[227] = a1 + 222;
  *a1 = off_967210;
  a1[221] = -1;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block(a1 + 222, 0x10u);
  *(_BYTE *)a1[226] = 0;
  a1[228] = -1;
  return a1;
}


// ===== 3ea3fc SpawnPoint::SpawnPoint(ObjectBase::GO_IDS) =====
_DWORD *__fastcall SpawnPoint::SpawnPoint(_DWORD *a1)
{
  GameObject::GameObject((int)a1);
  a1[1] = &off_9672E0;
  a1[9] = off_9672EC;
  a1[226] = a1 + 222;
  a1[227] = a1 + 222;
  *a1 = off_967210;
  a1[221] = -1;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block(a1 + 222, 0x10u);
  *(_BYTE *)a1[226] = 0;
  a1[228] = -1;
  return a1;
}


// ===== 3ea470 `global constructor keyed to'.._.._sources_Game_Objects_Spawns_SpawnPoint.cpp =====
int `global constructor keyed to'.._.._sources_Game_Objects_Spawns_SpawnPoint.cpp()
{
  int result; // r0

  result = `guard variable for'Singleton<PlayerStatManager>::s_inst;
  dword_9A3060 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9A305C = 1056964608;
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


// ===== 3ea54c `non-virtual thunk to'SpawnPoint::DeclareProperties(void) =====
int __fastcall `non-virtual thunk to'SpawnPoint::DeclareProperties(SpawnPoint *this)
{
  return SpawnPoint::DeclareProperties((SpawnPoint *)((char *)this - 4));
}


// ===== 3ea554 SpawnPoint::DeclareProperties(void) =====
void __fastcall SpawnPoint::DeclareProperties(SpawnPoint *this)
{
  PropertyMap *v1; // r10
  char *v3; // r8
  int v4; // r5
  int v5; // r5
  std::string v6; // [sp+14h] [bp-38h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v7; // [sp+2Ch] [bp-20h] BYREF

  v1 = (SpawnPoint *)((char *)this + 4);
  v3 = (char *)this + 884;
  GameObject::DeclareProperties(this);
  v4 = operator new(0x24u, 0);
  *(_DWORD *)v4 = &off_95C5E8;
  std::string::string((std::string *)(v4 + 8), "entrypointID");
  *(_DWORD *)(v4 + 4) = v3 - (char *)v1;
  *(_DWORD *)(v4 + 32) = -1;
  *(_DWORD *)v4 = &off_964708;
  PropertyMap::AddProperty(v1, "entrypointID", (Property *)v4);
  v7._M_finish = (char *)&v7;
  v7._M_start_of_storage._M_data = (char *)&v7;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block(&v7, 0x10u);
  *v7._M_finish = 0;
  v6._M_finish = (char *)&v6;
  v6._M_start_of_storage._M_data = (char *)&v6;
  std::string::_M_range_initialize(&v6, v7._M_start_of_storage._M_data, v7._M_finish);
  v5 = operator new(0x38u, 0);
  *(_DWORD *)v5 = &off_95C5E8;
  std::string::string((std::string *)(v5 + 8), "script");
  *(_DWORD *)(v5 + 4) = (SpawnPoint *)((char *)this + 888) - v1;
  *(_DWORD *)v5 = &off_95C5C8;
  *(_DWORD *)(v5 + 48) = v5 + 32;
  *(_DWORD *)(v5 + 52) = v5 + 32;
  std::string::_M_range_initialize((std::string *)(v5 + 32), v6._M_start_of_storage._M_data, v6._M_finish);
  PropertyMap::AddProperty(v1, "script", (Property *)v5);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v6);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v7);
}


// ===== 3ea6e4 SpawnSpot::IsUpdatable(void) =====
int __fastcall SpawnSpot::IsUpdatable(SpawnSpot *this)
{
  return 0;
}


// ===== 3ea6ec SpawnSpot::IsZonable(void) =====
int __fastcall SpawnSpot::IsZonable(SpawnSpot *this)
{
  return 1;
}


// ===== 3ea6f4 SpawnSpot::IsAnimated(void) =====
int __fastcall SpawnSpot::IsAnimated(SpawnSpot *this)
{
  return 0;
}


// ===== 3ea6fc SpawnSpot::IsInteractive(GameObject *) =====
int __fastcall SpawnSpot::IsInteractive(SpawnSpot *this, GameObject *a2)
{
  return 0;
}


// ===== 3ea704 SpawnSpot::PlaceObject(GameObject *) =====
_DWORD *__fastcall SpawnSpot::PlaceObject(SpawnSpot *this, GameObject *a2)
{
  GameObject::SetPosition(a2, (float *)this + 88, 1);
  return GameObject::SetRotation(a2, (_DWORD *)this + 91);
}


// ===== 3ea730 SpawnGroupManager::GetInstance(void) =====
void *__fastcall SpawnGroupManager::GetInstance(SpawnGroupManager *this)
{
  if ( (`guard variable for'SpawnGroupManager::GetInstance(void)::sgm & 1) != 0
    || !_cxa_guard_acquire(&`guard variable for'SpawnGroupManager::GetInstance(void)::sgm) )
  {
    return &SpawnGroupManager::GetInstance(void)::sgm;
  }
  SpawnGroupManager::SpawnGroupManager((SpawnGroupManager *)&SpawnGroupManager::GetInstance(void)::sgm);
  _cxa_guard_release(&`guard variable for'SpawnGroupManager::GetInstance(void)::sgm);
  _aeabi_atexit(
    (int)&SpawnGroupManager::GetInstance(void)::sgm,
    (int)SpawnGroupManager::~SpawnGroupManager,
    (int)&_dso_handle);
  return &SpawnGroupManager::GetInstance(void)::sgm;
}


// ===== 3ea7b8 SpawnSpot::InitFinal(void) =====
SpawnGroupManager *__fastcall SpawnSpot::InitFinal(SpawnSpot *this)
{
  SpawnGroupManager *result; // r0
  void *Instance; // r0

  result = (SpawnGroupManager *)GameObject::CheckSpawnProbability(this);
  if ( (int)result < *((_DWORD *)this + 157) )
  {
    GameObject::InitFinal(this);
    result = (SpawnGroupManager *)GameObject::MeetCondition(this);
    if ( result )
    {
      Instance = SpawnGroupManager::GetInstance(result);
      return (SpawnGroupManager *)SpawnGroupManager::InsSpawn((int)Instance, (int)this);
    }
  }
  return result;
}


// ===== 3ea7fc SpawnSpot::InitPost(void) =====
// attributes: thunk
VisualObject *__fastcall SpawnSpot::InitPost(GameObject *this)
{
  return GameObject::InitPost(this);
}


// ===== 3ea800 `non-virtual thunk to'SpawnSpot::~SpawnSpot() =====
void __fastcall `non-virtual thunk to'SpawnSpot::~SpawnSpot(SpawnSpot *this)
{
  SpawnSpot::~SpawnSpot((SpawnSpot *)((char *)this - 36));
}


// ===== 3ea808 SpawnSpot::~SpawnSpot() =====
void __fastcall SpawnSpot::~SpawnSpot(SpawnSpot *this)
{
  void *Instance; // r0

  *((_DWORD *)this + 1) = &off_9673D8;
  *((_DWORD *)this + 9) = off_9673E4;
  *(_DWORD *)this = off_967308;
  Instance = SpawnGroupManager::GetInstance(this);
  SpawnGroupManager::DelSpawn((int)Instance, (int)this);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block((std::priv::_String_base<char,std::allocator<char> > *const)((char *)this + 884));
  GameObject::~GameObject(this);
}


// ===== 3ea864 `non-virtual thunk to'SpawnSpot::~SpawnSpot() =====
void __fastcall `non-virtual thunk to'SpawnSpot::~SpawnSpot(SpawnSpot *this)
{
  SpawnSpot::~SpawnSpot((SpawnSpot *)((char *)this - 36));
}


// ===== 3ea86c SpawnSpot::~SpawnSpot() =====
void __fastcall SpawnSpot::~SpawnSpot(SpawnSpot *this)
{
  SpawnSpot::~SpawnSpot(this);
  CustomFree(this);
}


// ===== 3ea888 SpawnSpot::~SpawnSpot() =====
void __fastcall SpawnSpot::~SpawnSpot(SpawnSpot *this)
{
  void *Instance; // r0

  *((_DWORD *)this + 1) = &off_9673D8;
  *((_DWORD *)this + 9) = off_9673E4;
  *(_DWORD *)this = off_967308;
  Instance = SpawnGroupManager::GetInstance(this);
  SpawnGroupManager::DelSpawn((int)Instance, (int)this);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block((std::priv::_String_base<char,std::allocator<char> > *const)((char *)this + 884));
  GameObject::~GameObject(this);
}


// ===== 3ea8e4 SpawnSpot::SpawnSpot(ObjectBase::GO_IDS) =====
_DWORD *__fastcall SpawnSpot::SpawnSpot(_DWORD *a1)
{
  GameObject::GameObject((int)a1);
  a1[225] = a1 + 221;
  a1[1] = &off_9673D8;
  a1[9] = off_9673E4;
  a1[226] = a1 + 221;
  *a1 = off_967308;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block(a1 + 221, 0x10u);
  *(_BYTE *)a1[225] = 0;
  return a1;
}


// ===== 3ea94c SpawnSpot::SpawnSpot(ObjectBase::GO_IDS) =====
_DWORD *__fastcall SpawnSpot::SpawnSpot(_DWORD *a1)
{
  GameObject::GameObject((int)a1);
  a1[225] = a1 + 221;
  a1[1] = &off_9673D8;
  a1[9] = off_9673E4;
  a1[226] = a1 + 221;
  *a1 = off_967308;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block(a1 + 221, 0x10u);
  *(_BYTE *)a1[225] = 0;
  return a1;
}


// ===== 3ea9b4 `global constructor keyed to'.._.._sources_Game_Objects_Spawns_SpawnSpot.cpp =====
int `global constructor keyed to'.._.._sources_Game_Objects_Spawns_SpawnSpot.cpp()
{
  int result; // r0

  result = `guard variable for'Singleton<PlayerStatManager>::s_inst;
  dword_9A306C = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9A3068 = 1056964608;
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


// ===== 3eaa90 `non-virtual thunk to'SpawnSpot::DeclareProperties(void) =====
int __fastcall `non-virtual thunk to'SpawnSpot::DeclareProperties(SpawnSpot *this)
{
  return SpawnSpot::DeclareProperties((SpawnSpot *)((char *)this - 4));
}


// ===== 3eaa98 SpawnSpot::DeclareProperties(void) =====
void __fastcall SpawnSpot::DeclareProperties(SpawnSpot *this)
{
  PropertyMap *v1; // r10
  int v2; // r4
  char *v3; // r11
  std::priv::_String_base<char,std::allocator<char> > v4; // [sp+4h] [bp-18h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v5; // [sp+1Ch] [bp+0h] BYREF

  v1 = this;
  GameObject::DeclareProperties(this);
  v5._M_finish = (char *)&v5;
  v5._M_start_of_storage._M_data = (char *)&v5;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block(&v5, 0x10u);
  *v5._M_finish = 0;
  v4._M_finish = (char *)&v4;
  v4._M_start_of_storage._M_data = (char *)&v4;
  std::string::_M_range_initialize((std::string *)&v4, v5._M_start_of_storage._M_data, v5._M_finish);
  v2 = operator new(0x38u, 0);
  *(_DWORD *)v2 = &off_95C5E8;
  *(_DWORD *)(v2 + 24) = v2 + 8;
  *(_DWORD *)(v2 + 28) = v2 + 8;
  std::string::_M_range_initialize((std::string *)(v2 + 8), "group", "");
  v3 = (char *)v1 + 884;
  v1 = (PropertyMap *)((char *)v1 + 4);
  *(_DWORD *)(v2 + 4) = v3 - (char *)v1;
  *(_DWORD *)v2 = &off_95C5C8;
  *(_DWORD *)(v2 + 48) = v2 + 32;
  *(_DWORD *)(v2 + 52) = v2 + 32;
  std::string::_M_range_initialize((std::string *)(v2 + 32), v4._M_start_of_storage._M_data, v4._M_finish);
  PropertyMap::AddProperty(v1, "group", (Property *)v2);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v4);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v5);
}


// ===== 3eabcc ItemManager::ItemManager(void) =====
void __fastcall ItemManager::ItemManager(ItemManager *this)
{
  *((_DWORD *)this + 3) = 0;
  *((_DWORD *)this + 1) = 0;
  *(_DWORD *)this = off_967400;
  *((_DWORD *)this + 2) = 0;
}


// ===== 3eac00 ItemManager::ItemManager(void) =====
void __fastcall ItemManager::ItemManager(ItemManager *this)
{
  *((_DWORD *)this + 3) = 0;
  *((_DWORD *)this + 1) = 0;
  *(_DWORD *)this = off_967400;
  *((_DWORD *)this + 2) = 0;
}


// ===== 3eac34 ItemManager::DeSpawn(ItemObject *) =====
void __fastcall ItemManager::DeSpawn(ItemManager *this, ItemObject *a2)
{
  int v3; // r3
  int v4; // r2
  int v5; // r2
  int v6; // r3
  ItemObject *v7; // r1
  int v8; // r0

  if ( a2 )
  {
    v3 = *((__int16 *)a2 + 470);
    if ( v3 >= 0 )
    {
      v4 = *((_DWORD *)this + 1);
      if ( v3 < (*((_DWORD *)this + 2) - v4) >> 4 )
      {
        v5 = *(_DWORD *)(v4 + 16 * v3);
        v6 = 0;
        while ( 1 )
        {
          v7 = *(ItemObject **)(v5 + v6);
          v8 = v5 + v6;
          v6 += 8;
          if ( a2 == v7 )
            break;
          if ( v6 == 40 )
            return;
        }
        *(_BYTE *)(v8 + 4) = 0;
        (*(void (__fastcall **)(ItemObject *, _DWORD))(*(_DWORD *)a2 + 64))(a2, 0);
        ItemInventory::RemoveAllItems((ItemObject *)((char *)a2 + 884), 1);
        GameObject::SetPhysicalObject(a2, nullptr, 0);
        *((_BYTE *)a2 + 133) = 0;
      }
    }
  }
}


// ===== 3eacd0 ItemManager::Spawn(ItemInventory &,uint,GameObject const*,Point3D<float> const&,Point3D<float> const&,Character const*) =====
int __fastcall ItemManager::Spawn(
        ItemManager *a1,
        ItemInventory *this,
        unsigned int a3,
        int a4,
        float *a5,
        _DWORD *a6,
        Character *a7)
{
  ItemInstance *Item; // r0
  int v12; // r3
  int v13; // r2
  int *v14; // r1
  int v15; // r7
  int v16; // r8
  int v17; // r10
  GameObject *v18; // r0

  if ( !a4 )
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
        "dropper",
        "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Objects\\Items\\ItemManager.cpp",
        102);
    }
  }
  if ( ItemInventory::GetNumItems(this) <= a3 )
    return 0;
  Item = (ItemInstance *)ItemInventory::GetItem(this, a3);
  v12 = *(_DWORD *)(ItemInstance::GetItem(Item) + 84);
  if ( v12 < 0 )
    return 0;
  v13 = *((_DWORD *)a1 + 1);
  if ( v12 >= (*((_DWORD *)a1 + 2) - v13) >> 4 )
    return 0;
  v14 = (int *)(v13 + 16 * v12);
  v15 = v14[3];
  v16 = *v14;
  v14[3] = v15 + 1;
  if ( (unsigned int)(v15 + 1) > 4 )
    v14[3] = 0;
  v17 = v16 + 8 * v15;
  if ( !*(_BYTE *)(v17 + 4) )
  {
    v18 = *(GameObject **)(v16 + 8 * v15);
    if ( v18 )
      goto LABEL_14;
    return 0;
  }
  ItemManager::DeSpawn(a1, *(ItemObject **)(v16 + 8 * v15));
  v18 = *(GameObject **)(v16 + 8 * v15);
LABEL_14:
  GameObject::SetPosition(v18, a5, 1);
  GameObject::SetDestination(*(_DWORD **)(v16 + 8 * v15), a6);
  ItemObject::InitAgain(*(ItemObject **)(v16 + 8 * v15), this, a3, a7);
  (*(void (__fastcall **)(_DWORD, int))(**(_DWORD **)(v16 + 8 * v15) + 64))(*(_DWORD *)(v16 + 8 * v15), 1);
  *(_BYTE *)(*(_DWORD *)(v16 + 8 * v15) + 133) = 1;
  *(_BYTE *)(v17 + 4) = 1;
  return *(_DWORD *)(v16 + 8 * v15);
}


// ===== 3eae58 std::allocator<ItemManager::CategoryInfo>::_M_allocate(uint,uint &) =====
void *__fastcall std::allocator<ItemManager::CategoryInfo>::_M_allocate(int a1, unsigned int a2, size_t *a3)
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


// ===== 3eaec8 std::priv::__copy<ItemManager::ObjectInfo const*,ItemManager::ObjectInfo*,int>(ItemManager::ObjectInfo const*,ItemManager::ObjectInfo const*,ItemManager::ObjectInfo*,std::random_access_iterator_tag const&,int *) =====
int __fastcall std::priv::__copy<ItemManager::ObjectInfo const*,ItemManager::ObjectInfo*,int>(int a1, int a2, int a3)
{
  int v3; // r1
  int v5; // r4
  int v6; // r12
  char v7; // r5
  int v8; // r0

  v3 = (a2 - a1) >> 3;
  if ( v3 > 0 )
  {
    v5 = v3;
    v6 = 0;
    do
    {
      --v5;
      *(_DWORD *)(a3 + v6) = *(_DWORD *)(a1 + v6);
      v7 = *(_BYTE *)(a1 + v6 + 4);
      v8 = a3 + v6;
      v6 += 8;
      *(_BYTE *)(v8 + 4) = v7;
    }
    while ( v5 );
    a3 += 8 * v3;
  }
  return a3;
}


// ===== 3eaf1c `global constructor keyed to'.._.._sources_Game_Objects_Items_ItemManager.cpp =====
int `global constructor keyed to'.._.._sources_Game_Objects_Items_ItemManager.cpp()
{
  int result; // r0

  result = `guard variable for'Singleton<PlayerStatManager>::s_inst;
  dword_9A3094 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9A3090 = 1056964608;
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


// ===== 3eaff8 std::allocator<ItemManager::ObjectInfo>::_M_allocate(uint,uint &) =====
void *__fastcall std::allocator<ItemManager::ObjectInfo>::_M_allocate(int a1, unsigned int a2, size_t *a3)
{
  void *result; // r0
  size_t __n; // [sp+4h] [bp-4h] BYREF

  if ( a2 > 0x1FFFFFFF )
  {
    puts("out of memory\n");
    exit(1);
  }
  if ( !a2 )
    return nullptr;
  __n = 8 * a2;
  if ( 8 * a2 > 0x80 )
    result = CustomAlloc(8 * a2);
  else
    result = __ZNSt12__node_alloc11_M_allocateERj_veneer(&__n);
  *a3 = __n >> 3;
  return result;
}


// ===== 3eb068 std::vector<ItemManager::ObjectInfo,std::allocator<ItemManager::ObjectInfo>>::_M_allocate_and_copy<ItemManager::ObjectInfo const*>(uint &,ItemManager::ObjectInfo const*,ItemManager::ObjectInfo const*) =====
char *__fastcall std::vector<ItemManager::ObjectInfo>::_M_allocate_and_copy<ItemManager::ObjectInfo const*>(
        int a1,
        unsigned int *a2,
        int a3,
        int a4)
{
  int v5; // r5
  char *result; // r0
  int v7; // r1
  char *v8; // r3
  char v9; // r2

  v5 = (a4 - a3) >> 3;
  result = (char *)std::allocator<ItemManager::ObjectInfo>::_M_allocate(a1 + 8, *a2, a2);
  if ( v5 > 0 )
  {
    v7 = 0;
    do
    {
      --v5;
      *(_DWORD *)&result[v7] = *(_DWORD *)(a3 + v7);
      v8 = &result[v7];
      v9 = *(_BYTE *)(a3 + v7 + 4);
      v7 += 8;
      v8[4] = v9;
    }
    while ( v5 );
  }
  return result;
}


// ===== 3eb0c0 std::vector<ItemManager::ObjectInfo,std::allocator<ItemManager::ObjectInfo>>::vector(std::vector<ItemManager::ObjectInfo,std::allocator<ItemManager::ObjectInfo>> const&) =====
_DWORD *__fastcall std::vector<ItemManager::ObjectInfo>::vector(_DWORD *a1, _DWORD *a2)
{
  int v4; // r6
  unsigned int v5; // r1
  char *v6; // r0
  size_t v7; // r3
  int v8; // r5
  _DWORD *v9; // t0
  int v10; // r7
  int v11; // r1
  char *v12; // r3
  char v13; // r2
  size_t v15; // [sp+4h] [bp-8h] BYREF

  v4 = 0;
  v5 = (a2[1] - *a2) >> 3;
  v15 = v5;
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v6 = (char *)std::allocator<ItemManager::ObjectInfo>::_M_allocate((int)(a1 + 2), v5, &v15);
  v7 = v15;
  *a1 = v6;
  a1[1] = v6;
  a1[2] = &v6[8 * v7];
  v9 = a2;
  v8 = *a2;
  v10 = (v9[1] - v8) >> 3;
  if ( v10 > 0 )
  {
    v11 = v10;
    do
    {
      --v11;
      *(_DWORD *)&v6[v4] = *(_DWORD *)(v8 + v4);
      v12 = &v6[v4];
      v13 = *(_BYTE *)(v8 + v4 + 4);
      v4 += 8;
      v12[4] = v13;
    }
    while ( v11 );
    v6 += 8 * v10;
  }
  a1[1] = v6;
  return a1;
}


// ===== 3eb160 std::vector<ItemManager::CategoryInfo,std::allocator<ItemManager::CategoryInfo>>::_M_allocate_and_copy<ItemManager::CategoryInfo*>(uint &,ItemManager::CategoryInfo*,ItemManager::CategoryInfo*) =====
_DWORD *__fastcall std::vector<ItemManager::CategoryInfo>::_M_allocate_and_copy<ItemManager::CategoryInfo*>(
        int a1,
        unsigned int *a2,
        _DWORD *a3,
        int a4)
{
  _DWORD *v6; // r0
  int v7; // r5
  _DWORD *v8; // r7
  _DWORD *v9; // r6
  int v10; // r3

  v6 = std::allocator<ItemManager::CategoryInfo>::_M_allocate(a1 + 8, *a2, a2);
  v7 = (a4 - (int)a3) >> 4;
  v8 = v6;
  if ( v7 > 0 )
  {
    v9 = v6;
    do
    {
      std::vector<ItemManager::ObjectInfo>::vector(v9, a3);
      v10 = a3[3];
      --v7;
      a3 += 4;
      v9[3] = v10;
      v9 += 4;
    }
    while ( v7 );
  }
  return v8;
}


// ===== 3eb1c0 std::vector<ItemManager::ObjectInfo,std::allocator<ItemManager::ObjectInfo>>::_M_allocate_and_copy<ItemManager::ObjectInfo*>(uint &,ItemManager::ObjectInfo*,ItemManager::ObjectInfo*) =====
char *__fastcall std::vector<ItemManager::ObjectInfo>::_M_allocate_and_copy<ItemManager::ObjectInfo*>(
        int a1,
        unsigned int *a2,
        int a3,
        int a4)
{
  int v5; // r5
  char *result; // r0
  int v7; // r1
  char *v8; // r3
  char v9; // r2

  v5 = (a4 - a3) >> 3;
  result = (char *)std::allocator<ItemManager::ObjectInfo>::_M_allocate(a1 + 8, *a2, a2);
  if ( v5 > 0 )
  {
    v7 = 0;
    do
    {
      --v5;
      *(_DWORD *)&result[v7] = *(_DWORD *)(a3 + v7);
      v8 = &result[v7];
      v9 = *(_BYTE *)(a3 + v7 + 4);
      v7 += 8;
      v8[4] = v9;
    }
    while ( v5 );
  }
  return result;
}


// ===== 3eb218 std::vector<ItemManager::ObjectInfo,std::allocator<ItemManager::ObjectInfo>>::_M_clear(void) =====
void __fastcall std::vector<ItemManager::ObjectInfo>::_M_clear(int a1)
{
  int v1; // r3
  size_t v2; // r1

  v1 = *(_DWORD *)(a1 + 4);
  if ( v1 != *(_DWORD *)a1 )
    v1 += 8 * ~((unsigned int)(v1 - 8 - *(_DWORD *)a1) >> 3);
  if ( v1 )
  {
    v2 = (*(_DWORD *)(a1 + 8) - v1) & 0xFFFFFFF8;
    if ( v2 > 0x80 )
      CustomFree(*(void **)a1);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(*(void **)a1, v2);
  }
}


// ===== 3eb25c std::vector<ItemManager::ObjectInfo,std::allocator<ItemManager::ObjectInfo>>::operator=(std::vector<ItemManager::ObjectInfo,std::allocator<ItemManager::ObjectInfo>> const&) =====
int *__fastcall std::vector<ItemManager::ObjectInfo>::operator=(int *a1, int *a2)
{
  int v4; // r3
  int v5; // r12
  int v6; // r2
  unsigned int v7; // r6
  unsigned int v8; // r1
  char *v9; // r8
  int v11; // r7
  int v12; // r12
  int v13; // r1
  unsigned int v14; // r5
  int v15; // r1
  int v16; // r3
  char v17; // r2
  unsigned int v18; // r3
  int v19; // [sp+Ch] [bp-Ch] BYREF

  if ( a2 != a1 )
  {
    v4 = a2[1];
    v5 = *a2;
    v6 = *a1;
    v7 = (v4 - *a2) >> 3;
    if ( v7 > (a1[2] - *a1) >> 3 )
    {
      v19 = (v4 - *a2) >> 3;
      v9 = std::vector<ItemManager::ObjectInfo>::_M_allocate_and_copy<ItemManager::ObjectInfo const*>(
             (int)a1,
             (unsigned int *)&v19,
             v5,
             v4);
      std::vector<ItemManager::ObjectInfo>::_M_clear((int)a1);
      v18 = v19;
      *a1 = (int)v9;
      a1[2] = (int)&v9[8 * v18];
    }
    else
    {
      v8 = (a1[1] - v6) >> 3;
      if ( v7 > v8 )
      {
        v11 = 0;
        std::priv::__copy<ItemManager::ObjectInfo const*,ItemManager::ObjectInfo*,int>(v5, v5 + 8 * v8, v6);
        v9 = (char *)*a1;
        v12 = a1[1];
        v13 = a2[1];
        v14 = *a2 + ((v12 - *a1) & 0xFFFFFFF8);
        v15 = (int)(v13 - v14) >> 3;
        if ( v15 > 0 )
        {
          do
          {
            --v15;
            *(_DWORD *)(v12 + v11) = *(_DWORD *)(v14 + v11);
            v16 = v12 + v11;
            v17 = *(_BYTE *)(v14 + v11 + 4);
            v11 += 8;
            *(_BYTE *)(v16 + 4) = v17;
          }
          while ( v15 );
          v9 = (char *)*a1;
        }
      }
      else
      {
        std::priv::__copy<ItemManager::ObjectInfo const*,ItemManager::ObjectInfo*,int>(v5, v4, v6);
        v9 = (char *)*a1;
      }
    }
    a1[1] = (int)&v9[8 * v7];
  }
  return a1;
}


// ===== 3eb378 std::vector<ItemManager::ObjectInfo,std::allocator<ItemManager::ObjectInfo>>::~vector() =====
int __fastcall std::vector<ItemManager::ObjectInfo>::~vector(int a1)
{
  void *v2; // r0
  size_t v3; // r1

  v2 = *(void **)a1;
  if ( !v2 )
    return a1;
  v3 = (*(_DWORD *)(a1 + 8) - (_DWORD)v2) & 0xFFFFFFF8;
  if ( v3 <= 0x80 )
  {
    __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v2, v3);
    return a1;
  }
  CustomFree(v2);
  return a1;
}


// ===== 3eb3b8 std::vector<ItemManager::CategoryInfo,std::allocator<ItemManager::CategoryInfo>>::_M_clear(void) =====
void __fastcall std::vector<ItemManager::CategoryInfo>::_M_clear(void **a1)
{
  char *v1; // r4
  char *v2; // r5
  size_t v4; // r1

  v1 = (char *)a1[1];
  v2 = (char *)*a1;
  if ( v1 != *a1 )
  {
    do
    {
      v1 -= 16;
      std::vector<ItemManager::ObjectInfo>::~vector((int)v1);
    }
    while ( v2 != v1 );
    v1 = (char *)*a1;
  }
  if ( v1 )
  {
    v4 = ((_BYTE *)a1[2] - v1) & 0xFFFFFFF0;
    if ( v4 > 0x80 )
      CustomFree(v1);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v1, v4);
  }
}


// ===== 3eb420 std::vector<ItemManager::CategoryInfo,std::allocator<ItemManager::CategoryInfo>>::reserve(uint) =====
void __fastcall std::vector<ItemManager::CategoryInfo>::reserve(int a1, unsigned int a2)
{
  _DWORD *v3; // r2
  int v4; // r0
  int v5; // r3
  int v6; // r5
  char *v7; // r6
  unsigned int v8; // r3
  unsigned int v9; // [sp+4h] [bp-4h] BYREF

  v3 = *(_DWORD **)a1;
  v4 = *(_DWORD *)(a1 + 8);
  v9 = a2;
  if ( a2 > (v4 - (int)v3) >> 4 )
  {
    if ( a2 > 0xFFFFFFF )
    {
      __ZSt24__stl_throw_length_errorPKc_veneer("vector");
      v3 = *(_DWORD **)a1;
    }
    v5 = *(_DWORD *)(a1 + 4);
    v6 = (v5 - (int)v3) >> 4;
    if ( v3 )
    {
      v7 = (char *)std::vector<ItemManager::CategoryInfo>::_M_allocate_and_copy<ItemManager::CategoryInfo*>(
                     a1,
                     &v9,
                     v3,
                     v5);
      std::vector<ItemManager::CategoryInfo>::_M_clear((void **)a1);
    }
    else
    {
      v7 = (char *)std::allocator<ItemManager::CategoryInfo>::_M_allocate(a1 + 8, v9, &v9);
    }
    v8 = v9;
    *(_DWORD *)(a1 + 4) = &v7[16 * v6];
    *(_DWORD *)(a1 + 8) = &v7[16 * v8];
    *(_DWORD *)a1 = v7;
  }
}


// ===== 3eb4c8 std::vector<ItemManager::CategoryInfo,std::allocator<ItemManager::CategoryInfo>>::_M_clear_after_move(void) =====
void __fastcall std::vector<ItemManager::CategoryInfo>::_M_clear_after_move(void **a1)
{
  char *v1; // r4
  char *v2; // r5
  size_t v4; // r1

  v1 = (char *)a1[1];
  v2 = (char *)*a1;
  if ( v1 != *a1 )
  {
    do
    {
      v1 -= 16;
      std::vector<ItemManager::ObjectInfo>::~vector((int)v1);
    }
    while ( v2 != v1 );
    v1 = (char *)*a1;
  }
  if ( v1 )
  {
    v4 = ((_BYTE *)a1[2] - v1) & 0xFFFFFFF0;
    if ( v4 > 0x80 )
      CustomFree(v1);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v1, v4);
  }
}


// ===== 3eb530 std::vector<ItemManager::CategoryInfo,std::allocator<ItemManager::CategoryInfo>>::push_back(ItemManager::CategoryInfo const&) =====
void __fastcall std::vector<ItemManager::CategoryInfo>::push_back(int a1, _DWORD *a2)
{
  int v2; // r7
  int v3; // r5
  unsigned int v6; // r3
  unsigned int v7; // r1
  _DWORD *v8; // r0
  _DWORD *v9; // r7
  _DWORD *v10; // r9
  int v11; // r5
  _DWORD *v12; // r5
  int v13; // r10
  _DWORD *v14; // r8
  int v15; // r3
  size_t v16; // r3
  size_t v17; // [sp+4h] [bp-4h] BYREF

  v2 = *(_DWORD *)(a1 + 4);
  v3 = *(_DWORD *)(a1 + 8);
  if ( v2 == v3 )
  {
    v6 = (v3 - *(_DWORD *)a1) >> 4;
    if ( v6 )
      v7 = 2 * v6;
    else
      v7 = 1;
    if ( v7 > 0xFFFFFFF || v6 > v7 )
      v7 = 0xFFFFFFF;
    v17 = v7;
    v8 = std::allocator<ItemManager::CategoryInfo>::_M_allocate(a1 + 8, v7, &v17);
    v9 = *(_DWORD **)a1;
    v10 = v8;
    v11 = (v3 - *(_DWORD *)a1) >> 4;
    if ( v11 > 0 )
    {
      v13 = v11;
      v14 = v8;
      do
      {
        std::vector<ItemManager::ObjectInfo>::vector(v14, v9);
        v15 = v9[3];
        --v13;
        v9 += 4;
        v14[3] = v15;
        v14 += 4;
      }
      while ( v13 );
      v12 = &v10[4 * v11];
    }
    else
    {
      v12 = v8;
    }
    std::vector<ItemManager::ObjectInfo>::vector(v12, a2);
    v12[3] = a2[3];
    std::vector<ItemManager::CategoryInfo>::_M_clear_after_move((void **)a1);
    v16 = v17;
    *(_DWORD *)a1 = v10;
    *(_DWORD *)(a1 + 4) = v12 + 4;
    *(_DWORD *)(a1 + 8) = &v10[4 * v16];
  }
  else
  {
    std::vector<ItemManager::ObjectInfo>::vector(*(_DWORD **)(a1 + 4), a2);
    *(_DWORD *)(v2 + 12) = a2[3];
    *(_DWORD *)(a1 + 4) += 16;
  }
}


// ===== 3eb634 std::vector<ItemManager::CategoryInfo,std::allocator<ItemManager::CategoryInfo>>::_M_erase(ItemManager::CategoryInfo*,ItemManager::CategoryInfo*,std::__false_type const&) =====
int *__fastcall std::vector<ItemManager::CategoryInfo>::_M_erase(int a1, int *a2, int *a3)
{
  int *v3; // r4
  int *v5; // r6
  int v6; // r10
  int *v8; // r10
  int v9; // r7
  int *v10; // r4
  int v11; // r3
  int v12; // r6
  int v13; // r0

  v3 = *(int **)(a1 + 4);
  v5 = a3;
  v6 = ((char *)v3 - (char *)a3) >> 4;
  if ( v6 > 0 )
  {
    v9 = ((char *)v3 - (char *)a3) >> 4;
    v10 = a2;
    do
    {
      std::vector<ItemManager::ObjectInfo>::operator=(v10, v5);
      v11 = v5[3];
      --v9;
      v5 += 4;
      v10[3] = v11;
      v10 += 4;
    }
    while ( v9 );
    v3 = *(int **)(a1 + 4);
    v8 = &a2[4 * v6];
  }
  else
  {
    v8 = a2;
  }
  if ( v3 != v8 )
  {
    v12 = (int)v8;
    do
    {
      v13 = v12;
      v12 += 16;
      std::vector<ItemManager::ObjectInfo>::~vector(v13);
    }
    while ( v3 != (int *)v12 );
  }
  *(_DWORD *)(a1 + 4) = v8;
  return a2;
}


// ===== 3eb6bc ItemManager::Flush(void) =====
int *__fastcall ItemManager::Flush(int *this)
{
  int *v1; // r1
  int *v2; // r2

  v1 = (int *)*(this + 1);
  v2 = (int *)*(this + 2);
  if ( v1 != v2 )
    return std::vector<ItemManager::CategoryInfo>::_M_erase((int)(this + 1), v1, v2);
  return this;
}


// ===== 3eb6e4 ItemManager::PreCache(void) =====
int __fastcall ItemManager::PreCache(ItemManager *this)
{
  int result; // r0
  int v3; // r3
  int *v4; // r4
  int v5; // r2
  int v6; // r8
  int v7; // r5
  int v8; // r3
  int v9; // r10
  int *v10; // r7
  int v11; // r8
  int v12; // r4
  int v13; // r7
  int Object; // r0
  unsigned int v15; // r2
  unsigned int v16; // r3
  int v17; // r0
  _BYTE *v18; // lr
  int v19; // r8
  int v20; // r8
  int v21; // r1
  int v22; // r0
  int v23; // r3
  char v24; // r2
  int v25; // r2
  void *v26; // r0
  size_t v27; // r1
  int v28; // r3
  int j; // r4
  ItemObject *v30; // r1
  int i; // [sp+14h] [bp-88h]
  int v32; // [sp+38h] [bp-64h]
  int v33; // [sp+40h] [bp-5Ch]
  char *v34; // [sp+44h] [bp-58h]
  _DWORD v35[4]; // [sp+50h] [bp-4Ch] BYREF
  _DWORD v36[4]; // [sp+60h] [bp-3Ch] BYREF
  _DWORD v37[3]; // [sp+70h] [bp-2Ch] BYREF
  int v38; // [sp+7Ch] [bp-20h] BYREF
  char v39[20]; // [sp+80h] [bp-1Ch] BYREF

  v33 = Arrays::ItemAudioVisualTable::size;
  v34 = (char *)this + 4;
  ObjectHandle::ObjectHandle((ObjectHandle *)v37);
  std::vector<ItemManager::CategoryInfo>::reserve(v34, v33);
  result = v33;
  if ( v33 )
  {
    for ( i = 0; i != v33; ++i )
    {
      memset(v36, 0, sizeof(v36));
      std::vector<ItemManager::CategoryInfo>::push_back(v34, v36);
      std::vector<ItemManager::ObjectInfo>::~vector(v36);
      v3 = *((_DWORD *)this + 1);
      v38 = 5;
      v4 = (int *)(v3 + 16 * i);
      v5 = *v4;
      if ( (unsigned int)((v4[2] - *v4) >> 3) <= 4 )
      {
        v6 = (v4[1] - v5) >> 3;
        if ( v5 )
        {
          v7 = std::vector<ItemManager::ObjectInfo>::_M_allocate_and_copy<ItemManager::ObjectInfo*>(v4, &v38);
          std::vector<ItemManager::ObjectInfo>::_M_clear(v4);
        }
        else
        {
          v7 = std::allocator<ItemManager::ObjectInfo>::_M_allocate(v4 + 2);
        }
        v8 = v38;
        v4[1] = v7 + 8 * v6;
        v4[2] = v7 + 8 * v8;
        *v4 = v7;
        v3 = *((_DWORD *)this + 1);
      }
      v9 = 16 * i;
      v10 = (int *)(v3 + 16 * i);
      v11 = v10[1];
      v12 = 0;
      if ( v11 != v10[2] )
      {
LABEL_8:
        *(_DWORD *)v11 = 0;
        *(_BYTE *)(v11 + 4) = 0;
        v10[1] += 8;
        goto LABEL_9;
      }
      while ( 1 )
      {
        v15 = (v11 - *(_DWORD *)(v3 + 16 * i)) >> 3;
        if ( v15 )
          v16 = 2 * v15;
        else
          v16 = 1;
        if ( v16 > 0x1FFFFFFF || v15 > v16 )
          v16 = 0x1FFFFFFF;
        v38 = v16;
        v17 = std::allocator<ItemManager::ObjectInfo>::_M_allocate(v10 + 2);
        v32 = v17;
        v18 = (_BYTE *)*v10;
        v19 = (v11 - *v10) >> 3;
        if ( v19 > 0 )
        {
          v21 = v19;
          v22 = 0;
          do
          {
            --v21;
            *(_DWORD *)(v32 + v22) = *(_DWORD *)&v18[v22];
            v23 = v32 + v22;
            v24 = v18[v22 + 4];
            v22 += 8;
            *(_BYTE *)(v23 + 4) = v24;
          }
          while ( v21 );
          v20 = v32 + 8 * v19;
        }
        else
        {
          v20 = v17;
        }
        *(_BYTE *)(v20 + 4) = 0;
        *(_DWORD *)v20 = 0;
        v25 = v20 + 8;
        v26 = (void *)*v10;
        if ( *v10 )
        {
          v27 = (v10[2] - (_DWORD)v26) & 0xFFFFFFF8;
          if ( v27 > 0x80 )
            CustomFree(v26);
          else
            __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v26, v27);
          v25 = v20 + 8;
        }
        v28 = v38;
        v10[1] = v25;
        *v10 = v32;
        v10[2] = v32 + 8 * v28;
LABEL_9:
        sprintf(v39, "ItemObject_%02u_%02u", i, v12);
        ObjectManager::Spawn((ObjectManager *)v35, (ObjectBase *)dword_99F764, "Item", v39, 0, 1);
        v37[0] = v35[0];
        v37[1] = v35[1];
        v37[2] = v35[2];
        if ( ObjectHandle::GetObject((ObjectHandle *)v37, 0) )
        {
          v13 = *(_DWORD *)(*((_DWORD *)this + 1) + 16 * i);
          Object = ObjectHandle::GetObject((ObjectHandle *)v37, 0);
          if ( !Object || *(_DWORD *)(Object + 244) != 3 )
            Object = 0;
          *(_DWORD *)(v13 + 8 * v12) = Object;
          ItemObject::InitOnce(*(ItemObject **)(*(_DWORD *)(*((_DWORD *)this + 1) + 16 * i) + 8 * v12), i);
        }
        if ( ++v12 == 5 )
          break;
        v3 = *((_DWORD *)this + 1);
        v10 = (int *)(v3 + v9);
        v11 = *(_DWORD *)(v3 + v9 + 4);
        if ( v11 != *(_DWORD *)(v3 + v9 + 8) )
          goto LABEL_8;
      }
      for ( j = 0; j != 40; j += 8 )
      {
        v30 = *(ItemObject **)(*(_DWORD *)(*((_DWORD *)this + 1) + 16 * i) + j);
        ItemManager::DeSpawn(this, v30);
      }
      result = i + 1;
    }
  }
  return result;
}


// ===== 3ebaf4 std::vector<ItemManager::CategoryInfo,std::allocator<ItemManager::CategoryInfo>>::~vector() =====
void **__fastcall std::vector<ItemManager::CategoryInfo>::~vector(void **a1)
{
  int v1; // r5
  void *v2; // r6
  _BYTE *v4; // r0
  size_t v5; // r1

  v1 = (int)a1[1];
  v2 = *a1;
  if ( (void *)v1 != *a1 )
  {
    do
    {
      v1 -= 16;
      std::vector<ItemManager::ObjectInfo>::~vector(v1);
    }
    while ( v2 != (void *)v1 );
  }
  v4 = *a1;
  if ( !*a1 )
    return a1;
  v5 = ((_BYTE *)a1[2] - v4) & 0xFFFFFFF0;
  if ( v5 <= 0x80 )
  {
    __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v4, v5);
    return a1;
  }
  CustomFree(v4);
  return a1;
}


// ===== 3ebb58 ItemManager::~ItemManager() =====
void __fastcall ItemManager::~ItemManager(ItemManager *this)
{
  void **v1; // r4

  *(_DWORD *)this = off_967400;
  v1 = (void **)((char *)this + 4);
  ItemManager::Flush((int *)this);
  std::vector<ItemManager::CategoryInfo>::~vector(v1);
}


// ===== 3ebb98 ItemManager::~ItemManager() =====
void __fastcall ItemManager::~ItemManager(ItemManager *this)
{
  ItemManager::~ItemManager(this);
  CustomFree(this);
}


// ===== 3ebbb4 ItemManager::~ItemManager() =====
void __fastcall ItemManager::~ItemManager(ItemManager *this)
{
  void **v1; // r4

  *(_DWORD *)this = off_967400;
  v1 = (void **)((char *)this + 4);
  ItemManager::Flush((int *)this);
  std::vector<ItemManager::CategoryInfo>::~vector(v1);
}


// ===== 3ebbf4 ItemObject::IsUpdatable(void) =====
int __fastcall ItemObject::IsUpdatable(ItemObject *this)
{
  return 1;
}


// ===== 3ebbfc ItemObject::IsAnimated(void) =====
int __fastcall ItemObject::IsAnimated(ItemObject *this)
{
  return 1;
}


// ===== 3ebc04 ItemObject::GetSpeed(void) =====
int __fastcall ItemObject::GetSpeed(ItemObject *this)
{
  return *((_DWORD *)this + 236);
}

