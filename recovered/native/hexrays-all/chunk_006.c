// ===== 37f9cc TrophyData::~TrophyData() =====
void __fastcall TrophyData::~TrophyData(TrophyData *this)
{
  ;
}


// ===== 37f9d0 TrophyManager::Init(void) =====
int __fastcall TrophyManager::Init(TrophyManager *this)
{
  return 1;
}


// ===== 37f9d8 TrophyManager::Terminate(void) =====
int __fastcall TrophyManager::Terminate(TrophyManager *this)
{
  return 1;
}


// ===== 37f9e0 TrophyManager::UnlockTrophiesGameCenter(void) =====
void __fastcall TrophyManager::UnlockTrophiesGameCenter(TrophyManager *this)
{
  ;
}


// ===== 37f9e4 TrophyManager::IsTrophyUnlocking(int) =====
bool __fastcall TrophyManager::IsTrophyUnlocking(TrophyManager *this, int a2)
{
  int v3; // [sp+4h] [bp-Ch] BYREF

  v3 = a2;
  return *((_DWORD *)this + 5) != (_DWORD)std::priv::__find<int *,int>(
                                            *((_DWORD **)this + 4),
                                            *((_DWORD *)this + 5),
                                            &v3);
}


// ===== 37fa1c std::priv::_Deque_iterator_base<AchievementMsg>::_M_subtract(std::priv::_Deque_iterator_base<AchievementMsg> const&) =====
int __fastcall std::priv::_Deque_iterator_base<AchievementMsg>::_M_subtract(_DWORD *a1, _DWORD *a2)
{
  return -286331153 * ((*a1 - a1[1]) >> 2) - 286331153 * ((a2[2] - *a2) >> 2) + 2 * (((a1[3] - a2[3]) >> 2) - 1);
}


// ===== 37fa80 TrophyData::~TrophyData() =====
void __fastcall TrophyData::~TrophyData(TrophyData *this)
{
  *(_DWORD *)this = off_9639D8;
  CustomFree(this);
}


// ===== 37fab4 TrophyManager::UnlockTrophiesGLLive(void) =====
int __fastcall TrophyManager::UnlockTrophiesGLLive(int this)
{
  int v1; // r7
  unsigned int v2; // r3
  unsigned int v3; // r4
  int v4; // r3

  v1 = this;
  if ( Arrays::TrophyTable::size )
  {
    v2 = 0;
    v3 = 0;
    do
    {
      while ( 1 )
      {
        ++v3;
        v4 = *(_DWORD *)(*(_DWORD *)(v1 + 4) + 4 * v2);
        if ( *(_BYTE *)(v4 + 16) )
          break;
        v2 = v3;
        if ( Arrays::TrophyTable::size <= v3 )
          return this;
      }
      this = NotifyTrophy(*(_DWORD *)(v4 + 36));
      v2 = v3;
    }
    while ( Arrays::TrophyTable::size > v3 );
  }
  return this;
}


// ===== 37fb38 IStreamBase::writeAs<std::bitset<128u>>(std::bitset<128u> const&) =====
int __fastcall IStreamBase::writeAs<std::bitset<128u>>(int a1, int a2)
{
  int result; // r0
  int v3; // r1

  result = (*(int (__fastcall **)(int, int, int, _DWORD))(*(_DWORD *)a1 + 28))(a1, a2, 16, 0);
  if ( result != 16 || v3 )
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


// ===== 37fbe8 IStreamBase::readAs<std::bitset<128u>>(std::bitset<128u> &) =====
int __fastcall IStreamBase::readAs<std::bitset<128u>>(int a1, int a2)
{
  int result; // r0
  int v3; // r1

  result = (*(int (__fastcall **)(int, int, int, _DWORD))(*(_DWORD *)a1 + 24))(a1, a2, 16, 0);
  if ( result != 16 || v3 )
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


// ===== 37fc98 TrophyManager::UnloadTrophies(void) =====
int __fastcall TrophyManager::UnloadTrophies(int this)
{
  int v1; // r2
  int v2; // r5
  int v3; // r6
  unsigned int v4; // r4
  int v5; // r3

  v1 = *(_DWORD *)(this + 8);
  v2 = *(_DWORD *)(this + 4);
  v3 = this;
  if ( (unsigned int)(v1 - v2) >> 2 )
  {
    v4 = 0;
    do
    {
      v5 = *(_DWORD *)(v2 + 4 * v4);
      if ( v5 )
      {
        this = (*(int (__fastcall **)(_DWORD))(*(_DWORD *)v5 + 4))(*(_DWORD *)(v2 + 4 * v4));
        *(_DWORD *)(v2 + 4 * v4) = 0;
        v1 = *(_DWORD *)(v3 + 8);
        v2 = *(_DWORD *)(v3 + 4);
      }
      ++v4;
    }
    while ( v4 < (v1 - v2) >> 2 );
  }
  if ( v1 != v2 )
    *(_DWORD *)(v3 + 8) = v2;
  return this;
}


// ===== 37fd00 std::vector<int,std::allocator<int>>::vector(std::vector<int,std::allocator<int>> const&) =====
_DWORD *__fastcall std::vector<int>::vector(_DWORD *a1, int a2)
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
  v5 = (char *)std::allocator<int>::_M_allocate((int)(a1 + 2), v4, &v11);
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


// ===== 37fd80 std::allocator<TrophyData *>::_M_allocate(uint,uint &) =====
void *__fastcall std::allocator<TrophyData *>::_M_allocate(int a1, unsigned int a2, size_t *a3)
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


// ===== 37fdf0 TrophyManager::~TrophyManager() =====
void __fastcall TrophyManager::~TrophyManager(TrophyManager *this)
{
  char *v2; // r5
  void *v3; // r0
  size_t v4; // r1
  void *v5; // r0
  size_t v6; // r1

  *(_DWORD *)this = off_9639E8;
  v2 = (char *)this + 16;
  TrophyManager::UnloadTrophies((int)this);
  v3 = *((void **)this + 4);
  if ( v3 )
  {
    v4 = (*((_DWORD *)v2 + 2) - (_DWORD)v3) & 0xFFFFFFFC;
    if ( v4 > 0x80 )
      CustomFree(v3);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v3, v4);
  }
  v5 = *((void **)this + 1);
  if ( v5 )
  {
    v6 = (*((_DWORD *)this + 3) - (_DWORD)v5) & 0xFFFFFFFC;
    if ( v6 > 0x80 )
      CustomFree(v5);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v5, v6);
  }
}


// ===== 37fe88 TrophyManager::DeleteInstance(void) =====
void __fastcall TrophyManager::DeleteInstance(TrophyManager *this)
{
  void *v1; // r4

  v1 = (void *)TrophyManager::s_instance;
  if ( TrophyManager::s_instance )
  {
    TrophyManager::~TrophyManager((TrophyManager *)TrophyManager::s_instance);
    CustomFree(v1);
  }
}


// ===== 37fec8 TrophyManager::~TrophyManager() =====
void __fastcall TrophyManager::~TrophyManager(TrophyManager *this)
{
  char *v2; // r5
  void *v3; // r0
  size_t v4; // r1
  void *v5; // r0
  size_t v6; // r1

  *(_DWORD *)this = off_9639E8;
  v2 = (char *)this + 16;
  TrophyManager::UnloadTrophies((int)this);
  v3 = *((void **)this + 4);
  if ( v3 )
  {
    v4 = (*((_DWORD *)v2 + 2) - (_DWORD)v3) & 0xFFFFFFFC;
    if ( v4 > 0x80 )
      CustomFree(v3);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v3, v4);
  }
  v5 = *((void **)this + 1);
  if ( v5 )
  {
    v6 = (*((_DWORD *)this + 3) - (_DWORD)v5) & 0xFFFFFFFC;
    if ( v6 > 0x80 )
      CustomFree(v5);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v5, v6);
  }
}


// ===== 37ff60 TrophyManager::GetTrophyData(int) =====
int __fastcall TrophyManager::GetTrophyData(TrophyManager *this, int a2)
{
  int *v2; // r2
  int *v3; // r3
  int result; // r0
  std::string v5; // [sp+4h] [bp-20h] BYREF

  v2 = *((int **)this + 2);
  v3 = *((int **)this + 1);
  if ( v3 == v2 )
  {
LABEL_6:
    DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
    std::string::string(&v5, "isTracingTrophies");
    DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v5);
    if ( (std::string *)v5._M_start_of_storage._M_data == &v5 || !v5._M_start_of_storage._M_data )
    {
      return 0;
    }
    else
    {
      if ( (unsigned int)(v5._M_buffers._M_end_of_storage - v5._M_start_of_storage._M_data) > 0x80 )
        CustomFree(v5._M_start_of_storage._M_data);
      else
        __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(
          v5._M_start_of_storage._M_data,
          v5._M_buffers._M_end_of_storage - v5._M_start_of_storage._M_data);
      return 0;
    }
  }
  else
  {
    while ( 1 )
    {
      result = *v3;
      if ( *(_DWORD *)(*v3 + 4) == a2 )
        break;
      if ( ++v3 == v2 )
        goto LABEL_6;
    }
  }
  return result;
}


// ===== 380058 TrophyManager::IsTrophyUnlocked(int) =====
int __fastcall TrophyManager::IsTrophyUnlocked(TrophyManager *this, int a2)
{
  int result; // r0

  result = TrophyManager::GetTrophyData(this, a2);
  if ( result )
    return *(unsigned __int8 *)(result + 16);
  return result;
}


// ===== 38006c TrophyManager::SaveTrophies(void) =====
void __fastcall TrophyManager::SaveTrophies(TrophyManager *this)
{
  TrophyManager *v1; // r5
  int v2; // r6
  int v3; // r0
  unsigned int v4; // r8
  unsigned int v5; // r7
  _DWORD v7[4]; // [sp+Ch] [bp-18h] BYREF
  int v8; // [sp+1Ch] [bp-8h] BYREF

  v1 = (TrophyManager *)TrophyManager::s_instance;
  v2 = *(_DWORD *)(dword_99F73C + 52);
  if ( v2 )
  {
    v3 = (*(int (__fastcall **)(_DWORD, const char *, int))(*(_DWORD *)v2 + 148))(
           *(_DWORD *)(dword_99F73C + 52),
           "achievements.savegame",
           1);
    if ( v3 )
    {
      v4 = 0;
      v8 = v3;
      memset(v7, 0, sizeof(v7));
      if ( Arrays::TrophyTable::size )
      {
        v5 = 0;
        do
        {
          while ( !TrophyManager::IsTrophyUnlocked(v1, v5++) )
          {
            v4 = v5;
            if ( Arrays::TrophyTable::size <= v5 )
              goto LABEL_10;
          }
          if ( v4 > 0x7F )
            __ZSt24__stl_throw_out_of_rangePKc_veneer("bitset");
          v7[v4 >> 5] |= 1 << (v4 & 0x1F);
          v4 = v5;
        }
        while ( Arrays::TrophyTable::size > v5 );
      }
LABEL_10:
      IStreamBase::writeAs<std::bitset<128u>>(v8, (int)v7);
      (*(void (__fastcall **)(int, int *))(*(_DWORD *)v2 + 120))(v2, &v8);
    }
  }
}


// ===== 3801c4 TrophyManager::InitTrophies(void) =====
char *__fastcall TrophyManager::InitTrophies(char *this)
{
  char *v1; // r7
  unsigned int v2; // r11
  unsigned int v3; // r5
  int *v4; // r8
  int v5; // r4
  int v6; // r3
  _DWORD *v7; // r11
  int v8; // r3
  unsigned int v9; // r2
  unsigned int v10; // r3
  char *v11; // r0
  _BYTE *v12; // r1
  char *v13; // r11
  size_t v14; // r8
  int *v15; // r8
  _DWORD *v16; // r8
  size_t v17; // r1
  size_t v18; // r3
  size_t v19; // r3
  int v20; // [sp+18h] [bp-34h]
  size_t v21; // [sp+24h] [bp-28h] BYREF
  std::string v22; // [sp+2Ch] [bp-20h] BYREF

  v1 = this;
  if ( Arrays::TrophyTable::size )
  {
    v2 = 0;
    v20 = (int)(this + 12);
    v3 = 0;
    do
    {
      while ( 1 )
      {
        v5 = operator new(0x28u, 0);
        *(_DWORD *)v5 = off_9639D8;
        v6 = Arrays::TrophyTable::members;
        *(_DWORD *)(v5 + 4) = v3;
        v7 = (_DWORD *)(v6 + 32 * v2);
        *(_DWORD *)(v5 + 8) = v7[6];
        *(_DWORD *)(v5 + 12) = v7[1];
        *(_DWORD *)(v5 + 24) = v7[4];
        *(_DWORD *)(v5 + 20) = v7[7];
        v8 = v7[5];
        *(_BYTE *)(v5 + 16) = 0;
        *(_DWORD *)(v5 + 28) = v8;
        *(_DWORD *)(v5 + 32) = v7[3];
        *(_DWORD *)(v5 + 36) = v7[2];
        DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
        std::string::string(&v22, "isTracingTrophies");
        DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v22);
        this = v22._M_start_of_storage._M_data;
        if ( (std::string *)v22._M_start_of_storage._M_data != &v22 )
        {
          if ( v22._M_start_of_storage._M_data )
            break;
        }
LABEL_4:
        v4 = *((int **)v1 + 2);
        if ( v4 == *((int **)v1 + 3) )
          goto LABEL_10;
LABEL_5:
        *v4 = v5;
        v2 = ++v3;
        *((_DWORD *)v1 + 2) += 4;
        if ( Arrays::TrophyTable::size <= v3 )
          return this;
      }
      if ( (unsigned int)(v22._M_buffers._M_end_of_storage - v22._M_start_of_storage._M_data) <= 0x80 )
      {
        __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(
          v22._M_start_of_storage._M_data,
          v22._M_buffers._M_end_of_storage - v22._M_start_of_storage._M_data);
        goto LABEL_4;
      }
      CustomFree(v22._M_start_of_storage._M_data);
      v4 = *((int **)v1 + 2);
      if ( v4 != *((int **)v1 + 3) )
        goto LABEL_5;
LABEL_10:
      v9 = ((int)v4 - *((_DWORD *)v1 + 1)) >> 2;
      if ( v9 )
        v10 = 2 * v9;
      else
        v10 = 1;
      if ( v10 > 0x3FFFFFFF || v9 > v10 )
        v10 = 0x3FFFFFFF;
      v21 = v10;
      v11 = (char *)std::allocator<TrophyData *>::_M_allocate(v20, v10, &v21);
      v12 = *((_BYTE **)v1 + 1);
      v13 = v11;
      v14 = (char *)v4 - v12;
      if ( v14 )
        v15 = (int *)((char *)memmove(v11, v12, v14) + v14);
      else
        v15 = (int *)v11;
      *v15 = v5;
      v16 = v15 + 1;
      this = *((char **)v1 + 1);
      if ( this )
      {
        v17 = (*((_DWORD *)v1 + 3) - (_DWORD)this) & 0xFFFFFFFC;
        if ( v17 > 0x80 )
        {
          CustomFree(this);
          v19 = v21;
          *((_DWORD *)v1 + 1) = v13;
          *((_DWORD *)v1 + 2) = v16;
          *((_DWORD *)v1 + 3) = &v13[4 * v19];
          goto LABEL_22;
        }
        __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(this, v17);
      }
      v18 = v21;
      *((_DWORD *)v1 + 1) = v13;
      *((_DWORD *)v1 + 2) = v16;
      *((_DWORD *)v1 + 3) = &v13[4 * v18];
LABEL_22:
      v2 = ++v3;
    }
    while ( Arrays::TrophyTable::size > v3 );
  }
  return this;
}


// ===== 380474 TrophyManager::TrophyManager(void) =====
void __fastcall TrophyManager::TrophyManager(TrophyManager *this)
{
  *((_DWORD *)this + 6) = 0;
  *(_DWORD *)this = off_9639E8;
  *((_DWORD *)this + 1) = 0;
  *((_DWORD *)this + 2) = 0;
  *((_DWORD *)this + 3) = 0;
  *((_DWORD *)this + 4) = 0;
  *((_DWORD *)this + 5) = 0;
  TrophyManager::InitTrophies((char *)this);
}


// ===== 3804c0 TrophyManager::CreateInstance(void) =====
void __fastcall TrophyManager::CreateInstance(TrophyManager *this)
{
  TrophyManager *v1; // r5

  if ( !TrophyManager::s_instance )
  {
    v1 = (TrophyManager *)operator new(0x1Cu, 4);
    TrophyManager::TrophyManager(v1);
    TrophyManager::s_instance = (int)v1;
  }
}


// ===== 380508 TrophyManager::TrophyManager(void) =====
void __fastcall TrophyManager::TrophyManager(TrophyManager *this)
{
  *((_DWORD *)this + 6) = 0;
  *(_DWORD *)this = off_9639E8;
  *((_DWORD *)this + 1) = 0;
  *((_DWORD *)this + 2) = 0;
  *((_DWORD *)this + 3) = 0;
  *((_DWORD *)this + 4) = 0;
  *((_DWORD *)this + 5) = 0;
  TrophyManager::InitTrophies((char *)this);
}


// ===== 380554 AchievementMsg::AchievementMsg(AchievementMsg const&) =====
int __fastcall AchievementMsg::AchievementMsg(int a1, int a2)
{
  *(_DWORD *)(a1 + 16) = a1;
  *(_DWORD *)(a1 + 20) = a1;
  std::string::_M_range_initialize((std::string *)a1, *(const char **)(a2 + 20), *(const char **)(a2 + 16));
  *(_DWORD *)(a1 + 40) = a1 + 24;
  *(_DWORD *)(a1 + 44) = a1 + 24;
  std::string::_M_range_initialize((std::string *)(a1 + 24), *(const char **)(a2 + 44), *(const char **)(a2 + 40));
  *(_DWORD *)(a1 + 48) = *(_DWORD *)(a2 + 48);
  *(_DWORD *)(a1 + 52) = *(_DWORD *)(a2 + 52);
  *(_DWORD *)(a1 + 56) = *(_DWORD *)(a2 + 56);
  return a1;
}


// ===== 3805ac std::allocator<AchievementMsg>::allocate(uint,void const*) [clone] =====
void *std::allocator<AchievementMsg>::allocate()
{
  size_t v1; // [sp+4h] [bp-8h] BYREF

  v1 = 120;
  return __ZNSt12__node_alloc11_M_allocateERj_veneer(&v1);
}


// ===== 3805cc `global constructor keyed to'.._.._sources_Core_TrophyManager_TrophyManager.cpp =====
int `global constructor keyed to'.._.._sources_Core_TrophyManager_TrophyManager.cpp()
{
  int result; // r0
  int *v1; // r4
  char *v2; // r0
  int v3; // r2
  void *v4; // r0
  int *v5; // r1
  int v6; // r0
  int v7; // r3
  _DWORD *v8; // r6
  unsigned int v9; // r7
  int v10; // r12
  int v11; // r3
  _DWORD *v12; // r6
  unsigned int v13; // r7
  int v14; // r12
  int v15; // r3
  _DWORD *v16; // r6
  unsigned int v17; // r7
  int v18; // r12
  int v19; // r3
  _DWORD *v20; // r6
  unsigned int v21; // r7
  int v22; // r12
  int v23; // r3
  _DWORD *v24; // r6
  unsigned int v25; // r7
  int v26; // r12
  int v27; // r3
  unsigned int v28; // [sp+0h] [bp-14h]
  char *v29; // [sp+4h] [bp-10h]
  size_t v30; // [sp+Ch] [bp-8h] BYREF

  result = `guard variable for'Singleton<PlayerStatManager>::s_inst;
  dword_9A2414 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9A2410 = 1056964608;
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
      v2 = (char *)std::allocator<StatusMsg *>::allocate((int)(v1 + 8), 8u);
      v3 = v1[9];
      v1[8] = (int)v2;
      v28 = (unsigned int)(v3 - 1) >> 1;
      v29 = v2;
      v30 = 112;
      v4 = __ZNSt12__node_alloc11_M_allocateERj_veneer(&v30);
      v5 = (int *)&v29[4 * v28];
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
    v8 = std::allocator<OnlineStatusMsg *>::allocate((int)&dword_99FB54, (unsigned int)byte_8);
    v30 = 112;
    dword_99FB54 = (int)v8;
    v9 = (unsigned int)(dword_99FB58 - 1) >> 1;
    v8[v9] = __ZNSt12__node_alloc11_M_allocateERj_veneer(&v30);
    dword_99FB40 = (int)&v8[v9];
    v10 = v8[v9];
    dword_99FB50 = (int)&v8[v9];
    dword_99FB3C = v10 + 112;
    dword_99FB38 = v10;
    v11 = v8[v9];
    dword_99FB4C = v11 + 112;
    dword_99FB34 = v10;
    dword_99FB44 = v11;
    dword_99FB48 = v11;
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
    v12 = std::allocator<TutorialMsg *>::allocate((int)&dword_99FB80, (unsigned int)byte_8);
    v30 = 128;
    dword_99FB80 = (int)v12;
    v13 = (unsigned int)(dword_99FB84 - 1) >> 1;
    v12[v13] = __ZNSt12__node_alloc11_M_allocateERj_veneer(&v30);
    dword_99FB6C = (int)&v12[v13];
    v14 = v12[v13];
    dword_99FB7C = (int)&v12[v13];
    dword_99FB68 = v14 + 128;
    dword_99FB64 = v14;
    v15 = v12[v13];
    dword_99FB78 = v15 + 128;
    dword_99FB60 = v14;
    dword_99FB70 = v15;
    dword_99FB74 = v15;
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
    v16 = std::allocator<DialogMsg *>::allocate((int)&dword_99FBAC, (unsigned int)byte_8);
    v30 = 76;
    dword_99FBAC = (int)v16;
    v17 = (unsigned int)(dword_99FBB0 - 1) >> 1;
    v16[v17] = __ZNSt12__node_alloc11_M_allocateERj_veneer(&v30);
    dword_99FB98 = (int)&v16[v17];
    v18 = v16[v17];
    dword_99FBA8 = (int)&v16[v17];
    dword_99FB94 = v18 + 76;
    dword_99FB90 = v18;
    v19 = v16[v17];
    dword_99FBA4 = v19 + 76;
    dword_99FB8C = v18;
    dword_99FB9C = v19;
    dword_99FBA0 = v19;
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
    v20 = std::allocator<CharMenuTutorialMsg *>::allocate((int)&dword_99FBD8, (unsigned int)byte_8);
    v30 = 104;
    dword_99FBD8 = (int)v20;
    v21 = (unsigned int)(dword_99FBDC - 1) >> 1;
    v20[v21] = __ZNSt12__node_alloc11_M_allocateERj_veneer(&v30);
    dword_99FBC4 = (int)&v20[v21];
    v22 = v20[v21];
    dword_99FBD4 = (int)&v20[v21];
    dword_99FBC0 = v22 + 104;
    dword_99FBBC = v22;
    v23 = v20[v21];
    dword_99FBD0 = v23 + 104;
    dword_99FBB8 = v22;
    dword_99FBC8 = v23;
    dword_99FBCC = v23;
    result = _aeabi_atexit(
               (int)&Singleton<MenuMessageManager<CharMenuTutorialMsg,1>>::s_inst,
               (int)MenuMessageManager<CharMenuTutorialMsg,1>::~MenuMessageManager,
               (int)&_dso_handle);
  }
  if ( (`guard variable for'Singleton<MenuMessageManager<AchievementMsg,1>>::s_inst & 1) == 0 )
  {
    `guard variable for'Singleton<MenuMessageManager<AchievementMsg,1>>::s_inst = 1;
    dword_99FBE4 = 0;
    dword_99FBE8 = 0;
    dword_99FBEC = 0;
    dword_99FBF0 = 0;
    dword_99FBF4 = 0;
    dword_99FBF8 = 0;
    dword_99FBFC = 0;
    dword_99FC00 = 0;
    dword_99FC04 = 0;
    dword_99FC08 = (int)byte_8;
    Singleton<MenuMessageManager<AchievementMsg,1>>::s_inst = (int)off_95B1A0;
    v24 = std::allocator<AchievementMsg *>::allocate((int)&dword_99FC04, (unsigned int)byte_8);
    dword_99FC04 = (int)v24;
    v25 = (unsigned int)(dword_99FC08 - 1) >> 1;
    v24[v25] = std::allocator<AchievementMsg>::allocate();
    dword_99FBF0 = (int)&v24[v25];
    v26 = v24[v25];
    dword_99FC00 = (int)&v24[v25];
    dword_99FBEC = v26 + 120;
    dword_99FBE8 = v26;
    v27 = v24[v25];
    dword_99FBFC = v27 + 120;
    dword_99FBE4 = v26;
    dword_99FBF4 = v27;
    dword_99FBF8 = v27;
    return _aeabi_atexit(
             (int)&Singleton<MenuMessageManager<AchievementMsg,1>>::s_inst,
             (int)MenuMessageManager<AchievementMsg,1>::~MenuMessageManager,
             (int)&_dso_handle);
  }
  return result;
}


// ===== 380c8c std::deque<AchievementMsg,std::allocator<AchievementMsg>>::_M_push_back_aux_v(AchievementMsg const&) =====
int __fastcall std::deque<AchievementMsg>::_M_push_back_aux_v(_DWORD *a1, int a2)
{
  char *v2; // r10
  int v3; // r2
  unsigned int v4; // r3
  int result; // r0
  int *v8; // r2
  int v9; // r3
  int v10; // r2
  char *v11; // r1
  int v12; // r7
  int v13; // r9
  char *v14; // r6
  signed int v15; // r2
  int v16; // r3
  int v17; // r3
  int v18; // r2
  unsigned int v19; // r8
  char *v20; // r0
  const void *v21; // r1
  size_t v22; // r2
  char *v23; // r10
  void *v24; // r0
  size_t v25; // r1

  v2 = (char *)a1[7];
  v3 = a1[8];
  v4 = a1[9];
  if ( v4 - ((int)&v2[-v3] >> 2) <= 1 )
  {
    v11 = (char *)a1[3];
    v12 = ((v2 - v11) >> 2) + 1;
    v13 = ((v2 - v11) >> 2) + 2;
    if ( v4 <= 2 * v13 )
    {
      if ( v4 )
        v18 = a1[9];
      else
        v18 = 1;
      v19 = v4 + 2 + v18;
      v20 = (char *)std::allocator<AchievementMsg *>::allocate((int)(a1 + 8), v19);
      v21 = (const void *)a1[3];
      v22 = a1[7] + 4 - (_DWORD)v21;
      v23 = v20;
      v14 = &v20[4 * ((v19 - v13) >> 1)];
      if ( v22 )
        memmove(&v20[4 * ((v19 - v13) >> 1)], v21, v22);
      v24 = (void *)a1[8];
      if ( v24 )
      {
        v25 = 4 * a1[9];
        if ( v25 > 0x80 )
          CustomFree(v24);
        else
          __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v24, v25);
      }
      a1[8] = v23;
      a1[9] = v19;
    }
    else
    {
      v14 = (char *)(v3 + 4 * ((v4 - v13) >> 1));
      if ( v11 > v14 )
      {
        if ( v2 + 4 != v11 )
          memmove(v14, v11, v2 + 4 - v11);
      }
      else
      {
        v15 = v2 + 4 - v11;
        if ( v15 > 0 )
          memmove(&v14[4 * v12 - v15], v11, v15);
      }
    }
    a1[3] = v14;
    v16 = *(_DWORD *)v14;
    v2 = &v14[4 * v12 - 4];
    a1[2] = *(_DWORD *)v14 + 120;
    a1[1] = v16;
    a1[7] = v2;
    v17 = *(_DWORD *)v2;
    a1[6] = *(_DWORD *)v2 + 120;
    a1[5] = v17;
  }
  *((_DWORD *)v2 + 1) = std::allocator<AchievementMsg>::allocate();
  result = AchievementMsg::AchievementMsg(a1[4], a2);
  v8 = (int *)(a1[7] + 4);
  a1[7] = v8;
  v9 = *v8;
  v10 = *v8 + 120;
  a1[4] = v9;
  a1[6] = v10;
  a1[5] = v9;
  return result;
}


// ===== 380e0c std::deque<AchievementMsg,std::allocator<AchievementMsg>>::push_back(AchievementMsg const&) =====
int __fastcall std::deque<AchievementMsg>::push_back(_DWORD *a1, int a2)
{
  int result; // r0

  if ( a1[4] == a1[6] - 60 )
    return std::deque<AchievementMsg>::_M_push_back_aux_v(a1, a2);
  result = AchievementMsg::AchievementMsg(a1[4], a2);
  a1[4] += 60;
  return result;
}


// ===== 380e48 TrophyManager::TrophyUnlockedCB(int) =====
void __fastcall TrophyManager::TrophyUnlockedCB(TrophyManager *this, int a2)
{
  TrophyManager *v2; // r5
  char *v3; // r0
  void *v4; // r3
  char *v5; // r12
  int TrophyData; // r6
  int v7; // r1
  const char *v8; // r10
  size_t v9; // r0
  int v10; // r1
  const char *v11; // r2
  const char *String; // r10
  TrophyManager *CurrentLevel; // r0
  size_t v14; // r1
  const char *v15; // r10
  MenuManager *Instance; // r0
  MenuFX *v17; // r8
  void *v18; // r0
  gameswf::character *Char; // r0
  int v21; // [sp+Ch] [bp-108h] BYREF
  _DWORD v22[4]; // [sp+10h] [bp-104h] BYREF
  _BYTE v23[4]; // [sp+20h] [bp-F4h] BYREF
  int v24; // [sp+24h] [bp-F0h]
  int v25; // [sp+28h] [bp-ECh]
  void *p; // [sp+2Ch] [bp-E8h] BYREF
  char *v27; // [sp+30h] [bp-E4h]
  int v28; // [sp+34h] [bp-E0h]
  int v29; // [sp+38h] [bp-DCh]
  int v30; // [sp+3Ch] [bp-D8h]
  std::string v31; // [sp+58h] [bp-BCh] BYREF
  std::string v32; // [sp+70h] [bp-A4h] BYREF
  int v33; // [sp+88h] [bp-8Ch]
  int v34; // [sp+8Ch] [bp-88h]
  int v35; // [sp+90h] [bp-84h]
  std::string v36; // [sp+94h] [bp-80h] BYREF
  std::string v37; // [sp+ACh] [bp-68h] BYREF
  std::string v38; // [sp+C4h] [bp-50h] BYREF
  std::string v39; // [sp+DCh] [bp-38h] BYREF
  std::string v40; // [sp+F4h] [bp-20h] BYREF

  v2 = (TrophyManager *)TrophyManager::s_instance;
  v21 = (int)this;
  std::vector<int>::vector(&p, TrophyManager::s_instance + 16);
  v3 = (char *)std::priv::__find<int *,int>(p, (int)v27, &v21);
  v4 = p;
  v5 = v27;
  if ( p == v27 || v3 == v27 )
    goto LABEL_40;
  if ( v27 != v3 + 4 )
  {
    memmove(v3, v3 + 4, v27 - (v3 + 4));
    v5 = v27;
  }
  v27 = v5 - 4;
  TrophyData = TrophyManager::GetTrophyData(v2, v21);
  if ( !TrophyData )
    goto LABEL_39;
  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string(&v40, "isTracingTrophies");
  DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v40);
  if ( (std::string *)v40._M_start_of_storage._M_data != &v40 && v40._M_start_of_storage._M_data )
  {
    if ( (unsigned int)(v40._M_buffers._M_end_of_storage - v40._M_start_of_storage._M_data) > 0x80 )
      CustomFree(v40._M_start_of_storage._M_data);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(
        v40._M_start_of_storage._M_data,
        v40._M_buffers._M_end_of_storage - v40._M_start_of_storage._M_data);
  }
  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string(&v39, "isTracingTrophies");
  DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v39);
  if ( (std::string *)v39._M_start_of_storage._M_data != &v39 && v39._M_start_of_storage._M_data )
  {
    if ( (unsigned int)(v39._M_buffers._M_end_of_storage - v39._M_start_of_storage._M_data) > 0x80 )
      CustomFree(v39._M_start_of_storage._M_data);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(
        v39._M_start_of_storage._M_data,
        v39._M_buffers._M_end_of_storage - v39._M_start_of_storage._M_data);
  }
  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string(&v38, "isTracingTrophies");
  DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v38);
  if ( (std::string *)v38._M_start_of_storage._M_data != &v38 && v38._M_start_of_storage._M_data )
  {
    if ( (unsigned int)(v38._M_buffers._M_end_of_storage - v38._M_start_of_storage._M_data) > 0x80 )
      CustomFree(v38._M_start_of_storage._M_data);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(
        v38._M_start_of_storage._M_data,
        v38._M_buffers._M_end_of_storage - v38._M_start_of_storage._M_data);
  }
  *(_BYTE *)(TrophyData + 16) = 1;
  std::string::string(&v37, "");
  std::string::string(&v36, "");
  AchievementMsg::AchievementMsg((AchievementMsg *)&v31, &v37, &v36, 0, 0, 0);
  if ( (std::string *)v36._M_start_of_storage._M_data != &v36 && v36._M_start_of_storage._M_data )
  {
    if ( (unsigned int)(v36._M_buffers._M_end_of_storage - v36._M_start_of_storage._M_data) > 0x80 )
      CustomFree(v36._M_start_of_storage._M_data);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(
        v36._M_start_of_storage._M_data,
        v36._M_buffers._M_end_of_storage - v36._M_start_of_storage._M_data);
  }
  if ( (std::string *)v37._M_start_of_storage._M_data == &v37 || !v37._M_start_of_storage._M_data )
  {
LABEL_26:
    v7 = *(_DWORD *)(TrophyData + 8);
    if ( v7 != -1 )
      goto LABEL_27;
LABEL_44:
    std::string::_M_assign(&v31, "", "");
    v10 = *(_DWORD *)(TrophyData + 12);
    if ( v10 == -1 )
      goto LABEL_28;
LABEL_45:
    String = (const char *)StringManager::getString((StringManager *)dword_99F760, v10);
    v11 = &String[LC_API_STRLEN_0(String)];
    goto LABEL_29;
  }
  if ( (unsigned int)(v37._M_buffers._M_end_of_storage - v37._M_start_of_storage._M_data) <= 0x80 )
  {
    __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(
      v37._M_start_of_storage._M_data,
      v37._M_buffers._M_end_of_storage - v37._M_start_of_storage._M_data);
    goto LABEL_26;
  }
  CustomFree(v37._M_start_of_storage._M_data);
  v7 = *(_DWORD *)(TrophyData + 8);
  if ( v7 == -1 )
    goto LABEL_44;
LABEL_27:
  v8 = (const char *)StringManager::getString((StringManager *)dword_99F760, v7);
  v9 = LC_API_STRLEN_0(v8);
  std::string::_M_assign(&v31, v8, &v8[v9]);
  v10 = *(_DWORD *)(TrophyData + 12);
  if ( v10 != -1 )
    goto LABEL_45;
LABEL_28:
  v11 = "";
  String = "";
LABEL_29:
  std::string::_M_assign(&v32, String, v11);
  v33 = *(_DWORD *)(TrophyData + 20);
  v34 = *(_DWORD *)(TrophyData + 24);
  v35 = *(_DWORD *)(TrophyData + 28);
  CurrentLevel = (TrophyManager *)Application::GetCurrentLevel((Application *)&Singleton<Application>::s_inst);
  if ( !CurrentLevel )
    goto LABEL_31;
  std::deque<AchievementMsg>::push_back(&dword_99FBE4, (int)&v31);
  v22[0] = dword_99FBE4;
  v22[1] = dword_99FBE8;
  v22[2] = dword_99FBEC;
  v22[3] = dword_99FBF0;
  CurrentLevel = (TrophyManager *)std::priv::_Deque_iterator_base<AchievementMsg>::_M_subtract(&dword_99FBF4, v22);
  if ( CurrentLevel != (TrophyManager *)((char *)&dword_0 + 1) )
    goto LABEL_31;
  v15 = AchievementMsg::s_StartFuncName;
  Instance = (MenuManager *)MenuManager::GetInstance((MenuManager *)((char *)&dword_0 + 1));
  CurrentLevel = (TrophyManager *)MenuManager::GetHUDRoot(Instance);
  v17 = CurrentLevel;
  if ( !CurrentLevel )
    goto LABEL_31;
  if ( !dword_9A54E4 )
    goto LABEL_59;
  v18 = (void *)dword_9A54E0;
  if ( !*(_BYTE *)(dword_9A54E0 + 4) )
  {
    if ( (*(_DWORD *)dword_9A54E0)-- == 1 )
      gameswf::free_internal(v18);
    dword_9A54E4 = 0;
    dword_9A54E0 = 0;
LABEL_59:
    DebugCachedCharacter::RefreshCache(
      (DebugCachedCharacter *)&AchievementMsg::s_NodeCachedChar,
      AchievementMsg::s_NodeName[0],
      v17,
      nullptr);
  }
  Char = (gameswf::character *)DebugCachedCharacter::GetChar((DebugCachedCharacter *)&AchievementMsg::s_NodeCachedChar);
  v23[0] = 0;
  v29 = 0;
  v30 = 0;
  v23[1] = 2;
  v24 = 0;
  v25 = 0;
  RenderFX::InvokeASCallback(v17, Char, v15, (const gameswf::as_value *)v23, 1);
  CurrentLevel = (TrophyManager *)gameswf::as_value::drop_refs((gameswf::as_value *)v23);
LABEL_31:
  TrophyManager::SaveTrophies(CurrentLevel);
  if ( (std::string *)v32._M_start_of_storage._M_data != &v32 && v32._M_start_of_storage._M_data )
  {
    if ( (unsigned int)(v32._M_buffers._M_end_of_storage - v32._M_start_of_storage._M_data) > 0x80 )
      CustomFree(v32._M_start_of_storage._M_data);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(
        v32._M_start_of_storage._M_data,
        v32._M_buffers._M_end_of_storage - v32._M_start_of_storage._M_data);
  }
  if ( (std::string *)v31._M_start_of_storage._M_data == &v31 || !v31._M_start_of_storage._M_data )
    goto LABEL_39;
  if ( (unsigned int)(v31._M_buffers._M_end_of_storage - v31._M_start_of_storage._M_data) <= 0x80 )
  {
    __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(
      v31._M_start_of_storage._M_data,
      v31._M_buffers._M_end_of_storage - v31._M_start_of_storage._M_data);
LABEL_39:
    v4 = p;
    goto LABEL_40;
  }
  CustomFree(v31._M_start_of_storage._M_data);
  v4 = p;
LABEL_40:
  if ( v4 )
  {
    v14 = (v28 - (_DWORD)v4) & 0xFFFFFFFC;
    if ( v14 > 0x80 )
      CustomFree(v4);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v4, v14);
  }
}


// ===== 3813b8 TrophyManager::UnlockTrophy(int) =====
void __fastcall TrophyManager::UnlockTrophy(TrophyManager *this, TrophyManager *a2)
{
  int v4; // r1
  char *v5; // r6
  unsigned int v6; // r3
  unsigned int v7; // r1
  char *v8; // r0
  _BYTE *v9; // r1
  char *v10; // r7
  size_t v11; // r6
  TrophyManager **v12; // r6
  _DWORD *v13; // r6
  void *v14; // r0
  size_t v15; // r1
  size_t v16; // r3
  size_t v17; // [sp+4h] [bp-8h] BYREF

  if ( (int)a2 >= 0
    && !TrophyManager::IsTrophyUnlocked(this, (int)a2)
    && !TrophyManager::IsTrophyUnlocking(this, (int)a2) )
  {
    v5 = *((char **)this + 5);
    if ( v5 == *((char **)this + 6) )
    {
      v6 = (int)&v5[-*((_DWORD *)this + 4)] >> 2;
      if ( v6 )
        v7 = 2 * v6;
      else
        v7 = 1;
      if ( v7 > 0x3FFFFFFF || v6 > v7 )
        v7 = 0x3FFFFFFF;
      v17 = v7;
      v8 = (char *)std::allocator<int>::_M_allocate((int)this + 24, v7, &v17);
      v9 = *((_BYTE **)this + 4);
      v10 = v8;
      v11 = v5 - v9;
      if ( v11 )
        v12 = (TrophyManager **)((char *)memmove(v8, v9, v11) + v11);
      else
        v12 = (TrophyManager **)v8;
      *v12 = a2;
      v13 = v12 + 1;
      v14 = *((void **)this + 4);
      v4 = *((_DWORD *)this + 6);
      if ( v14 )
      {
        v15 = (v4 - (_DWORD)v14) & 0xFFFFFFFC;
        if ( v15 > 0x80 )
          CustomFree(v14);
        else
          __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v14, v15);
      }
      v16 = v17;
      *((_DWORD *)this + 4) = v10;
      *((_DWORD *)this + 5) = v13;
      *((_DWORD *)this + 6) = &v10[4 * v16];
    }
    else
    {
      *(_DWORD *)v5 = a2;
      *((_DWORD *)this + 5) += 4;
    }
    TrophyManager::TrophyUnlockedCB(a2, v4);
  }
}


// ===== 3814c8 TrophyManager::DBG_UnlockAllTrophies(void) =====
void __fastcall TrophyManager::DBG_UnlockAllTrophies(TrophyManager *this)
{
  TrophyManager *v2; // r4

  if ( Arrays::TrophyTable::size )
  {
    v2 = nullptr;
    do
    {
      TrophyManager::UnlockTrophy(this, v2);
      v2 = (TrophyManager *)((char *)v2 + 1);
    }
    while ( Arrays::TrophyTable::size > (unsigned int)v2 );
  }
}


// ===== 38151c TrophyManager::LoadTrophies(void) =====
int __fastcall TrophyManager::LoadTrophies(int this)
{
  TrophyManager *v1; // r6
  int v2; // r5
  TrophyManager *v3; // r7
  TrophyManager *v4; // r11
  _DWORD v5[4]; // [sp+4h] [bp-18h] BYREF
  int v6; // [sp+14h] [bp-8h] BYREF

  v1 = (TrophyManager *)this;
  v2 = *(_DWORD *)(dword_99F73C + 52);
  if ( v2 )
  {
    this = (*(int (__fastcall **)(_DWORD, const char *, _DWORD))(*(_DWORD *)v2 + 148))(
             *(_DWORD *)(dword_99F73C + 52),
             "achievements.savegame",
             0);
    if ( this )
    {
      v3 = nullptr;
      v6 = this;
      memset(v5, 0, sizeof(v5));
      IStreamBase::readAs<std::bitset<128u>>(this, (int)v5);
      if ( Arrays::TrophyTable::size )
      {
        v4 = nullptr;
LABEL_5:
        if ( (v5[(unsigned int)v4 >> 5] & (1 << ((unsigned __int8)v4 & 0x1F))) != 0 )
        {
          while ( 1 )
          {
            TrophyManager::UnlockTrophy(v1, v3);
            v3 = (TrophyManager *)((char *)v3 + 1);
            v4 = v3;
            if ( Arrays::TrophyTable::size <= (unsigned int)v3 )
              break;
LABEL_7:
            if ( (unsigned int)v3 <= 0x7F )
              goto LABEL_5;
            __ZSt24__stl_throw_out_of_rangePKc_veneer("bitset");
            if ( (v5[(unsigned int)v4 >> 5] & (1 << ((unsigned __int8)v4 & 0x1F))) == 0 )
              goto LABEL_6;
          }
        }
        else
        {
LABEL_6:
          v3 = (TrophyManager *)((char *)v3 + 1);
          v4 = v3;
          if ( Arrays::TrophyTable::size > (unsigned int)v3 )
            goto LABEL_7;
        }
      }
      return (*(int (__fastcall **)(int, int *))(*(_DWORD *)v2 + 120))(v2, &v6);
    }
  }
  return this;
}


// ===== 381668 Device::IsFixedPipeline(void) =====
bool __fastcall Device::IsFixedPipeline(Device *this)
{
  return ((*(int (__fastcall **)(_DWORD))(**(_DWORD **)(dword_99F73C + 16) + 92))(*(_DWORD *)(dword_99F73C + 16)) & 7) != 0;
}


// ===== 3816a8 Device::IsProgrammablePipeline(void) =====
bool __fastcall Device::IsProgrammablePipeline(Device *this)
{
  return !SHARP_DEVICES
      && !HTC_DEVICES
      && !Is_In_Multiplayer_Mode
      && ((*(int (__fastcall **)(_DWORD))(**(_DWORD **)(dword_99F73C + 16) + 92))(*(_DWORD *)(dword_99F73C + 16)) & 0x78) != 0;
}


// ===== 38173c Device::GetModel(void) =====
int __fastcall Device::GetModel(Device *this)
{
  return -1;
}


// ===== 381744 Device::IsiOSVersionSupported(char const*) =====
int __fastcall Device::IsiOSVersionSupported(Device *this, const char *a2)
{
  return 1;
}


// ===== 38174c Device::IsHighPerformance(void) =====
// attributes: thunk
bool __fastcall Device::IsHighPerformance(Device *this)
{
  return Device::IsProgrammablePipeline(this);
}


// ===== 381750 Device::IsIphoneHighRez(void) =====
int __fastcall Device::IsIphoneHighRez(Device *this)
{
  return 1;
}


// ===== 381758 Device::GetScreenResolution(void) =====
_DWORD *__fastcall Device::GetScreenResolution(_DWORD *this)
{
  *(this + 1) = 640;
  *this = 960;
  return this;
}


// ===== 38176c Device::IsMultitaskSupported(void) =====
int __fastcall Device::IsMultitaskSupported(Device *this)
{
  return 1;
}


// ===== 381774 Device::IsGameCenterSupported(void) =====
int __fastcall Device::IsGameCenterSupported(Device *this)
{
  return 0;
}


// ===== 38177c Device::IsBluetoothSupported(void) =====
int __fastcall Device::IsBluetoothSupported(Device *this)
{
  return 1;
}


// ===== 381784 std::allocator<char *>::_M_allocate(uint,uint &) =====
void *__fastcall std::allocator<char *>::_M_allocate(int a1, unsigned int a2, size_t *a3)
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


// ===== 3817f0 std::allocator<char *>::deallocate(char **,uint) =====
void __fastcall std::allocator<char *>::deallocate(int a1, void *a2, int a3)
{
  if ( a2 )
  {
    if ( (unsigned int)(4 * a3) > 0x80 )
      CustomFree(a2);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(a2, 4 * a3);
  }
}


// ===== 38180c `global constructor keyed to'.._.._sources_Core_Device_Device.cpp =====
int `global constructor keyed to'.._.._sources_Core_Device_Device.cpp()
{
  int result; // r0

  result = `guard variable for'Singleton<Application>::s_inst;
  dword_9A2424 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9A2420 = 1056964608;
  if ( (`guard variable for'Singleton<Application>::s_inst & 1) == 0 )
  {
    `guard variable for'Singleton<Application>::s_inst = 1;
    Application::Application((Application *)&Singleton<Application>::s_inst);
    return _aeabi_atexit((int)&Singleton<Application>::s_inst, (int)Application::~Application, (int)&_dso_handle);
  }
  return result;
}


// ===== 381894 std::vector<char *,std::allocator<char *>>::_M_insert_overflow(char **,char * const&,std::__true_type const&,uint,bool) [clone] =====
void __fastcall std::vector<char *>::_M_insert_overflow(int a1, int a2, _DWORD *a3)
{
  unsigned int v5; // r3
  unsigned int v6; // r1
  char *v8; // r0
  char *v9; // r6
  size_t v10; // r5
  char *v11; // r5
  size_t v12; // r3
  size_t v13; // [sp+4h] [bp-4h] BYREF

  v5 = (*(_DWORD *)(a1 + 4) - *(_DWORD *)a1) >> 2;
  if ( v5 )
    v6 = 2 * v5;
  else
    v6 = 1;
  if ( v6 > 0x3FFFFFFF || v5 > v6 )
    v6 = 0x3FFFFFFF;
  v13 = v6;
  v8 = (char *)std::allocator<char *>::_M_allocate(a1 + 8, v6, &v13);
  v9 = v8;
  v10 = a2 - *(_DWORD *)a1;
  if ( v10 )
    v11 = (char *)memmove(v8, *(const void **)a1, v10) + v10;
  else
    v11 = v8;
  *(_DWORD *)v11 = *a3;
  std::allocator<char *>::deallocate(a1 + 8, *(void **)a1, (*(_DWORD *)(a1 + 8) - *(_DWORD *)a1) >> 2);
  v12 = v13;
  *(_DWORD *)a1 = v9;
  *(_DWORD *)(a1 + 4) = v11 + 4;
  *(_DWORD *)(a1 + 8) = &v9[4 * v12];
}


// ===== 381954 Device::GetPreferredLanguages(void) =====
Device *__fastcall Device::GetPreferredLanguages(Device *this)
{
  _DWORD *v2; // r1
  _DWORD *v3; // r2
  _DWORD *v4; // r1
  _DWORD *v5; // r2
  const char *v7; // [sp+4h] [bp-Ch] BYREF
  const char *v8; // [sp+8h] [bp-8h] BYREF
  const char *v9; // [sp+Ch] [bp-4h] BYREF

  v9 = "la-ngua-gish";
  *(_DWORD *)this = 0;
  *((_DWORD *)this + 1) = 0;
  *((_DWORD *)this + 2) = 0;
  std::vector<char *>::_M_insert_overflow((int)this, 0, &v9);
  v2 = *((_DWORD **)this + 1);
  v3 = *((_DWORD **)this + 2);
  v8 = "en-glish";
  if ( v2 == v3 )
  {
    std::vector<char *>::_M_insert_overflow((int)this, (int)v2, &v8);
    v4 = *((_DWORD **)this + 1);
  }
  else
  {
    *v2 = "en-glish";
    v4 = (_DWORD *)(*((_DWORD *)this + 1) + 4);
    *((_DWORD *)this + 1) = v4;
  }
  v5 = *((_DWORD **)this + 2);
  v7 = "un-knownish";
  if ( v4 == v5 )
  {
    std::vector<char *>::_M_insert_overflow((int)this, (int)v4, &v7);
  }
  else
  {
    *v4 = "un-knownish";
    *((_DWORD *)this + 1) += 4;
  }
  return this;
}


// ===== 381a10 TabarnakDeNodeHierarchyAvecDesEmptyNodeDuCalisse(glitch::scene::ISceneNode *) =====
glitch::IReferenceCounted *__fastcall TabarnakDeNodeHierarchyAvecDesEmptyNodeDuCalisse(glitch::scene::ISceneNode *a1)
{
  glitch::IReferenceCounted *result; // r0
  char *v3; // r4
  char *j; // r5
  char *v5; // t1
  glitch::scene::ISceneNode *v6; // r0
  int v7; // r6
  int i; // r5
  glitch::IReferenceCounted *v9; // [sp+4h] [bp-4h] BYREF

  result = (glitch::IReferenceCounted *)(*(int (__fastcall **)(glitch::scene::ISceneNode *))(*(_DWORD *)a1 + 188))(a1);
  if ( result == (glitch::IReferenceCounted *)1835360612 )
  {
    (*(void (__fastcall **)(glitch::IReferenceCounted **, glitch::scene::ISceneNode *))(*(_DWORD *)a1 + 248))(&v9, a1);
    v7 = (*(int (__fastcall **)(glitch::IReferenceCounted *))(*(_DWORD *)v9 + 16))(v9);
    result = v9;
    if ( v9 )
      result = (glitch::IReferenceCounted *)glitch::IReferenceCounted::drop(v9);
    if ( v7 > 0 )
    {
      for ( i = 0;
            i != v7;
            result = (glitch::IReferenceCounted *)(*(int (__fastcall **)(glitch::scene::ISceneNode *, int))(*(_DWORD *)a1 + 28))(
                                                    a1,
                                                    i) )
      {
        ++i;
      }
    }
  }
  v5 = *((char **)a1 + 61);
  v3 = (char *)a1 + 244;
  for ( j = v5; v3 != j; j = *(char **)j )
  {
    if ( j )
      v6 = (glitch::scene::ISceneNode *)(j - 4);
    else
      v6 = nullptr;
    result = (glitch::IReferenceCounted *)TabarnakDeNodeHierarchyAvecDesEmptyNodeDuCalisse(v6);
  }
  return result;
}


// ===== 381ad4 UnderlaySceneNode::~UnderlaySceneNode() =====
void __fastcall UnderlaySceneNode::~UnderlaySceneNode(UnderlaySceneNode *this)
{
  void *v2; // r0

  v2 = *((void **)this + 76);
  *(_DWORD *)this = off_963A0C;
  *((_DWORD *)this + 79) = off_963B10;
  if ( v2 )
    GlitchFree(v2);
  glitch::scene::ISceneNode::~ISceneNode(this);
}


// ===== 381b34 `virtual thunk to'UnderlaySceneNode::~UnderlaySceneNode() =====
void __fastcall `virtual thunk to'UnderlaySceneNode::~UnderlaySceneNode(UnderlaySceneNode *this)
{
  UnderlaySceneNode::~UnderlaySceneNode((UnderlaySceneNode *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 24)));
}


// ===== 381b44 `virtual thunk to'UnderlaySceneNode::~UnderlaySceneNode() =====
void __fastcall `virtual thunk to'UnderlaySceneNode::~UnderlaySceneNode(UnderlaySceneNode *this)
{
  UnderlaySceneNode::~UnderlaySceneNode((UnderlaySceneNode *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 381b54 UnderlaySceneNode::~UnderlaySceneNode() =====
void __fastcall UnderlaySceneNode::~UnderlaySceneNode(UnderlaySceneNode *this)
{
  UnderlaySceneNode::~UnderlaySceneNode(this);
  CustomFree(this);
}


// ===== 381b70 `virtual thunk to'UnderlaySceneNode::~UnderlaySceneNode() =====
void __fastcall `virtual thunk to'UnderlaySceneNode::~UnderlaySceneNode(UnderlaySceneNode *this)
{
  UnderlaySceneNode::~UnderlaySceneNode((UnderlaySceneNode *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 24)));
}


// ===== 381b80 `virtual thunk to'UnderlaySceneNode::~UnderlaySceneNode() =====
void __fastcall `virtual thunk to'UnderlaySceneNode::~UnderlaySceneNode(UnderlaySceneNode *this)
{
  UnderlaySceneNode::~UnderlaySceneNode((UnderlaySceneNode *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 381b90 UnderlaySceneNode::render(void *) =====
int __fastcall UnderlaySceneNode::render(UnderlaySceneNode *this, void *a2)
{
  int result; // r0
  int v4; // r3
  int v5; // r5
  int v6; // r6
  int v7; // r8
  int v8; // r7
  int v9; // r3
  unsigned int v10; // r10

  result = Application::GetCurrentLevel((Application *)&Singleton<Application>::s_inst);
  if ( result )
  {
    v4 = *(_DWORD *)(result + 296);
    if ( v4 )
    {
      v5 = *(_DWORD *)(v4 + 8);
      v6 = *(_DWORD *)(*((_DWORD *)this + 68) + 20);
      v7 = (*(int (__fastcall **)(int))(*(_DWORD *)v5 + 284))(v5);
      v8 = (*(int (__fastcall **)(int))(*(_DWORD *)v5 + 288))(v5);
      (*(void (__fastcall **)(int, int))(*(_DWORD *)v5 + 304))(v5, 1112014848);
      (*(void (__fastcall **)(int, int))(*(_DWORD *)v5 + 308))(v5, 1195593728);
      (*(void (__fastcall **)(int, _DWORD))(*(_DWORD *)v5 + 28))(v5, 0);
      (*(void (__fastcall **)(int, int, int))(*(_DWORD *)v6 + 284))(v6, 1061997773, 1065353216);
      v9 = *((_DWORD *)this + 76);
      if ( (unsigned int)(*((_DWORD *)this + 77) - v9) >> 2 )
      {
        v10 = 0;
        do
        {
          TabarnakDeNodeHierarchyAvecDesEmptyNodeDuCalisse(*(glitch::scene::ISceneNode **)(v9 + 4 * v10));
          v9 = *((_DWORD *)this + 76);
          ++v10;
        }
        while ( v10 < (*((_DWORD *)this + 77) - v9) >> 2 );
      }
      (*(void (__fastcall **)(int, int))(*(_DWORD *)v5 + 304))(v5, v7);
      (*(void (__fastcall **)(int, int))(*(_DWORD *)v5 + 308))(v5, v8);
      (*(void (__fastcall **)(int, _DWORD))(*(_DWORD *)v5 + 28))(v5, 0);
      return (*(int (__fastcall **)(int, _DWORD, int))(*(_DWORD *)v6 + 284))(v6, 0, 1061997773);
    }
  }
  return result;
}


// ===== 381cf0 UnderlaySceneNode::onRegisterSceneNode(void) =====
int __fastcall UnderlaySceneNode::onRegisterSceneNode(UnderlaySceneNode *this)
{
  int v3; // r11
  int v4; // r9
  int v5; // r0
  void (__fastcall *v6)(int, UnderlaySceneNode *, glitch::video::CMaterial **, _DWORD, int, _DWORD, int); // r12
  glitch::video::CMaterial *v7; // [sp+10h] [bp-44h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v8; // [sp+1Ch] [bp-38h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v9; // [sp+34h] [bp-20h] BYREF

  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string((std::string *)&v9, "IsUsingToggleDisplayMode");
  if ( DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, (const std::string *)&v9) )
  {
    std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v9);
    return 0;
  }
  else
  {
    DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
    std::string::string((std::string *)&v8, "IsUsingCharacterShowRoom");
    if ( DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, (const std::string *)&v8) )
    {
      std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v8);
      std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v9);
      return 0;
    }
    else
    {
      v3 = *((_DWORD *)this + 76);
      v4 = *((_DWORD *)this + 77);
      std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v8);
      std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v9);
      if ( v3 == v4 )
      {
        return 0;
      }
      else
      {
        v5 = *((_DWORD *)this + 68);
        v6 = *(void (__fastcall **)(int, UnderlaySceneNode *, glitch::video::CMaterial **, _DWORD, int, _DWORD, int))(*(_DWORD *)v5 + 36);
        v7 = nullptr;
        v6(v5, this, &v7, 0, 4, 0, 0x7FFFFFFF);
        boost::intrusive_ptr<glitch::video::CMaterial>::~intrusive_ptr(&v7);
        return 1;
      }
    }
  }
}


// ===== 381e48 UnderlaySceneNode::getBoundingBox(void) =====
int __fastcall UnderlaySceneNode::getBoundingBox(UnderlaySceneNode *this)
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
      "!\"not supported\"",
      "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\UnderlaySceneNode.cpp",
      39);
  }
  return 0;
}


// ===== 381ed4 `global constructor keyed to'.._.._sources_Game_UnderlaySceneNode.cpp =====
int `global constructor keyed to'.._.._sources_Game_UnderlaySceneNode.cpp()
{
  int result; // r0

  result = `guard variable for'Singleton<PlayerStatManager>::s_inst;
  dword_9A2430 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9A242C = 1056964608;
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


// ===== 381fb0 ZoomHandler::setCamera(CameraLevel *) =====
float __fastcall ZoomHandler::setCamera(ZoomHandler *this, CameraLevel *a2)
{
  int v3; // r3
  int v4; // r0
  float result; // r0

  *((_DWORD *)this + 8) = a2;
  *((_BYTE *)this + 36) = 0;
  *((_BYTE *)this + 52) = 0;
  v3 = *(_DWORD *)(*(_DWORD *)(*(_DWORD *)(*(_DWORD *)(dword_99F73C + 28) + 20) + 204) - 4);
  v4 = *(_DWORD *)(v3 + 16);
  if ( v4 < *(_DWORD *)(v3 + 12) )
    v4 = *(_DWORD *)(v3 + 12);
  result = 1.0 / (float)v4;
  *((float *)this + 10) = result;
  return result;
}


// ===== 38201c ZoomHandler::ResetZoom(void) =====
int __fastcall ZoomHandler::ResetZoom(int this)
{
  *(_DWORD *)(*(_DWORD *)(this + 32) + 140) = 1065353216;
  *(_DWORD *)(*(_DWORD *)(this + 32) + 136) = 0;
  return this;
}


// ===== 382038 `non-virtual thunk to'ZoomHandler::onEvent(glitch::SEvent const&) =====
int __fastcall `non-virtual thunk to'ZoomHandler::onEvent(int a1)
{
  return ZoomHandler::onEvent(a1 - 4);
}


// ===== 382040 ZoomHandler::onEvent(glitch::SEvent const&) =====
int __fastcall ZoomHandler::onEvent(int a1, int a2)
{
  int v2; // r6
  int v6; // r3
  char v7; // r3
  int v8; // r2
  int v9; // r3
  MenuCharMenu_Map *Instance; // r0
  float v11; // r8
  float v12; // r5
  float v13; // r0
  MenuCharMenu_Map *v14; // r0

  v2 = *(_DWORD *)(a1 + 32);
  if ( !v2 || *(_DWORD *)a2 != 1 )
    return 0;
  v6 = *(_DWORD *)(a2 + 20);
  if ( v6 == 7 )
  {
    *(float *)(v2 + 136) = (float)((float)(*(float *)(a1 + 40) * 5.0) * *(float *)(a2 + 16)) + *(float *)(v2 + 136);
    return 1;
  }
  else
  {
    if ( !*(_BYTE *)(a1 + 36) )
      return 0;
    if ( !v6 )
    {
      if ( *(_BYTE *)(v2 + 133) )
      {
        Instance = (MenuCharMenu_Map *)MenuCharMenu_Map::GetInstance((MenuCharMenu_Map *)a1);
        if ( *((_BYTE *)Instance + 484)
          || (v14 = (MenuCharMenu_Map *)MenuCharMenu_Map::GetInstance(Instance),
              !MenuCharMenu_Map::IsPointInsideRenderZone(v14, *(_DWORD *)(a2 + 8), *(_DWORD *)(a2 + 12))) )
        {
          v7 = 0;
          v2 = *(_DWORD *)(a1 + 32);
          goto LABEL_9;
        }
        v2 = *(_DWORD *)(a1 + 32);
      }
      v7 = 1;
LABEL_9:
      *(_BYTE *)(a1 + 52) = v7;
      *(_DWORD *)(a1 + 44) = *(_DWORD *)(a2 + 8);
      *(_DWORD *)(a1 + 48) = *(_DWORD *)(a2 + 12);
      v8 = *(_DWORD *)(v2 + 156);
      v9 = *(_DWORD *)(v2 + 160);
      *(_DWORD *)(a1 + 56) = *(_DWORD *)(v2 + 152);
      *(_DWORD *)(a1 + 60) = v8;
      *(_DWORD *)(a1 + 64) = v9;
      return 1;
    }
    if ( v6 != 6 )
    {
      if ( v6 == 3 )
      {
        *(_BYTE *)(a1 + 52) = 0;
        return 1;
      }
      return 0;
    }
    if ( !*(_BYTE *)(a1 + 52) )
      return 0;
    v11 = (float)*(int *)(a1 + 44);
    v12 = (float)((float)((float)*(int *)(a2 + 12) - (float)*(int *)(a1 + 48)) * 50.0) + *(float *)(a1 + 60);
    v13 = *(float *)(a1 + 64) + 0.0;
    *(float *)(v2 + 152) = (float)(COERCE_FLOAT(COERCE_INT((float)*(int *)(a2 + 8) - v11) + 0x80000000) * 50.0)
                         + *(float *)(a1 + 56);
    *(float *)(v2 + 160) = v13;
    *(float *)(v2 + 156) = v12;
    return 1;
  }
}


// ===== 382204 ZoomHandler::ZoomHandler(void) =====
void __fastcall ZoomHandler::ZoomHandler(ZoomHandler *this)
{
  int v2; // r3
  int v3; // r0
  int v4; // r3

  *((_DWORD *)this + 1) = off_963CC8;
  *((_DWORD *)this + 3) = 0;
  *(_DWORD *)this = off_963CB0;
  *((_BYTE *)this + 8) = 0;
  *((_DWORD *)this + 5) = (char *)this + 8;
  *((_BYTE *)this + 36) = 0;
  *((_DWORD *)this + 6) = 0;
  *((_DWORD *)this + 8) = 0;
  *((_BYTE *)this + 52) = 0;
  *((_DWORD *)this + 4) = (char *)this + 8;
  *((_DWORD *)this + 16) = 0;
  *((_DWORD *)this + 14) = 0;
  *((_DWORD *)this + 15) = 0;
  v2 = *(_DWORD *)(*(_DWORD *)(*(_DWORD *)(*(_DWORD *)(dword_99F73C + 28) + 20) + 204) - 4);
  v3 = *(_DWORD *)(v2 + 12);
  v4 = *(_DWORD *)(v2 + 16);
  if ( v4 >= v3 )
    v3 = v4;
  *((float *)this + 10) = 1.0 / (float)v3;
  EventManager::Attach((EventManager *)dword_99F740, 4, this, 0);
  EventManager::Attach((EventManager *)dword_99F740, 5, this, 0);
}


// ===== 3822e4 ZoomHandler::ZoomHandler(void) =====
void __fastcall ZoomHandler::ZoomHandler(ZoomHandler *this)
{
  int v2; // r3
  int v3; // r0
  int v4; // r3

  *((_DWORD *)this + 1) = off_963CC8;
  *((_DWORD *)this + 3) = 0;
  *(_DWORD *)this = off_963CB0;
  *((_BYTE *)this + 8) = 0;
  *((_DWORD *)this + 5) = (char *)this + 8;
  *((_BYTE *)this + 36) = 0;
  *((_DWORD *)this + 6) = 0;
  *((_DWORD *)this + 8) = 0;
  *((_BYTE *)this + 52) = 0;
  *((_DWORD *)this + 4) = (char *)this + 8;
  *((_DWORD *)this + 16) = 0;
  *((_DWORD *)this + 14) = 0;
  *((_DWORD *)this + 15) = 0;
  v2 = *(_DWORD *)(*(_DWORD *)(*(_DWORD *)(*(_DWORD *)(dword_99F73C + 28) + 20) + 204) - 4);
  v3 = *(_DWORD *)(v2 + 12);
  v4 = *(_DWORD *)(v2 + 16);
  if ( v4 >= v3 )
    v3 = v4;
  *((float *)this + 10) = 1.0 / (float)v3;
  EventManager::Attach((EventManager *)dword_99F740, 4, this, 0);
  EventManager::Attach((EventManager *)dword_99F740, 5, this, 0);
}


// ===== 3823c4 `global constructor keyed to'.._.._sources_Game_ZoomHandler.cpp =====
int `global constructor keyed to'.._.._sources_Game_ZoomHandler.cpp()
{
  int result; // r0

  result = `guard variable for'Singleton<PlayerStatManager>::s_inst;
  dword_9A243C = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9A2438 = 1056964608;
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


// ===== 3824a0 std::priv::_Rb_tree<long,std::less<long>,std::pair<long const,TouchData>,std::priv::_Select1st<std::pair<long const,TouchData>>,std::priv::_MapTraitsT<std::pair<long const,TouchData>>,std::allocator<std::pair<long const,TouchData>>>::erase(std::priv::_Rb_tree_iterator<std::pair<long const,TouchData>,std::priv::_MapTraitsT<std::pair<long const,TouchData>>>) =====
void __fastcall std::priv::_Rb_tree<long,std::less<long>,std::pair<long const,TouchData>,std::priv::_Select1st<std::pair<long const,TouchData>>,std::priv::_MapTraitsT<std::pair<long const,TouchData>>,std::allocator<std::pair<long const,TouchData>>>::erase(
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


// ===== 3824dc std::allocator<std::priv::_Rb_tree_node<std::pair<long const,TouchData>>>::allocate(uint,void const*) [clone] =====
void *std::allocator<std::priv::_Rb_tree_node<std::pair<long const,TouchData>>>::allocate()
{
  size_t v1; // [sp+4h] [bp-8h] BYREF

  v1 = 28;
  return __ZNSt12__node_alloc11_M_allocateERj_veneer(&v1);
}


// ===== 3824fc std::priv::_Rb_tree<long,std::less<long>,std::pair<long const,TouchData>,std::priv::_Select1st<std::pair<long const,TouchData>>,std::priv::_MapTraitsT<std::pair<long const,TouchData>>,std::allocator<std::pair<long const,TouchData>>>::_M_insert(std::priv::_Rb_tree_node_base *,std::pair<long const,TouchData> const&,std::priv::_Rb_tree_node_base *,std::priv::_Rb_tree_node_base *) =====
_DWORD *__fastcall std::priv::_Rb_tree<long,std::less<long>,std::pair<long const,TouchData>,std::priv::_Select1st<std::pair<long const,TouchData>>,std::priv::_MapTraitsT<std::pair<long const,TouchData>>,std::allocator<std::pair<long const,TouchData>>>::_M_insert(
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
    v11 = std::allocator<std::priv::_Rb_tree_node<std::pair<long const,TouchData>>>::allocate();
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
    v10 = std::allocator<std::priv::_Rb_tree_node<std::pair<long const,TouchData>>>::allocate();
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
    v14 = std::allocator<std::priv::_Rb_tree_node<std::pair<long const,TouchData>>>::allocate();
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


// ===== 382638 std::priv::_Rb_tree<long,std::less<long>,std::pair<long const,TouchData>,std::priv::_Select1st<std::pair<long const,TouchData>>,std::priv::_MapTraitsT<std::pair<long const,TouchData>>,std::allocator<std::pair<long const,TouchData>>>::insert_unique(std::pair<long const,TouchData> const&) =====
int __fastcall std::priv::_Rb_tree<long,std::less<long>,std::pair<long const,TouchData>,std::priv::_Select1st<std::pair<long const,TouchData>>,std::priv::_MapTraitsT<std::pair<long const,TouchData>>,std::allocator<std::pair<long const,TouchData>>>::insert_unique(
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
    std::priv::_Rb_tree<long,std::less<long>,std::pair<long const,TouchData>,std::priv::_Select1st<std::pair<long const,TouchData>>,std::priv::_MapTraitsT<std::pair<long const,TouchData>>,std::allocator<std::pair<long const,TouchData>>>::_M_insert(
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
      std::priv::_Rb_tree<long,std::less<long>,std::pair<long const,TouchData>,std::priv::_Select1st<std::pair<long const,TouchData>>,std::priv::_MapTraitsT<std::pair<long const,TouchData>>,std::allocator<std::pair<long const,TouchData>>>::_M_insert(
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


// ===== 3827c0 std::priv::_Rb_tree<long,std::less<long>,std::pair<long const,TouchData>,std::priv::_Select1st<std::pair<long const,TouchData>>,std::priv::_MapTraitsT<std::pair<long const,TouchData>>,std::allocator<std::pair<long const,TouchData>>>::insert_unique(std::priv::_Rb_tree_iterator<std::pair<long const,TouchData>,std::priv::_MapTraitsT<std::pair<long const,TouchData>>>,std::pair<long const,TouchData> const&) =====
_DWORD *__fastcall std::priv::_Rb_tree<long,std::less<long>,std::pair<long const,TouchData>,std::priv::_Select1st<std::pair<long const,TouchData>>,std::priv::_MapTraitsT<std::pair<long const,TouchData>>,std::allocator<std::pair<long const,TouchData>>>::insert_unique(
        _DWORD *a1,
        _DWORD *a2,
        _DWORD *a3,
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
  int v16; // r2
  int v17; // r3
  int v18; // r3
  int v19; // [sp+8h] [bp-24h] BYREF
  int v20; // [sp+10h] [bp-1Ch] BYREF
  int v21; // [sp+18h] [bp-14h] BYREF
  _DWORD v22[3]; // [sp+20h] [bp-Ch] BYREF

  v4 = (_DWORD *)*a3;
  if ( *a3 == a2[2] )
  {
    if ( !a2[4] )
    {
      std::priv::_Rb_tree<long,std::less<long>,std::pair<long const,TouchData>,std::priv::_Select1st<std::pair<long const,TouchData>>,std::priv::_MapTraitsT<std::pair<long const,TouchData>>,std::allocator<std::pair<long const,TouchData>>>::insert_unique(
        v22,
        a2,
        a4);
      *a1 = v22[0];
      return a1;
    }
    v13 = *a4;
    v14 = v4[4];
    if ( *a4 < v14 )
    {
      std::priv::_Rb_tree<long,std::less<long>,std::pair<long const,TouchData>,std::priv::_Select1st<std::pair<long const,TouchData>>,std::priv::_MapTraitsT<std::pair<long const,TouchData>>,std::allocator<std::pair<long const,TouchData>>>::_M_insert(
        a1,
        a2,
        v4,
        a4,
        v4,
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
        std::priv::_Rb_tree<long,std::less<long>,std::pair<long const,TouchData>,std::priv::_Select1st<std::pair<long const,TouchData>>,std::priv::_MapTraitsT<std::pair<long const,TouchData>>,std::allocator<std::pair<long const,TouchData>>>::insert_unique(
          &v21,
          a2,
          a4);
        *a1 = v21;
        return a1;
      }
      if ( !v15 )
      {
LABEL_63:
        std::priv::_Rb_tree<long,std::less<long>,std::pair<long const,TouchData>,std::priv::_Select1st<std::pair<long const,TouchData>>,std::priv::_MapTraitsT<std::pair<long const,TouchData>>,std::allocator<std::pair<long const,TouchData>>>::_M_insert(
          a1,
          a2,
          v4,
          a4,
          0,
          v4);
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
            std::priv::_Rb_tree<long,std::less<long>,std::pair<long const,TouchData>,std::priv::_Select1st<std::pair<long const,TouchData>>,std::priv::_MapTraitsT<std::pair<long const,TouchData>>,std::allocator<std::pair<long const,TouchData>>>::_M_insert(
              a1,
              a2,
              v4,
              a4,
              v4,
              0);
          else
            std::priv::_Rb_tree<long,std::less<long>,std::pair<long const,TouchData>,std::priv::_Select1st<std::pair<long const,TouchData>>,std::priv::_MapTraitsT<std::pair<long const,TouchData>>,std::allocator<std::pair<long const,TouchData>>>::_M_insert(
              a1,
              a2,
              v7,
              a4,
              0,
              v7);
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
              std::priv::_Rb_tree<long,std::less<long>,std::pair<long const,TouchData>,std::priv::_Select1st<std::pair<long const,TouchData>>,std::priv::_MapTraitsT<std::pair<long const,TouchData>>,std::allocator<std::pair<long const,TouchData>>>::_M_insert(
                a1,
                a2,
                v4,
                a4,
                0,
                v4);
              return a1;
            }
LABEL_42:
            std::priv::_Rb_tree<long,std::less<long>,std::pair<long const,TouchData>,std::priv::_Select1st<std::pair<long const,TouchData>>,std::priv::_MapTraitsT<std::pair<long const,TouchData>>,std::allocator<std::pair<long const,TouchData>>>::_M_insert(
              a1,
              a2,
              i,
              a4,
              i,
              0);
            return a1;
          }
LABEL_31:
          std::priv::_Rb_tree<long,std::less<long>,std::pair<long const,TouchData>,std::priv::_Select1st<std::pair<long const,TouchData>>,std::priv::_MapTraitsT<std::pair<long const,TouchData>>,std::allocator<std::pair<long const,TouchData>>>::insert_unique(
            &v19,
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
  v16 = v4[3];
  if ( *(_DWORD *)(v16 + 16) >= *a4 )
  {
    std::priv::_Rb_tree<long,std::less<long>,std::pair<long const,TouchData>,std::priv::_Select1st<std::pair<long const,TouchData>>,std::priv::_MapTraitsT<std::pair<long const,TouchData>>,std::allocator<std::pair<long const,TouchData>>>::insert_unique(
      &v20,
      a2,
      a4);
    *a1 = v20;
  }
  else
  {
    std::priv::_Rb_tree<long,std::less<long>,std::pair<long const,TouchData>,std::priv::_Select1st<std::pair<long const,TouchData>>,std::priv::_MapTraitsT<std::pair<long const,TouchData>>,std::allocator<std::pair<long const,TouchData>>>::_M_insert(
      a1,
      a2,
      v16,
      a4,
      0,
      v4);
  }
  return a1;
}


// ===== 382b34 std::map<long,TouchData,std::less<long>,std::allocator<std::pair<long const,TouchData>>>::operator[]<long>(long const&) =====
_DWORD *__fastcall std::map<long,TouchData>::operator[]<long>(_DWORD *a1, int *a2)
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
    std::priv::_Rb_tree<long,std::less<long>,std::pair<long const,TouchData>,std::priv::_Select1st<std::pair<long const,TouchData>>,std::priv::_MapTraitsT<std::pair<long const,TouchData>>,std::allocator<std::pair<long const,TouchData>>>::insert_unique(
      &v16,
      a1,
      &v15,
      &v10);
    v8 = v16;
  }
  return v8 + 5;
}


// ===== 382bdc ZoomHandler::onEvent(IEvent const*,EventManager const*) =====
bool __fastcall ZoomHandler::onEvent(ZoomHandler *this, const IEvent *a2, const EventManager *a3)
{
  int v3; // r3
  int v6; // r5
  char *v8; // r3
  char *v9; // r0
  int v10; // r12
  char *v11; // r1
  int v12; // r2
  bool v13; // cc
  char *v14; // r2
  _DWORD *v15; // r7
  int v16; // r6
  float v17; // r11
  float v18; // r3
  int v19; // r0
  int v20; // r1
  float v21; // r0
  float v22; // r10
  float v23; // r9
  double v24; // r0
  int v25; // r6
  MenuCharMenu_Map *Instance; // r0
  MenuCharMenu_Map *v27; // r0
  _DWORD *v28; // r6
  int v29; // r5
  float v30; // r0
  int v31; // r2
  float v32; // [sp+4h] [bp-18h]
  float v33; // [sp+8h] [bp-14h]
  float v34; // [sp+Ch] [bp-10h]
  char *v35; // [sp+14h] [bp-8h] BYREF

  v3 = *((_DWORD *)this + 8);
  if ( !v3 || !*(_BYTE *)(v3 + 133) )
    return 0;
  if ( (*(int (__fastcall **)(const IEvent *))(*(_DWORD *)a2 + 8))(a2) == 4 )
  {
    if ( *((_BYTE *)a2 + 16) )
    {
      if ( !*(_BYTE *)(*((_DWORD *)this + 8) + 133)
        || (Instance = (MenuCharMenu_Map *)MenuCharMenu_Map::GetInstance((MenuCharMenu_Map *)byte_4),
            !*((_BYTE *)Instance + 484))
        && (v27 = (MenuCharMenu_Map *)MenuCharMenu_Map::GetInstance(Instance),
            MenuCharMenu_Map::IsPointInsideRenderZone(v27, *((__int16 *)a2 + 4), *((__int16 *)a2 + 5))) )
      {
        *(_WORD *)std::map<long,TouchData>::operator[]<long>((_DWORD *)this + 2, (int *)a2 + 3) = *((_WORD *)a2 + 4);
        *((_WORD *)std::map<long,TouchData>::operator[]<long>((_DWORD *)this + 2, (int *)a2 + 3) + 1) = *((_WORD *)a2 + 5);
        *((_WORD *)std::map<long,TouchData>::operator[]<long>((_DWORD *)this + 2, (int *)a2 + 3) + 2) = *((_WORD *)a2 + 4);
        *((_WORD *)std::map<long,TouchData>::operator[]<long>((_DWORD *)this + 2, (int *)a2 + 3) + 3) = *((_WORD *)a2 + 5);
      }
    }
    else
    {
      v8 = *((char **)this + 3);
      if ( v8 )
      {
        v9 = (char *)this + 8;
        v10 = *((_DWORD *)a2 + 3);
        v11 = (char *)this + 8;
        while ( 1 )
        {
          v12 = *((_DWORD *)v8 + 4);
          v13 = v12 < v10;
          if ( v12 >= v10 )
            v14 = *((char **)v8 + 2);
          else
            v14 = *((char **)v8 + 3);
          if ( v13 )
            v8 = v11;
          v11 = v8;
          if ( !v14 )
            break;
          v8 = v14;
        }
        if ( v9 != v8 && *((_DWORD *)v8 + 4) <= v10 )
        {
          v35 = v8;
          std::priv::_Rb_tree<long,std::less<long>,std::pair<long const,TouchData>,std::priv::_Select1st<std::pair<long const,TouchData>>,std::priv::_MapTraitsT<std::pair<long const,TouchData>>,std::allocator<std::pair<long const,TouchData>>>::erase(
            (int)v9,
            (unsigned __int8 **)&v35);
        }
      }
    }
    return *((_DWORD *)this + 6) > 1u;
  }
  else
  {
    if ( (*(int (__fastcall **)(const IEvent *))(*(_DWORD *)a2 + 8))(a2) != 5 )
      return 0;
    v15 = (_DWORD *)((char *)this + 8);
    if ( !*(_WORD *)std::map<long,TouchData>::operator[]<long>((_DWORD *)this + 2, (int *)a2 + 3)
      && !*((_WORD *)std::map<long,TouchData>::operator[]<long>((_DWORD *)this + 2, (int *)a2 + 3) + 1) )
    {
      *(_WORD *)std::map<long,TouchData>::operator[]<long>((_DWORD *)this + 2, (int *)a2 + 3) = *((_WORD *)a2 + 4);
      *((_WORD *)std::map<long,TouchData>::operator[]<long>((_DWORD *)this + 2, (int *)a2 + 3) + 1) = *((_WORD *)a2 + 5);
    }
    *((_WORD *)std::map<long,TouchData>::operator[]<long>((_DWORD *)this + 2, (int *)a2 + 3) + 2) = *((_WORD *)a2 + 4);
    *((_WORD *)std::map<long,TouchData>::operator[]<long>((_DWORD *)this + 2, (int *)a2 + 3) + 3) = *((_WORD *)a2 + 5);
    if ( *((_DWORD *)this + 6) <= 1u )
    {
      if ( *(_BYTE *)(*((_DWORD *)this + 8) + 133) )
      {
        v28 = std::map<long,TouchData>::operator[]<long>((_DWORD *)this + 2, (int *)a2 + 3);
        v29 = *((_DWORD *)this + 8);
        v30 = *(float *)(v29 + 152) - (float)((float)((float)*((__int16 *)a2 + 4) - (float)*(__int16 *)v28) * 50.0);
        *(float *)(v29 + 156) = *(float *)(v29 + 156)
                              - (float)(COERCE_FLOAT(
                                          COERCE_INT((float)*((__int16 *)a2 + 5) - (float)*((__int16 *)v28 + 1))
                                        + 0x80000000)
                                      * 50.0);
        *(float *)(v29 + 152) = v30;
        v6 = 0;
      }
      else
      {
        v6 = *(unsigned __int8 *)(*((_DWORD *)this + 8) + 133);
      }
    }
    else
    {
      v16 = *((_DWORD *)this + 4);
      v34 = (float)*(__int16 *)(v16 + 20);
      v17 = (float)*(__int16 *)(v16 + 22);
      v33 = (float)*(__int16 *)(v16 + 24);
      v18 = (float)*(__int16 *)(v16 + 26);
      v19 = *(_DWORD *)(v16 + 12);
      v20 = v19;
      if ( v19 )
      {
        while ( *(_DWORD *)(v20 + 8) )
          v20 = *(_DWORD *)(v20 + 8);
        v16 = v20;
      }
      else
      {
        v31 = *(_DWORD *)(v16 + 4);
        if ( *(_DWORD *)(v31 + 12) == v16 )
        {
          while ( v31 == *(_DWORD *)(*(_DWORD *)(v31 + 4) + 12) )
            v31 = *(_DWORD *)(v31 + 4);
          v16 = v31;
          v19 = *(_DWORD *)(v31 + 12);
          v31 = *(_DWORD *)(v31 + 4);
        }
        if ( v31 != v19 )
          v16 = v31;
      }
      v32 = v18;
      v21 = sqrt((float)((float)((float)(v34 - (float)*(__int16 *)(v16 + 20))
                               * (float)(v34 - (float)*(__int16 *)(v16 + 20)))
                       + (float)((float)(v17 - (float)*(__int16 *)(v16 + 22))
                               * (float)(v17 - (float)*(__int16 *)(v16 + 22)))));
      v22 = v21;
      v23 = v33 - (float)*(__int16 *)(v16 + 24);
      v24 = sqrt((float)((float)(v23 * v23)
                       + (float)((float)(v32 - (float)*(__int16 *)(v16 + 26))
                               * (float)(v32 - (float)*(__int16 *)(v16 + 26)))));
      v25 = *((_DWORD *)this + 8);
      *(float *)&v24 = v24;
      *(float *)&v24 = (float)(*(float *)&v24 - v22) * *((float *)this + 10);
      v6 = 1;
      *(float *)(v25 + 136) = *(float *)&v24 + *(float *)(v25 + 136);
    }
    *(_WORD *)std::map<long,TouchData>::operator[]<long>(v15, (int *)a2 + 3) = *((_WORD *)a2 + 4);
    *((_WORD *)std::map<long,TouchData>::operator[]<long>(v15, (int *)a2 + 3) + 1) = *((_WORD *)a2 + 5);
  }
  return v6;
}


// ===== 383084 std::priv::_Rb_tree<long,std::less<long>,std::pair<long const,TouchData>,std::priv::_Select1st<std::pair<long const,TouchData>>,std::priv::_MapTraitsT<std::pair<long const,TouchData>>,std::allocator<std::pair<long const,TouchData>>>::_M_erase(std::priv::_Rb_tree_node_base *) =====
void __fastcall std::priv::_Rb_tree<long,std::less<long>,std::pair<long const,TouchData>,std::priv::_Select1st<std::pair<long const,TouchData>>,std::priv::_MapTraitsT<std::pair<long const,TouchData>>,std::allocator<std::pair<long const,TouchData>>>::_M_erase(
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
      std::priv::_Rb_tree<long,std::less<long>,std::pair<long const,TouchData>,std::priv::_Select1st<std::pair<long const,TouchData>>,std::priv::_MapTraitsT<std::pair<long const,TouchData>>,std::allocator<std::pair<long const,TouchData>>>::_M_erase(
        a1,
        v2[3]);
      v4 = (_DWORD *)v2[2];
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v2, 0x1Cu);
      v2 = v4;
    }
    while ( v4 );
  }
}


// ===== 3830bc ZoomHandler::ResetFingerMap(void) =====
void __fastcall ZoomHandler::ResetFingerMap(ZoomHandler *this)
{
  char *v2; // r5

  if ( *((_DWORD *)this + 6) )
  {
    v2 = (char *)this + 8;
    std::priv::_Rb_tree<long,std::less<long>,std::pair<long const,TouchData>,std::priv::_Select1st<std::pair<long const,TouchData>>,std::priv::_MapTraitsT<std::pair<long const,TouchData>>,std::allocator<std::pair<long const,TouchData>>>::_M_erase(
      (int)this + 8,
      *((_DWORD **)this + 3));
    *((_DWORD *)this + 6) = 0;
    *((_DWORD *)this + 5) = v2;
    *((_DWORD *)this + 4) = v2;
    *((_DWORD *)this + 3) = 0;
  }
}


// ===== 3830f8 `non-virtual thunk to'ZoomHandler::~ZoomHandler() =====
void __fastcall `non-virtual thunk to'ZoomHandler::~ZoomHandler(ZoomHandler *this)
{
  ZoomHandler::~ZoomHandler((ZoomHandler *)((char *)this - 4));
}


// ===== 383100 ZoomHandler::~ZoomHandler() =====
void __fastcall ZoomHandler::~ZoomHandler(ZoomHandler *this)
{
  *(_DWORD *)this = off_963CB0;
  *((_DWORD *)this + 1) = off_963CC8;
  EventManager::Detach((EventManager *)dword_99F740, 4, this);
  EventManager::Detach((EventManager *)dword_99F740, 5, this);
  if ( *((_DWORD *)this + 6) )
  {
    std::priv::_Rb_tree<long,std::less<long>,std::pair<long const,TouchData>,std::priv::_Select1st<std::pair<long const,TouchData>>,std::priv::_MapTraitsT<std::pair<long const,TouchData>>,std::allocator<std::pair<long const,TouchData>>>::_M_erase(
      (int)this + 8,
      *((_DWORD **)this + 3));
    *((_DWORD *)this + 5) = (char *)this + 8;
    *((_DWORD *)this + 6) = 0;
    *((_DWORD *)this + 4) = (char *)this + 8;
    *((_DWORD *)this + 3) = 0;
  }
}


// ===== 383194 `non-virtual thunk to'ZoomHandler::~ZoomHandler() =====
void __fastcall `non-virtual thunk to'ZoomHandler::~ZoomHandler(ZoomHandler *this)
{
  ZoomHandler::~ZoomHandler((ZoomHandler *)((char *)this - 4));
}


// ===== 38319c ZoomHandler::~ZoomHandler() =====
void __fastcall ZoomHandler::~ZoomHandler(ZoomHandler *this)
{
  ZoomHandler::~ZoomHandler(this);
  CustomFree(this);
}


// ===== 3831b8 ZoomHandler::~ZoomHandler() =====
void __fastcall ZoomHandler::~ZoomHandler(ZoomHandler *this)
{
  *(_DWORD *)this = off_963CB0;
  *((_DWORD *)this + 1) = off_963CC8;
  EventManager::Detach((EventManager *)dword_99F740, 4, this);
  EventManager::Detach((EventManager *)dword_99F740, 5, this);
  if ( *((_DWORD *)this + 6) )
  {
    std::priv::_Rb_tree<long,std::less<long>,std::pair<long const,TouchData>,std::priv::_Select1st<std::pair<long const,TouchData>>,std::priv::_MapTraitsT<std::pair<long const,TouchData>>,std::allocator<std::pair<long const,TouchData>>>::_M_erase(
      (int)this + 8,
      *((_DWORD **)this + 3));
    *((_DWORD *)this + 5) = (char *)this + 8;
    *((_DWORD *)this + 6) = 0;
    *((_DWORD *)this + 4) = (char *)this + 8;
    *((_DWORD *)this + 3) = 0;
  }
}


// ===== 38324c StateBase::~StateBase() =====
void __fastcall StateBase::~StateBase(StateBase *this)
{
  ;
}


// ===== 383250 StateBase::Ctor(StateMachine const*) =====
void __fastcall StateBase::Ctor(StateBase *this, const StateMachine *a2)
{
  ;
}


// ===== 383254 StateBase::Dtor(StateMachine const*) =====
void __fastcall StateBase::Dtor(StateBase *this, const StateMachine *a2)
{
  ;
}


// ===== 383258 StateBase::Pause(StateMachine const*) =====
void __fastcall StateBase::Pause(StateBase *this, const StateMachine *a2)
{
  ;
}


// ===== 38325c StateBase::Resume(StateMachine const*) =====
void __fastcall StateBase::Resume(StateBase *this, const StateMachine *a2)
{
  ;
}


// ===== 383260 StateBase::Update(StateMachine *,double) =====
void __fastcall StateBase::Update(StateBase *this, double a2)
{
  ;
}


// ===== 383264 StateBase::Draw(StateMachine const*) =====
void __fastcall StateBase::Draw(StateBase *this, const StateMachine *a2)
{
  ;
}


// ===== 383268 StateBase::Draw2D(StateMachine const*) =====
void __fastcall StateBase::Draw2D(StateBase *this, const StateMachine *a2)
{
  ;
}


// ===== 38326c StateBase::Sleep(StateMachine const*) =====
void __fastcall StateBase::Sleep(StateBase *this, const StateMachine *a2)
{
  ;
}


// ===== 383270 StateBase::WakeUp(StateMachine const*) =====
void __fastcall StateBase::WakeUp(StateBase *this, const StateMachine *a2)
{
  ;
}


// ===== 383274 GSConsole::GSConsole(void) =====
void __fastcall GSConsole::GSConsole(GSConsole *this)
{
  *(_DWORD *)this = off_963D18;
}


// ===== 383298 GSConsole::GSConsole(void) =====
void __fastcall GSConsole::GSConsole(GSConsole *this)
{
  *(_DWORD *)this = off_963D18;
}


// ===== 3832bc GSConsole::~GSConsole() =====
void __fastcall GSConsole::~GSConsole(GSConsole *this)
{
  ;
}


// ===== 3832c0 GSConsole::~GSConsole() =====
void __fastcall GSConsole::~GSConsole(GSConsole *this)
{
  ;
}


// ===== 3832c4 GSConsole::Draw2D(StateMachine const*) =====
int __fastcall GSConsole::Draw2D(GSConsole *this, const StateMachine *a2)
{
  return (*(int (__fastcall **)(_DWORD, const StateMachine *))(**(_DWORD **)(dword_99F73C + 24) + 12))(
           *(_DWORD *)(dword_99F73C + 24),
           a2);
}


// ===== 3832fc GSConsole::Draw(StateMachine const*) =====
int __fastcall GSConsole::Draw(GSConsole *this, const StateMachine *a2, int a3)
{
  return StateMachine::RecurseDraw((int)a2, (int)a2, a3);
}


// ===== 383304 GSConsole::Update(StateMachine *,double) =====
int __fastcall GSConsole::Update(GSConsole *this, double a2)
{
  int result; // r0

  result = dword_99F774;
  if ( dword_99F774 )
    return Console::Update(dword_99F774, a2);
  return result;
}


// ===== 38332c GSConsole::Dtor(StateMachine const*) =====
void __fastcall GSConsole::Dtor(GSConsole *this, const StateMachine *a2)
{
  if ( dword_99F774 )
  {
    if ( *(_BYTE *)(dword_99F774 + 4) )
      Console::Toggle((Console *)dword_99F774);
  }
}


// ===== 383360 GSConsole::Ctor(StateMachine const*) =====
void __fastcall GSConsole::Ctor(GSConsole *this, const StateMachine *a2)
{
  if ( dword_99F774 )
  {
    if ( !*(_BYTE *)(dword_99F774 + 4) )
      Console::Toggle((Console *)dword_99F774);
  }
}


// ===== 383394 GSConsole::~GSConsole() =====
void __fastcall GSConsole::~GSConsole(GSConsole *this)
{
  GSConsole::~GSConsole(this);
  CustomFree(this);
}


// ===== 3833b0 StateBase::~StateBase() =====
void __fastcall StateBase::~StateBase(StateBase *this)
{
  *(_DWORD *)this = off_963CE0;
  CustomFree(this);
}


// ===== 3833e4 GSConsole::Toggle(void) =====
_DWORD *__fastcall GSConsole::Toggle(GSConsole *this)
{
  int v1; // r5
  int v2; // r3

  v1 = dword_99F744;
  if ( !dword_99F744 )
  {
    if ( gAssertLevel == 2 )
    {
      *(_DWORD *)dword_99F744 = dword_99F744;
    }
    else if ( gAssertLevel == 1 )
    {
      fprintf(
        (FILE *)&_sF + 2,
        "ASSERT(%s) FAILED: %s:%d\n",
        "sm",
        "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\States\\GSConsole.cpp",
        26);
    }
  }
  v2 = *(_DWORD *)(v1 + 16);
  if ( (unsigned int)(v2 - *(_DWORD *)(v1 + 12)) >> 3 && *(_UNKNOWN **)(v2 - 8) == &GSConsole::s_inst )
    return StateMachine::PopState(v1, 0);
  else
    return StateMachine::PushState(v1, (int)&GSConsole::s_inst, 0);
}


// ===== 3834d4 `global constructor keyed to'.._.._sources_Game_States_GSConsole.cpp =====
int `global constructor keyed to'.._.._sources_Game_States_GSConsole.cpp()
{
  int result; // r0

  dword_9A2448 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9A2444 = 1056964608;
  GSConsole::GSConsole((GSConsole *)&GSConsole::s_inst);
  result = _aeabi_atexit((int)&GSConsole::s_inst, (int)GSConsole::~GSConsole, (int)&_dso_handle);
  if ( (`guard variable for'Singleton<Application>::s_inst & 1) == 0 )
  {
    `guard variable for'Singleton<Application>::s_inst = 1;
    Application::Application((Application *)&Singleton<Application>::s_inst);
    return _aeabi_atexit((int)&Singleton<Application>::s_inst, (int)Application::~Application, (int)&_dso_handle);
  }
  return result;
}


// ===== 38358c GSEndGame::GSEndGame(void) =====
void __fastcall GSEndGame::GSEndGame(GSEndGame *this)
{
  *((_DWORD *)this + 1) = 0;
  *(_DWORD *)this = off_963D50;
}


// ===== 3835b8 GSEndGame::GSEndGame(void) =====
void __fastcall GSEndGame::GSEndGame(GSEndGame *this)
{
  *((_DWORD *)this + 1) = 0;
  *(_DWORD *)this = off_963D50;
}


// ===== 3835e4 GSEndGame::~GSEndGame() =====
void __fastcall GSEndGame::~GSEndGame(GSEndGame *this)
{
  ;
}


// ===== 3835e8 GSEndGame::~GSEndGame() =====
void __fastcall GSEndGame::~GSEndGame(GSEndGame *this)
{
  ;
}


// ===== 3835ec GSEndGame::Ctor(StateMachine const*) =====
int __fastcall GSEndGame::Ctor(int this, const StateMachine *a2)
{
  *(_DWORD *)(this + 4) = 0;
  return this;
}


// ===== 3835f8 GSEndGame::Dtor(StateMachine const*) =====
void __fastcall GSEndGame::Dtor(GSEndGame *this, const StateMachine *a2)
{
  ;
}


// ===== 3835fc GSEndGame::~GSEndGame() =====
void __fastcall GSEndGame::~GSEndGame(GSEndGame *this)
{
  GSEndGame::~GSEndGame(this);
  CustomFree(this);
}


// ===== 383618 GSEndGame::Draw(StateMachine const*) =====
void __fastcall GSEndGame::Draw(GSEndGame *this, const StateMachine *a2)
{
  MenuManager *Instance; // r0

  Instance = (MenuManager *)MenuManager::GetInstance(this);
  MenuManager::Draw(Instance, 0);
}


// ===== 38362c `global constructor keyed to'.._.._sources_Game_States_GSEndGame.cpp =====
int `global constructor keyed to'.._.._sources_Game_States_GSEndGame.cpp()
{
  int result; // r0
  int *v1; // r4
  char *v2; // r0
  int v3; // r2
  void *v4; // r0
  int *v5; // r1
  int v6; // r0
  int v7; // r3
  _DWORD *v8; // r6
  unsigned int v9; // r8
  int v10; // r12
  int v11; // r3
  _DWORD *v12; // r6
  unsigned int v13; // r8
  int v14; // r12
  int v15; // r3
  _DWORD *v16; // r6
  unsigned int v17; // r8
  int v18; // r12
  int v19; // r3
  _DWORD *v20; // r6
  unsigned int v21; // r8
  int v22; // r12
  int v23; // r3
  _DWORD *v24; // r6
  unsigned int v25; // r8
  int v26; // r12
  int v27; // r3
  unsigned int v28; // [sp+4h] [bp-18h]
  char *v29; // [sp+8h] [bp-14h]
  size_t v30; // [sp+14h] [bp-8h] BYREF

  dword_9A2458 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9A2454 = 1056964608;
  GSEndGame::GSEndGame((GSEndGame *)&GSEndGame::s_inst);
  result = _aeabi_atexit((int)&GSEndGame::s_inst, (int)GSEndGame::~GSEndGame, (int)&_dso_handle);
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
      v2 = (char *)std::allocator<StatusMsg *>::allocate((int)(v1 + 8), 8u);
      v3 = v1[9];
      v1[8] = (int)v2;
      v28 = (unsigned int)(v3 - 1) >> 1;
      v29 = v2;
      v30 = 112;
      v4 = __ZNSt12__node_alloc11_M_allocateERj_veneer(&v30);
      v5 = (int *)&v29[4 * v28];
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
    v8 = std::allocator<OnlineStatusMsg *>::allocate((int)&dword_99FB54, (unsigned int)byte_8);
    v30 = 112;
    dword_99FB54 = (int)v8;
    v9 = (unsigned int)(dword_99FB58 - 1) >> 1;
    v8[v9] = __ZNSt12__node_alloc11_M_allocateERj_veneer(&v30);
    dword_99FB40 = (int)&v8[v9];
    v10 = v8[v9];
    dword_99FB50 = (int)&v8[v9];
    dword_99FB3C = v10 + 112;
    dword_99FB38 = v10;
    v11 = v8[v9];
    dword_99FB4C = v11 + 112;
    dword_99FB34 = v10;
    dword_99FB44 = v11;
    dword_99FB48 = v11;
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
    v12 = std::allocator<TutorialMsg *>::allocate((int)&dword_99FB80, (unsigned int)byte_8);
    v30 = 128;
    dword_99FB80 = (int)v12;
    v13 = (unsigned int)(dword_99FB84 - 1) >> 1;
    v12[v13] = __ZNSt12__node_alloc11_M_allocateERj_veneer(&v30);
    dword_99FB6C = (int)&v12[v13];
    v14 = v12[v13];
    dword_99FB7C = (int)&v12[v13];
    dword_99FB68 = v14 + 128;
    dword_99FB64 = v14;
    v15 = v12[v13];
    dword_99FB78 = v15 + 128;
    dword_99FB60 = v14;
    dword_99FB70 = v15;
    dword_99FB74 = v15;
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
    v16 = std::allocator<DialogMsg *>::allocate((int)&dword_99FBAC, (unsigned int)byte_8);
    v30 = 76;
    dword_99FBAC = (int)v16;
    v17 = (unsigned int)(dword_99FBB0 - 1) >> 1;
    v16[v17] = __ZNSt12__node_alloc11_M_allocateERj_veneer(&v30);
    dword_99FB98 = (int)&v16[v17];
    v18 = v16[v17];
    dword_99FBA8 = (int)&v16[v17];
    dword_99FB94 = v18 + 76;
    dword_99FB90 = v18;
    v19 = v16[v17];
    dword_99FBA4 = v19 + 76;
    dword_99FB8C = v18;
    dword_99FB9C = v19;
    dword_99FBA0 = v19;
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
    v20 = std::allocator<CharMenuTutorialMsg *>::allocate((int)&dword_99FBD8, (unsigned int)byte_8);
    v30 = 104;
    dword_99FBD8 = (int)v20;
    v21 = (unsigned int)(dword_99FBDC - 1) >> 1;
    v20[v21] = __ZNSt12__node_alloc11_M_allocateERj_veneer(&v30);
    dword_99FBC4 = (int)&v20[v21];
    v22 = v20[v21];
    dword_99FBD4 = (int)&v20[v21];
    dword_99FBC0 = v22 + 104;
    dword_99FBBC = v22;
    v23 = v20[v21];
    dword_99FBD0 = v23 + 104;
    dword_99FBB8 = v22;
    dword_99FBC8 = v23;
    dword_99FBCC = v23;
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
    v24 = std::allocator<AchievementMsg *>::allocate((int)&dword_99FC04, (unsigned int)byte_8);
    v30 = 120;
    dword_99FC04 = (int)v24;
    v25 = (unsigned int)(dword_99FC08 - 1) >> 1;
    v24[v25] = __ZNSt12__node_alloc11_M_allocateERj_veneer(&v30);
    dword_99FBF0 = (int)&v24[v25];
    v26 = v24[v25];
    dword_99FC00 = (int)&v24[v25];
    dword_99FBEC = v26 + 120;
    dword_99FBE8 = v26;
    v27 = v24[v25];
    dword_99FBFC = v27 + 120;
    dword_99FBE4 = v26;
    dword_99FBF4 = v27;
    dword_99FBF8 = v27;
    return _aeabi_atexit(
             (int)&Singleton<MenuMessageManager<AchievementMsg,1>>::s_inst,
             (int)MenuMessageManager<AchievementMsg,1>::~MenuMessageManager,
             (int)&_dso_handle);
  }
  return result;
}


// ===== 383d10 std::deque<StatusMsg,std::allocator<StatusMsg>>::pop_front(void) =====
void __fastcall std::deque<StatusMsg>::pop_front(_DWORD *a1)
{
  _DWORD *v1; // r3
  _DWORD *v3; // r0
  size_t v4; // r1
  void *v5; // r0
  int *v6; // r2
  int v7; // r3
  int v8; // r2

  v1 = (_DWORD *)*a1;
  v3 = *(_DWORD **)(*a1 + 20);
  if ( v3 != v1 && v3 )
  {
    v4 = *v1 - (_DWORD)v3;
    if ( v4 > 0x80 )
      CustomFree(v3);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v3, v4);
    v1 = (_DWORD *)*a1;
  }
  if ( v1 == (_DWORD *)(a1[2] - 28) )
  {
    v5 = (void *)a1[1];
    if ( v5 )
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v5, 0x70u);
    v6 = (int *)(a1[3] + 4);
    a1[3] = v6;
    v7 = *v6;
    v8 = *v6 + 112;
    *a1 = v7;
    a1[2] = v8;
    a1[1] = v7;
  }
  else
  {
    *a1 = v1 + 7;
  }
}


// ===== 383da8 std::deque<OnlineStatusMsg,std::allocator<OnlineStatusMsg>>::pop_front(void) =====
void __fastcall std::deque<OnlineStatusMsg>::pop_front(_DWORD *a1)
{
  _DWORD *v1; // r3
  _DWORD *v3; // r0
  size_t v4; // r1
  void *v5; // r0
  int *v6; // r2
  int v7; // r3
  int v8; // r2

  v1 = (_DWORD *)*a1;
  v3 = *(_DWORD **)(*a1 + 20);
  if ( v3 != v1 && v3 )
  {
    v4 = *v1 - (_DWORD)v3;
    if ( v4 > 0x80 )
      CustomFree(v3);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v3, v4);
    v1 = (_DWORD *)*a1;
  }
  if ( v1 == (_DWORD *)(a1[2] - 28) )
  {
    v5 = (void *)a1[1];
    if ( v5 )
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v5, 0x70u);
    v6 = (int *)(a1[3] + 4);
    a1[3] = v6;
    v7 = *v6;
    v8 = *v6 + 112;
    *a1 = v7;
    a1[2] = v8;
    a1[1] = v7;
  }
  else
  {
    *a1 = v1 + 7;
  }
}


// ===== 383e40 std::deque<DialogMsg,std::allocator<DialogMsg>>::pop_front(void) =====
void __fastcall std::deque<DialogMsg>::pop_front(int a1)
{
  void *v2; // r0
  int *v3; // r2
  int v4; // r3
  int v5; // r2

  DialogMsg::~DialogMsg(*(DialogMsg **)a1);
  if ( *(_DWORD *)a1 == *(_DWORD *)(a1 + 8) - 76 )
  {
    v2 = *(void **)(a1 + 4);
    if ( v2 )
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v2, 0x4Cu);
    v3 = (int *)(*(_DWORD *)(a1 + 12) + 4);
    *(_DWORD *)(a1 + 12) = v3;
    v4 = *v3;
    v5 = *v3 + 76;
    *(_DWORD *)a1 = v4;
    *(_DWORD *)(a1 + 8) = v5;
    *(_DWORD *)(a1 + 4) = v4;
  }
  else
  {
    *(_DWORD *)a1 += 76;
  }
}


// ===== 383ea8 MenuMessageManager<DialogMsg,1>::FlushEnqueuedMessages(int) [clone] =====
void MenuMessageManager<DialogMsg,1>::FlushEnqueuedMessages()
{
  while ( dword_99FB9C != dword_99FB8C )
    std::deque<DialogMsg>::pop_front((int)&dword_99FB8C);
}


// ===== 383ef4 std::deque<AchievementMsg,std::allocator<AchievementMsg>>::pop_front(void) =====
void __fastcall std::deque<AchievementMsg>::pop_front(_DWORD *a1)
{
  _DWORD *v1; // r5
  int v3; // r3
  void *v4; // r0
  size_t v5; // r1
  _DWORD *v6; // r0
  size_t v7; // r1
  void *v8; // r0
  int *v9; // r2
  int v10; // r3
  int v11; // r2

  v1 = (_DWORD *)*a1;
  v3 = *a1 + 24;
  v4 = *(void **)(*a1 + 44);
  if ( v4 != (void *)v3 && v4 )
  {
    v5 = v1[6] - (_DWORD)v4;
    if ( v5 > 0x80 )
      CustomFree(v4);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v4, v5);
  }
  v6 = (_DWORD *)v1[5];
  if ( v6 != v1 && v6 )
  {
    v7 = *v1 - (_DWORD)v6;
    if ( v7 > 0x80 )
      CustomFree(v6);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v6, v7);
  }
  if ( *a1 == a1[2] - 60 )
  {
    v8 = (void *)a1[1];
    if ( v8 )
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v8, 0x78u);
    v9 = (int *)(a1[3] + 4);
    a1[3] = v9;
    v10 = *v9;
    v11 = *v9 + 120;
    *a1 = v10;
    a1[2] = v11;
    a1[1] = v10;
  }
  else
  {
    *a1 += 60;
  }
}


// ===== 383fbc GSEndGame::Update(StateMachine *,double) =====
int __fastcall GSEndGame::Update(GSEndGame *this, double a2)
{
  int v3; // r5
  GSEndGame *v4; // r6
  CMatching *Online; // r0
  MenuManager *v6; // r0
  MenuManager *v7; // r0
  MenuManager *Instance; // r0
  MenuBase *MenuByName; // r0
  MenuManager *v11; // r0
  int v12; // r0
  MenuManager *v13; // r0
  MenuManager *v14; // r0
  int v15; // r0
  CMatching *v16; // r0
  CMatching *v17; // r0
  CMatching *v18; // r0
  COnline *v19; // r0

  v3 = *((_DWORD *)this + 1);
  v4 = this;
  if ( v3 == 1 )
  {
    Instance = (MenuManager *)MenuManager::GetInstance(this);
    MenuByName = (MenuBase *)MenuManager::GetMenuByName(Instance, "menu_About");
    this = (GSEndGame *)MenuBase::IsVisible(MenuByName);
    if ( this )
      goto LABEL_7;
  }
  else if ( v3 != 2 )
  {
    if ( !v3 )
    {
      Online = (CMatching *)GetOnline();
      if ( *((_BYTE *)Online + 5) )
      {
        v15 = CMatching::Get(Online);
        v16 = (CMatching *)(*(int (__fastcall **)(int))(*(_DWORD *)v15 + 60))(v15);
        CMatching::Get(v16);
        v17 = (CMatching *)CMatching::SetMatchingProvider(1);
        v18 = (CMatching *)CMatching::Get(v17);
        CMatching::Destroy(v18);
        v19 = (COnline *)GetOnline();
        COnline::SetIsOnlineGame(v19, 0);
        Online = (CMatching *)OnlineSingleton<OnlineGameState>::GetInstance();
        *((_BYTE *)Online + 40) = 0;
      }
      v6 = (MenuManager *)MenuManager::GetInstance(Online);
      this = (GSEndGame *)MenuManager::PushMenu(v6, "menu_About");
      ++*((_DWORD *)v4 + 1);
    }
    goto LABEL_7;
  }
  MenuMessageManager<DialogMsg,1>::FlushEnqueuedMessages();
  while ( dword_99FBF4 != dword_99FBE4 )
    std::deque<AchievementMsg>::pop_front(&dword_99FBE4);
  MenuMessageManager<DialogMsg,1>::FlushEnqueuedMessages();
  while ( dword_99FAA0 != dword_99FA90 )
    std::deque<StatusMsg>::pop_front(&dword_99FA90);
  while ( dword_99FB44 != dword_99FB34 )
    std::deque<OnlineStatusMsg>::pop_front(&dword_99FB34);
  v12 = MenuManager::GetInstance(v11);
  v13 = (MenuManager *)(*(int (__fastcall **)(_DWORD, int))(**(_DWORD **)(v12 + 244) + 56))(*(_DWORD *)(v12 + 244), 1);
  v14 = (MenuManager *)MenuManager::GetInstance(v13);
  dword_9A247C = MenuManager::GetMenuByName(v14, "menu_MainMenu");
  byte_9A2499 = 1;
  StateMachine::SwitchState(dword_99F744, (int)&GSFlashMenu::s_inst, 0);
  this = (GSEndGame *)PlayerManager::RemoveAllPlayers((PlayerManager *)dword_99F76C);
LABEL_7:
  v7 = (MenuManager *)MenuManager::GetInstance(this);
  return MenuManager::Update(v7, 0);
}


// ===== 3841a8 GSFlashMenu::Draw(StateMachine const*) =====
void __fastcall GSFlashMenu::Draw(MenuManager **this, const StateMachine *a2)
{
  MenuManager::Draw(*(this + 1), 0);
}


// ===== 3841b4 GSFlashMenu::GSFlashMenu(void) =====
void __fastcall GSFlashMenu::GSFlashMenu(GSFlashMenu *this)
{
  _DWORD *v2; // r0

  *(_DWORD *)this = off_963D88;
  v2 = (_DWORD *)((char *)this + 16);
  *((_DWORD *)this + 1) = 0;
  *((_DWORD *)this + 2) = 0;
  *((_DWORD *)this + 3) = 0;
  *((_DWORD *)this + 8) = v2;
  *((_DWORD *)this + 9) = v2;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block(v2, 0x10u);
  **((_BYTE **)this + 8) = 0;
  *((_BYTE *)this + 41) = 0;
  *((_BYTE *)this + 40) = 0;
}


// ===== 38421c GSFlashMenu::GSFlashMenu(void) =====
void __fastcall GSFlashMenu::GSFlashMenu(GSFlashMenu *this)
{
  _DWORD *v2; // r0

  *(_DWORD *)this = off_963D88;
  v2 = (_DWORD *)((char *)this + 16);
  *((_DWORD *)this + 1) = 0;
  *((_DWORD *)this + 2) = 0;
  *((_DWORD *)this + 3) = 0;
  *((_DWORD *)this + 8) = v2;
  *((_DWORD *)this + 9) = v2;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block(v2, 0x10u);
  **((_BYTE **)this + 8) = 0;
  *((_BYTE *)this + 41) = 0;
  *((_BYTE *)this + 40) = 0;
}


// ===== 384284 GSFlashMenu::~GSFlashMenu() =====
void __fastcall GSFlashMenu::~GSFlashMenu(GSFlashMenu *this)
{
  *(_DWORD *)this = off_963D88;
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block((std::priv::_String_base<char,std::allocator<char> > *const)((char *)this + 16));
}


// ===== 3842b8 GSFlashMenu::~GSFlashMenu() =====
void __fastcall GSFlashMenu::~GSFlashMenu(GSFlashMenu *this)
{
  *(_DWORD *)this = off_963D88;
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block((std::priv::_String_base<char,std::allocator<char> > *const)((char *)this + 16));
}


// ===== 3842ec GSFlashMenu::~GSFlashMenu() =====
void __fastcall GSFlashMenu::~GSFlashMenu(GSFlashMenu *this)
{
  GSFlashMenu::~GSFlashMenu(this);
  CustomFree(this);
}


// ===== 384308 `global constructor keyed to'.._.._sources_Game_States_GSFlashMenu.cpp =====
int `global constructor keyed to'.._.._sources_Game_States_GSFlashMenu.cpp()
{
  int result; // r0

  dword_9A246C = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9A2468 = 1056964608;
  GSFlashMenu::GSFlashMenu((GSFlashMenu *)&GSFlashMenu::s_inst);
  result = _aeabi_atexit((int)&GSFlashMenu::s_inst, (int)GSFlashMenu::~GSFlashMenu, (int)&_dso_handle);
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


// ===== 384410 std::string::_M_range_initialize(char const*,char const*) [clone] =====
char *__fastcall std::string::_M_range_initialize(std::string *this, const char *a2, const char *a3)
{
  size_t v5; // r4
  char *result; // r0

  v5 = a2 - "isTracingGSFlashMenu";
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block(this, a2 - "isTracingGSFlashMenu" + 1);
  result = this->_M_start_of_storage._M_data;
  if ( a2 != "isTracingGSFlashMenu" )
    result = (char *)memcpy(result, "isTracingGSFlashMenu", v5) + v5;
  this->_M_finish = result;
  *result = 0;
  return result;
}


// ===== 384460 GSFlashMenu::Update(StateMachine *,double) =====
_DWORD *__fastcall GSFlashMenu::Update(GSFlashMenu *this, StateMachine *a2, double a3)
{
  int v4; // r12
  int v7; // r1
  int v8; // r3
  int v9; // r2
  int v10; // r3
  _DWORD *result; // r0
  MenuBase *v12; // r0
  const char *v13; // r2
  std::priv::_String_base<char,std::allocator<char> > v14; // [sp+4h] [bp-20h] BYREF

  v4 = *((_DWORD *)this + 3);
  if ( v4 )
  {
    v7 = *((_DWORD *)this + 2);
    if ( v4 != v7 )
    {
      if ( v7 )
      {
        (*(void (__fastcall **)(_DWORD, int, _DWORD))(**(_DWORD **)(*((_DWORD *)this + 1) + 244) + 60))(
          *(_DWORD *)(*((_DWORD *)this + 1) + 244),
          v7 + 8,
          0);
        v4 = *((_DWORD *)this + 3);
      }
      v8 = *((_DWORD *)this + 1);
      *((_DWORD *)this + 3) = 0;
      *((_DWORD *)this + 2) = v4;
      (*(void (__fastcall **)(_DWORD, int))(**(_DWORD **)(v8 + 244) + 52))(*(_DWORD *)(v8 + 244), v4);
    }
  }
  v9 = *((_DWORD *)a2 + 4);
  v10 = (v9 - *((_DWORD *)a2 + 3)) >> 3;
  if ( v10 )
    v10 = *(_DWORD *)(v9 - 8);
  if ( this != (GSFlashMenu *)v10 || (v12 = *((MenuBase **)this + 2)) != nullptr && MenuBase::IsVisible(v12) )
  {
    MenuManager::Update(*((MenuManager **)this + 1), 0);
    result = (_DWORD *)GetOnline();
    if ( *((_BYTE *)result + 5) )
      return (_DWORD *)StateMachine::RecurseUpdate((int)a2, a3);
  }
  else
  {
    DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
    v14._M_finish = (char *)&v14;
    v14._M_start_of_storage._M_data = (char *)&v14;
    std::string::_M_range_initialize((std::string *)&v14, "", v13);
    DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, (const std::string *)&v14);
    std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v14);
    *((_BYTE *)this + 40) = 1;
    return StateMachine::PopState(dword_99F744, 0);
  }
  return result;
}


// ===== 3845f8 GSFlashMenu::Dtor(StateMachine const*) =====
MenuBase *__fastcall GSFlashMenu::Dtor(GSFlashMenu *this, const StateMachine *a2)
{
  const char *v3; // r2
  int CurrentLevel; // r0
  MenuBase *result; // r0
  std::string v6; // [sp+4h] [bp-1Ch] BYREF

  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  v6._M_finish = (char *)&v6;
  v6._M_start_of_storage._M_data = (char *)&v6;
  std::string::_M_range_initialize(&v6, "", v3);
  DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v6);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v6);
  CurrentLevel = Application::GetCurrentLevel((Application *)&Singleton<Application>::s_inst);
  if ( CurrentLevel )
    *(_BYTE *)(CurrentLevel + 408) = 1;
  result = *((MenuBase **)this + 2);
  if ( result )
  {
    result = (MenuBase *)MenuBase::IsVisible(result);
    if ( result )
      result = (MenuBase *)(*(int (__fastcall **)(_DWORD, int, _DWORD))(**(_DWORD **)(*((_DWORD *)this + 1) + 244) + 60))(
                             *(_DWORD *)(*((_DWORD *)this + 1) + 244),
                             *((_DWORD *)this + 2) + 8,
                             0);
  }
  *((_DWORD *)this + 2) = 0;
  *((_BYTE *)this + 40) = 1;
  return result;
}


// ===== 3846fc GSFlashMenu::Ctor(StateMachine const*) =====
MultiMenuManager **__fastcall GSFlashMenu::Ctor(GSFlashMenu *this, const StateMachine *a2)
{
  const char *v3; // r2
  MenuManager *v4; // r0
  MultiMenuManager **result; // r0
  int v6; // r3
  MenuManager *MainMenu; // r0
  MenuManager *Instance; // r0
  std::string v9; // [sp+4h] [bp-1Ch] BYREF

  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  v9._M_finish = (char *)&v9;
  v9._M_start_of_storage._M_data = (char *)&v9;
  std::string::_M_range_initialize(&v9, "", v3);
  DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v9);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v9);
  result = (MultiMenuManager **)MenuManager::GetInstance(v4);
  v6 = *((unsigned __int8 *)this + 41);
  *((_DWORD *)this + 1) = result;
  if ( v6 )
  {
    MainMenu = (MenuManager *)MenuManager::LoadMainMenu(result);
    Instance = (MenuManager *)MenuManager::GetInstance(MainMenu);
    result = (MultiMenuManager **)MenuManager::GetMenuByName(Instance, "menu_MainMenu");
    *((_DWORD *)this + 3) = result;
    *((_BYTE *)this + 41) = 0;
  }
  if ( *((_DWORD *)this + 2) )
    result = (MultiMenuManager **)(*(int (__fastcall **)(_DWORD))(**(_DWORD **)(*((_DWORD *)this + 1) + 244) + 52))(*(_DWORD *)(*((_DWORD *)this + 1) + 244));
  *((_BYTE *)this + 40) = 0;
  return result;
}


// ===== 3847fc GSInit::GSInit(void) =====
void __fastcall GSInit::GSInit(GSInit *this)
{
  *((_DWORD *)this + 4) = 0;
  *((_DWORD *)this + 1) = 0;
  *(_DWORD *)this = off_963DC0;
  *((_DWORD *)this + 2) = -1;
}


// ===== 384834 GSInit::GSInit(void) =====
void __fastcall GSInit::GSInit(GSInit *this)
{
  *((_DWORD *)this + 4) = 0;
  *((_DWORD *)this + 1) = 0;
  *(_DWORD *)this = off_963DC0;
  *((_DWORD *)this + 2) = -1;
}


// ===== 38486c GSInit::Dtor(StateMachine const*) =====
void __fastcall GSInit::Dtor(GSInit *this, const StateMachine *a2)
{
  ;
}


// ===== 384870 std::priv::__find<glitch::video::ITexture **,glitch::video::ITexture *>(glitch::video::ITexture **,glitch::video::ITexture **,glitch::video::ITexture * const&,std::random_access_iterator_tag const&) =====
_DWORD *__fastcall std::priv::__find<glitch::video::ITexture **,glitch::video::ITexture *>(_DWORD *a1, int a2, int *a3)
{
  _DWORD *v3; // r3
  int v4; // r0
  int v5; // r12
  int v6; // r4
  _DWORD *result; // r0
  int v8; // r4
  int v9; // r3

  v3 = a1;
  v4 = a2 - (_DWORD)a1;
  v5 = v4 >> 4;
  v6 = v4 >> 2;
  if ( v4 >> 4 <= 0 )
  {
    result = v3;
LABEL_15:
    switch ( v6 )
    {
      case 2:
        v9 = *a3;
        break;
      case 3:
        v9 = *a3;
        if ( *result == *a3 )
          return result;
        ++result;
        break;
      case 1:
        v9 = *a3;
LABEL_23:
        if ( *result != v9 )
          return (_DWORD *)a2;
        return result;
      default:
        return (_DWORD *)a2;
    }
    if ( *result == v9 )
      return result;
    ++result;
    goto LABEL_23;
  }
  v8 = *a3;
  if ( *v3 == *a3 )
    return v3;
  result = v3 + 1;
  if ( v8 != v3[1] )
  {
    result = v3 + 2;
    if ( v8 != v3[2] )
    {
      result = v3 + 3;
      if ( v8 != v3[3] )
      {
        do
        {
          if ( !--v5 )
          {
            result = v3 + 4;
            v6 = (a2 - (int)(v3 + 4)) >> 2;
            goto LABEL_15;
          }
          if ( v3[4] == v8 )
            return v3 + 4;
          if ( v3[5] == v8 )
            return v3 + 5;
          if ( v3[6] == v8 )
            return v3 + 6;
          v3 += 4;
        }
        while ( v8 != v3[3] );
        return v3 + 3;
      }
    }
  }
  return result;
}


// ===== 3849a0 glitch::video::CTextureManager::removeTexture(glitch::video::ITexture *) =====
glitch::video::ITexture *__fastcall glitch::video::CTextureManager::removeTexture(
        glitch::video::CTextureManager *this,
        glitch::video::ITexture *a2)
{
  glitch::video::ITexture *v2; // r5
  char *v4; // r0
  char *v5; // r3
  int v6; // r6
  int Id; // r0
  glitch::video::ITexture *v9; // [sp+4h] [bp-Ch] BYREF

  v2 = a2;
  v9 = a2;
  if ( a2 )
  {
    v4 = (char *)std::priv::__find<glitch::video::ITexture **,glitch::video::ITexture *>(
                   *((_DWORD **)this + 26),
                   *((_DWORD *)this + 27),
                   (int *)&v9);
    v5 = *((char **)this + 27);
    if ( v4 != v5 )
    {
      if ( v5 != v4 + 4 )
      {
        memmove(v4, v4 + 4, v5 - (v4 + 4));
        v5 = *((char **)this + 27);
      }
      *((_DWORD *)this + 27) = v5 - 4;
    }
    v6 = *((_DWORD *)v9 + 14);
    Id = glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>,unsigned short,false,glitch::video::detail::texturemanager::STextureProperties,glitch::core::detail::sidedcollection::SValueTraits>::getId(
           this,
           *((_DWORD *)v9 + 7));
    v2 = (glitch::video::ITexture *)glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>,unsigned short,false,glitch::video::detail::texturemanager::STextureProperties,glitch::core::detail::sidedcollection::SValueTraits>::remove(
                                      this,
                                      Id,
                                      0);
    if ( v2 )
      glitch::video::CTextureManager::clearPlaceHolder(this, v6 & 3, v9);
  }
  return v2;
}


// ===== 384a4c GSInit::Draw(StateMachine const*) =====
int __fastcall GSInit::Draw(GSInit *this, const StateMachine *a2)
{
  _DWORD *v3; // r4
  char *v4; // r8
  int v5; // r2
  int Dt; // r0
  int v8; // r2
  Device *IsIphoneHighRez; // r0
  int v10; // r5
  int v11; // r10
  Device *v12; // r0
  Device *v13; // r0
  int v14; // r6
  float v15; // r9
  int v16; // r0
  int v17; // r3
  int v18; // r1
  float v19; // r7
  _DWORD *v20; // r2
  int v21; // r6
  int v22; // r5
  _DWORD v23[4]; // [sp+10h] [bp-30h] BYREF
  int v24; // [sp+20h] [bp-20h] BYREF
  int v25; // [sp+24h] [bp-1Ch]
  int v26; // [sp+28h] [bp-18h]
  int v27; // [sp+2Ch] [bp-14h]
  _DWORD v28[4]; // [sp+30h] [bp-10h] BYREF

  v3 = *(_DWORD **)(dword_99F73C + 16);
  (*(void (__fastcall **)(_DWORD *, const StateMachine *))(*v3 + 12))(v3, a2);
  (*(void (__fastcall **)(_DWORD *, int))(*v3 + 168))(v3, 1);
  (*(void (__fastcall **)(_DWORD *))(*v3 + 20))(v3);
  if ( *((_DWORD *)this + 4) )
  {
    v4 = (char *)this + 16;
    v5 = *(_DWORD *)(v3[51] - 4);
    v28[2] = 1280;
    v28[3] = 752;
    v28[0] = 0;
    v28[1] = 0;
    glitch::video::C2DDriver::draw2DImage(v3, (char *)this + 16, v5 + 20, v28, 0, 0, 0);
    if ( *((int *)this + 2) < 0 )
    {
      Dt = Application::GetDt((Application *)&Singleton<Application>::s_inst);
      GSInit::Draw(StateMachine const*)::accumulatedTime += Dt;
      if ( (unsigned int)GSInit::Draw(StateMachine const*)::accumulatedTime > 0x19 )
      {
        GSInit::Draw(StateMachine const*)::accumulatedTime = 0;
        if ( GSInit::Draw(StateMachine const*)::currentProgress == 12 )
          v8 = 0;
        else
          v8 = GSInit::Draw(StateMachine const*)::currentProgress + 1;
        GSInit::Draw(StateMachine const*)::currentProgress = v8;
      }
      IsIphoneHighRez = (Device *)Device::IsIphoneHighRez((Device *)Dt);
      v10 = 770;
      if ( IsIphoneHighRez )
        v11 = 23;
      else
        v11 = 770;
      v12 = (Device *)Device::IsIphoneHighRez(IsIphoneHighRez);
      if ( v12 )
        v10 = 792;
      v13 = (Device *)Device::IsIphoneHighRez(v12);
      if ( v13 )
        v14 = 54;
      else
        v14 = 64;
      if ( v13 )
        v15 = 54.0;
      else
        v15 = 64.0;
      v16 = Device::IsIphoneHighRez(v13);
      v17 = GSInit::Draw(StateMachine const*)::currentProgress;
      if ( v16 )
        v18 = 56;
      else
        v18 = 64;
      if ( v16 )
        v19 = 56.0;
      else
        v19 = 64.0;
      if ( GSInit::Draw(StateMachine const*)::currentProgress < 0 )
        v17 = GSInit::Draw(StateMachine const*)::currentProgress + 3;
      v24 = v11 + GSInit::Draw(StateMachine const*)::currentProgress % 4 * v14;
      v25 = v10 + (v17 >> 2) * v18;
      v26 = v24 + v14;
      v27 = v25 + v18;
      v20 = *(_DWORD **)(v3[51] - 4);
      v21 = v20[7] - v20[5];
      v22 = v20[8] - v20[6];
      v23[0] = (int)(float)((float)v21 - v15);
      v23[1] = (int)(float)((float)v22 - v19);
      v23[2] = v21;
      v23[3] = v22;
      glitch::video::C2DDriver::draw2DImage(v3, v4, v23, &v24, 0, 0, 0);
    }
  }
  (*(void (__fastcall **)(_DWORD *))(*v3 + 24))(v3);
  (*(void (__fastcall **)(_DWORD *))(*v3 + 16))(v3);
  return (*(int (__fastcall **)(_DWORD *, _DWORD))(*v3 + 164))(v3, 0);
}


// ===== 384cb0 `global constructor keyed to'.._.._sources_Game_States_GSInit.cpp =====
int `global constructor keyed to'.._.._sources_Game_States_GSInit.cpp()
{
  int result; // r0

  dword_9A24AC = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9A24A8 = 1056964608;
  GSInit::GSInit((GSInit *)&GSInit::s_inst);
  result = _aeabi_atexit((int)&GSInit::s_inst, (int)GSInit::~GSInit, (int)&_dso_handle);
  if ( (`guard variable for'Singleton<Application>::s_inst & 1) == 0 )
  {
    `guard variable for'Singleton<Application>::s_inst = 1;
    Application::Application((Application *)&Singleton<Application>::s_inst);
    result = _aeabi_atexit((int)&Singleton<Application>::s_inst, (int)Application::~Application, (int)&_dso_handle);
  }
  if ( (`guard variable for'Singleton<CXPlayerManager>::s_inst & 1) == 0 )
  {
    `guard variable for'Singleton<CXPlayerManager>::s_inst = 1;
    CXPlayerManager::CXPlayerManager((CXPlayerManager *)&Singleton<CXPlayerManager>::s_inst);
    return _aeabi_atexit(
             (int)&Singleton<CXPlayerManager>::s_inst,
             (int)CXPlayerManager::~CXPlayerManager,
             (int)&_dso_handle);
  }
  return result;
}


// ===== 384db8 GSInit::~GSInit() =====
void __fastcall GSInit::~GSInit(GSInit *this)
{
  glitch::IReferenceCounted *v2; // r0

  v2 = *((glitch::IReferenceCounted **)this + 4);
  *(_DWORD *)this = off_963DC0;
  if ( v2 )
    glitch::IReferenceCounted::drop(v2);
}


// ===== 384df8 boost::intrusive_ptr<glitch::video::ITexture>::operator=(boost::intrusive_ptr<glitch::video::ITexture> const&) =====
glitch::IReferenceCounted **__fastcall boost::intrusive_ptr<glitch::video::ITexture>::operator=(
        glitch::IReferenceCounted **a1,
        glitch::IReferenceCounted **a2)
{
  glitch::IReferenceCounted *v2; // r3
  glitch::IReferenceCounted *v4; // r0

  v2 = *a2;
  if ( *a2 )
    ++*((_DWORD *)v2 + 1);
  v4 = *a1;
  *a1 = v2;
  if ( v4 )
    glitch::IReferenceCounted::drop(v4);
  return a1;
}


// ===== 384e30 GSInit::Ctor(StateMachine const*) =====
_DWORD *__fastcall GSInit::Ctor(_DWORD *this, const StateMachine *a2)
{
  glitch::IReferenceCounted *v2; // r2

  v2 = (glitch::IReferenceCounted *)*(this + 4);
  *(this + 4) = 0;
  *(this + 2) = -1;
  *(this + 1) = 0;
  if ( v2 )
    return (_DWORD *)glitch::IReferenceCounted::drop(v2);
  return this;
}


// ===== 384e58 GSInit::~GSInit() =====
void __fastcall GSInit::~GSInit(GSInit *this)
{
  glitch::IReferenceCounted *v2; // r0

  v2 = *((glitch::IReferenceCounted **)this + 4);
  *(_DWORD *)this = off_963DC0;
  if ( v2 )
    glitch::IReferenceCounted::drop(v2);
}


// ===== 384e98 GSInit::~GSInit() =====
void __fastcall GSInit::~GSInit(GSInit *this)
{
  GSInit::~GSInit(this);
  CustomFree(this);
}


// ===== 384eb4 glitch::video::CTextureManager::removeTexture(boost::intrusive_ptr<glitch::video::ITexture> &) =====
glitch::video::ITexture *__fastcall glitch::video::CTextureManager::removeTexture(
        glitch::video::CTextureManager *a1,
        glitch::IReferenceCounted **a2)
{
  glitch::IReferenceCounted *v2; // r4

  v2 = *a2;
  if ( !*a2 )
    return nullptr;
  *a2 = nullptr;
  glitch::IReferenceCounted::drop(v2);
  return glitch::video::CTextureManager::removeTexture(a1, v2);
}


// ===== 384ef0 GSInit::ClearLoadingScreen(void) =====
glitch::IReferenceCounted *__fastcall GSInit::ClearLoadingScreen(glitch::IReferenceCounted **this)
{
  glitch::IReferenceCounted *result; // r0

  result = (glitch::IReferenceCounted *)_DEBUG_OUT("----------------ClearLoadingScreen");
  if ( *(this + 4) )
  {
    glitch::video::CTextureManager::removeTexture(
      *(glitch::video::CTextureManager **)(*(_DWORD *)(dword_99F73C + 16) + 224),
      this + 4);
    result = *(this + 4);
    *(this + 4) = nullptr;
    if ( result )
      result = (glitch::IReferenceCounted *)glitch::IReferenceCounted::drop(result);
    *(this + 2) = (glitch::IReferenceCounted *)-1;
  }
  return result;
}


// ===== 384f64 GSInit::SwitchBackground(void) =====
glitch::IReferenceCounted *__fastcall GSInit::SwitchBackground(GSInit *this)
{
  const char *v1; // r6
  int Language; // r0
  glitch::IReferenceCounted *v3; // r3
  glitch::IReferenceCounted *v4; // r0
  glitch::IReferenceCounted *result; // r0
  int v6; // r3
  glitch::IReferenceCounted *v7; // r0
  int v8; // r3
  glitch::IReferenceCounted *v9; // r0
  glitch::IReferenceCounted *v10; // [sp+4h] [bp-Ch] BYREF
  glitch::IReferenceCounted *v11; // [sp+8h] [bp-8h] BYREF
  glitch::IReferenceCounted *v12; // [sp+Ch] [bp-4h] BYREF

  GSInit::ClearLoadingScreen((glitch::IReferenceCounted **)&GSInit::s_inst);
  v1 = *(const char **)(*(_DWORD *)(dword_99F73C + 16) + 224);
  Language = SavegameManager::getLanguage((SavegameManager *)dword_99F778);
  if ( Language == 4 )
  {
    glitch::video::CTextureManager::getTexture(
      (glitch::video::CTextureManager *)&v12,
      v1,
      "data/3d/textures/splash_final.tga");
    v8 = (int)v12;
    if ( v12 )
      ++*((_DWORD *)v12 + 1);
    v9 = (glitch::IReferenceCounted *)dword_9A24C0;
    dword_9A24C0 = v8;
    if ( v9 )
      glitch::IReferenceCounted::drop(v9);
    result = v12;
    if ( v12 )
      return (glitch::IReferenceCounted *)glitch::IReferenceCounted::drop(result);
  }
  else if ( Language == 5 )
  {
    glitch::video::CTextureManager::getTexture(
      (glitch::video::CTextureManager *)&v11,
      v1,
      "data/3d/textures/splash_final_kor.tga");
    v6 = (int)v11;
    if ( v11 )
      ++*((_DWORD *)v11 + 1);
    v7 = (glitch::IReferenceCounted *)dword_9A24C0;
    dword_9A24C0 = v6;
    if ( v7 )
      glitch::IReferenceCounted::drop(v7);
    result = v11;
    if ( v11 )
      return (glitch::IReferenceCounted *)glitch::IReferenceCounted::drop(result);
  }
  else
  {
    glitch::video::CTextureManager::getTexture(
      (glitch::video::CTextureManager *)&v10,
      v1,
      "data/3d/textures/splash_final.tga");
    v3 = v10;
    if ( v10 )
      ++*((_DWORD *)v10 + 1);
    v4 = (glitch::IReferenceCounted *)dword_9A24C0;
    dword_9A24C0 = (int)v3;
    if ( v4 )
      glitch::IReferenceCounted::drop(v4);
    result = v10;
    if ( v10 )
      return (glitch::IReferenceCounted *)glitch::IReferenceCounted::drop(result);
  }
  return result;
}


// ===== 3850c8 GSInit::Update(StateMachine *,double) =====
void __fastcall GSInit::Update(GSInit *this, StateMachine *a2, double a3)
{
  StringManager *v4; // r5
  unsigned int v5; // r0
  const char *v6; // r6
  int v7; // r7
  int v8; // r3
  int Language; // r0
  int v10; // r6
  int v11; // r6
  MenuManager *v12; // r10
  const char *v13; // r1
  int MenuByName; // r0
  int SavedOption; // r0
  int v16; // r0
  MenuManager *Instance; // r7
  const char *v18; // r1
  void (*v19)(const gameswf::fn_call *); // r2
  int v20; // r8
  int v21; // r0
  int v22; // r0
  _BYTE v23[12]; // [sp+0h] [bp-24h] BYREF
  glitch::IReferenceCounted *v24; // [sp+Ch] [bp-18h] BYREF
  glitch::IReferenceCounted *v25; // [sp+10h] [bp-14h] BYREF
  glitch::IReferenceCounted *v26; // [sp+14h] [bp-10h] BYREF
  glitch::IReferenceCounted *v27; // [sp+18h] [bp-Ch] BYREF
  glitch::IReferenceCounted *v28[2]; // [sp+1Ch] [bp-8h] BYREF

  switch ( *((_DWORD *)this + 1) )
  {
    case 0:
      VoxSoundManager::CreateInstance(this);
      ++*((_DWORD *)this + 1);
      return;
    case 1:
      SavegameManager::loadSettings((SavegameManager *)dword_99F778, 1);
      ++*((_DWORD *)this + 1);
      return;
    case 2:
      v11 = (*(int (__fastcall **)(_DWORD, StateMachine *, _DWORD))(**(_DWORD **)(dword_99F73C + 32) + 12))(
              *(_DWORD *)(dword_99F73C + 32),
              a2,
              LODWORD(a3));
      while ( !PyDataConstants::Load((PyDataConstants *)dword_99F758) )
      {
        if ( (*(int (__fastcall **)(_DWORD))(**(_DWORD **)(dword_99F73C + 32) + 12))(*(_DWORD *)(dword_99F73C + 32))
           - v11 > 49 )
          return;
      }
      v8 = *((_DWORD *)this + 1);
      goto LABEL_22;
    case 3:
      v10 = (*(int (__fastcall **)(_DWORD, StateMachine *, _DWORD))(**(_DWORD **)(dword_99F73C + 32) + 12))(
              *(_DWORD *)(dword_99F73C + 32),
              a2,
              LODWORD(a3));
      while ( !PyDataArrays::Load((PyDataArrays *)dword_99F75C) )
      {
        if ( (*(int (__fastcall **)(_DWORD))(**(_DWORD **)(dword_99F73C + 32) + 12))(*(_DWORD *)(dword_99F73C + 32))
           - v10 > 49 )
          return;
      }
      v8 = *((_DWORD *)this + 1);
      goto LABEL_22;
    case 4:
      if ( *(_BYTE *)(dword_99F778 + 40) )
      {
        v8 = 4;
      }
      else
      {
        SavegameManager::loadSettings((SavegameManager *)dword_99F778, 0);
        v8 = *((_DWORD *)this + 1);
      }
      goto LABEL_22;
    case 5:
      if ( SavegameManager::getLanguage((SavegameManager *)dword_99F778) == 4 )
      {
        Language = SavegameManager::getLanguage((SavegameManager *)dword_99F778);
        nativeLoadMovie("intro_jp.mp4", Language);
        v8 = *((_DWORD *)this + 1);
      }
      else
      {
        if ( SavegameManager::getLanguage((SavegameManager *)dword_99F778) == 5 )
        {
          v22 = SavegameManager::getLanguage((SavegameManager *)dword_99F778);
          nativeLoadMovie("intro_kr.mp4", v22);
        }
        else
        {
          v21 = SavegameManager::getLanguage((SavegameManager *)dword_99F778);
          nativeLoadMovie("intro.mp4", v21);
        }
        v8 = *((_DWORD *)this + 1);
      }
      goto LABEL_22;
    case 6:
      if ( videoDone )
        *((_DWORD *)this + 1) = 7;
      return;
    case 7:
      v6 = *(const char **)(*(_DWORD *)(dword_99F73C + 16) + 224);
      v7 = SavegameManager::getLanguage((SavegameManager *)dword_99F778);
      _DEBUG_OUT("\n\n  ---------------LoadingStep_LoadBackground   %d", v7);
      if ( v7 == 4 )
      {
        glitch::video::CTextureManager::getTexture(
          (glitch::video::CTextureManager *)v28,
          v6,
          "data/3d/textures/splash_final_jp.tga");
        boost::intrusive_ptr<glitch::video::ITexture>::operator=((char *)this + 16, v28);
        if ( v28[0] )
          glitch::IReferenceCounted::drop(v28[0]);
      }
      else if ( v7 == 5 )
      {
        glitch::video::CTextureManager::getTexture(
          (glitch::video::CTextureManager *)&v27,
          v6,
          "data/3d/textures/splash_final_kor.tga");
        boost::intrusive_ptr<glitch::video::ITexture>::operator=((char *)this + 16, &v27);
        if ( v27 )
          glitch::IReferenceCounted::drop(v27);
      }
      else if ( Width_Screen == 800 )
      {
        glitch::video::CTextureManager::getTexture(
          (glitch::video::CTextureManager *)&v26,
          v6,
          "data/3d/textures/splash_final_i9000.tga");
        boost::intrusive_ptr<glitch::video::ITexture>::operator=((char *)this + 16, &v26);
        if ( v26 )
          glitch::IReferenceCounted::drop(v26);
      }
      else if ( Width_Screen == 854 )
      {
        glitch::video::CTextureManager::getTexture(
          (glitch::video::CTextureManager *)&v25,
          v6,
          "data/3d/textures/splash_final_droid.tga");
        boost::intrusive_ptr<glitch::video::ITexture>::operator=((char *)this + 16, &v25);
        if ( v25 )
          glitch::IReferenceCounted::drop(v25);
      }
      else
      {
        glitch::video::CTextureManager::getTexture(
          (glitch::video::CTextureManager *)&v24,
          v6,
          "data/3d/textures/splash_final.tga");
        boost::intrusive_ptr<glitch::video::ITexture>::operator=((char *)this + 16, &v24);
        if ( v24 )
          glitch::IReferenceCounted::drop(v24);
      }
      goto LABEL_13;
    case 8:
      *((_DWORD *)this + 1) = 9;
      return;
    case 9:
      VoxSoundManager::Initialize((VoxSoundManager *)VoxSoundManager::s_instance);
      goto LABEL_3;
    case 0xA:
LABEL_3:
      v4 = (StringManager *)dword_99F760;
      v5 = SavegameManager::getLanguage((SavegameManager *)dword_99F778);
      StringManager::switchPack(v4, v5, 0);
      ++*((_DWORD *)this + 1);
      return;
    case 0xB:
      TrophyManager::CreateInstance(this);
      (**(void (__fastcall ***)(int))TrophyManager::s_instance)(TrophyManager::s_instance);
      TrophyManager::LoadTrophies((TrophyManager *)TrophyManager::s_instance);
      ++*((_DWORD *)this + 1);
      return;
    case 0xC:
      Instance = (MenuManager *)MenuManager::GetInstance(this);
      v20 = (*(int (__fastcall **)(_DWORD))(**(_DWORD **)(dword_99F73C + 32) + 12))(*(_DWORD *)(dword_99F73C + 32));
      break;
    case 0xD:
      Random::s_seed = glitch::os::Timer::getRealTime(this);
      Random::s_syncedSeed = 0;
      dword_99F79C = (*(int (__fastcall **)(_DWORD))(**(_DWORD **)(dword_99F73C + 32) + 12))(*(_DWORD *)(dword_99F73C + 32));
      dword_99F798 = 30;
      Application::ComputeDt((Application *)&Singleton<Application>::s_inst);
      v8 = *((_DWORD *)this + 1);
      goto LABEL_22;
    case 0xE:
      v12 = (MenuManager *)MenuManager::GetInstance(this);
      MenuManager::Reset(v12);
      byte_99F819 = 1;
      if ( dword_99F7F8 == dword_99F7FC )
      {
        if ( *(_BYTE *)(dword_99F778 + 55) )
          MenuByName = MenuManager::GetMenuByName(v12, "menu_language");
        else
          MenuByName = MenuManager::GetMenuByName(v12, "menu_splash");
        dword_9A247C = MenuByName;
      }
      else
      {
        PlayerSavegame::SG_GetSavegameList((PlayerSavegame *)v23, 0);
        if ( Console::DBG_TryStartingLevel((Console *)dword_99F7FC, v13) )
        {
          ++*((_DWORD *)this + 1);
          std::vector<std::string>::~vector(v23);
          return;
        }
        dword_9A247C = MenuManager::GetMenuByName(v12, "menu_splash");
        MenuByName = std::vector<std::string>::~vector(v23);
      }
      *(_BYTE *)(OnlineSingleton<OnlineGameState>::GetInstance(MenuByName) + 38) = 0;
      StateMachine::SwitchState(dword_99F744, (int)&GSFlashMenu::s_inst, 0);
      SavedOption = Application::GetSavedOption((Application *)&Singleton<Application>::s_inst, "AutoOrientation");
      v16 = Application::ResetOrientation((Application *)&Singleton<Application>::s_inst, SavedOption);
      *(_BYTE *)(GCSingleton<GameCenter>::GetInstance(v16) + 14) = 1;
      if ( Application::IsInternetAccessEnabled((Application *)&Singleton<Application>::s_inst) )
      {
        byte_99FC31 = 1;
        CXPlayerManager::Init((int)&Singleton<CXPlayerManager>::s_inst);
      }
      if ( USE_NATIVE_DRM_GAME )
      {
        ALicenseCheck_ValidateLicense(0);
        v8 = *((_DWORD *)this + 1);
      }
      else
      {
LABEL_13:
        v8 = *((_DWORD *)this + 1);
      }
      goto LABEL_22;
    default:
      exit(-1);
      return;
  }
  while ( !MenuManager::Init(Instance, v18, v19) )
  {
    if ( (*(int (__fastcall **)(_DWORD))(**(_DWORD **)(dword_99F73C + 32) + 12))(*(_DWORD *)(dword_99F73C + 32)) - v20 > 49 )
      return;
  }
  v8 = *((_DWORD *)this + 1);
LABEL_22:
  *((_DWORD *)this + 1) = v8 + 1;
}


// ===== 3858ec GSKeyboard::~GSKeyboard() =====
void __fastcall GSKeyboard::~GSKeyboard(GSKeyboard *this)
{
  ;
}


// ===== 3858f0 GSKeyboard::~GSKeyboard() =====
void __fastcall GSKeyboard::~GSKeyboard(GSKeyboard *this)
{
  ;
}


// ===== 3858f4 GSKeyboard::Ctor(StateMachine const*) =====
void __fastcall GSKeyboard::Ctor(GSKeyboard *this, const StateMachine *a2)
{
  ;
}


// ===== 3858f8 GSKeyboard::~GSKeyboard() =====
void __fastcall GSKeyboard::~GSKeyboard(GSKeyboard *this)
{
  GSKeyboard::~GSKeyboard(this);
  CustomFree(this);
}


// ===== 385914 GSKeyboard::ClearString(void) =====
void *__fastcall GSKeyboard::ClearString(GSKeyboard *this)
{
  void *result; // r0

  OnScreenKeyboard::ClearString(this);
  LC_API_MEMSET_0(&GSKeyboard::s_strBuffer1, 0, 0x64u);
  result = LC_API_MEMSET_0(&GSKeyboard::s_strBuffer2, 0, 0x64u);
  if ( dword_9A25B8 != dword_9A25B4 )
  {
    *(_BYTE *)dword_9A25B8 = 0;
    dword_9A25B4 = dword_9A25B8;
  }
  if ( dword_9A25D0 != dword_9A25CC )
  {
    *(_BYTE *)dword_9A25D0 = 0;
    dword_9A25CC = dword_9A25D0;
  }
  return result;
}


// ===== 3859ac GSKeyboard::GSKeyboard(void) =====
void __fastcall GSKeyboard::GSKeyboard(GSKeyboard *this)
{
  *(_DWORD *)this = off_963DF8;
  *((_BYTE *)this + 4) = 0;
  LC_API_MEMSET_0(&GSKeyboard::s_strBuffer1, 0, 0x64u);
  LC_API_MEMSET_0(&GSKeyboard::s_strBuffer2, 0, 0x64u);
}


// ===== 385a18 GSKeyboard::GSKeyboard(void) =====
void __fastcall GSKeyboard::GSKeyboard(GSKeyboard *this)
{
  *(_DWORD *)this = off_963DF8;
  *((_BYTE *)this + 4) = 0;
  LC_API_MEMSET_0(&GSKeyboard::s_strBuffer1, 0, 0x64u);
  LC_API_MEMSET_0(&GSKeyboard::s_strBuffer2, 0, 0x64u);
}


// ===== 385a84 GSKeyboard::Draw(StateMachine const*) =====
int __fastcall GSKeyboard::Draw(GSKeyboard *this, const StateMachine *a2, int a3)
{
  return StateMachine::RecurseDraw((int)a2, (int)a2, a3);
}


// ===== 385a8c GSKeyboard::Update(StateMachine *,double) =====
_DWORD *__fastcall GSKeyboard::Update(GSKeyboard *this, StateMachine *a2, double a3)
{
  int v5; // r6
  MenuManager *Instance; // r0
  _DWORD *result; // r0
  int v8; // r1
  const char *savedregs; // [sp+0h] [bp+0h]

  if ( *((_BYTE *)this + 4) )
  {
    v5 = (unsigned __int8)OnScreenKeyboard::s_isOver;
    if ( !OnScreenKeyboard::s_isOver )
    {
      Instance = (MenuManager *)MenuManager::GetInstance(this);
      return (_DWORD *)MenuManager::Update(Instance, v5);
    }
    v8 = 0;
    goto LABEL_5;
  }
  *((_BYTE *)this + 4) = 1;
  result = (_DWORD *)OnScreenKeyboard::GetString(
                       (OnScreenKeyboard *)dword_9A25B8,
                       (const char *)GSKeyboard::s_strBuffer,
                       (char *)(GSKeyboard::s_tmpSize + 1),
                       (char *)dword_9A25D0,
                       savedregs);
  v8 = (int)result;
  if ( !result )
  {
LABEL_5:
    *((_BYTE *)this + 4) = v8;
    return StateMachine::PopState((int)a2, v8);
  }
  return result;
}


// ===== 385b48 GSKeyboard::Dtor(StateMachine const*) =====
int __fastcall GSKeyboard::Dtor(GSKeyboard *this, const StateMachine *a2)
{
  *((_BYTE *)this + 4) = 0;
  return OnScreenKeyboard::ReleaseKeyboard(this);
}


// ===== 385b54 GSKeyboard::GetLastString(void) =====
void *__fastcall GSKeyboard::GetLastString(GSKeyboard *this)
{
  if ( dword_9A25B4 - dword_9A25B8 == 10 && !memcmp((const void *)dword_9A25B8, "GLPassword", 0xAu) )
    return &GSKeyboard::s_strBuffer2;
  else
    return &GSKeyboard::s_strBuffer1;
}


// ===== 385bbc std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block(uint) [clone] =====
void std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block()
{
  ;
}


// ===== 385bc0 `global constructor keyed to'.._.._sources_Game_States_GSKeyboard.cpp =====
int `global constructor keyed to'.._.._sources_Game_States_GSKeyboard.cpp()
{
  int result; // r0

  dword_9A24CC = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9A24C8 = 1056964608;
  GSKeyboard::GSKeyboard((GSKeyboard *)&GSKeyboard::s_inst);
  _aeabi_atexit((int)&GSKeyboard::s_inst, (int)GSKeyboard::~GSKeyboard, (int)&_dso_handle);
  dword_9A25B4 = (int)&GSKeyboard::s_tmpTitle;
  dword_9A25B8 = (int)&GSKeyboard::s_tmpTitle;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block();
  *(_BYTE *)dword_9A25B4 = 0;
  _aeabi_atexit((int)&GSKeyboard::s_tmpTitle, (int)std::string::~string, (int)&_dso_handle);
  dword_9A25CC = (int)&GSKeyboard::s_tmpValue;
  dword_9A25D0 = (int)&GSKeyboard::s_tmpValue;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block();
  *(_BYTE *)dword_9A25CC = 0;
  result = _aeabi_atexit((int)&GSKeyboard::s_tmpValue, (int)std::string::~string, (int)&_dso_handle);
  if ( (`guard variable for'Singleton<Application>::s_inst & 1) == 0 )
  {
    `guard variable for'Singleton<Application>::s_inst = 1;
    Application::Application((Application *)&Singleton<Application>::s_inst);
    return _aeabi_atexit((int)&Singleton<Application>::s_inst, (int)Application::~Application, (int)&_dso_handle);
  }
  return result;
}


// ===== 385cf0 GSKeyboard::QueryString(char const*,uint,char const*,bool) =====
_DWORD *__fastcall GSKeyboard::QueryString(GSKeyboard *this, const char *a2, const char *a3, const char *a4, bool a5)
{
  const char *v9; // r6
  size_t v10; // r0
  size_t v11; // r0

  if ( LC_API_STRCMP_0((const char *)this, "GLPassword") )
    GSKeyboard::s_strBuffer = (int)&GSKeyboard::s_strBuffer1;
  else
    GSKeyboard::s_strBuffer = (int)&GSKeyboard::s_strBuffer2;
  if ( byte_9A24D4 )
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
        "IsOpened() == false",
        "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\States\\GSKeyboard.cpp",
        39);
    }
  }
  if ( !a4 )
  {
    LC_API_MEMSET_0((void *)GSKeyboard::s_strBuffer, 0, 0x64u);
    if ( a3 )
      LC_API_STRCPY_0((char *)GSKeyboard::s_strBuffer, a3);
  }
  if ( (unsigned int)a2 >= 0x64 )
    a2 = (const char *)&dword_64;
  v9 = (const char *)GSKeyboard::s_strBuffer;
  v10 = LC_API_STRLEN_0((const char *)GSKeyboard::s_strBuffer);
  std::string::_M_assign((std::string *const)&GSKeyboard::s_tmpValue, v9, &v9[v10]);
  v11 = LC_API_STRLEN_0((const char *)this);
  std::string::_M_assign((std::string *const)&GSKeyboard::s_tmpTitle, (const char *)this, (const char *)this + v11);
  GSKeyboard::s_tmpSize = (int)a2;
  return StateMachine::PushState(dword_99F744, (int)&GSKeyboard::s_inst, 0);
}


// ===== 385ea0 GSLevel::Reload(void) =====
int __fastcall GSLevel::Reload(GSLevel *this)
{
  (*(void (__fastcall **)(GSLevel *, _DWORD))(*(_DWORD *)this + 12))(this, 0);
  return (*(int (__fastcall **)(GSLevel *, _DWORD))(*(_DWORD *)this + 8))(this, 0);
}


// ===== 385ed0 GSLevel::Pause(StateMachine const*) =====
void __fastcall GSLevel::Pause(GSLevel *this, const StateMachine *a2)
{
  ;
}


// ===== 385ed4 GSLevel::WakeUp(StateMachine const*) =====
void __fastcall GSLevel::WakeUp(GSLevel *this, const StateMachine *a2)
{
  ;
}


// ===== 385ed8 GSLevel::GSLevel(void) =====
void __fastcall GSLevel::GSLevel(GSLevel *this)
{
  _DWORD *v2; // r0

  *(_DWORD *)this = off_963E30;
  v2 = (_DWORD *)((char *)this + 4);
  *((_DWORD *)this + 5) = v2;
  *((_DWORD *)this + 6) = v2;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block(v2, 0x10u);
  **((_BYTE **)this + 5) = 0;
  *((_DWORD *)this + 13) = 0;
}


// ===== 385f30 GSLevel::GSLevel(void) =====
void __fastcall GSLevel::GSLevel(GSLevel *this)
{
  _DWORD *v2; // r0

  *(_DWORD *)this = off_963E30;
  v2 = (_DWORD *)((char *)this + 4);
  *((_DWORD *)this + 5) = v2;
  *((_DWORD *)this + 6) = v2;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block(v2, 0x10u);
  **((_BYTE **)this + 5) = 0;
  *((_DWORD *)this + 13) = 0;
}


// ===== 385f88 GSLevel::~GSLevel() =====
void __fastcall GSLevel::~GSLevel(GSLevel *this)
{
  *(_DWORD *)this = off_963E30;
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block((std::priv::_String_base<char,std::allocator<char> > *const)((char *)this + 4));
}


// ===== 385fbc GSLevel::~GSLevel() =====
void __fastcall GSLevel::~GSLevel(GSLevel *this)
{
  GSLevel::~GSLevel(this);
  CustomFree(this);
}


// ===== 385fd8 GSLevel::~GSLevel() =====
void __fastcall GSLevel::~GSLevel(GSLevel *this)
{
  *(_DWORD *)this = off_963E30;
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block((std::priv::_String_base<char,std::allocator<char> > *const)((char *)this + 4));
}


// ===== 38600c GSLevel::Draw2D(StateMachine const*) =====
int __fastcall GSLevel::Draw2D(Level **this, const StateMachine *a2)
{
  return Level::Draw2D(*(this + 13));
}


// ===== 386014 GSLevel::Draw(StateMachine const*) =====
void __fastcall GSLevel::Draw(Level **this, const StateMachine *a2)
{
  MenuManager *v3; // r0
  MenuManager *Instance; // r0

  v3 = (MenuManager *)Level::Draw(*(this + 13));
  Instance = (MenuManager *)MenuManager::GetInstance(v3);
  MenuManager::Draw(Instance, (int)*(this + 14) > 3);
}


// ===== 386040 GSLevel::Resume(StateMachine const*) =====
DH2_PlayerInfoCharacterPrefix *__fastcall GSLevel::Resume(GSLevel *this, const StateMachine *a2)
{
  DH2_PlayerInfoCharacterPrefix *result; // r0
  DH2_PlayerInfoCharacterPrefix *LocalPlayer; // r0

  result = PlayerManager::GetLocalPlayer((PlayerManager *)dword_99F76C, 0, 1);
  if ( result->character_660 )
  {
    LocalPlayer = PlayerManager::GetLocalPlayer((PlayerManager *)dword_99F76C, 0, 1);
    CharAI::AI_SetTarget((CharAI *)((char *)LocalPlayer->character_660 + 968), nullptr, 0);
    result = PlayerManager::GetLocalPlayer((PlayerManager *)dword_99F76C, 0, 1);
    *((_BYTE *)result->character_660 + 1044) = 0;
  }
  return result;
}


// ===== 3860bc GSLevel::Dtor(StateMachine const*) =====
Level *__fastcall GSLevel::Dtor(GSLevel *this, const StateMachine *a2)
{
  Level *result; // r0
  MenuManager *v4; // r0
  MenuManager *Instance; // r0
  int v6; // r3

  result = *((Level **)this + 13);
  if ( result )
  {
    v4 = (MenuManager *)Level::Unload(result);
    Instance = (MenuManager *)MenuManager::GetInstance(v4);
    result = (Level *)MenuManager::GetMenuByName(Instance, "menu_HUD_0");
    if ( result )
      result = (Level *)(*(int (__fastcall **)(Level *))(*(_DWORD *)result + 16))(result);
    v6 = *((_DWORD *)this + 13);
    if ( v6 )
    {
      result = (Level *)(*(int (__fastcall **)(_DWORD))(*(_DWORD *)v6 + 4))(*((_DWORD *)this + 13));
      *((_DWORD *)this + 13) = 0;
    }
  }
  GSLevel::s_level = 0;
  return result;
}


// ===== 386144 gameswf::weak_ptr<gameswf::character>::check_proxy(void) =====
void __fastcall gameswf::weak_ptr<gameswf::character>::check_proxy(int a1)
{
  _BYTE *v2; // r0

  if ( *(_DWORD *)(a1 + 4) )
  {
    v2 = *(_BYTE **)a1;
    if ( !v2[4] )
    {
      if ( (*(_DWORD *)v2)-- == 1 )
        gameswf::free_internal(v2);
      *(_DWORD *)(a1 + 4) = 0;
      *(_DWORD *)a1 = 0;
    }
  }
}


// ===== 386190 GSLevel::Ctor(StateMachine const*) =====
int __fastcall GSLevel::Ctor(GSLevel *this, const StateMachine *a2)
{
  char *v3; // r9
  Level *v4; // r6
  MenuManager *v5; // r0
  MenuManager *Instance; // r0
  RenderFX **MenuByName; // r4
  int result; // r0
  MenuManager *v9; // r0
  RenderFX *v10; // r5
  int v11; // r0

  AnimSetManager::Flush((AnimSetManager *)&Singleton<AnimSetManager>::s_inst);
  v3 = *((char **)this + 6);
  v4 = (Level *)operator new(0x1ACu, 0);
  Level::Level(
    v4,
    v3,
    *((_DWORD *)this + 7),
    *((_DWORD *)this + 8),
    *((_DWORD *)this + 9),
    *((_DWORD *)this + 10),
    *((_BYTE *)this + 44),
    *((_BYTE *)this + 45),
    *((_DWORD *)this + 12),
    *((_DWORD *)this + 16));
  *((_DWORD *)this + 14) = 1;
  *((_DWORD *)this + 13) = v4;
  GSLevel::s_level = (int)v4;
  *((_BYTE *)this + 60) = 1;
  Instance = (MenuManager *)MenuManager::GetInstance(v5);
  MenuByName = (RenderFX **)MenuManager::GetMenuByName(Instance, "menu_Loading");
  result = GetOnline();
  if ( !*(_BYTE *)(result + 5)
    || (result = OnlineSingleton<OnlineGameState>::GetInstance(), *(_DWORD *)(result + 52) != 3)
    || (v11 = MenuManager::GetInstance((MenuManager *)result),
        (result = (*(int (__fastcall **)(_DWORD, RenderFX **))(**(_DWORD **)(v11 + 244) + 64))(
                    *(_DWORD *)(v11 + 244),
                    MenuByName)) == 0) )
  {
    if ( MenuByName )
    {
      v9 = (MenuManager *)MenuManager::GetInstance((MenuManager *)result);
      MenuManager::PushMenu(v9, (MenuBase *)MenuByName);
      v10 = MenuByName[1];
      gameswf::weak_ptr<gameswf::character>::check_proxy((int)(MenuByName + 18));
      return RenderFX::InvokeASCallback(v10, MenuByName[19], "onProgress", nullptr, 0);
    }
  }
  return result;
}


// ===== 3862d8 `global constructor keyed to'.._.._sources_Game_States_GSLevel.cpp =====
int __fastcall `global constructor keyed to'.._.._sources_Game_States_GSLevel.cpp(CMessage *a1)
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

  dword_9A25E0 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9A25DC = 1056964608;
  messageCreationMap = CMessage::InitializeMessageRegistration(a1);
  byte_9A25E5 = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgStartGame",
                  (const char *)GetNewInstance<CMsgStartGame>,
                  v1);
  byte_9A25E6 = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgControllerAction",
                  (const char *)GetNewInstance<CMsgControllerAction>,
                  v2);
  byte_9A25E7 = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgAttackResult",
                  (const char *)GetNewInstance<CMsgAttackResult>,
                  v3);
  byte_9A25E8 = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgRaisedEvent",
                  (const char *)GetNewInstance<CMsgRaisedEvent>,
                  v4);
  byte_9A25E9 = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgMenuReady",
                  (const char *)GetNewInstance<CMsgMenuReady>,
                  v5);
  byte_9A25EA = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgScriptCmd",
                  (const char *)GetNewInstance<CMsgScriptCmd>,
                  v6);
  byte_9A25EB = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgInitialSetup",
                  (const char *)GetNewInstance<CMsgInitialSetup>,
                  v7);
  byte_9A25EC = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgQuestsSync",
                  (const char *)GetNewInstance<CMsgQuestsSync>,
                  v8);
  byte_9A25ED = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgDropLoot",
                  (const char *)GetNewInstance<CMsgDropLoot>,
                  v9);
  byte_9A25EE = CMessage::RegisterMessageType((CMessage *)"CMsgIsHost", (const char *)GetNewInstance<CMsgIsHost>, v10);
  byte_9A25EF = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgSpawnObject",
                  (const char *)GetNewInstance<CMsgSpawnObject>,
                  v11);
  byte_9A25F0 = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgGlobalDeath",
                  (const char *)GetNewInstance<CMsgGlobalDeath>,
                  v12);
  v14 = (CMessage *)CMessage::RegisterMessageType(
                      (CMessage *)"CMsgAskResendAttributes",
                      (const char *)GetNewInstance<CMsgAskResendAttributes>,
                      v13);
  byte_9A25F1 = (char)v14;
  byte_9A25F2 = CMessage::TerminateMessageRegistration(v14);
  GSLevel::GSLevel((GSLevel *)&GSLevel::s_gsLevel);
  result = _aeabi_atexit((int)&GSLevel::s_gsLevel, (int)GSLevel::~GSLevel, (int)&_dso_handle);
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


// ===== 3865e0 std::string::_M_range_initialize(char const*,char const*) [clone] =====
char *__fastcall std::string::_M_range_initialize(std::string *this, const char *a2, const char *a3)
{
  size_t v5; // r4
  char *result; // r0

  v5 = a2 - "Lua_DumpCalls";
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block(this, a2 - "Lua_DumpCalls" + 1);
  result = this->_M_start_of_storage._M_data;
  if ( a2 != "Lua_DumpCalls" )
    result = (char *)memcpy(result, "Lua_DumpCalls", v5) + v5;
  this->_M_finish = result;
  *result = 0;
  return result;
}


// ===== 386630 GSLevel::Update(StateMachine *,double) =====
int __fastcall GSLevel::Update(int this, double a2)
{
  int v3; // r6
  const char *v4; // r2
  int v5; // r3
  MenuManager *Instance; // r0
  const char *v7; // r2
  int Switch; // [sp+4h] [bp-40h]
  std::priv::_String_base<char,std::allocator<char> > v9; // [sp+Ch] [bp-38h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v10; // [sp+24h] [bp-20h] BYREF

  v3 = this;
  if ( !byte_99F818 )
  {
    switch ( *(_DWORD *)(this + 56) )
    {
      case 1:
        *(_DWORD *)(this + 56) = 2;
        v5 = *(_DWORD *)(this + 52);
        break;
      case 2:
        this = Level::Load(*(Level **)(this + 52));
        *(_DWORD *)(v3 + 56) = 3;
        v5 = *(_DWORD *)(v3 + 52);
        break;
      case 3:
        this = Level::Update(*(Level **)(this + 52), 0);
        v5 = *(_DWORD *)(v3 + 52);
        if ( *(_DWORD *)(v5 + 304) == 38 )
          *(_DWORD *)(v3 + 56) = 4;
        break;
      case 4:
        LuaScript::s_numCalls = 0;
        LuaScript::s_dumpCallList = 0;
        DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
        v10._M_finish = (char *)&v10;
        v10._M_start_of_storage._M_data = (char *)&v10;
        std::string::_M_range_initialize((std::string *)&v10, "", v4);
        Switch = DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, (const std::string *)&v10);
        std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v10);
        if ( Switch )
        {
          LuaScript::s_dumpCallList = 1;
          DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
          v9._M_finish = (char *)&v9;
          v9._M_start_of_storage._M_data = (char *)&v9;
          std::string::_M_range_initialize((std::string *)&v9, "", v7);
          DebugSwitches::SetSwitch((DebugSwitches *)&DebugSwitches::s_inst, (const std::string *)&v9, 0);
          std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v9);
        }
        this = Level::Update(*(Level **)(v3 + 52), 0);
        goto LABEL_6;
      default:
LABEL_6:
        v5 = *(_DWORD *)(v3 + 52);
        break;
    }
    if ( !v5 || !*(_BYTE *)(v5 + 325) && (*(int *)(v5 + 304) <= 1 || *(int *)(v5 + 304) > 26) )
    {
      Instance = (MenuManager *)MenuManager::GetInstance((MenuManager *)this);
      return MenuManager::Update(Instance, 1);
    }
  }
  return this;
}


// ===== 386818 GSLevel::LoadLevel(char const*,int,uint,uint,uint,bool,bool,int,int) =====
int __fastcall GSLevel::LoadLevel(
        GSLevel *this,
        const char *a2,
        int a3,
        int a4,
        unsigned int a5,
        char a6,
        bool a7,
        int a8,
        int a9,
        int a10)
{
  const char *v12; // r2

  v12 = (char *)this + LC_API_STRLEN_0((const char *)this);
  std::string::_M_assign(&stru_9A25F8, (const char *)this, v12);
  dword_9A2614 = a3;
  dword_9A2610 = (int)a2;
  dword_9A2618 = a4;
  dword_9A261C = a5;
  byte_9A2620 = a6;
  byte_9A2621 = a7;
  dword_9A2624 = a8;
  dword_9A2634 = a9;
  return StateMachine::SwitchState((StateMachine *)dword_99F744, (StateBase *)&GSLevel::s_gsLevel, 0);
}


// ===== 3868b8 GSLevelMap::GSLevelMap(void) =====
void __fastcall GSLevelMap::GSLevelMap(GSLevelMap *this)
{
  *((_DWORD *)this + 1) = -1;
  *(_DWORD *)this = off_963E68;
}


// ===== 3868e4 GSLevelMap::GSLevelMap(void) =====
void __fastcall GSLevelMap::GSLevelMap(GSLevelMap *this)
{
  *((_DWORD *)this + 1) = -1;
  *(_DWORD *)this = off_963E68;
}


// ===== 386910 GSLevelMap::~GSLevelMap() =====
void __fastcall GSLevelMap::~GSLevelMap(GSLevelMap *this)
{
  ;
}


// ===== 386914 GSLevelMap::~GSLevelMap() =====
void __fastcall GSLevelMap::~GSLevelMap(GSLevelMap *this)
{
  ;
}


// ===== 386918 `global constructor keyed to'.._.._sources_Game_States_GSLevelMap.cpp =====
void `global constructor keyed to'.._.._sources_Game_States_GSLevelMap.cpp()
{
  dword_9A2668 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9A2664 = 1056964608;
}


// ===== 386938 GSLevelMap::Draw(StateMachine const*) =====
int __fastcall GSLevelMap::Draw(LevelMap **this, const StateMachine *a2)
{
  return LevelMap::Draw(*(this + 2));
}


// ===== 386940 GSLevelMap::Update(StateMachine *,double) =====
int __fastcall GSLevelMap::Update(LevelMap **this, double a2)
{
  return LevelMap::Update(*(this + 2));
}


// ===== 386948 GSLevelMap::Dtor(StateMachine const*) =====
int __fastcall GSLevelMap::Dtor(LevelMap **this, const StateMachine *a2)
{
  int result; // r0
  int v4; // r3

  result = LevelMap::Unload(*(this + 2));
  v4 = (int)*(this + 2);
  if ( v4 )
  {
    result = (*(int (__fastcall **)(_DWORD))(*(_DWORD *)v4 + 4))(*(this + 2));
    *(this + 2) = nullptr;
  }
  return result;
}


// ===== 386980 GSLevelMap::Ctor(StateMachine const*) =====
int __fastcall GSLevelMap::Ctor(GSLevelMap *this, const StateMachine *a2)
{
  LevelMap *v3; // r4

  v3 = (LevelMap *)operator new(8u, 0);
  LevelMap::LevelMap(v3, *((_DWORD *)this + 1));
  *((_DWORD *)this + 2) = v3;
  return LevelMap::Load(v3);
}


// ===== 3869b0 GSLevelMap::Inst(int) =====
void *__fastcall GSLevelMap::Inst(GSLevelMap *this, int a2)
{
  if ( (`guard variable for'GSLevelMap::Inst(int)::gsLevelMap & 1) == 0
    && _cxa_guard_acquire(&`guard variable for'GSLevelMap::Inst(int)::gsLevelMap) )
  {
    GSLevelMap::GSLevelMap((GSLevelMap *)&GSLevelMap::Inst(int)::gsLevelMap);
    _cxa_guard_release(&`guard variable for'GSLevelMap::Inst(int)::gsLevelMap);
    _aeabi_atexit((int)&GSLevelMap::Inst(int)::gsLevelMap, (int)GSLevelMap::~GSLevelMap, (int)&_dso_handle);
  }
  dword_9A2674 = (int)this;
  return &GSLevelMap::Inst(int)::gsLevelMap;
}


// ===== 386a40 GSLevelMap::~GSLevelMap() =====
void __fastcall GSLevelMap::~GSLevelMap(GSLevelMap *this)
{
  GSLevelMap::~GSLevelMap(this);
  CustomFree(this);
}


// ===== 386a5c GSTest::GSTest(void) =====
void __fastcall GSTest::GSTest(GSTest *this)
{
  *(_DWORD *)this = off_963ED0;
}


// ===== 386a80 GSTest::GSTest(void) =====
void __fastcall GSTest::GSTest(GSTest *this)
{
  *(_DWORD *)this = off_963ED0;
}


// ===== 386aa4 GSTest::~GSTest() =====
void __fastcall GSTest::~GSTest(GSTest *this)
{
  ;
}


// ===== 386aa8 GSTest::~GSTest() =====
void __fastcall GSTest::~GSTest(GSTest *this)
{
  ;
}


// ===== 386aac GSTest::Ctor(StateMachine const*) =====
void __fastcall GSTest::Ctor(GSTest *this, const StateMachine *a2)
{
  ;
}


// ===== 386ab0 GSTest::Dtor(StateMachine const*) =====
void __fastcall GSTest::Dtor(GSTest *this, const StateMachine *a2)
{
  ;
}


// ===== 386ab4 TestUD::getUDTypeName(void) =====
const char *__fastcall TestUD::getUDTypeName(TestUD *this)
{
  return "TestUD";
}


// ===== 386ac4 TestUD2::getUDTypeName(void) =====
const char *__fastcall TestUD2::getUDTypeName(TestUD2 *this)
{
  return "TestUD2";
}


// ===== 386ad4 TestUD2::Test2(sfc::script::lua::Arguments const&,sfc::script::lua::ReturnValues &,void *) =====
void TestUD2::Test2()
{
  ;
}


// ===== 386ad8 TestUD::~TestUD() =====
void __fastcall TestUD::~TestUD(TestUD *this)
{
  ;
}


// ===== 386adc GSTest::Draw(StateMachine const*) =====
void __fastcall GSTest::Draw(GSTest *this, const StateMachine *a2)
{
  ;
}


// ===== 386ae0 TestUD2::~TestUD2() =====
void __fastcall TestUD2::~TestUD2(TestUD2 *this)
{
  ;
}


// ===== 386ae4 TestUD2::~TestUD2() =====
void __fastcall TestUD2::~TestUD2(TestUD2 *this)
{
  *(_DWORD *)this = off_95C650;
  CustomFree(this);
}


// ===== 386b18 TestUD::~TestUD() =====
void __fastcall TestUD::~TestUD(TestUD *this)
{
  *(_DWORD *)this = off_95C650;
  CustomFree(this);
}


// ===== 386b4c GSTest::~GSTest() =====
void __fastcall GSTest::~GSTest(GSTest *this)
{
  GSTest::~GSTest(this);
  CustomFree(this);
}


// ===== 386b68 `global constructor keyed to'.._.._sources_Game_States_GSTest.cpp =====
int `global constructor keyed to'.._.._sources_Game_States_GSTest.cpp()
{
  int result; // r0

  dword_9A2684 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9A2680 = 1056964608;
  GSTest::GSTest((GSTest *)&GSTest::s_inst);
  result = _aeabi_atexit((int)&GSTest::s_inst, (int)GSTest::~GSTest, (int)&_dso_handle);
  if ( (`guard variable for'Singleton<Application>::s_inst & 1) == 0 )
  {
    `guard variable for'Singleton<Application>::s_inst = 1;
    Application::Application((Application *)&Singleton<Application>::s_inst);
    return _aeabi_atexit((int)&Singleton<Application>::s_inst, (int)Application::~Application, (int)&_dso_handle);
  }
  return result;
}


// ===== 386c20 sfc::script::lua::Binder::bindMethod<TestUD>(char const*,void (TestUD::*)(sfc::script::lua::Arguments const&,sfc::script::lua::ReturnValues &)) [clone] =====
int __fastcall sfc::script::lua::Binder::bindMethod<TestUD>(sfc::script::lua::Binder *this, void *a2, void *a3)
{
  int result; // r0

  result = *((_DWORD *)this + 2);
  if ( result )
  {
    if ( !a2 && ((unsigned __int8)a3 & 1) == 0 )
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
          "method",
          "..\\..\\project_vs2005\\Game/..\\..\\sources/Utils/sfc/script/lua/Binder.hpp",
          135);
      }
    }
    return sfc::script::lua::Binder::_bindMethod(this, "TestMethod", a2, a3);
  }
  return result;
}


// ===== 386d00 TestUD::createBindings(sfc::script::lua::Binder &) =====
int __fastcall TestUD::createBindings(TestUD *this, sfc::script::lua::Binder *a2)
{
  printf("Bindings for %p\n", this);
  sfc::script::lua::Binder::bindFunction(
    a2,
    "TestFunc",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))TestUD::TestFunc,
    this);
  sfc::script::lua::Binder::bindMethod<TestUD>(a2, TestUD::TestMethod, nullptr);
  return sfc::script::lua::Binder::bindMethod(
           (int)a2,
           "TestStaticMethod",
           (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))TestUD::TestStaticMethod);
}


// ===== 386da4 TestUD2::createBindings(sfc::script::lua::Binder &) =====
int __fastcall TestUD2::createBindings(TestUD2 *this, sfc::script::lua::Binder *a2)
{
  TestUD::createBindings(this, a2);
  sfc::script::lua::Binder::bindFunction(
    a2,
    "Test2",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))TestUD2::Test2,
    this);
  return sfc::script::lua::Binder::bindMethod(
           (int)a2,
           "Test2",
           (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))TestUD2::Test2);
}


// ===== 386e00 std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block(uint) [clone] =====
void std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block()
{
  ;
}


// ===== 386e04 std::priv::_String_base<wchar_t,std::allocator<wchar_t>>::_M_allocate_block(uint) [clone] =====
void std::priv::_String_base<wchar_t,std::allocator<wchar_t>>::_M_allocate_block()
{
  ;
}


// ===== 386e08 TestUD::TestStaticMethod(sfc::script::lua::Arguments const&,sfc::script::lua::ReturnValues &,void *) =====
void __fastcall TestUD::TestStaticMethod(
        TestUD *this,
        const sfc::script::lua::Arguments *a2,
        sfc::script::lua::ReturnValues *a3,
        void *a4)
{
  printf(
    "In TestStaticMethod(), This|Ref=%p, Args=%u\n",
    a3,
    -1227133513 * ((*(_DWORD *)(*((_DWORD *)this + 1) + 4) - **((_DWORD **)this + 1)) >> 4));
  sfc::script::lua::ReturnValues::pushUserData(a2, a3);
}


// ===== 386e64 TestUD::TestMethod(sfc::script::lua::Arguments const&,sfc::script::lua::ReturnValues &) =====
void __fastcall TestUD::TestMethod(
        TestUD *this,
        const sfc::script::lua::Arguments *a2,
        sfc::script::lua::ReturnValues *a3)
{
  printf(
    "In TestMethod(), This=%p, Args=%u\n",
    this,
    -1227133513 * ((*(_DWORD *)(*((_DWORD *)a2 + 1) + 4) - **((_DWORD **)a2 + 1)) >> 4));
  sfc::script::lua::ReturnValues::pushUserData(a3, this);
}


// ===== 386ec0 TestUD::TestFunc(sfc::script::lua::Arguments const&,sfc::script::lua::ReturnValues &,void *) =====
void __fastcall TestUD::TestFunc(
        TestUD *this,
        const sfc::script::lua::Arguments *a2,
        sfc::script::lua::ReturnValues *a3,
        void *a4)
{
  printf(
    "In TestFunc(), Ref=%p, Args=%u\n",
    a3,
    -1227133513 * ((*(_DWORD *)(*((_DWORD *)this + 1) + 4) - **((_DWORD **)this + 1)) >> 4));
  sfc::script::lua::ReturnValues::pushUserData(a2, a3);
  sfc::script::lua::ReturnValues::pushUserData(a2, a3);
}


// ===== 386f28 sfc::script::lua::Arguments::pushUserData(sfc::script::lua::UserData *) =====
void __fastcall sfc::script::lua::Arguments::pushUserData(
        sfc::script::lua::Arguments *this,
        sfc::script::lua::UserData *a2)
{
  void **v2; // r6
  _BYTE v3[112]; // [sp+4h] [bp-74h] BYREF

  v2 = *((void ***)this + 1);
  sfc::script::lua::Value::Value((sfc::script::lua::Value *)v3, a2);
  std::vector<sfc::script::lua::Value>::push_back(v2, (const sfc::script::lua::Value *)v3);
  sfc::script::lua::Value::~Value((sfc::script::lua::Value *)v3);
}


// ===== 386f90 GSTest::Update(StateMachine *,double) =====
void __fastcall GSTest::Update(GSTest *this, double a2)
{
  InputManager *Instance; // r0
  int FirstConnectedGamepad; // r6
  int v5; // r8
  sfc::script::lua::UserData *v6; // r0
  sfc::script::lua::UserData *v7; // r0
  sfc::script::lua::UserData *v8; // r0
  _BYTE v9[8]; // [sp+0h] [bp-ACh] BYREF
  void (**v10)(sfc::script::lua::UserData *__hidden); // [sp+8h] [bp-A4h] BYREF
  _BYTE v11[16]; // [sp+Ch] [bp-A0h] BYREF
  int v12; // [sp+1Ch] [bp-90h] BYREF

  Instance = (InputManager *)InputManager::GetInstance(this);
  FirstConnectedGamepad = InputManager::GetFirstConnectedGamepad(Instance);
  if ( FirstConnectedGamepad
    && *(float *)(FirstConnectedGamepad + 24) >= (float)((float)((float)(*(float *)(FirstConnectedGamepad + 36)
                                                                       + *(float *)(FirstConnectedGamepad + 32))
                                                               + 1.0)
                                                       * 0.5) )
  {
    v5 = *(unsigned __int8 *)(FirstConnectedGamepad + 40);
    if ( !*(_BYTE *)(FirstConnectedGamepad + 40) )
    {
      LuaManager::FlushBufferedFiles((LuaManager *)dword_99F768);
      LuaScript::LuaScript((LuaScript *)v11, v5);
      v10 = off_963EA0;
      puts("====================================================");
      sfc::script::lua::Binder::bindFunction(
        (sfc::script::lua::Binder *)&v12,
        "TestFunc",
        (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))TestUD::TestFunc,
        &v10);
      LuaScript::Load((LuaScript *)v11, "data/scripts/test");
      sfc::script::lua::Arguments::Arguments((sfc::script::lua::Arguments *)v9);
      v6 = (sfc::script::lua::UserData *)CustomAlloc(4u);
      *(_DWORD *)v6 = off_963EA0;
      sfc::script::lua::Arguments::pushUserData((sfc::script::lua::Arguments *)v9, v6);
      v7 = (sfc::script::lua::UserData *)CustomAlloc(4u);
      *(_DWORD *)v7 = off_963EB8;
      sfc::script::lua::Arguments::pushUserData((sfc::script::lua::Arguments *)v9, v7);
      v8 = (sfc::script::lua::UserData *)CustomAlloc(4u);
      *(_DWORD *)v8 = off_963EB8;
      sfc::script::lua::Arguments::pushUserData((sfc::script::lua::Arguments *)v9, v8);
      sfc::script::lua::Arguments::pushPointer((sfc::script::lua::Arguments *)v9, v11);
      LuaScript::Call((LuaScript *)v11, (glitch::core *)"TestTestTest", (const sfc::script::lua::Arguments *)v9);
      sfc::script::lua::Arguments::~Arguments((sfc::script::lua::Arguments *)v9);
      v10 = off_95C650;
      LuaScript::~LuaScript((LuaScript *)v11);
    }
  }
}


// ===== 387158 GSViewer::GSViewer(void) =====
void __fastcall GSViewer::GSViewer(GSViewer *this)
{
  *((_DWORD *)this + 3) = 0;
  *((_DWORD *)this + 1) = 0;
  *(_DWORD *)this = off_963F08;
  *((_DWORD *)this + 2) = 0;
}


// ===== 38718c GSViewer::GSViewer(void) =====
void __fastcall GSViewer::GSViewer(GSViewer *this)
{
  *((_DWORD *)this + 3) = 0;
  *((_DWORD *)this + 1) = 0;
  *(_DWORD *)this = off_963F08;
  *((_DWORD *)this + 2) = 0;
}


// ===== 3871c0 GSViewer::~GSViewer() =====
void __fastcall GSViewer::~GSViewer(GSViewer *this)
{
  ;
}


// ===== 3871c4 GSViewer::~GSViewer() =====
void __fastcall GSViewer::~GSViewer(GSViewer *this)
{
  ;
}


// ===== 3871c8 GSViewer::Dtor(StateMachine const*) =====
int __fastcall GSViewer::Dtor(GSViewer *this, const StateMachine *a2)
{
  _DWORD *v2; // r3
  _DWORD *v4; // r3
  _DWORD *v5; // r3

  v2 = *((_DWORD **)this + 1);
  if ( v2 )
  {
    glitch::IReferenceCounted::drop((glitch::IReferenceCounted *)((char *)v2 + *(_DWORD *)(*v2 - 12)));
    *((_DWORD *)this + 1) = 0;
  }
  v4 = *((_DWORD **)this + 2);
  if ( v4 )
  {
    glitch::IReferenceCounted::drop((glitch::IReferenceCounted *)((char *)v4 + *(_DWORD *)(*v4 - 12)));
    *((_DWORD *)this + 2) = 0;
  }
  v5 = *((_DWORD **)this + 3);
  if ( v5 )
  {
    glitch::IReferenceCounted::drop((glitch::IReferenceCounted *)((char *)v5 + *(_DWORD *)(*v5 - 12)));
    *((_DWORD *)this + 3) = 0;
  }
  return (*(int (__fastcall **)(_DWORD))(**(_DWORD **)(dword_99F73C + 28) + 104))(*(_DWORD *)(dword_99F73C + 28));
}


// ===== 387270 GSViewer::Update(StateMachine *,double) =====
int __fastcall GSViewer::Update(GSViewer *this, double a2)
{
  float v3; // r0

  v3 = a2;
  return (*(int (__fastcall **)(_DWORD, _DWORD, _DWORD))(**(_DWORD **)(dword_99F73C + 28) + 96))(
           *(_DWORD *)(dword_99F73C + 28),
           LODWORD(v3),
           0);
}


// ===== 3872bc GSViewer::Draw(StateMachine const*) =====
int __fastcall GSViewer::Draw(GSViewer *this, const StateMachine *a2)
{
  return (*(int (__fastcall **)(_DWORD, _DWORD))(**(_DWORD **)(dword_99F73C + 28) + 60))(
           *(_DWORD *)(dword_99F73C + 28),
           0);
}


// ===== 3872f8 GSViewer::Ctor(StateMachine const*) =====
void __fastcall GSViewer::Ctor(GSViewer *this, const StateMachine *a2)
{
  glitch::scene::CSceneManager *v3; // r7
  int v4; // r5
  int v5; // r10
  glitch::scene::CEmptySceneNode *v6; // r10
  glitch::scene::CLightSceneNode *v7; // r8
  int v8; // r5
  _DWORD *v9; // r1
  void (__fastcall *v10)(int, _DWORD *); // r10
  int v11; // r3
  _WORD *v12; // r4
  _DWORD *v14; // r2
  _DWORD v15[4]; // [sp+Ch] [bp-38h] BYREF
  _DWORD v16[3]; // [sp+1Ch] [bp-28h] BYREF
  _DWORD v17[3]; // [sp+28h] [bp-1Ch] BYREF
  _DWORD v18[4]; // [sp+34h] [bp-10h] BYREF

  v3 = *(glitch::scene::CSceneManager **)(dword_99F73C + 28);
  v4 = *((_DWORD *)v3 + 1);
  v18[1] = -1007026176;
  v17[1] = 0;
  v17[2] = 1120403456;
  v18[0] = 0;
  v18[2] = 0;
  v17[0] = 0;
  v5 = operator new(908, 0);
  glitch::scene::CCameraSceneNode::CCameraSceneNode(v5, -1, v18, v17, 0);
  *((_DWORD *)this + 1) = v5;
  (*(void (__fastcall **)(int, int))(*(_DWORD *)v4 + 92))(v4, v5);
  glitch::IReferenceCounted::drop((glitch::IReferenceCounted *)(*((_DWORD *)this + 1)
                                                              + *(_DWORD *)(**((_DWORD **)this + 1) - 12)));
  glitch::scene::CSceneManager::setActiveCamera(v3, *((glitch::scene::ICameraSceneNode **)this + 1));
  v6 = (glitch::scene::CEmptySceneNode *)operator new(336, 0);
  glitch::scene::CEmptySceneNode::CEmptySceneNode(v6, -1);
  *((_DWORD *)this + 2) = v6;
  (*(void (__fastcall **)(int, glitch::scene::CEmptySceneNode *))(*(_DWORD *)v4 + 92))(v4, v6);
  glitch::IReferenceCounted::drop((glitch::IReferenceCounted *)(*((_DWORD *)this + 2)
                                                              + *(_DWORD *)(**((_DWORD **)this + 2) - 12)));
  v7 = (glitch::scene::CLightSceneNode *)operator new(348, 0);
  glitch::scene::CLightSceneNode::CLightSceneNode(v7, 1);
  *((_DWORD *)this + 3) = v7;
  (*(void (__fastcall **)(int, glitch::scene::CLightSceneNode *))(*(_DWORD *)v4 + 92))(v4, v7);
  glitch::IReferenceCounted::drop((glitch::IReferenceCounted *)(*((_DWORD *)this + 3)
                                                              + *(_DWORD *)(**((_DWORD **)this + 3) - 12)));
  v8 = *((_DWORD *)this + 1);
  if ( !v8 || (v9 = *((_DWORD **)this + 2)) == nullptr || !*((_DWORD *)this + 3) )
  {
    if ( gAssertLevel == 2 )
    {
      dword_0 = 0;
      v9 = *((_DWORD **)this + 2);
    }
    else
    {
      if ( gAssertLevel == 1 )
      {
        fprintf(
          (FILE *)&_sF + 2,
          "ASSERT(%s) FAILED: %s:%d\n",
          "m_camera && m_target && m_light",
          "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\States\\GSViewer.cpp",
          65);
        v8 = *((_DWORD *)this + 1);
      }
      v9 = *((_DWORD **)this + 2);
    }
  }
  v10 = *(void (__fastcall **)(int, _DWORD *))(*(_DWORD *)v8 + 260);
  glitch::scene::ISceneNode::getAbsolutePosition(v16, v9);
  v10(v8, v16);
  glitch::scene::CSceneManager::setActiveCamera(v3, *((glitch::scene::ICameraSceneNode **)this + 1));
  v11 = *((_DWORD *)this + 3);
  v12 = *(_WORD **)(v11 + 308);
  if ( v12 )
    v11 = *(_DWORD *)v12;
  v12[44] = 2;
  if ( v12 )
    *(_DWORD *)v12 = v11 + 1;
  v15[3] = 1065353216;
  v15[0] = 1065353216;
  v15[1] = 1065353216;
  v15[2] = 1065353216;
  glitch::scene::CSceneManager::setAmbientLight(v3, v15);
  if ( (*(_DWORD *)v12)-- == 1 )
  {
    if ( !*((_BYTE *)v12 + 84) )
    {
      v14 = *((_DWORD **)v12 + 20);
      *v14 = glitch::memory::Matrix4Pool;
      glitch::memory::Matrix4Pool = (int)v14;
    }
    *((_DWORD *)v12 + 20) = 0;
    CustomFree(v12);
  }
}


// ===== 3875a4 GSViewer::~GSViewer() =====
void __fastcall GSViewer::~GSViewer(GSViewer *this)
{
  GSViewer::~GSViewer(this);
  CustomFree(this);
}


// ===== 3875c0 `global constructor keyed to'.._.._sources_Game_States_GSViewer.cpp =====
int `global constructor keyed to'.._.._sources_Game_States_GSViewer.cpp()
{
  int result; // r0

  dword_9A2694 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9A2690 = 1056964608;
  GSViewer::GSViewer((GSViewer *)&GSViewer::s_inst);
  result = _aeabi_atexit((int)&GSViewer::s_inst, (int)GSViewer::~GSViewer, (int)&_dso_handle);
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


// ===== 3876c8 Billboard::Draw(void) =====
void __fastcall Billboard::Draw(Billboard *this)
{
  ;
}


// ===== 3876cc Billboard::IsZonable(void) =====
int __fastcall Billboard::IsZonable(Billboard *this)
{
  return 0;
}


// ===== 3876d4 Billboard::IsUpdatable(void) =====
int __fastcall Billboard::IsUpdatable(Billboard *this)
{
  return 1;
}


// ===== 3876dc Billboard::Update(void) =====
int __fastcall Billboard::Update(int this)
{
  int v1; // r1

  v1 = *(_DWORD *)(this + 376);
  if ( v1 )
  {
    if ( *(_BYTE *)(this + 372) )
      return (*(int (__fastcall **)(_DWORD, int))(**(_DWORD **)(*(_DWORD *)(dword_99F73C + 28) + 228) + 92))(
               *(_DWORD *)(*(_DWORD *)(dword_99F73C + 28) + 228),
               v1 + 4);
  }
  return this;
}


// ===== 387734 SimpleTypeProperty<glitch::core::dimension2d<float>>::IsDefaultValue(void *) =====
bool __fastcall SimpleTypeProperty<glitch::core::dimension2d<float>>::IsDefaultValue(int a1, int a2)
{
  int v2; // r3
  float v5; // r1
  float v6; // r0
  int v7; // r5
  _BOOL4 result; // r0

  v2 = *(_DWORD *)(a1 + 4);
  v5 = *(float *)(a1 + 32);
  v6 = *(float *)(a2 + v2);
  v7 = a2 + v2;
  result = v6 == v5;
  if ( result )
    return *(float *)(v7 + 4) == *(float *)(a1 + 36);
  return result;
}


// ===== 38777c SimpleTypeProperty<glitch::core::dimension2d<float>>::SetToDefaultValue(void *) =====
_DWORD *__fastcall SimpleTypeProperty<glitch::core::dimension2d<float>>::SetToDefaultValue(_DWORD *result, int a2)
{
  int v2; // r2

  v2 = result[1];
  *(_DWORD *)(a2 + v2) = result[8];
  *(_DWORD *)(a2 + v2 + 4) = result[9];
  return result;
}


// ===== 387794 SimpleTypeProperty<glitch::core::vector3d<float>>::IsDefaultValue(void *) =====
bool __fastcall SimpleTypeProperty<glitch::core::vector3d<float>>::IsDefaultValue(int a1, int a2)
{
  int v2; // r3
  float v5; // r1
  float v6; // r0
  int v7; // r5

  v2 = *(_DWORD *)(a1 + 4);
  v5 = *(float *)(a1 + 32);
  v6 = *(float *)(a2 + v2);
  v7 = a2 + v2;
  return v6 == v5 && *(float *)(v7 + 4) == *(float *)(a1 + 36) && *(float *)(v7 + 8) == *(float *)(a1 + 40);
}


// ===== 3877f8 SimpleTypeProperty<glitch::core::vector3d<float>>::SetToDefaultValue(void *) =====
_DWORD *__fastcall SimpleTypeProperty<glitch::core::vector3d<float>>::SetToDefaultValue(_DWORD *result, int a2)
{
  _DWORD *v2; // r12

  v2 = (_DWORD *)(a2 + result[1]);
  *v2 = result[8];
  v2[1] = result[9];
  v2[2] = result[10];
  return result;
}


// ===== 38781c Billboard::InitPost(void) =====
glitch::IReferenceCounted *__fastcall Billboard::InitPost(Billboard *this)
{
  glitch::IReferenceCounted *result; // r0
  int v3; // r0
  bool v4; // zf
  _DWORD *v5; // r3
  _DWORD *v6; // r0
  int v7; // r2
  int ParameterID; // r0
  _BOOL4 v9; // r0
  char *v10; // r0
  int v11; // r3
  void (*v12)(void); // r3
  int v13; // r2
  int v14; // r3
  _DWORD v15[4]; // [sp+8h] [bp-18h] BYREF
  glitch::video::CMaterial *v16; // [sp+18h] [bp-8h] BYREF
  glitch::IReferenceCounted *v17; // [sp+1Ch] [bp-4h] BYREF

  result = (glitch::IReferenceCounted *)glitch::video::CTextureManager::getTexture(
                                          (glitch::video::CTextureManager *)&v17,
                                          *(const char **)(*(_DWORD *)(dword_99F73C + 16) + 224),
                                          *((const char **)this + 77));
  if ( v17 )
  {
    v3 = (*(int (__fastcall **)(_DWORD, const char *, _DWORD))(**(_DWORD **)(dword_99F73C + 28) + 108))(
           *(_DWORD *)(dword_99F73C + 28),
           "billBoard",
           *(_DWORD *)(*(_DWORD *)(dword_99F73C + 28) + 4));
    v5 = (_DWORD *)v3;
    v4 = v3 == 0;
    if ( v3 )
      v6 = (_DWORD *)(v3 - 4);
    else
      v6 = nullptr;
    *((_DWORD *)this + 94) = v6;
    if ( !v4 )
      v5 = v6;
    ++*(_DWORD *)((char *)v5 + *(_DWORD *)(*v6 - 16) + 4);
    if ( *((_BYTE *)this + 356) )
      v7 = 10;
    else
      v7 = 11;
    glitch::video::CMaterialRendererManager::createMaterialInstance(
      &v16,
      *(_DWORD *)(*(_DWORD *)(dword_99F73C + 16) + 220),
      v7);
    ParameterID = glitch::video::CMaterialRenderer::getParameterID(*((_DWORD *)v16 + 1), 2, 0);
    if ( ParameterID != 0xFFFF )
      glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameter<boost::intrusive_ptr<glitch::video::ITexture>>(
        v16,
        ParameterID,
        0,
        &v17);
    glitch::scene::CBillboardSceneNode::setMaterial(*((_DWORD *)this + 94), &v16);
    (*(void (__fastcall **)(_DWORD, char *))(**((_DWORD **)this + 94) + 8))(*((_DWORD *)this + 94), (char *)this + 336);
    (*(void (__fastcall **)(int, char *))(*(_DWORD *)(*((_DWORD *)this + 94) + 4) + 164))(
      *((_DWORD *)this + 94) + 4,
      (char *)this + 344);
    (*(void (__fastcall **)(int, _DWORD))(*(_DWORD *)(*((_DWORD *)this + 94) + 4) + 72))(*((_DWORD *)this + 94) + 4, 0);
    v9 = std::operator==<char>((int)this + 312, "ActiveCamera");
    *((_BYTE *)this + 372) = v9;
    if ( !v9 && !std::operator==<char>((int)this + 312, "") )
    {
      ObjectManager::GetObjectByName(
        (ObjectManager *)v15,
        (const char *)dword_99F764,
        *((char **)this + 83),
        -1,
        nullptr,
        0);
      v13 = v15[0];
      v14 = v15[1];
      *((_DWORD *)this + 92) = v15[2];
      *((_DWORD *)this + 90) = v13;
      *((_DWORD *)this + 91) = v14;
    }
    if ( ObjectHandle::GetObject((char **)this + 90, 0) )
    {
      v10 = ObjectHandle::operator GameObject *((char **)this + 90);
      if ( !v10 )
        goto LABEL_18;
      v11 = *((_DWORD *)v10 + 182);
      if ( !v11 )
        goto LABEL_18;
      v12 = *(void (**)(void))(**(_DWORD **)(v11 + 8) + 92);
    }
    else
    {
      v12 = *(void (**)(void))(**(_DWORD **)(*(_DWORD *)(dword_99F73C + 28) + 4) + 92);
    }
    v12();
LABEL_18:
    boost::intrusive_ptr<glitch::video::CMaterial>::~intrusive_ptr(&v16);
    result = v17;
    if ( v17 )
      return (glitch::IReferenceCounted *)glitch::IReferenceCounted::drop(v17);
  }
  return result;
}


// ===== 387a8c SimpleTypeProperty<glitch::core::vector3d<float>>::SetDefaultValueFromString(char const*) =====
void __fastcall SimpleTypeProperty<glitch::core::vector3d<float>>::SetDefaultValueFromString(int a1, const char *a2)
{
  *(_DWORD *)(a1 + 40) = 0;
  *(_DWORD *)(a1 + 32) = 0;
  *(_DWORD *)(a1 + 36) = 0;
  StrToObj(a2, (float *)(a1 + 32));
}


// ===== 387aac SimpleTypeProperty<glitch::core::vector3d<float>>::FromString(void *,char const*) =====
void __fastcall SimpleTypeProperty<glitch::core::vector3d<float>>::FromString(int a1, int a2, const char *a3)
{
  int v3; // r3

  v3 = a2 + *(_DWORD *)(a1 + 4);
  *(_DWORD *)v3 = 0;
  *(_DWORD *)(v3 + 8) = 0;
  *(_DWORD *)(v3 + 4) = 0;
  StrToObj(a3, (float *)v3);
}


// ===== 387ad0 SimpleTypeProperty<glitch::core::vector3d<float>>::ToString(void *) =====
std::string *__fastcall SimpleTypeProperty<glitch::core::vector3d<float>>::ToString(std::string *a1, int a2, int a3)
{
  char *v6; // r5

  v6 = (char *)CustomAlloc(0x100u);
  ObjToStr(v6, (float *)(a3 + *(_DWORD *)(a2 + 4)));
  std::string::string(a1, v6);
  return a1;
}


// ===== 387b18 SimpleTypeProperty<glitch::core::dimension2d<float>>::SetDefaultValueFromString(char const*) =====
void __fastcall SimpleTypeProperty<glitch::core::dimension2d<float>>::SetDefaultValueFromString(int a1, const char *a2)
{
  *(_DWORD *)(a1 + 36) = 0;
  *(_DWORD *)(a1 + 32) = 0;
  StrToObj(a2, (float *)(a1 + 32));
}


// ===== 387b34 SimpleTypeProperty<glitch::core::dimension2d<float>>::FromString(void *,char const*) =====
void __fastcall SimpleTypeProperty<glitch::core::dimension2d<float>>::FromString(int a1, int a2, const char *a3)
{
  int v3; // r3

  v3 = a2 + *(_DWORD *)(a1 + 4);
  *(_DWORD *)(v3 + 4) = 0;
  *(_DWORD *)v3 = 0;
  StrToObj(a3, (float *)v3);
}


// ===== 387b54 SimpleTypeProperty<glitch::core::dimension2d<float>>::ToString(void *) =====
std::string *__fastcall SimpleTypeProperty<glitch::core::dimension2d<float>>::ToString(std::string *a1, int a2, int a3)
{
  char *v6; // r5

  v6 = (char *)CustomAlloc(0x100u);
  ObjToStr(v6, (float *)(a3 + *(_DWORD *)(a2 + 4)));
  std::string::string(a1, v6);
  return a1;
}


// ===== 387b9c `non-virtual thunk to'Billboard::~Billboard() =====
void __fastcall `non-virtual thunk to'Billboard::~Billboard(Billboard *this)
{
  Billboard::~Billboard((Billboard *)((char *)this - 36));
}


// ===== 387ba4 Billboard::~Billboard() =====
void __fastcall Billboard::~Billboard(std::priv::_String_base<char,std::allocator<char> > *this)
{
  _DWORD *v1; // r1

  v1 = *((_DWORD **)this + 94);
  this->_M_buffers._M_end_of_storage = (char *)off_963F80;
  *(_DWORD *)&this->_M_buffers._M_static_buf[4] = &off_963FE4;
  *((_DWORD *)this + 9) = off_963FF0;
  if ( v1 )
    glitch::IReferenceCounted::drop((glitch::IReferenceCounted *)((char *)v1 + *(_DWORD *)(*v1 - 16)));
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(this + 13);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(this + 12);
  ObjectBase::~ObjectBase((ObjectBase *)this);
}


// ===== 387c14 `non-virtual thunk to'Billboard::~Billboard() =====
void __fastcall `non-virtual thunk to'Billboard::~Billboard(Billboard *this)
{
  Billboard::~Billboard((Billboard *)((char *)this - 36));
}


// ===== 387c1c Billboard::~Billboard() =====
void __fastcall Billboard::~Billboard(std::priv::_String_base<char,std::allocator<char> > *this)
{
  Billboard::~Billboard(this);
  CustomFree(this);
}


// ===== 387c38 Billboard::~Billboard() =====
void __fastcall Billboard::~Billboard(std::priv::_String_base<char,std::allocator<char> > *this)
{
  _DWORD *v1; // r1

  v1 = *((_DWORD **)this + 94);
  this->_M_buffers._M_end_of_storage = (char *)off_963F80;
  *(_DWORD *)&this->_M_buffers._M_static_buf[4] = &off_963FE4;
  *((_DWORD *)this + 9) = off_963FF0;
  if ( v1 )
    glitch::IReferenceCounted::drop((glitch::IReferenceCounted *)((char *)v1 + *(_DWORD *)(*v1 - 16)));
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(this + 13);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(this + 12);
  ObjectBase::~ObjectBase((ObjectBase *)this);
}


// ===== 387ca8 `global constructor keyed to'.._.._sources_Game_Objects_Billboard.cpp =====
int `global constructor keyed to'.._.._sources_Game_Objects_Billboard.cpp()
{
  int result; // r0

  result = `guard variable for'Singleton<PlayerStatManager>::s_inst;
  dword_9A26B0 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9A26AC = 1056964608;
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


// ===== 387d84 Billboard::Billboard(ObjectBase::GO_IDS) =====
int __fastcall Billboard::Billboard(int a1, int a2)
{
  ObjectBase::ObjectBase(a1, a2);
  *(_DWORD *)(a1 + 304) = a1 + 288;
  *(_DWORD *)a1 = off_963F80;
  *(_DWORD *)(a1 + 4) = &off_963FE4;
  *(_DWORD *)(a1 + 36) = off_963FF0;
  *(_DWORD *)(a1 + 308) = a1 + 288;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block((_DWORD *)(a1 + 288), 0x10u);
  **(_BYTE **)(a1 + 304) = 0;
  *(_DWORD *)(a1 + 328) = a1 + 312;
  *(_DWORD *)(a1 + 332) = a1 + 312;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block((_DWORD *)(a1 + 312), 0x10u);
  **(_BYTE **)(a1 + 328) = 0;
  *(_DWORD *)(a1 + 352) = 0;
  *(_DWORD *)(a1 + 336) = 0;
  *(_DWORD *)(a1 + 340) = 0;
  *(_DWORD *)(a1 + 344) = 0;
  *(_DWORD *)(a1 + 348) = 0;
  *(_BYTE *)(a1 + 356) = 0;
  ObjectHandle::ObjectHandle((ObjectHandle *)(a1 + 360));
  *(_DWORD *)(a1 + 376) = 0;
  *(_BYTE *)(a1 + 133) = 1;
  *(_BYTE *)(a1 + 372) = 0;
  return a1;
}


// ===== 387e40 SimpleTypeProperty<glitch::core::vector3d<float>>::Clone(void) =====
int __fastcall SimpleTypeProperty<glitch::core::vector3d<float>>::Clone(int a1)
{
  int v2; // r4

  v2 = operator new(0x2Cu, 0);
  *(_DWORD *)v2 = &off_95C5E8;
  *(_DWORD *)(v2 + 24) = v2 + 8;
  *(_DWORD *)(v2 + 28) = v2 + 8;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block((_DWORD *)(v2 + 8), 0x10u);
  **(_BYTE **)(v2 + 24) = 0;
  *(_DWORD *)v2 = off_963F40;
  *(_DWORD *)(v2 + 40) = 0;
  *(_DWORD *)(v2 + 32) = 0;
  *(_DWORD *)(v2 + 36) = 0;
  *(_DWORD *)(v2 + 4) = *(_DWORD *)(a1 + 4);
  if ( v2 + 8 != a1 + 8 )
    std::string::_M_assign((std::string *const)(v2 + 8), *(const char **)(a1 + 28), *(const char **)(a1 + 24));
  *(_DWORD *)(v2 + 32) = *(_DWORD *)(a1 + 32);
  *(_DWORD *)(v2 + 36) = *(_DWORD *)(a1 + 36);
  *(_DWORD *)(v2 + 40) = *(_DWORD *)(a1 + 40);
  return v2;
}


// ===== 387f04 SimpleTypeProperty<glitch::core::dimension2d<float>>::Clone(void) =====
int __fastcall SimpleTypeProperty<glitch::core::dimension2d<float>>::Clone(int a1)
{
  int v2; // r4

  v2 = operator new(0x28u, 0);
  *(_DWORD *)v2 = &off_95C5E8;
  *(_DWORD *)(v2 + 24) = v2 + 8;
  *(_DWORD *)(v2 + 28) = v2 + 8;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block((_DWORD *)(v2 + 8), 0x10u);
  **(_BYTE **)(v2 + 24) = 0;
  *(_DWORD *)(v2 + 36) = 0;
  *(_DWORD *)(v2 + 32) = 0;
  *(_DWORD *)v2 = off_963F60;
  *(_DWORD *)(v2 + 4) = *(_DWORD *)(a1 + 4);
  if ( v2 + 8 != a1 + 8 )
    std::string::_M_assign((std::string *const)(v2 + 8), *(const char **)(a1 + 28), *(const char **)(a1 + 24));
  *(_DWORD *)(v2 + 32) = *(_DWORD *)(a1 + 32);
  *(_DWORD *)(v2 + 36) = *(_DWORD *)(a1 + 36);
  return v2;
}


// ===== 387fbc `non-virtual thunk to'Billboard::DeclareProperties(void) =====
int __fastcall `non-virtual thunk to'Billboard::DeclareProperties(Billboard *this)
{
  return Billboard::DeclareProperties((Billboard *)((char *)this - 4));
}


// ===== 387fc4 Billboard::DeclareProperties(void) =====
_DWORD *__fastcall Billboard::DeclareProperties(Billboard *this)
{
  PropertyMap *v1; // r4
  int v3; // r6
  int v4; // r6
  int v5; // r6

  v1 = (Billboard *)((char *)this + 4);
  PropertyMap::AddProperty<std::string>((int)this + 4, (int)"tga", (int)this + 288);
  PropertyMap::AddProperty<std::string>((int)v1, (int)"AttachTo", (int)this + 312);
  v3 = operator new(0x2Cu, 0);
  *(_DWORD *)v3 = &off_95C5E8;
  std::string::string((std::string *)(v3 + 8), "position");
  *(_DWORD *)(v3 + 4) = (Billboard *)((char *)this + 344) - v1;
  *(_DWORD *)v3 = off_963F40;
  *(_DWORD *)(v3 + 32) = 0;
  *(_DWORD *)(v3 + 36) = 0;
  *(_DWORD *)(v3 + 40) = 0;
  PropertyMap::AddProperty(v1, "position", (Property *)v3);
  v4 = operator new(0x28u, 0);
  *(_DWORD *)v4 = &off_95C5E8;
  std::string::string((std::string *)(v4 + 8), "size");
  *(_DWORD *)(v4 + 4) = (Billboard *)((char *)this + 336) - v1;
  *(_DWORD *)(v4 + 32) = 0;
  *(_DWORD *)v4 = off_963F60;
  *(_DWORD *)(v4 + 36) = 0;
  PropertyMap::AddProperty(v1, "size", (Property *)v4);
  v5 = operator new(0x24u, 0);
  *(_DWORD *)v5 = &off_95C5E8;
  std::string::string((std::string *)(v5 + 8), "isAdditive");
  *(_DWORD *)(v5 + 4) = (Billboard *)((char *)this + 356) - v1;
  *(_DWORD *)v5 = &off_95C608;
  *(_BYTE *)(v5 + 32) = 0;
  return PropertyMap::AddProperty(v1, "isAdditive", (Property *)v5);
}


// ===== 38815c Billboard::Billboard(ObjectBase::GO_IDS) =====
int __fastcall Billboard::Billboard(int a1, int a2)
{
  ObjectBase::ObjectBase(a1, a2);
  *(_DWORD *)(a1 + 304) = a1 + 288;
  *(_DWORD *)a1 = off_963F80;
  *(_DWORD *)(a1 + 4) = &off_963FE4;
  *(_DWORD *)(a1 + 36) = off_963FF0;
  *(_DWORD *)(a1 + 308) = a1 + 288;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block((_DWORD *)(a1 + 288), 0x10u);
  **(_BYTE **)(a1 + 304) = 0;
  *(_DWORD *)(a1 + 328) = a1 + 312;
  *(_DWORD *)(a1 + 332) = a1 + 312;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block((_DWORD *)(a1 + 312), 0x10u);
  **(_BYTE **)(a1 + 328) = 0;
  *(_DWORD *)(a1 + 352) = 0;
  *(_DWORD *)(a1 + 336) = 0;
  *(_DWORD *)(a1 + 340) = 0;
  *(_DWORD *)(a1 + 344) = 0;
  *(_DWORD *)(a1 + 348) = 0;
  *(_BYTE *)(a1 + 356) = 0;
  ObjectHandle::ObjectHandle((ObjectHandle *)(a1 + 360));
  *(_DWORD *)(a1 + 376) = 0;
  *(_BYTE *)(a1 + 133) = 1;
  *(_BYTE *)(a1 + 372) = 0;
  return a1;
}


// ===== 388218 PFRoom::ExtendBoundingBox(aabb<float> const&) =====
bool __fastcall PFRoom::ExtendBoundingBox(int a1, float *a2)
{
  float v2; // r6
  float v3; // r7
  float v4; // r7
  float v5; // r7
  float v6; // r7
  float v7; // r7
  float *v8; // r5
  float v9; // r6
  float v10; // r6
  float v11; // r6
  float v12; // r6
  float v13; // r4
  _BOOL4 result; // r0

  v2 = *a2;
  if ( *a2 >= *(float *)(a1 + 60) )
    v2 = *(float *)(a1 + 60);
  *(float *)(a1 + 60) = v2;
  v3 = a2[1];
  if ( v3 >= *(float *)(a1 + 64) )
    v3 = *(float *)(a1 + 64);
  *(float *)(a1 + 64) = v3;
  v4 = a2[2];
  if ( v4 >= *(float *)(a1 + 68) )
    v4 = *(float *)(a1 + 68);
  *(float *)(a1 + 68) = v4;
  v5 = a2[3];
  if ( *(float *)(a1 + 72) >= v5 )
    v5 = *(float *)(a1 + 72);
  *(float *)(a1 + 72) = v5;
  v6 = a2[4];
  if ( *(float *)(a1 + 76) >= v6 )
    v6 = *(float *)(a1 + 76);
  *(float *)(a1 + 76) = v6;
  v7 = a2[5];
  if ( *(float *)(a1 + 80) >= v7 )
    v7 = *(float *)(a1 + 80);
  v8 = *(float **)(a1 + 32);
  *(float *)(a1 + 80) = v7;
  if ( v2 >= v8[5] )
    v2 = v8[5];
  v8[5] = v2;
  v9 = *(float *)(a1 + 64);
  if ( v9 >= v8[6] )
    v9 = v8[6];
  v8[6] = v9;
  v10 = *(float *)(a1 + 68);
  if ( v10 >= v8[7] )
    v10 = v8[7];
  v8[7] = v10;
  v11 = *(float *)(a1 + 72);
  if ( v8[8] >= v11 )
    v11 = v8[8];
  v8[8] = v11;
  v12 = *(float *)(a1 + 76);
  if ( v8[9] >= v12 )
    v12 = v8[9];
  v8[9] = v12;
  v13 = *(float *)(a1 + 80);
  result = v8[10] < v13;
  if ( v8[10] >= v13 )
    v13 = v8[10];
  v8[10] = v13;
  return result;
}


// ===== 3883a8 GameObject::IsAnimated(void) =====
int __fastcall GameObject::IsAnimated(GameObject *this)
{
  return 0;
}


// ===== 3883b0 GameObject::IsInteractive(GameObject*) =====
int __fastcall GameObject::IsInteractive(GameObject *this, GameObject *a2)
{
  return 0;
}


// ===== 3883b8 GameObject::IsZonable(void) =====
int __fastcall GameObject::IsZonable(GameObject *this)
{
  return *((unsigned __int8 *)this + 749) ^ 1;
}


// ===== 3883c4 PhysicalObject::onCollisionBegins(PhysicalBaseObject *,Point2D<float> const&,bool) =====
void PhysicalObject::onCollisionBegins()
{
  ;
}


// ===== 3883c8 PhysicalObject::onCollisionPersists(PhysicalBaseObject *,Point2D<float> const&,bool) =====
void PhysicalObject::onCollisionPersists()
{
  ;
}


// ===== 3883cc PhysicalObject::onCollisionEnds(PhysicalBaseObject *,Point2D<float> const&,bool) =====
void PhysicalObject::onCollisionEnds()
{
  ;
}


// ===== 3883d0 PhysicalObject::onCollisionResults(PhysicalBaseObject *,bool) =====
void PhysicalObject::onCollisionResults()
{
  ;
}


// ===== 3883d4 Decor::IsUpdatable(void) =====
int __fastcall Decor::IsUpdatable(Decor *this)
{
  return 0;
}


// ===== 3883dc AnimatedDecor::IsAnimated(void) =====
int __fastcall AnimatedDecor::IsAnimated(AnimatedDecor *this)
{
  return 1;
}


// ===== 3883e4 Floor::IsUpdatable(void) =====
int __fastcall Floor::IsUpdatable(Floor *this)
{
  return 0;
}


// ===== 3883ec Floor::IsZonable(void) =====
int __fastcall Floor::IsZonable(Floor *this)
{
  return 0;
}


// ===== 3883f4 ColBox::IsUpdatable(void) =====
int __fastcall ColBox::IsUpdatable(ColBox *this)
{
  return 0;
}


// ===== 3883fc SimpleTypeProperty<Point3D<float>>::SetToDefaultValue(void *) =====
_DWORD *__fastcall SimpleTypeProperty<Point3D<float>>::SetToDefaultValue(_DWORD *result, int a2)
{
  _DWORD *v2; // r12

  v2 = (_DWORD *)(a2 + result[1]);
  *v2 = result[8];
  v2[1] = result[9];
  v2[2] = result[10];
  return result;
}


// ===== 388420 `non-virtual thunk to'Decor::~Decor() =====
void __fastcall `non-virtual thunk to'Decor::~Decor(Decor *this)
{
  Decor::~Decor((Decor *)((char *)this - 36));
}


// ===== 388428 Decor::~Decor() =====
void __fastcall Decor::~Decor(Decor *this)
{
  *(_DWORD *)this = off_964610;
  *((_DWORD *)this + 1) = &off_9646E0;
  *((_DWORD *)this + 9) = off_9646EC;
  GameObject::~GameObject(this);
}


// ===== 388468 `non-virtual thunk to'Floor::~Floor() =====
void __fastcall `non-virtual thunk to'Floor::~Floor(Floor *this)
{
  Floor::~Floor((Floor *)((char *)this - 36));
}


// ===== 388470 Floor::~Floor() =====
void __fastcall Floor::~Floor(Floor *this)
{
  *(_DWORD *)this = off_964328;
  *((_DWORD *)this + 1) = &off_9643F8;
  *((_DWORD *)this + 9) = off_964404;
  GameObject::~GameObject(this);
}


// ===== 3884b0 `non-virtual thunk to'ColBox::~ColBox() =====
void __fastcall `non-virtual thunk to'ColBox::~ColBox(ColBox *this)
{
  ColBox::~ColBox((ColBox *)((char *)this - 36));
}


// ===== 3884b8 ColBox::~ColBox() =====
void __fastcall ColBox::~ColBox(ColBox *this)
{
  *(_DWORD *)this = off_964230;
  *((_DWORD *)this + 1) = &off_964300;
  *((_DWORD *)this + 9) = off_96430C;
  GameObject::~GameObject(this);
}


// ===== 3884f8 AnimatedDecor::IsZonable(void) =====
// attributes: thunk
int __fastcall AnimatedDecor::IsZonable(GameObject *this)
{
  return GameObject::MeetCondition(this);
}


// ===== 3884fc ColBox::InitPost(void) =====
void __fastcall ColBox::InitPost(ColBox *this)
{
  float v2; // r1
  float v3; // r7
  float v4; // r0
  float v5; // r1
  float v6; // r5
  float v7; // r0
  PhysicalWorld *v8; // r8
  PhysicalObject *v9; // r7

  GameObject::InitPost(this);
  v2 = *((float *)this + 73);
  v3 = *((float *)this + 221) * *((float *)this + 72);
  *((float *)this + 221) = v3;
  v4 = *((float *)this + 222) * v2;
  v5 = *((float *)this + 74);
  *((float *)this + 222) = v4;
  v6 = *((float *)this + 223) * v5;
  *((float *)this + 223) = v6;
  *((_DWORD *)this + 81) = COERCE_INT(v3 * 0.5) + 0x80000000;
  *((float *)this + 84) = v3 * 0.5;
  v7 = v4 * 0.5;
  *((_DWORD *)this + 82) = LODWORD(v7) + 0x80000000;
  *((float *)this + 85) = v7;
  *((_DWORD *)this + 83) = COERCE_INT(v6 * 0.5) + 0x80000000;
  *((float *)this + 86) = v6 * 0.5;
  GameObject::UpdateAbsoluteAABB(this);
  v8 = (PhysicalWorld *)dword_99F770;
  v9 = (PhysicalObject *)operator new(0x28u, 0);
  PhysicalObject::PhysicalObject(v9, v8, this, 1, 0, 0, 0, 0, 1u, 0xFFFFu, 1);
  *(_DWORD *)v9 = off_964008;
  GameObject::SetPhysicalObject(this, v9, 0);
}


// ===== 388628 POColmap::~POColmap() =====
void __fastcall POColmap::~POColmap(POColmap *this)
{
  *(_DWORD *)this = off_964008;
  PhysicalObject::~PhysicalObject(this);
}


// ===== 38865c SimpleTypeProperty<Point3D<float>>::SetDefaultValueFromString(char const*) =====
void __fastcall SimpleTypeProperty<Point3D<float>>::SetDefaultValueFromString(int a1, const char *a2)
{
  *(_DWORD *)(a1 + 40) = 0;
  *(_DWORD *)(a1 + 32) = 0;
  *(_DWORD *)(a1 + 36) = 0;
  StrToObj(a2, (float *)(a1 + 32));
}


// ===== 38867c SimpleTypeProperty<Point3D<float>>::FromString(void *,char const*) =====
void __fastcall SimpleTypeProperty<Point3D<float>>::FromString(int a1, int a2, const char *a3)
{
  int v3; // r3

  v3 = a2 + *(_DWORD *)(a1 + 4);
  *(_DWORD *)v3 = 0;
  *(_DWORD *)(v3 + 8) = 0;
  *(_DWORD *)(v3 + 4) = 0;
  StrToObj(a3, (float *)v3);
}


// ===== 3886a0 SimpleTypeProperty<Point3D<float>>::IsDefaultValue(void *) =====
bool __fastcall SimpleTypeProperty<Point3D<float>>::IsDefaultValue(int a1, int a2)
{
  return Point3D<float>::operator==((float *)(a2 + *(_DWORD *)(a1 + 4)), (float *)(a1 + 32));
}


// ===== 3886b4 Floor::InitPost(void) =====
int __fastcall Floor::InitPost(Floor *this)
{
  int result; // r0

  GameObject::InitPost(this);
  (*(void (__fastcall **)(Floor *, _DWORD))(*(_DWORD *)this + 64))(this, 0);
  result = *((_DWORD *)this + 182);
  if ( result )
  {
    VisualObject::ApplyMeshBox(result);
    VisualObject::SetVisible(*((_DWORD *)this + 182), 0);
    return GetNodePolyCount(*(glitch::scene::ISceneNode **)(*((_DWORD *)this + 182) + 8), 1);
  }
  return result;
}


// ===== 388708 `non-virtual thunk to'Module::Serialize(IStreamBase *) =====
int __fastcall `non-virtual thunk to'Module::Serialize(Module *this, IStreamBase *a2)
{
  return Module::Serialize((Module *)((char *)this - 36), a2);
}


// ===== 388710 Module::Serialize(IStreamBase *) =====
int __fastcall Module::Serialize(Module *this, IStreamBase *a2)
{
  GameObject::Serialize(this, a2);
  return IStreamBase::writeAs<bool>((int)a2, (int)this + 1020);
}


// ===== 388730 Decor::LoadFloorMap(void) =====
int __fastcall Decor::LoadFloorMap(int this)
{
  int v1; // r2
  int v2; // r4
  int v3; // r3
  unsigned int v4; // r3

  v1 = *(_DWORD *)(this + 728);
  v2 = this;
  if ( v1 && *(_BYTE *)(this + 885) )
  {
    this = PFWorld::LoadRoom(
             (PFWorld *)&Singleton<PFWorld>::s_inst,
             *(glitch::scene::ISceneNode **)(v1 + 8),
             *(_DWORD *)(this + 100),
             *(const char **)(this + 68));
    if ( this )
    {
      v3 = *(_DWORD *)(this + 36);
      if ( *(_BYTE *)(v2 + 886) )
        v4 = v3 | 1;
      else
        v4 = v3 & 0xFFFFFFFE;
      *(_DWORD *)(this + 36) = v4;
      this = PFRoom::ExtendBoundingBox();
    }
    *(_BYTE *)(v2 + 885) = 0;
  }
  return this;
}


// ===== 3887b0 std::istream::~istream() =====
void __fastcall std::istream::~istream(std::istream *this)
{
  this->_vptr.basic_istream = (int (**)(...))off_964154;
  *(_DWORD *)this->gap8 = off_95B8E0;
  __ZNSt8ios_baseD2Ev_veneer((std::ios_base *const)this->gap8);
}


// ===== 3887f8 `virtual thunk to'std::istream::~istream() =====
void __fastcall `virtual thunk to'std::istream::~istream(std::istream *this)
{
  std::istream::~istream((std::istream *)((char *)this + *((_DWORD *)this->_vptr.basic_istream - 3)));
}


// ===== 388808 `non-virtual thunk to'std::iostream::~iostream() =====
void __fastcall `non-virtual thunk to'std::iostream::~iostream(std::iostream *this)
{
  std::iostream::~iostream((std::iostream *)((char *)this - 8));
}


// ===== 388810 std::iostream::~iostream() =====
void __fastcall std::iostream::~iostream(std::iostream *this)
{
  *(_DWORD *)this = off_964184;
  *((_DWORD *)this + 3) = off_9641AC;
  *((_DWORD *)this + 2) = off_96420C;
  *(_DWORD *)&byte_4[(_DWORD)this + 8] = off_964220;
  *(_DWORD *)this = off_9641E4;
  *(_DWORD *)&byte_9[(_DWORD)this + 3] = off_9641F8;
  *((_DWORD *)this + 3) = off_95B8E0;
  __ZNSt8ios_baseD2Ev_veneer((std::ios_base *const)((char *)this + 12));
}


// ===== 388898 `virtual thunk to'std::iostream::~iostream() =====
void __fastcall `virtual thunk to'std::iostream::~iostream(std::iostream *this)
{
  std::iostream::~iostream((std::iostream *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 3888a8 `non-virtual thunk to'std::iostream::~iostream() =====
void __fastcall `non-virtual thunk to'std::iostream::~iostream(std::iostream *this)
{
  std::iostream::~iostream((std::iostream *)((char *)this - 8));
}


// ===== 3888b0 std::iostream::~iostream() =====
void __fastcall std::iostream::~iostream(std::iostream *this)
{
  std::iostream::~iostream(this);
  CustomFree(this);
}


// ===== 3888cc `virtual thunk to'std::iostream::~iostream() =====
void __fastcall `virtual thunk to'std::iostream::~iostream(std::iostream *this)
{
  std::iostream::~iostream((std::iostream *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 3888dc `global constructor keyed to'.._.._sources_Game_Objects_Block.cpp =====
int `global constructor keyed to'.._.._sources_Game_Objects_Block.cpp()
{
  int result; // r0

  result = 1056964608;
  dword_9A26BC = 1056964608;
  dword_9A26CC = -1082130432;
  glitch::ps::vHalf = 1056964608;
  dword_9A26B8 = 1056964608;
  Module::UNINIT_FOG_COLOR = -1082130432;
  dword_9A26C8 = -1082130432;
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


// ===== 388a2c PODecor::PODecor(PhysicalWorld *,GameObject *,bool) [clone] =====
void __fastcall PODecor::PODecor(PODecor *this, PhysicalWorld *a2, GameObject *a3, bool a4)
{
  PhysicalObject::PhysicalObject(this, a2, a3, 1, 0, 0, 0, 0, 2u, 0xFFFFu, 1);
  *(_DWORD *)this = off_968F88;
}


// ===== 388a98 Decor::InitPost(void) =====
int __fastcall Decor::InitPost(Decor *this)
{
  int result; // r0
  PhysicalWorld *v3; // r6
  PODecor *v4; // r5
  bool v5; // r3

  GameObject::InitPost(this);
  result = *((_DWORD *)this + 182);
  if ( result )
  {
    VisualObject::ApplyMeshBox(result);
    if ( *(_BYTE *)(*((_DWORD *)this + 182) + 40) )
    {
      v3 = (PhysicalWorld *)dword_99F770;
      v4 = (PODecor *)operator new(0x28u, 0);
      PODecor::PODecor(v4, v3, this, v5);
      GameObject::SetPhysicalObject(this, v4, 0);
    }
    return Decor::LoadFloorMap(this);
  }
  return result;
}


// ===== 388b20 Module::InitPost(void) =====
int __fastcall Module::InitPost(Module *this)
{
  int result; // r0
  int v3; // r3
  const char *v4; // r9
  int v5; // r7
  int v6; // r1
  int v7; // r2
  _DWORD v8[3]; // [sp+Ch] [bp-48h] BYREF
  char v9[52]; // [sp+18h] [bp-3Ch] BYREF

  result = Decor::InitPost(this);
  v3 = *((_DWORD *)this + 182);
  if ( v3 )
  {
    (*(void (__fastcall **)(_DWORD))(**(_DWORD **)(v3 + 8) + 52))(*(_DWORD *)(v3 + 8));
    v4 = (const char *)dword_99F764;
    sprintf(v9, "generated_roomzone_%04d", Module::InitPost(void)::unique_roomzone_id);
    ++Module::InitPost(void)::unique_roomzone_id;
    ObjectManager::Spawn((ObjectManager *)v8, v4, "RoomZone", (bool)v9, 0);
    result = ObjectHandle::GetObject((ObjectHandle *)v8, 0);
    v5 = result;
    if ( result )
    {
      if ( *(_DWORD *)(result + 244) == 11 )
      {
        v6 = v8[1];
        v7 = v8[2];
        *((_DWORD *)this + 256) = v8[0];
        *((_DWORD *)this + 257) = v6;
        *((_DWORD *)this + 258) = v7;
        result = Zone::InitWithBoundingBox();
        *(_DWORD *)(v5 + 908) = this;
      }
    }
  }
  return result;
}


// ===== 388c58 Random::GetRandom(int,bool) [clone] =====
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


// ===== 388cec AnimatedDecor::__CallbackRandomAll(glitch::scene::ITimelineController *,void *) =====
int __fastcall AnimatedDecor::__CallbackRandomAll(
        AnimatedDecor *this,
        glitch::scene::ITimelineController *a2,
        void *a3)
{
  __int64 v4; // r0
  bool v5; // r2
  int Random; // r0
  int result; // r0

  v4 = ((__int64 (__fastcall *)(_DWORD, _DWORD, void *))*(_DWORD *)(**(_DWORD **)(*((_DWORD *)a2 + 182) + 56) + 16))(
         *(_DWORD *)(*((_DWORD *)a2 + 182) + 56),
         0,
         a3);
  Random = Random::GetRandom((Random *)(v4 - 1), SHIDWORD(v4), v5);
  result = (*(int (__fastcall **)(_DWORD, int, _DWORD, _DWORD, _DWORD))(**(_DWORD **)(*((_DWORD *)a2 + 182) + 56) + 28))(
             *(_DWORD *)(*((_DWORD *)a2 + 182) + 56),
             Random,
             0,
             0,
             0);
  if ( !result )
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
               "hasAnim == true",
               "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Objects\\Block.cpp",
               345);
    }
  }
  return result;
}


// ===== 388dcc POColmap::~POColmap() =====
void __fastcall POColmap::~POColmap(POColmap *this)
{
  *(_DWORD *)this = off_964008;
  PhysicalObject::~PhysicalObject(this);
  CustomFree(this);
}


// ===== 388e08 `non-virtual thunk to'Floor::~Floor() =====
void __fastcall `non-virtual thunk to'Floor::~Floor(Floor *this)
{
  Floor::~Floor((Floor *)((char *)this - 36));
}


// ===== 388e10 Floor::~Floor() =====
void __fastcall Floor::~Floor(Floor *this)
{
  *(_DWORD *)this = off_964328;
  *((_DWORD *)this + 1) = &off_9643F8;
  *((_DWORD *)this + 9) = off_964404;
  GameObject::~GameObject(this);
  CustomFree(this);
}


// ===== 388e58 `non-virtual thunk to'ColBox::~ColBox() =====
void __fastcall `non-virtual thunk to'ColBox::~ColBox(ColBox *this)
{
  ColBox::~ColBox((ColBox *)((char *)this - 36));
}


// ===== 388e60 ColBox::~ColBox() =====
void __fastcall ColBox::~ColBox(ColBox *this)
{
  *(_DWORD *)this = off_964230;
  *((_DWORD *)this + 1) = &off_964300;
  *((_DWORD *)this + 9) = off_96430C;
  GameObject::~GameObject(this);
  CustomFree(this);
}


// ===== 388ea8 `non-virtual thunk to'Decor::~Decor() =====
void __fastcall `non-virtual thunk to'Decor::~Decor(Decor *this)
{
  Decor::~Decor((Decor *)((char *)this - 36));
}


// ===== 388eb0 Decor::~Decor() =====
void __fastcall Decor::~Decor(Decor *this)
{
  *(_DWORD *)this = off_964610;
  *((_DWORD *)this + 1) = &off_9646E0;
  *((_DWORD *)this + 9) = off_9646EC;
  GameObject::~GameObject(this);
  CustomFree(this);
}


// ===== 388ef8 `non-virtual thunk to'Module::Deserialize(IStreamBase *) =====
RoomZone *__fastcall `non-virtual thunk to'Module::Deserialize(Module *this, IStreamBase *a2)
{
  return Module::Deserialize((Module *)((char *)this - 36), a2);
}


// ===== 388f00 Module::Deserialize(IStreamBase *) =====
RoomZone *__fastcall Module::Deserialize(Module *this, IStreamBase *a2)
{
  RoomZone *result; // r0

  GameObject::Deserialize((VisualObject **)this, a2);
  IStreamBase::readAs<bool>(a2, (char *)this + 1020);
  result = (RoomZone *)ObjectHandle::GetObject((Module *)((char *)this + 1024), 0);
  if ( result )
  {
    if ( *((_DWORD *)result + 61) == 11 )
      return (RoomZone *)RoomZone::SetVisited(result, *((_BYTE *)this + 1020));
  }
  return result;
}


// ===== 388f4c std::istream::~istream() =====
void __fastcall std::istream::~istream(std::istream *this)
{
  this->_vptr.basic_istream = (int (**)(...))off_964154;
  *(_DWORD *)this->gap8 = off_95B8E0;
  __ZNSt8ios_baseD2Ev_veneer((std::ios_base *const)this->gap8);
  CustomFree(this);
}


// ===== 388f9c `virtual thunk to'std::istream::~istream() =====
void __fastcall `virtual thunk to'std::istream::~istream(std::istream *this)
{
  std::istream::~istream((std::istream *)((char *)this + *((_DWORD *)this->_vptr.basic_istream - 3)));
}


// ===== 388fac std::_M_ignore_unbuffered<char,std::char_traits<char>,std::priv::_Is_not_wspace<std::char_traits<char>>>(std::basic_istream<char,std::char_traits<char>> *,std::basic_streambuf<char,std::char_traits<char>> *,std::priv::_Is_not_wspace<std::char_traits<char>>,bool,bool) [clone] =====
void __fastcall std::_M_ignore_unbuffered<char,std::char_traits<char>,std::priv::_Is_not_wspace<std::char_traits<char>>>(
        _DWORD *a1,
        _DWORD *a2,
        int a3)
{
  _BYTE *v3; // r3
  _BYTE *v7; // r2
  int v8; // r0
  int v9; // r12
  int v10; // r3
  _BYTE *v11; // r2
  std::ios_base *v12; // r0
  int v13; // r12
  int M_exception_mask; // r3

  v3 = (_BYTE *)a2[2];
  do
  {
    v7 = v3 + 1;
    if ( a2[3] <= (unsigned int)v3 )
    {
      v8 = (*(int (__fastcall **)(_DWORD *))(*a2 + 36))(a2);
      if ( v8 == -1 )
      {
        v9 = 6;
        goto LABEL_11;
      }
      v7 = (_BYTE *)a2[2];
    }
    else
    {
      a2[2] = v7;
      LOBYTE(v8) = *v3;
    }
    v3 = v7;
    v9 = *(_DWORD *)(*(_DWORD *)(a3 + 12) + 4 * (unsigned __int8)v8) & 1;
  }
  while ( v9 );
  if ( a2[1] < (unsigned int)v7 && (v10 = (unsigned __int8)*(v7 - 1), v11 = v7 - 1, (unsigned __int8)v8 == v10) )
  {
    a2[2] = v11;
  }
  else if ( (*(int (__fastcall **)(_DWORD *))(*a2 + 40))(a2) == -1 )
  {
    v9 = 4;
  }
  else
  {
    v9 = 0;
  }
LABEL_11:
  v12 = (std::ios_base *)((char *)a1 + *(_DWORD *)(*a1 - 12));
  v13 = v9 | v12->_M_iostate;
  M_exception_mask = v12->_M_exception_mask;
  if ( !v12[1]._M_iostate )
    v13 |= 1u;
  v12->_M_iostate = v13;
  if ( (v13 & M_exception_mask) != 0 )
    __ZNSt8ios_base16_M_throw_failureEv_veneer(v12);
}


// ===== 389090 `non-virtual thunk to'AnimatedDecor::~AnimatedDecor() =====
void __fastcall `non-virtual thunk to'AnimatedDecor::~AnimatedDecor(AnimatedDecor *this)
{
  AnimatedDecor::~AnimatedDecor((AnimatedDecor *)((char *)this - 36));
}


// ===== 389098 AnimatedDecor::~AnimatedDecor() =====
void __fastcall AnimatedDecor::~AnimatedDecor(AnimatedDecor *this)
{
  *(_DWORD *)this = off_964420;
  *((_DWORD *)this + 1) = &off_9644F0;
  *((_DWORD *)this + 9) = off_9644FC;
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block((std::priv::_String_base<char,std::allocator<char> > *const)((char *)this + 892));
  *(_DWORD *)this = off_964610;
  *((_DWORD *)this + 1) = &off_9646E0;
  *((_DWORD *)this + 9) = off_9646EC;
  GameObject::~GameObject(this);
}


// ===== 389104 `non-virtual thunk to'AnimatedDecor::~AnimatedDecor() =====
void __fastcall `non-virtual thunk to'AnimatedDecor::~AnimatedDecor(AnimatedDecor *this)
{
  AnimatedDecor::~AnimatedDecor((AnimatedDecor *)((char *)this - 36));
}


// ===== 38910c AnimatedDecor::~AnimatedDecor() =====
void __fastcall AnimatedDecor::~AnimatedDecor(AnimatedDecor *this)
{
  AnimatedDecor::~AnimatedDecor(this);
  CustomFree(this);
}


// ===== 389128 AnimatedDecor::InitPost(void) =====
int __fastcall AnimatedDecor::InitPost(AnimatedDecor *this)
{
  int result; // r0
  int v3; // r8
  const char *v4; // r7
  PhysicalWorld *v5; // r6
  PODecor *v6; // r5
  bool v7; // r3
  __int64 v8; // r0
  bool v9; // r2
  unsigned int Random; // r0

  *((_BYTE *)this + 268) = 1;
  Decor::InitPost(this);
  result = GameObject::MeetCondition(this);
  if ( !result )
    return (*(int (__fastcall **)(AnimatedDecor *))(*(_DWORD *)this + 64))(this);
  v3 = *((_DWORD *)this + 182);
  if ( v3 )
  {
    v4 = *((const char **)this + 228);
    if ( *((const char **)this + 227) == v4 )
    {
      std::string::_M_assign((std::string *const)((char *)this + 892), "idle", "");
      v3 = *((_DWORD *)this + 182);
      v4 = *((const char **)this + 228);
    }
    if ( LC_API_STRCASECMP_0(v4, "randomall") )
    {
      if ( !(*(int (__fastcall **)(_DWORD, const char *, _DWORD))(**(_DWORD **)(v3 + 56) + 20))(
              *(_DWORD *)(v3 + 56),
              v4,
              0)
        || !(*(int (__fastcall **)(_DWORD, _DWORD, int, _DWORD, _DWORD))(**(_DWORD **)(*((_DWORD *)this + 182) + 56) + 32))(
              *(_DWORD *)(*((_DWORD *)this + 182) + 56),
              *((_DWORD *)this + 228),
              1,
              0,
              0) )
      {
        (*(void (__fastcall **)(_DWORD, _DWORD, int, _DWORD, _DWORD))(**(_DWORD **)(*((_DWORD *)this + 182) + 56) + 28))(
          *(_DWORD *)(*((_DWORD *)this + 182) + 56),
          0,
          1,
          0,
          0);
      }
    }
    else
    {
      v8 = ((__int64 (__fastcall *)(_DWORD, _DWORD))*(_DWORD *)(**(_DWORD **)(v3 + 56) + 16))(*(_DWORD *)(v3 + 56), 0);
      Random = Random::GetRandom(v8 - 1, SHIDWORD(v8), v9);
      (*(void (__fastcall **)(_DWORD, unsigned int, _DWORD, _DWORD, _DWORD))(**(_DWORD **)(*((_DWORD *)this + 182) + 56)
                                                                           + 28))(
        *(_DWORD *)(*((_DWORD *)this + 182) + 56),
        Random,
        0,
        0,
        0);
      (*(void (__fastcall **)(_DWORD, int (__fastcall *)(AnimatedDecor *, glitch::scene::ITimelineController *, void *), AnimatedDecor *, _DWORD, AnimatedDecor *))(**(_DWORD **)(*((_DWORD *)this + 182) + 56) + 44))(
        *(_DWORD *)(*((_DWORD *)this + 182) + 56),
        AnimatedDecor::__CallbackRandomAll,
        this,
        0,
        this);
    }
    VisualObject::ApplyMeshBox(*((_DWORD *)this + 182));
    if ( *(_BYTE *)(*((_DWORD *)this + 182) + 40) )
    {
      v5 = (PhysicalWorld *)dword_99F770;
      v6 = (PODecor *)operator new(0x28u, 0);
      PODecor::PODecor(v6, v5, this, v7);
      GameObject::SetPhysicalObject(this, v6, 0);
    }
    return (*(int (__fastcall **)(AnimatedDecor *))(*(_DWORD *)this + 44))(this);
  }
  return result;
}


// ===== 38933c `non-virtual thunk to'std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream() =====
int __fastcall `non-virtual thunk to'std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(
        int a1)
{
  return std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(a1 - 8);
}


// ===== 389344 std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream() =====
int __fastcall std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(int a1)
{
  *(_DWORD *)a1 = off_964084;
  *(_DWORD *)(a1 + 72) = off_9640AC;
  *(_DWORD *)(a1 + 8) = off_964098;
  std::stringbuf::~stringbuf(a1 + 12);
  *(_DWORD *)a1 = off_9640C4;
  *(int *)((char *)&dword_48 + a1) = (int)off_9640EC;
  *(_DWORD *)(a1 + 8) = off_96412C;
  *(int *)((char *)&dword_40 + a1 + 8) = (int)off_964140;
  *(_DWORD *)a1 = off_964104;
  *(int *)((char *)&dword_48 + a1) = (int)off_964118;
  *(_DWORD *)(a1 + 72) = off_95B8E0;
  __ZNSt8ios_baseD2Ev_veneer((std::ios_base *const)(a1 + 72));
  return a1;
}


// ===== 3893f8 `virtual thunk to'std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream() =====
int __fastcall `virtual thunk to'std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(
        _DWORD *a1)
{
  return std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream((int)a1 + *(_DWORD *)(*a1 - 12));
}


// ===== 389408 `non-virtual thunk to'std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream() =====
int __fastcall `non-virtual thunk to'std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(
        int a1)
{
  return std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(a1 - 8);
}


// ===== 389410 std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream() =====
void *__fastcall std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(
        void *a1)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream((int)a1);
  CustomFree(a1);
  return a1;
}


// ===== 38942c `virtual thunk to'std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream() =====
void *__fastcall `virtual thunk to'std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(
        _DWORD *a1)
{
  return std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream((char *)a1 + *(_DWORD *)(*a1 - 12));
}


// ===== 38943c `non-virtual thunk to'Module::~Module() =====
void __fastcall `non-virtual thunk to'Module::~Module(Module *this)
{
  Module::~Module((std::priv::_String_base<char,std::allocator<char> > *)((char *)this - 36));
}


// ===== 389444 Module::~Module() =====
void __fastcall Module::~Module(std::priv::_String_base<char,std::allocator<char> > *this)
{
  int Object; // r0
  void *v3; // r0
  size_t v4; // r1

  this->_M_buffers._M_end_of_storage = (char *)off_964518;
  *(_DWORD *)&this->_M_buffers._M_static_buf[4] = &off_9645E8;
  *((_DWORD *)this + 9) = off_9645F4;
  Object = ObjectHandle::GetObject((ObjectHandle *)((char *)this + 1024), 0);
  if ( Object && *(_DWORD *)(Object + 244) == 11 )
    *(_DWORD *)(Object + 908) = 0;
  v3 = *((void **)this + 260);
  if ( v3 )
  {
    v4 = (*((_DWORD *)this + 262) - (_DWORD)v3) & 0xFFFFFFFC;
    if ( v4 > 0x80 )
      CustomFree(v3);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v3, v4);
  }
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(this + 41);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(this + 40);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(this + 39);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(this + 38);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(this + 37);
  this->_M_buffers._M_end_of_storage = (char *)off_964610;
  *(_DWORD *)&this->_M_buffers._M_static_buf[4] = &off_9646E0;
  *((_DWORD *)this + 9) = off_9646EC;
  GameObject::~GameObject((GameObject *)this);
}


// ===== 389524 `non-virtual thunk to'Module::~Module() =====
void __fastcall `non-virtual thunk to'Module::~Module(Module *this)
{
  Module::~Module((Module *)((char *)this - 36));
}


// ===== 38952c Module::~Module() =====
void __fastcall Module::~Module(std::priv::_String_base<char,std::allocator<char> > *this)
{
  Module::~Module(this);
  CustomFree(this);
}


// ===== 389548 Module::~Module() =====
void __fastcall Module::~Module(std::priv::_String_base<char,std::allocator<char> > *this)
{
  char *Object; // r0
  void *v3; // r0
  size_t v4; // r1

  this->_M_buffers._M_end_of_storage = (char *)off_964518;
  *(_DWORD *)&this->_M_buffers._M_static_buf[4] = &off_9645E8;
  *((_DWORD *)this + 9) = off_9645F4;
  Object = ObjectHandle::GetObject((char **)this + 256, 0);
  if ( Object && *((_DWORD *)Object + 61) == 11 )
    *((_DWORD *)Object + 227) = 0;
  v3 = *((void **)this + 260);
  if ( v3 )
  {
    v4 = (*((_DWORD *)this + 262) - (_DWORD)v3) & 0xFFFFFFFC;
    if ( v4 > 0x80 )
      CustomFree(v3);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v3, v4);
  }
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(this + 41);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(this + 40);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(this + 39);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(this + 38);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(this + 37);
  this->_M_buffers._M_end_of_storage = (char *)off_964610;
  *(_DWORD *)&this->_M_buffers._M_static_buf[4] = &off_9646E0;
  *((_DWORD *)this + 9) = off_9646EC;
  GameObject::~GameObject((GameObject *)this);
}


// ===== 389628 std::vector<int,std::allocator<int>>::_M_insert_overflow(int *,int const&,std::__true_type const&,uint,bool) [clone] =====
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


// ===== 3896f0 ColBox::Draw(void) =====
void __fastcall ColBox::Draw(ColBox *this)
{
  int Switch; // r8
  int v3; // r8
  int v4; // r9
  int v5; // r2
  int Technique; // r2
  int v7; // r11
  int v8; // r10
  void (__fastcall *v9)(int, _DWORD *, int); // r8
  float v10; // r9
  float v11; // r0
  int v12; // r1
  int v13; // r12
  int v14; // lr
  _DWORD v15[7]; // [sp+0h] [bp-44h] BYREF
  glitch::video::CMaterial *v16; // [sp+1Ch] [bp-28h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v17; // [sp+24h] [bp-20h] BYREF

  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string((std::string *)&v17, "isDisplayingColBox");
  Switch = DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, (const std::string *)&v17);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v17);
  if ( Switch )
  {
    v3 = *(_DWORD *)(dword_99F73C + 16);
    v4 = *(_DWORD *)(v3 + 220);
    v5 = *(unsigned __int16 *)(v4 + 46);
    if ( v5 == 0xFFFF )
      LOBYTE(v5) = glitch::video::CMaterialRendererManager::createMaterialRenderer(*(_DWORD *)(v3 + 220), 1);
    glitch::video::CMaterialRendererManager::getMaterialInstance(
      (glitch::video::CMaterialRendererManager *)&v16,
      v4,
      v5);
    if ( v16 )
      Technique = glitch::video::CMaterial::getTechnique(v16);
    else
      Technique = 255;
    glitch::video::IVideoDriver::setMaterial(v3, &v16, Technique, 0);
    v7 = *((_DWORD *)this + 76);
    v8 = *(_DWORD *)(dword_99F73C + 16);
    v9 = *(void (__fastcall **)(int, _DWORD *, int))(*(_DWORD *)v8 + 40);
    v10 = *((float *)this + 77) + 50.0;
    v11 = *((float *)this + 80) + 50.0;
    v12 = *((_DWORD *)this + 78);
    v13 = *((_DWORD *)this + 75);
    v14 = *((_DWORD *)this + 79);
    v15[6] = -16776961;
    *(float *)&v15[5] = v11;
    v15[3] = v12;
    v15[0] = v13;
    v15[1] = v7;
    *(float *)&v15[2] = v10;
    v15[4] = v14;
    v9(v8, v15, -16776961);
    boost::intrusive_ptr<glitch::video::CMaterial>::~intrusive_ptr(&v16);
  }
}


// ===== 389894 PropertyMap::AddProperty<Point3D<float>>(char const*,Point3D<float> &,Point3D<float>) =====
_DWORD *__fastcall PropertyMap::AddProperty<Point3D<float>>(PropertyMap *a1, char *a2, int a3, int *a4)
{
  int v6; // r11
  int v7; // r8
  int v8; // r9
  Property *v10; // r4

  v6 = a4[2];
  v7 = *a4;
  v8 = a4[1];
  v10 = (Property *)operator new(44, 0);
  *(_DWORD *)v10 = &off_95C5E8;
  std::string::string((int)v10 + 8, a2);
  *((_DWORD *)v10 + 1) = a3 - (_DWORD)a1;
  *((_DWORD *)v10 + 8) = v7;
  *((_DWORD *)v10 + 9) = v8;
  *(_DWORD *)v10 = off_964038;
  *((_DWORD *)v10 + 10) = v6;
  return PropertyMap::AddProperty(a1, a2, v10);
}


// ===== 389930 `non-virtual thunk to'ColBox::DeclareProperties(void) =====
int __fastcall `non-virtual thunk to'ColBox::DeclareProperties(ColBox *this)
{
  return ColBox::DeclareProperties((ColBox *)((char *)this - 4));
}


// ===== 389938 ColBox::DeclareProperties(void) =====
_DWORD *__fastcall ColBox::DeclareProperties(ColBox *this)
{
  int v3[3]; // [sp+4h] [bp-Ch] BYREF

  GameObject::DeclareProperties(this);
  v3[2] = 1128792064;
  v3[0] = 1128792064;
  v3[1] = 1128792064;
  return PropertyMap::AddProperty<Point3D<float>>((ColBox *)((char *)this + 4), "dimensions", (int)this + 884, v3);
}


// ===== 389980 SimpleTypeProperty<Point3D<float>>::ToString(void *) =====
std::string *__fastcall SimpleTypeProperty<Point3D<float>>::ToString(std::string *a1, int a2, int a3)
{
  char *v6; // r5

  v6 = (char *)CustomAlloc(0x100u);
  ObjToStr(v6, (float *)(a3 + *(_DWORD *)(a2 + 4)));
  std::string::string(a1, v6);
  return a1;
}


// ===== 3899c8 `non-virtual thunk to'Decor::DeclareProperties(void) =====
_DWORD *__fastcall `non-virtual thunk to'Decor::DeclareProperties(Decor *this)
{
  return Decor::DeclareProperties((Decor *)((char *)this - 4));
}


// ===== 3899d0 Decor::DeclareProperties(void) =====
_DWORD *__fastcall Decor::DeclareProperties(Decor *this)
{
  int v2; // r4

  GameObject::DeclareProperties(this);
  v2 = operator new(0x24u, 0);
  *(_DWORD *)v2 = &off_95C5E8;
  std::string::string(v2 + 8, "is_solid");
  *(_DWORD *)v2 = &off_95C608;
  *(_DWORD *)(v2 + 4) = 882;
  *(_BYTE *)(v2 + 32) = 1;
  return PropertyMap::AddProperty((Decor *)((char *)this + 4), "is_solid", (Property *)v2);
}


// ===== 389a6c std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream(std::string const&,int) [clone] =====
int __fastcall std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream(
        int a1,
        const std::string *a2)
{
  int v2; // r8
  int v5; // r3
  int v6; // r3
  int v7; // r3
  int v8; // r1
  int v9; // r0
  int v10; // r12

  v2 = a1 + 72;
  __ZNSt8ios_baseC2Ev_veneer((std::ios_base *const)(a1 + 72));
  *(_DWORD *)(a1 + 72) = off_95B8E0;
  *(_BYTE *)(v2 + 68) = 0;
  *(_DWORD *)(v2 + 72) = 0;
  *(_DWORD *)(v2 + 76) = 0;
  *(_DWORD *)a1 = off_964104;
  *(int *)((char *)&dword_48 + a1) = (int)off_964118;
  v5 = *(_DWORD *)a1;
  *(_DWORD *)(a1 + 4) = 0;
  std::ios::init(a1 + *(_DWORD *)(v5 - 12), 0, (int)off_964118, v5);
  *(_DWORD *)(a1 + 8) = off_96412C;
  *(int *)((char *)&dword_40 + a1 + 8) = (int)off_964140;
  std::ios::init(a1 + 8 + *(_DWORD *)(*(_DWORD *)(a1 + 8) - 12), 0, *(_DWORD *)(a1 + 8), a1 + 8);
  *(_DWORD *)a1 = off_9640C4;
  *(int *)((char *)&dword_48 + a1) = (int)off_9640EC;
  v6 = *(_DWORD *)a1;
  *(_DWORD *)(a1 + 8) = off_9640D8;
  std::ios::init(a1 + *(_DWORD *)(v6 - 12), 0, (int)off_9640D8, v6);
  *(_DWORD *)(a1 + 36) = 0;
  *(_DWORD *)(a1 + 16) = 0;
  *(_DWORD *)a1 = off_964084;
  *(_DWORD *)(a1 + 72) = off_9640AC;
  *(_DWORD *)(a1 + 8) = off_964098;
  *(_DWORD *)(a1 + 12) = off_95B938;
  *(_DWORD *)(a1 + 20) = 0;
  *(_DWORD *)(a1 + 24) = 0;
  *(_DWORD *)(a1 + 28) = 0;
  *(_DWORD *)(a1 + 32) = 0;
  __ZNSt6localeC1Ev_veneer((std::locale *const)(a1 + 40));
  *(_DWORD *)(a1 + 44) = byte_8;
  *(_DWORD *)(a1 + 12) = off_95B8F0;
  std::string::string((std::string *)(a1 + 48), a2);
  v7 = *(_DWORD *)(a1 + 44);
  v8 = *(_DWORD *)(a1 + 64);
  v9 = *(_DWORD *)(a1 + 68);
  if ( (v7 & 8) != 0 )
  {
    if ( (v7 & 2) != 0 )
      v10 = *(_DWORD *)(a1 + 64);
    else
      v10 = *(_DWORD *)(a1 + 68);
    *(_DWORD *)(a1 + 20) = v10;
    *(_DWORD *)(a1 + 16) = v9;
    *(_DWORD *)(a1 + 24) = v8;
  }
  if ( (v7 & 0x10) != 0 )
  {
    if ( (v7 & 3) != 0 )
    {
      *(_DWORD *)(a1 + 36) = v8;
      *(_DWORD *)(a1 + 28) = v8;
    }
    else
    {
      *(_DWORD *)(a1 + 28) = v9;
      *(_DWORD *)(a1 + 36) = v8;
    }
    *(_DWORD *)(a1 + 32) = v8;
  }
  std::ios::init(v2, a1 + 12, v8, v7);
  return a1;
}


// ===== 389c30 std::vector<std::string,std::allocator<std::string>>::_M_insert_overflow_aux(std::string *,std::string const&,std::__false_type const&,uint,bool) [clone] =====
void __fastcall std::vector<std::string>::_M_insert_overflow_aux(std::string **a1, int a2, const std::string *a3)
{
  unsigned int v6; // r0
  unsigned int v7; // r1
  std::string *v8; // r0
  std::string *v9; // r12
  std::string *v10; // r5
  int v11; // r3
  int v12; // r8
  std::string *v13; // r8
  int v14; // r6
  std::string *v15; // lr
  char *M_data; // r3
  int v17; // r1
  int v18; // r2
  int v19; // r3
  char *M_finish; // r2
  char *v21; // r3
  std::string *v22; // r0
  std::string *v23; // r8
  size_t v24; // r3
  size_t v25; // [sp+4h] [bp-8h] BYREF

  v6 = -1431655765 * (((char *)a1[1] - (char *)*a1) >> 3);
  if ( v6 )
    v7 = 2 * v6;
  else
    v7 = 1;
  if ( v7 > 0xAAAAAAA || v6 > v7 )
    v7 = 178956970;
  v25 = v7;
  v8 = (std::string *)std::allocator<std::string>::_M_allocate((int)(a1 + 2), v7, &v25);
  v9 = *a1;
  v10 = v8;
  v11 = (a2 - (int)*a1) >> 3;
  v12 = -1431655765 * v11;
  if ( -1431655765 * v11 <= 0 )
  {
    v13 = v8;
    goto LABEL_14;
  }
  v14 = -1431655765 * v11;
  v15 = v8;
  while ( 1 )
  {
    v15->_M_start_of_storage._M_data = v9->_M_start_of_storage._M_data;
    M_data = v9->_M_start_of_storage._M_data;
    if ( M_data == (char *)v9 )
      break;
    v15->_M_start_of_storage._M_data = M_data;
    --v14;
    v15->_M_finish = v9->_M_finish;
    v15->_M_buffers._M_end_of_storage = v9->_M_buffers._M_end_of_storage;
    v9->_M_start_of_storage._M_data = nullptr;
    ++v15;
    if ( !v14 )
      goto LABEL_13;
LABEL_10:
    ++v9;
  }
  v17 = *(_DWORD *)&v9->_M_buffers._M_static_buf[4];
  v18 = *(_DWORD *)&v9->_M_buffers._M_static_buf[8];
  v19 = *(_DWORD *)&v9->_M_buffers._M_static_buf[12];
  v15->_M_buffers._M_end_of_storage = v9->_M_buffers._M_end_of_storage;
  *(_DWORD *)&v15->_M_buffers._M_static_buf[4] = v17;
  *(_DWORD *)&v15->_M_buffers._M_static_buf[8] = v18;
  *(_DWORD *)&v15->_M_buffers._M_static_buf[12] = v19;
  M_finish = v9->_M_finish;
  v21 = v9->_M_start_of_storage._M_data;
  --v14;
  v15->_M_start_of_storage._M_data = (char *)v15;
  v15->_M_finish = (char *)v15 + M_finish - v21;
  ++v15;
  if ( v14 )
    goto LABEL_10;
LABEL_13:
  v13 = v8 + v12;
LABEL_14:
  std::string::string(v13, a3);
  v22 = *a1;
  v23 = v13 + 1;
  if ( *a1 )
  {
    if ( (unsigned int)(8 * (((char *)a1[2] - (char *)v22) >> 3)) > 0x80 )
      CustomFree(v22);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v22, 8 * (((char *)a1[2] - (char *)v22) >> 3));
  }
  v24 = v25;
  *a1 = v10;
  a1[1] = v23;
  a1[2] = &v10[v24];
}


// ===== 389dcc `non-virtual thunk to'AnimatedDecor::DeclareProperties(void) =====
int __fastcall `non-virtual thunk to'AnimatedDecor::DeclareProperties(AnimatedDecor *this)
{
  return AnimatedDecor::DeclareProperties((AnimatedDecor *)((char *)this - 4));
}


// ===== 389dd4 AnimatedDecor::DeclareProperties(void) =====
void __fastcall AnimatedDecor::DeclareProperties(AnimatedDecor *this)
{
  Decor::DeclareProperties(this);
  PropertyMap::AddProperty<std::string>((int)this + 4, (int)"startanim", (int)this + 892);
}


// ===== 389dfc `non-virtual thunk to'Module::DeclareProperties(void) =====
_DWORD *__fastcall `non-virtual thunk to'Module::DeclareProperties(Module *this)
{
  return Module::DeclareProperties((Module *)((char *)this - 4));
}


// ===== 389e04 Module::DeclareProperties(void) =====
_DWORD *__fastcall Module::DeclareProperties(Module *this)
{
  int v3[3]; // [sp+4h] [bp-Ch] BYREF

  Decor::DeclareProperties(this);
  PropertyMap::AddProperty<std::string>((int)this + 4, (int)"mgp", (int)this + 888);
  PropertyMap::AddProperty<std::string>((int)this + 4, (int)"mvp", (int)this + 912);
  PropertyMap::AddProperty<std::string>((int)this + 4, (int)"alt_mgp", (int)this + 936);
  PropertyMap::AddProperty<std::string>((int)this + 4, (int)"alt_mvp", (int)this + 960);
  PropertyMap::AddProperty<std::string>((int)this + 4, (int)"alt_prob", (int)this + 984);
  v3[0] = Module::UNINIT_FOG_COLOR;
  v3[1] = dword_9A26C8;
  v3[2] = dword_9A26CC;
  return PropertyMap::AddProperty<Point3D<float>>((Module *)((char *)this + 4), "fog_color", (int)this + 1008, v3);
}


// ===== 389ee4 SimpleTypeProperty<Point3D<float>>::Clone(void) =====
int __fastcall SimpleTypeProperty<Point3D<float>>::Clone(int a1)
{
  int v2; // r4

  v2 = operator new(0x2Cu, 0);
  *(_DWORD *)v2 = &off_95C5E8;
  *(_DWORD *)(v2 + 24) = v2 + 8;
  *(_DWORD *)(v2 + 28) = v2 + 8;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block((_DWORD *)(v2 + 8), 0x10u);
  **(_BYTE **)(v2 + 24) = 0;
  *(_DWORD *)v2 = off_964038;
  *(_DWORD *)(v2 + 40) = 0;
  *(_DWORD *)(v2 + 32) = 0;
  *(_DWORD *)(v2 + 36) = 0;
  *(_DWORD *)(v2 + 4) = *(_DWORD *)(a1 + 4);
  if ( v2 + 8 != a1 + 8 )
    std::string::_M_assign((std::string *const)(v2 + 8), *(const char **)(a1 + 28), *(const char **)(a1 + 24));
  *(_DWORD *)(v2 + 32) = *(_DWORD *)(a1 + 32);
  *(_DWORD *)(v2 + 36) = *(_DWORD *)(a1 + 36);
  *(_DWORD *)(v2 + 40) = *(_DWORD *)(a1 + 40);
  return v2;
}


// ===== 389fa8 Module::Module(ObjectBase::GO_IDS) =====
int __fastcall Module::Module(int a1)
{
  int v2; // r3
  int v4; // r1

  GameObject::GameObject(a1);
  *(_DWORD *)a1 = off_964518;
  *(_DWORD *)(a1 + 4) = &off_9645E8;
  *(_DWORD *)(a1 + 36) = off_9645F4;
  *(_DWORD *)(a1 + 904) = a1 + 888;
  *(_DWORD *)(a1 + 908) = a1 + 888;
  *(_BYTE *)(a1 + 885) = 1;
  *(_BYTE *)(a1 + 886) = 1;
  *(_BYTE *)(a1 + 132) = 1;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block(a1 + 888, 0x10u);
  **(_BYTE **)(a1 + 904) = 0;
  *(_DWORD *)(a1 + 928) = a1 + 912;
  *(_DWORD *)(a1 + 932) = a1 + 912;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block(a1 + 912, 0x10u);
  **(_BYTE **)(a1 + 928) = 0;
  *(_DWORD *)(a1 + 952) = a1 + 936;
  *(_DWORD *)(a1 + 956) = a1 + 936;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block(a1 + 936, 0x10u);
  **(_BYTE **)(a1 + 952) = 0;
  *(_DWORD *)(a1 + 976) = a1 + 960;
  *(_DWORD *)(a1 + 980) = a1 + 960;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block(a1 + 960, 0x10u);
  **(_BYTE **)(a1 + 976) = 0;
  *(_DWORD *)(a1 + 1000) = a1 + 984;
  *(_DWORD *)(a1 + 1004) = a1 + 984;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block(a1 + 984, 0x10u);
  **(_BYTE **)(a1 + 1000) = 0;
  *(_DWORD *)(a1 + 1008) = Module::UNINIT_FOG_COLOR;
  *(_DWORD *)(a1 + 1012) = dword_9A26C8;
  v2 = dword_9A26CC;
  *(_BYTE *)(a1 + 1020) = 0;
  *(_DWORD *)(a1 + 1016) = v2;
  ObjectHandle::ObjectHandle((ObjectHandle *)(a1 + 1024));
  *(_DWORD *)(a1 + 1048) = 0;
  *(_BYTE *)(a1 + 132) = 1;
  *(_DWORD *)(a1 + 1040) = 0;
  *(_DWORD *)(a1 + 1044) = 0;
  *(_BYTE *)(a1 + 40) = 1;
  v4 = Module::s_moduleId + 1;
  *(_DWORD *)(a1 + 1036) = Module::s_moduleId;
  Module::s_moduleId = v4;
  return a1;
}


// ===== 38a100 Module::Module(ObjectBase::GO_IDS) =====
int __fastcall Module::Module(int a1)
{
  int v2; // r3
  int v4; // r1

  GameObject::GameObject(a1);
  *(_DWORD *)a1 = off_964518;
  *(_DWORD *)(a1 + 4) = &off_9645E8;
  *(_DWORD *)(a1 + 36) = off_9645F4;
  *(_DWORD *)(a1 + 904) = a1 + 888;
  *(_DWORD *)(a1 + 908) = a1 + 888;
  *(_BYTE *)(a1 + 885) = 1;
  *(_BYTE *)(a1 + 886) = 1;
  *(_BYTE *)(a1 + 132) = 1;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block(a1 + 888, 0x10u);
  **(_BYTE **)(a1 + 904) = 0;
  *(_DWORD *)(a1 + 928) = a1 + 912;
  *(_DWORD *)(a1 + 932) = a1 + 912;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block(a1 + 912, 0x10u);
  **(_BYTE **)(a1 + 928) = 0;
  *(_DWORD *)(a1 + 952) = a1 + 936;
  *(_DWORD *)(a1 + 956) = a1 + 936;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block(a1 + 936, 0x10u);
  **(_BYTE **)(a1 + 952) = 0;
  *(_DWORD *)(a1 + 976) = a1 + 960;
  *(_DWORD *)(a1 + 980) = a1 + 960;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block(a1 + 960, 0x10u);
  **(_BYTE **)(a1 + 976) = 0;
  *(_DWORD *)(a1 + 1000) = a1 + 984;
  *(_DWORD *)(a1 + 1004) = a1 + 984;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block(a1 + 984, 0x10u);
  **(_BYTE **)(a1 + 1000) = 0;
  *(_DWORD *)(a1 + 1008) = Module::UNINIT_FOG_COLOR;
  *(_DWORD *)(a1 + 1012) = dword_9A26C8;
  v2 = dword_9A26CC;
  *(_BYTE *)(a1 + 1020) = 0;
  *(_DWORD *)(a1 + 1016) = v2;
  ObjectHandle::ObjectHandle((ObjectHandle *)(a1 + 1024));
  *(_DWORD *)(a1 + 1048) = 0;
  *(_BYTE *)(a1 + 132) = 1;
  *(_DWORD *)(a1 + 1040) = 0;
  *(_DWORD *)(a1 + 1044) = 0;
  *(_BYTE *)(a1 + 40) = 1;
  v4 = Module::s_moduleId + 1;
  *(_DWORD *)(a1 + 1036) = Module::s_moduleId;
  Module::s_moduleId = v4;
  return a1;
}


// ===== 38a258 std::getline<char,std::char_traits<char>,std::allocator<char>>(std::basic_istream<char,std::char_traits<char>> &,std::basic_string<char,std::char_traits<char>,std::allocator<char>> &,char) [clone] =====
_DWORD *__fastcall std::getline<char,std::char_traits<char>,std::allocator<char>>(_DWORD *a1, std::string *a2)
{
  std::ios_base *v4; // r0
  int M_iostate; // r2
  int v6; // r3
  int M_exception_mask; // r2
  char *M_data; // r3
  unsigned int v9; // r5
  _DWORD *v10; // r4
  int v11; // r0
  _BYTE *v12; // r3
  _BYTE *v13; // r1
  std::ios_base *v14; // r0
  int v15; // r2
  int v16; // r3
  int v17; // r2

  if ( !std::_M_init_noskip<char,std::char_traits<char>>(a1) )
  {
LABEL_2:
    v4 = (std::ios_base *)((char *)a1 + *(_DWORD *)(*a1 - 12));
    M_iostate = v4->_M_iostate;
    v6 = M_iostate | 4;
    if ( !v4[1]._M_iostate )
      v6 = M_iostate | 5;
    M_exception_mask = v4->_M_exception_mask;
    v4->_M_iostate = v6;
    if ( (v6 & M_exception_mask) != 0 )
      __ZNSt8ios_base16_M_throw_failureEv_veneer(v4);
    return a1;
  }
  M_data = a2->_M_start_of_storage._M_data;
  v9 = 0;
  v10 = *(_DWORD **)((char *)a1 + *(_DWORD *)(*a1 - 12) + 72);
  if ( M_data != a2->_M_finish )
  {
    *M_data = 0;
    a2->_M_finish = a2->_M_start_of_storage._M_data;
  }
  while ( 1 )
  {
    v12 = (_BYTE *)v10[2];
    v13 = v12 + 1;
    if ( (unsigned int)v12 < v10[3] )
    {
      v10[2] = v13;
      LOBYTE(v11) = *v12;
      goto LABEL_11;
    }
    v11 = (*(int (__fastcall **)(_DWORD *, _BYTE *))(*v10 + 36))(v10, v13);
    if ( v11 == -1 )
      break;
LABEL_11:
    ++v9;
    if ( (char)v11 != 44 )
    {
      std::string::push_back(a2, (_BYTE *)(char)v11);
      if ( v9 != -2 )
        continue;
    }
    goto LABEL_20;
  }
  v14 = (std::ios_base *)((char *)a1 + *(_DWORD *)(*a1 - 12));
  v15 = v14->_M_iostate;
  v16 = v15 | 2;
  if ( !v14[1]._M_iostate )
    v16 = v15 | 3;
  v17 = v14->_M_exception_mask;
  v14->_M_iostate = v16;
  if ( (v16 & v17) != 0 )
    __ZNSt8ios_base16_M_throw_failureEv_veneer(v14);
  if ( !v9 )
    goto LABEL_2;
LABEL_20:
  if ( v9 > 0xFFFFFFFD )
    goto LABEL_2;
  return a1;
}


// ===== 38a38c Module::_ChooseXmls(std::string &,std::string &) =====
int __fastcall Module::_ChooseXmls(const char **this, std::string *a2, std::string *a3)
{
  char *v3; // r6
  _DWORD *v5; // r0
  _DWORD *v6; // r0
  int i; // r10
  _DWORD *v8; // r0
  int v9; // r10
  int *v10; // r1
  char v11; // r2
  int v12; // r9
  int v13; // r1
  int Random; // r0
  int v15; // lr
  int v16; // r2
  int v17; // r9
  int v18; // r3
  size_t v19; // r1
  int v21; // r0
  std::string *v22; // r9
  int j; // r10
  int v24; // r3
  void *__p; // [sp+20h] [bp-214h] BYREF
  int *v28; // [sp+24h] [bp-210h]
  int *v29; // [sp+28h] [bp-20Ch]
  int v30; // [sp+2Ch] [bp-208h] BYREF
  int v31; // [sp+30h] [bp-204h]
  int v32; // [sp+34h] [bp-200h]
  int v33; // [sp+38h] [bp-1FCh] BYREF
  bool v34[4]; // [sp+3Ch] [bp-1F8h]
  int v35; // [sp+40h] [bp-1F4h]
  int v36; // [sp+44h] [bp-1F0h]
  int v37; // [sp+48h] [bp-1ECh]
  _BYTE v38[152]; // [sp+4Ch] [bp-1E8h] BYREF
  _BYTE v39[152]; // [sp+E4h] [bp-150h] BYREF
  _BYTE v40[152]; // [sp+17Ch] [bp-B8h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v41; // [sp+214h] [bp-20h] BYREF

  v3 = (char *)(this + 222);
  if ( this + 222 != (const char **)a2 )
    std::string::_M_assign(a2, *(this + 227), *(this + 226));
  if ( this + 228 != (const char **)a3 )
    std::string::_M_assign(a3, *(this + 233), *(this + 232));
  if ( *(this + 239) == *(this + 238) || *(this + 245) == *(this + 244) )
    return 16556;
  v33 = 0;
  *(_DWORD *)v34 = 0;
  v35 = 0;
  v30 = 0;
  v31 = 0;
  v32 = 0;
  __p = nullptr;
  v28 = nullptr;
  v29 = nullptr;
  v41._M_finish = (char *)&v41;
  v41._M_start_of_storage._M_data = (char *)&v41;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block((int)&v41, 0x10u);
  *v41._M_finish = 0;
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream(v40, this + 234);
  while ( 1 )
  {
    v5 = (_DWORD *)std::getline<char,std::char_traits<char>,std::allocator<char>>(v40, &v41);
    if ( (*(_DWORD *)((char *)v5 + *(_DWORD *)(*v5 - 12) + 8) & 5) != 0 )
      break;
    std::vector<std::string>::push_back(&v33, &v41);
  }
  std::vector<std::string>::push_back(&v33, v3);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream(v39, this + 240);
  while ( 1 )
  {
    v6 = (_DWORD *)std::getline<char,std::char_traits<char>,std::allocator<char>>(v39, &v41);
    if ( (*(_DWORD *)((char *)v6 + *(_DWORD *)(*v6 - 12) + 8) & 5) != 0 )
      break;
    std::vector<std::string>::push_back(&v30, &v41);
  }
  std::vector<std::string>::push_back(&v30, this + 228);
  if ( *(this + 251) != *(this + 250) )
  {
    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream(v38, this + 246);
    for ( i = 0; ; i += v36 )
    {
      v8 = (_DWORD *)std::getline<char,std::char_traits<char>,std::allocator<char>>(v38, &v41);
      if ( (*(_DWORD *)((char *)v8 + *(_DWORD *)(*v8 - 12) + 8) & 5) != 0 )
        break;
      v21 = LC_API_ATOI_0(v41._M_start_of_storage._M_data);
      v36 = v21;
      if ( v28 == v29 )
        std::vector<int>::_M_insert_overflow(&__p);
      else
        *v28++ = v21;
    }
    v9 = 100 - i;
    v37 = v9;
    if ( v28 == v29 )
      std::vector<int>::_M_insert_overflow(&__p);
    else
      *v28++ = v9;
    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(v38);
    v10 = v28;
LABEL_17:
    v11 = v34[0];
    v12 = -1431655765 * ((*(_DWORD *)v34 - v33) >> 3);
    goto LABEL_18;
  }
  v11 = v34[0];
  v12 = -1431655765 * ((*(_DWORD *)v34 - v33) >> 3);
  v36 = 100 / v12;
  if ( v12 > 0 )
  {
    v10 = v28;
    for ( j = 0; j != v12; ++j )
    {
      if ( v29 == v10 )
      {
        std::vector<int>::_M_insert_overflow(&__p);
        v10 = v28;
      }
      else
      {
        *v10 = v36;
        v10 = ++v28;
      }
    }
    goto LABEL_17;
  }
  v10 = v28;
LABEL_18:
  v13 = (char *)v10 - (_BYTE *)__p;
  if ( v12 != v13 >> 2 || (v24 = (v31 - v30) >> 3, v11 = 85 * v24, v12 != -1431655765 * v24) )
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
        "false",
        "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Objects\\Block.cpp",
        189);
    }
  }
  Random = Random::GetRandom((Random *)&dword_64, v13, v11);
  v15 = -1431655765 * ((*(_DWORD *)v34 - v33) >> 3);
  if ( v15 )
  {
    v16 = *(_DWORD *)__p;
    if ( Random >= *(_DWORD *)__p )
    {
      v18 = 0;
      while ( ++v18 != v15 )
      {
        v16 += *((_DWORD *)__p + v18);
        if ( v16 > Random )
        {
          v17 = 24 * v18;
          goto LABEL_41;
        }
      }
    }
    else
    {
      v17 = 0;
LABEL_41:
      if ( a2 != (std::string *)(v33 + v17) )
        std::string::_M_assign(a2, *(const char **)(v33 + v17 + 20), *(const char **)(v33 + v17 + 16));
      v22 = (std::string *)(v30 + v17);
      if ( a3 != v22 )
        std::string::_M_assign(a3, v22->_M_start_of_storage._M_data, v22->_M_finish);
    }
  }
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(v39);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(v40);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v41);
  if ( __p )
  {
    v19 = ((char *)v29 - (_BYTE *)__p) & 0xFFFFFFFC;
    if ( v19 > 0x80 )
      CustomFree(__p);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(__p, v19);
  }
  std::vector<std::string>::~vector(&v30);
  std::vector<std::string>::~vector(&v33);
  return 16556;
}


// ===== 38a88c Module::LoadModule(void) =====
void __fastcall Module::LoadModule(Module *this)
{
  Level *v1; // r4
  int File; // [sp+Ch] [bp-78h]
  int v4; // [sp+Ch] [bp-78h]
  std::priv::_String_base<char,std::allocator<char> > v5; // [sp+1Ch] [bp-68h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v6; // [sp+34h] [bp-50h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v7; // [sp+4Ch] [bp-38h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v8; // [sp+64h] [bp-20h] BYREF

  v1 = (Level *)GSLevel::s_level;
  if ( !GSLevel::s_level )
  {
    if ( gAssertLevel == 2 )
    {
      *(_DWORD *)GSLevel::s_level = GSLevel::s_level;
    }
    else if ( gAssertLevel == 1 )
    {
      fprintf(
        (FILE *)&_sF + 2,
        "ASSERT(%s) FAILED: %s:%d\n",
        "lvl",
        "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Objects\\Block.cpp",
        84);
    }
  }
  Level::SetObjectModuleId(v1, *((_DWORD *)this + 259));
  *((_DWORD *)v1 + 88) = *((_DWORD *)this + 88);
  *((_DWORD *)v1 + 89) = *((_DWORD *)this + 89);
  *((_DWORD *)v1 + 90) = *((_DWORD *)this + 90);
  v8._M_finish = (char *)&v8;
  v8._M_start_of_storage._M_data = (char *)&v8;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block((int)&v8, 0x10u);
  *v8._M_finish = 0;
  v7._M_finish = (char *)&v7;
  v7._M_start_of_storage._M_data = (char *)&v7;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block((int)&v7, 0x10u);
  *v7._M_finish = 0;
  Module::_ChooseXmls(this, (std::string *)&v8, (std::string *)&v7);
  if ( v8._M_start_of_storage._M_data != v8._M_finish )
  {
    do
    {
      std::string::string((int)&v6, "Module");
      File = Level::LoadFile(v1, (const std::string *)&v8, (const std::string *)&v6);
      std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v6);
    }
    while ( !File );
  }
  if ( v7._M_start_of_storage._M_data != v7._M_finish )
  {
    do
    {
      std::string::string((int)&v5, "Module");
      v4 = Level::LoadFile(v1, (const std::string *)&v7, (const std::string *)&v5);
      std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v5);
    }
    while ( !v4 );
  }
  *((_DWORD *)v1 + 90) = 0;
  *((_DWORD *)v1 + 88) = 0;
  *((_DWORD *)v1 + 89) = 0;
  Level::SetObjectModuleId(v1, -1);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v7);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v8);
}


// ===== 38aabc ObjectSearcher::IObjectList::~IObjectList() =====
void __fastcall ObjectSearcher::IObjectList::~IObjectList(ObjectSearcher::IObjectList *this)
{
  ;
}


// ===== 38aac0 GameObject::IsUpdatable(void) =====
int __fastcall GameObject::IsUpdatable(GameObject *this)
{
  return 1;
}


// ===== 38aac8 GameObject::UpdateAbsoluteAABB(void) =====
float __fastcall GameObject::UpdateAbsoluteAABB(GameObject *this)
{
  float v2; // r10
  float v3; // r0
  float v4; // r8
  float v5; // r7
  float v6; // r6
  float v7; // r5
  float v8; // r1
  float v9; // r0
  float v10; // r1
  float v11; // r0
  float v12; // r1
  float v13; // r0
  float v14; // r1
  float v15; // r0
  float v16; // r1
  float v17; // r0
  float v18; // r1

  v2 = *((float *)this + 82);
  v3 = *((float *)this + 81);
  v4 = *((float *)this + 83);
  v5 = *((float *)this + 84);
  v6 = *((float *)this + 85);
  v7 = *((float *)this + 86);
  v8 = *((float *)this + 88);
  *((float *)this + 75) = v3;
  *((float *)this + 76) = v2;
  *((float *)this + 77) = v4;
  *((float *)this + 78) = v5;
  *((float *)this + 79) = v6;
  *((float *)this + 80) = v7;
  v9 = v3 + v8;
  v10 = *((float *)this + 89);
  *((float *)this + 75) = v9;
  v11 = v2 + v10;
  v12 = *((float *)this + 90);
  *((float *)this + 76) = v11;
  v13 = v4 + v12;
  v14 = *((float *)this + 88);
  *((float *)this + 77) = v13;
  v15 = v5 + v14;
  v16 = *((float *)this + 89);
  *((float *)this + 78) = v15;
  v17 = v6 + v16;
  v18 = *((float *)this + 90);
  *((float *)this + 79) = v17;
  *((float *)this + 80) = v7 + v18;
  return v7 + v18;
}


// ===== 38ab60 GameObject::MeetCondition(void) =====
int __fastcall GameObject::MeetCondition(GameObject *this)
{
  return 1;
}


// ===== 38ab68 GameObject::IsTouching(Point3D<float> const&) =====
bool __fastcall GameObject::IsTouching(float *a1, float *a2)
{
  return a1[75] <= *a2 && *a2 <= a1[78] && a1[76] <= a2[1] && a2[1] <= a1[79] && a1[77] <= a2[2] && a2[2] <= a1[80];
}


// ===== 38ac0c GameObject::IsNearby(Point3D<float> const&,float) =====
bool __fastcall GameObject::IsNearby(float *a1, float *a2, float a3)
{
  float v3; // r6
  float v4; // r5
  float v6; // r4
  float v7; // r4

  v3 = a3 * -100.0;
  if ( (float)(a1[75] + (float)(a3 * -100.0)) > *a2 )
    return 0;
  v4 = a3 * 100.0;
  if ( (float)(a1[78] + (float)(a3 * 100.0)) < *a2 )
    return 0;
  v6 = a2[1];
  if ( (float)(a1[76] + v3) > v6 )
    return 0;
  if ( (float)(a1[79] + v4) < v6 )
    return 0;
  v7 = a2[2];
  return (float)(a1[77] + v3) <= v7 && (float)(a1[80] + v4) >= v7;
}


// ===== 38ad30 GameObject::IsInteractiveEx(GameObject*) =====
int __fastcall GameObject::IsInteractiveEx(GameObject *this, GameObject *a2)
{
  int result; // r0

  result = (*(int (__fastcall **)(GameObject *))(*(_DWORD *)this + 136))(this);
  if ( result )
    return (*(int (__fastcall **)(GameObject *, GameObject *))(*(_DWORD *)this + 144))(this, a2) != -1;
  return result;
}


// ===== 38ad74 GameObject::GetInteractionType(GameObject*) =====
int __fastcall GameObject::GetInteractionType(GameObject *this, GameObject *a2)
{
  return -1;
}


// ===== 38ad7c GameObject::GetInteractionRadius(void) =====
float __fastcall GameObject::GetInteractionRadius(GameObject *this)
{
  float v1; // r5

  v1 = *((float *)this + 84) - *((float *)this + 81);
  if ( v1 > (float)(*((float *)this + 85) - *((float *)this + 82)) )
    v1 = *((float *)this + 85) - *((float *)this + 82);
  return v1 * 0.5;
}


// ===== 38adc8 GameObject::SetScale(Point3D<float> const&) =====
_DWORD *__fastcall GameObject::SetScale(_DWORD *result, _DWORD *a2)
{
  result[72] = *a2;
  result[73] = a2[1];
  result[74] = a2[2];
  return result;
}


// ===== 38ade4 GameObject::IsBatchVisible(void) =====
int __fastcall GameObject::IsBatchVisible(int this)
{
  int v1; // r3
  bool v2; // zf

  v1 = *(_DWORD *)(this + 728);
  v2 = v1 == 0;
  if ( v1 )
    v1 = *(_DWORD *)(v1 + 8);
  else
    this = *(unsigned __int8 *)(this + 752);
  if ( !v2 )
    return *(_DWORD *)(v1 + 284) & 1;
  return this;
}


// ===== 38ae00 SimpleTypeProperty<int>::IsDefaultValue(void *) =====
bool __fastcall SimpleTypeProperty<int>::IsDefaultValue(int a1, int a2)
{
  return *(_DWORD *)(a2 + *(_DWORD *)(a1 + 4)) == *(_DWORD *)(a1 + 32);
}


// ===== 38ae1c SimpleTypeProperty<int>::SetToDefaultValue(void *) =====
int __fastcall SimpleTypeProperty<int>::SetToDefaultValue(int result, int a2)
{
  *(_DWORD *)(a2 + *(_DWORD *)(result + 4)) = *(_DWORD *)(result + 32);
  return result;
}


// ===== 38ae2c GameObject::UpdateIdleSound(void) =====
DH2_PlayerInfoCharacterPrefix *__fastcall GameObject::UpdateIdleSound(DH2_PlayerInfoCharacterPrefix *this)
{
  DH2_PlayerInfoCharacterPrefix *v1; // r5
  int v2; // r8
  float Constant; // r7
  float *character_660; // r3
  float v5; // r1
  float v6; // r10
  float v7; // r8
  float v8; // r0
  float v9; // r8
  float v10; // r6
  float v11; // r4
  int v12; // r1
  int v13; // [sp+0h] [bp-2Ch]
  int v14; // [sp+4h] [bp-28h]
  char v15; // [sp+8h] [bp-24h]
  float v16[3]; // [sp+10h] [bp-1Ch] BYREF
  int v17; // [sp+1Ch] [bp-10h] BYREF
  int v18; // [sp+20h] [bp-Ch]
  int v19; // [sp+24h] [bp-8h]

  v1 = this;
  if ( VoxSoundManager::s_instance )
  {
    v2 = this->unknown_000[883];
    if ( this->unknown_000[883] )
    {
      if ( this->unknown_000[882] )
      {
        this->unknown_000[882] = 0;
        return (DH2_PlayerInfoCharacterPrefix *)VoxSoundManager::Stop(
                                                  VoxSoundManager::s_instance,
                                                  *(__int16 *)&this->unknown_000[880],
                                                  1000,
                                                  (int)&VoxSoundManager::s_instance,
                                                  v13,
                                                  v14,
                                                  v15);
      }
    }
    else
    {
      this = (DH2_PlayerInfoCharacterPrefix *)Application::GetCurrentLevel((Application *)&Singleton<Application>::s_inst);
      if ( this )
      {
        this = PlayerManager::GetLocalPlayer((PlayerManager *)dword_99F76C, v2, 1);
        if ( this->character_660 )
        {
          this = (DH2_PlayerInfoCharacterPrefix *)Application::GetCurrentLevel((Application *)&Singleton<Application>::s_inst);
          if ( *(_DWORD *)&this->unknown_000[304] == 38 )
          {
            Constant = (float)(int)PyDataConstants::getConstant(
                                     (PyDataConstants *)dword_99F758,
                                     "AudioConstants",
                                     "CameraMaxDistance");
            v19 = dword_99F85C;
            v17 = Vec3f_Origin;
            v18 = dword_99F858;
            if ( PlayerManager::GetLocalPlayer((PlayerManager *)dword_99F76C, v2, 1)->character_660 )
            {
              character_660 = (float *)PlayerManager::GetLocalPlayer((PlayerManager *)dword_99F76C, v2, 1)->character_660;
              v5 = character_660[88];
              *(float *)&v17 = v5;
              v6 = character_660[89];
              *(float *)&v18 = v6;
              v7 = character_660[90];
              *(float *)&v19 = v7;
            }
            else
            {
              v5 = *(float *)&v17;
              v6 = *(float *)&v18;
              v7 = *(float *)&v19;
            }
            v8 = sqrt((float)((float)((float)((float)(*(float *)&v1->unknown_000[352] - v5)
                                            * (float)(*(float *)&v1->unknown_000[352] - v5))
                                    + (float)((float)(*(float *)&v1->unknown_000[356] - v6)
                                            * (float)(*(float *)&v1->unknown_000[356] - v6)))
                            + (float)((float)(*(float *)&v1->unknown_000[360] - v7)
                                    * (float)(*(float *)&v1->unknown_000[360] - v7))));
            v9 = v8;
            if ( !v1->unknown_000[882]
              || (this = (DH2_PlayerInfoCharacterPrefix *)(Constant <= v8), Constant <= v9)
              && (this = (DH2_PlayerInfoCharacterPrefix *)(Constant > 0.0)) != nullptr
              && (v1->unknown_000[882] = 0,
                  this = (DH2_PlayerInfoCharacterPrefix *)VoxSoundManager::Stop3D(
                                                            VoxSoundManager::s_instance,
                                                            *(__int16 *)&v1->unknown_000[880],
                                                            1000,
                                                            (float *)&v17,
                                                            Constant),
                  !v1->unknown_000[882]) )
            {
              this = (DH2_PlayerInfoCharacterPrefix *)(Constant > v9);
              if ( Constant > v9 )
              {
                this = (DH2_PlayerInfoCharacterPrefix *)(Constant > 0.0);
                if ( Constant > 0.0 )
                {
                  v1->unknown_000[882] = 1;
                  v10 = *(float *)&v1->unknown_000[356];
                  v11 = *(float *)&v1->unknown_000[360];
                  v12 = *(__int16 *)&v1->unknown_000[880];
                  v16[0] = *(float *)&v1->unknown_000[352];
                  v16[1] = v10;
                  v16[2] = v11;
                  return (DH2_PlayerInfoCharacterPrefix *)VoxSoundManager::Play3D(
                                                            VoxSoundManager::s_instance,
                                                            v12,
                                                            v16,
                                                            1,
                                                            COERCE_FLOAT(1),
                                                            -1.0,
                                                            -1.0);
                }
              }
            }
          }
        }
      }
    }
  }
  return this;
}


// ===== 38b0f0 GameObject::SetVisible(bool) =====
int __fastcall GameObject::SetVisible(int this, int a2)
{
  VisualObject *v2; // r3

  v2 = *(VisualObject **)(this + 728);
  if ( a2 )
    LOBYTE(a2) = *(_BYTE *)(this + 138);
  *(_BYTE *)(this + 128) = a2;
  if ( v2 )
    return VisualObject::SyncVisibility(v2);
  return this;
}


// ===== 38b110 GameObject::SetRelativeAABB(aabb<float> const&,bool) =====
float __fastcall GameObject::SetRelativeAABB(float a1, int a2)
{
  float v2; // r5
  float v4; // r7
  float v5; // r0
  float v6; // r6

  v2 = *(float *)a2;
  *(_DWORD *)(LODWORD(a1) + 324) = *(_DWORD *)a2;
  v4 = *(float *)(a2 + 4);
  *(float *)(LODWORD(a1) + 328) = v4;
  *(_DWORD *)(LODWORD(a1) + 332) = *(_DWORD *)(a2 + 8);
  v5 = *(float *)(a2 + 12);
  *(float *)(LODWORD(a1) + 336) = v5;
  v6 = *(float *)(a2 + 16);
  *(float *)(LODWORD(a1) + 340) = v6;
  *(_DWORD *)(LODWORD(a1) + 344) = *(_DWORD *)(a2 + 20);
  if ( (float)(v5 - v2) == 0.0 && (float)(v6 - v4) == 0.0 )
    *(_BYTE *)(LODWORD(a1) + 761) = 1;
  if ( (float)(v5 - v2) < 10.0 )
  {
    *(float *)(LODWORD(a1) + 324) = v2 - 5.0;
    *(float *)(LODWORD(a1) + 336) = *(float *)(LODWORD(a1) + 336) + 5.0;
  }
  if ( (float)(*(float *)(LODWORD(a1) + 340) - *(float *)(LODWORD(a1) + 328)) < 10.0 )
  {
    *(float *)(LODWORD(a1) + 328) = *(float *)(LODWORD(a1) + 328) - 5.0;
    *(float *)(LODWORD(a1) + 340) = *(float *)(LODWORD(a1) + 340) + 5.0;
  }
  GameObject::UpdateAbsoluteAABB((GameObject *)LODWORD(a1));
  return GameObject::UpdatePFObject(a1);
}


// ===== 38b228 GameObject::GetInteractionSpot(void) =====
GameObject *__fastcall GameObject::GetInteractionSpot(GameObject *this, int a2)
{
  VisualObject *v4; // r1
  VisualObject *SpecificNode; // r0
  int v6; // r3
  int v7; // r1
  char *TargetPosition; // r0
  _DWORD v10[4]; // [sp+4h] [bp-10h] BYREF

  if ( *(_BYTE *)(a2 + 748) )
  {
    v4 = *(VisualObject **)(a2 + 744);
  }
  else
  {
    SpecificNode = *(VisualObject **)(a2 + 728);
    *(_BYTE *)(a2 + 748) = 1;
    if ( SpecificNode )
      SpecificNode = (VisualObject *)VisualObject::GetSpecificNode(SpecificNode, "interaction_position");
    v4 = SpecificNode;
    *(_DWORD *)(a2 + 744) = SpecificNode;
  }
  if ( v4 )
  {
    glitch::scene::ISceneNode::getAbsolutePosition((glitch::scene::ISceneNode *)v10);
    v6 = v10[2];
    v7 = v10[0];
    *((_DWORD *)this + 1) = v10[1];
    *((_DWORD *)this + 2) = v6;
    *(_DWORD *)this = v7;
  }
  else
  {
    TargetPosition = GameObject::GetTargetPosition((GameObject *)a2);
    *(_DWORD *)this = *(_DWORD *)TargetPosition;
    *((_DWORD *)this + 1) = *((_DWORD *)TargetPosition + 1);
    *((_DWORD *)this + 2) = *((_DWORD *)TargetPosition + 2);
  }
  return this;
}


// ===== 38b2cc ObjectSearcher::IObjectList::~IObjectList() =====
void __fastcall ObjectSearcher::IObjectList::~IObjectList(ObjectSearcher::IObjectList *this)
{
  *(_DWORD *)this = off_964728;
  CustomFree(this);
}


// ===== 38b300 GameObject::IsNearby(GameObject const*,float) =====
bool __fastcall GameObject::IsNearby(GameObject *this, const GameObject *a2, float a3)
{
  float v6; // r7
  _BOOL4 v7; // r0
  float v8; // r11
  float v9; // r10
  float v10; // r9
  float v11; // r8
  float v12; // r4
  float v13; // r6

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
        "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Objects\\GameObject.cpp",
        395);
    }
  }
  v6 = a3 * -100.0;
  v7 = (float)(*((float *)this + 75) + (float)(a3 * -100.0)) <= *((float *)a2 + 78);
  v8 = *((float *)this + 80);
  v9 = *((float *)this + 76);
  v10 = *((float *)this + 77);
  v11 = *((float *)this + 78);
  v12 = *((float *)this + 79);
  if ( v7
    && (v13 = a3 * 100.0, (float)(v11 + v13) >= *((float *)a2 + 75))
    && (float)(v9 + v6) <= *((float *)a2 + 79)
    && (float)(v12 + v13) >= *((float *)a2 + 76)
    && (float)(v10 + v6) <= *((float *)a2 + 80) )
  {
    return (float)(v8 + v13) >= *((float *)a2 + 77);
  }
  else
  {
    return 0;
  }
}


// ===== 38b48c GameObject::IsPlayerNearby(float) =====
int __fastcall GameObject::IsPlayerNearby(GameObject *this, float a2)
{
  PlayerManager *v4; // r0
  int v5; // r4
  const GameObject *v6; // r3

  v4 = (PlayerManager *)dword_99F76C;
  if ( *(int *)(dword_99F76C + 1732) <= 0 )
    return 0;
  v5 = 0;
  while ( 1 )
  {
    v6 = *(const GameObject **)(PlayerManager::GetPlayer(v4, v5++, 1) + 1632);
    if ( v6 )
    {
      if ( GameObject::IsNearby(this, v6, a2) )
        break;
    }
    v4 = (PlayerManager *)dword_99F76C;
    if ( v5 >= *(_DWORD *)(dword_99F76C + 1732) )
      return 0;
  }
  return 1;
}


// ===== 38b518 GameObject::IsTouching(GameObject const*) =====
bool __fastcall GameObject::IsTouching(GameObject *this, const GameObject *a2)
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
        "go",
        "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Objects\\GameObject.cpp",
        379);
    }
  }
  return *((float *)this + 75) <= *((float *)a2 + 78)
      && *((float *)this + 78) >= *((float *)a2 + 75)
      && *((float *)this + 76) <= *((float *)a2 + 79)
      && *((float *)this + 79) >= *((float *)a2 + 76)
      && *((float *)this + 77) <= *((float *)a2 + 80)
      && *((float *)this + 80) >= *((float *)a2 + 77);
}


// ===== 38b630 GameObject::IsHostTouching(void) =====
int __fastcall GameObject::IsHostTouching(GameObject *this)
{
  PlayerManager *v2; // r0
  int v3; // r4
  const GameObject **Player; // r8

  if ( !*(_BYTE *)(GetOnline() + 5) )
    return 1;
  v2 = (PlayerManager *)dword_99F76C;
  if ( *(int *)(dword_99F76C + 1732) > 0 )
  {
    v3 = 0;
    while ( 1 )
    {
      Player = (const GameObject **)PlayerManager::GetPlayer(v2, v3++, 1);
      if ( CNetPlayerInfo::IsHost((CNetPlayerInfo *)Player) )
      {
        if ( Player[408] && GameObject::IsTouching(this, Player[408]) )
          break;
      }
      v2 = (PlayerManager *)dword_99F76C;
      if ( v3 >= *(_DWORD *)(dword_99F76C + 1732) )
        return 0;
    }
    return 1;
  }
  return 0;
}


// ===== 38b6d4 GameObject::GetNumPlayerTouching(void) =====
int __fastcall GameObject::GetNumPlayerTouching(GameObject *this)
{
  PlayerManager *v2; // r0
  int v3; // r8
  int v4; // r4
  const GameObject *v5; // r3

  v2 = (PlayerManager *)dword_99F76C;
  if ( *(int *)(dword_99F76C + 1732) <= 0 )
    return 0;
  v4 = 0;
  v3 = 0;
  do
  {
    v5 = *(const GameObject **)(PlayerManager::GetPlayer(v2, v4++, 1) + 1632);
    if ( v5 && GameObject::IsTouching(this, v5) )
      ++v3;
    v2 = (PlayerManager *)dword_99F76C;
  }
  while ( v4 < *(_DWORD *)(dword_99F76C + 1732) );
  return v3;
}


// ===== 38b758 IStreamBase::readAs<int>(int &) =====
int __fastcall IStreamBase::readAs<int>(int a1, int a2)
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


// ===== 38b808 IStreamBase::writeAs<int>(int const&) =====
int __fastcall IStreamBase::writeAs<int>(int a1, int a2)
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


// ===== 38b8b8 GameObject::RequireOnlineUpdate(void) =====
int __fastcall GameObject::RequireOnlineUpdate(GameObject *this)
{
  int result; // r0
  COnline *Online; // r0

  result = GetOnline();
  if ( *(_BYTE *)(result + 5) )
  {
    if ( *((_DWORD *)this + 64) )
    {
      Online = (COnline *)GetOnline();
      result = COnline::IsServer(Online);
      if ( result || (result = (*(int (__fastcall **)(GameObject *))(*(_DWORD *)this + 84))(this)) == 0 )
        *((_BYTE *)this + 281) = 1;
    }
  }
  return result;
}


// ===== 38b914 `non-virtual thunk to'GameObject::Deserialize(IStreamBase *) =====
VisualObject *__fastcall `non-virtual thunk to'GameObject::Deserialize(VisualObject **this, IStreamBase *a2)
{
  return GameObject::Deserialize(this - 9, a2);
}


// ===== 38b91c GameObject::Deserialize(IStreamBase *) =====
VisualObject *__fastcall GameObject::Deserialize(VisualObject **this, IStreamBase *a2)
{
  VisualObject *result; // r0
  VisualObject *v5; // [sp+Ch] [bp-8h] BYREF

  ObjectBase::Deserialize((ObjectBase *)this, a2);
  IStreamBase::readAs<int>(a2, &v5);
  if ( *(this + 156) != v5 )
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
        "spawnProbRolled == m_spawnProbRolled",
        "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Objects\\GameObject.cpp",
        286);
    }
  }
  result = *(this + 182);
  if ( result )
    return (VisualObject *)VisualObject::SyncVisibility(result);
  return result;
}


// ===== 38b9dc `non-virtual thunk to'GameObject::Serialize(IStreamBase *) =====
int __fastcall `non-virtual thunk to'GameObject::Serialize(GameObject *this, IStreamBase *a2)
{
  return GameObject::Serialize((GameObject *)((char *)this - 36), a2);
}


// ===== 38b9e4 GameObject::Serialize(IStreamBase *) =====
int __fastcall GameObject::Serialize(GameObject *this, IStreamBase *a2)
{
  ObjectBase::Serialize(this, a2);
  return IStreamBase::writeAs<int>(a2, (char *)this + 624);
}


// ===== 38ba04 GameObject::Disabled(void) =====
PhysicalObject *__fastcall GameObject::Disabled(PhysicalObject **this)
{
  PhysicalObject *result; // r0

  ObjectBase::Disabled((ObjectBase *)this);
  result = *(this + 183);
  *(this + 115) = (PhysicalObject *)((unsigned int)*(this + 115) & 0xFFFFFFF7);
  if ( result )
    result = (PhysicalObject *)PhysicalObject::disableFilter(result);
  *((_BYTE *)this + 883) = 1;
  return result;
}


// ===== 38ba38 GameObject::Enabled(void) =====
PhysicalObject *__fastcall GameObject::Enabled(PhysicalObject **this)
{
  PhysicalObject *result; // r0

  ObjectBase::Enabled((ObjectBase *)this);
  result = *(this + 183);
  *(this + 115) = (PhysicalObject *)((unsigned int)*(this + 115) | 8);
  if ( result )
    result = (PhysicalObject *)PhysicalObject::enableFilter(result);
  *((_BYTE *)this + 883) = 0;
  return result;
}


// ===== 38ba6c GameObject::FlushTargetList(void) =====
int __fastcall GameObject::FlushTargetList(GameObject *this)
{
  return ObjectSearcher::TargetList::FlushBackupResults((GameObject *)((char *)this + 772));
}


// ===== 38ba74 VisualObject::Sync(void) =====
int __fastcall VisualObject::Sync(VisualObject *this)
{
  VisualObject::SyncPosition(this);
  VisualObject::SyncRotation(this);
  return VisualObject::SyncScaling(this);
}


// ===== 38ba94 SimpleTypeProperty<int>::SetDefaultValueFromString(char const*) =====
int __fastcall SimpleTypeProperty<int>::SetDefaultValueFromString(int a1, char *a2)
{
  *(_DWORD *)(a1 + 32) = 0;
  return StrToObj(a2, (int *)(a1 + 32));
}


// ===== 38baac SimpleTypeProperty<int>::FromString(void *,char const*) =====
int __fastcall SimpleTypeProperty<int>::FromString(int a1, int a2, char *a3)
{
  int v3; // r3

  v3 = *(_DWORD *)(a1 + 4);
  *(_DWORD *)(a2 + v3) = 0;
  return StrToObj(a3, (int *)(a2 + v3));
}


// ===== 38bac4 SimpleTypeProperty<int>::ToString(void *) =====
std::string *__fastcall SimpleTypeProperty<int>::ToString(std::string *a1, int a2, int a3)
{
  char *v6; // r5

  v6 = (char *)CustomAlloc(0x100u);
  ObjToStr(v6, (int *)(a3 + *(_DWORD *)(a2 + 4)));
  std::string::string(a1, v6);
  return a1;
}


// ===== 38bb0c `global constructor keyed to'.._.._sources_Game_Objects_GameObject.cpp =====
int `global constructor keyed to'.._.._sources_Game_Objects_GameObject.cpp()
{
  int result; // r0

  result = `guard variable for'Singleton<PlayerStatManager>::s_inst;
  dword_9A2778 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9A2774 = 1056964608;
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


// ===== 38bc3c Random::GetRandom(int,bool) [clone] =====
unsigned int __fastcall Random::GetRandom(Random *this, int a2, bool a3)
{
  if ( this )
  {
    ++dword_99F8A8;
    Random::s_syncedSeed = (59051 * Random::s_syncedSeed + 177149) % 0xDAF26Bu;
    return abs32(Random::s_syncedSeed % 0x63u);
  }
  else
  {
    ++Random::s_debugRandomCounters;
    Random::s_seed = (59051 * Random::s_seed + 177149) % 0xDAF26Bu;
    return abs32(Random::s_seed % 0x63u);
  }
}


// ===== 38bd64 GameObject::CheckSpawnProbability(void) =====
int __fastcall GameObject::CheckSpawnProbability(GameObject *this)
{
  int v2; // r0
  int result; // r0
  int v4; // r1
  bool v5; // r2
  Random *v6; // r0
  int Random; // r0
  _BYTE v8[16]; // [sp+4h] [bp-10h] BYREF

  ObjectBase::GetHandle((ObjectBase *)v8);
  v2 = ObjectHandle::operator Character *(v8);
  if ( v2 && (*(int (__fastcall **)(int))(*(_DWORD *)v2 + 40))(v2) )
  {
LABEL_3:
    result = -2;
    *((_DWORD *)this + 156) = -2;
    return result;
  }
  result = *((_DWORD *)this + 156);
  if ( result == -1 )
  {
    if ( !*(_BYTE *)(GetOnline() + 5) || *((_DWORD *)this + 66) == -1 )
    {
      Random = Random::GetRandom(nullptr, v4, v5);
      *((_DWORD *)this + 156) = Random;
    }
    else
    {
      v6 = *((Random **)this + 63);
      if ( v6 )
        v6 = (Random *)((char *)&dword_0 + 1);
      Random = Random::GetRandom(v6, v4, v5);
      *((_DWORD *)this + 156) = Random;
    }
    if ( Random >= *((_DWORD *)this + 157) )
    {
      (*(void (__fastcall **)(GameObject *, _DWORD))(*(_DWORD *)this + 64))(this, 0);
      ObjectBase::Delete(this);
      *((_BYTE *)this + 130) = 0;
      ObjectManager::MarkForDeletion((ObjectManager *)dword_99F764, this);
      return *((_DWORD *)this + 156);
    }
    goto LABEL_3;
  }
  return result;
}


// ===== 38be5c GameObject::InitPost(void) =====
VisualObject *__fastcall GameObject::InitPost(GameObject *this)
{
  VisualObject *result; // r0
  int v3; // r0
  int v4; // r3
  bool v5; // zf
  int v6; // r0
  float v7; // r1
  bool v8; // zf
  int v9; // r0
  float v10; // r1
  _BOOL4 v11; // r0
  float v12; // r1
  float v13; // r0
  float v14; // r1
  float v15; // r0
  float v16; // r1
  float v17; // r0
  float v18; // r1
  float v19; // r0
  float v20; // r1
  float v21; // r0
  float v22; // r1
  const char *v23; // r7
  int v24; // r8
  int v25; // r6
  int v26; // r5

  ObjectBase::InitPost(this);
  result = (VisualObject *)GameObject::CheckSpawnProbability(this);
  if ( (int)result >= *((_DWORD *)this + 157) )
    return result;
  v3 = *((_DWORD *)this + 72);
  v4 = 0;
  *((_DWORD *)this + 183) = 0;
  v5 = COERCE_FLOAT(v3 & 0x7FFFFFFF) >= 0.0001;
  v6 = *((_DWORD *)this + 73);
  if ( !v5 )
    v4 = 1065353216;
  LOWORD(v7) = -18665;
  if ( !v5 )
    *((_DWORD *)this + 72) = v4;
  HIWORD(v7) = 14545;
  v8 = COERCE_FLOAT(v6 & 0x7FFFFFFF) >= v7;
  v9 = *((_DWORD *)this + 74);
  if ( !v8 )
    v4 = 1065353216;
  LOWORD(v10) = -18665;
  if ( !v8 )
    *((_DWORD *)this + 73) = v4;
  HIWORD(v10) = 14545;
  v11 = COERCE_FLOAT(v9 & 0x7FFFFFFF) < v10;
  if ( v11 )
    v4 = 1065353216;
  LOWORD(v12) = -1483;
  if ( v11 )
    *((_DWORD *)this + 74) = v4;
  HIWORD(v12) = 15502;
  *((float *)this + 91) = *((float *)this + 91) * v12;
  *((float *)this + 92) = *((float *)this + 92) * 0.017453;
  v13 = *((float *)this + 93) * 0.017453;
  *((float *)this + 94) = v13;
  *((float *)this + 93) = v13;
  GameObject::SetPosition(this);
  v14 = *((float *)this + 73);
  *((float *)this + 81) = *((float *)this + 81) * *((float *)this + 72);
  v15 = *((float *)this + 82) * v14;
  v16 = *((float *)this + 74);
  *((float *)this + 82) = v15;
  v17 = *((float *)this + 83) * v16;
  v18 = *((float *)this + 72);
  *((float *)this + 83) = v17;
  v19 = *((float *)this + 84) * v18;
  v20 = *((float *)this + 73);
  *((float *)this + 84) = v19;
  v21 = *((float *)this + 85) * v20;
  v22 = *((float *)this + 74);
  *((float *)this + 85) = v21;
  *((float *)this + 86) = *((float *)this + 86) * v22;
  GameObject::UpdateAbsoluteAABB(this);
  result = *((VisualObject **)this + 182);
  if ( result )
    goto LABEL_15;
  result = (VisualObject *)Device::IsHighPerformance(nullptr);
  if ( !result && *((_BYTE *)this + 96) && *((_BYTE *)this + 268) )
  {
    *((_DWORD *)this + 182) = 0;
  }
  else
  {
    GameObject::LoadVisualObject(this);
    result = *((VisualObject **)this + 182);
    if ( result )
LABEL_15:
      result = (VisualObject *)VisualObject::Sync(result);
  }
  v23 = *((const char **)this + 219);
  if ( *((_BYTE *)this + 348) )
    *((_BYTE *)this + 40) = 0;
  if ( *((const char **)this + 218) != v23 )
  {
    v24 = Arrays::Sounds::size;
    if ( Arrays::Sounds::size )
    {
      v25 = 0;
      v26 = Arrays::Sounds::m_memberNames;
      while ( 1 )
      {
        result = (VisualObject *)LC_API_STRCMP_0(v23, *(const char **)(v26 + 4 * v25));
        if ( !result )
          break;
        if ( ++v25 == v24 )
          goto LABEL_25;
      }
      *((_WORD *)this + 440) = v25;
    }
    else
    {
LABEL_25:
      *((_WORD *)this + 440) = -1;
    }
  }
  return result;
}


// ===== 38c08c SimpleTypeProperty<int>::Clone(void) =====
int __fastcall SimpleTypeProperty<int>::Clone(int a1)
{
  int v2; // r4

  v2 = operator new(0x24u, 0);
  *(_DWORD *)v2 = &off_95C5E8;
  *(_DWORD *)(v2 + 24) = v2 + 8;
  *(_DWORD *)(v2 + 28) = v2 + 8;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block((_DWORD *)(v2 + 8), 0x10u);
  **(_BYTE **)(v2 + 24) = 0;
  *(_DWORD *)v2 = &off_964708;
  *(_DWORD *)(v2 + 4) = *(_DWORD *)(a1 + 4);
  if ( v2 + 8 != a1 + 8 )
    std::string::_M_assign((std::string *const)(v2 + 8), *(const char **)(a1 + 28), *(const char **)(a1 + 24));
  *(_DWORD *)(v2 + 32) = *(_DWORD *)(a1 + 32);
  return v2;
}


// ===== 38c130 GameObject::GameObject(ObjectBase::GO_IDS) =====
int __fastcall GameObject::GameObject(int a1, int a2)
{
  ObjectBase::ObjectBase(a1, a2);
  *(_DWORD *)(a1 + 288) = 0;
  *(_DWORD *)(a1 + 4) = &off_964820;
  *(_DWORD *)(a1 + 36) = off_96482C;
  *(_DWORD *)a1 = off_964750;
  *(_DWORD *)(a1 + 292) = 0;
  *(_DWORD *)(a1 + 296) = 0;
  *(_DWORD *)(a1 + 300) = 0;
  *(_DWORD *)(a1 + 304) = 0;
  *(_DWORD *)(a1 + 308) = 0;
  *(_DWORD *)(a1 + 312) = 0;
  *(_DWORD *)(a1 + 316) = 0;
  *(_DWORD *)(a1 + 320) = 0;
  *(_DWORD *)(a1 + 324) = 0;
  *(_DWORD *)(a1 + 328) = 0;
  *(_DWORD *)(a1 + 332) = 0;
  *(_DWORD *)(a1 + 336) = 0;
  *(_DWORD *)(a1 + 340) = 0;
  *(_DWORD *)(a1 + 344) = 0;
  *(_DWORD *)(a1 + 352) = 0;
  *(_DWORD *)(a1 + 356) = 0;
  *(_DWORD *)(a1 + 360) = 0;
  *(_DWORD *)(a1 + 364) = 0;
  *(_DWORD *)(a1 + 368) = 0;
  *(_DWORD *)(a1 + 372) = 0;
  *(_DWORD *)(a1 + 376) = 0;
  *(_DWORD *)(a1 + 388) = 0;
  *(_DWORD *)(a1 + 392) = 0;
  *(_DWORD *)(a1 + 396) = 0;
  *(_DWORD *)(a1 + 400) = 0;
  *(_DWORD *)(a1 + 404) = 0;
  *(_BYTE *)(a1 + 348) = 0;
  *(_DWORD *)(a1 + 384) = 0;
  *(_DWORD *)(a1 + 408) = 0;
  *(_DWORD *)(a1 + 448) = 0;
  *(_DWORD *)(a1 + 412) = 0;
  *(_DWORD *)(a1 + 416) = 0;
  *(_DWORD *)(a1 + 420) = 0;
  *(_DWORD *)(a1 + 424) = 0;
  *(_DWORD *)(a1 + 428) = 0;
  *(_DWORD *)(a1 + 432) = 0;
  *(_BYTE *)(a1 + 436) = 0;
  *(_BYTE *)(a1 + 437) = 0;
  *(_DWORD *)(a1 + 440) = 0;
  *(_DWORD *)(a1 + 444) = 0;
  *(_BYTE *)(a1 + 452) = 0;
  PFObject::PFObject((PFObject *)(a1 + 456));
  *(_DWORD *)(a1 + 628) = 100;
  *(_DWORD *)(a1 + 648) = a1 + 632;
  *(_DWORD *)(a1 + 652) = a1 + 632;
  *(_DWORD *)(a1 + 620) = 0;
  *(_DWORD *)(a1 + 624) = -1;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block(a1 + 632, 0x10u);
  **(_BYTE **)(a1 + 648) = 0;
  *(_DWORD *)(a1 + 672) = a1 + 656;
  *(_DWORD *)(a1 + 676) = a1 + 656;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block(a1 + 656, 0x10u);
  **(_BYTE **)(a1 + 672) = 0;
  *(_DWORD *)(a1 + 696) = a1 + 680;
  *(_DWORD *)(a1 + 700) = a1 + 680;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block(a1 + 680, 0x10u);
  **(_BYTE **)(a1 + 696) = 0;
  *(_DWORD *)(a1 + 720) = a1 + 704;
  *(_DWORD *)(a1 + 724) = a1 + 704;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block(a1 + 704, 0x10u);
  **(_BYTE **)(a1 + 720) = 0;
  *(_BYTE *)(a1 + 750) = 1;
  *(_BYTE *)(a1 + 763) = 1;
  *(_DWORD *)(a1 + 728) = 0;
  *(_DWORD *)(a1 + 732) = 0;
  *(_DWORD *)(a1 + 736) = 0;
  *(_DWORD *)(a1 + 740) = 0;
  *(_DWORD *)(a1 + 744) = 0;
  *(_BYTE *)(a1 + 748) = 0;
  *(_BYTE *)(a1 + 749) = 0;
  *(_BYTE *)(a1 + 751) = 0;
  *(_BYTE *)(a1 + 752) = 0;
  *(_DWORD *)(a1 + 756) = 0;
  *(_BYTE *)(a1 + 760) = 0;
  *(_BYTE *)(a1 + 761) = 0;
  *(_BYTE *)(a1 + 762) = 0;
  *(_BYTE *)(a1 + 764) = 0;
  *(_DWORD *)(a1 + 768) = 0;
  ObjectSearcher::TargetList::TargetList((ObjectSearcher::TargetList *)(a1 + 772), nullptr, 1, 0, 1);
  *(_DWORD *)(a1 + 872) = a1 + 856;
  *(_DWORD *)(a1 + 876) = a1 + 856;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block(a1 + 856, 0x10u);
  **(_BYTE **)(a1 + 872) = 0;
  *(_WORD *)(a1 + 880) = -1;
  *(_DWORD *)(a1 + 332) = -1027080192;
  *(_DWORD *)(a1 + 344) = 1120403456;
  *(_DWORD *)(a1 + 324) = -1027080192;
  *(_DWORD *)(a1 + 328) = -1027080192;
  *(_DWORD *)(a1 + 336) = 1120403456;
  *(_DWORD *)(a1 + 340) = 1120403456;
  *(_BYTE *)(a1 + 883) = 0;
  *(_BYTE *)(a1 + 882) = 0;
  GameObject::UpdateAbsoluteAABB((GameObject *)a1);
  ObjectSearcher::TargetList::SetRefObject((ObjectSearcher::TargetList *)(a1 + 772), (GameObject *)a1);
  return a1;
}


// ===== 38c398 GameObject::GameObject(ObjectBase::GO_IDS) =====
int __fastcall GameObject::GameObject(int a1)
{
  ObjectBase::ObjectBase();
  *(_DWORD *)(a1 + 288) = 0;
  *(_DWORD *)(a1 + 4) = &off_964820;
  *(_DWORD *)(a1 + 36) = off_96482C;
  *(_DWORD *)a1 = off_964750;
  *(_DWORD *)(a1 + 292) = 0;
  *(_DWORD *)(a1 + 296) = 0;
  *(_DWORD *)(a1 + 300) = 0;
  *(_DWORD *)(a1 + 304) = 0;
  *(_DWORD *)(a1 + 308) = 0;
  *(_DWORD *)(a1 + 312) = 0;
  *(_DWORD *)(a1 + 316) = 0;
  *(_DWORD *)(a1 + 320) = 0;
  *(_DWORD *)(a1 + 324) = 0;
  *(_DWORD *)(a1 + 328) = 0;
  *(_DWORD *)(a1 + 332) = 0;
  *(_DWORD *)(a1 + 336) = 0;
  *(_DWORD *)(a1 + 340) = 0;
  *(_DWORD *)(a1 + 344) = 0;
  *(_DWORD *)(a1 + 352) = 0;
  *(_DWORD *)(a1 + 356) = 0;
  *(_DWORD *)(a1 + 360) = 0;
  *(_DWORD *)(a1 + 364) = 0;
  *(_DWORD *)(a1 + 368) = 0;
  *(_DWORD *)(a1 + 372) = 0;
  *(_DWORD *)(a1 + 376) = 0;
  *(_DWORD *)(a1 + 388) = 0;
  *(_DWORD *)(a1 + 392) = 0;
  *(_DWORD *)(a1 + 396) = 0;
  *(_DWORD *)(a1 + 400) = 0;
  *(_DWORD *)(a1 + 404) = 0;
  *(_BYTE *)(a1 + 348) = 0;
  *(_DWORD *)(a1 + 384) = 0;
  *(_DWORD *)(a1 + 408) = 0;
  *(_DWORD *)(a1 + 448) = 0;
  *(_DWORD *)(a1 + 412) = 0;
  *(_DWORD *)(a1 + 416) = 0;
  *(_DWORD *)(a1 + 420) = 0;
  *(_DWORD *)(a1 + 424) = 0;
  *(_DWORD *)(a1 + 428) = 0;
  *(_DWORD *)(a1 + 432) = 0;
  *(_BYTE *)(a1 + 436) = 0;
  *(_BYTE *)(a1 + 437) = 0;
  *(_DWORD *)(a1 + 440) = 0;
  *(_DWORD *)(a1 + 444) = 0;
  *(_BYTE *)(a1 + 452) = 0;
  PFObject::PFObject((PFObject *)(a1 + 456));
  *(_DWORD *)(a1 + 628) = 100;
  *(_DWORD *)(a1 + 648) = a1 + 632;
  *(_DWORD *)(a1 + 652) = a1 + 632;
  *(_DWORD *)(a1 + 620) = 0;
  *(_DWORD *)(a1 + 624) = -1;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block(a1 + 632, 0x10u);
  **(_BYTE **)(a1 + 648) = 0;
  *(_DWORD *)(a1 + 672) = a1 + 656;
  *(_DWORD *)(a1 + 676) = a1 + 656;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block(a1 + 656, 0x10u);
  **(_BYTE **)(a1 + 672) = 0;
  *(_DWORD *)(a1 + 696) = a1 + 680;
  *(_DWORD *)(a1 + 700) = a1 + 680;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block(a1 + 680, 0x10u);
  **(_BYTE **)(a1 + 696) = 0;
  *(_DWORD *)(a1 + 720) = a1 + 704;
  *(_DWORD *)(a1 + 724) = a1 + 704;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block(a1 + 704, 0x10u);
  **(_BYTE **)(a1 + 720) = 0;
  *(_BYTE *)(a1 + 750) = 1;
  *(_BYTE *)(a1 + 763) = 1;
  *(_DWORD *)(a1 + 728) = 0;
  *(_DWORD *)(a1 + 732) = 0;
  *(_DWORD *)(a1 + 736) = 0;
  *(_DWORD *)(a1 + 740) = 0;
  *(_DWORD *)(a1 + 744) = 0;
  *(_BYTE *)(a1 + 748) = 0;
  *(_BYTE *)(a1 + 749) = 0;
  *(_BYTE *)(a1 + 751) = 0;
  *(_BYTE *)(a1 + 752) = 0;
  *(_DWORD *)(a1 + 756) = 0;
  *(_BYTE *)(a1 + 760) = 0;
  *(_BYTE *)(a1 + 761) = 0;
  *(_BYTE *)(a1 + 762) = 0;
  *(_BYTE *)(a1 + 764) = 0;
  *(_DWORD *)(a1 + 768) = 0;
  ObjectSearcher::TargetList::TargetList((ObjectSearcher::TargetList *)(a1 + 772), nullptr, 1, 0, 1);
  *(_DWORD *)(a1 + 872) = a1 + 856;
  *(_DWORD *)(a1 + 876) = a1 + 856;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block(a1 + 856, 0x10u);
  **(_BYTE **)(a1 + 872) = 0;
  *(_WORD *)(a1 + 880) = -1;
  *(_DWORD *)(a1 + 332) = -1027080192;
  *(_DWORD *)(a1 + 344) = 1120403456;
  *(_DWORD *)(a1 + 324) = -1027080192;
  *(_DWORD *)(a1 + 328) = -1027080192;
  *(_DWORD *)(a1 + 336) = 1120403456;
  *(_DWORD *)(a1 + 340) = 1120403456;
  *(_BYTE *)(a1 + 883) = 0;
  *(_BYTE *)(a1 + 882) = 0;
  GameObject::UpdateAbsoluteAABB((GameObject *)a1);
  ObjectSearcher::TargetList::SetRefObject((ObjectSearcher::TargetList *)(a1 + 772), (GameObject *)a1);
  return a1;
}


// ===== 38c600 GameObject::DisableZoning(void) =====
int __fastcall GameObject::DisableZoning(GameObject *this)
{
  RoomZone *v2; // r0
  int (__fastcall *v3)(GameObject *, int); // r5

  if ( *((_BYTE *)this + 750) )
  {
    v2 = *((RoomZone **)this + 189);
    if ( v2 )
      RoomZone::RemoveObject(v2, this);
    ObjectManager::AddNoRoomObject((ObjectManager *)dword_99F764, this);
    *((_BYTE *)this + 750) = 0;
  }
  v3 = *(int (__fastcall **)(GameObject *, int))(*(_DWORD *)this + 60);
  if ( (*(int (__fastcall **)(GameObject *))(*(_DWORD *)this + 196))(this) && *((_BYTE *)this + 750) )
    return v3(this, *((unsigned __int8 *)this + 752));
  else
    return v3(this, 1);
}


// ===== 38c69c GameObject::ZoneExited(void) =====
int __fastcall GameObject::ZoneExited(GameObject *this)
{
  int v1; // r3
  VisualObject *v3; // r0
  int (__fastcall *v4)(GameObject *, int); // r4

  v1 = *((unsigned __int8 *)this + 750);
  *((_BYTE *)this + 752) = 0;
  if ( v1 )
  {
    v3 = *((VisualObject **)this + 182);
    if ( v3 )
      VisualObject::SyncVisibility(v3);
  }
  v4 = *(int (__fastcall **)(GameObject *, int))(*(_DWORD *)this + 60);
  if ( (*(int (__fastcall **)(GameObject *))(*(_DWORD *)this + 196))(this) && *((_BYTE *)this + 750) )
    return v4(this, *((unsigned __int8 *)this + 752));
  else
    return v4(this, 1);
}


// ===== 38c710 GameObject::ZoneEntered(void) =====
int __fastcall GameObject::ZoneEntered(GameObject *this)
{
  int v1; // r3
  VisualObject *v3; // r0
  int (__fastcall *v4)(GameObject *, int); // r4

  v1 = *((unsigned __int8 *)this + 750);
  *((_BYTE *)this + 752) = 1;
  if ( v1 )
  {
    v3 = *((VisualObject **)this + 182);
    if ( v3 )
    {
      if ( *((_BYTE *)this + 128) )
        VisualObject::SyncVisibility(v3);
    }
  }
  v4 = *(int (__fastcall **)(GameObject *, int))(*(_DWORD *)this + 60);
  if ( (*(int (__fastcall **)(GameObject *))(*(_DWORD *)this + 196))(this) && *((_BYTE *)this + 750) )
    return v4(this, *((unsigned __int8 *)this + 752));
  else
    return v4(this, 1);
}


// ===== 38c790 GameObject::EnableZoning(void) =====
int __fastcall GameObject::EnableZoning(GameObject *this)
{
  VisualObject *v2; // r0
  int (__fastcall *v3)(GameObject *, int); // r5
  RoomZone *v5; // r0

  if ( !*((_BYTE *)this + 750) )
  {
    *((_BYTE *)this + 750) = 1;
    ObjectManager::RemoveNoRoomObject((ObjectManager *)dword_99F764, this);
    v5 = *((RoomZone **)this + 189);
    if ( v5 )
    {
      RoomZone::AddObject(v5, this);
      if ( *(_BYTE *)(*((_DWORD *)this + 189) + 905) )
        GameObject::ZoneEntered(this);
      else
        GameObject::ZoneExited(this);
    }
  }
  if ( (*(int (__fastcall **)(GameObject *))(*(_DWORD *)this + 196))(this) )
  {
    v2 = *((VisualObject **)this + 182);
    if ( v2 )
      VisualObject::SyncVisibility(v2);
  }
  v3 = *(int (__fastcall **)(GameObject *, int))(*(_DWORD *)this + 60);
  if ( (*(int (__fastcall **)(GameObject *))(*(_DWORD *)this + 196))(this) && *((_BYTE *)this + 750) )
    return v3(this, *((unsigned __int8 *)this + 752));
  else
    return v3(this, 1);
}


// ===== 38c87c std::priv::_Deque_base<ObjectSearcher::TargetInfo,std::allocator<ObjectSearcher::TargetInfo>>::~_Deque_base() =====
_DWORD *__fastcall std::priv::_Deque_base<ObjectSearcher::TargetInfo,std::allocator<ObjectSearcher::TargetInfo>>::~_Deque_base(
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
        __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v5, 0x78u);
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


// ===== 38c900 ObjectSearcher::BackupObjectList::~BackupObjectList() =====
void __fastcall ObjectSearcher::BackupObjectList::~BackupObjectList(ObjectSearcher::BackupObjectList *this)
{
  char *v2; // r5
  void *v3; // r0
  size_t v4; // r1

  *(_DWORD *)this = off_969CF8;
  v2 = (char *)this + 4;
  ObjectSearcher::BackupObjectList::_Clear((int)this);
  v3 = *((void **)this + 1);
  if ( v3 )
  {
    v4 = (*((_DWORD *)v2 + 2) - (_DWORD)v3) & 0xFFFFFFFC;
    if ( v4 > 0x80 )
      CustomFree(v3);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v3, v4);
  }
}


// ===== 38c968 GameObject::Draw(void) =====
void __fastcall GameObject::Draw(GameObject *this)
{
  int v1; // r3
  int v3; // r3
  int Switch; // r10
  int v5; // r8
  int v6; // r8
  int v7; // r9
  int v8; // r2
  int Technique; // r2
  int v10; // r11
  int v11; // r9
  int v12; // r10
  int v13; // r8
  int v14; // r0
  int v15; // lr
  int v16; // r12
  void (__fastcall *v17)(int, _DWORD *, int); // r3
  _DWORD v18[7]; // [sp+0h] [bp-7Ch] BYREF
  glitch::video::CMaterial *v19; // [sp+1Ch] [bp-60h] BYREF
  std::string v20; // [sp+2Ch] [bp-50h] BYREF
  std::string v21; // [sp+44h] [bp-38h] BYREF
  std::string v22; // [sp+5Ch] [bp-20h] BYREF

  v1 = *((_DWORD *)this + 182);
  if ( v1 )
    (*(void (__fastcall **)(_DWORD))(*(_DWORD *)v1 + 12))(*((_DWORD *)this + 182));
  v3 = *((_DWORD *)this + 183);
  if ( v3 )
    (*(void (__fastcall **)(_DWORD))(*(_DWORD *)v3 + 36))(*((_DWORD *)this + 183));
  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string((int)&v22, "isDisplayingObstacles");
  Switch = DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v22);
  std::string::~string(&v22);
  if ( Switch )
    PFObject::DBG_DrawObstacle((GameObject *)((char *)this + 456));
  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string((int)&v21, "isDisplayingObstacleForces");
  if ( DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v21)
    && (*(int (__fastcall **)(GameObject *))(*(_DWORD *)this + 124))(this) )
  {
    std::string::~string(&v21);
    PFObject::DBG_DrawObstacleForces((GameObject *)((char *)this + 456));
  }
  else
  {
    std::string::~string(&v21);
  }
  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string((int)&v20, "isDisplayingBoundingBox");
  v5 = DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v20);
  std::string::~string(&v20);
  if ( v5 )
  {
    v6 = *(_DWORD *)(dword_99F73C + 16);
    v7 = *(_DWORD *)(v6 + 220);
    v8 = *(unsigned __int16 *)(v7 + 46);
    if ( v8 == 0xFFFF )
      LOBYTE(v8) = glitch::video::CMaterialRendererManager::createMaterialRenderer(*(_DWORD *)(v6 + 220), 1);
    glitch::video::CMaterialRendererManager::getMaterialInstance(
      (glitch::video::CMaterialRendererManager *)&v19,
      v7,
      v8);
    if ( v19 )
      Technique = glitch::video::CMaterial::getTechnique(v19);
    else
      Technique = 255;
    glitch::video::IVideoDriver::setMaterial(v6, &v19, Technique, 0);
    v10 = *((_DWORD *)this + 75);
    v11 = *((_DWORD *)this + 76);
    v12 = *((_DWORD *)this + 77);
    v13 = *((_DWORD *)this + 78);
    v14 = *(_DWORD *)(dword_99F73C + 16);
    v15 = *((_DWORD *)this + 79);
    v16 = *((_DWORD *)this + 80);
    v17 = *(void (__fastcall **)(int, _DWORD *, int))(*(_DWORD *)v14 + 40);
    v18[6] = -65536;
    v18[0] = v10;
    v18[1] = v11;
    v18[2] = v12;
    v18[3] = v13;
    v18[4] = v15;
    v18[5] = v16;
    v17(v14, v18, -65536);
    boost::intrusive_ptr<glitch::video::CMaterial>::~intrusive_ptr(&v19);
  }
}


// ===== 38cbe8 GameObject::Update(void) =====
int __fastcall GameObject::Update(GameObject *this)
{
  int v2; // lr
  int v3; // r12
  int v4; // r1
  int v5; // r2
  int v6; // r0
  std::string v8; // [sp+4h] [bp-1Ch] BYREF

  PushProfilingContext("GameObject::Update");
  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string((int)&v8, "TraceUpdateGameObjectOnce");
  DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v8);
  std::string::~string(&v8);
  ++*(_DWORD *)(dword_99F764 + 88);
  if ( *((_DWORD *)this + 185) )
  {
    (*(void (__fastcall **)(GameObject *))(*(_DWORD *)this + 152))(this);
    *((_DWORD *)this + 185) = 0;
  }
  v2 = *((_DWORD *)this + 88);
  v3 = *((_DWORD *)this + 89);
  v4 = *((_DWORD *)this + 91);
  v5 = *((_DWORD *)this + 92);
  v6 = *((_DWORD *)this + 90);
  *((_DWORD *)this + 105) = *((_DWORD *)this + 93);
  *((_DWORD *)this + 100) = v2;
  *((_DWORD *)this + 101) = v3;
  *((_DWORD *)this + 103) = v4;
  *((_DWORD *)this + 104) = v5;
  *((_DWORD *)this + 102) = v6;
  GameObject::UpdatePath(this);
  GameObject::UpdateRotation(this);
  GameObject::UpdateSubObjects(this);
  GameObject::UpdateTargetPosition(this);
  GameObject::RequireOnlineUpdate(this);
  if ( *((__int16 *)this + 440) >= 0 )
    GameObject::UpdateIdleSound(this);
  return PopProfilingContext("GameObject::Update");
}


// ===== 38cd48 GameObject::InitFinal(void) =====
int __fastcall GameObject::InitFinal(GameObject *this)
{
  int result; // r0
  float v3; // r7
  const char *v4; // r7
  size_t v5; // r0
  VisualObject *v6; // r0
  const char *v7; // r2
  const char *v8; // r1
  int v9; // r8
  int LightSetIdFromName; // r8
  int v11; // r3
  glitch::scene::ISceneNode *v12; // r0
  int v13; // r2
  int v14; // r3
  int v15; // [sp+0h] [bp-28h]
  char *v16; // [sp+4h] [bp-24h]
  char *v17; // [sp+8h] [bp-20h]
  std::string v18; // [sp+Ch] [bp-1Ch] BYREF
  std::string v19; // 0:kr00_24.24

  result = GameObject::CheckSpawnProbability(this);
  if ( result < *((_DWORD *)this + 157) && !*((_BYTE *)this + 129) )
  {
    if ( *((_BYTE *)this + 749) )
      (*(void (__fastcall **)(GameObject *, int))(*(_DWORD *)this + 64))(this, 1);
    v3 = *((float *)this + 84) - *((float *)this + 81);
    if ( v3 < (float)(*((float *)this + 85) - *((float *)this + 82)) )
      v3 = *((float *)this + 85) - *((float *)this + 82);
    PFWorld::InitObject(
      &Singleton<PFWorld>::s_inst,
      (char *)this + 456,
      *((unsigned __int8 *)this + 132),
      (char *)this + 352,
      LODWORD(v3),
      this);
    v4 = *((const char **)this + 17);
    v5 = LC_API_STRLEN_0(v4);
    std::string::_M_assign((std::string *const)((char *)this + 596), v4, &v4[v5]);
    v6 = *((VisualObject **)this + 182);
    if ( v6 )
    {
      VisualObject::Sync(v6);
      v7 = *((const char **)this + 162);
      v8 = *((const char **)this + 163);
      v9 = *(_DWORD *)(dword_99F73C + 28);
      v18._M_finish = (char *)&v18;
      v18._M_start_of_storage._M_data = (char *)&v18;
      std::string::_M_range_initialize(&v18, v8, v7);
      v19._M_buffers._M_end_of_storage = (char *)&v18;
      *(_DWORD *)&v19._M_buffers._M_static_buf[4] = v13;
      *(_DWORD *)&v19._M_buffers._M_static_buf[8] = v14;
      *(_DWORD *)&v19._M_buffers._M_static_buf[12] = v15;
      v19._M_finish = v16;
      v19._M_start_of_storage._M_data = v17;
      LightSetIdFromName = LightSetManager::GetLightSetIdFromName((LightSetManager *)(v9 + 660), v19);
      std::string::~string(&v18);
      *(_DWORD *)(*((_DWORD *)this + 182) + 64) = LightSetIdFromName;
      v11 = *((_DWORD *)this + 182);
      if ( v11 )
      {
        v12 = *(glitch::scene::ISceneNode **)(v11 + 8);
        if ( v12 )
          *((_DWORD *)this + 96) = glitch::scene::ISceneNode::getSceneNodeFromName(v12, "target_node");
      }
    }
    return GameObject::UpdatePFObject(this);
  }
  return result;
}


// ===== 38cee0 `non-virtual thunk to'GameObject::DeclareProperties(void) =====
int __fastcall `non-virtual thunk to'GameObject::DeclareProperties(GameObject *this)
{
  return GameObject::DeclareProperties((GameObject *)((char *)this - 4));
}


// ===== 38cee8 GameObject::DeclareProperties(void) =====
int __fastcall GameObject::DeclareProperties(GameObject *this)
{
  PropertyMap *v1; // r5
  char *v3; // r11
  Property *v4; // r10
  _DWORD v6[3]; // [sp+0h] [bp-4Ch] BYREF
  _DWORD v7[3]; // [sp+Ch] [bp-40h] BYREF
  _DWORD v8[3]; // [sp+18h] [bp-34h] BYREF
  std::string v9; // [sp+2Ch] [bp-20h] BYREF

  v1 = (GameObject *)((char *)this + 4);
  v3 = (char *)this + 628;
  ObjectBase::DeclareProperties(this);
  v8[0] = Vec3f_Origin;
  v8[1] = dword_99F858;
  v8[2] = dword_99F85C;
  PropertyMap::AddProperty<Point3D<float>>(v1, "position", (char *)this + 352, v8);
  v7[0] = Vec3f_Origin;
  v7[1] = dword_99F858;
  v7[2] = dword_99F85C;
  PropertyMap::AddProperty<Point3D<float>>(v1, "rotation", (char *)this + 364, v7);
  PropertyMap::AddProperty<std::string>((int)v1, (int)"dae", (int)this + 656);
  PropertyMap::AddProperty<std::string>((int)v1, (int)"xrefobject", (int)this + 680);
  PropertyMap::AddProperty<std::string>((int)v1, (int)"xrefmax", (int)this + 704);
  v6[2] = 1065353216;
  v6[0] = 1065353216;
  v6[1] = 1065353216;
  PropertyMap::AddProperty<Point3D<float>>(v1, "scale", (char *)this + 288, v6);
  PropertyMap::AddProperty<bool>(v1, "alwaysVisible", (char *)this + 749, 0);
  PropertyMap::AddProperty<bool>(v1, "skip_checkpoint", (char *)this + 348, 0);
  v4 = (Property *)operator new(36, 0);
  *(_DWORD *)v4 = &off_95C5E8;
  std::string::string((int)v4 + 8, "spawn_prob");
  *((_DWORD *)v4 + 8) = 100;
  *(_DWORD *)v4 = &off_964708;
  *((_DWORD *)v4 + 1) = v3 - (char *)v1;
  PropertyMap::AddProperty(v1, "spawn_prob", v4);
  std::string::string((int)&v9, "PlayerLight");
  PropertyMap::AddProperty<std::string>(v1, "lightset", (char *)this + 632, &v9);
  std::string::~string(&v9);
  PropertyMap::AddProperty<std::string>((int)v1, (int)"idle_sound", (int)this + 856);
  return PropertyMap::AddProperty<bool>(v1, "facultative", (char *)this + 96, 1);
}


// ===== 38d144 std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,ObjectSearcher::BackupObjectList>,std::priv::_Select1st<std::pair<std::string const,ObjectSearcher::BackupObjectList>>,std::priv::_MapTraitsT<std::pair<std::string const,ObjectSearcher::BackupObjectList>>,std::allocator<std::pair<std::string const,ObjectSearcher::BackupObjectList>>>::_M_erase(std::priv::_Rb_tree_node_base *) =====
void __fastcall std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,ObjectSearcher::BackupObjectList>,std::priv::_Select1st<std::pair<std::string const,ObjectSearcher::BackupObjectList>>,std::priv::_MapTraitsT<std::pair<std::string const,ObjectSearcher::BackupObjectList>>,std::allocator<std::pair<std::string const,ObjectSearcher::BackupObjectList>>>::_M_erase(
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
      std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,ObjectSearcher::BackupObjectList>,std::priv::_Select1st<std::pair<std::string const,ObjectSearcher::BackupObjectList>>,std::priv::_MapTraitsT<std::pair<std::string const,ObjectSearcher::BackupObjectList>>,std::allocator<std::pair<std::string const,ObjectSearcher::BackupObjectList>>>::_M_erase(
        a1,
        *(_DWORD *)(v2 + 12));
      v4 = *(_DWORD *)(v2 + 8);
      ObjectSearcher::BackupObjectList::~BackupObjectList((ObjectSearcher::BackupObjectList *)(v2 + 40));
      std::string::~string((std::string *)(v2 + 16));
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer((void *)v2, 0x40u);
      v2 = v4;
    }
    while ( v4 );
  }
}


// ===== 38d18c ObjectSearcher::TargetList::~TargetList() =====
void __fastcall ObjectSearcher::TargetList::~TargetList(ObjectSearcher::TargetList *this)
{
  int v2; // r3
  int v3; // r1
  int v4; // r2
  int v5; // r0
  int v6; // r3
  bool v7; // zf
  int v8; // t1
  char *v9; // r5

  if ( *((_DWORD *)this + 19) )
  {
    v9 = (char *)this + 60;
    std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,ObjectSearcher::BackupObjectList>,std::priv::_Select1st<std::pair<std::string const,ObjectSearcher::BackupObjectList>>,std::priv::_MapTraitsT<std::pair<std::string const,ObjectSearcher::BackupObjectList>>,std::allocator<std::pair<std::string const,ObjectSearcher::BackupObjectList>>>::_M_erase(
      (char *)this + 60,
      *((_DWORD *)this + 16));
    *((_DWORD *)this + 18) = v9;
    *((_DWORD *)this + 19) = 0;
    *((_DWORD *)this + 17) = v9;
    *((_DWORD *)this + 16) = 0;
  }
  v2 = *(_DWORD *)this;
  v3 = *((_DWORD *)this + 4);
  v4 = *((_DWORD *)this + 2);
  v5 = *((_DWORD *)this + 3);
  if ( v3 != *(_DWORD *)this )
  {
    while ( 1 )
    {
      v6 = v2 + 20;
      if ( v6 != v4 )
        break;
LABEL_7:
      v8 = *(_DWORD *)(v5 + 4);
      v5 += 4;
      v2 = v8;
      v4 = v8 + 120;
      if ( v3 == v8 )
        goto LABEL_8;
    }
    while ( 1 )
    {
      v7 = v3 == v6;
      v6 += 20;
      if ( v7 )
        break;
      if ( v4 == v6 )
        goto LABEL_7;
    }
  }
LABEL_8:
  std::priv::_Deque_base<ObjectSearcher::TargetInfo,std::allocator<ObjectSearcher::TargetInfo>>::~_Deque_base(this);
}


// ===== 38d220 `non-virtual thunk to'GameObject::~GameObject() =====
void __fastcall `non-virtual thunk to'GameObject::~GameObject(GameObject *this)
{
  GameObject::~GameObject((GameObject *)((char *)this - 36));
}


// ===== 38d228 GameObject::~GameObject() =====
void __fastcall GameObject::~GameObject(GameObject *this)
{
  int v1; // r2
  int v3; // r3
  int v4; // r3
  int v5; // r3

  v1 = *((_DWORD *)this + 182);
  *(_DWORD *)this = off_964750;
  *((_DWORD *)this + 1) = &off_964820;
  *((_DWORD *)this + 9) = off_96482C;
  if ( v1 )
  {
    (*(void (__fastcall **)(int))(*(_DWORD *)v1 + 4))(v1);
    *((_DWORD *)this + 182) = 0;
  }
  v3 = *((_DWORD *)this + 183);
  if ( v3 )
  {
    (*(void (__fastcall **)(_DWORD))(*(_DWORD *)v3 + 4))(*((_DWORD *)this + 183));
    *((_DWORD *)this + 183) = 0;
  }
  v4 = *((_DWORD *)this + 184);
  if ( v4 )
  {
    (*(void (__fastcall **)(_DWORD))(*(_DWORD *)v4 + 4))(*((_DWORD *)this + 184));
    *((_DWORD *)this + 184) = 0;
  }
  v5 = *((_DWORD *)this + 192);
  if ( v5 )
  {
    (*(void (__fastcall **)(_DWORD))(*(_DWORD *)v5 + 4))(*((_DWORD *)this + 192));
    *((_DWORD *)this + 192) = 0;
  }
  VoxSoundManager::Stop((VoxSoundManager *)VoxSoundManager::s_instance, *((__int16 *)this + 440), 0);
  std::string::~string((std::string *)((char *)this + 856));
  ObjectSearcher::TargetList::~TargetList((GameObject *)((char *)this + 772));
  std::string::~string((std::string *)((char *)this + 704));
  std::string::~string((std::string *)((char *)this + 680));
  std::string::~string((std::string *)((char *)this + 656));
  std::string::~string((std::string *)((char *)this + 632));
  PFObject::~PFObject((GameObject *)((char *)this + 456));
  ObjectBase::~ObjectBase(this);
}


// ===== 38d354 `non-virtual thunk to'GameObject::~GameObject() =====
void __fastcall `non-virtual thunk to'GameObject::~GameObject(GameObject *this)
{
  GameObject::~GameObject((GameObject *)((char *)this - 36));
}


// ===== 38d35c GameObject::~GameObject() =====
void __fastcall GameObject::~GameObject(GameObject *this)
{
  GameObject::~GameObject(this);
  CustomFree(this);
}


// ===== 38d378 GameObject::~GameObject() =====
void __fastcall GameObject::~GameObject(GameObject *this)
{
  int v1; // r2
  int v3; // r3
  int v4; // r3
  int v5; // r3
  int savedregs; // [sp+0h] [bp+0h]
  int savedregs_4; // [sp+4h] [bp+4h]
  char savedregs_8; // [sp+8h] [bp+8h]

  v1 = *((_DWORD *)this + 182);
  *(_DWORD *)this = off_964750;
  *((_DWORD *)this + 1) = &off_964820;
  *((_DWORD *)this + 9) = off_96482C;
  if ( v1 )
  {
    (*(void (__fastcall **)(int))(*(_DWORD *)v1 + 4))(v1);
    *((_DWORD *)this + 182) = 0;
  }
  v3 = *((_DWORD *)this + 183);
  if ( v3 )
  {
    (*(void (__fastcall **)(_DWORD))(*(_DWORD *)v3 + 4))(*((_DWORD *)this + 183));
    *((_DWORD *)this + 183) = 0;
  }
  v4 = *((_DWORD *)this + 184);
  if ( v4 )
  {
    (*(void (__fastcall **)(_DWORD))(*(_DWORD *)v4 + 4))(*((_DWORD *)this + 184));
    *((_DWORD *)this + 184) = 0;
  }
  v5 = *((_DWORD *)this + 192);
  if ( v5 )
  {
    (*(void (__fastcall **)(_DWORD))(*(_DWORD *)v5 + 4))(*((_DWORD *)this + 192));
    *((_DWORD *)this + 192) = 0;
  }
  VoxSoundManager::Stop(
    VoxSoundManager::s_instance,
    *((__int16 *)this + 440),
    0,
    (int)&VoxSoundManager::s_instance,
    savedregs,
    savedregs_4,
    savedregs_8);
  std::string::~string((std::string *)((char *)this + 856));
  ObjectSearcher::TargetList::~TargetList((GameObject *)((char *)this + 772));
  std::string::~string((std::string *)((char *)this + 704));
  std::string::~string((std::string *)((char *)this + 680));
  std::string::~string((std::string *)((char *)this + 656));
  std::string::~string((std::string *)((char *)this + 632));
  PFObject::~PFObject((GameObject *)((char *)this + 456));
  ObjectBase::~ObjectBase(this);
}


// ===== 38d4a4 ObjectSearcher::CharacterList::Reset(void) =====
_DWORD *__fastcall ObjectSearcher::CharacterList::Reset(_DWORD *this)
{
  int *v1; // r3
  int v2; // r2

  v1 = (int *)*(this + 1);
  v2 = *v1;
  *(this + 3) = v1;
  *(this + 2) = v2;
  return this;
}


// ===== 38d4b8 ObjectSearcher::CharacterList::AtEnd(void) =====
bool __fastcall ObjectSearcher::CharacterList::AtEnd(ObjectSearcher::CharacterList *this)
{
  return *((_DWORD *)this + 3) == *((_DWORD *)this + 2);
}


// ===== 38d4d0 ObjectSearcher::CharacterList::Next(void) =====
int __fastcall ObjectSearcher::CharacterList::Next(int this)
{
  *(_DWORD *)(this + 8) = **(_DWORD **)(this + 8);
  return this;
}


// ===== 38d4e0 ObjectSearcher::CharacterList::Size(void) =====
int __fastcall ObjectSearcher::CharacterList::Size(ObjectSearcher::CharacterList *this)
{
  _DWORD **v1; // r2
  _DWORD *v2; // r3
  int result; // r0

  v1 = *((_DWORD ***)this + 1);
  v2 = *v1;
  if ( *v1 == v1 )
    return 0;
  result = 0;
  do
  {
    v2 = (_DWORD *)*v2;
    ++result;
  }
  while ( v1 != v2 );
  return result;
}


// ===== 38d50c ObjectSearcher::CharacterList::Get(void) =====
int __fastcall ObjectSearcher::CharacterList::Get(ObjectSearcher::CharacterList *this)
{
  return *(_DWORD *)(*((_DWORD *)this + 2) + 8);
}


// ===== 38d518 ObjectSearcher::CharacterList::GetChar(void) =====
int __fastcall ObjectSearcher::CharacterList::GetChar(ObjectSearcher::CharacterList *this)
{
  return *(_DWORD *)(*((_DWORD *)this + 2) + 8);
}


// ===== 38d524 ObjectSearcher::PlayerList::Reset(void) =====
int __fastcall ObjectSearcher::PlayerList::Reset(int this)
{
  *(_DWORD *)(this + 8) = 0;
  return this;
}


// ===== 38d530 ObjectSearcher::PlayerList::AtEnd(void) =====
bool __fastcall ObjectSearcher::PlayerList::AtEnd(ObjectSearcher::PlayerList *this)
{
  return *((_DWORD *)this + 2) >= *(_DWORD *)(*((_DWORD *)this + 1) + 1732);
}


// ===== 38d54c ObjectSearcher::PlayerList::Next(void) =====
int __fastcall ObjectSearcher::PlayerList::Next(int this)
{
  ++*(_DWORD *)(this + 8);
  return this;
}


// ===== 38d55c ObjectSearcher::PlayerList::Size(void) =====
int __fastcall ObjectSearcher::PlayerList::Size(ObjectSearcher::PlayerList *this)
{
  return *(_DWORD *)(*((_DWORD *)this + 1) + 1732);
}


// ===== 38d568 ObjectSearcher::TargetSorter::_sortNoSort(ObjectSearcher::TargetInfo const&,ObjectSearcher::TargetInfo const&) =====
int ObjectSearcher::TargetSorter::_sortNoSort()
{
  return 0;
}


// ===== 38d570 ObjectSearcher::TargetSorter::_sortClosest(ObjectSearcher::TargetInfo const&,ObjectSearcher::TargetInfo const&) =====
int __fastcall ObjectSearcher::TargetSorter::_sortClosest(int a1, int a2)
{
  int v3; // r2
  int result; // r0

  v3 = *(_DWORD *)(a1 + 12) & 1;
  result = *(_DWORD *)(a2 + 12) & 1;
  if ( v3 == result )
    return *(float *)(a1 + 4) > *(float *)(a2 + 4);
  return result;
}


// ===== 38d5b4 ObjectSearcher::TargetSorter::_sortFrontal(ObjectSearcher::TargetInfo const&,ObjectSearcher::TargetInfo const&) =====
int __fastcall ObjectSearcher::TargetSorter::_sortFrontal(int a1, int a2)
{
  int v3; // r2
  int result; // r0

  v3 = *(_DWORD *)(a1 + 12) & 1;
  result = *(_DWORD *)(a2 + 12) & 1;
  if ( v3 == result )
    return *(float *)(a1 + 8) > *(float *)(a2 + 8);
  return result;
}


// ===== 38d5f8 GameObject::_Lock(sfc::script::lua::Arguments const&,sfc::script::lua::ReturnValues &,void *) =====
void __fastcall GameObject::_Lock(int a1, int a2, int a3)
{
  ++*(_BYTE *)(a3 + 41);
}


// ===== 38d608 ObjectSearcher::PlayerList::~PlayerList() =====
void __fastcall ObjectSearcher::PlayerList::~PlayerList(ObjectSearcher::PlayerList *this)
{
  ;
}


// ===== 38d60c ObjectSearcher::CharacterList::~CharacterList() =====
void __fastcall ObjectSearcher::CharacterList::~CharacterList(ObjectSearcher::CharacterList *this)
{
  ;
}


// ===== 38d610 std::priv::_Deque_iterator_base<ObjectSearcher::TargetInfo>::_M_subtract(std::priv::_Deque_iterator_base<ObjectSearcher::TargetInfo> const&) =====
int __fastcall std::priv::_Deque_iterator_base<ObjectSearcher::TargetInfo>::_M_subtract(_DWORD *a1, _DWORD *a2)
{
  return -858993459 * ((a2[2] - *a2) >> 2) - 858993459 * ((*a1 - a1[1]) >> 2) + 6 * (((a1[3] - a2[3]) >> 2) - 1);
}


// ===== 38d684 std::priv::_Deque_iterator_base<ObjectSearcher::TargetInfo>::_M_advance(int) =====
_DWORD *__fastcall std::priv::_Deque_iterator_base<ObjectSearcher::TargetInfo>::_M_advance(_DWORD *result, int a2)
{
  int v2; // r2
  __int64 v4; // kr00_8
  int v5; // r1
  int v6; // r3
  int v7; // r2
  int v8; // r3

  v2 = a2 - 858993459 * ((*result - result[1]) >> 2);
  if ( v2 <= 5 && v2 >= 0 )
  {
    *result += 20 * a2;
  }
  else
  {
    if ( v2 > 0 )
      v4 = 2863311531LL * (unsigned int)v2;
    else
      v4 = 2863311531LL * (unsigned int)~v2;
    v5 = result[3];
    if ( v2 <= 0 )
      v6 = ~(HIDWORD(v4) >> 2);
    else
      v6 = HIDWORD(v4) >> 2;
    v7 = v2 - 6 * v6;
    result[3] = v5 + 4 * v6;
    v8 = *(_DWORD *)(v5 + 4 * v6);
    *result = v8 + 20 * v7;
    result[2] = v8 + 120;
    result[1] = v8;
  }
  return result;
}


// ===== 38d730 ObjectSearcher::PlayerList::~PlayerList() =====
void __fastcall ObjectSearcher::PlayerList::~PlayerList(ObjectSearcher::PlayerList *this)
{
  *(_DWORD *)this = off_964728;
  CustomFree(this);
}


// ===== 38d764 ObjectSearcher::CharacterList::~CharacterList() =====
void __fastcall ObjectSearcher::CharacterList::~CharacterList(ObjectSearcher::CharacterList *this)
{
  *(_DWORD *)this = off_964728;
  CustomFree(this);
}


// ===== 38d798 sfc::script::lua::Value::getUInteger(void) =====
unsigned int __fastcall sfc::script::lua::Value::getUInteger(sfc::script::lua::Value *this)
{
  return (unsigned int)COERCE_FLOAT(sfc::script::lua::Value::getNumber(this));
}


// ===== 38d7a8 GameObject::_Unlock(sfc::script::lua::Arguments const&,sfc::script::lua::ReturnValues &,void *) =====
void __fastcall GameObject::_Unlock(int a1, int a2, int a3)
{
  if ( *(_BYTE *)(a3 + 41) )
    --*(_BYTE *)(a3 + 41);
}


// ===== 38d7bc ObjectSearcher::PlayerList::GetChar(void) =====
int __fastcall ObjectSearcher::PlayerList::GetChar(ObjectSearcher::PlayerList *this)
{
  return *(_DWORD *)(PlayerManager::GetPlayer(*((PlayerManager **)this + 1), *((_DWORD *)this + 2), 1) + 1632);
}


// ===== 38d7d4 ObjectSearcher::PlayerList::Get(void) =====
int __fastcall ObjectSearcher::PlayerList::Get(ObjectSearcher::PlayerList *this)
{
  return *(_DWORD *)(PlayerManager::GetPlayer(*((PlayerManager **)this + 1), *((_DWORD *)this + 2), 1) + 1632);
}


// ===== 38d7ec GameObject::createBindings(sfc::script::lua::Binder &) =====
int __fastcall GameObject::createBindings(GameObject *this, sfc::script::lua::Binder *a2)
{
  sfc::script::lua::Binder::bindMethod(
    a2,
    "LOCK",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))GameObject::_Lock);
  sfc::script::lua::Binder::bindMethod(
    a2,
    "UNLOCK",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))GameObject::_Unlock);
  sfc::script::lua::Binder::bindFunction(
    a2,
    "GetID",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))GameObject::_GetID,
    this);
  sfc::script::lua::Binder::bindMethod(
    a2,
    "GetID",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))GameObject::_GetID);
  sfc::script::lua::Binder::bindFunction(
    a2,
    "GetName",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))GameObject::_GetName,
    this);
  sfc::script::lua::Binder::bindMethod(
    a2,
    "GetName",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))GameObject::_GetName);
  sfc::script::lua::Binder::bindFunction(
    a2,
    "GetSelf",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))GameObject::_GetSelf,
    this);
  sfc::script::lua::Binder::bindFunction(
    a2,
    "GetObjectByName",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))GameObject::_GetObjectByName,
    this);
  sfc::script::lua::Binder::bindFunction(
    a2,
    "IsDead",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))GameObject::_IsDead,
    this);
  sfc::script::lua::Binder::bindMethod(
    a2,
    "IsDead",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))GameObject::_IsDead);
  sfc::script::lua::Binder::bindFunction(
    a2,
    "IsCharacter",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))GameObject::_IsCharacter,
    this);
  sfc::script::lua::Binder::bindMethod(
    a2,
    "IsCharacter",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))GameObject::_IsCharacter);
  sfc::script::lua::Binder::bindFunction(
    a2,
    "IsPlayer",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))GameObject::_IsPlayer,
    this);
  sfc::script::lua::Binder::bindMethod(
    a2,
    "IsPlayer",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))GameObject::_IsPlayer);
  sfc::script::lua::Binder::bindFunction(
    a2,
    "IsDoor",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))GameObject::_IsDoor,
    this);
  sfc::script::lua::Binder::bindMethod(
    a2,
    "IsDoor",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))GameObject::_IsDoor);
  sfc::script::lua::Binder::bindFunction(
    a2,
    "IsDecor",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))GameObject::_IsDecor,
    this);
  sfc::script::lua::Binder::bindMethod(
    a2,
    "IsDecor",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))GameObject::_IsDecor);
  sfc::script::lua::Binder::bindFunction(
    a2,
    "GetPosition",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))GameObject::_GetPosition,
    this);
  sfc::script::lua::Binder::bindMethod(
    a2,
    "GetPosition",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))GameObject::_GetPosition);
  sfc::script::lua::Binder::bindFunction(
    a2,
    "SetPosition",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))GameObject::_SetPosition,
    this);
  sfc::script::lua::Binder::bindMethod(
    a2,
    "SetPosition",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))GameObject::_SetPosition);
  sfc::script::lua::Binder::bindFunction(
    a2,
    "GetDistanceFrom",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))GameObject::_GetDistanceFrom,
    this);
  sfc::script::lua::Binder::bindMethod(
    a2,
    "GetDistanceFrom",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))GameObject::_GetDistanceFrom);
  sfc::script::lua::Binder::bindFunction(
    a2,
    "GetDistanceBetween",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))GameObject::_GetDistanceBetween,
    nullptr);
  sfc::script::lua::Binder::bindFunction(
    a2,
    "IsInRange",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))GameObject::_IsInRange,
    this);
  sfc::script::lua::Binder::bindMethod(
    a2,
    "IsInRange",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))GameObject::_IsInRange);
  sfc::script::lua::Binder::bindFunction(
    a2,
    "IsOverAHole",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))GameObject::_IsOverAHole,
    this);
  sfc::script::lua::Binder::bindMethod(
    a2,
    "IsOverAHole",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))GameObject::_IsOverAHole);
  sfc::script::lua::Binder::bindFunction(
    a2,
    "IsInWater",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))GameObject::_IsInWater,
    this);
  sfc::script::lua::Binder::bindMethod(
    a2,
    "IsInWater",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))GameObject::_IsInWater);
  sfc::script::lua::Binder::bindFunction(
    a2,
    "IsFlying",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))GameObject::_IsFlying,
    this);
  sfc::script::lua::Binder::bindMethod(
    a2,
    "IsFlying",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))GameObject::_IsFlying);
  sfc::script::lua::Binder::bindFunction(
    a2,
    "MarkAsFlying",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))GameObject::_MarkAsFlying,
    this);
  sfc::script::lua::Binder::bindMethod(
    a2,
    "MarkAsFlying",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))GameObject::_MarkAsFlying);
  sfc::script::lua::Binder::bindFunction(
    a2,
    "IsSwimming",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))GameObject::_IsSwimming,
    this);
  sfc::script::lua::Binder::bindMethod(
    a2,
    "IsSwimming",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))GameObject::_IsSwimming);
  sfc::script::lua::Binder::bindFunction(
    a2,
    "MarkAsSwimming",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))GameObject::_MarkAsSwimming,
    this);
  sfc::script::lua::Binder::bindMethod(
    a2,
    "MarkAsSwimming",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))GameObject::_MarkAsSwimming);
  sfc::script::lua::Binder::bindFunction(
    a2,
    "HasPath",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))GameObject::_HasPath,
    this);
  sfc::script::lua::Binder::bindMethod(
    a2,
    "HasPath",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))GameObject::_HasPath);
  sfc::script::lua::Binder::bindFunction(
    a2,
    "SetTargetListCharacterFilter",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))GameObject::_SetTargetListCharacterFilter,
    this);
  sfc::script::lua::Binder::bindMethod(
    a2,
    "SetTargetListCharacterFilter",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))GameObject::_SetTargetListCharacterFilter);
  sfc::script::lua::Binder::bindFunction(
    a2,
    "SetTargetListObjectFilter",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))GameObject::_SetTargetListObjectFilter,
    this);
  sfc::script::lua::Binder::bindMethod(
    a2,
    "SetTargetListObjectFilter",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))GameObject::_SetTargetListObjectFilter);
  sfc::script::lua::Binder::bindFunction(
    a2,
    "SetTargetListSorting",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))GameObject::_SetTargetListSorting,
    this);
  sfc::script::lua::Binder::bindMethod(
    a2,
    "SetTargetListSorting",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))GameObject::_SetTargetListSorting);
  sfc::script::lua::Binder::bindFunction(
    a2,
    "TargetListSearch",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))GameObject::_TargetListSearch,
    this);
  sfc::script::lua::Binder::bindMethod(
    a2,
    "TargetListSearch",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))GameObject::_TargetListSearch);
  sfc::script::lua::Binder::bindFunction(
    a2,
    "TargetListSearchRect",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))GameObject::_TargetListSearchRect,
    this);
  sfc::script::lua::Binder::bindMethod(
    a2,
    "TargetListSearchRect",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))GameObject::_TargetListSearchRect);
  sfc::script::lua::Binder::bindFunction(
    a2,
    "TargetListResort",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))GameObject::_TargetListResort,
    this);
  sfc::script::lua::Binder::bindMethod(
    a2,
    "TargetListResort",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))GameObject::_TargetListResort);
  sfc::script::lua::Binder::bindFunction(
    a2,
    "TargetListBackup",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))GameObject::_TargetListBackup,
    this);
  sfc::script::lua::Binder::bindMethod(
    a2,
    "TargetListBackup",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))GameObject::_TargetListBackup);
  sfc::script::lua::Binder::bindFunction(
    a2,
    "IsTargetListEmpty",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))GameObject::_IsTargetListEmpty,
    this);
  sfc::script::lua::Binder::bindMethod(
    a2,
    "IsTargetListEmpty",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))GameObject::_IsTargetListEmpty);
  sfc::script::lua::Binder::bindFunction(
    a2,
    "GetTargetListSize",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))GameObject::_GetTargetListSize,
    this);
  sfc::script::lua::Binder::bindMethod(
    a2,
    "GetTargetListSize",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))GameObject::_GetTargetListSize);
  sfc::script::lua::Binder::bindFunction(
    a2,
    "GetTargetListTop",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))GameObject::_GetTargetListTop,
    this);
  sfc::script::lua::Binder::bindMethod(
    a2,
    "GetTargetListTop",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))GameObject::_GetTargetListTop);
  sfc::script::lua::Binder::bindFunction(
    a2,
    "PopTargetList",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))GameObject::_PopTargetList,
    this);
  sfc::script::lua::Binder::bindMethod(
    a2,
    "PopTargetList",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))GameObject::_PopTargetList);
  sfc::script::lua::Binder::bindFunction(
    a2,
    "PlayFX",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))GameObject::_PlayFX,
    this);
  sfc::script::lua::Binder::bindMethod(
    a2,
    "PlayFX",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))GameObject::_PlayFX);
  sfc::script::lua::Binder::bindFunction(
    a2,
    "GrabFX",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))GameObject::_GrabFX,
    this);
  sfc::script::lua::Binder::bindMethod(
    a2,
    "GrabFX",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))GameObject::_GrabFX);
  sfc::script::lua::Binder::bindFunction(
    a2,
    "DropFX",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))GameObject::_DropFX,
    this);
  sfc::script::lua::Binder::bindMethod(
    a2,
    "DropFX",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))GameObject::_DropFX);
  sfc::script::lua::Binder::bindFunction(
    a2,
    "SetFXEndPoint",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))GameObject::_SetFXEndPoint,
    nullptr);
  sfc::script::lua::Binder::bindFunction(
    a2,
    "PlaySound3D",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))GameObject::_PlaySound3D,
    this);
  sfc::script::lua::Binder::bindFunction(
    a2,
    "Summon",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))GameObject::_Summon,
    this);
  sfc::script::lua::Binder::bindMethod(
    a2,
    "Summon",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))GameObject::_Summon);
  sfc::script::lua::Binder::bindFunction(
    a2,
    "RegisterSummon",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))GameObject::_RegisterSummon,
    nullptr);
  sfc::script::lua::Binder::bindFunction(
    a2,
    "SummonTriggerTrap",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))GameObject::_SummonTriggerTrap,
    this);
  sfc::script::lua::Binder::bindMethod(
    a2,
    "SummonTriggerTrap",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))GameObject::_SummonTriggerTrap);
  sfc::script::lua::Binder::bindFunction(
    a2,
    "SummonTimerTrap",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))GameObject::_SummonTimerTrap,
    this);
  sfc::script::lua::Binder::bindMethod(
    a2,
    "SummonTimerTrap",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))GameObject::_SummonTimerTrap);
  sfc::script::lua::Binder::bindFunction(
    a2,
    "GetRand",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))GameObject::_Rand,
    this);
  sfc::script::lua::Binder::bindMethod(
    a2,
    "GetRand",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))GameObject::_Rand);
  sfc::script::lua::Binder::bindFunction(
    a2,
    "EnableCollisions",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))GameObject::_EnableCollisions,
    this);
  sfc::script::lua::Binder::bindMethod(
    a2,
    "EnableCollisions",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))GameObject::_EnableCollisions);
  sfc::script::lua::Binder::bindFunction(
    a2,
    "DealDamages",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))GameObject::_DealDamages,
    this);
  sfc::script::lua::Binder::bindMethod(
    a2,
    "DealDamages",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))GameObject::_DealDamages);
  sfc::script::lua::Binder::bindFunction(
    a2,
    "SetMaxPath",
    (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))GameObject::_SetMaxPath,
    this);
  return sfc::script::lua::Binder::bindMethod(
           a2,
           "SetMaxPath",
           (void (*)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))GameObject::_SetMaxPath);
}


// ===== 38e244 `global constructor keyed to'.._.._sources_Game_Objects_GameObject_LuaCallbacks.cpp =====
int __fastcall `global constructor keyed to'.._.._sources_Game_Objects_GameObject_LuaCallbacks.cpp(CMessage *a1)
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

  dword_9A2784 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9A2780 = 1056964608;
  messageCreationMap = CMessage::InitializeMessageRegistration(a1);
  byte_9A2789 = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgStartGame",
                  (const char *)GetNewInstance<CMsgStartGame>,
                  v1);
  byte_9A278A = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgControllerAction",
                  (const char *)GetNewInstance<CMsgControllerAction>,
                  v2);
  byte_9A278B = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgAttackResult",
                  (const char *)GetNewInstance<CMsgAttackResult>,
                  v3);
  byte_9A278C = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgRaisedEvent",
                  (const char *)GetNewInstance<CMsgRaisedEvent>,
                  v4);
  byte_9A278D = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgMenuReady",
                  (const char *)GetNewInstance<CMsgMenuReady>,
                  v5);
  byte_9A278E = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgScriptCmd",
                  (const char *)GetNewInstance<CMsgScriptCmd>,
                  v6);
  byte_9A278F = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgInitialSetup",
                  (const char *)GetNewInstance<CMsgInitialSetup>,
                  v7);
  byte_9A2790 = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgQuestsSync",
                  (const char *)GetNewInstance<CMsgQuestsSync>,
                  v8);
  byte_9A2791 = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgDropLoot",
                  (const char *)GetNewInstance<CMsgDropLoot>,
                  v9);
  byte_9A2792 = CMessage::RegisterMessageType((CMessage *)"CMsgIsHost", (const char *)GetNewInstance<CMsgIsHost>, v10);
  byte_9A2793 = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgSpawnObject",
                  (const char *)GetNewInstance<CMsgSpawnObject>,
                  v11);
  byte_9A2794 = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgGlobalDeath",
                  (const char *)GetNewInstance<CMsgGlobalDeath>,
                  v12);
  v14 = (CMessage *)CMessage::RegisterMessageType(
                      (CMessage *)"CMsgAskResendAttributes",
                      (const char *)GetNewInstance<CMsgAskResendAttributes>,
                      v13);
  byte_9A2795 = (char)v14;
  result = CMessage::TerminateMessageRegistration(v14);
  byte_9A2796 = result;
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
  if ( (`guard variable for'Singleton<PFWorld>::s_inst & 1) == 0 )
  {
    `guard variable for'Singleton<PFWorld>::s_inst = 1;
    PFWorld::PFWorld((PFWorld *)&Singleton<PFWorld>::s_inst);
    return _aeabi_atexit((int)&Singleton<PFWorld>::s_inst, (int)PFWorld::~PFWorld, (int)&_dso_handle);
  }
  return result;
}


// ===== 38e578 Random::GetRandom(int,bool) [clone] =====
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


// ===== 38e60c std::priv::_String_base<wchar_t,std::allocator<wchar_t>>::_M_allocate_block(uint) [clone] =====
void std::priv::_String_base<wchar_t,std::allocator<wchar_t>>::_M_allocate_block()
{
  ;
}


// ===== 38e610 std::allocator<GameObject *>::_M_allocate(uint,uint &) =====
void *__fastcall std::allocator<GameObject *>::_M_allocate(int a1, unsigned int a2, size_t *a3)
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


// ===== 38e680 std::vector<GameObject *,std::allocator<GameObject *>>::vector(std::vector<GameObject *,std::allocator<GameObject *>> const&) =====
_DWORD *__fastcall std::vector<GameObject *>::vector(_DWORD *a1, int a2)
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
  v5 = (char *)std::allocator<GameObject *>::_M_allocate((int)(a1 + 2), v4, &v11);
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


// ===== 38e700 GameObject::_GetPosition(sfc::script::lua::Arguments const&,sfc::script::lua::ReturnValues &,void *) =====
int __fastcall GameObject::_GetPosition(
        GameObject *this,
        const sfc::script::lua::Arguments *a2,
        sfc::script::lua::ReturnValues *a3,
        void *a4)
{
  sfc::script::lua::ReturnValues::pushNumber(a2, *((float *)a3 + 88));
  sfc::script::lua::ReturnValues::pushNumber(a2, *((float *)a3 + 89));
  return sfc::script::lua::ReturnValues::pushNumber(a2, *((float *)a3 + 90));
}


// ===== 38e734 std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,ObjectSearcher::BackupObjectList>,std::priv::_Select1st<std::pair<std::string const,ObjectSearcher::BackupObjectList>>,std::priv::_MapTraitsT<std::pair<std::string const,ObjectSearcher::BackupObjectList>>,std::allocator<std::pair<std::string const,ObjectSearcher::BackupObjectList>>>::_M_lower_bound<char const*>(char const* const&) =====
_DWORD *__fastcall std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,ObjectSearcher::BackupObjectList>,std::priv::_Select1st<std::pair<std::string const,ObjectSearcher::BackupObjectList>>,std::priv::_MapTraitsT<std::pair<std::string const,ObjectSearcher::BackupObjectList>>,std::allocator<std::pair<std::string const,ObjectSearcher::BackupObjectList>>>::_M_lower_bound<char const*>(
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


// ===== 38e868 std::pair<std::string const,ObjectSearcher::BackupObjectList>::pair(std::string const&,ObjectSearcher::BackupObjectList const&) =====
int __fastcall std::pair<std::string const,ObjectSearcher::BackupObjectList>::pair(int a1, int a2, int a3)
{
  *(_DWORD *)(a1 + 16) = a1;
  *(_DWORD *)(a1 + 20) = a1;
  std::string::_M_range_initialize((std::string *)a1, *(const char **)(a2 + 20), *(const char **)(a2 + 16));
  *(_DWORD *)(a1 + 24) = off_969CF8;
  std::vector<GameObject *>::vector((_DWORD *)(a1 + 28), a3 + 4);
  *(_DWORD *)(a1 + 40) = *(_DWORD *)(a3 + 16);
  *(_DWORD *)(a1 + 44) = *(_DWORD *)(a3 + 20);
  return a1;
}


// ===== 38e8cc std::pair<std::string const,ObjectSearcher::BackupObjectList>::pair(std::pair<std::string const,ObjectSearcher::BackupObjectList> const&) =====
int __fastcall std::pair<std::string const,ObjectSearcher::BackupObjectList>::pair(int a1, int a2)
{
  *(_DWORD *)(a1 + 16) = a1;
  *(_DWORD *)(a1 + 20) = a1;
  std::string::_M_range_initialize((std::string *)a1, *(const char **)(a2 + 20), *(const char **)(a2 + 16));
  *(_DWORD *)(a1 + 24) = off_969CF8;
  std::vector<GameObject *>::vector((_DWORD *)(a1 + 28), a2 + 28);
  *(_DWORD *)(a1 + 40) = *(_DWORD *)(a2 + 40);
  *(_DWORD *)(a1 + 44) = *(_DWORD *)(a2 + 44);
  return a1;
}


// ===== 38e930 GameObject::_GetTargetListSize(sfc::script::lua::Arguments const&,sfc::script::lua::ReturnValues &,void *) =====
void __fastcall GameObject::_GetTargetListSize(
        GameObject *this,
        const sfc::script::lua::Arguments *a2,
        sfc::script::lua::ReturnValues *a3,
        void *a4)
{
  char *v5; // r3
  int v7; // r0
  int v8; // r1
  int v9; // r2
  int v10; // r3
  int v11; // r0
  _DWORD v12[4]; // [sp+0h] [bp-10h] BYREF

  v5 = (char *)a3 + 772;
  v7 = *((_DWORD *)a3 + 193);
  v8 = *((_DWORD *)a3 + 194);
  v9 = *((_DWORD *)a3 + 195);
  v10 = *((_DWORD *)v5 + 3);
  v12[0] = v7;
  v12[1] = v8;
  v12[2] = v9;
  v12[3] = v10;
  v11 = std::priv::_Deque_iterator_base<ObjectSearcher::TargetInfo>::_M_subtract((_DWORD *)a3 + 197, v12);
  sfc::script::lua::ReturnValues::pushInteger(a2, v11);
}


// ===== 38e970 GameObject::_IsTargetListEmpty(sfc::script::lua::Arguments const&,sfc::script::lua::ReturnValues &,void *) =====
void __fastcall GameObject::_IsTargetListEmpty(
        GameObject *this,
        const sfc::script::lua::Arguments *a2,
        sfc::script::lua::ReturnValues *a3,
        void *a4)
{
  sfc::script::lua::ReturnValues::pushBoolean(a2, *((_DWORD *)a3 + 197) == *((_DWORD *)a3 + 193));
}


// ===== 38e98c GameObject::_HasPath(sfc::script::lua::Arguments const&,sfc::script::lua::ReturnValues &,void *) =====
int __fastcall GameObject::_HasPath(
        GameObject *this,
        const sfc::script::lua::Arguments *a2,
        sfc::script::lua::ReturnValues *a3,
        void *a4)
{
  char *v4; // r2
  char *v5; // r3
  char *v6; // t1
  bool v8; // r1
  int v9; // r12

  v6 = *((char **)a3 + 128);
  v4 = (char *)a3 + 512;
  v5 = v6;
  if ( v6 == v4 )
  {
    v8 = 0;
  }
  else
  {
    v9 = 0;
    do
    {
      v5 = *(char **)v5;
      ++v9;
    }
    while ( v4 != v5 );
    v8 = v9;
    if ( v9 )
      v8 = 1;
  }
  return sfc::script::lua::ReturnValues::pushBoolean(a2, v8);
}


// ===== 38e9c0 GameObject::_IsDecor(sfc::script::lua::Arguments const&,sfc::script::lua::ReturnValues &,void *) =====
void __fastcall GameObject::_IsDecor(
        GameObject *this,
        const sfc::script::lua::Arguments *a2,
        sfc::script::lua::ReturnValues *a3,
        void *a4)
{
  sfc::script::lua::ReturnValues::pushBoolean(a2, *((_DWORD *)a3 + 61) == 21);
}


// ===== 38e9d8 GameObject::_IsDoor(sfc::script::lua::Arguments const&,sfc::script::lua::ReturnValues &,void *) =====
void __fastcall GameObject::_IsDoor(
        GameObject *this,
        const sfc::script::lua::Arguments *a2,
        sfc::script::lua::ReturnValues *a3,
        void *a4)
{
  sfc::script::lua::ReturnValues::pushBoolean(a2, *((_DWORD *)a3 + 61) == 2);
}


// ===== 38e9f0 GameObject::_IsPlayer(sfc::script::lua::Arguments const&,sfc::script::lua::ReturnValues &,void *) =====
void __fastcall GameObject::_IsPlayer(
        GameObject *this,
        const sfc::script::lua::Arguments *a2,
        sfc::script::lua::ReturnValues *a3,
        void *a4)
{
  char v5; // r1

  v5 = (*(int (__fastcall **)(sfc::script::lua::ReturnValues *))(*(_DWORD *)a3 + 40))(a3);
  sfc::script::lua::ReturnValues::pushBoolean(a2, v5);
}


// ===== 38ea1c GameObject::_IsCharacter(sfc::script::lua::Arguments const&,sfc::script::lua::ReturnValues &,void *) =====
void __fastcall GameObject::_IsCharacter(
        GameObject *this,
        const sfc::script::lua::Arguments *a2,
        sfc::script::lua::ReturnValues *a3,
        void *a4)
{
  char v5; // r1

  v5 = (*(int (__fastcall **)(sfc::script::lua::ReturnValues *))(*(_DWORD *)a3 + 36))(a3);
  sfc::script::lua::ReturnValues::pushBoolean(a2, v5);
}


// ===== 38ea48 GameObject::_IsDead(sfc::script::lua::Arguments const&,sfc::script::lua::ReturnValues &,void *) =====
void __fastcall GameObject::_IsDead(
        GameObject *this,
        const sfc::script::lua::Arguments *a2,
        sfc::script::lua::ReturnValues *a3,
        void *a4)
{
  char v5; // r1

  v5 = (*(int (__fastcall **)(sfc::script::lua::ReturnValues *))(*(_DWORD *)a3 + 52))(a3);
  sfc::script::lua::ReturnValues::pushBoolean(a2, v5);
}


// ===== 38ea74 GameObject::_IsSwimming(sfc::script::lua::Arguments const&,sfc::script::lua::ReturnValues &,void *) =====
void __fastcall GameObject::_IsSwimming(
        GameObject *this,
        const sfc::script::lua::Arguments *a2,
        sfc::script::lua::ReturnValues *a3,
        void *a4)
{
  char IsSwimming; // r1

  IsSwimming = PFObject::IsSwimming((sfc::script::lua::ReturnValues *)((char *)a3 + 456));
  sfc::script::lua::ReturnValues::pushBoolean(a2, IsSwimming);
}


// ===== 38ea94 GameObject::_IsFlying(sfc::script::lua::Arguments const&,sfc::script::lua::ReturnValues &,void *) =====
void __fastcall GameObject::_IsFlying(
        GameObject *this,
        const sfc::script::lua::Arguments *a2,
        sfc::script::lua::ReturnValues *a3,
        void *a4)
{
  char IsFlying; // r1

  IsFlying = PFObject::IsFlying((sfc::script::lua::ReturnValues *)((char *)a3 + 456));
  sfc::script::lua::ReturnValues::pushBoolean(a2, IsFlying);
}


// ===== 38eab4 GameObject::_IsInWater(sfc::script::lua::Arguments const&,sfc::script::lua::ReturnValues &,void *) =====
void __fastcall GameObject::_IsInWater(
        GameObject *this,
        const sfc::script::lua::Arguments *a2,
        sfc::script::lua::ReturnValues *a3,
        void *a4)
{
  char v5; // r1

  v5 = PFObject::IsInWater((sfc::script::lua::ReturnValues *)((char *)a3 + 456));
  sfc::script::lua::ReturnValues::pushBoolean(a2, v5);
}


// ===== 38ead4 GameObject::_IsOverAHole(sfc::script::lua::Arguments const&,sfc::script::lua::ReturnValues &,void *) =====
void __fastcall GameObject::_IsOverAHole(
        GameObject *this,
        const sfc::script::lua::Arguments *a2,
        sfc::script::lua::ReturnValues *a3,
        void *a4)
{
  char IsOverAHole; // r1

  IsOverAHole = PFObject::IsOverAHole((sfc::script::lua::ReturnValues *)((char *)a3 + 456));
  sfc::script::lua::ReturnValues::pushBoolean(a2, IsOverAHole);
}


// ===== 38eaf4 GameObject::_GetSelf(sfc::script::lua::Arguments const&,sfc::script::lua::ReturnValues &,void *) =====
void __fastcall GameObject::_GetSelf(
        GameObject *this,
        const sfc::script::lua::Arguments *a2,
        sfc::script::lua::ReturnValues *a3,
        void *a4)
{
  sfc::script::lua::ReturnValues::pushUserData(a2, a3);
}


// ===== 38eb00 sfc::script::lua::ReturnValues::pushPointer(void *) =====
void __fastcall sfc::script::lua::ReturnValues::pushPointer(sfc::script::lua::ReturnValues *this, void *a2)
{
  void **v2; // r6
  _BYTE v3[112]; // [sp+4h] [bp-74h] BYREF

  v2 = *((void ***)this + 9);
  sfc::script::lua::Value::Value((sfc::script::lua::Value *)v3, a2);
  std::vector<sfc::script::lua::Value>::push_back(v2, (const sfc::script::lua::Value *)v3);
  sfc::script::lua::Value::~Value((sfc::script::lua::Value *)v3);
}


// ===== 38eb68 GameObject::_GetTargetListTop(sfc::script::lua::Arguments const&,sfc::script::lua::ReturnValues &,void *) =====
void __fastcall GameObject::_GetTargetListTop(
        GameObject *this,
        const sfc::script::lua::Arguments *a2,
        sfc::script::lua::ReturnValues *a3,
        void *a4)
{
  int v4; // r4

  v4 = *((_DWORD *)a3 + 193);
  if ( *((_DWORD *)a3 + 197) == v4 )
  {
    sfc::script::lua::ReturnValues::pushPointer(a2, nullptr);
  }
  else
  {
    sfc::script::lua::ReturnValues::pushUserData(a2, *(sfc::script::lua::UserData **)v4);
    sfc::script::lua::ReturnValues::pushNumber(a2, *(float *)(v4 + 4));
    sfc::script::lua::ReturnValues::pushNumber(a2, *(float *)(v4 + 8) * 57.296);
    sfc::script::lua::ReturnValues::pushBoolean(a2, *(_BYTE *)(v4 + 12) & 1);
    sfc::script::lua::ReturnValues::pushNumber(a2, *(float *)(v4 + 16));
  }
}


// ===== 38ebe4 GameObject::_GetID(sfc::script::lua::Arguments const&,sfc::script::lua::ReturnValues &,void *) =====
void __fastcall GameObject::_GetID(
        GameObject *this,
        const sfc::script::lua::Arguments *a2,
        sfc::script::lua::ReturnValues *a3,
        void *a4)
{
  sfc::script::lua::ReturnValues::pushPointer(a2, a3);
}


// ===== 38ebf0 GameObject::_GetName(sfc::script::lua::Arguments const&,sfc::script::lua::ReturnValues &,void *) =====
void __fastcall GameObject::_GetName(
        GameObject *this,
        const sfc::script::lua::Arguments *a2,
        const char **a3,
        void *a4)
{
  sfc::script::lua::ReturnValues::pushString(a2, a3[17]);
}


// ===== 38ebfc std::allocator<std::priv::_Rb_tree_node<std::pair<std::string const,ObjectSearcher::BackupObjectList>>>::allocate(uint,void const*) [clone] =====
void *std::allocator<std::priv::_Rb_tree_node<std::pair<std::string const,ObjectSearcher::BackupObjectList>>>::allocate()
{
  size_t v1; // [sp+4h] [bp-8h] BYREF

  v1 = 64;
  return __ZNSt12__node_alloc11_M_allocateERj_veneer(&v1);
}


// ===== 38ec1c std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,ObjectSearcher::BackupObjectList>,std::priv::_Select1st<std::pair<std::string const,ObjectSearcher::BackupObjectList>>,std::priv::_MapTraitsT<std::pair<std::string const,ObjectSearcher::BackupObjectList>>,std::allocator<std::pair<std::string const,ObjectSearcher::BackupObjectList>>>::_M_insert(std::priv::_Rb_tree_node_base *,std::pair<std::string const,ObjectSearcher::BackupObjectList> const&,std::priv::_Rb_tree_node_base *,std::priv::_Rb_tree_node_base *) =====
int *__fastcall std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,ObjectSearcher::BackupObjectList>,std::priv::_Select1st<std::pair<std::string const,ObjectSearcher::BackupObjectList>>,std::priv::_MapTraitsT<std::pair<std::string const,ObjectSearcher::BackupObjectList>>,std::allocator<std::pair<std::string const,ObjectSearcher::BackupObjectList>>>::_M_insert(
        int *a1,
        _DWORD *a2,
        _DWORD *a3,
        int a4,
        int a5,
        int a6)
{
  _DWORD *v10; // r8
  int v11; // r7
  _DWORD *v13; // r8
  _DWORD *v14; // r8

  if ( a2 == a3 )
  {
    v14 = std::allocator<std::priv::_Rb_tree_node<std::pair<std::string const,ObjectSearcher::BackupObjectList>>>::allocate();
    std::pair<std::string const,ObjectSearcher::BackupObjectList>::pair((int)(v14 + 4), a4);
    v14[3] = 0;
    v14[2] = 0;
    v11 = (int)v14;
    a2[2] = v14;
    a2[1] = v14;
    a2[3] = v14;
  }
  else if ( !a6 && (a5 || std::less<std::string>::operator()((int)(a2 + 5), a4, (int)(a3 + 4))) )
  {
    v13 = std::allocator<std::priv::_Rb_tree_node<std::pair<std::string const,ObjectSearcher::BackupObjectList>>>::allocate();
    std::pair<std::string const,ObjectSearcher::BackupObjectList>::pair((int)(v13 + 4), a4);
    v13[3] = 0;
    v13[2] = 0;
    a3[2] = v13;
    v11 = (int)v13;
    if ( a3 == (_DWORD *)a2[2] )
      a2[2] = v13;
  }
  else
  {
    v10 = std::allocator<std::priv::_Rb_tree_node<std::pair<std::string const,ObjectSearcher::BackupObjectList>>>::allocate();
    std::pair<std::string const,ObjectSearcher::BackupObjectList>::pair((int)(v10 + 4), a4);
    v10[3] = 0;
    v10[2] = 0;
    a3[3] = v10;
    v11 = (int)v10;
    if ( a3 == (_DWORD *)a2[3] )
      a2[3] = v10;
  }
  *(_DWORD *)(v11 + 4) = a3;
  std::priv::_Rb_global<bool>::_Rebalance(v11, a2 + 1);
  ++a2[4];
  *a1 = v11;
  return a1;
}


// ===== 38ed48 std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,ObjectSearcher::BackupObjectList>,std::priv::_Select1st<std::pair<std::string const,ObjectSearcher::BackupObjectList>>,std::priv::_MapTraitsT<std::pair<std::string const,ObjectSearcher::BackupObjectList>>,std::allocator<std::pair<std::string const,ObjectSearcher::BackupObjectList>>>::insert_unique(std::pair<std::string const,ObjectSearcher::BackupObjectList> const&) =====
int __fastcall std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,ObjectSearcher::BackupObjectList>,std::priv::_Select1st<std::pair<std::string const,ObjectSearcher::BackupObjectList>>,std::priv::_MapTraitsT<std::pair<std::string const,ObjectSearcher::BackupObjectList>>,std::allocator<std::pair<std::string const,ObjectSearcher::BackupObjectList>>>::insert_unique(
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
  int v24; // r3
  int v25; // r3
  int v26; // r3
  int v27; // [sp+8h] [bp-Ch] BYREF
  int v28; // [sp+Ch] [bp-8h] BYREF

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
    std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,ObjectSearcher::BackupObjectList>,std::priv::_Select1st<std::pair<std::string const,ObjectSearcher::BackupObjectList>>,std::priv::_MapTraitsT<std::pair<std::string const,ObjectSearcher::BackupObjectList>>,std::allocator<std::pair<std::string const,ObjectSearcher::BackupObjectList>>>::_M_insert(
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
      std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,ObjectSearcher::BackupObjectList>,std::priv::_Select1st<std::pair<std::string const,ObjectSearcher::BackupObjectList>>,std::priv::_MapTraitsT<std::pair<std::string const,ObjectSearcher::BackupObjectList>>,std::allocator<std::pair<std::string const,ObjectSearcher::BackupObjectList>>>::_M_insert(
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


// ===== 38ef60 GameObject::LoadExternalScript(char const*,char const*) =====
int __fastcall GameObject::LoadExternalScript(int this, const char *a2, const char *a3)
{
  int v3; // r3
  LuaScript **v4; // r4
  LuaScript *v7; // r7
  size_t v8; // r0
  LuaScript *v9; // r3

  v3 = *(_DWORD *)(this + 768);
  v4 = (LuaScript **)this;
  if ( v3 )
  {
    this = (*(int (__fastcall **)(_DWORD))(*(_DWORD *)v3 + 4))(*(_DWORD *)(this + 768));
    v4[192] = nullptr;
  }
  if ( a2 && *a2 )
  {
    v7 = (LuaScript *)operator new(152, 0);
    LuaScript::LuaScript(v7, 0);
    v4[192] = v7;
    (*((void (__fastcall **)(LuaScript **, int))*v4 + 3))(v4, (int)v7 + 16);
    if ( a3 )
    {
      v8 = LC_API_STRLEN_0(a3);
      std::string::_M_assign((std::string *const)((char *)v4[192] + 104), a3, &a3[v8]);
    }
    this = LuaScript::Load(v4[192], a2);
    if ( !this )
    {
      v9 = v4[192];
      if ( v9 )
      {
        this = (*(int (__fastcall **)(LuaScript *))(*(_DWORD *)v9 + 4))(v4[192]);
        v4[192] = nullptr;
      }
    }
  }
  return this;
}


// ===== 38f038 std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,ObjectSearcher::BackupObjectList>,std::priv::_Select1st<std::pair<std::string const,ObjectSearcher::BackupObjectList>>,std::priv::_MapTraitsT<std::pair<std::string const,ObjectSearcher::BackupObjectList>>,std::allocator<std::pair<std::string const,ObjectSearcher::BackupObjectList>>>::insert_unique(std::priv::_Rb_tree_iterator<std::pair<std::string const,ObjectSearcher::BackupObjectList>,std::priv::_MapTraitsT<std::pair<std::string const,ObjectSearcher::BackupObjectList>>>,std::pair<std::string const,ObjectSearcher::BackupObjectList> const&) =====
int *__fastcall std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,ObjectSearcher::BackupObjectList>,std::priv::_Select1st<std::pair<std::string const,ObjectSearcher::BackupObjectList>>,std::priv::_MapTraitsT<std::pair<std::string const,ObjectSearcher::BackupObjectList>>,std::allocator<std::pair<std::string const,ObjectSearcher::BackupObjectList>>>::insert_unique(
        int *a1,
        _DWORD *a2,
        int *a3,
        int a4)
{
  _DWORD *v4; // r5
  _DWORD *v8; // r4
  const void *v9; // r3
  const void *v10; // r9
  signed int v11; // r11
  signed int v12; // r2
  int v13; // r0
  const void *v14; // r3
  unsigned int v15; // r12
  _DWORD *v16; // r4
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
  int v47; // [sp+20h] [bp-24h] BYREF
  int v48; // [sp+28h] [bp-1Ch] BYREF
  int v49; // [sp+30h] [bp-14h] BYREF
  int v50[3]; // [sp+38h] [bp-Ch] BYREF

  v4 = (_DWORD *)*a3;
  if ( *a3 == a2[2] )
  {
    if ( !a2[4] )
    {
      std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,ObjectSearcher::BackupObjectList>,std::priv::_Select1st<std::pair<std::string const,ObjectSearcher::BackupObjectList>>,std::priv::_MapTraitsT<std::pair<std::string const,ObjectSearcher::BackupObjectList>>,std::allocator<std::pair<std::string const,ObjectSearcher::BackupObjectList>>>::insert_unique(
        (int)v50,
        a2,
        a4);
      *a1 = v50[0];
      return a1;
    }
    v25 = *(const void **)(a4 + 20);
    v26 = (const void *)v4[9];
    v27 = *(_DWORD *)(a4 + 16) - (_DWORD)v25;
    v28 = v4[8] - (_DWORD)v26;
    if ( v28 >= v27 )
      v29 = *(_DWORD *)(a4 + 16) - (_DWORD)v25;
    else
      v29 = v4[8] - (_DWORD)v26;
    v30 = memcmp(v25, v26, v29);
    if ( !v30 )
    {
      if ( v27 < v28 )
        goto LABEL_37;
      v30 = v27 > v28;
    }
    if ( v30 >= 0 )
    {
      if ( !std::less<std::string>::operator()((int)(a2 + 5), (int)(v4 + 4), a4) )
      {
        *a1 = *a3;
        return a1;
      }
      v31 = *a3;
      v16 = *(_DWORD **)(*a3 + 12);
      if ( v16 )
      {
        while ( v16[2] )
          v16 = (_DWORD *)v16[2];
      }
      else
      {
        v32 = *(_DWORD *)(v31 + 4);
        if ( v31 == *(_DWORD *)(v32 + 12) )
        {
          do
          {
            v16 = (_DWORD *)v32;
            v32 = *(_DWORD *)(v32 + 4);
          }
          while ( *(_DWORD **)(v32 + 12) == v16 );
        }
        else
        {
          v16 = (_DWORD *)*a3;
        }
        if ( v32 != v16[3] )
          v16 = (_DWORD *)v32;
      }
      if ( a2 == v16 )
        goto LABEL_93;
      if ( !std::less<std::string>::operator()((int)(a2 + 5), a4, (int)(v16 + 4)) )
      {
        std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,ObjectSearcher::BackupObjectList>,std::priv::_Select1st<std::pair<std::string const,ObjectSearcher::BackupObjectList>>,std::priv::_MapTraitsT<std::pair<std::string const,ObjectSearcher::BackupObjectList>>,std::allocator<std::pair<std::string const,ObjectSearcher::BackupObjectList>>>::insert_unique(
          (int)&v49,
          a2,
          a4);
        *a1 = v49;
        return a1;
      }
      v31 = *a3;
      if ( !*(_DWORD *)(*a3 + 12) )
      {
LABEL_93:
        std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,ObjectSearcher::BackupObjectList>,std::priv::_Select1st<std::pair<std::string const,ObjectSearcher::BackupObjectList>>,std::priv::_MapTraitsT<std::pair<std::string const,ObjectSearcher::BackupObjectList>>,std::allocator<std::pair<std::string const,ObjectSearcher::BackupObjectList>>>::_M_insert(
          a1,
          a2,
          (_DWORD *)*a3,
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
    v33 = v4[3];
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
        std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,ObjectSearcher::BackupObjectList>,std::priv::_Select1st<std::pair<std::string const,ObjectSearcher::BackupObjectList>>,std::priv::_MapTraitsT<std::pair<std::string const,ObjectSearcher::BackupObjectList>>,std::allocator<std::pair<std::string const,ObjectSearcher::BackupObjectList>>>::_M_insert(
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
      std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,ObjectSearcher::BackupObjectList>,std::priv::_Select1st<std::pair<std::string const,ObjectSearcher::BackupObjectList>>,std::priv::_MapTraitsT<std::pair<std::string const,ObjectSearcher::BackupObjectList>>,std::allocator<std::pair<std::string const,ObjectSearcher::BackupObjectList>>>::insert_unique(
        (int)&v48,
        a2,
        a4);
      *a1 = v48;
      return a1;
    }
    goto LABEL_76;
  }
  if ( !*(_BYTE *)v4 )
  {
    if ( v4 == *(_DWORD **)(v4[1] + 4) )
    {
      v8 = (_DWORD *)v4[3];
      goto LABEL_8;
    }
    v8 = (_DWORD *)v4[2];
    if ( !v8 )
      goto LABEL_26;
LABEL_7:
    while ( v8[3] )
      v8 = (_DWORD *)v8[3];
    goto LABEL_8;
  }
  v8 = (_DWORD *)v4[2];
  if ( v8 )
    goto LABEL_7;
LABEL_26:
  v8 = (_DWORD *)v4[1];
  if ( v4 == (_DWORD *)v8[2] )
  {
    while ( *(_DWORD **)(v8[1] + 8) == v8 )
      v8 = (_DWORD *)v8[1];
    v8 = (_DWORD *)v8[1];
  }
LABEL_8:
  v9 = (const void *)v4[9];
  v10 = *(const void **)(a4 + 20);
  v11 = *(_DWORD *)(a4 + 16) - (_DWORD)v10;
  v12 = v4[8] - (_DWORD)v9;
  v45 = v12;
  if ( v12 >= v11 )
    v12 = *(_DWORD *)(a4 + 16) - (_DWORD)v10;
  v42 = (void *)v4[9];
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
      std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,ObjectSearcher::BackupObjectList>,std::priv::_Select1st<std::pair<std::string const,ObjectSearcher::BackupObjectList>>,std::priv::_MapTraitsT<std::pair<std::string const,ObjectSearcher::BackupObjectList>>,std::allocator<std::pair<std::string const,ObjectSearcher::BackupObjectList>>>::_M_insert(
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
    std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,ObjectSearcher::BackupObjectList>,std::priv::_Select1st<std::pair<std::string const,ObjectSearcher::BackupObjectList>>,std::priv::_MapTraitsT<std::pair<std::string const,ObjectSearcher::BackupObjectList>>,std::allocator<std::pair<std::string const,ObjectSearcher::BackupObjectList>>>::_M_insert(
      a1,
      a2,
      v4,
      a4,
      (int)v4,
      0);
    return a1;
  }
LABEL_15:
  v16 = (_DWORD *)v4[3];
  if ( v16 )
  {
    while ( v16[2] )
      v16 = (_DWORD *)v16[2];
  }
  else
  {
    v41 = v4[1];
    if ( v4 == *(_DWORD **)(v41 + 12) )
    {
      while ( *(_DWORD *)(*(_DWORD *)(v41 + 4) + 12) == v41 )
        v41 = *(_DWORD *)(v41 + 4);
      v16 = (_DWORD *)v41;
      v41 = *(_DWORD *)(v41 + 4);
    }
    else
    {
      v16 = v4;
    }
    if ( v41 != v16[3] )
      v16 = (_DWORD *)v41;
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
      if ( !std::less<std::string>::operator()((int)(a2 + 5), a4, (int)(v16 + 4)) )
      {
LABEL_41:
        std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,ObjectSearcher::BackupObjectList>,std::priv::_Select1st<std::pair<std::string const,ObjectSearcher::BackupObjectList>>,std::priv::_MapTraitsT<std::pair<std::string const,ObjectSearcher::BackupObjectList>>,std::allocator<std::pair<std::string const,ObjectSearcher::BackupObjectList>>>::insert_unique(
          (int)&v47,
          a2,
          a4);
        *a1 = v47;
        return a1;
      }
      v4 = (_DWORD *)*a3;
    }
    if ( !v4[3] )
    {
      std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,ObjectSearcher::BackupObjectList>,std::priv::_Select1st<std::pair<std::string const,ObjectSearcher::BackupObjectList>>,std::priv::_MapTraitsT<std::pair<std::string const,ObjectSearcher::BackupObjectList>>,std::allocator<std::pair<std::string const,ObjectSearcher::BackupObjectList>>>::_M_insert(
        a1,
        a2,
        v4,
        a4,
        0,
        (int)v4);
      return a1;
    }
LABEL_61:
    std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,ObjectSearcher::BackupObjectList>,std::priv::_Select1st<std::pair<std::string const,ObjectSearcher::BackupObjectList>>,std::priv::_MapTraitsT<std::pair<std::string const,ObjectSearcher::BackupObjectList>>,std::allocator<std::pair<std::string const,ObjectSearcher::BackupObjectList>>>::_M_insert(
      a1,
      a2,
      v16,
      a4,
      (int)v16,
      0);
    return a1;
  }
LABEL_22:
  *a1 = (int)v4;
  return a1;
}


// ===== 38f53c std::map<std::string,ObjectSearcher::BackupObjectList,std::less<std::string>,std::allocator<std::pair<std::string const,ObjectSearcher::BackupObjectList>>>::operator[]<char const*>(char const* const&) =====
int __fastcall std::map<std::string,ObjectSearcher::BackupObjectList>::operator[]<char const*>(_DWORD *a1, char **a2)
{
  _DWORD *v3; // r5
  const void *v4; // r2
  std::string *M_data; // r6
  const void *v6; // r1
  int v7; // r9
  int v8; // r8
  size_t v9; // r2
  unsigned int v10; // r0
  int v11; // r11
  _BOOL4 v12; // r8
  _DWORD v15[6]; // [sp+Ch] [bp-90h] BYREF
  _DWORD *v16; // [sp+24h] [bp-78h] BYREF
  int v17; // [sp+28h] [bp-74h] BYREF
  _DWORD v18[5]; // [sp+34h] [bp-68h] BYREF
  void *__p; // [sp+48h] [bp-54h]
  int v20; // [sp+4Ch] [bp-50h] BYREF
  std::string v21; // [sp+64h] [bp-38h] BYREF
  std::string v22; // [sp+7Ch] [bp-20h] BYREF

  v3 = std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,ObjectSearcher::BackupObjectList>,std::priv::_Select1st<std::pair<std::string const,ObjectSearcher::BackupObjectList>>,std::priv::_MapTraitsT<std::pair<std::string const,ObjectSearcher::BackupObjectList>>,std::allocator<std::pair<std::string const,ObjectSearcher::BackupObjectList>>>::_M_lower_bound<char const*>(
         a1,
         a2);
  if ( v3 == a1 )
    goto LABEL_13;
  std::string::string(&v22, *a2);
  v4 = (const void *)v3[9];
  M_data = (std::string *)v22._M_start_of_storage._M_data;
  v6 = v4;
  v7 = v3[8] - (_DWORD)v4;
  v8 = v22._M_finish - v22._M_start_of_storage._M_data;
  if ( v7 >= v22._M_finish - v22._M_start_of_storage._M_data )
    v9 = v22._M_finish - v22._M_start_of_storage._M_data;
  else
    v9 = v3[8] - (_DWORD)v4;
  v10 = memcmp(v22._M_start_of_storage._M_data, v6, v9);
  v11 = (int)v3;
  if ( v10 )
    v12 = v10 >> 31;
  else
    v12 = v8 < v7;
  if ( M_data != &v22 && M_data )
  {
    if ( (unsigned int)(v22._M_buffers._M_end_of_storage - (char *)M_data) > 0x80 )
      CustomFree(M_data);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(M_data, v22._M_buffers._M_end_of_storage - (char *)M_data);
  }
  if ( v12 )
  {
LABEL_13:
    std::string::string(&v21, *a2);
    v15[0] = off_969CF8;
    memset(&v15[1], 0, 20);
    std::pair<std::string const,ObjectSearcher::BackupObjectList>::pair((int)v18, (int)&v21, (int)v15);
    v16 = v3;
    std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,ObjectSearcher::BackupObjectList>,std::priv::_Select1st<std::pair<std::string const,ObjectSearcher::BackupObjectList>>,std::priv::_MapTraitsT<std::pair<std::string const,ObjectSearcher::BackupObjectList>>,std::allocator<std::pair<std::string const,ObjectSearcher::BackupObjectList>>>::insert_unique(
      &v17,
      a1,
      (int *)&v16,
      (int)v18);
    v11 = v17;
    ObjectSearcher::BackupObjectList::~BackupObjectList((ObjectSearcher::BackupObjectList *)&v20);
    if ( __p != v18 && __p )
    {
      if ( (unsigned int)(v18[0] - (_DWORD)__p) > 0x80 )
        CustomFree(__p);
      else
        __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(__p, v18[0] - (_DWORD)__p);
    }
    ObjectSearcher::BackupObjectList::~BackupObjectList((ObjectSearcher::BackupObjectList *)v15);
    if ( (std::string *)v21._M_start_of_storage._M_data != &v21 && v21._M_start_of_storage._M_data )
    {
      if ( (unsigned int)(v21._M_buffers._M_end_of_storage - v21._M_start_of_storage._M_data) > 0x80 )
        CustomFree(v21._M_start_of_storage._M_data);
      else
        __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(
          v21._M_start_of_storage._M_data,
          v21._M_buffers._M_end_of_storage - v21._M_start_of_storage._M_data);
    }
  }
  return v11 + 40;
}


// ===== 38f72c ObjectSearcher::TargetList::GetResultsBackup(char const*) =====
int __fastcall ObjectSearcher::TargetList::GetResultsBackup(ObjectSearcher::TargetList *this, const char *a2)
{
  const char *v4; // [sp+Ch] [bp-4h] BYREF

  v4 = a2;
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
        "n",
        "..\\..\\project_vs2005\\Game/..\\..\\sources/Game/Helpers/ObjectSearcher.h",
        387);
    }
  }
  return std::map<std::string,ObjectSearcher::BackupObjectList>::operator[]<char const*>((char *)this + 60, &v4);
}


// ===== 38f7cc std::__pop_heap<std::priv::_Deque_iterator<ObjectSearcher::TargetInfo,std::_Nonconst_traits<ObjectSearcher::TargetInfo>>,ObjectSearcher::TargetInfo,ObjectSearcher::TargetSorter,int>(std::priv::_Deque_iterator<ObjectSearcher::TargetInfo,std::_Nonconst_traits<ObjectSearcher::TargetInfo>>,std::priv::_Deque_iterator<ObjectSearcher::TargetInfo,std::_Nonconst_traits<ObjectSearcher::TargetInfo>>,std::priv::_Deque_iterator<ObjectSearcher::TargetInfo,std::_Nonconst_traits<ObjectSearcher::TargetInfo>>,ObjectSearcher::TargetInfo,ObjectSearcher::TargetSorter,int *) =====
int __fastcall std::__pop_heap<std::priv::_Deque_iterator<ObjectSearcher::TargetInfo,std::_Nonconst_traits<ObjectSearcher::TargetInfo>>,ObjectSearcher::TargetInfo,ObjectSearcher::TargetSorter,int>(
        int *a1,
        _DWORD *a2,
        _DWORD **a3,
        int a4,
        int a5,
        int a6,
        int a7,
        int a8,
        int (__fastcall *a9)(_DWORD *, int *))
{
  _DWORD *v9; // lr
  int v10; // r5
  int v12; // r1
  int v13; // r2
  int v14; // r3
  int v15; // r2
  int v16; // r5
  int v17; // r1
  int v18; // r2
  int v19; // r3
  int v20; // r1
  int v21; // r2
  int v22; // r3
  int v23; // r9
  int v24; // r8
  int i; // r6
  _DWORD *v26; // r10
  _DWORD *v27; // r7
  int v28; // r12
  int v29; // r1
  int v30; // r2
  int v31; // r3
  _DWORD *v32; // lr
  int j; // r5
  int result; // r0
  int v35; // r1
  int v36; // r2
  int v37; // r3
  _DWORD *v38; // r12
  _DWORD *v39; // r6
  int v40; // r1
  int v41; // r2
  int v42; // r3
  _DWORD *v43; // r12
  int v44; // r1
  _DWORD *v45; // r7
  int v46; // r1
  int v47; // r2
  int v48; // r3
  _DWORD *v49; // r12
  int v50; // [sp+8h] [bp-6Ch] BYREF
  int v51; // [sp+Ch] [bp-68h]
  int v52; // [sp+10h] [bp-64h]
  int v53; // [sp+14h] [bp-60h]
  int v54; // [sp+18h] [bp-5Ch]
  int v55; // [sp+1Ch] [bp-58h]
  int v56; // [sp+20h] [bp-54h]
  int v57; // [sp+24h] [bp-50h]
  int v58; // [sp+28h] [bp-4Ch]
  int v59; // [sp+2Ch] [bp-48h]
  _DWORD *v60; // [sp+30h] [bp-44h] BYREF
  int v61; // [sp+34h] [bp-40h]
  int v62; // [sp+38h] [bp-3Ch]
  int v63; // [sp+3Ch] [bp-38h]
  _DWORD *v64; // [sp+40h] [bp-34h]
  int v65; // [sp+44h] [bp-30h]
  int v66; // [sp+48h] [bp-2Ch]
  int v67; // [sp+4Ch] [bp-28h]
  _DWORD *v68; // [sp+50h] [bp-24h] BYREF
  int v69; // [sp+54h] [bp-20h]
  int v70; // [sp+58h] [bp-1Ch]
  int v71; // [sp+5Ch] [bp-18h]
  _DWORD var14[16]; // [sp+60h] [bp-14h] BYREF

  v9 = *a3;
  v10 = *a1;
  v12 = *(_DWORD *)(*a1 + 4);
  v13 = *(_DWORD *)(*a1 + 8);
  v14 = *(_DWORD *)(*a1 + 12);
  *v9 = *(_DWORD *)*a1;
  v9[1] = v12;
  v9[2] = v13;
  v9[3] = v14;
  v15 = *(_DWORD *)(v10 + 16);
  v16 = (int)&v68;
  v9[4] = v15;
  v17 = a1[1];
  v18 = a1[2];
  v19 = a1[3];
  v68 = (_DWORD *)*a1;
  v69 = v17;
  v70 = v18;
  v71 = v19;
  v20 = a1[1];
  v21 = a1[2];
  v22 = a1[3];
  var14[0] = *a1;
  var14[1] = v20;
  var14[2] = v21;
  var14[3] = v22;
  v23 = std::priv::_Deque_iterator_base<ObjectSearcher::TargetInfo>::_M_subtract(a2, var14);
  v55 = var14[15];
  v56 = a5;
  v57 = a6;
  v58 = a7;
  v59 = a8;
  if ( v23 <= 2 )
  {
    i = 0;
    v28 = 2;
  }
  else
  {
    v24 = 0;
    for ( i = 2; ; i = 2 * (i + 1) )
    {
      v60 = v68;
      v61 = v69;
      v62 = v70;
      v63 = v71;
      std::priv::_Deque_iterator_base<ObjectSearcher::TargetInfo>::_M_advance(&v60, i);
      v26 = v60;
      v60 = v68;
      v61 = v69;
      v62 = v70;
      v63 = v71;
      std::priv::_Deque_iterator_base<ObjectSearcher::TargetInfo>::_M_advance(&v60, i - 1);
      if ( a9(v26, v60) )
        --i;
      v60 = v68;
      v61 = v69;
      v62 = v70;
      v63 = v71;
      std::priv::_Deque_iterator_base<ObjectSearcher::TargetInfo>::_M_advance(&v60, v24);
      v27 = v60;
      v60 = v68;
      v61 = v69;
      v62 = v70;
      v63 = v71;
      std::priv::_Deque_iterator_base<ObjectSearcher::TargetInfo>::_M_advance(&v60, i);
      v28 = 2 * (i + 1);
      v29 = v60[1];
      v30 = v60[2];
      v31 = v60[3];
      v32 = v60 + 4;
      *v27 = *v60;
      v27[1] = v29;
      v27[2] = v30;
      v27[3] = v31;
      v24 = i;
      v27[4] = *v32;
      if ( v23 <= v28 )
        break;
    }
  }
  if ( v23 == v28 )
  {
    v60 = v68;
    v61 = v69;
    v62 = v70;
    v63 = v71;
    v44 = i;
    i = v23 - 1;
    std::priv::_Deque_iterator_base<ObjectSearcher::TargetInfo>::_M_advance(&v60, v44);
    v45 = v60;
    v60 = v68;
    v61 = v69;
    v62 = v70;
    v63 = v71;
    std::priv::_Deque_iterator_base<ObjectSearcher::TargetInfo>::_M_advance(&v60, v23 - 1);
    v46 = v60[1];
    v47 = v60[2];
    v48 = v60[3];
    v49 = v60 + 4;
    *v45 = *v60;
    v45[1] = v46;
    v45[2] = v47;
    v45[3] = v48;
    v45[4] = *v49;
  }
  v64 = v68;
  v65 = v69;
  v66 = v70;
  v67 = v71;
  v50 = v55;
  v51 = v56;
  v52 = v57;
  v53 = v58;
  if ( i > 0 )
    v16 = i - 1;
  v54 = v59;
  if ( i > 0 )
  {
    for ( j = v16 >> 1; ; j = (j - 1) >> 1 )
    {
      v60 = v64;
      v61 = v65;
      v62 = v66;
      v63 = v67;
      std::priv::_Deque_iterator_base<ObjectSearcher::TargetInfo>::_M_advance(&v60, j);
      if ( !a9(v60, &v50) )
        break;
      v60 = v64;
      v61 = v65;
      v62 = v66;
      v63 = v67;
      std::priv::_Deque_iterator_base<ObjectSearcher::TargetInfo>::_M_advance(&v60, i);
      v39 = v60;
      v60 = v64;
      v61 = v65;
      v62 = v66;
      v63 = v67;
      std::priv::_Deque_iterator_base<ObjectSearcher::TargetInfo>::_M_advance(&v60, j);
      v40 = v60[1];
      v41 = v60[2];
      v42 = v60[3];
      v43 = v60 + 4;
      *v39 = *v60;
      v39[1] = v40;
      v39[2] = v41;
      v39[3] = v42;
      v39[4] = *v43;
      if ( !j )
      {
        i = 0;
        break;
      }
      i = j;
    }
  }
  v60 = v64;
  v61 = v65;
  v62 = v66;
  v63 = v67;
  std::priv::_Deque_iterator_base<ObjectSearcher::TargetInfo>::_M_advance(&v60, i);
  result = v50;
  v35 = v51;
  v36 = v52;
  v37 = v53;
  v38 = v60;
  *v60 = v50;
  v38[1] = v35;
  v38[2] = v36;
  v38[3] = v37;
  v38[4] = v54;
  return result;
}


// ===== 38fa54 std::__pop_heap_aux<std::priv::_Deque_iterator<ObjectSearcher::TargetInfo,std::_Nonconst_traits<ObjectSearcher::TargetInfo>>,ObjectSearcher::TargetInfo,ObjectSearcher::TargetSorter>(std::priv::_Deque_iterator<ObjectSearcher::TargetInfo,std::_Nonconst_traits<ObjectSearcher::TargetInfo>>,std::priv::_Deque_iterator<ObjectSearcher::TargetInfo,std::_Nonconst_traits<ObjectSearcher::TargetInfo>>,ObjectSearcher::TargetInfo *,ObjectSearcher::TargetSorter) =====
int __fastcall std::__pop_heap_aux<std::priv::_Deque_iterator<ObjectSearcher::TargetInfo,std::_Nonconst_traits<ObjectSearcher::TargetInfo>>,ObjectSearcher::TargetInfo,ObjectSearcher::TargetSorter>(
        int *a1,
        int a2,
        int a3,
        int (__fastcall *a4)(_DWORD *, int *))
{
  int v6; // r1
  int v7; // r2
  int v8; // r3
  _DWORD *v9; // r1
  _DWORD *v10; // r2
  _DWORD *v11; // r3
  _DWORD *v12; // r1
  _DWORD *v13; // r2
  _DWORD *v14; // r3
  _DWORD *v15; // r1
  _DWORD *v16; // r2
  _DWORD *v17; // r3
  _DWORD *v19; // [sp+30h] [bp-10h] BYREF
  _DWORD *v20; // [sp+34h] [bp-Ch]
  _DWORD *v21; // [sp+38h] [bp-8h]
  _DWORD *v22; // [sp+3Ch] [bp-4h]
  int v23[4]; // [sp+40h] [bp+0h] BYREF
  _DWORD *v24[4]; // [sp+50h] [bp+10h] BYREF
  _DWORD v25[5]; // [sp+60h] [bp+20h] BYREF

  v6 = a1[1];
  v7 = a1[2];
  v8 = a1[3];
  v23[0] = *a1;
  v23[1] = v6;
  v23[2] = v7;
  v23[3] = v8;
  v9 = *(_DWORD **)(a2 + 4);
  v10 = *(_DWORD **)(a2 + 8);
  v11 = *(_DWORD **)(a2 + 12);
  v19 = *(_DWORD **)a2;
  v20 = v9;
  v21 = v10;
  v22 = v11;
  std::priv::_Deque_iterator_base<ObjectSearcher::TargetInfo>::_M_advance(&v19, -1);
  v25[0] = v19;
  v25[1] = v20;
  v25[2] = v21;
  v25[3] = v22;
  v12 = *(_DWORD **)(a2 + 4);
  v13 = *(_DWORD **)(a2 + 8);
  v14 = *(_DWORD **)(a2 + 12);
  v19 = *(_DWORD **)a2;
  v20 = v12;
  v21 = v13;
  v22 = v14;
  std::priv::_Deque_iterator_base<ObjectSearcher::TargetInfo>::_M_advance(&v19, -1);
  v24[0] = v19;
  v24[1] = v20;
  v24[2] = v21;
  v24[3] = v22;
  v15 = *(_DWORD **)(a2 + 4);
  v16 = *(_DWORD **)(a2 + 8);
  v17 = *(_DWORD **)(a2 + 12);
  v19 = *(_DWORD **)a2;
  v20 = v15;
  v21 = v16;
  v22 = v17;
  std::priv::_Deque_iterator_base<ObjectSearcher::TargetInfo>::_M_advance(&v19, -1);
  return std::__pop_heap<std::priv::_Deque_iterator<ObjectSearcher::TargetInfo,std::_Nonconst_traits<ObjectSearcher::TargetInfo>>,ObjectSearcher::TargetInfo,ObjectSearcher::TargetSorter,int>(
           v23,
           v25,
           v24,
           *v19,
           v19[1],
           v19[2],
           v19[3],
           v19[4],
           a4);
}


// ===== 38fb18 std::priority_queue<ObjectSearcher::TargetInfo,std::deque<ObjectSearcher::TargetInfo,std::allocator<ObjectSearcher::TargetInfo>>,ObjectSearcher::TargetSorter>::pop(void) =====
void __fastcall std::priority_queue<ObjectSearcher::TargetInfo,std::deque<ObjectSearcher::TargetInfo>,ObjectSearcher::TargetSorter>::pop(
        int *a1)
{
  int v1; // r6
  int v2; // r7
  int v3; // r8
  int v4; // r12
  int v5; // lr
  int v6; // r10
  int v7; // r9
  int (__fastcall *v8)(_DWORD *, int *); // r3
  void *v10; // r0
  int *v11; // r2
  int v12; // r3
  int v13; // r1
  int v14; // r2
  int v15[4]; // [sp+0h] [bp-20h] BYREF
  _DWORD v16[4]; // [sp+10h] [bp-10h] BYREF

  v1 = a1[1];
  v2 = a1[2];
  v3 = a1[5];
  v4 = a1[6];
  v5 = a1[7];
  v6 = a1[4];
  v7 = a1[3];
  v8 = (int (__fastcall *)(_DWORD *, int *))a1[10];
  v15[0] = *a1;
  v15[1] = v1;
  v15[2] = v2;
  v15[3] = v7;
  v16[3] = v5;
  v16[2] = v4;
  v16[1] = v3;
  v16[0] = v6;
  std::__pop_heap_aux<std::priv::_Deque_iterator<ObjectSearcher::TargetInfo,std::_Nonconst_traits<ObjectSearcher::TargetInfo>>,ObjectSearcher::TargetInfo,ObjectSearcher::TargetSorter>(
    v15,
    (int)v16,
    0,
    v8);
  v10 = (void *)a1[4];
  if ( v10 == (void *)a1[5] )
  {
    if ( v10 )
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v10, 0x78u);
    v11 = (int *)(a1[7] - 4);
    a1[7] = (int)v11;
    v12 = *v11;
    v13 = *v11 + 100;
    v14 = *v11 + 120;
    a1[4] = v13;
    a1[6] = v14;
    a1[5] = v12;
  }
  else
  {
    a1[4] = (int)v10 - 20;
  }
}


// ===== 38fbb8 GameObject::_PopTargetList(sfc::script::lua::Arguments const&,sfc::script::lua::ReturnValues &,void *) =====
void __fastcall GameObject::_PopTargetList(int a1, int a2, _DWORD *a3)
{
  int *v4; // r4
  int v5; // r0
  int v6; // r1
  int v7; // r2
  int v8; // r3
  _DWORD v9[4]; // [sp+0h] [bp-10h] BYREF

  v4 = a3 + 193;
  v5 = a3[193];
  v6 = a3[194];
  v7 = a3[195];
  v8 = v4[3];
  v9[0] = v5;
  v9[1] = v6;
  v9[2] = v7;
  v9[3] = v8;
  if ( std::priv::_Deque_iterator_base<ObjectSearcher::TargetInfo>::_M_subtract(a3 + 197, v9) )
    std::priority_queue<ObjectSearcher::TargetInfo,std::deque<ObjectSearcher::TargetInfo>,ObjectSearcher::TargetSorter>::pop(v4);
}


// ===== 38fbf8 GameObject::_TargetListResort(sfc::script::lua::Arguments const&,sfc::script::lua::ReturnValues &,void *) =====
int __fastcall GameObject::_TargetListResort(
        int this,
        const sfc::script::lua::Arguments *a2,
        sfc::script::lua::ReturnValues *a3,
        void *a4)
{
  _DWORD *v4; // r3
  sfc::script::lua::Value *v5; // r0
  int v6; // r1

  v4 = *(_DWORD **)(this + 4);
  if ( 1227133513 * ((v4[1] - *v4) >> 4) )
  {
    if ( *(_DWORD *)(*v4 + 4) == 3 )
    {
      v5 = (sfc::script::lua::Value *)sfc::script::lua::Arguments::operator[](this, 0);
      v6 = (int)COERCE_FLOAT(sfc::script::lua::Value::getNumber(v5));
      return ObjectSearcher::TargetList::Resort((sfc::script::lua::ReturnValues *)((char *)a3 + 772), v6);
    }
  }
  return this;
}


// ===== 38fc74 GameObject::_DropFX(sfc::script::lua::Arguments const&,sfc::script::lua::ReturnValues &,void *) =====
int __fastcall GameObject::_DropFX(
        int this,
        const sfc::script::lua::Arguments *a2,
        sfc::script::lua::ReturnValues *a3,
        void *a4)
{
  _DWORD *v4; // r2
  sfc::script::lua::Value *v5; // r0
  AnimatedFX *Pointer; // [sp+4h] [bp-4h] BYREF

  v4 = *(_DWORD **)(this + 4);
  if ( 1227133513 * ((v4[1] - *v4) >> 4) )
  {
    if ( *(_DWORD *)(*v4 + 4) == 2 )
    {
      v5 = (sfc::script::lua::Value *)sfc::script::lua::Arguments::operator[](this, 0);
      Pointer = (AnimatedFX *)sfc::script::lua::Value::getPointer(v5);
      return VisualFXManager::DropAnimatedFX((int)&Singleton<VisualFXManager>::s_inst, &Pointer);
    }
  }
  return this;
}


// ===== 38fcf0 GameObject::_TargetListSearch(sfc::script::lua::Arguments const&,sfc::script::lua::ReturnValues &,void *) =====
int __fastcall GameObject::_TargetListSearch(
        int this,
        const sfc::script::lua::Arguments *a2,
        sfc::script::lua::ReturnValues *a3,
        void *a4)
{
  _DWORD *v4; // r3
  int v6; // r5
  unsigned int v7; // r7
  float v8; // r2
  float v9; // r0
  unsigned int v10; // r7
  int v11; // r2
  unsigned int v12; // r3
  ObjectSearcher::TargetList *v13; // r6
  int *ResultsBackup; // r4
  sfc::script::lua::Value *v15; // r0
  float v16; // r7
  sfc::script::lua::Value *v17; // r0
  float v18; // r0
  int v19; // r2
  sfc::script::lua::Value *v20; // r0
  float v21; // r8
  sfc::script::lua::Value *v22; // r0
  float v23; // r7
  sfc::script::lua::Value *v24; // r0
  sfc::script::lua::Value *v25; // r0
  float v26; // r0
  sfc::script::lua::Value *v27; // r0
  float v28; // r12
  float v29; // r2
  float v30; // r11
  float v31; // r10
  float v32; // r9
  sfc::script::lua::Value *v33; // r0
  float v34; // r8
  sfc::script::lua::Value *v35; // r0
  float v36; // r8
  sfc::script::lua::Value *v37; // r0
  float v38; // r8
  sfc::script::lua::Value *v39; // r0
  float *UserData; // r0
  sfc::script::lua::Value *v41; // r0
  const char *String; // r1
  ObjectSearcher::TargetList *v43; // r0
  sfc::script::lua::Value *v44; // r0
  float v45; // [sp+10h] [bp-5Ch]
  float v46; // [sp+14h] [bp-58h]
  float v47; // [sp+18h] [bp-54h]
  _DWORD v48[5]; // [sp+20h] [bp-4Ch] BYREF
  _DWORD v49[4]; // [sp+34h] [bp-38h] BYREF
  _DWORD v50[3]; // [sp+44h] [bp-28h] BYREF
  float v51; // [sp+50h] [bp-1Ch] BYREF
  float v52; // [sp+54h] [bp-18h]
  float v53; // [sp+58h] [bp-14h]
  float v54; // [sp+5Ch] [bp-10h] BYREF
  float v55; // [sp+60h] [bp-Ch]
  float v56; // [sp+64h] [bp-8h]

  v4 = *(_DWORD **)(this + 4);
  v6 = this;
  v7 = -1227133513 * ((v4[1] - *v4) >> 4);
  if ( v7 && *(_DWORD *)(*v4 + 4) == 3 )
  {
    if ( v7 > 1 )
    {
      this = sfc::script::lua::Arguments::operator[](this, 1);
      if ( *(_DWORD *)(this + 4) != 3 )
        return this;
      v4 = *(_DWORD **)(v6 + 4);
      v7 = -1227133513 * ((v4[1] - *v4) >> 4);
    }
    v8 = *((float *)a3 + 90);
    v9 = *((float *)a3 + 88);
    v55 = *((float *)a3 + 89);
    v56 = v8;
    v54 = v9;
    if ( (unsigned int)(-1227133513 * ((v4[1] - *v4) >> 4)) <= 2 )
      goto LABEL_8;
    if ( *(_DWORD *)(sfc::script::lua::Arguments::operator[](v6, 2) + 4) != 7 )
    {
      v4 = *(_DWORD **)(v6 + 4);
      if ( (unsigned int)(-1227133513 * ((v4[1] - *v4) >> 4)) > 4 )
      {
        if ( *(_DWORD *)(sfc::script::lua::Arguments::operator[](v6, 2) + 4) == 3
          && *(_DWORD *)(sfc::script::lua::Arguments::operator[](v6, 3) + 4) == 3
          && *(_DWORD *)(sfc::script::lua::Arguments::operator[](v6, 4) + 4) == 3 )
        {
          if ( (unsigned int)(-1227133513 * ((*(_DWORD *)(*(_DWORD *)(v6 + 4) + 4) - **(_DWORD **)(v6 + 4)) >> 4)) > 5
            && *(_DWORD *)(sfc::script::lua::Arguments::operator[](v6, 5) + 4) == 1
            && (v27 = (sfc::script::lua::Value *)sfc::script::lua::Arguments::operator[](v6, 5),
                sfc::script::lua::Value::getBool(v27)) )
          {
            v53 = 0.0;
            v51 = 0.0;
            v52 = 0.0;
            GameObject::GetLookAtVec((int)a3, &v51);
            v28 = *((float *)a3 + 88);
            v29 = *((float *)a3 + 89);
            v56 = *((float *)a3 + 90);
            v54 = v28;
            v55 = v29;
            v45 = *(float *)&dword_99F87C;
            v30 = *(float *)&dword_99F880;
            v31 = *(float *)&Vec3f_K;
            v46 = v52;
            v32 = v53;
            v47 = v51;
            v33 = (sfc::script::lua::Value *)sfc::script::lua::Arguments::operator[](v6, 2);
            v34 = COERCE_FLOAT(sfc::script::lua::Value::getNumber(v33));
            v54 = v54 + (float)(v34 * (float)((float)(v45 * v32) - (float)(v30 * v46)));
            v55 = v55 + (float)(v34 * (float)((float)(v30 * v47) - (float)(v32 * v31)));
            v56 = v56 + (float)(v34 * (float)((float)(v46 * v31) - (float)(v45 * v47)));
            v35 = (sfc::script::lua::Value *)sfc::script::lua::Arguments::operator[](v6, 3);
            v36 = COERCE_FLOAT(sfc::script::lua::Value::getNumber(v35));
            v54 = v54 + (float)(v36 * v51);
            v55 = v55 + (float)(v36 * v52);
            v56 = v56 + (float)(v36 * v53);
            v37 = (sfc::script::lua::Value *)sfc::script::lua::Arguments::operator[](v6, 4);
            v38 = COERCE_FLOAT(sfc::script::lua::Value::getNumber(v37));
            v54 = v54 + (float)(v38 * *(float *)&Vec3f_K);
            v55 = v55 + (float)(v38 * *(float *)&dword_99F87C);
            v10 = 6;
            v4 = *(_DWORD **)(v6 + 4);
            v56 = v56 + (float)(v38 * *(float *)&dword_99F880);
          }
          else
          {
            v20 = (sfc::script::lua::Value *)sfc::script::lua::Arguments::operator[](v6, 2);
            v21 = COERCE_FLOAT(sfc::script::lua::Value::getNumber(v20));
            v22 = (sfc::script::lua::Value *)sfc::script::lua::Arguments::operator[](v6, 3);
            v23 = COERCE_FLOAT(sfc::script::lua::Value::getNumber(v22));
            v24 = (sfc::script::lua::Value *)sfc::script::lua::Arguments::operator[](v6, 4);
            v55 = v23;
            v54 = v21;
            v56 = COERCE_FLOAT(sfc::script::lua::Value::getNumber(v24));
            v10 = 6;
            v4 = *(_DWORD **)(v6 + 4);
          }
LABEL_9:
          v49[0] = off_964870;
          v50[0] = off_964848;
          v50[1] = dword_99F76C;
          v50[2] = 0;
          v49[1] = dword_99F764 + 96;
          v49[2] = *(_DWORD *)(dword_99F764 + 96);
          v49[3] = dword_99F764 + 96;
          v48[0] = off_969D20;
          v48[1] = dword_99F764 + 128;
          v11 = *(_DWORD *)(dword_99F764 + 128);
          v48[3] = dword_99F764 + 128;
          v48[4] = 0;
          v48[2] = v11;
          v12 = -1227133513 * ((v4[1] - *v4) >> 4);
          if ( v10 >= v12 )
            goto LABEL_10;
          if ( *(_DWORD *)(sfc::script::lua::Arguments::operator[](v6, v10) + 4) == 1 )
          {
            v44 = (sfc::script::lua::Value *)sfc::script::lua::Arguments::operator[](v6, v10);
            if ( sfc::script::lua::Value::getBool(v44) )
            {
              v13 = (sfc::script::lua::ReturnValues *)((char *)a3 + 772);
              v43 = v13;
              String = "default";
              goto LABEL_36;
            }
          }
          v12 = -1227133513 * ((*(_DWORD *)(*(_DWORD *)(v6 + 4) + 4) - **(_DWORD **)(v6 + 4)) >> 4);
          if ( v10 < v12 )
          {
            if ( *(_DWORD *)(sfc::script::lua::Arguments::operator[](v6, v10) + 4) == 4 )
            {
              v41 = (sfc::script::lua::Value *)sfc::script::lua::Arguments::operator[](v6, v10);
              v13 = (sfc::script::lua::ReturnValues *)((char *)a3 + 772);
              String = (const char *)sfc::script::lua::Value::getString(v41);
              v43 = v13;
LABEL_36:
              ResultsBackup = (int *)ObjectSearcher::TargetList::GetResultsBackup(v43, String);
              v12 = -1227133513 * ((*(_DWORD *)(*(_DWORD *)(v6 + 4) + 4) - **(_DWORD **)(v6 + 4)) >> 4);
LABEL_13:
              if ( v12 <= 1 )
              {
                v25 = (sfc::script::lua::Value *)sfc::script::lua::Arguments::operator[](v6, 0);
                v26 = COERCE_FLOAT(sfc::script::lua::Value::getNumber(v25));
                return ObjectSearcher::TargetList::Search(v13, &v54, v26, 3.1416, ResultsBackup);
              }
              else
              {
                v15 = (sfc::script::lua::Value *)sfc::script::lua::Arguments::operator[](v6, 0);
                v16 = COERCE_FLOAT(sfc::script::lua::Value::getNumber(v15));
                v17 = (sfc::script::lua::Value *)sfc::script::lua::Arguments::operator[](v6, 1);
                v18 = COERCE_FLOAT(sfc::script::lua::Value::getNumber(v17));
                return ObjectSearcher::TargetList::Search(v13, &v54, v16, (float)(v18 * 0.017453) * 0.5, ResultsBackup);
              }
            }
            v12 = -1227133513 * ((*(_DWORD *)(*(_DWORD *)(v6 + 4) + 4) - **(_DWORD **)(v6 + 4)) >> 4);
          }
LABEL_10:
          if ( (*((_DWORD *)a3 + 206) & 0x80) != 0 )
          {
            v13 = (sfc::script::lua::ReturnValues *)((char *)a3 + 772);
            ResultsBackup = v50;
          }
          else
          {
            v19 = *((_DWORD *)a3 + 207);
            v13 = (sfc::script::lua::ReturnValues *)((char *)a3 + 772);
            if ( v19 == 2 )
              ResultsBackup = v49;
            else
              ResultsBackup = v48;
          }
          goto LABEL_13;
        }
        v4 = *(_DWORD **)(v6 + 4);
      }
LABEL_8:
      v10 = v7 - 1;
      goto LABEL_9;
    }
    v39 = (sfc::script::lua::Value *)sfc::script::lua::Arguments::operator[](v6, 2);
    UserData = (float *)sfc::script::lua::Value::getUserData(v39);
    v4 = *(_DWORD **)(v6 + 4);
    v10 = 3;
    v54 = UserData[88];
    v55 = UserData[89];
    v56 = UserData[90];
    goto LABEL_9;
  }
  return this;
}


// ===== 39040c GameObject::_EnableCollisions(sfc::script::lua::Arguments const&,sfc::script::lua::ReturnValues &,void *) =====
int __fastcall GameObject::_EnableCollisions(
        int this,
        const sfc::script::lua::Arguments *a2,
        sfc::script::lua::ReturnValues *a3,
        void *a4)
{
  _DWORD *v4; // r3
  int v5; // r5
  sfc::script::lua::Value *v6; // r0
  _BOOL4 Bool; // r4
  GameObject *v8; // r2
  int v9; // r0
  sfc::script::lua::Value *v10; // r0
  _BOOL4 v11; // r0

  v4 = *(_DWORD **)(this + 4);
  v5 = this;
  if ( 1227133513 * ((v4[1] - *v4) >> 4) && *(_DWORD *)(*v4 + 4) == 1 )
  {
    v6 = (sfc::script::lua::Value *)sfc::script::lua::Arguments::operator[](this, 0);
    Bool = sfc::script::lua::Value::getBool(v6);
    v8 = a3;
    if ( (unsigned int)(-1227133513 * ((*(_DWORD *)(*(_DWORD *)(v5 + 4) + 4) - **(_DWORD **)(v5 + 4)) >> 4)) > 1
      && (v9 = sfc::script::lua::Arguments::operator[](v5, 1u), v8 = a3, *(_DWORD *)(v9 + 4) == 1)
      && (v10 = (sfc::script::lua::Value *)sfc::script::lua::Arguments::operator[](v5, 1u),
          v11 = sfc::script::lua::Value::getBool(v10),
          v8 = a3,
          v11) )
    {
      this = *((_DWORD *)a3 + 183);
      if ( this )
      {
        if ( Bool )
          return PhysicalObject::resetFilter((PhysicalObject *)this);
        else
          return PhysicalObject::setFilter(
                   (PhysicalObject *)this,
                   *(_WORD *)(this + 36),
                   *(_WORD *)(this + 32),
                   *(_WORD *)(this + 34) & 0xFFE3,
                   0);
      }
    }
    else if ( Bool )
    {
      return GameObject::EnableCollisions(v8);
    }
    else
    {
      return GameObject::DisableCollisions(v8);
    }
  }
  return this;
}


// ===== 390548 GameObject::_SetTargetListSorting(sfc::script::lua::Arguments const&,sfc::script::lua::ReturnValues &,void *) =====
int __fastcall GameObject::_SetTargetListSorting(
        int this,
        const sfc::script::lua::Arguments *a2,
        sfc::script::lua::ReturnValues *a3,
        void *a4)
{
  _DWORD *v4; // r3
  sfc::script::lua::Value *v6; // r0
  int i; // r7

  v4 = *(_DWORD **)(this + 4);
  if ( 1227133513 * ((v4[1] - *v4) >> 4) && *(_DWORD *)(*v4 + 4) == 3 )
  {
    v6 = (sfc::script::lua::Value *)sfc::script::lua::Arguments::operator[](this, 0);
    this = (int)COERCE_FLOAT(sfc::script::lua::Value::getNumber(v6));
    for ( i = this;
          *((_DWORD *)a3 + 197) != *((_DWORD *)a3 + 193);
          this = std::priority_queue<ObjectSearcher::TargetInfo,std::deque<ObjectSearcher::TargetInfo>,ObjectSearcher::TargetSorter>::pop((char *)a3 + 772) )
    {
      ;
    }
    if ( i == 1 )
    {
      *((_DWORD *)a3 + 203) = ObjectSearcher::TargetSorter::_sortClosest;
    }
    else if ( i == 2 )
    {
      *((_DWORD *)a3 + 203) = ObjectSearcher::TargetSorter::_sortFrontal;
    }
    else
    {
      *((_DWORD *)a3 + 203) = ObjectSearcher::TargetSorter::_sortNoSort;
    }
  }
  return this;
}


// ===== 390624 GameObject::_SetTargetListObjectFilter(sfc::script::lua::Arguments const&,sfc::script::lua::ReturnValues &,void *) =====
int __fastcall GameObject::_SetTargetListObjectFilter(
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
    if ( *(_DWORD *)(*v4 + 4) == 3 )
    {
      v5 = (sfc::script::lua::Value *)sfc::script::lua::Arguments::operator[](this, 0);
      this = (int)COERCE_FLOAT(sfc::script::lua::Value::getNumber(v5));
      *((_DWORD *)a3 + 207) = this;
    }
  }
  return this;
}


// ===== 390690 GameObject::_SetTargetListCharacterFilter(sfc::script::lua::Arguments const&,sfc::script::lua::ReturnValues &,void *) =====
int __fastcall GameObject::_SetTargetListCharacterFilter(
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
    if ( *(_DWORD *)(*v4 + 4) == 3 )
    {
      v5 = (sfc::script::lua::Value *)sfc::script::lua::Arguments::operator[](this, 0);
      this = (int)COERCE_FLOAT(sfc::script::lua::Value::getNumber(v5));
      *((_DWORD *)a3 + 206) = this;
    }
  }
  return this;
}


// ===== 3906fc GameObject::_DealDamages(sfc::script::lua::Arguments const&,sfc::script::lua::ReturnValues &,void *) =====
void __fastcall GameObject::_DealDamages(
        GameObject *this,
        const sfc::script::lua::Arguments *a2,
        sfc::script::lua::ReturnValues *a3,
        void *a4)
{
  _DWORD *v4; // r7
  sfc::script::lua::Value *v8; // r0
  sfc::script::lua::Value *v9; // r0
  int UserData; // r7
  int v11; // r6
  sfc::script::lua::Value *v12; // r0
  int UInteger; // r0
  int v14[10]; // [sp+Ch] [bp-34h] BYREF
  _BYTE v15[12]; // [sp+34h] [bp-Ch] BYREF

  v4 = *((_DWORD **)this + 1);
  if ( (unsigned int)(-1227133513 * ((v4[1] - *v4) >> 4)) > 2
    && *(_DWORD *)(*v4 + 4) == 7
    && *(_DWORD *)(sfc::script::lua::Arguments::operator[](this, 1) + 4) == 3 )
  {
    v8 = (sfc::script::lua::Value *)sfc::script::lua::Arguments::operator[](this, 1);
    if ( sfc::script::lua::Value::getUInteger(v8) < (unsigned int)Arrays::GameObjectDamager::size )
    {
      v9 = (sfc::script::lua::Value *)sfc::script::lua::Arguments::operator[](this, 0);
      UserData = sfc::script::lua::Value::getUserData(v9);
      if ( UserData )
      {
        ObjectBase::GetHandle((ObjectBase *)v15);
        v11 = ObjectHandle::operator Character *(v15);
        if ( v11 )
        {
          v12 = (sfc::script::lua::Value *)sfc::script::lua::Arguments::operator[](this, 1);
          UInteger = sfc::script::lua::Value::getUInteger(v12);
          Character::F_GOAttack(v14, a3, v11, UInteger, 0);
          Character::F_ApplyResult((int)v14, a3, v11, 0);
          sfc::script::lua::ReturnValues::pushInteger(a2, v14[0]);
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


// ===== 39088c GameObject::_MarkAsSwimming(sfc::script::lua::Arguments const&,sfc::script::lua::ReturnValues &,void *) =====
int __fastcall GameObject::_MarkAsSwimming(
        int this,
        const sfc::script::lua::Arguments *a2,
        sfc::script::lua::ReturnValues *a3,
        void *a4)
{
  _DWORD *v4; // r3
  sfc::script::lua::Value *v5; // r0
  _BOOL4 Bool; // r0

  v4 = *(_DWORD **)(this + 4);
  if ( 1227133513 * ((v4[1] - *v4) >> 4) )
  {
    if ( *(_DWORD *)(*v4 + 4) == 1 )
    {
      v5 = (sfc::script::lua::Value *)sfc::script::lua::Arguments::operator[](this, 0);
      Bool = sfc::script::lua::Value::getBool(v5);
      return PFObject::SetSwimming((int)a3 + 456, Bool);
    }
  }
  return this;
}


// ===== 390900 GameObject::_MarkAsFlying(sfc::script::lua::Arguments const&,sfc::script::lua::ReturnValues &,void *) =====
int __fastcall GameObject::_MarkAsFlying(
        int this,
        const sfc::script::lua::Arguments *a2,
        sfc::script::lua::ReturnValues *a3,
        void *a4)
{
  _DWORD *v4; // r3
  sfc::script::lua::Value *v5; // r0
  _BOOL4 Bool; // r0

  v4 = *(_DWORD **)(this + 4);
  if ( 1227133513 * ((v4[1] - *v4) >> 4) )
  {
    if ( *(_DWORD *)(*v4 + 4) == 1 )
    {
      v5 = (sfc::script::lua::Value *)sfc::script::lua::Arguments::operator[](this, 0);
      Bool = sfc::script::lua::Value::getBool(v5);
      return PFObject::SetFlying((int)a3 + 456, Bool);
    }
  }
  return this;
}


// ===== 390974 GameObject::_SetFXEndPoint(sfc::script::lua::Arguments const&,sfc::script::lua::ReturnValues &,void *) =====
float __fastcall GameObject::_SetFXEndPoint(
        float this,
        const sfc::script::lua::Arguments *a2,
        sfc::script::lua::ReturnValues *a3,
        void *a4)
{
  _DWORD *v4; // r2
  float v5; // r4
  int v6; // r3
  sfc::script::lua::Value *v7; // r0
  int Pointer; // r0
  _DWORD *v9; // r2
  int v10; // r5
  sfc::script::lua::Value *v11; // r0
  sfc::script::lua::Value *v12; // r0
  sfc::script::lua::Value *v13; // r0
  sfc::script::lua::Value *v14; // r0
  GameObject *UserData; // r0
  char *TargetPosition; // r0
  int Number; // [sp+4h] [bp-10h] BYREF
  int v18; // [sp+8h] [bp-Ch]
  int v19; // [sp+Ch] [bp-8h]

  v4 = *(_DWORD **)(LODWORD(this) + 4);
  v5 = this;
  v6 = -1227133513 * ((v4[1] - *v4) >> 4);
  if ( (v6 == 2 || v6 == 4) && *(_DWORD *)(*v4 + 4) == 2 )
  {
    if ( v6 == 2 )
    {
      this = COERCE_FLOAT(sfc::script::lua::Arguments::operator[](LODWORD(this), 1));
      if ( *(_DWORD *)(LODWORD(this) + 4) != 7 )
        return this;
      v6 = -1227133513 * ((*(_DWORD *)(*(_DWORD *)(LODWORD(v5) + 4) + 4) - **(_DWORD **)(LODWORD(v5) + 4)) >> 4);
    }
    if ( v6 != 4
      || (this = COERCE_FLOAT(sfc::script::lua::Arguments::operator[](LODWORD(v5), 1)),
          *(_DWORD *)(LODWORD(this) + 4) == 3)
      && (this = COERCE_FLOAT(sfc::script::lua::Arguments::operator[](LODWORD(v5), 2)),
          *(_DWORD *)(LODWORD(this) + 4) == 3)
      && (this = COERCE_FLOAT(sfc::script::lua::Arguments::operator[](LODWORD(v5), 3)),
          *(_DWORD *)(LODWORD(this) + 4) == 3) )
    {
      v7 = (sfc::script::lua::Value *)sfc::script::lua::Arguments::operator[](LODWORD(v5), 0);
      Pointer = sfc::script::lua::Value::getPointer(v7);
      v9 = *(_DWORD **)(LODWORD(v5) + 4);
      v19 = 0;
      Number = 0;
      v18 = 0;
      v10 = Pointer;
      if ( 1227133513 * ((v9[1] - *v9) >> 4) == -2 )
      {
        v14 = (sfc::script::lua::Value *)sfc::script::lua::Arguments::operator[](LODWORD(v5), 1);
        UserData = (GameObject *)sfc::script::lua::Value::getUserData(v14);
        TargetPosition = GameObject::GetTargetPosition(UserData);
        Number = *(_DWORD *)TargetPosition;
        v18 = *((_DWORD *)TargetPosition + 1);
        v19 = *((_DWORD *)TargetPosition + 2);
      }
      else
      {
        v11 = (sfc::script::lua::Value *)sfc::script::lua::Arguments::operator[](LODWORD(v5), 1);
        Number = sfc::script::lua::Value::getNumber(v11);
        v12 = (sfc::script::lua::Value *)sfc::script::lua::Arguments::operator[](LODWORD(v5), 2);
        v18 = sfc::script::lua::Value::getNumber(v12);
        v13 = (sfc::script::lua::Value *)sfc::script::lua::Arguments::operator[](LODWORD(v5), 3);
        v19 = sfc::script::lua::Value::getNumber(v13);
      }
      return AnimatedFX::SetEndPoint(v10, (float *)&Number);
    }
  }
  return this;
}


// ===== 390b3c GameObject::_SetMaxPath(sfc::script::lua::Arguments const&,sfc::script::lua::ReturnValues &,void *) =====
unsigned int __fastcall GameObject::_SetMaxPath(
        unsigned int this,
        const sfc::script::lua::Arguments *a2,
        sfc::script::lua::ReturnValues *a3,
        void *a4)
{
  _DWORD *v4; // r3
  int v6; // r4
  sfc::script::lua::Value *v7; // r0

  v4 = *(_DWORD **)(this + 4);
  v6 = this;
  if ( 1227133513 * ((v4[1] - *v4) >> 4) )
  {
    if ( *(_DWORD *)(*v4 + 4) == 3 )
    {
      this = (*(int (__fastcall **)(sfc::script::lua::ReturnValues *))(*(_DWORD *)a3 + 36))(a3);
      if ( this )
      {
        this = Character::IsFollower(a3);
        if ( this )
        {
          v7 = (sfc::script::lua::Value *)sfc::script::lua::Arguments::operator[](v6, 0);
          this = sfc::script::lua::Value::getUInteger(v7);
          *((_DWORD *)a3 + 155) = this;
          if ( this > 0x64 )
            *((_DWORD *)a3 + 155) = 100;
        }
      }
    }
  }
  return this;
}


// ===== 390bd4 GameObject::_TargetListBackup(sfc::script::lua::Arguments const&,sfc::script::lua::ReturnValues &,void *) =====
int __fastcall GameObject::_TargetListBackup(
        GameObject *this,
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
    return ObjectSearcher::TargetList::BackupResults((sfc::script::lua::ReturnValues *)((char *)a3 + 772), "default");
  String = (const char *)sfc::script::lua::Value::getString(v5);
  return ObjectSearcher::TargetList::BackupResults((sfc::script::lua::ReturnValues *)((char *)a3 + 772), String);
}


// ===== 390c50 GameObject::_SummonTimerTrap(sfc::script::lua::Arguments const&,sfc::script::lua::ReturnValues &,void *) =====
void __fastcall GameObject::_SummonTimerTrap(
        GameObject *this,
        const sfc::script::lua::Arguments *a2,
        sfc::script::lua::ReturnValues *a3,
        void *a4)
{
  _DWORD *v4; // r5
  sfc::script::lua::Value *v8; // r0
  int *v9; // r5
  int v10; // r3
  sfc::script::lua::Value *v11; // r0
  sfc::script::lua::Value *v12; // r0
  float v13; // r4
  sfc::script::lua::Value *v14; // r0
  float v15; // r5
  int v16; // r3
  GameObject *v17; // r4
  sfc::script::lua::Value *v18; // r0
  int Number; // r8
  sfc::script::lua::Value *v20; // r0
  int v21; // r5
  sfc::script::lua::Value *v22; // r0
  sfc::script::lua::Value *v23; // r0
  int UserData; // r0
  float v25[3]; // [sp+4h] [bp-Ch] BYREF

  v4 = *((_DWORD **)this + 1);
  if ( (unsigned int)(-1227133513 * ((v4[1] - *v4) >> 4)) > 1 && *(_DWORD *)(*v4 + 4) == 3 )
  {
    v8 = (sfc::script::lua::Value *)sfc::script::lua::Arguments::operator[]((int)this, 0);
    if ( sfc::script::lua::Value::getUInteger(v8) < Arrays::TimerTraps::size )
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
        v11 = (sfc::script::lua::Value *)sfc::script::lua::Arguments::operator[]((int)this, 1u);
        if ( sfc::script::lua::Value::getUInteger(v11) < Arrays::GameObjectDamager::size )
        {
          v12 = (sfc::script::lua::Value *)sfc::script::lua::Arguments::operator[]((int)this, 0);
          v13 = COERCE_FLOAT(sfc::script::lua::Value::getNumber(v12));
          v14 = (sfc::script::lua::Value *)sfc::script::lua::Arguments::operator[]((int)this, 1u);
          v15 = COERCE_FLOAT(sfc::script::lua::Value::getNumber(v14));
          v17 = (GameObject *)TimerTrap::Create(a3, (GameObject *)(int)v13, (int)v15, v16);
          if ( (unsigned int)(-1227133513 * ((*(_DWORD *)(*((_DWORD *)this + 1) + 4) - **((_DWORD **)this + 1)) >> 4)) > 2 )
          {
            if ( *(_DWORD *)(sfc::script::lua::Arguments::operator[]((int)this, 2u) + 4) == 7 )
            {
              v23 = (sfc::script::lua::Value *)sfc::script::lua::Arguments::operator[]((int)this, 2u);
              UserData = sfc::script::lua::Value::getUserData(v23);
              GameObject::SetPosition(v17, (float *)(UserData + 352), 1);
            }
            else if ( (unsigned int)(-1227133513
                                   * ((*(_DWORD *)(*((_DWORD *)this + 1) + 4) - **((_DWORD **)this + 1)) >> 4)) > 4
                   && *(_DWORD *)(sfc::script::lua::Arguments::operator[]((int)this, 2u) + 4) == 3
                   && *(_DWORD *)(sfc::script::lua::Arguments::operator[]((int)this, 3u) + 4) == 3
                   && *(_DWORD *)(sfc::script::lua::Arguments::operator[]((int)this, 4u) + 4) == 3 )
            {
              v18 = (sfc::script::lua::Value *)sfc::script::lua::Arguments::operator[]((int)this, 2u);
              Number = sfc::script::lua::Value::getNumber(v18);
              v20 = (sfc::script::lua::Value *)sfc::script::lua::Arguments::operator[]((int)this, 3u);
              v21 = sfc::script::lua::Value::getNumber(v20);
              v22 = (sfc::script::lua::Value *)sfc::script::lua::Arguments::operator[]((int)this, 4u);
              LODWORD(v25[2]) = sfc::script::lua::Value::getNumber(v22);
              LODWORD(v25[0]) = Number;
              LODWORD(v25[1]) = v21;
              GameObject::SetPosition(v17, v25, 1);
            }
          }
          sfc::script::lua::ReturnValues::pushUserData(a2, v17);
        }
      }
    }
  }
}


// ===== 390f1c GameObject::_IsInRange(sfc::script::lua::Arguments const&,sfc::script::lua::ReturnValues &,void *) =====
void __fastcall GameObject::_IsInRange(
        GameObject *this,
        const sfc::script::lua::Arguments *a2,
        sfc::script::lua::ReturnValues *a3,
        void *a4)
{
  int *v4; // r7
  int v7; // r3
  unsigned int v9; // r1
  sfc::script::lua::Value *v10; // r0
  char *UserData; // r7
  sfc::script::lua::Value *v12; // r0
  float v13; // r8
  PhysicalObject *v14; // r10
  PhysicalObject *v15; // r0
  float v16; // r0
  float v17; // r11
  float v18; // r10
  const char *v19; // r8
  sfc::script::lua::Value *v20; // r0
  char *String; // r0
  sfc::script::lua::Value *v22; // r0
  float v23; // r9
  float v24; // r10
  float v25; // r8
  float v26; // r0
  float v27; // r5
  bool v28; // r1
  float v29; // [sp+Ch] [bp-28h]
  float Radius; // [sp+10h] [bp-24h]
  float v31; // [sp+18h] [bp-1Ch] BYREF
  float v32; // [sp+1Ch] [bp-18h]
  float v33; // [sp+20h] [bp-14h]
  char *v34[4]; // [sp+24h] [bp-10h] BYREF

  v4 = *((int **)this + 1);
  v7 = *v4;
  v9 = -1227133513 * ((v4[1] - *v4) >> 4);
  if ( v9 > 1 )
  {
    if ( *(_DWORD *)(v7 + 4) != 4 )
    {
      if ( *(_DWORD *)(v7 + 4) != 7 )
        return;
      v4 = *((int **)this + 1);
      v7 = *v4;
      v9 = -1227133513 * ((v4[1] - *v4) >> 4);
    }
    if ( v9 <= 1 )
    {
      __ZSt24__stl_throw_out_of_rangePKc_veneer("vector");
      v7 = *v4;
    }
    if ( *(_DWORD *)(v7 + 116) == 3 && *(_DWORD *)(sfc::script::lua::Arguments::operator[]((int)this, 2u) + 4) == 3 )
    {
      if ( *(_DWORD *)(sfc::script::lua::Arguments::operator[]((int)this, 0) + 4) == 4 )
      {
        v19 = (const char *)dword_99F764;
        v20 = (sfc::script::lua::Value *)sfc::script::lua::Arguments::operator[]((int)this, 0);
        String = (char *)sfc::script::lua::Value::getString(v20);
        ObjectManager::GetObjectByName((ObjectManager *)v34, v19, String, -1, nullptr, 0);
        UserData = ObjectHandle::operator GameObject *(v34);
      }
      else
      {
        v10 = (sfc::script::lua::Value *)sfc::script::lua::Arguments::operator[]((int)this, 0);
        UserData = (char *)sfc::script::lua::Value::getUserData(v10);
      }
      v12 = (sfc::script::lua::Value *)sfc::script::lua::Arguments::operator[]((int)this, 1u);
      v13 = COERCE_FLOAT(sfc::script::lua::Value::getNumber(v12));
      if ( UserData
        && (v14 = *((PhysicalObject **)UserData + 183)) != nullptr
        && *((_BYTE *)v14 + 16)
        && (v15 = *((PhysicalObject **)a3 + 183)) != nullptr )
      {
        Radius = PhysicalObject::getRadius(v15);
        v29 = PhysicalObject::getRadius(v14);
        v16 = *((float *)a3 + 88) - *((float *)UserData + 88);
        v17 = *((float *)a3 + 89) - *((float *)UserData + 89);
        v18 = *((float *)a3 + 90) - *((float *)UserData + 90);
        if ( v13 >= (float)((float)(sqrtf((float)((float)(v16 * v16) + (float)(v17 * v17)) + (float)(v18 * v18)) - Radius)
                          - v29) )
        {
LABEL_17:
          if ( 1227133513 * ((*(_DWORD *)(*((_DWORD *)this + 1) + 4) - **((_DWORD **)this + 1)) >> 4) == -3 )
          {
            v22 = (sfc::script::lua::Value *)sfc::script::lua::Arguments::operator[]((int)this, 2u);
            v23 = COERCE_FLOAT(sfc::script::lua::Value::getNumber(v22));
            v33 = 0.0;
            v31 = 0.0;
            v32 = 0.0;
            GameObject::GetLookAtVec((int)a3, &v31);
            v24 = *((float *)UserData + 88) - *((float *)a3 + 88);
            v25 = *((float *)UserData + 89) - *((float *)a3 + 89);
            v26 = *((float *)UserData + 90) - *((float *)a3 + 90);
            v27 = (float)((float)(v24 * v31) + (float)(v25 * v32)) + (float)(v26 * v33);
            v28 = v23 <= (float)(v27 / sqrtf((float)((float)(v24 * v24) + (float)(v25 * v25)) + (float)(v26 * v26)));
            sfc::script::lua::ReturnValues::pushBoolean(a2, v28);
          }
          else
          {
            sfc::script::lua::ReturnValues::pushBoolean(a2, 1);
          }
          return;
        }
      }
      else if ( (float)(*((float *)a3 + 75) - v13) <= *((float *)UserData + 78)
             && (float)(v13 + *((float *)a3 + 78)) >= *((float *)UserData + 75)
             && (float)(*((float *)a3 + 76) - v13) <= *((float *)UserData + 79)
             && (float)(v13 + *((float *)a3 + 79)) >= *((float *)UserData + 76)
             && (float)(*((float *)a3 + 77) - v13) <= *((float *)UserData + 80)
             && (float)(v13 + *((float *)a3 + 80)) >= *((float *)UserData + 77) )
      {
        goto LABEL_17;
      }
      sfc::script::lua::ReturnValues::pushBoolean(a2, 0);
    }
  }
}


// ===== 391438 GameObject::_GetDistanceBetween(sfc::script::lua::Arguments const&,sfc::script::lua::ReturnValues &,void *) =====
void __fastcall GameObject::_GetDistanceBetween(
        GameObject *this,
        const sfc::script::lua::Arguments *a2,
        sfc::script::lua::ReturnValues *a3,
        void *a4)
{
  _DWORD *v4; // r7
  int v7; // r7
  sfc::script::lua::Value *v8; // r0
  const char *v9; // r10
  char *String; // r0
  char *v11; // r0
  int *v12; // r5
  float *v13; // r7
  int v14; // r0
  const char *v15; // r8
  char *v16; // r0
  float *v17; // r0
  bool v18; // zf
  float v19; // r1
  float v20; // r10
  float v21; // r8
  float v22; // r0
  char *v23[3]; // [sp+8h] [bp-1Ch] BYREF
  char *v24[4]; // [sp+14h] [bp-10h] BYREF

  v4 = *((_DWORD **)this + 1);
  if ( (unsigned int)(-1227133513 * ((v4[1] - *v4) >> 4)) > 1
    && *(_DWORD *)(*v4 + 4) == 4
    && *(_DWORD *)(sfc::script::lua::Arguments::operator[]((int)this, 1u) + 4) == 4 )
  {
    v7 = *((_DWORD *)this + 1);
    v8 = *(sfc::script::lua::Value **)v7;
    v9 = (const char *)dword_99F764;
    if ( !(1227133513 * ((*(_DWORD *)(v7 + 4) - *(_DWORD *)v7) >> 4)) )
    {
      __ZSt24__stl_throw_out_of_rangePKc_veneer("vector");
      v8 = *(sfc::script::lua::Value **)v7;
    }
    String = (char *)sfc::script::lua::Value::getString(v8);
    ObjectManager::GetObjectByName((ObjectManager *)v24, v9, String, -1, nullptr, 0);
    v11 = ObjectHandle::operator GameObject *(v24);
    v12 = *((int **)this + 1);
    v13 = (float *)v11;
    v14 = *v12;
    v15 = (const char *)dword_99F764;
    if ( (unsigned int)(-1227133513 * ((v12[1] - *v12) >> 4)) <= 1 )
    {
      __ZSt24__stl_throw_out_of_rangePKc_veneer("vector");
      v14 = *v12;
    }
    v16 = (char *)sfc::script::lua::Value::getString((sfc::script::lua::Value *)(v14 + 112));
    ObjectManager::GetObjectByName((ObjectManager *)v23, v15, v16, -1, nullptr, 0);
    v17 = (float *)ObjectHandle::operator GameObject *(v23);
    v18 = v17 == nullptr;
    if ( v17 )
      v18 = v13 == nullptr;
    if ( v18 )
    {
      v19 = -1.0;
    }
    else
    {
      v20 = v13[88] - v17[88];
      v21 = v13[89] - v17[89];
      v22 = v13[90] - v17[90];
      v19 = (float)((float)(v20 * v20) + (float)(v21 * v21)) + (float)(v22 * v22);
    }
    sfc::script::lua::ReturnValues::pushNumber(a2, v19);
  }
}


// ===== 391670 GameObject::_SummonTriggerTrap(sfc::script::lua::Arguments const&,sfc::script::lua::ReturnValues &,void *) =====
void __fastcall GameObject::_SummonTriggerTrap(
        GameObject *this,
        const sfc::script::lua::Arguments *a2,
        sfc::script::lua::ReturnValues *a3,
        void *a4)
{
  _DWORD *v4; // r5
  sfc::script::lua::Value *v8; // r0
  int *v9; // r5
  int v10; // r3
  sfc::script::lua::Value *v11; // r0
  sfc::script::lua::Value *v12; // r0
  float v13; // r4
  sfc::script::lua::Value *v14; // r0
  float v15; // r5
  int v16; // r3
  GameObject *v17; // r4
  sfc::script::lua::Value *v18; // r0
  float v19; // r8
  sfc::script::lua::Value *v20; // r0
  float v21; // r5
  sfc::script::lua::Value *v22; // r0
  sfc::script::lua::Value *v23; // r0
  int UserData; // r0
  float v25[3]; // [sp+4h] [bp-Ch] BYREF

  v4 = *((_DWORD **)this + 1);
  if ( (unsigned int)(-1227133513 * ((v4[1] - *v4) >> 4)) > 1 && *(_DWORD *)(*v4 + 4) == 3 )
  {
    v8 = (sfc::script::lua::Value *)sfc::script::lua::Arguments::operator[](this, 0);
    if ( sfc::script::lua::Value::getUInteger(v8) < (unsigned int)Arrays::TriggerTraps::size )
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
        v11 = (sfc::script::lua::Value *)sfc::script::lua::Arguments::operator[](this, 1);
        if ( sfc::script::lua::Value::getUInteger(v11) < (unsigned int)Arrays::GameObjectDamager::size )
        {
          v12 = (sfc::script::lua::Value *)sfc::script::lua::Arguments::operator[](this, 0);
          v13 = COERCE_FLOAT(sfc::script::lua::Value::getNumber(v12));
          v14 = (sfc::script::lua::Value *)sfc::script::lua::Arguments::operator[](this, 1);
          v15 = COERCE_FLOAT(sfc::script::lua::Value::getNumber(v14));
          v17 = (GameObject *)TriggerTrap::Create(a3, (GameObject *)(int)v13, (int)v15, v16);
          if ( (unsigned int)(-1227133513 * ((*(_DWORD *)(*((_DWORD *)this + 1) + 4) - **((_DWORD **)this + 1)) >> 4)) > 2 )
          {
            if ( *(_DWORD *)(sfc::script::lua::Arguments::operator[](this, 2) + 4) == 7 )
            {
              v23 = (sfc::script::lua::Value *)sfc::script::lua::Arguments::operator[](this, 2);
              UserData = sfc::script::lua::Value::getUserData(v23);
              GameObject::SetPosition(v17, (float *)(UserData + 352), 1);
            }
            else if ( (unsigned int)(-1227133513
                                   * ((*(_DWORD *)(*((_DWORD *)this + 1) + 4) - **((_DWORD **)this + 1)) >> 4)) > 4
                   && *(_DWORD *)(sfc::script::lua::Arguments::operator[](this, 2) + 4) == 3
                   && *(_DWORD *)(sfc::script::lua::Arguments::operator[](this, 3) + 4) == 3
                   && *(_DWORD *)(sfc::script::lua::Arguments::operator[](this, 4) + 4) == 3 )
            {
              v18 = (sfc::script::lua::Value *)sfc::script::lua::Arguments::operator[](this, 2);
              v19 = COERCE_FLOAT(sfc::script::lua::Value::getNumber(v18));
              v20 = (sfc::script::lua::Value *)sfc::script::lua::Arguments::operator[](this, 3);
              v21 = COERCE_FLOAT(sfc::script::lua::Value::getNumber(v20));
              v22 = (sfc::script::lua::Value *)sfc::script::lua::Arguments::operator[](this, 4);
              LODWORD(v25[2]) = sfc::script::lua::Value::getNumber(v22);
              v25[0] = v19;
              v25[1] = v21;
              GameObject::SetPosition(v17, v25, 1);
            }
          }
          sfc::script::lua::ReturnValues::pushUserData(a2, v17);
        }
      }
    }
  }
}


// ===== 39193c GameObject::_Summon(sfc::script::lua::Arguments const&,sfc::script::lua::ReturnValues &,void *) =====
void __fastcall GameObject::_Summon(
        GameObject *this,
        const sfc::script::lua::Arguments *a2,
        sfc::script::lua::ReturnValues *a3,
        void *a4)
{
  _DWORD *v4; // r8
  sfc::script::lua::Value *v8; // r0
  int *v9; // r8
  int v10; // r3
  sfc::script::lua::Value *v11; // r0
  int Bool; // r0
  int v13; // r12
  int v14; // r1
  int v15; // r9
  int v16; // r0
  _DWORD *v17; // r2
  VisualObject *v18; // r0
  signed int v19; // r10
  float v20; // r2
  float v21; // r3
  sfc::script::lua::Value *v22; // r0
  Character *UInteger; // r11
  bool v24; // r3
  _DWORD *NPC; // r0
  _DWORD *v26; // r5
  RoomZone *v27; // r0
  int v28; // r3
  int v29; // r0
  int v30; // r3
  CMessaging *Instance; // r0
  int v32; // r10
  int v33; // r9
  int v34; // r6
  int v35; // r8
  int v36; // r5
  CMessaging *v37; // r4
  bool v38; // r2
  int Message; // r0
  sfc::script::lua::Value *v40; // r0
  sfc::script::lua::Value *v41; // r0
  float v42; // r10
  sfc::script::lua::Value *v43; // r0
  float v44; // r8
  sfc::script::lua::Value *v45; // r0
  float v46; // r2
  float v47; // r3
  sfc::script::lua::Value *v48; // r0
  float v49; // r12
  float v50; // r2
  float v51; // r11
  sfc::script::lua::Value *v52; // r0
  float v53; // r10
  sfc::script::lua::Value *v54; // r0
  float v55; // r10
  sfc::script::lua::Value *v56; // r0
  float v57; // r0
  sfc::script::lua::Value *v58; // r0
  float *UserData; // r0
  sfc::script::lua::Value *v60; // r0
  _DWORD *v61; // r0
  float v62; // [sp+14h] [bp-48h]
  float v63; // [sp+18h] [bp-44h]
  float v64; // [sp+1Ch] [bp-40h]
  float v65; // [sp+20h] [bp-3Ch]
  float v66; // [sp+24h] [bp-38h]
  _DWORD v67[3]; // [sp+28h] [bp-34h] BYREF
  float v68; // [sp+34h] [bp-28h] BYREF
  float v69; // [sp+38h] [bp-24h]
  float v70; // [sp+3Ch] [bp-20h]
  int v71; // [sp+40h] [bp-1Ch] BYREF
  int v72; // [sp+44h] [bp-18h]
  int v73; // [sp+48h] [bp-14h]
  float v74; // [sp+4Ch] [bp-10h] BYREF
  float v75; // [sp+50h] [bp-Ch]
  float v76; // [sp+54h] [bp-8h]

  v4 = *((_DWORD **)this + 1);
  if ( (unsigned int)(-1227133513 * ((v4[1] - *v4) >> 4)) > 1 && *(_DWORD *)(*v4 + 4) == 3 )
  {
    v8 = (sfc::script::lua::Value *)sfc::script::lua::Arguments::operator[](this, 0);
    if ( sfc::script::lua::Value::getUInteger(v8) < (unsigned int)Arrays::CharacterTable::size )
    {
      v9 = *((int **)this + 1);
      v10 = *v9;
      if ( (unsigned int)(-1227133513 * ((v9[1] - *v9) >> 4)) <= 1 )
      {
        __ZSt24__stl_throw_out_of_rangePKc_veneer("vector");
        v10 = *v9;
      }
      if ( *(_DWORD *)(v10 + 116) == 1 )
      {
        v11 = (sfc::script::lua::Value *)sfc::script::lua::Arguments::operator[](this, 1);
        Bool = sfc::script::lua::Value::getBool(v11);
        v13 = *((_DWORD *)a3 + 91);
        v14 = *((_DWORD *)a3 + 93);
        v15 = Bool;
        v16 = *((_DWORD *)a3 + 92);
        v17 = *((_DWORD **)this + 1);
        v76 = 0.0;
        v71 = v13;
        v72 = v16;
        v73 = v14;
        v74 = 0.0;
        v75 = 0.0;
        if ( (unsigned int)(-1227133513 * ((v17[1] - *v17) >> 4)) <= 2 )
        {
LABEL_9:
          v18 = *((VisualObject **)a3 + 182);
          if ( v18 && VisualObject::GetSpecificNode(v18, "summon_spot") )
          {
            glitch::scene::ISceneNode::getAbsolutePosition((glitch::scene::ISceneNode *)v67);
            v74 = *(float *)v67;
            v75 = *(float *)&v67[1];
            v76 = *(float *)&v67[2];
          }
          else
          {
            v46 = *((float *)a3 + 89);
            v47 = *((float *)a3 + 90);
            v74 = *((float *)a3 + 88);
            v75 = v46;
            v76 = v47;
          }
          if ( 1227133513 * ((*(_DWORD *)(*((_DWORD *)this + 1) + 4) - **((_DWORD **)this + 1)) >> 4) == -3
            && *(_DWORD *)(sfc::script::lua::Arguments::operator[](this, 2) + 4) == 3 )
          {
            v40 = (sfc::script::lua::Value *)sfc::script::lua::Arguments::operator[](this, 2);
            v19 = (int)COERCE_FLOAT(sfc::script::lua::Value::getNumber(v40));
          }
          else
          {
            v19 = 0;
          }
          goto LABEL_14;
        }
        if ( *(_DWORD *)(sfc::script::lua::Arguments::operator[](this, 2) + 4) == 7 )
        {
          v58 = (sfc::script::lua::Value *)sfc::script::lua::Arguments::operator[](this, 2);
          UserData = (float *)sfc::script::lua::Value::getUserData(v58);
          v74 = UserData[88];
          v19 = 0;
          v75 = UserData[89];
          v76 = UserData[90];
          v60 = (sfc::script::lua::Value *)sfc::script::lua::Arguments::operator[](this, 2);
          v61 = (_DWORD *)sfc::script::lua::Value::getUserData(v60);
          v71 = v61[91];
          v72 = v61[92];
          v73 = v61[93];
        }
        else
        {
          if ( (unsigned int)(-1227133513 * ((*(_DWORD *)(*((_DWORD *)this + 1) + 4) - **((_DWORD **)this + 1)) >> 4)) <= 4
            || *(_DWORD *)(sfc::script::lua::Arguments::operator[](this, 2) + 4) != 3
            || *(_DWORD *)(sfc::script::lua::Arguments::operator[](this, 3) + 4) != 3
            || *(_DWORD *)(sfc::script::lua::Arguments::operator[](this, 4) + 4) != 3 )
          {
            goto LABEL_9;
          }
          if ( (unsigned int)(-1227133513 * ((*(_DWORD *)(*((_DWORD *)this + 1) + 4) - **((_DWORD **)this + 1)) >> 4)) > 5
            && *(_DWORD *)(sfc::script::lua::Arguments::operator[](this, 5) + 4) == 1
            && (v48 = (sfc::script::lua::Value *)sfc::script::lua::Arguments::operator[](this, 5),
                sfc::script::lua::Value::getBool(v48)) )
          {
            v70 = 0.0;
            v68 = 0.0;
            v69 = 0.0;
            GameObject::GetLookAtVec(a3, &v68);
            v49 = *((float *)a3 + 88);
            v50 = *((float *)a3 + 89);
            v76 = *((float *)a3 + 90);
            v74 = v49;
            v75 = v50;
            v62 = *(float *)&dword_99F87C;
            v51 = *(float *)&dword_99F880;
            v63 = v70;
            v64 = v69;
            v65 = v68;
            v66 = *(float *)&Vec3f_K;
            v52 = (sfc::script::lua::Value *)sfc::script::lua::Arguments::operator[](this, 2);
            v53 = COERCE_FLOAT(sfc::script::lua::Value::getNumber(v52));
            v74 = v74 + (float)(v53 * (float)((float)(v62 * v63) - (float)(v51 * v64)));
            v75 = v75 + (float)(v53 * (float)((float)(v51 * v65) - (float)(v63 * v66)));
            v76 = v76 + (float)(v53 * (float)((float)(v64 * v66) - (float)(v62 * v65)));
            v54 = (sfc::script::lua::Value *)sfc::script::lua::Arguments::operator[](this, 3);
            v55 = COERCE_FLOAT(sfc::script::lua::Value::getNumber(v54));
            v74 = v74 + (float)(v55 * v68);
            v75 = v75 + (float)(v55 * v69);
            v76 = v76 + (float)(v55 * v70);
            v56 = (sfc::script::lua::Value *)sfc::script::lua::Arguments::operator[](this, 4);
            v57 = COERCE_FLOAT(sfc::script::lua::Value::getNumber(v56));
            v74 = v74 + (float)(v57 * *(float *)&Vec3f_K);
            v75 = v75 + (float)(v57 * *(float *)&dword_99F87C);
            v19 = 0;
            v76 = v76 + (float)(v57 * *(float *)&dword_99F880);
          }
          else
          {
            v41 = (sfc::script::lua::Value *)sfc::script::lua::Arguments::operator[](this, 2);
            v42 = COERCE_FLOAT(sfc::script::lua::Value::getNumber(v41));
            v43 = (sfc::script::lua::Value *)sfc::script::lua::Arguments::operator[](this, 3);
            v44 = COERCE_FLOAT(sfc::script::lua::Value::getNumber(v43));
            v45 = (sfc::script::lua::Value *)sfc::script::lua::Arguments::operator[](this, 4);
            v74 = v42;
            v75 = v44;
            v76 = COERCE_FLOAT(sfc::script::lua::Value::getNumber(v45));
            v19 = 0;
          }
        }
LABEL_14:
        if ( !PFWorld::GetFloorHeightAt(&Singleton<PFWorld>::s_inst, &v74, 0, 0, 0, 0, 0) )
        {
          v20 = *((float *)a3 + 89);
          v21 = *((float *)a3 + 90);
          v74 = *((float *)a3 + 88);
          v75 = v20;
          v76 = v21;
        }
        v22 = (sfc::script::lua::Value *)sfc::script::lua::Arguments::operator[](this, 0);
        UInteger = (Character *)sfc::script::lua::Value::getUInteger(v22);
        NPC = (_DWORD *)Character::CreateNPC(UInteger, 0, nullptr, v24);
        v26 = NPC;
        if ( NPC )
        {
          Character::SetInitialPosition(NPC, &v74);
          GameObject::SetPosition((GameObject *)v26);
          GameObject::SetRotation(v26, &v71);
          *((_BYTE *)v26 + 5348) = 1;
          v27 = *((RoomZone **)a3 + 189);
          if ( !v27 || !RoomZone::AddInitialObject(v27, (GameObject *)v26) )
          {
            ObjectManager::AddNoRoomObject((ObjectManager *)dword_99F764, (GameObject *)v26);
            *((_BYTE *)v26 + 751) = 1;
            GameObject::ZoneEntered((GameObject *)v26);
          }
          if ( v15 )
            CharStateMachine::SM_SetSpawnState((CharStateMachine *)(v26 + 319), 0, 0);
          sfc::script::lua::ReturnValues::pushUserData(a2, (sfc::script::lua::UserData *)v26);
          if ( v19 > 0 )
          {
            v28 = v26[182];
            if ( v28 )
              RootSceneNode::ForwardAnim(*(RootSceneNode **)(v28 + 8), v19);
          }
          if ( *(_BYTE *)(GetOnline() + 5) )
          {
            v29 = ObjectManager::AssignObjectNetworkId((ObjectManager *)dword_99F764, (ObjectBase *)v26);
            v30 = *((_DWORD *)a3 + 68);
            *((_BYTE *)v26 + 280) = 1;
            v26[68] = v30;
            v26[69] = 0;
            Instance = (CMessaging *)OnlineSingleton<OnlineGameState>::GetInstance(v29);
            if ( (unsigned int)(*((_DWORD *)Instance + 13) - 3) <= 1 )
            {
              v32 = *((_DWORD *)a3 + 66);
              v33 = v26[66];
              v34 = v26[90];
              v35 = v26[88];
              v36 = v26[89];
              v37 = (CMessaging *)CMessaging::Get(Instance);
              Message = CMessage::CreateMessage((CMessage *)"CMsgSpawnObject", (_BYTE *)&dword_0 + 1, v38);
              *(_DWORD *)(Message + 80) = v33;
              *(_DWORD *)(Message + 84) = UInteger;
              *(_DWORD *)(Message + 88) = v32;
              *(_DWORD *)(Message + 92) = v35;
              *(_DWORD *)(Message + 96) = v36;
              *(_DWORD *)(Message + 100) = v34;
              *(_BYTE *)(Message + 104) = 0;
              CMessaging::SendMsg(v37, (CMessage *)Message);
            }
          }
        }
      }
    }
  }
}


// ===== 39212c GameObject::_PlaySound3D(sfc::script::lua::Arguments const&,sfc::script::lua::ReturnValues &,void *) =====
int __fastcall GameObject::_PlaySound3D(
        GameObject *this,
        const sfc::script::lua::Arguments *a2,
        sfc::script::lua::ReturnValues *a3,
        void *a4)
{
  int v4; // r4
  sfc::script::lua::Value *v7; // r0
  const char *String; // r5
  int v9; // r4
  int v10; // r8
  int v11; // r9
  _DWORD *v12; // r2
  int v13; // lr
  int v14; // r5
  int v15; // r4
  int v16; // r1
  float *v17; // r2
  int v18; // r0
  int v20; // r5
  int v21; // lr
  int *v22; // r4
  int v23; // r0
  int Number; // r0
  int *v25; // r4
  int v26; // r0
  int v27; // r0
  int *v28; // r7
  int v29; // r0
  _DWORD v30[3]; // [sp+10h] [bp-18h] BYREF
  _DWORD v31[3]; // [sp+1Ch] [bp-Ch] BYREF

  v4 = *((_DWORD *)this + 1);
  v7 = *(sfc::script::lua::Value **)v4;
  if ( !(1227133513 * ((*(_DWORD *)(v4 + 4) - *(_DWORD *)v4) >> 4)) )
  {
    __ZSt24__stl_throw_out_of_rangePKc_veneer("vector");
    v7 = *(sfc::script::lua::Value **)v4;
  }
  String = sfc::script::lua::Value::getString(v7);
  v9 = Arrays::Sounds::size;
  if ( Arrays::Sounds::size )
  {
    v10 = 0;
    v11 = Arrays::Sounds::m_memberNames;
    while ( LC_API_STRCMP_0(String, *(const char **)(v11 + 4 * v10)) )
    {
      if ( ++v10 == v9 )
        goto LABEL_12;
    }
  }
  else
  {
LABEL_12:
    v10 = -1;
  }
  v12 = *((_DWORD **)this + 1);
  if ( (unsigned int)(-1227133513 * ((v12[1] - *v12) >> 4)) <= 3 )
  {
    v20 = *((_DWORD *)a3 + 89);
    v21 = *((_DWORD *)a3 + 90);
    v18 = VoxSoundManager::s_instance;
    v16 = v10;
    v17 = (float *)v30;
    v30[0] = *((_DWORD *)a3 + 88);
    v30[1] = v20;
    v30[2] = v21;
  }
  else
  {
    if ( *(_DWORD *)(*v12 + 116) == 3
      && *(_DWORD *)(sfc::script::lua::Arguments::operator[]((int)this, 2u) + 4) == 3
      && *(_DWORD *)(sfc::script::lua::Arguments::operator[]((int)this, 3u) + 4) == 3 )
    {
      v22 = *((int **)this + 1);
      v23 = *v22;
      if ( (unsigned int)(-1227133513 * ((v22[1] - *v22) >> 4)) <= 1 )
      {
        __ZSt24__stl_throw_out_of_rangePKc_veneer("vector");
        v23 = *v22;
      }
      Number = sfc::script::lua::Value::getNumber((sfc::script::lua::Value *)(v23 + 112));
      v25 = *((int **)this + 1);
      v14 = Number;
      v26 = *v25;
      if ( (unsigned int)(-1227133513 * ((v25[1] - *v25) >> 4)) <= 2 )
      {
        __ZSt24__stl_throw_out_of_rangePKc_veneer("vector");
        v26 = *v25;
      }
      v27 = sfc::script::lua::Value::getNumber((sfc::script::lua::Value *)(v26 + 224));
      v28 = *((int **)this + 1);
      v15 = v27;
      v29 = *v28;
      if ( (unsigned int)(-1227133513 * ((v28[1] - *v28) >> 4)) <= 3 )
      {
        __ZSt24__stl_throw_out_of_rangePKc_veneer("vector");
        v29 = *v28;
      }
      v13 = sfc::script::lua::Value::getNumber((sfc::script::lua::Value *)(v29 + 336));
    }
    else
    {
      v13 = *((_DWORD *)a3 + 90);
      v14 = *((_DWORD *)a3 + 88);
      v15 = *((_DWORD *)a3 + 89);
    }
    v16 = v10;
    v17 = (float *)v31;
    v18 = VoxSoundManager::s_instance;
    v31[0] = v14;
    v31[1] = v15;
    v31[2] = v13;
  }
  return VoxSoundManager::Play3D(v18, v16, v17, 0, COERCE_FLOAT(1), -1.0, -1.0);
}


// ===== 3923cc GameObject::_PlayFX(sfc::script::lua::Arguments const&,sfc::script::lua::ReturnValues &,void *) =====
unsigned int __fastcall GameObject::_PlayFX(
        unsigned int this,
        const sfc::script::lua::Arguments *a2,
        sfc::script::lua::ReturnValues *a3,
        void *a4)
{
  _DWORD *v4; // r3
  unsigned int v5; // r5
  sfc::script::lua::Value *v6; // r0
  sfc::script::lua::ReturnValues *v7; // r2
  int *v8; // r6
  int v9; // r1
  int v10; // r1
  int v11; // r3
  int v12; // r5
  sfc::script::lua::Value *v13; // r0
  float v14; // r0
  sfc::script::lua::Value *v15; // r0
  int UInteger; // r0
  int v17; // r0
  int v18; // r6
  sfc::script::lua::Value *v19; // r0
  sfc::script::lua::Value *v20; // r0
  sfc::script::lua::Value *v21; // r0
  sfc::script::lua::ReturnValues *v23; // [sp+Ch] [bp-14h]
  int Number; // [sp+14h] [bp-Ch] BYREF
  int v25; // [sp+18h] [bp-8h]
  int v26; // [sp+1Ch] [bp-4h]

  v4 = *(_DWORD **)(this + 4);
  v5 = this;
  if ( 1227133513 * ((v4[1] - *v4) >> 4) )
  {
    if ( *(_DWORD *)(*v4 + 4) == 3 )
    {
      v6 = (sfc::script::lua::Value *)sfc::script::lua::Arguments::operator[](this, 0);
      this = sfc::script::lua::Value::getUInteger(v6);
      v7 = a3;
      if ( this < Arrays::AnimatedEffectTable::size )
      {
        v8 = *(int **)(v5 + 4);
        if ( (unsigned int)(-1227133513 * ((v8[1] - *v8) >> 4)) <= 3 )
        {
          v15 = (sfc::script::lua::Value *)sfc::script::lua::Arguments::operator[](v5, 0);
          UInteger = sfc::script::lua::Value::getUInteger(v15);
          return VisualFXManager::PlayAnimFXSet(&Singleton<VisualFXManager>::s_inst, UInteger, a3, 0);
        }
        else
        {
          v26 = 0;
          Number = 0;
          v25 = 0;
          v9 = *v8;
          if ( (unsigned int)(-1227133513 * ((v8[1] - *v8) >> 4)) <= 1 )
          {
            __ZSt24__stl_throw_out_of_rangePKc_veneer("vector");
            v9 = *v8;
            v7 = a3;
          }
          if ( *(_DWORD *)(v9 + 116) == 3
            && (v23 = v7, v17 = sfc::script::lua::Arguments::operator[](v5, 2), v7 = v23, *(_DWORD *)(v17 + 4) == 3)
            && (v18 = *(_DWORD *)(sfc::script::lua::Arguments::operator[](v5, 3) + 4), v7 = v23, v18 == 3) )
          {
            v19 = (sfc::script::lua::Value *)sfc::script::lua::Arguments::operator[](v5, 1);
            Number = sfc::script::lua::Value::getNumber(v19);
            v20 = (sfc::script::lua::Value *)sfc::script::lua::Arguments::operator[](v5, 2);
            v25 = sfc::script::lua::Value::getNumber(v20);
            v21 = (sfc::script::lua::Value *)sfc::script::lua::Arguments::operator[](v5, 3);
            v26 = sfc::script::lua::Value::getNumber(v21);
          }
          else
          {
            v10 = *((_DWORD *)v7 + 88);
            v11 = *((_DWORD *)v7 + 89);
            v26 = *((_DWORD *)v7 + 90);
            Number = v10;
            v25 = v11;
          }
          v12 = *(_DWORD *)(v5 + 4);
          v13 = *(sfc::script::lua::Value **)v12;
          if ( !(1227133513 * ((*(_DWORD *)(v12 + 4) - *(_DWORD *)v12) >> 4)) )
          {
            __ZSt24__stl_throw_out_of_rangePKc_veneer("vector");
            v13 = *(sfc::script::lua::Value **)v12;
          }
          v14 = COERCE_FLOAT(sfc::script::lua::Value::getNumber(v13));
          return VisualFXManager::PlayAnimFXSet(
                   (int)&Singleton<VisualFXManager>::s_inst,
                   (unsigned int)v14,
                   &Number,
                   0,
                   0);
        }
      }
    }
  }
  return this;
}


// ===== 392620 GameObject::_GrabFX(sfc::script::lua::Arguments const&,sfc::script::lua::ReturnValues &,void *) =====
unsigned int __fastcall GameObject::_GrabFX(
        unsigned int this,
        const sfc::script::lua::Arguments *a2,
        sfc::script::lua::ReturnValues *a3,
        void *a4)
{
  int *v4; // r3
  int v7; // r1
  int v8; // r3
  unsigned int v9; // r5
  sfc::script::lua::Value *v10; // r0
  int v11; // r5
  sfc::script::lua::Value *v12; // r0
  float v13; // r0
  AnimatedFX *v14; // r1

  v4 = *(int **)(this + 4);
  v7 = v4[1];
  v8 = *v4;
  v9 = this;
  if ( 1227133513 * ((v7 - v8) >> 4) )
  {
    if ( *(_DWORD *)(v8 + 4) == 3 )
    {
      v10 = (sfc::script::lua::Value *)sfc::script::lua::Arguments::operator[](this, 0);
      this = sfc::script::lua::Value::getUInteger(v10);
      if ( this < Arrays::AnimatedEffectTable::size )
      {
        v11 = *(_DWORD *)(v9 + 4);
        v12 = *(sfc::script::lua::Value **)v11;
        if ( !(1227133513 * ((*(_DWORD *)(v11 + 4) - *(_DWORD *)v11) >> 4)) )
        {
          __ZSt24__stl_throw_out_of_rangePKc_veneer("vector");
          v12 = *(sfc::script::lua::Value **)v11;
        }
        v13 = COERCE_FLOAT(sfc::script::lua::Value::getNumber(v12));
        v14 = VisualFXManager::GrabAnimFX((VisualFXManager *)&Singleton<VisualFXManager>::s_inst, (unsigned int)v13, a3);
        return sfc::script::lua::ReturnValues::pushPointer(a2, v14);
      }
    }
  }
  return this;
}


// ===== 392714 GameObject::_RegisterSummon(sfc::script::lua::Arguments const&,sfc::script::lua::ReturnValues &,void *) =====
unsigned int __fastcall GameObject::_RegisterSummon(
        unsigned int this,
        const sfc::script::lua::Arguments *a2,
        sfc::script::lua::ReturnValues *a3,
        void *a4)
{
  _DWORD *v4; // r2
  int v5; // r5
  sfc::script::lua::Value *v6; // r0
  int v7; // r4
  sfc::script::lua::Value *v8; // r0
  Character *v9; // r4
  int v10; // r3
  unsigned int v11; // r2
  unsigned int UInteger; // r1
  sfc::script::lua::Value *v13; // r0

  v4 = *(_DWORD **)(this + 4);
  v5 = this;
  if ( 1227133513 * ((v4[1] - *v4) >> 4) )
  {
    if ( *(_DWORD *)(*v4 + 4) == 3 )
    {
      v6 = (sfc::script::lua::Value *)sfc::script::lua::Arguments::operator[](this, 0);
      this = sfc::script::lua::Value::getUInteger(v6);
      if ( this < Arrays::CharacterTable::size )
      {
        v7 = *(_DWORD *)(v5 + 4);
        v8 = *(sfc::script::lua::Value **)v7;
        if ( !(1227133513 * ((*(_DWORD *)(v7 + 4) - *(_DWORD *)v7) >> 4)) )
        {
          __ZSt24__stl_throw_out_of_rangePKc_veneer("vector");
          v8 = *(sfc::script::lua::Value **)v7;
        }
        v9 = (Character *)(int)COERCE_FLOAT(sfc::script::lua::Value::getNumber(v8));
        v10 = (*(_DWORD *)(*(_DWORD *)(v5 + 4) + 4) - **(_DWORD **)(v5 + 4)) >> 4;
        v11 = 153391689 * v10;
        if ( (unsigned int)(-1227133513 * v10) > 1
          && *(_DWORD *)(sfc::script::lua::Arguments::operator[](v5, 1u) + 4) == 3 )
        {
          v13 = (sfc::script::lua::Value *)sfc::script::lua::Arguments::operator[](v5, 1u);
          UInteger = sfc::script::lua::Value::getUInteger(v13);
        }
        else
        {
          UInteger = 1;
        }
        return Character::AddCharOIDToCache(v9, UInteger, v11);
      }
    }
  }
  return this;
}


// ===== 392848 GameObject::_GetObjectByName(sfc::script::lua::Arguments const&,sfc::script::lua::ReturnValues &,void *) =====
void __fastcall GameObject::_GetObjectByName(
        GameObject *this,
        const sfc::script::lua::Arguments *a2,
        sfc::script::lua::ReturnValues *a3,
        void *a4)
{
  int v4; // r2
  sfc::script::lua::Value *v6; // r0
  const char *v7; // r6
  char *String; // r0
  char *v9; // r0
  char *v10[3]; // [sp+Ch] [bp-Ch] BYREF

  v4 = *((_DWORD *)this + 1);
  v6 = *(sfc::script::lua::Value **)v4;
  if ( 1227133513 * ((*(_DWORD *)(v4 + 4) - *(_DWORD *)v4) >> 4) == -1 && *((_DWORD *)v6 + 1) == 4 )
  {
    v7 = (const char *)dword_99F764;
    String = (char *)sfc::script::lua::Value::getString(v6);
    ObjectManager::GetObjectByName((ObjectManager *)v10, v7, String, -1, nullptr, 0);
    v9 = ObjectHandle::operator GameObject *(v10);
    sfc::script::lua::ReturnValues::pushUserData(a2, (sfc::script::lua::UserData *)v9);
  }
}


// ===== 3928f0 GameObject::_SetPosition(sfc::script::lua::Arguments const&,sfc::script::lua::ReturnValues &,void *) =====
char *__fastcall GameObject::_SetPosition(
        char *this,
        const sfc::script::lua::Arguments *a2,
        sfc::script::lua::ReturnValues *a3,
        void *a4)
{
  int *v4; // r3
  int v6; // r1
  int v7; // r6
  int v8; // r3
  int v9; // r3
  sfc::script::lua::Value *v10; // r0
  char *v11; // r5
  sfc::script::lua::Value *v12; // r0
  int Number; // r7
  sfc::script::lua::Value *v14; // r0
  int v15; // r5
  sfc::script::lua::Value *v16; // r0
  int v17; // r3
  int v18; // r1
  int v19; // r0
  const char *v20; // r6
  sfc::script::lua::Value *v21; // r0
  char *String; // r0
  int v23; // [sp+8h] [bp-1Ch] BYREF
  int v24; // [sp+Ch] [bp-18h]
  int v25; // [sp+10h] [bp-14h]
  char *v26[4]; // [sp+14h] [bp-10h] BYREF

  v4 = *((int **)this + 1);
  v6 = *v4;
  v7 = (int)this;
  v8 = -1227133513 * ((v4[1] - *v4) >> 4);
  if ( v8 != 1 )
  {
    if ( v8 != 3 )
      return this;
    if ( *(_DWORD *)(v6 + 4) != 3 )
      return this;
    this = (char *)sfc::script::lua::Arguments::operator[]((int)this, 1u);
    if ( *((_DWORD *)this + 1) != 3 )
      return this;
    this = (char *)sfc::script::lua::Arguments::operator[](v7, 2u);
    if ( *((_DWORD *)this + 1) != 3 )
      return this;
    v9 = -1227133513 * ((*(_DWORD *)(*(_DWORD *)(v7 + 4) + 4) - **(_DWORD **)(v7 + 4)) >> 4);
    goto LABEL_16;
  }
  if ( *(_DWORD *)(v6 + 4) != 4 )
  {
    this = (char *)sfc::script::lua::Arguments::operator[]((int)this, 0);
    if ( *((_DWORD *)this + 1) == 7 )
    {
      v9 = -1227133513 * ((*(_DWORD *)(*(_DWORD *)(v7 + 4) + 4) - **(_DWORD **)(v7 + 4)) >> 4);
    }
    else
    {
      this = (char *)sfc::script::lua::Arguments::operator[](v7, 0);
      if ( *((_DWORD *)this + 1) != 2 )
        return this;
      v9 = -1227133513 * ((*(_DWORD *)(*(_DWORD *)(v7 + 4) + 4) - **(_DWORD **)(v7 + 4)) >> 4);
    }
LABEL_16:
    if ( v9 != 1 )
    {
      if ( v9 == 3 )
      {
        v12 = (sfc::script::lua::Value *)sfc::script::lua::Arguments::operator[](v7, 0);
        Number = sfc::script::lua::Value::getNumber(v12);
        v14 = (sfc::script::lua::Value *)sfc::script::lua::Arguments::operator[](v7, 1u);
        v15 = sfc::script::lua::Value::getNumber(v14);
        v16 = (sfc::script::lua::Value *)sfc::script::lua::Arguments::operator[](v7, 2u);
        v25 = sfc::script::lua::Value::getNumber(v16);
        v23 = Number;
        v24 = v15;
        GameObject::SetPosition(a3, (float *)&v23, 1);
        v17 = v25;
        v18 = v23;
        *((_DWORD *)a3 + 121) = v24;
        *((_DWORD *)a3 + 120) = v18;
        *((_DWORD *)a3 + 122) = v17;
        return (char *)GameObject::ForceUpdatePosition(a3);
      }
      return this;
    }
  }
  if ( *(_DWORD *)(sfc::script::lua::Arguments::operator[](v7, 0) + 4) == 4 )
  {
    v19 = v7;
    v20 = (const char *)dword_99F764;
    v21 = (sfc::script::lua::Value *)sfc::script::lua::Arguments::operator[](v19, 0);
    String = (char *)sfc::script::lua::Value::getString(v21);
    ObjectManager::GetObjectByName((ObjectManager *)v26, v20, String, -1, nullptr, 0);
    this = ObjectHandle::operator GameObject *(v26);
  }
  else
  {
    v10 = (sfc::script::lua::Value *)sfc::script::lua::Arguments::operator[](v7, 0);
    this = (char *)sfc::script::lua::Value::getUserData(v10);
  }
  v11 = this;
  if ( this )
  {
    GameObject::SetPosition(a3, (float *)this + 88, 1);
    *((_DWORD *)a3 + 120) = *((_DWORD *)v11 + 88);
    *((_DWORD *)a3 + 121) = *((_DWORD *)v11 + 89);
    *((_DWORD *)a3 + 122) = *((_DWORD *)v11 + 90);
    return (char *)GameObject::ForceUpdatePosition(a3);
  }
  return this;
}


// ===== 392b80 GameObject::_TargetListSearchRect(sfc::script::lua::Arguments const&,sfc::script::lua::ReturnValues &,void *) =====
void __fastcall GameObject::_TargetListSearchRect(
        GameObject *this,
        const sfc::script::lua::Arguments *a2,
        sfc::script::lua::ReturnValues *a3,
        void *a4)
{
  _DWORD *v4; // r7
  int *v7; // r7
  int v8; // r2
  unsigned int v9; // r7
  int *v10; // r2
  float v11; // r3
  float v12; // r1
  int v13; // r8
  int v14; // r10
  unsigned int v15; // r3
  int v16; // r1
  GameObject *v17; // r0
  sfc::script::lua::Value *v18; // r0
  int v19; // r4
  sfc::script::lua::Value *v20; // r0
  int v21; // r0
  float v22; // r12
  sfc::script::lua::Value *v23; // r0
  const char *String; // r0
  ObjectSearcher::TargetList *v25; // r6
  int ResultsBackup; // r4
  sfc::script::lua::Value *v27; // r0
  int Number; // r7
  GameObject *v29; // r0
  sfc::script::lua::Value *v30; // r0
  int v31; // r0
  float v32; // r2
  sfc::script::lua::Value *v33; // r0
  float *UserData; // r0
  int *v35; // r3
  int v36; // r2
  int v37; // r3
  sfc::script::lua::Value *v38; // r0
  sfc::script::lua::Value *v39; // r0
  sfc::script::lua::Value *v40; // r0
  float v41; // r8
  sfc::script::lua::Value *v42; // r0
  float v43; // r7
  sfc::script::lua::Value *v44; // r0
  float v45; // r0
  int *v46; // r3
  sfc::script::lua::Value *v47; // r0
  float v48; // r12
  float v49; // r2
  float v50; // r11
  float v51; // r10
  float v52; // r9
  sfc::script::lua::Value *v53; // r0
  float v54; // r8
  sfc::script::lua::Value *v55; // r0
  float v56; // r8
  sfc::script::lua::Value *v57; // r0
  float v58; // r8
  float v59; // [sp+Ch] [bp-30h]
  float v60; // [sp+10h] [bp-2Ch]
  float v61; // [sp+14h] [bp-28h]
  float v62; // [sp+18h] [bp-24h] BYREF
  int v63; // [sp+1Ch] [bp-20h]
  float v64; // [sp+20h] [bp-1Ch]
  int v65; // [sp+24h] [bp-18h]
  int v66; // [sp+28h] [bp-14h]
  float v67; // [sp+2Ch] [bp-10h] BYREF
  float v68; // [sp+30h] [bp-Ch]
  float v69; // [sp+34h] [bp-8h]

  v4 = *((_DWORD **)this + 1);
  if ( (unsigned int)(-1227133513 * ((v4[1] - *v4) >> 4)) > 1 && *(_DWORD *)(*v4 + 4) == 3 )
  {
    v7 = *((int **)this + 1);
    v8 = *v7;
    if ( (unsigned int)(-1227133513 * ((v7[1] - *v7) >> 4)) <= 1 )
    {
      __ZSt24__stl_throw_out_of_rangePKc_veneer("vector");
      v8 = *v7;
    }
    v9 = *(_DWORD *)(v8 + 116);
    if ( v9 == 3 )
    {
      v10 = *((int **)this + 1);
      v11 = *((float *)a3 + 90);
      v12 = *((float *)a3 + 89);
      v13 = *v10;
      v14 = v10[1];
      v67 = *((float *)a3 + 88);
      v68 = v12;
      v69 = v11;
      v15 = -1227133513 * ((v10[1] - *v10) >> 4);
      if ( v15 <= 2 )
      {
LABEL_8:
        v9 = ~(1227133513 * ((v14 - v13) >> 4));
        goto LABEL_9;
      }
      if ( *(_DWORD *)(sfc::script::lua::Arguments::operator[](this, 2) + 4) == 7 )
      {
        v33 = (sfc::script::lua::Value *)sfc::script::lua::Arguments::operator[](this, 2);
        UserData = (float *)sfc::script::lua::Value::getUserData(v33);
        v35 = *((int **)this + 1);
        v67 = UserData[88];
        v68 = UserData[89];
        v69 = UserData[90];
      }
      else
      {
        v15 = -1227133513 * ((*(_DWORD *)(*((_DWORD *)this + 1) + 4) - **((_DWORD **)this + 1)) >> 4);
        if ( v15 <= 4 )
          goto LABEL_8;
        if ( *(_DWORD *)(sfc::script::lua::Arguments::operator[](this, 2) + 4) != 3
          || *(_DWORD *)(sfc::script::lua::Arguments::operator[](this, 3) + 4) != 3 )
        {
          v15 = -1227133513 * ((*(_DWORD *)(*((_DWORD *)this + 1) + 4) - **((_DWORD **)this + 1)) >> 4);
          goto LABEL_8;
        }
        if ( *(_DWORD *)(sfc::script::lua::Arguments::operator[](this, 4) + 4) != 3 )
        {
          v15 = -1227133513 * ((*(_DWORD *)(*((_DWORD *)this + 1) + 4) - **((_DWORD **)this + 1)) >> 4);
          goto LABEL_8;
        }
        if ( (unsigned int)(-1227133513 * ((*(_DWORD *)(*((_DWORD *)this + 1) + 4) - **((_DWORD **)this + 1)) >> 4)) <= 5
          || *(_DWORD *)(sfc::script::lua::Arguments::operator[](this, 5) + 4) != 1
          || (v47 = (sfc::script::lua::Value *)sfc::script::lua::Arguments::operator[](this, 5),
              !sfc::script::lua::Value::getBool(v47)) )
        {
          v40 = (sfc::script::lua::Value *)sfc::script::lua::Arguments::operator[](this, 2);
          v41 = COERCE_FLOAT(sfc::script::lua::Value::getNumber(v40));
          v42 = (sfc::script::lua::Value *)sfc::script::lua::Arguments::operator[](this, 3);
          v43 = COERCE_FLOAT(sfc::script::lua::Value::getNumber(v42));
          v44 = (sfc::script::lua::Value *)sfc::script::lua::Arguments::operator[](this, 4);
          v45 = COERCE_FLOAT(sfc::script::lua::Value::getNumber(v44));
          v46 = *((int **)this + 1);
          v68 = v43;
          v67 = v41;
          v69 = v45;
          v36 = v46[1];
          v9 = 6;
          v37 = *v46;
          goto LABEL_27;
        }
        v64 = 0.0;
        v62 = 0.0;
        *(float *)&v63 = 0.0;
        GameObject::GetLookAtVec((int)a3, &v62);
        v48 = *((float *)a3 + 88);
        v49 = *((float *)a3 + 89);
        v69 = *((float *)a3 + 90);
        v67 = v48;
        v68 = v49;
        v59 = *(float *)&dword_99F87C;
        v50 = *(float *)&dword_99F880;
        v51 = *(float *)&Vec3f_K;
        v60 = *(float *)&v63;
        v52 = v64;
        v61 = v62;
        v53 = (sfc::script::lua::Value *)sfc::script::lua::Arguments::operator[](this, 2);
        v54 = COERCE_FLOAT(sfc::script::lua::Value::getNumber(v53));
        v67 = v67 + (float)(v54 * (float)((float)(v59 * v52) - (float)(v50 * v60)));
        v68 = v68 + (float)(v54 * (float)((float)(v50 * v61) - (float)(v52 * v51)));
        v69 = v69 + (float)(v54 * (float)((float)(v60 * v51) - (float)(v59 * v61)));
        v55 = (sfc::script::lua::Value *)sfc::script::lua::Arguments::operator[](this, 3);
        v56 = COERCE_FLOAT(sfc::script::lua::Value::getNumber(v55));
        v67 = v67 + (float)(v56 * v62);
        v68 = v68 + (float)(v56 * *(float *)&v63);
        v69 = v69 + (float)(v56 * v64);
        v57 = (sfc::script::lua::Value *)sfc::script::lua::Arguments::operator[](this, 4);
        v58 = COERCE_FLOAT(sfc::script::lua::Value::getNumber(v57));
        v67 = v67 + (float)(v58 * *(float *)&Vec3f_K);
        v68 = v68 + (float)(v58 * *(float *)&dword_99F87C);
        v9 = 6;
        v35 = *((int **)this + 1);
        v69 = v69 + (float)(v58 * *(float *)&dword_99F880);
      }
      v36 = v35[1];
      v37 = *v35;
LABEL_27:
      v15 = -1227133513 * ((v36 - v37) >> 4);
LABEL_9:
      if ( v9 >= v15 )
        goto LABEL_10;
      if ( *(_DWORD *)(sfc::script::lua::Arguments::operator[](this, v9) + 4) == 1
        && (v38 = (sfc::script::lua::Value *)sfc::script::lua::Arguments::operator[](this, v9),
            sfc::script::lua::Value::getBool(v38)) )
      {
        v25 = (sfc::script::lua::ReturnValues *)((char *)a3 + 772);
        ResultsBackup = ObjectSearcher::TargetList::GetResultsBackup(v25, "default");
        v39 = (sfc::script::lua::Value *)sfc::script::lua::Arguments::operator[](this, 0);
        Number = sfc::script::lua::Value::getNumber(v39);
        v29 = this;
      }
      else
      {
        if ( v9 >= -1227133513 * ((*(_DWORD *)(*((_DWORD *)this + 1) + 4) - **((_DWORD **)this + 1)) >> 4)
          || *(_DWORD *)(sfc::script::lua::Arguments::operator[](this, v9) + 4) != 4 )
        {
LABEL_10:
          if ( (*((_DWORD *)a3 + 206) & 0x80) != 0 )
          {
            v16 = 0;
            v17 = this;
            v62 = COERCE_FLOAT(off_964848);
            v63 = dword_99F76C;
            v64 = 0.0;
          }
          else
          {
            v16 = *((_DWORD *)a3 + 206) & 0x80;
            v17 = this;
            if ( *((_DWORD *)a3 + 207) == 2 )
            {
              v62 = COERCE_FLOAT(off_964870);
              v63 = dword_99F764 + 96;
              v32 = *(float *)(dword_99F764 + 96);
              v65 = dword_99F764 + 96;
              v64 = v32;
            }
            else
            {
              v62 = COERCE_FLOAT(off_969D20);
              v63 = dword_99F764 + 128;
              v22 = *(float *)(dword_99F764 + 128);
              v65 = dword_99F764 + 128;
              v66 = 0;
              v64 = v22;
            }
          }
          v18 = (sfc::script::lua::Value *)sfc::script::lua::Arguments::operator[](v17, v16);
          v19 = sfc::script::lua::Value::getNumber(v18);
          v20 = (sfc::script::lua::Value *)sfc::script::lua::Arguments::operator[](this, 1);
          v21 = sfc::script::lua::Value::getNumber(v20);
          ObjectSearcher::TargetList::SearchRect((char *)a3 + 772, &v67, v19, v21, &v62);
          return;
        }
        v23 = (sfc::script::lua::Value *)sfc::script::lua::Arguments::operator[](this, v9);
        String = (const char *)sfc::script::lua::Value::getString(v23);
        v25 = (sfc::script::lua::ReturnValues *)((char *)a3 + 772);
        ResultsBackup = ObjectSearcher::TargetList::GetResultsBackup(v25, String);
        v27 = (sfc::script::lua::Value *)sfc::script::lua::Arguments::operator[](this, 0);
        Number = sfc::script::lua::Value::getNumber(v27);
        v29 = this;
      }
      v30 = (sfc::script::lua::Value *)sfc::script::lua::Arguments::operator[](v29, 1);
      v31 = sfc::script::lua::Value::getNumber(v30);
      ObjectSearcher::TargetList::SearchRect(v25, &v67, Number, v31, ResultsBackup);
    }
  }
}


// ===== 393310 GameObject::_Rand(sfc::script::lua::Arguments const&,sfc::script::lua::ReturnValues &,void *) =====
int __fastcall GameObject::_Rand(
        int this,
        const sfc::script::lua::Arguments *a2,
        sfc::script::lua::ReturnValues *a3,
        void *a4)
{
  int *v4; // r3
  int v7; // r1
  int v8; // r3
  int v9; // r5
  int v10; // r1
  unsigned int UInteger; // r5
  int v12; // r8
  int v13; // r1
  bool v14; // r2
  int v15; // r1
  unsigned int Random; // r0
  sfc::script::lua::Value *v17; // r0
  sfc::script::lua::Value *v18; // r0
  sfc::script::lua::Value *v19; // r0

  v4 = *(int **)(this + 4);
  v7 = v4[1];
  v8 = *v4;
  v9 = this;
  v10 = -1227133513 * ((v7 - v8) >> 4);
  if ( v10 == 1 )
  {
    if ( *(_DWORD *)(v8 + 4) != 3 )
      return this;
    v19 = (sfc::script::lua::Value *)sfc::script::lua::Arguments::operator[](this, 0);
    v12 = 0;
    UInteger = sfc::script::lua::Value::getUInteger(v19);
    goto LABEL_5;
  }
  if ( v10 != 2 )
  {
    UInteger = 100;
    v12 = 0;
    goto LABEL_5;
  }
  if ( *(_DWORD *)(v8 + 4) == 3 )
  {
    this = sfc::script::lua::Arguments::operator[](this, 1);
    if ( *(_DWORD *)(this + 4) == 3 )
    {
      v17 = (sfc::script::lua::Value *)sfc::script::lua::Arguments::operator[](v9, 0);
      v12 = sfc::script::lua::Value::getUInteger(v17);
      v18 = (sfc::script::lua::Value *)sfc::script::lua::Arguments::operator[](v9, 1);
      UInteger = sfc::script::lua::Value::getUInteger(v18) - v12;
LABEL_5:
      GetOnline();
      if ( *(_BYTE *)(GetOnline() + 5) )
      {
        Random::s_seed = *((_DWORD *)a3 + 63);
        Random = Random::GetRandom(UInteger, v13, 148);
        this = sfc::script::lua::ReturnValues::pushInteger(a2, Random + v12);
        *((_DWORD *)a3 + 63) = Random::s_seed;
      }
      else
      {
        v15 = Random::GetRandom(UInteger, v13, v14) + v12;
        return sfc::script::lua::ReturnValues::pushInteger(a2, v15);
      }
    }
  }
  return this;
}


// ===== 393444 GameObject::_GetDistanceFrom(sfc::script::lua::Arguments const&,sfc::script::lua::ReturnValues &,void *) =====
void __fastcall GameObject::_GetDistanceFrom(
        GameObject *this,
        const sfc::script::lua::Arguments *a2,
        sfc::script::lua::ReturnValues *a3,
        void *a4)
{
  _DWORD *v4; // r12
  int v7; // r2
  int v8; // r6
  sfc::script::lua::Value *v9; // r0
  char *UserData; // r6
  float v11; // r1
  float v12; // r8
  float v13; // r7
  float v14; // r0
  const char *v15; // r7
  sfc::script::lua::Value *v16; // r0
  char *String; // r0
  char *v18[3]; // [sp+Ch] [bp-Ch] BYREF

  v4 = *((_DWORD **)this + 1);
  if ( 1227133513 * ((v4[1] - *v4) >> 4) )
  {
    v7 = *(_DWORD *)(*v4 + 4);
    if ( v7 == 4 )
    {
      v15 = (const char *)dword_99F764;
      v16 = (sfc::script::lua::Value *)sfc::script::lua::Arguments::operator[]((int)this, 0);
      String = (char *)sfc::script::lua::Value::getString(v16);
      ObjectManager::GetObjectByName((ObjectManager *)v18, v15, String, -1, nullptr, 0);
      UserData = ObjectHandle::operator GameObject *(v18);
    }
    else
    {
      if ( v7 != 7 )
        return;
      v8 = *((_DWORD *)this + 1);
      v9 = *(sfc::script::lua::Value **)v8;
      if ( !(1227133513 * ((*(_DWORD *)(v8 + 4) - *(_DWORD *)v8) >> 4)) )
      {
        __ZSt24__stl_throw_out_of_rangePKc_veneer("vector");
        v9 = *(sfc::script::lua::Value **)v8;
      }
      UserData = (char *)sfc::script::lua::Value::getUserData(v9);
    }
    if ( UserData )
    {
      v12 = *((float *)UserData + 88) - *((float *)a3 + 88);
      v13 = *((float *)UserData + 89) - *((float *)a3 + 89);
      v14 = *((float *)UserData + 90) - *((float *)a3 + 90);
      v11 = (float)((float)(v12 * v12) + (float)(v13 * v13)) + (float)(v14 * v14);
    }
    else
    {
      v11 = -1.0;
    }
    sfc::script::lua::ReturnValues::pushNumber(a2, v11);
  }
}


// ===== 3935dc GameObject::GetTargetPosition(void) =====
char *__fastcall GameObject::GetTargetPosition(GameObject *this)
{
  if ( *((_DWORD *)this + 96) && *((_BYTE *)this + 128) )
    return (char *)this + 388;
  else
    return (char *)this + 352;
}


// ===== 393600 GameObject::SetDestination(Point3D<float> const&) =====
_DWORD *__fastcall GameObject::SetDestination(_DWORD *result, _DWORD *a2)
{
  result[106] = *a2;
  result[107] = a2[1];
  result[108] = a2[2];
  return result;
}


// ===== 39361c GameObject::IsAtDestination(void) =====
bool __fastcall GameObject::IsAtDestination(GameObject *this)
{
  GameObject *v1; // r3
  float v2; // r6
  float v3; // r0
  float v5; // r6
  float v6; // r0

  v1 = *((GameObject **)this + 128);
  if ( v1 == (GameObject *)((char *)this + 512) )
  {
    v5 = *((float *)this + 106) - *((float *)this + 88);
    v6 = *((float *)this + 107) - *((float *)this + 89);
    return (float)((float)(v5 * v5) + (float)(v6 * v6)) < 6400.0;
  }
  else
  {
    do
      v1 = *(GameObject **)v1;
    while ( (GameObject *)((char *)this + 512) != v1 );
    v2 = *((float *)this + 130) - *((float *)this + 88);
    v3 = *((float *)this + 131) - *((float *)this + 89);
    return (float)((float)(v2 * v2) + (float)(v3 * v3)) < 6400.0;
  }
}


// ===== 393710 GameObject::UpdateRotation(void) =====
float __fastcall GameObject::UpdateRotation(GameObject *this)
{
  float v2; // r5
  float result; // r0
  int Dt; // r0
  float v5; // r7
  float v6; // r8
  float v7; // r5

  v2 = COERCE_FLOAT((*(int (__fastcall **)(GameObject *))(*(_DWORD *)this + 172))(this));
  LODWORD(result) = v2 < 0.0;
  if ( v2 >= 0.0 )
  {
    Dt = Application::GetDt((Application *)&Singleton<Application>::s_inst);
    v5 = *((float *)this + 93);
    v6 = (float)(v2 * 12.566) * (float)((float)(unsigned int)Dt * 0.001);
    v7 = *((float *)this + 94) - v5;
    if ( v7 > 3.1416 )
    {
      v7 = v7 - 6.2832;
    }
    else if ( v7 < -3.1416 )
    {
      v7 = v7 + 6.2832;
    }
    LODWORD(result) = COERCE_FLOAT(LODWORD(v7) & 0x7FFFFFFF) < v6;
    if ( COERCE_FLOAT(LODWORD(v7) & 0x7FFFFFFF) >= v6 )
    {
      if ( v7 >= 0.0 )
      {
        result = v6 + v5;
        *((float *)this + 93) = v6 + v5;
        *((_DWORD *)this + 95) = 1;
      }
      else
      {
        result = v5 - v6;
        *((float *)this + 93) = v5 - v6;
        *((_DWORD *)this + 95) = 0;
      }
    }
    else
    {
      *((_DWORD *)this + 93) = *((_DWORD *)this + 94);
    }
  }
  else
  {
    *((_DWORD *)this + 93) = *((_DWORD *)this + 94);
  }
  if ( *((_DWORD *)this + 182) )
  {
    result = COERCE_FLOAT((*(int (__fastcall **)(GameObject *))(*(_DWORD *)this + 112))(this));
    if ( result != 0.0 )
      return COERCE_FLOAT(VisualObject::SyncRotation(*((VisualObject **)this + 182)));
  }
  return result;
}


// ===== 3938a0 GameObject::SetRotation(Point3D<float> const&) =====
_DWORD *__fastcall GameObject::SetRotation(_DWORD *result, _DWORD *a2)
{
  int v2; // r2
  _DWORD *v3; // r4

  result[91] = *a2;
  v2 = result[182];
  v3 = result;
  result[92] = a2[1];
  result[93] = a2[2];
  result[94] = a2[2];
  if ( v2 )
  {
    result = (_DWORD *)(*(int (__fastcall **)(_DWORD *))(*result + 112))(result);
    if ( result )
      return (_DWORD *)VisualObject::SyncRotation((VisualObject *)v3[182]);
  }
  return result;
}


// ===== 3938f8 GameObject::Stop(void) =====
int __fastcall GameObject::Stop(GameObject *this)
{
  int v2; // r12
  int result; // r0
  int v4; // r1
  __int16 *v5; // r3
  __int16 v6; // r2

  PFWorld::DropPath((PFWorld *)&Singleton<PFWorld>::s_inst, (GameObject *)((char *)this + 456));
  v2 = *((_DWORD *)this + 88);
  result = *((_DWORD *)this + 89);
  *((_DWORD *)this + 108) = *((_DWORD *)this + 90);
  *((_DWORD *)this + 106) = v2;
  *((_DWORD *)this + 107) = result;
  *((_BYTE *)this + 437) = 0;
  *((_BYTE *)this + 436) = 0;
  v4 = *((_DWORD *)this + 183);
  *((_DWORD *)this + 110) = Vec3f_Origin;
  *((_DWORD *)this + 111) = dword_99F858;
  *((_DWORD *)this + 112) = dword_99F85C;
  if ( v4 )
  {
    result = (*(int (__fastcall **)(GameObject *))(*(_DWORD *)this + 100))(this);
    if ( result )
    {
      PhysicalObject::setLinearVelocity(*((PhysicalObject **)this + 183), 0.0, 0.0);
      PhysicalObject::setAngularVelocity(*((PhysicalObject **)this + 183), 0.0);
      result = PhysicalObject::setPosition(
                 *((PhysicalObject **)this + 183),
                 *((float *)this + 88),
                 *((float *)this + 89));
      v5 = *(__int16 **)(*((_DWORD *)this + 183) + 20);
      v6 = *v5;
      *((_DWORD *)v5 + 21) = 0;
      *((_DWORD *)v5 + 35) = 0;
      *v5 = v6 | 8;
      *((_DWORD *)v5 + 16) = 0;
      *((_DWORD *)v5 + 17) = 0;
      *((_DWORD *)v5 + 18) = 0;
      *((_DWORD *)v5 + 19) = 0;
      *((_DWORD *)v5 + 20) = 0;
    }
  }
  return result;
}


// ===== 3939f0 GameObject::PathTo(Point3D<float> const&) =====
int __fastcall GameObject::PathTo(int result, float *a2)
{
  int v2; // r6
  _DWORD *v3; // r3
  float v4; // r10
  float v5; // r8
  float v6; // r7
  int v7; // r3

  v2 = result;
  if ( !*(_BYTE *)(result + 132) )
  {
    v3 = *(_DWORD **)(result + 512);
    if ( v3 == (_DWORD *)(result + 512) )
      goto LABEL_5;
    do
      v3 = (_DWORD *)*v3;
    while ( (_DWORD *)(result + 512) != v3 );
    v4 = *(float *)(result + 524) - a2[1];
    v5 = *(float *)(result + 528) - a2[2];
    v6 = (float)((float)(*(float *)(result + 520) - *a2) * (float)(*(float *)(result + 520) - *a2)) + (float)(v4 * v4);
    result = (float)(v6 + (float)(v5 * v5)) > 40000.0;
    if ( (float)(v6 + (float)(v5 * v5)) > 40000.0 )
    {
LABEL_5:
      v7 = *(_DWORD *)(v2 + 620);
      if ( !v7 )
        v7 = 30;
      return PFWorld::FindPath(&Singleton<PFWorld>::s_inst, v2 + 456, a2, v7);
    }
  }
  return result;
}

