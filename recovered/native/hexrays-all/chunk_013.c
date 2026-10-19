// ===== 421db4 MenuFX::State::~State() =====
void __fastcall MenuFX::State::~State(MenuFX::State *this)
{
  _DWORD *v2; // r0
  bool v3; // zf
  _DWORD *v4; // r0

  v2 = *((_DWORD **)this + 20);
  *(_DWORD *)this = off_967CF8;
  if ( v2 )
  {
    v3 = (*v2)-- == 1;
    if ( v3 )
      gameswf::free_internal(v2);
  }
  v4 = *((_DWORD **)this + 18);
  if ( v4 )
  {
    v3 = (*v4)-- == 1;
    if ( v3 )
      gameswf::free_internal(v4);
  }
}


// ===== 421e2c MenuFX::State::~State() =====
void __fastcall MenuFX::State::~State(MenuFX::State *this)
{
  MenuFX::State::~State(this);
  CustomFree(this);
}


// ===== 421e48 RenderFX::Event::GetCharacterPath(void) =====
char *__fastcall RenderFX::Event::GetCharacterPath(RenderFX::Event *this)
{
  int v1; // r4
  char *v3; // r5
  _DWORD *v4; // r6
  char *v5; // r3
  int v6; // r2
  _BYTE *v7; // r1
  char *v8; // r3
  int v9; // r3
  _BYTE *v10; // r0
  _BYTE *v11; // r1
  _DWORD *v13; // r4
  const char *v14; // t1
  size_t v16; // r0
  _DWORD _0[38]; // [sp+0h] [bp-80h] BYREF

  v1 = *((char *)this + 37);
  if ( *((_BYTE *)this + 37) )
    return (char *)this + 37;
  v4 = *(_DWORD **)this;
  if ( *(_DWORD *)this )
  {
    v5 = (char *)v4[17];
    v6 = *v5;
    if ( v6 == -1 )
      v7 = *((_BYTE **)v5 + 3);
    else
      v7 = v5 + 1;
    if ( *v7 )
    {
LABEL_8:
      if ( v6 == -1 )
        v8 = *((char **)v5 + 3);
      else
        v8 = v5 + 1;
      _0[v1++] = v8;
    }
    while ( 1 )
    {
      v9 = v4[16];
      if ( !v9 )
        break;
      v10 = (_BYTE *)v4[15];
      if ( !v10[4] )
      {
        if ( (*(_DWORD *)v10)-- == 1 )
          gameswf::free_internal(v10);
        v4[16] = 0;
        v4[15] = 0;
        break;
      }
      v4 = (_DWORD *)v4[16];
      v5 = *(char **)(v9 + 68);
      v6 = *v5;
      if ( v6 == -1 )
        v11 = *((_BYTE **)v5 + 3);
      else
        v11 = v5 + 1;
      if ( *v11 )
        goto LABEL_8;
    }
    *((_BYTE *)this + 37) = 0;
    v3 = (char *)this + 37;
    if ( v1 )
    {
      v13 = &_0[v1];
      while ( 1 )
      {
        v14 = (const char *)*--v13;
        LC_API_STRCAT_0(v3, v14);
        if ( v13 == _0 )
          break;
        v16 = LC_API_STRLEN_0(v3);
        v3[v16] = 46;
        v3[v16 + 1] = 0;
      }
    }
  }
  else
  {
    *((_BYTE *)this + 37) = 0;
    return (char *)this + 37;
  }
  return v3;
}


// ===== 421f74 gameswf::weak_ptr<gameswf::character>::operator=(gameswf::character*) [clone] =====
void __fastcall gameswf::weak_ptr<gameswf::character>::operator=(int a1)
{
  *(_DWORD *)(a1 + 4) = 0;
  gameswf::smart_ptr_proxy::operator=((_DWORD **)a1, nullptr);
}


// ===== 421f80 MenuFX::State::State(char const*) =====
MenuFX::State *__fastcall MenuFX::State::State(MenuFX::State *this, const char *a2)
{
  *(_DWORD *)this = off_967CF8;
  *((_DWORD *)this + 18) = 0;
  *((_DWORD *)this + 19) = 0;
  *((_DWORD *)this + 20) = 0;
  *((_DWORD *)this + 21) = 0;
  LC_API_STRCPY_0((char *)this + 8, a2);
  gameswf::weak_ptr<gameswf::character>::operator=((int)this + 72);
  gameswf::weak_ptr<gameswf::character>::operator=((int)this + 80);
  *((_DWORD *)this + 22) = 0;
  return this;
}


// ===== 421fe0 MenuBase::Update(void) =====
int __fastcall MenuBase::Update(MenuBase *this)
{
  gameswf::character *v1; // r1
  RenderFX *v3; // r5
  _BYTE *v4; // r0
  int result; // r0

  v1 = *((gameswf::character **)this + 19);
  v3 = *((RenderFX **)this + 1);
  if ( v1 )
  {
    v4 = *((_BYTE **)this + 18);
    if ( !v4[4] )
    {
      if ( (*(_DWORD *)v4)-- == 1 )
        gameswf::free_internal(v4);
      v1 = nullptr;
      *((_DWORD *)this + 18) = 0;
      *((_DWORD *)this + 19) = 0;
    }
  }
  result = RenderFX::IsAnimOver(v3, v1);
  if ( result )
    ++*((_DWORD *)this + 30);
  return result;
}


// ===== 42204c MenuBase::GetCurrentMenuContext(void) =====
int __fastcall MenuBase::GetCurrentMenuContext(MenuBase *this)
{
  int result; // r0
  _BYTE *v3; // r3

  result = *((_DWORD *)this + 19);
  if ( result )
  {
    v3 = *((_BYTE **)this + 18);
    if ( !v3[4] )
    {
      if ( (*(_DWORD *)v3)-- == 1 )
        gameswf::free_internal(v3);
      *((_DWORD *)this + 19) = 0;
      *((_DWORD *)this + 18) = 0;
      return 0;
    }
  }
  return result;
}


// ===== 4220a0 MenuBase::FS_StartGame(char const*,char const*,void *) =====
int __fastcall MenuBase::FS_StartGame(MenuBase *this, const char *a2, MenuFX **a3, void *a4)
{
  unsigned int v6; // r1
  PlayerSavegame *v7; // r9
  unsigned int v8; // r1
  MenuCharacterSelect *v9; // r0
  int Instance; // r0
  const char *v11; // r9
  size_t v12; // r0
  _DWORD *v13; // r1
  _BYTE v15[4]; // [sp+1Ch] [bp-19Ch] BYREF
  unsigned int v16; // [sp+20h] [bp-198h]
  std::string v17; // [sp+34h] [bp-184h] BYREF
  int v18; // [sp+4Ch] [bp-16Ch]
  int v19; // [sp+50h] [bp-168h]
  _DWORD _5C[95]; // [sp+5Ch] [bp-15Ch] BYREF

  if ( !a2 || LC_API_STRCMP_0(a2, "false") )
    MenuFX::PopAll(a3[1]);
  v7 = *(PlayerSavegame **)(dword_99F778 + 8);
  if ( v7 == (PlayerSavegame *)-1 )
  {
    v7 = nullptr;
    *(_DWORD *)(dword_99F778 + 8) = 0;
  }
  if ( PlayerSavegame::SG_Exists(v7, v6) )
    PlayerSavegame::SG_Delete(v7, v8);
  v9 = PlayerSavegame::PlayerSavegame((PlayerSavegame *)v15, (unsigned int)v7, 1, 0);
  Instance = MenuCharacterSelect::GetInstance(v9);
  v11 = (const char *)a3[37];
  v19 = *(_DWORD *)(Instance + 356);
  v12 = LC_API_STRLEN_0(v11);
  std::string::_M_assign(&v17, v11, &v11[v12]);
  v18 = 1;
  PlayerSavegame::SG_SetSaveDate((PlayerSavegame *)v15);
  v13 = &_5C[PlayerSavegame::m_difficultyLevel + 103];
  *(_DWORD *)&v15[4 * PlayerSavegame::m_difficultyLevel + 80] = 41;
  *(v13 - 103) = 0;
  PlayerSavegame::SG_Save((PlayerSavegame *)v15);
  if ( !a2 || LC_API_STRCMP_0(a2, "false") )
    Application::LoadLevel(
      (Application *)&Singleton<Application>::s_inst,
      *(char **)(Arrays::LevelList::members + 72 * _5C[PlayerSavegame::m_difficultyLevel + 4] + 32),
      (const char *)_5C[PlayerSavegame::m_difficultyLevel],
      v16,
      0,
      1,
      0,
      0,
      0,
      0);
  PlayerSavegame::~PlayerSavegame((PlayerSavegame *)v15);
  return 1;
}


// ===== 422280 MenuBase::FS_SetPlayerName(char const*,char const*,void *) =====
int __fastcall MenuBase::FS_SetPlayerName(MenuBase *this, const char *a2, const char *a3, void *a4)
{
  std::string *v5; // r5
  size_t v6; // r0

  v5 = (std::string *)(a3 + 128);
  if ( a2 )
  {
    v6 = LC_API_STRLEN_0(a2);
    std::string::_M_assign(v5, a2, &a2[v6]);
  }
  else
  {
    std::string::_M_assign((std::string *const)(a3 + 128), "Bobb", "");
  }
  return 1;
}


// ===== 4222d8 MenuBase::FS_SetDifficulty(char const*,char const*,void *) =====
int __fastcall MenuBase::FS_SetDifficulty(MenuBase *this, const char *a2, const char *a3, void *a4)
{
  size_t v6; // r0

  v6 = LC_API_STRLEN_0(a2);
  std::string::_M_assign((std::string *const)(a3 + 156), a2, &a2[v6]);
  return 1;
}


// ===== 422304 MenuBase::FS_StopMusic(char const*,char const*,void *) =====
int __fastcall MenuBase::FS_StopMusic(MenuBase *this, const char *a2, const char *a3, void *a4)
{
  MenuManager *Instance; // r0
  int MenuByName; // r0
  int v6; // r5
  gameswf::character *v7; // r1
  _BYTE *v8; // r0
  MenuFX::State *StateHandler; // r1

  Instance = (MenuManager *)MenuManager::GetInstance(this);
  MenuByName = MenuManager::GetMenuByName(Instance, "menu_MainMenu");
  v6 = MenuByName;
  if ( !MenuByName )
    goto LABEL_6;
  v7 = *(gameswf::character **)(MenuByName + 76);
  if ( !v7 )
    goto LABEL_6;
  v8 = *(_BYTE **)(MenuByName + 72);
  if ( !v8[4] )
  {
    if ( (*(_DWORD *)v8)-- == 1 )
      gameswf::free_internal(v8);
    *(_DWORD *)(v6 + 76) = 0;
    *(_DWORD *)(v6 + 72) = 0;
    goto LABEL_6;
  }
  StateHandler = (MenuFX::State *)MenuFX::GetStateHandler(*(MenuFX **)(v6 + 4), v7);
  if ( !StateHandler || !MenuFX::IsStateInStack(*(MenuFX **)(v6 + 4), StateHandler) )
  {
LABEL_6:
    VoxSoundManager::StopMusic((VoxSoundManager *)VoxSoundManager::s_instance, 0);
    return 1;
  }
  return 0;
}


// ===== 4223bc MenuBase::SetVisible(bool) =====
void __fastcall MenuBase::SetVisible(MenuBase *this, bool a2)
{
  int v4; // r3
  _BYTE *v5; // r0

  if ( (*(int (__fastcall **)(MenuBase *))(*(_DWORD *)this + 60))(this) )
  {
    v4 = *((_DWORD *)this + 19);
    if ( v4 )
    {
      v5 = *((_BYTE **)this + 18);
      if ( !v5[4] )
      {
        if ( (*(_DWORD *)v5)-- == 1 )
          gameswf::free_internal(v5);
        v4 = 0;
        *((_DWORD *)this + 18) = 0;
        *((_DWORD *)this + 19) = 0;
      }
    }
    *(_BYTE *)(v4 + 155) = a2;
    *((_BYTE *)this + 116) = a2;
  }
}


// ===== 42242c std::allocator<gameswf::rect>::_M_allocate(uint,uint &) =====
void *__fastcall std::allocator<gameswf::rect>::_M_allocate(int a1, unsigned int a2, size_t *a3)
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


// ===== 42249c std::allocator<SlideEventCharacter *>::_M_allocate(uint,uint &) =====
void *__fastcall std::allocator<SlideEventCharacter *>::_M_allocate(int a1, unsigned int a2, size_t *a3)
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


// ===== 42250c std::allocator<gameswf::as_value *>::_M_allocate(uint,uint &) =====
void *__fastcall std::allocator<gameswf::as_value *>::_M_allocate(int a1, unsigned int a2, size_t *a3)
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


// ===== 42257c std::vector<gameswf::as_value *,std::allocator<gameswf::as_value *>>::vector(uint) =====
_DWORD *__fastcall std::vector<gameswf::as_value *>::vector(_DWORD *a1, unsigned int a2)
{
  char *v4; // r0
  char *v5; // r3
  char *v6; // r5
  size_t v8; // [sp+4h] [bp-8h] BYREF

  v8 = a2;
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v4 = (char *)std::allocator<gameswf::as_value *>::_M_allocate((int)(a1 + 2), a2, &v8);
  v5 = &v4[4 * v8];
  *a1 = v4;
  a1[1] = v4;
  a1[2] = v5;
  v6 = &v4[4 * a2];
  LC_API_MEMSET_0(v4, 0, 4 * a2);
  a1[1] = v6;
  return a1;
}


// ===== 4225e0 std::vector<gameswf::rect,std::allocator<gameswf::rect>>::~vector() =====
int __fastcall std::vector<gameswf::rect>::~vector(int a1)
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


// ===== 422620 MenuBase::RegisterSlideEvent(void) =====
void __fastcall MenuBase::RegisterSlideEvent(RenderFX **this)
{
  gameswf::character *v2; // r1
  _BYTE *v3; // r0
  _DWORD *Characters; // r7
  int v5; // r5
  gameswf::character *v6; // r6
  SlideEventCharacter *v7; // r8
  char *v8; // r6
  unsigned int v9; // r2
  unsigned int v10; // r3
  RenderFX *v11; // r0
  _BYTE *v12; // r1
  RenderFX *v13; // r10
  size_t v14; // r6
  SlideEventCharacter **v15; // r6
  RenderFX *v16; // r6
  RenderFX *v17; // r0
  size_t v18; // r1
  size_t v19; // r3
  size_t v21[2]; // [sp+4h] [bp-8h] BYREF

  MenuBase::ClearSlideEvents((MenuBase *)this);
  v2 = *(this + 19);
  if ( v2 )
  {
    v3 = *(this + 18);
    if ( v3[4] )
    {
      Characters = (_DWORD *)RenderFX::FindCharacters(*(this + 1), v2, "slide_", 0);
      if ( (int)Characters[1] > 0 )
      {
        v5 = 0;
        do
        {
          v6 = *(gameswf::character **)(*Characters + 4 * v5);
          v7 = (SlideEventCharacter *)operator new(0x2Cu, 0);
          SlideEventCharacter::SlideEventCharacter(v7, v6);
          v8 = (char *)*(this + 25);
          if ( v8 == (char *)*(this + 26) )
          {
            v9 = (v8 - (char *)*(this + 24)) >> 2;
            if ( v9 )
              v10 = 2 * v9;
            else
              v10 = 1;
            if ( v10 > 0x3FFFFFFF || v9 > v10 )
              v10 = 0x3FFFFFFF;
            v21[0] = v10;
            v11 = (RenderFX *)std::allocator<SlideEventCharacter *>::_M_allocate((int)(this + 26), v10, v21);
            v12 = *(this + 24);
            v13 = v11;
            v14 = v8 - v12;
            if ( v14 )
              v15 = (SlideEventCharacter **)((char *)memmove(v11, v12, v14) + v14);
            else
              v15 = (SlideEventCharacter **)v11;
            *v15 = v7;
            v16 = (RenderFX *)(v15 + 1);
            v17 = *(this + 24);
            if ( v17 )
            {
              v18 = (*(this + 26) - v17) & 0xFFFFFFFC;
              if ( v18 > 0x80 )
                CustomFree(v17);
              else
                __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v17, v18);
            }
            v19 = v21[0];
            *(this + 24) = v13;
            *(this + 25) = v16;
            *(this + 26) = (RenderFX *)((char *)v13 + 4 * v19);
          }
          else
          {
            *(_DWORD *)v8 = v7;
            *(this + 25) = (RenderFX *)((char *)*(this + 25) + 4);
          }
          ++v5;
        }
        while ( v5 < Characters[1] );
      }
    }
    else
    {
      if ( (*(_DWORD *)v3)-- == 1 )
        gameswf::free_internal(v3);
      *(this + 19) = nullptr;
      *(this + 18) = nullptr;
    }
  }
}


// ===== 4227b0 std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,bool (*)(char const*,char const*,void *)>,std::priv::_Select1st<std::pair<std::string const,bool (*)(char const*,char const*,void *)>>,std::priv::_MapTraitsT<std::pair<std::string const,bool (*)(char const*,char const*,void *)>>,std::allocator<std::pair<std::string const,bool (*)(char const*,char const*,void *)>>>::_M_erase(std::priv::_Rb_tree_node_base *) =====
void __fastcall std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,bool (*)(char const*,char const*,void *)>,std::priv::_Select1st<std::pair<std::string const,bool (*)(char const*,char const*,void *)>>,std::priv::_MapTraitsT<std::pair<std::string const,bool (*)(char const*,char const*,void *)>>,std::allocator<std::pair<std::string const,bool (*)(char const*,char const*,void *)>>>::_M_erase(
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
      std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,bool (*)(char const*,char const*,void *)>,std::priv::_Select1st<std::pair<std::string const,bool (*)(char const*,char const*,void *)>>,std::priv::_MapTraitsT<std::pair<std::string const,bool (*)(char const*,char const*,void *)>>,std::allocator<std::pair<std::string const,bool (*)(char const*,char const*,void *)>>>::_M_erase(
        a1,
        *(_DWORD *)(v2 + 12));
      v4 = *(_DWORD *)(v2 + 8);
      std::string::~string((std::string *)(v2 + 16));
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer((void *)v2, 0x2Cu);
      v2 = v4;
    }
    while ( v4 );
  }
}


// ===== 4227f0 std::map<std::string,bool (*)(char const*,char const*,void *),std::less<std::string>,std::allocator<std::pair<std::string const,bool (*)(char const*,char const*,void *)>>>::~map() =====
int *__fastcall std::map<std::string,bool (*)(char const*,char const*,void *)>::~map(int *a1)
{
  if ( a1[4] )
  {
    std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,bool (*)(char const*,char const*,void *)>,std::priv::_Select1st<std::pair<std::string const,bool (*)(char const*,char const*,void *)>>,std::priv::_MapTraitsT<std::pair<std::string const,bool (*)(char const*,char const*,void *)>>,std::allocator<std::pair<std::string const,bool (*)(char const*,char const*,void *)>>>::_M_erase(
      (int)a1,
      a1[1]);
    a1[4] = 0;
    a1[1] = 0;
    a1[2] = (int)a1;
    a1[3] = (int)a1;
  }
  return a1;
}


// ===== 422824 MenuBase::~MenuBase() =====
void __fastcall MenuBase::~MenuBase(MenuBase *this)
{
  void *v2; // r4
  MenuBase **v3; // r0
  MenuBase *v4; // r4
  void *v5; // r0
  size_t v6; // r1
  _DWORD *v7; // r0
  bool v8; // zf
  _DWORD *v9; // r0

  *(_DWORD *)this = off_967D38;
  MenuBase::ClearSlideEvents(this);
  v2 = *((void **)this + 23);
  if ( v2 )
  {
    DragAndDrop::~DragAndDrop(*((Dropable ***)this + 23));
    CustomFree(v2);
    *((_DWORD *)this + 23) = 0;
  }
  std::vector<gameswf::rect>::~vector((int)this + 184);
  std::string::~string((std::string *)((char *)this + 156));
  std::string::~string((std::string *)((char *)this + 128));
  v3 = *((MenuBase ***)this + 27);
  if ( v3 != (MenuBase **)((char *)this + 108) )
  {
    while ( 1 )
    {
      v4 = *v3;
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v3, 0x14u);
      if ( v4 == (MenuBase *)((char *)this + 108) )
        break;
      v3 = (MenuBase **)v4;
    }
    v3 = (MenuBase **)((char *)this + 108);
  }
  *((_DWORD *)this + 27) = v3;
  *((_DWORD *)this + 28) = v3;
  v5 = *((void **)this + 24);
  if ( v5 )
  {
    v6 = (*((_DWORD *)this + 26) - (_DWORD)v5) & 0xFFFFFFFC;
    if ( v6 > 0x80 )
      CustomFree(v5);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v5, v6);
  }
  v7 = *((_DWORD **)this + 20);
  *(_DWORD *)this = off_967CF8;
  if ( v7 )
  {
    v8 = (*v7)-- == 1;
    if ( v8 )
      gameswf::free_internal(v7);
  }
  v9 = *((_DWORD **)this + 18);
  if ( v9 )
  {
    v8 = (*v9)-- == 1;
    if ( v8 )
      gameswf::free_internal(v9);
  }
}


// ===== 422958 MenuBase::~MenuBase() =====
void __fastcall MenuBase::~MenuBase(MenuBase *this)
{
  MenuBase::~MenuBase(this);
  CustomFree(this);
}


// ===== 422974 MenuBase::~MenuBase() =====
void __fastcall MenuBase::~MenuBase(MenuBase *this)
{
  void *v2; // r4
  MenuBase **v3; // r0
  MenuBase *v4; // r4
  void *v5; // r0
  size_t v6; // r1
  _DWORD *v7; // r0
  bool v8; // zf
  _DWORD *v9; // r0

  *(_DWORD *)this = off_967D38;
  MenuBase::ClearSlideEvents(this);
  v2 = *((void **)this + 23);
  if ( v2 )
  {
    DragAndDrop::~DragAndDrop(*((Dropable ***)this + 23));
    CustomFree(v2);
    *((_DWORD *)this + 23) = 0;
  }
  std::vector<gameswf::rect>::~vector((int)this + 184);
  std::string::~string((std::string *)((char *)this + 156));
  std::string::~string((std::string *)((char *)this + 128));
  v3 = *((MenuBase ***)this + 27);
  if ( v3 != (MenuBase **)((char *)this + 108) )
  {
    while ( 1 )
    {
      v4 = *v3;
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v3, 0x14u);
      if ( v4 == (MenuBase *)((char *)this + 108) )
        break;
      v3 = (MenuBase **)v4;
    }
    v3 = (MenuBase **)((char *)this + 108);
  }
  *((_DWORD *)this + 27) = v3;
  *((_DWORD *)this + 28) = v3;
  v5 = *((void **)this + 24);
  if ( v5 )
  {
    v6 = (*((_DWORD *)this + 26) - (_DWORD)v5) & 0xFFFFFFFC;
    if ( v6 > 0x80 )
      CustomFree(v5);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v5, v6);
  }
  v7 = *((_DWORD **)this + 20);
  *(_DWORD *)this = off_967CF8;
  if ( v7 )
  {
    v8 = (*v7)-- == 1;
    if ( v8 )
      gameswf::free_internal(v7);
  }
  v9 = *((_DWORD **)this + 18);
  if ( v9 )
  {
    v8 = (*v9)-- == 1;
    if ( v8 )
      gameswf::free_internal(v9);
  }
}


// ===== 422aa8 CharPropTextField::Update(RenderFX *) =====
void __fastcall CharPropTextField::Update(CharPropTextField *this, RenderFX *a2)
{
  Character *character_660; // r10
  CharProperties *v5; // r10
  int IntWithBonus; // r0
  int v7; // r9
  int v8; // r10
  _DWORD *v9; // lr
  int v10; // r1
  int v11; // r2
  int v12; // r3
  int v13; // r1
  int v14; // r2
  int v15; // r3
  int v16; // r3
  gameswf::character *v17; // r10
  unsigned int Constant; // r0
  int v19; // r11
  std::string v20; // [sp+4h] [bp-20h] BYREF

  character_660 = PlayerManager::GetLocalPlayer((PlayerManager *)dword_99F76C, 0, 1)->character_660;
  if ( character_660 && *(_DWORD *)this != -1 )
  {
    v5 = (Character *)((char *)character_660 + 1376);
    IntWithBonus = CharProperties::PROPS_GetIntWithBonus(v5, *(_DWORD *)this, 0);
    v7 = IntWithBonus;
    switch ( *((_DWORD *)this + 1) )
    {
      case '_':
        goto LABEL_10;
      case 'b':
        if ( CharProperties::PROPS_IsBonus(v5, *(_DWORD *)this) )
        {
          v17 = *((gameswf::character **)this + 2);
          Constant = PyDataConstants::getConstant((PyDataConstants *)dword_99F758, "FontTextColors", "propBonus");
          RenderFX::SetColorTransform(a2, v17, 0xFF000000, Constant);
        }
        else
        {
          v8 = *((_DWORD *)this + 2);
          v9 = *(_DWORD **)(v8 + 84);
          if ( !v9 )
          {
            v19 = operator new(108, 0);
            gameswf::character::custom::custom(v19);
            *(_DWORD *)(v8 + 84) = v19;
            v9 = (_DWORD *)v19;
          }
          v10 = dword_A2CA60;
          v11 = dword_A2CA64;
          v12 = dword_A2CA68;
          *v9 = gameswf::cxform::identity;
          v9[1] = v10;
          v9[2] = v11;
          v9[3] = v12;
          v13 = dword_A2CA70;
          v14 = dword_A2CA74;
          v15 = dword_A2CA78;
          v9[4] = dword_A2CA6C;
          v9[5] = v13;
          v9[6] = v14;
          v9[7] = v15;
          v16 = *(_DWORD *)(v8 + 84);
          *(_BYTE *)(v8 + 154) = 1;
          *(_DWORD *)(v8 + 72) = v16;
        }
LABEL_10:
        if ( v7 <= 1000 )
        {
          RenderFX::FormatHTML(a2, *((gameswf::character **)this + 2), "%d", v7);
        }
        else
        {
          v20._M_finish = (char *)&v20;
          v20._M_start_of_storage._M_data = (char *)&v20;
          std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block(&v20, 0x10u);
          *v20._M_finish = 0;
          StringManager::parse((StringManager *)dword_99F760, &v20, "^d", v7);
          RenderFX::SetText(a2, *((gameswf::character **)this + 2), v20._M_start_of_storage._M_data, 1);
          std::string::~string(&v20);
        }
        break;
      case 'i':
        if ( IntWithBonus != -1 )
          GameSWFUtils::GotoFrame(*((_DWORD *)this + 2), IntWithBonus);
        break;
      case 'p':
        RenderFX::FormatHTML(a2, *((gameswf::character **)this + 2), "%d%%", IntWithBonus);
        break;
      default:
        return;
    }
  }
}


// ===== 422d10 MenuBase::ProcessLocalization(void) =====
_DWORD *__fastcall MenuBase::ProcessLocalization(_DWORD *this)
{
  const char *v1; // r11
  unsigned int v2; // r6
  StringManager *v3; // r4
  bool v4; // zf
  unsigned int SymbolPack; // r0
  gameswf::character *v6; // r1
  RenderFX *v7; // r5
  _BYTE *v8; // r0
  int v9; // r5
  RenderFX::SearchIndex *SearchIndex; // r9
  int v11; // r0
  unsigned int v12; // r0
  const char *StringIdx; // r8
  gameswf::character *v14; // r10
  RenderFX *v15; // r7
  int v16; // r0
  _DWORD *v17; // [sp+14h] [bp-260h]
  char s[512]; // [sp+3Ch] [bp-238h] BYREF
  std::string v19; // [sp+23Ch] [bp-38h] BYREF
  std::string v20; // [sp+254h] [bp-20h] BYREF

  v17 = this;
  if ( *(this + 19) )
  {
    this = (_DWORD *)*(this + 18);
    if ( *((_BYTE *)this + 4) )
    {
      v1 = (const char *)(v17 + 2);
      DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
      std::string::string(&v20, "isTracingMenuBase");
      DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v20);
      std::string::~string(&v20);
      v2 = 0;
      v3 = (StringManager *)dword_99F760;
      do
      {
        v4 = v2 == 28;
        if ( v2 != 28 )
          v4 = v2 == 20;
        if ( v4 || v2 == 19 )
        {
          SymbolPack = StringManager::getSymbolPack(v3);
          StringManager::getStringIdx(v3, v2, 0, SymbolPack);
          v6 = (gameswf::character *)v17[19];
          v7 = (RenderFX *)v17[1];
          if ( v6 )
          {
            v8 = (_BYTE *)v17[18];
            if ( !v8[4] )
            {
              v4 = (*(_DWORD *)v8)-- == 1;
              if ( v4 )
                gameswf::free_internal(v8);
              v6 = nullptr;
              v17[18] = 0;
              v17[19] = 0;
            }
          }
          RenderFX::SetContext(v7, v6);
          v9 = 0;
          SearchIndex = (RenderFX::SearchIndex *)RenderFX::GetSearchIndex((RenderFX *)v17[1]);
          while ( 1 )
          {
            v11 = StringManager::getSymbolPack(v3);
            this = (_DWORD *)StringManager::getNumberOfStrings(v3, v2, v11);
            if ( v9 >= (int)this )
              break;
            v12 = StringManager::getSymbolPack(v3);
            StringIdx = (const char *)StringManager::getStringIdx(v3, v2, v9, v12);
            sprintf(s, "%s.btn_%s.%s", v1, StringIdx, "text");
            v14 = (gameswf::character *)RenderFX::SearchIndex::Find(SearchIndex, s);
            if ( v14
              || (sprintf(s, "%s.%s.%s", v1, StringIdx, "text"),
                  (v14 = (gameswf::character *)RenderFX::SearchIndex::Find(SearchIndex, s)) != nullptr)
              || (sprintf(s, "%s.%s", v1, StringIdx),
                  (v14 = (gameswf::character *)RenderFX::SearchIndex::Find(SearchIndex, s)) != nullptr) )
            {
              if ( (*(int (__fastcall **)(gameswf::character *, int))(*(_DWORD *)v14 + 8))(v14, 32) )
              {
                DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
                std::string::string(&v19, "isTracingMenuBase");
                DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v19);
                std::string::~string(&v19);
                v15 = (RenderFX *)v17[1];
                v16 = StringManager::getStringIdx(v3, v2, v9);
                RenderFX::FormatHTML(v15, v14, "%s", v16, 1);
              }
              ++v9;
            }
            else
            {
              ++v9;
            }
          }
        }
        ++v2;
      }
      while ( v2 != 37 );
      *((_BYTE *)v17 + 117) = 1;
    }
    else
    {
      v4 = (*this)-- == 1;
      if ( v4 )
        gameswf::free_internal(this);
      v17[19] = 0;
      v17[18] = 0;
    }
  }
  return this;
}


// ===== 423098 MenuBase::HasHitDeadZone(int,int) =====
int __fastcall MenuBase::HasHitDeadZone(MenuBase *this, int a2, int a3)
{
  float *v3; // r6
  float *v4; // r4
  std::string v6; // [sp+4h] [bp-1Ch] BYREF

  v3 = *((float **)this + 47);
  v4 = *((float **)this + 46);
  if ( v4 == v3 )
    return 0;
  while ( (float)a2 < *v4 || (float)a2 > v4[1] || (float)a3 < v4[2] || (float)a3 > v4[3] )
  {
    v4 += 4;
    if ( v4 == v3 )
      return 0;
  }
  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string(&v6, "isTracingMenuBase");
  DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v6);
  std::string::~string(&v6);
  return 1;
}


// ===== 4231b4 MenuBase::PostOnEvent(RenderFX::Event &) =====
MenuManager *__fastcall MenuBase::PostOnEvent(MenuBase *this, RenderFX::Event *a2)
{
  MenuManager *result; // r0
  MenuManager *Instance; // r0
  MenuManager *v5; // r0
  int v6; // [sp+0h] [bp-8h] BYREF
  int v7; // [sp+4h] [bp-4h] BYREF

  result = (MenuManager *)MenuManager::GetInstance(this);
  if ( *((_DWORD *)result + 45) )
  {
    v6 = 0;
    v7 = 0;
    Instance = (MenuManager *)MenuManager::GetInstance(result);
    MenuManager::GetRawCurrentEventPosition(Instance, &v7, &v6);
    result = (MenuManager *)MenuBase::HasHitDeadZone(this, v7, v6);
    if ( result )
    {
      v5 = (MenuManager *)MenuManager::GetInstance(result);
      return (MenuManager *)MenuManager::consumeEvent(v5);
    }
  }
  return result;
}


// ===== 423214 MenuBase::OnEvent(RenderFX::Event &) =====
MenuManager *__fastcall MenuBase::OnEvent(MenuBase *this, const char **a2)
{
  DragAndDrop *v3; // r0
  const char *v5; // r3
  const char *v6; // r6
  char *v8; // r7
  RenderFX *v9; // r6
  char *CharacterPath; // r0

  v3 = *((DragAndDrop **)this + 23);
  if ( v3 )
    DragAndDrop::OnEvent(v3, (RenderFX::Event *)a2);
  if ( MenuBase::m_isRolloverEventEnabled )
  {
    v5 = a2[2];
    v6 = v5;
    if ( v5 != byte_8 )
      goto LABEL_5;
    v8 = (char *)a2[1];
    if ( v8 != LC_API_STRSTR_0(v8, "btn") )
    {
LABEL_14:
      v5 = v6;
LABEL_5:
      if ( v5 != &byte_6 )
        return MenuBase::PostOnEvent(this, (RenderFX::Event *)a2);
      goto LABEL_12;
    }
    if ( !(*(int (__fastcall **)(const char *))(*(_DWORD *)*a2 + 368))(*a2) )
    {
      v6 = a2[2];
      goto LABEL_14;
    }
    v9 = *((RenderFX **)this + 1);
    CharacterPath = RenderFX::Event::GetCharacterPath((RenderFX::Event *)a2);
    RenderFX::SetFocus(v9, CharacterPath, 0);
  }
  if ( a2[2] != &byte_6 )
    return MenuBase::PostOnEvent(this, (RenderFX::Event *)a2);
LABEL_12:
  if ( LC_API_STRSTR_0(a2[1], "btn_MENU_TWITTER") )
    nativeOpenBrowser("http://ingameads.gameloft.com/redir/?from=D2HP&op=TBFV&game=D2HP&t=twitter");
  return MenuBase::PostOnEvent(this, (RenderFX::Event *)a2);
}


// ===== 42331c MenuBase::RegisterDeadZones(void) =====
void __fastcall MenuBase::RegisterDeadZones(MenuBase *this)
{
  MenuBase *v1; // r4
  _BYTE *v2; // r0
  gameswf::character *v3; // r1
  RenderFX *v4; // r5
  _BYTE *v5; // r0
  _DWORD *Characters; // r7
  int v7; // r5
  int v8; // r8
  int v9; // r9
  int v10; // r11
  _DWORD *v11; // r10
  unsigned int v12; // r2
  unsigned int v13; // r3
  _DWORD *v14; // r0
  int v15; // r3
  _DWORD *v16; // r10
  int v17; // r10
  unsigned int v18; // r12
  int v19; // r11
  MenuBase *v20; // r8
  int v21; // r5
  _DWORD *v22; // r4
  int v23; // r0
  int v24; // r1
  int v25; // r2
  int v26; // r3
  _DWORD *v27; // r12
  char *v28; // r3
  char *v29; // r0
  size_t v30; // r1
  size_t v31; // r3
  bool v32; // zf
  int v33; // [sp+8h] [bp-8Ch]
  _DWORD *v34; // [sp+24h] [bp-70h]
  int v35; // [sp+28h] [bp-6Ch]
  int v36; // [sp+2Ch] [bp-68h]
  int v37; // [sp+34h] [bp-60h]
  int v38; // [sp+3Ch] [bp-58h]
  _DWORD v39[4]; // [sp+40h] [bp-54h] BYREF
  size_t v40; // [sp+50h] [bp-44h] BYREF
  std::string v41; // [sp+5Ch] [bp-38h] BYREF
  std::string v42; // [sp+74h] [bp-20h] BYREF

  v1 = this;
  if ( !*((_BYTE *)this + 180) && *((_DWORD *)this + 19) )
  {
    v2 = *((_BYTE **)this + 18);
    if ( v2[4] )
    {
      *((_BYTE *)v1 + 180) = 1;
      DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
      std::string::string(&v42, "isTracingMenuBase");
      DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v42);
      std::string::~string(&v42);
      v3 = *((gameswf::character **)v1 + 19);
      v4 = *((RenderFX **)v1 + 1);
      if ( v3 )
      {
        v5 = *((_BYTE **)v1 + 18);
        if ( !v5[4] )
        {
          v32 = (*(_DWORD *)v5)-- == 1;
          if ( v32 )
            gameswf::free_internal(v5);
          v3 = nullptr;
          *((_DWORD *)v1 + 18) = 0;
          *((_DWORD *)v1 + 19) = 0;
        }
      }
      Characters = (_DWORD *)RenderFX::FindCharacters(v4, v3, "deadzone_", 0);
      if ( (int)Characters[1] > 0 )
      {
        v36 = (int)v1 + 192;
        v7 = 0;
        do
        {
          GameSWFUtils::GetAbsoluteBoundingRect((GameSWFUtils *)v39, *(gameswf::character ***)(*Characters + 4 * v7));
          v8 = v39[3];
          v9 = v39[2];
          v10 = v39[1];
          v33 = v39[0];
          DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
          std::string::string(&v41, "isTracingMenuBase");
          DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v41);
          std::string::~string(&v41);
          v11 = *((_DWORD **)v1 + 47);
          if ( v11 == *((_DWORD **)v1 + 48) )
          {
            v12 = ((int)v11 - *((_DWORD *)v1 + 46)) >> 4;
            if ( v12 )
              v13 = 2 * v12;
            else
              v13 = 1;
            if ( v13 > 0xFFFFFFF || v12 > v13 )
              v13 = 0xFFFFFFF;
            v40 = v13;
            v14 = std::allocator<gameswf::rect>::_M_allocate(v36, v13, &v40);
            v34 = v14;
            v15 = *((_DWORD *)v1 + 46);
            v35 = ((int)v11 - v15) >> 4;
            if ( v35 > 0 )
            {
              v17 = ((int)v11 - v15) >> 4;
              v37 = v8;
              v38 = v10;
              v18 = 0;
              v19 = v7;
              v20 = v1;
              v21 = *((_DWORD *)v1 + 46);
              do
              {
                v22 = &v34[v18 / 4];
                --v17;
                v23 = *(_DWORD *)(v21 + v18);
                v24 = *(_DWORD *)(v21 + v18 + 4);
                v25 = *(_DWORD *)(v21 + v18 + 8);
                v26 = *(_DWORD *)(v21 + v18 + 12);
                v18 += 16;
                *v22 = v23;
                v22[1] = v24;
                v22[2] = v25;
                v22[3] = v26;
              }
              while ( v17 );
              v7 = v19;
              v1 = v20;
              v10 = v38;
              v8 = v37;
              v16 = &v34[4 * v35];
            }
            else
            {
              v16 = v14;
            }
            v16[3] = v8;
            v16[2] = v9;
            v16[1] = v10;
            *v16 = v33;
            v27 = v16 + 4;
            v28 = *((char **)v1 + 47);
            v29 = *((char **)v1 + 46);
            if ( v28 != v29 )
              v28 += 16 * ~((unsigned int)(v28 - 16 - v29) >> 4);
            if ( v28 )
            {
              v30 = (*((_DWORD *)v1 + 48) - (_DWORD)v28) & 0xFFFFFFF0;
              if ( v30 > 0x80 )
                CustomFree(v29);
              else
                __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v29, v30);
              v27 = v16 + 4;
            }
            v31 = v40;
            *((_DWORD *)v1 + 47) = v27;
            *((_DWORD *)v1 + 46) = v34;
            *((_DWORD *)v1 + 48) = &v34[4 * v31];
          }
          else
          {
            v11[3] = v8;
            v11[2] = v9;
            *v11 = v33;
            v11[1] = v10;
            *((_DWORD *)v1 + 47) += 16;
          }
          ++v7;
        }
        while ( v7 < Characters[1] );
      }
    }
    else
    {
      v32 = (*(_DWORD *)v2)-- == 1;
      if ( v32 )
        gameswf::free_internal(v2);
      *((_DWORD *)v1 + 19) = 0;
      *((_DWORD *)v1 + 18) = 0;
    }
  }
}


// ===== 4236c0 SlideEventCharacter::Test(RenderFX::Event &,MenuFX *) =====
int __fastcall SlideEventCharacter::Test(SlideEventCharacter *this, RenderFX::Event *a2, MenuFX *a3)
{
  int result; // r0
  int v7; // r3
  float v8; // r0
  float v9; // r1
  float v10; // r10
  float v11; // r9
  float v12; // r0
  float v13; // r0
  double v14; // r0
  float v15; // r0
  float v16; // r11
  float v17; // r9
  float v18; // r1
  float v19; // r11
  float v20; // r11
  float v21; // r11
  float v22; // r11
  float v23; // r11
  float v24; // r10
  float v25[2]; // [sp+Ch] [bp-F0h] BYREF
  std::string v26; // [sp+34h] [bp-C8h] BYREF
  std::string v27; // [sp+4Ch] [bp-B0h] BYREF
  std::string v28; // [sp+64h] [bp-98h] BYREF
  std::string v29; // [sp+7Ch] [bp-80h] BYREF
  std::string v30; // [sp+94h] [bp-68h] BYREF
  std::string v31; // [sp+ACh] [bp-50h] BYREF
  std::string v32; // [sp+C4h] [bp-38h] BYREF
  std::string v33; // [sp+DCh] [bp-20h] BYREF

  result = *(_DWORD *)this;
  if ( result != *(_DWORD *)a2 )
    return result;
  if ( *((_DWORD *)a2 + 2) == 4 )
  {
    *((_BYTE *)this + 24) = 0;
  }
  else if ( *((_BYTE *)this + 24) )
  {
    return result;
  }
  v7 = dword_99F79C;
  if ( !*((_BYTE *)this + 8) )
  {
LABEL_38:
    *((_BYTE *)this + 8) = 1;
    *((_DWORD *)this + 4) = v7;
    *((_DWORD *)this + 7) = *((_DWORD *)a2 + 3);
    *((_DWORD *)this + 8) = *((_DWORD *)a2 + 4);
    return result;
  }
  if ( (unsigned int)(dword_99F79C - *((_DWORD *)this + 4)) > *((_DWORD *)this + 3) )
  {
    *((_BYTE *)this + 8) = 0;
    goto LABEL_38;
  }
  v8 = *((float *)a2 + 3);
  v9 = *((float *)this + 7);
  *((float *)this + 9) = v8;
  v10 = *((float *)a2 + 4);
  *((float *)this + 10) = v10;
  v11 = v8 - v9;
  v12 = v10 - *((float *)this + 8);
  v25[0] = v11;
  v25[1] = v12;
  v13 = sqrt((float)((float)(v11 * v11) + (float)(v12 * v12)));
  result = *((float *)this + 1) < v13;
  if ( result )
  {
    LODWORD(v14) = glitch::core::vector2d<float>::getAngle(v25);
    v15 = v14;
    *((_BYTE *)this + 24) = 1;
    v16 = v15 - 180.0;
    if ( (float)(v15 - 180.0) < 0.0 )
      LODWORD(v16) += 0x80000000;
    v17 = (float)*((unsigned int *)this + 5);
    if ( v17 > v16 )
    {
      DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
      std::string::string(&v33, "isTracingTraceSlideAngleTrigger");
      DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v33);
      std::string::~string(&v33);
      result = RenderFX::InvokeASCallback(a3, *(gameswf::character **)a2, "OnSlideLeft", nullptr, 0);
    }
    else
    {
      if ( v15 < 0.0 )
        LODWORD(v18) = LODWORD(v15) + 0x80000000;
      else
        v18 = v15;
      if ( v17 > v18 )
      {
        DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
        std::string::string(&v32, "isTracingTraceSlideAngleTrigger");
        DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v32);
        std::string::~string(&v32);
        result = RenderFX::InvokeASCallback(a3, *(gameswf::character **)a2, "OnSlideRight", nullptr, 0);
      }
      else
      {
        v19 = v15 - 90.0;
        if ( (float)(v15 - 90.0) < 0.0 )
          LODWORD(v19) += 0x80000000;
        if ( v17 > v19 )
        {
          DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
          std::string::string(&v31, "isTracingTraceSlideAngleTrigger");
          DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v31);
          std::string::~string(&v31);
          result = RenderFX::InvokeASCallback(a3, *(gameswf::character **)a2, "OnSlideUp", nullptr, 0);
        }
        else
        {
          v20 = v15 - 270.0;
          if ( (float)(v15 - 270.0) < 0.0 )
            LODWORD(v20) += 0x80000000;
          if ( v17 > v20 )
          {
            DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
            std::string::string(&v30, "isTracingTraceSlideAngleTrigger");
            DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v30);
            std::string::~string(&v30);
            result = RenderFX::InvokeASCallback(a3, *(gameswf::character **)a2, "OnSlideDown", nullptr, 0);
          }
          else
          {
            v21 = v15 - 45.0;
            if ( (float)(v15 - 45.0) < 0.0 )
              LODWORD(v21) += 0x80000000;
            if ( v17 > v21 )
            {
              DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
              std::string::string(&v29, "isTracingTraceSlideAngleTrigger");
              DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v29);
              std::string::~string(&v29);
              result = RenderFX::InvokeASCallback(a3, *(gameswf::character **)a2, "OnSlideUpRight", nullptr, 0);
            }
            else
            {
              v22 = v15 - 135.0;
              if ( (float)(v15 - 135.0) < 0.0 )
                LODWORD(v22) += 0x80000000;
              if ( v17 > v22 )
              {
                DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
                std::string::string(&v28, "isTracingTraceSlideAngleTrigger");
                DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v28);
                std::string::~string(&v28);
                result = RenderFX::InvokeASCallback(a3, *(gameswf::character **)a2, "OnSlideUpLeft", nullptr, 0);
              }
              else
              {
                v23 = v15 - 225.0;
                if ( (float)(v15 - 225.0) < 0.0 )
                  LODWORD(v23) += 0x80000000;
                if ( v17 > v23 )
                {
                  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
                  std::string::string(&v27, "isTracingTraceSlideAngleTrigger");
                  DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v27);
                  std::string::~string(&v27);
                  result = RenderFX::InvokeASCallback(a3, *(gameswf::character **)a2, "OnSlideDownLeft", nullptr, 0);
                }
                else
                {
                  v24 = v15 - 315.0;
                  if ( (float)(v15 - 315.0) < 0.0 )
                    LODWORD(v24) += 0x80000000;
                  result = v17 > v24;
                  if ( v17 > v24 )
                  {
                    DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
                    std::string::string(&v26, "isTracingTraceSlideAngleTrigger");
                    DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v26);
                    std::string::~string(&v26);
                    result = RenderFX::InvokeASCallback(a3, *(gameswf::character **)a2, "OnSlideDownRight", nullptr, 0);
                  }
                  else
                  {
                    *((_BYTE *)this + 24) = 0;
                  }
                }
              }
            }
          }
        }
      }
    }
    *((_BYTE *)this + 8) = 0;
  }
  return result;
}


// ===== 423d6c MenuBase::TestSlideEvents(RenderFX::Event &) =====
int __fastcall MenuBase::TestSlideEvents(int this, RenderFX::Event *a2)
{
  int v3; // r6
  SlideEventCharacter **v4; // r4
  SlideEventCharacter **i; // r7
  SlideEventCharacter *v6; // t1

  v3 = this;
  if ( (unsigned int)(*((_DWORD *)a2 + 2) - 4) <= 1 )
  {
    v4 = *(SlideEventCharacter ***)(this + 96);
    for ( i = *(SlideEventCharacter ***)(this + 100);
          v4 != i;
          this = SlideEventCharacter::Test(v6, a2, *(MenuFX **)(v3 + 4)) )
    {
      v6 = *v4++;
    }
  }
  return this;
}


// ===== 423db8 MenuBase::RegisterDragAndDrops(int (*)(gameswf::character const*)) =====
_BYTE *__fastcall MenuBase::RegisterDragAndDrops(RenderFX **this, int (*a2)(const gameswf::character *))
{
  gameswf::character *v2; // r4
  _BYTE *result; // r0
  void *v5; // r5
  DragAndDrop *v6; // r5
  gameswf::character *v7; // r1
  RenderFX *v8; // r5
  _BYTE *v9; // r0
  RenderFX *v10; // r0
  int v11; // r5
  _DWORD *Characters; // r0
  int v13; // r8
  _DWORD *v14; // r7
  int v15; // r3
  gameswf::character *v16; // r1
  RenderFX *v17; // r4
  _BYTE *v18; // r0
  _DWORD *v19; // r5
  int v20; // r4
  _DWORD *v21; // r3
  void *v22; // r4
  bool v23; // zf
  int v24; // r3
  int v25; // r7
  RenderFX **v26; // r10
  gameswf::character *v27; // r6
  int *v28; // r0
  int v29; // r9
  int v30; // r11
  int v31; // r8
  char *v32; // r0
  const char *v33; // r0
  int v35; // [sp+1Ch] [bp-88h] BYREF
  int v36; // [sp+20h] [bp-84h]
  int v37; // [sp+24h] [bp-80h]
  char v38; // [sp+28h] [bp-7Ch]
  std::string v39; // [sp+3Ch] [bp-68h] BYREF
  std::string v40; // [sp+54h] [bp-50h] BYREF
  std::string v41; // [sp+6Ch] [bp-38h] BYREF
  std::string v42; // [sp+84h] [bp-20h] BYREF

  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string(&v42, "isTracingMenuBase");
  DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v42);
  std::string::~string(&v42);
  v5 = *(this + 23);
  if ( v5 )
  {
    DragAndDrop::~DragAndDrop((Dropable **)*(this + 23));
    CustomFree(v5);
    *(this + 23) = nullptr;
  }
  if ( *(this + 19) )
  {
    result = *(this + 18);
    if ( result[4] )
    {
      v6 = (DragAndDrop *)operator new(0x1Cu, 0);
      DragAndDrop::DragAndDrop(v6);
      v7 = *(this + 19);
      *(this + 23) = v6;
      v8 = *(this + 1);
      if ( v7 )
      {
        v9 = *(this + 18);
        if ( !v9[4] )
        {
          v23 = (*(_DWORD *)v9)-- == 1;
          if ( v23 )
            gameswf::free_internal(v9);
          v7 = nullptr;
          *(this + 18) = nullptr;
          *(this + 19) = nullptr;
        }
      }
      v10 = v8;
      v11 = 0;
      Characters = (_DWORD *)RenderFX::FindCharacters(v10, v7, "dragable", 0);
      v35 = 0;
      v36 = 0;
      v37 = 0;
      v38 = 0;
      v13 = Characters[1];
      v14 = Characters;
      if ( v13 <= 0 )
        goto LABEL_8;
      gameswf::array<gameswf::character *>::reserve((int)&v35, v13 + (v13 >> 1));
      v24 = 0;
      do
        *(_DWORD *)(v35 + 4 * v11++) = 0;
      while ( v11 != v13 );
      v36 = v11;
      do
      {
        *(_DWORD *)(v35 + 4 * v24) = *(_DWORD *)(*v14 + 4 * v24);
        v13 = v36;
        ++v24;
      }
      while ( v24 < v36 );
      if ( v36 <= 0 )
        goto LABEL_8;
      v25 = 0;
      v26 = this;
      do
      {
        v27 = *(gameswf::character **)(v35 + 4 * v25);
        v28 = (int *)RenderFX::FindCharacters(v26[1], v27, nullptr, 0);
        v29 = v28[1];
        if ( v29 > 0 )
        {
          v30 = *v28;
          v31 = 0;
          while ( 1 )
          {
            v2 = *(gameswf::character **)(v30 + 4 * v31);
            v32 = *((char **)v2 + 17);
            v33 = *v32 == -1 ? *((const char **)v32 + 3) : v32 + 1;
            if ( LC_API_STRSTR_0(v33, "draglimits") )
              break;
            if ( ++v31 == v29 )
            {
              v2 = nullptr;
              break;
            }
          }
        }
        if ( !a2 || a2(v27) )
          DragAndDrop::AddDragable(v26[23], v26[1], (int **)v27, v2);
        v13 = v36;
        ++v25;
      }
      while ( v25 < v36 );
      this = v26;
      if ( v36 <= 0 )
      {
LABEL_8:
        if ( v13 < 0 )
        {
          v15 = 4 * v13;
          do
          {
            ++v13;
            *(_DWORD *)(v35 + v15) = 0;
            v15 += 4;
          }
          while ( v13 );
        }
      }
      v36 = 0;
      gameswf::array<gameswf::character *>::reserve((int)&v35, 0);
      v16 = *(this + 19);
      v17 = *(this + 1);
      if ( v16 )
      {
        v18 = *(this + 18);
        if ( !v18[4] )
        {
          v23 = (*(_DWORD *)v18)-- == 1;
          if ( v23 )
            gameswf::free_internal(v18);
          v16 = nullptr;
          *(this + 18) = nullptr;
          *(this + 19) = nullptr;
        }
      }
      v19 = (_DWORD *)RenderFX::FindCharacters(v17, v16, "drop", 0);
      if ( (int)v19[1] > 0 )
      {
        v20 = 0;
        do
          DragAndDrop::AddDropable((int)*(this + 23), (int)*(this + 1), *(_DWORD *)(*v19 + 4 * v20++));
        while ( v20 < v19[1] );
      }
      v21 = *(this + 23);
      if ( 1022611261 * ((v21[2] - v21[1]) >> 2) || (v21[5] - v21[4]) >> 5 )
      {
        DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
        std::string::string(&v40, "isTracingMenuBase");
        DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v40);
        std::string::~string(&v40);
        DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
        std::string::string(&v39, "isTracingMenuBase");
        DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v39);
        std::string::~string(&v39);
      }
      else
      {
        DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
        std::string::string(&v41, "isTracingMenuBase");
        DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v41);
        std::string::~string(&v41);
        v22 = *(this + 23);
        if ( v22 )
        {
          DragAndDrop::~DragAndDrop((Dropable **)*(this + 23));
          CustomFree(v22);
          *(this + 23) = nullptr;
        }
      }
    }
    else
    {
      v23 = (*(_DWORD *)result)-- == 1;
      if ( v23 )
        gameswf::free_internal(result);
      *(this + 19) = nullptr;
      *(this + 18) = nullptr;
    }
  }
  return result;
}


// ===== 424288 MenuBase::FS_GotoFrame(char const*,char const*,void *) =====
int __fastcall MenuBase::FS_GotoFrame(MenuBase *this, const char *a2, RenderFX **a3, void *a4)
{
  char *v6; // r0
  char *v7; // r6
  const char *v8; // r2
  MenuManager *Instance; // r0
  RenderFX *Root; // r0
  char v12[64]; // [sp+Ch] [bp-B8h] BYREF
  char v13[64]; // [sp+4Ch] [bp-78h] BYREF
  std::string v14; // [sp+8Ch] [bp-38h] BYREF
  std::string v15; // [sp+A4h] [bp-20h] BYREF

  v6 = strchr(a2, 124);
  v7 = v6;
  if ( !v6 )
    return (int)v7;
  memcpy(v13, a2, v6 - a2);
  v13[v7 - a2] = 0;
  LC_API_STRCPY_0(v12, v7 + 1);
  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string(&v15, "isTracingMenuBase");
  DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v15);
  std::string::~string(&v15);
  v7 = (char *)RenderFX::Find(a3[1], v13);
  if ( !v7 )
  {
    Instance = (MenuManager *)MenuManager::GetInstance(nullptr);
    Root = (RenderFX *)MenuManager::GetRoot(Instance);
    v7 = (char *)RenderFX::Find(Root, v13);
    if ( !v7 )
    {
      DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
      std::string::string(&v14, "isTracingMenuBase");
      DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v14);
      std::string::~string(&v14);
      return (int)v7;
    }
  }
  GameSWFUtils::GotoFrame((GameSWFUtils *)v7, (gameswf::character *)v12, v8);
  return 1;
}


// ===== 4243e0 MenuBase::FS_PlayAnim(char const*,char const*,void *) =====
int __fastcall MenuBase::FS_PlayAnim(MenuBase *this, const char *a2, RenderFX **a3, void *a4)
{
  char *v6; // r0
  char *v7; // r7
  MenuManager *Instance; // r0
  RenderFX *Root; // r0
  char v11[64]; // [sp+Ch] [bp-B8h] BYREF
  char v12[64]; // [sp+4Ch] [bp-78h] BYREF
  std::string v13; // [sp+8Ch] [bp-38h] BYREF
  std::string v14; // [sp+A4h] [bp-20h] BYREF

  v6 = strchr(a2, 124);
  v7 = v6;
  if ( !v6 )
    return (int)v7;
  memcpy(v12, a2, v6 - a2);
  v12[v7 - a2] = 0;
  LC_API_STRCPY_0(v11, v7 + 1);
  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string(&v14, "isTracingMenuBase");
  DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v14);
  std::string::~string(&v14);
  v7 = (char *)RenderFX::Find(a3[1], v12);
  if ( !v7 )
  {
    Instance = (MenuManager *)MenuManager::GetInstance(nullptr);
    Root = (RenderFX *)MenuManager::GetRoot(Instance);
    v7 = (char *)RenderFX::Find(Root, v12);
    if ( !v7 )
    {
      DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
      std::string::string(&v13, "isTracingMenuBase");
      DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v13);
      std::string::~string(&v13);
      return (int)v7;
    }
  }
  RenderFX::PlayAnim(a3[1], (gameswf::character *)v7, v11, 0);
  return 1;
}


// ===== 424540 MenuBase::FS_SetText2(char const*,char const*,void *) =====
int __fastcall MenuBase::FS_SetText2(MenuBase *this, const char *a2, RenderFX **a3, void *a4)
{
  char *v6; // r0
  char *v7; // r7
  int v8; // r8
  const char *StringFromSymbol; // r6
  gameswf::character *v10; // r1
  MenuManager *Instance; // r0
  RenderFX *Root; // r0
  char v14[64]; // [sp+Ch] [bp-9Ch] BYREF
  char v15[64]; // [sp+4Ch] [bp-5Ch] BYREF
  std::string v16; // [sp+8Ch] [bp-1Ch] BYREF

  v6 = strchr(a2, 124);
  v7 = v6;
  if ( !v6 )
    return 0;
  v8 = v6 - a2;
  memcpy(v15, a2, v6 - a2);
  v15[v8] = 0;
  LC_API_STRCPY_0(v14, v7 + 1);
  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string(&v16, "isTracingMenuBase");
  DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v16);
  std::string::~string(&v16);
  StringFromSymbol = (const char *)StringManager::getStringFromSymbol((StringManager *)dword_99F760, v14);
  if ( !StringFromSymbol )
    return 0;
  v10 = (gameswf::character *)RenderFX::Find(a3[1], v15);
  if ( !v10 )
  {
    Instance = (MenuManager *)MenuManager::GetInstance(nullptr);
    Root = (RenderFX *)MenuManager::GetRoot(Instance);
    v10 = (gameswf::character *)RenderFX::Find(Root, v15);
    if ( !v10 )
      return 0;
  }
  RenderFX::FormatHTML(a3[1], v10, "%s", StringFromSymbol);
  return 1;
}


// ===== 424698 MenuBase::FS_SetText(char const*,char const*,void *) =====
int __fastcall MenuBase::FS_SetText(MenuBase *this, const char *a2, RenderFX **a3, void *a4)
{
  char *v6; // r0
  char *v7; // r7
  int v8; // r10
  const char *String; // r3
  char v11[64]; // [sp+Ch] [bp-5Ch] BYREF
  std::string v12; // [sp+4Ch] [bp-1Ch] BYREF

  v6 = strchr(a2, 124);
  v7 = v6;
  if ( !v6 )
    return 0;
  memcpy(v11, a2, v6 - a2);
  v11[v7 - a2] = 0;
  v8 = LC_API_ATOI_0(v7 + 1);
  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string(&v12, "isTracingMenuBase");
  DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v12);
  std::string::~string(&v12);
  String = (const char *)StringManager::getString((StringManager *)dword_99F760, v8);
  if ( !String )
    return 0;
  RenderFX::FormatHTML(a3[1], v11, "%s", String);
  return 1;
}


// ===== 4247c0 MenuBase::FS_GetCharProp(char const*,char const*,void *) =====
Character *__fastcall MenuBase::FS_GetCharProp(MenuBase *this, const char *a2, RenderFX **a3, void *a4)
{
  int v5; // r10
  Character *result; // r0
  int Property; // r0
  std::string v8; // [sp+4h] [bp-28h] BYREF
  char s[8]; // [sp+1Ch] [bp-10h] BYREF

  v5 = LC_API_ATOI_0(a2);
  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string(&v8, "isTracingMenuBase");
  DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v8);
  std::string::~string(&v8);
  result = PlayerManager::GetLocalPlayer((PlayerManager *)dword_99F76C, 0, 1)->character_660;
  if ( result )
  {
    Property = CharProperties::_GetProperty((int)result + 1376, (int)result + 4084, v5);
    sprintf(s, "%d", Property);
    RenderFX::SetMember(a3[1], "_root", "retval", s);
    return (Character *)(&dword_0 + 1);
  }
  return result;
}


// ===== 4248dc MenuBase::FS_IsMapLocLocked(char const*,char const*,void *) =====
int __fastcall MenuBase::FS_IsMapLocLocked(MenuBase *this, const char *a2, const char *a3, void *a4)
{
  int CurrentLevel; // r0
  bool v7; // zf
  Level *v8; // r8
  int v10; // r0
  char IsMapLocLocked; // r11
  RenderFX *v12; // r0
  _BYTE v13[12]; // [sp+4h] [bp-30h] BYREF
  std::string v14; // [sp+14h] [bp-20h] BYREF

  CurrentLevel = Application::GetCurrentLevel((Application *)&Singleton<Application>::s_inst);
  v7 = CurrentLevel == 0;
  if ( CurrentLevel )
    v7 = a2 == nullptr;
  v8 = (Level *)CurrentLevel;
  if ( v7 || !*a2 )
    return 0;
  v10 = LC_API_ATOI_0(a2);
  IsMapLocLocked = Level::SG_IsMapLocLocked(v8, v10);
  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string(&v14, "isTracingMenuBase");
  DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v14);
  std::string::~string(&v14);
  v12 = *((RenderFX **)a3 + 1);
  v13[0] = 0;
  v13[4] = IsMapLocLocked;
  v13[1] = 1;
  RenderFX::SetMember(v12, "_root", "retval", (gameswf::as_value *)v13);
  gameswf::as_value::drop_refs((gameswf::as_value *)v13);
  return 1;
}


// ===== 424a04 std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,bool (*)(char const*,char const*,void *)>,std::priv::_Select1st<std::pair<std::string const,bool (*)(char const*,char const*,void *)>>,std::priv::_MapTraitsT<std::pair<std::string const,bool (*)(char const*,char const*,void *)>>,std::allocator<std::pair<std::string const,bool (*)(char const*,char const*,void *)>>>::_M_lower_bound<char const*>(char const* const&) =====
_DWORD *__fastcall std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,bool (*)(char const*,char const*,void *)>,std::priv::_Select1st<std::pair<std::string const,bool (*)(char const*,char const*,void *)>>,std::priv::_MapTraitsT<std::pair<std::string const,bool (*)(char const*,char const*,void *)>>,std::allocator<std::pair<std::string const,bool (*)(char const*,char const*,void *)>>>::_M_lower_bound<char const*>(
        _DWORD *a1,
        char **a2)
{
  _DWORD *v2; // r9
  _DWORD *v4; // r4
  const void *v5; // r3
  int v6; // r6
  int v7; // r5
  size_t v8; // r2
  int v9; // r3
  int v11; // [sp+0h] [bp-2Ch]
  std::string v12; // [sp+Ch] [bp-20h] BYREF

  v2 = a1;
  v4 = (_DWORD *)a1[1];
  while ( v4 )
  {
    std::string::string(&v12, *a2);
    v5 = (const void *)v4[9];
    v6 = v4[8] - (_DWORD)v5;
    v7 = v12._M_finish - v12._M_start_of_storage._M_data;
    if ( v12._M_finish - v12._M_start_of_storage._M_data >= v6 )
      v8 = v4[8] - (_DWORD)v5;
    else
      v8 = v12._M_finish - v12._M_start_of_storage._M_data;
    v9 = memcmp(v5, v12._M_start_of_storage._M_data, v8);
    if ( !v9 )
    {
      if ( v6 >= v7 )
        v9 = v6 > v7;
      else
        v9 = -1;
    }
    v11 = v9;
    std::string::~string(&v12);
    if ( v11 < 0 )
      v4 = (_DWORD *)v4[3];
    else
      v2 = v4;
    if ( v11 >= 0 )
      v4 = (_DWORD *)v4[2];
  }
  return v2;
}


// ===== 424af4 MenuBase::Hide(void) =====
int __fastcall MenuBase::Hide(DragAndDrop **this)
{
  int result; // r0
  DragAndDrop *v3; // r0
  MenuManager *v4; // r0
  MenuManager *v5; // r0
  MenuManager *Instance; // r0
  gameswf::character *v7; // r1
  RenderFX *v8; // r7
  _BYTE *v9; // r0
  std::string v11; // [sp+Ch] [bp-20h] BYREF

  result = (*((int (__fastcall **)(DragAndDrop **))*this + 15))(this);
  if ( result )
  {
    DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
    std::string::string((int)&v11, "isTracingMenuBase");
    DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v11);
    std::string::~string(&v11);
    v3 = *(this + 23);
    if ( v3 )
      DragAndDrop::ResetPositions(v3);
    v4 = (MenuManager *)LC_API_STRCMP_0((const char *)this + 8, "menu_CharacterMenu");
    if ( !v4 || (v4 = (MenuManager *)LC_API_STRCMP_0((const char *)this + 8, "menu_Merchant")) == nullptr )
      *(_DWORD *)(MenuManager::GetInstance(v4) + 96) = 0;
    if ( !LC_API_STRCMP_0((const char *)this + 8, "menu_language")
      && SavegameManager::getLanguage((SavegameManager *)dword_99F778) > 7u )
    {
      SavegameManager::setLanguage((SavegameManager *)dword_99F778, 0);
      SavegameManager::saveSettings((SavegameManager *)dword_99F778);
    }
    if ( !LC_API_STRCMP_0((const char *)this + 8, "menu_Ingame")
      || !LC_API_STRCMP_0((const char *)this + 8, "menu_playlist")
      || !LC_API_STRCMP_0((const char *)this + 8, "menu_Merchant") )
    {
      MenuBase::s_igmOpened = 0;
    }
    if ( !LC_API_STRCMP_0((const char *)this + 8, "menu_VerificationLoading") )
      byte_99F818 = 0;
    v5 = (MenuManager *)MenuBase::SetVisible((MenuBase *)this, 0);
    Instance = (MenuManager *)MenuManager::GetInstance(v5);
    MenuManager::UnRegisterListener(Instance, (MenuBase *)this);
    v7 = *(this + 19);
    v8 = *(this + 1);
    if ( v7 )
    {
      v9 = *(this + 18);
      if ( !v9[4] )
      {
        if ( (*(_DWORD *)v9)-- == 1 )
          gameswf::free_internal(v9);
        v7 = nullptr;
        *(this + 19) = nullptr;
        *(this + 18) = nullptr;
      }
    }
    return RenderFX::InvokeASCallback(v8, v7, "onPop", nullptr, 0);
  }
  return result;
}


// ===== 424d60 std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,bool (*)(char const*,char const*,void *)>,std::priv::_Select1st<std::pair<std::string const,bool (*)(char const*,char const*,void *)>>,std::priv::_MapTraitsT<std::pair<std::string const,bool (*)(char const*,char const*,void *)>>,std::allocator<std::pair<std::string const,bool (*)(char const*,char const*,void *)>>>::_M_find<char const*>(char const* const&) [clone] =====
void __fastcall std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,bool (*)(char const*,char const*,void *)>,std::priv::_Select1st<std::pair<std::string const,bool (*)(char const*,char const*,void *)>>,std::priv::_MapTraitsT<std::pair<std::string const,bool (*)(char const*,char const*,void *)>>,std::allocator<std::pair<std::string const,bool (*)(char const*,char const*,void *)>>>::_M_find<char const*>(
        char **a1)
{
  char *v1; // r8
  int v2; // r4
  const void *v4; // r3
  int v5; // r6
  int v6; // r5
  size_t v7; // r2
  int v8; // r3
  int v9; // r3
  const void *v10; // r1
  size_t v11; // r2
  int v12; // [sp+4h] [bp-50h]
  std::string v13; // [sp+1Ch] [bp-38h] BYREF
  std::string v14; // [sp+34h] [bp-20h] BYREF

  v1 = &MenuBase::m_FSCommandMap;
  v2 = dword_9A4868;
  if ( dword_9A4868 )
  {
    while ( 1 )
    {
      std::string::string(&v13, *a1);
      v4 = *(const void **)(v2 + 36);
      v5 = *(_DWORD *)(v2 + 32) - (_DWORD)v4;
      v6 = v13._M_finish - v13._M_start_of_storage._M_data;
      if ( v13._M_finish - v13._M_start_of_storage._M_data >= v5 )
        v7 = *(_DWORD *)(v2 + 32) - (_DWORD)v4;
      else
        v7 = v13._M_finish - v13._M_start_of_storage._M_data;
      v8 = memcmp(v4, v13._M_start_of_storage._M_data, v7);
      if ( !v8 )
      {
        if ( v5 >= v6 )
          v8 = v5 > v6;
        else
          v8 = -1;
      }
      v12 = v8;
      std::string::~string(&v13);
      if ( v12 >= 0 )
        v9 = *(_DWORD *)(v2 + 8);
      else
        v9 = *(_DWORD *)(v2 + 12);
      if ( v12 < 0 )
        v2 = (int)v1;
      if ( !v9 )
        break;
      v1 = (char *)v2;
      v2 = v9;
    }
    if ( (char *)v2 != &MenuBase::m_FSCommandMap )
    {
      std::string::string(&v14, *a1);
      v10 = *(const void **)(v2 + 36);
      if ( *(_DWORD *)(v2 + 32) - (int)v10 >= v14._M_finish - v14._M_start_of_storage._M_data )
        v11 = v14._M_finish - v14._M_start_of_storage._M_data;
      else
        v11 = *(_DWORD *)(v2 + 32) - (_DWORD)v10;
      memcmp(v14._M_start_of_storage._M_data, v10, v11);
      std::string::~string(&v14);
    }
  }
}


// ===== 424ef0 MenuBase::FS_GetParsedString2(char const*,char const*,void *) =====
const char *__fastcall MenuBase::FS_GetParsedString2(MenuBase *this, const char *a2, const char *a3, void *a4)
{
  const char *result; // r0
  RenderFX *v5; // r0
  gameswf::root *Root; // r0
  int root_movie; // r5
  void (__fastcall *v8)(int, char *, char *); // r6
  char *v9; // r0
  char v10; // r2
  unsigned int *v11; // r7
  int v12; // r4
  _BYTE *v13; // r0
  gameswf::as_value *v14; // r6
  int (__fastcall *v15)(unsigned int *, char *, gameswf::as_value *); // r8
  char *v16; // r0
  char *v17; // r8
  char *v18; // r8
  double v19; // r0
  double v20; // r0
  char *v21; // r8
  _BYTE *v22; // r2
  _DWORD *v23; // r0
  unsigned int v24; // r4
  void *v25; // r5
  size_t v26; // r1
  int v27; // r3
  unsigned int v28; // r2
  unsigned int v29; // r3
  char *v30; // r0
  char *v31; // lr
  char *v32; // r3
  char *v33; // r2
  int v34; // r12
  int v35; // r2
  char *v36; // r1
  int v37; // r0
  size_t v38; // r1
  char *v39; // [sp+4h] [bp-A8h]
  char *StringFromSymbol; // [sp+2Ch] [bp-80h]
  int v42; // [sp+30h] [bp-7Ch]
  void (**v43)(VarArgs *__hidden); // [sp+3Ch] [bp-70h] BYREF
  void *v44; // [sp+40h] [bp-6Ch] BYREF
  char *v45; // [sp+44h] [bp-68h]
  char *v46; // [sp+48h] [bp-64h] BYREF
  _BYTE v47[4]; // [sp+4Ch] [bp-60h] BYREF
  double v48; // [sp+50h] [bp-5Ch]
  void *__p; // [sp+58h] [bp-54h] BYREF
  _DWORD *v50; // [sp+5Ch] [bp-50h]
  int v51; // [sp+60h] [bp-4Ch]
  char v52; // [sp+64h] [bp-48h] BYREF
  char v53; // [sp+65h] [bp-47h]
  unsigned int *v54; // [sp+68h] [bp-44h]
  double v55; // [sp+70h] [bp-3Ch] BYREF
  std::string v56; // [sp+78h] [bp-34h] BYREF
  char v57; // [sp+90h] [bp-1Ch] BYREF
  char v58; // [sp+91h] [bp-1Bh] BYREF
  void *p; // [sp+9Ch] [bp-10h]
  unsigned int v60; // [sp+A0h] [bp-Ch]

  result = a2;
  if ( a2 )
  {
    StringFromSymbol = (char *)StringManager::getStringFromSymbol((StringManager *)dword_99F760, a2);
    v56._M_finish = (char *)&v56;
    v56._M_start_of_storage._M_data = (char *)&v56;
    std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block(&v56, 0x10u);
    *v56._M_finish = 0;
    v5 = *((RenderFX **)a3 + 1);
    v52 = 0;
    v53 = 0;
    Root = (gameswf::root *)RenderFX::GetRoot(v5);
    root_movie = gameswf::root::get_root_movie(Root);
    v8 = *(void (__fastcall **)(int, char *, char *))(*(_DWORD *)root_movie + 32);
    v57 = 1;
    v58 = 0;
    gameswf::tu_string::resize((gameswf::tu_string *)&v57, 16);
    if ( v57 == -1 )
      v9 = (char *)p;
    else
      v9 = &v58;
    strcpy(v9, "ParsedStringArgs");
    v10 = ((v60 & 0xFF000000 | 0xFFFFFF) >> 24) & 0xFE;
    v60 = v60 & 0xFF000000 | 0xFFFFFF;
    HIBYTE(v60) = v10;
    v8(root_movie, &v57, &v52);
    if ( v57 == -1 )
      gameswf::free_internal(p);
    if ( v53 == 5 )
      v11 = v54;
    else
      v11 = nullptr;
    v12 = 0;
    v44 = nullptr;
    v45 = nullptr;
    v43 = off_967748;
    v46 = nullptr;
    if ( v11 )
    {
      std::vector<gameswf::as_value *>::vector(&__p, v11[20]);
      if ( (int)v11[20] > 0 )
      {
        do
        {
          v13 = (_BYTE *)operator new(0xCu, 0);
          *v13 = 0;
          v13[1] = 0;
          *((_DWORD *)__p + v12) = v13;
          v14 = *((gameswf::as_value **)__p + v12);
          v47[1] = 2;
          v47[0] = 0;
          v55 = (double)v12;
          v48 = (double)v12;
          v15 = *(int (__fastcall **)(unsigned int *, char *, gameswf::as_value *))(*v11 + 32);
          v16 = gameswf::as_value::to_tu_string((gameswf::as_value *)v47);
          if ( v15(v11, v16, v14) )
          {
            v17 = v45;
            if ( v45 == v46 )
            {
              v27 = (v45 - (_BYTE *)v44) >> 2;
              v28 = -1431655765 * v27;
              if ( -1431655765 * v27 )
                v29 = 1431655766 * v27;
              else
                v29 = 1;
              if ( v29 > 0x15555555 || v28 > v29 )
                v29 = 357913941;
              LODWORD(v55) = v29;
              v30 = (char *)std::allocator<VarArgs::Variant>::_M_allocate((int)&v46, v29, (size_t *)&v55);
              v31 = (char *)v44;
              v32 = v30;
              v42 = -1431655765 * ((v45 - (_BYTE *)v44) >> 2);
              if ( v42 > 0 )
              {
                v34 = -1431655765 * ((v45 - (_BYTE *)v44) >> 2);
                v35 = 0;
                do
                {
                  *(_DWORD *)&v32[v35] = *(_DWORD *)&v31[v35];
                  *(_DWORD *)&v32[v35 + 4] = *(_DWORD *)&v31[v35 + 4];
                  v36 = &v32[v35 + 8];
                  v37 = *(_DWORD *)&v31[v35 + 8];
                  --v34;
                  v35 += 12;
                  *(_DWORD *)v36 = v37;
                }
                while ( v34 );
                v33 = &v32[12 * v42];
              }
              else
              {
                v33 = v30;
              }
              *((_DWORD *)v33 + 2) = 0;
              *((_DWORD *)v33 + 1) = 0;
              *(_DWORD *)v33 = 0;
              v18 = v33 + 12;
              if ( v44 )
              {
                v38 = 4 * ((v46 - (_BYTE *)v44) >> 2);
                v39 = v32;
                if ( v38 > 0x80 )
                  CustomFree(v44);
                else
                  __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v44, v38);
                v32 = v39;
              }
              v44 = v32;
              v45 = v18;
              v46 = &v32[12 * LODWORD(v55)];
            }
            else
            {
              *(_DWORD *)v45 = 0;
              *((_DWORD *)v17 + 2) = 0;
              *((_DWORD *)v17 + 1) = 0;
              v18 = v45 + 12;
              v45 += 12;
            }
            LODWORD(v19) = gameswf::as_value::to_number(v14);
            *(float *)&v19 = v19;
            *((_DWORD *)v18 - 3) = LODWORD(v19);
            LODWORD(v20) = gameswf::as_value::to_number(v14);
            v21 = v18 - 12;
            *((_DWORD *)v21 + 1) = (int)v20;
            *((_DWORD *)v21 + 2) = gameswf::as_value::to_string(v14);
          }
          gameswf::as_value::drop_refs((gameswf::as_value *)v47);
          ++v12;
        }
        while ( v12 < (int)v11[20] );
      }
      StringManager::parseEx((StringManager *)dword_99F760, &v56, StringFromSymbol, (const VarArgs *)&v43);
      v22 = v50;
      v23 = __p;
      if ( (unsigned int)((char *)v50 - (_BYTE *)__p) >> 2 )
      {
        v24 = 0;
        do
        {
          v25 = (void *)v23[v24];
          if ( v25 )
          {
            gameswf::as_value::drop_refs((gameswf::as_value *)v23[v24]);
            CustomFree(v25);
            v23 = __p;
            v22 = v50;
          }
          ++v24;
        }
        while ( v24 < (v22 - (_BYTE *)v23) >> 2 );
      }
      if ( v22 != (_BYTE *)v23 )
        v50 = v23;
      if ( v23 )
      {
        v26 = (v51 - (_DWORD)v23) & 0xFFFFFFFC;
        if ( v26 > 0x80 )
          CustomFree(v23);
        else
          __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v23, v26);
      }
    }
    else
    {
      StringManager::parseEx((StringManager *)dword_99F760, &v56, StringFromSymbol, (const VarArgs *)&v43);
    }
    RenderFX::SetMember(*((RenderFX **)a3 + 1), "_root", "retval", v56._M_start_of_storage._M_data);
    v43 = off_967748;
    std::vector<VarArgs::Variant>::~vector((int)&v44);
    gameswf::as_value::drop_refs((gameswf::as_value *)&v52);
    std::string::~string(&v56);
    return (_BYTE *)(&dword_0 + 1);
  }
  return result;
}


// ===== 425450 MenuBase::Show(void) =====
int __fastcall MenuBase::Show(MenuBase *this)
{
  int result; // r0
  gameswf::character *v3; // r1
  RenderFX *v4; // r8
  _BYTE *v5; // r0
  MenuFX *v6; // r10
  gameswf::character *CurrentMenuContext; // r0
  int Char; // r10
  void *v9; // r0
  bool v10; // zf
  _BYTE v11[8]; // [sp+Ch] [bp-50h] BYREF
  std::string v12; // [sp+14h] [bp-48h] BYREF
  void *p; // [sp+34h] [bp-28h]
  std::string v14; // [sp+3Ch] [bp-20h] BYREF

  result = (*(int (__fastcall **)(MenuBase *))(*(_DWORD *)this + 60))(this);
  if ( result )
  {
    DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
    std::string::string((int)&v14, "isTracingMenuBase");
    DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v14);
    std::string::~string(&v14);
    MenuBase::m_isRolloverEventEnabled = 1;
    if ( !*((_BYTE *)this + 117) )
      (*(void (__fastcall **)(MenuBase *))(*(_DWORD *)this + 64))(this);
    MenuBase::SetVisible(this, 1);
    v3 = *((gameswf::character **)this + 19);
    v4 = *((RenderFX **)this + 1);
    if ( v3 )
    {
      v5 = *((_BYTE **)this + 18);
      if ( !v5[4] )
      {
        v10 = (*(_DWORD *)v5)-- == 1;
        if ( v10 )
          gameswf::free_internal(v5);
        v3 = nullptr;
        *((_DWORD *)this + 18) = 0;
        *((_DWORD *)this + 19) = 0;
      }
    }
    RenderFX::InvokeASCallback(v4, v3, "onPush", nullptr, 0);
    *((_DWORD *)this + 30) = 0;
    byte_99F818 = LC_API_STRCMP_0((const char *)this + 8, "menu_VerificationLoading") == 0;
    if ( !LC_API_STRCMP_0((const char *)this + 8, "menu_language")
      || !LC_API_STRCMP_0((const char *)this + 8, "menu_splash") )
    {
      GSInit::ClearLoadingScreen((GSInit *)&GSInit::s_inst);
    }
    if ( !LC_API_STRCMP_0((const char *)this + 8, "menu_Ingame")
      || !LC_API_STRCMP_0((const char *)this + 8, "menu_playlist")
      || !LC_API_STRCMP_0((const char *)this + 8, "menu_Merchant") )
    {
      MenuBase::s_igmOpened = 1;
    }
    if ( !LC_API_STRCMP_0((const char *)this + 8, "menu_Options") )
    {
      DebugCachedCharacter::DebugCachedCharacter((DebugCachedCharacter *)v11);
      v6 = *((MenuFX **)this + 1);
      CurrentMenuContext = (gameswf::character *)MenuBase::GetCurrentMenuContext(this);
      DebugCachedCharacter::RefreshCache((DebugCachedCharacter *)v11, "option_Custom", v6, CurrentMenuContext);
      Char = DebugCachedCharacter::GetChar((DebugCachedCharacter *)v11);
      *(_BYTE *)(Char + 155) = Application::IsLevelRunning((Application *)&Singleton<Application>::s_inst);
      v9 = p;
      if ( p )
      {
        v10 = (*(_DWORD *)p)-- == 1;
        if ( v10 )
          gameswf::free_internal(v9);
      }
      std::string::~string(&v12);
    }
    return MenuBase::RegisterDeadZones(this);
  }
  return result;
}


// ===== 425728 `global constructor keyed to'.._.._sources_Game_Menus_MenuBase.cpp =====
int __fastcall `global constructor keyed to'.._.._sources_Game_Menus_MenuBase.cpp(CMessage *a1)
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
  unsigned int v24; // r8
  int v25; // r12
  int v26; // r3
  _DWORD *v27; // r6
  unsigned int v28; // r8
  int v29; // r12
  int v30; // r3
  _DWORD *v31; // r6
  unsigned int v32; // r8
  int v33; // r12
  int v34; // r3
  _DWORD *v35; // r6
  unsigned int v36; // r8
  int v37; // r12
  int v38; // r3
  _DWORD *v39; // r6
  unsigned int v40; // r8
  int v41; // r12
  int v42; // r3
  unsigned int v43; // [sp+4h] [bp-18h]
  char *v44; // [sp+8h] [bp-14h]
  size_t v45; // [sp+14h] [bp-8h] BYREF

  dword_9A4850 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9A484C = 1056964608;
  messageCreationMap = CMessage::InitializeMessageRegistration(a1);
  byte_9A4855 = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgStartGame",
                  (const char *)GetNewInstance<CMsgStartGame>,
                  v1);
  byte_9A4856 = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgControllerAction",
                  (const char *)GetNewInstance<CMsgControllerAction>,
                  v2);
  byte_9A4857 = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgAttackResult",
                  (const char *)GetNewInstance<CMsgAttackResult>,
                  v3);
  byte_9A4858 = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgRaisedEvent",
                  (const char *)GetNewInstance<CMsgRaisedEvent>,
                  v4);
  byte_9A4859 = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgMenuReady",
                  (const char *)GetNewInstance<CMsgMenuReady>,
                  v5);
  byte_9A485A = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgScriptCmd",
                  (const char *)GetNewInstance<CMsgScriptCmd>,
                  v6);
  byte_9A485B = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgInitialSetup",
                  (const char *)GetNewInstance<CMsgInitialSetup>,
                  v7);
  byte_9A485C = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgQuestsSync",
                  (const char *)GetNewInstance<CMsgQuestsSync>,
                  v8);
  byte_9A485D = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgDropLoot",
                  (const char *)GetNewInstance<CMsgDropLoot>,
                  v9);
  byte_9A485E = CMessage::RegisterMessageType((CMessage *)"CMsgIsHost", (const char *)GetNewInstance<CMsgIsHost>, v10);
  byte_9A485F = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgSpawnObject",
                  (const char *)GetNewInstance<CMsgSpawnObject>,
                  v11);
  byte_9A4860 = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgGlobalDeath",
                  (const char *)GetNewInstance<CMsgGlobalDeath>,
                  v12);
  v14 = (CMessage *)CMessage::RegisterMessageType(
                      (CMessage *)"CMsgAskResendAttributes",
                      (const char *)GetNewInstance<CMsgAskResendAttributes>,
                      v13);
  byte_9A4861 = (char)v14;
  byte_9A4862 = CMessage::TerminateMessageRegistration(v14);
  dword_9A4874 = 0;
  dword_9A4868 = 0;
  MenuBase::m_FSCommandMap = 0;
  dword_9A486C = (int)&MenuBase::m_FSCommandMap;
  dword_9A4870 = (int)&MenuBase::m_FSCommandMap;
  result = _aeabi_atexit(
             (int)&MenuBase::m_FSCommandMap,
             (int)std::map<std::string,bool (*)(char const*,char const*,void *)>::~map,
             (int)&_dso_handle);
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


// ===== 425fcc std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,bool (*)(char const*,char const*,void *)>,std::priv::_Select1st<std::pair<std::string const,bool (*)(char const*,char const*,void *)>>,std::priv::_MapTraitsT<std::pair<std::string const,bool (*)(char const*,char const*,void *)>>,std::allocator<std::pair<std::string const,bool (*)(char const*,char const*,void *)>>>::_M_create_node(std::pair<std::string const,bool (*)(char const*,char const*,void *)> const&) =====
char *__fastcall std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,bool (*)(char const*,char const*,void *)>,std::priv::_Select1st<std::pair<std::string const,bool (*)(char const*,char const*,void *)>>,std::priv::_MapTraitsT<std::pair<std::string const,bool (*)(char const*,char const*,void *)>>,std::allocator<std::pair<std::string const,bool (*)(char const*,char const*,void *)>>>::_M_create_node(
        int a1,
        int a2)
{
  char *v3; // r4
  int v4; // r2
  size_t v6; // [sp+4h] [bp-8h] BYREF

  v6 = 44;
  v3 = (char *)__ZNSt12__node_alloc11_M_allocateERj_veneer(&v6);
  *((_DWORD *)v3 + 8) = v3 + 16;
  *((_DWORD *)v3 + 9) = v3 + 16;
  std::string::_M_range_initialize((std::string *)(v3 + 16), *(const char **)(a2 + 20), *(const char **)(a2 + 16));
  v4 = *(_DWORD *)(a2 + 24);
  *((_DWORD *)v3 + 3) = 0;
  *((_DWORD *)v3 + 10) = v4;
  *((_DWORD *)v3 + 2) = 0;
  return v3;
}


// ===== 426024 std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,bool (*)(char const*,char const*,void *)>,std::priv::_Select1st<std::pair<std::string const,bool (*)(char const*,char const*,void *)>>,std::priv::_MapTraitsT<std::pair<std::string const,bool (*)(char const*,char const*,void *)>>,std::allocator<std::pair<std::string const,bool (*)(char const*,char const*,void *)>>>::_M_insert(std::priv::_Rb_tree_node_base *,std::pair<std::string const,bool (*)(char const*,char const*,void *)> const&,std::priv::_Rb_tree_node_base *,std::priv::_Rb_tree_node_base *) =====
char **__fastcall std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,bool (*)(char const*,char const*,void *)>,std::priv::_Select1st<std::pair<std::string const,bool (*)(char const*,char const*,void *)>>,std::priv::_MapTraitsT<std::pair<std::string const,bool (*)(char const*,char const*,void *)>>,std::allocator<std::pair<std::string const,bool (*)(char const*,char const*,void *)>>>::_M_insert(
        char **a1,
        _DWORD *a2,
        _DWORD *a3,
        int a4,
        int a5,
        int a6)
{
  char *v9; // r0
  char *node; // r7
  char *v12; // r0
  unsigned int v13; // r0
  int v14; // [sp+4h] [bp-8h]

  if ( a2 == a3 )
  {
    node = std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,bool (*)(char const*,char const*,void *)>,std::priv::_Select1st<std::pair<std::string const,bool (*)(char const*,char const*,void *)>>,std::priv::_MapTraitsT<std::pair<std::string const,bool (*)(char const*,char const*,void *)>>,std::allocator<std::pair<std::string const,bool (*)(char const*,char const*,void *)>>>::_M_create_node(
             (int)a2,
             a4);
    a2[2] = node;
    a2[1] = node;
    a2[3] = node;
  }
  else if ( !a6
         && (a5 || (v14 = a4, v13 = std::less<std::string>::operator()((int)(a2 + 5), a4, (int)(a3 + 4)), a4 = v14, v13)) )
  {
    v12 = std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,bool (*)(char const*,char const*,void *)>,std::priv::_Select1st<std::pair<std::string const,bool (*)(char const*,char const*,void *)>>,std::priv::_MapTraitsT<std::pair<std::string const,bool (*)(char const*,char const*,void *)>>,std::allocator<std::pair<std::string const,bool (*)(char const*,char const*,void *)>>>::_M_create_node(
            (int)a2,
            a4);
    a3[2] = v12;
    node = v12;
    if ( a3 == (_DWORD *)a2[2] )
      a2[2] = v12;
  }
  else
  {
    v9 = std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,bool (*)(char const*,char const*,void *)>,std::priv::_Select1st<std::pair<std::string const,bool (*)(char const*,char const*,void *)>>,std::priv::_MapTraitsT<std::pair<std::string const,bool (*)(char const*,char const*,void *)>>,std::allocator<std::pair<std::string const,bool (*)(char const*,char const*,void *)>>>::_M_create_node(
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


// ===== 426114 std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,bool (*)(char const*,char const*,void *)>,std::priv::_Select1st<std::pair<std::string const,bool (*)(char const*,char const*,void *)>>,std::priv::_MapTraitsT<std::pair<std::string const,bool (*)(char const*,char const*,void *)>>,std::allocator<std::pair<std::string const,bool (*)(char const*,char const*,void *)>>>::insert_unique(std::pair<std::string const,bool (*)(char const*,char const*,void *)> const&) =====
int __fastcall std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,bool (*)(char const*,char const*,void *)>,std::priv::_Select1st<std::pair<std::string const,bool (*)(char const*,char const*,void *)>>,std::priv::_MapTraitsT<std::pair<std::string const,bool (*)(char const*,char const*,void *)>>,std::allocator<std::pair<std::string const,bool (*)(char const*,char const*,void *)>>>::insert_unique(
        int a1,
        _DWORD *a2,
        int a3)
{
  _DWORD *v3; // r5
  const void *v7; // r7
  int v8; // r11
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
  v7 = *(const void **)(a3 + 20);
  v8 = *(_DWORD *)(a3 + 16);
  v9 = v8 - (_DWORD)v7;
  while ( 1 )
  {
    v12 = (const void *)v3[9];
    v13 = v3[8] - (_DWORD)v12;
    if ( v13 >= v9 )
      v14 = v8 - (_DWORD)v7;
    else
      v14 = v3[8] - (_DWORD)v12;
    v15 = memcmp(v7, v12, v14);
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
    std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,bool (*)(char const*,char const*,void *)>,std::priv::_Select1st<std::pair<std::string const,bool (*)(char const*,char const*,void *)>>,std::priv::_MapTraitsT<std::pair<std::string const,bool (*)(char const*,char const*,void *)>>,std::allocator<std::pair<std::string const,bool (*)(char const*,char const*,void *)>>>::_M_insert(
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
      v7 = *(const void **)(a3 + 20);
      v8 = *(_DWORD *)(a3 + 16);
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
        v7 = *(const void **)(a3 + 20);
        v8 = *(_DWORD *)(a3 + 16);
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
        v7 = *(const void **)(a3 + 20);
        v8 = *(_DWORD *)(a3 + 16);
        v17 = *(_DWORD **)(v25 + 4);
      }
    }
LABEL_16:
    v18 = (const void *)v16[9];
    v19 = v8 - (_DWORD)v7;
    v20 = v16[8] - (_DWORD)v18;
    if ( v19 >= v20 )
      v21 = v16[8] - (_DWORD)v18;
    else
      v21 = v19;
    v22 = memcmp(v18, v7, v21);
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
      std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,bool (*)(char const*,char const*,void *)>,std::priv::_Select1st<std::pair<std::string const,bool (*)(char const*,char const*,void *)>>,std::priv::_MapTraitsT<std::pair<std::string const,bool (*)(char const*,char const*,void *)>>,std::allocator<std::pair<std::string const,bool (*)(char const*,char const*,void *)>>>::_M_insert(
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


// ===== 42632c std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,bool (*)(char const*,char const*,void *)>,std::priv::_Select1st<std::pair<std::string const,bool (*)(char const*,char const*,void *)>>,std::priv::_MapTraitsT<std::pair<std::string const,bool (*)(char const*,char const*,void *)>>,std::allocator<std::pair<std::string const,bool (*)(char const*,char const*,void *)>>>::insert_unique(std::priv::_Rb_tree_iterator<std::pair<std::string const,bool (*)(char const*,char const*,void *)>,std::priv::_MapTraitsT<std::pair<std::string const,bool (*)(char const*,char const*,void *)>>>,std::pair<std::string const,bool (*)(char const*,char const*,void *)> const&) =====
char **__fastcall std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,bool (*)(char const*,char const*,void *)>,std::priv::_Select1st<std::pair<std::string const,bool (*)(char const*,char const*,void *)>>,std::priv::_MapTraitsT<std::pair<std::string const,bool (*)(char const*,char const*,void *)>>,std::allocator<std::pair<std::string const,bool (*)(char const*,char const*,void *)>>>::insert_unique(
        char **a1,
        char *a2,
        char **a3,
        int a4)
{
  char *v4; // r5
  _DWORD *v8; // r4
  const void *v9; // r3
  const void *v10; // r9
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
  const void *v25; // r3
  const void *v26; // r1
  int v27; // r4
  int v28; // r10
  size_t v29; // r2
  int v30; // r0
  int v31; // r12
  int v32; // r3
  int v33; // r4
  const void *v34; // r1
  int v35; // r9
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
      std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,bool (*)(char const*,char const*,void *)>,std::priv::_Select1st<std::pair<std::string const,bool (*)(char const*,char const*,void *)>>,std::priv::_MapTraitsT<std::pair<std::string const,bool (*)(char const*,char const*,void *)>>,std::allocator<std::pair<std::string const,bool (*)(char const*,char const*,void *)>>>::insert_unique(
        (int)&v50,
        a2,
        a4);
      *a1 = v50;
      return a1;
    }
    v25 = *(const void **)(a4 + 20);
    v26 = *((const void **)v4 + 9);
    v27 = *(_DWORD *)(a4 + 16) - (_DWORD)v25;
    v28 = *((_DWORD *)v4 + 8) - (_DWORD)v26;
    if ( v28 >= v27 )
      v29 = *(_DWORD *)(a4 + 16) - (_DWORD)v25;
    else
      v29 = *((_DWORD *)v4 + 8) - (_DWORD)v26;
    v30 = memcmp(v25, v26, v29);
    if ( !v30 )
    {
      if ( v27 < v28 )
        goto LABEL_37;
      v30 = v27 > v28;
    }
    if ( v30 >= 0 )
    {
      if ( !std::less<std::string>::operator()((int)(a2 + 20), (int)(v4 + 16), a4) )
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
      if ( !std::less<std::string>::operator()((int)(a2 + 20), a4, (int)(v16 + 16)) )
      {
        std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,bool (*)(char const*,char const*,void *)>,std::priv::_Select1st<std::pair<std::string const,bool (*)(char const*,char const*,void *)>>,std::priv::_MapTraitsT<std::pair<std::string const,bool (*)(char const*,char const*,void *)>>,std::allocator<std::pair<std::string const,bool (*)(char const*,char const*,void *)>>>::insert_unique(
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
        std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,bool (*)(char const*,char const*,void *)>,std::priv::_Select1st<std::pair<std::string const,bool (*)(char const*,char const*,void *)>>,std::priv::_MapTraitsT<std::pair<std::string const,bool (*)(char const*,char const*,void *)>>,std::allocator<std::pair<std::string const,bool (*)(char const*,char const*,void *)>>>::_M_insert(
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
    v34 = *(const void **)(a4 + 20);
    v35 = *(_DWORD *)(a4 + 16);
    v36 = *(_DWORD *)(v33 + 36);
    v37 = v35 - (_DWORD)v34;
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
        std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,bool (*)(char const*,char const*,void *)>,std::priv::_Select1st<std::pair<std::string const,bool (*)(char const*,char const*,void *)>>,std::priv::_MapTraitsT<std::pair<std::string const,bool (*)(char const*,char const*,void *)>>,std::allocator<std::pair<std::string const,bool (*)(char const*,char const*,void *)>>>::_M_insert(
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
      std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,bool (*)(char const*,char const*,void *)>,std::priv::_Select1st<std::pair<std::string const,bool (*)(char const*,char const*,void *)>>,std::priv::_MapTraitsT<std::pair<std::string const,bool (*)(char const*,char const*,void *)>>,std::allocator<std::pair<std::string const,bool (*)(char const*,char const*,void *)>>>::insert_unique(
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
  v10 = *(const void **)(a4 + 20);
  v11 = *(_DWORD *)(a4 + 16) - (_DWORD)v10;
  v12 = *((_DWORD *)v4 + 8) - (_DWORD)v9;
  v45 = v12;
  if ( v12 >= v11 )
    v12 = *(_DWORD *)(a4 + 16) - (_DWORD)v10;
  v42 = *((void **)v4 + 9);
  v46 = v12;
  v13 = memcmp(*(const void **)(a4 + 20), v9, v12);
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
      std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,bool (*)(char const*,char const*,void *)>,std::priv::_Select1st<std::pair<std::string const,bool (*)(char const*,char const*,void *)>>,std::priv::_MapTraitsT<std::pair<std::string const,bool (*)(char const*,char const*,void *)>>,std::allocator<std::pair<std::string const,bool (*)(char const*,char const*,void *)>>>::_M_insert(
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
    std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,bool (*)(char const*,char const*,void *)>,std::priv::_Select1st<std::pair<std::string const,bool (*)(char const*,char const*,void *)>>,std::priv::_MapTraitsT<std::pair<std::string const,bool (*)(char const*,char const*,void *)>>,std::allocator<std::pair<std::string const,bool (*)(char const*,char const*,void *)>>>::_M_insert(
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
      if ( !std::less<std::string>::operator()((int)(a2 + 20), a4, (int)(v16 + 16)) )
      {
LABEL_41:
        std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,bool (*)(char const*,char const*,void *)>,std::priv::_Select1st<std::pair<std::string const,bool (*)(char const*,char const*,void *)>>,std::priv::_MapTraitsT<std::pair<std::string const,bool (*)(char const*,char const*,void *)>>,std::allocator<std::pair<std::string const,bool (*)(char const*,char const*,void *)>>>::insert_unique(
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
      std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,bool (*)(char const*,char const*,void *)>,std::priv::_Select1st<std::pair<std::string const,bool (*)(char const*,char const*,void *)>>,std::priv::_MapTraitsT<std::pair<std::string const,bool (*)(char const*,char const*,void *)>>,std::allocator<std::pair<std::string const,bool (*)(char const*,char const*,void *)>>>::_M_insert(
        a1,
        a2,
        v4,
        a4,
        0,
        (int)v4);
      return a1;
    }
LABEL_61:
    std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,bool (*)(char const*,char const*,void *)>,std::priv::_Select1st<std::pair<std::string const,bool (*)(char const*,char const*,void *)>>,std::priv::_MapTraitsT<std::pair<std::string const,bool (*)(char const*,char const*,void *)>>,std::allocator<std::pair<std::string const,bool (*)(char const*,char const*,void *)>>>::_M_insert(
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


// ===== 426830 std::map<std::string,bool (*)(char const*,char const*,void *),std::less<std::string>,std::allocator<std::pair<std::string const,bool (*)(char const*,char const*,void *)>>>::operator[]<char const*>(char const* const&) [clone] =====
char *__fastcall std::map<std::string,bool (*)(char const*,char const*,void *)>::operator[]<char const*>(char **a1)
{
  char *v2; // r5
  const void *v3; // r1
  int v4; // r11
  int v5; // r9
  size_t v6; // r2
  int v7; // r0
  char *v8; // r3
  char *v10; // r5
  char *v11; // [sp+8h] [bp-64h] BYREF
  char *v12; // [sp+Ch] [bp-60h] BYREF
  std::string v13; // [sp+18h] [bp-54h] BYREF
  int v14; // [sp+30h] [bp-3Ch]
  std::string v15; // [sp+34h] [bp-38h] BYREF
  std::string v16; // [sp+4Ch] [bp-20h] BYREF

  v2 = (char *)std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,bool (*)(char const*,char const*,void *)>,std::priv::_Select1st<std::pair<std::string const,bool (*)(char const*,char const*,void *)>>,std::priv::_MapTraitsT<std::pair<std::string const,bool (*)(char const*,char const*,void *)>>,std::allocator<std::pair<std::string const,bool (*)(char const*,char const*,void *)>>>::_M_lower_bound<char const*>(
                 &MenuBase::m_FSCommandMap,
                 a1);
  if ( v2 == &MenuBase::m_FSCommandMap )
    goto LABEL_11;
  std::string::string(&v15, *a1);
  v3 = *((const void **)v2 + 9);
  v4 = *((_DWORD *)v2 + 8) - (_DWORD)v3;
  v5 = v15._M_finish - v15._M_start_of_storage._M_data;
  if ( v4 >= v15._M_finish - v15._M_start_of_storage._M_data )
    v6 = v15._M_finish - v15._M_start_of_storage._M_data;
  else
    v6 = *((_DWORD *)v2 + 8) - (_DWORD)v3;
  v7 = memcmp(v15._M_start_of_storage._M_data, v3, v6);
  if ( v7 )
  {
    if ( v7 >= 0 )
      goto LABEL_7;
    goto LABEL_10;
  }
  if ( v5 < v4 )
  {
LABEL_10:
    std::string::~string(&v15);
LABEL_11:
    std::string::string(&v16, *a1);
    v13._M_finish = (char *)&v13;
    v13._M_start_of_storage._M_data = (char *)&v13;
    std::string::_M_range_initialize(&v13, v16._M_start_of_storage._M_data, v16._M_finish);
    v14 = 0;
    v12 = v2;
    std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,bool (*)(char const*,char const*,void *)>,std::priv::_Select1st<std::pair<std::string const,bool (*)(char const*,char const*,void *)>>,std::priv::_MapTraitsT<std::pair<std::string const,bool (*)(char const*,char const*,void *)>>,std::allocator<std::pair<std::string const,bool (*)(char const*,char const*,void *)>>>::insert_unique(
      &v11,
      &MenuBase::m_FSCommandMap,
      &v12,
      (int)&v13);
    v10 = v11;
    std::string::~string(&v13);
    std::string::~string(&v16);
    v8 = v10;
    return v8 + 40;
  }
LABEL_7:
  std::string::~string(&v15);
  v8 = v2;
  return v8 + 40;
}


// ===== 426980 MenuBase::RegisterFSCommand(char const*,bool (*)(char const*,char const*,void *)) =====
int __fastcall MenuBase::RegisterFSCommand(
        MenuBase *this,
        const char *a2,
        bool (*a3)(const char *, const char *, void *))
{
  char *v4; // r0
  char *v6; // [sp+4h] [bp-8h] BYREF

  v6 = (char *)this;
  std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,bool (*)(char const*,char const*,void *)>,std::priv::_Select1st<std::pair<std::string const,bool (*)(char const*,char const*,void *)>>,std::priv::_MapTraitsT<std::pair<std::string const,bool (*)(char const*,char const*,void *)>>,std::allocator<std::pair<std::string const,bool (*)(char const*,char const*,void *)>>>::_M_find<char const*>(&v6);
  if ( &MenuBase::m_FSCommandMap != v4 )
    return 0;
  *(_DWORD *)std::map<std::string,bool (*)(char const*,char const*,void *)>::operator[]<char const*>(&v6) = a2;
  return 1;
}


// ===== 4269dc MenuBase::MenuBase(char const*) =====
void __fastcall MenuBase::MenuBase(MenuBase *this, const char *a2)
{
  bool (*v3)(const char *, const char *, void *); // r2
  bool (*v4)(const char *, const char *, void *); // r2
  bool (*v5)(const char *, const char *, void *); // r2
  bool (*v6)(const char *, const char *, void *); // r2
  bool (*v7)(const char *, const char *, void *); // r2
  bool (*v8)(const char *, const char *, void *); // r2
  bool (*v9)(const char *, const char *, void *); // r2
  bool (*v10)(const char *, const char *, void *); // r2
  bool (*v11)(const char *, const char *, void *); // r2
  bool (*v12)(const char *, const char *, void *); // r2
  bool (*v13)(const char *, const char *, void *); // r2
  bool (*v14)(const char *, const char *, void *); // r2
  bool (*v15)(const char *, const char *, void *); // r2
  bool (*v16)(const char *, const char *, void *); // r2
  bool (*v17)(const char *, const char *, void *); // r2
  bool (*v18)(const char *, const char *, void *); // r2
  bool (*v19)(const char *, const char *, void *); // r2
  bool (*v20)(const char *, const char *, void *); // r2
  bool (*v21)(const char *, const char *, void *); // r2
  bool (*v22)(const char *, const char *, void *); // r2
  bool (*v23)(const char *, const char *, void *); // r2
  bool (*v24)(const char *, const char *, void *); // r2
  bool (*v25)(const char *, const char *, void *); // r2
  bool (*v26)(const char *, const char *, void *); // r2
  bool (*v27)(const char *, const char *, void *); // r2
  bool (*v28)(const char *, const char *, void *); // r2
  bool (*v29)(const char *, const char *, void *); // r2
  bool (*v30)(const char *, const char *, void *); // r2
  bool (*v31)(const char *, const char *, void *); // r2
  bool (*v32)(const char *, const char *, void *); // r2
  bool (*v33)(const char *, const char *, void *); // r2
  bool (*v34)(const char *, const char *, void *); // r2
  bool (*v35)(const char *, const char *, void *); // r2
  bool (*v36)(const char *, const char *, void *); // r2
  bool (*v37)(const char *, const char *, void *); // r2
  bool (*v38)(const char *, const char *, void *); // r2
  bool (*v39)(const char *, const char *, void *); // r2
  bool (*v40)(const char *, const char *, void *); // r2
  bool (*v41)(const char *, const char *, void *); // r2
  bool (*v42)(const char *, const char *, void *); // r2
  bool (*v43)(const char *, const char *, void *); // r2
  bool (*v44)(const char *, const char *, void *); // r2
  bool (*v45)(const char *, const char *, void *); // r2
  bool (*v46)(const char *, const char *, void *); // r2
  bool (*v47)(const char *, const char *, void *); // r2
  bool (*v48)(const char *, const char *, void *); // r2
  bool (*v49)(const char *, const char *, void *); // r2
  bool (*v50)(const char *, const char *, void *); // r2
  bool (*v51)(const char *, const char *, void *); // r2
  bool (*v52)(const char *, const char *, void *); // r2
  bool (*v53)(const char *, const char *, void *); // r2
  bool (*v54)(const char *, const char *, void *); // r2
  bool (*v55)(const char *, const char *, void *); // r2
  bool (*v56)(const char *, const char *, void *); // r2
  bool (*v57)(const char *, const char *, void *); // r2
  bool (*v58)(const char *, const char *, void *); // r2
  bool (*v59)(const char *, const char *, void *); // r2
  bool (*v60)(const char *, const char *, void *); // r2
  bool (*v61)(const char *, const char *, void *); // r2
  bool (*v62)(const char *, const char *, void *); // r2
  bool (*v63)(const char *, const char *, void *); // r2
  bool (*v64)(const char *, const char *, void *); // r2
  std::string v65; // [sp+4h] [bp-20h] BYREF

  MenuFX::State::State(this, a2);
  *((_DWORD *)this + 28) = (char *)this + 108;
  *(_DWORD *)this = off_967D38;
  *((_DWORD *)this + 27) = (char *)this + 108;
  *((_DWORD *)this + 36) = (char *)this + 128;
  *((_DWORD *)this + 37) = (char *)this + 128;
  *((_DWORD *)this + 23) = 0;
  *((_DWORD *)this + 24) = 0;
  *((_DWORD *)this + 25) = 0;
  *((_DWORD *)this + 26) = 0;
  *((_BYTE *)this + 116) = 0;
  *((_BYTE *)this + 117) = 0;
  *((_DWORD *)this + 30) = 0;
  *((_BYTE *)this + 124) = 0;
  *((_BYTE *)this + 125) = 0;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block((_DWORD *)this + 32, 0x10u);
  **((_BYTE **)this + 36) = 0;
  *((_DWORD *)this + 43) = (char *)this + 156;
  *((_DWORD *)this + 44) = (char *)this + 156;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block((_DWORD *)this + 39, 0x10u);
  **((_BYTE **)this + 43) = 0;
  *((_DWORD *)this + 48) = 0;
  *((_BYTE *)this + 180) = 0;
  *((_DWORD *)this + 46) = 0;
  *((_DWORD *)this + 47) = 0;
  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string(&v65, "isTracingMenuBase");
  DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v65);
  std::string::~string(&v65);
  MenuBase::m_isRolloverEventEnabled = (unsigned __int8)&dword_0 + 1;
  MenuBase::RegisterFSCommand(
    (MenuBase *)"PushMenu",
    (const char *)MenuBase::FS_PushMenu,
    (bool (*)(const char *, const char *, void *))((char *)&dword_0 + 1));
  MenuBase::RegisterFSCommand((MenuBase *)"PopMenu", (const char *)MenuBase::FS_PopMenu, v3);
  MenuBase::RegisterFSCommand((MenuBase *)"PopAllAbove", (const char *)MenuBase::FS_PopAllAbove, v4);
  MenuBase::RegisterFSCommand((MenuBase *)"PopAllMenu", (const char *)MenuBase::FS_PopAllMenu, v5);
  MenuBase::RegisterFSCommand((MenuBase *)"SwitchMenu", (const char *)MenuBase::FS_SwitchMenu, v6);
  MenuBase::RegisterFSCommand((MenuBase *)"PushState", (const char *)MenuBase::FS_PushState, v7);
  MenuBase::RegisterFSCommand((MenuBase *)"SetFocus", (const char *)MenuBase::FS_SetFocus, v8);
  MenuBase::RegisterFSCommand((MenuBase *)"PlaySoundFX", (const char *)MenuBase::FS_PlaySoundFX, v9);
  MenuBase::RegisterFSCommand((MenuBase *)"PlayMusic", (const char *)MenuBase::FS_PlayMusic, v10);
  MenuBase::RegisterFSCommand((MenuBase *)"StopMusic", (const char *)MenuBase::FS_StopMusic, v11);
  MenuBase::RegisterFSCommand((MenuBase *)"StartGame", (const char *)MenuBase::FS_StartGame, v12);
  MenuBase::RegisterFSCommand((MenuBase *)"ReturnToGame", (const char *)MenuBase::FS_ReturnToGame, v13);
  MenuBase::RegisterFSCommand((MenuBase *)"ContinueGame", (const char *)MenuBase::FS_ContinueGame, v14);
  MenuBase::RegisterFSCommand((MenuBase *)"SetSaveSlot", (const char *)MenuBase::FS_SetSaveSlot, v15);
  MenuBase::RegisterFSCommand((MenuBase *)"SetPlayerClass", (const char *)MenuBase::FS_SetPlayerClass, v16);
  MenuBase::RegisterFSCommand((MenuBase *)"SetDifficulty", (const char *)MenuBase::FS_SetDifficulty, v17);
  MenuBase::RegisterFSCommand((MenuBase *)"SetPlayerName", (const char *)MenuBase::FS_SetPlayerName, v18);
  MenuBase::RegisterFSCommand((MenuBase *)"IsSaveSlotValid", (const char *)MenuBase::FS_IsSaveSlotValid, v19);
  MenuBase::RegisterFSCommand((MenuBase *)"GetSaveSlot", (const char *)MenuBase::FS_GetSaveSlot, v20);
  MenuBase::RegisterFSCommand((MenuBase *)"ResetSaveFile", (const char *)MenuBase::FS_ResetSaveFile, v21);
  MenuBase::RegisterFSCommand((MenuBase *)"SkipScript", (const char *)MenuBase::FS_SkipScript, v22);
  MenuBase::RegisterFSCommand((MenuBase *)"GoToMainMenu", (const char *)MenuBase::FS_GoToMainMenu, v23);
  MenuBase::RegisterFSCommand((MenuBase *)"LoadLevel", (const char *)MenuBase::FS_LoadLevel, v24);
  MenuBase::RegisterFSCommand((MenuBase *)"LoadLevel2", (const char *)MenuBase::FS_LoadLevel2, v25);
  MenuBase::RegisterFSCommand((MenuBase *)"EndLoading", (const char *)MenuBase::FS_EndLoading, v26);
  MenuBase::RegisterFSCommand((MenuBase *)"LoadWorldMap", (const char *)MenuBase::FS_LoadWorldMap, v27);
  MenuBase::RegisterFSCommand((MenuBase *)"IsMapLocLocked", (const char *)MenuBase::FS_IsMapLocLocked, v28);
  MenuBase::RegisterFSCommand((MenuBase *)"ExitGame", (const char *)MenuBase::FS_ExitGame, v29);
  MenuBase::RegisterFSCommand((MenuBase *)"SetBtnImage", (const char *)MenuBase::FS_SetBtnImage, v30);
  MenuBase::RegisterFSCommand((MenuBase *)"GetCharProperty", (const char *)MenuBase::FS_GetCharProperty, v31);
  MenuBase::RegisterFSCommand((MenuBase *)"GetCharProp", (const char *)MenuBase::FS_GetCharProp, v32);
  MenuBase::RegisterFSCommand((MenuBase *)"SetText", (const char *)MenuBase::FS_SetText, v33);
  MenuBase::RegisterFSCommand((MenuBase *)"SetText2", (const char *)MenuBase::FS_SetText2, v34);
  MenuBase::RegisterFSCommand((MenuBase *)"GetString", (const char *)MenuBase::FS_GetString, v35);
  MenuBase::RegisterFSCommand((MenuBase *)"GetString2", (const char *)MenuBase::FS_GetString2, v36);
  MenuBase::RegisterFSCommand((MenuBase *)"GetParsedString2", (const char *)MenuBase::FS_GetParsedString2, v37);
  MenuBase::RegisterFSCommand((MenuBase *)"GetPlayerName", (const char *)MenuBase::FS_GetPlayerName, v38);
  MenuBase::RegisterFSCommand((MenuBase *)"GetPlayerClass", (const char *)MenuBase::FS_GetPlayerClass, v39);
  MenuBase::RegisterFSCommand((MenuBase *)"GetPlayerClass2", (const char *)MenuBase::FS_GetPlayerClass2, v40);
  MenuBase::RegisterFSCommand((MenuBase *)"GetHasTwoHandWeapon", (const char *)MenuBase::FS_GetHasTwoHandWeapon, v41);
  MenuBase::RegisterFSCommand((MenuBase *)"GetHasMainHandWeapon", (const char *)MenuBase::FS_GetHasMainHandWeapon, v42);
  MenuBase::RegisterFSCommand((MenuBase *)"GetHasOffHandWeapon", (const char *)MenuBase::FS_GetHasOffHandWeapon, v43);
  MenuBase::RegisterFSCommand((MenuBase *)"GetNumPotions", (const char *)MenuBase::FS_GetNumPotions, v44);
  MenuBase::RegisterFSCommand((MenuBase *)"AssignPoint", (const char *)MenuBase::FS_AssignPoint, v45);
  MenuBase::RegisterFSCommand((MenuBase *)"AutoEquipSlot", (const char *)MenuBase::FS_AutoEquipSlot, v46);
  MenuBase::RegisterFSCommand((MenuBase *)"IncSkill", (const char *)MenuBase::FS_IncSkill, v47);
  MenuBase::RegisterFSCommand(
    (MenuBase *)"ResetDraggablePosition",
    (const char *)MenuBase::FS_ResetDraggablePosition,
    v48);
  MenuBase::RegisterFSCommand((MenuBase *)"IncOption", (const char *)MenuBase::FS_IncOption, v49);
  MenuBase::RegisterFSCommand((MenuBase *)"DecOption", (const char *)MenuBase::FS_DecOption, v50);
  MenuBase::RegisterFSCommand((MenuBase *)"ToggleOption", (const char *)MenuBase::FS_ToggleOption, v51);
  MenuBase::RegisterFSCommand((MenuBase *)"SetOption", (const char *)MenuBase::FS_SetOption, v52);
  MenuBase::RegisterFSCommand((MenuBase *)"GetOption", (const char *)MenuBase::FS_GetOption, v53);
  MenuBase::RegisterFSCommand((MenuBase *)"SetLanguage", (const char *)MenuBase::FS_SetLanguage, v54);
  MenuBase::RegisterFSCommand((MenuBase *)"SaveOptions", (const char *)MenuBase::FS_SaveOptions, v55);
  MenuBase::RegisterFSCommand((MenuBase *)"LoadOptions", (const char *)MenuBase::FS_LoadOptions, v56);
  MenuBase::RegisterFSCommand((MenuBase *)"PlayAnim", (const char *)MenuBase::FS_PlayAnim, v57);
  MenuBase::RegisterFSCommand((MenuBase *)"GotoFrame", (const char *)MenuBase::FS_GotoFrame, v58);
  MenuBase::RegisterFSCommand((MenuBase *)"LockCharacter", (const char *)MenuBase::FS_LockCharacter, v59);
  MenuBase::RegisterFSCommand((MenuBase *)"UnlockCharacter", (const char *)MenuBase::FS_UnlockCharacter, v60);
  MenuBase::RegisterFSCommand((MenuBase *)"PauseGameplay", (const char *)MenuBase::FS_PauseGameplay, v61);
  MenuBase::RegisterFSCommand((MenuBase *)"ResumeGameplay", (const char *)MenuBase::FS_ResumeGameplay, v62);
  MenuBase::RegisterFSCommand((MenuBase *)"StopDialog", (const char *)MenuBase::FS_StopDialog, v63);
  MenuBase::RegisterFSCommand((MenuBase *)"LaunchTwitter", (const char *)MenuBase::FS_LaunchTwitter, v64);
}


// ===== 427200 MenuBase::MenuBase(char const*) =====
void __fastcall MenuBase::MenuBase(MenuBase *this, const char *a2)
{
  bool (*v3)(const char *, const char *, void *); // r2
  bool (*v4)(const char *, const char *, void *); // r2
  bool (*v5)(const char *, const char *, void *); // r2
  bool (*v6)(const char *, const char *, void *); // r2
  bool (*v7)(const char *, const char *, void *); // r2
  bool (*v8)(const char *, const char *, void *); // r2
  bool (*v9)(const char *, const char *, void *); // r2
  bool (*v10)(const char *, const char *, void *); // r2
  bool (*v11)(const char *, const char *, void *); // r2
  bool (*v12)(const char *, const char *, void *); // r2
  bool (*v13)(const char *, const char *, void *); // r2
  bool (*v14)(const char *, const char *, void *); // r2
  bool (*v15)(const char *, const char *, void *); // r2
  bool (*v16)(const char *, const char *, void *); // r2
  bool (*v17)(const char *, const char *, void *); // r2
  bool (*v18)(const char *, const char *, void *); // r2
  bool (*v19)(const char *, const char *, void *); // r2
  bool (*v20)(const char *, const char *, void *); // r2
  bool (*v21)(const char *, const char *, void *); // r2
  bool (*v22)(const char *, const char *, void *); // r2
  bool (*v23)(const char *, const char *, void *); // r2
  bool (*v24)(const char *, const char *, void *); // r2
  bool (*v25)(const char *, const char *, void *); // r2
  bool (*v26)(const char *, const char *, void *); // r2
  bool (*v27)(const char *, const char *, void *); // r2
  bool (*v28)(const char *, const char *, void *); // r2
  bool (*v29)(const char *, const char *, void *); // r2
  bool (*v30)(const char *, const char *, void *); // r2
  bool (*v31)(const char *, const char *, void *); // r2
  bool (*v32)(const char *, const char *, void *); // r2
  bool (*v33)(const char *, const char *, void *); // r2
  bool (*v34)(const char *, const char *, void *); // r2
  bool (*v35)(const char *, const char *, void *); // r2
  bool (*v36)(const char *, const char *, void *); // r2
  bool (*v37)(const char *, const char *, void *); // r2
  bool (*v38)(const char *, const char *, void *); // r2
  bool (*v39)(const char *, const char *, void *); // r2
  bool (*v40)(const char *, const char *, void *); // r2
  bool (*v41)(const char *, const char *, void *); // r2
  bool (*v42)(const char *, const char *, void *); // r2
  bool (*v43)(const char *, const char *, void *); // r2
  bool (*v44)(const char *, const char *, void *); // r2
  bool (*v45)(const char *, const char *, void *); // r2
  bool (*v46)(const char *, const char *, void *); // r2
  bool (*v47)(const char *, const char *, void *); // r2
  bool (*v48)(const char *, const char *, void *); // r2
  bool (*v49)(const char *, const char *, void *); // r2
  bool (*v50)(const char *, const char *, void *); // r2
  bool (*v51)(const char *, const char *, void *); // r2
  bool (*v52)(const char *, const char *, void *); // r2
  bool (*v53)(const char *, const char *, void *); // r2
  bool (*v54)(const char *, const char *, void *); // r2
  bool (*v55)(const char *, const char *, void *); // r2
  bool (*v56)(const char *, const char *, void *); // r2
  bool (*v57)(const char *, const char *, void *); // r2
  bool (*v58)(const char *, const char *, void *); // r2
  bool (*v59)(const char *, const char *, void *); // r2
  bool (*v60)(const char *, const char *, void *); // r2
  bool (*v61)(const char *, const char *, void *); // r2
  bool (*v62)(const char *, const char *, void *); // r2
  bool (*v63)(const char *, const char *, void *); // r2
  bool (*v64)(const char *, const char *, void *); // r2
  std::string v65; // [sp+4h] [bp-20h] BYREF

  MenuFX::State::State(this, a2);
  *((_DWORD *)this + 28) = (char *)this + 108;
  *(_DWORD *)this = off_967D38;
  *((_DWORD *)this + 27) = (char *)this + 108;
  *((_DWORD *)this + 36) = (char *)this + 128;
  *((_DWORD *)this + 37) = (char *)this + 128;
  *((_DWORD *)this + 23) = 0;
  *((_DWORD *)this + 24) = 0;
  *((_DWORD *)this + 25) = 0;
  *((_DWORD *)this + 26) = 0;
  *((_BYTE *)this + 116) = 0;
  *((_BYTE *)this + 117) = 0;
  *((_DWORD *)this + 30) = 0;
  *((_BYTE *)this + 124) = 0;
  *((_BYTE *)this + 125) = 0;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block((_DWORD *)this + 32, 0x10u);
  **((_BYTE **)this + 36) = 0;
  *((_DWORD *)this + 43) = (char *)this + 156;
  *((_DWORD *)this + 44) = (char *)this + 156;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block((_DWORD *)this + 39, 0x10u);
  **((_BYTE **)this + 43) = 0;
  *((_DWORD *)this + 48) = 0;
  *((_BYTE *)this + 180) = 0;
  *((_DWORD *)this + 46) = 0;
  *((_DWORD *)this + 47) = 0;
  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string(&v65, "isTracingMenuBase");
  DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v65);
  std::string::~string(&v65);
  MenuBase::m_isRolloverEventEnabled = (unsigned __int8)&dword_0 + 1;
  MenuBase::RegisterFSCommand(
    (MenuBase *)"PushMenu",
    (const char *)MenuBase::FS_PushMenu,
    (bool (*)(const char *, const char *, void *))((char *)&dword_0 + 1));
  MenuBase::RegisterFSCommand((MenuBase *)"PopMenu", (const char *)MenuBase::FS_PopMenu, v3);
  MenuBase::RegisterFSCommand((MenuBase *)"PopAllAbove", (const char *)MenuBase::FS_PopAllAbove, v4);
  MenuBase::RegisterFSCommand((MenuBase *)"PopAllMenu", (const char *)MenuBase::FS_PopAllMenu, v5);
  MenuBase::RegisterFSCommand((MenuBase *)"SwitchMenu", (const char *)MenuBase::FS_SwitchMenu, v6);
  MenuBase::RegisterFSCommand((MenuBase *)"PushState", (const char *)MenuBase::FS_PushState, v7);
  MenuBase::RegisterFSCommand((MenuBase *)"SetFocus", (const char *)MenuBase::FS_SetFocus, v8);
  MenuBase::RegisterFSCommand((MenuBase *)"PlaySoundFX", (const char *)MenuBase::FS_PlaySoundFX, v9);
  MenuBase::RegisterFSCommand((MenuBase *)"PlayMusic", (const char *)MenuBase::FS_PlayMusic, v10);
  MenuBase::RegisterFSCommand((MenuBase *)"StopMusic", (const char *)MenuBase::FS_StopMusic, v11);
  MenuBase::RegisterFSCommand((MenuBase *)"StartGame", (const char *)MenuBase::FS_StartGame, v12);
  MenuBase::RegisterFSCommand((MenuBase *)"ReturnToGame", (const char *)MenuBase::FS_ReturnToGame, v13);
  MenuBase::RegisterFSCommand((MenuBase *)"ContinueGame", (const char *)MenuBase::FS_ContinueGame, v14);
  MenuBase::RegisterFSCommand((MenuBase *)"SetSaveSlot", (const char *)MenuBase::FS_SetSaveSlot, v15);
  MenuBase::RegisterFSCommand((MenuBase *)"SetPlayerClass", (const char *)MenuBase::FS_SetPlayerClass, v16);
  MenuBase::RegisterFSCommand((MenuBase *)"SetDifficulty", (const char *)MenuBase::FS_SetDifficulty, v17);
  MenuBase::RegisterFSCommand((MenuBase *)"SetPlayerName", (const char *)MenuBase::FS_SetPlayerName, v18);
  MenuBase::RegisterFSCommand((MenuBase *)"IsSaveSlotValid", (const char *)MenuBase::FS_IsSaveSlotValid, v19);
  MenuBase::RegisterFSCommand((MenuBase *)"GetSaveSlot", (const char *)MenuBase::FS_GetSaveSlot, v20);
  MenuBase::RegisterFSCommand((MenuBase *)"ResetSaveFile", (const char *)MenuBase::FS_ResetSaveFile, v21);
  MenuBase::RegisterFSCommand((MenuBase *)"SkipScript", (const char *)MenuBase::FS_SkipScript, v22);
  MenuBase::RegisterFSCommand((MenuBase *)"GoToMainMenu", (const char *)MenuBase::FS_GoToMainMenu, v23);
  MenuBase::RegisterFSCommand((MenuBase *)"LoadLevel", (const char *)MenuBase::FS_LoadLevel, v24);
  MenuBase::RegisterFSCommand((MenuBase *)"LoadLevel2", (const char *)MenuBase::FS_LoadLevel2, v25);
  MenuBase::RegisterFSCommand((MenuBase *)"EndLoading", (const char *)MenuBase::FS_EndLoading, v26);
  MenuBase::RegisterFSCommand((MenuBase *)"LoadWorldMap", (const char *)MenuBase::FS_LoadWorldMap, v27);
  MenuBase::RegisterFSCommand((MenuBase *)"IsMapLocLocked", (const char *)MenuBase::FS_IsMapLocLocked, v28);
  MenuBase::RegisterFSCommand((MenuBase *)"ExitGame", (const char *)MenuBase::FS_ExitGame, v29);
  MenuBase::RegisterFSCommand((MenuBase *)"SetBtnImage", (const char *)MenuBase::FS_SetBtnImage, v30);
  MenuBase::RegisterFSCommand((MenuBase *)"GetCharProperty", (const char *)MenuBase::FS_GetCharProperty, v31);
  MenuBase::RegisterFSCommand((MenuBase *)"GetCharProp", (const char *)MenuBase::FS_GetCharProp, v32);
  MenuBase::RegisterFSCommand((MenuBase *)"SetText", (const char *)MenuBase::FS_SetText, v33);
  MenuBase::RegisterFSCommand((MenuBase *)"SetText2", (const char *)MenuBase::FS_SetText2, v34);
  MenuBase::RegisterFSCommand((MenuBase *)"GetString", (const char *)MenuBase::FS_GetString, v35);
  MenuBase::RegisterFSCommand((MenuBase *)"GetString2", (const char *)MenuBase::FS_GetString2, v36);
  MenuBase::RegisterFSCommand((MenuBase *)"GetParsedString2", (const char *)MenuBase::FS_GetParsedString2, v37);
  MenuBase::RegisterFSCommand((MenuBase *)"GetPlayerName", (const char *)MenuBase::FS_GetPlayerName, v38);
  MenuBase::RegisterFSCommand((MenuBase *)"GetPlayerClass", (const char *)MenuBase::FS_GetPlayerClass, v39);
  MenuBase::RegisterFSCommand((MenuBase *)"GetPlayerClass2", (const char *)MenuBase::FS_GetPlayerClass2, v40);
  MenuBase::RegisterFSCommand((MenuBase *)"GetHasTwoHandWeapon", (const char *)MenuBase::FS_GetHasTwoHandWeapon, v41);
  MenuBase::RegisterFSCommand((MenuBase *)"GetHasMainHandWeapon", (const char *)MenuBase::FS_GetHasMainHandWeapon, v42);
  MenuBase::RegisterFSCommand((MenuBase *)"GetHasOffHandWeapon", (const char *)MenuBase::FS_GetHasOffHandWeapon, v43);
  MenuBase::RegisterFSCommand((MenuBase *)"GetNumPotions", (const char *)MenuBase::FS_GetNumPotions, v44);
  MenuBase::RegisterFSCommand((MenuBase *)"AssignPoint", (const char *)MenuBase::FS_AssignPoint, v45);
  MenuBase::RegisterFSCommand((MenuBase *)"AutoEquipSlot", (const char *)MenuBase::FS_AutoEquipSlot, v46);
  MenuBase::RegisterFSCommand((MenuBase *)"IncSkill", (const char *)MenuBase::FS_IncSkill, v47);
  MenuBase::RegisterFSCommand(
    (MenuBase *)"ResetDraggablePosition",
    (const char *)MenuBase::FS_ResetDraggablePosition,
    v48);
  MenuBase::RegisterFSCommand((MenuBase *)"IncOption", (const char *)MenuBase::FS_IncOption, v49);
  MenuBase::RegisterFSCommand((MenuBase *)"DecOption", (const char *)MenuBase::FS_DecOption, v50);
  MenuBase::RegisterFSCommand((MenuBase *)"ToggleOption", (const char *)MenuBase::FS_ToggleOption, v51);
  MenuBase::RegisterFSCommand((MenuBase *)"SetOption", (const char *)MenuBase::FS_SetOption, v52);
  MenuBase::RegisterFSCommand((MenuBase *)"GetOption", (const char *)MenuBase::FS_GetOption, v53);
  MenuBase::RegisterFSCommand((MenuBase *)"SetLanguage", (const char *)MenuBase::FS_SetLanguage, v54);
  MenuBase::RegisterFSCommand((MenuBase *)"SaveOptions", (const char *)MenuBase::FS_SaveOptions, v55);
  MenuBase::RegisterFSCommand((MenuBase *)"LoadOptions", (const char *)MenuBase::FS_LoadOptions, v56);
  MenuBase::RegisterFSCommand((MenuBase *)"PlayAnim", (const char *)MenuBase::FS_PlayAnim, v57);
  MenuBase::RegisterFSCommand((MenuBase *)"GotoFrame", (const char *)MenuBase::FS_GotoFrame, v58);
  MenuBase::RegisterFSCommand((MenuBase *)"LockCharacter", (const char *)MenuBase::FS_LockCharacter, v59);
  MenuBase::RegisterFSCommand((MenuBase *)"UnlockCharacter", (const char *)MenuBase::FS_UnlockCharacter, v60);
  MenuBase::RegisterFSCommand((MenuBase *)"PauseGameplay", (const char *)MenuBase::FS_PauseGameplay, v61);
  MenuBase::RegisterFSCommand((MenuBase *)"ResumeGameplay", (const char *)MenuBase::FS_ResumeGameplay, v62);
  MenuBase::RegisterFSCommand((MenuBase *)"StopDialog", (const char *)MenuBase::FS_StopDialog, v63);
  MenuBase::RegisterFSCommand((MenuBase *)"LaunchTwitter", (const char *)MenuBase::FS_LaunchTwitter, v64);
}


// ===== 427a24 MenuBase::MyFSCommand(char const*,char const*) =====
int __fastcall MenuBase::MyFSCommand(MenuBase *this, char *a2, const char *a3)
{
  char *v6; // r0
  char *v7; // r0
  char *v8; // [sp+4h] [bp-24h] BYREF
  std::string v9; // [sp+Ch] [bp-1Ch] BYREF

  v8 = a2;
  if ( !a2 )
    return 1;
  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string(&v9, "isTracingMenuBase");
  DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v9);
  std::string::~string(&v9);
  std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,bool (*)(char const*,char const*,void *)>,std::priv::_Select1st<std::pair<std::string const,bool (*)(char const*,char const*,void *)>>,std::priv::_MapTraitsT<std::pair<std::string const,bool (*)(char const*,char const*,void *)>>,std::allocator<std::pair<std::string const,bool (*)(char const*,char const*,void *)>>>::_M_find<char const*>(&v8);
  if ( &MenuBase::m_FSCommandMap == v6 )
    return 0;
  v7 = std::map<std::string,bool (*)(char const*,char const*,void *)>::operator[]<char const*>(&v8);
  return (*(int (__fastcall **)(char *, const char *, MenuBase *))v7)(v8, a3, this);
}


// ===== 427b08 MenuBase::FS_StopDialog(char const*,char const*,void *) =====
int __fastcall MenuBase::FS_StopDialog(MenuBase *this, const char *a2, const char *a3, void *a4)
{
  if ( dword_99FB9C != dword_99FB8C )
  {
    std::deque<DialogMsg>::pop_front(&dword_99FB8C);
    if ( DialogMsg::s_SkipFuncName )
      ((void (*)(void))MenuMessageManager<DialogMsg,1>::Invoke)();
    if ( dword_99FB9C != dword_99FB8C )
      MenuMessageManager<DialogMsg,1>::Invoke(DialogMsg::s_StartFuncName[0]);
  }
  return 1;
}


// ===== 427b88 `global constructor keyed to'.._.._sources_Game_Menus_MenuCachedCharacter.cpp =====
void `global constructor keyed to'.._.._sources_Game_Menus_MenuCachedCharacter.cpp()
{
  dword_9A489C = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9A4898 = 1056964608;
}


// ===== 427ba8 gameswf::weak_ptr<gameswf::character>::operator=(gameswf::character*) =====
void __fastcall gameswf::weak_ptr<gameswf::character>::operator=(int a1, gameswf::ref_counted *this)
{
  _DWORD *weak_proxy; // r4
  _DWORD *v4; // r0
  bool v5; // zf
  _DWORD *v6; // r0

  *(_DWORD *)(a1 + 4) = this;
  if ( this )
  {
    weak_proxy = (_DWORD *)gameswf::ref_counted::get_weak_proxy(this);
    v4 = *(_DWORD **)a1;
    if ( weak_proxy != *(_DWORD **)a1 )
    {
      if ( v4 )
      {
        v5 = (*v4)-- == 1;
        if ( v5 )
          gameswf::free_internal(v4);
      }
      *(_DWORD *)a1 = weak_proxy;
      if ( weak_proxy )
        ++*weak_proxy;
    }
  }
  else
  {
    v6 = *(_DWORD **)a1;
    if ( v6 )
    {
      v5 = (*v6)-- == 1;
      if ( v5 )
        gameswf::free_internal(v6);
      *(_DWORD *)a1 = 0;
    }
  }
}


// ===== 427c44 DebugCachedCharacter::RefreshCache(gameswf::character *,MenuFX *,gameswf::character *) =====
std::string *__fastcall DebugCachedCharacter::RefreshCache(
        std::string *this,
        gameswf::character *a2,
        MenuFX *a3,
        gameswf::character *a4)
{
  std::string *v5; // r4
  char *v8; // r8
  const char *v9; // r8
  size_t v10; // r0

  v5 = this;
  if ( a2 )
  {
    gameswf::weak_ptr<gameswf::character>::operator=((int)this + 40, a2);
    v8 = *((char **)a2 + 17);
    if ( *v8 == -1 )
      v9 = *((const char **)v8 + 3);
    else
      v9 = v8 + 1;
    v10 = LC_API_STRLEN_0(v9);
    this = std::string::_M_assign((std::string *const)&v5->_M_buffers._M_static_buf[8], v9, &v9[v10]);
    *(_DWORD *)&v5[1]._M_buffers._M_static_buf[12] = a4;
    *(_DWORD *)&v5[1]._M_buffers._M_static_buf[8] = a3;
  }
  return this;
}


// ===== 427ca0 DebugCachedCharacter::RefreshCache(char const*,MenuFX *,gameswf::character *) =====
void __fastcall DebugCachedCharacter::RefreshCache(
        DebugCachedCharacter *this,
        const char *a2,
        MenuFX *a3,
        gameswf::character *a4)
{
  gameswf::ref_counted *v8; // r0
  size_t v9; // r0
  int v10; // r3
  _BYTE *v11; // r0

  if ( a4 )
    v8 = (gameswf::ref_counted *)RenderFX::Find(a3, a2, a4);
  else
    v8 = (gameswf::ref_counted *)RenderFX::Find(a3, a2);
  gameswf::weak_ptr<gameswf::character>::operator=((int)this + 40, v8);
  v9 = LC_API_STRLEN_0(a2);
  std::string::_M_assign((std::string *const)((char *)this + 8), a2, &a2[v9]);
  v10 = *((_DWORD *)this + 11);
  *((_DWORD *)this + 8) = a3;
  *((_DWORD *)this + 9) = a4;
  if ( v10 )
  {
    v11 = *((_BYTE **)this + 10);
    if ( !v11[4] )
    {
      if ( (*(_DWORD *)v11)-- == 1 )
        gameswf::free_internal(v11);
      *((_DWORD *)this + 11) = 0;
      *((_DWORD *)this + 10) = 0;
    }
  }
}


// ===== 427d50 DebugCachedCharacter::GetChar(void) =====
int __fastcall DebugCachedCharacter::GetChar(DebugCachedCharacter *this)
{
  int v1; // r5
  _BYTE *v3; // r0
  int result; // r0
  _BYTE *v5; // r3
  int v6; // r5
  int v7; // r6
  _BYTE *v8; // r0
  int v9; // r3
  _BYTE *v10; // r0
  _BYTE *v11; // r3
  bool v12; // zf
  _BYTE *v13; // r0

  v1 = *((_DWORD *)this + 11);
  if ( v1 )
  {
    v3 = *((_BYTE **)this + 10);
    if ( v3[4] )
      goto LABEL_3;
    v12 = (*(_DWORD *)v3)-- == 1;
    if ( v12 )
      gameswf::free_internal(v3);
    *((_DWORD *)this + 11) = 0;
    *((_DWORD *)this + 10) = 0;
  }
  if ( gAssertLevel == 2 )
  {
    dword_0 = 0;
    v1 = *((_DWORD *)this + 11);
  }
  else if ( gAssertLevel == 1 )
  {
    fprintf(
      (FILE *)&_sF + 2,
      "ASSERT(%s) FAILED: %s:%d\n",
      "m_character.get_ptr() != __null",
      "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Menus\\MenuCachedCharacter.cpp",
      50);
    v1 = *((_DWORD *)this + 11);
    if ( v1 )
    {
      v13 = *((_BYTE **)this + 10);
      if ( !v13[4] )
      {
        v12 = (*(_DWORD *)v13)-- == 1;
        if ( v12 )
          gameswf::free_internal(v13);
        v1 = 0;
        *((_DWORD *)this + 10) = 0;
        *((_DWORD *)this + 11) = 0;
      }
    }
  }
  else
  {
    v1 = *((_DWORD *)this + 11);
  }
LABEL_3:
  if ( *(_BYTE *)this )
  {
    DebugCachedCharacter::RefreshCache(
      this,
      *((const char **)this + 7),
      *((MenuFX **)this + 8),
      *((gameswf::character **)this + 9));
    result = *((_DWORD *)this + 11);
  }
  else
  {
    result = v1;
  }
  if ( result )
  {
    v5 = *((_BYTE **)this + 10);
    if ( !v5[4] )
    {
      v12 = (*(_DWORD *)v5)-- == 1;
      if ( v12 )
        gameswf::free_internal(v5);
      result = 0;
      *((_DWORD *)this + 10) = 0;
      *((_DWORD *)this + 11) = 0;
    }
  }
  if ( result != v1 )
  {
    v6 = *((_DWORD *)this + 11);
    ++*((_DWORD *)this + 1);
    v7 = v6;
    if ( v6 )
    {
      v8 = *((_BYTE **)this + 10);
      if ( v8[4] )
      {
        v9 = *(_DWORD *)(v6 + 64);
        if ( v9 )
        {
          while ( 1 )
          {
            v10 = *(_BYTE **)(v7 + 60);
            if ( !v10[4] )
              break;
            v7 = v9;
            v9 = *(_DWORD *)(v9 + 64);
            if ( !v9 )
              goto LABEL_14;
          }
          v12 = (*(_DWORD *)v10)-- == 1;
          if ( v12 )
            gameswf::free_internal(v10);
          *(_DWORD *)(v7 + 64) = 0;
          *(_DWORD *)(v7 + 60) = 0;
          v6 = *((_DWORD *)this + 11);
        }
LABEL_14:
        result = v6;
        goto LABEL_15;
      }
      v12 = (*(_DWORD *)v8)-- == 1;
      if ( v12 )
        gameswf::free_internal(v8);
      v6 = 0;
      *((_DWORD *)this + 11) = 0;
      *((_DWORD *)this + 10) = 0;
    }
    return v6;
  }
LABEL_15:
  if ( result )
  {
    v11 = *((_BYTE **)this + 10);
    if ( !v11[4] )
    {
      v12 = (*(_DWORD *)v11)-- == 1;
      if ( v12 )
        gameswf::free_internal(v11);
      *((_DWORD *)this + 11) = 0;
      *((_DWORD *)this + 10) = 0;
      return 0;
    }
  }
  return result;
}


// ===== 427fd8 MenuCharacterSelect::IsAnimOver(void) =====
bool __fastcall MenuCharacterSelect::IsAnimOver(MenuCharacterSelect *this)
{
  return *((float *)this + 56) >= *((float *)this + 58);
}


// ===== 427ffc MenuCharacterSelect::UpdateAnim(void) =====
bool __fastcall MenuCharacterSelect::UpdateAnim(MenuCharacterSelect *this)
{
  float v2; // r6
  float v3; // r0
  float v4; // r5
  _BOOL4 result; // r0

  (*(void (__fastcall **)(_DWORD, _DWORD, unsigned int))(**((_DWORD **)this + 51) + 16))(
    *((_DWORD *)this + 51),
    *((_DWORD *)this + 49),
    (unsigned int)*((float *)this + 56));
  v2 = *((float *)this + 56);
  v3 = v2 + (float)(unsigned int)Application::GetDt((Application *)&Singleton<Application>::s_inst);
  v4 = *((float *)this + 58);
  *((float *)this + 56) = v3;
  result = v3 >= v4;
  if ( result )
    *((float *)this + 56) = v4;
  return result;
}


// ===== 428078 MenuCharacterSelect::SetAnim(char const*) =====
int __fastcall MenuCharacterSelect::SetAnim(MenuCharacterSelect *this, const char *a2)
{
  int v3; // r5
  int v4; // r0
  int v5; // r3
  int v6; // r0
  float v7; // r3
  int v8; // r5

  v3 = (*(int (__fastcall **)(_DWORD, const char *))(**((_DWORD **)this + 52) + 24))(*((_DWORD *)this + 52), a2);
  if ( v3 < 0 )
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
        "idx >= 0",
        "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Menus\\MenuCharacterSelect.cpp",
        495);
    }
  }
  (*(void (__fastcall **)(_DWORD, int))(**((_DWORD **)this + 52) + 16))(*((_DWORD *)this + 52), v3);
  (*(void (__fastcall **)(_DWORD, _DWORD))(**((_DWORD **)this + 52) + 64))(*((_DWORD *)this + 52), 0);
  v4 = (*(int (__fastcall **)(_DWORD, int))(**((_DWORD **)this + 52) + 32))(*((_DWORD *)this + 52), v3);
  v5 = *((_DWORD *)this + 52);
  *((float *)this + 57) = (float)v4;
  v6 = (*(int (__fastcall **)(int, int))(*(_DWORD *)v5 + 36))(v5, v3);
  v7 = *((float *)this + 57);
  *((float *)this + 58) = (float)v6;
  v8 = *((_DWORD *)this + 52);
  *((float *)this + 56) = v7;
  return (*(int (__fastcall **)(int, int))(*(_DWORD *)v8 + 12))(v8, (int)v7);
}


// ===== 4281b8 MenuCharacterSelect::OnEvent(RenderFX::Event &) =====
int __fastcall MenuCharacterSelect::OnEvent(MenuCharacterSelect *this, RenderFX::Event *a2)
{
  int v4; // r3
  int v6; // r0
  int v7; // r3
  int v8; // r10
  VoxSoundManager *v9; // r6
  int v10; // r8
  int v11; // r7
  int v12; // r1
  int v13; // r6
  int v14; // r6
  int v15; // r3
  int v16; // r3
  int v17; // r10
  int v18; // r7
  int v19; // r3

  if ( *((_BYTE *)this + 252) )
  {
    v4 = *((_DWORD *)a2 + 2);
    if ( v4 == 2 )
    {
      v13 = *(_DWORD *)a2;
      if ( v13 == DebugCachedCharacter::GetChar((MenuCharacterSelect *)((char *)this + 256)) )
      {
        v19 = *((_DWORD *)this + 59);
        if ( v19 <= 1 )
          *((_DWORD *)this + 59) = v19 + 1;
      }
      else
      {
        v14 = *(_DWORD *)a2;
        if ( v14 == DebugCachedCharacter::GetChar((MenuCharacterSelect *)((char *)this + 304)) )
        {
          v15 = *((_DWORD *)this + 59);
          if ( v15 > 0 )
            *((_DWORD *)this + 59) = v15 - 1;
        }
      }
    }
    else
    {
      if ( v4 != 5 )
      {
        *((_BYTE *)this + 244) = 0;
        return MenuBase::OnEvent(this, a2);
      }
      if ( !*((_BYTE *)this + 244) )
      {
        *((_BYTE *)this + 244) = 1;
        *((_DWORD *)this + 62) = *((_DWORD *)a2 + 3);
        return MenuBase::OnEvent(this, a2);
      }
      v6 = (int)(float)(*((float *)a2 + 3) - *((float *)this + 62));
      if ( v6 > 100 )
      {
        v16 = *((_DWORD *)this + 59);
        if ( v16 <= 0 )
          return MenuBase::OnEvent(this, a2);
        *((_DWORD *)this + 59) = v16 - 1;
        v17 = Arrays::Sounds::size;
        v9 = (VoxSoundManager *)VoxSoundManager::s_instance;
        if ( Arrays::Sounds::size )
        {
          v10 = 0;
          v18 = Arrays::Sounds::m_memberNames;
          while ( LC_API_STRCMP_0("MenuTab", *(const char **)(v18 + 4 * v10)) )
          {
            if ( ++v10 == v17 )
              goto LABEL_32;
          }
          goto LABEL_15;
        }
LABEL_32:
        v12 = -1;
        goto LABEL_16;
      }
      if ( v6 < -100 )
      {
        v7 = *((_DWORD *)this + 59);
        if ( v7 <= 1 )
        {
          *((_DWORD *)this + 59) = v7 + 1;
          v8 = Arrays::Sounds::size;
          v9 = (VoxSoundManager *)VoxSoundManager::s_instance;
          if ( Arrays::Sounds::size )
          {
            v10 = 0;
            v11 = Arrays::Sounds::m_memberNames;
            while ( LC_API_STRCMP_0("MenuTab", *(const char **)(v11 + 4 * v10)) )
            {
              if ( ++v10 == v8 )
                goto LABEL_32;
            }
LABEL_15:
            v12 = v10;
LABEL_16:
            VoxSoundManager::PlayMenu(v9, v12, 0, 0, 0);
            return MenuBase::OnEvent(this, a2);
          }
          goto LABEL_32;
        }
      }
    }
  }
  return MenuBase::OnEvent(this, a2);
}


// ===== 4283c0 MenuCharacterSelect::Hide(void) =====
int __fastcall MenuCharacterSelect::Hide(MenuCharacterSelect *this)
{
  int result; // r0
  int v3; // r3
  MenuMainMenu *v4; // r0
  MenuMainMenu *Instance; // r0
  MenuMainMenu *v6; // r0
  MenuMainMenu *v7; // r0
  MenuMainMenu *v8; // r0
  MenuMainMenu *v9; // r0
  MenuMainMenu *v10; // r0
  MenuMainMenu *v11; // r0
  unsigned int v12; // r1

  result = (*(int (__fastcall **)(MenuCharacterSelect *))(*(_DWORD *)this + 60))(this);
  if ( result )
  {
    MenuBase::Hide(this);
    v3 = *((_DWORD *)this + 49);
    if ( v3 )
      (*(void (__fastcall **)(_DWORD))(*(_DWORD *)v3 + 104))(*((_DWORD *)this + 49));
    (*(void (__fastcall **)(_DWORD))(**(_DWORD **)(dword_99F73C + 28) + 104))(*(_DWORD *)(dword_99F73C + 28));
    ObjectManager::Flush((ObjectManager *)dword_99F764);
    v4 = (MenuMainMenu *)AnimSetManager::Flush((AnimSetManager *)&Singleton<AnimSetManager>::s_inst);
    Instance = (MenuMainMenu *)MenuMainMenu::GetInstance(v4);
    MenuMainMenu::CreateAvatarCamera(Instance);
    v7 = (MenuMainMenu *)MenuMainMenu::GetInstance(v6);
    MenuMainMenu::m_isDestroyed = 0;
    v8 = (MenuMainMenu *)MenuMainMenu::GetInstance(v7);
    MenuMainMenu::mSavegameSlot = *((_DWORD *)this + 88);
    v9 = (MenuMainMenu *)MenuMainMenu::GetInstance(v8);
    v10 = (MenuMainMenu *)MenuMainMenu::SetupScene(v9);
    v11 = (MenuMainMenu *)MenuMainMenu::GetInstance(v10);
    return MenuMainMenu::SetupCharacter(v11, v12);
  }
  return result;
}


// ===== 428498 MenuCharacterSelect::Update(void) =====
int __fastcall MenuCharacterSelect::Update(MenuCharacterSelect *this)
{
  int v1; // r5
  StringManager *v3; // r8
  gameswf::character *v4; // r11
  int v5; // r0
  const char *v6; // r0
  int v7; // r0
  const char *v8; // r0
  RenderFX *v9; // r8
  RenderFX *v10; // r5
  char *v11; // r1
  const char *v12; // r1
  RenderFX *v13; // r5
  char *v14; // r1
  const char *v15; // r1
  int v16; // r3
  int v17; // r5
  MenuCharacterSelect *v18; // r6
  int v19; // r9
  int v20; // r11
  int CharAnimTableId; // r0
  int v22; // r9
  int v23; // r11
  int v24; // r0
  CharAnimator *v25; // r0
  CharAnimator *v26; // r0
  CharAnimator *v27; // r0
  RenderFX *v29; // r11
  gameswf::character *v30; // r9
  int v31; // r0
  const char *v32; // r0
  gameswf::character *v33; // r11
  int v34; // r0
  const char *v35; // r0
  RenderFX *v36; // r8
  RenderFX *v37; // r5
  char *v38; // r1
  const char *v39; // r1
  RenderFX *v40; // r5
  char *v41; // r1
  const char *v42; // r1
  gameswf::character *Char; // r11
  int Constant; // r0
  const char *String; // r0
  gameswf::character *v46; // r11
  int v47; // r0
  const char *v48; // r0
  RenderFX *Root; // r8
  RenderFX *v50; // r5
  char *v51; // r1
  const char *v52; // r1
  RenderFX *v53; // r5
  char *v54; // r1
  const char *v55; // r1
  int v56; // r3
  RenderFX *v57; // [sp+8h] [bp-34h]
  gameswf::character *v58; // [sp+8h] [bp-34h]
  RenderFX *v59; // [sp+8h] [bp-34h]
  RenderFX *v60; // [sp+8h] [bp-34h]
  RenderFX *v61; // [sp+8h] [bp-34h]
  RenderFX *v62; // [sp+Ch] [bp-30h]
  _BYTE v63[12]; // [sp+14h] [bp-28h] BYREF
  _BYTE v64[12]; // [sp+20h] [bp-1Ch] BYREF
  _BYTE v65[16]; // [sp+2Ch] [bp-10h] BYREF

  v1 = *((_DWORD *)this + 59);
  v3 = (StringManager *)dword_99F760;
  if ( *((_DWORD *)this + 60) == v1 )
  {
    if ( MenuCharacterSelect::IsAnimOver(this) )
    {
      v56 = *((_DWORD *)this + 59);
      switch ( v56 )
      {
        case 1:
          MenuCharacterSelect::SetAnim(this, "lol_2_idle");
          break;
        case 2:
          MenuCharacterSelect::SetAnim(this, "lol_3_idle");
          break;
        case 0:
          MenuCharacterSelect::SetAnim(this, "lol_1_idle");
          break;
      }
      *((_BYTE *)this + 252) = 1;
    }
  }
  else
  {
    switch ( v1 )
    {
      case 1:
        v60 = *((RenderFX **)this + 1);
        Char = (gameswf::character *)DebugCachedCharacter::GetChar((MenuCharacterSelect *)((char *)this + 360));
        Constant = PyDataConstants::getConstant((PyDataConstants *)dword_99F758, "StrID", "MENU_CLASS_01");
        String = (const char *)StringManager::getString(v3, Constant);
        RenderFX::FormatHTML(v60, Char, "%s", String);
        v61 = *((RenderFX **)this + 1);
        v46 = (gameswf::character *)DebugCachedCharacter::GetChar((MenuCharacterSelect *)((char *)this + 408));
        v47 = PyDataConstants::getConstant((PyDataConstants *)dword_99F758, "StrID", "MENU_ROGUE_DESC");
        v48 = (const char *)StringManager::getString(v3, v47);
        RenderFX::FormatHTML(v61, v46, "%s", v48);
        *((_DWORD *)this + 89) = Arrays::GetMemberIDByString<Arrays::CharacterTable>("RoguePlayerBase");
        Root = (RenderFX *)MenuManager::GetRoot((MenuManager *)dword_99F780);
        v64[1] = 0;
        v64[0] = 0;
        gameswf::as_value::set_string((gameswf::as_value *)v64, "RoguePlayerBase");
        RenderFX::InvokeASCallback(Root, "_root.menu_SelectClass", "CurrentClass", (const gameswf::as_value *)v64, 1);
        gameswf::as_value::drop_refs((gameswf::as_value *)v64);
        v50 = *((RenderFX **)this + 1);
        v51 = *(char **)(DebugCachedCharacter::GetChar((MenuCharacterSelect *)((char *)this + 256)) + 68);
        if ( *v51 == -1 )
          v52 = *((const char **)v51 + 3);
        else
          v52 = v51 + 1;
        RenderFX::SetVisible(v50, v52, 1);
        v53 = *((RenderFX **)this + 1);
        v54 = *(char **)(DebugCachedCharacter::GetChar((MenuCharacterSelect *)((char *)this + 304)) + 68);
        if ( *v54 == -1 )
          v55 = *((const char **)v54 + 3);
        else
          v55 = v54 + 1;
        RenderFX::SetVisible(v53, v55, 1);
        if ( *((_DWORD *)this + 60) )
          MenuCharacterSelect::SetAnim(this, "lol_3_to_2");
        else
          MenuCharacterSelect::SetAnim(this, "lol_1_to_2");
        v1 = *((_DWORD *)this + 59);
        break;
      case 2:
        v29 = *((RenderFX **)this + 1);
        v30 = (gameswf::character *)DebugCachedCharacter::GetChar((MenuCharacterSelect *)((char *)this + 360));
        v31 = PyDataConstants::getConstant((PyDataConstants *)dword_99F758, "StrID", "MENU_CLASS_02");
        v32 = (const char *)StringManager::getString(v3, v31);
        RenderFX::FormatHTML(v29, v30, "%s", v32);
        v59 = *((RenderFX **)this + 1);
        v33 = (gameswf::character *)DebugCachedCharacter::GetChar((MenuCharacterSelect *)((char *)this + 408));
        v34 = PyDataConstants::getConstant((PyDataConstants *)dword_99F758, "StrID", "MENU_MAGE_DESC");
        v35 = (const char *)StringManager::getString(v3, v34);
        RenderFX::FormatHTML(v59, v33, "%s", v35);
        *((_DWORD *)this + 89) = Arrays::GetMemberIDByString<Arrays::CharacterTable>("MagePlayerBase");
        v36 = (RenderFX *)MenuManager::GetRoot((MenuManager *)dword_99F780);
        v63[1] = 0;
        v63[0] = 0;
        gameswf::as_value::set_string((gameswf::as_value *)v63, "MagePlayerBase");
        RenderFX::InvokeASCallback(v36, "_root.menu_SelectClass", "CurrentClass", (const gameswf::as_value *)v63, 1);
        gameswf::as_value::drop_refs((gameswf::as_value *)v63);
        v37 = *((RenderFX **)this + 1);
        v38 = *(char **)(DebugCachedCharacter::GetChar((MenuCharacterSelect *)((char *)this + 256)) + 68);
        if ( *v38 == -1 )
          v39 = *((const char **)v38 + 3);
        else
          v39 = v38 + 1;
        RenderFX::SetVisible(v37, v39, 0);
        v40 = *((RenderFX **)this + 1);
        v41 = *(char **)(DebugCachedCharacter::GetChar((MenuCharacterSelect *)((char *)this + 304)) + 68);
        if ( *v41 == -1 )
          v42 = *((const char **)v41 + 3);
        else
          v42 = v41 + 1;
        RenderFX::SetVisible(v40, v42, 1);
        MenuCharacterSelect::SetAnim(this, "lol_2_to_3");
        v1 = *((_DWORD *)this + 59);
        break;
      case 0:
        v57 = *((RenderFX **)this + 1);
        v4 = (gameswf::character *)DebugCachedCharacter::GetChar((MenuCharacterSelect *)((char *)this + 360));
        v5 = PyDataConstants::getConstant((PyDataConstants *)dword_99F758, "StrID", "MENU_CLASS_00");
        v6 = (const char *)StringManager::getString(v3, v5);
        RenderFX::FormatHTML(v57, v4, "%s", v6);
        v62 = *((RenderFX **)this + 1);
        v58 = (gameswf::character *)DebugCachedCharacter::GetChar((MenuCharacterSelect *)((char *)this + 408));
        v7 = PyDataConstants::getConstant((PyDataConstants *)dword_99F758, "StrID", "MENU_KNIGHT_DESC");
        v8 = (const char *)StringManager::getString(v3, v7);
        RenderFX::FormatHTML(v62, v58, "%s", v8);
        *((_DWORD *)this + 89) = Arrays::GetMemberIDByString<Arrays::CharacterTable>("KnightPlayerBase");
        v9 = (RenderFX *)MenuManager::GetRoot((MenuManager *)dword_99F780);
        v65[1] = 0;
        v65[0] = 0;
        gameswf::as_value::set_string((gameswf::as_value *)v65, "KnightPlayerBase");
        RenderFX::InvokeASCallback(v9, "_root.menu_SelectClass", "CurrentClass", (const gameswf::as_value *)v65, 1);
        gameswf::as_value::drop_refs((gameswf::as_value *)v65);
        v10 = *((RenderFX **)this + 1);
        v11 = *(char **)(DebugCachedCharacter::GetChar((MenuCharacterSelect *)((char *)this + 256)) + 68);
        if ( *v11 == -1 )
          v12 = *((const char **)v11 + 3);
        else
          v12 = v11 + 1;
        RenderFX::SetVisible(v10, v12, 1);
        v13 = *((RenderFX **)this + 1);
        v14 = *(char **)(DebugCachedCharacter::GetChar((MenuCharacterSelect *)((char *)this + 304)) + 68);
        if ( *v14 == -1 )
          v15 = *((const char **)v14 + 3);
        else
          v15 = v14 + 1;
        RenderFX::SetVisible(v13, v15, 0);
        MenuCharacterSelect::SetAnim(this, "lol_2_to_1");
        v1 = *((_DWORD *)this + 59);
        break;
    }
    v16 = v1;
    v17 = 0;
    *((_BYTE *)this + 252) = 0;
    *((_DWORD *)this + 60) = v16;
    v18 = this;
    if ( !v16 )
      goto LABEL_15;
    while ( 1 )
    {
      v19 = *((_DWORD *)v18 + 53);
      ++v17;
      v20 = Arrays::CharAnimTable::members;
      CharAnimTableId = Character::GetCharAnimTableId((Character *)v19);
      CharStateMachine::SM_SetAnimState(
        (CharStateMachine *)(v19 + 1276),
        *(_DWORD *)(v20 + 160 * CharAnimTableId + 92),
        0,
        0);
      v18 = (MenuCharacterSelect *)((char *)v18 + 4);
      if ( v17 == 3 )
        break;
      while ( *((_DWORD *)this + 60) == v17 )
      {
LABEL_15:
        v22 = *((_DWORD *)this + v17++ + 53);
        v23 = Arrays::CharAnimTable::members;
        v24 = Character::GetCharAnimTableId((Character *)v22);
        CharStateMachine::SM_SetAnimState((CharStateMachine *)(v22 + 1276), *(_DWORD *)(v23 + 160 * v24 + 96), 1, 0);
        v18 = (MenuCharacterSelect *)((char *)v18 + 4);
        if ( v17 == 3 )
          goto LABEL_16;
      }
    }
  }
LABEL_16:
  MenuCharacterSelect::UpdateAnim(this);
  v25 = *((CharAnimator **)this + 53);
  if ( v25 )
    v25 = (CharAnimator *)((char *)v25 + 1180);
  CharAnimator::Update(v25);
  v26 = *((CharAnimator **)this + 54);
  if ( v26 )
    v26 = (CharAnimator *)((char *)v26 + 1180);
  CharAnimator::Update(v26);
  v27 = *((CharAnimator **)this + 55);
  if ( v27 )
    v27 = (CharAnimator *)((char *)v27 + 1180);
  return CharAnimator::Update(v27);
}


// ===== 428b74 MenuCharacterSelect::RenderClassSelectPane(gameswf::render_state &,void *) =====
int __fastcall MenuCharacterSelect::RenderClassSelectPane(int a1, int a2)
{
  gameswf::character **v3; // r0
  RenderFX *v4; // r0
  int v5; // r4
  _DWORD *v6; // r3
  GameSWFUtils *Root; // r0
  gameswf::root *v8; // r1
  float InvPixelScaleX; // r7
  GameSWFUtils *v10; // r0
  gameswf::root *v11; // r1
  float InvPixelScaleY; // r5
  _DWORD v14[4]; // [sp+0h] [bp-34h] BYREF
  _DWORD v15[4]; // [sp+10h] [bp-24h] BYREF
  float v16[5]; // [sp+20h] [bp-14h] BYREF

  v3 = (gameswf::character **)RenderFX::Find(*(RenderFX **)(a2 + 4), "class_select");
  GameSWFUtils::GetAbsoluteBoundingRect((GameSWFUtils *)v16, v3);
  v4 = *(RenderFX **)(a2 + 4);
  v5 = *(_DWORD *)(dword_99F73C + 16);
  v6 = *(_DWORD **)(*(_DWORD *)(v5 + 204) - 4);
  v15[0] = v6[5];
  v15[1] = v6[6];
  v15[2] = v6[7];
  v15[3] = v6[8];
  Root = (GameSWFUtils *)RenderFX::GetRoot(v4);
  InvPixelScaleX = GameSWFUtils::GetInvPixelScaleX(Root, v8);
  v10 = (GameSWFUtils *)RenderFX::GetRoot(*(RenderFX **)(a2 + 4));
  InvPixelScaleY = GameSWFUtils::GetInvPixelScaleY(v10, v11);
  v14[0] = (int)(float)(v16[0] / InvPixelScaleX);
  v14[3] = (int)(float)(v16[3] / InvPixelScaleY);
  v14[1] = (int)(float)(v16[2] / InvPixelScaleY);
  v14[2] = (int)(float)(v16[1] / InvPixelScaleX);
  (*(void (__fastcall **)(_DWORD, _DWORD *))(**(_DWORD **)(*(_DWORD *)(v5 + 204) - 4) + 12))(
    *(_DWORD *)(*(_DWORD *)(v5 + 204) - 4),
    v14);
  (*(void (__fastcall **)(_DWORD, _DWORD))(**(_DWORD **)(dword_99F73C + 28) + 60))(*(_DWORD *)(dword_99F73C + 28), 0);
  return (*(int (__fastcall **)(_DWORD, _DWORD *))(**(_DWORD **)(*(_DWORD *)(v5 + 204) - 4) + 12))(
           *(_DWORD *)(*(_DWORD *)(v5 + 204) - 4),
           v15);
}


// ===== 428cc0 MenuCharacterSelect::Init(void) =====
int __fastcall MenuCharacterSelect::Init(MenuFX **this)
{
  MenuManager *Instance; // r0
  int result; // r0
  MenuFX *v4; // r5
  gameswf::character *CurrentMenuContext; // r0
  MenuFX *v6; // r5
  gameswf::character *v7; // r0

  Instance = (MenuManager *)MenuManager::GetInstance((MenuManager *)this);
  result = MenuManager::RegisterMenu(Instance, (MenuBase *)this);
  v4 = *(this + 1);
  if ( v4 )
  {
    CurrentMenuContext = (gameswf::character *)MenuBase::GetCurrentMenuContext((MenuBase *)this);
    DebugCachedCharacter::RefreshCache((DebugCachedCharacter *)(this + 90), "class_title.text", v4, CurrentMenuContext);
    v6 = *(this + 1);
    v7 = (gameswf::character *)MenuBase::GetCurrentMenuContext((MenuBase *)this);
    DebugCachedCharacter::RefreshCache((DebugCachedCharacter *)(this + 102), "class_description.text", v6, v7);
    result = Arrays::GetMemberIDByString<Arrays::CharacterTable>("KnightPlayerBase");
    *(this + 89) = (MenuFX *)result;
  }
  return result;
}


// ===== 428d44 MenuCharacterSelect::~MenuCharacterSelect() =====
void __fastcall MenuCharacterSelect::~MenuCharacterSelect(MenuCharacterSelect *this)
{
  *(_DWORD *)this = off_967D90;
  DebugCachedCharacter::~DebugCachedCharacter((MenuCharacterSelect *)((char *)this + 408));
  DebugCachedCharacter::~DebugCachedCharacter((MenuCharacterSelect *)((char *)this + 360));
  DebugCachedCharacter::~DebugCachedCharacter((MenuCharacterSelect *)((char *)this + 304));
  DebugCachedCharacter::~DebugCachedCharacter((MenuCharacterSelect *)((char *)this + 256));
  MenuBase::~MenuBase(this);
}


// ===== 428d98 MenuCharacterSelect::~MenuCharacterSelect() =====
void __fastcall MenuCharacterSelect::~MenuCharacterSelect(MenuCharacterSelect *this)
{
  MenuCharacterSelect::~MenuCharacterSelect(this);
  CustomFree(this);
}


// ===== 428db4 MenuCharacterSelect::~MenuCharacterSelect() =====
void __fastcall MenuCharacterSelect::~MenuCharacterSelect(MenuCharacterSelect *this)
{
  *(_DWORD *)this = off_967D90;
  DebugCachedCharacter::~DebugCachedCharacter((MenuCharacterSelect *)((char *)this + 408));
  DebugCachedCharacter::~DebugCachedCharacter((MenuCharacterSelect *)((char *)this + 360));
  DebugCachedCharacter::~DebugCachedCharacter((MenuCharacterSelect *)((char *)this + 304));
  DebugCachedCharacter::~DebugCachedCharacter((MenuCharacterSelect *)((char *)this + 256));
  MenuBase::~MenuBase(this);
}


// ===== 428e08 `global constructor keyed to'.._.._sources_Game_Menus_MenuCharacterSelect.cpp =====
int `global constructor keyed to'.._.._sources_Game_Menus_MenuCharacterSelect.cpp()
{
  int result; // r0

  result = `guard variable for'Singleton<PlayerStatManager>::s_inst;
  dword_9A48A8 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9A48A4 = 1056964608;
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
    return _aeabi_atexit(
             (int)&Singleton<AnimSetManager>::s_inst,
             (int)AnimSetManager::~AnimSetManager,
             (int)&_dso_handle);
  }
  return result;
}


// ===== 428f38 MenuCharacterSelect::Show(void) =====
int __fastcall MenuCharacterSelect::Show(MenuCharacterSelect *this)
{
  MenuCharacterSelect *v1; // r6
  MenuMainMenu *Instance; // r0
  MenuMainMenu *v3; // r0
  MenuMainMenu *v4; // r0
  MenuMainMenu *v5; // r0
  MenuMainMenu *v6; // r0
  MenuMainMenu *v7; // r0
  int result; // r0
  gameswf::character *v9; // r7
  int v10; // r0
  int SceneNodeFromType; // r0
  void (__fastcall *v12)(int, _DWORD *); // r3
  int v13; // r0
  glitch::scene::CLightSceneNode *v14; // r9
  LightBase *Object; // r0
  LightBase *v16; // r4
  LightBase *v17; // r8
  int v18; // r7
  char *v19; // r10
  int v20; // r0
  _DWORD *v21; // r0
  int v22; // r3
  unsigned int v23; // r4
  int v24; // r0
  _DWORD **v25; // r3
  const char *v26; // r0
  char *v27; // r0
  const char *v28; // r7
  signed int v29; // r5
  GameObject *v30; // r7
  glitch::scene::ISceneNode *v31; // r7
  void (__fastcall *v32)(glitch::scene::ISceneNode *, int); // r8
  int v33; // r0
  void (__fastcall *v34)(glitch::scene::ISceneNode *, int); // r8
  int v35; // r0
  void (__fastcall *v36)(glitch::scene::ISceneNode *, int); // r6
  int v37; // r0
  int Animators; // r0
  int v39; // r0
  MenuCharacterSelect *v40; // r4
  int v41; // r10
  MenuCharacterSelect *v42; // r7
  GameObject *v43; // r0
  VisualObject *v44; // r5
  int v45; // r5
  int v46; // r6
  int v47; // r0
  int *SceneNodeFromName; // r6
  int v49; // r9
  int CharAnimTableId; // r0
  void (__fastcall *v51)(int, _BYTE *); // r9
  void (__fastcall *v52)(int, int); // r9
  int v53; // r0
  int v54; // r3
  int *v55; // r0
  void (__fastcall *v56)(int, int); // r6
  int v57; // r0
  MenuFX *v58; // r4
  gameswf::character *CurrentMenuContext; // r0
  MenuCharacterSelect *v60; // r6
  DebugCachedCharacter *v61; // r7
  MenuFX *v62; // r8
  gameswf::character *v63; // r0
  DebugCachedCharacter *v64; // r0
  RenderFX *v65; // r7
  char *v66; // r1
  const char *v67; // r1
  RenderFX *v68; // r4
  char *v69; // r1
  const char *v70; // r1
  int v71; // r6
  int v72; // r0
  int v73; // r6
  int v74; // r0
  unsigned int v75; // r3
  unsigned int v76; // r11
  int v77; // r11
  char *v78; // r0
  _BYTE *v79; // r1
  char *v80; // r9
  size_t v81; // r10
  LightBase **v82; // r10
  int v83; // [sp+Ch] [bp-178h]
  MenuCharacterSelect *v84; // [sp+30h] [bp-154h]
  _DWORD v85[4]; // [sp+54h] [bp-130h] BYREF
  _BYTE v86[12]; // [sp+64h] [bp-120h] BYREF
  _BYTE v87[12]; // [sp+70h] [bp-114h] BYREF
  _BYTE v88[12]; // [sp+7Ch] [bp-108h] BYREF
  void *p; // [sp+88h] [bp-FCh] BYREF
  int v90; // [sp+8Ch] [bp-F8h]
  int v91; // [sp+90h] [bp-F4h]
  _DWORD v92[3]; // [sp+94h] [bp-F0h] BYREF
  _DWORD v93[3]; // [sp+A0h] [bp-E4h] BYREF
  _DWORD v94[3]; // [sp+ACh] [bp-D8h] BYREF
  _DWORD v95[3]; // [sp+B8h] [bp-CCh] BYREF
  _BYTE v96[12]; // [sp+C4h] [bp-C0h] BYREF
  _DWORD v97[3]; // [sp+D0h] [bp-B4h] BYREF
  char v98[8]; // [sp+DCh] [bp-A8h] BYREF
  char s[64]; // [sp+E4h] [bp-A0h] BYREF
  char v100[32]; // [sp+124h] [bp-60h] BYREF
  char v101[32]; // [sp+144h] [bp-40h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v102; // [sp+164h] [bp-20h] BYREF

  v1 = this;
  Instance = (MenuMainMenu *)MenuMainMenu::GetInstance(this);
  v3 = (MenuMainMenu *)MenuMainMenu::DestroyScene(Instance);
  v4 = (MenuMainMenu *)MenuMainMenu::GetInstance(v3);
  v5 = (MenuMainMenu *)MenuMainMenu::DestroyAvatarCamera(v4);
  v6 = (MenuMainMenu *)MenuMainMenu::GetInstance(v5);
  *((_DWORD *)v1 + 88) = MenuMainMenu::mSavegameSlot;
  v7 = (MenuMainMenu *)MenuMainMenu::GetInstance(v6);
  MenuMainMenu::m_isDestroyed = 1;
  MenuMainMenu::GetInstance(v7);
  MenuMainMenu::mSavegameSlot = -1;
  result = (*(int (__fastcall **)(MenuCharacterSelect *))(*(_DWORD *)v1 + 60))(v1);
  if ( result )
  {
    MenuBase::Show(v1);
    *((_DWORD *)v1 + 60) = -1;
    DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
    v102._M_finish = (char *)&v102;
    v102._M_start_of_storage._M_data = (char *)&v102;
    std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block((int)&v102, 0x1Du);
    v102._M_finish = (char *)memcpy(v102._M_start_of_storage._M_data, "isTracingMenuCharacterSelect", 0x1Cu) + 28;
    *v102._M_finish = 0;
    DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, (const std::string *)&v102);
    std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v102);
    v9 = (gameswf::character *)RenderFX::Find(*((RenderFX **)v1 + 1), "class_select");
    *((_BYTE *)v9 + 156) = 1;
    RenderFX::SetEnabled(*((RenderFX **)v1 + 1), v9, 1);
    RenderFX::RegisterDisplayCallback(*((_DWORD *)v1 + 1), v9, MenuCharacterSelect::RenderClassSelectPane, v1);
    glitch::collada::CColladaDatabase::CColladaDatabase(
      (glitch::collada::CColladaDatabase *)v98,
      "data/3D/OptimizedMaxFiles/CLASS_SELECTION.bdae",
      (glitch::collada::CColladaFactory *)&ColladaFactory::s_factory);
    v10 = glitch::collada::CColladaDatabase::constructScene(
            (glitch::collada::CColladaDatabase *)v98,
            *(glitch::video::IVideoDriver **)(dword_99F73C + 16));
    *((_DWORD *)v1 + 49) = v10;
    (*(void (__fastcall **)(_DWORD, int))(**(_DWORD **)(*(_DWORD *)(dword_99F73C + 28) + 4) + 92))(
      *(_DWORD *)(*(_DWORD *)(dword_99F73C + 28) + 4),
      v10);
    SceneNodeFromType = glitch::scene::ISceneNode::getSceneNodeFromType(*((_DWORD *)v1 + 49), 1667588452);
    *((_DWORD *)v1 + 50) = SceneNodeFromType;
    v12 = *(void (__fastcall **)(int, _DWORD *))(*(_DWORD *)SceneNodeFromType + 276);
    v97[2] = 1065353216;
    v97[0] = 0;
    v97[1] = 0;
    v12(SceneNodeFromType, v97);
    (*(void (__fastcall **)(_DWORD, int))(**((_DWORD **)v1 + 50) + 304))(*((_DWORD *)v1 + 50), 1112014848);
    (*(void (__fastcall **)(_DWORD, int))(**((_DWORD **)v1 + 50) + 308))(*((_DWORD *)v1 + 50), 1195593728);
    glitch::scene::ISceneNode::setPosition(*((glitch::scene::ISceneNode **)v1 + 50), 0.0, 0.0, -200.0);
    glitch::scene::CSceneManager::setActiveCamera(
      *(glitch::scene::CSceneManager **)(dword_99F73C + 28),
      *((glitch::scene::ICameraSceneNode **)v1 + 50));
    v13 = *(_DWORD *)(dword_99F73C + 28);
    v85[3] = 1065353216;
    memset(v85, 0, 12);
    glitch::scene::CSceneManager::setAmbientLight(v13, v85);
    v14 = (glitch::scene::CLightSceneNode *)(*(int (__fastcall **)(_DWORD, int, _DWORD))(**(_DWORD **)(dword_99F73C + 28)
                                                                                       + 28))(
                                              *(_DWORD *)(dword_99F73C + 28),
                                              1952999276,
                                              0);
    if ( v14 )
    {
      ObjectManager::Spawn((ObjectManager *)v96, (const char *)dword_99F764, "LightPoint", (bool)"charselectLight", 1);
      Object = (LightBase *)ObjectHandle::GetObject((ObjectHandle *)v96, 0);
      v16 = Object;
      if ( Object && *((_DWORD *)Object + 61) == 19 )
      {
        v17 = Object;
      }
      else
      {
        v17 = nullptr;
        v16 = nullptr;
      }
      LightBase::setLightNode(v16, v14);
      LightPoint::AssignTweaker(v16, 0, 0);
      v18 = *(_DWORD *)(dword_99F73C + 28);
      v19 = *(char **)(v18 + 1064);
      if ( v19 == *(char **)(v18 + 1068) )
      {
        v75 = (int)&v19[-*(_DWORD *)(v18 + 1060)] >> 2;
        if ( v75 )
          v76 = 2 * v75;
        else
          v76 = 1;
        if ( v76 > 0x3FFFFFFF || v75 > v76 )
          v77 = -4;
        else
          v77 = 4 * v76;
        v78 = (char *)GlitchAlloc(v77, 0);
        v79 = *(_BYTE **)(v18 + 1060);
        v80 = v78;
        v81 = v19 - v79;
        if ( v81 )
          v82 = (LightBase **)((char *)memmove(v78, v79, v81) + v81);
        else
          v82 = (LightBase **)v78;
        *v82 = v17;
        GlitchFree(*(void **)(v18 + 1060));
        *(_DWORD *)(v18 + 1068) = &v80[v77];
        *(_DWORD *)(v18 + 1064) = v82 + 1;
        *(_DWORD *)(v18 + 1060) = v80;
      }
      else
      {
        *(_DWORD *)v19 = v17;
        *(_DWORD *)(v18 + 1064) += 4;
      }
      v95[0] = 1052770304;
      v95[1] = 1057161220;
      v95[2] = 1065746474;
      LightBase::SetAttenuation(v16, v95);
      v94[0] = 1065353216;
      v94[1] = 1065353216;
      v94[2] = 1065353216;
      LightBase::SetAmbientColor(v16, v94);
      v93[0] = 1065353216;
      v93[1] = 1065353216;
      v93[2] = 1065353216;
      LightBase::SetDiffuseColor(v16, v93);
      v92[2] = 1065353216;
      v92[0] = 1065353216;
      v92[1] = 1065353216;
      LightBase::SetSpecularColor(v16, v92);
    }
    v20 = glitch::collada::CColladaDatabase::constructAnimator((glitch::collada::CColladaDatabase *)v98);
    *((_DWORD *)v1 + 51) = v20;
    if ( v20 )
    {
      v21 = (_DWORD *)(*(int (__fastcall **)(int))(*(_DWORD *)v20 + 68))(v20);
      *((_DWORD *)v1 + 52) = v21;
      ++*(_DWORD *)((char *)v21 + *(_DWORD *)(*v21 - 12) + 4);
      (*(void (__fastcall **)(_DWORD, _DWORD))(**((_DWORD **)v1 + 51) + 60))(*((_DWORD *)v1 + 51), 0);
      (*(void (__fastcall **)(_DWORD, _DWORD))(**((_DWORD **)v1 + 51) + 40))(*((_DWORD *)v1 + 51), *((_DWORD *)v1 + 49));
      v22 = *((_DWORD *)v1 + 51) + *(_DWORD *)(**((_DWORD **)v1 + 51) - 12);
      ++*(_DWORD *)(v22 + 4);
    }
    v23 = 0;
    MenuCharacterSelect::SetAnim(v1, "lol_1_idle");
    *((_BYTE *)v1 + 252) = 1;
    *((_DWORD *)v1 + 59) = 0;
    v24 = *((_DWORD *)v1 + 49);
    p = nullptr;
    v90 = 0;
    v91 = 0;
    glitch::scene::ISceneNode::getSceneNodesFromType(v24, 1852137828, &p);
    v25 = (_DWORD **)p;
    if ( (unsigned int)(v90 - (_DWORD)p) >> 2 )
    {
      v84 = v1;
      do
      {
        v26 = (const char *)(*(int (__fastcall **)(_DWORD *))(*v25[v23] + 36))(v25[v23]);
        v27 = LC_API_STRSTR_0(v26, "dummy_gameobject_");
        if ( v27 )
        {
          v28 = v27 + 17;
          v29 = strcspn(v27 + 17, "0") - 1;
          if ( v29 > 30 )
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
                "len + 1 < 32",
                "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Menus\\MenuCharacterSelect.cpp",
                171);
            }
          }
          LC_API_STRNCPY_0(v101, v28, v29);
          v101[v29] = 0;
          sprintf(s, "data/3D/GameObjects/%s.bdae", v101);
          sprintf(v100, "%s_%02d", v101, v23);
          ObjectManager::Spawn((ObjectManager *)v88, (const char *)dword_99F764, "AnimatedDecor", (bool)v100, 1);
          v30 = (GameObject *)ObjectHandle::operator GameObject *(v88);
          GameObject::SetVisualObject(v30, s, "", 1);
          v31 = *(glitch::scene::ISceneNode **)(*((_DWORD *)v30 + 182) + 8);
          v32 = *(void (__fastcall **)(glitch::scene::ISceneNode *, int))(*(_DWORD *)v31 + 164);
          v33 = (*(int (__fastcall **)(_DWORD))(**((_DWORD **)p + v23) + 160))(*((_DWORD *)p + v23));
          v32(v31, v33);
          v34 = *(void (__fastcall **)(glitch::scene::ISceneNode *, int))(*(_DWORD *)v31 + 156);
          v35 = (*(int (__fastcall **)(_DWORD))(**((_DWORD **)p + v23) + 152))(*((_DWORD *)p + v23));
          v34(v31, v35);
          v36 = *(void (__fastcall **)(glitch::scene::ISceneNode *, int))(*(_DWORD *)v31 + 148);
          v37 = (*(int (__fastcall **)(_DWORD))(**((_DWORD **)p + v23) + 144))(*((_DWORD *)p + v23));
          v36(v31, v37);
          Animators = glitch::scene::ISceneNode::getAnimators(v31);
          v39 = (*(int (__fastcall **)(_DWORD))(**(_DWORD **)(*(_DWORD *)Animators + 8) + 68))(*(_DWORD *)(*(_DWORD *)Animators + 8));
          (*(void (__fastcall **)(int, int))(*(_DWORD *)v39 + 64))(v39, 1);
        }
        v25 = (_DWORD **)p;
        ++v23;
      }
      while ( v23 < (v90 - (int)p) >> 2 );
      v1 = v84;
    }
    v40 = v1;
    v41 = 0;
    v42 = v1;
    do
    {
      sprintf(v101, "%s_%d", "Player_CS", v41);
      ObjectManager::Spawn((ObjectManager *)v87, (const char *)dword_99F764, "Player", (bool)v101, 1);
      v43 = (GameObject *)ObjectHandle::operator Character *(v87);
      *((_DWORD *)v40 + 53) = v43;
      GameObject::SetVisualObject(v43, "data/3D/characters/prince/prince_modular.bdae", "", 1);
      v44 = *(VisualObject **)(*((_DWORD *)v40 + 53) + 728);
      VisualObject::SetVisible(v44, 1);
      v45 = *((_DWORD *)v44 + 2);
      if ( v41 == 1 )
      {
        v73 = *((_DWORD *)v42 + 54);
        v74 = Arrays::GetMemberIDByString<Arrays::CharacterTable>("RoguePlayerBase");
        CharProperties::LoadPropertiesForClassSelect((CharProperties *)(v73 + 1376), v74);
        SceneNodeFromName = (int *)glitch::scene::ISceneNode::getSceneNodeFromName(
                                     *((glitch::scene::ISceneNode **)v42 + 49),
                                     "dummy_Rogue");
      }
      else if ( v41 == 2 )
      {
        v71 = *((_DWORD *)v42 + 55);
        v72 = Arrays::GetMemberIDByString<Arrays::CharacterTable>("MagePlayerBase");
        CharProperties::LoadPropertiesForClassSelect((CharProperties *)(v71 + 1376), v72);
        SceneNodeFromName = (int *)glitch::scene::ISceneNode::getSceneNodeFromName(
                                     *((glitch::scene::ISceneNode **)v42 + 49),
                                     "dummy_Mage");
      }
      else
      {
        v46 = *((_DWORD *)v42 + 53);
        v47 = Arrays::GetMemberIDByString<Arrays::CharacterTable>("KnightPlayerBase");
        CharProperties::LoadPropertiesForClassSelect((CharProperties *)(v46 + 1376), v47);
        SceneNodeFromName = (int *)glitch::scene::ISceneNode::getSceneNodeFromName(
                                     *((glitch::scene::ISceneNode **)v42 + 49),
                                     "dummy_Warrior");
      }
      Character::_InitEquipment(*((Character **)v40 + 53));
      ++v41;
      CharAnimator::SetAnimationSet((CharAnimator *)(*((_DWORD *)v40 + 53) + 1180));
      v49 = *((_DWORD *)v40 + 53);
      v40 = (MenuCharacterSelect *)((char *)v40 + 4);
      v83 = Arrays::CharAnimTable::members;
      CharAnimTableId = Character::GetCharAnimTableId((Character *)v49);
      CharStateMachine::SM_SetAnimState(
        (CharStateMachine *)(v49 + 1276),
        *(_DWORD *)(v83 + 160 * CharAnimTableId + 92),
        0,
        0);
      v51 = *(void (__fastcall **)(int, _BYTE *))(*(_DWORD *)v45 + 164);
      glitch::scene::ISceneNode::getAbsolutePosition((glitch::scene::ISceneNode *)v86);
      v51(v45, v86);
      v52 = *(void (__fastcall **)(int, int))(*(_DWORD *)v45 + 156);
      v53 = (*(int (__fastcall **)(int *))(*SceneNodeFromName + 152))(SceneNodeFromName);
      v52(v45, v53);
      v54 = *SceneNodeFromName;
      v55 = SceneNodeFromName;
      v56 = *(void (__fastcall **)(int, int))(*(_DWORD *)v45 + 148);
      v57 = (*(int (__fastcall **)(int *))(v54 + 144))(v55);
      v56(v45, v57);
    }
    while ( v41 != 3 );
    v58 = *((MenuFX **)v42 + 1);
    CurrentMenuContext = (gameswf::character *)MenuBase::GetCurrentMenuContext(v42);
    v60 = v42;
    v61 = (MenuCharacterSelect *)((char *)v42 + 256);
    DebugCachedCharacter::RefreshCache(v61, "btn_right", v58, CurrentMenuContext);
    v62 = *((MenuFX **)v60 + 1);
    v63 = (gameswf::character *)MenuBase::GetCurrentMenuContext(v60);
    DebugCachedCharacter::RefreshCache((MenuCharacterSelect *)((char *)v60 + 304), "btn_left", v62, v63);
    v64 = v61;
    v65 = *((RenderFX **)v60 + 1);
    v66 = *(char **)(DebugCachedCharacter::GetChar(v64) + 68);
    if ( *v66 == -1 )
      v67 = *((const char **)v66 + 3);
    else
      v67 = v66 + 1;
    RenderFX::SetVisible(v65, v67, 1);
    v68 = *((RenderFX **)v60 + 1);
    v69 = *(char **)(DebugCachedCharacter::GetChar((MenuCharacterSelect *)((char *)v60 + 304)) + 68);
    if ( *v69 == -1 )
      v70 = *((const char **)v69 + 3);
    else
      v70 = v69 + 1;
    RenderFX::SetVisible(v68, v70, 0);
    if ( p )
      GlitchFree(p);
    glitch::collada::CColladaDatabase::~CColladaDatabase((glitch::collada::CColladaDatabase *)v98);
  }
  return result;
}


// ===== 429a98 MenuCharacterSelect::MenuCharacterSelect(void) =====
void __fastcall MenuCharacterSelect::MenuCharacterSelect(MenuCharacterSelect *this)
{
  MenuBase::MenuBase(this, "menu_SelectClass");
  *((_BYTE *)this + 244) = 0;
  *(_DWORD *)this = off_967D90;
  DebugCachedCharacter::DebugCachedCharacter((MenuCharacterSelect *)((char *)this + 256));
  DebugCachedCharacter::DebugCachedCharacter((MenuCharacterSelect *)((char *)this + 304));
  *((_DWORD *)this + 88) = -1;
  DebugCachedCharacter::DebugCachedCharacter((MenuCharacterSelect *)((char *)this + 360));
  DebugCachedCharacter::DebugCachedCharacter((MenuCharacterSelect *)((char *)this + 408));
  MenuCharacterSelect::Init((MenuFX **)this);
}


// ===== 429b10 MenuCharacterSelect::GetInstance(void) =====
void *__fastcall MenuCharacterSelect::GetInstance(MenuCharacterSelect *this)
{
  if ( (`guard variable for'MenuCharacterSelect::GetInstance(void)::mdt & 1) == 0
    && _cxa_guard_acquire(&`guard variable for'MenuCharacterSelect::GetInstance(void)::mdt) )
  {
    MenuCharacterSelect::MenuCharacterSelect((MenuCharacterSelect *)&MenuCharacterSelect::GetInstance(void)::mdt);
    _cxa_guard_release(&`guard variable for'MenuCharacterSelect::GetInstance(void)::mdt);
    _aeabi_atexit(
      (int)&MenuCharacterSelect::GetInstance(void)::mdt,
      (int)MenuCharacterSelect::~MenuCharacterSelect,
      (int)&_dso_handle);
  }
  return &MenuCharacterSelect::GetInstance(void)::mdt;
}


// ===== 429b98 MenuCharacterSelect::MenuCharacterSelect(void) =====
void __fastcall MenuCharacterSelect::MenuCharacterSelect(MenuCharacterSelect *this)
{
  MenuBase::MenuBase(this, "menu_SelectClass");
  *((_BYTE *)this + 244) = 0;
  *(_DWORD *)this = off_967D90;
  DebugCachedCharacter::DebugCachedCharacter((MenuCharacterSelect *)((char *)this + 256));
  DebugCachedCharacter::DebugCachedCharacter((MenuCharacterSelect *)((char *)this + 304));
  *((_DWORD *)this + 88) = -1;
  DebugCachedCharacter::DebugCachedCharacter((MenuCharacterSelect *)((char *)this + 360));
  DebugCachedCharacter::DebugCachedCharacter((MenuCharacterSelect *)((char *)this + 408));
  MenuCharacterSelect::Init((MenuFX **)this);
}


// ===== 429c10 DisplayBuildInfoOnSplash(void) =====
void DisplayBuildInfoOnSplash()
{
  ;
}


// ===== 429c14 HideBuildInfoOnSplash(void) =====
void HideBuildInfoOnSplash()
{
  ;
}


// ===== 429c18 MenuDebugHUD::Update(void) =====
void __fastcall MenuDebugHUD::Update(MenuDebugHUD *this)
{
  ;
}


// ===== 429c1c StreamReader::readAs<bool>(IStreamBase *) =====
int __fastcall StreamReader::readAs<bool>(int a1)
{
  int v1; // r1
  _BYTE v3[5]; // [sp+Fh] [bp-5h] BYREF

  if ( (*(int (__fastcall **)(int, _BYTE *, int, _DWORD))(*(_DWORD *)a1 + 24))(a1, v3, 1, 0) != 1 || v1 )
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
        "bytesRead == sizeof(T)",
        "..\\..\\project_vs2005\\Game/..\\..\\sources/Utils/StreamReader.h",
        68);
    }
  }
  return v3[0];
}


// ===== 429cd4 MenuDebugHUD::LoadFromFile(void) =====
int __fastcall MenuDebugHUD::LoadFromFile(int this)
{
  int v1; // r5
  int v2; // r4
  int i; // r6
  int v4; // [sp+4h] [bp-4h] BYREF

  v1 = this;
  v2 = *(_DWORD *)(dword_99F73C + 52);
  if ( v2 )
  {
    this = (*(int (__fastcall **)(_DWORD, char *, _DWORD))(*(_DWORD *)v2 + 148))(
             *(_DWORD *)(dword_99F73C + 52),
             DEBUGSTATS_SAVEFILENAME[0],
             0);
    if ( this )
    {
      v4 = this;
      if ( StreamReader::readAs<int>(this) == 22 )
      {
        for ( i = 0; i != 22; ++i )
        {
          *(_BYTE *)(v1 + 224) = StreamReader::readAs<bool>(v4);
          ++v1;
        }
      }
      return (*(int (__fastcall **)(int, int *))(*(_DWORD *)v2 + 120))(v2, &v4);
    }
  }
  return this;
}


// ===== 429d84 StreamReader::writeAs<bool>(IStreamBase *,bool) =====
int __fastcall StreamReader::writeAs<bool>(int a1, char a2)
{
  int result; // r0
  int v3; // r1
  char v4; // [sp+Fh] [bp-5h] BYREF

  v4 = a2;
  result = (*(int (__fastcall **)(int, char *, int, _DWORD))(*(_DWORD *)a1 + 28))(a1, &v4, 1, 0);
  if ( result != 1 || v3 )
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
               "..\\..\\project_vs2005\\Game/..\\..\\sources/Utils/StreamReader.h",
               116);
    }
  }
  return result;
}


// ===== 429e40 MenuDebugHUD::SetText(char const*) =====
int __fastcall MenuDebugHUD::SetText(int this, const char *a2)
{
  int v2; // r5
  DebugCachedCharacter *v4; // r4
  RenderFX *v5; // r5
  gameswf::character *Char; // r0

  v2 = this;
  if ( *(_DWORD *)(this + 4) )
  {
    v4 = (DebugCachedCharacter *)(this + 248);
    this = DebugCachedCharacter::GetChar((DebugCachedCharacter *)(this + 248));
    if ( this )
    {
      if ( a2 )
      {
        v5 = *(RenderFX **)(v2 + 4);
        Char = (gameswf::character *)DebugCachedCharacter::GetChar(v4);
        RenderFX::SetText(v5, Char, a2, 0);
        this = DebugCachedCharacter::GetChar(v4);
        *(_BYTE *)(this + 155) = 1;
      }
      else
      {
        this = DebugCachedCharacter::GetChar(v4);
        *(_BYTE *)(this + 155) = 0;
      }
    }
  }
  return this;
}


// ===== 429eb8 MenuDebug::~MenuDebug() =====
void __fastcall MenuDebug::~MenuDebug(MenuDebug *this)
{
  *(_DWORD *)this = off_967E40;
  DebugCachedCharacter::~DebugCachedCharacter((MenuDebug *)((char *)this + 196));
  MenuBase::~MenuBase(this);
}


// ===== 429ef4 MenuDebug::~MenuDebug() =====
void __fastcall MenuDebug::~MenuDebug(MenuDebug *this)
{
  MenuDebug::~MenuDebug(this);
  CustomFree(this);
}


// ===== 429f10 MenuDebug::~MenuDebug() =====
void __fastcall MenuDebug::~MenuDebug(MenuDebug *this)
{
  *(_DWORD *)this = off_967E40;
  DebugCachedCharacter::~DebugCachedCharacter((MenuDebug *)((char *)this + 196));
  MenuBase::~MenuBase(this);
}


// ===== 429f4c MenuDebugHUD::Init(void) =====
int __fastcall MenuDebugHUD::Init(MenuFX **this)
{
  MenuManager *Instance; // r0
  int result; // r0
  MenuFX *v4; // r5
  gameswf::character *CurrentMenuContext; // r0
  MenuFX *v6; // r5
  gameswf::character *v7; // r0
  MenuFX *v8; // r5
  gameswf::character *v9; // r0
  MenuFX *v10; // r5
  gameswf::character *v11; // r0
  MenuFX *v12; // r5
  gameswf::character *v13; // r0

  Instance = (MenuManager *)MenuManager::GetInstance((MenuManager *)this);
  result = MenuManager::RegisterMenu(Instance, (MenuBase *)this);
  v4 = *(this + 1);
  if ( v4 )
  {
    CurrentMenuContext = (gameswf::character *)MenuBase::GetCurrentMenuContext((MenuBase *)this);
    DebugCachedCharacter::RefreshCache((DebugCachedCharacter *)(this + 62), "text", v4, CurrentMenuContext);
    v6 = *(this + 1);
    v7 = (gameswf::character *)MenuBase::GetCurrentMenuContext((MenuBase *)this);
    DebugCachedCharacter::RefreshCache((DebugCachedCharacter *)(this + 86), "times_loaded", v6, v7);
    v8 = *(this + 1);
    v9 = (gameswf::character *)MenuBase::GetCurrentMenuContext((MenuBase *)this);
    DebugCachedCharacter::RefreshCache((DebugCachedCharacter *)(this + 74), "times_loaded.text", v8, v9);
    v10 = *(this + 1);
    v11 = (gameswf::character *)MenuBase::GetCurrentMenuContext((MenuBase *)this);
    DebugCachedCharacter::RefreshCache((DebugCachedCharacter *)(this + 98), "seal_of_freshness", v10, v11);
    v12 = *(this + 1);
    v13 = (gameswf::character *)MenuBase::GetCurrentMenuContext((MenuBase *)this);
    DebugCachedCharacter::RefreshCache((DebugCachedCharacter *)(this + 110), "seal_of_freshness_fail", v12, v13);
    return MenuDebugHUD::LoadFromFile((int)this);
  }
  return result;
}


// ===== 42a040 MenuDebug::Init(void) =====
void __fastcall MenuDebug::Init(MenuFX **this)
{
  MenuManager *Instance; // r0
  MenuFX *v3; // r5
  gameswf::character *CurrentMenuContext; // r3

  Instance = (MenuManager *)MenuManager::GetInstance((MenuManager *)this);
  MenuManager::RegisterMenu(Instance, (MenuBase *)this);
  v3 = *(this + 1);
  if ( v3 )
  {
    CurrentMenuContext = (gameswf::character *)MenuBase::GetCurrentMenuContext((MenuBase *)this);
    DebugCachedCharacter::RefreshCache((DebugCachedCharacter *)(this + 49), "text", v3, CurrentMenuContext);
  }
}


// ===== 42a08c MenuDebug::SetText(char const*) =====
int __fastcall MenuDebug::SetText(int this, const char *a2)
{
  MenuBase *v2; // r5
  DebugCachedCharacter *v4; // r4
  RenderFX *v5; // r5
  gameswf::character *Char; // r0

  v2 = (MenuBase *)this;
  if ( *(_DWORD *)(this + 4) )
  {
    v4 = (DebugCachedCharacter *)(this + 196);
    this = DebugCachedCharacter::GetChar((DebugCachedCharacter *)(this + 196));
    if ( this )
    {
      if ( a2 )
      {
        MenuBase::SetVisible(v2, 1);
        v5 = *((RenderFX **)v2 + 1);
        Char = (gameswf::character *)DebugCachedCharacter::GetChar(v4);
        RenderFX::SetText(v5, Char, a2, 0);
        this = DebugCachedCharacter::GetChar(v4);
        *(_BYTE *)(this + 155) = 1;
      }
      else
      {
        MenuBase::SetVisible(v2, 0);
        this = DebugCachedCharacter::GetChar(v4);
        *(_BYTE *)(this + 155) = 0;
      }
    }
  }
  return this;
}


// ===== 42a11c `global constructor keyed to'.._.._sources_Game_Menus_MenuDebug.cpp =====
int `global constructor keyed to'.._.._sources_Game_Menus_MenuDebug.cpp()
{
  int result; // r0

  result = `guard variable for'Singleton<PlayerStatManager>::s_inst;
  dword_9A4A80 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9A4A7C = 1056964608;
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


// ===== 42a1f8 MenuDebugHUD::SaveToFile(void) =====
int __fastcall MenuDebugHUD::SaveToFile(int this)
{
  int v1; // r6
  int v2; // r5
  int v3; // r1
  int i; // r4
  int v5; // [sp+8h] [bp-8h] BYREF
  int v6; // [sp+Ch] [bp-4h] BYREF

  v1 = this;
  v2 = *(_DWORD *)(dword_99F73C + 52);
  if ( v2 )
  {
    this = (*(int (__fastcall **)(_DWORD, char *, int))(*(_DWORD *)v2 + 148))(
             *(_DWORD *)(dword_99F73C + 52),
             DEBUGSTATS_SAVEFILENAME[0],
             1);
    if ( this )
    {
      v5 = 22;
      v6 = this;
      if ( (*(int (__fastcall **)(int, int *, int, _DWORD))(*(_DWORD *)this + 28))(this, &v5, 4, 0) != 4 || v3 )
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
            "bytesWritten == sizeof(T)",
            "..\\..\\project_vs2005\\Game/..\\..\\sources/Utils/StreamReader.h",
            116);
        }
      }
      for ( i = 0; i != 22; ++i )
      {
        StreamReader::writeAs<bool>(v6, *(_BYTE *)(v1 + 224));
        ++v1;
      }
      return (*(int (__fastcall **)(int, int *))(*(_DWORD *)v2 + 120))(v2, &v6);
    }
  }
  return this;
}


// ===== 42a33c MenuDebugHUD::~MenuDebugHUD() =====
void __fastcall MenuDebugHUD::~MenuDebugHUD(MenuDebugHUD *this)
{
  *(_DWORD *)this = off_967DE8;
  DebugCachedCharacter::~DebugCachedCharacter((MenuDebugHUD *)((char *)this + 440));
  DebugCachedCharacter::~DebugCachedCharacter((MenuDebugHUD *)((char *)this + 392));
  DebugCachedCharacter::~DebugCachedCharacter((MenuDebugHUD *)((char *)this + 344));
  DebugCachedCharacter::~DebugCachedCharacter((MenuDebugHUD *)((char *)this + 296));
  DebugCachedCharacter::~DebugCachedCharacter((MenuDebugHUD *)((char *)this + 248));
  if ( *((_DWORD *)this + 54) )
  {
    std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,int>,std::priv::_Select1st<std::pair<std::string const,int>>,std::priv::_MapTraitsT<std::pair<std::string const,int>>,std::allocator<std::pair<std::string const,int>>>::_M_erase(
      (int)this + 200,
      *((_DWORD *)this + 51));
    *((_DWORD *)this + 53) = (char *)this + 200;
    *((_DWORD *)this + 54) = 0;
    *((_DWORD *)this + 52) = (char *)this + 200;
    *((_DWORD *)this + 51) = 0;
  }
  MenuBase::~MenuBase(this);
}


// ===== 42a3c8 MenuDebugHUD::~MenuDebugHUD() =====
void __fastcall MenuDebugHUD::~MenuDebugHUD(MenuDebugHUD *this)
{
  MenuDebugHUD::~MenuDebugHUD(this);
  CustomFree(this);
}


// ===== 42a3e4 MenuDebugHUD::~MenuDebugHUD() =====
void __fastcall MenuDebugHUD::~MenuDebugHUD(MenuDebugHUD *this)
{
  *(_DWORD *)this = off_967DE8;
  DebugCachedCharacter::~DebugCachedCharacter((MenuDebugHUD *)((char *)this + 440));
  DebugCachedCharacter::~DebugCachedCharacter((MenuDebugHUD *)((char *)this + 392));
  DebugCachedCharacter::~DebugCachedCharacter((MenuDebugHUD *)((char *)this + 344));
  DebugCachedCharacter::~DebugCachedCharacter((MenuDebugHUD *)((char *)this + 296));
  DebugCachedCharacter::~DebugCachedCharacter((MenuDebugHUD *)((char *)this + 248));
  if ( *((_DWORD *)this + 54) )
  {
    std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,int>,std::priv::_Select1st<std::pair<std::string const,int>>,std::priv::_MapTraitsT<std::pair<std::string const,int>>,std::allocator<std::pair<std::string const,int>>>::_M_erase(
      (int)this + 200,
      *((_DWORD *)this + 51));
    *((_DWORD *)this + 53) = (char *)this + 200;
    *((_DWORD *)this + 54) = 0;
    *((_DWORD *)this + 52) = (char *)this + 200;
    *((_DWORD *)this + 51) = 0;
  }
  MenuBase::~MenuBase(this);
}


// ===== 42a470 MenuDebugHUD::MenuDebugHUD(void) =====
void __fastcall MenuDebugHUD::MenuDebugHUD(MenuDebugHUD *this)
{
  MenuBase::MenuBase(this, "menu_DebugHUD");
  *((_DWORD *)this + 51) = 0;
  *(_DWORD *)this = off_967DE8;
  *((_BYTE *)this + 200) = 0;
  *((_DWORD *)this + 53) = (char *)this + 200;
  *((_DWORD *)this + 54) = 0;
  *((_DWORD *)this + 52) = (char *)this + 200;
  DebugCachedCharacter::DebugCachedCharacter((MenuDebugHUD *)((char *)this + 248));
  DebugCachedCharacter::DebugCachedCharacter((MenuDebugHUD *)((char *)this + 296));
  DebugCachedCharacter::DebugCachedCharacter((MenuDebugHUD *)((char *)this + 344));
  DebugCachedCharacter::DebugCachedCharacter((MenuDebugHUD *)((char *)this + 392));
  DebugCachedCharacter::DebugCachedCharacter((MenuDebugHUD *)((char *)this + 440));
  MenuDebugHUD::Init((MenuFX **)this);
}


// ===== 42a4fc MenuDebugHUD::GetInstance(void) =====
void *__fastcall MenuDebugHUD::GetInstance(MenuDebugHUD *this)
{
  if ( (`guard variable for'MenuDebugHUD::GetInstance(void)::menu & 1) == 0
    && _cxa_guard_acquire(&`guard variable for'MenuDebugHUD::GetInstance(void)::menu) )
  {
    MenuDebugHUD::MenuDebugHUD((MenuDebugHUD *)&MenuDebugHUD::GetInstance(void)::menu);
    _cxa_guard_release(&`guard variable for'MenuDebugHUD::GetInstance(void)::menu);
    _aeabi_atexit((int)&MenuDebugHUD::GetInstance(void)::menu, (int)MenuDebugHUD::~MenuDebugHUD, (int)&_dso_handle);
  }
  return &MenuDebugHUD::GetInstance(void)::menu;
}


// ===== 42a584 MenuDebugHUD::MenuDebugHUD(void) =====
void __fastcall MenuDebugHUD::MenuDebugHUD(MenuDebugHUD *this)
{
  MenuBase::MenuBase(this, "menu_DebugHUD");
  *((_DWORD *)this + 51) = 0;
  *(_DWORD *)this = off_967DE8;
  *((_BYTE *)this + 200) = 0;
  *((_DWORD *)this + 53) = (char *)this + 200;
  *((_DWORD *)this + 54) = 0;
  *((_DWORD *)this + 52) = (char *)this + 200;
  DebugCachedCharacter::DebugCachedCharacter((MenuDebugHUD *)((char *)this + 248));
  DebugCachedCharacter::DebugCachedCharacter((MenuDebugHUD *)((char *)this + 296));
  DebugCachedCharacter::DebugCachedCharacter((MenuDebugHUD *)((char *)this + 344));
  DebugCachedCharacter::DebugCachedCharacter((MenuDebugHUD *)((char *)this + 392));
  DebugCachedCharacter::DebugCachedCharacter((MenuDebugHUD *)((char *)this + 440));
  MenuDebugHUD::Init((MenuFX **)this);
}


// ===== 42a610 MenuDebug::MenuDebug(void) =====
void __fastcall MenuDebug::MenuDebug(MenuDebug *this)
{
  MenuBase::MenuBase(this, "menu_Debug");
  *(_DWORD *)this = off_967E40;
  DebugCachedCharacter::DebugCachedCharacter((MenuDebug *)((char *)this + 196));
  MenuDebug::Init((MenuFX **)this);
}


// ===== 42a660 MenuDebug::GetInstance(void) =====
void *__fastcall MenuDebug::GetInstance(MenuDebug *this)
{
  if ( (`guard variable for'MenuDebug::GetInstance(void)::menu & 1) == 0
    && _cxa_guard_acquire(&`guard variable for'MenuDebug::GetInstance(void)::menu) )
  {
    MenuDebug::MenuDebug((MenuDebug *)&MenuDebug::GetInstance(void)::menu);
    _cxa_guard_release(&`guard variable for'MenuDebug::GetInstance(void)::menu);
    _aeabi_atexit((int)&MenuDebug::GetInstance(void)::menu, (int)MenuDebug::~MenuDebug, (int)&_dso_handle);
  }
  return &MenuDebug::GetInstance(void)::menu;
}


// ===== 42a6e8 MenuDebug::MenuDebug(void) =====
void __fastcall MenuDebug::MenuDebug(MenuDebug *this)
{
  MenuBase::MenuBase(this, "menu_Debug");
  *(_DWORD *)this = off_967E40;
  DebugCachedCharacter::DebugCachedCharacter((MenuDebug *)((char *)this + 196));
  MenuDebug::Init((MenuFX **)this);
}


// ===== 42a738 MenuDebugHUD::HideHugeNumber(void) =====
void __fastcall MenuDebugHUD::HideHugeNumber(MenuDebugHUD *this)
{
  _BYTE *v2; // r0

  if ( *((_DWORD *)this + 1) && *((_DWORD *)this + 85) )
  {
    v2 = *((_BYTE **)this + 84);
    if ( v2[4] )
    {
      *(_BYTE *)(DebugCachedCharacter::GetChar((MenuDebugHUD *)((char *)this + 296)) + 155) = 0;
      *(_BYTE *)(DebugCachedCharacter::GetChar((MenuDebugHUD *)((char *)this + 344)) + 155) = 0;
    }
    else
    {
      if ( (*(_DWORD *)v2)-- == 1 )
        gameswf::free_internal(v2);
      *((_DWORD *)this + 85) = 0;
      *((_DWORD *)this + 84) = 0;
    }
  }
}


// ===== 42a7b0 MenuDebugHUD::DisplayHugeNumber(int) =====
void __fastcall MenuDebugHUD::DisplayHugeNumber(MenuDebugHUD *this, int a2)
{
  RenderFX *v2; // r5
  _BYTE *v5; // r0
  gameswf::character *Char; // r0

  v2 = *((RenderFX **)this + 1);
  if ( v2 && *((_DWORD *)this + 85) )
  {
    v5 = *((_BYTE **)this + 84);
    if ( v5[4] )
    {
      Char = (gameswf::character *)DebugCachedCharacter::GetChar((MenuDebugHUD *)((char *)this + 296));
      RenderFX::FormatText(v2, Char, "%d", a2);
      *(_BYTE *)(DebugCachedCharacter::GetChar((MenuDebugHUD *)((char *)this + 296)) + 155) = 1;
      *(_BYTE *)(DebugCachedCharacter::GetChar((MenuDebugHUD *)((char *)this + 344)) + 155) = 1;
    }
    else
    {
      if ( (*(_DWORD *)v5)-- == 1 )
        gameswf::free_internal(v5);
      *((_DWORD *)this + 85) = 0;
      *((_DWORD *)this + 84) = 0;
    }
  }
}


// ===== 42a854 MenuDebugHUD::SetDisplaySealOfFreshnessFAIL(bool) =====
void __fastcall MenuDebugHUD::SetDisplaySealOfFreshnessFAIL(MenuDebugHUD *this, bool a2)
{
  _BYTE *v3; // r0

  if ( *((_DWORD *)this + 1) && *((_DWORD *)this + 121) )
  {
    v3 = *((_BYTE **)this + 120);
    if ( v3[4] )
    {
      *(_BYTE *)(DebugCachedCharacter::GetChar((MenuDebugHUD *)((char *)this + 440)) + 155) = a2;
    }
    else
    {
      if ( (*(_DWORD *)v3)-- == 1 )
        gameswf::free_internal(v3);
      *((_DWORD *)this + 121) = 0;
      *((_DWORD *)this + 120) = 0;
    }
  }
}


// ===== 42a8c0 MenuDebugHUD::SetDisplaySealOfFreshness(bool) =====
void __fastcall MenuDebugHUD::SetDisplaySealOfFreshness(MenuDebugHUD *this, bool a2)
{
  _BYTE *v3; // r0

  if ( *((_DWORD *)this + 1) && *((_DWORD *)this + 109) )
  {
    v3 = *((_BYTE **)this + 108);
    if ( v3[4] )
    {
      *(_BYTE *)(DebugCachedCharacter::GetChar((MenuDebugHUD *)((char *)this + 392)) + 155) = a2;
    }
    else
    {
      if ( (*(_DWORD *)v3)-- == 1 )
        gameswf::free_internal(v3);
      *((_DWORD *)this + 109) = 0;
      *((_DWORD *)this + 108) = 0;
    }
  }
}


// ===== 42a92c MenuConfirmBase::Hide(void) =====
int __fastcall MenuConfirmBase::Hide(MenuConfirmBase *this)
{
  MenuManager *Instance; // r5
  MenuBase *MenuBelow; // r0

  Instance = (MenuManager *)MenuManager::GetInstance(this);
  MenuBelow = (MenuBase *)MenuManager::GetMenuBelow(Instance, (const char *)this + 8);
  MenuManager::RegisterListener(Instance, MenuBelow);
  return MenuBase::Hide((DragAndDrop **)this);
}


// ===== 42a95c MenuConfirmBase::Show(void) =====
int __fastcall MenuConfirmBase::Show(MenuConfirmBase *this)
{
  MenuManager *Instance; // r5
  MenuBase *MenuBelow; // r0
  int result; // r0

  Instance = (MenuManager *)MenuManager::GetInstance(this);
  MenuBelow = (MenuBase *)MenuManager::GetMenuBelow(Instance, (const char *)this + 8);
  MenuManager::UnRegisterListener(Instance, MenuBelow);
  result = MenuBase::Show(this);
  *((_DWORD *)this + 49) = *(_DWORD *)(*((_DWORD *)this + 1) + 248);
  return result;
}


// ===== 42a998 MenuConfirmBase::~MenuConfirmBase() =====
void __fastcall MenuConfirmBase::~MenuConfirmBase(MenuConfirmBase *this)
{
  *(_DWORD *)this = off_967F48;
  MenuBase::~MenuBase(this);
}


// ===== 42a9cc MenuConfirmBase::~MenuConfirmBase() =====
void __fastcall MenuConfirmBase::~MenuConfirmBase(MenuConfirmBase *this)
{
  MenuConfirmBase::~MenuConfirmBase(this);
  CustomFree(this);
}


// ===== 42a9e8 MenuConfirmBase::~MenuConfirmBase() =====
void __fastcall MenuConfirmBase::~MenuConfirmBase(MenuConfirmBase *this)
{
  *(_DWORD *)this = off_967F48;
  MenuBase::~MenuBase(this);
}


// ===== 42aa1c MenuHUDConfirm::~MenuHUDConfirm() =====
void __fastcall MenuHUDConfirm::~MenuHUDConfirm(MenuHUDConfirm *this)
{
  *(_DWORD *)this = off_967E98;
  MenuConfirmBase::~MenuConfirmBase(this);
}


// ===== 42aa50 MenuHUDConfirm::~MenuHUDConfirm() =====
void __fastcall MenuHUDConfirm::~MenuHUDConfirm(MenuHUDConfirm *this)
{
  MenuHUDConfirm::~MenuHUDConfirm(this);
  CustomFree(this);
}


// ===== 42aa6c MenuHUDConfirm::~MenuHUDConfirm() =====
void __fastcall MenuHUDConfirm::~MenuHUDConfirm(MenuHUDConfirm *this)
{
  *(_DWORD *)this = off_967E98;
  MenuConfirmBase::~MenuConfirmBase(this);
}


// ===== 42aaa0 MenuConfirm::~MenuConfirm() =====
void __fastcall MenuConfirm::~MenuConfirm(MenuConfirm *this)
{
  *(_DWORD *)this = off_967EF0;
  MenuConfirmBase::~MenuConfirmBase(this);
}


// ===== 42aad4 MenuConfirm::~MenuConfirm() =====
void __fastcall MenuConfirm::~MenuConfirm(MenuConfirm *this)
{
  MenuConfirm::~MenuConfirm(this);
  CustomFree(this);
}


// ===== 42aaf0 MenuConfirm::~MenuConfirm() =====
void __fastcall MenuConfirm::~MenuConfirm(MenuConfirm *this)
{
  *(_DWORD *)this = off_967EF0;
  MenuConfirmBase::~MenuConfirmBase(this);
}


// ===== 42ab24 MenuConfirmBase::MenuConfirmBase(char const*) =====
void __fastcall MenuConfirmBase::MenuConfirmBase(MenuConfirmBase *this, const char *a2)
{
  MenuManager *v3; // r0
  MenuManager *Instance; // r0

  MenuBase::MenuBase(this, a2);
  *((_DWORD *)this + 49) = 0;
  *(_DWORD *)this = off_967F48;
  Instance = (MenuManager *)MenuManager::GetInstance(v3);
  MenuManager::RegisterMenu(Instance, this);
}


// ===== 42ab6c MenuConfirmBase::MenuConfirmBase(char const*) =====
void __fastcall MenuConfirmBase::MenuConfirmBase(MenuConfirmBase *this, const char *a2)
{
  MenuManager *v3; // r0
  MenuManager *Instance; // r0

  MenuBase::MenuBase(this, a2);
  *((_DWORD *)this + 49) = 0;
  *(_DWORD *)this = off_967F48;
  Instance = (MenuManager *)MenuManager::GetInstance(v3);
  MenuManager::RegisterMenu(Instance, this);
}


// ===== 42abb4 MenuHUDConfirm::MenuHUDConfirm(void) =====
void __fastcall MenuHUDConfirm::MenuHUDConfirm(MenuHUDConfirm *this)
{
  MenuConfirmBase::MenuConfirmBase(this, "menu_hud_confirm");
  *(_DWORD *)this = off_967E98;
}


// ===== 42abf4 MenuHUDConfirm::GetInstance(void) =====
void *__fastcall MenuHUDConfirm::GetInstance(MenuHUDConfirm *this)
{
  if ( (`guard variable for'MenuHUDConfirm::GetInstance(void)::mhc & 1) == 0
    && _cxa_guard_acquire(&`guard variable for'MenuHUDConfirm::GetInstance(void)::mhc) )
  {
    MenuHUDConfirm::MenuHUDConfirm((MenuHUDConfirm *)&MenuHUDConfirm::GetInstance(void)::mhc);
    _cxa_guard_release(&`guard variable for'MenuHUDConfirm::GetInstance(void)::mhc);
    _aeabi_atexit((int)&MenuHUDConfirm::GetInstance(void)::mhc, (int)MenuHUDConfirm::~MenuHUDConfirm, (int)&_dso_handle);
  }
  return &MenuHUDConfirm::GetInstance(void)::mhc;
}


// ===== 42ac78 MenuHUDConfirm::MenuHUDConfirm(void) =====
void __fastcall MenuHUDConfirm::MenuHUDConfirm(MenuHUDConfirm *this)
{
  MenuConfirmBase::MenuConfirmBase(this, "menu_hud_confirm");
  *(_DWORD *)this = off_967E98;
}


// ===== 42acb8 MenuConfirm::MenuConfirm(void) =====
void __fastcall MenuConfirm::MenuConfirm(MenuConfirm *this)
{
  MenuConfirmBase::MenuConfirmBase(this, "menu_confirm");
  *(_DWORD *)this = off_967EF0;
}


// ===== 42acf8 MenuConfirm::GetInstance(void) =====
void *__fastcall MenuConfirm::GetInstance(MenuConfirm *this)
{
  if ( (`guard variable for'MenuConfirm::GetInstance(void)::mc & 1) == 0
    && _cxa_guard_acquire(&`guard variable for'MenuConfirm::GetInstance(void)::mc) )
  {
    MenuConfirm::MenuConfirm((MenuConfirm *)&MenuConfirm::GetInstance(void)::mc);
    _cxa_guard_release(&`guard variable for'MenuConfirm::GetInstance(void)::mc);
    _aeabi_atexit((int)&MenuConfirm::GetInstance(void)::mc, (int)MenuConfirm::~MenuConfirm, (int)&_dso_handle);
  }
  return &MenuConfirm::GetInstance(void)::mc;
}


// ===== 42ad80 MenuConfirm::MenuConfirm(void) =====
void __fastcall MenuConfirm::MenuConfirm(MenuConfirm *this)
{
  MenuConfirmBase::MenuConfirmBase(this, "menu_confirm");
  *(_DWORD *)this = off_967EF0;
}


// ===== 42adc0 `global constructor keyed to'.._.._sources_Game_Menus_MenuDialogText.cpp =====
int `global constructor keyed to'.._.._sources_Game_Menus_MenuDialogText.cpp()
{
  int result; // r0

  result = `guard variable for'Singleton<PlayerStatManager>::s_inst;
  dword_9A4F08 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9A4F04 = 1056964608;
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


// ===== 42ae9c MenuEnterName::LostFocus(void) =====
void __fastcall MenuEnterName::LostFocus(MenuEnterName *this)
{
  ;
}


// ===== 42aea0 `global constructor keyed to'.._.._sources_Game_Menus_MenuEnterName.cpp =====
void `global constructor keyed to'.._.._sources_Game_Menus_MenuEnterName.cpp()
{
  dword_9A4F14 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9A4F10 = 1056964608;
}


// ===== 42aec0 MenuEnterName::GotFocus(void) =====
// attributes: thunk
void *__fastcall MenuEnterName::GotFocus(GSKeyboard *this)
{
  return GSKeyboard::ClearString(this);
}


// ===== 42aec4 MenuEnterName::Hide(void) =====
int __fastcall MenuEnterName::Hide(DragAndDrop **this)
{
  int result; // r0

  result = (*((int (__fastcall **)(DragAndDrop **))*this + 15))(this);
  if ( result )
    return MenuBase::Hide(this);
  return result;
}


// ===== 42aef0 MenuEnterName::Show(void) =====
int __fastcall MenuEnterName::Show(MenuEnterName *this)
{
  int result; // r0

  result = (*(int (__fastcall **)(MenuEnterName *))(*(_DWORD *)this + 60))(this);
  if ( result )
    return MenuBase::Show(this);
  return result;
}


// ===== 42af1c MenuEnterName::~MenuEnterName() =====
void __fastcall MenuEnterName::~MenuEnterName(MenuEnterName *this)
{
  *(_DWORD *)this = off_967FA0;
  MenuBase::~MenuBase(this);
}


// ===== 42af50 MenuEnterName::~MenuEnterName() =====
void __fastcall MenuEnterName::~MenuEnterName(MenuEnterName *this)
{
  MenuEnterName::~MenuEnterName(this);
  CustomFree(this);
}


// ===== 42af6c MenuEnterName::~MenuEnterName() =====
void __fastcall MenuEnterName::~MenuEnterName(MenuEnterName *this)
{
  *(_DWORD *)this = off_967FA0;
  MenuBase::~MenuBase(this);
}


// ===== 42afa0 MenuEnterName::MenuEnterName(void) =====
void __fastcall MenuEnterName::MenuEnterName(MenuEnterName *this)
{
  MenuManager *v2; // r0
  MenuManager *Instance; // r0

  MenuBase::MenuBase(this, "menu_EnterName");
  *(_DWORD *)this = off_967FA0;
  Instance = (MenuManager *)MenuManager::GetInstance(v2);
  MenuManager::RegisterMenu(Instance, this);
}


// ===== 42afec MenuEnterName::MenuEnterName(void) =====
void __fastcall MenuEnterName::MenuEnterName(MenuEnterName *this)
{
  MenuManager *v2; // r0
  MenuManager *Instance; // r0

  MenuBase::MenuBase(this, "menu_EnterName");
  *(_DWORD *)this = off_967FA0;
  Instance = (MenuManager *)MenuManager::GetInstance(v2);
  MenuManager::RegisterMenu(Instance, this);
}


// ===== 42b038 MenuEnterName::GetInstance(void) =====
void *__fastcall MenuEnterName::GetInstance(MenuEnterName *this)
{
  if ( (`guard variable for'MenuEnterName::GetInstance(void)::mdt & 1) == 0
    && _cxa_guard_acquire(&`guard variable for'MenuEnterName::GetInstance(void)::mdt) )
  {
    MenuEnterName::MenuEnterName((MenuEnterName *)&MenuEnterName::GetInstance(void)::mdt);
    _cxa_guard_release(&`guard variable for'MenuEnterName::GetInstance(void)::mdt);
    _aeabi_atexit((int)&MenuEnterName::GetInstance(void)::mdt, (int)MenuEnterName::~MenuEnterName, (int)&_dso_handle);
  }
  return &MenuEnterName::GetInstance(void)::mdt;
}


// ===== 42b0c0 fs_write_func(void const*,int,void *) =====
int __fastcall fs_write_func(const void *a1, int a2, void *a3)
{
  return a2;
}


// ===== 42b0c8 fs_seek_func(int,void *) =====
int __fastcall fs_seek_func(int a1, _DWORD *a2)
{
  if ( !a2 )
    return 4;
  if ( a1 < 0 || a1 > a2[1] )
    return 0;
  a2[2] = a1;
  return 0;
}


// ===== 42b0f8 fs_seek_to_end_func(void *) =====
int __fastcall fs_seek_to_end_func(int result)
{
  int v1; // r3

  if ( !result )
    return 4;
  v1 = *(_DWORD *)(result + 4);
  if ( v1 < 0 )
    result = 0;
  else
    *(_DWORD *)(result + 8) = v1;
  if ( v1 >= 0 )
    return 0;
  return result;
}


// ===== 42b11c fs_tell_func(void const*) =====
int __fastcall fs_tell_func(_DWORD *a1)
{
  if ( a1 )
    return a1[2];
  else
    return -1;
}


// ===== 42b12c fs_get_eof_func(void *) =====
bool __fastcall fs_get_eof_func(_DWORD *a1)
{
  return !a1 || a1[2] >= a1[1];
}


// ===== 42b150 fs_read_func(void *,int,void *) =====
size_t __fastcall fs_read_func(void *a1, size_t a2, _DWORD *a3)
{
  size_t v4; // r4
  signed int v5; // r2
  int v6; // r3
  int v7; // r3

  v4 = a2;
  if ( !a3 )
    return 0;
  v5 = a3[1];
  v6 = a3[2];
  if ( (int)(a2 + v6) >= v5 )
    v4 = v5 - v6;
  memcpy(a1, (const void *)(*a3 + v6), v4);
  v7 = v4 + a3[2];
  if ( v7 >= 0 && v7 <= a3[1] )
    a3[2] = v7;
  return v4;
}


// ===== 42b1a4 fs_close_func(void *) =====
int __fastcall fs_close_func(void **a1)
{
  void *v2; // r0

  if ( a1 )
  {
    v2 = *a1;
    if ( *a1 )
    {
      CustomFree(v2);
      *a1 = nullptr;
    }
    a1[2] = nullptr;
    a1[1] = nullptr;
    CustomFree(a1);
  }
  return 0;
}


// ===== 42b1e4 BufferedStream::FillBuffer(IStreamBase *) =====
signed int __fastcall BufferedStream::FillBuffer(BufferedStream *this, IStreamBase *a2)
{
  signed int result; // r0
  signed int v5; // r2
  int i; // r4

  result = (*(int (__fastcall **)(IStreamBase *))(*(_DWORD *)a2 + 8))(a2);
  v5 = result;
  *((_DWORD *)this + 1) = result;
  if ( result > 0 )
  {
    result = (signed int)operator new[](result, 0);
    v5 = *((_DWORD *)this + 1);
    *(_DWORD *)this = result;
  }
  if ( v5 )
  {
    for ( i = 0; i != v5; i += result )
    {
      result = (*(int (__fastcall **)(IStreamBase *, int, int, int))(*(_DWORD *)a2 + 24))(
                 a2,
                 *(_DWORD *)this + i,
                 v5 - i,
                 (v5 - i) >> 31);
      v5 = *((_DWORD *)this + 1);
    }
  }
  return result;
}


// ===== 42b260 fs_open_func(char const*,char const*) =====
IStreamBase *__fastcall fs_open_func(const char *a1, const char *a2)
{
  IStreamBase *v2; // r5
  IStreamBase *v3; // r0
  IStreamBase *v5; // [sp+4h] [bp-4h] BYREF

  v2 = (IStreamBase *)(*(int (__fastcall **)(_DWORD, const char *, _DWORD, _DWORD))(**(_DWORD **)(dword_99F73C + 52)
                                                                                  + 136))(
                        *(_DWORD *)(dword_99F73C + 52),
                        a1,
                        0,
                        0);
  if ( v2 )
  {
    v5 = v2;
    v3 = (IStreamBase *)operator new(0xCu, 0);
    *((_DWORD *)v3 + 2) = 0;
    *(_DWORD *)v3 = 0;
    *((_DWORD *)v3 + 1) = 0;
    v2 = v3;
    BufferedStream::FillBuffer(v3, v5);
    (*(void (__fastcall **)(_DWORD, IStreamBase **))(**(_DWORD **)(dword_99F73C + 52) + 120))(
      *(_DWORD *)(dword_99F73C + 52),
      &v5);
  }
  return v2;
}


// ===== 42b304 `global constructor keyed to'.._.._sources_Game_Menus_MenuFileSystem.cpp =====
int `global constructor keyed to'.._.._sources_Game_Menus_MenuFileSystem.cpp()
{
  int result; // r0

  result = `guard variable for'Singleton<Application>::s_inst;
  dword_9A4FE8 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9A4FE4 = 1056964608;
  if ( (`guard variable for'Singleton<Application>::s_inst & 1) == 0 )
  {
    `guard variable for'Singleton<Application>::s_inst = 1;
    Application::Application((Application *)&Singleton<Application>::s_inst);
    return _aeabi_atexit((int)&Singleton<Application>::s_inst, (int)Application::~Application, (int)&_dso_handle);
  }
  return result;
}


// ===== 42b38c get_fontfile(char const*,bool,bool,char *,int) =====
int __fastcall get_fontfile(const char *a1, int a2, int a3, char *a4, int a5)
{
  int v9; // r6
  void (__fastcall *v10)(_BYTE *, int, _DWORD *); // r7
  FILE *v11; // r0
  int v12; // r5
  int Language; // r0
  int v15; // r6
  void (__fastcall *v16)(_BYTE *, int, _DWORD *); // r7
  _DWORD v17[5]; // [sp+Ch] [bp-80h] BYREF
  void *p; // [sp+20h] [bp-6Ch]
  _BYTE v19[20]; // [sp+24h] [bp-68h] BYREF
  char *v20; // [sp+38h] [bp-54h]
  _DWORD v21[5]; // [sp+3Ch] [bp-50h] BYREF
  void *v22; // [sp+50h] [bp-3Ch]
  _BYTE v23[20]; // [sp+54h] [bp-38h] BYREF
  char *v24; // [sp+68h] [bp-24h]
  std::priv::_String_base<char,std::allocator<char> > v25; // [sp+6Ch] [bp-20h] BYREF

  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  v25._M_finish = (char *)&v25;
  v25._M_start_of_storage._M_data = (char *)&v25;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block(&v25, 0x10u);
  v25._M_finish = (char *)memcpy(v25._M_start_of_storage._M_data, "isTracingMenuFS", 0xFu) + 15;
  *v25._M_finish = 0;
  DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, (const std::string *)&v25);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v25);
  if ( !LC_API_STRCMP_0(a1, "_sans") || !LC_API_STRCMP_0(a1, "_serif") )
  {
    strcpy(a4, "#/system/fonts/DroidSans.ttf");
    return 1;
  }
  if ( !LC_API_STRCMP_0(a1, "_typewriter") )
  {
    if ( a2 )
    {
      if ( a3 )
        strcpy(a4, "#/system/DroidSerif-BoldItalic.ttf");
      else
        strcpy(a4, "#/system/DroidSans-Bold.ttf");
      return 1;
    }
    else
    {
      if ( a3 )
        strcpy(a4, "#/system/DroidSerif-Italic.ttf");
      else
        strcpy(a4, "#/system/DroidSans.ttf");
      return 1;
    }
  }
  if ( LC_API_STRCMP_0(a1, "Symbol") )
  {
    if ( LC_API_STRCMP_0(a1, "Arial") )
    {
      Language = SavegameManager::getLanguage((SavegameManager *)dword_99F778);
      if ( Language == 5 )
      {
        sprintf(a4, "%sdata/nanumgothic.ttf", (const char *)RES_PATH);
LABEL_7:
        v9 = *(_DWORD *)(dword_99F73C + 52);
        v10 = *(void (__fastcall **)(_BYTE *, int, _DWORD *))(*(_DWORD *)v9 + 52);
        std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::basic_string(
          v17,
          a4);
        v10(v19, v9, v17);
        if ( p != v17 && p )
          GlitchFree(p);
        LC_API_STRCPY_0(a4, v20);
        v11 = fopen(a4, "rb");
        v12 = (int)v11;
        if ( v11 )
        {
          fclose(v11);
          v12 = 1;
        }
        if ( v20 != v19 && v20 )
          GlitchFree(v20);
        return v12;
      }
      if ( Language != 6 )
      {
        if ( Language == 4 )
          sprintf(a4, "%sdata/japanese.ttf", (const char *)RES_PATH);
        else
          sprintf(a4, "%sdata/%s.ttf", (const char *)RES_PATH, a1);
        goto LABEL_7;
      }
    }
    sprintf(a4, "%sdata/wqy-zenhei.ttf", (const char *)RES_PATH);
    goto LABEL_7;
  }
  sprintf(a4, "%sdata/menus/SCT_Font_3.fnt", (const char *)RES_PATH);
  v15 = *(_DWORD *)(dword_99F73C + 52);
  v16 = *(void (__fastcall **)(_BYTE *, int, _DWORD *))(*(_DWORD *)v15 + 52);
  std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::basic_string(
    v21,
    a4);
  v16(v23, v15, v21);
  if ( v22 != v21 && v22 )
    GlitchFree(v22);
  LC_API_STRCPY_0(a4, v24);
  if ( v24 == v23 || !v24 )
    return 1;
  GlitchFree(v24);
  return 1;
}


// ===== 42b7f4 MenuLeaderboard::Hide(void) =====
int __fastcall MenuLeaderboard::Hide(DragAndDrop **this)
{
  leader = 0;
  return MenuBase::Hide(this);
}


// ===== 42b818 MenuLeaderboard::Show(void) =====
// attributes: thunk
int __fastcall MenuLeaderboard::Show(MenuBase *this)
{
  return MenuBase::Show(this);
}


// ===== 42b81c MenuLeaderboard::~MenuLeaderboard() =====
void __fastcall MenuLeaderboard::~MenuLeaderboard(MenuLeaderboard *this)
{
  *(_DWORD *)this = off_967FF8;
  MenuBase::~MenuBase(this);
}


// ===== 42b850 MenuLeaderboard::~MenuLeaderboard() =====
void __fastcall MenuLeaderboard::~MenuLeaderboard(MenuLeaderboard *this)
{
  MenuLeaderboard::~MenuLeaderboard(this);
  CustomFree(this);
}


// ===== 42b86c MenuLeaderboard::~MenuLeaderboard() =====
void __fastcall MenuLeaderboard::~MenuLeaderboard(MenuLeaderboard *this)
{
  *(_DWORD *)this = off_967FF8;
  MenuBase::~MenuBase(this);
}


// ===== 42b8a0 MenuLeaderboard::MenuLeaderboard(void) =====
void __fastcall MenuLeaderboard::MenuLeaderboard(MenuLeaderboard *this)
{
  MenuManager *v2; // r0
  MenuManager *Instance; // r0

  MenuBase::MenuBase(this, "Multiplayer_Leaderboard");
  *(_DWORD *)this = off_967FF8;
  Instance = (MenuManager *)MenuManager::GetInstance(v2);
  MenuManager::RegisterMenu(Instance, this);
}


// ===== 42b8ec MenuLeaderboard::GetInstance(void) =====
void *__fastcall MenuLeaderboard::GetInstance(MenuLeaderboard *this)
{
  if ( (`guard variable for'MenuLeaderboard::GetInstance(void)::instance & 1) == 0
    && _cxa_guard_acquire(&`guard variable for'MenuLeaderboard::GetInstance(void)::instance) )
  {
    MenuLeaderboard::MenuLeaderboard((MenuLeaderboard *)&MenuLeaderboard::GetInstance(void)::instance);
    _cxa_guard_release(&`guard variable for'MenuLeaderboard::GetInstance(void)::instance);
    _aeabi_atexit(
      (int)&MenuLeaderboard::GetInstance(void)::instance,
      (int)MenuLeaderboard::~MenuLeaderboard,
      (int)&_dso_handle);
  }
  return &MenuLeaderboard::GetInstance(void)::instance;
}


// ===== 42b970 MenuLeaderboard::MenuLeaderboard(void) =====
void __fastcall MenuLeaderboard::MenuLeaderboard(MenuLeaderboard *this)
{
  MenuManager *v2; // r0
  MenuManager *Instance; // r0

  MenuBase::MenuBase(this, "Multiplayer_Leaderboard");
  *(_DWORD *)this = off_967FF8;
  Instance = (MenuManager *)MenuManager::GetInstance(v2);
  MenuManager::RegisterMenu(Instance, this);
}


// ===== 42b9bc `global constructor keyed to'.._.._sources_Game_Menus_MenuLeaderboard.cpp =====
int `global constructor keyed to'.._.._sources_Game_Menus_MenuLeaderboard.cpp()
{
  int result; // r0

  result = `guard variable for'Singleton<PlayerStatManager>::s_inst;
  dword_9A50BC = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9A50B8 = 1056964608;
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


// ===== 42ba98 MenuMainMenu::GotFocus(void) =====
char *__fastcall MenuMainMenu::GotFocus(MenuMainMenu *this)
{
  lastOpenMenuID = 1;
  Is_In_Multiplayer_IGM = 0;
  Is_In_Multiplayer_Mode = 0;
  return &Is_In_Multiplayer_IGM;
}


// ===== 42bae8 MenuMainMenu::LostFocus(void) =====
void __fastcall MenuMainMenu::LostFocus(MenuMainMenu *this)
{
  ;
}


// ===== 42baec MenuMainMenu::DestroyAvatarCamera(void) =====
int __fastcall MenuMainMenu::DestroyAvatarCamera(MenuMainMenu *this)
{
  int result; // r0

  if ( MenuMainMenu::m_mainmenuPaneCam )
  {
    (*(void (__fastcall **)(int))(*(_DWORD *)MenuMainMenu::m_mainmenuPaneCam + 104))(MenuMainMenu::m_mainmenuPaneCam);
    result = glitch::IReferenceCounted::drop((glitch::IReferenceCounted *)(MenuMainMenu::m_mainmenuPaneCam
                                                                         + *(_DWORD *)(*(_DWORD *)MenuMainMenu::m_mainmenuPaneCam
                                                                                     - 12)));
    MenuMainMenu::m_mainmenuPaneCam = 0;
  }
  return result;
}


// ===== 42bb44 MenuMainMenu::RenderCharacterPane(gameswf::render_state &,void *) =====
void MenuMainMenu::RenderCharacterPane()
{
  ;
}


// ===== 42bb48 MenuMainMenu::OnEvent(RenderFX::Event &) =====
int __fastcall MenuMainMenu::OnEvent(MenuMainMenu *this, RenderFX::Event *a2)
{
  const char *v5; // r8
  int Language; // r4
  int v7; // r0
  int v8; // r4
  int v9; // r0

  if ( *((_DWORD *)a2 + 2) == 6 )
  {
    v5 = *((const char **)a2 + 1);
    if ( LC_API_STRSTR_0(v5, "btn_GLLive") )
    {
      Language = SavegameManager::getLanguage((SavegameManager *)dword_99F778);
      appDebugLog("****OpenGLive called****", "");
      if ( Language == 4 )
      {
        nativeOpenGLive(5);
      }
      else if ( Language == 5 )
      {
        nativeOpenGLive(6);
      }
      else if ( Language == 6 )
      {
        nativeOpenGLive(7);
      }
      else
      {
        if ( Language == 7 )
          v7 = 4;
        else
          v7 = Language;
        nativeOpenGLive(v7);
      }
    }
    else if ( LC_API_STRSTR_0(v5, "btn_MENU_MORE_GAMES") )
    {
      v8 = SavegameManager::getLanguage((SavegameManager *)dword_99F778);
      appDebugLog("****OpenIGP called****", "");
      if ( v8 == 4 )
      {
        nativeOpenIGP(5);
      }
      else if ( v8 == 5 )
      {
        nativeOpenIGP(6);
      }
      else if ( v8 == 6 )
      {
        nativeOpenIGP(7);
      }
      else
      {
        if ( v8 == 7 )
          v9 = 4;
        else
          v9 = v8;
        nativeOpenIGP(v9);
      }
    }
  }
  return MenuBase::OnEvent(this, a2);
}


// ===== 42bcbc MenuMainMenu::DestroyCharacter(void) =====
int __fastcall MenuMainMenu::DestroyCharacter(MenuMainMenu *this)
{
  int result; // r0

  ObjectManager::Flush((ObjectManager *)dword_99F764);
  result = AnimSetManager::Flush((AnimSetManager *)&Singleton<AnimSetManager>::s_inst);
  MenuMainMenu::mCharacterToRender = 0;
  return result;
}


// ===== 42bd08 MenuMainMenu::SetupCharacter(void) =====
int __fastcall MenuMainMenu::SetupCharacter(MenuMainMenu *this, unsigned int a2)
{
  int result; // r0
  int v3; // r5
  void (__fastcall *v4)(int, _DWORD *); // r3
  void (__fastcall *v5)(int, _BYTE *); // r4
  bool v6; // [sp+8h] [bp-20h]
  _BYTE v7[16]; // [sp+Ch] [bp-1Ch] BYREF
  _DWORD v8[3]; // [sp+1Ch] [bp-Ch] BYREF

  result = MenuMainMenu::mSavegameSlot;
  if ( MenuMainMenu::mSavegameSlot != -1 && MenuMainMenu::m_characterPlaneSceneNode )
  {
    if ( PlayerSavegame::SG_Exists((PlayerSavegame *)MenuMainMenu::mSavegameSlot, a2) )
    {
      MenuMainMenu::mCharacterToRender = Character::CreatePlayer(
                                           (Character *)MenuMainMenu::mSavegameSlot,
                                           0,
                                           0,
                                           (unsigned int)"PlayerCharacter_0",
                                           nullptr,
                                           0,
                                           v6);
      Character::SG_Load((Character *)MenuMainMenu::mCharacterToRender, 4);
    }
    else
    {
      MenuMainMenu::mCharacterToRender = Character::CreatePlayer(
                                           (Character *)MenuMainMenu::mSavegameSlot,
                                           0,
                                           0,
                                           (unsigned int)"PlayerCharacter_0",
                                           (const char *)&dword_0 + 1,
                                           0,
                                           v6);
    }
    glitch::scene::CSceneManager::setActiveCamera(
      *(glitch::scene::CSceneManager **)(dword_99F73C + 28),
      (glitch::scene::ICameraSceneNode *)MenuMainMenu::m_mainmenuPaneCam);
    v3 = *(_DWORD *)(*(_DWORD *)(MenuMainMenu::mCharacterToRender + 728) + 8);
    (*(void (__fastcall **)(_DWORD, int))(**(_DWORD **)(*(_DWORD *)(dword_99F73C + 28) + 4) + 92))(
      *(_DWORD *)(*(_DWORD *)(dword_99F73C + 28) + 4),
      v3);
    v4 = *(void (__fastcall **)(int, _DWORD *))(*(_DWORD *)v3 + 164);
    v8[1] = -1018691584;
    v8[2] = -1046478848;
    v8[0] = 0;
    v4(v3, v8);
    v5 = *(void (__fastcall **)(int, _BYTE *))(*(_DWORD *)v3 + 156);
    glitch::core::quaternion::set((glitch::core::quaternion *)v7, 0.0, 0.0, 3.1416 * -0.125);
    v5(v3, v7);
    return (*(int (__fastcall **)(int, int))(*(_DWORD *)v3 + 184))(v3, 1);
  }
  return result;
}


// ===== 42bebc MenuMainMenu::DestroyScene(void) =====
int __fastcall MenuMainMenu::DestroyScene(MenuMainMenu *this)
{
  MenuMainMenu *v1; // r0
  glitch::video::IVideoDriver *v2; // r1

  if ( MenuMainMenu::m_characterPlaneSceneNode )
  {
    (*(void (__fastcall **)(int))(*(_DWORD *)MenuMainMenu::m_characterPlaneSceneNode + 104))(MenuMainMenu::m_characterPlaneSceneNode);
    MenuMainMenu::m_characterPlaneSceneNode = 0;
  }
  v1 = (MenuMainMenu *)(*(int (__fastcall **)(_DWORD))(**(_DWORD **)(dword_99F73C + 28) + 104))(*(_DWORD *)(dword_99F73C + 28));
  MenuMainMenu::DestroyCharacter(v1);
  glitch::video::C2DDriver::freeTextures(*(glitch::video::C2DDriver **)(dword_99F73C + 16), v2);
  return Application::CleanGlitch((Application *)&Singleton<Application>::s_inst);
}


// ===== 42bf3c MenuMainMenu::CreateAvatarCamera(void) =====
void __fastcall MenuMainMenu::CreateAvatarCamera(MenuMainMenu *this)
{
  int v1; // r8
  void (__fastcall *v2)(int, _DWORD *); // r3
  _DWORD v3[3]; // [sp+Ch] [bp-24h] BYREF
  _DWORD v4[3]; // [sp+18h] [bp-18h] BYREF
  _DWORD v5[3]; // [sp+24h] [bp-Ch] BYREF

  if ( !MenuMainMenu::m_mainmenuPaneCam )
  {
    v5[1] = -1000275968;
    v5[2] = 1125515264;
    v4[2] = 1130430464;
    v5[0] = 0;
    v4[0] = 0;
    v4[1] = 0;
    v1 = operator new(908, 0);
    glitch::scene::CCameraSceneNode::CCameraSceneNode(v1, -1, v5, v4, 0);
    MenuMainMenu::m_mainmenuPaneCam = v1;
    (*(void (__fastcall **)(_DWORD, int))(**(_DWORD **)(*(_DWORD *)(dword_99F73C + 28) + 4) + 92))(
      *(_DWORD *)(*(_DWORD *)(dword_99F73C + 28) + 4),
      v1);
    glitch::IReferenceCounted::drop((glitch::IReferenceCounted *)(MenuMainMenu::m_mainmenuPaneCam
                                                                + *(_DWORD *)(*(_DWORD *)MenuMainMenu::m_mainmenuPaneCam
                                                                            - 12)));
    glitch::scene::CSceneManager::setActiveCamera(
      *(glitch::scene::CSceneManager **)(dword_99F73C + 28),
      (glitch::scene::ICameraSceneNode *)MenuMainMenu::m_mainmenuPaneCam);
    v2 = *(void (__fastcall **)(int, _DWORD *))(*(_DWORD *)MenuMainMenu::m_mainmenuPaneCam + 276);
    v3[2] = 1065353216;
    v3[1] = 0;
    v3[0] = 0;
    v2(MenuMainMenu::m_mainmenuPaneCam, v3);
    (*(void (__fastcall **)(int, int))(*(_DWORD *)MenuMainMenu::m_mainmenuPaneCam + 312))(
      MenuMainMenu::m_mainmenuPaneCam,
      1070954729);
    (*(void (__fastcall **)(int, int))(*(_DWORD *)MenuMainMenu::m_mainmenuPaneCam + 316))(
      MenuMainMenu::m_mainmenuPaneCam,
      1060469192);
    ++*(_DWORD *)(MenuMainMenu::m_mainmenuPaneCam + *(_DWORD *)(*(_DWORD *)MenuMainMenu::m_mainmenuPaneCam - 12) + 4);
    (*(void (__fastcall **)(int, int))(*(_DWORD *)MenuMainMenu::m_mainmenuPaneCam + 304))(
      MenuMainMenu::m_mainmenuPaneCam,
      1092616192);
    (*(void (__fastcall **)(int, int))(*(_DWORD *)MenuMainMenu::m_mainmenuPaneCam + 308))(
      MenuMainMenu::m_mainmenuPaneCam,
      1157234688);
  }
}


// ===== 42c0d0 MenuMainMenu::ChangeCharacterToDisplay(int,bool) =====
MenuMainMenu *__fastcall MenuMainMenu::ChangeCharacterToDisplay(MenuMainMenu *this, int a2, bool a3)
{
  int v3; // r6
  MenuMainMenu *v4; // r0

  v3 = (int)this;
  if ( this != (MenuMainMenu *)MenuMainMenu::mSavegameSlot || a2 )
  {
    if ( MenuMainMenu::mSavegameSlot != -1 )
      this = (MenuMainMenu *)MenuMainMenu::DestroyCharacter(this);
    MenuMainMenu::mSavegameSlot = v3;
    v4 = (MenuMainMenu *)MenuMainMenu::SetupCharacter(this);
    return (MenuMainMenu *)MenuMainMenu::CreateAvatarCamera(v4);
  }
  return this;
}


// ===== 42c128 MenuMainMenu::Hide(void) =====
int __fastcall MenuMainMenu::Hide(DragAndDrop **this)
{
  int result; // r0
  MenuManager *v3; // r0
  MenuManager *Instance; // r0
  int MenuByName; // r0
  MenuMainMenu *v6; // r0
  MenuMainMenu *v7; // r0

  result = (*((int (__fastcall **)(DragAndDrop **))*this + 15))(this);
  if ( result )
  {
    v3 = (MenuManager *)MenuBase::Hide(this);
    Instance = (MenuManager *)MenuManager::GetInstance(v3);
    MenuByName = MenuManager::GetMenuByName(Instance, "menu_bg");
    v6 = (MenuMainMenu *)(*(int (__fastcall **)(int))(*(_DWORD *)MenuByName + 16))(MenuByName);
    v7 = (MenuMainMenu *)MenuMainMenu::DestroyScene(v6);
    MenuMainMenu::DestroyAvatarCamera(v7);
    MenuMainMenu::m_isDestroyed = 1;
    MenuMainMenu::mSavegameSlot = -1;
    return VoxSoundManager::StopMusic((VoxSoundManager *)VoxSoundManager::s_instance, 1000);
  }
  return result;
}


// ===== 42c1c8 MenuMainMenu::Update(void) =====
int __fastcall MenuMainMenu::Update(MenuMainMenu *this)
{
  int result; // r0

  result = (*(int (__fastcall **)(MenuMainMenu *))(*(_DWORD *)this + 60))(this);
  if ( result )
  {
    if ( MenuMainMenu::mCharacterToRender )
      CharAnimator::Update((CharAnimator *)(MenuMainMenu::mCharacterToRender + 1180));
    return (*(int (__fastcall **)(_DWORD, _DWORD, _DWORD))(**(_DWORD **)(dword_99F73C + 28) + 96))(
             *(_DWORD *)(dword_99F73C + 28),
             0,
             0);
  }
  return result;
}


// ===== 42c240 MenuMainMenu::~MenuMainMenu() =====
void __fastcall MenuMainMenu::~MenuMainMenu(MenuMainMenu *this)
{
  *(_DWORD *)this = off_968050;
  MenuBase::~MenuBase(this);
}


// ===== 42c274 MenuMainMenu::~MenuMainMenu() =====
void __fastcall MenuMainMenu::~MenuMainMenu(MenuMainMenu *this)
{
  MenuMainMenu::~MenuMainMenu(this);
  CustomFree(this);
}


// ===== 42c290 MenuMainMenu::~MenuMainMenu() =====
void __fastcall MenuMainMenu::~MenuMainMenu(MenuMainMenu *this)
{
  *(_DWORD *)this = off_968050;
  MenuBase::~MenuBase(this);
}


// ===== 42c2c4 MenuMainMenu::MenuMainMenu(void) =====
void __fastcall MenuMainMenu::MenuMainMenu(MenuMainMenu *this)
{
  MenuManager *v2; // r0
  MenuManager *Instance; // r0

  MenuBase::MenuBase(this, "menu_MainMenu");
  *(_DWORD *)this = off_968050;
  Instance = (MenuManager *)MenuManager::GetInstance(v2);
  MenuManager::RegisterMenu(Instance, this);
}


// ===== 42c310 MenuMainMenu::MenuMainMenu(void) =====
void __fastcall MenuMainMenu::MenuMainMenu(MenuMainMenu *this)
{
  MenuManager *v2; // r0
  MenuManager *Instance; // r0

  MenuBase::MenuBase(this, "menu_MainMenu");
  *(_DWORD *)this = off_968050;
  Instance = (MenuManager *)MenuManager::GetInstance(v2);
  MenuManager::RegisterMenu(Instance, this);
}


// ===== 42c35c MenuMainMenu::GetInstance(void) =====
void *__fastcall MenuMainMenu::GetInstance(MenuMainMenu *this)
{
  if ( (`guard variable for'MenuMainMenu::GetInstance(void)::mdt & 1) == 0
    && _cxa_guard_acquire(&`guard variable for'MenuMainMenu::GetInstance(void)::mdt) )
  {
    MenuMainMenu::MenuMainMenu((MenuMainMenu *)&MenuMainMenu::GetInstance(void)::mdt);
    _cxa_guard_release(&`guard variable for'MenuMainMenu::GetInstance(void)::mdt);
    _aeabi_atexit((int)&MenuMainMenu::GetInstance(void)::mdt, (int)MenuMainMenu::~MenuMainMenu, (int)&_dso_handle);
  }
  return &MenuMainMenu::GetInstance(void)::mdt;
}


// ===== 42c3e0 `global constructor keyed to'.._.._sources_Game_Menus_MenuMainMenu.cpp =====
int `global constructor keyed to'.._.._sources_Game_Menus_MenuMainMenu.cpp()
{
  int result; // r0

  result = `guard variable for'Singleton<PlayerStatManager>::s_inst;
  dword_9A5190 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9A518C = 1056964608;
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
    return _aeabi_atexit(
             (int)&Singleton<AnimSetManager>::s_inst,
             (int)AnimSetManager::~AnimSetManager,
             (int)&_dso_handle);
  }
  return result;
}


// ===== 42c510 MenuMainMenu::SetupScene(void) =====
void __fastcall MenuMainMenu::SetupScene(MenuMainMenu *this)
{
  int v1; // r10
  _BYTE v2[8]; // [sp+8h] [bp-28h] BYREF
  std::string v3; // [sp+14h] [bp-1Ch] BYREF

  if ( !MenuMainMenu::m_characterPlaneSceneNode )
  {
    PhysicalWorld::load((PhysicalWorld *)dword_99F770, 0.0, 0.0, 1.0, 1.0);
    std::string::string((int)&v3, "data/3d/menu/main_menu_charactere_swamp.bdae");
    v1 = *(_DWORD *)(*(_DWORD *)(dword_99F73C + 28) + 4);
    glitch::collada::CColladaDatabase::CColladaDatabase(
      (glitch::collada::CColladaDatabase *)v2,
      v3._M_start_of_storage._M_data,
      (glitch::collada::CColladaFactory *)&ColladaFactory::s_factory);
    MenuMainMenu::m_characterPlaneSceneNode = glitch::collada::CColladaDatabase::constructScene(
                                                (glitch::collada::CColladaDatabase *)v2,
                                                *(glitch::video::IVideoDriver **)(dword_99F73C + 16));
    (*(void (__fastcall **)(int, int))(*(_DWORD *)v1 + 92))(v1, MenuMainMenu::m_characterPlaneSceneNode);
    glitch::IReferenceCounted::drop((glitch::IReferenceCounted *)(MenuMainMenu::m_characterPlaneSceneNode
                                                                + *(_DWORD *)(*(_DWORD *)MenuMainMenu::m_characterPlaneSceneNode
                                                                            - 12)));
    glitch::collada::CColladaDatabase::~CColladaDatabase((glitch::collada::CColladaDatabase *)v2);
    std::string::~string(&v3);
  }
}


// ===== 42c62c MenuMainMenu::Show(void) =====
void __fastcall MenuMainMenu::Show(RenderFX **this)
{
  MenuManager *v2; // r0
  MenuManager *Instance; // r0
  int MenuByName; // r0
  int Switch; // r7
  MenuMainMenu *v6; // r0
  MenuMainMenu *v7; // r0
  MenuMainMenu *v8; // r0
  unsigned int v9; // r1
  int GoToMainMenuEvent; // r9
  int block; // r0
  PyDataConstants *v12; // r0
  const char *v13; // r2
  StringManager *v14; // r8
  int Constant; // r0
  char *String; // r0
  RenderFX *Root; // r9
  RenderFX *v18; // r0
  gameswf::root *v19; // r0
  gameswf::character *root_movie; // r0
  RenderFX *v21; // r7
  GameCenter *v22; // r0
  int v23; // r0
  _BYTE v24[12]; // [sp+8h] [bp-60h] BYREF
  std::string v25; // [sp+1Ch] [bp-4Ch] BYREF
  std::string v26; // [sp+34h] [bp-34h] BYREF
  std::string v27; // [sp+4Ch] [bp-1Ch] BYREF

  if ( (*((int (__fastcall **)(RenderFX **))*this + 15))(this) )
  {
    *(_BYTE *)(((int (*)(void))GCSingleton<GameCenter>::GetInstance)() + 19) = 1;
    v2 = (MenuManager *)((int (*)(void))GCSingleton<GameCenter>::GetInstance)();
    if ( *((_BYTE *)v2 + 5) )
    {
      v2 = (MenuManager *)((int (*)(void))GCSingleton<GameCenter>::GetInstance)();
      if ( *((_BYTE *)v2 + 7) )
      {
        v22 = (GameCenter *)((int (*)(void))GCSingleton<GameCenter>::GetInstance)();
        v2 = (MenuManager *)GameCenter::ResetPlayerList(v22);
      }
    }
    Instance = (MenuManager *)MenuManager::GetInstance(v2);
    MenuByName = MenuManager::GetMenuByName(Instance, "menu_bg");
    (*(void (__fastcall **)(int))(*(_DWORD *)MenuByName + 12))(MenuByName);
    MenuBase::Show((MenuBase *)this);
    DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
    std::string::string((int)&v27, "isTracingMenuMainMenu");
    DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v27);
    std::string::~string(&v27);
    DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
    std::string::string((int)&v26, "MenuMainMenu");
    Switch = DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v26);
    std::string::~string(&v26);
    if ( Switch )
    {
      v21 = *(this + 1);
      gameswf::weak_ptr<gameswf::character>::check_proxy(this + 18);
      RenderFX::DBG_TraceContextInformation(v21, *(this + 19));
    }
    RenderFX::SetAlpha(*(this + 1), "btn_Debug1", 0.0);
    v6 = (MenuMainMenu *)RenderFX::SetAlpha(*(this + 1), "btn_debug2", 0.0);
    MenuMainMenu::CreateAvatarCamera(v6);
    v8 = (MenuMainMenu *)MenuMainMenu::SetupScene(v7);
    if ( !MenuMainMenu::mCharacterToRender )
      MenuMainMenu::SetupCharacter(v8, v9);
    MenuMainMenu::m_isDestroyed = 0;
    RenderFX::RegisterDisplayCallback(*(this + 1), "RenderedBG", MenuMainMenu::RenderCharacterPane, this);
    GoToMainMenuEvent = Application::GetGoToMainMenuEvent((Application *)&Singleton<Application>::s_inst, 1);
    v25._M_finish = (char *)&v25;
    v25._M_start_of_storage._M_data = (char *)&v25;
    block = std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block((int)&v25, 0x10u);
    *v25._M_finish = 0;
    switch ( GoToMainMenuEvent )
    {
      case 1:
        v12 = (PyDataConstants *)dword_99F758;
        v13 = "MENU_MULTIPLAYER_ERROR_KICKED";
        break;
      case 2:
        v12 = (PyDataConstants *)dword_99F758;
        v13 = "MENU_MULTIPLAYER_LOGIN_GENERAL_FAILURE";
        break;
      case 3:
        v12 = (PyDataConstants *)dword_99F758;
        v13 = "MENU_MULTIPLAYER_ERROR_CONNECTION_LOST";
        break;
      case 4:
        v12 = (PyDataConstants *)dword_99F758;
        v13 = "MENU_MULTIPLAYER_LOGIN_ANOTHER_DEVICE_ERROR";
        break;
      case 5:
        v12 = (PyDataConstants *)dword_99F758;
        v13 = "MENU_MULTIPLAYER_NO_CONNECTION";
        break;
      case 6:
        v12 = (PyDataConstants *)dword_99F758;
        v13 = "MENU_MULTIPLAYER_ERROR_GAME_ROOM_GONE";
        break;
      case 8:
        v12 = (PyDataConstants *)dword_99F758;
        v13 = "MENU_MULTIPLAYER_ERROR_CONNECTION_FAILED";
        break;
      case 9:
        v12 = (PyDataConstants *)dword_99F758;
        v13 = "MENU_MULTIPLAYER_TIMEOUT";
        break;
      case 7:
        block = GCSingleton<GameCenter>::GetInstance(block);
        if ( !*(_BYTE *)(block + 14) )
        {
          v23 = GCSingleton<GameCenter>::GetInstance(block);
          *(_BYTE *)(v23 + 14) = 1;
          block = GCSingleton<GameCenter>::GetInstance(v23);
          *(_BYTE *)(block + 10) = 1;
        }
        goto LABEL_17;
      case 0:
LABEL_17:
        *(_BYTE *)(GCSingleton<GameCenter>::GetInstance(block) + 20) = 0;
        byte_99F7D7 = 1;
        std::string::~string(&v25);
        return;
      default:
LABEL_20:
        v24[1] = 0;
        v24[0] = 0;
        gameswf::as_value::set_string((gameswf::as_value *)v24, v25._M_start_of_storage._M_data);
        Root = (RenderFX *)MenuManager::GetRoot((MenuManager *)dword_99F780);
        v18 = (RenderFX *)MenuManager::GetRoot((MenuManager *)dword_99F780);
        v19 = (gameswf::root *)RenderFX::GetRoot(v18);
        root_movie = (gameswf::character *)gameswf::root::get_root_movie(v19);
        RenderFX::InvokeASCallback(Root, root_movie, "MainMenuError", (const gameswf::as_value *)v24, 1);
        block = gameswf::as_value::drop_refs((gameswf::as_value *)v24);
        goto LABEL_17;
    }
    v14 = (StringManager *)dword_99F760;
    Constant = PyDataConstants::getConstant(v12, "StrID", v13);
    String = (char *)StringManager::getString(v14, Constant);
    std::string::operator=((int)&v25, String);
    goto LABEL_20;
  }
}


// ===== 42ca80 RenderFX::EventListener::CanHandleEvent(RenderFX::Event &) =====
int __fastcall RenderFX::EventListener::CanHandleEvent(RenderFX::EventListener *this, RenderFX::Event *a2)
{
  return 1;
}


// ===== 42ca88 MenuFlash2DCamera::~MenuFlash2DCamera() =====
void __fastcall MenuFlash2DCamera::~MenuFlash2DCamera(MenuFlash2DCamera *this)
{
  ;
}


// ===== 42ca8c MenuManager::GetInstance(void) =====
int __fastcall MenuManager::GetInstance(MenuManager *this)
{
  return dword_99F780;
}


// ===== 42caac MenuManager::SetCursorPosition(float,float) =====
void __fastcall MenuManager::SetCursorPosition(MenuManager *this, float a2, float a3)
{
  ;
}


// ===== 42cab0 MenuManager::ForceAllTextureToVRam(void) =====
void __fastcall MenuManager::ForceAllTextureToVRam(MenuManager *this)
{
  ;
}


// ===== 42cab4 MenuManager::UnloadSWFFile(int) =====
int __fastcall MenuManager::UnloadSWFFile(MenuManager *this, int a2)
{
  int v2; // r6
  char *v3; // r7
  int result; // r0
  int v7; // r3
  int v8; // r5
  int v9; // r3

  v2 = a2 + 34;
  v3 = (char *)this + 4 * a2 + 136;
  result = (*(int (__fastcall **)(_DWORD))(**((_DWORD **)v3 + 1) + 12))(*((_DWORD *)v3 + 1));
  v7 = *((_DWORD *)v3 + 1);
  if ( v7 )
    result = (*(int (__fastcall **)(_DWORD))(*(_DWORD *)v7 + 4))(*((_DWORD *)v3 + 1));
  v8 = a2 + 38;
  *((_DWORD *)this + v2 + 1) = 0;
  v9 = *((_DWORD *)this + v8 + 1);
  if ( v9 )
    result = (*(int (__fastcall **)(_DWORD))(*(_DWORD *)v9 + 4))(*((_DWORD *)this + v8 + 1));
  *((_DWORD *)this + v8 + 1) = 0;
  return result;
}


// ===== 42cb38 MenuManager::GetNumMenus(void) =====
int __fastcall MenuManager::GetNumMenus(MenuManager *this)
{
  return (*((_DWORD *)this + 26) - *((_DWORD *)this + 25)) >> 2;
}


// ===== 42cb4c MenuManager::GetMenuByID(int) =====
int __fastcall MenuManager::GetMenuByID(MenuManager *this, int a2)
{
  int result; // r0

  result = a2 < MenuManager::GetNumMenus(this);
  if ( a2 < 0 )
    result = 0;
  if ( result )
    return *(_DWORD *)(*((_DWORD *)this + 25) + 4 * a2);
  return result;
}


// ===== 42cb80 MenuManager::GetRoot(void) =====
int __fastcall MenuManager::GetRoot(MenuManager *this)
{
  return *(_DWORD *)(*((_DWORD *)this + 61) + 316);
}


// ===== 42cb8c MenuManager::GetHUDRoot(void) =====
int __fastcall MenuManager::GetHUDRoot(MenuManager *this)
{
  return *(_DWORD *)(*((_DWORD *)this + 61) + 320);
}


// ===== 42cb98 MenuManager::GetRootCamera(void) =====
int __fastcall MenuManager::GetRootCamera(MenuManager *this)
{
  return *(_DWORD *)(*((_DWORD *)this + 61) + 332);
}


// ===== 42cba4 MenuManager::GetHUDRootCamera(void) =====
int __fastcall MenuManager::GetHUDRootCamera(MenuManager *this)
{
  return *(_DWORD *)(*((_DWORD *)this + 61) + 336);
}


// ===== 42cbb0 MenuManager::GetRootCamera2(void) =====
int __fastcall MenuManager::GetRootCamera2(MenuManager *this)
{
  return *(_DWORD *)(*((_DWORD *)this + 61) + 332);
}


// ===== 42cbbc MenuManager::GetRawCurrentEventPosition(int &,int &) =====
int __fastcall MenuManager::GetRawCurrentEventPosition(int this, int *a2, int *a3)
{
  int v3; // r3
  int v4; // r4
  int v7; // r3

  v3 = *(_DWORD *)(this + 180);
  v4 = this;
  if ( v3 )
  {
    this = (*(int (__fastcall **)(_DWORD))(*(_DWORD *)v3 + 8))(*(_DWORD *)(this + 180));
    if ( this == 4
      || (this = (*(int (__fastcall **)(_DWORD))(**(_DWORD **)(v4 + 180) + 8))(*(_DWORD *)(v4 + 180)), this == 5) )
    {
      v7 = *(_DWORD *)(v4 + 180);
      *a2 = *(__int16 *)(v7 + 8);
      *a3 = *(__int16 *)(v7 + 10);
    }
    else
    {
      *a2 = 0;
      *a3 = 0;
    }
  }
  return this;
}


// ===== 42cc34 MenuManager::consumeEvent(void) =====
int __fastcall MenuManager::consumeEvent(int this)
{
  *(_DWORD *)(this + 172) = 1;
  return this;
}


// ===== 42cc40 `non-virtual thunk to'MenuManager::CanHandleEvent(RenderFX::Event &) =====
int __fastcall `non-virtual thunk to'MenuManager::CanHandleEvent(MenuManager *this, RenderFX::Event *a2)
{
  return MenuManager::CanHandleEvent((MenuManager *)((char *)this - 4), a2);
}


// ===== 42cc48 MenuManager::CanHandleEvent(RenderFX::Event &) =====
int __fastcall MenuManager::CanHandleEvent(MenuManager *this, RenderFX::Event *a2)
{
  return 1;
}


// ===== 42cc50 MenuFlash2DCamera::MenuFlash2DCamera(MenuFX *) =====
_DWORD *__fastcall MenuFlash2DCamera::MenuFlash2DCamera(_DWORD *result, int a2)
{
  int v2; // r2

  result[1] = a2;
  *result = off_9680A8;
  result[2] = 0;
  result[7] = Width_Screen / 2;
  v2 = Height_Screen;
  result[12] = 0;
  result[9] = 0;
  result[10] = 0;
  result[8] = v2 / 2;
  result[11] = 0;
  return result;
}


// ===== 42ccd0 MenuFlash2DCamera::MenuFlash2DCamera(MenuFX *) =====
_DWORD *__fastcall MenuFlash2DCamera::MenuFlash2DCamera(_DWORD *result, int a2)
{
  int v2; // r2

  result[1] = a2;
  *result = off_9680A8;
  result[2] = 0;
  result[7] = Width_Screen / 2;
  v2 = Height_Screen;
  result[12] = 0;
  result[9] = 0;
  result[10] = 0;
  result[8] = v2 / 2;
  result[11] = 0;
  return result;
}


// ===== 42cd50 MenuFlash2DCamera::~MenuFlash2DCamera() =====
void __fastcall MenuFlash2DCamera::~MenuFlash2DCamera(MenuFlash2DCamera *this)
{
  *(_DWORD *)this = off_9680A8;
  CustomFree(this);
}


// ===== 42cd84 MenuFlash2DCamera::Update(void) =====
int __fastcall MenuFlash2DCamera::Update(MenuFlash2DCamera *this)
{
  int v1; // r2
  int v2; // r1
  int v4; // r2
  int v5; // r1
  int v6; // r3
  int v7; // r5
  int v8; // r6
  int v9; // r0
  int v10; // r8
  int v11; // r0
  int v12; // r7
  int v13; // r0
  int v14; // r0

  v1 = *((_DWORD *)this + 9);
  v2 = *((_DWORD *)this + 11);
  if ( v1 >= v2 )
  {
    if ( v1 > v2 )
      *((_DWORD *)this + 9) = ~((v1 - v2) / 10) + v1;
  }
  else
  {
    *((_DWORD *)this + 9) = v1 + 1 + (v2 - v1) / 10;
  }
  v4 = *((_DWORD *)this + 10);
  v5 = *((_DWORD *)this + 12);
  if ( v4 >= v5 )
  {
    if ( v4 > v5 )
      *((_DWORD *)this + 10) = ~((v4 - v5) / 10) + v4;
  }
  else
  {
    *((_DWORD *)this + 10) = v4 + 1 + (v5 - v4) / 10;
  }
  v6 = *(_DWORD *)(*(_DWORD *)(*(_DWORD *)(dword_99F73C + 16) + 204) - 4);
  v7 = *(_DWORD *)(v6 + 16);
  v8 = *(_DWORD *)(v6 + 12);
  if ( *((_DWORD *)this + 2) )
  {
    v9 = (int)*((float *)this + 3);
    v10 = *((_DWORD *)this + 9);
    if ( v9 + v10 > 0 )
    {
      v10 = -v9;
      *((_DWORD *)this + 9) = -v9;
    }
    v11 = (int)*((float *)this + 5);
    v12 = *((_DWORD *)this + 10);
    if ( v11 + v12 > 0 )
    {
      v12 = -v11;
      *((_DWORD *)this + 10) = -v11;
    }
    v13 = (int)*((float *)this + 4);
    if ( v8 > v13 + v10 )
      *((_DWORD *)this + 9) = v8 - v13;
    v14 = (int)*((float *)this + 6);
    if ( v7 > v14 + v12 )
      *((_DWORD *)this + 10) = v7 - v14;
  }
  RenderFX::SetViewport(*((RenderFX **)this + 1), 0, 0, v8, v7);
  return RenderFX::SetBounds(*((_DWORD *)this + 1), *((_DWORD *)this + 9), *((_DWORD *)this + 10), v8, v7, 0);
}


// ===== 42cf30 MenuFlash2DCamera::SetLimitClip(gameswf::character *) =====
_DWORD *__fastcall MenuFlash2DCamera::SetLimitClip(_DWORD *this, gameswf::character *a2)
{
  _DWORD *v2; // r4
  int v3; // r1
  int v4; // r2
  int v5; // r3
  _DWORD v6[5]; // [sp+0h] [bp-14h] BYREF

  v2 = this;
  *(this + 2) = a2;
  if ( a2 )
  {
    GameSWFUtils::GetAbsoluteBoundingRect((GameSWFUtils *)v6, a2);
    this = (_DWORD *)v6[0];
    v3 = v6[1];
    v4 = v6[2];
    v5 = v6[3];
    v2[3] = v6[0];
    v2[4] = v3;
    v2[5] = v4;
    v2[6] = v5;
  }
  return this;
}


// ===== 42cf68 MenuManager::mySendEvent(char *,RenderFX::EventType) =====
int __fastcall MenuManager::mySendEvent(int a1, char *a2, int a3)
{
  int v6; // r8
  int v7; // r3
  RenderFX *v8; // r10
  int v9; // r0
  char *v11; // r2
  char *v12; // r2
  _DWORD v13[9]; // [sp+4h] [bp-12Ch] BYREF
  char v14; // [sp+28h] [bp-108h]
  char v15; // [sp+29h] [bp-107h]

  v6 = 0;
  while ( 1 )
  {
    v7 = *(_DWORD *)(a1 + 244) + 4 * v6;
    v8 = *(RenderFX **)(v7 + 308);
    if ( v8 )
    {
      v9 = RenderFX::Find(*(RenderFX **)(v7 + 308), a2);
      if ( v9 )
        break;
    }
    if ( ++v6 == 4 )
      return 0;
  }
  v13[0] = v9;
  v13[2] = a3;
  memset(&v13[3], 0, 16);
  v11 = *(char **)(v9 + 68);
  if ( *v11 == -1 )
    v12 = *((char **)v11 + 3);
  else
    v12 = v11 + 1;
  v13[1] = v12;
  v13[8] = 0;
  v15 = 0;
  v13[7] = 0;
  v14 = 0;
  RenderFX::SendEvent(v8, (RenderFX::Event *)v13);
  return 1;
}


// ===== 42d058 `non-virtual thunk to'MenuManager::OnEvent(RenderFX::Event &) =====
int __fastcall `non-virtual thunk to'MenuManager::OnEvent(MenuManager *this, RenderFX::Event *a2)
{
  return MenuManager::OnEvent((MenuManager *)((char *)this - 4), a2);
}


// ===== 42d060 MenuManager::OnEvent(RenderFX::Event &) =====
int __fastcall MenuManager::OnEvent(MenuManager *this, const char **a2)
{
  MenuManager *v3; // r6
  void *Instance; // r0

  v3 = this;
  if ( a2[2] == &byte_6 )
  {
    this = (MenuManager *)LC_API_STRSTR_0(a2[1], "btn_MENU_CONTINUE");
    if ( this )
      lastOpenMenuID = 9;
  }
  Instance = HUDControls::GetInstance(this);
  (*(void (__fastcall **)(void *, const char **))(*(_DWORD *)Instance + 12))(Instance, a2);
  return (*(int (__fastcall **)(_DWORD, const char **))(**(_DWORD **)(*((_DWORD *)v3 + 61) + 320) + 24))(
           *(_DWORD *)(*((_DWORD *)v3 + 61) + 320),
           a2);
}


// ===== 42d0ec MenuManager::DBG_Draw2DDeadZones(void) =====
int __fastcall MenuManager::DBG_Draw2DDeadZones(MenuManager *this)
{
  int result; // r0
  int v3; // r6
  int v4; // r4
  int v5; // r3

  result = MenuManager::GetNumMenus(this);
  v3 = result;
  if ( result > 0 )
  {
    v4 = 0;
    do
    {
      while ( 1 )
      {
        result = MenuBase::IsVisible(*(MenuBase **)(*((_DWORD *)this + 25) + 4 * v4));
        if ( result )
          break;
        if ( v3 == ++v4 )
          return result;
      }
      v5 = *(_DWORD *)(*((_DWORD *)this + 25) + 4 * v4++);
      result = (*(int (__fastcall **)(int))(*(_DWORD *)v5 + 72))(v5);
    }
    while ( v3 != v4 );
  }
  return result;
}


// ===== 42d150 MenuManager::HasVisibleMenu(void) =====
int __fastcall MenuManager::HasVisibleMenu(MenuManager *this)
{
  int NumMenus; // r6
  int v3; // r4

  NumMenus = MenuManager::GetNumMenus(this);
  if ( NumMenus <= 0 )
    return 0;
  v3 = 0;
  while ( !MenuBase::IsVisible(*(MenuBase **)(*((_DWORD *)this + 25) + 4 * v3++)) )
  {
    if ( NumMenus == v3 )
      return 0;
  }
  return 1;
}


// ===== 42d19c MenuManager::GetMenuBelow(char const*) =====
int __fastcall MenuManager::GetMenuBelow(MenuManager *this, const char *a2)
{
  _DWORD *v2; // r4
  _DWORD *v3; // r5

  v2 = *((_DWORD **)this + 25);
  v3 = *((_DWORD **)this + 26);
  if ( (unsigned int)(v3 - v2) > 1 )
  {
    while ( v3 != v2 )
    {
      if ( !LC_API_STRCMP_0(a2, (const char *)(v2[1] + 8)) )
        return *v2;
      ++v2;
    }
  }
  return 0;
}


// ===== 42d1f0 MenuManager::GetMenuByName(char const*) =====
int __fastcall MenuManager::GetMenuByName(MenuManager *this, const char *a2)
{
  int *v3; // r6
  int *i; // r4
  int v5; // r5

  v3 = *((int **)this + 26);
  for ( i = *((int **)this + 25); i != v3; ++i )
  {
    v5 = *i;
    if ( !LC_API_STRCMP_0(a2, (const char *)(v5 + 8)) )
      return v5;
  }
  return 0;
}


// ===== 42d234 MenuManager::HideAll(void) =====
void __fastcall MenuManager::HideAll(MenuManager *this)
{
  int NumMenus; // r6
  int v3; // r4
  MenuBase *v4; // r0

  NumMenus = MenuManager::GetNumMenus(this);
  if ( NumMenus > 0 )
  {
    v3 = 0;
    do
    {
      while ( !MenuBase::IsVisible(*(MenuBase **)(*((_DWORD *)this + 25) + 4 * v3)) )
      {
        if ( NumMenus == ++v3 )
          return;
      }
      v4 = *(MenuBase **)(*((_DWORD *)this + 25) + 4 * v3++);
      MenuBase::SetVisible(v4, 0);
    }
    while ( NumMenus != v3 );
  }
}


// ===== 42d290 MenuManager::LoadSWFFile(char const*,int) =====
int __fastcall MenuManager::LoadSWFFile(MenuManager *this, const char *a2, int a3)
{
  char *v6; // r4
  MenuFX *v7; // r5
  MenuFlash2DCamera *v8; // r5

  v6 = (char *)this + 4 * a3 + 136;
  v7 = (MenuFX *)operator new(292, 8);
  MenuFX::MenuFX(v7);
  *((_DWORD *)v6 + 1) = v7;
  (*(void (__fastcall **)(MenuFX *, const char *, _DWORD))(*(_DWORD *)v7 + 8))(v7, a2, 0);
  RenderFX::SetTextBufferingEnabled(*((RenderFX **)v6 + 1), 1);
  v8 = (MenuFlash2DCamera *)operator new(52, 8);
  MenuFlash2DCamera::MenuFlash2DCamera(v8, *((MenuFX **)v6 + 1));
  *((_DWORD *)this + a3 + 39) = v8;
  return *((_DWORD *)v6 + 1);
}


// ===== 42d30c MenuManager::SwitchMenusToIngame(void) =====
int __fastcall MenuManager::SwitchMenusToIngame(MenuManager *this)
{
  MenuManager::UnloadSWFFile(this, 2);
  if ( Width_Screen == 854 )
  {
    MenuManager::LoadSWFFile(this, "data/menus/dqcharmenu_droid.swf", 1);
    return MenuManager::LoadSWFFile(this, "data/menus/dqhud_droid.swf", 3);
  }
  else if ( Width_Screen == 800 )
  {
    MenuManager::LoadSWFFile(this, "data/menus/dqcharmenu_i9000.swf", 1);
    return MenuManager::LoadSWFFile(this, "data/menus/dqhud_i9000.swf", 3);
  }
  else
  {
    MenuManager::LoadSWFFile(this, "data/menus/dqcharmenu.swf", 1);
    return MenuManager::LoadSWFFile(this, "data/menus/dqhud.swf", 3);
  }
}


// ===== 42d4bc MenuManager::UnloadMenu(int) =====
int __fastcall MenuManager::UnloadMenu(MenuManager *this, unsigned int a2)
{
  MenuManager *v3; // r6
  int v4; // r3
  int v5; // r5
  void *v6; // r0
  MenuCharMenu_Map *Instance; // r0
  char *v9; // r4
  char *v10; // r1
  char *v11; // r3
  char *v12; // r1

  v3 = this;
  if ( a2 == 1 )
  {
    Instance = (MenuCharMenu_Map *)MenuCharMenu_Map::GetInstance(this);
    this = (MenuManager *)MenuCharMenu_Map::ClearAllIcons(Instance);
    v4 = *((_DWORD *)v3 + 61);
  }
  else
  {
    v4 = *((_DWORD *)this + 61);
    if ( a2 > 3 )
    {
      v5 = 0;
      goto LABEL_5;
    }
  }
  v5 = *(_DWORD *)(v4 + 4 * a2 + 308);
  if ( v5 )
  {
    v9 = *((char **)v3 + 25);
    v10 = *((char **)v3 + 26);
    while ( v9 != v10 )
    {
      if ( v5 == *(_DWORD *)(*(_DWORD *)v9 + 4) )
      {
        *(_DWORD *)(*(_DWORD *)v9 + 4) = 0;
        this = *(MenuManager **)v9;
        if ( *(_BYTE *)(*(_DWORD *)v9 + 125) )
          this = (MenuManager *)(*(int (__fastcall **)(MenuManager *))(**(_DWORD **)v9 + 4))(this);
        v11 = *((char **)v3 + 26);
        v12 = v9 + 4;
        if ( v9 + 4 != v11 )
        {
          this = (MenuManager *)memmove(v9, v12, v11 - v12);
          v12 = *((char **)v3 + 26);
        }
        v10 = v12 - 4;
        *((_DWORD *)v3 + 26) = v10;
      }
      else
      {
        v9 += 4;
      }
    }
  }
LABEL_5:
  v6 = FlashAnimManager::GetInstance(this);
  FlashAnimManager::ResetScanForAnims((int)v6, v5);
  return MultiMenuManager::UnloadSWFFile(*((MultiMenuManager **)v3 + 61), a2);
}


// ===== 42d59c MenuManager::SwitchMenusToMainMenu(void) =====
int __fastcall MenuManager::SwitchMenusToMainMenu(MenuManager *this)
{
  MenuManager::UnloadSWFFile(this, 3);
  MenuManager::UnloadSWFFile(this, 1);
  switch ( Width_Screen )
  {
    case 854:
      return MenuManager::LoadSWFFile(this, "data/menus/dqmenus_droid.swf", 2);
    case 960:
      return MenuManager::LoadSWFFile(this, "data/menus/dqmenus.swf", 2);
    case 800:
      if ( HTC_DEVICES || !NO_IGP )
        return MenuManager::LoadSWFFile(this, "data/menus/dqmenus_i9000.swf", 2);
      else
        return MenuManager::LoadSWFFile(this, "data/menus/dqmenus_i9000_lg.swf", 2);
    default:
      if ( SavegameManager::getLanguage((SavegameManager *)dword_99F778) == 5 )
      {
        return MenuManager::LoadSWFFile(this, "data/menus/dqmenus_Kor.swf", 2);
      }
      else
      {
        if ( SavegameManager::getLanguage((SavegameManager *)dword_99F778) != 4 )
          return MenuManager::LoadSWFFile(this, "data/menus/dqmenus.swf", 2);
        return MenuManager::LoadSWFFile(this, "data/menus/dqmenus_jp.swf", 2);
      }
  }
}


// ===== 42d72c MenuManager::ResetFonts(void) =====
int __fastcall MenuManager::ResetFonts(MultiMenuManager **this)
{
  return MultiMenuManager::ResetFonts(*(this + 61));
}


// ===== 42d734 FlushTextCallback(gameswf::render_state &,void *) =====
int __fastcall FlushTextCallback(int a1, gameswf::root *this)
{
  return gameswf::root::flush_buffered_text(this);
}


// ===== 42d73c MenuManager::Reset(void) =====
int __fastcall MenuManager::Reset(MenuManager *this)
{
  int i; // r4
  MenuFX *v3; // r0
  int result; // r0
  int v5; // r6
  int v6; // r4
  int v7; // r3

  for ( i = 0; i != 4; ++i )
  {
    v3 = *(MenuFX **)(*((_DWORD *)this + 61) + 4 * i + 308);
    if ( v3 )
      MenuFX::PopAll(v3);
  }
  result = MenuManager::GetNumMenus(this);
  v5 = result;
  if ( result > 0 )
  {
    v6 = 0;
    do
    {
      while ( 1 )
      {
        result = MenuBase::IsVisible(*(MenuBase **)(*((_DWORD *)this + 25) + 4 * v6));
        if ( result )
          break;
        if ( v5 == ++v6 )
          goto LABEL_10;
      }
      v7 = *(_DWORD *)(*((_DWORD *)this + 25) + 4 * v6++);
      result = (*(int (__fastcall **)(int))(*(_DWORD *)v7 + 16))(v7);
    }
    while ( v5 != v6 );
  }
LABEL_10:
  *((_BYTE *)this + 136) = 1;
  return result;
}


// ===== 42d7d4 `global constructor keyed to'.._.._sources_Game_Menus_MenuManager.cpp =====
int __fastcall `global constructor keyed to'.._.._sources_Game_Menus_MenuManager.cpp(CMessage *a1)
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

  dword_9A51A8 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9A51A4 = 1056964608;
  messageCreationMap = CMessage::InitializeMessageRegistration(a1);
  byte_9A51AD = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgStartGame",
                  (const char *)GetNewInstance<CMsgStartGame>,
                  v1);
  byte_9A51AE = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgControllerAction",
                  (const char *)GetNewInstance<CMsgControllerAction>,
                  v2);
  byte_9A51AF = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgAttackResult",
                  (const char *)GetNewInstance<CMsgAttackResult>,
                  v3);
  byte_9A51B0 = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgRaisedEvent",
                  (const char *)GetNewInstance<CMsgRaisedEvent>,
                  v4);
  byte_9A51B1 = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgMenuReady",
                  (const char *)GetNewInstance<CMsgMenuReady>,
                  v5);
  byte_9A51B2 = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgScriptCmd",
                  (const char *)GetNewInstance<CMsgScriptCmd>,
                  v6);
  byte_9A51B3 = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgInitialSetup",
                  (const char *)GetNewInstance<CMsgInitialSetup>,
                  v7);
  byte_9A51B4 = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgQuestsSync",
                  (const char *)GetNewInstance<CMsgQuestsSync>,
                  v8);
  byte_9A51B5 = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgDropLoot",
                  (const char *)GetNewInstance<CMsgDropLoot>,
                  v9);
  byte_9A51B6 = CMessage::RegisterMessageType((CMessage *)"CMsgIsHost", (const char *)GetNewInstance<CMsgIsHost>, v10);
  byte_9A51B7 = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgSpawnObject",
                  (const char *)GetNewInstance<CMsgSpawnObject>,
                  v11);
  byte_9A51B8 = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgGlobalDeath",
                  (const char *)GetNewInstance<CMsgGlobalDeath>,
                  v12);
  v14 = (CMessage *)CMessage::RegisterMessageType(
                      (CMessage *)"CMsgAskResendAttributes",
                      (const char *)GetNewInstance<CMsgAskResendAttributes>,
                      v13);
  byte_9A51B9 = (char)v14;
  result = CMessage::TerminateMessageRegistration(v14);
  byte_9A51BA = result;
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


// ===== 42da60 std::priv::_Rb_tree<MenuBase *,std::less<MenuBase *>,std::pair<MenuBase * const,bool>,std::priv::_Select1st<std::pair<MenuBase * const,bool>>,std::priv::_MapTraitsT<std::pair<MenuBase * const,bool>>,std::allocator<std::pair<MenuBase * const,bool>>>::_M_erase(std::priv::_Rb_tree_node_base *) =====
void __fastcall std::priv::_Rb_tree<MenuBase *,std::less<MenuBase *>,std::pair<MenuBase * const,bool>,std::priv::_Select1st<std::pair<MenuBase * const,bool>>,std::priv::_MapTraitsT<std::pair<MenuBase * const,bool>>,std::allocator<std::pair<MenuBase * const,bool>>>::_M_erase(
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
      std::priv::_Rb_tree<MenuBase *,std::less<MenuBase *>,std::pair<MenuBase * const,bool>,std::priv::_Select1st<std::pair<MenuBase * const,bool>>,std::priv::_MapTraitsT<std::pair<MenuBase * const,bool>>,std::allocator<std::pair<MenuBase * const,bool>>>::_M_erase(
        a1,
        v2[3]);
      v4 = (_DWORD *)v2[2];
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v2, 0x18u);
      v2 = v4;
    }
    while ( v4 );
  }
}


// ===== 42da98 gameswf::weak_ptr<gameswf::character>::operator=(gameswf::character*) [clone] =====
void __fastcall gameswf::weak_ptr<gameswf::character>::operator=(int a1)
{
  *(_DWORD *)(a1 + 4) = 0;
  gameswf::smart_ptr_proxy::operator=((_DWORD **)a1, nullptr);
}


// ===== 42daa4 std::priv::_Deque_base<MenuFX *,std::allocator<MenuFX *>>::~_Deque_base() =====
_DWORD *__fastcall std::priv::_Deque_base<MenuFX *,std::allocator<MenuFX *>>::~_Deque_base(_DWORD *a1)
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


// ===== 42db28 MenuFX::State::GetCharacter(void) =====
int __fastcall MenuFX::State::GetCharacter(MenuFX::State *this)
{
  int result; // r0
  _BYTE *v3; // r3

  result = *((_DWORD *)this + 19);
  if ( result )
  {
    v3 = *((_BYTE **)this + 18);
    if ( !v3[4] )
    {
      if ( (*(_DWORD *)v3)-- == 1 )
        gameswf::free_internal(v3);
      *((_DWORD *)this + 19) = 0;
      *((_DWORD *)this + 18) = 0;
      return 0;
    }
  }
  return result;
}


// ===== 42db7c __tcf_0 =====
void _tcf_0()
{
  DebugCachedCharacter::~DebugCachedCharacter((DebugCachedCharacter *)&unk_9A524C);
  DebugCachedCharacter::~DebugCachedCharacter((DebugCachedCharacter *)&unk_9A521C);
  DebugCachedCharacter::~DebugCachedCharacter((DebugCachedCharacter *)&unk_9A51EC);
  DebugCachedCharacter::~DebugCachedCharacter((DebugCachedCharacter *)&MenuManager::onEvent(IEvent const*,EventManager const*)::s_cachedRoot);
}


// ===== 42dbb4 MenuManager::~MenuManager() =====
void __fastcall MenuManager::~MenuManager(MenuManager *this)
{
  RenderFX *v2; // r0
  int v3; // r3
  RenderFX **v4; // r5
  RenderFX **v5; // r6
  RenderFX *v6; // r3
  int v7; // r3
  CharProperties *v8; // r0
  void *v9; // r0
  size_t v10; // r1

  *(_DWORD *)this = off_9680D0;
  *((_DWORD *)this + 1) = &off_9680F0;
  v2 = (RenderFX *)dword_99F740;
  if ( dword_99F740 )
  {
    EventManager::Detach((EventManager *)dword_99F740, 5, this);
    EventManager::Detach((EventManager *)dword_99F740, 4, this);
    v2 = (RenderFX *)EventManager::Detach((EventManager *)dword_99F740, 7, this);
  }
  v3 = *((_DWORD *)this + 61);
  if ( v3 )
    v2 = (RenderFX *)(*(int (__fastcall **)(_DWORD))(*(_DWORD *)v3 + 4))(*((_DWORD *)this + 61));
  v4 = *((RenderFX ***)this + 25);
  v5 = *((RenderFX ***)this + 26);
  if ( v4 != v5 )
  {
    do
    {
      v6 = *v4++;
      v2 = v6;
      if ( *((_BYTE *)v6 + 125) )
        v2 = (RenderFX *)(*(int (__fastcall **)(RenderFX *))(*(_DWORD *)v6 + 4))(v6);
    }
    while ( v4 != v5 );
    v7 = *((_DWORD *)this + 25);
    if ( v7 != *((_DWORD *)this + 26) )
      *((_DWORD *)this + 26) = v7;
  }
  v8 = (CharProperties *)RenderFX::Finalize(v2);
  CharProperties::UnLoadPropNames(v8);
  std::priv::_Deque_base<MenuFX *,std::allocator<MenuFX *>>::~_Deque_base((_DWORD *)this + 51);
  if ( *((_DWORD *)this + 32) )
  {
    std::priv::_Rb_tree<MenuBase *,std::less<MenuBase *>,std::pair<MenuBase * const,bool>,std::priv::_Select1st<std::pair<MenuBase * const,bool>>,std::priv::_MapTraitsT<std::pair<MenuBase * const,bool>>,std::allocator<std::pair<MenuBase * const,bool>>>::_M_erase(
      (int)this + 112,
      *((_DWORD **)this + 29));
    *((_DWORD *)this + 31) = (char *)this + 112;
    *((_DWORD *)this + 32) = 0;
    *((_DWORD *)this + 30) = (char *)this + 112;
    *((_DWORD *)this + 29) = 0;
  }
  v9 = *((void **)this + 25);
  if ( !v9 )
    goto LABEL_16;
  v10 = (*((_DWORD *)this + 27) - (_DWORD)v9) & 0xFFFFFFFC;
  if ( v10 <= 0x80 )
  {
    __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v9, v10);
LABEL_16:
    DebugCachedCharacter::~DebugCachedCharacter((MenuManager *)((char *)this + 32));
    return;
  }
  CustomFree(v9);
  DebugCachedCharacter::~DebugCachedCharacter((MenuManager *)((char *)this + 32));
}


// ===== 42dd1c MenuManager::~MenuManager() =====
void __fastcall MenuManager::~MenuManager(MenuManager *this)
{
  MenuManager::~MenuManager(this);
  CustomFree(this);
}


// ===== 42dd38 MenuManager::~MenuManager() =====
void __fastcall MenuManager::~MenuManager(MenuManager *this)
{
  RenderFX *v2; // r0
  int v3; // r3
  RenderFX **v4; // r5
  RenderFX **v5; // r6
  RenderFX *v6; // r3
  int v7; // r3
  CharProperties *v8; // r0
  void *v9; // r0
  size_t v10; // r1

  *(_DWORD *)this = off_9680D0;
  *((_DWORD *)this + 1) = &off_9680F0;
  v2 = (RenderFX *)dword_99F740;
  if ( dword_99F740 )
  {
    EventManager::Detach((EventManager *)dword_99F740, 5, this);
    EventManager::Detach((EventManager *)dword_99F740, 4, this);
    v2 = (RenderFX *)EventManager::Detach((EventManager *)dword_99F740, 7, this);
  }
  v3 = *((_DWORD *)this + 61);
  if ( v3 )
    v2 = (RenderFX *)(*(int (__fastcall **)(_DWORD))(*(_DWORD *)v3 + 4))(*((_DWORD *)this + 61));
  v4 = *((RenderFX ***)this + 25);
  v5 = *((RenderFX ***)this + 26);
  if ( v4 != v5 )
  {
    do
    {
      v6 = *v4++;
      v2 = v6;
      if ( *((_BYTE *)v6 + 125) )
        v2 = (RenderFX *)(*(int (__fastcall **)(RenderFX *))(*(_DWORD *)v6 + 4))(v6);
    }
    while ( v4 != v5 );
    v7 = *((_DWORD *)this + 25);
    if ( v7 != *((_DWORD *)this + 26) )
      *((_DWORD *)this + 26) = v7;
  }
  v8 = (CharProperties *)RenderFX::Finalize(v2);
  CharProperties::UnLoadPropNames(v8);
  std::priv::_Deque_base<MenuFX *,std::allocator<MenuFX *>>::~_Deque_base((_DWORD *)this + 51);
  if ( *((_DWORD *)this + 32) )
  {
    std::priv::_Rb_tree<MenuBase *,std::less<MenuBase *>,std::pair<MenuBase * const,bool>,std::priv::_Select1st<std::pair<MenuBase * const,bool>>,std::priv::_MapTraitsT<std::pair<MenuBase * const,bool>>,std::allocator<std::pair<MenuBase * const,bool>>>::_M_erase(
      (int)this + 112,
      *((_DWORD **)this + 29));
    *((_DWORD *)this + 31) = (char *)this + 112;
    *((_DWORD *)this + 32) = 0;
    *((_DWORD *)this + 30) = (char *)this + 112;
    *((_DWORD *)this + 29) = 0;
  }
  v9 = *((void **)this + 25);
  if ( !v9 )
    goto LABEL_16;
  v10 = (*((_DWORD *)this + 27) - (_DWORD)v9) & 0xFFFFFFFC;
  if ( v10 <= 0x80 )
  {
    __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v9, v10);
LABEL_16:
    DebugCachedCharacter::~DebugCachedCharacter((MenuManager *)((char *)this + 32));
    return;
  }
  CustomFree(v9);
  DebugCachedCharacter::~DebugCachedCharacter((MenuManager *)((char *)this + 32));
}


// ===== 42dea0 std::allocator<MenuBase *>::_M_allocate(uint,uint &) =====
void *__fastcall std::allocator<MenuBase *>::_M_allocate(int a1, unsigned int a2, size_t *a3)
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


// ===== 42df10 std::vector<MenuBase *,std::allocator<MenuBase *>>::_M_insert_overflow(MenuBase **,MenuBase * const&,std::__true_type const&,uint,bool) [clone] =====
void __fastcall std::vector<MenuBase *>::_M_insert_overflow(int a1, int a2, _DWORD *a3)
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
  v8 = (char *)std::allocator<MenuBase *>::_M_allocate(a1 + 8, v6, &v16);
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


// ===== 42dfd8 MenuManager::RegisterDummyMenu(MenuFX *,MenuBase *) =====
void __fastcall MenuManager::RegisterDummyMenu(int a1, int a2, int a3)
{
  _DWORD *v3; // r3
  _DWORD *v4; // r12
  int v6; // [sp+4h] [bp-4h] BYREF

  v3 = *(_DWORD **)(a1 + 104);
  v4 = *(_DWORD **)(a1 + 108);
  v6 = a3;
  if ( v3 == v4 )
  {
    std::vector<MenuBase *>::_M_insert_overflow(a1 + 100, (int)v3, &v6);
  }
  else
  {
    *v3 = a3;
    *(_DWORD *)(a1 + 104) += 4;
  }
  *(_DWORD *)(v6 + 4) = a2;
  *(_BYTE *)(v6 + 124) = 1;
}


// ===== 42e038 std::allocator<MenuFX **>::allocate(uint,void const*) =====
void *__fastcall std::allocator<MenuFX **>::allocate(int a1, unsigned int a2)
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


// ===== 42e098 MenuManager::GetMenuName(int) =====
std::string *__fastcall MenuManager::GetMenuName(std::string *this, MenuManager *a2, int a3)
{
  _BOOL4 v6; // r0

  v6 = a3 < MenuManager::GetNumMenus(a2);
  if ( a3 < 0 )
    v6 = 0;
  if ( v6 )
    std::string::string(this, (char *)(*(_DWORD *)(*((_DWORD *)a2 + 25) + 4 * a3) + 8));
  else
    std::string::string(this, "unknown");
  return this;
}


// ===== 42e110 MenuManager::UnRegisterListener(MenuBase *) =====
void __fastcall MenuManager::UnRegisterListener(MenuManager *this, MenuBase *a2)
{
  char *v4; // r3
  char *v5; // r8
  char *v6; // r1
  unsigned int v7; // r2
  bool v8; // cc
  char *v9; // r2
  std::string v10; // [sp+4h] [bp-20h] BYREF

  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string(&v10, "isTracingMenuManager");
  DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v10);
  std::string::~string(&v10);
  v4 = *((char **)this + 29);
  v5 = (char *)this + 112;
  if ( !v4 )
  {
LABEL_15:
    v4 = v5;
LABEL_12:
    if ( v5 != v4 )
      v4[20] = 0;
    return;
  }
  v6 = v5;
  while ( 1 )
  {
    v7 = *((_DWORD *)v4 + 4);
    v8 = (unsigned int)a2 > v7;
    v9 = (unsigned int)a2 <= v7 ? *((char **)v4 + 2) : *((char **)v4 + 3);
    if ( v8 )
      v4 = v6;
    if ( !v9 )
      break;
    v6 = v4;
    v4 = v9;
  }
  if ( v5 != v4 )
  {
    if ( (unsigned int)a2 >= *((_DWORD *)v4 + 4) )
      goto LABEL_12;
    goto LABEL_15;
  }
}


// ===== 42e208 MenuManager::PopMenu(MenuBase *) =====
int __fastcall MenuManager::PopMenu(MenuManager *this, MenuBase *a2)
{
  int v4; // r4
  int result; // r0

  if ( a2 )
  {
    if ( !*((_DWORD *)a2 + 1) )
    {
      v4 = 0;
      goto LABEL_7;
    }
    if ( (*(int (__fastcall **)(_DWORD))(**((_DWORD **)this + 61) + 64))(*((_DWORD *)this + 61)) )
    {
      Application::ResetTouch((Application *)&Singleton<Application>::s_inst);
      TouchScreenBase::ProcessEvents((TouchScreenBase *)dword_99F74C);
      (*(void (__fastcall **)(_DWORD, _DWORD))(**((_DWORD **)this + 61) + 56))(*((_DWORD *)this + 61), 0);
    }
  }
  v4 = *((_DWORD *)a2 + 1);
LABEL_7:
  result = MenuManager::GetHUDRoot(this);
  if ( v4 == result )
    return MenuManager::UnRegisterListener(this, a2);
  return result;
}


// ===== 42e2b0 MenuManager::PopMenu(char const*) =====
MenuBase *__fastcall MenuManager::PopMenu(MenuManager *this, const char *a2)
{
  MenuBase *result; // r0

  result = (MenuBase *)MenuManager::GetMenuByName(this, a2);
  if ( result )
    return (MenuBase *)MenuManager::PopMenu(this, result);
  return result;
}


// ===== 42e2d4 MenuManager::DBG_Draw(void) =====
void __fastcall MenuManager::DBG_Draw(MenuManager *this)
{
  int Switch; // r7
  int v3; // r5
  _DWORD *v4; // r7
  int v5; // r4
  int v6; // r2
  int Technique; // r2
  int NumMenus; // r10
  int i; // r5
  gameswf::character *CurrentMenuContext; // r1
  int v11; // r4
  RenderFX *v12; // r8
  _DWORD *Characters; // r0
  int v14; // r9
  _DWORD *v15; // r11
  int v16; // r3
  int v17; // r2
  int v18; // r4
  RenderFX *v19; // r9
  int v20; // r3
  gameswf::character *v21; // r8
  float v22; // [sp+34h] [bp-88h] BYREF
  float v23; // [sp+38h] [bp-84h]
  float v24; // [sp+3Ch] [bp-80h]
  float v25; // [sp+40h] [bp-7Ch]
  int v26; // [sp+44h] [bp-78h] BYREF
  int v27; // [sp+48h] [bp-74h]
  int v28; // [sp+4Ch] [bp-70h]
  char v29; // [sp+50h] [bp-6Ch]
  _DWORD v30[2]; // [sp+54h] [bp-68h] BYREF
  _DWORD v31[2]; // [sp+5Ch] [bp-60h] BYREF
  _DWORD v32[2]; // [sp+64h] [bp-58h] BYREF
  _DWORD v33[2]; // [sp+6Ch] [bp-50h] BYREF
  int v34; // [sp+74h] [bp-48h]
  glitch::video::CMaterial *v35; // [sp+78h] [bp-44h] BYREF
  std::string v36; // [sp+84h] [bp-38h] BYREF
  std::string v37; // [sp+9Ch] [bp-20h] BYREF

  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string(&v37, "isDisplayingDeadZones");
  Switch = DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v37);
  std::string::~string(&v37);
  if ( Switch )
    MenuManager::DBG_Draw2DDeadZones(this);
  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string(&v36, "isDisplayingMenuBoundingBoxes");
  v3 = DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v36);
  std::string::~string(&v36);
  if ( v3 )
  {
    v4 = *(_DWORD **)(dword_99F73C + 16);
    v5 = v4[55];
    v6 = *(unsigned __int16 *)(v5 + 46);
    if ( v6 == 0xFFFF )
      LOBYTE(v6) = glitch::video::CMaterialRendererManager::createMaterialRenderer(v4[55], 1);
    glitch::video::CMaterialRendererManager::getMaterialInstance(
      (glitch::video::CMaterialRendererManager *)&v35,
      v5,
      v6);
    if ( v35 )
      Technique = glitch::video::CMaterial::getTechnique(v35);
    else
      Technique = 255;
    glitch::video::IVideoDriver::setMaterial(v4, &v35, Technique, 0);
    NumMenus = MenuManager::GetNumMenus(this);
    if ( NumMenus > 0 )
    {
      for ( i = 0; i != NumMenus; ++i )
      {
        while ( 1 )
        {
          if ( MenuBase::IsVisible(*(MenuBase **)(*((_DWORD *)this + 25) + 4 * i)) )
          {
            CurrentMenuContext = (gameswf::character *)MenuBase::GetCurrentMenuContext(*(MenuBase **)(*((_DWORD *)this + 25) + 4 * i));
            if ( CurrentMenuContext )
              break;
          }
          if ( NumMenus == ++i )
            goto LABEL_19;
        }
        v11 = 0;
        v12 = *(RenderFX **)(*(_DWORD *)(*((_DWORD *)this + 25) + 4 * i) + 4);
        Characters = (_DWORD *)RenderFX::FindCharacters(v12, CurrentMenuContext, "", 4);
        v26 = 0;
        v27 = 0;
        v28 = 0;
        v29 = 0;
        v14 = Characters[1];
        v15 = Characters;
        if ( v14 <= 0 )
          goto LABEL_15;
        gameswf::array<gameswf::character *>::reserve((int)&v26, v14 + (v14 >> 1));
        v17 = 0;
        do
          *(_DWORD *)(v26 + 4 * v11++) = 0;
        while ( v11 != v14 );
        v27 = v11;
        do
        {
          *(_DWORD *)(v26 + 4 * v17) = *(_DWORD *)(*v15 + 4 * v17);
          v14 = v27;
          ++v17;
        }
        while ( v17 < v27 );
        if ( v27 <= 0 )
          goto LABEL_15;
        v18 = 0;
        v19 = v12;
        do
        {
          while ( 1 )
          {
            v21 = *(gameswf::character **)(v26 + 4 * v18);
            if ( (*(int (__fastcall **)(gameswf::character *, int))(*(_DWORD *)v21 + 8))(v21, 32) )
            {
              if ( *((_BYTE *)v21 + 155) && COERCE_FLOAT(RenderFX::GetAlpha(v19, v21)) != 0.0 )
                break;
            }
            v20 = v27;
            if ( ++v18 >= v27 )
              goto LABEL_32;
          }
          GameSWFUtils::GetAbsoluteBoundingRect((GameSWFUtils *)&v22, (gameswf::character **)v21);
          v34 = 838926335;
          v31[0] = (int)v22;
          v33[0] = (int)v22;
          v33[1] = (int)v24;
          v32[1] = (int)v24;
          v32[0] = (int)v23;
          v30[0] = (int)v23;
          v30[1] = (int)v25;
          v31[1] = (int)v25;
          (*(void (__fastcall **)(_DWORD *, _DWORD *, _DWORD *, int))(*v4 + 44))(v4, v33, v32, 838926335);
          (*(void (__fastcall **)(_DWORD *, _DWORD *, _DWORD *, int))(*v4 + 44))(v4, v32, v30, v34);
          (*(void (__fastcall **)(_DWORD *, _DWORD *, _DWORD *, int))(*v4 + 44))(v4, v30, v31, v34);
          (*(void (__fastcall **)(_DWORD *, _DWORD *, _DWORD *, int))(*v4 + 44))(v4, v31, v33, v34);
          v20 = v27;
          ++v18;
        }
        while ( v18 < v27 );
LABEL_32:
        v14 = v20;
        if ( v20 <= 0 )
        {
LABEL_15:
          if ( v14 < 0 )
          {
            v16 = 4 * v14;
            do
            {
              ++v14;
              *(_DWORD *)(v26 + v16) = 0;
              v16 += 4;
            }
            while ( v14 );
          }
        }
        v27 = 0;
        gameswf::array<gameswf::character *>::reserve((int)&v26, 0);
      }
    }
LABEL_19:
    boost::intrusive_ptr<glitch::video::CMaterial>::~intrusive_ptr(&v35);
  }
}


// ===== 42e754 `non-virtual thunk to'MenuManager::OnFSCommand(char const*,char const*) =====
int __fastcall `non-virtual thunk to'MenuManager::OnFSCommand(MenuManager *this, const char *a2, const char *a3)
{
  return MenuManager::OnFSCommand((MenuManager *)((char *)this - 4), a2, a3);
}


// ===== 42e75c MenuManager::OnFSCommand(char const*,char const*) =====
int __fastcall MenuManager::OnFSCommand(MenuManager *this, const char *a2, const char *a3)
{
  int MenuByName; // r0
  std::string v8; // [sp+4h] [bp-20h] BYREF

  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string(&v8, "isTracingMenuManager");
  DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v8);
  std::string::~string(&v8);
  MenuByName = MenuManager::GetMenuByName(this, "menu_HUD_0");
  return (*(int (__fastcall **)(int, const char *, const char *))(*(_DWORD *)MenuByName + 56))(MenuByName, a2, a3);
}


// ===== 42e818 MenuManager::Draw(bool) =====
void __fastcall MenuManager::Draw(MenuManager *this, bool a2)
{
  int Switch; // r8
  InfoHUDManager *CurrentState; // r0
  int v5; // r3
  int v6; // r7
  int v7; // r8
  _DWORD *v8; // r9
  MenuFX *v9; // r10
  MenuFlash2DCamera *v10; // r0
  int v11; // r2
  InfoHUDManager *Instance; // r0
  HUDControls *v13; // r0
  HUDControls *v14; // r0
  FlashAnimManager *v15; // r0
  FlashAnimManager *v16; // r0
  std::string v17; // [sp+Ch] [bp-34h] BYREF
  std::string v18; // [sp+24h] [bp-1Ch] BYREF

  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string((int)&v18, "IsDeactivatingFlashMenus");
  if ( DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v18) )
  {
    std::string::~string(&v18);
  }
  else
  {
    DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
    std::string::string((int)&v17, "IsDeactivatingFlashMenusRender");
    Switch = DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v17);
    std::string::~string(&v17);
    std::string::~string(&v18);
    if ( !Switch )
    {
      v5 = *((_DWORD *)this + 61);
      v6 = 3;
      v7 = 2;
      v8 = *(_DWORD **)(dword_99F73C + 16);
      *((_DWORD *)this + 2) = v8[31];
      *((_DWORD *)this + 3) = v8[32];
      *((_DWORD *)this + 4) = v8[30];
      v9 = *(MenuFX **)(v5 + 320);
      if ( v9 )
        goto LABEL_15;
LABEL_11:
      while ( v7 >= 0 )
      {
        v5 = *((_DWORD *)this + 61);
        while ( 1 )
        {
          --v6;
          v9 = *(MenuFX **)(v5 + 4 * v6 + 308);
          --v7;
          if ( !v9 )
            break;
          if ( v6 != 3 )
            goto LABEL_7;
LABEL_15:
          v11 = *(_DWORD *)(v5 + 316);
          if ( !v11 || !*(_DWORD *)(v11 + 280) )
          {
            Instance = (InfoHUDManager *)InfoHUDManager::GetInstance(CurrentState);
            v13 = (HUDControls *)InfoHUDManager::Draw(Instance);
            v14 = (HUDControls *)HUDControls::GetInstance(v13);
            v15 = (FlashAnimManager *)HUDControls::Draw(v14);
            v16 = (FlashAnimManager *)FlashAnimManager::GetInstance(v15);
            FlashAnimManager::Draw(v16);
            v5 = *((_DWORD *)this + 61);
LABEL_7:
            v10 = *(MenuFlash2DCamera **)(v5 + 4 * v6 + 324);
            if ( v10 )
              MenuFlash2DCamera::Update(v10);
            CurrentState = (InfoHUDManager *)MenuFX::GetCurrentState(v9);
            if ( CurrentState || v6 == 3 )
              CurrentState = RenderFX::Render(v9);
            goto LABEL_11;
          }
        }
      }
      *((_DWORD *)this + 5) = v8[31];
      *((_DWORD *)this + 6) = v8[32];
      *((_DWORD *)this + 7) = v8[30];
    }
  }
}


// ===== 42ea04 MenuManager::Update(bool) =====
int __fastcall MenuManager::Update(MenuManager *this, int a2)
{
  MenuDebugHUD *v4; // r0
  int Instance; // r0
  int v6; // r7
  unsigned int v7; // r3
  int v8; // r7
  RenderFX *HUDRoot; // r10
  RenderFX *v10; // r0
  gameswf::root *Root; // r0
  gameswf::character *root_movie; // r8
  int v13; // r0
  bool v14; // r1
  int Switch; // r10
  bool v16; // r1
  int v18; // r8
  int Dt; // r10
  int v20; // r7
  int v21; // r11
  InfoHUDManager *IsCurrentlyInGameView; // r0
  FlashAnimManager *v23; // r0
  int NumMenus; // r7
  int i; // r6
  int v26; // r3
  InfoHUDManager *v27; // r0
  HUDControls *v28; // r0
  HUDControls *v29; // r0
  _BYTE v30[4]; // [sp+14h] [bp-70h] BYREF
  double v31; // [sp+18h] [bp-6Ch]
  double v32; // [sp+20h] [bp-64h]
  std::string v33; // [sp+34h] [bp-50h] BYREF
  std::string v34; // [sp+4Ch] [bp-38h] BYREF
  std::string v35; // [sp+64h] [bp-20h] BYREF

  if ( leader )
    fillLeaderBoard();
  PushProfilingContext("MenuManager::Update");
  if ( Application::GetCurrentLevel((Application *)&Singleton<Application>::s_inst) )
  {
    v4 = (MenuDebugHUD *)PushProfilingContext("MenuDebug::Update");
    Instance = MenuDebugHUD::GetInstance(v4);
    (*(void (__fastcall **)(int))(*(_DWORD *)Instance + 28))(Instance);
    PopProfilingContext("MenuDebug::Update");
  }
  v6 = *(_DWORD *)(PlayerManager::GetLocalPlayer((PlayerManager *)dword_99F76C, 0, 1) + 1632);
  PushProfilingContext("MenuManager::InteractionType");
  if ( v6 )
  {
    v7 = *(char *)(v6 + 5288);
    v8 = v7 <= 0xA ? CSWTCH_6518[v7] : 5;
    if ( *((_DWORD *)this + 66) != v8 && MenuManager::GetHUDRoot(this) )
    {
      *((_DWORD *)this + 66) = v8;
      HUDRoot = (RenderFX *)MenuManager::GetHUDRoot(this);
      v10 = (RenderFX *)MenuManager::GetHUDRoot(this);
      Root = (gameswf::root *)RenderFX::GetRoot(v10);
      root_movie = (gameswf::character *)gameswf::root::get_root_movie(Root);
      v13 = *((_DWORD *)this + 66);
      v30[0] = 0;
      v30[1] = 2;
      v32 = (double)v13;
      v31 = (double)v13;
      RenderFX::InvokeASCallback(HUDRoot, root_movie, "FillActionIcon", (const gameswf::as_value *)v30, 1);
      gameswf::as_value::drop_refs((gameswf::as_value *)v30);
    }
  }
  PopProfilingContext("MenuManager::InteractionType");
  RenderFX::SetWireFrame(nullptr, v14);
  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string((int)&v35, "IsDisplayingMenuWireframe");
  Switch = DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v35);
  std::string::~string(&v35);
  if ( Switch )
    RenderFX::SetWireFrame((RenderFX *)((char *)&dword_0 + 1), v16);
  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string((int)&v34, "IsDeactivatingFlashMenus");
  if ( DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v34) )
  {
    std::string::~string(&v34);
    return PopProfilingContext("MenuManager::Update");
  }
  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string((int)&v33, "IsDeactivatingFlashMenusUpdate");
  v18 = DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v33);
  std::string::~string(&v33);
  std::string::~string(&v34);
  if ( v18 )
    return PopProfilingContext("MenuManager::Update");
  Dt = Application::GetDt((Application *)&Singleton<Application>::s_inst);
  if ( *((_BYTE *)this + 136) )
  {
    if ( *((_DWORD *)this + 32) )
    {
      std::priv::_Rb_tree<MenuBase *,std::less<MenuBase *>,std::pair<MenuBase * const,bool>,std::priv::_Select1st<std::pair<MenuBase * const,bool>>,std::priv::_MapTraitsT<std::pair<MenuBase * const,bool>>,std::allocator<std::pair<MenuBase * const,bool>>>::_M_erase(
        (char *)this + 112,
        *((_DWORD *)this + 29));
      *((_DWORD *)this + 31) = (char *)this + 112;
      *((_DWORD *)this + 32) = 0;
      *((_DWORD *)this + 30) = (char *)this + 112;
      *((_DWORD *)this + 29) = 0;
    }
    *((_BYTE *)this + 136) = 0;
  }
  if ( a2 )
    v20 = 3;
  else
    v20 = 0;
  while ( 1 )
  {
    v21 = *(_DWORD *)(*((_DWORD *)this + 61) + 4 * v20 + 308);
    if ( v21 )
      break;
LABEL_29:
    if ( ++v20 == 4 )
      goto LABEL_30;
  }
  if ( !Application::GetCurrentLevel((Application *)&Singleton<Application>::s_inst)
    || v20 != 3
    || *(_BYTE *)(Application::GetCurrentLevel((Application *)&Singleton<Application>::s_inst) + 408) )
  {
    PushProfilingContext("Menu Update");
    (*(void (__fastcall **)(int, int, _DWORD))(*(_DWORD *)v21 + 16))(v21, Dt, 0);
    PopProfilingContext("Menu Update");
    goto LABEL_29;
  }
LABEL_30:
  PushProfilingContext("MenuManager::HUDManager");
  IsCurrentlyInGameView = (InfoHUDManager *)Application::IsCurrentlyInGameView((Application *)&Singleton<Application>::s_inst);
  if ( IsCurrentlyInGameView )
  {
    v27 = (InfoHUDManager *)InfoHUDManager::GetInstance(IsCurrentlyInGameView);
    v28 = (HUDControls *)InfoHUDManager::Update(v27);
    v29 = (HUDControls *)HUDControls::GetInstance(v28);
    IsCurrentlyInGameView = (InfoHUDManager *)HUDControls::Update(v29);
  }
  v23 = (FlashAnimManager *)FlashAnimManager::GetInstance(IsCurrentlyInGameView);
  FlashAnimManager::Update(v23);
  PopProfilingContext("MenuManager::HUDManager");
  PushProfilingContext("MenuManager::RegisteredUpdate");
  NumMenus = MenuManager::GetNumMenus(this);
  if ( NumMenus > 0 )
  {
    for ( i = 0; i != NumMenus; ++i )
    {
      while ( !MenuBase::IsVisible(*(MenuBase **)(*((_DWORD *)this + 25) + 4 * i)) )
      {
        if ( NumMenus == ++i )
          goto LABEL_37;
      }
      v26 = *(_DWORD *)(*((_DWORD *)this + 25) + 4 * i);
      (*(void (__fastcall **)(int))(*(_DWORD *)v26 + 28))(v26);
    }
  }
LABEL_37:
  PopProfilingContext("MenuManager::RegisteredUpdate");
  return PopProfilingContext("MenuManager::Update");
}


// ===== 42ee94 MenuManager::RegisterMenu(MenuBase *) =====
void __fastcall MenuManager::RegisterMenu(MenuManager *this, MenuBase *a2)
{
  int v3; // r8
  int v4; // r3
  MenuFX *v5; // r4
  MenuFX::State **v6; // r1
  MenuFX::State *v7; // [sp+4h] [bp-24h] BYREF
  std::string v8; // [sp+Ch] [bp-1Ch] BYREF

  v7 = a2;
  v3 = 0;
  while ( 1 )
  {
    v4 = *((_DWORD *)this + 61) + 4 * v3;
    v5 = *(MenuFX **)(v4 + 308);
    if ( v5 )
    {
      if ( RenderFX::Find(*(RenderFX **)(v4 + 308), (const char *)v7 + 8) )
        break;
    }
    if ( ++v3 == 4 )
    {
      DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
      std::string::string(&v8, "isTracingMenuManager");
      DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v8);
      std::string::~string(&v8);
      return;
    }
  }
  v6 = *((MenuFX::State ***)this + 26);
  if ( v6 == *((MenuFX::State ***)this + 27) )
  {
    std::vector<MenuBase *>::_M_insert_overflow((int)this + 100, (int)v6, &v7);
  }
  else
  {
    *v6 = v7;
    *((_DWORD *)this + 26) += 4;
  }
  MenuFX::RegisterState(v5, v7, nullptr);
  *((_BYTE *)v7 + 124) = 1;
}


// ===== 42efb8 MenuManager::PostLoad(void) =====
void __fastcall MenuManager::PostLoad(MenuManager *this)
{
  int v1; // r3
  RenderFX *v2; // r4
  gameswf::character *FlashRoot; // r0
  int v4; // r5
  _DWORD *Characters; // r0
  int v6; // r6
  _DWORD *v7; // r7
  gameswf::character *v8; // r0
  _DWORD *v9; // r6
  int v10; // r5
  int v11; // r8
  int Root; // r0
  int v13; // r3
  int v14; // r2
  int v15; // r5
  int v16; // r4
  char *v17; // r1
  const char *v18; // r1
  char *v19; // r7
  const char *v20; // r7
  MenuBase *v21; // r4
  MenuManager *v22; // r0
  MenuManager *Instance; // r0
  int v24; // r2
  int i; // [sp+18h] [bp-6Ch]
  RenderFX *v27; // [sp+1Ch] [bp-68h]
  int v28; // [sp+34h] [bp-50h] BYREF
  int v29; // [sp+38h] [bp-4Ch]
  int v30; // [sp+3Ch] [bp-48h]
  char v31; // [sp+40h] [bp-44h]
  std::string v32; // [sp+4Ch] [bp-38h] BYREF
  std::string v33; // [sp+64h] [bp-20h] BYREF

  for ( i = 0; i != 4; ++i )
  {
    v1 = *((_DWORD *)this + 61) + 4 * i;
    v2 = *(RenderFX **)(v1 + 308);
    if ( v2 )
    {
      FlashRoot = (gameswf::character *)RenderFX::GetFlashRoot(*(RenderFX **)(v1 + 308));
      v4 = 0;
      Characters = (_DWORD *)RenderFX::FindCharacters(v2, FlashRoot, "menu_", 0);
      v28 = 0;
      v29 = 0;
      v30 = 0;
      v31 = 0;
      v6 = Characters[1];
      v7 = Characters;
      if ( v6 > 0 )
      {
        gameswf::array<gameswf::character *>::reserve((int)&v28, v6 + (v6 >> 1));
        v14 = 0;
        do
          *(_DWORD *)(v28 + 4 * v4++) = 0;
        while ( v4 != v6 );
        v29 = v4;
        do
        {
          *(_DWORD *)(v28 + 4 * v14) = *(_DWORD *)(*v7 + 4 * v14);
          ++v14;
        }
        while ( v14 < v29 );
        if ( v29 > 0 )
        {
          v15 = 0;
          v27 = v2;
          do
          {
            while ( 1 )
            {
              v16 = *(_DWORD *)(v28 + 4 * v15);
              DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
              std::string::string(&v33, "isTracingMenuManager");
              DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v33);
              std::string::~string(&v33);
              v17 = *(char **)(v16 + 68);
              v18 = *v17 == -1 ? *((const char **)v17 + 3) : v17 + 1;
              if ( !MenuManager::GetMenuByName(this, v18) )
                break;
              ++v15;
              DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
              std::string::string(&v32, "isTracingMenuManager");
              DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v32);
              std::string::~string(&v32);
              if ( v15 >= v29 )
                goto LABEL_27;
            }
            v19 = *(char **)(v16 + 68);
            ++v15;
            if ( *v19 == -1 )
              v20 = *((const char **)v19 + 3);
            else
              v20 = v19 + 1;
            v21 = (MenuBase *)operator new(0xC4u, 8);
            MenuBase::MenuBase(v21, v20);
            *((_BYTE *)v21 + 125) = 1;
            Instance = (MenuManager *)MenuManager::GetInstance(v22);
            MenuManager::RegisterMenu(Instance, v21);
          }
          while ( v15 < v29 );
LABEL_27:
          v2 = v27;
        }
      }
      else
      {
        v29 = Characters[1];
      }
      v8 = (gameswf::character *)RenderFX::GetFlashRoot(v2);
      v9 = (_DWORD *)RenderFX::FindCharacters(v2, v8, "flush_text", 0);
      if ( (int)v9[1] > 0 )
      {
        v10 = 0;
        do
        {
          v11 = *(_DWORD *)(*v9 + 4 * v10);
          Root = RenderFX::GetRoot(v2);
          RenderFX::RegisterDisplayCallback(v2, v11, FlushTextCallback, Root);
          ++v10;
        }
        while ( v10 < v9[1] );
      }
      v13 = v29;
      if ( v29 < 0 )
      {
        v24 = 4 * v29;
        do
        {
          ++v13;
          *(_DWORD *)(v28 + v24) = 0;
          v24 += 4;
        }
        while ( v13 );
      }
      v29 = 0;
      gameswf::array<gameswf::character *>::reserve((int)&v28, 0);
    }
  }
}


// ===== 42f304 MenuManager::Init(void) =====
char *__fastcall MenuManager::Init(MenuManager *this, const char *a2, void (*a3)(const gameswf::fn_call *))
{
  int v3; // r6
  const char *v5; // r9
  InfoHUDManager *Instance; // r0
  HUDControls *inited; // r0
  HUDControls *v9; // r0
  FlashAnimManager *v10; // r0
  FlashAnimManager *v11; // r5
  MenuFX *HUDRoot; // r0
  void (*v13)(const gameswf::fn_call *); // r2
  void (*v14)(const gameswf::fn_call *); // r2
  void (*v15)(const gameswf::fn_call *); // r2
  void (*v16)(const gameswf::fn_call *); // r2
  void (*v17)(const gameswf::fn_call *); // r2
  void (*v18)(const gameswf::fn_call *); // r2
  void (*v19)(const gameswf::fn_call *); // r2
  void (*v20)(const gameswf::fn_call *); // r2
  void (*v21)(const gameswf::fn_call *); // r2
  void (*v22)(const gameswf::fn_call *); // r2
  void (*v23)(const gameswf::fn_call *); // r2
  void (*v24)(const gameswf::fn_call *); // r2
  void (*v25)(const gameswf::fn_call *); // r2
  void (*v26)(const gameswf::fn_call *); // r2
  void (*v27)(const gameswf::fn_call *); // r2
  void (*v28)(const gameswf::fn_call *); // r2
  void (*v29)(const gameswf::fn_call *); // r2
  void (*v30)(const gameswf::fn_call *); // r2
  void (*v31)(const gameswf::fn_call *); // r2
  void (*v32)(const gameswf::fn_call *); // r2
  void (*v33)(const gameswf::fn_call *); // r2
  void (*v34)(const gameswf::fn_call *); // r2
  void (*v35)(const gameswf::fn_call *); // r2
  void (*v36)(const gameswf::fn_call *); // r2
  void (*v37)(const gameswf::fn_call *); // r2
  void (*v38)(const gameswf::fn_call *); // r2
  void (*v39)(const gameswf::fn_call *); // r2
  void (*v40)(const gameswf::fn_call *); // r2
  void (*v41)(const gameswf::fn_call *); // r2
  void (*v42)(const gameswf::fn_call *); // r2
  void (*v43)(const gameswf::fn_call *); // r2
  void (*v44)(const gameswf::fn_call *); // r2
  void (*v45)(const gameswf::fn_call *); // r2
  void (*v46)(const gameswf::fn_call *); // r2
  void (*v47)(const gameswf::fn_call *); // r2
  void (*v48)(const gameswf::fn_call *); // r2
  void (*v49)(const gameswf::fn_call *); // r2
  void (*v50)(const gameswf::fn_call *); // r2
  void (*v51)(const gameswf::fn_call *); // r2
  void (*v52)(const gameswf::fn_call *); // r2
  void (*v53)(const gameswf::fn_call *); // r2
  void (*v54)(const gameswf::fn_call *); // r2
  void (*v55)(const gameswf::fn_call *); // r2
  void (*v56)(const gameswf::fn_call *); // r2
  void (*v57)(const gameswf::fn_call *); // r2
  void (*v58)(const gameswf::fn_call *); // r2
  void (*v59)(const gameswf::fn_call *); // r2
  void (*v60)(const gameswf::fn_call *); // r2
  void (*v61)(const gameswf::fn_call *); // r2
  void (*v62)(const gameswf::fn_call *); // r2
  void (*v63)(const gameswf::fn_call *); // r2
  void (*v64)(const gameswf::fn_call *); // r2
  void (*v65)(const gameswf::fn_call *); // r2
  void (*v66)(const gameswf::fn_call *); // r2
  void (*v67)(const gameswf::fn_call *); // r2
  void (*v68)(const gameswf::fn_call *); // r2
  void (*v69)(const gameswf::fn_call *); // r2
  void (*v70)(const gameswf::fn_call *); // r2
  void (*v71)(const gameswf::fn_call *); // r2
  void (*v72)(const gameswf::fn_call *); // r2
  void (*v73)(const gameswf::fn_call *); // r2
  void (*v74)(const gameswf::fn_call *); // r2
  void (*v75)(const gameswf::fn_call *); // r2
  void (*v76)(const gameswf::fn_call *); // r2
  void (*v77)(const gameswf::fn_call *); // r2
  void (*v78)(const gameswf::fn_call *); // r2
  void (*v79)(const gameswf::fn_call *); // r2
  void (*v80)(const gameswf::fn_call *); // r2
  void (*v81)(const gameswf::fn_call *); // r2
  void (*v82)(const gameswf::fn_call *); // r2
  void (*v83)(const gameswf::fn_call *); // r2
  void (*v84)(const gameswf::fn_call *); // r2
  void (*v85)(const gameswf::fn_call *); // r2
  void (*v86)(const gameswf::fn_call *); // r2
  void (*v87)(const gameswf::fn_call *); // r2
  void (*v88)(const gameswf::fn_call *); // r2
  void (*v89)(const gameswf::fn_call *); // r2
  void (*v90)(const gameswf::fn_call *); // r2
  void (*v91)(const gameswf::fn_call *); // r2
  void (*v92)(const gameswf::fn_call *); // r2
  void (*v93)(const gameswf::fn_call *); // r2
  void (*v94)(const gameswf::fn_call *); // r2
  void (*v95)(const gameswf::fn_call *); // r2
  void (*v96)(const gameswf::fn_call *); // r2
  void (*v97)(const gameswf::fn_call *); // r2
  void (*v98)(const gameswf::fn_call *); // r2
  void (*v99)(const gameswf::fn_call *); // r2
  void (*v100)(const gameswf::fn_call *); // r2
  void (*v101)(const gameswf::fn_call *); // r2
  void (*v102)(const gameswf::fn_call *); // r2
  void (*v103)(const gameswf::fn_call *); // r2
  void (*v104)(const gameswf::fn_call *); // r2
  void (*v105)(const gameswf::fn_call *); // r2
  void (*v106)(const gameswf::fn_call *); // r2
  void (*v107)(const gameswf::fn_call *); // r2
  void (*v108)(const gameswf::fn_call *); // r2
  void (*v109)(const gameswf::fn_call *); // r2
  void (*v110)(const gameswf::fn_call *); // r2
  void (*v111)(const gameswf::fn_call *); // r2
  void (*v112)(const gameswf::fn_call *); // r2
  void (*v113)(const gameswf::fn_call *); // r2
  void (*v114)(const gameswf::fn_call *); // r2
  void (*v115)(const gameswf::fn_call *); // r2
  void (*v116)(const gameswf::fn_call *); // r2
  void (*v117)(const gameswf::fn_call *); // r2
  void (*v118)(const gameswf::fn_call *); // r2
  void (*v119)(const gameswf::fn_call *); // r2
  void (*v120)(const gameswf::fn_call *); // r2
  void (*v121)(const gameswf::fn_call *); // r2
  void (*v122)(const gameswf::fn_call *); // r2
  void (*v123)(const gameswf::fn_call *); // r2
  void (*v124)(const gameswf::fn_call *); // r2
  void (*v125)(const gameswf::fn_call *); // r2
  void (*v126)(const gameswf::fn_call *); // r2
  void (*v127)(const gameswf::fn_call *); // r2
  void (*v128)(const gameswf::fn_call *); // r2
  void (*v129)(const gameswf::fn_call *); // r2
  void (*v130)(const gameswf::fn_call *); // r2
  void (*v131)(const gameswf::fn_call *); // r2
  void (*v132)(const gameswf::fn_call *); // r2
  void (*v133)(const gameswf::fn_call *); // r2
  void (*v134)(const gameswf::fn_call *); // r2
  void (*v135)(const gameswf::fn_call *); // r2
  void (*v136)(const gameswf::fn_call *); // r2
  void (*v137)(const gameswf::fn_call *); // r2
  void (*v138)(const gameswf::fn_call *); // r2
  void (*v139)(const gameswf::fn_call *); // r2
  void (*v140)(const gameswf::fn_call *); // r2
  void (*v141)(const gameswf::fn_call *); // r2
  void (*v142)(const gameswf::fn_call *); // r2
  void (*v143)(const gameswf::fn_call *); // r2
  void (*v144)(const gameswf::fn_call *); // r2
  void (*v145)(const gameswf::fn_call *); // r2
  void (*v146)(const gameswf::fn_call *); // r2
  void (*v147)(const gameswf::fn_call *); // r2
  void (*v148)(const gameswf::fn_call *); // r2
  void (*v149)(const gameswf::fn_call *); // r2
  void (*v150)(const gameswf::fn_call *); // r2
  void (*v151)(const gameswf::fn_call *); // r2
  void (*v152)(const gameswf::fn_call *); // r2
  void (*v153)(const gameswf::fn_call *); // r2
  void (*v154)(const gameswf::fn_call *); // r2
  void (*v155)(const gameswf::fn_call *); // r2
  void (*v156)(const gameswf::fn_call *); // r2
  void (*v157)(const gameswf::fn_call *); // r2
  void (*v158)(const gameswf::fn_call *); // r2
  void (*v159)(const gameswf::fn_call *); // r2
  void (*v160)(const gameswf::fn_call *); // r2
  void (*v161)(const gameswf::fn_call *); // r2
  void (*v162)(const gameswf::fn_call *); // r2
  void (*v163)(const gameswf::fn_call *); // r2
  void (*v164)(const gameswf::fn_call *); // r2
  void (*v165)(const gameswf::fn_call *); // r2
  void (*v166)(const gameswf::fn_call *); // r2
  void (*v167)(const gameswf::fn_call *); // r2
  void (*v168)(const gameswf::fn_call *); // r2
  void (*v169)(const gameswf::fn_call *); // r2
  void (*v170)(const gameswf::fn_call *); // r2
  void (*v171)(const gameswf::fn_call *); // r2
  void (*v172)(const gameswf::fn_call *); // r2
  void (*v173)(const gameswf::fn_call *); // r2
  void (*v174)(const gameswf::fn_call *); // r2
  void (*v175)(const gameswf::fn_call *); // r2
  void (*v176)(const gameswf::fn_call *); // r2
  void (*v177)(const gameswf::fn_call *); // r2
  void (*v178)(const gameswf::fn_call *); // r2
  void (*v179)(const gameswf::fn_call *); // r2
  void (*v180)(const gameswf::fn_call *); // r2
  void (*v181)(const gameswf::fn_call *); // r2
  void (*v182)(const gameswf::fn_call *); // r2
  void (*v183)(const gameswf::fn_call *); // r2
  void (*v184)(const gameswf::fn_call *); // r2
  void (*v185)(const gameswf::fn_call *); // r2
  MenuBase **v186; // r5
  MenuBase **v187; // r7
  MenuBase *v188; // t1
  MenuCharMenu_Map *v189; // r0
  MenuWorldMap *v190; // r0
  CharProperties *v191; // r0
  RenderFX *v192; // r0
  RenderFX *v193; // r6
  int v194; // r7
  gameswf::character *Context; // r0
  const char *v196; // r8
  MenuDebugHUD *v197; // r0
  char **v198; // r8
  const char *v199; // r1

  v3 = *((_DWORD *)this + 47);
  switch ( v3 )
  {
    case 0:
    case 2:
    case 3:
      *(_DWORD *)(*((_DWORD *)this + 61) + 4 * (v3 + 76) + 4) = 0;
      *(_DWORD *)(*((_DWORD *)this + 61) + 4 * (v3 + 80) + 4) = 0;
      v5 = s_SWFfileToLoad[v3];
      if ( !(*(int (__fastcall **)(_DWORD, const char *))(**(_DWORD **)(dword_99F73C + 52) + 168))(
              *(_DWORD *)(dword_99F73C + 52),
              v5) )
        goto LABEL_21;
      if ( Width_Screen == 854 )
      {
        MultiMenuManager::LoadSWFFile(*((MultiMenuManager **)this + 61), s_SWFfileToLoad[v3 + 16], v3);
      }
      else
      {
        if ( Width_Screen != 960 )
        {
          if ( Width_Screen == 800 )
          {
            if ( HTC_DEVICES )
            {
              MultiMenuManager::LoadSWFFile(*((MultiMenuManager **)this + 61), s_SWFfileToLoad[v3 + 4], v3);
            }
            else
            {
              v198 = &s_SWFfileToLoad[v3];
              if ( NO_IGP )
                v199 = v198[8];
              else
                v199 = v198[12];
              MultiMenuManager::LoadSWFFile(*((MultiMenuManager **)this + 61), v199, v3);
            }
            goto LABEL_9;
          }
          if ( SavegameManager::getLanguage((SavegameManager *)dword_99F778) == 5 )
          {
            MultiMenuManager::LoadSWFFile(*((MultiMenuManager **)this + 61), s_SWFfileToLoad[v3 + 20], v3);
            goto LABEL_9;
          }
          if ( SavegameManager::getLanguage((SavegameManager *)dword_99F778) == 4 )
          {
            MultiMenuManager::LoadSWFFile(*((MultiMenuManager **)this + 61), s_SWFfileToLoad[v3 + 24], v3);
            goto LABEL_9;
          }
        }
        MultiMenuManager::LoadSWFFile(*((MultiMenuManager **)this + 61), v5, v3);
      }
LABEL_9:
      if ( v3 == 3 )
        RenderFX::SetInputBehavior(*(RenderFX **)(*((_DWORD *)this + 61) + 320), 4);
      else
        RenderFX::SetInputBehavior(*(RenderFX **)(*((_DWORD *)this + 61) + 4 * (v3 + 76) + 4), 132);
      v3 = *((_DWORD *)this + 47);
      goto LABEL_12;
    case 1:
      *(_DWORD *)(*((_DWORD *)this + 61) + 312) = 0;
      *(_DWORD *)(*((_DWORD *)this + 61) + 328) = 0;
      v3 = *((_DWORD *)this + 47);
      goto LABEL_12;
    case 4:
      Instance = (InfoHUDManager *)InfoHUDManager::GetInstance(this);
      *((_DWORD *)Instance + 351) = *(_DWORD *)(*((_DWORD *)this + 61) + 320);
      inited = (HUDControls *)InfoHUDManager::initCachedChars(Instance);
      v9 = (HUDControls *)HUDControls::GetInstance(inited);
      *((_DWORD *)v9 + 406) = *(_DWORD *)(*((_DWORD *)this + 61) + 320);
      v10 = (FlashAnimManager *)HUDControls::initCachedChars(v9);
      v11 = (FlashAnimManager *)FlashAnimManager::GetInstance(v10);
      HUDRoot = (MenuFX *)MenuManager::GetHUDRoot(this);
      FlashAnimManager::ScanForAnims(v11, HUDRoot);
      v3 = *((_DWORD *)this + 47);
      goto LABEL_12;
    case 5:
      CharProperties::LoadPropNames((CharProperties *)"PyData/character_properties_pystructnames.bin", a2);
      v3 = *((_DWORD *)this + 47);
      goto LABEL_12;
    case 7:
      MenuMainMenu::GetInstance(this);
      v3 = *((_DWORD *)this + 47);
      goto LABEL_12;
    case 9:
      MenuCharacterSelect::GetInstance(this);
      v3 = *((_DWORD *)this + 47);
      goto LABEL_12;
    case 11:
      v189 = (MenuCharMenu_Map *)MenuCharMenu_InvMain::GetInstance(this);
      v190 = (MenuWorldMap *)MenuCharMenu_Map::GetInstance(v189);
      MenuWorldMap::GetInstance(v190);
      v3 = *((_DWORD *)this + 47);
      goto LABEL_12;
    case 13:
      MenuEnterName::GetInstance(this);
      v3 = *((_DWORD *)this + 47);
      goto LABEL_12;
    case 14:
      MenuMultiplayerLobbyMulti::GetInstance(this);
      v3 = *((_DWORD *)this + 47);
      goto LABEL_12;
    case 17:
      v197 = (MenuDebugHUD *)MenuDebug::GetInstance(this);
      MenuDebugHUD::GetInstance(v197);
      v3 = *((_DWORD *)this + 47);
      goto LABEL_12;
    case 18:
      MenuMerchant::GetInstance(this);
      v3 = *((_DWORD *)this + 47);
      goto LABEL_12;
    case 19:
      MenuConfirm::GetInstance(this);
      v3 = *((_DWORD *)this + 47);
      goto LABEL_12;
    case 20:
      MenuHUDConfirm::GetInstance(this);
      v3 = *((_DWORD *)this + 47);
      goto LABEL_12;
    case 23:
      v191 = (CharProperties *)MenuManager::PostLoad(this);
      CharProperties::UnLoadPropNames(v191);
      if ( MenuManager::GetHUDRoot(this) )
      {
        v192 = (RenderFX *)MenuManager::GetHUDRoot(this);
        RenderFX::SetEventListener(v192, (MenuManager *)((char *)this + 4));
      }
      v193 = *(RenderFX **)(*((_DWORD *)this + 61) + 316);
      v194 = 0;
      do
      {
        sprintf(MenuManager::Init(void)::buffer, "preload_font.preload_font%1d", ++v194);
        Context = (gameswf::character *)RenderFX::GetContext(v193);
        v196 = (const char *)RenderFX::Find(v193, MenuManager::Init(void)::buffer, Context);
        if ( v196 )
        {
          GameSWFUtils::PreloadGlyph(
            (GameSWFUtils *)GameSWFUtils::CACHE_CHARS_NUMBERS,
            v196,
            v193,
            (MenuFX *)&GameSWFUtils::CACHE_CHARS_NUMBERS);
          GameSWFUtils::PreloadGlyph(
            (GameSWFUtils *)GameSWFUtils::CACHE_CHARS_A_TO_Z,
            v196,
            v193,
            (MenuFX *)&GameSWFUtils::CACHE_CHARS_A_TO_Z);
          GameSWFUtils::PreloadGlyph(
            (GameSWFUtils *)GameSWFUtils::CACHE_CHARS_a_TO_z[0],
            v196,
            v193,
            (MenuFX *)GameSWFUtils::CACHE_CHARS_a_TO_z);
        }
      }
      while ( v194 != 6 );
      v3 = *((_DWORD *)this + 47);
      goto LABEL_12;
    case 24:
      v186 = *((MenuBase ***)this + 25);
      v187 = *((MenuBase ***)this + 26);
      if ( v186 != v187 )
      {
        do
        {
          MenuBase::RegisterDragAndDrops(*v186, nullptr);
          v188 = *v186++;
          (*(void (__fastcall **)(MenuBase *))(*(_DWORD *)v188 + 16))(v188);
        }
        while ( v186 != v187 );
        v3 = *((_DWORD *)this + 47);
      }
      goto LABEL_12;
    case 25:
      gameswf::register_as_native_function((gameswf *)"NativeGetSkillDetails", (const char *)NativeGetSkillDetails, a3);
      gameswf::register_as_native_function((gameswf *)"NativeEquipSkill", (const char *)NativeEquipSkill, v13);
      gameswf::register_as_native_function((gameswf *)"NativeGetPlayerInfos", (const char *)NativeGetPlayerInfos, v14);
      gameswf::register_as_native_function(
        (gameswf *)"NativeGetPlayerRanking",
        (const char *)NativeGetPlayerRanking,
        v15);
      gameswf::register_as_native_function((gameswf *)"NativeGetPlayerStats", (const char *)NativeGetPlayerStats, v16);
      gameswf::register_as_native_function(
        (gameswf *)"NativeGetSaveSlotDetails",
        (const char *)NativeGetSaveSlotDetails,
        v17);
      gameswf::register_as_native_function((gameswf *)"NativeEraseSaveSlot", (const char *)NativeEraseSaveSlot, v18);
      gameswf::register_as_native_function(
        (gameswf *)"NativeFindFreeSaveSlot",
        (const char *)NativeFindFreeSaveSlot,
        v19);
      gameswf::register_as_native_function(
        (gameswf *)"NativeGetSaveIDsListSize",
        (const char *)NativeGetSaveIDsListSize,
        v20);
      gameswf::register_as_native_function((gameswf *)"NativeGetSaveIDsList", (const char *)NativeGetSaveIDsList, v21);
      gameswf::register_as_native_function(
        (gameswf *)"NativeSetSaveSlotIDToMainMenu",
        (const char *)NativeSetSaveSlotIDToMainMenu,
        v22);
      gameswf::register_as_native_function(
        (gameswf *)"NativeInvAutoEquipSlot",
        (const char *)NativeInvAutoEquipSlot,
        v23);
      gameswf::register_as_native_function(
        (gameswf *)"NativeInvGetHasTwoHandedWeapon",
        (const char *)NativeInvGetHasTwoHandedWeapon,
        v24);
      gameswf::register_as_native_function(
        (gameswf *)"NativeInvGetHasOffHandWeapon",
        (const char *)NativeInvGetHasOffHandWeapon,
        v25);
      gameswf::register_as_native_function(
        (gameswf *)"NativeInvGetEquipedItem",
        (const char *)NativeInvGetEquipedItem,
        v26);
      gameswf::register_as_native_function(
        (gameswf *)"NativeGetMultiplayerGameRooms",
        (const char *)NativeGetMultiplayerGameRooms,
        v27);
      gameswf::register_as_native_function(
        (gameswf *)"NativeGetMultiplayerRoomInfo",
        (const char *)NativeGetMultiplayerRoomInfo,
        v28);
      gameswf::register_as_native_function(
        (gameswf *)"NativeGetMultiplayerQuestInfo",
        (const char *)NativeGetMultiplayerQuestInfo,
        v29);
      gameswf::register_as_native_function((gameswf *)"NativeConnectToServer", (const char *)NativeConnectToServer, v30);
      gameswf::register_as_native_function((gameswf *)"NativeSendReady", (const char *)NativeSendReady, v31);
      gameswf::register_as_native_function(
        (gameswf *)"NativeCreateMultiplayerLobby",
        (const char *)NativeCreateMultiplayerLobby,
        v32);
      gameswf::register_as_native_function(
        (gameswf *)"NativeOnlineSanityCheck",
        (const char *)NativeOnlineSanityCheck,
        v33);
      gameswf::register_as_native_function((gameswf *)"NativeConectionType", (const char *)NativeConectionType, v34);
      gameswf::register_as_native_function(
        (gameswf *)"NativeGetNextStatusMessage",
        (const char *)NativeGetNextStatusMessage,
        v35);
      gameswf::register_as_native_function(
        (gameswf *)"NativeGetNextOnlineStatusMessage",
        (const char *)NativeGetNextOnlineStatusMessage,
        v36);
      gameswf::register_as_native_function((gameswf *)"NativeStatsReset", (const char *)NativeStatsReset, v37);
      gameswf::register_as_native_function(
        (gameswf *)"NativeStatsRemoveAssign",
        (const char *)NativeStatsRemoveAssign,
        v38);
      gameswf::register_as_native_function(
        (gameswf *)"NativeInvTransmuteItem",
        (const char *)NativeInvTransmuteItem,
        v39);
      gameswf::register_as_native_function(
        (gameswf *)"NativeInvGetItemsListForSlot",
        (const char *)NativeInvGetItemsListForSlot,
        v40);
      gameswf::register_as_native_function(
        (gameswf *)"NativeInvGetItemDetails",
        (const char *)NativeInvGetItemDetails,
        v41);
      gameswf::register_as_native_function((gameswf *)"NativeInvEquipItem", (const char *)NativeInvEquipItem, v42);
      gameswf::register_as_native_function((gameswf *)"NativeInvUnequipItem", (const char *)NativeInvUnequipItem, v43);
      gameswf::register_as_native_function(
        (gameswf *)"NativeHUDSetActiveFaery",
        (const char *)NativeHUDSetActiveFaery,
        v44);
      gameswf::register_as_native_function(
        (gameswf *)"NativeHUDGetIsFaeryUnlocked",
        (const char *)NativeHUDGetIsFaeryUnlocked,
        v45);
      gameswf::register_as_native_function(
        (gameswf *)"NativeHUDGetActiveFaery",
        (const char *)NativeHUDGetActiveFaery,
        v46);
      gameswf::register_as_native_function(
        (gameswf *)"NativeSkillsGetSkillPointsLeft",
        (const char *)NativeSkillsGetSkillPointsLeft,
        v47);
      gameswf::register_as_native_function(
        (gameswf *)"NativeSkillsTrainSkill",
        (const char *)NativeSkillsTrainSkill,
        v48);
      gameswf::register_as_native_function(
        (gameswf *)"NativeStatsAssignPoint",
        (const char *)NativeStatsAssignPoint,
        v49);
      gameswf::register_as_native_function(
        (gameswf *)"NativeInvGetPlayerGold",
        (const char *)NativeInvGetPlayerGold,
        v50);
      gameswf::register_as_native_function(
        (gameswf *)"NativeSkillGetEquipedSkillsIDs",
        (const char *)NativeSkillGetEquipedSkillsIDs,
        v51);
      gameswf::register_as_native_function((gameswf *)"NativeLockCharacter", (const char *)NativeLockCharacter, v52);
      gameswf::register_as_native_function((gameswf *)"NativeUnlockCharacter", (const char *)NativeUnlockCharacter, v53);
      gameswf::register_as_native_function(
        (gameswf *)"NativeGetNextTutorialMessage",
        (const char *)NativeGetNextTutorialMessage,
        v54);
      gameswf::register_as_native_function(
        (gameswf *)"NativeGetCharMenuTutorialMessage",
        (const char *)NativeGetCharMenuTutorialMessage,
        v55);
      gameswf::register_as_native_function(
        (gameswf *)"NativeSkipCharMenuTutorialMessage",
        (const char *)NativeSkipCharMenuTutorialMessage,
        v56);
      gameswf::register_as_native_function(
        (gameswf *)"NativeGetNextDialogMessage",
        (const char *)NativeGetNextDialogMessage,
        v57);
      gameswf::register_as_native_function(
        (gameswf *)"NativeGetNextQuestMessage",
        (const char *)NativeGetNextQuestMessage,
        v58);
      gameswf::register_as_native_function(
        (gameswf *)"NativeGetNextAchievementMessage",
        (const char *)NativeGetNextAchievementMessage,
        v59);
      gameswf::register_as_native_function(
        (gameswf *)"NativeSkipAchievementMessage",
        (const char *)NativeSkipAchievementMessage,
        v60);
      gameswf::register_as_native_function((gameswf *)"NativeOnHUDOpenEvent", (const char *)NativeOnHUDOpenEvent, v61);
      gameswf::register_as_native_function((gameswf *)"NativeSetLevelPause", (const char *)NativeSetLevelPause, v62);
      gameswf::register_as_native_function((gameswf *)"NativeGetQuestCount", (const char *)NativeGetQuestCount, v63);
      gameswf::register_as_native_function(
        (gameswf *)"NativeGetQuestIDsInRange",
        (const char *)NativeGetQuestIDsInRange,
        v64);
      gameswf::register_as_native_function((gameswf *)"NativeGetQuestDetails", (const char *)NativeGetQuestDetails, v65);
      gameswf::register_as_native_function((gameswf *)"NativeSetCurrentQuest", (const char *)NativeSetCurrentQuest, v66);
      gameswf::register_as_native_function(
        (gameswf *)"NativeGetLoadingProgress",
        (const char *)NativeGetLoadingProgress,
        v67);
      gameswf::register_as_native_function(
        (gameswf *)"NativeGetLoadingTipStrID",
        (const char *)NativeGetLoadingTipStrID,
        v68);
      gameswf::register_as_native_function((gameswf *)"NativeGetStringFromID", (const char *)NativeGetStringFromID, v69);
      gameswf::register_as_native_function(
        (gameswf *)"NativeGetStringFromSymbol",
        (const char *)NativeGetStringFromSymbol,
        v70);
      gameswf::register_as_native_function((gameswf *)"NativeEnterOptionMenu", (const char *)NativeEnterOptionMenu, v71);
      gameswf::register_as_native_function((gameswf *)"NativeOptionFX", (const char *)NativeOptionFX, v72);
      gameswf::register_as_native_function((gameswf *)"NativeOptionMusic", (const char *)NativeOptionMusic, v73);
      gameswf::register_as_native_function(
        (gameswf *)"NativeGetOptionParameters",
        (const char *)NativeGetOptionParameters,
        v74);
      gameswf::register_as_native_function((gameswf *)"NativeSetOptions", (const char *)NativeSetOptions, v75);
      gameswf::register_as_native_function((gameswf *)"NativeGetMapIcons", (const char *)NativeGetMapIcons, v76);
      gameswf::register_as_native_function((gameswf *)"NativeLoadSettings", (const char *)NativeLoadSettings, v77);
      gameswf::register_as_native_function((gameswf *)"NativeSaveSettings", (const char *)NativeSaveSettings, v78);
      gameswf::register_as_native_function((gameswf *)"NativeCreateSaveSlot", (const char *)NativeCreateSaveSlot, v79);
      gameswf::register_as_native_function(
        (gameswf *)"NativeAssignSaveSlotToPlayer",
        (const char *)NativeAssignSaveSlotToPlayer,
        v80);
      gameswf::register_as_native_function((gameswf *)"NativeStartGame", (const char *)NativeStartGame, v81);
      gameswf::register_as_native_function(
        (gameswf *)"NativeGetStringNumPotions",
        (const char *)NativeGetStringNumPotions,
        v82);
      gameswf::register_as_native_function((gameswf *)"NativeGetNumPotions", (const char *)NativeGetNumPotions, v83);
      gameswf::register_as_native_function((gameswf *)"NativeUsePotion", (const char *)NativeUsePotion, v84);
      gameswf::register_as_native_function((gameswf *)"NativePushMenu", (const char *)NativePushMenu, v85);
      gameswf::register_as_native_function((gameswf *)"NativePopMenu", (const char *)NativePopMenu, v86);
      gameswf::register_as_native_function((gameswf *)"NativePopAllMenus", (const char *)NativePopAllMenus, v87);
      gameswf::register_as_native_function((gameswf *)"NativePopAllAbove", (const char *)NativePopAllAbove, v88);
      gameswf::register_as_native_function(
        (gameswf *)"NativeReviveAllPlayers",
        (const char *)NativeReviveAllPlayers,
        v89);
      gameswf::register_as_native_function((gameswf *)"NativeEndLoading", (const char *)NativeEndLoading, v90);
      gameswf::register_as_native_function((gameswf *)"NativeMustWaitForHost", (const char *)NativeMustWaitForHost, v91);
      gameswf::register_as_native_function(
        (gameswf *)"NativeIsMultiplayerLoadCompleted",
        (const char *)NativeIsMultiplayerLoadCompleted,
        v92);
      gameswf::register_as_native_function((gameswf *)"NativeHUDInteract", (const char *)NativeHUDInteract, v93);
      gameswf::register_as_native_function((gameswf *)"NativeHUDSpell", (const char *)NativeHUDSpell, v94);
      gameswf::register_as_native_function((gameswf *)"NativeHUDSkill", (const char *)NativeHUDSkill, v95);
      gameswf::register_as_native_function((gameswf *)"NativePushState", (const char *)NativePushState, v96);
      gameswf::register_as_native_function((gameswf *)"NativeGoToMainMenu", (const char *)NativeGoToMainMenu, v97);
      gameswf::register_as_native_function((gameswf *)"NativePlaySoundFX", (const char *)NativePlaySoundFX, v98);
      gameswf::register_as_native_function((gameswf *)"NativePlayMusic", (const char *)NativePlayMusic, v99);
      gameswf::register_as_native_function(
        (gameswf *)"NativePlayPreviousMusic",
        (const char *)NativePlayPreviousMusic,
        v100);
      gameswf::register_as_native_function((gameswf *)"NativeStopMusic", (const char *)NativeStopMusic, v101);
      gameswf::register_as_native_function((gameswf *)"NativePauseMusic", (const char *)NativePauseMusic, v102);
      gameswf::register_as_native_function((gameswf *)"NativePauseAllSounds", (const char *)NativePauseAllSounds, v103);
      gameswf::register_as_native_function(
        (gameswf *)"NatvieResumeAllSounds",
        (const char *)NatvieResumeAllSounds,
        v104);
      gameswf::register_as_native_function((gameswf *)"NativeSkipScript", (const char *)NativeSkipScript, v105);
      gameswf::register_as_native_function((gameswf *)"NativeStopMessage", (const char *)NativeStopMessage, v106);
      gameswf::register_as_native_function(
        (gameswf *)"NativeStartMultiplayerGame",
        (const char *)NativeStartMultiplayerGame,
        v107);
      gameswf::register_as_native_function(
        (gameswf *)"NativeGetParsedString",
        (const char *)NativeGetParsedString,
        v108);
      gameswf::register_as_native_function(
        (gameswf *)"NativeSelectClassSpec",
        (const char *)NativeSelectClassSpec,
        v109);
      gameswf::register_as_native_function(
        (gameswf *)"NativeGetPossibleClassSpec",
        (const char *)NativeGetPossibleClassSpec,
        v110);
      gameswf::register_as_native_function(
        (gameswf *)"NativeGetMonsterHUDHP",
        (const char *)NativeGetMonsterHUDHP,
        v111);
      gameswf::register_as_native_function((gameswf *)"NativeDebugConsole", (const char *)NativeDebugConsole, v112);
      gameswf::register_as_native_function((gameswf *)"NativeBackToHud", (const char *)NativeBackToHud, v113);
      gameswf::register_as_native_function((gameswf *)"NativeAwayFromHud", (const char *)NativeAwayFromHud, v114);
      gameswf::register_as_native_function((gameswf *)"NativeGLLive", (const char *)NativeGLLive, v115);
      gameswf::register_as_native_function((gameswf *)"NativeLaunchIGP", (const char *)NativeLaunchIGP, v116);
      gameswf::register_as_native_function((gameswf *)"NativeLaunchTwitter", (const char *)NativeLaunchTwitter, v117);
      gameswf::register_as_native_function((gameswf *)"NativeSwapEquipment", (const char *)NativeSwapEquipment, v118);
      gameswf::register_as_native_function(
        (gameswf *)"NativeMerchantGetItemsListForSlot",
        (const char *)NativeMerchantGetItemsListForSlot,
        v119);
      gameswf::register_as_native_function(
        (gameswf *)"NativeMerchantBuyItem",
        (const char *)NativeMerchantBuyItem,
        v120);
      gameswf::register_as_native_function(
        (gameswf *)"NativeMerchantSellItem",
        (const char *)NativeMerchantSellItem,
        v121);
      gameswf::register_as_native_function((gameswf *)"NativeGoToZone", (const char *)NativeGoToZone, v122);
      gameswf::register_as_native_function(
        (gameswf *)"NativeGetWorldMapLocations",
        (const char *)NativeGetWorldMapLocations,
        v123);
      gameswf::register_as_native_function((gameswf *)"NativeInvDropItem", (const char *)NativeInvDropItem, v124);
      gameswf::register_as_native_function((gameswf *)"NativeGetBuffs", (const char *)NativeGetBuffs, v125);
      gameswf::register_as_native_function((gameswf *)"NativeLockZoom", (const char *)NativeLockZoom, v126);
      gameswf::register_as_native_function((gameswf *)"NativeUnlockZoom", (const char *)NativeUnlockZoom, v127);
      gameswf::register_as_native_function((gameswf *)"NativeShowMinimap", (const char *)NativeShowMinimap, v128);
      gameswf::register_as_native_function((gameswf *)"NativeHideMinimap", (const char *)NativeHideMinimap, v129);
      gameswf::register_as_native_function(
        (gameswf *)"NativeShowMinimapLegend",
        (const char *)NativeShowMinimapLegend,
        v130);
      gameswf::register_as_native_function((gameswf *)"NativeResetMapZoom", (const char *)NativeResetMapZoom, v131);
      gameswf::register_as_native_function((gameswf *)"getCursorState", (const char *)NativeGetCursorState, v132);
      gameswf::register_as_native_function((gameswf *)"NativePinchZoom", (const char *)NativePinchZoom, v133);
      gameswf::register_as_native_function((gameswf *)"NativeResetZoom", (const char *)NativeResetZoom, v134);
      gameswf::register_as_native_function((gameswf *)"NativeShowStatusBar", (const char *)NativeShowStatusBar, v135);
      gameswf::register_as_native_function(
        (gameswf *)"NativeMultiplayerBack",
        (const char *)NativeMultiplayerBack,
        v136);
      gameswf::register_as_native_function((gameswf *)"NativeTouchToMove", (const char *)NativeTouchToMove, v137);
      gameswf::register_as_native_function((gameswf *)"NativeIPodControl", (const char *)NativeIPodControl, v138);
      gameswf::register_as_native_function(
        (gameswf *)"NativeGLXPlayerLoggedIn",
        (const char *)NativeGLXPlayerLoggedIn,
        v139);
      gameswf::register_as_native_function((gameswf *)"NativeLoginInfos", (const char *)NativeLoginInfos, v140);
      gameswf::register_as_native_function(
        (gameswf *)"NativeGLXPlayerSignin",
        (const char *)NativeGLXPlayerSignin,
        v141);
      gameswf::register_as_native_function(
        (gameswf *)"NativeSendRoomSearchRequest",
        (const char *)NativeSendRoomSearchRequest,
        v142);
      gameswf::register_as_native_function((gameswf *)"NativeOpenKeyboard", (const char *)NativeOpenKeyboard, v143);
      gameswf::register_as_native_function(
        (gameswf *)"NativeGetKeyboardLastString",
        (const char *)NativeGetKeyboardLastString,
        v144);
      gameswf::register_as_native_function((gameswf *)"NativeCloseKeyboard", (const char *)NativeCloseKeyboard, v145);
      gameswf::register_as_native_function(
        (gameswf *)"NativeChangeRolloverInputBehavior",
        (const char *)NativeChangeRolloverInputBehavior,
        v146);
      gameswf::register_as_native_function((gameswf *)"NativeWiFiCheck", (const char *)NativeWiFiCheck, v147);
      gameswf::register_as_native_function((gameswf *)"NativeBluetoothCheck", (const char *)NativeBluetoothCheck, v148);
      gameswf::register_as_native_function(
        (gameswf *)"NativeIsMultiplayerGame",
        (const char *)NativeIsMultiplayerGame,
        v149);
      gameswf::register_as_native_function(
        (gameswf *)"NativeRefreshHudManager",
        (const char *)NativeRefreshHudManager,
        v150);
      gameswf::register_as_native_function((gameswf *)"NativeKickPlayerOut", (const char *)NativeKickPlayerOut, v151);
      gameswf::register_as_native_function(
        (gameswf *)"NativeIsMultiplayerHost",
        (const char *)NativeIsMultiplayerHost,
        v152);
      gameswf::register_as_native_function(
        (gameswf *)"NativeIsGLLiveMultiplayer",
        (const char *)NativeIsGLLiveMultiplayer,
        v153);
      gameswf::register_as_native_function(
        (gameswf *)"NativeSetCurrentDifficulty",
        (const char *)NativeSetCurrentDifficulty,
        v154);
      gameswf::register_as_native_function(
        (gameswf *)"NativeShowLeaderboard",
        (const char *)NativeShowLeaderboard,
        v155);
      gameswf::register_as_native_function(
        (gameswf *)"NativeEnableGameCenter",
        (const char *)NativeEnableGameCenter,
        v156);
      gameswf::register_as_native_function((gameswf *)"NativeGCAchievements", (const char *)NativeGCAchievements, v157);
      gameswf::register_as_native_function((gameswf *)"NativeGCInvite", (const char *)NativeGCInvite, v158);
      gameswf::register_as_native_function((gameswf *)"NativeGCLeaderboards", (const char *)NativeGCLeaderboards, v159);
      gameswf::register_as_native_function((gameswf *)"NativeGCAutoMatch", (const char *)NativeGCAutoMatch, v160);
      gameswf::register_as_native_function(
        (gameswf *)"NativeStartFromGCInvite",
        (const char *)NativeStartFromGCInvite,
        v161);
      gameswf::register_as_native_function((gameswf *)"NativeInvitePlayer", (const char *)NativeInvitePlayer, v162);
      gameswf::register_as_native_function((gameswf *)"NativeSendGLInvite", (const char *)NativeSendGLInvite, v163);
      gameswf::register_as_native_function((gameswf *)"NativeAddFriend", (const char *)NativeAddFriend, v164);
      gameswf::register_as_native_function((gameswf *)"NativeUseIpodPlayer", (const char *)NativeUseIpodPlayer, v165);
      gameswf::register_as_native_function((gameswf *)"NativeIPodSetShuffle", (const char *)NativeIPodSetShuffle, v166);
      gameswf::register_as_native_function(
        (gameswf *)"NativeIPodSetPlaylist",
        (const char *)NativeIPodSetPlaylist,
        v167);
      gameswf::register_as_native_function(
        (gameswf *)"NativeGetIPodPlaylistName",
        (const char *)NativeGetIPodPlaylistName,
        v168);
      gameswf::register_as_native_function(
        (gameswf *)"NativeGetIPodPlaylistCount",
        (const char *)NativeGetIPodPlaylistCount,
        v169);
      gameswf::register_as_native_function(
        (gameswf *)"NativeUpdateOrientation",
        (const char *)NativeUpdateOrientation,
        v170);
      gameswf::register_as_native_function(
        (gameswf *)"NativeEnableBluetooth",
        (const char *)NativeEnableBluetooth,
        v171);
      gameswf::register_as_native_function(
        (gameswf *)"NativeGetCreditMovement",
        (const char *)NativeGetCreditMovement,
        v172);
      gameswf::register_as_native_function((gameswf *)"NativeSaveGame", (const char *)NativeSaveGame, v173);
      gameswf::register_as_native_function((gameswf *)"NativeReloadSkills", (const char *)NativeReloadSkills, v174);
      gameswf::register_as_native_function((gameswf *)"NativeIsKorean", (const char *)NativeIsKorean, v175);
      gameswf::register_as_native_function((gameswf *)"NativeIsOnlineMode", (const char *)NativeIsOnlineMode, v176);
      gameswf::register_as_native_function((gameswf *)"NativeSetMultitouch", (const char *)NativeSetMultitouch, v177);
      gameswf::register_as_native_function(
        (gameswf *)"NativeIsMultiplayerEnabled",
        (const char *)NativeIsMultiplayerEnabled,
        v178);
      gameswf::register_as_native_function((gameswf *)"NativeScreenIsBlack", (const char *)NativeScreenIsBlack, v179);
      gameswf::register_as_native_function((gameswf *)"NativeIsBluetooth", (const char *)NativeIsBluetooth, v180);
      gameswf::register_as_native_function(
        (gameswf *)"NativeIsJapaneseVersion",
        (const char *)NativeIsJapaneseVersion,
        v181);
      gameswf::register_as_native_function(
        (gameswf *)"NativeHasPushNotification",
        (const char *)NativeHasPushNotification,
        v182);
      gameswf::register_as_native_function(
        (gameswf *)"NativeDoWeHaveInternet",
        (const char *)NativeDoWeHaveInternet,
        v183);
      gameswf::register_as_native_function(
        (gameswf *)"NativeIsBluetoothWifiEnabled",
        (const char *)NativeIsBluetoothWifiEnabled,
        v184);
      gameswf::register_as_native_function((gameswf *)"NativeBeginCustom", (const char *)NativeBeginCustom, v185);
LABEL_21:
      v3 = *((_DWORD *)this + 47);
      goto LABEL_12;
    case 26:
      EventManager::Attach((EventManager *)dword_99F740, 5, this, 10);
      EventManager::Attach((EventManager *)dword_99F740, 4, this, 10);
      EventManager::Attach((EventManager *)dword_99F740, 7, this, 10);
      return (char *)&dword_0 + 1;
    default:
LABEL_12:
      *((_DWORD *)this + 47) = v3 + 1;
      return nullptr;
  }
}


// ===== 430ad4 MenuManager::onEvent(IEvent const*,EventManager const*) =====
int __fastcall MenuManager::onEvent(MenuManager *this, const IEvent *a2, const EventManager *a3)
{
  int v5; // r5
  int Switch; // r10
  int v8; // r8
  int v9; // r7
  _BOOL4 v10; // r3
  int v12; // r3
  int v13; // r11
  int v14; // r3
  int v15; // r3
  int v16; // r0
  int v17; // r3
  int v18; // r3
  _DWORD *v19; // r7
  int i; // r8
  MenuFX *v21; // r4
  int v22; // r3
  _DWORD *v23; // r9
  gameswf::character *Char; // r0
  int v25; // r3
  _DWORD *v26; // r9
  _BYTE v27[12]; // [sp+18h] [bp-ACh] BYREF
  _BYTE v28[4]; // [sp+24h] [bp-A0h] BYREF
  double v29; // [sp+28h] [bp-9Ch]
  _BYTE v30[4]; // [sp+30h] [bp-94h] BYREF
  double v31; // [sp+34h] [bp-90h]
  float v32[3]; // [sp+3Ch] [bp-88h] BYREF
  int v33; // [sp+48h] [bp-7Ch]
  _BYTE v34[12]; // [sp+4Ch] [bp-78h] BYREF
  double v35; // [sp+58h] [bp-6Ch]
  int v36; // [sp+60h] [bp-64h] BYREF
  int v37; // [sp+64h] [bp-60h] BYREF
  std::string v38; // [sp+74h] [bp-50h] BYREF
  std::string v39; // [sp+8Ch] [bp-38h] BYREF
  std::string v40; // [sp+A4h] [bp-20h] BYREF

  PushProfilingContext("MenuManager::onEvent");
  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string(&v40, "IsDeactivatingFlashMenus");
  if ( DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v40) )
  {
    std::string::~string(&v40);
    v5 = 0;
    goto LABEL_3;
  }
  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string(&v39, "IsDeactivatingFlashMenusUpdate");
  Switch = DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v39);
  std::string::~string(&v39);
  std::string::~string(&v40);
  if ( Switch || (*((_DWORD *)this + 43) = 0, (*((_DWORD *)this + 45) = a2) == 0) )
  {
    v5 = 0;
    goto LABEL_3;
  }
  v32[2] = 0.0;
  v33 = 0;
  v37 = 0;
  v36 = 0;
  MenuManager::GetRawCurrentEventPosition((int)this, &v37, &v36);
  v32[0] = (float)v37;
  v32[1] = (float)v36;
  if ( (*(int (__fastcall **)(const IEvent *))(*(_DWORD *)a2 + 8))(a2) == 4 )
  {
    v8 = *((_DWORD *)a2 + 3);
    v33 = *((unsigned __int8 *)a2 + 16);
    if ( (unsigned int)v8 > 3 )
      goto LABEL_8;
    goto LABEL_28;
  }
  if ( (*(int (__fastcall **)(const IEvent *))(*(_DWORD *)a2 + 8))(a2) == 5 )
  {
    v33 = 1;
    v8 = *((_DWORD *)a2 + 3);
    if ( (unsigned int)v8 > 3 )
      goto LABEL_8;
LABEL_28:
    if ( !v8 || !*((_BYTE *)this + 272) )
      goto LABEL_12;
LABEL_8:
    *((_DWORD *)this + 45) = 0;
    v5 = 1;
    goto LABEL_3;
  }
  if ( (*(int (__fastcall **)(const IEvent *))(*(_DWORD *)a2 + 8))(a2) != 7 )
    goto LABEL_11;
  v27[0] = 0;
  v27[1] = 0;
  gameswf::as_value::set_string((gameswf::as_value *)v27, "");
  v16 = *((_DWORD *)a2 + 3);
  v28[0] = 0;
  v28[1] = 2;
  v17 = *((_DWORD *)a2 + 4);
  v29 = (double)v16;
  v30[0] = 0;
  v30[1] = 2;
  v35 = (double)v17;
  v18 = *((_DWORD *)a2 + 2);
  v31 = v35;
  switch ( v18 )
  {
    case 0:
      gameswf::as_value::set_string((gameswf::as_value *)v27, "BTN_1");
      break;
    case 1:
      gameswf::as_value::set_string((gameswf::as_value *)v27, "BTN_2");
      break;
    case 2:
      gameswf::as_value::set_string((gameswf::as_value *)v27, "BTN_3");
      break;
    case 3:
      gameswf::as_value::set_string((gameswf::as_value *)v27, "BTN_4");
      break;
    case 4:
      gameswf::as_value::set_string((gameswf::as_value *)v27, "BTN_5");
      break;
    case 5:
      gameswf::as_value::set_string((gameswf::as_value *)v27, "BTN_6");
      break;
    case 6:
      gameswf::as_value::set_string((gameswf::as_value *)v27, "BTN_L1");
      break;
    case 7:
      gameswf::as_value::set_string((gameswf::as_value *)v27, "BTN_L2");
      break;
    case 8:
      gameswf::as_value::set_string((gameswf::as_value *)v27, "BTN_R1");
      break;
    case 9:
      gameswf::as_value::set_string((gameswf::as_value *)v27, "BTN_R2");
      break;
    case 10:
      gameswf::as_value::set_string((gameswf::as_value *)v27, "BTN_UP");
      break;
    case 11:
      gameswf::as_value::set_string((gameswf::as_value *)v27, "BTN_LEFT");
      break;
    case 12:
      gameswf::as_value::set_string((gameswf::as_value *)v27, "BTN_DOWN");
      break;
    case 13:
      gameswf::as_value::set_string((gameswf::as_value *)v27, "BTN_RIGHT");
      break;
    case 14:
      gameswf::as_value::set_string((gameswf::as_value *)v27, "BTN_START");
      break;
    case 15:
      gameswf::as_value::set_string((gameswf::as_value *)v27, "BTN_SELECT");
      break;
    case 19:
      gameswf::as_value::set_string((gameswf::as_value *)v27, "BTN_LEFT_CLICK");
      break;
    case 22:
      gameswf::as_value::set_string((gameswf::as_value *)v27, "BTN_RIGHT_CLICK");
      break;
    case 37:
      gameswf::as_value::set_string((gameswf::as_value *)v27, "BTN_AL_UP");
      break;
    case 38:
      gameswf::as_value::set_string((gameswf::as_value *)v27, "BTN_AL_LEFT");
      break;
    case 39:
      gameswf::as_value::set_string((gameswf::as_value *)v27, "BTN_AL_DOWN");
      break;
    case 40:
      gameswf::as_value::set_string((gameswf::as_value *)v27, "BTN_AL_RIGHT");
      break;
    case 41:
      gameswf::as_value::set_string((gameswf::as_value *)v27, "BTN_AR_UP");
      break;
    case 42:
      gameswf::as_value::set_string((gameswf::as_value *)v27, "BTN_AR_LEFT");
      break;
    case 43:
      gameswf::as_value::set_string((gameswf::as_value *)v27, "BTN_AR_DOWN");
      break;
    case 44:
      gameswf::as_value::set_string((gameswf::as_value *)v27, "BTN_AR_RIGHT");
      break;
    default:
      v34[1] = 0;
      v34[0] = 0;
      gameswf::as_value::set_string((gameswf::as_value *)v34, "");
      gameswf::as_value::operator=((gameswf::as_value *)v27);
      gameswf::as_value::drop_refs((gameswf::as_value *)v34);
      break;
  }
  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string(&v38, "isTracingMenuManager");
  DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v38);
  std::string::~string(&v38);
  PushProfilingContext("MenuManager::RefreshCache + onInputEvent");
  if ( (`guard variable for'MenuManager::onEvent(IEvent const*,EventManager const*)::s_cachedRoot & 1) == 0
    && _cxa_guard_acquire(&`guard variable for'MenuManager::onEvent(IEvent const*,EventManager const*)::s_cachedRoot) )
  {
    DebugCachedCharacter::DebugCachedCharacter((DebugCachedCharacter *)&MenuManager::onEvent(IEvent const*,EventManager const*)::s_cachedRoot);
    DebugCachedCharacter::DebugCachedCharacter((DebugCachedCharacter *)&unk_9A51EC);
    DebugCachedCharacter::DebugCachedCharacter((DebugCachedCharacter *)&unk_9A521C);
    DebugCachedCharacter::DebugCachedCharacter((DebugCachedCharacter *)&unk_9A524C);
    _cxa_guard_release(&`guard variable for'MenuManager::onEvent(IEvent const*,EventManager const*)::s_cachedRoot);
    _aeabi_atexit(0, (int)_tcf_0, (int)&_dso_handle);
  }
  v19 = &MenuManager::onEvent(IEvent const*,EventManager const*)::s_cachedRoot;
  for ( i = 0; i != 4; ++i )
  {
    v21 = *(MenuFX **)(*((_DWORD *)this + 61) + 4 * i + 308);
    if ( !v21 )
      goto LABEL_43;
    if ( v19[11] )
    {
      v22 = v19[10];
      v23 = (_DWORD *)*(unsigned __int8 *)(v22 + 4);
      if ( *(_BYTE *)(v22 + 4) )
        goto LABEL_42;
      gameswf::smart_ptr_proxy::operator=(
        (_DWORD **)&MenuManager::onEvent(IEvent const*,EventManager const*)::s_cachedRoot + 12 * i + 10,
        v23);
      v19[11] = v23;
    }
    DebugCachedCharacter::RefreshCache(
      (DebugCachedCharacter *)((char *)&MenuManager::onEvent(IEvent const*,EventManager const*)::s_cachedRoot + 48 * i),
      "_root",
      v21,
      nullptr);
    if ( v19[11] )
    {
      v25 = v19[10];
      v26 = (_DWORD *)*(unsigned __int8 *)(v25 + 4);
      if ( *(_BYTE *)(v25 + 4) )
      {
LABEL_42:
        Char = (gameswf::character *)DebugCachedCharacter::GetChar((DebugCachedCharacter *)((char *)&MenuManager::onEvent(IEvent const*,EventManager const*)::s_cachedRoot
                                                                                          + 48 * i));
        RenderFX::InvokeASCallback(v21, Char, "onInputEvent", (const gameswf::as_value *)v27, 3);
        goto LABEL_43;
      }
      gameswf::smart_ptr_proxy::operator=(
        (_DWORD **)&MenuManager::onEvent(IEvent const*,EventManager const*)::s_cachedRoot + 12 * i + 10,
        v26);
      v19[11] = v26;
    }
LABEL_43:
    v19 += 12;
  }
  PopProfilingContext("MenuManager::RefreshCache + onInputEvent");
  gameswf::as_value::drop_refs((gameswf::as_value *)v30);
  gameswf::as_value::drop_refs((gameswf::as_value *)v28);
  gameswf::as_value::drop_refs((gameswf::as_value *)v27);
LABEL_11:
  v8 = 0;
LABEL_12:
  v9 = 0;
  while ( 2 )
  {
    v12 = *((_DWORD *)this + 61);
    v13 = *(_DWORD *)(v12 + 4 * v9 + 308);
    if ( !v13 )
      goto LABEL_18;
    if ( v9 != 3 )
    {
      if ( Application::IsCurrentlyInGameView((Application *)&Singleton<Application>::s_inst) )
        goto LABEL_18;
      v10 = v9 == 2;
      if ( v8 > 0 && v9 == 2 )
        goto LABEL_18;
      goto LABEL_32;
    }
    v14 = *(_DWORD *)(v12 + 316);
    if ( (!v14 || !*(_DWORD *)(v14 + 280))
      && Application::GetCurrentLevel((Application *)&Singleton<Application>::s_inst)
      && *(_BYTE *)(Application::GetCurrentLevel((Application *)&Singleton<Application>::s_inst) + 408) )
    {
      v10 = 0;
LABEL_32:
      if ( v10 )
      {
        if ( *(_BYTE *)(GetOnline() + 5) )
        {
          if ( *(_BYTE *)(OnlineSingleton<OnlineGameState>::GetInstance() + 40) )
            goto LABEL_18;
        }
        else if ( !byte_99F7D7 )
        {
          goto LABEL_18;
        }
      }
      (*(void (__fastcall **)(int, float *, int))(*(_DWORD *)v13 + 20))(v13, v32, v8);
      v15 = *((_DWORD *)this + 43);
      if ( v15 == 1 )
        goto LABEL_26;
LABEL_18:
      if ( ++v9 == 4 )
        break;
      continue;
    }
    break;
  }
  v15 = *((_DWORD *)this + 43);
LABEL_26:
  *((_DWORD *)this + 45) = 0;
  v5 = v15;
LABEL_3:
  PopProfilingContext("MenuManager::onEvent");
  return v5;
}


// ===== 431428 DebugCachedCharacter::DebugCachedCharacter(gameswf::character *) [clone] =====
_DWORD *__fastcall DebugCachedCharacter::DebugCachedCharacter(_DWORD *a1)
{
  _DWORD *v2; // r0

  v2 = a1 + 2;
  a1[6] = v2;
  a1[7] = v2;
  a1[1] = 0;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block(v2, 0x10u);
  *(_BYTE *)a1[6] = 0;
  a1[11] = 0;
  a1[8] = 0;
  a1[9] = 0;
  a1[10] = 0;
  gameswf::weak_ptr<gameswf::character>::operator=((int)(a1 + 10));
  return a1;
}


// ===== 431478 std::allocator<std::priv::_Rb_tree_node<std::pair<MenuBase * const,bool>>>::allocate(uint,void const*) [clone] =====
void *std::allocator<std::priv::_Rb_tree_node<std::pair<MenuBase * const,bool>>>::allocate()
{
  size_t v1; // [sp+4h] [bp-8h] BYREF

  v1 = 24;
  return __ZNSt12__node_alloc11_M_allocateERj_veneer(&v1);
}


// ===== 431498 std::priv::_Rb_tree<MenuBase *,std::less<MenuBase *>,std::pair<MenuBase * const,bool>,std::priv::_Select1st<std::pair<MenuBase * const,bool>>,std::priv::_MapTraitsT<std::pair<MenuBase * const,bool>>,std::allocator<std::pair<MenuBase * const,bool>>>::_M_insert(std::priv::_Rb_tree_node_base *,std::pair<MenuBase * const,bool> const&,std::priv::_Rb_tree_node_base *,std::priv::_Rb_tree_node_base *) [clone] =====
_DWORD *__fastcall std::priv::_Rb_tree<MenuBase *,std::less<MenuBase *>,std::pair<MenuBase * const,bool>,std::priv::_Select1st<std::pair<MenuBase * const,bool>>,std::priv::_MapTraitsT<std::pair<MenuBase * const,bool>>,std::allocator<std::pair<MenuBase * const,bool>>>::_M_insert(
        _DWORD *a1,
        _DWORD *a2,
        _DWORD *a3,
        int a4,
        int a5)
{
  _DWORD *v7; // r0
  _DWORD *v8; // r6
  char v9; // r3
  _DWORD *v10; // r2
  char v11; // r3
  _DWORD *v13; // r0
  char v14; // r3

  if ( a2 == a3 )
  {
    v8 = std::allocator<std::priv::_Rb_tree_node<std::pair<MenuBase * const,bool>>>::allocate();
    v8[4] = *(_DWORD *)a4;
    v11 = *(_BYTE *)(a4 + 4);
    v8[3] = 0;
    v8[2] = 0;
    *((_BYTE *)v8 + 20) = v11;
    a2[2] = v8;
    a2[1] = v8;
    a2[3] = v8;
    v10 = a3;
  }
  else if ( a5 || *(_DWORD *)a4 < a3[4] )
  {
    v7 = std::allocator<std::priv::_Rb_tree_node<std::pair<MenuBase * const,bool>>>::allocate();
    v8 = v7;
    v7[4] = *(_DWORD *)a4;
    v9 = *(_BYTE *)(a4 + 4);
    v7[3] = 0;
    v7[2] = 0;
    *((_BYTE *)v7 + 20) = v9;
    v10 = a3;
    a3[2] = v7;
    if ( a3 == (_DWORD *)a2[2] )
      a2[2] = v7;
  }
  else
  {
    v13 = std::allocator<std::priv::_Rb_tree_node<std::pair<MenuBase * const,bool>>>::allocate();
    v8 = v13;
    v13[4] = *(_DWORD *)a4;
    v14 = *(_BYTE *)(a4 + 4);
    v13[3] = 0;
    v13[2] = 0;
    *((_BYTE *)v13 + 20) = v14;
    v10 = a3;
    a3[3] = v13;
    if ( a3 == (_DWORD *)a2[3] )
      a2[3] = v13;
  }
  v8[1] = v10;
  std::priv::_Rb_global<bool>::_Rebalance((int)v8, a2 + 1);
  ++a2[4];
  *a1 = v8;
  return a1;
}


// ===== 4315d0 std::priv::_Rb_tree<MenuBase *,std::less<MenuBase *>,std::pair<MenuBase * const,bool>,std::priv::_Select1st<std::pair<MenuBase * const,bool>>,std::priv::_MapTraitsT<std::pair<MenuBase * const,bool>>,std::allocator<std::pair<MenuBase * const,bool>>>::insert_unique(std::pair<MenuBase * const,bool> const&) =====
int __fastcall std::priv::_Rb_tree<MenuBase *,std::less<MenuBase *>,std::pair<MenuBase * const,bool>,std::priv::_Select1st<std::pair<MenuBase * const,bool>>,std::priv::_MapTraitsT<std::pair<MenuBase * const,bool>>,std::allocator<std::pair<MenuBase * const,bool>>>::insert_unique(
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
    std::priv::_Rb_tree<MenuBase *,std::less<MenuBase *>,std::pair<MenuBase * const,bool>,std::priv::_Select1st<std::pair<MenuBase * const,bool>>,std::priv::_MapTraitsT<std::pair<MenuBase * const,bool>>,std::allocator<std::pair<MenuBase * const,bool>>>::_M_insert(
      &v17,
      a2,
      v3,
      (int)a3,
      (int)v3);
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
      std::priv::_Rb_tree<MenuBase *,std::less<MenuBase *>,std::pair<MenuBase * const,bool>,std::priv::_Select1st<std::pair<MenuBase * const,bool>>,std::priv::_MapTraitsT<std::pair<MenuBase * const,bool>>,std::allocator<std::pair<MenuBase * const,bool>>>::_M_insert(
        &v16,
        a2,
        v3,
        (int)a3,
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


// ===== 431750 MenuManager::RegisterListener(MenuBase *) =====
unsigned int __fastcall MenuManager::RegisterListener(unsigned int this, MenuBase *a2)
{
  _DWORD *v2; // r2
  _DWORD *v4; // r1
  unsigned int v5; // r4
  unsigned int v6; // r12
  bool v7; // cc
  _DWORD *v8; // r12
  int v9; // [sp+0h] [bp-10h] BYREF
  MenuBase *v10; // [sp+8h] [bp-8h] BYREF
  char v11; // [sp+Ch] [bp-4h]

  v2 = *(_DWORD **)(this + 116);
  v4 = (_DWORD *)(this + 112);
  if ( !v2 )
    goto LABEL_15;
  v5 = this + 112;
  while ( 1 )
  {
    v6 = v2[4];
    v7 = (unsigned int)a2 > v6;
    v8 = (_DWORD *)((unsigned int)a2 <= v6 ? v2[2] : v2[3]);
    if ( v7 )
      v2 = (_DWORD *)v5;
    v5 = (unsigned int)v2;
    if ( !v8 )
      break;
    v2 = v8;
  }
  if ( v4 == v2 )
    goto LABEL_16;
  this = v2[4];
  if ( (unsigned int)a2 < this )
LABEL_15:
    v2 = v4;
  if ( v4 != v2 )
  {
    *((_BYTE *)v2 + 20) = 1;
    return this;
  }
LABEL_16:
  v10 = a2;
  v11 = 1;
  return std::priv::_Rb_tree<MenuBase *,std::less<MenuBase *>,std::pair<MenuBase * const,bool>,std::priv::_Select1st<std::pair<MenuBase * const,bool>>,std::priv::_MapTraitsT<std::pair<MenuBase * const,bool>>,std::allocator<std::pair<MenuBase * const,bool>>>::insert_unique(
           (int)&v9,
           v4,
           (unsigned int *)&v10);
}


// ===== 4317e8 MenuManager::PushMenu(MenuBase *) =====
MenuManager *__fastcall MenuManager::PushMenu(MenuManager *this, MenuBase *a2)
{
  MenuManager *v3; // r7
  MenuManager *v4; // r8
  MenuManager *v5; // r8
  std::string v6; // [sp+4h] [bp-20h] BYREF

  v3 = this;
  if ( a2 )
  {
    if ( !(*(int (__fastcall **)(MenuBase *))(*(_DWORD *)a2 + 60))(a2)
      || (*(int (__fastcall **)(_DWORD *, MenuBase *))(**((_DWORD **)v3 + 61) + 64))(*((_DWORD **)v3 + 61), a2) )
    {
      v4 = *((MenuManager **)a2 + 1);
      this = (MenuManager *)MenuManager::GetHUDRoot(v3);
      if ( v4 == this )
        return (MenuManager *)MenuManager::RegisterListener(v3, a2);
    }
    else
    {
      Application::ResetTouch((Application *)&Singleton<Application>::s_inst);
      TouchScreenBase::ProcessEvents((TouchScreenBase *)dword_99F74C);
      (*(void (__fastcall **)(_DWORD *, MenuBase *))(**((_DWORD **)v3 + 61) + 52))(*((_DWORD **)v3 + 61), a2);
      DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
      std::string::string((int)&v6, "isTracingMenuManager");
      DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v6);
      std::string::~string(&v6);
      v5 = *((MenuManager **)a2 + 1);
      this = (MenuManager *)MenuManager::GetHUDRoot(v3);
      if ( v5 == this )
        return (MenuManager *)MenuManager::RegisterListener(v3, a2);
    }
  }
  return this;
}


// ===== 431924 MenuManager::PushMenu(char const*) =====
MenuBase *__fastcall MenuManager::PushMenu(MenuManager *this, const char *a2)
{
  MenuBase *result; // r0

  result = (MenuBase *)MenuManager::GetMenuByName(this, a2);
  if ( result )
    return MenuManager::PushMenu(this, result);
  return result;
}


// ===== 431948 std::priv::_Deque_base<MenuFX *,std::allocator<MenuFX *>>::_M_initialize_map(uint) [clone] =====
void *__fastcall std::priv::_Deque_base<MenuFX *,std::allocator<MenuFX *>>::_M_initialize_map(_DWORD *a1)
{
  _DWORD *v2; // r5
  int v3; // r6
  void *result; // r0
  unsigned int v5; // r6
  int *v6; // r3
  int v7; // r2
  int v8; // r3
  size_t v9; // [sp+4h] [bp-4h] BYREF

  a1[9] = 8;
  v2 = std::allocator<MenuFX **>::allocate((int)(a1 + 8), 8u);
  v3 = a1[9];
  v9 = 128;
  a1[8] = v2;
  result = __ZNSt12__node_alloc11_M_allocateERj_veneer(&v9);
  v5 = (unsigned int)(v3 - 1) >> 1;
  v2[v5] = result;
  v6 = &v2[v5];
  a1[3] = v6;
  v7 = *v6;
  a1[7] = v6;
  a1[1] = v7;
  a1[2] = v7 + 128;
  v8 = *v6;
  *a1 = v7;
  a1[4] = v8;
  a1[6] = v8 + 128;
  a1[5] = v8;
  return result;
}


// ===== 4319cc MenuManager::MenuManager(void) =====
void __fastcall MenuManager::MenuManager(MenuManager *this)
{
  int v1; // r2
  void (*v3)(bool, const char *); // r1
  MultiMenuManager *v4; // r6
  int v5; // [sp+4h] [bp-7Ch] BYREF
  glitch::IReferenceCounted *(__fastcall *v6)(GameSWFUtils *, const char *, int, int); // [sp+8h] [bp-78h]
  int v7; // [sp+Ch] [bp-74h]
  int v8; // [sp+10h] [bp-70h]
  int v9; // [sp+14h] [bp-6Ch]
  int v10; // [sp+18h] [bp-68h]
  int v11; // [sp+1Ch] [bp-64h]
  char v12; // [sp+20h] [bp-60h]
  int v13; // [sp+24h] [bp-5Ch]
  std::string v14; // [sp+34h] [bp-4Ch] BYREF
  std::string v15; // [sp+4Ch] [bp-34h] BYREF
  std::string v16; // [sp+64h] [bp-1Ch] BYREF
  int v17; // [sp+7Ch] [bp-4h]

  v1 = _stack_chk_guard;
  *((_DWORD *)this + 1) = &off_9680F0;
  *(_DWORD *)this = off_9680D0;
  v17 = v1;
  DebugCachedCharacter::DebugCachedCharacter((_DWORD *)this + 8);
  *((_DWORD *)this + 22) = 0;
  *((_DWORD *)this + 21) = 0;
  *((_DWORD *)this + 20) = 0;
  *((_DWORD *)this + 23) = 0;
  *((_DWORD *)this + 24) = 0;
  *((_DWORD *)this + 25) = 0;
  *((_DWORD *)this + 26) = 0;
  *((_DWORD *)this + 27) = 0;
  *((_DWORD *)this + 29) = 0;
  *((_BYTE *)this + 112) = 0;
  *((_DWORD *)this + 31) = (char *)this + 112;
  *((_DWORD *)this + 30) = (char *)this + 112;
  *((_BYTE *)this + 196) = 1;
  *((_DWORD *)this + 32) = 0;
  *((_BYTE *)this + 136) = 0;
  *((_DWORD *)this + 43) = 0;
  *((_DWORD *)this + 44) = 0;
  *((_DWORD *)this + 47) = 0;
  *((_DWORD *)this + 48) = 0;
  *((_DWORD *)this + 51) = 0;
  *((_DWORD *)this + 52) = 0;
  *((_DWORD *)this + 53) = 0;
  *((_DWORD *)this + 54) = 0;
  *((_DWORD *)this + 55) = 0;
  *((_DWORD *)this + 56) = 0;
  *((_DWORD *)this + 57) = 0;
  *((_DWORD *)this + 58) = 0;
  *((_DWORD *)this + 59) = 0;
  *((_DWORD *)this + 60) = 0;
  std::priv::_Deque_base<MenuFX *,std::allocator<MenuFX *>>::_M_initialize_map((_DWORD *)this + 51);
  *((_DWORD *)this + 66) = -1;
  *((_DWORD *)this + 67) = 0;
  *((_BYTE *)this + 272) = 0;
  gameswf::register_log_callback((gameswf *)GameSWFUtils::gameswf_logger, v3);
  v12 = 1;
  v13 = 1065353216;
  v5 = 0;
  v6 = nullptr;
  v8 = 0;
  v9 = 0;
  v7 = 0;
  v10 = 0;
  v11 = 0;
  v5 = *(_DWORD *)(dword_99F73C + 16);
  v8 = 512;
  v6 = GameSWFUtils::SwfTextureLoader;
  v9 = 512;
  v12 = 0;
  RenderFX::Initialize(&v5);
  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string(&v16, "IsDeactivatingFlashMenus");
  DebugSwitches::SetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v16, 0);
  std::string::~string(&v16);
  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string(&v15, "IsDeactivatingFlashMenusUpdate");
  DebugSwitches::SetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v15, 0);
  std::string::~string(&v15);
  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string(&v14, "IsDeactivatingFlashMenusRender");
  DebugSwitches::SetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v14, 0);
  std::string::~string(&v14);
  v4 = (MultiMenuManager *)operator new(0x164u, 8);
  MultiMenuManager::MultiMenuManager(v4);
  *((_DWORD *)this + 61) = v4;
  *((_DWORD *)this + 65) = 0;
  *((_DWORD *)this + 62) = 0;
  *((_DWORD *)this + 63) = 0;
  *((_DWORD *)this + 64) = 0;
}


// ===== 431c38 MenuManager::MenuManager(void) =====
void __fastcall MenuManager::MenuManager(MenuManager *this)
{
  int v1; // r2
  void (*v3)(bool, const char *); // r1
  MultiMenuManager *v4; // r6
  int v5; // [sp+4h] [bp-7Ch] BYREF
  _DWORD (*v6)(GameSWFUtils *__hidden, const char *, int, int); // [sp+8h] [bp-78h]
  int v7; // [sp+Ch] [bp-74h]
  int v8; // [sp+10h] [bp-70h]
  int v9; // [sp+14h] [bp-6Ch]
  int v10; // [sp+18h] [bp-68h]
  int v11; // [sp+1Ch] [bp-64h]
  char v12; // [sp+20h] [bp-60h]
  int v13; // [sp+24h] [bp-5Ch]
  std::string v14; // [sp+34h] [bp-4Ch] BYREF
  std::string v15; // [sp+4Ch] [bp-34h] BYREF
  std::string v16; // [sp+64h] [bp-1Ch] BYREF
  int v17; // [sp+7Ch] [bp-4h]

  v1 = _stack_chk_guard;
  *((_DWORD *)this + 1) = &off_9680F0;
  *(_DWORD *)this = off_9680D0;
  v17 = v1;
  DebugCachedCharacter::DebugCachedCharacter((char *)this + 32);
  *((_DWORD *)this + 22) = 0;
  *((_DWORD *)this + 21) = 0;
  *((_DWORD *)this + 20) = 0;
  *((_DWORD *)this + 23) = 0;
  *((_DWORD *)this + 24) = 0;
  *((_DWORD *)this + 25) = 0;
  *((_DWORD *)this + 26) = 0;
  *((_DWORD *)this + 27) = 0;
  *((_DWORD *)this + 29) = 0;
  *((_BYTE *)this + 112) = 0;
  *((_DWORD *)this + 31) = (char *)this + 112;
  *((_DWORD *)this + 30) = (char *)this + 112;
  *((_BYTE *)this + 196) = 1;
  *((_DWORD *)this + 32) = 0;
  *((_BYTE *)this + 136) = 0;
  *((_DWORD *)this + 43) = 0;
  *((_DWORD *)this + 44) = 0;
  *((_DWORD *)this + 47) = 0;
  *((_DWORD *)this + 48) = 0;
  *((_DWORD *)this + 51) = 0;
  *((_DWORD *)this + 52) = 0;
  *((_DWORD *)this + 53) = 0;
  *((_DWORD *)this + 54) = 0;
  *((_DWORD *)this + 55) = 0;
  *((_DWORD *)this + 56) = 0;
  *((_DWORD *)this + 57) = 0;
  *((_DWORD *)this + 58) = 0;
  *((_DWORD *)this + 59) = 0;
  *((_DWORD *)this + 60) = 0;
  std::priv::_Deque_base<MenuFX *,std::allocator<MenuFX *>>::_M_initialize_map((char *)this + 204);
  *((_DWORD *)this + 66) = -1;
  *((_DWORD *)this + 67) = 0;
  *((_BYTE *)this + 272) = 0;
  gameswf::register_log_callback((gameswf *)GameSWFUtils::gameswf_logger, v3);
  v12 = 1;
  v13 = 1065353216;
  v5 = 0;
  v6 = nullptr;
  v8 = 0;
  v9 = 0;
  v7 = 0;
  v10 = 0;
  v11 = 0;
  v5 = *(_DWORD *)(dword_99F73C + 16);
  v8 = 512;
  v6 = GameSWFUtils::SwfTextureLoader;
  v9 = 512;
  v12 = 0;
  RenderFX::Initialize(&v5);
  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string((int)&v16, "IsDeactivatingFlashMenus");
  DebugSwitches::SetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v16, 0);
  std::string::~string(&v16);
  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string((int)&v15, "IsDeactivatingFlashMenusUpdate");
  DebugSwitches::SetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v15, 0);
  std::string::~string(&v15);
  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string((int)&v14, "IsDeactivatingFlashMenusRender");
  DebugSwitches::SetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v14, 0);
  std::string::~string(&v14);
  v4 = (MultiMenuManager *)operator new(356, 8);
  MultiMenuManager::MultiMenuManager(v4);
  *((_DWORD *)this + 61) = v4;
  *((_DWORD *)this + 65) = 0;
  *((_DWORD *)this + 62) = 0;
  *((_DWORD *)this + 63) = 0;
  *((_DWORD *)this + 64) = 0;
}


// ===== 431ea4 MenuManager::LoadMenu(int) =====
void __fastcall MenuManager::LoadMenu(MultiMenuManager **this, unsigned int a2)
{
  InfoHUDManager *v4; // r0
  RenderFX **Instance; // r0
  HUDControls *v6; // r0
  _DWORD *v7; // r0
  FlashAnimManager *inited; // r0
  FlashAnimManager *v9; // r0
  RenderFX *HUDRoot; // r0
  int v11; // r3
  MenuDebug *v12; // r0
  _DWORD *Character; // r0
  _DWORD *v14; // r5
  _DWORD *v15; // r0
  _DWORD *v16; // r5
  _DWORD *v17; // r0
  _DWORD *v18; // r5
  _DWORD *v19; // r0
  _DWORD *v20; // r5
  _DWORD *v21; // r0
  _DWORD *v22; // r5
  _DWORD *v23; // r0
  _DWORD *v24; // r5
  _DWORD *v25; // r0
  _DWORD *v26; // r5
  _DWORD *v27; // r0
  _DWORD *v28; // r5
  _DWORD *v29; // r0
  _DWORD *v30; // r5
  _DWORD *v31; // r0
  _DWORD *v32; // r5
  int v33; // r5
  int v34; // r3
  unsigned int i; // r5
  int v36; // r3
  bool v37; // zf
  MenuCharMenu_InvMain *v38; // r0
  MenuMultiplayerLobbyMulti *v39; // r5
  MenuBase *v40; // r0
  MenuEnterName *v41; // r5
  MenuBase *v42; // r0
  MenuFX **v43; // r0
  MenuWorldMap *v44; // r0
  MenuCharMenu_Map *v45; // r0
  MenuMerchant *v46; // r5
  MenuBase *v47; // r0
  MenuMainMenu *v48; // r5
  MenuBase *v49; // r0
  MenuFX **v50; // r0
  MenuFX **v51; // r0
  MenuDebug *v52; // r0
  MenuFX::State *v53; // r0
  MenuFX::State *v54; // r0

  if ( Width_Screen == 854 )
  {
    MultiMenuManager::LoadSWFFile(*(this + 61), s_SWFfileToLoad[a2 + 16], a2);
  }
  else if ( Width_Screen == 800 )
  {
    if ( HTC_DEVICES )
    {
      MultiMenuManager::LoadSWFFile(*(this + 61), s_SWFfileToLoad[a2 + 4], a2);
    }
    else if ( NO_IGP )
    {
      MultiMenuManager::LoadSWFFile(*(this + 61), s_SWFfileToLoad[a2 + 8], a2);
    }
    else
    {
      MultiMenuManager::LoadSWFFile(*(this + 61), s_SWFfileToLoad[a2 + 12], a2);
    }
  }
  else
  {
    MultiMenuManager::LoadSWFFile(*(this + 61), s_SWFfileToLoad[a2], a2);
  }
  if ( a2 > 3 )
  {
    RenderFX::SetInputBehavior(nullptr, 132);
    v11 = 0;
  }
  else
  {
    RenderFX::SetInputBehavior(*((RenderFX **)*(this + 61) + a2 + 77), 132);
    if ( a2 == 3 )
    {
      v4 = (InfoHUDManager *)RenderFX::SetInputBehavior(*((RenderFX **)*(this + 61) + 80), 4);
      Instance = (RenderFX **)InfoHUDManager::GetInstance(v4);
      Instance[351] = *((RenderFX **)*(this + 61) + 80);
      InfoHUDManager::initCachedChars(Instance);
      v7 = HUDControls::GetInstance(v6);
      v7[406] = *((_DWORD *)*(this + 61) + 80);
      inited = (FlashAnimManager *)HUDControls::initCachedChars((int)v7);
      v9 = (FlashAnimManager *)FlashAnimManager::GetInstance(inited);
      FlashAnimManager::ScanForAnims(v9, *((MenuFX **)*(this + 61) + 80));
      HUDRoot = (RenderFX *)MenuManager::GetHUDRoot((MenuManager *)this);
      RenderFX::SetEventListener(HUDRoot, (RenderFX::EventListener *)(this + 1));
    }
    v11 = *((_DWORD *)*(this + 61) + a2 + 77);
  }
  v12 = (MenuDebug *)(*(int (__fastcall **)(int, int, _DWORD))(*(_DWORD *)v11 + 16))(v11, 1, 0);
  Character = MenuDebug::GetInstance(v12);
  v14 = Character;
  if ( Character[19] )
  {
    Character = (_DWORD *)Character[18];
    if ( *((_BYTE *)Character + 4) )
      goto LABEL_10;
    v37 = (*Character)-- == 1;
    if ( v37 )
      gameswf::free_internal(Character);
    v14[19] = 0;
    v14[18] = 0;
  }
  v51 = (MenuFX **)MenuDebug::GetInstance((MenuDebug *)Character);
  MenuDebug::Init(v51);
  v53 = (MenuFX::State *)MenuDebug::GetInstance(v52);
  Character = (_DWORD *)MenuFX::State::GetCharacter(v53);
  if ( Character )
  {
    v54 = (MenuFX::State *)MenuDebug::GetInstance((MenuDebug *)Character);
    Character = (_DWORD *)MenuFX::State::GetCharacter(v54);
    *((_BYTE *)Character + 155) = 0;
  }
LABEL_10:
  v15 = MenuDebugHUD::GetInstance((MenuDebugHUD *)Character);
  v16 = v15;
  if ( v15[19] )
  {
    v15 = (_DWORD *)v15[18];
    if ( *((_BYTE *)v15 + 4) )
      goto LABEL_12;
    v37 = (*v15)-- == 1;
    if ( v37 )
      gameswf::free_internal(v15);
    v16[19] = 0;
    v16[18] = 0;
  }
  v50 = (MenuFX **)MenuDebugHUD::GetInstance((MenuDebugHUD *)v15);
  v15 = (_DWORD *)MenuDebugHUD::Init(v50);
LABEL_12:
  v17 = MenuMainMenu::GetInstance((MenuMainMenu *)v15);
  v18 = v17;
  if ( v17[19] )
  {
    v17 = (_DWORD *)v17[18];
    if ( *((_BYTE *)v17 + 4) )
      goto LABEL_14;
    v37 = (*v17)-- == 1;
    if ( v37 )
      gameswf::free_internal(v17);
    v18[19] = 0;
    v18[18] = 0;
  }
  v48 = (MenuMainMenu *)MenuManager::GetInstance((MenuManager *)v17);
  v49 = (MenuBase *)MenuMainMenu::GetInstance(v48);
  MenuManager::RegisterMenu(v48, v49);
LABEL_14:
  v19 = (_DWORD *)MenuMerchant::GetInstance((MenuMerchant *)v17);
  v20 = v19;
  if ( v19[19] )
  {
    v19 = (_DWORD *)v19[18];
    if ( *((_BYTE *)v19 + 4) )
      goto LABEL_16;
    v37 = (*v19)-- == 1;
    if ( v37 )
      gameswf::free_internal(v19);
    v20[19] = 0;
    v20[18] = 0;
  }
  v46 = (MenuMerchant *)MenuManager::GetInstance((MenuManager *)v19);
  v47 = (MenuBase *)MenuMerchant::GetInstance(v46);
  MenuManager::RegisterMenu(v46, v47);
LABEL_16:
  v21 = MenuCharacterSelect::GetInstance((MenuCharacterSelect *)v19);
  v22 = v21;
  if ( v21[19] )
  {
    v21 = (_DWORD *)v21[18];
    if ( *((_BYTE *)v21 + 4) )
      goto LABEL_18;
    v37 = (*v21)-- == 1;
    if ( v37 )
      gameswf::free_internal(v21);
    v22[19] = 0;
    v22[18] = 0;
  }
  v43 = (MenuFX **)MenuCharacterSelect::GetInstance((MenuCharacterSelect *)v21);
  v21 = (_DWORD *)MenuCharacterSelect::Init(v43);
LABEL_18:
  v23 = MenuEnterName::GetInstance((MenuEnterName *)v21);
  v24 = v23;
  if ( v23[19] )
  {
    v23 = (_DWORD *)v23[18];
    if ( *((_BYTE *)v23 + 4) )
      goto LABEL_20;
    v37 = (*v23)-- == 1;
    if ( v37 )
      gameswf::free_internal(v23);
    v24[19] = 0;
    v24[18] = 0;
  }
  v41 = (MenuEnterName *)MenuManager::GetInstance((MenuManager *)v23);
  v42 = (MenuBase *)MenuEnterName::GetInstance(v41);
  MenuManager::RegisterMenu(v41, v42);
LABEL_20:
  v25 = (_DWORD *)MenuMultiplayerLobbyMulti::GetInstance((MenuMultiplayerLobbyMulti *)v23);
  v26 = v25;
  if ( v25[19] )
  {
    v25 = (_DWORD *)v25[18];
    if ( *((_BYTE *)v25 + 4) )
      goto LABEL_22;
    v37 = (*v25)-- == 1;
    if ( v37 )
      gameswf::free_internal(v25);
    v26[19] = 0;
    v26[18] = 0;
  }
  v39 = (MenuMultiplayerLobbyMulti *)MenuManager::GetInstance((MenuManager *)v25);
  v40 = (MenuBase *)MenuMultiplayerLobbyMulti::GetInstance(v39);
  MenuManager::RegisterMenu(v39, v40);
LABEL_22:
  v27 = (_DWORD *)MenuCharMenu_InvMain::GetInstance((MenuCharMenu_InvMain *)v25);
  v28 = v27;
  if ( v27[19] )
  {
    v27 = (_DWORD *)v27[18];
    if ( *((_BYTE *)v27 + 4) )
      goto LABEL_24;
    v37 = (*v27)-- == 1;
    if ( v37 )
      gameswf::free_internal(v27);
    v28[19] = 0;
    v28[18] = 0;
  }
  v38 = (MenuCharMenu_InvMain *)MenuCharMenu_InvMain::GetInstance((MenuCharMenu_InvMain *)v27);
  v27 = (_DWORD *)MenuCharMenu_InvMain::Init(v38);
LABEL_24:
  v29 = (_DWORD *)MenuCharMenu_Map::GetInstance((MenuCharMenu_Map *)v27);
  v30 = v29;
  if ( v29[19] )
  {
    v29 = (_DWORD *)v29[18];
    if ( *((_BYTE *)v29 + 4) )
      goto LABEL_26;
    v37 = (*v29)-- == 1;
    if ( v37 )
      gameswf::free_internal(v29);
    v30[19] = 0;
    v30[18] = 0;
  }
  v45 = (MenuCharMenu_Map *)MenuCharMenu_Map::GetInstance((MenuCharMenu_Map *)v29);
  v29 = (_DWORD *)MenuCharMenu_Map::Init(v45);
LABEL_26:
  v31 = (_DWORD *)MenuWorldMap::GetInstance((MenuWorldMap *)v29);
  v32 = v31;
  if ( v31[19] )
  {
    v31 = (_DWORD *)v31[18];
    if ( *((_BYTE *)v31 + 4) )
      goto LABEL_28;
    v37 = (*v31)-- == 1;
    if ( v37 )
      gameswf::free_internal(v31);
    v32[19] = 0;
    v32[18] = 0;
  }
  v44 = (MenuWorldMap *)MenuWorldMap::GetInstance((MenuWorldMap *)v31);
  MenuWorldMap::Init(v44);
LABEL_28:
  v33 = *(this + 26) - *(this + 25);
  MenuManager::PostLoad((MenuManager *)this);
  v34 = (int)*(this + 25);
  for ( i = v33 >> 2; i < ((int)*(this + 26) - v34) >> 2; v34 = (int)*(this + 25) )
  {
    MenuBase::RegisterDragAndDrops(*(RenderFX ***)(v34 + 4 * i), nullptr);
    v36 = *((_DWORD *)*(this + 25) + i++);
    (*(void (__fastcall **)(int))(*(_DWORD *)v36 + 16))(v36);
  }
}


// ===== 4324dc MenuManager::LoadMainMenu(void) =====
int __fastcall MenuManager::LoadMainMenu(MultiMenuManager **this)
{
  MenuDebug *v2; // r0
  int Instance; // r0
  int v4; // r5
  _DWORD *v5; // r0
  int v6; // r3
  _DWORD *v7; // r5
  _DWORD *v8; // r0
  _DWORD *v9; // r5
  _DWORD *v10; // r0
  _DWORD *v11; // r5
  _DWORD *v12; // r0
  _DWORD *v13; // r5
  _DWORD *v14; // r0
  _DWORD *v15; // r5
  int v16; // r0
  int v17; // r5
  unsigned int v18; // r5
  int result; // r0
  int v20; // r3
  int v21; // r3
  bool v22; // zf
  MenuLeaderboard *v23; // r5
  MenuBase *v24; // r0
  MenuMultiplayerLobbyMulti *v25; // r5
  MenuBase *v26; // r0
  MenuEnterName *v27; // r5
  MenuBase *v28; // r0
  MenuCharacterSelect *v29; // r0
  MenuMainMenu *v30; // r5
  MenuBase *v31; // r0
  MenuDebug *v32; // r0

  switch ( Width_Screen )
  {
    case 854:
      MultiMenuManager::LoadSWFFile(*(this + 61), "data/menus/dqmenus_droid.swf", 2);
      break;
    case 960:
      MultiMenuManager::LoadSWFFile(*(this + 61), "data/menus/dqmenus.swf", 2);
      break;
    case 800:
      if ( HTC_DEVICES || !NO_IGP )
        MultiMenuManager::LoadSWFFile(*(this + 61), "data/menus/dqmenus_i9000.swf", 2);
      else
        MultiMenuManager::LoadSWFFile(*(this + 61), "data/menus/dqmenus_i9000_lg.swf", 2);
      break;
    default:
      if ( SavegameManager::getLanguage((SavegameManager *)dword_99F778) == 5 )
      {
        MultiMenuManager::LoadSWFFile(*(this + 61), "data/menus/dqmenus_Kor.swf", 2);
      }
      else if ( SavegameManager::getLanguage((SavegameManager *)dword_99F778) == 4 )
      {
        MultiMenuManager::LoadSWFFile(*(this + 61), "data/menus/dqmenus_jp.swf", 2);
      }
      else
      {
        MultiMenuManager::LoadSWFFile(*(this + 61), "data/menus/dqmenus.swf", 2);
      }
      break;
  }
  RenderFX::SetInputBehavior(*((RenderFX **)*(this + 61) + 79), 132);
  v2 = (MenuDebug *)(*(int (__fastcall **)(_DWORD, int, _DWORD))(**((_DWORD **)*(this + 61) + 79) + 16))(
                      *((_DWORD *)*(this + 61) + 79),
                      1,
                      0);
  Instance = MenuDebug::GetInstance(v2);
  v4 = Instance;
  if ( !*(_DWORD *)(Instance + 76) )
  {
LABEL_52:
    v32 = (MenuDebug *)MenuDebug::GetInstance((MenuDebug *)Instance);
    Instance = MenuDebug::Init(v32);
    goto LABEL_13;
  }
  Instance = *(_DWORD *)(Instance + 72);
  if ( !*(_BYTE *)(Instance + 4) )
  {
    v22 = (*(_DWORD *)Instance)-- == 1;
    if ( v22 )
      gameswf::free_internal((void *)Instance);
    *(_DWORD *)(v4 + 76) = 0;
    *(_DWORD *)(v4 + 72) = 0;
    goto LABEL_52;
  }
LABEL_13:
  v5 = (_DWORD *)MenuDebug::GetInstance((MenuDebug *)Instance);
  v6 = v5[19];
  v7 = v5;
  if ( v6 )
  {
    v5 = (_DWORD *)v5[18];
    if ( !*((_BYTE *)v5 + 4) )
    {
      v22 = (*v5)-- == 1;
      if ( v22 )
        gameswf::free_internal(v5);
      v6 = 0;
      v7[19] = 0;
      v7[18] = 0;
    }
  }
  *(_BYTE *)(v6 + 155) = 0;
  v8 = (_DWORD *)MenuMainMenu::GetInstance((MenuMainMenu *)v5);
  v9 = v8;
  if ( v8[19] )
  {
    v8 = (_DWORD *)v8[18];
    if ( *((_BYTE *)v8 + 4) )
      goto LABEL_17;
    v22 = (*v8)-- == 1;
    if ( v22 )
      gameswf::free_internal(v8);
    v9[19] = 0;
    v9[18] = 0;
  }
  v30 = (MenuMainMenu *)MenuManager::GetInstance((MenuManager *)v8);
  v31 = (MenuBase *)MenuMainMenu::GetInstance(v30);
  v8 = (_DWORD *)MenuManager::RegisterMenu(v30, v31);
LABEL_17:
  v10 = (_DWORD *)MenuCharacterSelect::GetInstance((MenuCharacterSelect *)v8);
  v11 = v10;
  if ( v10[19] )
  {
    v10 = (_DWORD *)v10[18];
    if ( *((_BYTE *)v10 + 4) )
      goto LABEL_19;
    v22 = (*v10)-- == 1;
    if ( v22 )
      gameswf::free_internal(v10);
    v11[19] = 0;
    v11[18] = 0;
  }
  v29 = (MenuCharacterSelect *)MenuCharacterSelect::GetInstance((MenuCharacterSelect *)v10);
  v10 = (_DWORD *)MenuCharacterSelect::Init(v29);
LABEL_19:
  v12 = (_DWORD *)MenuEnterName::GetInstance((MenuEnterName *)v10);
  v13 = v12;
  if ( v12[19] )
  {
    v12 = (_DWORD *)v12[18];
    if ( *((_BYTE *)v12 + 4) )
      goto LABEL_21;
    v22 = (*v12)-- == 1;
    if ( v22 )
      gameswf::free_internal(v12);
    v13[19] = 0;
    v13[18] = 0;
  }
  v27 = (MenuEnterName *)MenuManager::GetInstance((MenuManager *)v12);
  v28 = (MenuBase *)MenuEnterName::GetInstance(v27);
  v12 = (_DWORD *)MenuManager::RegisterMenu(v27, v28);
LABEL_21:
  v14 = (_DWORD *)MenuMultiplayerLobbyMulti::GetInstance((MenuMultiplayerLobbyMulti *)v12);
  v15 = v14;
  if ( v14[19] )
  {
    v14 = (_DWORD *)v14[18];
    if ( *((_BYTE *)v14 + 4) )
      goto LABEL_23;
    v22 = (*v14)-- == 1;
    if ( v22 )
      gameswf::free_internal(v14);
    v15[19] = 0;
    v15[18] = 0;
  }
  v25 = (MenuMultiplayerLobbyMulti *)MenuManager::GetInstance((MenuManager *)v14);
  v26 = (MenuBase *)MenuMultiplayerLobbyMulti::GetInstance(v25);
  v14 = (_DWORD *)MenuManager::RegisterMenu(v25, v26);
LABEL_23:
  v16 = MenuLeaderboard::GetInstance((MenuLeaderboard *)v14);
  v17 = v16;
  if ( !*(_DWORD *)(v16 + 76) )
  {
LABEL_32:
    v23 = (MenuLeaderboard *)MenuManager::GetInstance((MenuManager *)v16);
    v24 = (MenuBase *)MenuLeaderboard::GetInstance(v23);
    MenuManager::RegisterMenu(v23, v24);
    goto LABEL_25;
  }
  v16 = *(_DWORD *)(v16 + 72);
  if ( !*(_BYTE *)(v16 + 4) )
  {
    v22 = (*(_DWORD *)v16)-- == 1;
    if ( v22 )
      gameswf::free_internal((void *)v16);
    *(_DWORD *)(v17 + 76) = 0;
    *(_DWORD *)(v17 + 72) = 0;
    goto LABEL_32;
  }
LABEL_25:
  v18 = (*(this + 26) - *(this + 25)) >> 2;
  for ( result = MenuManager::PostLoad((MenuManager *)this);
        ;
        result = (*(int (__fastcall **)(int))(*(_DWORD *)v20 + 16))(v20) )
  {
    v21 = (int)*(this + 25);
    if ( v18 >= ((int)*(this + 26) - v21) >> 2 )
      break;
    MenuBase::RegisterDragAndDrops(*(MenuBase **)(v21 + 4 * v18), nullptr);
    v20 = *((_DWORD *)*(this + 25) + v18++);
  }
  return result;
}


// ===== 432984 glitch::core::quaternion::getMatrix(glitch::core::CMatrix4<float> &) =====
float __fastcall glitch::core::quaternion::getMatrix(float *a1, int a2)
{
  float v2; // r6
  float v4; // r0
  float v5; // r6
  float v6; // r9
  float v7; // r8
  float v8; // r10
  float v9; // r0
  float v10; // r8
  float result; // r0
  float v12; // [sp+4h] [bp-18h]
  float v13; // [sp+8h] [bp-14h]
  float v14; // [sp+Ch] [bp-10h]
  float v15; // [sp+10h] [bp-Ch]
  float v16; // [sp+14h] [bp-8h]

  v2 = *a1;
  v4 = *a1 + *a1;
  v12 = v2 * v4;
  v5 = a1[1];
  v6 = a1[2];
  v13 = v6 * (float)(v6 + v6);
  v14 = v4 * v5;
  v15 = v4 * v6;
  v7 = a1[3];
  v8 = v4 * v7;
  v16 = (float)(v5 + v5) * v6;
  v9 = (float)(v5 + v5) * v7;
  *(_BYTE *)(a2 + 64) = 0;
  v10 = (float)(v6 + v6) * v7;
  *(float *)a2 = (float)(1.0 - (float)(v5 * (float)(v5 + v5))) - v13;
  *(float *)(a2 + 4) = v14 + v10;
  *(_DWORD *)(a2 + 12) = 0;
  *(float *)(a2 + 8) = v15 - v9;
  *(float *)(a2 + 16) = v14 - v10;
  *(float *)(a2 + 20) = (float)(1.0 - v12) - v13;
  *(_DWORD *)(a2 + 28) = 0;
  *(float *)(a2 + 24) = v16 + v8;
  *(float *)(a2 + 32) = v15 + v9;
  *(float *)(a2 + 36) = v16 - v8;
  result = (float)(1.0 - (float)(v5 * (float)(v5 + v5))) - v12;
  *(float *)(a2 + 40) = result;
  *(_DWORD *)(a2 + 56) = 0;
  *(_DWORD *)(a2 + 60) = 1065353216;
  *(_DWORD *)(a2 + 44) = 0;
  *(_DWORD *)(a2 + 48) = 0;
  *(_DWORD *)(a2 + 52) = 0;
  return result;
}


// ===== 432b38 MenuMerchant::DestroyAvatarCamera(void) =====
int __fastcall MenuMerchant::DestroyAvatarCamera(MenuMerchant *this)
{
  int result; // r0

  if ( MenuMerchant::m_inventoryPaneCam )
  {
    (*(void (__fastcall **)(int))(*(_DWORD *)MenuMerchant::m_inventoryPaneCam + 104))(MenuMerchant::m_inventoryPaneCam);
    glitch::IReferenceCounted::drop((glitch::IReferenceCounted *)(MenuMerchant::m_inventoryPaneCam
                                                                + *(_DWORD *)(*(_DWORD *)MenuMerchant::m_inventoryPaneCam
                                                                            - 12)));
    MenuMerchant::m_inventoryPaneCam = 0;
    return glitch::scene::CSceneManager::setActiveCamera(
             *(glitch::scene::CSceneManager **)(dword_99F73C + 28),
             (glitch::scene::ICameraSceneNode *)MenuMerchant::m_oldCam);
  }
  return result;
}


// ===== 432bbc glitch::core::CMatrix4<float>::getRotationDegrees(void) =====
float *__fastcall glitch::core::CMatrix4<float>::getRotationDegrees(float *a1, int a2)
{
  double v4; // r8
  double v5; // kr00_8
  double v6; // r10
  double v7; // r6
  double v8; // r8
  double v9; // r6
  float v10; // r0
  float v11; // r0
  float v12; // r0

  v4 = COERCE_FLOAT(((int (*)(float))asinf)(*(float *)(a2 + 8)) + 0x80000000);
  v5 = cos(v4);
  v6 = v4 * 57.2957795;
  if ( COERCE_DOUBLE(*(_QWORD *)&v5 & 0x7FFFFFFFFFFFFFFFLL) <= 0.00000001 )
  {
    v8 = 0.0;
    v9 = atan2(COERCE_FLOAT(*(_DWORD *)(a2 + 16) + 0x80000000), *(float *)(a2 + 20)) * 57.2957795;
  }
  else
  {
    v7 = 1.0 / v5;
    v8 = atan2(*(float *)(a2 + 24) * v7, *(float *)(a2 + 40) * v7) * 57.2957795;
    v9 = atan2(*(float *)(a2 + 4) * v7, *(float *)a2 * v7) * 57.2957795;
    if ( v8 < 0.0 )
      v8 = v8 + 360.0;
  }
  if ( v6 < 0.0 )
    v6 = v6 + 360.0;
  if ( v9 < 0.0 )
    v9 = v9 + 360.0;
  v10 = v8;
  *a1 = v10;
  v11 = v6;
  a1[1] = v11;
  v12 = v9;
  a1[2] = v12;
  return a1;
}


// ===== 432e58 glitch::core::quaternion::toEulerDegree(glitch::core::vector3d<float> &) =====
float *__fastcall glitch::core::quaternion::toEulerDegree(float *a1, float *a2)
{
  float *result; // r0
  float v5; // r3
  float v6; // r1
  _DWORD v7[16]; // [sp+0h] [bp-54h] BYREF
  char v8; // [sp+40h] [bp-14h]
  float v9[4]; // [sp+44h] [bp-10h] BYREF

  LC_API_MEMSET_0(v7, 0, 0x40u);
  LC_API_MEMSET_0(v7, 0, 0x40u);
  v8 = 1;
  v7[15] = 1065353216;
  v7[0] = 1065353216;
  v7[5] = 1065353216;
  v7[10] = 1065353216;
  glitch::core::quaternion::getMatrix(a1, (int)v7);
  result = glitch::core::CMatrix4<float>::getRotationDegrees(v9, (int)v7);
  v5 = v9[2];
  v6 = v9[0];
  a2[1] = v9[1];
  *a2 = v6;
  a2[2] = v5;
  return result;
}


// ===== 432ee8 MenuMerchant::RenderCharacterPane(gameswf::render_state &,void *) =====
int __fastcall MenuMerchant::RenderCharacterPane(int a1, MenuBase *this)
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
  Character *character_660; // r5
  float *v17; // r4
  void (__fastcall *v18)(float *, float, _DWORD); // r9
  int Dt; // r0
  float v20; // r0
  RootSceneNode *v21; // r4
  void (__fastcall *v22)(RootSceneNode *, _DWORD *); // r3
  float *v23; // r0
  void (__fastcall *v24)(RootSceneNode *, _BYTE *); // r7
  _DWORD *v25; // r3
  int v26; // r3
  int *v27; // r4
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
  (*(void (__fastcall **)(int, _DWORD))(*(_DWORD *)MenuMerchant::m_inventoryPaneCam + 312))(
    MenuMerchant::m_inventoryPaneCam,
    (float)(v32 - v30) / (float)(v33 - v31));
  glitch::scene::CSceneManager::setActiveCamera(
    *(glitch::scene::CSceneManager **)(dword_99F73C + 28),
    (glitch::scene::ICameraSceneNode *)MenuMerchant::m_inventoryPaneCam);
  CurrentLevel = Application::GetCurrentLevel((Application *)&Singleton<Application>::s_inst);
  character_660 = PlayerManager::GetLocalPlayer((PlayerManager *)dword_99F76C, 0, 1)->character_660;
  if ( !character_660 )
    return (*(int (__fastcall **)(_DWORD, _DWORD *))(**(_DWORD **)(*(_DWORD *)(v7 + 204) - 4) + 12))(
             *(_DWORD *)(*(_DWORD *)(v7 + 204) - 4),
             v34);
  CharAnimator::Update((Character *)((char *)character_660 + 1180));
  v17 = *(float **)(dword_99F73C + 28);
  v18 = *(void (__fastcall **)(float *, float, _DWORD))(*(_DWORD *)v17 + 96);
  Dt = Application::GetDt((Application *)&Singleton<Application>::s_inst);
  ((void (__fastcall *)(_DWORD, _DWORD, _DWORD))v18)(v17, (float)(unsigned int)Dt, 0);
  v20 = v17[149];
  v21 = *(RootSceneNode **)(*((_DWORD *)character_660 + 182) + 8);
  RootSceneNode::PlainOnAnimate(v21, (int)v20);
  (*(void (__fastcall **)(RootSceneNode *))(*(_DWORD *)v21 + 160))(v21);
  v22 = *(void (__fastcall **)(RootSceneNode *, _DWORD *))(*(_DWORD *)v21 + 164);
  memset(v39, 0, 12);
  v22(v21, v39);
  (*(void (__fastcall **)(RootSceneNode *))(*(_DWORD *)v21 + 152))(v21);
  v38 = 0.0;
  v36 = 0.0;
  v37 = 0.0;
  v23 = (float *)(*(int (__fastcall **)(RootSceneNode *))(*(_DWORD *)v21 + 152))(v21);
  glitch::core::quaternion::toEulerDegree(v23, &v36);
  v36 = v36 * 0.017453;
  v37 = v37 * 0.017453;
  v38 = v38 * 0.017453;
  v24 = *(void (__fastcall **)(RootSceneNode *, _BYTE *))(*(_DWORD *)v21 + 156);
  glitch::core::quaternion::set((glitch::core::quaternion *)v29, v36, v37, -0.5);
  v24(v21, v29);
  (*(void (__fastcall **)(RootSceneNode *, int))(*(_DWORD *)v21 + 184))(v21, 1);
  v25 = *(_DWORD **)(dword_99F73C + 28);
  if ( v25[57] )
    (*(void (__fastcall **)(_DWORD, RootSceneNode *))(*v25 + 60))(*(_DWORD *)(dword_99F73C + 28), v21);
  (*(void (__fastcall **)(_DWORD, _DWORD *))(**(_DWORD **)(*(_DWORD *)(v7 + 204) - 4) + 12))(
    *(_DWORD *)(*(_DWORD *)(v7 + 204) - 4),
    v34);
  GameObject::SetPosition(character_660, (float *)character_660 + 88, 1);
  v26 = *((_DWORD *)character_660 + 184);
  if ( v26 )
  {
    (*(void (__fastcall **)(_DWORD))(*(_DWORD *)v26 + 8))(*((_DWORD *)character_660 + 184));
    (*(void (__fastcall **)(_DWORD))(**((_DWORD **)character_660 + 184) + 12))(*((_DWORD *)character_660 + 184));
  }
  v27 = *(int **)(CurrentLevel + 296);
  CameraTarget::SetTarget(v27, character_660, 0);
  CameraBase::SetActive((int)v27);
  (*(void (__fastcall **)(int *))(*v27 + 16))(v27);
  return VisualObject::SyncRotation(*((_DWORD *)character_660 + 182));
}


// ===== 4332b0 MenuMerchant::Hide(void) =====
DH2_PlayerInfoCharacterPrefix *__fastcall MenuMerchant::Hide(MenuMerchant *this)
{
  DH2_PlayerInfoCharacterPrefix *result; // r0
  DH2_PlayerInfoCharacterPrefix *LocalPlayer; // r0

  MenuMerchant::DestroyAvatarCamera(this);
  MenuBase::Hide((DragAndDrop **)this);
  result = PlayerManager::GetLocalPlayer((PlayerManager *)dword_99F76C, 0, 1);
  if ( result->character_660 )
  {
    LocalPlayer = PlayerManager::GetLocalPlayer((PlayerManager *)dword_99F76C, 0, 1);
    return (DH2_PlayerInfoCharacterPrefix *)Character::SG_Save(LocalPlayer->character_660);
  }
  return result;
}


// ===== 433318 MenuMerchant::CreateAvatarCamera(void) =====
void __fastcall MenuMerchant::CreateAvatarCamera(MenuMerchant *this)
{
  int v1; // r10
  Character *character_660; // r3
  int v3; // r3
  void (__fastcall *v4)(int, _DWORD *); // r3
  Character *v5; // r4
  CharStateMachine *v6; // r4
  _DWORD v7[3]; // [sp+Ch] [bp-24h] BYREF
  _DWORD v8[3]; // [sp+18h] [bp-18h] BYREF
  _DWORD v9[3]; // [sp+24h] [bp-Ch] BYREF

  if ( !MenuMerchant::m_inventoryPaneCam )
  {
    MenuMerchant::m_oldCam = *(_DWORD *)(*(_DWORD *)(dword_99F73C + 28) + 228);
    v9[1] = -1001914368;
    v8[1] = 0;
    v8[2] = 1128792064;
    v9[0] = 0;
    v9[2] = 1128792064;
    v8[0] = 0;
    v1 = operator new(908, 0);
    glitch::scene::CCameraSceneNode::CCameraSceneNode(v1, -1, v9, v8, 0);
    MenuMerchant::m_inventoryPaneCam = v1;
    (*(void (__fastcall **)(_DWORD, int))(**(_DWORD **)(*(_DWORD *)(dword_99F73C + 28) + 4) + 92))(
      *(_DWORD *)(*(_DWORD *)(dword_99F73C + 28) + 4),
      v1);
    character_660 = PlayerManager::GetLocalPlayer((PlayerManager *)dword_99F76C, 0, 1)->character_660;
    if ( character_660 )
    {
      v3 = *((_DWORD *)character_660 + 182);
      if ( v3 )
        (*(void (__fastcall **)(_DWORD, int))(**(_DWORD **)(v3 + 8) + 92))(
          *(_DWORD *)(v3 + 8),
          MenuMerchant::m_inventoryPaneCam);
    }
    glitch::IReferenceCounted::drop((glitch::IReferenceCounted *)(MenuMerchant::m_inventoryPaneCam
                                                                + *(_DWORD *)(*(_DWORD *)MenuMerchant::m_inventoryPaneCam
                                                                            - 12)));
    glitch::scene::CSceneManager::setActiveCamera(
      *(glitch::scene::CSceneManager **)(dword_99F73C + 28),
      (glitch::scene::ICameraSceneNode *)MenuMerchant::m_inventoryPaneCam);
    v4 = *(void (__fastcall **)(int, _DWORD *))(*(_DWORD *)MenuMerchant::m_inventoryPaneCam + 276);
    v7[2] = 1065353216;
    v7[1] = 0;
    v7[0] = 0;
    v4(MenuMerchant::m_inventoryPaneCam, v7);
    (*(void (__fastcall **)(int, int))(*(_DWORD *)MenuMerchant::m_inventoryPaneCam + 312))(
      MenuMerchant::m_inventoryPaneCam,
      1070954729);
    (*(void (__fastcall **)(int, int))(*(_DWORD *)MenuMerchant::m_inventoryPaneCam + 316))(
      MenuMerchant::m_inventoryPaneCam,
      1057946394);
    ++*(_DWORD *)(MenuMerchant::m_inventoryPaneCam + *(_DWORD *)(*(_DWORD *)MenuMerchant::m_inventoryPaneCam - 12) + 4);
    (*(void (__fastcall **)(int, int))(*(_DWORD *)MenuMerchant::m_inventoryPaneCam + 304))(
      MenuMerchant::m_inventoryPaneCam,
      1092616192);
    (*(void (__fastcall **)(int, int))(*(_DWORD *)MenuMerchant::m_inventoryPaneCam + 308))(
      MenuMerchant::m_inventoryPaneCam,
      1148846080);
    v5 = PlayerManager::GetLocalPlayer((PlayerManager *)dword_99F76C, 0, 1)->character_660;
    if ( v5 )
    {
      v6 = (Character *)((char *)v5 + 1276);
      if ( !CharStateMachine::SM_IsDead(v6) )
        CharStateMachine::SM_SetIdleState(v6, 0);
    }
  }
}


// ===== 433548 MenuMerchant::Update(void) =====
int __fastcall MenuMerchant::Update(MenuMerchant *this)
{
  *((_BYTE *)this + 196) = 0;
  return MenuBase::Update(this);
}


// ===== 433554 MenuMerchant::Show(void) =====
int __fastcall MenuMerchant::Show(MenuMerchant *this)
{
  MenuMerchant *v2; // r0

  v2 = (MenuMerchant *)RenderFX::RegisterDisplayCallback(
                         *((_DWORD *)this + 1),
                         "avatarpane",
                         MenuMerchant::RenderCharacterPane,
                         this);
  MenuMerchant::CreateAvatarCamera(v2);
  return MenuBase::Show(this);
}


// ===== 43359c MenuMerchant::~MenuMerchant() =====
void __fastcall MenuMerchant::~MenuMerchant(MenuMerchant *this)
{
  *(_DWORD *)this = off_968108;
  if ( MenuMerchant::m_inventoryPaneCam )
  {
    glitch::IReferenceCounted::drop((glitch::IReferenceCounted *)(MenuMerchant::m_inventoryPaneCam
                                                                + *(_DWORD *)(*(_DWORD *)MenuMerchant::m_inventoryPaneCam
                                                                            - 12)));
    MenuMerchant::m_inventoryPaneCam = 0;
  }
  MenuBase::~MenuBase(this);
}


// ===== 433604 MenuMerchant::~MenuMerchant() =====
void __fastcall MenuMerchant::~MenuMerchant(MenuMerchant *this)
{
  MenuMerchant::~MenuMerchant(this);
  CustomFree(this);
}


// ===== 433620 MenuMerchant::~MenuMerchant() =====
void __fastcall MenuMerchant::~MenuMerchant(MenuMerchant *this)
{
  *(_DWORD *)this = off_968108;
  if ( MenuMerchant::m_inventoryPaneCam )
  {
    glitch::IReferenceCounted::drop((glitch::IReferenceCounted *)(MenuMerchant::m_inventoryPaneCam
                                                                + *(_DWORD *)(*(_DWORD *)MenuMerchant::m_inventoryPaneCam
                                                                            - 12)));
    MenuMerchant::m_inventoryPaneCam = 0;
  }
  MenuBase::~MenuBase(this);
}


// ===== 433688 MenuMerchant::MenuMerchant(void) =====
void __fastcall MenuMerchant::MenuMerchant(MenuMerchant *this)
{
  MenuManager *v2; // r0
  MenuManager *Instance; // r0

  v2 = MenuBase::MenuBase(this, "menu_Merchant");
  *(_DWORD *)this = off_968108;
  Instance = (MenuManager *)MenuManager::GetInstance(v2);
  MenuManager::RegisterMenu(Instance, this);
}


// ===== 4336d4 MenuMerchant::MenuMerchant(void) =====
void __fastcall MenuMerchant::MenuMerchant(MenuMerchant *this)
{
  MenuManager *v2; // r0
  MenuManager *Instance; // r0

  MenuBase::MenuBase(this, "menu_Merchant");
  *(_DWORD *)this = off_968108;
  Instance = (MenuManager *)MenuManager::GetInstance(v2);
  MenuManager::RegisterMenu(Instance, this);
}


// ===== 433720 MenuMerchant::GetInstance(void) =====
void *__fastcall MenuMerchant::GetInstance(MenuMerchant *this)
{
  if ( (`guard variable for'MenuMerchant::GetInstance(void)::mdt & 1) == 0
    && _cxa_guard_acquire(&`guard variable for'MenuMerchant::GetInstance(void)::mdt) )
  {
    MenuMerchant::MenuMerchant((MenuMerchant *)&MenuMerchant::GetInstance(void)::mdt);
    _cxa_guard_release(&`guard variable for'MenuMerchant::GetInstance(void)::mdt);
    _aeabi_atexit((int)&MenuMerchant::GetInstance(void)::mdt, (int)MenuMerchant::~MenuMerchant, (int)&_dso_handle);
  }
  return &MenuMerchant::GetInstance(void)::mdt;
}


// ===== 4337a4 `global constructor keyed to'.._.._sources_Game_Menus_MenuMerchant.cpp =====
int `global constructor keyed to'.._.._sources_Game_Menus_MenuMerchant.cpp()
{
  int result; // r0

  result = `guard variable for'Singleton<PlayerStatManager>::s_inst;
  dword_9A5398 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9A5394 = 1056964608;
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


// ===== 433880 std::priv::_String_base<char,std::allocator<char>>::_M_swap(std::priv::_String_base<char,std::allocator<char>>&) =====
int *__fastcall std::priv::_String_base<char,std::allocator<char>>::_M_swap(int *result, int *a2)
{
  int *v2; // r5
  int *v3; // r12
  int *v4; // r4
  int *v5; // r3
  int v6; // r1
  int v7; // r2
  int v8; // r3
  int v9; // r3
  int v10; // r2
  int v11; // r3
  int v12; // r3
  int v13; // r3
  int v14; // r1
  int v15; // r2
  int v16; // r3
  int v17; // r8
  int v18; // r3
  int v19; // [sp+4h] [bp-14h]
  int v20; // [sp+8h] [bp-10h]
  int v21; // [sp+Ch] [bp-Ch]
  int v22; // [sp+10h] [bp-8h]

  v2 = result;
  v3 = a2;
  v4 = (int *)result[5];
  v5 = (int *)a2[5];
  while ( v4 == v2 )
  {
    if ( v3 == v5 )
    {
      v19 = *v4;
      v20 = v4[1];
      v21 = v4[2];
      v22 = v4[3];
      v6 = v3[1];
      v7 = v3[2];
      v8 = v3[3];
      *v4 = *v3;
      v4[1] = v6;
      v4[2] = v7;
      v4[3] = v8;
      *v3 = v19;
      v3[1] = v20;
      v3[2] = v21;
      v3[3] = v22;
      result = (int *)v3[4];
      v9 = v4[5];
      v10 = v4[4] - v9;
      v4[4] = (int)result + v9 - v3[5];
      v3[4] = (int)v3 + v10;
      v4[5] = (int)v4;
      v3[5] = (int)v3;
      return result;
    }
    v4 = v5;
    v5 = v2;
    v2 = v3;
    v3 = v5;
  }
  if ( v3 == v5 )
  {
    result = (int *)*v3;
    v14 = v3[1];
    v15 = v3[2];
    v16 = v3[3];
    v17 = *v2;
    *v2 = *v3;
    v2[1] = v14;
    v2[2] = v15;
    v2[3] = v16;
    v2[5] = (int)v2;
    v18 = v2[4];
    v2[4] = (int)v2 + v3[4] - (_DWORD)v3;
    v3[4] = v18;
    *v3 = v17;
    v3[5] = (int)v4;
  }
  else
  {
    v11 = *v2;
    *v2 = *v3;
    *v3 = v11;
    v12 = v2[5];
    v2[5] = v3[5];
    v3[5] = v12;
    v13 = v2[4];
    v2[4] = v3[4];
    v3[4] = v13;
  }
  return result;
}


// ===== 4339b8 std::vector<DialogMsg,std::allocator<DialogMsg>>::_M_clear_after_move(void) =====
void __fastcall std::vector<DialogMsg>::_M_clear_after_move(DialogMsg **a1)
{
  DialogMsg *v1; // r4
  DialogMsg *v2; // r5
  size_t v4; // r1

  v1 = a1[1];
  v2 = *a1;
  if ( v1 != *a1 )
  {
    do
    {
      v1 = (DialogMsg *)((char *)v1 - 76);
      DialogMsg::~DialogMsg(v1);
    }
    while ( v2 != v1 );
    v1 = *a1;
  }
  if ( v1 )
  {
    v4 = 4 * ((a1[2] - v1) >> 2);
    if ( v4 > 0x80 )
      CustomFree(v1);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v1, v4);
  }
}


// ===== 433a40 std::allocator<DialogMsg>::_M_allocate(uint,uint &) =====
void *__fastcall std::allocator<DialogMsg>::_M_allocate(int a1, unsigned int a2, size_t *a3)
{
  void *result; // r0
  size_t __n; // [sp+4h] [bp-4h] BYREF

  if ( a2 > 0x35E50D7 )
  {
    puts("out of memory\n");
    exit(1);
  }
  if ( !a2 )
    return nullptr;
  __n = 76 * a2;
  if ( 76 * a2 > 0x80 )
    result = CustomAlloc(76 * a2);
  else
    result = __ZNSt12__node_alloc11_M_allocateERj_veneer(&__n);
  *a3 = __n / 0x4C;
  return result;
}


// ===== 433acc AchievementMsg::AchievementMsg(std::string const&,std::string const&,int,int,int) =====
void __fastcall AchievementMsg::AchievementMsg(
        AchievementMsg *this,
        const std::string *a2,
        const std::string *a3,
        int a4,
        int a5,
        int a6)
{
  std::string::string((std::string *)this, a2);
  std::string::string((std::string *)this + 1, a3);
  *((_DWORD *)this + 12) = a4;
  *((_DWORD *)this + 13) = a5;
  *((_DWORD *)this + 14) = a6;
}


// ===== 433b08 AchievementMsg::AchievementMsg(std::string const&,std::string const&,int,int,int) =====
void __fastcall AchievementMsg::AchievementMsg(
        AchievementMsg *this,
        const std::string *a2,
        const std::string *a3,
        int a4,
        int a5,
        int a6)
{
  std::string::string((std::string *)this, a2);
  std::string::string((std::string *)this + 1, a3);
  *((_DWORD *)this + 12) = a4;
  *((_DWORD *)this + 13) = a5;
  *((_DWORD *)this + 14) = a6;
}


// ===== 433b44 CharMenuTutorialMsg::CharMenuTutorialMsg(int,std::string const&,std::string const&) =====
void __fastcall CharMenuTutorialMsg::CharMenuTutorialMsg(
        CharMenuTutorialMsg *this,
        int a2,
        const std::string *a3,
        const std::string *a4)
{
  *(_DWORD *)this = a2;
  std::string::string((std::string *)((char *)this + 4), a3);
  std::string::string((std::string *)((char *)this + 28), a4);
}


// ===== 433b70 CharMenuTutorialMsg::CharMenuTutorialMsg(int,std::string const&,std::string const&) =====
void __fastcall CharMenuTutorialMsg::CharMenuTutorialMsg(
        CharMenuTutorialMsg *this,
        int a2,
        const std::string *a3,
        const std::string *a4)
{
  *(_DWORD *)this = a2;
  std::string::string((std::string *)((char *)this + 4), a3);
  std::string::string((std::string *)((char *)this + 28), a4);
}


// ===== 433b9c DialogMsg::DialogMsg(DialogMsg const&) =====
void __fastcall DialogMsg::DialogMsg(DialogMsg *this, const DialogMsg *a2)
{
  std::string::string((std::string *)this, (const std::string *)a2);
  std::string::string((std::string *)this + 1, (const std::string *)a2 + 1);
  *((_DWORD *)this + 12) = *((_DWORD *)a2 + 12);
  std::string::string((std::string *)((char *)this + 52), (const std::string *)((char *)a2 + 52));
}


// ===== 433bd4 std::vector<DialogMsg,std::allocator<DialogMsg>>::push_back(DialogMsg const&) =====
void __fastcall std::vector<DialogMsg>::push_back(DialogMsg **a1, const DialogMsg *a2)
{
  DialogMsg *v3; // r5
  DialogMsg *v4; // r0
  unsigned int v6; // r2
  unsigned int v7; // r1
  DialogMsg *v8; // r0
  DialogMsg *v9; // r10
  DialogMsg *v10; // r8
  int v11; // r9
  DialogMsg *v12; // r9
  int v13; // r7
  int v14; // r5
  DialogMsg *v15; // r3
  size_t v16; // [sp+4h] [bp-4h] BYREF

  v3 = a1[2];
  v4 = a1[1];
  if ( v4 == v3 )
  {
    v6 = 678152731 * ((v3 - *a1) >> 2);
    if ( v6 )
      v7 = 1356305462 * ((v3 - *a1) >> 2);
    else
      v7 = 1;
    if ( v7 > 0x35E50D7 || v6 > v7 )
      v7 = 56512727;
    v16 = v7;
    v8 = (DialogMsg *)std::allocator<DialogMsg>::_M_allocate((int)(a1 + 2), v7, &v16);
    v9 = *a1;
    v10 = v8;
    v11 = 678152731 * ((v3 - *a1) >> 2);
    if ( v11 > 0 )
    {
      v13 = 678152731 * ((v3 - *a1) >> 2);
      v14 = 0;
      do
      {
        DialogMsg::DialogMsg((DialogMsg *)((char *)v10 + v14), (DialogMsg *)((char *)v9 + v14));
        --v13;
        v14 += 76;
      }
      while ( v13 );
      v12 = (DialogMsg *)((char *)v10 + 76 * v11);
    }
    else
    {
      v12 = v8;
    }
    DialogMsg::DialogMsg(v12, a2);
    std::vector<DialogMsg>::_M_clear_after_move(a1);
    v15 = (DialogMsg *)((char *)v10 + 76 * v16);
    *a1 = v10;
    a1[2] = v15;
    a1[1] = (DialogMsg *)((char *)v12 + 76);
  }
  else
  {
    DialogMsg::DialogMsg(v4, a2);
    a1[1] = (DialogMsg *)((char *)a1[1] + 76);
  }
}


// ===== 433d00 ParsePlayerName(std::string const&) =====
std::string *__fastcall ParsePlayerName(std::string *a1, const std::string *a2)
{
  int LocalPlayer; // r0
  StringManager *v5; // r6
  char *M_data; // r5
  int PlayerName; // r0

  a1->_M_finish = (char *)a1;
  a1->_M_start_of_storage._M_data = (char *)a1;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block((int)a1, 0x10u);
  *a1->_M_finish = 0;
  if ( *(_DWORD *)(PlayerManager::GetLocalPlayer((PlayerManager *)dword_99F76C, 0, 1) + 1632) )
  {
    LocalPlayer = PlayerManager::GetLocalPlayer((PlayerManager *)dword_99F76C, 0, 1);
    v5 = (StringManager *)dword_99F760;
    M_data = a2->_M_start_of_storage._M_data;
    PlayerName = Character::SG_GetPlayerName(*(Character **)(LocalPlayer + 1632));
    StringManager::parse(v5, a1, "^$", M_data, "$player", PlayerName);
  }
  else if ( a1 != a2 )
  {
    std::string::_M_assign(a1, a2->_M_start_of_storage._M_data, a2->_M_finish);
  }
  return a1;
}


// ===== 433dd8 DialogMsg::SetActorName(int) =====
void __fastcall DialogMsg::SetActorName(DialogMsg *this, int a2)
{
  std::string *v2; // r8
  char *String; // r0
  std::priv::_String_base<char,std::allocator<char> > v4; // [sp+4h] [bp-34h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v5; // [sp+1Ch] [bp-1Ch] BYREF

  if ( a2 >= 0 )
  {
    v2 = (std::string *)((char *)this + 52);
    String = (char *)StringManager::getString(
                       (StringManager *)dword_99F760,
                       *(_DWORD *)(Arrays::DialogActors::members + 20 * a2 + 16));
    std::string::string((int)&v5, String);
    ParsePlayerName((const std::string *)&v4);
    if ( v2 != &v4 )
      std::string::_M_assign(v2, v4._M_start_of_storage._M_data, v4._M_finish);
    std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v4);
    std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v5);
  }
}


// ===== 433ea8 DialogMsg::DialogMsg(std::string const&,std::string const&,int,int) =====
void __fastcall DialogMsg::DialogMsg(DialogMsg *this, const std::string *a2, const std::string *a3, int a4, int a5)
{
  ParsePlayerName((std::string *)this, a2);
  ParsePlayerName((std::string *)this + 1, a3);
  *((_DWORD *)this + 17) = (char *)this + 52;
  *((_DWORD *)this + 18) = (char *)this + 52;
  *((_DWORD *)this + 12) = a4;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block((int)this + 52, 0x10u);
  **((_BYTE **)this + 17) = 0;
  DialogMsg::SetActorName(this, a5);
}


// ===== 433f04 GetDialogMsgListById(int,std::vector<DialogMsg,std::allocator<DialogMsg>> &) =====
int __fastcall GetDialogMsgListById(int a1, int a2)
{
  int v3; // r5
  int v4; // r4
  int result; // r0
  int v6; // r5
  unsigned int v7; // r8
  char *M_data; // r3
  char *v9; // r2
  char *String; // r0
  char *v11; // r0
  char v12; // r10
  int v13; // r3
  StringManager *v14; // [sp+Ch] [bp-130h]
  std::string v16; // [sp+40h] [bp-FCh] BYREF
  std::string v17; // [sp+58h] [bp-E4h] BYREF
  int v18; // [sp+70h] [bp-CCh]
  std::string v19; // [sp+74h] [bp-C8h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v20; // [sp+8Ch] [bp-B0h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v21; // [sp+A4h] [bp-98h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v22; // [sp+BCh] [bp-80h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v23; // [sp+D4h] [bp-68h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v24; // [sp+ECh] [bp-50h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v25; // [sp+104h] [bp-38h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v26; // [sp+11Ch] [bp-20h] BYREF

  if ( Arrays::Dialogs::size <= a1 )
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
        "dialogId < (int)Arrays::Dialogs::size",
        "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Menus\\MenuMessageManager.cpp",
        126);
    }
  }
  if ( a1 < 0 )
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
        "dialogId >= 0",
        "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Menus\\MenuMessageManager.cpp",
        127);
    }
  }
  if ( (Arrays::Dialogs::size <= a1) | ((unsigned int)a1 >> 31) )
    return 0;
  v3 = 12 * a1;
  v4 = Arrays::Dialogs::members + 12 * a1;
  result = *(_DWORD *)(v4 + 4);
  if ( result )
    goto LABEL_9;
  if ( gAssertLevel == 2 )
  {
    dword_0 = 0;
    return result;
  }
  if ( gAssertLevel != 1 )
    return 0;
  fprintf(
    (FILE *)&_sF + 2,
    "ASSERT(%s) FAILED: %s:%d\n",
    "Arrays::Dialogs::members[dialogId].stepsSize > 0",
    "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Menus\\MenuMessageManager.cpp",
    133);
  v4 = Arrays::Dialogs::members + v3;
  if ( !*(_DWORD *)(Arrays::Dialogs::members + v3 + 4) )
    return 0;
LABEL_9:
  v14 = (StringManager *)dword_99F760;
  std::string::string((int)&v26, "");
  std::string::string((int)&v25, "");
  DialogMsg::DialogMsg((DialogMsg *)&v16, (const std::string *)&v26, (const std::string *)&v25, -1, -1);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v25);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v26);
  if ( *(_DWORD *)(v4 + 4) )
  {
    v6 = 0;
    v7 = 0;
    while ( 1 )
    {
      String = (char *)StringManager::getString(v14, *(_DWORD *)(*(_DWORD *)(v4 + 8) + v6 + 16));
      std::string::string((int)&v24, String);
      ParsePlayerName((const std::string *)&v23);
      std::string::_M_assign(&v16, v23._M_start_of_storage._M_data, v23._M_finish);
      std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v23);
      std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v24);
      v11 = (char *)StringManager::getString(v14, *(_DWORD *)(*(_DWORD *)(v4 + 8) + v6 + 12));
      std::string::string((int)&v22, v11);
      ParsePlayerName((const std::string *)&v21);
      std::string::_M_assign(&v17, v21._M_start_of_storage._M_data, v21._M_finish);
      std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v21);
      std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v22);
      v18 = *(_DWORD *)(*(_DWORD *)(v4 + 8) + v6 + 8);
      v12 = *(_BYTE *)(*(_DWORD *)(v4 + 8) + v6 + 4);
      if ( v19._M_finish == v19._M_start_of_storage._M_data )
        break;
      *v19._M_start_of_storage._M_data = v12;
      if ( v19._M_start_of_storage._M_data + 1 == v19._M_finish )
      {
LABEL_14:
        std::vector<DialogMsg>::push_back(a2, &v16);
        ++v7;
        v6 += 20;
        if ( *(_DWORD *)(v4 + 4) <= v7 )
          goto LABEL_18;
      }
      else
      {
        v13 = v19._M_start_of_storage._M_data + 1 - v19._M_finish;
        v19._M_start_of_storage._M_data[1] = *v19._M_finish;
        ++v7;
        v19._M_finish += v13;
        std::vector<DialogMsg>::push_back(a2, &v16);
        v6 += 20;
        if ( *(_DWORD *)(v4 + 4) <= v7 )
          goto LABEL_18;
      }
    }
    if ( (std::string *)v19._M_finish == &v19
      || (unsigned int)(v19._M_buffers._M_end_of_storage - v19._M_finish - 1) > 1 )
    {
      LC_API_MEMSET_0(v19._M_start_of_storage._M_data, v12, 0);
      std::string::append(&v19, 1 - (v19._M_finish - v19._M_start_of_storage._M_data), v12);
    }
    else
    {
      v20._M_finish = (char *)&v20;
      v20._M_start_of_storage._M_data = (char *)&v20;
      std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block((int)&v20, 2u);
      M_data = v20._M_start_of_storage._M_data;
      v9 = v20._M_start_of_storage._M_data + 1;
      *v20._M_start_of_storage._M_data = v12;
      v20._M_finish = v9;
      M_data[1] = 0;
      std::priv::_String_base<char,std::allocator<char>>::_M_swap(&v19, &v20);
      std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v20);
    }
    goto LABEL_14;
  }
LABEL_18:
  DialogMsg::~DialogMsg((DialogMsg *)&v16);
  return 1;
}


// ===== 4343d8 DialogMsg::DialogMsg(std::string const&,std::string const&,int,int) =====
void __fastcall DialogMsg::DialogMsg(DialogMsg *this, const std::string *a2, const std::string *a3, int a4, int a5)
{
  ParsePlayerName((const std::string *)this);
  ParsePlayerName((const std::string *)this + 1);
  *((_DWORD *)this + 17) = (char *)this + 52;
  *((_DWORD *)this + 18) = (char *)this + 52;
  *((_DWORD *)this + 12) = a4;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block((int)this + 52, 0x10u);
  **((_BYTE **)this + 17) = 0;
  DialogMsg::SetActorName(this, a5);
}


// ===== 434434 DialogMsg::DialogMsg(int,int,int,int) =====
void __fastcall DialogMsg::DialogMsg(DialogMsg *this, int a2, int a3, int a4, int a5)
{
  char *String; // r0
  char *v9; // r0
  std::priv::_String_base<char,std::allocator<char> > v10; // [sp+Ch] [bp-38h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v11; // [sp+24h] [bp-20h] BYREF

  String = (char *)StringManager::getString((StringManager *)dword_99F760, a2);
  std::string::string((int)&v11, String);
  ParsePlayerName((const std::string *)this);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v11);
  v9 = (char *)StringManager::getString((StringManager *)dword_99F760, a3);
  std::string::string((int)&v10, v9);
  ParsePlayerName((const std::string *)this + 1);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v10);
  *((_DWORD *)this + 17) = (char *)this + 52;
  *((_DWORD *)this + 18) = (char *)this + 52;
  *((_DWORD *)this + 12) = a4;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block((int)this + 52, 0x10u);
  **((_BYTE **)this + 17) = 0;
  DialogMsg::SetActorName(this, a5);
}


// ===== 43452c DialogMsg::DialogMsg(int,int,int,int) =====
void __fastcall DialogMsg::DialogMsg(DialogMsg *this, int a2, int a3, int a4, int a5)
{
  char *String; // r0
  char *v9; // r0
  std::priv::_String_base<char,std::allocator<char> > v10; // [sp+Ch] [bp-38h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v11; // [sp+24h] [bp-20h] BYREF

  String = (char *)StringManager::getString((StringManager *)dword_99F760, a2);
  std::string::string((int)&v11, String);
  ParsePlayerName((const std::string *)this);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v11);
  v9 = (char *)StringManager::getString((StringManager *)dword_99F760, a3);
  std::string::string((int)&v10, v9);
  ParsePlayerName((const std::string *)this + 1);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v10);
  *((_DWORD *)this + 17) = (char *)this + 52;
  *((_DWORD *)this + 18) = (char *)this + 52;
  *((_DWORD *)this + 12) = a4;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block((int)this + 52, 0x10u);
  **((_BYTE **)this + 17) = 0;
  DialogMsg::SetActorName(this, a5);
}


// ===== 434624 `global constructor keyed to'.._.._sources_Game_Menus_MenuMessageManager.cpp =====
int `global constructor keyed to'.._.._sources_Game_Menus_MenuMessageManager.cpp()
{
  int result; // r0
  int *v1; // r4
  int v2; // r0
  int v3; // r2
  void *v4; // r0
  int *v5; // r1
  int v6; // r0
  int v7; // r3
  int v8; // r6
  unsigned int v9; // r8
  int v10; // r12
  int v11; // r3
  int v12; // r6
  unsigned int v13; // r8
  int v14; // r12
  int v15; // r3
  int v16; // r6
  unsigned int v17; // r8
  int v18; // r12
  int v19; // r3
  int v20; // r6
  unsigned int v21; // r8
  int v22; // r12
  int v23; // r3
  int v24; // r6
  unsigned int v25; // r8
  int v26; // r12
  int v27; // r3
  unsigned int v28; // [sp+4h] [bp-18h]
  int v29; // [sp+8h] [bp-14h]
  size_t v30; // [sp+14h] [bp-8h] BYREF

  dword_9A53AC = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9A53A8 = 1056964608;
  DebugCachedCharacter::DebugCachedCharacter((DebugCachedCharacter *)&StatusMsg::s_NodeCachedChar);
  _aeabi_atexit(&StatusMsg::s_NodeCachedChar, DebugCachedCharacter::~DebugCachedCharacter, &_dso_handle);
  DebugCachedCharacter::DebugCachedCharacter((DebugCachedCharacter *)&OnlineStatusMsg::s_NodeCachedChar);
  _aeabi_atexit(&OnlineStatusMsg::s_NodeCachedChar, DebugCachedCharacter::~DebugCachedCharacter, &_dso_handle);
  DebugCachedCharacter::DebugCachedCharacter((DebugCachedCharacter *)&TutorialMsg::s_NodeCachedChar);
  _aeabi_atexit(&TutorialMsg::s_NodeCachedChar, DebugCachedCharacter::~DebugCachedCharacter, &_dso_handle);
  DebugCachedCharacter::DebugCachedCharacter((DebugCachedCharacter *)&DialogMsg::s_NodeCachedChar);
  _aeabi_atexit(&DialogMsg::s_NodeCachedChar, DebugCachedCharacter::~DebugCachedCharacter, &_dso_handle);
  DebugCachedCharacter::DebugCachedCharacter((DebugCachedCharacter *)&CharMenuTutorialMsg::s_NodeCachedChar);
  _aeabi_atexit(&CharMenuTutorialMsg::s_NodeCachedChar, DebugCachedCharacter::~DebugCachedCharacter, &_dso_handle);
  DebugCachedCharacter::DebugCachedCharacter((DebugCachedCharacter *)&AchievementMsg::s_NodeCachedChar);
  result = _aeabi_atexit(&AchievementMsg::s_NodeCachedChar, DebugCachedCharacter::~DebugCachedCharacter, &_dso_handle);
  if ( (`guard variable for'Singleton<PlayerStatManager>::s_inst & 1) != 0 )
  {
    if ( (`guard variable for'Singleton<Application>::s_inst & 1) != 0 )
      goto LABEL_3;
  }
  else
  {
    `guard variable for'Singleton<PlayerStatManager>::s_inst = 1;
    PlayerStatManager::PlayerStatManager((PlayerStatManager *)&Singleton<PlayerStatManager>::s_inst);
    result = _aeabi_atexit(&Singleton<PlayerStatManager>::s_inst, PlayerStatManager::~PlayerStatManager, &_dso_handle);
    if ( (`guard variable for'Singleton<Application>::s_inst & 1) != 0 )
      goto LABEL_3;
  }
  `guard variable for'Singleton<Application>::s_inst = 1;
  Application::Application((Application *)&Singleton<Application>::s_inst);
  result = _aeabi_atexit(&Singleton<Application>::s_inst, Application::~Application, &_dso_handle);
LABEL_3:
  if ( (`guard variable for'Singleton<MenuMessageManager<StatusMsg,4>>::s_inst & 1) == 0 )
  {
    `guard variable for'Singleton<MenuMessageManager<StatusMsg,4>>::s_inst = 1;
    Singleton<MenuMessageManager<StatusMsg,4>>::s_inst = (int)off_95B150;
    v1 = &dword_99FA90;
    do
    {
      *v1 = 0;
      v1[1] = 0;
      v1[2] = 0;
      v1[3] = 0;
      v1[4] = 0;
      v1[5] = 0;
      v1[6] = 0;
      v1[7] = 0;
      v1[8] = 0;
      v1[9] = 8;
      v2 = std::allocator<StatusMsg *>::allocate(v1 + 8, 8, 0);
      v3 = v1[9];
      v1[8] = v2;
      v28 = (unsigned int)(v3 - 1) >> 1;
      v29 = v2;
      v30 = 112;
      v4 = __ZNSt12__node_alloc11_M_allocateERj_veneer(&v30);
      v5 = (int *)(v29 + 4 * v28);
      *v5 = (int)v4;
      v1[3] = (int)v5;
      v6 = *v5;
      v1[7] = (int)v5;
      v1[1] = v6;
      v1[2] = v6 + 112;
      v7 = *v5;
      *v1 = v6;
      v1[6] = v7 + 112;
      v1[4] = v7;
      v1[5] = v7;
      v1 += 10;
    }
    while ( v1 != &Singleton<MenuMessageManager<OnlineStatusMsg,1>>::s_inst );
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
    v8 = std::allocator<OnlineStatusMsg *>::allocate(&dword_99FB54, &byte_8, 0);
    v30 = 112;
    dword_99FB54 = v8;
    v9 = (unsigned int)(dword_99FB58 - 1) >> 1;
    *(_DWORD *)(v8 + 4 * v9) = __ZNSt12__node_alloc11_M_allocateERj_veneer(&v30);
    dword_99FB40 = v8 + 4 * v9;
    v10 = *(_DWORD *)(v8 + 4 * v9);
    dword_99FB50 = v8 + 4 * v9;
    dword_99FB3C = v10 + 112;
    dword_99FB38 = v10;
    v11 = *(_DWORD *)(v8 + 4 * v9);
    dword_99FB4C = v11 + 112;
    dword_99FB34 = v10;
    dword_99FB44 = v11;
    dword_99FB48 = v11;
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
    v12 = std::allocator<TutorialMsg *>::allocate(&dword_99FB80, &byte_8, 0);
    v30 = 128;
    dword_99FB80 = v12;
    v13 = (unsigned int)(dword_99FB84 - 1) >> 1;
    *(_DWORD *)(v12 + 4 * v13) = __ZNSt12__node_alloc11_M_allocateERj_veneer(&v30);
    dword_99FB6C = v12 + 4 * v13;
    v14 = *(_DWORD *)(v12 + 4 * v13);
    dword_99FB7C = v12 + 4 * v13;
    dword_99FB68 = v14 + 128;
    dword_99FB64 = v14;
    v15 = *(_DWORD *)(v12 + 4 * v13);
    dword_99FB78 = v15 + 128;
    dword_99FB60 = v14;
    dword_99FB70 = v15;
    dword_99FB74 = v15;
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
    v16 = std::allocator<DialogMsg *>::allocate(&dword_99FBAC, &byte_8, 0);
    v30 = 76;
    dword_99FBAC = v16;
    v17 = (unsigned int)(dword_99FBB0 - 1) >> 1;
    *(_DWORD *)(v16 + 4 * v17) = __ZNSt12__node_alloc11_M_allocateERj_veneer(&v30);
    dword_99FB98 = v16 + 4 * v17;
    v18 = *(_DWORD *)(v16 + 4 * v17);
    dword_99FBA8 = v16 + 4 * v17;
    dword_99FB94 = v18 + 76;
    dword_99FB90 = v18;
    v19 = *(_DWORD *)(v16 + 4 * v17);
    dword_99FBA4 = v19 + 76;
    dword_99FB8C = v18;
    dword_99FB9C = v19;
    dword_99FBA0 = v19;
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
    v20 = std::allocator<CharMenuTutorialMsg *>::allocate(&dword_99FBD8, &byte_8, 0);
    v30 = 104;
    dword_99FBD8 = v20;
    v21 = (unsigned int)(dword_99FBDC - 1) >> 1;
    *(_DWORD *)(v20 + 4 * v21) = __ZNSt12__node_alloc11_M_allocateERj_veneer(&v30);
    dword_99FBC4 = v20 + 4 * v21;
    v22 = *(_DWORD *)(v20 + 4 * v21);
    dword_99FBD4 = v20 + 4 * v21;
    dword_99FBC0 = v22 + 104;
    dword_99FBBC = v22;
    v23 = *(_DWORD *)(v20 + 4 * v21);
    dword_99FBD0 = v23 + 104;
    dword_99FBB8 = v22;
    dword_99FBC8 = v23;
    dword_99FBCC = v23;
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
    v24 = std::allocator<AchievementMsg *>::allocate(&dword_99FC04, &byte_8, 0);
    v30 = 120;
    dword_99FC04 = v24;
    v25 = (unsigned int)(dword_99FC08 - 1) >> 1;
    *(_DWORD *)(v24 + 4 * v25) = __ZNSt12__node_alloc11_M_allocateERj_veneer(&v30);
    dword_99FBF0 = v24 + 4 * v25;
    v26 = *(_DWORD *)(v24 + 4 * v25);
    dword_99FC00 = v24 + 4 * v25;
    dword_99FBEC = v26 + 120;
    dword_99FBE8 = v26;
    v27 = *(_DWORD *)(v24 + 4 * v25);
    dword_99FBFC = v27 + 120;
    dword_99FBE4 = v26;
    dword_99FBF4 = v27;
    dword_99FBF8 = v27;
    return _aeabi_atexit(
             &Singleton<MenuMessageManager<AchievementMsg,1>>::s_inst,
             MenuMessageManager<AchievementMsg,1>::~MenuMessageManager,
             &_dso_handle);
  }
  return result;
}


// ===== 434dc0 MenuMinimap::InitAll(void) =====
int __fastcall MenuMinimap::InitAll(MenuMinimap *this)
{
  (*(void (__fastcall **)(MenuMinimap *))(*(_DWORD *)this + 124))(this);
  (*(void (__fastcall **)(MenuMinimap *))(*(_DWORD *)this + 112))(this);
  return (*(int (__fastcall **)(MenuMinimap *))(*(_DWORD *)this + 92))(this);
}


// ===== 434df8 MenuMinimap::DisableMapCamera(void) =====
float __fastcall MenuMinimap::DisableMapCamera(MenuMinimap *this)
{
  float result; // r0

  result = COERCE_FLOAT((*(int (__fastcall **)(MenuMinimap *))(*(_DWORD *)this + 148))(this));
  if ( result != 0.0 )
    return ZoomHandler::setCamera((ZoomHandler *)dword_99F77C, (CameraLevel *)LODWORD(result));
  return result;
}


// ===== 434e38 MenuMinimap::CreateMapCamera(void) =====
int __fastcall MenuMinimap::CreateMapCamera(int this)
{
  int v1; // r5
  CameraLevel *v2; // r6
  int v3; // r8
  int v4; // r7
  int v5; // r10
  int v6; // r2

  v1 = this;
  if ( !*(_DWORD *)(this + 224) )
  {
    v2 = (CameraLevel *)operator new(0xA8u, 0);
    CameraLevel::CameraLevel(v2);
    *(_DWORD *)(v1 + 224) = v2;
    if ( !v2 )
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
          "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Menus\\MenuMinimap.cpp",
          179);
        v2 = *(CameraLevel **)(v1 + 224);
      }
    }
    v3 = Arrays::CamAnimSetTable::size;
    if ( Arrays::CamAnimSetTable::size )
    {
      v4 = 0;
      v5 = Arrays::CamAnimSetTable::m_memberNames;
      while ( LC_API_STRCMP_0("MiniMap", *(const char **)(v5 + 4 * v4)) )
      {
        if ( ++v4 == v3 )
          goto LABEL_8;
      }
      v6 = v4;
    }
    else
    {
LABEL_8:
      v6 = -1;
    }
    CameraLevel::Load(v2, "data/3D/camera/CameraTests.bdae", v6, "PlayerCamera_Default");
    *(_BYTE *)(*(_DWORD *)(v1 + 224) + 133) = 1;
    CameraTarget::EnableDamping(*(_DWORD *)(v1 + 224), 0);
    CameraBase::SetData(*(_DWORD *)(v1 + 224), 0.42963, 1.7778, 0.0, 100000.0, 0);
    *(_DWORD *)(*(_DWORD *)(v1 + 224) + 140) = 1065353216;
    *(_DWORD *)(*(_DWORD *)(v1 + 224) + 136) = 0;
    return CameraLevel::PlayAnim(
             *(CameraLevel **)(v1 + 224),
             *(_DWORD *)(Arrays::CamAnimSetTable::members + 28 * *(_DWORD *)(*(_DWORD *)(v1 + 224) + 128) + 16),
             0,
             0);
  }
  return this;
}


// ===== 43500c MenuMinimap::RegisterDisplayCallback(void) =====
int __fastcall MenuMinimap::RegisterDisplayCallback(MenuMinimap *this)
{
  return RenderFX::RegisterDisplayCallback(*((_DWORD *)this + 1), "RenderMap", MenuMinimap::RenderMap, this);
}


// ===== 43503c MenuMinimap::RegisterToMenuManager(void) =====
void __fastcall MenuMinimap::RegisterToMenuManager(MenuMinimap *this)
{
  MenuManager *Instance; // r0

  Instance = (MenuManager *)MenuManager::GetInstance(this);
  MenuManager::RegisterMenu(Instance, this);
}


// ===== 435054 MenuMinimap::~MenuMinimap() =====
void __fastcall MenuMinimap::~MenuMinimap(MenuMinimap *this)
{
  *(_DWORD *)this = off_968160;
  HUDMinimap::~HUDMinimap(this);
}


// ===== 435088 MenuMinimap::~MenuMinimap() =====
void __fastcall MenuMinimap::~MenuMinimap(MenuMinimap *this)
{
  MenuMinimap::~MenuMinimap(this);
  CustomFree(this);
}


// ===== 4350a4 MenuMinimap::~MenuMinimap() =====
void __fastcall MenuMinimap::~MenuMinimap(MenuMinimap *this)
{
  *(_DWORD *)this = off_968160;
  HUDMinimap::~HUDMinimap(this);
}


// ===== 4350d8 MenuMinimap::MenuMinimap(void) =====
void __fastcall MenuMinimap::MenuMinimap(MenuMinimap *this)
{
  HUDMinimap::HUDMinimap(this, "menu_MapSheet");
  *(_DWORD *)this = off_968160;
}


// ===== 435118 MenuMinimap::GetInstance(void) =====
void *__fastcall MenuMinimap::GetInstance(MenuMinimap *this)
{
  if ( (`guard variable for'MenuMinimap::GetInstance(void)::mdt & 1) == 0
    && _cxa_guard_acquire(&`guard variable for'MenuMinimap::GetInstance(void)::mdt) )
  {
    MenuMinimap::MenuMinimap((MenuMinimap *)&MenuMinimap::GetInstance(void)::mdt);
    _cxa_guard_release(&`guard variable for'MenuMinimap::GetInstance(void)::mdt);
    _aeabi_atexit((int)&MenuMinimap::GetInstance(void)::mdt, (int)MenuMinimap::~MenuMinimap, (int)&_dso_handle);
  }
  return &MenuMinimap::GetInstance(void)::mdt;
}


// ===== 43519c MenuMinimap::MenuMinimap(void) =====
void __fastcall MenuMinimap::MenuMinimap(MenuMinimap *this)
{
  HUDMinimap::HUDMinimap(this, "menu_MapSheet");
  *(_DWORD *)this = off_968160;
}


// ===== 4351dc `global constructor keyed to'.._.._sources_Game_Menus_MenuMinimap.cpp =====
int `global constructor keyed to'.._.._sources_Game_Menus_MenuMinimap.cpp()
{
  int result; // r0

  result = `guard variable for'Singleton<PlayerStatManager>::s_inst;
  dword_9A5914 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9A5910 = 1056964608;
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


// ===== 4352b8 std::string::_M_range_initialize(char const*,char const*) [clone] =====
char *__fastcall std::string::_M_range_initialize(std::string *this, const char *a2, const char *a3)
{
  size_t v5; // r4
  char *result; // r0

  v5 = a2 - "IsDisablingMinimap";
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block(this, a2 - "IsDisablingMinimap" + 1);
  result = this->_M_start_of_storage._M_data;
  if ( a2 != "IsDisablingMinimap" )
    result = (char *)memcpy(result, "IsDisablingMinimap", v5) + v5;
  this->_M_finish = result;
  *result = 0;
  return result;
}


// ===== 435308 MenuMinimap::Show(void) =====
float __fastcall MenuMinimap::Show(CameraLevel **this)
{
  const char *v2; // r2
  int Switch; // r7
  float result; // r0
  std::string v5; // [sp+4h] [bp-1Ch] BYREF

  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  v5._M_finish = (char *)&v5;
  v5._M_start_of_storage._M_data = (char *)&v5;
  std::string::_M_range_initialize(&v5, "", v2);
  Switch = DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v5);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v5);
  if ( Switch )
    return COERCE_FLOAT(MenuBase::Show((MenuBase *)this));
  HUDMinimap::Show((HUDMinimap *)this);
  result = ZoomHandler::setCamera((ZoomHandler *)dword_99F77C, *(this + 56));
  *(_BYTE *)(dword_99F77C + 36) = 1;
  return result;
}


// ===== 4353e4 MenuMinimap::RenderMap(gameswf::render_state &,void *) =====
void __fastcall MenuMinimap::RenderMap(int a1, MenuBase *a2)
{
  const char *v3; // r2
  int Switch; // r8
  int CurrentLevel; // r0
  int v6; // r8
  int v7; // r3
  int v8; // r7
  RenderFX *v9; // r9
  gameswf::character *CurrentMenuContext; // r0
  gameswf::character **v11; // r0
  RenderFX *v12; // r0
  int v13; // r9
  _DWORD *v14; // r3
  GameSWFUtils *Root; // r0
  gameswf::root *v16; // r1
  float InvPixelScaleX; // r11
  GameSWFUtils *v18; // r0
  gameswf::root *v19; // r1
  int v20; // r3
  float InvPixelScaleY; // [sp+Ch] [bp-58h]
  _DWORD v22[4]; // [sp+14h] [bp-50h] BYREF
  _DWORD v23[4]; // [sp+24h] [bp-40h] BYREF
  float v24[4]; // [sp+34h] [bp-30h] BYREF
  std::string v25; // [sp+44h] [bp-20h] BYREF

  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  v25._M_finish = (char *)&v25;
  v25._M_start_of_storage._M_data = (char *)&v25;
  std::string::_M_range_initialize(&v25, "", v3);
  Switch = DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v25);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v25);
  if ( !Switch )
  {
    CurrentLevel = Application::GetCurrentLevel((Application *)&Singleton<Application>::s_inst);
    v6 = CurrentLevel;
    if ( CurrentLevel )
    {
      if ( *(_DWORD *)(CurrentLevel + 304) == 38 )
      {
        if ( a2 )
        {
          v7 = *((_DWORD *)a2 + 56);
          if ( v7 )
          {
            if ( *((_BYTE *)a2 + 196) && !*(_BYTE *)(v7 + 132) )
            {
              v8 = *(_DWORD *)(*(_DWORD *)(dword_99F73C + 28) + 652);
              if ( v8 )
                (*(void (__fastcall **)(int, int))(*(_DWORD *)v8 + 72))(v8, 1);
              (*(void (__fastcall **)(MenuBase *))(*(_DWORD *)a2 + 140))(a2);
              v9 = *((RenderFX **)a2 + 1);
              CurrentMenuContext = (gameswf::character *)MenuBase::GetCurrentMenuContext(a2);
              v11 = (gameswf::character **)RenderFX::Find(v9, "RenderMap", CurrentMenuContext);
              GameSWFUtils::GetAbsoluteBoundingRect((GameSWFUtils *)v24, v11);
              v12 = *((RenderFX **)a2 + 1);
              v13 = *(_DWORD *)(dword_99F73C + 16);
              v14 = *(_DWORD **)(*(_DWORD *)(v13 + 204) - 4);
              v23[0] = v14[5];
              v23[1] = v14[6];
              v23[2] = v14[7];
              v23[3] = v14[8];
              Root = (GameSWFUtils *)RenderFX::GetRoot(v12);
              InvPixelScaleX = GameSWFUtils::GetInvPixelScaleX(Root, v16);
              v18 = (GameSWFUtils *)RenderFX::GetRoot(*((RenderFX **)a2 + 1));
              InvPixelScaleY = GameSWFUtils::GetInvPixelScaleY(v18, v19);
              v22[3] = (int)(float)(v24[3] / InvPixelScaleY);
              v22[0] = (int)(float)(v24[0] / InvPixelScaleX);
              v22[1] = (int)(float)(v24[2] / InvPixelScaleY);
              v22[2] = (int)(float)(v24[1] / InvPixelScaleX);
              (*(void (__fastcall **)(_DWORD, _DWORD *))(**(_DWORD **)(*(_DWORD *)(v13 + 204) - 4) + 12))(
                *(_DWORD *)(*(_DWORD *)(v13 + 204) - 4),
                v22);
              *(_BYTE *)(*(_DWORD *)(dword_99F73C + 28) + 592) = 0;
              (*(void (__fastcall **)(MenuBase *, int))(*(_DWORD *)a2 + 100))(a2, v8);
              (*(void (__fastcall **)(MenuBase *, int))(*(_DWORD *)a2 + 96))(a2, v6);
              if ( v8 )
              {
                v20 = *(_DWORD *)(dword_99F73C + 28);
                if ( !*(_DWORD *)(v20 + 228) )
                  goto LABEL_15;
                (*(void (__fastcall **)(_DWORD, int))(*(_DWORD *)v20 + 60))(*(_DWORD *)(dword_99F73C + 28), v8);
              }
              v20 = *(_DWORD *)(dword_99F73C + 28);
LABEL_15:
              *(_BYTE *)(v20 + 592) = 1;
              (*(void (__fastcall **)(_DWORD, _DWORD *))(**(_DWORD **)(*(_DWORD *)(v13 + 204) - 4) + 12))(
                *(_DWORD *)(*(_DWORD *)(v13 + 204) - 4),
                v23);
              (*(void (__fastcall **)(_DWORD))(**((_DWORD **)a2 + 56) + 16))(*((_DWORD *)a2 + 56));
              (*(void (__fastcall **)(MenuBase *))(*(_DWORD *)a2 + 148))(a2);
              if ( v8 )
                (*(void (__fastcall **)(int, _DWORD))(*(_DWORD *)v8 + 72))(v8, 0);
            }
          }
        }
      }
    }
  }
}


// ===== 4356f4 `global constructor keyed to'.._.._sources_Game_Menus_MenuMultiplayerLobbyMulti.cpp =====
void `global constructor keyed to'.._.._sources_Game_Menus_MenuMultiplayerLobbyMulti.cpp()
{
  dword_9A5920 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9A591C = 1056964608;
}


// ===== 435714 MenuMultiplayerLobbyMulti::Update(void) =====
int __fastcall MenuMultiplayerLobbyMulti::Update(gameswf::character **this)
{
  RenderFX *v2; // r5

  MenuBase::Update((MenuBase *)this);
  v2 = *(this + 1);
  gameswf::weak_ptr<gameswf::character>::check_proxy((int)(this + 18));
  return RenderFX::InvokeASCallback(v2, *(this + 19), "updatePlayerList", nullptr, 0);
}


// ===== 43575c MenuMultiplayerLobbyMulti::Hide(void) =====
// attributes: thunk
int __fastcall MenuMultiplayerLobbyMulti::Hide(DragAndDrop **this)
{
  return MenuBase::Hide(this);
}


// ===== 435760 MenuMultiplayerLobbyMulti::Show(void) =====
// attributes: thunk
int __fastcall MenuMultiplayerLobbyMulti::Show(MenuBase *this)
{
  return MenuBase::Show(this);
}


// ===== 435764 MenuMultiplayerLobbyMulti::~MenuMultiplayerLobbyMulti() =====
void __fastcall MenuMultiplayerLobbyMulti::~MenuMultiplayerLobbyMulti(MenuMultiplayerLobbyMulti *this)
{
  *(_DWORD *)this = off_968208;
  MenuBase::~MenuBase(this);
}


// ===== 435798 MenuMultiplayerLobbyMulti::~MenuMultiplayerLobbyMulti() =====
void __fastcall MenuMultiplayerLobbyMulti::~MenuMultiplayerLobbyMulti(MenuMultiplayerLobbyMulti *this)
{
  MenuMultiplayerLobbyMulti::~MenuMultiplayerLobbyMulti(this);
  CustomFree(this);
}


// ===== 4357b4 MenuMultiplayerLobbyMulti::~MenuMultiplayerLobbyMulti() =====
void __fastcall MenuMultiplayerLobbyMulti::~MenuMultiplayerLobbyMulti(MenuMultiplayerLobbyMulti *this)
{
  *(_DWORD *)this = off_968208;
  MenuBase::~MenuBase(this);
}


// ===== 4357e8 MenuMultiplayerLobbyMulti::MenuMultiplayerLobbyMulti(void) =====
void __fastcall MenuMultiplayerLobbyMulti::MenuMultiplayerLobbyMulti(MenuMultiplayerLobbyMulti *this)
{
  MenuManager *v2; // r0
  MenuManager *Instance; // r0

  MenuBase::MenuBase(this, "menu_MultiplayerLobbyMulti");
  *(_DWORD *)this = off_968208;
  Instance = (MenuManager *)MenuManager::GetInstance(v2);
  MenuManager::RegisterMenu(Instance, this);
}


// ===== 435834 MenuMultiplayerLobbyMulti::MenuMultiplayerLobbyMulti(void) =====
void __fastcall MenuMultiplayerLobbyMulti::MenuMultiplayerLobbyMulti(MenuMultiplayerLobbyMulti *this)
{
  MenuManager *v2; // r0
  MenuManager *Instance; // r0

  MenuBase::MenuBase(this, "menu_MultiplayerLobbyMulti");
  *(_DWORD *)this = off_968208;
  Instance = (MenuManager *)MenuManager::GetInstance(v2);
  MenuManager::RegisterMenu(Instance, this);
}


// ===== 435880 MenuMultiplayerLobbyMulti::GetInstance(void) =====
void *__fastcall MenuMultiplayerLobbyMulti::GetInstance(MenuMultiplayerLobbyMulti *this)
{
  if ( (`guard variable for'MenuMultiplayerLobbyMulti::GetInstance(void)::mdt & 1) == 0
    && _cxa_guard_acquire(&`guard variable for'MenuMultiplayerLobbyMulti::GetInstance(void)::mdt) )
  {
    MenuMultiplayerLobbyMulti::MenuMultiplayerLobbyMulti((MenuMultiplayerLobbyMulti *)&MenuMultiplayerLobbyMulti::GetInstance(void)::mdt);
    _cxa_guard_release(&`guard variable for'MenuMultiplayerLobbyMulti::GetInstance(void)::mdt);
    _aeabi_atexit(
      (int)&MenuMultiplayerLobbyMulti::GetInstance(void)::mdt,
      (int)MenuMultiplayerLobbyMulti::~MenuMultiplayerLobbyMulti,
      (int)&_dso_handle);
  }
  return &MenuMultiplayerLobbyMulti::GetInstance(void)::mdt;
}


// ===== 435908 MenuWorldMap::RenderMap(gameswf::render_state &,void *) =====
void MenuWorldMap::RenderMap()
{
  ;
}


// ===== 43590c MenuWorldMap::DragMap(int,int) =====
int __fastcall MenuWorldMap::DragMap(MenuWorldMap *this, int a2, int a3)
{
  int v3; // r12
  float v5; // r6
  float v6; // r8
  int v7; // r5
  int v8; // r0
  int v9; // r6
  float v10; // r10
  float v11; // r1
  float v12; // r11
  float v13; // r9
  int v14; // r5
  int v15; // r0
  int v17; // [sp+4h] [bp-28h]
  float v18[4]; // [sp+8h] [bp-24h] BYREF
  _DWORD v19[5]; // [sp+18h] [bp-14h] BYREF

  v3 = *((_DWORD *)this + 60);
  *((_DWORD *)this + 61) += a3;
  *((_DWORD *)this + 60) = v3 + a2;
  GameSWFUtils::GetAbsoluteBoundingRect((GameSWFUtils *)v19, *((gameswf::character ***)this + 58));
  v5 = *(float *)v19;
  v6 = *(float *)&v19[3];
  GameSWFUtils::GetAbsoluteBoundingRect((GameSWFUtils *)v18, *((gameswf::character ***)this + 59));
  v7 = (int)v5;
  v17 = (int)v5 - (int)fabs((float)(*(float *)&v19[1] - v5) - (float)(v18[1] - v18[0]));
  v8 = (int)v6;
  v9 = *((_DWORD *)this + 60);
  v10 = *((float *)this + 3 * *((_DWORD *)this + 74) + 62);
  v11 = *(float *)&v19[2];
  v12 = v18[3];
  v13 = v18[2];
  if ( v17 <= v9 )
  {
    if ( v7 < v9 )
    {
      *((_DWORD *)this + 60) = v7;
      v9 = v7;
    }
  }
  else
  {
    *((_DWORD *)this + 60) = v17;
    v9 = v17;
  }
  v14 = *((_DWORD *)this + 61);
  if ( v8 <= v14 )
  {
    v15 = (int)(float)((float)((int)fabs((float)(v6 - v11) - (float)(v12 - v13)) + (int)v6) * v10);
    if ( v15 < v14 )
    {
      *((_DWORD *)this + 61) = v15;
      v14 = v15;
    }
  }
  else
  {
    *((_DWORD *)this + 61) = v8;
    v14 = (int)v6;
  }
  return RenderFX::SetPosition(*((RenderFX **)this + 1), *((gameswf::character **)this + 59), v9, v14);
}


// ===== 435a5c MenuWorldMap::InputHandler::drag(bool,int,int) =====
void __fastcall MenuWorldMap::InputHandler::drag(MenuWorldMap **this, int a2, int a3, int a4)
{
  if ( (`guard variable for'MenuWorldMap::InputHandler::drag(bool,int,int)::displacement & 1) == 0
    && _cxa_guard_acquire(&`guard variable for'MenuWorldMap::InputHandler::drag(bool,int,int)::displacement) )
  {
    dword_9A59F4 = 0;
    MenuWorldMap::InputHandler::drag(bool,int,int)::displacement = 0;
    _cxa_guard_release(&`guard variable for'MenuWorldMap::InputHandler::drag(bool,int,int)::displacement);
  }
  if ( !a2 )
    MenuWorldMap::DragMap(
      *(this + 8),
      a3 - MenuWorldMap::InputHandler::drag(bool,int,int)::displacement,
      a4 - dword_9A59F4);
  MenuWorldMap::InputHandler::drag(bool,int,int)::displacement = a3;
  dword_9A59F4 = a4;
}


// ===== 435ae8 MenuWorldMap::ZoomMap(float) =====
int __fastcall MenuWorldMap::ZoomMap(MenuWorldMap *this, float a2)
{
  float v3; // r6
  float v4; // r0
  float v5; // r5
  float v6; // r8
  int result; // r0
  float v8; // r7
  float v9; // r10
  int *v10; // lr
  float v11; // r5
  float v12; // r6
  int v13; // r0
  int v14; // r1
  int v15; // r2
  int v16; // r3
  int v17; // r1
  float v18; // r0
  float v19; // r10
  _DWORD v20[6]; // [sp+0h] [bp-48h] BYREF
  float v21; // [sp+18h] [bp-30h] BYREF
  float v22; // [sp+1Ch] [bp-2Ch]
  float v23; // [sp+20h] [bp-28h]
  float v24; // [sp+24h] [bp-24h]
  float v25[4]; // [sp+28h] [bp-20h] BYREF
  _DWORD v26[4]; // [sp+38h] [bp-10h] BYREF

  v3 = *((float *)this + 76);
  v5 = *((float *)this + 77);
  v4 = v3 + (float)(a2 * *((float *)this + 79));
  v6 = v4;
  if ( v3 != v5 || (result = v4 <= v5, v6 > v5) )
  {
    v8 = *((float *)this + 78);
    if ( v3 != v8 || (result = v6 >= v8, v6 < v8) )
    {
      if ( v6 >= v5 )
        v5 = v6;
      if ( v8 < v5 )
        v5 = *((float *)this + 78);
      *((float *)this + 76) = v5;
      GameSWFUtils::GetAbsoluteBoundingRect((GameSWFUtils *)v26, *((gameswf::character **)this + 59));
      v9 = *((float *)this + 76);
      v10 = *(int **)(*((_DWORD *)this + 59) + 76);
      v11 = *((float *)this + 3 * *((_DWORD *)this + 74) + 62) * *(float *)&v26[3];
      v12 = *(float *)v26;
      v13 = *v10;
      v14 = v10[1];
      v15 = v10[2];
      v16 = v10[3];
      v10 += 4;
      v20[0] = v13;
      v20[1] = v14;
      v20[2] = v15;
      v20[3] = v16;
      v17 = v10[1];
      v20[4] = *v10;
      v20[5] = v17;
      v18 = COERCE_FLOAT(gameswf::matrix::get_rotation((gameswf::matrix *)v20));
      gameswf::matrix::set_scale_rotation((gameswf::matrix *)v20, v9, v9, v18);
      gameswf::character::set_matrix(*((gameswf::character **)this + 59), (const gameswf::matrix *)v20);
      GameSWFUtils::GetAbsoluteBoundingRect((GameSWFUtils *)v25, *((gameswf::character **)this + 59));
      v19 = *((float *)this + 3 * *((_DWORD *)this + 74) + 62) * v25[3];
      GameSWFUtils::GetAbsoluteBoundingRect((GameSWFUtils *)&v21, *((gameswf::character **)this + 58));
      return MenuWorldMap::DragMap(
               this,
               (int)(float)((float)((float)((float)((float)(v22 - v21) * 0.5) + v21)
                                  - (float)((float)((float)((float)((float)((float)(v22 - v21) * 0.5) + v21) - v12)
                                                  / (float)(*(float *)&v26[1] - v12))
                                          * (float)(v25[1] - v25[0])))
                          - v12),
               (int)(float)((float)((float)(v23 + (float)((float)(v24 - v23) * 0.5))
                                  - (float)((float)((float)((float)(v23 + (float)((float)(v24 - v23) * 0.5)) - v11)
                                                  / (float)(v11 - *(float *)&v26[2]))
                                          * (float)(v19 - v25[2])))
                          - v11));
    }
  }
  return result;
}


// ===== 435d74 MenuWorldMap::InputHandler::zoom(float) =====
int __fastcall MenuWorldMap::InputHandler::zoom(MenuWorldMap **this, float a2)
{
  return MenuWorldMap::ZoomMap(*(this + 8), a2);
}


// ===== 435d7c MenuWorldMap::InputHandler::onEvent(glitch::SEvent const&) =====
char *__fastcall MenuWorldMap::InputHandler::onEvent(MenuWorldMap **a1, int a2)
{
  char *result; // r0

  if ( !*(_DWORD *)a2 )
    return nullptr;
  switch ( *(_DWORD *)(a2 + 20) )
  {
    case 0:
      MenuWorldMap::InputHandler::onEvent(glitch::SEvent const&)::is_dragging = 1;
      MenuWorldMap::InputHandler::drag(a1, 1, *(_DWORD *)(a2 + 8), *(_DWORD *)(a2 + 12));
      return (_BYTE *)(&dword_0 + 1);
    case 3:
      MenuWorldMap::InputHandler::onEvent(glitch::SEvent const&)::is_dragging = 0;
      return (char *)&dword_0 + 1;
    case 6:
      if ( !MenuWorldMap::InputHandler::onEvent(glitch::SEvent const&)::is_dragging )
        goto LABEL_5;
      MenuWorldMap::InputHandler::drag(a1, 0, *(_DWORD *)(a2 + 8), *(_DWORD *)(a2 + 12));
      result = (_BYTE *)(&dword_0 + 1);
      break;
    case 7:
      MenuWorldMap::InputHandler::zoom(a1, *(float *)(a2 + 16));
LABEL_5:
      result = (char *)&dword_0 + 1;
      break;
    default:
      return nullptr;
  }
  return result;
}


// ===== 435e50 MenuWorldMap::Hide(void) =====
int __fastcall MenuWorldMap::Hide(DragAndDrop **this)
{
  IEventReceiver *v1; // r8
  int CurrentLevel; // r8
  int *v4; // r5
  GameObject *character_660; // r1
  bool v6; // zf

  v1 = (IEventReceiver *)(this + 50);
  EventManager::Detach((EventManager *)dword_99F740, 4, (IEventReceiver *)(this + 50));
  EventManager::Detach((EventManager *)dword_99F740, 5, v1);
  CurrentLevel = Application::GetCurrentLevel((Application *)&Singleton<Application>::s_inst);
  if ( CurrentLevel )
  {
    v4 = *(int **)(CurrentLevel + 296);
    character_660 = PlayerManager::GetLocalPlayer((PlayerManager *)dword_99F76C, 0, 1)->character_660;
    v6 = v4 == nullptr;
    if ( v4 )
      v6 = character_660 == nullptr;
    if ( !v6 )
    {
      CameraTarget::SetTarget(v4, character_660, 0);
      CameraBase::SetActive((int)v4);
      (*(void (__fastcall **)(int *))(*v4 + 16))(v4);
    }
  }
  else
  {
    PlayerManager::GetLocalPlayer((PlayerManager *)dword_99F76C, 0, 1);
    v4 = nullptr;
  }
  ZoomHandler::setCamera((ZoomHandler *)dword_99F77C, (CameraLevel *)v4);
  return MenuBase::Hide(this);
}


// ===== 435f24 std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_reserve(uint) =====
void __fastcall std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_reserve(
        _DWORD *a1,
        size_t a2)
{
  _BYTE *v4; // r0
  int v5; // r1
  _BYTE *v6; // r6
  int v7; // r2
  _BYTE *v8; // r7
  int i; // r7
  _DWORD *v10; // r0

  v4 = GlitchAlloc(a2, 0);
  v5 = a1[5];
  v6 = v4;
  v7 = a1[4] - v5;
  if ( v7 > 0 )
  {
    for ( i = 0; i != v7; ++i )
      v4[i] = *(_BYTE *)(v5 + i);
    v8 = &v4[i];
  }
  else
  {
    v8 = v4;
  }
  *v8 = 0;
  v10 = (_DWORD *)a1[5];
  if ( v10 != a1 && v10 )
    GlitchFree(v10);
  a1[5] = v6;
  *a1 = &v6[a2];
  a1[4] = v8;
}


// ===== 435fa8 std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::push_back(char) =====
void __fastcall std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::push_back(
        _DWORD *a1,
        _DWORD *a2)
{
  _DWORD *v2; // r3
  char v3; // r5
  bool v5; // zf
  int v6; // r3
  size_t size; // r0

  v2 = (_DWORD *)a1[5];
  v3 = (char)a2;
  v5 = v2 == a1;
  if ( v2 != a1 )
    a2 = (_DWORD *)*a1;
  v6 = a1[4];
  if ( v5 )
    a2 = a1 + 4;
  if ( (char *)a2 - v6 == (char *)&dword_0 + 1 )
  {
    size = std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_compute_next_size(
             (int)a1,
             1u);
    std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_reserve(
      a1,
      size);
    v6 = a1[4];
  }
  *(_BYTE *)(v6 + 1) = 0;
  *(_BYTE *)a1[4]++ = v3;
}


// ===== 436010 `global constructor keyed to'.._.._sources_Game_Menus_MenuWorldMap.cpp =====
int `global constructor keyed to'.._.._sources_Game_Menus_MenuWorldMap.cpp()
{
  int result; // r0

  result = `guard variable for'Singleton<PlayerStatManager>::s_inst;
  dword_9A5A04 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9A5A00 = 1056964608;
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


// ===== 4360ec MenuWorldMap::Init(void) =====
int __fastcall MenuWorldMap::Init(RenderFX **this)
{
  MenuManager *Instance; // r0
  RenderFX *v3; // r5
  gameswf::character *CurrentMenuContext; // r0
  RenderFX *v5; // r5
  gameswf::character *v6; // r0
  gameswf::character **v7; // r0
  MenuWorldMap *v8; // r5
  int i; // r6
  int v10; // r11
  _DWORD *v11; // r2
  char *v12; // r3
  char v13; // r1
  const char *v14; // r11
  gameswf::character *v15; // r0
  gameswf::character **v16; // r1
  RenderFX *v18; // r0
  _BYTE *v19; // r1
  RenderFX *v20; // r3
  int v21; // r2
  char *v22; // r11
  int j; // r2
  _BYTE *v24; // r11
  RenderFX *v25; // [sp+0h] [bp-64h]
  RenderFX *v26; // [sp+0h] [bp-64h]
  float v27; // [sp+4h] [bp-60h]
  float v28; // [sp+18h] [bp-4Ch]
  size_t size; // [sp+1Ch] [bp-48h]
  char v30[8]; // [sp+24h] [bp-40h] BYREF
  float v31; // [sp+2Ch] [bp-38h]
  char v32[8]; // [sp+34h] [bp-30h] BYREF
  float v33; // [sp+3Ch] [bp-28h]
  float v34; // [sp+40h] [bp-24h]
  _DWORD v35[4]; // [sp+44h] [bp-20h] BYREF
  _BYTE *v36; // [sp+54h] [bp-10h] BYREF
  void *p; // [sp+58h] [bp-Ch]

  Instance = (MenuManager *)MenuManager::GetInstance((MenuManager *)this);
  MenuManager::RegisterMenu(Instance, (MenuBase *)this);
  v3 = *(this + 1);
  if ( v3 )
  {
    CurrentMenuContext = (gameswf::character *)MenuBase::GetCurrentMenuContext((MenuBase *)this);
    *(this + 58) = (RenderFX *)RenderFX::Find(v3, "WorldMapLimit", CurrentMenuContext);
    v5 = *(this + 1);
    v6 = (gameswf::character *)MenuBase::GetCurrentMenuContext((MenuBase *)this);
    v7 = (gameswf::character **)RenderFX::Find(v5, "MapButtons", v6);
    *(this + 59) = (RenderFX *)v7;
    GameSWFUtils::GetAbsoluteBoundingRect((GameSWFUtils *)v32, v7);
    v28 = v34;
    v27 = v33;
    v8 = (MenuWorldMap *)this;
    for ( i = 1; i != 5; ++i )
    {
      v10 = 0;
      v11 = v35;
      v36 = v35;
      p = v35;
      LOBYTE(v35[0]) = 0;
      if ( (unsigned int)((char *)&v36 - (char *)v35) > 8 )
      {
        v12 = "pLimit";
        do
        {
          v13 = *(v12++ - 1);
          *((_BYTE *)v11 + 1) = v13;
          v11 = (_DWORD *)((char *)v11 + 1);
        }
        while ( v12 != (char *)&unk_8CB771 );
        v36[8] = 0;
        *v36 = 77;
        v36 += 8;
      }
      else
      {
        size = std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_compute_next_size(
                 (int)v35,
                 8u);
        v18 = (RenderFX *)GlitchAlloc(size, 0);
        v19 = p;
        v20 = v18;
        v21 = v36 - (_BYTE *)p;
        if ( v36 - (_BYTE *)p > 0 )
        {
          do
          {
            *((_BYTE *)v18 + v10) = v19[v10];
            ++v10;
          }
          while ( v10 != v21 );
          v22 = (char *)v18 + v10;
        }
        else
        {
          v22 = (char *)v18;
        }
        for ( j = 0; j != 8; ++j )
          v22[j] = aMaplimit[j];
        v22[8] = 0;
        v24 = v22 + 8;
        if ( p != v35 && p )
        {
          v26 = v18;
          GlitchFree(p);
          v20 = v26;
        }
        v36 = v24;
        p = v20;
        v35[0] = (char *)v20 + size;
      }
      std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::push_back(
        v35,
        (_DWORD *)(char)i);
      v14 = (const char *)p;
      v25 = *(this + 1);
      v15 = (gameswf::character *)MenuBase::GetCurrentMenuContext((MenuBase *)this);
      v16 = (gameswf::character **)RenderFX::Find(v25, v14, v15);
      if ( v16 )
      {
        GameSWFUtils::GetAbsoluteBoundingRect((GameSWFUtils *)v30, v16);
        *((float *)v8 + 62) = 1.0 - fabs((float)(v31 - v27) / (float)(v28 - v27));
      }
      else
      {
        *((_DWORD *)v8 + 62) = 1065353216;
      }
      *((_DWORD *)v8 + 64) = -1;
      *((_DWORD *)v8 + 63) = -1;
      if ( p != v35 && p )
        GlitchFree(p);
      v8 = (MenuWorldMap *)((char *)v8 + 12);
    }
    *(this + 66) = *(RenderFX **)(Arrays::WorldMapLockers::members + 8);
    *(this + 67) = *(RenderFX **)(Arrays::WorldMapLockers::members + 4);
    *(this + 69) = *(RenderFX **)(Arrays::WorldMapLockers::members + 20);
    *(this + 70) = *(RenderFX **)(Arrays::WorldMapLockers::members + 16);
    *(this + 72) = *(RenderFX **)(Arrays::WorldMapLockers::members + 32);
    *(this + 73) = *(RenderFX **)(Arrays::WorldMapLockers::members + 28);
  }
  return 16556;
}


// ===== 43641c MenuWorldMap::MenuWorldMap(void) =====
void __fastcall MenuWorldMap::MenuWorldMap(MenuWorldMap *this)
{
  int v2; // r2
  char *v3; // r0
  char *v4; // r3

  MenuBase::MenuBase(this, "menu_FastTravel");
  *((_DWORD *)this + 49) = off_9682B8;
  *((_DWORD *)this + 50) = off_9682D0;
  *(_DWORD *)this = off_968260;
  *((_DWORD *)this + 52) = 0;
  *((_BYTE *)this + 204) = 0;
  *((_DWORD *)this + 54) = (char *)this + 204;
  *((_DWORD *)this + 53) = (char *)this + 204;
  v2 = 0;
  *((_DWORD *)this + 55) = 0;
  *((_DWORD *)this + 57) = this;
  *((_DWORD *)this + 60) = 0;
  *((_DWORD *)this + 61) = 0;
  v3 = (char *)this + 248;
  do
  {
    *(_DWORD *)&v3[v2] = 0;
    v4 = &v3[v2];
    v2 += 12;
    *((_DWORD *)v4 + 2) = 0;
    *((_DWORD *)v4 + 1) = 0;
  }
  while ( v2 != 48 );
  *((_DWORD *)this + 78) = 1069547520;
  *((_BYTE *)this + 300) = 0;
  *((_DWORD *)this + 77) = 1065353216;
  *((_DWORD *)this + 79) = 1006632960;
  *((_DWORD *)this + 74) = 0;
  *((_DWORD *)this + 76) = 1065353216;
  MenuWorldMap::Init((RenderFX **)this);
}


// ===== 4364f8 MenuWorldMap::GetInstance(void) =====
void *__fastcall MenuWorldMap::GetInstance(MenuWorldMap *this)
{
  if ( (`guard variable for'MenuWorldMap::GetInstance(void)::instance & 1) == 0
    && _cxa_guard_acquire(&`guard variable for'MenuWorldMap::GetInstance(void)::instance) )
  {
    MenuWorldMap::MenuWorldMap((MenuWorldMap *)&MenuWorldMap::GetInstance(void)::instance);
    _cxa_guard_release(&`guard variable for'MenuWorldMap::GetInstance(void)::instance);
    _aeabi_atexit((int)&MenuWorldMap::GetInstance(void)::instance, (int)MenuWorldMap::~MenuWorldMap, (int)&_dso_handle);
  }
  return &MenuWorldMap::GetInstance(void)::instance;
}


// ===== 436580 MenuWorldMap::MenuWorldMap(void) =====
void __fastcall MenuWorldMap::MenuWorldMap(MenuWorldMap *this)
{
  int v2; // r2
  char *v3; // r0
  char *v4; // r3

  MenuBase::MenuBase(this, "menu_FastTravel");
  *((_DWORD *)this + 49) = off_9682B8;
  *((_DWORD *)this + 50) = off_9682D0;
  *(_DWORD *)this = off_968260;
  *((_DWORD *)this + 52) = 0;
  *((_BYTE *)this + 204) = 0;
  *((_DWORD *)this + 54) = (char *)this + 204;
  *((_DWORD *)this + 53) = (char *)this + 204;
  v2 = 0;
  *((_DWORD *)this + 55) = 0;
  *((_DWORD *)this + 57) = this;
  *((_DWORD *)this + 60) = 0;
  *((_DWORD *)this + 61) = 0;
  v3 = (char *)this + 248;
  do
  {
    *(_DWORD *)&v3[v2] = 0;
    v4 = &v3[v2];
    v2 += 12;
    *((_DWORD *)v4 + 2) = 0;
    *((_DWORD *)v4 + 1) = 0;
  }
  while ( v2 != 48 );
  *((_DWORD *)this + 78) = 1069547520;
  *((_BYTE *)this + 300) = 0;
  *((_DWORD *)this + 77) = 1065353216;
  *((_DWORD *)this + 79) = 1006632960;
  *((_DWORD *)this + 74) = 0;
  *((_DWORD *)this + 76) = 1065353216;
  MenuWorldMap::Init((RenderFX **)this);
}


// ===== 43665c std::allocator<std::priv::_Rb_tree_node<std::pair<long const,MenuWorldMap::InputHandler::TouchData>>>::allocate(uint,void const*) [clone] =====
void *std::allocator<std::priv::_Rb_tree_node<std::pair<long const,MenuWorldMap::InputHandler::TouchData>>>::allocate()
{
  size_t v1; // [sp+4h] [bp-8h] BYREF

  v1 = 28;
  return __ZNSt12__node_alloc11_M_allocateERj_veneer(&v1);
}


// ===== 43667c std::priv::_Rb_tree<long,std::less<long>,std::pair<long const,MenuWorldMap::InputHandler::TouchData>,std::priv::_Select1st<std::pair<long const,MenuWorldMap::InputHandler::TouchData>>,std::priv::_MapTraitsT<std::pair<long const,MenuWorldMap::InputHandler::TouchData>>,std::allocator<std::pair<long const,MenuWorldMap::InputHandler::TouchData>>>::_M_insert(std::priv::_Rb_tree_node_base *,std::pair<long const,MenuWorldMap::InputHandler::TouchData> const&,std::priv::_Rb_tree_node_base *,std::priv::_Rb_tree_node_base *) =====
_DWORD *__fastcall std::priv::_Rb_tree<long,std::less<long>,std::pair<long const,MenuWorldMap::InputHandler::TouchData>,std::priv::_Select1st<std::pair<long const,MenuWorldMap::InputHandler::TouchData>>,std::priv::_MapTraitsT<std::pair<long const,MenuWorldMap::InputHandler::TouchData>>,std::allocator<std::pair<long const,MenuWorldMap::InputHandler::TouchData>>>::_M_insert(
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
    v11 = std::allocator<std::priv::_Rb_tree_node<std::pair<long const,MenuWorldMap::InputHandler::TouchData>>>::allocate();
    v11[4] = *a4;
    v11[5] = a4[1];
    v16 = a4[2];
    v11[3] = 0;
    v11[2] = 0;
    v11[6] = v16;
    a2[2] = v11;
    a2[1] = v11;
    a2[3] = v11;
  }
  else if ( a6 || !a5 && *a4 >= a3[4] )
  {
    v10 = std::allocator<std::priv::_Rb_tree_node<std::pair<long const,MenuWorldMap::InputHandler::TouchData>>>::allocate();
    v11 = v10;
    v10[4] = *a4;
    v10[5] = a4[1];
    v12 = a4[2];
    v10[3] = 0;
    v10[2] = 0;
    v10[6] = v12;
    a3[3] = v10;
    if ( a3 == (_DWORD *)a2[3] )
      a2[3] = v10;
  }
  else
  {
    v14 = std::allocator<std::priv::_Rb_tree_node<std::pair<long const,MenuWorldMap::InputHandler::TouchData>>>::allocate();
    v11 = v14;
    v14[4] = *a4;
    v14[5] = a4[1];
    v15 = a4[2];
    v14[3] = 0;
    v14[2] = 0;
    v14[6] = v15;
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


// ===== 4367b8 std::priv::_Rb_tree<long,std::less<long>,std::pair<long const,MenuWorldMap::InputHandler::TouchData>,std::priv::_Select1st<std::pair<long const,MenuWorldMap::InputHandler::TouchData>>,std::priv::_MapTraitsT<std::pair<long const,MenuWorldMap::InputHandler::TouchData>>,std::allocator<std::pair<long const,MenuWorldMap::InputHandler::TouchData>>>::insert_unique(std::pair<long const,MenuWorldMap::InputHandler::TouchData> const&) =====
int __fastcall std::priv::_Rb_tree<long,std::less<long>,std::pair<long const,MenuWorldMap::InputHandler::TouchData>,std::priv::_Select1st<std::pair<long const,MenuWorldMap::InputHandler::TouchData>>,std::priv::_MapTraitsT<std::pair<long const,MenuWorldMap::InputHandler::TouchData>>,std::allocator<std::pair<long const,MenuWorldMap::InputHandler::TouchData>>>::insert_unique(
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
    std::priv::_Rb_tree<long,std::less<long>,std::pair<long const,MenuWorldMap::InputHandler::TouchData>,std::priv::_Select1st<std::pair<long const,MenuWorldMap::InputHandler::TouchData>>,std::priv::_MapTraitsT<std::pair<long const,MenuWorldMap::InputHandler::TouchData>>,std::allocator<std::pair<long const,MenuWorldMap::InputHandler::TouchData>>>::_M_insert(
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
      std::priv::_Rb_tree<long,std::less<long>,std::pair<long const,MenuWorldMap::InputHandler::TouchData>,std::priv::_Select1st<std::pair<long const,MenuWorldMap::InputHandler::TouchData>>,std::priv::_MapTraitsT<std::pair<long const,MenuWorldMap::InputHandler::TouchData>>,std::allocator<std::pair<long const,MenuWorldMap::InputHandler::TouchData>>>::_M_insert(
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


// ===== 436940 std::priv::_Rb_tree<long,std::less<long>,std::pair<long const,MenuWorldMap::InputHandler::TouchData>,std::priv::_Select1st<std::pair<long const,MenuWorldMap::InputHandler::TouchData>>,std::priv::_MapTraitsT<std::pair<long const,MenuWorldMap::InputHandler::TouchData>>,std::allocator<std::pair<long const,MenuWorldMap::InputHandler::TouchData>>>::insert_unique(std::priv::_Rb_tree_iterator<std::pair<long const,MenuWorldMap::InputHandler::TouchData>,std::priv::_MapTraitsT<std::pair<long const,MenuWorldMap::InputHandler::TouchData>>>,std::pair<long const,MenuWorldMap::InputHandler::TouchData> const&) =====
_DWORD *__fastcall std::priv::_Rb_tree<long,std::less<long>,std::pair<long const,MenuWorldMap::InputHandler::TouchData>,std::priv::_Select1st<std::pair<long const,MenuWorldMap::InputHandler::TouchData>>,std::priv::_MapTraitsT<std::pair<long const,MenuWorldMap::InputHandler::TouchData>>,std::allocator<std::pair<long const,MenuWorldMap::InputHandler::TouchData>>>::insert_unique(
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
      std::priv::_Rb_tree<long,std::less<long>,std::pair<long const,MenuWorldMap::InputHandler::TouchData>,std::priv::_Select1st<std::pair<long const,MenuWorldMap::InputHandler::TouchData>>,std::priv::_MapTraitsT<std::pair<long const,MenuWorldMap::InputHandler::TouchData>>,std::allocator<std::pair<long const,MenuWorldMap::InputHandler::TouchData>>>::insert_unique(
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
      std::priv::_Rb_tree<long,std::less<long>,std::pair<long const,MenuWorldMap::InputHandler::TouchData>,std::priv::_Select1st<std::pair<long const,MenuWorldMap::InputHandler::TouchData>>,std::priv::_MapTraitsT<std::pair<long const,MenuWorldMap::InputHandler::TouchData>>,std::allocator<std::pair<long const,MenuWorldMap::InputHandler::TouchData>>>::_M_insert(
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
        std::priv::_Rb_tree<long,std::less<long>,std::pair<long const,MenuWorldMap::InputHandler::TouchData>,std::priv::_Select1st<std::pair<long const,MenuWorldMap::InputHandler::TouchData>>,std::priv::_MapTraitsT<std::pair<long const,MenuWorldMap::InputHandler::TouchData>>,std::allocator<std::pair<long const,MenuWorldMap::InputHandler::TouchData>>>::insert_unique(
          (int)&v21,
          a2,
          a4);
        *a1 = v21;
        return a1;
      }
      if ( !v15 )
      {
LABEL_63:
        std::priv::_Rb_tree<long,std::less<long>,std::pair<long const,MenuWorldMap::InputHandler::TouchData>,std::priv::_Select1st<std::pair<long const,MenuWorldMap::InputHandler::TouchData>>,std::priv::_MapTraitsT<std::pair<long const,MenuWorldMap::InputHandler::TouchData>>,std::allocator<std::pair<long const,MenuWorldMap::InputHandler::TouchData>>>::_M_insert(
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
            std::priv::_Rb_tree<long,std::less<long>,std::pair<long const,MenuWorldMap::InputHandler::TouchData>,std::priv::_Select1st<std::pair<long const,MenuWorldMap::InputHandler::TouchData>>,std::priv::_MapTraitsT<std::pair<long const,MenuWorldMap::InputHandler::TouchData>>,std::allocator<std::pair<long const,MenuWorldMap::InputHandler::TouchData>>>::_M_insert(
              a1,
              a2,
              v4,
              a4,
              (int)v4,
              0);
          else
            std::priv::_Rb_tree<long,std::less<long>,std::pair<long const,MenuWorldMap::InputHandler::TouchData>,std::priv::_Select1st<std::pair<long const,MenuWorldMap::InputHandler::TouchData>>,std::priv::_MapTraitsT<std::pair<long const,MenuWorldMap::InputHandler::TouchData>>,std::allocator<std::pair<long const,MenuWorldMap::InputHandler::TouchData>>>::_M_insert(
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
              std::priv::_Rb_tree<long,std::less<long>,std::pair<long const,MenuWorldMap::InputHandler::TouchData>,std::priv::_Select1st<std::pair<long const,MenuWorldMap::InputHandler::TouchData>>,std::priv::_MapTraitsT<std::pair<long const,MenuWorldMap::InputHandler::TouchData>>,std::allocator<std::pair<long const,MenuWorldMap::InputHandler::TouchData>>>::_M_insert(
                a1,
                a2,
                v4,
                a4,
                0,
                (int)v4);
              return a1;
            }
LABEL_42:
            std::priv::_Rb_tree<long,std::less<long>,std::pair<long const,MenuWorldMap::InputHandler::TouchData>,std::priv::_Select1st<std::pair<long const,MenuWorldMap::InputHandler::TouchData>>,std::priv::_MapTraitsT<std::pair<long const,MenuWorldMap::InputHandler::TouchData>>,std::allocator<std::pair<long const,MenuWorldMap::InputHandler::TouchData>>>::_M_insert(
              a1,
              a2,
              i,
              a4,
              (int)i,
              0);
            return a1;
          }
LABEL_31:
          std::priv::_Rb_tree<long,std::less<long>,std::pair<long const,MenuWorldMap::InputHandler::TouchData>,std::priv::_Select1st<std::pair<long const,MenuWorldMap::InputHandler::TouchData>>,std::priv::_MapTraitsT<std::pair<long const,MenuWorldMap::InputHandler::TouchData>>,std::allocator<std::pair<long const,MenuWorldMap::InputHandler::TouchData>>>::insert_unique(
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
    std::priv::_Rb_tree<long,std::less<long>,std::pair<long const,MenuWorldMap::InputHandler::TouchData>,std::priv::_Select1st<std::pair<long const,MenuWorldMap::InputHandler::TouchData>>,std::priv::_MapTraitsT<std::pair<long const,MenuWorldMap::InputHandler::TouchData>>,std::allocator<std::pair<long const,MenuWorldMap::InputHandler::TouchData>>>::insert_unique(
      (int)&v20,
      a2,
      a4);
    *a1 = v20;
  }
  else
  {
    std::priv::_Rb_tree<long,std::less<long>,std::pair<long const,MenuWorldMap::InputHandler::TouchData>,std::priv::_Select1st<std::pair<long const,MenuWorldMap::InputHandler::TouchData>>,std::priv::_MapTraitsT<std::pair<long const,MenuWorldMap::InputHandler::TouchData>>,std::allocator<std::pair<long const,MenuWorldMap::InputHandler::TouchData>>>::_M_insert(
      a1,
      a2,
      v16,
      a4,
      0,
      (int)v4);
  }
  return a1;
}


// ===== 436cb4 std::map<long,MenuWorldMap::InputHandler::TouchData,std::less<long>,std::allocator<std::pair<long const,MenuWorldMap::InputHandler::TouchData>>>::operator[]<long>(long const&) =====
_DWORD *__fastcall std::map<long,MenuWorldMap::InputHandler::TouchData>::operator[]<long>(_DWORD *a1, int *a2)
{
  _DWORD *v2; // r12
  int v3; // r4
  _DWORD *v4; // r2
  int v5; // r3
  bool v6; // cc
  _DWORD *v7; // r3
  _DWORD *v8; // r3
  int v10; // [sp+4h] [bp-14h] BYREF
  __int16 v11; // [sp+8h] [bp-10h]
  __int16 v12; // [sp+Ah] [bp-Eh]
  __int16 v13; // [sp+Ch] [bp-Ch]
  __int16 v14; // [sp+Eh] [bp-Ah]
  _DWORD *v15; // [sp+10h] [bp-8h] BYREF
  _DWORD *v16; // [sp+14h] [bp-4h] BYREF

  v2 = (_DWORD *)a1[1];
  if ( v2 )
  {
    v3 = *a2;
    v4 = a1;
    while ( 1 )
    {
      v5 = v2[4];
      v6 = v3 <= v5;
      if ( v3 <= v5 )
        v7 = (_DWORD *)v2[2];
      else
        v7 = (_DWORD *)v2[3];
      if ( !v6 )
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
  if ( a1 == v2 || (v8 = v2, v2[4] > v3) )
  {
    v15 = v2;
    v10 = v3;
    v14 = 0;
    v13 = 0;
    v12 = 0;
    v11 = 0;
    std::priv::_Rb_tree<long,std::less<long>,std::pair<long const,MenuWorldMap::InputHandler::TouchData>,std::priv::_Select1st<std::pair<long const,MenuWorldMap::InputHandler::TouchData>>,std::priv::_MapTraitsT<std::pair<long const,MenuWorldMap::InputHandler::TouchData>>,std::allocator<std::pair<long const,MenuWorldMap::InputHandler::TouchData>>>::insert_unique(
      &v16,
      a1,
      &v15,
      &v10);
    v8 = v16;
  }
  return v8 + 5;
}


// ===== 436d5c std::priv::_Rb_tree<long,std::less<long>,std::pair<long const,MenuWorldMap::InputHandler::TouchData>,std::priv::_Select1st<std::pair<long const,MenuWorldMap::InputHandler::TouchData>>,std::priv::_MapTraitsT<std::pair<long const,MenuWorldMap::InputHandler::TouchData>>,std::allocator<std::pair<long const,MenuWorldMap::InputHandler::TouchData>>>::_M_erase(std::priv::_Rb_tree_node_base *) =====
void __fastcall std::priv::_Rb_tree<long,std::less<long>,std::pair<long const,MenuWorldMap::InputHandler::TouchData>,std::priv::_Select1st<std::pair<long const,MenuWorldMap::InputHandler::TouchData>>,std::priv::_MapTraitsT<std::pair<long const,MenuWorldMap::InputHandler::TouchData>>,std::allocator<std::pair<long const,MenuWorldMap::InputHandler::TouchData>>>::_M_erase(
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
      std::priv::_Rb_tree<long,std::less<long>,std::pair<long const,MenuWorldMap::InputHandler::TouchData>,std::priv::_Select1st<std::pair<long const,MenuWorldMap::InputHandler::TouchData>>,std::priv::_MapTraitsT<std::pair<long const,MenuWorldMap::InputHandler::TouchData>>,std::allocator<std::pair<long const,MenuWorldMap::InputHandler::TouchData>>>::_M_erase(
        a1,
        v2[3]);
      v4 = (_DWORD *)v2[2];
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v2, 0x1Cu);
      v2 = v4;
    }
    while ( v4 );
  }
}


// ===== 436d94 `non-virtual thunk to'MenuWorldMap::InputHandler::~InputHandler() =====
void __fastcall `non-virtual thunk to'MenuWorldMap::InputHandler::~InputHandler(MenuWorldMap::InputHandler *this)
{
  MenuWorldMap::InputHandler::~InputHandler((MenuWorldMap::InputHandler *)((char *)this - 4));
}


// ===== 436d9c MenuWorldMap::InputHandler::~InputHandler() =====
void __fastcall MenuWorldMap::InputHandler::~InputHandler(MenuWorldMap::InputHandler *this)
{
  int v1; // r1
  char *v3; // r5

  v1 = *((_DWORD *)this + 6);
  *(_DWORD *)this = off_9682B8;
  *((_DWORD *)this + 1) = off_9682D0;
  if ( v1 )
  {
    v3 = (char *)this + 8;
    std::priv::_Rb_tree<long,std::less<long>,std::pair<long const,MenuWorldMap::InputHandler::TouchData>,std::priv::_Select1st<std::pair<long const,MenuWorldMap::InputHandler::TouchData>>,std::priv::_MapTraitsT<std::pair<long const,MenuWorldMap::InputHandler::TouchData>>,std::allocator<std::pair<long const,MenuWorldMap::InputHandler::TouchData>>>::_M_erase(
      (int)this + 8,
      *((_DWORD **)this + 3));
    *((_DWORD *)this + 5) = v3;
    *((_DWORD *)this + 6) = 0;
    *((_DWORD *)this + 4) = v3;
    *((_DWORD *)this + 3) = 0;
  }
}


// ===== 436e04 std::priv::_Rb_tree<long,std::less<long>,std::pair<long const,MenuWorldMap::InputHandler::TouchData>,std::priv::_Select1st<std::pair<long const,MenuWorldMap::InputHandler::TouchData>>,std::priv::_MapTraitsT<std::pair<long const,MenuWorldMap::InputHandler::TouchData>>,std::allocator<std::pair<long const,MenuWorldMap::InputHandler::TouchData>>>::erase(std::priv::_Rb_tree_iterator<std::pair<long const,MenuWorldMap::InputHandler::TouchData>,std::priv::_MapTraitsT<std::pair<long const,MenuWorldMap::InputHandler::TouchData>>>) =====
void __fastcall std::priv::_Rb_tree<long,std::less<long>,std::pair<long const,MenuWorldMap::InputHandler::TouchData>,std::priv::_Select1st<std::pair<long const,MenuWorldMap::InputHandler::TouchData>>,std::priv::_MapTraitsT<std::pair<long const,MenuWorldMap::InputHandler::TouchData>>,std::allocator<std::pair<long const,MenuWorldMap::InputHandler::TouchData>>>::erase(
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
    __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v3, 0x1Cu);
  --*(_DWORD *)(a1 + 16);
}


// ===== 436e40 `non-virtual thunk to'MenuWorldMap::InputHandler::~InputHandler() =====
void __fastcall `non-virtual thunk to'MenuWorldMap::InputHandler::~InputHandler(MenuWorldMap::InputHandler *this)
{
  MenuWorldMap::InputHandler::~InputHandler((MenuWorldMap::InputHandler *)((char *)this - 4));
}


// ===== 436e48 MenuWorldMap::InputHandler::~InputHandler() =====
void __fastcall MenuWorldMap::InputHandler::~InputHandler(MenuWorldMap::InputHandler *this)
{
  int v1; // r1
  char *v3; // r6

  v1 = *((_DWORD *)this + 6);
  *(_DWORD *)this = off_9682B8;
  *((_DWORD *)this + 1) = off_9682D0;
  if ( v1 )
  {
    v3 = (char *)this + 8;
    std::priv::_Rb_tree<long,std::less<long>,std::pair<long const,MenuWorldMap::InputHandler::TouchData>,std::priv::_Select1st<std::pair<long const,MenuWorldMap::InputHandler::TouchData>>,std::priv::_MapTraitsT<std::pair<long const,MenuWorldMap::InputHandler::TouchData>>,std::allocator<std::pair<long const,MenuWorldMap::InputHandler::TouchData>>>::_M_erase(
      (int)this + 8,
      *((_DWORD **)this + 3));
    *((_DWORD *)this + 5) = v3;
    *((_DWORD *)this + 6) = 0;
    *((_DWORD *)this + 4) = v3;
    *((_DWORD *)this + 3) = 0;
  }
  *((_DWORD *)this + 1) = off_95C330;
  *(_DWORD *)this = off_95C300;
  CustomFree(this);
}


// ===== 436ee0 MenuWorldMap::~MenuWorldMap() =====
void __fastcall MenuWorldMap::~MenuWorldMap(MenuWorldMap *this)
{
  char *v1; // r6
  int v2; // r1
  char *v4; // r7

  *(_DWORD *)this = off_968260;
  v1 = (char *)this + 196;
  v2 = *((_DWORD *)this + 55);
  *((_DWORD *)this + 49) = off_9682B8;
  *((_DWORD *)this + 50) = off_9682D0;
  if ( v2 )
  {
    v4 = (char *)this + 204;
    std::priv::_Rb_tree<long,std::less<long>,std::pair<long const,MenuWorldMap::InputHandler::TouchData>,std::priv::_Select1st<std::pair<long const,MenuWorldMap::InputHandler::TouchData>>,std::priv::_MapTraitsT<std::pair<long const,MenuWorldMap::InputHandler::TouchData>>,std::allocator<std::pair<long const,MenuWorldMap::InputHandler::TouchData>>>::_M_erase(
      (int)this + 204,
      *((_DWORD **)this + 52));
    *((_DWORD *)this + 54) = v4;
    *((_DWORD *)this + 55) = 0;
    *((_DWORD *)this + 53) = v4;
    *((_DWORD *)this + 52) = 0;
  }
  *((_DWORD *)v1 + 1) = off_95C330;
  *((_DWORD *)this + 49) = off_95C300;
  MenuBase::~MenuBase(this);
}


// ===== 436f90 MenuWorldMap::~MenuWorldMap() =====
void __fastcall MenuWorldMap::~MenuWorldMap(MenuWorldMap *this)
{
  MenuWorldMap::~MenuWorldMap(this);
  CustomFree(this);
}


// ===== 436fac MenuWorldMap::~MenuWorldMap() =====
void __fastcall MenuWorldMap::~MenuWorldMap(MenuWorldMap *this)
{
  char *v1; // r6
  int v2; // r1
  char *v4; // r7

  *(_DWORD *)this = off_968260;
  v1 = (char *)this + 196;
  v2 = *((_DWORD *)this + 55);
  *((_DWORD *)this + 49) = off_9682B8;
  *((_DWORD *)this + 50) = off_9682D0;
  if ( v2 )
  {
    v4 = (char *)this + 204;
    std::priv::_Rb_tree<long,std::less<long>,std::pair<long const,MenuWorldMap::InputHandler::TouchData>,std::priv::_Select1st<std::pair<long const,MenuWorldMap::InputHandler::TouchData>>,std::priv::_MapTraitsT<std::pair<long const,MenuWorldMap::InputHandler::TouchData>>,std::allocator<std::pair<long const,MenuWorldMap::InputHandler::TouchData>>>::_M_erase(
      (int)this + 204,
      *((_DWORD **)this + 52));
    *((_DWORD *)this + 54) = v4;
    *((_DWORD *)this + 55) = 0;
    *((_DWORD *)this + 53) = v4;
    *((_DWORD *)this + 52) = 0;
  }
  *((_DWORD *)v1 + 1) = off_95C330;
  *((_DWORD *)this + 49) = off_95C300;
  MenuBase::~MenuBase(this);
}


// ===== 43705c MenuWorldMap::Unlock(void) =====
void __fastcall MenuWorldMap::Unlock(MenuWorldMap *this)
{
  int v1; // r3
  bool v2; // zf
  Character *character_660; // r10
  int i; // r4
  char *v6; // r5
  PlayerSavegame *QuestByID; // r0
  int v8; // r3
  std::string v9; // [sp+Ch] [bp-20h] BYREF

  v1 = *((unsigned __int8 *)this + 300);
  v2 = v1 == 0;
  if ( *((_BYTE *)this + 300) )
    v1 = 3;
  if ( v2 )
  {
    character_660 = PlayerManager::GetLocalPlayer((PlayerManager *)dword_99F76C, v1, v1)->character_660;
    for ( i = 1; i != 4; ++i )
    {
      v6 = (char *)this + 12 * i;
      QuestByID = Character::SG_GetQuestByID(character_660, *((_DWORD *)v6 + 63), -1);
      if ( QuestByID && *((_DWORD *)v6 + 64) <= *(_DWORD *)QuestByID )
      {
        v8 = *((_DWORD *)this + 74);
        if ( i < v8 )
          *((_DWORD *)this + 74) = v8;
        else
          *((_DWORD *)this + 74) = i;
        DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
        v9._M_finish = (char *)&v9;
        v9._M_start_of_storage._M_data = (char *)&v9;
        std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block(&v9, 0x19u);
        v9._M_finish = (char *)memcpy(v9._M_start_of_storage._M_data, "isTracingWorldMapLockers", 0x18u) + 24;
        *v9._M_finish = 0;
        DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v9);
        if ( (std::string *)v9._M_start_of_storage._M_data != &v9 && v9._M_start_of_storage._M_data )
        {
          if ( (unsigned int)(v9._M_buffers._M_end_of_storage - v9._M_start_of_storage._M_data) <= 0x80 )
            __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(
              v9._M_start_of_storage._M_data,
              v9._M_buffers._M_end_of_storage - v9._M_start_of_storage._M_data);
          else
            CustomFree(v9._M_start_of_storage._M_data);
        }
      }
    }
  }
  else
  {
    *((_DWORD *)this + 74) = v1;
  }
}


// ===== 4371d0 MenuWorldMap::Show(void) =====
int __fastcall MenuWorldMap::Show(MenuWorldMap *this)
{
  gameswf::character **v2; // r1
  int v3; // r5
  int v4; // r2
  int v5; // r3
  gameswf::character *v6; // r1
  RenderFX *v7; // r0
  float v9[3]; // [sp+0h] [bp-10h] BYREF
  float v10; // [sp+Ch] [bp-4h]

  RenderFX::RegisterDisplayCallback(*((_DWORD *)this + 1), "MapButtons", MenuWorldMap::RenderMap, this);
  EventManager::Attach((EventManager *)dword_99F740, 4, (MenuWorldMap *)((char *)this + 200), 0);
  EventManager::Attach((EventManager *)dword_99F740, 5, (MenuWorldMap *)((char *)this + 200), 0);
  ZoomHandler::setCamera((ZoomHandler *)dword_99F77C, nullptr);
  v2 = *((gameswf::character ***)this + 58);
  *((_DWORD *)this + 76) = 1065353216;
  GameSWFUtils::GetAbsoluteBoundingRect((GameSWFUtils *)v9, v2);
  v3 = (int)v9[0];
  v4 = (int)v9[0];
  v5 = (int)v10;
  *((_DWORD *)this + 61) = (int)v10;
  v6 = *((gameswf::character **)this + 59);
  v7 = *((RenderFX **)this + 1);
  *((_DWORD *)this + 60) = v3;
  RenderFX::SetPosition(v7, v6, v4, v5);
  *((_DWORD *)this + 74) = 0;
  MenuWorldMap::Unlock(this);
  return MenuBase::Show(this);
}


// ===== 4372b4 `non-virtual thunk to'MenuWorldMap::InputHandler::onEvent(IEvent const*,EventManager const*) =====
int __fastcall `non-virtual thunk to'MenuWorldMap::InputHandler::onEvent(
        MenuWorldMap::InputHandler *this,
        const IEvent *a2,
        const EventManager *a3)
{
  return MenuWorldMap::InputHandler::onEvent((MenuWorldMap::InputHandler *)((char *)this - 4), a2, a3);
}


// ===== 4372bc MenuWorldMap::InputHandler::onEvent(IEvent const*,EventManager const*) =====
bool __fastcall MenuWorldMap::InputHandler::onEvent(
        MenuWorldMap::InputHandler *this,
        const IEvent *a2,
        const EventManager *a3)
{
  int v5; // r0
  int v6; // r8
  char *v8; // r3
  int v9; // r0
  char *v10; // r1
  int v11; // r2
  bool v12; // cc
  char *v13; // r2
  char *v14; // lr
  char *v15; // r6
  int v16; // r12
  char *v17; // r2
  int v18; // r3
  bool v19; // cc
  char *v20; // r3
  char *v21; // r3
  char *v22; // lr
  int v23; // r12
  char *v24; // r2
  int v25; // r3
  bool v26; // cc
  char *v27; // r3
  char *v28; // r3
  char *v29; // lr
  int v30; // r12
  char *v31; // r2
  int v32; // r3
  bool v33; // cc
  char *v34; // r3
  char *v35; // r3
  int v36; // r4
  float v37; // r11
  float v38; // r8
  int v39; // r1
  float v40; // r3
  float v41; // r0
  float v42; // r10
  float v43; // r0
  char *v44; // r4
  int v45; // r12
  char *v46; // r2
  int v47; // r3
  bool v48; // cc
  char *v49; // r3
  char *v50; // r3
  char *v51; // r4
  int v52; // r12
  char *v53; // r2
  int v54; // r3
  bool v55; // cc
  char *v56; // r3
  char *v57; // r3
  int v58; // r2
  float v59; // [sp+0h] [bp-74h]
  float v60; // [sp+4h] [bp-70h]
  int v61; // [sp+8h] [bp-6Ch] BYREF
  __int16 v62; // [sp+Ch] [bp-68h]
  __int16 v63; // [sp+Eh] [bp-66h]
  __int16 v64; // [sp+10h] [bp-64h]
  __int16 v65; // [sp+12h] [bp-62h]
  int v66; // [sp+14h] [bp-60h] BYREF
  __int16 v67; // [sp+18h] [bp-5Ch]
  __int16 v68; // [sp+1Ah] [bp-5Ah]
  __int16 v69; // [sp+1Ch] [bp-58h]
  __int16 v70; // [sp+1Eh] [bp-56h]
  int v71; // [sp+20h] [bp-54h] BYREF
  __int16 v72; // [sp+24h] [bp-50h]
  __int16 v73; // [sp+26h] [bp-4Eh]
  __int16 v74; // [sp+28h] [bp-4Ch]
  __int16 v75; // [sp+2Ah] [bp-4Ah]
  int v76; // [sp+2Ch] [bp-48h] BYREF
  __int16 v77; // [sp+30h] [bp-44h]
  __int16 v78; // [sp+32h] [bp-42h]
  __int16 v79; // [sp+34h] [bp-40h]
  __int16 v80; // [sp+36h] [bp-3Eh]
  int v81; // [sp+38h] [bp-3Ch] BYREF
  __int16 v82; // [sp+3Ch] [bp-38h]
  __int16 v83; // [sp+3Eh] [bp-36h]
  __int16 v84; // [sp+40h] [bp-34h]
  __int16 v85; // [sp+42h] [bp-32h]
  char *v86; // [sp+44h] [bp-30h] BYREF
  char *v87; // [sp+48h] [bp-2Ch] BYREF
  char *v88; // [sp+4Ch] [bp-28h] BYREF
  char *v89; // [sp+50h] [bp-24h] BYREF
  char *v90; // [sp+54h] [bp-20h] BYREF
  char *v91; // [sp+58h] [bp-1Ch] BYREF
  char *v92; // [sp+5Ch] [bp-18h] BYREF
  char *v93; // [sp+60h] [bp-14h] BYREF
  char *v94; // [sp+64h] [bp-10h] BYREF
  char *v95; // [sp+68h] [bp-Ch] BYREF
  unsigned __int8 *v96; // [sp+6Ch] [bp-8h] BYREF

  v5 = (*(int (__fastcall **)(const IEvent *))(*(_DWORD *)a2 + 8))(a2);
  if ( v5 == 4 )
  {
    if ( *((_BYTE *)a2 + 16) )
    {
      *(_WORD *)std::map<long,MenuWorldMap::InputHandler::TouchData>::operator[]<long>(
                  (_DWORD *)this + 2,
                  (int *)a2 + 3) = *((_WORD *)a2 + 4);
      *((_WORD *)std::map<long,MenuWorldMap::InputHandler::TouchData>::operator[]<long>(
                   (_DWORD *)this + 2,
                   (int *)a2 + 3)
      + 1) = *((_WORD *)a2 + 5);
      *((_WORD *)std::map<long,MenuWorldMap::InputHandler::TouchData>::operator[]<long>(
                   (_DWORD *)this + 2,
                   (int *)a2 + 3)
      + 2) = *((_WORD *)a2 + 4);
      *((_WORD *)std::map<long,MenuWorldMap::InputHandler::TouchData>::operator[]<long>(
                   (_DWORD *)this + 2,
                   (int *)a2 + 3)
      + 3) = *((_WORD *)a2 + 5);
      MenuWorldMap::InputHandler::drag((MenuWorldMap **)this, 1, *((__int16 *)a2 + 4), *((__int16 *)a2 + 5));
    }
    else
    {
      v8 = *((char **)this + 3);
      if ( v8 )
      {
        v9 = *((_DWORD *)a2 + 3);
        v10 = (char *)this + 8;
        while ( 1 )
        {
          v11 = *((_DWORD *)v8 + 4);
          v12 = v11 < v9;
          if ( v11 >= v9 )
            v13 = *((char **)v8 + 2);
          else
            v13 = *((char **)v8 + 3);
          if ( v12 )
            v8 = v10;
          v10 = v8;
          if ( !v13 )
            break;
          v8 = v13;
        }
        if ( (char *)this + 8 != v8 && *((_DWORD *)v8 + 4) <= v9 )
        {
          v96 = (unsigned __int8 *)v8;
          std::priv::_Rb_tree<long,std::less<long>,std::pair<long const,MenuWorldMap::InputHandler::TouchData>,std::priv::_Select1st<std::pair<long const,MenuWorldMap::InputHandler::TouchData>>,std::priv::_MapTraitsT<std::pair<long const,MenuWorldMap::InputHandler::TouchData>>,std::allocator<std::pair<long const,MenuWorldMap::InputHandler::TouchData>>>::erase(
            (int)this + 8,
            &v96);
          return *((_DWORD *)this + 6) > 1u;
        }
      }
    }
    return *((_DWORD *)this + 6) > 1u;
  }
  else if ( v5 == 5 )
  {
    v14 = *((char **)this + 3);
    v15 = (char *)this + 8;
    if ( v14 )
    {
      v16 = *((_DWORD *)a2 + 3);
      v17 = (char *)this + 8;
      while ( 1 )
      {
        v18 = *((_DWORD *)v14 + 4);
        v19 = v18 < v16;
        if ( v18 >= v16 )
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
    }
    else
    {
      v16 = *((_DWORD *)a2 + 3);
      v14 = (char *)this + 8;
    }
    if ( v15 == v14 || (v21 = v14, v16 < *((_DWORD *)v14 + 4)) )
    {
      v81 = v16;
      v94 = v14;
      v85 = 0;
      v84 = 0;
      v83 = 0;
      v82 = 0;
      std::priv::_Rb_tree<long,std::less<long>,std::pair<long const,MenuWorldMap::InputHandler::TouchData>,std::priv::_Select1st<std::pair<long const,MenuWorldMap::InputHandler::TouchData>>,std::priv::_MapTraitsT<std::pair<long const,MenuWorldMap::InputHandler::TouchData>>,std::allocator<std::pair<long const,MenuWorldMap::InputHandler::TouchData>>>::insert_unique(
        &v95,
        (_DWORD *)this + 2,
        (_DWORD **)&v94,
        &v81);
      v21 = v95;
    }
    if ( !*((_WORD *)v21 + 10)
      && !*((_WORD *)std::map<long,MenuWorldMap::InputHandler::TouchData>::operator[]<long>(
                       (_DWORD *)this + 2,
                       (int *)a2 + 3)
          + 1) )
    {
      *(_WORD *)std::map<long,MenuWorldMap::InputHandler::TouchData>::operator[]<long>(
                  (_DWORD *)this + 2,
                  (int *)a2 + 3) = *((_WORD *)a2 + 4);
      *((_WORD *)std::map<long,MenuWorldMap::InputHandler::TouchData>::operator[]<long>(
                   (_DWORD *)this + 2,
                   (int *)a2 + 3)
      + 1) = *((_WORD *)a2 + 5);
    }
    v22 = *((char **)this + 3);
    if ( v22 )
    {
      v23 = *((_DWORD *)a2 + 3);
      v24 = (char *)this + 8;
      while ( 1 )
      {
        v25 = *((_DWORD *)v22 + 4);
        v26 = v25 < v23;
        if ( v25 >= v23 )
          v27 = *((char **)v22 + 2);
        else
          v27 = *((char **)v22 + 3);
        if ( v26 )
          v22 = v24;
        v24 = v22;
        if ( !v27 )
          break;
        v22 = v27;
      }
    }
    else
    {
      v23 = *((_DWORD *)a2 + 3);
      v22 = (char *)this + 8;
    }
    if ( v15 == v22 || (v28 = v22, v23 < *((_DWORD *)v22 + 4)) )
    {
      v76 = v23;
      v92 = v22;
      v80 = 0;
      v79 = 0;
      v78 = 0;
      v77 = 0;
      std::priv::_Rb_tree<long,std::less<long>,std::pair<long const,MenuWorldMap::InputHandler::TouchData>,std::priv::_Select1st<std::pair<long const,MenuWorldMap::InputHandler::TouchData>>,std::priv::_MapTraitsT<std::pair<long const,MenuWorldMap::InputHandler::TouchData>>,std::allocator<std::pair<long const,MenuWorldMap::InputHandler::TouchData>>>::insert_unique(
        &v93,
        (_DWORD *)this + 2,
        (_DWORD **)&v92,
        &v76);
      v28 = v93;
    }
    *((_WORD *)v28 + 12) = *((_WORD *)a2 + 4);
    v29 = *((char **)this + 3);
    if ( v29 )
    {
      v30 = *((_DWORD *)a2 + 3);
      v31 = (char *)this + 8;
      while ( 1 )
      {
        v32 = *((_DWORD *)v29 + 4);
        v33 = v32 < v30;
        if ( v32 >= v30 )
          v34 = *((char **)v29 + 2);
        else
          v34 = *((char **)v29 + 3);
        if ( v33 )
          v29 = v31;
        v31 = v29;
        if ( !v34 )
          break;
        v29 = v34;
      }
    }
    else
    {
      v30 = *((_DWORD *)a2 + 3);
      v29 = (char *)this + 8;
    }
    if ( v15 == v29 || (v35 = v29, v30 < *((_DWORD *)v29 + 4)) )
    {
      v71 = v30;
      v90 = v29;
      v75 = 0;
      v74 = 0;
      v73 = 0;
      v72 = 0;
      std::priv::_Rb_tree<long,std::less<long>,std::pair<long const,MenuWorldMap::InputHandler::TouchData>,std::priv::_Select1st<std::pair<long const,MenuWorldMap::InputHandler::TouchData>>,std::priv::_MapTraitsT<std::pair<long const,MenuWorldMap::InputHandler::TouchData>>,std::allocator<std::pair<long const,MenuWorldMap::InputHandler::TouchData>>>::insert_unique(
        &v91,
        (_DWORD *)this + 2,
        (_DWORD **)&v90,
        &v71);
      v35 = v91;
    }
    *((_WORD *)v35 + 13) = *((_WORD *)a2 + 5);
    if ( *((_DWORD *)this + 6) <= 1u )
    {
      MenuWorldMap::InputHandler::drag((MenuWorldMap **)this, 0, *((__int16 *)a2 + 4), *((__int16 *)a2 + 5));
      v6 = 0;
    }
    else
    {
      v36 = *((_DWORD *)this + 4);
      v60 = (float)*(__int16 *)(v36 + 20);
      v37 = (float)*(__int16 *)(v36 + 22);
      v38 = (float)*(__int16 *)(v36 + 24);
      v39 = *(_DWORD *)(v36 + 12);
      v40 = (float)*(__int16 *)(v36 + 26);
      if ( v39 )
      {
        while ( *(_DWORD *)(v39 + 8) )
          v39 = *(_DWORD *)(v39 + 8);
        v36 = v39;
      }
      else
      {
        v58 = *(_DWORD *)(v36 + 4);
        if ( v36 == *(_DWORD *)(v58 + 12) )
        {
          do
          {
            v36 = v58;
            v58 = *(_DWORD *)(v58 + 4);
          }
          while ( *(_DWORD *)(v58 + 12) == v36 );
          v39 = *(_DWORD *)(v36 + 12);
        }
        if ( v58 != v39 )
          v36 = v58;
      }
      v59 = v40;
      v41 = sqrt((float)((float)((float)(v60 - (float)*(__int16 *)(v36 + 20))
                               * (float)(v60 - (float)*(__int16 *)(v36 + 20)))
                       + (float)((float)(v37 - (float)*(__int16 *)(v36 + 22))
                               * (float)(v37 - (float)*(__int16 *)(v36 + 22)))));
      v42 = v41;
      v43 = sqrt((float)((float)((float)(v38 - (float)*(__int16 *)(v36 + 24))
                               * (float)(v38 - (float)*(__int16 *)(v36 + 24)))
                       + (float)((float)(v59 - (float)*(__int16 *)(v36 + 26))
                               * (float)(v59 - (float)*(__int16 *)(v36 + 26)))));
      MenuWorldMap::InputHandler::zoom((MenuWorldMap **)this, v43 - v42);
      v6 = 1;
    }
    v44 = *((char **)this + 3);
    if ( v44 )
    {
      v45 = *((_DWORD *)a2 + 3);
      v46 = (char *)this + 8;
      while ( 1 )
      {
        v47 = *((_DWORD *)v44 + 4);
        v48 = v47 < v45;
        if ( v47 >= v45 )
          v49 = *((char **)v44 + 2);
        else
          v49 = *((char **)v44 + 3);
        if ( v48 )
          v44 = v46;
        v46 = v44;
        if ( !v49 )
          break;
        v44 = v49;
      }
    }
    else
    {
      v45 = *((_DWORD *)a2 + 3);
      v44 = (char *)this + 8;
    }
    if ( v15 == v44 || (v50 = v44, v45 < *((_DWORD *)v44 + 4)) )
    {
      v66 = v45;
      v88 = v44;
      v70 = 0;
      v69 = 0;
      v68 = 0;
      v67 = 0;
      std::priv::_Rb_tree<long,std::less<long>,std::pair<long const,MenuWorldMap::InputHandler::TouchData>,std::priv::_Select1st<std::pair<long const,MenuWorldMap::InputHandler::TouchData>>,std::priv::_MapTraitsT<std::pair<long const,MenuWorldMap::InputHandler::TouchData>>,std::allocator<std::pair<long const,MenuWorldMap::InputHandler::TouchData>>>::insert_unique(
        &v89,
        (_DWORD *)this + 2,
        (_DWORD **)&v88,
        &v66);
      v50 = v89;
    }
    *((_WORD *)v50 + 10) = *((_WORD *)a2 + 4);
    v51 = *((char **)this + 3);
    if ( v51 )
    {
      v52 = *((_DWORD *)a2 + 3);
      v53 = (char *)this + 8;
      while ( 1 )
      {
        v54 = *((_DWORD *)v51 + 4);
        v55 = v54 < v52;
        if ( v54 >= v52 )
          v56 = *((char **)v51 + 2);
        else
          v56 = *((char **)v51 + 3);
        if ( v55 )
          v51 = v53;
        v53 = v51;
        if ( !v56 )
          break;
        v51 = v56;
      }
    }
    else
    {
      v52 = *((_DWORD *)a2 + 3);
      v51 = (char *)this + 8;
    }
    if ( v15 == v51 || (v57 = v51, v52 < *((_DWORD *)v51 + 4)) )
    {
      v61 = v52;
      v86 = v51;
      v65 = 0;
      v64 = 0;
      v63 = 0;
      v62 = 0;
      std::priv::_Rb_tree<long,std::less<long>,std::pair<long const,MenuWorldMap::InputHandler::TouchData>,std::priv::_Select1st<std::pair<long const,MenuWorldMap::InputHandler::TouchData>>,std::priv::_MapTraitsT<std::pair<long const,MenuWorldMap::InputHandler::TouchData>>,std::allocator<std::pair<long const,MenuWorldMap::InputHandler::TouchData>>>::insert_unique(
        &v87,
        (_DWORD *)this + 2,
        (_DWORD **)&v86,
        &v61);
      v57 = v87;
    }
    *((_WORD *)v57 + 11) = *((_WORD *)a2 + 5);
  }
  else
  {
    return 0;
  }
  return v6;
}


// ===== 437924 MultiMenuManager::IsStateInStack(MenuFX::State *) =====
int __fastcall MultiMenuManager::IsStateInStack(MultiMenuManager *this, MenuFX::State *a2)
{
  int v2; // r3
  int v3; // r5
  int v4; // r2
  int v5; // r12
  MenuFX::State **v6; // r4
  int v7; // r2

  v2 = *((_DWORD *)this + 74);
  if ( v2 <= 0 )
    return 0;
  v3 = 0;
  while ( 1 )
  {
    v4 = *(_DWORD *)(*((_DWORD *)this + 73) + 4 * v3);
    v5 = *(_DWORD *)(v4 + 280);
    if ( v5 > 0 )
      break;
LABEL_8:
    if ( ++v3 == v2 )
      return 0;
  }
  v6 = *(MenuFX::State ***)(v4 + 276);
  if ( *v6 != a2 )
  {
    v7 = 0;
    while ( ++v7 != v5 )
    {
      if ( v6[v7] == a2 )
        return 1;
    }
    goto LABEL_8;
  }
  return 1;
}


// ===== 43799c MultiMenuManager::ResetUpdateCursor(void) =====
int __fastcall MultiMenuManager::ResetUpdateCursor(MultiMenuManager *this)
{
  int v1; // r7
  int i; // r4
  _DWORD *v4; // r3
  int v5; // r2
  int result; // r0
  int v7; // [sp+0h] [bp-14h] BYREF
  int v8; // [sp+4h] [bp-10h]
  int v9; // [sp+8h] [bp-Ch]
  int v10; // [sp+Ch] [bp-8h]

  v1 = 0;
  v8 = -971227136;
  v9 = 0;
  v10 = 0;
  v7 = -971227136;
  do
  {
    for ( i = 0; i != 4; ++i )
    {
      v4 = *((_DWORD **)this + 77);
      v5 = i;
      result = (int)v4;
      if ( v4 )
        result = (*(int (__fastcall **)(_DWORD *, int *, int, _DWORD, int, int, int, int))(*v4 + 20))(
                   v4,
                   &v7,
                   v5,
                   *v4,
                   v7,
                   v8,
                   v9,
                   v10);
    }
    ++v1;
    this = (MultiMenuManager *)((char *)this + 4);
  }
  while ( v1 != 4 );
  return result;
}


// ===== 437a18 `global constructor keyed to'.._.._sources_Game_Menus_MultiMenuManager.cpp =====
void `global constructor keyed to'.._.._sources_Game_Menus_MultiMenuManager.cpp()
{
  dword_9A5B54 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9A5B50 = 1056964608;
}


// ===== 437a38 MultiMenuManager::ResetFonts(void) =====
int __fastcall MultiMenuManager::ResetFonts(MultiMenuManager *this, gameswf::player_context *a2)
{
  int i; // r4
  int result; // r0

  for ( i = 0; i != 4; ++i )
  {
    result = 0;
    if ( *((_DWORD *)this + 77) )
      result = RenderFX::ClearFonts(nullptr, a2);
    this = (MultiMenuManager *)((char *)this + 4);
  }
  return result;
}


// ===== 437a6c gameswf::array<MenuFX *>::reserve(int) =====
void __fastcall gameswf::array<MenuFX *>::reserve(int a1, int a2)
{
  int v3; // r2
  void *v4; // r0

  if ( !*(_BYTE *)(a1 + 12) )
  {
    v3 = *(_DWORD *)(a1 + 8);
    *(_DWORD *)(a1 + 8) = a2;
    if ( a2 )
    {
      if ( *(_DWORD *)a1 )
        *(_DWORD *)a1 = gameswf::realloc_internal(*(_DWORD *)a1, 4 * a2, 4 * v3);
      else
        *(_DWORD *)a1 = gameswf::malloc_internal(4 * a2, 0);
    }
    else
    {
      v4 = *(void **)a1;
      if ( v4 )
        gameswf::free_internal(v4);
      *(_DWORD *)a1 = 0;
    }
  }
}


// ===== 437ae8 gameswf::array<MenuFX *>::remove(int) =====
_DWORD *__fastcall gameswf::array<MenuFX *>::remove(_DWORD *result, int a2)
{
  int v2; // r2
  _DWORD *v3; // r4

  v2 = result[1];
  v3 = result;
  if ( v2 == 1 )
  {
    result[1] = 0;
  }
  else
  {
    result = memmove((void *)(*result + 4 * a2), (const void *)(*result + 4 * (a2 + 1)), 4 * (v2 - 1 - a2));
    --v3[1];
  }
  return result;
}


// ===== 437b3c MultiMenuManager::UnloadSWFFile(int) =====
int __fastcall MultiMenuManager::UnloadSWFFile(int this, int a2)
{
  int v2; // r8
  int v3; // r7
  int v4; // r3
  int v6; // r6
  int v7; // r4
  int *v8; // r7
  _DWORD *v9; // r9
  int v10; // r5
  int v11; // r2
  int v13; // r3
  int v14; // r10
  int v15; // r3

  v2 = a2 + 76;
  v3 = this + 4 * (a2 + 76);
  v4 = *(_DWORD *)(v3 + 4);
  v6 = this;
  if ( v4 )
  {
    v7 = *(_DWORD *)(this + 296) - 1;
    if ( v7 >= 0 )
    {
      v8 = (int *)(v3 + 4);
      v9 = (_DWORD *)(this + 292);
      v10 = 4 * v7;
      while ( 1 )
      {
        v11 = *(_DWORD *)(*(_DWORD *)(v6 + 292) + v10);
        v10 -= 4;
        if ( v11 == v4 )
        {
          gameswf::array<MenuFX *>::remove(v9, v7);
          v4 = *v8;
        }
        if ( v7-- == 0 )
          break;
        v4 = *v8;
      }
    }
    this = (*(int (__fastcall **)(int))(*(_DWORD *)v4 + 12))(v4);
    v13 = *(_DWORD *)(v6 + 4 * v2 + 4);
    if ( v13 )
      this = (*(int (__fastcall **)(_DWORD))(*(_DWORD *)v13 + 4))(*(_DWORD *)(v6 + 4 * v2 + 4));
    v14 = a2 + 80;
    *(_DWORD *)(v6 + 4 * v2 + 4) = 0;
    v15 = *(_DWORD *)(v6 + 4 * v14 + 4);
    if ( v15 )
      this = (*(int (__fastcall **)(_DWORD))(*(_DWORD *)v15 + 4))(*(_DWORD *)(v6 + 4 * v14 + 4));
    *(_DWORD *)(v6 + 4 * v14 + 4) = 0;
  }
  return this;
}


// ===== 437c1c gameswf::array<MenuFX::State *>::reserve(int) =====
void __fastcall gameswf::array<MenuFX::State *>::reserve(int a1, int a2)
{
  int v3; // r2
  void *v4; // r0

  if ( !*(_BYTE *)(a1 + 12) )
  {
    v3 = *(_DWORD *)(a1 + 8);
    *(_DWORD *)(a1 + 8) = a2;
    if ( a2 )
    {
      if ( *(_DWORD *)a1 )
        *(_DWORD *)a1 = gameswf::realloc_internal(*(_DWORD *)a1, 4 * a2, 4 * v3);
      else
        *(_DWORD *)a1 = gameswf::malloc_internal(4 * a2, 0);
    }
    else
    {
      v4 = *(void **)a1;
      if ( v4 )
        gameswf::free_internal(v4);
      *(_DWORD *)a1 = 0;
    }
  }
}


// ===== 437c98 gameswf::array<MenuFX::State *>::remove(int) =====
_DWORD *__fastcall gameswf::array<MenuFX::State *>::remove(_DWORD *result, int a2)
{
  int v2; // r2
  _DWORD *v3; // r4

  v2 = result[1];
  v3 = result;
  if ( v2 == 1 )
  {
    result[1] = 0;
  }
  else
  {
    result = memmove((void *)(*result + 4 * a2), (const void *)(*result + 4 * (a2 + 1)), 4 * (v2 - 1 - a2));
    --v3[1];
  }
  return result;
}


// ===== 437cec gameswf::array<gameswf::smart_ptr<gameswf::as_object>>::reserve(int) =====
void __fastcall gameswf::array<gameswf::smart_ptr<gameswf::as_object>>::reserve(int a1, int a2)
{
  int v3; // r2
  void *v4; // r0

  if ( !*(_BYTE *)(a1 + 12) )
  {
    v3 = *(_DWORD *)(a1 + 8);
    *(_DWORD *)(a1 + 8) = a2;
    if ( a2 )
    {
      if ( *(_DWORD *)a1 )
        *(_DWORD *)a1 = gameswf::realloc_internal(*(_DWORD *)a1, 4 * a2, 4 * v3);
      else
        *(_DWORD *)a1 = gameswf::malloc_internal(4 * a2, 0);
    }
    else
    {
      v4 = *(void **)a1;
      if ( v4 )
        gameswf::free_internal(v4);
      *(_DWORD *)a1 = 0;
    }
  }
}


// ===== 437d68 MultiMenuManager::LoadSWFFile(char const*,int) =====
int __fastcall MultiMenuManager::LoadSWFFile(MultiMenuManager *this, const char *a2, int a3)
{
  char *v4; // r5
  MenuFX *v8; // r8
  MenuFlash2DCamera *v9; // r7

  Game_Text = a3 == 2;
  v4 = (char *)this + 4 * a3 + 304;
  if ( !*((_DWORD *)v4 + 1) )
  {
    v8 = (MenuFX *)operator new(292, 8);
    MenuFX::MenuFX(v8);
    *((_DWORD *)v4 + 1) = v8;
    (*(void (__fastcall **)(MenuFX *, const char *, _DWORD))(*(_DWORD *)v8 + 8))(v8, a2, 0);
    RenderFX::SetTextBufferingEnabled(*((RenderFX **)v4 + 1), 1);
    v9 = (MenuFlash2DCamera *)operator new(52, 8);
    MenuFlash2DCamera::MenuFlash2DCamera(v9, *((MenuFX **)v4 + 1));
    *((_DWORD *)this + a3 + 81) = v9;
  }
  return *((_DWORD *)v4 + 1);
}


// ===== 437e24 MultiMenuManager::MultiMenuManager(void) =====
void __fastcall MultiMenuManager::MultiMenuManager(MultiMenuManager *this)
{
  MenuFX::MenuFX(this);
  *((_DWORD *)this + 84) = 0;
  *((_DWORD *)this + 73) = 0;
  *(_DWORD *)this = off_9682E8;
  *((_DWORD *)this + 64) = &off_968334;
  *((_DWORD *)this + 74) = 0;
  *((_DWORD *)this + 75) = 0;
  *((_BYTE *)this + 304) = 0;
  *((_DWORD *)this + 85) = 0;
  *((_DWORD *)this + 86) = 0;
  *((_DWORD *)this + 87) = 0;
  *((_BYTE *)this + 352) = 0;
  *((_DWORD *)this + 77) = 0;
  *((_DWORD *)this + 81) = 0;
  *((_DWORD *)this + 78) = 0;
  *((_DWORD *)this + 82) = 0;
  *((_DWORD *)this + 79) = 0;
  *((_DWORD *)this + 83) = 0;
  *((_DWORD *)this + 80) = 0;
}


// ===== 437ea4 MultiMenuManager::MultiMenuManager(void) =====
void __fastcall MultiMenuManager::MultiMenuManager(MultiMenuManager *this)
{
  MenuFX::MenuFX(this);
  *((_DWORD *)this + 84) = 0;
  *((_DWORD *)this + 73) = 0;
  *(_DWORD *)this = off_9682E8;
  *((_DWORD *)this + 64) = &off_968334;
  *((_DWORD *)this + 74) = 0;
  *((_DWORD *)this + 75) = 0;
  *((_BYTE *)this + 304) = 0;
  *((_DWORD *)this + 85) = 0;
  *((_DWORD *)this + 86) = 0;
  *((_DWORD *)this + 87) = 0;
  *((_BYTE *)this + 352) = 0;
  *((_DWORD *)this + 77) = 0;
  *((_DWORD *)this + 81) = 0;
  *((_DWORD *)this + 78) = 0;
  *((_DWORD *)this + 82) = 0;
  *((_DWORD *)this + 79) = 0;
  *((_DWORD *)this + 83) = 0;
  *((_DWORD *)this + 80) = 0;
}


// ===== 437f24 gameswf::array<gameswf::smart_ptr<gameswf::as_object>>::resize(int) [clone] =====
_DWORD *__fastcall gameswf::array<gameswf::smart_ptr<gameswf::as_object>>::resize(_DWORD *result)
{
  int v1; // r4
  _DWORD *v2; // r6
  int i; // r5
  int v4; // r3

  v1 = result[1];
  v2 = result;
  if ( v1 > 0 )
  {
    for ( i = 0; i != v1; ++i )
    {
      result = *(_DWORD **)(*v2 + 4 * i);
      if ( result )
        result = (_DWORD *)gameswf::ref_counted::drop_ref((gameswf::ref_counted *)result);
    }
    goto LABEL_6;
  }
  if ( v1 >= 0 )
  {
LABEL_6:
    v2[1] = 0;
    return result;
  }
  v4 = 4 * v1;
  do
  {
    ++v1;
    *(_DWORD *)(*result + v4) = 0;
    v4 += 4;
  }
  while ( v1 );
  result[1] = 0;
  return result;
}


// ===== 437f94 MultiMenuManager::~MultiMenuManager() =====
void __fastcall MultiMenuManager::~MultiMenuManager(MultiMenuManager *this)
{
  _DWORD *v2; // r5
  int v3; // r7
  MultiMenuManager *v4; // r6
  int v5; // r3
  int v6; // r3
  _DWORD *v7; // r0
  int v8; // r2

  v2 = (_DWORD *)((char *)this + 340);
  *(_DWORD *)this = off_9682E8;
  *((_DWORD *)this + 64) = &off_968334;
  gameswf::array<gameswf::smart_ptr<gameswf::as_object>>::resize((_DWORD *)this + 85);
  gameswf::array<gameswf::smart_ptr<gameswf::as_object>>::resize(v2);
  gameswf::array<gameswf::smart_ptr<gameswf::as_object>>::reserve((int)v2, 0);
  v3 = 0;
  v4 = this;
  do
  {
    ++v3;
    if ( *((_DWORD *)v4 + 77) )
    {
      (*(void (__fastcall **)(_DWORD))(**((_DWORD **)v4 + 77) + 4))(*((_DWORD *)v4 + 77));
      v5 = *((_DWORD *)v4 + 81);
      *((_DWORD *)v4 + 77) = 0;
      if ( v5 )
      {
        (*(void (__fastcall **)(int))(*(_DWORD *)v5 + 4))(v5);
        *((_DWORD *)v4 + 81) = 0;
      }
    }
    v4 = (MultiMenuManager *)((char *)v4 + 4);
  }
  while ( v3 != 4 );
  gameswf::array<gameswf::smart_ptr<gameswf::as_object>>::resize(v2);
  gameswf::array<gameswf::smart_ptr<gameswf::as_object>>::reserve((int)v2, 0);
  v6 = *((_DWORD *)this + 74);
  v7 = (_DWORD *)((char *)this + 292);
  if ( v6 < 0 )
  {
    v8 = 4 * v6;
    do
    {
      ++v6;
      *(_DWORD *)(*v7 + v8) = 0;
      v8 += 4;
    }
    while ( v6 );
  }
  *((_DWORD *)this + 74) = 0;
  gameswf::array<MenuFX *>::reserve((int)v7, 0);
  MenuFX::~MenuFX(this);
}


// ===== 4380a4 MultiMenuManager::~MultiMenuManager() =====
void __fastcall MultiMenuManager::~MultiMenuManager(MultiMenuManager *this)
{
  MultiMenuManager::~MultiMenuManager(this);
  CustomFree(this);
}


// ===== 4380c0 MultiMenuManager::~MultiMenuManager() =====
void __fastcall MultiMenuManager::~MultiMenuManager(MultiMenuManager *this)
{
  _DWORD *v2; // r5
  int v3; // r7
  MultiMenuManager *v4; // r6
  int v5; // r3
  int v6; // r3
  _DWORD *v7; // r0
  int v8; // r2

  v2 = (_DWORD *)((char *)this + 340);
  *(_DWORD *)this = off_9682E8;
  *((_DWORD *)this + 64) = &off_968334;
  gameswf::array<gameswf::smart_ptr<gameswf::as_object>>::resize((_DWORD *)this + 85);
  gameswf::array<gameswf::smart_ptr<gameswf::as_object>>::resize(v2);
  gameswf::array<gameswf::smart_ptr<gameswf::as_object>>::reserve((int)v2, 0);
  v3 = 0;
  v4 = this;
  do
  {
    ++v3;
    if ( *((_DWORD *)v4 + 77) )
    {
      (*(void (__fastcall **)(_DWORD))(**((_DWORD **)v4 + 77) + 4))(*((_DWORD *)v4 + 77));
      v5 = *((_DWORD *)v4 + 81);
      *((_DWORD *)v4 + 77) = 0;
      if ( v5 )
      {
        (*(void (__fastcall **)(int))(*(_DWORD *)v5 + 4))(v5);
        *((_DWORD *)v4 + 81) = 0;
      }
    }
    v4 = (MultiMenuManager *)((char *)v4 + 4);
  }
  while ( v3 != 4 );
  gameswf::array<gameswf::smart_ptr<gameswf::as_object>>::resize(v2);
  gameswf::array<gameswf::smart_ptr<gameswf::as_object>>::reserve((int)v2, 0);
  v6 = *((_DWORD *)this + 74);
  v7 = (_DWORD *)((char *)this + 292);
  if ( v6 < 0 )
  {
    v8 = 4 * v6;
    do
    {
      ++v6;
      *(_DWORD *)(*v7 + v8) = 0;
      v8 += 4;
    }
    while ( v6 );
  }
  *((_DWORD *)this + 74) = 0;
  gameswf::array<MenuFX *>::reserve((int)v7, 0);
  MenuFX::~MenuFX(this);
}


// ===== 4381d0 gameswf::weak_ptr<gameswf::character>::operator->(void) =====
int __fastcall gameswf::weak_ptr<gameswf::character>::operator->(_DWORD *a1)
{
  int result; // r0
  _DWORD *v3; // r3

  result = a1[1];
  if ( result )
  {
    v3 = (_DWORD *)*a1;
    if ( !*(_BYTE *)(*a1 + 4) )
    {
      if ( (*v3)-- == 1 )
        gameswf::free_internal(v3);
      a1[1] = 0;
      *a1 = 0;
      return 0;
    }
  }
  return result;
}


// ===== 438224 gameswf::weak_ptr<gameswf::character>::get_ptr(void) =====
int __fastcall gameswf::weak_ptr<gameswf::character>::get_ptr(_DWORD *a1)
{
  int result; // r0
  _DWORD *v3; // r3

  result = a1[1];
  if ( result )
  {
    v3 = (_DWORD *)*a1;
    if ( !*(_BYTE *)(*a1 + 4) )
    {
      if ( (*v3)-- == 1 )
        gameswf::free_internal(v3);
      a1[1] = 0;
      *a1 = 0;
      return 0;
    }
  }
  return result;
}


// ===== 438278 MultiMenuManager::PushMenu(MenuBase *) =====
int __fastcall MultiMenuManager::PushMenu(MultiMenuManager *this, MenuBase *a2)
{
  int result; // r0
  int v5; // r4
  int v6; // r9
  RenderFX *v7; // r7
  const char *CurrentState; // r0
  const char *v9; // r11
  const char *v10; // r9
  int Controller; // r0
  _DWORD *v12; // r7
  int v13; // r8
  int v14; // r10
  int v15; // r2
  int v16; // r3
  RenderFX *v17; // r6
  int v18; // r8
  int v19; // r10
  int v20; // r3
  int v21; // r3
  _BYTE *v22; // r0
  gameswf::character *v23; // r0
  int v24; // r3
  gameswf::character *v25; // r0
  int v26; // r3
  _BYTE *v27; // r0
  bool v28; // zf
  int v29; // r0
  gameswf::character *ptr; // r0
  gameswf::character *v31; // r0
  int v32; // r2

  result = MenuFX::GetState(*((MenuFX **)a2 + 1), (const char *)a2 + 8);
  v5 = result;
  if ( !result )
    return result;
  _DEBUG_OUT("\n\n Last PushMenu:: %s \n\n", (const char *)(result + 8));
  if ( !LC_API_STRCMP_0((const char *)(v5 + 8), "menu_MultiLogin") )
  {
    if ( USE_NATIVE_DRM_GAME )
      ALicenseCheck_ValidateLicense(0);
    _DEBUG_OUT("\n\n ***************************Last menu_MultiLogin::  \n\n");
    Is_In_Multiplayer_Mode = 1;
    Is_In_Multiplayer_IGM = 1;
  }
  if ( !LC_API_STRCMP_0((const char *)(v5 + 8), "menu_MultiplayerConnectivity") )
  {
    _DEBUG_OUT("\n\n ***************************Last menu_MultiplayerConnectivity::  \n\n");
    Is_In_Multiplayer_Mode = 1;
    Is_In_Multiplayer_IGM = 1;
  }
  if ( !LC_API_STRCMP_0((const char *)(v5 + 8), "menu_MainMenu") )
  {
    _DEBUG_OUT("\n\n ***************************Last menu_MainMenu::  \n\n");
    Is_In_Multiplayer_Mode = 1;
    Is_In_Multiplayer_IGM = 0;
  }
  if ( LC_API_STRCMP_0((const char *)(v5 + 8), "menu_VerificationLoading") )
  {
    if ( LC_API_STRCMP_0((const char *)(v5 + 8), "menu_MainMenu") )
    {
      if ( LC_API_STRCMP_0((const char *)(v5 + 8), "menu_StartGame") )
      {
        if ( LC_API_STRCMP_0((const char *)(v5 + 8), "menu_Options") )
        {
          if ( LC_API_STRCMP_0((const char *)(v5 + 8), "menu_info") )
          {
            if ( LC_API_STRCMP_0((const char *)(v5 + 8), "menu_HelpButtons") )
            {
              if ( LC_API_STRCMP_0((const char *)(v5 + 8), "menu_hud_confirm") )
              {
                if ( LC_API_STRCMP_0((const char *)(v5 + 8), "menu_Loading") )
                {
                  if ( LC_API_STRCMP_0((const char *)(v5 + 8), "menu_FadeFromBlackScreen") )
                  {
                    if ( LC_API_STRCMP_0((const char *)(v5 + 8), "menu_Ingame") )
                    {
                      if ( LC_API_STRCMP_0((const char *)(v5 + 8), "menu_splash") )
                      {
                        if ( LC_API_STRCMP_0((const char *)(v5 + 8), "menu_confirm") )
                        {
                          if ( LC_API_STRCMP_0((const char *)(v5 + 8), "menu_confirm2") )
                          {
                            if ( LC_API_STRCMP_0((const char *)(v5 + 8), "menu_playlist") )
                            {
                              if ( LC_API_STRCMP_0((const char *)(v5 + 8), "menu_SelectClass") )
                              {
                                if ( LC_API_STRCMP_0((const char *)(v5 + 8), "menu_EnterName") )
                                {
                                  if ( LC_API_STRCMP_0((const char *)(v5 + 8), "menu_About") )
                                  {
                                    if ( LC_API_STRCMP_0((const char *)(v5 + 8), "menu_Help") )
                                    {
                                      if ( LC_API_STRCMP_0((const char *)(v5 + 8), "menu_CharacterMenu")
                                        && LC_API_STRCMP_0((const char *)(v5 + 8), "menu_CharacterSheetNew")
                                        && LC_API_STRCMP_0((const char *)(v5 + 8), "menu_CharacterSheetStats")
                                        && LC_API_STRCMP_0((const char *)(v5 + 8), "menu_InventorySheetMain")
                                        && LC_API_STRCMP_0((const char *)(v5 + 8), "menu_SkillTreeSheetNew")
                                        && LC_API_STRCMP_0((const char *)(v5 + 8), "menu_FaerySheet")
                                        && LC_API_STRCMP_0((const char *)(v5 + 8), "menu_QuestLogSheetNEW")
                                        && LC_API_STRCMP_0((const char *)(v5 + 8), "menu_MapSheet") )
                                      {
                                        lastOpenMenuID = 13;
                                      }
                                      else
                                      {
                                        lastOpenMenuID = 12;
                                      }
                                    }
                                    else
                                    {
                                      lastOpenMenuID = 14;
                                    }
                                  }
                                  else
                                  {
                                    lastOpenMenuID = 15;
                                  }
                                }
                                else
                                {
                                  lastOpenMenuID = 16;
                                }
                              }
                              else
                              {
                                lastOpenMenuID = 17;
                              }
                            }
                            else
                            {
                              lastOpenMenuID = 18;
                              _DEBUG_OUT(
                                "\n\n from pop lastOpenMenuID+++++++++++++++++++++++++++++++++++++++ = %d \n\n",
                                18);
                            }
                          }
                          else
                          {
                            lastOpenMenuID = 19;
                            _DEBUG_OUT("\n\n from pop MENU_CONFIRM+++++++++++++++++++++++++++++++++++++++ = menu_confirm2 \n\n");
                          }
                        }
                        else
                        {
                          lastOpenMenuID = 19;
                          _DEBUG_OUT("\n\n from pop MENU_CONFIRM+++++++++++++++++++++++++++++++++++++++ = menu_confirm \n\n");
                        }
                      }
                      else
                      {
                        lastOpenMenuID = 11;
                      }
                    }
                    else
                    {
                      isInGameMenu = 1;
                      lastOpenMenuID = 10;
                    }
                  }
                  else
                  {
                    lastOpenMenuID = 9;
                  }
                }
                else
                {
                  lastOpenMenuID = 8;
                }
              }
              else
              {
                lastOpenMenuID = 7;
              }
            }
            else
            {
              if ( isInGameMenu )
                v32 = 5;
              else
                v32 = 6;
              lastOpenMenuID = v32;
            }
          }
          else
          {
            lastOpenMenuID = 4;
          }
        }
        else
        {
          lastOpenMenuID = 3;
        }
      }
      else
      {
        lastOpenMenuID = 2;
      }
    }
    else
    {
      isInGameMenu = 0;
      lastOpenMenuID = 1;
    }
  }
  else
  {
    Back_key_Glive = 1;
  }
  isBackKeyPressed = 0;
  v6 = *((_DWORD *)this + 74);
  if ( v6 <= 0 || (v7 = *(RenderFX **)(*((_DWORD *)this + 73) + 4 * (v6 - 1)), *((int *)v7 + 70) <= 0) )
  {
    v14 = v6 + 1;
    v12 = (_DWORD *)(v5 + 72);
    v13 = *((_DWORD *)a2 + 1);
    if ( v6 + 1 <= *((_DWORD *)this + 75) )
    {
      v15 = *((_DWORD *)this + 74);
      goto LABEL_18;
    }
  }
  else
  {
    CurrentState = (const char *)MenuFX::GetCurrentState(*(MenuFX **)(*((_DWORD *)this + 73) + 4 * (v6 - 1)));
    v9 = CurrentState + 8;
    v10 = CurrentState;
    (*(void (**)(void))(*(_DWORD *)CurrentState + 24))();
    RenderFX::InvokeASCallback(v7, v9, "OnHide", nullptr, 0);
    if ( (*((_DWORD *)v7 + 62) & 0x40) == 0 )
    {
      ptr = (gameswf::character *)gameswf::weak_ptr<gameswf::character>::get_ptr((_DWORD *)v10 + 18);
      if ( RenderFX::PlayAnim(v7, ptr, "focus_out", 0) )
      {
        *((_DWORD *)v10 + 22) = 4;
      }
      else
      {
        v31 = (gameswf::character *)gameswf::weak_ptr<gameswf::character>::get_ptr((_DWORD *)v10 + 18);
        if ( RenderFX::PlayAnim(v7, v31, "hide", 0) )
          *((_DWORD *)v10 + 22) = 2;
      }
    }
    Controller = RenderFX::GetController(v7, 0);
    gameswf::weak_ptr<gameswf::character>::operator=((int)(v10 + 80), *(gameswf::ref_counted **)(Controller + 16));
    if ( (*((_DWORD *)v7 + 62) & 8) != 0 )
    {
      v12 = (_DWORD *)(v5 + 72);
      v29 = gameswf::weak_ptr<gameswf::character>::operator->((_DWORD *)(v5 + 72));
      if ( (*(int (__fastcall **)(int, int))(*(_DWORD *)v29 + 8))(v29, 2) )
        *(_BYTE *)(gameswf::weak_ptr<gameswf::character>::get_ptr((_DWORD *)v10 + 18) + 234) = 0;
    }
    else
    {
      v12 = (_DWORD *)(v5 + 72);
    }
    v6 = *((_DWORD *)this + 74);
    v13 = *((_DWORD *)a2 + 1);
    v14 = v6 + 1;
    if ( v6 + 1 <= *((_DWORD *)this + 75) )
    {
      v15 = *((_DWORD *)this + 74);
      goto LABEL_18;
    }
  }
  gameswf::array<MenuFX *>::reserve((int)this + 292, v14 + (v14 >> 1));
  v15 = *((_DWORD *)this + 74);
LABEL_18:
  *(_DWORD *)(*((_DWORD *)this + 73) + 4 * v15) = v13;
  v16 = *((_DWORD *)this + 73);
  *((_DWORD *)this + 74) = v14;
  v17 = *(RenderFX **)(v16 + 4 * v6);
  v18 = *((_DWORD *)v17 + 70);
  v19 = v18 + 1;
  if ( v18 != -1 && v19 > *((_DWORD *)v17 + 71) )
    gameswf::array<MenuFX::State *>::reserve((int)v17 + 276, v19 + (v19 >> 1));
  *(_DWORD *)(*((_DWORD *)v17 + 69) + 4 * v18) = 0;
  v20 = *((_DWORD *)v17 + 69);
  *((_DWORD *)v17 + 70) = v19;
  *(_DWORD *)(v20 + 4 * v18) = v5;
  v21 = *(_DWORD *)(v5 + 76);
  if ( v21 )
  {
    v22 = *(_BYTE **)(v5 + 72);
    if ( !v22[4] )
    {
      v28 = (*(_DWORD *)v22)-- == 1;
      if ( v28 )
        gameswf::free_internal(v22);
      v21 = 0;
      *(_DWORD *)(v5 + 72) = 0;
      *(_DWORD *)(v5 + 76) = 0;
    }
  }
  *(_BYTE *)(v21 + 155) = 1;
  if ( (*((_DWORD *)v17 + 62) & 8) != 0 )
  {
    v26 = *(_DWORD *)(v5 + 76);
    if ( v26 )
    {
      v27 = *(_BYTE **)(v5 + 72);
      if ( !v27[4] )
      {
        v28 = (*(_DWORD *)v27)-- == 1;
        if ( v28 )
          gameswf::free_internal(v27);
        v26 = 0;
        *(_DWORD *)(v5 + 72) = 0;
        *(_DWORD *)(v5 + 76) = 0;
      }
    }
    if ( (*(int (__fastcall **)(int, int))(*(_DWORD *)v26 + 8))(v26, 2) )
      *(_BYTE *)(gameswf::weak_ptr<gameswf::character>::get_ptr(v12) + 234) = 1;
  }
  v23 = (gameswf::character *)gameswf::weak_ptr<gameswf::character>::get_ptr(v12);
  RenderFX::SetContext(v17, v23);
  RenderFX::InvokeASCallback(v17, (const char *)(v5 + 8), "OnShow", nullptr, 0);
  v24 = *((_DWORD *)v17 + 62);
  if ( (v24 & 0x40) == 0 )
  {
    v25 = (gameswf::character *)gameswf::weak_ptr<gameswf::character>::get_ptr(v12);
    RenderFX::PlayAnim(v17, v25, "show", 0);
    v24 = *((_DWORD *)v17 + 62);
  }
  if ( (v24 & 1) != 0 )
    (*(void (__fastcall **)(RenderFX *))(*(_DWORD *)v17 + 36))(v17);
  (*(void (__fastcall **)(int))(*(_DWORD *)v5 + 12))(v5);
  result = (*(int (__fastcall **)(int))(*(_DWORD *)v5 + 20))(v5);
  *(_DWORD *)(v5 + 88) = 1;
  return result;
}


// ===== 438c14 MultiMenuManager::PopMenu(bool) =====
void __fastcall MultiMenuManager::PopMenu(MultiMenuManager *this, int a2)
{
  int v4; // r1
  bool v5; // zf
  int v6; // r1
  int v7; // r3
  RenderFX *v8; // r4
  int v9; // r3
  int v10; // r0
  int v11; // r0
  int Root; // r0
  int v13; // r8
  int v14; // r4
  RenderFX *v15; // r4
  int v16; // r3
  int v17; // r8
  int v18; // r3
  _BYTE *v19; // r0
  gameswf::character *v20; // r0
  int v21; // r3
  int v22; // r0
  int v23; // r8
  int v24; // r3
  _BYTE *v25; // r0
  gameswf::character *ptr; // r0
  gameswf::character *v27; // r0
  gameswf::character *v28; // r0
  int v29; // r8
  int v30; // r3
  _BYTE *v31; // r0
  gameswf::character *v32; // r0

  if ( isInGameMenu )
  {
    v4 = lastOpenMenuID;
    if ( lastOpenMenuID == 7 )
    {
      v4 = 10;
      lastOpenMenuID = 10;
    }
    else
    {
      v5 = lastOpenMenuID == 10;
      if ( lastOpenMenuID != 10 )
        v5 = lastOpenMenuID == 5;
      if ( !v5 && lastOpenMenuID != 14 )
      {
        v4 = 9;
        lastOpenMenuID = 9;
      }
    }
    _DEBUG_OUT("\n\n from pop lastOpenMenuID = %d \n\n", v4);
  }
  if ( !isBackKeyPressed )
  {
    v6 = lastOpenMenuID;
    if ( lastOpenMenuID != 4 )
    {
      if ( lastOpenMenuID == 6 )
      {
        if ( isInGameMenu )
        {
          v6 = 10;
          lastOpenMenuID = 10;
          goto LABEL_19;
        }
        goto LABEL_84;
      }
      if ( lastOpenMenuID == 14 )
      {
        if ( isInGameMenu )
          v6 = 5;
        else
          v6 = 6;
        lastOpenMenuID = v6;
        goto LABEL_19;
      }
      if ( lastOpenMenuID != 3 )
      {
        if ( lastOpenMenuID == 5 )
        {
          v6 = 10;
          lastOpenMenuID = 10;
LABEL_19:
          _DEBUG_OUT("\n\n from pop22 lastOpenMenuID = %d \n\n", v6);
          goto LABEL_20;
        }
        if ( lastOpenMenuID == 12 )
        {
          v6 = 9;
          lastOpenMenuID = 9;
          goto LABEL_19;
        }
        if ( lastOpenMenuID != 15 )
          goto LABEL_19;
LABEL_84:
        v6 = 4;
        lastOpenMenuID = 4;
        goto LABEL_19;
      }
      if ( isInGameMenu )
      {
        v6 = 10;
        lastOpenMenuID = 10;
        goto LABEL_19;
      }
    }
    v6 = 1;
    lastOpenMenuID = 1;
    goto LABEL_19;
  }
LABEL_20:
  isBackKeyPressed = 0;
  v7 = *((_DWORD *)this + 74);
  do
  {
    if ( !v7 )
      break;
    v8 = *(RenderFX **)(*((_DWORD *)this + 73) + 4 * (v7 - 1));
    v9 = *((_DWORD *)v8 + 70);
    if ( v9 <= 0 )
      break;
    v10 = *(_DWORD *)(*((_DWORD *)v8 + 69) + 4 * (v9 - 1));
    (*(void (__fastcall **)(int))(*(_DWORD *)v10 + 24))(v10);
    v11 = *(_DWORD *)(*((_DWORD *)v8 + 69) + 4 * (*((_DWORD *)v8 + 70) - 1));
    (*(void (__fastcall **)(int))(*(_DWORD *)v11 + 16))(v11);
    RenderFX::InvokeASCallback(
      v8,
      (const char *)(*(_DWORD *)(*((_DWORD *)v8 + 69) + 4 * (*((_DWORD *)v8 + 70) - 1)) + 8),
      "OnHide",
      nullptr,
      0);
    if ( (*((_DWORD *)v8 + 62) & 0x40) == 0 )
    {
      ptr = (gameswf::character *)gameswf::weak_ptr<gameswf::character>::get_ptr((_DWORD *)(*(_DWORD *)(*((_DWORD *)v8 + 69) + 4 * (*((_DWORD *)v8 + 70) - 1))
                                                                                          + 72));
      RenderFX::PlayAnim(v8, ptr, "hide", 0);
    }
    *(_DWORD *)(*(_DWORD *)(*((_DWORD *)v8 + 69) + 4 * (*((_DWORD *)v8 + 70) - 1)) + 88) = 2;
    if ( (*((_DWORD *)v8 + 62) & 8) != 0 )
    {
      v23 = *(_DWORD *)(*((_DWORD *)v8 + 69) + 4 * (*((_DWORD *)v8 + 70) - 1));
      v24 = *(_DWORD *)(v23 + 76);
      if ( v24 )
      {
        v25 = *(_BYTE **)(v23 + 72);
        if ( !v25[4] )
        {
          v5 = (*(_DWORD *)v25)-- == 1;
          if ( v5 )
            gameswf::free_internal(v25);
          v24 = 0;
          *(_DWORD *)(v23 + 76) = 0;
          *(_DWORD *)(v23 + 72) = 0;
        }
      }
      if ( (*(int (__fastcall **)(int, int))(*(_DWORD *)v24 + 8))(v24, 2) )
        *(_BYTE *)(gameswf::weak_ptr<gameswf::character>::get_ptr((_DWORD *)(*(_DWORD *)(*((_DWORD *)v8 + 69)
                                                                                       + 4 * (*((_DWORD *)v8 + 70) - 1))
                                                                           + 72))
                 + 234) = 0;
    }
    Root = RenderFX::GetRoot(v8);
    RenderFX::SetContext(v8, *(gameswf::character **)(Root + 16));
    v13 = *((_DWORD *)v8 + 70) - 1;
    if ( *((_DWORD *)v8 + 70) != 1 && v13 > *((_DWORD *)v8 + 71) )
      gameswf::array<MenuFX::State *>::reserve((int)v8 + 276, v13 + (v13 >> 1));
    *((_DWORD *)v8 + 70) = v13;
    v14 = *((_DWORD *)this + 74) - 1;
    if ( *((_DWORD *)this + 74) == 1 )
    {
      *((_DWORD *)this + 74) = 0;
    }
    else
    {
      if ( v14 > *((_DWORD *)this + 75) )
        gameswf::array<MenuFX *>::reserve((int)this + 292, v14 + (v14 >> 1));
      *((_DWORD *)this + 74) = v14;
      if ( v14 > 0 )
      {
        v15 = *(RenderFX **)(*((_DWORD *)this + 73) + 4 * (v14 - 1));
        if ( v15 )
        {
          v16 = *((_DWORD *)v15 + 70);
          if ( v16 > 0 )
          {
            v17 = *(_DWORD *)(*((_DWORD *)v15 + 69) + 4 * (v16 - 1));
            v18 = *(_DWORD *)(v17 + 76);
            if ( v18 )
            {
              v19 = *(_BYTE **)(v17 + 72);
              if ( !v19[4] )
              {
                v5 = (*(_DWORD *)v19)-- == 1;
                if ( v5 )
                  gameswf::free_internal(v19);
                v18 = 0;
                *(_DWORD *)(v17 + 76) = 0;
                *(_DWORD *)(v17 + 72) = 0;
              }
            }
            *(_BYTE *)(v18 + 155) = 1;
            if ( (*((_DWORD *)v15 + 62) & 8) != 0 )
            {
              v29 = *(_DWORD *)(*((_DWORD *)this + 69) + 4 * (*((_DWORD *)this + 70) - 1));
              v30 = *(_DWORD *)(v29 + 76);
              if ( v30 )
              {
                v31 = *(_BYTE **)(v29 + 72);
                if ( !v31[4] )
                {
                  v5 = (*(_DWORD *)v31)-- == 1;
                  if ( v5 )
                    gameswf::free_internal(v31);
                  v30 = 0;
                  *(_DWORD *)(v29 + 76) = 0;
                  *(_DWORD *)(v29 + 72) = 0;
                }
              }
              if ( (*(int (__fastcall **)(int, int))(*(_DWORD *)v30 + 8))(v30, 2) )
                *(_BYTE *)(gameswf::weak_ptr<gameswf::character>::get_ptr((_DWORD *)(*(_DWORD *)(*((_DWORD *)v15 + 69)
                                                                                               + 4
                                                                                               * (*((_DWORD *)v15 + 70)
                                                                                                - 1))
                                                                                   + 72))
                         + 234) = 1;
            }
            v20 = (gameswf::character *)gameswf::weak_ptr<gameswf::character>::get_ptr((_DWORD *)(*(_DWORD *)(*((_DWORD *)v15 + 69) + 4 * (*((_DWORD *)v15 + 70) - 1))
                                                                                                + 72));
            RenderFX::SetContext(v15, v20);
            v21 = *((_DWORD *)v15 + 62);
            if ( (v21 & 0x40) == 0 )
            {
              RenderFX::InvokeASCallback(
                v15,
                (const char *)(*(_DWORD *)(*((_DWORD *)v15 + 69) + 4 * (*((_DWORD *)v15 + 70) - 1)) + 8),
                "OnShow",
                nullptr,
                0);
              v28 = (gameswf::character *)gameswf::weak_ptr<gameswf::character>::get_ptr((_DWORD *)(*(_DWORD *)(*((_DWORD *)v15 + 69) + 4 * (*((_DWORD *)v15 + 70) - 1))
                                                                                                  + 72));
              if ( !RenderFX::PlayAnim(v15, v28, "focus_in", 0) )
              {
                v32 = (gameswf::character *)gameswf::weak_ptr<gameswf::character>::get_ptr((_DWORD *)(*(_DWORD *)(*((_DWORD *)v15 + 69) + 4 * (*((_DWORD *)v15 + 70) - 1)) + 72));
                RenderFX::PlayAnim(v15, v32, "show", 0);
              }
              v21 = *((_DWORD *)v15 + 62);
            }
            if ( (v21 & 1) != 0
              && gameswf::weak_ptr<gameswf::character>::get_ptr((_DWORD *)(*(_DWORD *)(*((_DWORD *)v15 + 69)
                                                                                     + 4 * (*((_DWORD *)v15 + 70) - 1))
                                                                         + 80)) )
            {
              RenderFX::ResetFocus(v15, 0);
              v27 = (gameswf::character *)gameswf::weak_ptr<gameswf::character>::get_ptr((_DWORD *)(*(_DWORD *)(*((_DWORD *)v15 + 69) + 4 * (*((_DWORD *)v15 + 70) - 1))
                                                                                                  + 80));
              RenderFX::SetFocus(v15, v27, 0);
            }
            v22 = *(_DWORD *)(*((_DWORD *)v15 + 69) + 4 * (*((_DWORD *)v15 + 70) - 1));
            (*(void (__fastcall **)(int))(*(_DWORD *)v22 + 20))(v22);
            *(_DWORD *)(*(_DWORD *)(*((_DWORD *)v15 + 69) + 4 * (*((_DWORD *)v15 + 70) - 1)) + 88) = 3;
          }
        }
      }
    }
    if ( !a2 )
      break;
    v7 = *((_DWORD *)this + 74);
    if ( v7 <= 0 )
      break;
  }
  while ( *(int *)(*(_DWORD *)(*((_DWORD *)this + 73) + 4 * (v7 - 1)) + 280) > 0 );
}


// ===== 439270 MultiMenuManager::PopMenu(char const*,bool) =====
MenuManager *__fastcall MultiMenuManager::PopMenu(MultiMenuManager *this, const char *a2, int a3)
{
  MultiMenuManager *v3; // r4
  char *v5; // r9
  int (__fastcall *v6)(MultiMenuManager *, int); // r5
  MenuManager *v7; // r0
  int MenuByName; // r0
  MenuManager *result; // r0
  int v10; // r3
  MenuFX *v11; // r5
  MenuManager *CurrentState; // r10
  MenuManager *v13; // r0
  int v14; // r0
  int v15; // r0
  int v16; // r0
  int v17; // r10
  int v18; // r5
  RenderFX *v19; // r5
  int v20; // r3
  int v21; // r10
  int v22; // r3
  _BYTE *v23; // r0
  gameswf::character *v24; // r0
  int v25; // r3
  int v26; // r0
  int v27; // r10
  int v28; // r3
  _BYTE *v29; // r0
  gameswf::character *v30; // r0
  bool v31; // zf
  gameswf::character *v32; // r0
  gameswf::character *v33; // r0
  int v34; // r10
  int v35; // r3
  _BYTE *v36; // r0
  MenuManager *Instance; // r0
  MenuManager *v38; // r9
  int v39; // r11
  int i; // r10
  RenderFX *v41; // r7
  int v42; // r8
  int v43; // r6
  int v44; // r8
  int v45; // r5
  int Root; // r0
  int v47; // r3
  RenderFX *v48; // r7
  int v49; // r3
  int v50; // r3
  int v51; // r1
  _BYTE *v52; // r0
  gameswf::character *v53; // r0
  int v54; // r3
  int v55; // r2
  int v56; // r0
  int v57; // r3
  int v58; // r2
  _BYTE *v59; // r0
  gameswf::character *ptr; // r0
  gameswf::character *v61; // r0
  gameswf::character *v62; // r0
  gameswf::character *v63; // r0
  gameswf::character *v64; // r0
  int v65; // r0
  int v66; // [sp+Ch] [bp-20h]
  int v67; // [sp+Ch] [bp-20h]

  v3 = this;
  if ( !a3 )
  {
    Instance = (MenuManager *)MenuManager::GetInstance(this);
    result = (MenuManager *)MenuManager::GetMenuByName(Instance, a2);
    v38 = result;
    v39 = *((_DWORD *)v3 + 74) - 1;
    if ( v39 < 0 )
      return result;
    for ( i = 4 * v39; ; i -= 4 )
    {
      v41 = *(RenderFX **)(*((_DWORD *)v3 + 73) + i);
      v42 = *((_DWORD *)v41 + 70);
      v43 = v42 - 1;
      if ( v42 - 1 >= 0 )
        break;
LABEL_55:
      if ( --v39 == -1 )
        return result;
    }
    v44 = 4 * (v42 - 2);
    v45 = 4 * v43;
    while ( 1 )
    {
      if ( v38 == *(MenuManager **)(*((_DWORD *)v41 + 69) + v45) )
      {
        (*(void (__fastcall **)(MenuManager *))(*(_DWORD *)v38 + 24))(v38);
        (*(void (__fastcall **)(_DWORD))(**(_DWORD **)(*((_DWORD *)v41 + 69) + v45) + 16))(*(_DWORD *)(*((_DWORD *)v41 + 69) + v45));
        RenderFX::InvokeASCallback(
          v41,
          (const char *)(*(_DWORD *)(*((_DWORD *)v41 + 69) + v45) + 8),
          "OnHide",
          nullptr,
          0);
        if ( (*((_DWORD *)v41 + 62) & 0x40) == 0 )
        {
          ptr = (gameswf::character *)gameswf::weak_ptr<gameswf::character>::get_ptr((_DWORD *)(*(_DWORD *)(*((_DWORD *)v41 + 69) + v45)
                                                                                              + 72));
          RenderFX::PlayAnim(v41, ptr, "hide", 0);
        }
        *(_DWORD *)(*(_DWORD *)(*((_DWORD *)v41 + 69) + v45) + 88) = 2;
        if ( (*((_DWORD *)v41 + 62) & 8) != 0 )
        {
          v57 = *(_DWORD *)(*((_DWORD *)v41 + 69) + v45);
          v58 = *(_DWORD *)(v57 + 76);
          if ( v58 )
          {
            v59 = *(_BYTE **)(v57 + 72);
            if ( !v59[4] )
            {
              v31 = (*(_DWORD *)v59)-- == 1;
              if ( v31 )
              {
                v67 = v57;
                gameswf::free_internal(v59);
                v57 = v67;
              }
              v58 = 0;
              *(_DWORD *)(v57 + 76) = 0;
              *(_DWORD *)(v57 + 72) = 0;
            }
          }
          if ( (*(int (__fastcall **)(int, int))(*(_DWORD *)v58 + 8))(v58, 2) )
            *(_BYTE *)(gameswf::weak_ptr<gameswf::character>::get_ptr((_DWORD *)(*(_DWORD *)(*((_DWORD *)v41 + 69) + v45)
                                                                               + 72))
                     + 234) = 0;
        }
        Root = RenderFX::GetRoot(v41);
        RenderFX::SetContext(v41, *(gameswf::character **)(Root + 16));
        gameswf::array<MenuFX::State *>::remove((_DWORD *)v41 + 69, v43);
        result = (MenuManager *)gameswf::array<MenuFX *>::remove((_DWORD *)v3 + 73, v39);
        v47 = *((_DWORD *)v3 + 74);
        if ( v47 > 0 )
        {
          v48 = *(RenderFX **)(*((_DWORD *)v3 + 73) + 4 * (v47 - 1));
          if ( v48 )
          {
            v49 = *((_DWORD *)v48 + 70);
            if ( v49 > 0 )
              break;
          }
        }
      }
LABEL_54:
      --v43;
      v45 -= 4;
      v44 -= 4;
      if ( v43 == -1 )
        goto LABEL_55;
      v41 = *(RenderFX **)(*((_DWORD *)v3 + 73) + i);
    }
    v50 = *(_DWORD *)(*((_DWORD *)v48 + 69) + 4 * (v49 - 1));
    v51 = *(_DWORD *)(v50 + 76);
    if ( v51 )
    {
      v52 = *(_BYTE **)(v50 + 72);
      if ( !v52[4] )
      {
        v31 = (*(_DWORD *)v52)-- == 1;
        if ( v31 )
        {
          v66 = v50;
          gameswf::free_internal(v52);
          v50 = v66;
        }
        v51 = 0;
        *(_DWORD *)(v50 + 76) = 0;
        *(_DWORD *)(v50 + 72) = 0;
      }
    }
    *(_BYTE *)(v51 + 155) = 1;
    if ( (*((_DWORD *)v48 + 62) & 8) != 0 )
    {
      v65 = gameswf::weak_ptr<gameswf::character>::operator->((_DWORD *)(*(_DWORD *)(*((_DWORD *)v3 + 69)
                                                                                   + 4 * (*((_DWORD *)v3 + 70) - 1))
                                                                       + 72));
      if ( (*(int (__fastcall **)(int, int))(*(_DWORD *)v65 + 8))(v65, 2) )
        *(_BYTE *)(gameswf::weak_ptr<gameswf::character>::get_ptr((_DWORD *)(*(_DWORD *)(*((_DWORD *)v48 + 69)
                                                                                       + 4 * (*((_DWORD *)v48 + 70) - 1))
                                                                           + 72))
                 + 234) = 1;
    }
    v53 = (gameswf::character *)gameswf::weak_ptr<gameswf::character>::get_ptr((_DWORD *)(*(_DWORD *)(*((_DWORD *)v48 + 69) + 4 * (*((_DWORD *)v48 + 70) - 1))
                                                                                        + 72));
    RenderFX::SetContext(v48, v53);
    v54 = *((_DWORD *)v48 + 62);
    if ( (v54 & 0x40) == 0 )
    {
      v55 = *((_DWORD *)v48 + 70);
      if ( v43 != v55 )
        goto LABEL_68;
      RenderFX::InvokeASCallback(
        v48,
        (const char *)(*(_DWORD *)(*((_DWORD *)v48 + 69) + v44) + 8),
        "OnShow",
        (const gameswf::as_value *)(*((_DWORD *)v48 + 62) & 0x40),
        0);
      v61 = (gameswf::character *)gameswf::weak_ptr<gameswf::character>::get_ptr((_DWORD *)(*(_DWORD *)(*((_DWORD *)v48 + 69) + 4 * (*((_DWORD *)v48 + 70) - 1))
                                                                                          + 72));
      if ( RenderFX::PlayAnim(v48, v61, "focus_in", 0) )
      {
        v54 = *((_DWORD *)v48 + 62);
        v55 = *((_DWORD *)v48 + 70);
LABEL_68:
        if ( (v54 & 1) == 0 )
        {
LABEL_69:
          v56 = *(_DWORD *)(*((_DWORD *)v48 + 69) + 4 * (v55 - 1));
          result = (MenuManager *)(*(int (__fastcall **)(int))(*(_DWORD *)v56 + 20))(v56);
          *(_DWORD *)(*(_DWORD *)(*((_DWORD *)v48 + 69) + 4 * (*((_DWORD *)v48 + 70) - 1)) + 88) = 3;
          goto LABEL_54;
        }
LABEL_78:
        if ( gameswf::weak_ptr<gameswf::character>::get_ptr((_DWORD *)(*(_DWORD *)(*((_DWORD *)v48 + 69) + 4 * (v55 - 1))
                                                                     + 80)) )
        {
          RenderFX::ResetFocus(v48, 0);
          v63 = (gameswf::character *)gameswf::weak_ptr<gameswf::character>::get_ptr((_DWORD *)(*(_DWORD *)(*((_DWORD *)v48 + 69) + 4 * (*((_DWORD *)v48 + 70) - 1))
                                                                                              + 80));
          RenderFX::SetFocus(v48, v63, 0);
        }
        v55 = *((_DWORD *)v48 + 70);
        goto LABEL_69;
      }
      v62 = (gameswf::character *)gameswf::weak_ptr<gameswf::character>::get_ptr((_DWORD *)(*(_DWORD *)(*((_DWORD *)v48 + 69) + 4 * (*((_DWORD *)v48 + 70) - 1))
                                                                                          + 72));
      RenderFX::PlayAnim(v48, v62, "show", 0);
      v54 = *((_DWORD *)v48 + 62);
    }
    v55 = *((_DWORD *)v48 + 70);
    if ( (v54 & 1) == 0 )
      goto LABEL_69;
    goto LABEL_78;
  }
  v5 = (char *)this + 292;
  while ( 1 )
  {
    v6 = *(int (__fastcall **)(MultiMenuManager *, int))(*(_DWORD *)v3 + 64);
    v7 = (MenuManager *)MenuManager::GetInstance(this);
    MenuByName = MenuManager::GetMenuByName(v7, a2);
    result = (MenuManager *)v6(v3, MenuByName);
    if ( !result )
      break;
    v10 = *((_DWORD *)v3 + 74);
    if ( v10 <= 0 )
      break;
    v11 = *(MenuFX **)(*((_DWORD *)v3 + 73) + 4 * (v10 - 1));
    if ( *((int *)v11 + 70) <= 0 )
      break;
    CurrentState = (MenuManager *)MenuFX::GetCurrentState(v11);
    v13 = (MenuManager *)MenuManager::GetInstance(CurrentState);
    result = (MenuManager *)MenuManager::GetMenuByName(v13, a2);
    if ( CurrentState == result )
      break;
    v14 = *(_DWORD *)(*((_DWORD *)v11 + 69) + 4 * (*((_DWORD *)v11 + 70) - 1));
    (*(void (__fastcall **)(int))(*(_DWORD *)v14 + 24))(v14);
    v15 = *(_DWORD *)(*((_DWORD *)v11 + 69) + 4 * (*((_DWORD *)v11 + 70) - 1));
    (*(void (__fastcall **)(int))(*(_DWORD *)v15 + 16))(v15);
    RenderFX::InvokeASCallback(
      v11,
      (const char *)(*(_DWORD *)(*((_DWORD *)v11 + 69) + 4 * (*((_DWORD *)v11 + 70) - 1)) + 8),
      "OnHide",
      nullptr,
      0);
    if ( (*((_DWORD *)v11 + 62) & 0x40) == 0 )
    {
      v30 = (gameswf::character *)gameswf::weak_ptr<gameswf::character>::get_ptr((_DWORD *)(*(_DWORD *)(*((_DWORD *)v11 + 69) + 4 * (*((_DWORD *)v11 + 70) - 1))
                                                                                          + 72));
      RenderFX::PlayAnim(v11, v30, "hide", 0);
    }
    *(_DWORD *)(*(_DWORD *)(*((_DWORD *)v11 + 69) + 4 * (*((_DWORD *)v11 + 70) - 1)) + 88) = 2;
    if ( (*((_DWORD *)v11 + 62) & 8) != 0 )
    {
      v27 = *(_DWORD *)(*((_DWORD *)v11 + 69) + 4 * (*((_DWORD *)v11 + 70) - 1));
      v28 = *(_DWORD *)(v27 + 76);
      if ( v28 )
      {
        v29 = *(_BYTE **)(v27 + 72);
        if ( !v29[4] )
        {
          v31 = (*(_DWORD *)v29)-- == 1;
          if ( v31 )
            gameswf::free_internal(v29);
          v28 = 0;
          *(_DWORD *)(v27 + 76) = 0;
          *(_DWORD *)(v27 + 72) = 0;
        }
      }
      if ( (*(int (__fastcall **)(int, int))(*(_DWORD *)v28 + 8))(v28, 2) )
        *(_BYTE *)(gameswf::weak_ptr<gameswf::character>::get_ptr((_DWORD *)(*(_DWORD *)(*((_DWORD *)v11 + 69)
                                                                                       + 4 * (*((_DWORD *)v11 + 70) - 1))
                                                                           + 72))
                 + 234) = 0;
    }
    v16 = RenderFX::GetRoot(v11);
    this = (MultiMenuManager *)RenderFX::SetContext(v11, *(gameswf::character **)(v16 + 16));
    v17 = *((_DWORD *)v11 + 70) - 1;
    if ( *((_DWORD *)v11 + 70) != 1 && v17 > *((_DWORD *)v11 + 71) )
      gameswf::array<MenuFX::State *>::reserve((int)v11 + 276, v17 + (v17 >> 1));
    *((_DWORD *)v11 + 70) = v17;
    v18 = *((_DWORD *)v3 + 74) - 1;
    if ( *((_DWORD *)v3 + 74) == 1 )
    {
      *((_DWORD *)v3 + 74) = 0;
    }
    else
    {
      if ( v18 > *((_DWORD *)v3 + 75) )
        gameswf::array<MenuFX *>::reserve((int)v5, v18 + (v18 >> 1));
      *((_DWORD *)v3 + 74) = v18;
      if ( v18 > 0 )
      {
        v19 = *(RenderFX **)(*((_DWORD *)v3 + 73) + 4 * (v18 - 1));
        if ( v19 )
        {
          v20 = *((_DWORD *)v19 + 70);
          if ( v20 > 0 )
          {
            v21 = *(_DWORD *)(*((_DWORD *)v19 + 69) + 4 * (v20 - 1));
            v22 = *(_DWORD *)(v21 + 76);
            if ( v22 )
            {
              v23 = *(_BYTE **)(v21 + 72);
              if ( !v23[4] )
              {
                v31 = (*(_DWORD *)v23)-- == 1;
                if ( v31 )
                  gameswf::free_internal(v23);
                v22 = 0;
                *(_DWORD *)(v21 + 76) = 0;
                *(_DWORD *)(v21 + 72) = 0;
              }
            }
            *(_BYTE *)(v22 + 155) = 1;
            if ( (*((_DWORD *)v19 + 62) & 8) != 0 )
            {
              v34 = *(_DWORD *)(*((_DWORD *)v3 + 69) + 4 * (*((_DWORD *)v3 + 70) - 1));
              v35 = *(_DWORD *)(v34 + 76);
              if ( v35 )
              {
                v36 = *(_BYTE **)(v34 + 72);
                if ( !v36[4] )
                {
                  v31 = (*(_DWORD *)v36)-- == 1;
                  if ( v31 )
                    gameswf::free_internal(v36);
                  v35 = 0;
                  *(_DWORD *)(v34 + 76) = 0;
                  *(_DWORD *)(v34 + 72) = 0;
                }
              }
              if ( (*(int (__fastcall **)(int, int))(*(_DWORD *)v35 + 8))(v35, 2) )
                *(_BYTE *)(gameswf::weak_ptr<gameswf::character>::get_ptr((_DWORD *)(*(_DWORD *)(*((_DWORD *)v19 + 69)
                                                                                               + 4
                                                                                               * (*((_DWORD *)v19 + 70)
                                                                                                - 1))
                                                                                   + 72))
                         + 234) = 1;
            }
            v24 = (gameswf::character *)gameswf::weak_ptr<gameswf::character>::get_ptr((_DWORD *)(*(_DWORD *)(*((_DWORD *)v19 + 69) + 4 * (*((_DWORD *)v19 + 70) - 1))
                                                                                                + 72));
            RenderFX::SetContext(v19, v24);
            v25 = *((_DWORD *)v19 + 62);
            if ( (v25 & 0x40) == 0 )
            {
              RenderFX::InvokeASCallback(
                v19,
                (const char *)(*(_DWORD *)(*((_DWORD *)v19 + 69) + 4 * (*((_DWORD *)v19 + 70) - 1)) + 8),
                "OnShow",
                nullptr,
                0);
              v33 = (gameswf::character *)gameswf::weak_ptr<gameswf::character>::get_ptr((_DWORD *)(*(_DWORD *)(*((_DWORD *)v19 + 69) + 4 * (*((_DWORD *)v19 + 70) - 1))
                                                                                                  + 72));
              if ( !RenderFX::PlayAnim(v19, v33, "focus_in", 0) )
              {
                v64 = (gameswf::character *)gameswf::weak_ptr<gameswf::character>::get_ptr((_DWORD *)(*(_DWORD *)(*((_DWORD *)v19 + 69) + 4 * (*((_DWORD *)v19 + 70) - 1)) + 72));
                RenderFX::PlayAnim(v19, v64, "show", 0);
              }
              v25 = *((_DWORD *)v19 + 62);
            }
            if ( (v25 & 1) != 0 )
            {
              if ( gameswf::weak_ptr<gameswf::character>::get_ptr((_DWORD *)(*(_DWORD *)(*((_DWORD *)v19 + 69)
                                                                                       + 4 * (*((_DWORD *)v19 + 70) - 1))
                                                                           + 80)) )
              {
                RenderFX::ResetFocus(v19, 0);
                v32 = (gameswf::character *)gameswf::weak_ptr<gameswf::character>::get_ptr((_DWORD *)(*(_DWORD *)(*((_DWORD *)v19 + 69) + 4 * (*((_DWORD *)v19 + 70) - 1)) + 80));
                RenderFX::SetFocus(v19, v32, 0);
              }
            }
            v26 = *(_DWORD *)(*((_DWORD *)v19 + 69) + 4 * (*((_DWORD *)v19 + 70) - 1));
            this = (MultiMenuManager *)(*(int (__fastcall **)(int))(*(_DWORD *)v26 + 20))(v26);
            *(_DWORD *)(*(_DWORD *)(*((_DWORD *)v19 + 69) + 4 * (*((_DWORD *)v19 + 70) - 1)) + 88) = 3;
          }
        }
      }
    }
  }
  return result;
}


// ===== 439c34 IsPlayableClassID(int) =====
bool __fastcall IsPlayableClassID(int a1)
{
  bool v1; // zf

  v1 = a1 == 263;
  if ( a1 != 263 )
    v1 = a1 == 325;
  return v1 || a1 == 290;
}


// ===== 439c60 NativeSendReady(gameswf::fn_call const&) =====
void NativeSendReady()
{
  ;
}


// ===== 439c64 NativeLaunchIGP(gameswf::fn_call const&) =====
void NativeLaunchIGP()
{
  ;
}


// ===== 439c68 NativeSetLockZoom(bool) =====
char __fastcall NativeSetLockZoom(char result)
{
  int v1; // r3

  v1 = *(_DWORD *)(dword_99F77C + 32);
  if ( v1 )
    *(_BYTE *)(v1 + 134) = result;
  return result;
}


// ===== 439c94 NativeUnlockZoom(gameswf::fn_call const&) =====
int NativeUnlockZoom()
{
  return NativeSetLockZoom(0);
}


// ===== 439c9c NativeLockZoom(gameswf::fn_call const&) =====
int NativeLockZoom()
{
  return NativeSetLockZoom(1);
}


// ===== 439ca4 NativeTouchToMove(gameswf::fn_call const&) =====
void NativeTouchToMove()
{
  ;
}


// ===== 439ca8 NativeIPodSetShuffle(gameswf::fn_call const&) =====
void NativeIPodSetShuffle()
{
  ;
}


// ===== 439cac NativeGCInvite(gameswf::fn_call const&) =====
void NativeGCInvite()
{
  ;
}


// ===== 439cb0 OnlineSingleton<OnlineGameState>::~OnlineSingleton() =====
void OnlineSingleton<OnlineGameState>::~OnlineSingleton()
{
  ;
}


// ===== 439cb4 gameswf::cast_to<gameswf::as_object>(gameswf::as_object_interface *) =====
int __fastcall gameswf::cast_to<gameswf::as_object>(int a1)
{
  if ( a1 && (*(int (__fastcall **)(int, _DWORD))(*(_DWORD *)a1 + 8))(a1, 0) )
    return a1;
  else
    return 0;
}


// ===== 439ce8 gameswf::cast_to<gameswf::as_array>(gameswf::as_object_interface *) =====
int __fastcall gameswf::cast_to<gameswf::as_array>(int a1)
{
  if ( a1 && (*(int (__fastcall **)(int, int))(*(_DWORD *)a1 + 8))(a1, 16) )
    return a1;
  else
    return 0;
}


// ===== 439d1c OnlineSingleton<OnlineGameState>::~OnlineSingleton() =====
_DWORD *__fastcall OnlineSingleton<OnlineGameState>::~OnlineSingleton(_DWORD *a1)
{
  *a1 = off_968358;
  CustomFree(a1);
  return a1;
}


// ===== 439d50 gameswf::as_value::as_value(int) =====
gameswf::as_value *__fastcall gameswf::as_value::as_value(gameswf::as_value *this, int a2)
{
  double v3; // r0
  unsigned int v4; // r2

  *(_BYTE *)this = 0;
  *((_BYTE *)this + 1) = 2;
  v3 = (double)a2;
  v4 = LODWORD(v3);
  *(_QWORD *)((char *)this + 4) = __PAIR64__(HIDWORD(v3), v4);
  return this;
}


// ===== 439d8c gameswf::as_value::is_number(void) =====
bool __fastcall gameswf::as_value::is_number(gameswf::as_value *this)
{
  return *((_BYTE *)this + 1) == 2;
}


// ===== 439dd8 NativePopAllMenus(gameswf::fn_call const&) =====
int __fastcall NativePopAllMenus(MenuManager *a1)
{
  int Instance; // r0

  Instance = MenuManager::GetInstance(a1);
  return (*(int (__fastcall **)(_DWORD, int))(**(_DWORD **)(Instance + 244) + 56))(*(_DWORD *)(Instance + 244), 1);
}


// ===== 439dfc NativeBeginCustom(gameswf::fn_call const&) =====
int __fastcall NativeBeginCustom(const gameswf::fn_call *a1)
{
  MenuManager *Instance; // r0
  RenderFX *HUDRoot; // r5
  int SavedOption; // r0
  gameswf::character *v4; // r0
  HUDControls *v5; // r0
  HUDControls *v6; // r0
  char v8[20]; // [sp+8h] [bp-1Ch] BYREF

  Instance = (MenuManager *)MenuManager::GetInstance(a1);
  HUDRoot = (RenderFX *)MenuManager::GetHUDRoot(Instance);
  SavedOption = Application::GetSavedOption((Application *)&Singleton<Application>::s_inst, "HUDStyle");
  sprintf(v8, "_root.menu_HUD_%d", SavedOption);
  v4 = (gameswf::character *)RenderFX::Find(HUDRoot, v8);
  v5 = (HUDControls *)RenderFX::InvokeASCallback(HUDRoot, v4, "SetCustomText", nullptr, 0);
  v6 = (HUDControls *)HUDControls::GetInstance(v5);
  return HUDControls::BeginCustom(v6);
}


// ===== 439ebc NativeIsBluetoothWifiEnabled(gameswf::fn_call const&) =====
int __fastcall NativeIsBluetoothWifiEnabled(gameswf::as_value **a1)
{
  return gameswf::as_value::set_bool(*a1, 1);
}


// ===== 439ec8 NativeIsJapaneseVersion(gameswf::fn_call const&) =====
int __fastcall NativeIsJapaneseVersion(gameswf::as_value **a1)
{
  if ( JAPANESE_BUILD )
    return gameswf::as_value::set_bool(*a1, 1);
  else
    return gameswf::as_value::set_bool(*a1, 0);
}


// ===== 439f00 NativeEnableGameCenter(gameswf::fn_call const&) =====
int __fastcall NativeEnableGameCenter(gameswf::as_value **a1)
{
  return gameswf::as_value::set_bool(*a1, 1);
}


// ===== 439f0c NativeBluetoothCheck(gameswf::fn_call const&) =====
int __fastcall NativeBluetoothCheck(gameswf::as_value **a1)
{
  return gameswf::as_value::set_bool(*a1, 1);
}


// ===== 439f18 NativeIsMultiplayerEnabled(gameswf::fn_call const&) =====
int __fastcall NativeIsMultiplayerEnabled(gameswf::as_value **a1)
{
  char IsHighPerformance; // r1
  gameswf::as_value *v2; // r4
  gameswf::as_value *v3; // r0

  if ( SHARP_DEVICES )
    return gameswf::as_value::set_bool(*a1, 1);
  IsHighPerformance = HTC_DEVICES;
  if ( HTC_DEVICES )
    return gameswf::as_value::set_bool(*a1, 1);
  if ( NO_IGP )
  {
    v3 = *a1;
  }
  else
  {
    v2 = *a1;
    IsHighPerformance = Device::IsHighPerformance((Device *)a1);
    v3 = v2;
  }
  return gameswf::as_value::set_bool(v3, IsHighPerformance);
}


// ===== 439fa4 NativeScreenIsBlack(gameswf::fn_call const&) =====
int __fastcall NativeScreenIsBlack(const gameswf::fn_call *a1)
{
  int result; // r0

  result = GetOnline();
  if ( *(_BYTE *)(result + 5) )
  {
    if ( *(_DWORD *)(dword_99F76C + 1812) == 1 )
      *(_DWORD *)(dword_99F76C + 1812) = 2;
  }
  return result;
}


// ===== 439fe8 NativeIsMultiplayerGame(gameswf::fn_call const&) =====
int __fastcall NativeIsMultiplayerGame(gameswf::as_value **a1)
{
  char v2; // r1

  v2 = *(_BYTE *)(GetOnline() + 5);
  return gameswf::as_value::set_bool(*a1, v2);
}


// ===== 43a004 NativeIsBluetooth(gameswf::fn_call const&) =====
int __fastcall NativeIsBluetooth(gameswf::as_value **a1)
{
  if ( *(_BYTE *)(GetOnline() + 5) && *(_DWORD *)(OnlineSingleton<OnlineGameState>::GetInstance() + 52) == 2 )
    return gameswf::as_value::set_bool(*a1, 1);
  else
    return gameswf::as_value::set_bool(*a1, 0);
}


// ===== 43a04c NativeIsOnlineMode(gameswf::fn_call const&) =====
int __fastcall NativeIsOnlineMode(gameswf::as_value **a1)
{
  if ( *(_BYTE *)(OnlineSingleton<OnlineGameState>::GetInstance() + 40) && *(_BYTE *)(GetOnline() + 5) )
    return gameswf::as_value::set_bool(*a1, 1);
  else
    return gameswf::as_value::set_bool(*a1, 0);
}


// ===== 43a094 NativeIsGLLiveMultiplayer(gameswf::fn_call const&) =====
int __fastcall NativeIsGLLiveMultiplayer(gameswf::as_value **a1)
{
  if ( *(_DWORD *)(OnlineSingleton<OnlineGameState>::GetInstance() + 52) == 3 )
    return gameswf::as_value::set_bool(*a1, 1);
  else
    return gameswf::as_value::set_bool(*a1, 0);
}


// ===== 43a0cc NativeSendRoomSearchRequest(gameswf::fn_call const&) =====
int __fastcall NativeSendRoomSearchRequest(const gameswf::fn_call *a1)
{
  int result; // r0

  result = OnlineSingleton<OnlineGameState>::GetInstance();
  *(_DWORD *)(result + 20) = 102;
  return result;
}


// ===== 43a0e0 NativeGLXPlayerLoggedIn(gameswf::fn_call const&) =====
int __fastcall NativeGLXPlayerLoggedIn(gameswf::as_value **a1)
{
  char v2; // r1

  v2 = *(_BYTE *)(OnlineSingleton<OnlineGameState>::GetInstance() + 38);
  return gameswf::as_value::set_bool(*a1, v2);
}


// ===== 43a0fc NativeOnlineSanityCheck(gameswf::fn_call const&) =====
int __fastcall NativeOnlineSanityCheck(const gameswf::fn_call *a1)
{
  int result; // r0

  result = OnlineSingleton<OnlineGameState>::GetInstance();
  *(_BYTE *)(result + 38) = 0;
  return result;
}


// ===== 43a110 NativeCreateMultiplayerLobby(gameswf::fn_call const&) =====
int __fastcall NativeCreateMultiplayerLobby(const gameswf::fn_call *a1)
{
  int result; // r0

  result = OnlineSingleton<OnlineGameState>::GetInstance();
  *(_DWORD *)(result + 20) = 101;
  return result;
}


// ===== 43a124 NativeSetMultitouch(gameswf::fn_call const&) =====
int __fastcall NativeSetMultitouch(const gameswf::fn_call *a1)
{
  int result; // r0
  MenuManager *v2; // r0
  char v3; // r4

  if ( *((_DWORD *)a1 + 4) == 1 )
  {
    v2 = (MenuManager *)gameswf::as_value::to_bool((gameswf::as_value *)(**((_DWORD **)a1 + 3) + 12
                                                                                               * *((_DWORD *)a1 + 5)));
    v3 = (char)v2;
    result = MenuManager::GetInstance(v2);
    *(_BYTE *)(result + 272) = v3;
  }
  else
  {
    result = MenuManager::GetInstance(a1);
    *(_BYTE *)(result + 272) = 1;
  }
  return result;
}


// ===== 43a16c NativeIsKorean(gameswf::fn_call const&) =====
int __fastcall NativeIsKorean(gameswf::as_value **a1)
{
  bool v2; // r1

  v2 = SavegameManager::getOption((SavegameManager *)dword_99F778, "Language") == 5;
  return gameswf::as_value::set_bool(*a1, v2);
}


// ===== 43a1b8 gameswf::as_value::to_int(void) =====
int __fastcall gameswf::as_value::to_int(gameswf::as_value *this)
{
  double v1; // r0

  LODWORD(v1) = gameswf::as_value::to_number(this);
  return (int)v1;
}


// ===== 43a1c8 NativeEnableBluetooth(gameswf::fn_call const&) =====
int __fastcall NativeEnableBluetooth(const gameswf::fn_call *a1)
{
  char IsBluetoothSupported; // r1

  IsBluetoothSupported = Device::IsBluetoothSupported(a1);
  return gameswf::as_value::set_bool(*(gameswf::as_value **)a1, IsBluetoothSupported);
}


// ===== 43a1e4 NativeAddFriend(gameswf::fn_call const&) =====
int __fastcall NativeAddFriend(const gameswf::fn_call *a1)
{
  int result; // r0
  char *v3; // r4
  CMatchingGLLive *v4; // r0
  char *v5; // r1

  result = GetOnline();
  if ( *(_BYTE *)(result + 5) )
  {
    result = OnlineSingleton<OnlineGameState>::GetInstance();
    if ( *(_DWORD *)(result + 52) == 3 )
    {
      v3 = gameswf::as_value::to_tu_string((gameswf::as_value *)(**((_DWORD **)a1 + 3) + 12 * *((_DWORD *)a1 + 5)));
      v4 = (CMatchingGLLive *)CMatching::Get((CMatching *)v3);
      if ( *v3 == -1 )
        v5 = *((char **)v3 + 3);
      else
        v5 = v3 + 1;
      return CMatchingGLLive::SendGLFriendInvite(v4, v5);
    }
  }
  return result;
}


// ===== 43a248 NativeSendGLInvite(gameswf::fn_call const&) =====
int __fastcall NativeSendGLInvite(const gameswf::fn_call *a1)
{
  int result; // r0
  char *v3; // r4
  CMatchingGLLive *v4; // r0
  char *v5; // r1

  result = GetOnline();
  if ( *(_BYTE *)(result + 5) )
  {
    result = OnlineSingleton<OnlineGameState>::GetInstance();
    if ( *(_DWORD *)(result + 52) == 3 )
    {
      v3 = gameswf::as_value::to_tu_string((gameswf::as_value *)(**((_DWORD **)a1 + 3) + 12 * *((_DWORD *)a1 + 5)));
      v4 = (CMatchingGLLive *)CMatching::Get((CMatching *)v3);
      if ( *v3 == -1 )
        v5 = *((char **)v3 + 3);
      else
        v5 = v3 + 1;
      return CMatchingGLLive::SendGLFriendsGameInvite(v4, v5);
    }
  }
  return result;
}


// ===== 43a2ac gameswf::as_value::as_value(char const*) =====
gameswf::as_value *__fastcall gameswf::as_value::as_value(gameswf::as_value *this, const char *a2)
{
  *((_BYTE *)this + 1) = 0;
  *(_BYTE *)this = 0;
  gameswf::as_value::set_string(this, a2);
  return this;
}


// ===== 43a2cc NativeIsMultiplayerHost(gameswf::fn_call const&) =====
int __fastcall NativeIsMultiplayerHost(gameswf::as_value **a1)
{
  CMatching *Instance; // r0
  gameswf::as_value *v3; // r5
  char IsHost; // r1
  gameswf::as_value *v5; // r0
  gameswf::as_value *v7; // r4
  CMatchingGLLive *v8; // r0

  if ( !*(_BYTE *)(GetOnline() + 5) )
    return gameswf::as_value::set_bool(*a1, 1);
  Instance = (CMatching *)OnlineSingleton<OnlineGameState>::GetInstance();
  if ( (unsigned int)(*((_DWORD *)Instance + 13) - 3) <= 1 )
  {
    v7 = *a1;
    v8 = (CMatchingGLLive *)CMatching::Get(Instance);
    IsHost = CMatchingGLLive::IsHost(v8);
    v5 = v7;
  }
  else
  {
    v3 = *a1;
    IsHost = PlayerManager::IsLocalPlayerHosting((PlayerManager *)dword_99F76C);
    v5 = v3;
  }
  return gameswf::as_value::set_bool(v5, IsHost);
}


// ===== 43a358 NativeWiFiCheck(gameswf::fn_call const&) =====
int __fastcall NativeWiFiCheck(gameswf::as_value **a1)
{
  bool IsWifiEnabled; // r1

  IsWifiEnabled = Application::IsWifiEnabled((Application *)&Singleton<Application>::s_inst);
  return gameswf::as_value::set_bool(*a1, IsWifiEnabled);
}


// ===== 43a38c NativeGCAutoMatch(gameswf::fn_call const&) =====
int __fastcall NativeGCAutoMatch(const gameswf::fn_call *a1)
{
  OnlineGameState *Instance; // r0

  Instance = (OnlineGameState *)OnlineSingleton<OnlineGameState>::GetInstance();
  return OnlineGameState::Init(Instance, 4);
}


// ===== 43a3a0 NativeGCLeaderboards(gameswf::fn_call const&) =====
bool __fastcall NativeGCLeaderboards(const gameswf::fn_call *a1)
{
  gameswf::as_value::to_string((gameswf::as_value *)(**((_DWORD **)a1 + 3) + 12 * *((_DWORD *)a1 + 5)));
  return Application::IsWifiEnabled((Application *)&Singleton<Application>::s_inst);
}


// ===== 43a3dc NativeMultiplayerBack(gameswf::fn_call const&) =====
int __fastcall NativeMultiplayerBack(const gameswf::fn_call *a1)
{
  int v1; // r4
  int result; // r0
  int v3; // r4
  int i; // r5

  v1 = gameswf::as_value::to_string((gameswf::as_value *)(**((_DWORD **)a1 + 3) + 12 * *((_DWORD *)a1 + 5)));
  *(_DWORD *)(OnlineSingleton<OnlineGameState>::GetInstance() + 48) = v1;
  result = OnlineSingleton<OnlineGameState>::GetInstance();
  v3 = *(_DWORD *)(result + 8);
  for ( i = result; v3; v3 = *(_DWORD *)(v3 + 8) )
  {
    while ( *(_DWORD *)v3 != 15 )
    {
      v3 = *(_DWORD *)(v3 + 8);
      if ( !v3 )
        return result;
    }
    result = (*(int (__fastcall **)(_DWORD))(v3 + 4))(*(_DWORD *)(i + 16));
  }
  return result;
}


// ===== 43a450 NativeShowLeaderboard(gameswf::fn_call const&) =====
int __fastcall NativeShowLeaderboard(const gameswf::fn_call *a1)
{
  int result; // r0
  const char *v3; // r5
  GLXPlayerLeaderboard *v4; // r0
  GLXPlayerLeaderboard *v5; // r7
  int CurrentPlayerLeaderboardPosition; // r0
  GLXPlayerLeaderboard *v7; // r0
  GLXPlayerLeaderboard *v8; // r0

  _DEBUG_OUT("XSocket::Run(): Connecting... \n");
  result = Application::IsWifiEnabled((Application *)&Singleton<Application>::s_inst);
  if ( result )
  {
    v3 = (const char *)gameswf::as_value::to_string((gameswf::as_value *)(**((_DWORD **)a1 + 3)
                                                                        + 12 * *((_DWORD *)a1 + 5)));
    _DEBUG_OUT("+ Displaying GC Leaderboards [ %s] ...\n", v3);
    if ( !LC_API_STRCMP_0("init", v3) )
    {
      v8 = *(GLXPlayerLeaderboard **)(CMatching::Get(nullptr) + 26396);
      *((_DWORD *)v8 + 21) = 0;
      GLXPlayerLeaderboard::sendRankGet(v8, 0, 0, 10, 1, 1);
      leaderboardcount = 0;
      leader = 1;
    }
    if ( !LC_API_STRCMP_0("next", v3) )
    {
      leaderboardcount += 10;
      v7 = *(GLXPlayerLeaderboard **)(CMatching::Get(nullptr) + 26396);
      *((_DWORD *)v7 + 21) = 0;
      GLXPlayerLeaderboard::sendRankGet(v7, 0, leaderboardcount, leaderboardcount + 10, 1, 1);
      leader = 1;
    }
    if ( !LC_API_STRCMP_0("prev", v3) )
    {
      leaderboardcount -= 10;
      if ( leaderboardcount >= 0 )
      {
        v4 = *(GLXPlayerLeaderboard **)(CMatching::Get(nullptr) + 26396);
        *((_DWORD *)v4 + 21) = 0;
        GLXPlayerLeaderboard::sendRankGet(v4, 0, leaderboardcount, leaderboardcount + 10, 1, 1);
        leader = 1;
      }
      else
      {
        leaderboardcount = 0;
      }
    }
    result = LC_API_STRCMP_0("my_rank", v3);
    if ( !result )
    {
      v5 = *(GLXPlayerLeaderboard **)(CMatching::Get(nullptr) + 26396);
      *((_DWORD *)v5 + 21) = 0;
      CurrentPlayerLeaderboardPosition = GLXPlayerLeaderboard::getCurrentPlayerLeaderboardPosition(v5);
      leaderboardcount = CurrentPlayerLeaderboardPosition - CurrentPlayerLeaderboardPosition % 10;
      result = GLXPlayerLeaderboard::sendRankGet(v5, 0, leaderboardcount, leaderboardcount + 10, 1, 1);
      leader = 1;
    }
  }
  return result;
}


// ===== 43a6a4 NativeLaunchTwitter(gameswf::fn_call const&) =====
int __fastcall NativeLaunchTwitter(const gameswf::fn_call *a1)
{
  return SavegameManager::getLanguage((SavegameManager *)dword_99F778);
}


// ===== 43a6c4 NativeGCAchievements(gameswf::fn_call const&) =====
int __fastcall NativeGCAchievements(const gameswf::fn_call *a1)
{
  int Language; // r0

  gameswf::as_value::to_string((gameswf::as_value *)(**((_DWORD **)a1 + 3) + 12 * *((_DWORD *)a1 + 5)));
  Language = SavegameManager::getLanguage((SavegameManager *)dword_99F778);
  switch ( Language )
  {
    case 4:
      return nativeOpenGLive(5);
    case 5:
      return nativeOpenGLive(6);
    case 6:
      return nativeOpenGLive(7);
    case 7:
      return nativeOpenGLive(4);
  }
  return nativeOpenGLive(Language);
}


// ===== 43a758 NativeGLLive(gameswf::fn_call const&) =====
int __fastcall NativeGLLive(const gameswf::fn_call *a1)
{
  int Language; // r0

  Language = SavegameManager::getLanguage((SavegameManager *)dword_99F778);
  switch ( Language )
  {
    case 4:
      return nativeOpenGLive(5);
    case 5:
      return nativeOpenGLive(6);
    case 6:
      return nativeOpenGLive(7);
    case 7:
      return nativeOpenGLive(4);
  }
  return nativeOpenGLive(Language);
}


// ===== 43a7d4 std::operator==<char,std::char_traits<char>,std::allocator<char>>(std::basic_string<char,std::char_traits<char>,std::allocator<char>> const&,std::basic_string<char,std::char_traits<char>,std::allocator<char>> const&) =====
bool __fastcall std::operator==<char>(int a1, int a2)
{
  int v2; // r2
  int v3; // r3
  const void *v4; // r0
  const void *v5; // r1
  size_t v6; // r2

  v2 = *(_DWORD *)(a1 + 16);
  v3 = *(_DWORD *)(a2 + 16);
  v4 = *(const void **)(a1 + 20);
  v5 = *(const void **)(a2 + 20);
  v6 = v2 - (_DWORD)v4;
  return v6 == v3 - (_DWORD)v5 && memcmp(v4, v5, v6) == 0;
}


// ===== 43a810 NativeRefreshHudManager(gameswf::fn_call const&) =====
int __fastcall NativeRefreshHudManager(const gameswf::fn_call *a1)
{
  HUDControls *Instance; // r0
  HUDControls *v2; // r0

  Instance = (HUDControls *)InfoHUDManager::GetInstance(a1);
  *((_BYTE *)Instance + 4) = 0;
  v2 = (HUDControls *)HUDControls::GetInstance(Instance);
  return HUDControls::Touch(v2);
}


// ===== 43a82c NativeDoWeHaveInternet(gameswf::fn_call const&) =====
int __fastcall NativeDoWeHaveInternet(gameswf::as_value **a1)
{
  bool IsInternetAccessEnabled; // r1

  IsInternetAccessEnabled = Application::IsInternetAccessEnabled((Application *)&Singleton<Application>::s_inst);
  return gameswf::as_value::set_bool(*a1, IsInternetAccessEnabled);
}


// ===== 43a860 NativeCloseKeyboard(gameswf::fn_call const&) =====
OnScreenKeyboard *__fastcall NativeCloseKeyboard(OnScreenKeyboard *result)
{
  if ( byte_9A24D4 )
  {
    OnScreenKeyboard::ReleaseKeyboard(result);
    return (OnScreenKeyboard *)StateMachine::Update((StateMachine *)dword_99F744, 0.0);
  }
  return result;
}


// ===== 43a8b0 NativeUpdateOrientation(gameswf::fn_call const&) =====
void __fastcall NativeUpdateOrientation(const gameswf::fn_call *a1)
{
  int SavedOption; // r0

  SavedOption = Application::GetSavedOption((Application *)&Singleton<Application>::s_inst, "AutoOrientation");
  Application::ResetOrientation((Application *)&Singleton<Application>::s_inst, SavedOption);
}


// ===== 43a8f0 UpdateSavedValues(void) =====
void UpdateSavedValues()
{
  int SavedOption; // r0

  SavedOption = Application::GetSavedOption((Application *)&Singleton<Application>::s_inst, "AutoOrientation");
  Application::ResetOrientation((Application *)&Singleton<Application>::s_inst, SavedOption);
}


// ===== 43a930 NativeIPodControl(gameswf::fn_call const&) =====
int __fastcall NativeIPodControl(const gameswf::fn_call *a1)
{
  const char *v1; // r0

  v1 = (const char *)gameswf::as_value::to_string((gameswf::as_value *)(**((_DWORD **)a1 + 3) + 12 * *((_DWORD *)a1 + 5)));
  return VoxSoundManager::IPodControl((VoxSoundManager *)VoxSoundManager::s_instance, v1);
}


// ===== 43a974 NativeUseIpodPlayer(gameswf::fn_call const&) =====
int __fastcall NativeUseIpodPlayer(gameswf::as_value **a1)
{
  int IsSupportMM; // r0
  bool v3; // r1
  gameswf::as_value *v4; // r0

  IsSupportMM = nativeIsSupportMM();
  v3 = IsSupportMM;
  if ( IsSupportMM == 1 )
  {
    v4 = *a1;
  }
  else
  {
    v4 = *a1;
    v3 = 0;
  }
  return gameswf::as_value::set_bool(v4, v3);
}


// ===== 43a9a8 NativeResetZoom(gameswf::fn_call const&) =====
int NativeResetZoom()
{
  return ZoomHandler::ResetZoom(dword_99F77C);
}


// ===== 43a9c8 gameswf::array<gameswf::smart_ptr<gameswf::as_object>>::push_back<gameswf::as_object*>(gameswf::as_object* const&) =====
gameswf::ref_counted *__fastcall gameswf::array<gameswf::smart_ptr<gameswf::as_object>>::push_back<gameswf::as_object*>(
        _DWORD *a1,
        gameswf::ref_counted **a2)
{
  int v2; // r3
  int v4; // r5
  gameswf::ref_counted *result; // r0
  bool v7; // zf

  v2 = a1[1];
  v4 = v2 + 1;
  if ( v2 + 1 > a1[2] )
  {
    gameswf::array<gameswf::smart_ptr<gameswf::as_object>>::reserve((int)a1, v4 + (v4 >> 1));
    v2 = a1[1];
  }
  result = *a2;
  v7 = *a2 == nullptr;
  *(_DWORD *)(*a1 + 4 * v2) = *a2;
  if ( !v7 )
    result = (gameswf::ref_counted *)gameswf::ref_counted::add_ref(result);
  a1[1] = v4;
  return result;
}


// ===== 43aa18 NativeShowStatusBar(gameswf::fn_call const&) =====
void __fastcall NativeShowStatusBar(const gameswf::fn_call *a1)
{
  char v1; // r0

  v1 = gameswf::as_value::to_bool((gameswf::as_value *)(**((_DWORD **)a1 + 3) + 12 * *((_DWORD *)a1 + 5)));
  Application::ShowStatubBar((Application *)&Singleton<Application>::s_inst, v1);
}


// ===== 43aa58 NativeShowMinimapLegend(gameswf::fn_call const&) =====
int __fastcall NativeShowMinimapLegend(const gameswf::fn_call *a1)
{
  MenuCharMenu_Map *v1; // r0
  char v2; // r4
  int result; // r0

  v1 = (MenuCharMenu_Map *)gameswf::as_value::to_bool((gameswf::as_value *)(**((_DWORD **)a1 + 3)
                                                                          + 12 * *((_DWORD *)a1 + 5)));
  v2 = (char)v1;
  result = MenuCharMenu_Map::GetInstance(v1);
  *(_BYTE *)(result + 484) = v2;
  return result;
}


// ===== 43aa84 NativeResetMapZoom(gameswf::fn_call const&) =====
int __fastcall NativeResetMapZoom(const gameswf::fn_call *a1)
{
  MenuCharMenu_Map *Instance; // r0

  Instance = (MenuCharMenu_Map *)MenuCharMenu_Map::GetInstance(a1);
  return MenuCharMenu_Map::ResetZoom(Instance);
}


// ===== 43aa94 NativeHideMinimap(gameswf::fn_call const&) =====
int __fastcall NativeHideMinimap(const gameswf::fn_call *a1)
{
  void *Instance; // r0

  Instance = HUDMinimap::GetInstance(a1);
  return (*(int (__fastcall **)(void *))(*(_DWORD *)Instance + 16))(Instance);
}


// ===== 43aaac NativeShowMinimap(gameswf::fn_call const&) =====
int __fastcall NativeShowMinimap(const gameswf::fn_call *a1)
{
  void *Instance; // r0

  Instance = HUDMinimap::GetInstance(a1);
  return (*(int (__fastcall **)(void *))(*(_DWORD *)Instance + 12))(Instance);
}


// ===== 43aac4 AssignSaveSlotToPlayer(int,int) =====
DH2_PlayerInfoCharacterPrefix *__fastcall AssignSaveSlotToPlayer(int a1, int a2)
{
  DH2_PlayerInfoCharacterPrefix *result; // r0

  *(_DWORD *)(dword_99F778 + 8) = a1;
  result = PlayerManager::GetLocalPlayer((PlayerManager *)dword_99F76C, a2, 0);
  *(_DWORD *)result[1].unknown_000 = a1;
  return result;
}


// ===== 43ab00 NativeEndLoading(gameswf::fn_call const&) =====
int NativeEndLoading()
{
  int result; // r0

  result = Application::GetCurrentLevel((Application *)&Singleton<Application>::s_inst);
  if ( result )
  {
    if ( *(_DWORD *)(result + 304) == 36 )
      ++*(_DWORD *)(result + 304);
  }
  return result;
}


// ===== 43ab40 NativeSetLevelPause(gameswf::fn_call const&) =====
int __fastcall NativeSetLevelPause(int result)
{
  char v1; // r5

  if ( *(_DWORD *)(result + 16) == 1 )
  {
    v1 = gameswf::as_value::to_bool((gameswf::as_value *)(**(_DWORD **)(result + 12) + 12 * *(_DWORD *)(result + 20)));
    result = Application::GetCurrentLevel((Application *)&Singleton<Application>::s_inst);
    if ( result )
      *(_BYTE *)(result + 424) = v1;
  }
  return result;
}


// ===== 43ab98 NativeAwayFromHud(gameswf::fn_call const&) =====
int NativeAwayFromHud()
{
  int result; // r0

  result = Application::GetCurrentLevel((Application *)&Singleton<Application>::s_inst);
  if ( result )
  {
    *(_BYTE *)(result + 408) = 0;
    ZoomHandler::ResetFingerMap((ZoomHandler *)dword_99F77C);
    return MultiMenuManager::ResetUpdateCursor(*(MultiMenuManager **)(dword_99F780 + 244));
  }
  return result;
}


// ===== 43abe8 NativeDebugConsole(gameswf::fn_call const&) =====
_DWORD *NativeDebugConsole()
{
  GSConsole *v0; // r0

  v0 = (GSConsole *)(*(int (__fastcall **)(_DWORD, _DWORD))(**(_DWORD **)(dword_99F780 + 244) + 56))(
                      *(_DWORD *)(dword_99F780 + 244),
                      0);
  return GSConsole::Toggle(v0);
}


// ===== 43ac28 NativePopAllAbove(gameswf::fn_call const&) =====
int __fastcall NativePopAllAbove(int result)
{
  MenuManager *v1; // r5
  int Instance; // r0

  if ( *(_DWORD *)(result + 16) == 1 )
  {
    result = **(_DWORD **)(result + 12) + 12 * *(_DWORD *)(result + 20);
    if ( (unsigned __int8)(*(_BYTE *)(result + 1) - 3) <= 1u )
    {
      v1 = (MenuManager *)gameswf::as_value::to_xstring((gameswf::as_value *)result);
      Instance = MenuManager::GetInstance(v1);
      return (*(int (__fastcall **)(_DWORD, MenuManager *, int))(**(_DWORD **)(Instance + 244) + 60))(
               *(_DWORD *)(Instance + 244),
               v1,
               1);
    }
  }
  return result;
}


// ===== 43ac90 NativeSkipScript(gameswf::fn_call const&) =====
int __fastcall NativeSkipScript(const gameswf::fn_call *a1)
{
  return ScriptManager::SkipScript((ScriptManager *)&ScriptManager::s_inst, -2, 0);
}


// ===== 43acb4 NatvieResumeAllSounds(gameswf::fn_call const&) =====
int __fastcall NatvieResumeAllSounds(const gameswf::fn_call *a1)
{
  int result; // r0

  result = VoxSoundManager::s_instance;
  if ( VoxSoundManager::s_instance )
    return VoxSoundManager::ResumeAllSounds((VoxSoundManager *)VoxSoundManager::s_instance);
  return result;
}


// ===== 43acdc NativePauseAllSounds(gameswf::fn_call const&) =====
int __fastcall NativePauseAllSounds(const gameswf::fn_call *a1)
{
  int result; // r0

  result = VoxSoundManager::s_instance;
  if ( VoxSoundManager::s_instance )
    return VoxSoundManager::PauseAllSounds((VoxSoundManager *)VoxSoundManager::s_instance);
  return result;
}


// ===== 43ad04 NativePauseMusic(gameswf::fn_call const&) =====
int __fastcall NativePauseMusic(const gameswf::fn_call *a1)
{
  int result; // r0

  result = VoxSoundManager::s_instance;
  if ( VoxSoundManager::s_instance )
    return VoxSoundManager::PauseMusic((VoxSoundManager *)VoxSoundManager::s_instance);
  return result;
}


// ===== 43ad2c NativeStopMusic(gameswf::fn_call const&) =====
int __fastcall NativeStopMusic(const gameswf::fn_call *a1)
{
  int result; // r0

  result = VoxSoundManager::s_instance;
  if ( VoxSoundManager::s_instance )
    return VoxSoundManager::StopMusic((VoxSoundManager *)VoxSoundManager::s_instance, 500);
  return result;
}


// ===== 43ad58 NativePlayPreviousMusic(gameswf::fn_call const&) =====
void __fastcall NativePlayPreviousMusic(const gameswf::fn_call *a1)
{
  if ( VoxSoundManager::s_instance )
    VoxSoundManager::RestartMusic((VoxSoundManager *)VoxSoundManager::s_instance, 0);
}


// ===== 43ad84 NativePlayMusic(gameswf::fn_call const&) =====
void __fastcall NativePlayMusic(const gameswf::fn_call *a1)
{
  gameswf::as_value *v1; // r0
  char *v2; // r0
  int v3; // r0

  if ( *((_DWORD *)a1 + 4) == 1 )
  {
    v1 = (gameswf::as_value *)(**((_DWORD **)a1 + 3) + 12 * *((_DWORD *)a1 + 5));
    if ( (unsigned __int8)(*((_BYTE *)v1 + 1) - 3) <= 1u )
    {
      v2 = (char *)gameswf::as_value::to_xstring(v1);
      v3 = Arrays::GetMemberIDByString<Arrays::Sounds>(v2);
      if ( v3 != -1 )
        VoxSoundManager::PlayMusic((VoxSoundManager *)VoxSoundManager::s_instance, v3, 1, 0, 2000);
    }
  }
}


// ===== 43ae10 NativePlaySoundFX(gameswf::fn_call const&) =====
int __fastcall NativePlaySoundFX(int result)
{
  char *v1; // r0

  if ( *(_DWORD *)(result + 16) == 1 )
  {
    result = **(_DWORD **)(result + 12) + 12 * *(_DWORD *)(result + 20);
    if ( (unsigned __int8)(*(_BYTE *)(result + 1) - 3) <= 1u )
    {
      v1 = (char *)gameswf::as_value::to_xstring((gameswf::as_value *)result);
      result = Arrays::GetMemberIDByString<Arrays::Sounds>(v1);
      if ( result != -1 )
        return VoxSoundManager::PlayMenu((VoxSoundManager *)VoxSoundManager::s_instance, result, 0, 0, 0);
    }
  }
  return result;
}


// ===== 43ae9c NativeGoToMainMenu(gameswf::fn_call const&) =====
int __fastcall NativeGoToMainMenu(const gameswf::fn_call *a1)
{
  return Application::GoToMainMenu((int)&Singleton<Application>::s_inst, 0);
}


// ===== 43aebc NativePushState(gameswf::fn_call const&) =====
MenuManager *__fastcall NativePushState(MenuManager *result)
{
  const char *v1; // r5
  MenuManager *Instance; // r0
  int v3; // r3

  if ( *((_DWORD *)result + 4) == 1 )
  {
    result = (MenuManager *)(**((_DWORD **)result + 3) + 12 * *((_DWORD *)result + 5));
    if ( (unsigned __int8)(*((_BYTE *)result + 1) - 3) <= 1u )
    {
      if ( (v1 = (const char *)gameswf::as_value::to_xstring(result),
            (result = (MenuManager *)LC_API_STRCMP_0("menu_CharacterMenu", v1)) != nullptr)
        && (result = (MenuManager *)LC_API_STRCMP_0("menu_Ingame", v1)) != nullptr
        || (v3 = *(_DWORD *)(dword_99F744 + 16), (unsigned int)(v3 - *(_DWORD *)(dword_99F744 + 12)) >> 3)
        && *(_UNKNOWN **)(v3 - 8) == &GSLevel::s_gsLevel )
      {
        Instance = (MenuManager *)MenuManager::GetInstance(result);
        dword_9A247C = MenuManager::GetMenuByName(Instance, v1);
        return (MenuManager *)StateMachine::PushState(dword_99F744, (int)&GSFlashMenu::s_inst, 0);
      }
    }
  }
  return result;
}


// ===== 43afb8 NativeHUDInteract(gameswf::fn_call const&) =====
int __fastcall NativeHUDInteract(const gameswf::fn_call *a1)
{
  const char *v1; // r5
  int result; // r0

  v1 = (const char *)gameswf::as_value::to_xstring((gameswf::as_value *)(**((_DWORD **)a1 + 3) + 12
                                                                                               * *((_DWORD *)a1 + 5)));
  result = LC_API_STRCMP_0("quit", v1);
  if ( result )
  {
    result = LC_API_STRCMP_0("no", v1);
    if ( result )
      return appDestroy();
    else
      InExitConfirmation = 0;
  }
  else
  {
    InExitConfirmation = 1;
  }
  return result;
}


// ===== 43b04c NativeIsMultiplayerLoadCompleted(gameswf::fn_call const&) =====
int __fastcall NativeIsMultiplayerLoadCompleted(gameswf::as_value **a1)
{
  bool v2; // r1

  if ( *(_BYTE *)(GetOnline() + 5) )
  {
    if ( !PlayerManager::AllLoadingDone((PlayerManager *)dword_99F76C) )
    {
      v2 = 0;
      return gameswf::as_value::set_bool(*a1, v2);
    }
    if ( !PlayerManager::AllReadyToRoll((PlayerManager *)dword_99F76C) )
    {
      v2 = 0;
      return gameswf::as_value::set_bool(*a1, v2);
    }
  }
  v2 = 1;
  return gameswf::as_value::set_bool(*a1, v2);
}


// ===== 43b0b8 NativeMustWaitForHost(gameswf::fn_call const&) =====
int __fastcall NativeMustWaitForHost(gameswf::as_value **a1)
{
  bool v2; // r1

  v2 = *(_BYTE *)(GetOnline() + 5)
    && !PlayerManager::IsLocalPlayerHosting((PlayerManager *)dword_99F76C)
    && (!PlayerManager::GetHostingPlayer((PlayerManager *)dword_99F76C)[1253]
     || *(_BYTE *)(dword_99F76C + 1818)
     && PlayerManager::GetHostingPlayer((PlayerManager *)dword_99F76C)[1253]
     && PlayerManager::GetHostingPlayer((PlayerManager *)dword_99F76C)[1285]);
  return gameswf::as_value::set_bool(*a1, v2);
}


// ===== 43b158 NativePopMenu(gameswf::fn_call const&) =====
MenuBase *__fastcall NativePopMenu(const gameswf::fn_call *a1)
{
  int Instance; // r0
  MenuManager *v3; // r5
  const char *v4; // r1

  Instance = MenuManager::GetInstance(a1);
  v3 = (MenuManager *)Instance;
  if ( !*((_DWORD *)a1 + 4) )
    return (MenuBase *)(*(int (__fastcall **)(_DWORD))(**(_DWORD **)(Instance + 244) + 56))(*(_DWORD *)(Instance + 244));
  v4 = (const char *)gameswf::as_value::to_xstring((gameswf::as_value *)(**((_DWORD **)a1 + 3) + 12
                                                                                               * *((_DWORD *)a1 + 5)));
  return MenuManager::PopMenu(v3, v4);
}


// ===== 43b1b4 NativePushMenu(gameswf::fn_call const&) =====
MenuBase *__fastcall NativePushMenu(const gameswf::fn_call *a1)
{
  MenuManager *v1; // r4
  MenuManager *Instance; // r0

  v1 = (MenuManager *)gameswf::as_value::to_xstring((gameswf::as_value *)(**((_DWORD **)a1 + 3)
                                                                        + 12 * *((_DWORD *)a1 + 5)));
  Instance = (MenuManager *)MenuManager::GetInstance(v1);
  return MenuManager::PushMenu(Instance, (const char *)v1);
}


// ===== 43b1e4 NativeReviveAllPlayers(gameswf::fn_call const&) =====
void __fastcall NativeReviveAllPlayers(const gameswf::fn_call *a1)
{
  int CurrentLevel; // r0
  int Online; // r0
  int v3; // r5

  CurrentLevel = Application::GetCurrentLevel((Application *)&Singleton<Application>::s_inst);
  if ( CurrentLevel && *(_DWORD *)(CurrentLevel + 304) == 38 )
  {
    Online = GetOnline();
    v3 = *(unsigned __int8 *)(Online + 5);
    if ( *(_BYTE *)(Online + 5) )
    {
      *(_BYTE *)(dword_99F76C + 1816) = 1;
    }
    else
    {
      MenuManager::PopMenu((MenuManager *)dword_99F780, "menu_FadeToBlackScreen");
      MenuManager::PushMenu((MenuManager *)dword_99F780, "menu_FadeFromBlackScreen");
      PlayerManager::ReviveLocalPlayers((PlayerManager *)dword_99F76C, v3);
    }
  }
}


// ===== 43b278 NativeSaveSettings(gameswf::fn_call const&) =====
int __fastcall NativeSaveSettings(const gameswf::fn_call *a1)
{
  MenuManager *v1; // r0
  MultiMenuManager **Instance; // r0
  int Language; // r1

  v1 = (MenuManager *)dword_99F778;
  if ( *(_BYTE *)(dword_99F778 + 55) )
  {
    *(_BYTE *)(dword_99F778 + 55) = 0;
    Instance = (MultiMenuManager **)MenuManager::GetInstance(v1);
    MenuManager::ResetFonts(Instance);
    v1 = (MenuManager *)dword_99F778;
  }
  SavegameManager::saveSettings(v1);
  Language = SavegameManager::getLanguage((SavegameManager *)dword_99F778);
  return SavegameManager::setLanguage((SavegameManager *)dword_99F778, Language);
}


// ===== 43b2d8 NativeLoadSettings(gameswf::fn_call const&) =====
int __fastcall NativeLoadSettings(const gameswf::fn_call *a1)
{
  VoxSoundManager *v1; // r7
  int SavedOption; // r8
  int v3; // r0
  int Language; // r0

  SavegameManager::loadSettings((SavegameManager *)dword_99F778, 0);
  UpdateSavedValues();
  v1 = (VoxSoundManager *)VoxSoundManager::s_instance;
  if ( VoxSoundManager::s_instance )
  {
    SavedOption = Application::GetSavedOption((Application *)&Singleton<Application>::s_inst, "VolumeMusic");
    v3 = Application::GetSavedOption((Application *)&Singleton<Application>::s_inst, "VolumeFX");
    VoxSoundManager::SetInitialVolume(v1, COERCE_INT((float)SavedOption), COERCE_INT((float)v3), 0.0);
  }
  Language = SavegameManager::getLanguage((SavegameManager *)dword_99F778);
  return SavegameManager::setLanguage((SavegameManager *)dword_99F778, Language);
}


// ===== 43b390 NativeOptionMusic(gameswf::fn_call const&) =====
int __fastcall NativeOptionMusic(const gameswf::fn_call *a1)
{
  double v1; // r0
  int v2; // r0
  float v3; // r5

  LODWORD(v1) = gameswf::as_value::to_number((gameswf::as_value *)(**((_DWORD **)a1 + 3) + 12 * *((_DWORD *)a1 + 5)));
  if ( VoxSoundManager::s_instance )
  {
    *(float *)&v2 = v1;
    v3 = *(float *)&v2;
    VoxSoundManager::SetSoundVolume((VoxSoundManager *)VoxSoundManager::s_instance, 2, v2);
    LODWORD(v1) = SavegameManager::setOption((SavegameManager *)dword_99F778, "VolumeMusic", (int)v3);
  }
  return LODWORD(v1);
}


// ===== 43b424 NativeOptionFX(gameswf::fn_call const&) =====
int __fastcall NativeOptionFX(const gameswf::fn_call *a1)
{
  double v1; // r0
  int v2; // r0
  float v3; // r5

  LODWORD(v1) = gameswf::as_value::to_number((gameswf::as_value *)(**((_DWORD **)a1 + 3) + 12 * *((_DWORD *)a1 + 5)));
  if ( VoxSoundManager::s_instance )
  {
    *(float *)&v2 = v1;
    v3 = *(float *)&v2;
    VoxSoundManager::SetSoundVolume((VoxSoundManager *)VoxSoundManager::s_instance, 1, v2);
    LODWORD(v1) = SavegameManager::setOption((SavegameManager *)dword_99F778, "VolumeFX", (int)v3);
  }
  return LODWORD(v1);
}


// ===== 43b4b8 NativeEnterOptionMenu(gameswf::fn_call const&) =====
void __fastcall NativeEnterOptionMenu(const gameswf::fn_call *a1)
{
  VoxSoundManager::ResumeMusic((VoxSoundManager *)VoxSoundManager::s_instance, 0);
}


// ===== 43b4dc IsNonDebugQuest(Quest const*) =====
int __fastcall IsNonDebugQuest(const Quest *a1)
{
  return (unsigned __int8)Quest::IsDebug(a1) ^ 1;
}


// ===== 43b4f0 IsNonDebugQuestClosedQuest(Quest const*) =====
int __fastcall IsNonDebugQuestClosedQuest(const Quest *a1)
{
  int v1; // r4
  int result; // r0

  v1 = *(_DWORD *)a1;
  result = IsNonDebugQuest(a1);
  if ( result )
    return v1 > 12;
  return result;
}


// ===== 43b514 IsNonDebugQuestActiveButNotClosedQuest(Quest const*) =====
int __fastcall IsNonDebugQuestActiveButNotClosedQuest(const Quest *a1)
{
  int v1; // r4
  int result; // r0

  v1 = *(_DWORD *)a1;
  result = IsNonDebugQuest(a1);
  if ( result )
    return (unsigned int)(v1 - 6) <= 6;
  return result;
}


// ===== 43b53c IsDebugQuest(Quest const*) =====
// attributes: thunk
int __fastcall IsDebugQuest(const Quest *a1)
{
  return Quest::IsDebug(a1);
}


// ===== 43b540 std::__push_heap<ItemInventory::Item *,int,ItemInventory::Item,SortByEquipability>(ItemInventory::Item *,int,int,ItemInventory::Item,SortByEquipability) =====
int std::__push_heap<ItemInventory::Item *,int,ItemInventory::Item,SortByEquipability>(
        int a1,
        int a2,
        int a3,
        int a4,
        int a5,
        int a6,
        ...)
{
  int v6; // r4
  int v8; // r5
  int v9; // r3
  ItemInstance *v11; // r1
  int i; // r9
  unsigned int v13; // r0
  int v14; // r1
  ItemInstance *varg_r3; // [sp+34h] [bp+28h] BYREF
  va_list va; // [sp+40h] [bp+34h] BYREF

  va_start(va, a6);
  v6 = a2;
  if ( a2 > a3 )
  {
    for ( i = (a2 - 1) / 2; ; i = (i - 1) / 2 )
    {
      v8 = a1 + 12 * i;
      v13 = SortByEquipability::operator()((int)&va, (ItemInstance **)v8, &varg_r3);
      v9 = v8 + 4;
      v14 = a1 + 12 * v6;
      if ( !v13 )
        break;
      *(_DWORD *)(a1 + 12 * v6) = *(_DWORD *)(a1 + 12 * i);
      *(_DWORD *)(v14 + 4) = *(_DWORD *)(v8 + 4);
      *(_DWORD *)(v14 + 8) = *(_DWORD *)(v8 + 8);
      if ( a3 >= i )
        goto LABEL_3;
      v6 = i;
    }
    v8 = a1 + 12 * v6;
    v9 = v8 + 4;
  }
  else
  {
    v8 = a1 + 12 * a2;
    v9 = v8 + 4;
  }
LABEL_3:
  v11 = varg_r3;
  *(_DWORD *)(v8 + 4) = a5;
  *(_DWORD *)v8 = v11;
  *(_DWORD *)(v9 + 4) = a6;
  return a5;
}


// ===== 43b62c std::__adjust_heap<ItemInventory::Item *,int,ItemInventory::Item,SortByEquipability>(ItemInventory::Item *,int,int,ItemInventory::Item,SortByEquipability) =====
int __fastcall std::__adjust_heap<ItemInventory::Item *,int,ItemInventory::Item,SortByEquipability>(
        int a1,
        int a2,
        int a3,
        int a4,
        int a5,
        int a6,
        int a7,
        int a8)
{
  int v8; // r4
  int v11; // r9
  int v12; // r10
  int v13; // r5
  unsigned int v14; // r0
  int v15; // r9
  int v16; // r2
  int v17; // r4
  _DWORD *v18; // r2
  _DWORD *v19; // r3
  int v21; // [sp+14h] [bp-8h]
  int varg_r3; // [sp+44h] [bp+28h]

  v8 = 2 * (a2 + 1);
  v21 = a2;
  if ( v8 < a3 )
  {
    v11 = a2;
    do
    {
      v12 = v8 - 1;
      v13 = a1 + 12 * v8;
      v14 = SortByEquipability::operator()((int)&a7, (ItemInstance **)v13, (ItemInstance **)(a1 + 12 * (v8 - 1)));
      if ( v14 )
        v13 = a1 + 12 * (v8 - 1);
      v15 = 12 * v11;
      if ( !v14 )
        v12 = v8;
      *(_DWORD *)(a1 + v15) = *(_DWORD *)v13;
      v16 = a1 + v15;
      *(_DWORD *)(v16 + 4) = *(_DWORD *)(v13 + 4);
      v8 = 2 * (v12 + 1);
      v11 = v12;
      *(_DWORD *)(v16 + 8) = *(_DWORD *)(v13 + 8);
    }
    while ( a3 > v8 );
    a2 = v12;
  }
  if ( v8 == a3 )
  {
    v17 = v8 - 1;
    v18 = (_DWORD *)(a1 + 12 * v17);
    v19 = (_DWORD *)(a1 + 12 * a2);
    *v19 = *v18;
    a2 = v17;
    v19[1] = v18[1];
    v19[2] = v18[2];
  }
  return std::__push_heap<ItemInventory::Item *,int,ItemInventory::Item,SortByEquipability>(
           a1,
           a2,
           v21,
           varg_r3,
           a5,
           a6,
           a7,
           a8);
}


// ===== 43b748 std::__make_heap<ItemInventory::Item *,SortByEquipability,ItemInventory::Item,int>(ItemInventory::Item *,ItemInventory::Item *,SortByEquipability,ItemInventory::Item *,int *) =====
int __fastcall std::__make_heap<ItemInventory::Item *,SortByEquipability,ItemInventory::Item,int>(
        int result,
        int a2,
        int a3,
        int a4)
{
  int v4; // r1
  int v5; // r7
  int v6; // r4
  int v7; // r9
  int v8; // r5
  int v9; // r6
  int v10; // [sp+4h] [bp-28h]
  int v13; // [sp+1Ch] [bp-10h]
  int v14; // [sp+20h] [bp-Ch]

  v4 = a2 - result;
  v5 = result;
  if ( v4 > 23 )
  {
    v6 = 0;
    v7 = -1431655765 * (v4 >> 2);
    v8 = (v7 - 2) >> 1;
    v9 = result + 12 * v8;
    while ( 1 )
    {
      v13 = *(_DWORD *)(v9 + v6);
      v14 = *(_DWORD *)(v9 + v6 + 4);
      v10 = *(_DWORD *)(v9 + v6 + 8);
      v6 -= 12;
      result = std::__adjust_heap<ItemInventory::Item *,int,ItemInventory::Item,SortByEquipability>(
                 v5,
                 v8,
                 v7,
                 v13,
                 v14,
                 v10,
                 a3,
                 a4);
      if ( !v8 )
        break;
      --v8;
    }
  }
  return result;
}


// ===== 43b80c std::__pop_heap<ItemInventory::Item *,ItemInventory::Item,SortByEquipability,int>(ItemInventory::Item *,ItemInventory::Item *,ItemInventory::Item *,ItemInventory::Item,SortByEquipability,int *) =====
int __fastcall std::__pop_heap<ItemInventory::Item *,ItemInventory::Item,SortByEquipability,int>(
        _DWORD *a1,
        int a2,
        _DWORD *a3,
        int a4,
        int a5,
        int a6,
        int a7,
        int a8)
{
  *a3 = *a1;
  a3[1] = a1[1];
  a3[2] = a1[2];
  return std::__adjust_heap<ItemInventory::Item *,int,ItemInventory::Item,SortByEquipability>(
           (int)a1,
           0,
           -1431655765 * ((a2 - (int)a1) >> 2),
           a4,
           a5,
           a6,
           a7,
           a8);
}


// ===== 43b890 std::sort_heap<ItemInventory::Item *,SortByEquipability>(ItemInventory::Item *,ItemInventory::Item *,SortByEquipability) =====
int __fastcall std::sort_heap<ItemInventory::Item *,SortByEquipability>(int result, int *a2, int a3, int a4)
{
  int v4; // r5
  _DWORD *v5; // r8
  int *i; // r4

  v4 = (int)a2 - result;
  v5 = (_DWORD *)result;
  for ( i = a2;
        v4 > 23;
        result = std::__pop_heap<ItemInventory::Item *,ItemInventory::Item,SortByEquipability,int>(
                   v5,
                   (int)i,
                   i,
                   *i,
                   i[1],
                   i[2],
                   a3,
                   a4) )
  {
    i -= 3;
    v4 -= 12;
  }
  return result;
}


// ===== 43b934 std::priv::__partial_sort<ItemInventory::Item *,ItemInventory::Item,SortByEquipability>(ItemInventory::Item *,ItemInventory::Item *,ItemInventory::Item *,ItemInventory::Item *,SortByEquipability) =====
int __fastcall std::priv::__partial_sort<ItemInventory::Item *,ItemInventory::Item,SortByEquipability>(
        ItemInstance **a1,
        int *a2,
        unsigned int a3,
        int a4,
        int a5,
        int a6)
{
  int *v9; // r4
  int v10; // r12
  int *v11; // r2
  ItemInstance *v12; // r3
  int v14; // [sp+28h] [bp-14h]

  std::__make_heap<ItemInventory::Item *,SortByEquipability,ItemInventory::Item,int>((int)a1, (int)a2, a5, a6);
  if ( (unsigned int)a2 < a3 )
  {
    v9 = a2;
    do
    {
      while ( !SortByEquipability::operator()((int)&a5, (ItemInstance **)v9, a1) )
      {
        v9 += 3;
        if ( a3 <= (unsigned int)v9 )
          return std::sort_heap<ItemInventory::Item *,SortByEquipability>((int)a1, a2, a5, a6);
      }
      v14 = v9[1];
      v10 = v9[2];
      v11 = v9;
      v12 = (ItemInstance *)*v9;
      v9 += 3;
      std::__pop_heap<ItemInventory::Item *,ItemInventory::Item,SortByEquipability,int>(
        a1,
        (int)a2,
        v11,
        (int)v12,
        v14,
        v10,
        a5,
        a6);
    }
    while ( a3 > (unsigned int)v9 );
  }
  return std::sort_heap<ItemInventory::Item *,SortByEquipability>((int)a1, a2, a5, a6);
}


// ===== 43ba34 std::priv::__median<ItemInventory::Item,SortByEquipability>(ItemInventory::Item const&,ItemInventory::Item const&,ItemInventory::Item const&,SortByEquipability) =====
ItemInstance **__fastcall std::priv::__median<ItemInventory::Item,SortByEquipability>(
        ItemInstance **a1,
        ItemInstance **a2,
        ItemInstance **a3)
{
  ItemInstance **v4; // r5
  _BYTE vars14[8]; // [sp+14h] [bp+14h] BYREF

  v4 = a2;
  if ( !SortByEquipability::operator()((int)vars14, a1, a2) )
  {
    if ( !SortByEquipability::operator()((int)vars14, a1, a3) )
    {
      if ( !SortByEquipability::operator()((int)vars14, v4, a3) )
        return v4;
      return a3;
    }
    return a1;
  }
  if ( !SortByEquipability::operator()((int)vars14, v4, a3) )
  {
    if ( SortByEquipability::operator()((int)vars14, a1, a3) )
      return a3;
    return a1;
  }
  return v4;
}


// ===== 43baec std::priv::__unguarded_partition<ItemInventory::Item *,ItemInventory::Item,SortByEquipability>(ItemInventory::Item *,ItemInventory::Item *,ItemInventory::Item,SortByEquipability) =====
unsigned int std::priv::__unguarded_partition<ItemInventory::Item *,ItemInventory::Item,SortByEquipability>(
        unsigned int a1,
        unsigned int a2,
        int a3,
        int a4,
        int a5,
        ...)
{
  char v7; // r12
  char v8; // r0
  int v9; // lr
  ItemInstance *v10; // r1
  unsigned int v11; // r3
  ItemInstance *varg_r2; // [sp+18h] [bp-Ch] BYREF
  va_list va; // [sp+24h] [bp+0h] BYREF

  va_start(va, a5);
  while ( 1 )
  {
    while ( SortByEquipability::operator()((int)&va, (ItemInstance **)a1, &varg_r2) )
      a1 += 12;
    do
      a2 -= 12;
    while ( SortByEquipability::operator()((int)&va, &varg_r2, (ItemInstance **)a2) );
    if ( a1 >= a2 )
      break;
    v7 = *(_BYTE *)(a1 + 5);
    v8 = *(_BYTE *)(a1 + 4);
    v9 = *(_DWORD *)(a1 + 8);
    v10 = *(ItemInstance **)a1;
    *(_DWORD *)a1 = *(_DWORD *)a2;
    v11 = a1 + 4;
    *(_DWORD *)(a1 + 4) = *(_DWORD *)(a2 + 4);
    a1 += 12;
    *(_DWORD *)(v11 + 4) = *(_DWORD *)(a2 + 8);
    *(_DWORD *)(a2 + 8) = v9;
    *(_BYTE *)(a2 + 5) = v7;
    *(_BYTE *)(a2 + 4) = v8;
    *(_DWORD *)a2 = v10;
  }
  return a1;
}


// ===== 43bba4 std::priv::__introsort_loop<ItemInventory::Item *,ItemInventory::Item,int,SortByEquipability>(ItemInventory::Item *,ItemInventory::Item *,ItemInventory::Item *,int,SortByEquipability) =====
int __fastcall std::priv::__introsort_loop<ItemInventory::Item *,ItemInventory::Item,int,SortByEquipability>(
        int result,
        int *a2,
        int a3,
        int a4,
        int a5,
        int a6)
{
  int *v6; // r5
  int v7; // r1
  ItemInstance **v8; // r4
  int v9; // r6
  int *v10; // r0
  unsigned int v11; // r10

  v6 = a2;
  v7 = (int)a2 - result;
  v8 = (ItemInstance **)result;
  v9 = a4;
  if ( v7 > 203 )
  {
    if ( a4 )
    {
      while ( 1 )
      {
        --v9;
        v10 = (int *)std::priv::__median<ItemInventory::Item,SortByEquipability>(
                       v8,
                       &v8[3 * ((-1431655765 * (v7 >> 2)) >> 1)],
                       (ItemInstance **)v6 - 3);
        v11 = std::priv::__unguarded_partition<ItemInventory::Item *,ItemInventory::Item,SortByEquipability>(
                (unsigned int)v8,
                (unsigned int)v6,
                *v10,
                v10[1],
                v10[2],
                a5,
                a6);
        result = std::priv::__introsort_loop<ItemInventory::Item *,ItemInventory::Item,int,SortByEquipability>(
                   v11,
                   v6,
                   0,
                   v9,
                   a5,
                   a6);
        v7 = v11 - (_DWORD)v8;
        if ( (int)(v11 - (_DWORD)v8) <= 203 )
          break;
        v6 = (int *)v11;
        if ( !v9 )
          return std::priv::__partial_sort<ItemInventory::Item *,ItemInventory::Item,SortByEquipability>(
                   v8,
                   v6,
                   (unsigned int)v6,
                   0,
                   a5,
                   a6);
      }
    }
    else
    {
      return std::priv::__partial_sort<ItemInventory::Item *,ItemInventory::Item,SortByEquipability>(
               v8,
               v6,
               (unsigned int)v6,
               0,
               a5,
               a6);
    }
  }
  return result;
}


// ===== 43bcd8 std::priv::__unguarded_insertion_sort_aux<ItemInventory::Item *,ItemInventory::Item,SortByEquipability>(ItemInventory::Item *,ItemInventory::Item *,ItemInventory::Item *,SortByEquipability) =====
ItemInstance *__fastcall std::priv::__unguarded_insertion_sort_aux<ItemInventory::Item *,ItemInventory::Item,SortByEquipability>(
        ItemInstance *result,
        ItemInstance *a2,
        int a3,
        int a4,
        int a5)
{
  ItemInstance *v6; // r8
  ItemInstance *v7; // r1
  int v8; // r2
  int v9; // r3
  ItemInstance **v10; // r4
  ItemInstance *v11; // r5
  _DWORD *v12; // r2
  unsigned int v13; // r0
  ItemInstance *v14; // r3
  int v15; // r1
  int v16; // r2
  ItemInstance *v18; // [sp+Ch] [bp-18h] BYREF
  int v19; // [sp+10h] [bp-14h]
  int v20; // [sp+14h] [bp-10h]
  _DWORD varC[13]; // [sp+18h] [bp-Ch] BYREF

  if ( result != a2 )
  {
    v6 = result;
    do
    {
      v7 = *(ItemInstance **)v6;
      v8 = *((_DWORD *)v6 + 1);
      varC[1] = a5;
      v9 = *((_DWORD *)v6 + 2);
      v10 = (ItemInstance **)((char *)v6 - 12);
      v18 = v7;
      v20 = v9;
      v19 = v8;
      v11 = v6;
      varC[0] = a4;
      while ( 1 )
      {
        v13 = SortByEquipability::operator()((int)varC, &v18, v10);
        v14 = (ItemInstance *)v10;
        v10 -= 3;
        if ( !v13 )
          break;
        *(_DWORD *)v11 = v10[3];
        v12 = (_DWORD *)((char *)v11 + 4);
        *((_DWORD *)v11 + 1) = v10[4];
        v11 = v14;
        v12[1] = v10[5];
      }
      result = v18;
      v15 = v19;
      v16 = v20;
      v6 = (ItemInstance *)((char *)v6 + 12);
      *(_DWORD *)v11 = v18;
      *((_DWORD *)v11 + 1) = v15;
      *((_DWORD *)v11 + 2) = v16;
    }
    while ( a2 != v6 );
  }
  return result;
}


// ===== 43bdc4 std::priv::__linear_insert<ItemInventory::Item *,ItemInventory::Item,SortByEquipability>(ItemInventory::Item *,ItemInventory::Item *,ItemInventory::Item,SortByEquipability) =====
ItemInstance *__fastcall std::priv::__linear_insert<ItemInventory::Item *,ItemInventory::Item,SortByEquipability>(
        int a1,
        ItemInstance **a2,
        int a3,
        int a4,
        ItemInstance *a5,
        int a6,
        int a7)
{
  int v9; // r3
  ItemInstance *v10; // t1
  ItemInstance *v11; // r1
  ItemInstance *v12; // r2
  ItemInstance *v13; // r1
  ItemInstance *result; // r0
  ItemInstance **v15; // r5
  _DWORD *v16; // r2
  ItemInstance **v17; // r3
  ItemInstance *v18; // [sp+4h] [bp-18h] BYREF
  ItemInstance *v19; // [sp+8h] [bp-14h]
  ItemInstance *v20; // [sp+Ch] [bp-10h]
  _DWORD varC[8]; // [sp+10h] [bp-Ch] BYREF
  ItemInstance *varg_r2; // [sp+30h] [bp+14h] BYREF
  ItemInstance *varg_r3; // [sp+34h] [bp+18h]

  if ( SortByEquipability::operator()((int)&a6, &varg_r2, (ItemInstance **)a1) )
  {
    v9 = -1431655765 * (((int)a2 - a1) >> 2);
    if ( v9 > 0 )
    {
      do
      {
        v10 = *(a2 - 3);
        a2 -= 3;
        --v9;
        v11 = a2[1];
        v12 = a2[2];
        a2[3] = v10;
        a2[4] = v11;
        a2[5] = v12;
      }
      while ( v9 );
    }
    v13 = varg_r3;
    result = varg_r2;
    *(_DWORD *)a1 = varg_r2;
    *(_DWORD *)(a1 + 4) = v13;
    *(_DWORD *)(a1 + 8) = a5;
  }
  else
  {
    v19 = varg_r3;
    v20 = a5;
    v15 = a2 - 3;
    v18 = varg_r2;
    varC[0] = a6;
    varC[1] = a7;
    while ( 1 )
    {
      result = (ItemInstance *)SortByEquipability::operator()((int)varC, &v18, v15);
      v17 = v15;
      v15 -= 3;
      if ( !result )
        break;
      *a2 = v15[3];
      v16 = a2 + 1;
      a2[1] = v15[4];
      a2 = v17;
      v16[1] = v15[5];
    }
    *a2 = v18;
    a2[1] = v19;
    a2[2] = v20;
  }
  return result;
}


// ===== 43bf0c std::priv::__final_insertion_sort<ItemInventory::Item *,SortByEquipability>(ItemInventory::Item *,ItemInventory::Item *,SortByEquipability) =====
ItemInstance *__fastcall std::priv::__final_insertion_sort<ItemInventory::Item *,SortByEquipability>(
        ItemInstance *result,
        ItemInstance *a2,
        int a3,
        int a4)
{
  int v5; // r5
  char *v8; // r9
  int *v9; // r6
  int *v10; // r4
  int v11; // r2
  int v12; // r3
  ItemInstance *v13; // r12
  ItemInstance **v14; // r1
  int *i; // r4
  int v16; // r2
  int v17; // r3
  ItemInstance *v18; // r12
  ItemInstance **v19; // r1

  v5 = (int)result;
  if ( a2 - result <= 203 )
  {
    if ( a2 != result )
    {
      for ( i = (int *)((char *)result + 12);
            a2 != (ItemInstance *)i;
            result = std::priv::__linear_insert<ItemInventory::Item *,ItemInventory::Item,SortByEquipability>(
                       v5,
                       v19,
                       v16,
                       v17,
                       v18,
                       a3,
                       a4) )
      {
        v16 = *i;
        v17 = i[1];
        v18 = (ItemInstance *)i[2];
        v19 = (ItemInstance **)i;
        i += 3;
      }
    }
  }
  else
  {
    v8 = (char *)result + 12;
    v9 = (int *)((char *)result + 192);
    v10 = (int *)((char *)result + 12);
    do
    {
      v11 = *v10;
      v12 = v10[1];
      v13 = (ItemInstance *)v10[2];
      v14 = (ItemInstance **)v10;
      v10 += 3;
      std::priv::__linear_insert<ItemInventory::Item *,ItemInventory::Item,SortByEquipability>(
        v5,
        v14,
        v11,
        v12,
        v13,
        a3,
        a4);
    }
    while ( v10 != v9 );
    return std::priv::__unguarded_insertion_sort_aux<ItemInventory::Item *,ItemInventory::Item,SortByEquipability>(
             (ItemInstance *)(v8 + 180),
             a2,
             0,
             a3,
             a4);
  }
  return result;
}


// ===== 43bff4 std::sort<ItemInventory::Item *,SortByEquipability>(ItemInventory::Item *,ItemInventory::Item *,SortByEquipability) =====
ItemInstance *__fastcall std::sort<ItemInventory::Item *,SortByEquipability>(
        ItemInstance *result,
        int *a2,
        int a3,
        int a4)
{
  ItemInstance *v4; // r5
  int v6; // r2
  int v7; // r3
  int v8; // r3

  v4 = result;
  if ( result != (ItemInstance *)a2 )
  {
    v6 = -1431655765 * (((char *)a2 - (char *)result) >> 2);
    if ( v6 == 1 )
    {
      v7 = 0;
    }
    else
    {
      v8 = 0;
      do
      {
        v6 >>= 1;
        ++v8;
      }
      while ( v6 != 1 );
      v7 = 2 * v8;
    }
    std::priv::__introsort_loop<ItemInventory::Item *,ItemInventory::Item,int,SortByEquipability>(
      (int)result,
      a2,
      0,
      v7,
      a3,
      a4);
    return std::priv::__final_insertion_sort<ItemInventory::Item *,SortByEquipability>(v4, (ItemInstance *)a2, a3, a4);
  }
  return result;
}


// ===== 43c098 NativeConectionType(gameswf::fn_call const&) =====
int __fastcall NativeConectionType(int result)
{
  const char *v1; // r5
  OnlineGameState *v2; // r0
  OnlineGameState *v3; // r0
  OnlineGameState *v4; // r0
  OnlineGameState *v5; // r0
  CMatching *Instance; // r0
  CMatching *v7; // r0
  CMatching *v8; // r0
  int v9; // r0
  COnline *v10; // r0
  COnline *v11; // r0
  CMatching *v12; // r0
  CMatching *v13; // r0
  CMatching *v14; // r0
  int v15; // r0
  COnline *v16; // r0
  CMatching *v17; // r0
  int v18; // r0
  COnline *Online; // r0
  COnline *v20; // r0
  CMatching *v21; // r0
  int v22; // r0
  COnline *v23; // r0

  if ( *(_DWORD *)(result + 16) != 1 )
    return result;
  result = **(_DWORD **)(result + 12) + 12 * *(_DWORD *)(result + 20);
  if ( (unsigned __int8)(*(_BYTE *)(result + 1) - 3) > 1u )
    return result;
  v1 = (const char *)gameswf::as_value::to_xstring((gameswf::as_value *)result);
  if ( !LC_API_STRCMP_0(v1, "Bluetooth") )
  {
    if ( *(_BYTE *)(GetOnline() + 5) )
    {
      Instance = (CMatching *)OnlineSingleton<OnlineGameState>::GetInstance();
      if ( *((_DWORD *)Instance + 13) == 1 )
      {
        CMatching::Get(Instance);
        v17 = (CMatching *)CMatching::SetMatchingProvider(0);
        v18 = CMatching::Get(v17);
        (*(void (__fastcall **)(int))(*(_DWORD *)v18 + 44))(v18);
        Online = (COnline *)GetOnline();
        COnline::SetIsOnlineGame(Online, 0);
      }
      v7 = (CMatching *)OnlineSingleton<OnlineGameState>::GetInstance();
      if ( *((_DWORD *)v7 + 13) == 3 )
      {
        CMatching::Get(v7);
        v8 = (CMatching *)CMatching::SetMatchingProvider(0);
        v9 = CMatching::Get(v8);
        (*(void (__fastcall **)(int))(*(_DWORD *)v9 + 44))(v9);
        v10 = (COnline *)GetOnline();
        COnline::SetIsOnlineGame(v10, 0);
      }
    }
    if ( !*(_BYTE *)(GetOnline() + 5) )
    {
      v5 = (OnlineGameState *)OnlineSingleton<OnlineGameState>::GetInstance();
      OnlineGameState::Init(v5, 2);
    }
  }
  if ( !LC_API_STRCMP_0(v1, "Online") )
  {
    if ( !Application::IsWifiEnabled((Application *)&Singleton<Application>::s_inst) )
      return Application::GoToMainMenu((int)&Singleton<Application>::s_inst, 5);
    if ( *(_BYTE *)(GetOnline() + 5) )
    {
      if ( *(_DWORD *)(OnlineSingleton<OnlineGameState>::GetInstance() + 52) == 1 )
      {
        v20 = (COnline *)GetOnline();
        COnline::SetIsOnlineGame(v20, 0);
      }
      if ( *(_DWORD *)(OnlineSingleton<OnlineGameState>::GetInstance() + 52) == 2 )
      {
        v11 = (COnline *)GetOnline();
        COnline::SetIsOnlineGame(v11, 0);
      }
    }
    if ( !*(_BYTE *)(GetOnline() + 5) )
    {
      v4 = (OnlineGameState *)OnlineSingleton<OnlineGameState>::GetInstance();
      OnlineGameState::Init(v4, 3);
    }
  }
  if ( !LC_API_STRCMP_0(v1, "Wireless") )
  {
    if ( Application::IsWifiEnabled((Application *)&Singleton<Application>::s_inst) )
    {
      if ( *(_BYTE *)(GetOnline() + 5) )
      {
        v12 = (CMatching *)OnlineSingleton<OnlineGameState>::GetInstance();
        if ( *((_DWORD *)v12 + 13) == 3 )
        {
          CMatching::Get(v12);
          v21 = (CMatching *)CMatching::SetMatchingProvider(0);
          v22 = CMatching::Get(v21);
          (*(void (__fastcall **)(int))(*(_DWORD *)v22 + 44))(v22);
          v23 = (COnline *)GetOnline();
          COnline::SetIsOnlineGame(v23, 0);
        }
        v13 = (CMatching *)OnlineSingleton<OnlineGameState>::GetInstance();
        if ( *((_DWORD *)v13 + 13) == 2 )
        {
          CMatching::Get(v13);
          v14 = (CMatching *)CMatching::SetMatchingProvider(0);
          v15 = CMatching::Get(v14);
          (*(void (__fastcall **)(int))(*(_DWORD *)v15 + 44))(v15);
          v16 = (COnline *)GetOnline();
          COnline::SetIsOnlineGame(v16, 0);
        }
      }
      if ( !*(_BYTE *)(GetOnline() + 5) )
      {
        v3 = (OnlineGameState *)OnlineSingleton<OnlineGameState>::GetInstance();
        OnlineGameState::Init(v3, 1);
      }
      goto LABEL_7;
    }
    return Application::GoToMainMenu((int)&Singleton<Application>::s_inst, 5);
  }
LABEL_7:
  result = LC_API_STRCMP_0(v1, "PSN");
  if ( !result )
  {
    result = GetOnline();
    if ( !*(_BYTE *)(result + 5) )
    {
      v2 = (OnlineGameState *)OnlineSingleton<OnlineGameState>::GetInstance();
      return OnlineGameState::Init(v2, 1);
    }
  }
  return result;
}


// ===== 43c388 NativeGetPlayerChar(int,bool) =====
Character *__fastcall NativeGetPlayerChar(int a1, int a2)
{
  PlayerManager *v4; // r6

  v4 = (PlayerManager *)dword_99F76C;
  if ( a1 < 0 || a1 >= PlayerManager::GetNumPlayers((PlayerManager *)dword_99F76C) )
    return nullptr;
  if ( a2 )
    return *((Character **)PlayerManager::GetRemotePlayer(v4, a1, 0) + 408);
  return PlayerManager::GetLocalPlayer(v4, a1, 0)->character_660;
}


// ===== 43c404 gameswf::smart_ptr_proxy::operator=(gameswf::weak_proxy *) [clone] =====
void __fastcall gameswf::smart_ptr_proxy::operator=(_DWORD **a1)
{
  _DWORD *v2; // r0

  v2 = *a1;
  if ( v2 )
  {
    if ( (*v2)-- == 1 )
      gameswf::free_internal(v2);
    *a1 = nullptr;
  }
}


// ===== 43c440 std::priv::_Deque_iterator_base<CharProperties::BuffInst *>::_M_advance(int) [clone] =====
_DWORD *__fastcall std::priv::_Deque_iterator_base<CharProperties::BuffInst *>::_M_advance(_DWORD *result)
{
  int v1; // r3
  int v3; // r1
  unsigned int v4; // r2
  unsigned int v5; // r3
  int v6; // r2

  v1 = (*result - result[1]) >> 2;
  if ( v1 > 31 || v1 < 0 )
  {
    v3 = result[3];
    if ( v1 <= 0 )
      v4 = ~((unsigned int)~v1 >> 5);
    else
      v4 = (unsigned int)v1 >> 5;
    result[3] = v3 + 4 * v4;
    v5 = v1 - 32 * v4;
    v6 = *(_DWORD *)(v3 + 4 * v4);
    *result = v6 + 4 * v5;
    result[2] = v6 + 128;
    result[1] = v6;
  }
  return result;
}


// ===== 43c4a0 std::priv::__linear_insert<ItemInventory::Item *,ItemInventory::Item,bool (*)(ItemInventory::Item const&,ItemInventory::Item const&)>(ItemInventory::Item *,ItemInventory::Item *,ItemInventory::Item,bool (*)(ItemInventory::Item const&,ItemInventory::Item const&)) [clone] =====
const char **__fastcall std::priv::__linear_insert<ItemInventory::Item *,ItemInventory::Item,bool (*)(ItemInventory::Item const&,ItemInventory::Item const&)>(
        int a1,
        const char ***a2,
        int a3,
        int a4,
        const char **a5)
{
  int v7; // r3
  const char **v8; // t1
  const char **v9; // r1
  const char **v10; // r2
  const char **v11; // r1
  const char **result; // r0
  const char ***v13; // r5
  _DWORD *v14; // r2
  const char ***v15; // r3
  const char **v16; // [sp+4h] [bp-Ch] BYREF
  const char **v17; // [sp+8h] [bp-8h]
  const char **v18; // [sp+Ch] [bp-4h]
  const char **varg_r2; // [sp+20h] [bp+10h] BYREF
  const char **varg_r3; // [sp+24h] [bp+14h]

  if ( II_Item_sortbybuyback(&varg_r2, (const char ***)a1) )
  {
    v7 = -1431655765 * (((int)a2 - a1) >> 2);
    if ( v7 > 0 )
    {
      do
      {
        v8 = *(a2 - 3);
        a2 -= 3;
        --v7;
        v9 = a2[1];
        v10 = a2[2];
        a2[3] = v8;
        a2[4] = v9;
        a2[5] = v10;
      }
      while ( v7 );
    }
    v11 = varg_r3;
    result = varg_r2;
    *(_DWORD *)a1 = varg_r2;
    *(_DWORD *)(a1 + 4) = v11;
    *(_DWORD *)(a1 + 8) = a5;
  }
  else
  {
    v17 = varg_r3;
    v18 = a5;
    v13 = a2 - 3;
    v16 = varg_r2;
    while ( 1 )
    {
      result = (const char **)II_Item_sortbybuyback(&v16, v13);
      v15 = v13;
      v13 -= 3;
      if ( !result )
        break;
      *a2 = v13[3];
      v14 = a2 + 1;
      a2[1] = v13[4];
      a2 = v15;
      v14[1] = v13[5];
    }
    *a2 = v16;
    a2[1] = v17;
    a2[2] = v18;
  }
  return result;
}


// ===== 43c5cc std::__adjust_heap<ItemInventory::Item *,int,ItemInventory::Item,bool (*)(ItemInventory::Item const&,ItemInventory::Item const&)>(ItemInventory::Item *,int,int,ItemInventory::Item,bool (*)(ItemInventory::Item const&,ItemInventory::Item const&)) [clone] =====
int __fastcall std::__adjust_heap<ItemInventory::Item *,int,ItemInventory::Item,bool (*)(ItemInventory::Item const&,ItemInventory::Item const&)>(
        int a1,
        int a2,
        int a3,
        const char **a4,
        __int16 a5,
        int a6)
{
  int v6; // r5
  int v9; // r11
  int v10; // r8
  int v11; // r7
  unsigned int v12; // r0
  int v13; // r11
  int v14; // r2
  int v15; // r2
  int v16; // r1
  int v17; // r2
  int v18; // r3
  int v19; // r3
  int *v20; // r5
  int result; // r0
  const char **v22; // r1
  int v23; // r2
  int i; // r9
  unsigned int v25; // r0
  int v26; // r1
  const char **v29; // [sp+1Ch] [bp-10h] BYREF
  __int16 v30; // [sp+20h] [bp-Ch]
  int v31; // [sp+24h] [bp-8h]

  v6 = 2 * (a2 + 1);
  if ( v6 >= a3 )
  {
    v11 = a1 + 12 * a2;
    v10 = a2;
  }
  else
  {
    v9 = a2;
    do
    {
      v10 = v6 - 1;
      v11 = a1 + 12 * v6;
      v12 = II_Item_sortbybuyback((const char ***)v11, (const char ***)(a1 + 12 * (v6 - 1)));
      if ( v12 )
        v11 = a1 + 12 * (v6 - 1);
      v13 = 12 * v9;
      if ( !v12 )
        v10 = v6;
      *(_DWORD *)(a1 + v13) = *(_DWORD *)v11;
      v14 = a1 + v13;
      *(_DWORD *)(v14 + 4) = *(_DWORD *)(v11 + 4);
      v6 = 2 * (v10 + 1);
      v9 = v10;
      *(_DWORD *)(v14 + 8) = *(_DWORD *)(v11 + 8);
    }
    while ( v6 < a3 );
  }
  if ( v6 == a3 )
  {
    v10 = v6 - 1;
    v15 = 12 * (v6 - 1);
    v16 = *(_DWORD *)(a1 + v15);
    v17 = a1 + v15;
    *(_DWORD *)v11 = v16;
    v18 = v11 + 4;
    *(_DWORD *)(v11 + 4) = *(_DWORD *)(v17 + 4);
    v11 = v17;
    *(_DWORD *)(v18 + 4) = *(_DWORD *)(v17 + 8);
  }
  v31 = a6;
  v30 = a5;
  if ( a2 >= v10 )
    v6 = (int)&v29;
  v29 = a4;
  if ( a2 < v10 )
  {
    v6 = (int)&v29;
    for ( i = (v10 - 1) / 2; ; i = (i - 1) / 2 )
    {
      v11 = a1 + 12 * i;
      v25 = II_Item_sortbybuyback((const char ***)v11, &v29);
      v19 = v11 + 4;
      v26 = a1 + 12 * v10;
      if ( !v25 )
        break;
      *(_DWORD *)(a1 + 12 * v10) = *(_DWORD *)(a1 + 12 * i);
      *(_DWORD *)(v26 + 4) = *(_DWORD *)(v11 + 4);
      *(_DWORD *)(v26 + 8) = *(_DWORD *)(v11 + 8);
      if ( a2 >= i )
        goto LABEL_15;
      v10 = i;
    }
    v11 = a1 + 12 * v10;
    v19 = v11 + 4;
  }
  else
  {
    v19 = v11 + 4;
  }
LABEL_15:
  v20 = (int *)(v6 + 4);
  result = *v20;
  v22 = v29;
  v23 = v20[1];
  *(_DWORD *)(v11 + 4) = *v20;
  *(_DWORD *)v11 = v22;
  *(_DWORD *)(v19 + 4) = v23;
  return result;
}


// ===== 43c7a4 std::__pop_heap<ItemInventory::Item *,ItemInventory::Item,bool (*)(ItemInventory::Item const&,ItemInventory::Item const&),int>(ItemInventory::Item *,ItemInventory::Item *,ItemInventory::Item *,ItemInventory::Item,bool (*)(ItemInventory::Item const&,ItemInventory::Item const&),int *) [clone] =====
int __fastcall std::__pop_heap<ItemInventory::Item *,ItemInventory::Item,bool (*)(ItemInventory::Item const&,ItemInventory::Item const&),int>(
        _DWORD *a1,
        int a2,
        _DWORD *a3,
        const char **a4,
        __int16 a5,
        int a6)
{
  *a3 = *a1;
  a3[1] = a1[1];
  a3[2] = a1[2];
  return std::__adjust_heap<ItemInventory::Item *,int,ItemInventory::Item,bool (*)(ItemInventory::Item const&,ItemInventory::Item const&)>(
           (int)a1,
           0,
           -1431655765 * ((a2 - (int)a1) >> 2),
           a4,
           a5,
           a6);
}


// ===== 43c818 std::priv::__introsort_loop<ItemInventory::Item *,ItemInventory::Item,int,bool (*)(ItemInventory::Item const&,ItemInventory::Item const&)>(ItemInventory::Item *,ItemInventory::Item *,ItemInventory::Item *,int,bool (*)(ItemInventory::Item const&,ItemInventory::Item const&)) [clone] =====
int __fastcall std::priv::__introsort_loop<ItemInventory::Item *,ItemInventory::Item,int,bool (*)(ItemInventory::Item const&,ItemInventory::Item const&)>(
        int result,
        const char ***a2,
        int a3)
{
  int v3; // r11
  const char ***v4; // r5
  const char ***v5; // r4
  int v6; // r7
  int v7; // r11
  const char ***v8; // r6
  char v9; // r1
  char v10; // r2
  const char **v11; // r3
  const char ***v12; // r9
  const char ***v13; // r6
  char v14; // r12
  char v15; // r0
  const char **v16; // lr
  const char **v17; // r1
  const char ***v18; // r3
  int v19; // r11
  int v20; // r7
  int v21; // r6
  const char ***v22; // r8
  int v23; // r6
  int v24; // [sp+8h] [bp-34h]
  const char **v25; // [sp+14h] [bp-28h] BYREF
  char v26; // [sp+18h] [bp-24h]
  char v27; // [sp+19h] [bp-23h]
  const char **v28; // [sp+1Ch] [bp-20h]
  const char **v29; // [sp+20h] [bp-1Ch]
  const char **v30; // [sp+24h] [bp-18h]
  const char **v31; // [sp+28h] [bp-14h]
  const char **v32; // [sp+2Ch] [bp-10h]
  const char **v33; // [sp+30h] [bp-Ch]
  const char **v34; // [sp+34h] [bp-8h]

  v3 = (int)a2 - result;
  v4 = (const char ***)result;
  v5 = a2;
  v6 = a3;
  v24 = (int)a2 - result;
  if ( (int)a2 - result > 203 )
  {
    if ( a3 )
    {
      while ( 1 )
      {
        v7 = v3 >> 2;
        --v6;
        v8 = v5 - 3;
        if ( II_Item_sortbybuyback(v4, &v4[3 * ((-1431655765 * v7) >> 1)]) )
        {
          if ( II_Item_sortbybuyback(&v4[3 * ((-1431655765 * v7) >> 1)], v5 - 3) )
            goto LABEL_5;
          if ( !II_Item_sortbybuyback(v4, v5 - 3) )
LABEL_13:
            v8 = v4;
        }
        else
        {
          if ( II_Item_sortbybuyback(v4, v5 - 3) )
            goto LABEL_13;
          if ( !II_Item_sortbybuyback(&v4[3 * ((-1431655765 * v7) >> 1)], v5 - 3) )
LABEL_5:
            v8 = &v4[3 * ((-1431655765 * v7) >> 1)];
        }
        v9 = *((_BYTE *)v8 + 5);
        v10 = *((_BYTE *)v8 + 4);
        v11 = *v8;
        v12 = v5;
        v28 = v8[2];
        v27 = v9;
        v26 = v10;
        v25 = v11;
        v13 = v4;
        while ( 1 )
        {
          while ( II_Item_sortbybuyback(v13, &v25) )
            v13 += 3;
          do
            v12 -= 3;
          while ( II_Item_sortbybuyback(&v25, v12) );
          if ( v13 >= v12 )
            break;
          v14 = *((_BYTE *)v13 + 5);
          v15 = *((_BYTE *)v13 + 4);
          v16 = v13[2];
          v17 = *v13;
          *v13 = *v12;
          v18 = v13 + 1;
          v13[1] = v12[1];
          v13 += 3;
          v18[1] = v12[2];
          v12[2] = v16;
          *((_BYTE *)v12 + 5) = v14;
          *((_BYTE *)v12 + 4) = v15;
          *v12 = v17;
        }
        v3 = (char *)v13 - (char *)v4;
        result = std::priv::__introsort_loop<ItemInventory::Item *,ItemInventory::Item,int,bool (*)(ItemInventory::Item const&,ItemInventory::Item const&)>(
                   v13,
                   v5,
                   v6);
        if ( (char *)v13 - (char *)v4 <= 203 )
          return result;
        v5 = v13;
        if ( !v6 )
        {
          v24 = (char *)v13 - (char *)v4;
          break;
        }
      }
    }
    v19 = -1431655765 * (v3 >> 2);
    v20 = (v19 - 2) >> 1;
    v21 = 0;
    v22 = &v4[3 * v20];
    while ( 1 )
    {
      v29 = v22[v21];
      v30 = v22[v21 + 1];
      v31 = v22[v21 + 2];
      std::__adjust_heap<ItemInventory::Item *,int,ItemInventory::Item,bool (*)(ItemInventory::Item const&,ItemInventory::Item const&)>(
        (int)v4,
        v20,
        v19,
        v29,
        (__int16)v30,
        (int)v31);
      v21 -= 3;
      if ( !v20 )
        break;
      --v20;
    }
    v23 = v24;
    do
    {
      v5 -= 3;
      v23 -= 12;
      v32 = *v5;
      v33 = v5[1];
      v34 = v5[2];
      result = std::__pop_heap<ItemInventory::Item *,ItemInventory::Item,bool (*)(ItemInventory::Item const&,ItemInventory::Item const&),int>(
                 v4,
                 (int)v5,
                 v5,
                 v32,
                 (__int16)v33,
                 (int)v34);
    }
    while ( v23 > 23 );
  }
  return result;
}


// ===== 43cabc NativeHUDSpell(gameswf::fn_call const&) =====
int __fastcall NativeHUDSpell(const gameswf::fn_call *a1)
{
  int result; // r0
  int v2; // r4

  result = PlayerManager::GetLocalPlayer((PlayerManager *)dword_99F76C, 0, 1);
  v2 = *(_DWORD *)(result + 1632);
  if ( v2 )
  {
    result = Character::CTRLIsAllowed(*(Character **)(result + 1632));
    if ( result )
    {
      v2Controller::Cmd_BeginCast(*(v2Controller **)(v2 + 888), 0);
      return v2Controller::Cmd_EndCast(*(v2Controller **)(v2 + 888), 0);
    }
  }
  return result;
}


// ===== 43cb24 NativeGetLoadingTipStrID(gameswf::fn_call const&) =====
int __fastcall NativeGetLoadingTipStrID(gameswf::as_value **a1)
{
  int v1; // r1
  unsigned int v2; // r1

  v1 = Arrays::HintPages::size;
  if ( Arrays::HintPages::size )
  {
    Random::s_seed = (59051 * Random::s_seed + 177149) % 0xDAF26Bu;
    v2 = Random::s_seed % (unsigned int)Arrays::HintPages::size;
    if ( ((Random::s_seed % (unsigned int)Arrays::HintPages::size) & 0x80000000) != 0 )
      v2 = -v2;
    v1 = 12 * v2;
  }
  ++Random::s_debugRandomCounters;
  return gameswf::as_value::set_double(*a1, (double)*(int *)(Arrays::HintPages::members + v1 + 8));
}


// ===== 43cc00 NativeGetIPodPlaylistCount(gameswf::fn_call const&) =====
int __fastcall NativeGetIPodPlaylistCount(gameswf::as_value **a1)
{
  gameswf::as_value *v1; // r4
  double IPodPlaylistCount; // r2

  v1 = *a1;
  IPodPlaylistCount = (double)VoxSoundManager::GetIPodPlaylistCount((VoxSoundManager *)VoxSoundManager::s_instance);
  return gameswf::as_value::set_double(v1, IPodPlaylistCount);
}


// ===== 43cc40 NativeGetMonsterHUDHP(gameswf::fn_call const&) =====
Character *__fastcall NativeGetMonsterHUDHP(gameswf::as_value **a1)
{
  Character *result; // r0
  int v3; // r3

  result = PlayerManager::GetLocalPlayer((PlayerManager *)dword_99F76C, 0, 1)->character_660;
  if ( result )
  {
    v3 = *((_DWORD *)result + 1321);
    if ( !v3 )
      return result;
    result = (Character *)(100 * *(_DWORD *)(v3 + 4232) / *(_DWORD *)(v3 + 4240));
  }
  return (Character *)gameswf::as_value::set_double(*a1, (double)(int)result);
}


// ===== 43ccc8 NativeFindFreeSaveSlot(gameswf::fn_call const&) =====
int __fastcall NativeFindFreeSaveSlot(gameswf::as_value **a1)
{
  gameswf::as_value *v1; // r4
  double NextFreeSlot; // r2

  v1 = *a1;
  NextFreeSlot = (double)(int)PlayerSavegame::SG_GetNextFreeSlot((PlayerSavegame *)a1);
  return gameswf::as_value::set_double(v1, NextFreeSlot);
}


// ===== 43ccec NativeGetCreditMovement(gameswf::fn_call const&) =====
int __fastcall NativeGetCreditMovement(gameswf::as_value **a1)
{
  gameswf::as_value *v1; // r4
  double v2; // r2

  if ( HTC_DEVICES )
    return gameswf::as_value::set_double(*a1, 2.0);
  v1 = *a1;
  v2 = (double)(int)(Application::GetDt((Application *)&Singleton<Application>::s_inst) / 0x19u + 1);
  return gameswf::as_value::set_double(v1, v2);
}


// ===== 43cd68 NativeSetCurrentDifficulty(gameswf::fn_call const&) =====
int __fastcall NativeSetCurrentDifficulty(const gameswf::fn_call *a1)
{
  int v1; // r4
  double v2; // r0
  int result; // r0

  v1 = dword_99F778;
  LODWORD(v2) = gameswf::as_value::to_number((gameswf::as_value *)(**((_DWORD **)a1 + 3) + 12 * *((_DWORD *)a1 + 5)));
  result = (int)v2;
  *(_DWORD *)(v1 + 12) = result;
  return result;
}


// ===== 43cdac NativeChangeRolloverInputBehavior(gameswf::fn_call const&) =====
int __fastcall NativeChangeRolloverInputBehavior(const gameswf::fn_call *a1)
{
  double v2; // r0
  unsigned int v3; // r6
  MenuManager *v4; // r0
  int v5; // r3
  RenderFX *v6; // r0
  int v7; // r1
  int v8; // r3

  LODWORD(v2) = gameswf::as_value::to_number((gameswf::as_value *)(**((_DWORD **)a1 + 3) + 12 * *((_DWORD *)a1 + 5)));
  v3 = (int)v2;
  v4 = (MenuManager *)gameswf::as_value::to_bool((gameswf::as_value *)(**((_DWORD **)a1 + 3)
                                                                     + 12 * (*((_DWORD *)a1 + 5) - 1)));
  if ( v4 )
  {
    v5 = *(_DWORD *)(MenuManager::GetInstance(v4) + 244);
    if ( v3 <= 3 )
      v6 = *(RenderFX **)(v5 + 4 * v3 + 308);
    else
      v6 = nullptr;
    v7 = 132;
  }
  else
  {
    v8 = *(_DWORD *)(MenuManager::GetInstance(nullptr) + 244);
    if ( v3 <= 3 )
      v6 = *(RenderFX **)(v8 + 4 * v3 + 308);
    else
      v6 = nullptr;
    v7 = 4;
  }
  return RenderFX::SetInputBehavior(v6, v7);
}


// ===== 43ce3c NativeOpenKeyboard(gameswf::fn_call const&) =====
const char *__fastcall NativeOpenKeyboard(const gameswf::fn_call *a1, int a2, int a3, int a4, bool a5)
{
  char *v6; // r7
  int v7; // r1
  double v8; // r8
  const char *result; // r0
  const char *v10; // r6
  int v11; // r0

  v6 = (char *)gameswf::as_value::to_string((gameswf::as_value *)(**((_DWORD **)a1 + 3) + 12 * *((_DWORD *)a1 + 5)));
  LODWORD(v8) = gameswf::as_value::to_number((gameswf::as_value *)(**((_DWORD **)a1 + 3) + 12
                                                                                         * (*((_DWORD *)a1 + 5) - 1)));
  HIDWORD(v8) = v7;
  result = (const char *)gameswf::as_value::to_string((gameswf::as_value *)(**((_DWORD **)a1 + 3)
                                                                          + 12 * (*((_DWORD *)a1 + 5) - 2)));
  v10 = result;
  if ( !byte_9A24D4 )
  {
    v11 = LC_API_STRCMP_0(v6, "PlayerName");
    return (const char *)GSKeyboard::QueryString(
                           (GSKeyboard *)v6,
                           (const char *)(int)v8,
                           v10,
                           (const char *)(v11 == 0),
                           a5);
  }
  return result;
}


// ===== 43cf04 NativeIPodSetPlaylist(gameswf::fn_call const&) =====
int __fastcall NativeIPodSetPlaylist(const gameswf::fn_call *a1)
{
  VoxSoundManager *v1; // r4
  double v2; // r0

  v1 = (VoxSoundManager *)VoxSoundManager::s_instance;
  LODWORD(v2) = gameswf::as_value::to_number((gameswf::as_value *)(**((_DWORD **)a1 + 3) + 12 * *((_DWORD *)a1 + 5)));
  return VoxSoundManager::SetIPodPlaylist(v1, (int)v2);
}


// ===== 43cf50 NativeAssignSaveSlotToPlayer(gameswf::fn_call const&) =====
int __fastcall NativeAssignSaveSlotToPlayer(const gameswf::fn_call *a1)
{
  double v2; // r0
  int v3; // r6
  double v4; // r0

  LODWORD(v2) = gameswf::as_value::to_number((gameswf::as_value *)(**((_DWORD **)a1 + 3) + 12 * *((_DWORD *)a1 + 5)));
  v3 = (int)v2;
  LODWORD(v4) = gameswf::as_value::to_number((gameswf::as_value *)(**((_DWORD **)a1 + 3) + 12
                                                                                         * (*((_DWORD *)a1 + 5) - 1)));
  if ( v3 >= 0 )
  {
    LODWORD(v4) = (int)v4;
    if ( SLODWORD(v4) >= 0 )
      LODWORD(v4) = AssignSaveSlotToPlayer(v3, SLODWORD(v4));
  }
  return LODWORD(v4);
}


// ===== 43cfb4 NativeInvDropItem(gameswf::fn_call const&) =====
void __fastcall NativeInvDropItem(const gameswf::fn_call *a1)
{
  double v1; // r0
  double v2; // r8
  Character *character_660; // r4
  unsigned int v4; // r5
  ItemInventory *v5; // r6
  ItemInstance *Item; // r11
  int NumPowers; // r0
  signed int v8; // r9
  int v9; // r8
  CMessaging *PowerId; // r0
  CMessaging *v11; // r10
  unsigned int i; // r7
  CMessaging *v13; // r8
  bool v14; // r2
  int Message; // r0
  bool v16; // cc
  CMessage *v17; // r7
  void *v18; // r0
  const Character *v19; // [sp+0h] [bp-4Ch]
  int ItemId; // [sp+8h] [bp-44h]
  int NetworkIdByObjectBase; // [sp+Ch] [bp-40h]
  void *v22[15]; // [sp+10h] [bp-3Ch] BYREF

  LODWORD(v1) = gameswf::as_value::to_number((gameswf::as_value *)(**((_DWORD **)a1 + 3) + 12 * *((_DWORD *)a1 + 5)));
  v2 = v1;
  character_660 = PlayerManager::GetLocalPlayer((PlayerManager *)dword_99F76C, 0, 0)->character_660;
  if ( character_660 )
  {
    v4 = (int)v2;
    if ( *(_BYTE *)(GetOnline() + 5) )
    {
      v5 = (Character *)((char *)character_660 + 892);
      NetworkIdByObjectBase = ObjectManager::GetNetworkIdByObjectBase((ObjectManager *)dword_99F764, character_660);
      Item = (ItemInstance *)ItemInventory::GetItem((int)character_660 + 892, v4);
      ItemId = ItemInstance::GetItemId(Item);
      NumPowers = ItemInstance::GetNumPowers(Item);
      v8 = 4 * NumPowers;
      v9 = NumPowers;
      PowerId = (CMessaging *)CustomAlloc(4 * NumPowers);
      v11 = PowerId;
      if ( v9 > 0 )
      {
        for ( i = 0; i != v9; ++i )
        {
          PowerId = (CMessaging *)ItemInstance::GetPowerId(Item, i);
          *((_DWORD *)v11 + i) = PowerId;
        }
      }
      v13 = (CMessaging *)CMessaging::Get(PowerId);
      Message = CMessage::CreateMessage((CMessage *)"CMsgDropLoot", (const char *)&dword_0 + 1, v14);
      *(_BYTE *)(Message + 80) = 1;
      v16 = (int)v11 <= 0;
      if ( v11 )
        v16 = v8 <= 0;
      *(_DWORD *)(Message + 84) = ItemId;
      v17 = (CMessage *)Message;
      *(_DWORD *)(Message + 96) = 0;
      *(_DWORD *)(Message + 88) = NetworkIdByObjectBase;
      *(_DWORD *)(Message + 92) = 0;
      if ( !v16 )
      {
        *(_DWORD *)(Message + 100) = v8;
        v18 = operator new[](v8, 2);
        *((_DWORD *)v17 + 26) = v18;
        memcpy(v18, v11, v8);
      }
      CMessaging::SendMsg(v13, v17);
    }
    else
    {
      v5 = (Character *)((char *)character_660 + 892);
    }
    ItemInventory::ItemInventory((ItemInventory *)v22);
    ItemInventory::TransferItemTo(v5, v4, (ItemInventory *)v22, 1, 0, 0);
    ItemObject::DropInventory((ItemObject *)v22, character_660, character_660, nullptr, v19);
    ItemInventory::~ItemInventory(v22);
  }
}


// ===== 43d178 NativeSelectClassSpec(gameswf::fn_call const&) =====
DH2_PlayerInfoCharacterPrefix *__fastcall NativeSelectClassSpec(const gameswf::fn_call *a1)
{
  int v1; // r1
  double v2; // r6
  DH2_PlayerInfoCharacterPrefix *result; // r0
  int character_660; // r4
  int v5; // r5

  LODWORD(v2) = gameswf::as_value::to_number((gameswf::as_value *)(**((_DWORD **)a1 + 3) + 12 * *((_DWORD *)a1 + 5)));
  HIDWORD(v2) = v1;
  result = PlayerManager::GetLocalPlayer((PlayerManager *)dword_99F76C, 0, 1);
  character_660 = (int)result->character_660;
  if ( character_660 )
  {
    v5 = (int)v2 + 1 + Character::SG_GetPlayerClass(result->character_660);
    CharProperties::LoadPropertiesForClassSelect((CharProperties *)(character_660 + 1376), v5);
    Character::SG_SetPlayerClass(character_660, v5);
    CharAI::AI_ReloadSkills((CharAI *)(character_660 + 968));
    return (DH2_PlayerInfoCharacterPrefix *)Character::SG_Save((Character *)character_660);
  }
  return result;
}


// ===== 43d220 NativeSetSaveSlotIDToMainMenu(gameswf::fn_call const&) =====
MenuMainMenu *__fastcall NativeSetSaveSlotIDToMainMenu(const gameswf::fn_call *a1)
{
  double v2; // r0
  MenuMainMenu *v3; // r0
  MenuMainMenu *v4; // r6
  int v5; // r4
  bool v6; // r2

  LODWORD(v2) = gameswf::as_value::to_number((gameswf::as_value *)(**((_DWORD **)a1 + 3) + 12 * *((_DWORD *)a1 + 5)));
  v3 = (MenuMainMenu *)(int)v2;
  v4 = v3;
  if ( *((int *)a1 + 4) > 1 )
  {
    v3 = (MenuMainMenu *)gameswf::as_value::to_bool((gameswf::as_value *)(**((_DWORD **)a1 + 3)
                                                                        + 12 * (*((_DWORD *)a1 + 5) - 1)));
    v5 = (int)v3;
  }
  else
  {
    v5 = 0;
  }
  MenuMainMenu::GetInstance(v3);
  return MenuMainMenu::ChangeCharacterToDisplay(v4, v5, v6);
}


// ===== 43d288 NativeEraseSaveSlot(gameswf::fn_call const&) =====
std::priv::_String_base<char,std::allocator<char> > **__fastcall NativeEraseSaveSlot(const gameswf::fn_call *a1)
{
  double v1; // r0
  std::priv::_String_base<char,std::allocator<char> > **result; // r0
  const char *v3; // r1
  Savegame *v4; // r4
  int v5; // r1

  LODWORD(v1) = gameswf::as_value::to_number((gameswf::as_value *)(**((_DWORD **)a1 + 3) + 12 * *((_DWORD *)a1 + 5)));
  result = (std::priv::_String_base<char,std::allocator<char> > **)(int)v1;
  v4 = (Savegame *)result;
  if ( (int)result >= 0 )
  {
    Savegame::FlushJobs(0, v3);
    return Savegame::DeleteAllSlotFiles(v4, v5);
  }
  return result;
}


// ===== 43d2c8 NativeUsePotion(gameswf::fn_call const&) =====
Character *__fastcall NativeUsePotion(const gameswf::fn_call *a1)
{
  double v1; // r0
  Character *result; // r0
  int *v3; // r5
  float HPPercent; // r7
  float MPPercent; // r0
  float v6; // r6
  VoxSoundManager *v7; // r4
  int v8; // r0

  LODWORD(v1) = gameswf::as_value::to_number((gameswf::as_value *)(**((_DWORD **)a1 + 3) + 12 * *((_DWORD *)a1 + 5)));
  result = NativeGetPlayerChar((int)v1, 0);
  v3 = (int *)result;
  if ( result )
  {
    result = (Character *)Character::HasPotion(result);
    if ( result )
    {
      HPPercent = Character::GetHPPercent((Character *)v3);
      MPPercent = Character::GetMPPercent((Character *)v3);
      v6 = MPPercent;
      if ( (float)(int)HPPercent < 1.0 || (result = (Character *)((float)(int)MPPercent < 1.0), (float)(int)v6 < 1.0) )
      {
        v2Controller::Cmd_UsePotion(v3[222]);
        v7 = (VoxSoundManager *)VoxSoundManager::s_instance;
        v8 = Arrays::GetMemberIDByString<Arrays::Sounds>("PotionDrink");
        return (Character *)VoxSoundManager::Play(v7, v8, 0, 0, 0, 0);
      }
    }
  }
  return result;
}


// ===== 43d3b4 NativeSetCurrentQuest(gameswf::fn_call const&) =====
Character *__fastcall NativeSetCurrentQuest(const gameswf::fn_call *a1)
{
  double v2; // r6
  int v3; // r1
  int v4; // r1
  double v5; // r8
  Character *result; // r0

  LODWORD(v2) = gameswf::as_value::to_number((gameswf::as_value *)(**((_DWORD **)a1 + 3) + 12 * *((_DWORD *)a1 + 5)));
  HIDWORD(v2) = v3;
  LODWORD(v5) = gameswf::as_value::to_number((gameswf::as_value *)(**((_DWORD **)a1 + 3) + 12
                                                                                         * (*((_DWORD *)a1 + 5) - 1)));
  HIDWORD(v5) = v4;
  result = (Character *)NativeGetPlayerChar((int)v2, 0);
  if ( result )
    return (Character *)Character::SG_SetCurrentQuest(result, (int)v5, -1);
  return result;
}


// ===== 43d43c NativeStatsRemoveAssign(gameswf::fn_call const&) =====
PlayerSavegame *__fastcall NativeStatsRemoveAssign(const gameswf::fn_call *a1)
{
  int v2; // r1
  double v3; // r10
  int v4; // r1
  double v5; // r8
  int v6; // r1
  double v7; // r6
  int v8; // r1
  double v9; // r0
  PlayerSavegame *result; // r0
  double v11; // [sp+8h] [bp-Ch]

  LODWORD(v3) = gameswf::as_value::to_number((gameswf::as_value *)(**((_DWORD **)a1 + 3) + 12 * *((_DWORD *)a1 + 5)));
  HIDWORD(v3) = v2;
  LODWORD(v5) = gameswf::as_value::to_number((gameswf::as_value *)(**((_DWORD **)a1 + 3) + 12
                                                                                         * (*((_DWORD *)a1 + 5) - 1)));
  HIDWORD(v5) = v4;
  LODWORD(v7) = gameswf::as_value::to_number((gameswf::as_value *)(**((_DWORD **)a1 + 3) + 12
                                                                                         * (*((_DWORD *)a1 + 5) - 2)));
  HIDWORD(v7) = v6;
  LODWORD(v11) = gameswf::as_value::to_number((gameswf::as_value *)(**((_DWORD **)a1 + 3)
                                                                  + 12 * (*((_DWORD *)a1 + 5) - 3)));
  HIDWORD(v11) = v8;
  LODWORD(v9) = gameswf::as_value::to_number((gameswf::as_value *)(**((_DWORD **)a1 + 3) + 12
                                                                                         * (*((_DWORD *)a1 + 5) - 4)));
  result = NativeGetPlayerChar((int)v9, 0);
  if ( result )
    return Character::ResetStatsChange(result, (int)v3, (int)v5, (int)v7, (int)v11);
  return result;
}


// ===== 43d548 NativeSkillsTrainSkill(gameswf::fn_call const&) =====
Character *__fastcall NativeSkillsTrainSkill(const gameswf::fn_call *a1)
{
  int v2; // r1
  double v3; // r8
  double v4; // r0
  int v5; // r7
  int v6; // r6
  Character *result; // r0
  Character *v8; // r5
  char v9; // r7
  int Int; // r0

  LODWORD(v3) = gameswf::as_value::to_number((gameswf::as_value *)(**((_DWORD **)a1 + 3) + 12 * *((_DWORD *)a1 + 5)));
  HIDWORD(v3) = v2;
  LODWORD(v4) = gameswf::as_value::to_number((gameswf::as_value *)(**((_DWORD **)a1 + 3) + 12
                                                                                         * (*((_DWORD *)a1 + 5) - 1)));
  v5 = (int)v4;
  if ( *((_DWORD *)a1 + 4) == 3 )
    v6 = gameswf::as_value::to_bool((gameswf::as_value *)(**((_DWORD **)a1 + 3) + 12 * (*((_DWORD *)a1 + 5) - 2)));
  else
    v6 = 0;
  result = (Character *)NativeGetPlayerChar(v5, 0);
  v8 = result;
  if ( result )
  {
    v9 = Character::IncSkill(result, (int)v3, v6);
    Int = CharProperties::PROPS_GetInt((Character *)((char *)v8 + 1376), 157, 0);
    if ( v6 )
      return (Character *)gameswf::as_value::set_bool(*(gameswf::as_value **)a1, v9);
    else
      return (Character *)gameswf::as_value::set_double(*(gameswf::as_value **)a1, (double)Int);
  }
  return result;
}


// ===== 43d63c NativeEquipSkill(gameswf::fn_call const&) =====
Character *__fastcall NativeEquipSkill(const gameswf::fn_call *a1)
{
  int v2; // r1
  double v3; // r8
  int v4; // r1
  double v5; // r6
  double v6; // r0
  Character *result; // r0
  Character *v8; // r4

  LODWORD(v3) = gameswf::as_value::to_number((gameswf::as_value *)(**((_DWORD **)a1 + 3) + 12 * *((_DWORD *)a1 + 5)));
  HIDWORD(v3) = v2;
  LODWORD(v5) = gameswf::as_value::to_number((gameswf::as_value *)(**((_DWORD **)a1 + 3) + 12
                                                                                         * (*((_DWORD *)a1 + 5) - 1)));
  HIDWORD(v5) = v4;
  LODWORD(v6) = gameswf::as_value::to_number((gameswf::as_value *)(**((_DWORD **)a1 + 3) + 12
                                                                                         * (*((_DWORD *)a1 + 5) - 2)));
  result = (Character *)NativeGetPlayerChar((int)v6, 0);
  v8 = result;
  if ( result )
  {
    result = (Character *)Character::IsSkillEquippable(result, (int)v5);
    if ( result )
      return Character::SG_SetSkillInSlot(v8, (int)v3, (int)v5);
  }
  return result;
}


// ===== 43d6f8 NativePinchZoom(gameswf::fn_call const&) =====
int __fastcall NativePinchZoom(const gameswf::fn_call *a1)
{
  double v2; // r0
  int v3; // r4

  LODWORD(v2) = Application::GetSavedOption((Application *)&Singleton<Application>::s_inst, "DPad");
  if ( LODWORD(v2) )
  {
    LODWORD(v2) = gameswf::as_value::to_number((gameswf::as_value *)(**((_DWORD **)a1 + 3) + 12 * *((_DWORD *)a1 + 5)));
    v3 = *(_DWORD *)(dword_99F77C + 32);
    if ( v3 )
    {
      if ( !*(_BYTE *)(v3 + 134) )
      {
        *(float *)&v2 = (float)((float)(int)v2 * *(float *)(dword_99F77C + 40)) + *(float *)(v3 + 136);
        *(_DWORD *)(v3 + 136) = LODWORD(v2);
      }
    }
  }
  return LODWORD(v2);
}


// ===== 43d790 NativeInvGetEquipedItem(gameswf::fn_call const&) =====
int __fastcall NativeInvGetEquipedItem(int result)
{
  int v1; // r5
  int v2; // r1
  double v3; // r10
  int v4; // r7
  int v5; // r0
  int v6; // r7
  double v7; // r0
  int PlayerChar; // r8
  ItemInventory *v9; // r8
  signed int v10; // r9
  signed int NumEquipmentSlots; // r0
  bool v12; // cc
  char v13; // r10
  ItemInstance *EquippedItem; // r0
  int Color; // r0
  void (__fastcall *v16)(int, _BYTE *, char *); // r10
  void (__fastcall *v17)(int, _BYTE *, _BYTE *); // r9
  int ItemIndex; // r0
  void (__fastcall *v19)(int, _BYTE *, _BYTE *); // r9
  int NumPowers; // r0
  bool v21; // r1
  const char **v22; // [sp+4h] [bp-F0h]
  _BYTE v23[12]; // [sp+Ch] [bp-E8h] BYREF
  _BYTE v24[12]; // [sp+18h] [bp-DCh] BYREF
  char v25[12]; // [sp+24h] [bp-D0h] BYREF
  char s[128]; // [sp+30h] [bp-C4h] BYREF
  _BYTE v27[20]; // [sp+B0h] [bp-44h] BYREF
  _BYTE v28[20]; // [sp+C4h] [bp-30h] BYREF
  _BYTE v29[20]; // [sp+D8h] [bp-1Ch] BYREF

  v1 = result;
  if ( *(_DWORD *)(result + 16) == 3 )
  {
    LODWORD(v3) = gameswf::as_value::to_number((gameswf::as_value *)(**(_DWORD **)(result + 12)
                                                                   + 12 * *(_DWORD *)(result + 20)));
    HIDWORD(v3) = v2;
    v4 = **(_DWORD **)(v1 + 12) + 12 * (*(_DWORD *)(v1 + 20) - 1);
    if ( *(_BYTE *)(v4 + 1) == 5 )
      v5 = *(_DWORD *)(v4 + 4);
    else
      v5 = 0;
    v6 = gameswf::cast_to<gameswf::as_object>(v5);
    LODWORD(v7) = gameswf::as_value::to_number((gameswf::as_value *)(**(_DWORD **)(v1 + 12)
                                                                   + 12 * (*(_DWORD *)(v1 + 20) - 2)));
    PlayerChar = NativeGetPlayerChar((int)v7, 0);
    if ( !PlayerChar )
      goto LABEL_14;
    v9 = (ItemInventory *)(PlayerChar + 892);
    v10 = (int)v3;
    NumEquipmentSlots = ItemInventory::GetNumEquipmentSlots(v9);
    v12 = (int)v3 <= 0;
    if ( (int)v3 >= 0 )
      v12 = NumEquipmentSlots <= v10;
    v13 = !v12;
    if ( v12 )
    {
      PyDataConstants::getConstant((PyDataConstants *)dword_99F758, "EquipmentSlots", "Count");
      v21 = v13;
      return gameswf::as_value::set_bool(*(gameswf::as_value **)v1, v21);
    }
    EquippedItem = (ItemInstance *)ItemInventory::GetEquippedItem(v9, v10);
    v22 = (const char **)EquippedItem;
    if ( EquippedItem )
    {
      Color = ItemInstance::GetColor(EquippedItem);
      sprintf(s, "<font color='#%000000X'>%s</font>", Color, v22[7]);
      v16 = *(void (__fastcall **)(int, _BYTE *, char *))(*(_DWORD *)v6 + 28);
      gameswf::tu_string::tu_string((gameswf::tu_string *)v29, "ItemName");
      gameswf::as_value::as_value((gameswf::as_value *)v25, s);
      v16(v6, v29, v25);
      gameswf::as_value::drop_refs((gameswf::as_value *)v25);
      gameswf::tu_string::~tu_string((gameswf::tu_string *)v29);
      v17 = *(void (__fastcall **)(int, _BYTE *, _BYTE *))(*(_DWORD *)v6 + 28);
      gameswf::tu_string::tu_string((gameswf::tu_string *)v28, "ItemIndex");
      ItemIndex = ItemInventory::GetItemIndex(v9, (const ItemInstance *)v22);
      gameswf::as_value::as_value((gameswf::as_value *)v24, ItemIndex);
      v17(v6, v28, v24);
      gameswf::as_value::drop_refs((gameswf::as_value *)v24);
      gameswf::tu_string::~tu_string((gameswf::tu_string *)v28);
      v19 = *(void (__fastcall **)(int, _BYTE *, _BYTE *))(*(_DWORD *)v6 + 28);
      gameswf::tu_string::tu_string((gameswf::tu_string *)v27, "ItemColor");
      NumPowers = ItemInstance::GetNumPowers((ItemInstance *)v22);
      gameswf::as_value::as_value((gameswf::as_value *)v23, NumPowers);
      v19(v6, v27, v23);
      gameswf::as_value::drop_refs((gameswf::as_value *)v23);
      gameswf::tu_string::~tu_string((gameswf::tu_string *)v27);
      v21 = 1;
    }
    else
    {
LABEL_14:
      v21 = 0;
    }
    return gameswf::as_value::set_bool(*(gameswf::as_value **)v1, v21);
  }
  return result;
}


// ===== 43da2c NativeInvAutoEquipSlot(gameswf::fn_call const&) =====
int __fastcall NativeInvAutoEquipSlot(int result)
{
  int v1; // r4
  int v2; // r1
  double v3; // r6
  double v4; // r0
  int v5; // r5
  int v6; // r4
  bool v7; // cc

  v1 = result;
  if ( *(_DWORD *)(result + 16) == 2 )
  {
    LODWORD(v3) = gameswf::as_value::to_number((gameswf::as_value *)(**(_DWORD **)(result + 12)
                                                                   + 12 * *(_DWORD *)(result + 20)));
    HIDWORD(v3) = v2;
    LODWORD(v4) = gameswf::as_value::to_number((gameswf::as_value *)(**(_DWORD **)(v1 + 12)
                                                                   + 12 * (*(_DWORD *)(v1 + 20) - 1)));
    result = NativeGetPlayerChar((int)v4, 0);
    v5 = result;
    if ( result )
    {
      v6 = (int)v3;
      result = ItemInventory::GetNumEquipmentSlots((ItemInventory *)(result + 892));
      v7 = (int)v3 <= 0;
      if ( (int)v3 >= 0 )
        v7 = result <= v6;
      if ( v7 )
      {
        if ( v6 == -1 )
          return (*(int (__fastcall **)(int))(*(_DWORD *)v5 + 312))(v5);
      }
      else
      {
        (*(void (__fastcall **)(int, int))(*(_DWORD *)v5 + 324))(v5, v6);
        return (*(int (__fastcall **)(int, int))(*(_DWORD *)v5 + 320))(v5, v6);
      }
    }
  }
  return result;
}


// ===== 43dafc NativeOnHUDOpenEvent(gameswf::fn_call const&) =====
int __fastcall NativeOnHUDOpenEvent(int result)
{
  int v1; // r6
  int v2; // r2
  int v3; // r3
  char v4; // r5
  double v5; // r6
  int v6; // r1

  v1 = result;
  if ( *(_DWORD *)(result + 16) == 2 )
  {
    v2 = *(_DWORD *)(result + 20);
    v3 = **(_DWORD **)(result + 12);
    if ( *(_BYTE *)(v3 + 12 * v2 + 1) == 1 )
    {
      result = gameswf::as_value::is_number((gameswf::as_value *)(v3 + 12 * (v2 - 1)));
      if ( result )
      {
        v4 = gameswf::as_value::to_bool((gameswf::as_value *)(**(_DWORD **)(v1 + 12) + 12 * *(_DWORD *)(v1 + 20)));
        LODWORD(v5) = gameswf::as_value::to_number((gameswf::as_value *)(**(_DWORD **)(v1 + 12)
                                                                       + 12 * (*(_DWORD *)(v1 + 20) - 1)));
        HIDWORD(v5) = v6;
        result = Application::GetCurrentLevel((Application *)&Singleton<Application>::s_inst) + (int)v5;
        *(_BYTE *)(result + 400) = v4;
      }
    }
  }
  return result;
}

