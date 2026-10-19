// ===== 4a1950 ObjectSearcher::TargetList::_IsGameObjectValid(GameObject *) =====
bool __fastcall ObjectSearcher::TargetList::_IsGameObjectValid(ObjectSearcher::TargetList *this, GameObject *a2)
{
  int v3; // r0

  v3 = *((_DWORD *)this + 14);
  if ( !v3 )
    return (*(int (__fastcall **)(GameObject *, _DWORD))(*(_DWORD *)a2 + 144))(a2, *((_DWORD *)this + 11)) == 8;
  if ( v3 == 1 )
    return (*(int (__fastcall **)(GameObject *, _DWORD))(*(_DWORD *)a2 + 144))(a2, *((_DWORD *)this + 11)) != -1;
  return v3 == 3;
}


// ===== 4a19c4 ObjectSearcher::RoomObjectList::~RoomObjectList() =====
void __fastcall ObjectSearcher::RoomObjectList::~RoomObjectList(ObjectSearcher::RoomObjectList *this)
{
  *(_DWORD *)this = off_964728;
  CustomFree(this);
}


// ===== 4a19f8 ObjectSearcher::BackupObjectList::_Clear(void) =====
int __fastcall ObjectSearcher::BackupObjectList::_Clear(int this)
{
  int *v1; // r3
  int *v2; // r12
  int v3; // r2
  int v4; // r3

  v1 = *(int **)(this + 4);
  v2 = *(int **)(this + 8);
  if ( v1 != v2 )
  {
    do
    {
      v3 = *v1++;
      if ( *(_BYTE *)(v3 + 41) )
        --*(_BYTE *)(v3 + 41);
    }
    while ( v1 != v2 );
    v4 = *(_DWORD *)(this + 4);
    if ( v4 != *(_DWORD *)(this + 8) )
      *(_DWORD *)(this + 8) = v4;
  }
  return this;
}


// ===== 4a1a38 ObjectSearcher::TargetList::FlushBackupResults(void) =====
int __fastcall ObjectSearcher::TargetList::FlushBackupResults(int this)
{
  int v1; // r4
  int v2; // r5
  int v3; // r2
  int v4; // r3

  v1 = *(_DWORD *)(this + 68);
  v2 = this + 60;
  while ( v2 != v1 )
  {
    while ( 1 )
    {
      this = ObjectSearcher::BackupObjectList::_Clear(v1 + 40);
      v3 = *(_DWORD *)(v1 + 12);
      if ( !v3 )
        break;
      while ( *(_DWORD *)(v3 + 8) )
        v3 = *(_DWORD *)(v3 + 8);
      v1 = v3;
      if ( v2 == v3 )
        return this;
    }
    v4 = *(_DWORD *)(v1 + 4);
    if ( v1 == *(_DWORD *)(v4 + 12) )
    {
      do
      {
        v1 = v4;
        v4 = *(_DWORD *)(v4 + 4);
      }
      while ( *(_DWORD *)(v4 + 12) == v1 );
      v3 = *(_DWORD *)(v1 + 12);
    }
    if ( v3 != v4 )
      v1 = v4;
  }
  return this;
}


// ===== 4a1ab8 ObjectSearcher::TargetList::_IsCharacterValid(Character *) =====
bool __fastcall ObjectSearcher::TargetList::_IsCharacterValid(ObjectSearcher::TargetList *this, Character *a2)
{
  int v2; // r3
  int v6; // r3

  v2 = *((_DWORD *)this + 12);
  if ( !v2 )
    return 1;
  if ( *(_DWORD *)(v2 + 4884) < *((_DWORD *)a2 + 1220) )
    return 0;
  v6 = *((_DWORD *)this + 13);
  if ( v6 == 0x7FFFFFFF )
    return 1;
  if ( (v6 & 0x80) != 0 )
  {
    if ( (*(int (__fastcall **)(Character *))(*(_DWORD *)a2 + 40))(a2) )
      return 1;
    v6 = *((_DWORD *)this + 13);
  }
  if ( (v6 & 0x10) != 0 )
  {
    if ( Character::IsMerchant(a2) )
      return 1;
    v6 = *((_DWORD *)this + 13);
  }
  if ( (v6 & 0x20) != 0 )
  {
    if ( Character::IsCleaner(a2) )
      return 1;
    v6 = *((_DWORD *)this + 13);
  }
  if ( (v6 & 0x40) != 0 && *((_BYTE *)a2 + 762) )
    return 1;
  if ( (v6 & 1) != 0 )
  {
    if ( !(*(int (__fastcall **)(Character *))(*(_DWORD *)a2 + 52))(a2)
      && CharAI::AI_IsEnemy((CharAI *)(*((_DWORD *)this + 12) + 968), a2)
      && (!(*(int (__fastcall **)(Character *))(*(_DWORD *)a2 + 40))(a2)
       || !(*(int (__fastcall **)(_DWORD))(**((_DWORD **)this + 12) + 40))(*((_DWORD *)this + 12))) )
    {
      return 1;
    }
    v6 = *((_DWORD *)this + 13);
  }
  if ( (v6 & 2) != 0 )
  {
    if ( !(*(int (__fastcall **)(Character *))(*(_DWORD *)a2 + 52))(a2)
      && CharAI::AI_IsNeutral((CharAI *)(*((_DWORD *)this + 12) + 968), a2) )
    {
      return 1;
    }
    v6 = *((_DWORD *)this + 13);
  }
  if ( (v6 & 4) == 0 )
    goto LABEL_13;
  if ( CharAI::AI_IsFriend((CharAI *)(*((_DWORD *)this + 12) + 968), a2) )
    return 1;
  v6 = *((_DWORD *)this + 13);
LABEL_13:
  if ( (v6 & 8) == 0
    || !(*(int (__fastcall **)(Character *))(*(_DWORD *)a2 + 52))(a2)
    || !CharAI::AI_IsFriend((CharAI *)(*((_DWORD *)this + 12) + 968), a2)
    || CharStateMachine::SM_GetState((CharStateMachine *)(*((_DWORD *)this + 12) + 1276)) == 15 )
  {
    return 0;
  }
  return CharStateMachine::SM_GetState((Character *)((char *)a2 + 1276)) != 16;
}


// ===== 4a1cc8 ObjectSearcher::BackupObjectList::GetChar(void) =====
int __fastcall ObjectSearcher::BackupObjectList::GetChar(ObjectSearcher::BackupObjectList *this)
{
  _BYTE v2[12]; // [sp+4h] [bp-Ch] BYREF

  (*(void (__fastcall **)(ObjectSearcher::BackupObjectList *))(*(_DWORD *)this + 24))(this);
  ObjectBase::GetHandle((ObjectBase *)v2);
  return ObjectHandle::operator Character *(v2);
}


// ===== 4a1cfc ObjectSearcher::RoomObjectList::GetChar(void) =====
int __fastcall ObjectSearcher::RoomObjectList::GetChar(ObjectSearcher::RoomObjectList *this)
{
  _BYTE v2[12]; // [sp+4h] [bp-Ch] BYREF

  (*(void (__fastcall **)(ObjectSearcher::RoomObjectList *))(*(_DWORD *)this + 24))(this);
  ObjectBase::GetHandle((ObjectBase *)v2);
  return ObjectHandle::operator Character *(v2);
}


// ===== 4a1d30 `global constructor keyed to'.._.._sources_Game_Helpers_ObjectSearcher.cpp =====
int `global constructor keyed to'.._.._sources_Game_Helpers_ObjectSearcher.cpp()
{
  int result; // r0

  result = `guard variable for'Singleton<PlayerStatManager>::s_inst;
  dword_9A6400 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9A63FC = 1056964608;
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


// ===== 4a1e0c std::allocator<ObjectSearcher::TargetInfo>::allocate(uint,void const*) [clone] =====
void *std::allocator<ObjectSearcher::TargetInfo>::allocate()
{
  size_t v1; // [sp+4h] [bp-8h] BYREF

  v1 = 120;
  return __ZNSt12__node_alloc11_M_allocateERj_veneer(&v1);
}


// ===== 4a1e2c std::__push_heap<std::priv::_Deque_iterator<ObjectSearcher::TargetInfo,std::_Nonconst_traits<ObjectSearcher::TargetInfo>>,int,ObjectSearcher::TargetInfo,ObjectSearcher::TargetSorter>(std::priv::_Deque_iterator<ObjectSearcher::TargetInfo,std::_Nonconst_traits<ObjectSearcher::TargetInfo>>,int,int,ObjectSearcher::TargetInfo,ObjectSearcher::TargetSorter) =====
int __fastcall std::__push_heap<std::priv::_Deque_iterator<ObjectSearcher::TargetInfo,std::_Nonconst_traits<ObjectSearcher::TargetInfo>>,int,ObjectSearcher::TargetInfo,ObjectSearcher::TargetSorter>(
        int a1,
        int a2,
        int a3,
        int a4,
        int a5,
        int a6,
        int a7,
        int a8,
        int (__fastcall *a9)(_DWORD *, int *))
{
  int v9; // r6
  int v12; // r1
  int v13; // r2
  int v14; // r3
  int result; // r0
  _DWORD *v16; // r12
  int i; // r7
  int v18; // r1
  int v19; // r2
  int v20; // r3
  int v21; // r1
  int v22; // r2
  int v23; // r3
  int v24; // r1
  int v25; // r2
  int v26; // r3
  _DWORD *v27; // r6
  int v28; // r1
  int v29; // r2
  int v30; // r3
  _DWORD *v31; // r12
  _DWORD *v32; // [sp+0h] [bp-10h] BYREF
  int v33; // [sp+4h] [bp-Ch]
  int v34; // [sp+8h] [bp-8h]
  int v35; // [sp+Ch] [bp-4h]
  int varg_r3; // [sp+34h] [bp+24h] BYREF

  v9 = a2;
  if ( a2 > a3 )
  {
    for ( i = (a2 - 1) / 2; ; i = (i - 1) / 2 )
    {
      v18 = *(_DWORD *)(a1 + 4);
      v19 = *(_DWORD *)(a1 + 8);
      v20 = *(_DWORD *)(a1 + 12);
      v32 = *(_DWORD **)a1;
      v33 = v18;
      v34 = v19;
      v35 = v20;
      std::priv::_Deque_iterator_base<ObjectSearcher::TargetInfo>::_M_advance(&v32, i);
      if ( !a9(v32, &varg_r3) )
        break;
      v21 = *(_DWORD *)(a1 + 4);
      v22 = *(_DWORD *)(a1 + 8);
      v23 = *(_DWORD *)(a1 + 12);
      v32 = *(_DWORD **)a1;
      v33 = v21;
      v34 = v22;
      v35 = v23;
      std::priv::_Deque_iterator_base<ObjectSearcher::TargetInfo>::_M_advance(&v32, v9);
      v24 = *(_DWORD *)(a1 + 4);
      v25 = *(_DWORD *)(a1 + 8);
      v26 = *(_DWORD *)(a1 + 12);
      v27 = v32;
      v32 = *(_DWORD **)a1;
      v33 = v24;
      v34 = v25;
      v35 = v26;
      std::priv::_Deque_iterator_base<ObjectSearcher::TargetInfo>::_M_advance(&v32, i);
      v28 = v32[1];
      v29 = v32[2];
      v30 = v32[3];
      v31 = v32 + 4;
      *v27 = *v32;
      v27[1] = v28;
      v27[2] = v29;
      v27[3] = v30;
      v27[4] = *v31;
      if ( a3 >= i )
      {
        v9 = i;
        break;
      }
      v9 = i;
    }
  }
  v12 = *(_DWORD *)(a1 + 4);
  v13 = *(_DWORD *)(a1 + 8);
  v14 = *(_DWORD *)(a1 + 12);
  v32 = *(_DWORD **)a1;
  v33 = v12;
  v34 = v13;
  v35 = v14;
  std::priv::_Deque_iterator_base<ObjectSearcher::TargetInfo>::_M_advance(&v32, v9);
  result = varg_r3;
  v16 = v32;
  *v32 = varg_r3;
  v16[1] = a5;
  v16[2] = a6;
  v16[3] = a7;
  v16[4] = a8;
  return result;
}


// ===== 4a1f30 std::__push_heap_aux<std::priv::_Deque_iterator<ObjectSearcher::TargetInfo,std::_Nonconst_traits<ObjectSearcher::TargetInfo>>,ObjectSearcher::TargetSorter,int,ObjectSearcher::TargetInfo>(std::priv::_Deque_iterator<ObjectSearcher::TargetInfo,std::_Nonconst_traits<ObjectSearcher::TargetInfo>>,std::priv::_Deque_iterator<ObjectSearcher::TargetInfo,std::_Nonconst_traits<ObjectSearcher::TargetInfo>>,ObjectSearcher::TargetSorter,int *,ObjectSearcher::TargetInfo *) =====
int __fastcall std::__push_heap_aux<std::priv::_Deque_iterator<ObjectSearcher::TargetInfo,std::_Nonconst_traits<ObjectSearcher::TargetInfo>>,ObjectSearcher::TargetSorter,int,ObjectSearcher::TargetInfo>(
        _DWORD *a1,
        _DWORD *a2,
        int (__fastcall *a3)(_DWORD *, int *))
{
  int v5; // r1
  int v6; // r2
  int v7; // r3
  int v8; // r1
  int v9; // r2
  int v10; // r3
  int v11; // r6
  int v12; // r1
  int v13; // r2
  int v14; // r3
  _DWORD v16[4]; // [sp+30h] [bp-34h] BYREF
  _DWORD v17[4]; // [sp+40h] [bp-24h] BYREF
  _DWORD v18[5]; // [sp+50h] [bp-14h] BYREF

  v5 = a1[1];
  v6 = a1[2];
  v7 = a1[3];
  v17[0] = *a1;
  v17[1] = v5;
  v17[2] = v6;
  v17[3] = v7;
  v8 = a1[1];
  v9 = a1[2];
  v10 = a1[3];
  v18[0] = *a1;
  v18[1] = v8;
  v18[2] = v9;
  v18[3] = v10;
  v11 = std::priv::_Deque_iterator_base<ObjectSearcher::TargetInfo>::_M_subtract(a2, v18) - 1;
  v12 = a2[1];
  v13 = a2[2];
  v14 = a2[3];
  v16[0] = *a2;
  v16[1] = v12;
  v16[2] = v13;
  v16[3] = v14;
  std::priv::_Deque_iterator_base<ObjectSearcher::TargetInfo>::_M_advance(v16, -1);
  return std::__push_heap<std::priv::_Deque_iterator<ObjectSearcher::TargetInfo,std::_Nonconst_traits<ObjectSearcher::TargetInfo>>,int,ObjectSearcher::TargetInfo,ObjectSearcher::TargetSorter>(
           (int)v17,
           v11,
           0,
           *(_DWORD *)v16[0],
           *(_DWORD *)(v16[0] + 4),
           *(_DWORD *)(v16[0] + 8),
           *(_DWORD *)(v16[0] + 12),
           *(_DWORD *)(v16[0] + 16),
           a3);
}


// ===== 4a1fcc ObjectSearcher::BackupObjectList::~BackupObjectList() =====
void __fastcall ObjectSearcher::BackupObjectList::~BackupObjectList(ObjectSearcher::BackupObjectList *this)
{
  ObjectSearcher::BackupObjectList::~BackupObjectList(this);
  CustomFree(this);
}


// ===== 4a1fe8 std::vector<GameObject *,std::allocator<GameObject *>>::_M_allocate_and_copy<GameObject **>(uint &,GameObject **,GameObject **) =====
void *__fastcall std::vector<GameObject *>::_M_allocate_and_copy<GameObject **>(
        int a1,
        unsigned int *a2,
        _BYTE *a3,
        _BYTE *a4)
{
  void *v6; // r0
  void *v7; // r6

  v6 = std::allocator<GameObject *>::_M_allocate(a1 + 8, *a2, a2);
  v7 = v6;
  if ( a3 != a4 )
    memcpy(v6, a3, a4 - a3);
  return v7;
}


// ===== 4a2024 std::vector<GameObject *,std::allocator<GameObject *>>::reserve(uint) =====
void __fastcall std::vector<GameObject *>::reserve(_DWORD *a1, unsigned int a2)
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
      v7 = (char *)std::vector<GameObject *>::_M_allocate_and_copy<GameObject **>((int)a1, &v11, v3, v5);
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
      v7 = (char *)std::allocator<GameObject *>::_M_allocate((int)(a1 + 2), v11, &v11);
    }
    v10 = v11;
    a1[1] = &v7[4 * v6];
    a1[2] = &v7[4 * v10];
    *a1 = v7;
  }
}


// ===== 4a20f0 ObjectSearcher::BackupObjectList::_Add(GameObject *) =====
void __fastcall ObjectSearcher::BackupObjectList::_Add(ObjectSearcher::BackupObjectList *this, GameObject *a2)
{
  char *v2; // r6
  unsigned int v5; // r3
  unsigned int v6; // r1
  char *v7; // r0
  _BYTE *v8; // r1
  char *v9; // r7
  size_t v10; // r6
  char *v11; // r6
  _DWORD *v12; // r6
  void *v13; // r0
  size_t v14; // r1
  unsigned int v15; // r3
  unsigned int v16; // [sp+4h] [bp-8h] BYREF

  v2 = *((char **)this + 2);
  if ( v2 == *((char **)this + 3) )
  {
    v5 = (int)&v2[-*((_DWORD *)this + 1)] >> 2;
    if ( v5 )
      v6 = 2 * v5;
    else
      v6 = 1;
    if ( v6 > 0x3FFFFFFF || v5 > v6 )
      v6 = 0x3FFFFFFF;
    v16 = v6;
    v7 = (char *)std::allocator<GameObject *>::_M_allocate((char *)this + 12, v6, &v16);
    v8 = *((_BYTE **)this + 1);
    v9 = v7;
    v10 = v2 - v8;
    if ( v10 )
      v11 = (char *)memmove(v7, v8, v10) + v10;
    else
      v11 = v7;
    *(_DWORD *)v11 = a2;
    v12 = v11 + 4;
    v13 = *((void **)this + 1);
    if ( v13 )
    {
      v14 = (*((_DWORD *)this + 3) - (_DWORD)v13) & 0xFFFFFFFC;
      if ( v14 > 0x80 )
        CustomFree(v13);
      else
        __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v13, v14);
    }
    v15 = v16;
    *((_DWORD *)this + 1) = v9;
    *((_DWORD *)this + 2) = v12;
    *((_DWORD *)this + 3) = &v9[4 * v15];
  }
  else
  {
    *(_DWORD *)v2 = a2;
    *((_DWORD *)this + 2) += 4;
  }
  ++*((_BYTE *)a2 + 41);
}


// ===== 4a21e0 std::allocator<ObjectSearcher::TargetInfo *>::allocate(uint,void const*) =====
void *__fastcall std::allocator<ObjectSearcher::TargetInfo *>::allocate(int a1, unsigned int a2)
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


// ===== 4a2240 std::priv::_Deque_base<ObjectSearcher::TargetInfo,std::allocator<ObjectSearcher::TargetInfo>>::_M_initialize_map(uint) [clone] =====
void *__fastcall std::priv::_Deque_base<ObjectSearcher::TargetInfo,std::allocator<ObjectSearcher::TargetInfo>>::_M_initialize_map(
        _DWORD *a1)
{
  _DWORD *v2; // r5
  int v3; // r6
  void *result; // r0
  unsigned int v5; // r6
  int *v6; // r3
  int v7; // r2
  int v8; // r3

  a1[9] = 8;
  v2 = std::allocator<ObjectSearcher::TargetInfo *>::allocate((int)(a1 + 8), 8u);
  a1[8] = v2;
  v3 = a1[9];
  result = std::allocator<ObjectSearcher::TargetInfo>::allocate();
  v5 = (unsigned int)(v3 - 1) >> 1;
  v2[v5] = result;
  v6 = &v2[v5];
  a1[3] = v6;
  v7 = *v6;
  a1[7] = v6;
  a1[1] = v7;
  a1[2] = v7 + 120;
  v8 = *v6;
  *a1 = v7;
  a1[4] = v8;
  a1[6] = v8 + 120;
  a1[5] = v8;
  return result;
}


// ===== 4a22b4 std::deque<ObjectSearcher::TargetInfo,std::allocator<ObjectSearcher::TargetInfo>>::_M_push_back_aux_v(ObjectSearcher::TargetInfo const&) =====
int __fastcall std::deque<ObjectSearcher::TargetInfo>::_M_push_back_aux_v(_DWORD *a1, int *a2)
{
  char *v2; // r10
  int v3; // r2
  unsigned int v4; // r3
  int *v7; // r12
  int result; // r0
  int v9; // r1
  int v10; // r2
  int v11; // r3
  int *v12; // r2
  int v13; // r3
  int v14; // r2
  char *v15; // r1
  int v16; // r7
  int v17; // r9
  char *v18; // r6
  int v19; // r2
  unsigned int v20; // r8
  char *v21; // r0
  const void *v22; // r1
  size_t v23; // r2
  char *v24; // r10
  void *v25; // r0
  size_t v26; // r1
  int v27; // r3
  int v28; // r3

  v2 = (char *)a1[7];
  v3 = a1[8];
  v4 = a1[9];
  if ( v4 - ((int)&v2[-v3] >> 2) <= 1 )
  {
    v15 = (char *)a1[3];
    v16 = ((v2 - v15) >> 2) + 1;
    v17 = ((v2 - v15) >> 2) + 2;
    if ( v4 <= 2 * v17 )
    {
      if ( v4 )
        v19 = a1[9];
      else
        v19 = 1;
      v20 = v4 + 2 + v19;
      v21 = (char *)std::allocator<ObjectSearcher::TargetInfo *>::allocate((int)(a1 + 8), v20);
      v22 = (const void *)a1[3];
      v23 = a1[7] + 4 - (_DWORD)v22;
      v24 = v21;
      v18 = &v21[4 * ((v20 - v17) >> 1)];
      if ( v23 )
        memmove(&v21[4 * ((v20 - v17) >> 1)], v22, v23);
      v25 = (void *)a1[8];
      if ( v25 )
      {
        v26 = 4 * a1[9];
        if ( v26 > 0x80 )
          CustomFree(v25);
        else
          __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v25, v26);
      }
      a1[8] = v24;
      a1[9] = v20;
    }
    else
    {
      v18 = (char *)(v3 + 4 * ((v4 - v17) >> 1));
      if ( v15 <= v18 )
      {
        if ( v2 + 4 - v15 > 0 )
          memmove(&v18[4 * v16 - (v2 + 4 - v15)], v15, v2 + 4 - v15);
      }
      else if ( v2 + 4 != v15 )
      {
        memmove(v18, v15, v2 + 4 - v15);
      }
    }
    a1[3] = v18;
    v27 = *(_DWORD *)v18;
    v2 = &v18[4 * v16 - 4];
    a1[2] = *(_DWORD *)v18 + 120;
    a1[1] = v27;
    a1[7] = v2;
    v28 = *(_DWORD *)v2;
    a1[6] = *(_DWORD *)v2 + 120;
    a1[5] = v28;
  }
  *((_DWORD *)v2 + 1) = std::allocator<ObjectSearcher::TargetInfo>::allocate();
  v7 = (int *)a1[4];
  result = *a2;
  v9 = a2[1];
  v10 = a2[2];
  v11 = a2[3];
  *v7 = *a2;
  v7[1] = v9;
  v7[2] = v10;
  v7[3] = v11;
  v7[4] = a2[4];
  v12 = (int *)(a1[7] + 4);
  a1[7] = v12;
  v13 = *v12;
  v14 = *v12 + 120;
  a1[4] = v13;
  a1[6] = v14;
  a1[5] = v13;
  return result;
}


// ===== 4a2440 std::priority_queue<ObjectSearcher::TargetInfo,std::deque<ObjectSearcher::TargetInfo,std::allocator<ObjectSearcher::TargetInfo>>,ObjectSearcher::TargetSorter>::push(ObjectSearcher::TargetInfo const&) =====
int __fastcall std::priority_queue<ObjectSearcher::TargetInfo,std::deque<ObjectSearcher::TargetInfo>,ObjectSearcher::TargetSorter>::push(
        int *a1,
        int *a2)
{
  _DWORD *v2; // r12
  int v5; // r0
  int v6; // r1
  int v7; // r2
  int v8; // r3
  int v9; // r12
  int v10; // r5
  int v11; // r6
  int v12; // lr
  int v13; // r8
  int v14; // r10
  int v15; // r9
  int v16; // r2
  _DWORD v18[4]; // [sp+8h] [bp-20h] BYREF
  _DWORD v19[4]; // [sp+18h] [bp-10h] BYREF

  v2 = (_DWORD *)a1[4];
  if ( v2 == (_DWORD *)(a1[6] - 20) )
  {
    std::deque<ObjectSearcher::TargetInfo>::_M_push_back_aux_v();
    v9 = a1[4];
  }
  else
  {
    v5 = *a2;
    v6 = a2[1];
    v7 = a2[2];
    v8 = a2[3];
    *v2 = v5;
    v2[1] = v6;
    v2[2] = v7;
    v2[3] = v8;
    v2[4] = a2[4];
    v9 = a1[4] + 20;
    a1[4] = v9;
  }
  v10 = a1[1];
  v11 = a1[2];
  v12 = *a1;
  v13 = a1[7];
  v14 = a1[6];
  v15 = a1[5];
  v16 = a1[10];
  v18[3] = a1[3];
  v18[2] = v11;
  v18[1] = v10;
  v18[0] = v12;
  v19[3] = v13;
  v19[2] = v14;
  v19[1] = v15;
  v19[0] = v9;
  return ((int (__fastcall *)(_DWORD *, _DWORD *, int, _DWORD, _DWORD))std::__push_heap_aux<std::priv::_Deque_iterator<ObjectSearcher::TargetInfo,std::_Nonconst_traits<ObjectSearcher::TargetInfo>>,ObjectSearcher::TargetSorter,int,ObjectSearcher::TargetInfo>)(
           v18,
           v19,
           v16,
           0,
           0);
}


// ===== 4a24e4 std::__adjust_heap<std::priv::_Deque_iterator<ObjectSearcher::TargetInfo,std::_Nonconst_traits<ObjectSearcher::TargetInfo>>,int,ObjectSearcher::TargetInfo,ObjectSearcher::TargetSorter>(std::priv::_Deque_iterator<ObjectSearcher::TargetInfo,std::_Nonconst_traits<ObjectSearcher::TargetInfo>>,int,int,ObjectSearcher::TargetInfo,ObjectSearcher::TargetSorter) =====
int __fastcall std::__adjust_heap<std::priv::_Deque_iterator<ObjectSearcher::TargetInfo,std::_Nonconst_traits<ObjectSearcher::TargetInfo>>,int,ObjectSearcher::TargetInfo,ObjectSearcher::TargetSorter>(
        int a1,
        int a2,
        int a3,
        int a4,
        int a5,
        int a6,
        int a7,
        int a8,
        int (__fastcall *a9)(_DWORD *, int *))
{
  int v9; // r7
  int v12; // r8
  int v13; // r1
  int v14; // r2
  int v15; // r3
  int v16; // r1
  int v17; // r2
  int v18; // r3
  _DWORD *v19; // r10
  int v20; // r6
  int v21; // r1
  int v22; // r2
  int v23; // r3
  int v24; // r1
  int v25; // r2
  int v26; // r3
  _DWORD *v27; // r8
  int v28; // r1
  int v29; // r2
  int v30; // r3
  _DWORD *v31; // r12
  _DWORD *v32; // r3
  int v33; // r1
  int v34; // r2
  int v35; // r3
  int v37; // r1
  int v38; // r2
  int v39; // r3
  int v40; // r1
  int v41; // r1
  int v42; // r2
  int v43; // r3
  _DWORD *v44; // r6
  int v45; // r1
  int v46; // r2
  int v47; // r3
  _DWORD *v48; // r12
  _DWORD *v50; // [sp+20h] [bp-24h] BYREF
  int v51; // [sp+24h] [bp-20h]
  int v52; // [sp+28h] [bp-1Ch]
  int v53; // [sp+2Ch] [bp-18h]
  _DWORD var14[16]; // [sp+30h] [bp-14h] BYREF

  v9 = 2 * (a2 + 1);
  if ( v9 < a3 )
  {
    v12 = a2;
    do
    {
      v13 = *(_DWORD *)(a1 + 4);
      v14 = *(_DWORD *)(a1 + 8);
      v15 = *(_DWORD *)(a1 + 12);
      v50 = *(_DWORD **)a1;
      v51 = v13;
      v52 = v14;
      v53 = v15;
      std::priv::_Deque_iterator_base<ObjectSearcher::TargetInfo>::_M_advance(&v50, v9);
      v16 = *(_DWORD *)(a1 + 4);
      v17 = *(_DWORD *)(a1 + 8);
      v18 = *(_DWORD *)(a1 + 12);
      v19 = v50;
      v20 = v9 - 1;
      v50 = *(_DWORD **)a1;
      v51 = v16;
      v52 = v17;
      v53 = v18;
      std::priv::_Deque_iterator_base<ObjectSearcher::TargetInfo>::_M_advance(&v50, v9 - 1);
      if ( !a9(v19, v50) )
        v20 = v9;
      v21 = *(_DWORD *)(a1 + 4);
      v22 = *(_DWORD *)(a1 + 8);
      v23 = *(_DWORD *)(a1 + 12);
      v50 = *(_DWORD **)a1;
      v51 = v21;
      v52 = v22;
      v53 = v23;
      std::priv::_Deque_iterator_base<ObjectSearcher::TargetInfo>::_M_advance(&v50, v12);
      v24 = *(_DWORD *)(a1 + 4);
      v25 = *(_DWORD *)(a1 + 8);
      v26 = *(_DWORD *)(a1 + 12);
      v27 = v50;
      v50 = *(_DWORD **)a1;
      v51 = v24;
      v52 = v25;
      v53 = v26;
      std::priv::_Deque_iterator_base<ObjectSearcher::TargetInfo>::_M_advance(&v50, v20);
      v9 = 2 * (v20 + 1);
      v28 = v50[1];
      v29 = v50[2];
      v30 = v50[3];
      v31 = v50 + 4;
      *v27 = *v50;
      v27[1] = v28;
      v27[2] = v29;
      v27[3] = v30;
      v32 = v27 + 4;
      v12 = v20;
      *v32 = *v31;
    }
    while ( a3 > v9 );
  }
  else
  {
    v12 = a2;
  }
  if ( v9 == a3 )
  {
    v37 = *(_DWORD *)(a1 + 4);
    v38 = *(_DWORD *)(a1 + 8);
    v39 = *(_DWORD *)(a1 + 12);
    v50 = *(_DWORD **)a1;
    v51 = v37;
    v52 = v38;
    v53 = v39;
    v40 = v12;
    v12 = v9 - 1;
    std::priv::_Deque_iterator_base<ObjectSearcher::TargetInfo>::_M_advance(&v50, v40);
    v41 = *(_DWORD *)(a1 + 4);
    v42 = *(_DWORD *)(a1 + 8);
    v43 = *(_DWORD *)(a1 + 12);
    v44 = v50;
    v50 = *(_DWORD **)a1;
    v51 = v41;
    v52 = v42;
    v53 = v43;
    std::priv::_Deque_iterator_base<ObjectSearcher::TargetInfo>::_M_advance(&v50, v9 - 1);
    v45 = v50[1];
    v46 = v50[2];
    v47 = v50[3];
    v48 = v50 + 4;
    *v44 = *v50;
    v44[1] = v45;
    v44[2] = v46;
    v44[3] = v47;
    v44[4] = *v48;
  }
  v33 = *(_DWORD *)(a1 + 4);
  v34 = *(_DWORD *)(a1 + 8);
  v35 = *(_DWORD *)(a1 + 12);
  var14[0] = *(_DWORD *)a1;
  var14[1] = v33;
  var14[2] = v34;
  var14[3] = v35;
  return std::__push_heap<std::priv::_Deque_iterator<ObjectSearcher::TargetInfo,std::_Nonconst_traits<ObjectSearcher::TargetInfo>>,int,ObjectSearcher::TargetInfo,ObjectSearcher::TargetSorter>(
           (int)var14,
           v12,
           a2,
           var14[15],
           a5,
           a6,
           a7,
           a8,
           a9);
}


// ===== 4a2654 std::__make_heap<std::priv::_Deque_iterator<ObjectSearcher::TargetInfo,std::_Nonconst_traits<ObjectSearcher::TargetInfo>>,ObjectSearcher::TargetSorter,ObjectSearcher::TargetInfo,int>(std::priv::_Deque_iterator<ObjectSearcher::TargetInfo,std::_Nonconst_traits<ObjectSearcher::TargetInfo>>,std::priv::_Deque_iterator<ObjectSearcher::TargetInfo,std::_Nonconst_traits<ObjectSearcher::TargetInfo>>,ObjectSearcher::TargetSorter,ObjectSearcher::TargetInfo *,int *) =====
int __fastcall std::__make_heap<std::priv::_Deque_iterator<ObjectSearcher::TargetInfo,std::_Nonconst_traits<ObjectSearcher::TargetInfo>>,ObjectSearcher::TargetSorter,ObjectSearcher::TargetInfo,int>(
        _DWORD *a1,
        _DWORD *a2,
        int (__fastcall *a3)(_DWORD *, int *))
{
  int v6; // r1
  int v7; // r2
  int v8; // r3
  int result; // r0
  int v10; // r1
  int v11; // r2
  int v12; // r3
  int v13; // r8
  int i; // r7
  int v15; // r1
  int v16; // r2
  int v17; // r3
  int v18; // r1
  int v19; // r2
  int v20; // r3
  _DWORD v21[4]; // [sp+30h] [bp-44h] BYREF
  _DWORD v22[4]; // [sp+40h] [bp-34h] BYREF
  _DWORD v23[4]; // [sp+50h] [bp-24h] BYREF
  _DWORD v24[5]; // [sp+60h] [bp-14h] BYREF

  v6 = a1[1];
  v7 = a1[2];
  v8 = a1[3];
  v24[0] = *a1;
  v24[1] = v6;
  v24[2] = v7;
  v24[3] = v8;
  result = std::priv::_Deque_iterator_base<ObjectSearcher::TargetInfo>::_M_subtract(a2, v24);
  if ( result > 1 )
  {
    v10 = a1[1];
    v11 = a1[2];
    v12 = a1[3];
    v23[0] = *a1;
    v23[1] = v10;
    v23[2] = v11;
    v23[3] = v12;
    v13 = std::priv::_Deque_iterator_base<ObjectSearcher::TargetInfo>::_M_subtract(a2, v23);
    for ( i = (v13 - 2) / 2; ; --i )
    {
      v15 = a1[1];
      v16 = a1[2];
      v17 = a1[3];
      v22[0] = *a1;
      v22[1] = v15;
      v22[2] = v16;
      v22[3] = v17;
      v18 = a1[1];
      v19 = a1[2];
      v20 = a1[3];
      v21[0] = *a1;
      v21[1] = v18;
      v21[2] = v19;
      v21[3] = v20;
      std::priv::_Deque_iterator_base<ObjectSearcher::TargetInfo>::_M_advance(v21, i);
      result = std::__adjust_heap<std::priv::_Deque_iterator<ObjectSearcher::TargetInfo,std::_Nonconst_traits<ObjectSearcher::TargetInfo>>,int,ObjectSearcher::TargetInfo,ObjectSearcher::TargetSorter>(
                 (int)v22,
                 i,
                 v13,
                 *(_DWORD *)v21[0],
                 *(_DWORD *)(v21[0] + 4),
                 *(_DWORD *)(v21[0] + 8),
                 *(_DWORD *)(v21[0] + 12),
                 *(_DWORD *)(v21[0] + 16),
                 a3);
      if ( !i )
        break;
    }
  }
  return result;
}


// ===== 4a2730 ObjectSearcher::TargetList::TargetList(GameObject *,int,int,int) =====
ObjectSearcher::TargetList *__fastcall ObjectSearcher::TargetList::TargetList(
        ObjectSearcher::TargetList *this,
        GameObject *a2,
        int a3,
        int a4,
        int a5)
{
  int v9; // r1
  int v10; // r2

  *(_DWORD *)this = 0;
  *((_DWORD *)this + 1) = 0;
  *((_DWORD *)this + 2) = 0;
  *((_DWORD *)this + 3) = 0;
  *((_DWORD *)this + 4) = 0;
  *((_DWORD *)this + 5) = 0;
  *((_DWORD *)this + 6) = 0;
  *((_DWORD *)this + 7) = 0;
  *((_DWORD *)this + 8) = 0;
  *((_DWORD *)this + 9) = 0;
  std::priv::_Deque_base<ObjectSearcher::TargetInfo,std::allocator<ObjectSearcher::TargetInfo>>::_M_initialize_map();
  *((_DWORD *)this + 13) = a3;
  *((_DWORD *)this + 10) = ObjectSearcher::TargetSorter::_sortNoSort;
  *((_DWORD *)this + 14) = a4;
  *((_DWORD *)this + 11) = 0;
  *((_DWORD *)this + 12) = 0;
  *((_DWORD *)this + 16) = 0;
  *((_BYTE *)this + 60) = 0;
  v9 = *((_DWORD *)this + 4);
  v10 = *(_DWORD *)this;
  *((_DWORD *)this + 18) = (char *)this + 60;
  *((_DWORD *)this + 19) = 0;
  *((_DWORD *)this + 17) = (char *)this + 60;
  if ( v9 != v10 )
  {
    do
      std::priority_queue<ObjectSearcher::TargetInfo,std::deque<ObjectSearcher::TargetInfo>,ObjectSearcher::TargetSorter>::pop(this);
    while ( *((_DWORD *)this + 4) != *(_DWORD *)this );
  }
  if ( a5 == 1 )
  {
    *((_DWORD *)this + 10) = ObjectSearcher::TargetSorter::_sortClosest;
    ObjectSearcher::TargetList::SetRefObject(this, a2);
    return this;
  }
  else
  {
    if ( a5 == 2 )
      *((_DWORD *)this + 10) = ObjectSearcher::TargetSorter::_sortFrontal;
    else
      *((_DWORD *)this + 10) = ObjectSearcher::TargetSorter::_sortNoSort;
    ObjectSearcher::TargetList::SetRefObject(this, a2);
    return this;
  }
}


// ===== 4a2858 ObjectSearcher::TargetList::SearchRect(Point3D<float> const&,float,Point3D<float> const&,float,ObjectSearcher::IObjectList &) =====
int __fastcall ObjectSearcher::TargetList::SearchRect(int *a1, float *a2, float a3, float *a4, float a5, int *a6)
{
  int v8; // r0
  int v9; // r3
  int result; // r0
  GameObject *v11; // r8
  Character *v12; // r10
  float *TargetPosition; // r11
  float v14; // r11
  float v15; // r1
  float v16; // r11
  float v17; // r0
  float v18; // r11
  float *v19; // r11
  float v20; // r11
  float v21; // r0
  int v22; // r3
  float v23; // [sp+10h] [bp-84h]
  float v26; // [sp+20h] [bp-74h]
  float v27; // [sp+20h] [bp-74h]
  float v28; // [sp+24h] [bp-70h]
  float MeleeRadius; // [sp+28h] [bp-6Ch]
  float v30; // [sp+3Ch] [bp-58h]
  int v31[3]; // [sp+44h] [bp-50h] BYREF
  int v32; // [sp+50h] [bp-44h]
  float v33; // [sp+54h] [bp-40h]
  float v34[3]; // [sp+58h] [bp-3Ch] BYREF
  float v35; // [sp+64h] [bp-30h]
  float v36; // [sp+68h] [bp-2Ch]
  float v37; // [sp+6Ch] [bp-28h]
  std::string v38; // [sp+74h] [bp-20h] BYREF

  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string(&v38, "isTracingTargetSearch");
  DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v38);
  if ( (std::string *)v38._M_start_of_storage._M_data == &v38 || !v38._M_start_of_storage._M_data )
    goto LABEL_6;
  if ( (unsigned int)(v38._M_buffers._M_end_of_storage - v38._M_start_of_storage._M_data) > 0x80 )
  {
    CustomFree(v38._M_start_of_storage._M_data);
    goto LABEL_6;
  }
  __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(
    v38._M_start_of_storage._M_data,
    v38._M_buffers._M_end_of_storage - v38._M_start_of_storage._M_data);
  while ( a1[4] != *a1 )
  {
    std::priority_queue<ObjectSearcher::TargetInfo,std::deque<ObjectSearcher::TargetInfo>,ObjectSearcher::TargetSorter>::pop(a1);
LABEL_6:
    ;
  }
  if ( a3 < 0.0 )
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
        "maxRange >= 0.0f",
        "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Helpers\\ObjectSearcher.cpp",
        307);
    }
  }
  if ( a5 < 0.0 )
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
        "maxWidth >= 0.0f",
        "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Helpers\\ObjectSearcher.cpp",
        308);
    }
  }
  v8 = a1[12];
  if ( v8 )
    MeleeRadius = CharAI::AI_GetMeleeRadius((CharAI *)(v8 + 968));
  else
    MeleeRadius = 0.0;
  v9 = *a6;
  v37 = 0.0;
  v35 = 0.0;
  v36 = 0.0;
  (*(void (__fastcall **)(int *))(v9 + 8))(a6);
  while ( 1 )
  {
    result = (*(int (__fastcall **)(int *))(*a6 + 12))(a6);
    if ( result )
      return result;
    v11 = (GameObject *)(*(int (__fastcall **)(int *))(*a6 + 24))(a6);
    v12 = (Character *)(*(int (__fastcall **)(int *))(*a6 + 28))(a6);
    if ( v11
      && v11 != (GameObject *)a1[11]
      && *((_BYTE *)v11 + 138)
      && (!(*(int (__fastcall **)(GameObject *))(*(_DWORD *)v11 + 196))(v11)
       || !*((_BYTE *)v11 + 750)
       || *((_BYTE *)v11 + 752))
      && (*(int (__fastcall **)(GameObject *, int))(*(_DWORD *)v11 + 136))(v11, a1[11]) )
    {
      if ( v12 )
      {
        if ( !ObjectSearcher::TargetList::_IsCharacterValid((ObjectSearcher::TargetList *)a1, v12) )
          goto LABEL_21;
      }
      else if ( !ObjectSearcher::TargetList::_IsGameObjectValid((ObjectSearcher::TargetList *)a1, v11) )
      {
        goto LABEL_21;
      }
      v30 = COERCE_FLOAT((*(int (__fastcall **)(GameObject *))(*(_DWORD *)v11 + 148))(v11));
      TargetPosition = (float *)GameObject::GetTargetPosition(v11);
      v26 = *TargetPosition - *a2;
      v28 = TargetPosition[1] - a2[1];
      v14 = TargetPosition[2] - a2[2];
      v15 = *a4;
      v36 = v28;
      v35 = v26;
      v37 = v14;
      if ( (float)((float)((float)(v26 * v15) + (float)(v28 * a4[1])) + (float)(v14 * a4[2])) >= 0.0 )
      {
        v27 = (float)(sqrtf((float)((float)(v26 * v26) + (float)(v28 * v28)) + (float)(v14 * v14)) - v30) - MeleeRadius;
        if ( v27 <= a3 )
        {
          v16 = a4[2];
          v23 = a4[1];
          v34[0] = (float)(v23 * *(float *)&dword_99F880) - (float)(v16 * *(float *)&dword_99F87C);
          v17 = v16 * *(float *)&Vec3f_K;
          v18 = *a4;
          v34[1] = v17 - (float)(*(float *)&dword_99F880 * *a4);
          v34[2] = (float)(*(float *)&dword_99F87C * v18) - (float)(v23 * *(float *)&Vec3f_K);
          v19 = (float *)Point3D<float>::normalize(v34);
          v20 = fabs((float)((float)(*v19 * v35) + (float)(v19[1] * v36)) + (float)(v19[2] * v37));
          if ( v20 <= a5 )
          {
            v21 = Point3D<float>::angle();
            v22 = LODWORD(v27);
            v32 = 0;
            *(float *)&v31[1] = v27;
            v31[2] = LODWORD(v21) & 0x7FFFFFFF;
            if ( v12 )
              v22 = 1;
            v31[0] = (int)v11;
            v33 = v20;
            if ( v12 )
              v32 = v22;
            std::priority_queue<ObjectSearcher::TargetInfo,std::deque<ObjectSearcher::TargetInfo>,ObjectSearcher::TargetSorter>::push(
              a1,
              v31);
          }
        }
      }
    }
LABEL_21:
    (*(void (__fastcall **)(int *))(*a6 + 16))(a6);
  }
}


// ===== 4a2e70 ObjectSearcher::TargetList::SearchRect(Point3D<float> const&,float,float,ObjectSearcher::IObjectList &) =====
int __fastcall ObjectSearcher::TargetList::SearchRect(int *a1, float *a2, float a3, float a4, int *a5)
{
  int v7; // r0
  float v11[3]; // [sp+Ch] [bp-Ch] BYREF

  v7 = a1[11];
  memset(v11, 0, sizeof(v11));
  GameObject::GetLookAtVec(v7, v11);
  return ObjectSearcher::TargetList::SearchRect(a1, a2, a3, v11, a4, a5);
}


// ===== 4a2ed0 ObjectSearcher::TargetList::SearchRect(float,float,ObjectSearcher::IObjectList &) =====
int __fastcall ObjectSearcher::TargetList::SearchRect(
        ObjectSearcher::TargetList *this,
        float a2,
        float a3,
        ObjectSearcher::IObjectList *a4)
{
  int v6; // r0
  float *TargetPosition; // r0
  float v11[3]; // [sp+Ch] [bp-Ch] BYREF

  v6 = *((_DWORD *)this + 11);
  memset(v11, 0, sizeof(v11));
  GameObject::GetLookAtVec(v6, v11);
  TargetPosition = (float *)GameObject::GetTargetPosition(*((GameObject **)this + 11));
  return ObjectSearcher::TargetList::SearchRect((int *)this, TargetPosition, a2, v11, a3, (int *)a4);
}


// ===== 4a2f34 ObjectSearcher::TargetList::Search(Point3D<float> const&,float,Point3D<float> const&,float,ObjectSearcher::IObjectList &) =====
int __fastcall ObjectSearcher::TargetList::Search(
        ObjectSearcher::TargetList *a1,
        float *a2,
        float a3,
        int a4,
        float a5,
        int *a6)
{
  int v8; // r0
  int v9; // r3
  int result; // r0
  GameObject *v11; // r8
  Character *v12; // r10
  float *TargetPosition; // r11
  int v14; // r0
  float v15; // [sp+8h] [bp-64h]
  float v16; // [sp+Ch] [bp-60h]
  float v18; // [sp+14h] [bp-58h]
  float v19; // [sp+14h] [bp-58h]
  float MeleeRadius; // [sp+18h] [bp-54h]
  _DWORD v22[5]; // [sp+28h] [bp-44h] BYREF
  float v23; // [sp+3Ch] [bp-30h] BYREF
  float v24; // [sp+40h] [bp-2Ch]
  float v25; // [sp+44h] [bp-28h]
  std::string v26; // [sp+4Ch] [bp-20h] BYREF

  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string((int)&v26, "isTracingTargetSearch");
  DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v26);
  if ( (std::string *)v26._M_start_of_storage._M_data == &v26 || !v26._M_start_of_storage._M_data )
    goto LABEL_6;
  if ( (unsigned int)(v26._M_buffers._M_end_of_storage - v26._M_start_of_storage._M_data) > 0x80 )
  {
    CustomFree(v26._M_start_of_storage._M_data);
    goto LABEL_6;
  }
  __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(
    v26._M_start_of_storage._M_data,
    v26._M_buffers._M_end_of_storage - v26._M_start_of_storage._M_data);
  while ( *((_DWORD *)a1 + 4) != *(_DWORD *)a1 )
  {
    std::priority_queue<ObjectSearcher::TargetInfo,std::deque<ObjectSearcher::TargetInfo>,ObjectSearcher::TargetSorter>::pop(a1);
LABEL_6:
    ;
  }
  if ( a3 < 0.0 )
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
        "maxRange >= 0.0f",
        "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Helpers\\ObjectSearcher.cpp",
        204);
    }
  }
  if ( a5 < 0.0 )
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
        "maxAngle >= 0.0f",
        "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Helpers\\ObjectSearcher.cpp",
        205);
    }
  }
  v8 = *((_DWORD *)a1 + 12);
  if ( v8 )
    MeleeRadius = CharAI::AI_GetMeleeRadius((CharAI *)(v8 + 968));
  else
    MeleeRadius = 0.0;
  v9 = *a6;
  v23 = 0.0;
  v24 = 0.0;
  v25 = 0.0;
  (*(void (__fastcall **)(int *))(v9 + 8))(a6);
  while ( 1 )
  {
    result = (*(int (__fastcall **)(int *))(*a6 + 12))(a6);
    if ( result )
      return result;
    v11 = (GameObject *)(*(int (__fastcall **)(int *))(*a6 + 24))(a6);
    v12 = (Character *)(*(int (__fastcall **)(int *))(*a6 + 28))(a6);
    if ( v11
      && v11 != *((GameObject **)a1 + 11)
      && *((_BYTE *)v11 + 138)
      && (!(*(int (__fastcall **)(GameObject *))(*(_DWORD *)v11 + 196))(v11)
       || !*((_BYTE *)v11 + 750)
       || *((_BYTE *)v11 + 752))
      && (*(int (__fastcall **)(GameObject *, _DWORD))(*(_DWORD *)v11 + 136))(v11, *((_DWORD *)a1 + 11)) )
    {
      if ( v12 )
      {
        if ( !ObjectSearcher::TargetList::_IsCharacterValid(a1, v12) )
          goto LABEL_21;
      }
      else if ( !ObjectSearcher::TargetList::_IsGameObjectValid(a1, v11) )
      {
        goto LABEL_21;
      }
      v15 = COERCE_FLOAT((*(int (__fastcall **)(GameObject *))(*(_DWORD *)v11 + 148))(v11));
      TargetPosition = (float *)GameObject::GetTargetPosition(v11);
      v16 = *TargetPosition - *a2;
      v18 = TargetPosition[1] - a2[1];
      v25 = TargetPosition[2] - a2[2];
      v23 = v16;
      v24 = v18;
      v19 = (float)(sqrtf((float)((float)(v23 * v23) + (float)(v18 * v18)) + (float)(v25 * v25)) - v15) - MeleeRadius;
      if ( v19 <= a3 )
      {
        v14 = Point3D<float>::angle(&v23, a4);
        if ( a5 >= 3.1416 || a5 >= COERCE_FLOAT(v14 & 0x7FFFFFFF) )
        {
          *(float *)&v22[1] = v19;
          v22[4] = 0;
          v22[0] = v11;
          v22[2] = v14 & 0x7FFFFFFF;
          v22[3] = v12 != nullptr;
          std::priority_queue<ObjectSearcher::TargetInfo,std::deque<ObjectSearcher::TargetInfo>,ObjectSearcher::TargetSorter>::push(
            a1,
            v22);
        }
      }
    }
LABEL_21:
    (*(void (__fastcall **)(int *))(*a6 + 16))(a6);
  }
}


// ===== 4a33c8 ObjectSearcher::TargetList::Search(Point3D<float> const&,float,float,ObjectSearcher::IObjectList &) =====
int __fastcall ObjectSearcher::TargetList::Search(
        ObjectSearcher::TargetList *a1,
        float *a2,
        float a3,
        float a4,
        int *a5)
{
  int v7; // r0
  float v11[3]; // [sp+Ch] [bp-Ch] BYREF

  v7 = *((_DWORD *)a1 + 11);
  memset(v11, 0, sizeof(v11));
  GameObject::GetLookAtVec(v7, v11);
  return ObjectSearcher::TargetList::Search(a1, a2, a3, (int)v11, a4, a5);
}


// ===== 4a3428 ObjectSearcher::TargetList::Search(float,float,ObjectSearcher::IObjectList &) =====
int __fastcall ObjectSearcher::TargetList::Search(
        ObjectSearcher::TargetList *this,
        float a2,
        float a3,
        ObjectSearcher::IObjectList *a4)
{
  int v6; // r0
  float *TargetPosition; // r0
  float v11[3]; // [sp+Ch] [bp-Ch] BYREF

  v6 = *((_DWORD *)this + 11);
  memset(v11, 0, sizeof(v11));
  GameObject::GetLookAtVec(v6, v11);
  TargetPosition = (float *)GameObject::GetTargetPosition(*((GameObject **)this + 11));
  return ObjectSearcher::TargetList::Search(this, TargetPosition, a2, (int)v11, a3, (int *)a4);
}


// ===== 4a348c ObjectSearcher::TargetList::TargetList(GameObject *,int,int,int) =====
ObjectSearcher::TargetList *__fastcall ObjectSearcher::TargetList::TargetList(
        ObjectSearcher::TargetList *this,
        GameObject *a2,
        int a3,
        int a4,
        int a5)
{
  int v9; // r1
  int v10; // r2

  *(_DWORD *)this = 0;
  *((_DWORD *)this + 1) = 0;
  *((_DWORD *)this + 2) = 0;
  *((_DWORD *)this + 3) = 0;
  *((_DWORD *)this + 4) = 0;
  *((_DWORD *)this + 5) = 0;
  *((_DWORD *)this + 6) = 0;
  *((_DWORD *)this + 7) = 0;
  *((_DWORD *)this + 8) = 0;
  *((_DWORD *)this + 9) = 0;
  std::priv::_Deque_base<ObjectSearcher::TargetInfo,std::allocator<ObjectSearcher::TargetInfo>>::_M_initialize_map();
  *((_DWORD *)this + 13) = a3;
  *((_DWORD *)this + 10) = ObjectSearcher::TargetSorter::_sortNoSort;
  *((_DWORD *)this + 14) = a4;
  *((_DWORD *)this + 11) = 0;
  *((_DWORD *)this + 12) = 0;
  *((_DWORD *)this + 16) = 0;
  *((_BYTE *)this + 60) = 0;
  v9 = *((_DWORD *)this + 4);
  v10 = *(_DWORD *)this;
  *((_DWORD *)this + 18) = (char *)this + 60;
  *((_DWORD *)this + 19) = 0;
  *((_DWORD *)this + 17) = (char *)this + 60;
  if ( v9 != v10 )
  {
    do
      std::priority_queue<ObjectSearcher::TargetInfo,std::deque<ObjectSearcher::TargetInfo>,ObjectSearcher::TargetSorter>::pop(this);
    while ( *((_DWORD *)this + 4) != *(_DWORD *)this );
  }
  if ( a5 == 1 )
  {
    *((_DWORD *)this + 10) = ObjectSearcher::TargetSorter::_sortClosest;
    ObjectSearcher::TargetList::SetRefObject((int)this, a2);
    return this;
  }
  else
  {
    if ( a5 == 2 )
      *((_DWORD *)this + 10) = ObjectSearcher::TargetSorter::_sortFrontal;
    else
      *((_DWORD *)this + 10) = ObjectSearcher::TargetSorter::_sortNoSort;
    ObjectSearcher::TargetList::SetRefObject((int)this, a2);
    return this;
  }
}


// ===== 4a35b4 ObjectSearcher::TargetList::Resort(int) =====
int __fastcall ObjectSearcher::TargetList::Resort(ObjectSearcher::TargetList *this, int a2)
{
  int v2; // r12
  int i; // lr
  int v6; // r5
  int v7; // r6
  int v8; // r8
  int v9; // r10
  int v10; // r9
  _DWORD v12[4]; // [sp+8h] [bp-20h] BYREF
  _DWORD v13[4]; // [sp+18h] [bp-10h] BYREF

  v2 = *((_DWORD *)this + 4);
  for ( i = *(_DWORD *)this; v2 != *(_DWORD *)this; i = *(_DWORD *)this )
  {
    std::priority_queue<ObjectSearcher::TargetInfo,std::deque<ObjectSearcher::TargetInfo>,ObjectSearcher::TargetSorter>::pop(this);
    v2 = *((_DWORD *)this + 4);
  }
  if ( a2 == 1 )
  {
    *((_DWORD *)this + 10) = ObjectSearcher::TargetSorter::_sortClosest;
  }
  else if ( a2 == 2 )
  {
    *((_DWORD *)this + 10) = ObjectSearcher::TargetSorter::_sortFrontal;
  }
  else
  {
    *((_DWORD *)this + 10) = ObjectSearcher::TargetSorter::_sortNoSort;
  }
  v6 = *((_DWORD *)this + 1);
  v7 = *((_DWORD *)this + 2);
  v8 = *((_DWORD *)this + 7);
  v9 = *((_DWORD *)this + 6);
  v10 = *((_DWORD *)this + 5);
  v12[3] = *((_DWORD *)this + 3);
  v12[2] = v7;
  v12[1] = v6;
  v12[0] = i;
  v13[3] = v8;
  v13[2] = v9;
  v13[1] = v10;
  v13[0] = v2;
  return std::__make_heap<std::priv::_Deque_iterator<ObjectSearcher::TargetInfo,std::_Nonconst_traits<ObjectSearcher::TargetInfo>>,ObjectSearcher::TargetSorter,ObjectSearcher::TargetInfo,int>(
           v12,
           v13);
}


// ===== 4a3690 std::allocator<std::priv::_Rb_tree_node<std::pair<std::string const,ObjectSearcher::BackupObjectList>>>::allocate(uint,void const*) [clone] =====
void *std::allocator<std::priv::_Rb_tree_node<std::pair<std::string const,ObjectSearcher::BackupObjectList>>>::allocate()
{
  size_t v1; // [sp+4h] [bp-8h] BYREF

  v1 = 64;
  return __ZNSt12__node_alloc11_M_allocateERj_veneer(&v1);
}


// ===== 4a36b0 ObjectSearcher::TargetList::BackupResults(char const*) =====
void __fastcall ObjectSearcher::TargetList::BackupResults(GameObject ***this, const char *a2)
{
  ObjectSearcher::BackupObjectList *v3; // r0
  GameObject **v4; // r4
  ObjectSearcher::BackupObjectList *v5; // r5
  GameObject **v6; // r7
  int v7; // r10
  GameObject **v8; // r6
  int v9; // r1
  int v10; // r2
  int v11; // r3
  int v12; // r0
  GameObject *v13; // t1
  GameObject **v14; // t1
  int v15; // r3
  const char *v16; // [sp+Ch] [bp-18h] BYREF
  _DWORD v17[5]; // [sp+10h] [bp-14h] BYREF

  v16 = a2;
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
        "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Helpers\\ObjectSearcher.cpp",
        405);
    }
  }
  v3 = (ObjectSearcher::BackupObjectList *)std::map<std::string,ObjectSearcher::BackupObjectList>::operator[]<char const*>(
                                             this + 15,
                                             &v16);
  v4 = *this;
  v5 = v3;
  v6 = *(this + 4);
  v7 = (int)*(this + 3);
  v8 = *(this + 2);
  ObjectSearcher::BackupObjectList::_Clear(v3);
  v9 = (int)*(this + 1);
  v10 = (int)*(this + 2);
  v11 = (int)*(this + 3);
  v17[0] = *this;
  v17[1] = v9;
  v17[2] = v10;
  v17[3] = v11;
  v12 = std::priv::_Deque_iterator_base<ObjectSearcher::TargetInfo>::_M_subtract(this + 4, v17);
  std::vector<GameObject *>::reserve((char *)v5 + 4, v12);
  if ( v6 != v4 )
  {
    do
    {
      while ( 1 )
      {
        v13 = *v4;
        v4 += 5;
        ObjectSearcher::BackupObjectList::_Add(v5, v13);
        if ( v4 == v8 )
          break;
        if ( v4 == v6 )
          goto LABEL_7;
      }
      v14 = *(GameObject ***)(v7 + 4);
      v7 += 4;
      v4 = v14;
      v8 = v14 + 30;
    }
    while ( v6 != v14 );
  }
LABEL_7:
  v15 = *((_DWORD *)v5 + 2);
  *((_DWORD *)v5 + 4) = *((_DWORD *)v5 + 1);
  *((_DWORD *)v5 + 5) = v15;
}


// ===== 4a37d0 IDataReloader::~IDataReloader() =====
void __fastcall IDataReloader::~IDataReloader(IDataReloader *this)
{
  ;
}


// ===== 4a37d4 IDataReloader::~IDataReloader() =====
void __fastcall IDataReloader::~IDataReloader(IDataReloader *this)
{
  *(_DWORD *)this = off_969D48;
  CustomFree(this);
}


// ===== 4a3808 Arrays::Sounds::finalizeNames(void) =====
void __fastcall Arrays::Sounds::finalizeNames(Arrays::Sounds *this)
{
  _DWORD *v1; // r3
  unsigned int v2; // r4
  void *v3; // r0

  v1 = (_DWORD *)Arrays::Sounds::m_memberNames;
  if ( Arrays::Sounds::m_memberNames )
  {
    if ( !Arrays::Sounds::size )
      goto LABEL_9;
    v2 = 0;
    while ( 1 )
    {
      v3 = (void *)v1[v2++];
      if ( v3 )
      {
        CustomFree(v3);
        v1 = (_DWORD *)Arrays::Sounds::m_memberNames;
      }
      if ( Arrays::Sounds::size <= v2 )
        break;
      v1 = (_DWORD *)Arrays::Sounds::m_memberNames;
    }
    if ( v1 )
LABEL_9:
      CustomFree(v1);
    Arrays::Sounds::m_memberNames = 0;
  }
}


// ===== 4a38a4 Arrays::Sounds::finalize(void) =====
void __fastcall Arrays::Sounds::finalize(Arrays::Sounds *this)
{
  int v1; // r3
  int v2; // r4
  unsigned int v3; // r6
  int v4; // r0
  int v5; // r4

  v1 = Arrays::Sounds::members;
  if ( Arrays::Sounds::members )
  {
    if ( !Arrays::Sounds::size )
      goto LABEL_7;
    v2 = 0;
    v3 = 0;
    while ( 1 )
    {
      (*(void (__fastcall **)(int))(*(_DWORD *)(v1 + v2) + 8))(v1 + v2);
      ++v3;
      v2 += 12;
      if ( Arrays::Sounds::size <= v3 )
        break;
      v1 = Arrays::Sounds::members;
    }
    v1 = Arrays::Sounds::members;
    if ( Arrays::Sounds::members )
    {
LABEL_7:
      v4 = v1 + 12 * *(_DWORD *)(v1 - 4);
      if ( v1 != v4 )
      {
        while ( 1 )
        {
          v5 = v4 - 12;
          (**(void (__fastcall ***)(int))(v4 - 12))(v4 - 12);
          v4 = Arrays::Sounds::members;
          if ( Arrays::Sounds::members == v5 )
            break;
          v4 = v5;
        }
      }
      CustomFree((void *)(v4 - 8));
    }
    Arrays::Sounds::members = 0;
  }
}


// ===== 4a3988 Arrays::StrID_Languages::finalizeNames(void) =====
void __fastcall Arrays::StrID_Languages::finalizeNames(Arrays::StrID_Languages *this)
{
  _DWORD *v1; // r3
  unsigned int v2; // r4
  void *v3; // r0

  v1 = (_DWORD *)Arrays::StrID_Languages::m_memberNames;
  if ( Arrays::StrID_Languages::m_memberNames )
  {
    if ( !Arrays::StrID_Languages::size )
      goto LABEL_9;
    v2 = 0;
    while ( 1 )
    {
      v3 = (void *)v1[v2++];
      if ( v3 )
      {
        CustomFree(v3);
        v1 = (_DWORD *)Arrays::StrID_Languages::m_memberNames;
      }
      if ( Arrays::StrID_Languages::size <= v2 )
        break;
      v1 = (_DWORD *)Arrays::StrID_Languages::m_memberNames;
    }
    if ( v1 )
LABEL_9:
      CustomFree(v1);
    Arrays::StrID_Languages::m_memberNames = 0;
  }
}


// ===== 4a3a24 Arrays::StrID_Languages::finalize(void) =====
void __fastcall Arrays::StrID_Languages::finalize(Arrays::StrID_Languages *this)
{
  int v1; // r3
  int v2; // r4
  unsigned int v3; // r6
  int v4; // r0
  int v5; // r4

  v1 = Arrays::StrID_Languages::members;
  if ( Arrays::StrID_Languages::members )
  {
    if ( !Arrays::StrID_Languages::size )
      goto LABEL_7;
    v2 = 0;
    v3 = 0;
    while ( 1 )
    {
      (*(void (__fastcall **)(int))(*(_DWORD *)(v1 + v2) + 8))(v1 + v2);
      ++v3;
      v2 += 12;
      if ( Arrays::StrID_Languages::size <= v3 )
        break;
      v1 = Arrays::StrID_Languages::members;
    }
    v1 = Arrays::StrID_Languages::members;
    if ( Arrays::StrID_Languages::members )
    {
LABEL_7:
      v4 = v1 + 12 * *(_DWORD *)(v1 - 4);
      if ( v1 != v4 )
      {
        while ( 1 )
        {
          v5 = v4 - 12;
          (**(void (__fastcall ***)(int))(v4 - 12))(v4 - 12);
          v4 = Arrays::StrID_Languages::members;
          if ( Arrays::StrID_Languages::members == v5 )
            break;
          v4 = v5;
        }
      }
      CustomFree((void *)(v4 - 8));
    }
    Arrays::StrID_Languages::members = 0;
  }
}


// ===== 4a3b08 Arrays::GameObjectDict::finalizeNames(void) =====
void __fastcall Arrays::GameObjectDict::finalizeNames(Arrays::GameObjectDict *this)
{
  _DWORD *v1; // r3
  unsigned int v2; // r4
  void *v3; // r0

  v1 = (_DWORD *)Arrays::GameObjectDict::m_memberNames;
  if ( Arrays::GameObjectDict::m_memberNames )
  {
    if ( !Arrays::GameObjectDict::size )
      goto LABEL_9;
    v2 = 0;
    while ( 1 )
    {
      v3 = (void *)v1[v2++];
      if ( v3 )
      {
        CustomFree(v3);
        v1 = (_DWORD *)Arrays::GameObjectDict::m_memberNames;
      }
      if ( Arrays::GameObjectDict::size <= v2 )
        break;
      v1 = (_DWORD *)Arrays::GameObjectDict::m_memberNames;
    }
    if ( v1 )
LABEL_9:
      CustomFree(v1);
    Arrays::GameObjectDict::m_memberNames = 0;
  }
}


// ===== 4a3ba4 Arrays::GameObjectDict::finalize(void) =====
void __fastcall Arrays::GameObjectDict::finalize(Arrays::GameObjectDict *this)
{
  int v1; // r3
  int v2; // r4
  unsigned int v3; // r6
  int v4; // r0
  int v5; // r4

  v1 = Arrays::GameObjectDict::members;
  if ( Arrays::GameObjectDict::members )
  {
    if ( !Arrays::GameObjectDict::size )
      goto LABEL_7;
    v2 = 0;
    v3 = 0;
    while ( 1 )
    {
      (*(void (__fastcall **)(int))(*(_DWORD *)(v1 + v2) + 8))(v1 + v2);
      ++v3;
      v2 += 12;
      if ( Arrays::GameObjectDict::size <= v3 )
        break;
      v1 = Arrays::GameObjectDict::members;
    }
    v1 = Arrays::GameObjectDict::members;
    if ( Arrays::GameObjectDict::members )
    {
LABEL_7:
      v4 = v1 + 12 * *(_DWORD *)(v1 - 4);
      if ( v1 != v4 )
      {
        while ( 1 )
        {
          v5 = v4 - 12;
          (**(void (__fastcall ***)(int))(v4 - 12))(v4 - 12);
          v4 = Arrays::GameObjectDict::members;
          if ( Arrays::GameObjectDict::members == v5 )
            break;
          v4 = v5;
        }
      }
      CustomFree((void *)(v4 - 8));
    }
    Arrays::GameObjectDict::members = 0;
  }
}


// ===== 4a3c88 Arrays::ProjectileDict::finalizeNames(void) =====
void __fastcall Arrays::ProjectileDict::finalizeNames(Arrays::ProjectileDict *this)
{
  _DWORD *v1; // r3
  unsigned int v2; // r4
  void *v3; // r0

  v1 = (_DWORD *)Arrays::ProjectileDict::m_memberNames;
  if ( Arrays::ProjectileDict::m_memberNames )
  {
    if ( !Arrays::ProjectileDict::size )
      goto LABEL_9;
    v2 = 0;
    while ( 1 )
    {
      v3 = (void *)v1[v2++];
      if ( v3 )
      {
        CustomFree(v3);
        v1 = (_DWORD *)Arrays::ProjectileDict::m_memberNames;
      }
      if ( Arrays::ProjectileDict::size <= v2 )
        break;
      v1 = (_DWORD *)Arrays::ProjectileDict::m_memberNames;
    }
    if ( v1 )
LABEL_9:
      CustomFree(v1);
    Arrays::ProjectileDict::m_memberNames = 0;
  }
}


// ===== 4a3d24 Arrays::ProjectileDict::finalize(void) =====
void __fastcall Arrays::ProjectileDict::finalize(Arrays::ProjectileDict *this)
{
  int v1; // r3
  int v2; // r4
  unsigned int v3; // r6
  int v4; // r0
  int v5; // r4

  v1 = Arrays::ProjectileDict::members;
  if ( Arrays::ProjectileDict::members )
  {
    if ( !Arrays::ProjectileDict::size )
      goto LABEL_7;
    v2 = 0;
    v3 = 0;
    while ( 1 )
    {
      (*(void (__fastcall **)(int))(*(_DWORD *)(v1 + v2) + 8))(v1 + v2);
      ++v3;
      v2 += 12;
      if ( Arrays::ProjectileDict::size <= v3 )
        break;
      v1 = Arrays::ProjectileDict::members;
    }
    v1 = Arrays::ProjectileDict::members;
    if ( Arrays::ProjectileDict::members )
    {
LABEL_7:
      v4 = v1 + 12 * *(_DWORD *)(v1 - 4);
      if ( v1 != v4 )
      {
        while ( 1 )
        {
          v5 = v4 - 12;
          (**(void (__fastcall ***)(int))(v4 - 12))(v4 - 12);
          v4 = Arrays::ProjectileDict::members;
          if ( Arrays::ProjectileDict::members == v5 )
            break;
          v4 = v5;
        }
      }
      CustomFree((void *)(v4 - 8));
    }
    Arrays::ProjectileDict::members = 0;
  }
}


// ===== 4a3e08 Arrays::EffectDict::finalizeNames(void) =====
void __fastcall Arrays::EffectDict::finalizeNames(Arrays::EffectDict *this)
{
  _DWORD *v1; // r3
  unsigned int v2; // r4
  void *v3; // r0

  v1 = (_DWORD *)Arrays::EffectDict::m_memberNames;
  if ( Arrays::EffectDict::m_memberNames )
  {
    if ( !Arrays::EffectDict::size )
      goto LABEL_9;
    v2 = 0;
    while ( 1 )
    {
      v3 = (void *)v1[v2++];
      if ( v3 )
      {
        CustomFree(v3);
        v1 = (_DWORD *)Arrays::EffectDict::m_memberNames;
      }
      if ( Arrays::EffectDict::size <= v2 )
        break;
      v1 = (_DWORD *)Arrays::EffectDict::m_memberNames;
    }
    if ( v1 )
LABEL_9:
      CustomFree(v1);
    Arrays::EffectDict::m_memberNames = 0;
  }
}


// ===== 4a3ea4 Arrays::EffectDict::finalize(void) =====
void __fastcall Arrays::EffectDict::finalize(Arrays::EffectDict *this)
{
  int v1; // r3
  int v2; // r4
  unsigned int v3; // r6
  int v4; // r0
  int v5; // r4

  v1 = Arrays::EffectDict::members;
  if ( Arrays::EffectDict::members )
  {
    if ( !Arrays::EffectDict::size )
      goto LABEL_7;
    v2 = 0;
    v3 = 0;
    while ( 1 )
    {
      (*(void (__fastcall **)(int))(*(_DWORD *)(v1 + v2) + 8))(v1 + v2);
      ++v3;
      v2 += 12;
      if ( Arrays::EffectDict::size <= v3 )
        break;
      v1 = Arrays::EffectDict::members;
    }
    v1 = Arrays::EffectDict::members;
    if ( Arrays::EffectDict::members )
    {
LABEL_7:
      v4 = v1 + 12 * *(_DWORD *)(v1 - 4);
      if ( v1 != v4 )
      {
        while ( 1 )
        {
          v5 = v4 - 12;
          (**(void (__fastcall ***)(int))(v4 - 12))(v4 - 12);
          v4 = Arrays::EffectDict::members;
          if ( Arrays::EffectDict::members == v5 )
            break;
          v4 = v5;
        }
      }
      CustomFree((void *)(v4 - 8));
    }
    Arrays::EffectDict::members = 0;
  }
}


// ===== 4a3f88 Arrays::AnimDict::finalizeNames(void) =====
void __fastcall Arrays::AnimDict::finalizeNames(Arrays::AnimDict *this)
{
  _DWORD *v1; // r3
  unsigned int v2; // r4
  void *v3; // r0

  v1 = (_DWORD *)Arrays::AnimDict::m_memberNames;
  if ( Arrays::AnimDict::m_memberNames )
  {
    if ( !Arrays::AnimDict::size )
      goto LABEL_9;
    v2 = 0;
    while ( 1 )
    {
      v3 = (void *)v1[v2++];
      if ( v3 )
      {
        CustomFree(v3);
        v1 = (_DWORD *)Arrays::AnimDict::m_memberNames;
      }
      if ( Arrays::AnimDict::size <= v2 )
        break;
      v1 = (_DWORD *)Arrays::AnimDict::m_memberNames;
    }
    if ( v1 )
LABEL_9:
      CustomFree(v1);
    Arrays::AnimDict::m_memberNames = 0;
  }
}


// ===== 4a4024 Arrays::AnimDict::finalize(void) =====
void __fastcall Arrays::AnimDict::finalize(Arrays::AnimDict *this)
{
  int v1; // r3
  int v2; // r4
  unsigned int v3; // r6
  int v4; // r0
  int v5; // r4

  v1 = Arrays::AnimDict::members;
  if ( Arrays::AnimDict::members )
  {
    if ( !Arrays::AnimDict::size )
      goto LABEL_7;
    v2 = 0;
    v3 = 0;
    while ( 1 )
    {
      (*(void (__fastcall **)(int))(*(_DWORD *)(v1 + v2) + 8))(v1 + v2);
      ++v3;
      v2 += 12;
      if ( Arrays::AnimDict::size <= v3 )
        break;
      v1 = Arrays::AnimDict::members;
    }
    v1 = Arrays::AnimDict::members;
    if ( Arrays::AnimDict::members )
    {
LABEL_7:
      v4 = v1 + 12 * *(_DWORD *)(v1 - 4);
      if ( v1 != v4 )
      {
        while ( 1 )
        {
          v5 = v4 - 12;
          (**(void (__fastcall ***)(int))(v4 - 12))(v4 - 12);
          v4 = Arrays::AnimDict::members;
          if ( Arrays::AnimDict::members == v5 )
            break;
          v4 = v5;
        }
      }
      CustomFree((void *)(v4 - 8));
    }
    Arrays::AnimDict::members = 0;
  }
}


// ===== 4a4108 Arrays::ModelDict::finalizeNames(void) =====
void __fastcall Arrays::ModelDict::finalizeNames(Arrays::ModelDict *this)
{
  _DWORD *v1; // r3
  unsigned int v2; // r4
  void *v3; // r0

  v1 = (_DWORD *)Arrays::ModelDict::m_memberNames;
  if ( Arrays::ModelDict::m_memberNames )
  {
    if ( !Arrays::ModelDict::size )
      goto LABEL_9;
    v2 = 0;
    while ( 1 )
    {
      v3 = (void *)v1[v2++];
      if ( v3 )
      {
        CustomFree(v3);
        v1 = (_DWORD *)Arrays::ModelDict::m_memberNames;
      }
      if ( Arrays::ModelDict::size <= v2 )
        break;
      v1 = (_DWORD *)Arrays::ModelDict::m_memberNames;
    }
    if ( v1 )
LABEL_9:
      CustomFree(v1);
    Arrays::ModelDict::m_memberNames = 0;
  }
}


// ===== 4a41a4 Arrays::ModelDict::finalize(void) =====
void __fastcall Arrays::ModelDict::finalize(Arrays::ModelDict *this)
{
  int v1; // r3
  int v2; // r4
  unsigned int v3; // r6
  int v4; // r0
  int v5; // r4

  v1 = Arrays::ModelDict::members;
  if ( Arrays::ModelDict::members )
  {
    if ( !Arrays::ModelDict::size )
      goto LABEL_7;
    v2 = 0;
    v3 = 0;
    while ( 1 )
    {
      (*(void (__fastcall **)(int))(*(_DWORD *)(v1 + v2) + 8))(v1 + v2);
      ++v3;
      v2 += 12;
      if ( Arrays::ModelDict::size <= v3 )
        break;
      v1 = Arrays::ModelDict::members;
    }
    v1 = Arrays::ModelDict::members;
    if ( Arrays::ModelDict::members )
    {
LABEL_7:
      v4 = v1 + 12 * *(_DWORD *)(v1 - 4);
      if ( v1 != v4 )
      {
        while ( 1 )
        {
          v5 = v4 - 12;
          (**(void (__fastcall ***)(int))(v4 - 12))(v4 - 12);
          v4 = Arrays::ModelDict::members;
          if ( Arrays::ModelDict::members == v5 )
            break;
          v4 = v5;
        }
      }
      CustomFree((void *)(v4 - 8));
    }
    Arrays::ModelDict::members = 0;
  }
}


// ===== 4a4288 Arrays::WorldMapLockers::finalizeNames(void) =====
void __fastcall Arrays::WorldMapLockers::finalizeNames(Arrays::WorldMapLockers *this)
{
  _DWORD *v1; // r3
  unsigned int v2; // r4
  void *v3; // r0

  v1 = (_DWORD *)Arrays::WorldMapLockers::m_memberNames;
  if ( Arrays::WorldMapLockers::m_memberNames )
  {
    if ( !Arrays::WorldMapLockers::size )
      goto LABEL_9;
    v2 = 0;
    while ( 1 )
    {
      v3 = (void *)v1[v2++];
      if ( v3 )
      {
        CustomFree(v3);
        v1 = (_DWORD *)Arrays::WorldMapLockers::m_memberNames;
      }
      if ( Arrays::WorldMapLockers::size <= v2 )
        break;
      v1 = (_DWORD *)Arrays::WorldMapLockers::m_memberNames;
    }
    if ( v1 )
LABEL_9:
      CustomFree(v1);
    Arrays::WorldMapLockers::m_memberNames = 0;
  }
}


// ===== 4a4324 Arrays::WorldMapLockers::finalize(void) =====
void __fastcall Arrays::WorldMapLockers::finalize(Arrays::WorldMapLockers *this)
{
  int v1; // r3
  int v2; // r4
  unsigned int v3; // r6
  int v4; // r0
  int v5; // r4

  v1 = Arrays::WorldMapLockers::members;
  if ( Arrays::WorldMapLockers::members )
  {
    if ( !Arrays::WorldMapLockers::size )
      goto LABEL_7;
    v2 = 0;
    v3 = 0;
    while ( 1 )
    {
      (*(void (__fastcall **)(int))(*(_DWORD *)(v1 + v2) + 8))(v1 + v2);
      ++v3;
      v2 += 12;
      if ( Arrays::WorldMapLockers::size <= v3 )
        break;
      v1 = Arrays::WorldMapLockers::members;
    }
    v1 = Arrays::WorldMapLockers::members;
    if ( Arrays::WorldMapLockers::members )
    {
LABEL_7:
      v4 = v1 + 12 * *(_DWORD *)(v1 - 4);
      if ( v1 != v4 )
      {
        while ( 1 )
        {
          v5 = v4 - 12;
          (**(void (__fastcall ***)(int))(v4 - 12))(v4 - 12);
          v4 = Arrays::WorldMapLockers::members;
          if ( Arrays::WorldMapLockers::members == v5 )
            break;
          v4 = v5;
        }
      }
      CustomFree((void *)(v4 - 8));
    }
    Arrays::WorldMapLockers::members = 0;
  }
}


// ===== 4a4408 Arrays::WorldMap::finalizeNames(void) =====
void __fastcall Arrays::WorldMap::finalizeNames(Arrays::WorldMap *this)
{
  _DWORD *v1; // r3
  unsigned int v2; // r4
  void *v3; // r0

  v1 = (_DWORD *)Arrays::WorldMap::m_memberNames;
  if ( Arrays::WorldMap::m_memberNames )
  {
    if ( !Arrays::WorldMap::size )
      goto LABEL_9;
    v2 = 0;
    while ( 1 )
    {
      v3 = (void *)v1[v2++];
      if ( v3 )
      {
        CustomFree(v3);
        v1 = (_DWORD *)Arrays::WorldMap::m_memberNames;
      }
      if ( Arrays::WorldMap::size <= v2 )
        break;
      v1 = (_DWORD *)Arrays::WorldMap::m_memberNames;
    }
    if ( v1 )
LABEL_9:
      CustomFree(v1);
    Arrays::WorldMap::m_memberNames = 0;
  }
}


// ===== 4a44a4 Arrays::WorldMap::finalize(void) =====
void __fastcall Arrays::WorldMap::finalize(Arrays::WorldMap *this)
{
  int v1; // r3
  int v2; // r4
  unsigned int v3; // r6
  int v4; // r0
  int v5; // r4

  v1 = Arrays::WorldMap::members;
  if ( Arrays::WorldMap::members )
  {
    if ( !Arrays::WorldMap::size )
      goto LABEL_7;
    v2 = 0;
    v3 = 0;
    while ( 1 )
    {
      (*(void (__fastcall **)(int))(*(_DWORD *)(v1 + v2) + 8))(v1 + v2);
      ++v3;
      v2 += 20;
      if ( Arrays::WorldMap::size <= v3 )
        break;
      v1 = Arrays::WorldMap::members;
    }
    v1 = Arrays::WorldMap::members;
    if ( Arrays::WorldMap::members )
    {
LABEL_7:
      v4 = v1 + 20 * *(_DWORD *)(v1 - 4);
      if ( v1 != v4 )
      {
        while ( 1 )
        {
          v5 = v4 - 20;
          (**(void (__fastcall ***)(int))(v4 - 20))(v4 - 20);
          v4 = Arrays::WorldMap::members;
          if ( Arrays::WorldMap::members == v5 )
            break;
          v4 = v5;
        }
      }
      CustomFree((void *)(v4 - 8));
    }
    Arrays::WorldMap::members = 0;
  }
}


// ===== 4a4588 Arrays::v2Quests::finalizeNames(void) =====
void __fastcall Arrays::v2Quests::finalizeNames(Arrays::v2Quests *this)
{
  _DWORD *v1; // r3
  unsigned int v2; // r4
  void *v3; // r0

  v1 = (_DWORD *)Arrays::v2Quests::m_memberNames;
  if ( Arrays::v2Quests::m_memberNames )
  {
    if ( !Arrays::v2Quests::size )
      goto LABEL_9;
    v2 = 0;
    while ( 1 )
    {
      v3 = (void *)v1[v2++];
      if ( v3 )
      {
        CustomFree(v3);
        v1 = (_DWORD *)Arrays::v2Quests::m_memberNames;
      }
      if ( Arrays::v2Quests::size <= v2 )
        break;
      v1 = (_DWORD *)Arrays::v2Quests::m_memberNames;
    }
    if ( v1 )
LABEL_9:
      CustomFree(v1);
    Arrays::v2Quests::m_memberNames = 0;
  }
}


// ===== 4a4624 Arrays::v2Quests::finalize(void) =====
void __fastcall Arrays::v2Quests::finalize(Arrays::v2Quests *this)
{
  int v1; // r3
  int v2; // r4
  unsigned int v3; // r6
  int v4; // r0
  int v5; // r4

  v1 = Arrays::v2Quests::members;
  if ( Arrays::v2Quests::members )
  {
    if ( !Arrays::v2Quests::size )
      goto LABEL_7;
    v2 = 0;
    v3 = 0;
    while ( 1 )
    {
      (*(void (__fastcall **)(int))(*(_DWORD *)(v1 + v2) + 8))(v1 + v2);
      ++v3;
      v2 += 284;
      if ( Arrays::v2Quests::size <= v3 )
        break;
      v1 = Arrays::v2Quests::members;
    }
    v1 = Arrays::v2Quests::members;
    if ( Arrays::v2Quests::members )
    {
LABEL_7:
      v4 = v1 + 284 * *(_DWORD *)(v1 - 4);
      if ( v1 != v4 )
      {
        while ( 1 )
        {
          v5 = v4 - 284;
          (**(void (__fastcall ***)(int))(v4 - 284))(v4 - 284);
          v4 = Arrays::v2Quests::members;
          if ( Arrays::v2Quests::members == v5 )
            break;
          v4 = v5;
        }
      }
      CustomFree((void *)(v4 - 8));
    }
    Arrays::v2Quests::members = 0;
  }
}


// ===== 4a4708 Arrays::v2Events::finalizeNames(void) =====
void __fastcall Arrays::v2Events::finalizeNames(Arrays::v2Events *this)
{
  _DWORD *v1; // r3
  unsigned int v2; // r4
  void *v3; // r0

  v1 = (_DWORD *)Arrays::v2Events::m_memberNames;
  if ( Arrays::v2Events::m_memberNames )
  {
    if ( !Arrays::v2Events::size )
      goto LABEL_9;
    v2 = 0;
    while ( 1 )
    {
      v3 = (void *)v1[v2++];
      if ( v3 )
      {
        CustomFree(v3);
        v1 = (_DWORD *)Arrays::v2Events::m_memberNames;
      }
      if ( Arrays::v2Events::size <= v2 )
        break;
      v1 = (_DWORD *)Arrays::v2Events::m_memberNames;
    }
    if ( v1 )
LABEL_9:
      CustomFree(v1);
    Arrays::v2Events::m_memberNames = 0;
  }
}


// ===== 4a47a4 Arrays::v2Events::finalize(void) =====
void __fastcall Arrays::v2Events::finalize(Arrays::v2Events *this)
{
  int v1; // r3
  int v2; // r4
  unsigned int v3; // r6
  int v4; // r0
  int v5; // r4

  v1 = Arrays::v2Events::members;
  if ( Arrays::v2Events::members )
  {
    if ( !Arrays::v2Events::size )
      goto LABEL_7;
    v2 = 0;
    v3 = 0;
    while ( 1 )
    {
      (*(void (__fastcall **)(int))(*(_DWORD *)(v1 + v2) + 8))(v1 + v2);
      ++v3;
      v2 += 24;
      if ( Arrays::v2Events::size <= v3 )
        break;
      v1 = Arrays::v2Events::members;
    }
    v1 = Arrays::v2Events::members;
    if ( Arrays::v2Events::members )
    {
LABEL_7:
      v4 = v1 + 24 * *(_DWORD *)(v1 - 4);
      if ( v1 != v4 )
      {
        while ( 1 )
        {
          v5 = v4 - 24;
          (**(void (__fastcall ***)(int))(v4 - 24))(v4 - 24);
          v4 = Arrays::v2Events::members;
          if ( Arrays::v2Events::members == v5 )
            break;
          v4 = v5;
        }
      }
      CustomFree((void *)(v4 - 8));
    }
    Arrays::v2Events::members = 0;
  }
}


// ===== 4a4888 Arrays::v2Conditions::finalizeNames(void) =====
void __fastcall Arrays::v2Conditions::finalizeNames(Arrays::v2Conditions *this)
{
  _DWORD *v1; // r3
  unsigned int v2; // r4
  void *v3; // r0

  v1 = (_DWORD *)Arrays::v2Conditions::m_memberNames;
  if ( Arrays::v2Conditions::m_memberNames )
  {
    if ( !Arrays::v2Conditions::size )
      goto LABEL_9;
    v2 = 0;
    while ( 1 )
    {
      v3 = (void *)v1[v2++];
      if ( v3 )
      {
        CustomFree(v3);
        v1 = (_DWORD *)Arrays::v2Conditions::m_memberNames;
      }
      if ( Arrays::v2Conditions::size <= v2 )
        break;
      v1 = (_DWORD *)Arrays::v2Conditions::m_memberNames;
    }
    if ( v1 )
LABEL_9:
      CustomFree(v1);
    Arrays::v2Conditions::m_memberNames = 0;
  }
}


// ===== 4a4924 Arrays::v2Conditions::finalize(void) =====
void __fastcall Arrays::v2Conditions::finalize(Arrays::v2Conditions *this)
{
  int v1; // r3
  int v2; // r4
  int v3; // r0
  int v4; // r4

  v1 = Arrays::v2Conditions::members;
  if ( Arrays::v2Conditions::members )
  {
    if ( !Arrays::v2Conditions::size )
      goto LABEL_7;
    v2 = 0;
    while ( 1 )
    {
      (*(void (__fastcall **)(int))(*(_DWORD *)(v1 + 16 * v2) + 8))(v1 + 16 * v2);
      if ( Arrays::v2Conditions::size <= (unsigned int)++v2 )
        break;
      v1 = Arrays::v2Conditions::members;
    }
    v1 = Arrays::v2Conditions::members;
    if ( Arrays::v2Conditions::members )
    {
LABEL_7:
      v3 = v1 + 16 * *(_DWORD *)(v1 - 4);
      if ( v1 != v3 )
      {
        while ( 1 )
        {
          v4 = v3 - 16;
          (**(void (__fastcall ***)(int))(v3 - 16))(v3 - 16);
          v3 = Arrays::v2Conditions::members;
          if ( Arrays::v2Conditions::members == v4 )
            break;
          v3 = v4;
        }
      }
      CustomFree((void *)(v3 - 8));
    }
    Arrays::v2Conditions::members = 0;
  }
}


// ===== 4a49fc Arrays::TrophyTable::finalizeNames(void) =====
void __fastcall Arrays::TrophyTable::finalizeNames(Arrays::TrophyTable *this)
{
  _DWORD *v1; // r3
  unsigned int v2; // r4
  void *v3; // r0

  v1 = (_DWORD *)Arrays::TrophyTable::m_memberNames;
  if ( Arrays::TrophyTable::m_memberNames )
  {
    if ( !Arrays::TrophyTable::size )
      goto LABEL_9;
    v2 = 0;
    while ( 1 )
    {
      v3 = (void *)v1[v2++];
      if ( v3 )
      {
        CustomFree(v3);
        v1 = (_DWORD *)Arrays::TrophyTable::m_memberNames;
      }
      if ( Arrays::TrophyTable::size <= v2 )
        break;
      v1 = (_DWORD *)Arrays::TrophyTable::m_memberNames;
    }
    if ( v1 )
LABEL_9:
      CustomFree(v1);
    Arrays::TrophyTable::m_memberNames = 0;
  }
}


// ===== 4a4a98 Arrays::TrophyTable::finalize(void) =====
void __fastcall Arrays::TrophyTable::finalize(Arrays::TrophyTable *this)
{
  int v1; // r3
  int v2; // r4
  int v3; // r0
  int v4; // r4

  v1 = Arrays::TrophyTable::members;
  if ( Arrays::TrophyTable::members )
  {
    if ( !Arrays::TrophyTable::size )
      goto LABEL_7;
    v2 = 0;
    while ( 1 )
    {
      (*(void (__fastcall **)(int))(*(_DWORD *)(v1 + 32 * v2) + 8))(v1 + 32 * v2);
      if ( Arrays::TrophyTable::size <= (unsigned int)++v2 )
        break;
      v1 = Arrays::TrophyTable::members;
    }
    v1 = Arrays::TrophyTable::members;
    if ( Arrays::TrophyTable::members )
    {
LABEL_7:
      v3 = v1 + 32 * *(_DWORD *)(v1 - 4);
      if ( v1 != v3 )
      {
        while ( 1 )
        {
          v4 = v3 - 32;
          (**(void (__fastcall ***)(int))(v3 - 32))(v3 - 32);
          v3 = Arrays::TrophyTable::members;
          if ( Arrays::TrophyTable::members == v4 )
            break;
          v3 = v4;
        }
      }
      CustomFree((void *)(v3 - 8));
    }
    Arrays::TrophyTable::members = 0;
  }
}


// ===== 4a4b70 Arrays::SpawnGroups::finalizeNames(void) =====
void __fastcall Arrays::SpawnGroups::finalizeNames(Arrays::SpawnGroups *this)
{
  _DWORD *v1; // r3
  unsigned int v2; // r4
  void *v3; // r0

  v1 = (_DWORD *)Arrays::SpawnGroups::m_memberNames;
  if ( Arrays::SpawnGroups::m_memberNames )
  {
    if ( !Arrays::SpawnGroups::size )
      goto LABEL_9;
    v2 = 0;
    while ( 1 )
    {
      v3 = (void *)v1[v2++];
      if ( v3 )
      {
        CustomFree(v3);
        v1 = (_DWORD *)Arrays::SpawnGroups::m_memberNames;
      }
      if ( Arrays::SpawnGroups::size <= v2 )
        break;
      v1 = (_DWORD *)Arrays::SpawnGroups::m_memberNames;
    }
    if ( v1 )
LABEL_9:
      CustomFree(v1);
    Arrays::SpawnGroups::m_memberNames = 0;
  }
}


// ===== 4a4c0c Arrays::SpawnGroups::finalize(void) =====
void __fastcall Arrays::SpawnGroups::finalize(Arrays::SpawnGroups *this)
{
  int v1; // r3
  int v2; // r4
  unsigned int v3; // r6
  int v4; // r0
  int v5; // r4

  v1 = Arrays::SpawnGroups::members;
  if ( Arrays::SpawnGroups::members )
  {
    if ( !Arrays::SpawnGroups::size )
      goto LABEL_7;
    v2 = 0;
    v3 = 0;
    while ( 1 )
    {
      (*(void (__fastcall **)(int))(*(_DWORD *)(v1 + v2) + 8))(v1 + v2);
      ++v3;
      v2 += 20;
      if ( Arrays::SpawnGroups::size <= v3 )
        break;
      v1 = Arrays::SpawnGroups::members;
    }
    v1 = Arrays::SpawnGroups::members;
    if ( Arrays::SpawnGroups::members )
    {
LABEL_7:
      v4 = v1 + 20 * *(_DWORD *)(v1 - 4);
      if ( v1 != v4 )
      {
        while ( 1 )
        {
          v5 = v4 - 20;
          (**(void (__fastcall ***)(int))(v4 - 20))(v4 - 20);
          v4 = Arrays::SpawnGroups::members;
          if ( Arrays::SpawnGroups::members == v5 )
            break;
          v4 = v5;
        }
      }
      CustomFree((void *)(v4 - 8));
    }
    Arrays::SpawnGroups::members = 0;
  }
}


// ===== 4a4cf0 Arrays::Sounds_bak::finalizeNames(void) =====
void __fastcall Arrays::Sounds_bak::finalizeNames(Arrays::Sounds_bak *this)
{
  _DWORD *v1; // r3
  unsigned int v2; // r4
  void *v3; // r0

  v1 = (_DWORD *)Arrays::Sounds_bak::m_memberNames;
  if ( Arrays::Sounds_bak::m_memberNames )
  {
    if ( !Arrays::Sounds_bak::size )
      goto LABEL_9;
    v2 = 0;
    while ( 1 )
    {
      v3 = (void *)v1[v2++];
      if ( v3 )
      {
        CustomFree(v3);
        v1 = (_DWORD *)Arrays::Sounds_bak::m_memberNames;
      }
      if ( Arrays::Sounds_bak::size <= v2 )
        break;
      v1 = (_DWORD *)Arrays::Sounds_bak::m_memberNames;
    }
    if ( v1 )
LABEL_9:
      CustomFree(v1);
    Arrays::Sounds_bak::m_memberNames = 0;
  }
}


// ===== 4a4d8c Arrays::Sounds_bak::finalize(void) =====
void __fastcall Arrays::Sounds_bak::finalize(Arrays::Sounds_bak *this)
{
  int v1; // r3
  int v2; // r4
  unsigned int v3; // r6
  int v4; // r0
  int v5; // r4

  v1 = Arrays::Sounds_bak::members;
  if ( Arrays::Sounds_bak::members )
  {
    if ( !Arrays::Sounds_bak::size )
      goto LABEL_7;
    v2 = 0;
    v3 = 0;
    while ( 1 )
    {
      (*(void (__fastcall **)(int))(*(_DWORD *)(v1 + v2) + 8))(v1 + v2);
      ++v3;
      v2 += 44;
      if ( Arrays::Sounds_bak::size <= v3 )
        break;
      v1 = Arrays::Sounds_bak::members;
    }
    v1 = Arrays::Sounds_bak::members;
    if ( Arrays::Sounds_bak::members )
    {
LABEL_7:
      v4 = v1 + 44 * *(_DWORD *)(v1 - 4);
      if ( v1 != v4 )
      {
        while ( 1 )
        {
          v5 = v4 - 44;
          (**(void (__fastcall ***)(int))(v4 - 44))(v4 - 44);
          v4 = Arrays::Sounds_bak::members;
          if ( Arrays::Sounds_bak::members == v5 )
            break;
          v4 = v5;
        }
      }
      CustomFree((void *)(v4 - 8));
    }
    Arrays::Sounds_bak::members = 0;
  }
}


// ===== 4a4e70 Arrays::SoundGroupsRouting::finalizeNames(void) =====
void __fastcall Arrays::SoundGroupsRouting::finalizeNames(Arrays::SoundGroupsRouting *this)
{
  _DWORD *v1; // r3
  unsigned int v2; // r4
  void *v3; // r0

  v1 = (_DWORD *)Arrays::SoundGroupsRouting::m_memberNames;
  if ( Arrays::SoundGroupsRouting::m_memberNames )
  {
    if ( !Arrays::SoundGroupsRouting::size )
      goto LABEL_9;
    v2 = 0;
    while ( 1 )
    {
      v3 = (void *)v1[v2++];
      if ( v3 )
      {
        CustomFree(v3);
        v1 = (_DWORD *)Arrays::SoundGroupsRouting::m_memberNames;
      }
      if ( Arrays::SoundGroupsRouting::size <= v2 )
        break;
      v1 = (_DWORD *)Arrays::SoundGroupsRouting::m_memberNames;
    }
    if ( v1 )
LABEL_9:
      CustomFree(v1);
    Arrays::SoundGroupsRouting::m_memberNames = 0;
  }
}


// ===== 4a4f0c Arrays::SoundGroupsRouting::finalize(void) =====
void __fastcall Arrays::SoundGroupsRouting::finalize(Arrays::SoundGroupsRouting *this)
{
  int v1; // r3
  int v2; // r4
  int v3; // r0
  int v4; // r4

  v1 = Arrays::SoundGroupsRouting::members;
  if ( Arrays::SoundGroupsRouting::members )
  {
    if ( !Arrays::SoundGroupsRouting::size )
      goto LABEL_7;
    v2 = 0;
    while ( 1 )
    {
      (*(void (__fastcall **)(int))(*(_DWORD *)(v1 + 16 * v2) + 8))(v1 + 16 * v2);
      if ( Arrays::SoundGroupsRouting::size <= (unsigned int)++v2 )
        break;
      v1 = Arrays::SoundGroupsRouting::members;
    }
    v1 = Arrays::SoundGroupsRouting::members;
    if ( Arrays::SoundGroupsRouting::members )
    {
LABEL_7:
      v3 = v1 + 16 * *(_DWORD *)(v1 - 4);
      if ( v1 != v3 )
      {
        while ( 1 )
        {
          v4 = v3 - 16;
          (**(void (__fastcall ***)(int))(v3 - 16))(v3 - 16);
          v3 = Arrays::SoundGroupsRouting::members;
          if ( Arrays::SoundGroupsRouting::members == v4 )
            break;
          v3 = v4;
        }
      }
      CustomFree((void *)(v3 - 8));
    }
    Arrays::SoundGroupsRouting::members = 0;
  }
}


// ===== 4a4fe4 Arrays::SoundBankPlayback::finalizeNames(void) =====
void __fastcall Arrays::SoundBankPlayback::finalizeNames(Arrays::SoundBankPlayback *this)
{
  _DWORD *v1; // r3
  unsigned int v2; // r4
  void *v3; // r0

  v1 = (_DWORD *)Arrays::SoundBankPlayback::m_memberNames;
  if ( Arrays::SoundBankPlayback::m_memberNames )
  {
    if ( !Arrays::SoundBankPlayback::size )
      goto LABEL_9;
    v2 = 0;
    while ( 1 )
    {
      v3 = (void *)v1[v2++];
      if ( v3 )
      {
        CustomFree(v3);
        v1 = (_DWORD *)Arrays::SoundBankPlayback::m_memberNames;
      }
      if ( Arrays::SoundBankPlayback::size <= v2 )
        break;
      v1 = (_DWORD *)Arrays::SoundBankPlayback::m_memberNames;
    }
    if ( v1 )
LABEL_9:
      CustomFree(v1);
    Arrays::SoundBankPlayback::m_memberNames = 0;
  }
}


// ===== 4a5080 Arrays::SoundBankPlayback::finalize(void) =====
void __fastcall Arrays::SoundBankPlayback::finalize(Arrays::SoundBankPlayback *this)
{
  int v1; // r3
  int v2; // r4
  unsigned int v3; // r6
  int v4; // r0
  int v5; // r4

  v1 = Arrays::SoundBankPlayback::members;
  if ( Arrays::SoundBankPlayback::members )
  {
    if ( !Arrays::SoundBankPlayback::size )
      goto LABEL_7;
    v2 = 0;
    v3 = 0;
    while ( 1 )
    {
      (*(void (__fastcall **)(int))(*(_DWORD *)(v1 + v2) + 8))(v1 + v2);
      ++v3;
      v2 += 12;
      if ( Arrays::SoundBankPlayback::size <= v3 )
        break;
      v1 = Arrays::SoundBankPlayback::members;
    }
    v1 = Arrays::SoundBankPlayback::members;
    if ( Arrays::SoundBankPlayback::members )
    {
LABEL_7:
      v4 = v1 + 12 * *(_DWORD *)(v1 - 4);
      if ( v1 != v4 )
      {
        while ( 1 )
        {
          v5 = v4 - 12;
          (**(void (__fastcall ***)(int))(v4 - 12))(v4 - 12);
          v4 = Arrays::SoundBankPlayback::members;
          if ( Arrays::SoundBankPlayback::members == v5 )
            break;
          v4 = v5;
        }
      }
      CustomFree((void *)(v4 - 8));
    }
    Arrays::SoundBankPlayback::members = 0;
  }
}


// ===== 4a5164 Arrays::Listeners::finalizeNames(void) =====
void __fastcall Arrays::Listeners::finalizeNames(Arrays::Listeners *this)
{
  _DWORD *v1; // r3
  unsigned int v2; // r4
  void *v3; // r0

  v1 = (_DWORD *)Arrays::Listeners::m_memberNames;
  if ( Arrays::Listeners::m_memberNames )
  {
    if ( !Arrays::Listeners::size )
      goto LABEL_9;
    v2 = 0;
    while ( 1 )
    {
      v3 = (void *)v1[v2++];
      if ( v3 )
      {
        CustomFree(v3);
        v1 = (_DWORD *)Arrays::Listeners::m_memberNames;
      }
      if ( Arrays::Listeners::size <= v2 )
        break;
      v1 = (_DWORD *)Arrays::Listeners::m_memberNames;
    }
    if ( v1 )
LABEL_9:
      CustomFree(v1);
    Arrays::Listeners::m_memberNames = 0;
  }
}


// ===== 4a5200 Arrays::Listeners::finalize(void) =====
void __fastcall Arrays::Listeners::finalize(Arrays::Listeners *this)
{
  int v1; // r3
  int v2; // r4
  unsigned int v3; // r6
  int v4; // r0
  int v5; // r4

  v1 = Arrays::Listeners::members;
  if ( Arrays::Listeners::members )
  {
    if ( !Arrays::Listeners::size )
      goto LABEL_7;
    v2 = 0;
    v3 = 0;
    while ( 1 )
    {
      (*(void (__fastcall **)(int))(*(_DWORD *)(v1 + v2) + 8))(v1 + v2);
      ++v3;
      v2 += 28;
      if ( Arrays::Listeners::size <= v3 )
        break;
      v1 = Arrays::Listeners::members;
    }
    v1 = Arrays::Listeners::members;
    if ( Arrays::Listeners::members )
    {
LABEL_7:
      v4 = v1 + 28 * *(_DWORD *)(v1 - 4);
      if ( v1 != v4 )
      {
        while ( 1 )
        {
          v5 = v4 - 28;
          (**(void (__fastcall ***)(int))(v4 - 28))(v4 - 28);
          v4 = Arrays::Listeners::members;
          if ( Arrays::Listeners::members == v5 )
            break;
          v4 = v5;
        }
      }
      CustomFree((void *)(v4 - 8));
    }
    Arrays::Listeners::members = 0;
  }
}


// ===== 4a52e4 Arrays::CharSoundsTable::finalizeNames(void) =====
void __fastcall Arrays::CharSoundsTable::finalizeNames(Arrays::CharSoundsTable *this)
{
  _DWORD *v1; // r3
  unsigned int v2; // r4
  void *v3; // r0

  v1 = (_DWORD *)Arrays::CharSoundsTable::m_memberNames;
  if ( Arrays::CharSoundsTable::m_memberNames )
  {
    if ( !Arrays::CharSoundsTable::size )
      goto LABEL_9;
    v2 = 0;
    while ( 1 )
    {
      v3 = (void *)v1[v2++];
      if ( v3 )
      {
        CustomFree(v3);
        v1 = (_DWORD *)Arrays::CharSoundsTable::m_memberNames;
      }
      if ( Arrays::CharSoundsTable::size <= v2 )
        break;
      v1 = (_DWORD *)Arrays::CharSoundsTable::m_memberNames;
    }
    if ( v1 )
LABEL_9:
      CustomFree(v1);
    Arrays::CharSoundsTable::m_memberNames = 0;
  }
}


// ===== 4a5380 Arrays::CharSoundsTable::finalize(void) =====
void __fastcall Arrays::CharSoundsTable::finalize(Arrays::CharSoundsTable *this)
{
  int v1; // r3
  int v2; // r4
  unsigned int v3; // r6
  int v4; // r0
  int v5; // r4

  v1 = Arrays::CharSoundsTable::members;
  if ( Arrays::CharSoundsTable::members )
  {
    if ( !Arrays::CharSoundsTable::size )
      goto LABEL_7;
    v2 = 0;
    v3 = 0;
    while ( 1 )
    {
      (*(void (__fastcall **)(int))(*(_DWORD *)(v1 + v2) + 8))(v1 + v2);
      ++v3;
      v2 += 40;
      if ( Arrays::CharSoundsTable::size <= v3 )
        break;
      v1 = Arrays::CharSoundsTable::members;
    }
    v1 = Arrays::CharSoundsTable::members;
    if ( Arrays::CharSoundsTable::members )
    {
LABEL_7:
      v4 = v1 + 40 * *(_DWORD *)(v1 - 4);
      if ( v1 != v4 )
      {
        while ( 1 )
        {
          v5 = v4 - 40;
          (**(void (__fastcall ***)(int))(v4 - 40))(v4 - 40);
          v4 = Arrays::CharSoundsTable::members;
          if ( Arrays::CharSoundsTable::members == v5 )
            break;
          v4 = v5;
        }
      }
      CustomFree((void *)(v4 - 8));
    }
    Arrays::CharSoundsTable::members = 0;
  }
}


// ===== 4a5464 Arrays::SkillTable::finalizeNames(void) =====
void __fastcall Arrays::SkillTable::finalizeNames(Arrays::SkillTable *this)
{
  _DWORD *v1; // r3
  unsigned int v2; // r4
  void *v3; // r0

  v1 = (_DWORD *)Arrays::SkillTable::m_memberNames;
  if ( Arrays::SkillTable::m_memberNames )
  {
    if ( !Arrays::SkillTable::size )
      goto LABEL_9;
    v2 = 0;
    while ( 1 )
    {
      v3 = (void *)v1[v2++];
      if ( v3 )
      {
        CustomFree(v3);
        v1 = (_DWORD *)Arrays::SkillTable::m_memberNames;
      }
      if ( Arrays::SkillTable::size <= v2 )
        break;
      v1 = (_DWORD *)Arrays::SkillTable::m_memberNames;
    }
    if ( v1 )
LABEL_9:
      CustomFree(v1);
    Arrays::SkillTable::m_memberNames = 0;
  }
}


// ===== 4a5500 Arrays::SkillTable::finalize(void) =====
void __fastcall Arrays::SkillTable::finalize(Arrays::SkillTable *this)
{
  int v1; // r3
  int v2; // r4
  unsigned int v3; // r6
  int v4; // r0
  int v5; // r4

  v1 = Arrays::SkillTable::members;
  if ( Arrays::SkillTable::members )
  {
    if ( !Arrays::SkillTable::size )
      goto LABEL_7;
    v2 = 0;
    v3 = 0;
    while ( 1 )
    {
      (*(void (__fastcall **)(int))(*(_DWORD *)(v1 + v2) + 8))(v1 + v2);
      ++v3;
      v2 += 76;
      if ( Arrays::SkillTable::size <= v3 )
        break;
      v1 = Arrays::SkillTable::members;
    }
    v1 = Arrays::SkillTable::members;
    if ( Arrays::SkillTable::members )
    {
LABEL_7:
      v4 = v1 + 76 * *(_DWORD *)(v1 - 4);
      if ( v1 != v4 )
      {
        while ( 1 )
        {
          v5 = v4 - 76;
          (**(void (__fastcall ***)(int))(v4 - 76))(v4 - 76);
          v4 = Arrays::SkillTable::members;
          if ( Arrays::SkillTable::members == v5 )
            break;
          v4 = v5;
        }
      }
      CustomFree((void *)(v4 - 8));
    }
    Arrays::SkillTable::members = 0;
  }
}


// ===== 4a55e4 Arrays::SkillListTable::finalizeNames(void) =====
void __fastcall Arrays::SkillListTable::finalizeNames(Arrays::SkillListTable *this)
{
  _DWORD *v1; // r3
  unsigned int v2; // r4
  void *v3; // r0

  v1 = (_DWORD *)Arrays::SkillListTable::m_memberNames;
  if ( Arrays::SkillListTable::m_memberNames )
  {
    if ( !Arrays::SkillListTable::size )
      goto LABEL_9;
    v2 = 0;
    while ( 1 )
    {
      v3 = (void *)v1[v2++];
      if ( v3 )
      {
        CustomFree(v3);
        v1 = (_DWORD *)Arrays::SkillListTable::m_memberNames;
      }
      if ( Arrays::SkillListTable::size <= v2 )
        break;
      v1 = (_DWORD *)Arrays::SkillListTable::m_memberNames;
    }
    if ( v1 )
LABEL_9:
      CustomFree(v1);
    Arrays::SkillListTable::m_memberNames = 0;
  }
}


// ===== 4a5680 Arrays::SkillListTable::finalize(void) =====
void __fastcall Arrays::SkillListTable::finalize(Arrays::SkillListTable *this)
{
  int v1; // r3
  int v2; // r4
  unsigned int v3; // r6
  int v4; // r0
  int v5; // r4

  v1 = Arrays::SkillListTable::members;
  if ( Arrays::SkillListTable::members )
  {
    if ( !Arrays::SkillListTable::size )
      goto LABEL_7;
    v2 = 0;
    v3 = 0;
    while ( 1 )
    {
      (*(void (__fastcall **)(int))(*(_DWORD *)(v1 + v2) + 8))(v1 + v2);
      ++v3;
      v2 += 12;
      if ( Arrays::SkillListTable::size <= v3 )
        break;
      v1 = Arrays::SkillListTable::members;
    }
    v1 = Arrays::SkillListTable::members;
    if ( Arrays::SkillListTable::members )
    {
LABEL_7:
      v4 = v1 + 12 * *(_DWORD *)(v1 - 4);
      if ( v1 != v4 )
      {
        while ( 1 )
        {
          v5 = v4 - 12;
          (**(void (__fastcall ***)(int))(v4 - 12))(v4 - 12);
          v4 = Arrays::SkillListTable::members;
          if ( Arrays::SkillListTable::members == v5 )
            break;
          v4 = v5;
        }
      }
      CustomFree((void *)(v4 - 8));
    }
    Arrays::SkillListTable::members = 0;
  }
}


// ===== 4a5764 Arrays::ProjectileTable::finalizeNames(void) =====
void __fastcall Arrays::ProjectileTable::finalizeNames(Arrays::ProjectileTable *this)
{
  _DWORD *v1; // r3
  unsigned int v2; // r4
  void *v3; // r0

  v1 = (_DWORD *)Arrays::ProjectileTable::m_memberNames;
  if ( Arrays::ProjectileTable::m_memberNames )
  {
    if ( !Arrays::ProjectileTable::size )
      goto LABEL_9;
    v2 = 0;
    while ( 1 )
    {
      v3 = (void *)v1[v2++];
      if ( v3 )
      {
        CustomFree(v3);
        v1 = (_DWORD *)Arrays::ProjectileTable::m_memberNames;
      }
      if ( Arrays::ProjectileTable::size <= v2 )
        break;
      v1 = (_DWORD *)Arrays::ProjectileTable::m_memberNames;
    }
    if ( v1 )
LABEL_9:
      CustomFree(v1);
    Arrays::ProjectileTable::m_memberNames = 0;
  }
}


// ===== 4a5800 Arrays::ProjectileTable::finalize(void) =====
void __fastcall Arrays::ProjectileTable::finalize(Arrays::ProjectileTable *this)
{
  int v1; // r3
  int v2; // r4
  unsigned int v3; // r6
  int v4; // r0
  int v5; // r4

  v1 = Arrays::ProjectileTable::members;
  if ( Arrays::ProjectileTable::members )
  {
    if ( !Arrays::ProjectileTable::size )
      goto LABEL_7;
    v2 = 0;
    v3 = 0;
    while ( 1 )
    {
      (*(void (__fastcall **)(int))(*(_DWORD *)(v1 + v2) + 8))(v1 + v2);
      ++v3;
      v2 += 72;
      if ( Arrays::ProjectileTable::size <= v3 )
        break;
      v1 = Arrays::ProjectileTable::members;
    }
    v1 = Arrays::ProjectileTable::members;
    if ( Arrays::ProjectileTable::members )
    {
LABEL_7:
      v4 = v1 + 72 * *(_DWORD *)(v1 - 4);
      if ( v1 != v4 )
      {
        while ( 1 )
        {
          v5 = v4 - 72;
          (**(void (__fastcall ***)(int))(v4 - 72))(v4 - 72);
          v4 = Arrays::ProjectileTable::members;
          if ( Arrays::ProjectileTable::members == v5 )
            break;
          v4 = v5;
        }
      }
      CustomFree((void *)(v4 - 8));
    }
    Arrays::ProjectileTable::members = 0;
  }
}


// ===== 4a58e4 Arrays::NumProbArray::finalizeNames(void) =====
void __fastcall Arrays::NumProbArray::finalizeNames(Arrays::NumProbArray *this)
{
  _DWORD *v1; // r3
  unsigned int v2; // r4
  void *v3; // r0

  v1 = (_DWORD *)Arrays::NumProbArray::m_memberNames;
  if ( Arrays::NumProbArray::m_memberNames )
  {
    if ( !Arrays::NumProbArray::size )
      goto LABEL_9;
    v2 = 0;
    while ( 1 )
    {
      v3 = (void *)v1[v2++];
      if ( v3 )
      {
        CustomFree(v3);
        v1 = (_DWORD *)Arrays::NumProbArray::m_memberNames;
      }
      if ( Arrays::NumProbArray::size <= v2 )
        break;
      v1 = (_DWORD *)Arrays::NumProbArray::m_memberNames;
    }
    if ( v1 )
LABEL_9:
      CustomFree(v1);
    Arrays::NumProbArray::m_memberNames = 0;
  }
}


// ===== 4a5980 Arrays::NumProbArray::finalize(void) =====
void __fastcall Arrays::NumProbArray::finalize(Arrays::NumProbArray *this)
{
  int v1; // r3
  int v2; // r4
  unsigned int v3; // r6
  int v4; // r0
  int v5; // r4

  v1 = Arrays::NumProbArray::members;
  if ( Arrays::NumProbArray::members )
  {
    if ( !Arrays::NumProbArray::size )
      goto LABEL_7;
    v2 = 0;
    v3 = 0;
    while ( 1 )
    {
      (*(void (__fastcall **)(int))(*(_DWORD *)(v1 + v2) + 8))(v1 + v2);
      ++v3;
      v2 += 12;
      if ( Arrays::NumProbArray::size <= v3 )
        break;
      v1 = Arrays::NumProbArray::members;
    }
    v1 = Arrays::NumProbArray::members;
    if ( Arrays::NumProbArray::members )
    {
LABEL_7:
      v4 = v1 + 12 * *(_DWORD *)(v1 - 4);
      if ( v1 != v4 )
      {
        while ( 1 )
        {
          v5 = v4 - 12;
          (**(void (__fastcall ***)(int))(v4 - 12))(v4 - 12);
          v4 = Arrays::NumProbArray::members;
          if ( Arrays::NumProbArray::members == v5 )
            break;
          v4 = v5;
        }
      }
      CustomFree((void *)(v4 - 8));
    }
    Arrays::NumProbArray::members = 0;
  }
}


// ===== 4a5a64 Arrays::MerchantTable::finalizeNames(void) =====
void __fastcall Arrays::MerchantTable::finalizeNames(Arrays::MerchantTable *this)
{
  _DWORD *v1; // r3
  unsigned int v2; // r4
  void *v3; // r0

  v1 = (_DWORD *)Arrays::MerchantTable::m_memberNames;
  if ( Arrays::MerchantTable::m_memberNames )
  {
    if ( !Arrays::MerchantTable::size )
      goto LABEL_9;
    v2 = 0;
    while ( 1 )
    {
      v3 = (void *)v1[v2++];
      if ( v3 )
      {
        CustomFree(v3);
        v1 = (_DWORD *)Arrays::MerchantTable::m_memberNames;
      }
      if ( Arrays::MerchantTable::size <= v2 )
        break;
      v1 = (_DWORD *)Arrays::MerchantTable::m_memberNames;
    }
    if ( v1 )
LABEL_9:
      CustomFree(v1);
    Arrays::MerchantTable::m_memberNames = 0;
  }
}


// ===== 4a5b00 Arrays::MerchantTable::finalize(void) =====
void __fastcall Arrays::MerchantTable::finalize(Arrays::MerchantTable *this)
{
  int v1; // r3
  int v2; // r4
  unsigned int v3; // r6
  int v4; // r0
  int v5; // r4

  v1 = Arrays::MerchantTable::members;
  if ( Arrays::MerchantTable::members )
  {
    if ( !Arrays::MerchantTable::size )
      goto LABEL_7;
    v2 = 0;
    v3 = 0;
    while ( 1 )
    {
      (*(void (__fastcall **)(int))(*(_DWORD *)(v1 + v2) + 8))(v1 + v2);
      ++v3;
      v2 += 20;
      if ( Arrays::MerchantTable::size <= v3 )
        break;
      v1 = Arrays::MerchantTable::members;
    }
    v1 = Arrays::MerchantTable::members;
    if ( Arrays::MerchantTable::members )
    {
LABEL_7:
      v4 = v1 + 20 * *(_DWORD *)(v1 - 4);
      if ( v1 != v4 )
      {
        while ( 1 )
        {
          v5 = v4 - 20;
          (**(void (__fastcall ***)(int))(v4 - 20))(v4 - 20);
          v4 = Arrays::MerchantTable::members;
          if ( Arrays::MerchantTable::members == v5 )
            break;
          v4 = v5;
        }
      }
      CustomFree((void *)(v4 - 8));
    }
    Arrays::MerchantTable::members = 0;
  }
}


// ===== 4a5be4 Arrays::LootTable::finalizeNames(void) =====
void __fastcall Arrays::LootTable::finalizeNames(Arrays::LootTable *this)
{
  _DWORD *v1; // r3
  unsigned int v2; // r4
  void *v3; // r0

  v1 = (_DWORD *)Arrays::LootTable::m_memberNames;
  if ( Arrays::LootTable::m_memberNames )
  {
    if ( !Arrays::LootTable::size )
      goto LABEL_9;
    v2 = 0;
    while ( 1 )
    {
      v3 = (void *)v1[v2++];
      if ( v3 )
      {
        CustomFree(v3);
        v1 = (_DWORD *)Arrays::LootTable::m_memberNames;
      }
      if ( Arrays::LootTable::size <= v2 )
        break;
      v1 = (_DWORD *)Arrays::LootTable::m_memberNames;
    }
    if ( v1 )
LABEL_9:
      CustomFree(v1);
    Arrays::LootTable::m_memberNames = 0;
  }
}


// ===== 4a5c80 Arrays::LootTable::finalize(void) =====
void __fastcall Arrays::LootTable::finalize(Arrays::LootTable *this)
{
  int v1; // r3
  int v2; // r4
  unsigned int v3; // r6
  int v4; // r0
  int v5; // r4

  v1 = Arrays::LootTable::members;
  if ( Arrays::LootTable::members )
  {
    if ( !Arrays::LootTable::size )
      goto LABEL_7;
    v2 = 0;
    v3 = 0;
    while ( 1 )
    {
      (*(void (__fastcall **)(int))(*(_DWORD *)(v1 + v2) + 8))(v1 + v2);
      ++v3;
      v2 += 36;
      if ( Arrays::LootTable::size <= v3 )
        break;
      v1 = Arrays::LootTable::members;
    }
    v1 = Arrays::LootTable::members;
    if ( Arrays::LootTable::members )
    {
LABEL_7:
      v4 = v1 + 36 * *(_DWORD *)(v1 - 4);
      if ( v1 != v4 )
      {
        while ( 1 )
        {
          v5 = v4 - 36;
          (**(void (__fastcall ***)(int))(v4 - 36))(v4 - 36);
          v4 = Arrays::LootTable::members;
          if ( Arrays::LootTable::members == v5 )
            break;
          v4 = v5;
        }
      }
      CustomFree((void *)(v4 - 8));
    }
    Arrays::LootTable::members = 0;
  }
}


// ===== 4a5d64 Arrays::ItemTypeList::finalizeNames(void) =====
void __fastcall Arrays::ItemTypeList::finalizeNames(Arrays::ItemTypeList *this)
{
  _DWORD *v1; // r3
  unsigned int v2; // r4
  void *v3; // r0

  v1 = (_DWORD *)Arrays::ItemTypeList::m_memberNames;
  if ( Arrays::ItemTypeList::m_memberNames )
  {
    if ( !Arrays::ItemTypeList::size )
      goto LABEL_9;
    v2 = 0;
    while ( 1 )
    {
      v3 = (void *)v1[v2++];
      if ( v3 )
      {
        CustomFree(v3);
        v1 = (_DWORD *)Arrays::ItemTypeList::m_memberNames;
      }
      if ( Arrays::ItemTypeList::size <= v2 )
        break;
      v1 = (_DWORD *)Arrays::ItemTypeList::m_memberNames;
    }
    if ( v1 )
LABEL_9:
      CustomFree(v1);
    Arrays::ItemTypeList::m_memberNames = 0;
  }
}


// ===== 4a5e00 Arrays::ItemTypeList::finalize(void) =====
void __fastcall Arrays::ItemTypeList::finalize(Arrays::ItemTypeList *this)
{
  int v1; // r3
  int v2; // r4
  unsigned int v3; // r6
  int v4; // r0
  int v5; // r4

  v1 = Arrays::ItemTypeList::members;
  if ( Arrays::ItemTypeList::members )
  {
    if ( !Arrays::ItemTypeList::size )
      goto LABEL_7;
    v2 = 0;
    v3 = 0;
    while ( 1 )
    {
      (*(void (__fastcall **)(int))(*(_DWORD *)(v1 + v2) + 8))(v1 + v2);
      ++v3;
      v2 += 12;
      if ( Arrays::ItemTypeList::size <= v3 )
        break;
      v1 = Arrays::ItemTypeList::members;
    }
    v1 = Arrays::ItemTypeList::members;
    if ( Arrays::ItemTypeList::members )
    {
LABEL_7:
      v4 = v1 + 12 * *(_DWORD *)(v1 - 4);
      if ( v1 != v4 )
      {
        while ( 1 )
        {
          v5 = v4 - 12;
          (**(void (__fastcall ***)(int))(v4 - 12))(v4 - 12);
          v4 = Arrays::ItemTypeList::members;
          if ( Arrays::ItemTypeList::members == v5 )
            break;
          v4 = v5;
        }
      }
      CustomFree((void *)(v4 - 8));
    }
    Arrays::ItemTypeList::members = 0;
  }
}


// ===== 4a5ee4 Arrays::ItemTable::finalizeNames(void) =====
void __fastcall Arrays::ItemTable::finalizeNames(Arrays::ItemTable *this)
{
  _DWORD *v1; // r3
  unsigned int v2; // r4
  void *v3; // r0

  v1 = (_DWORD *)Arrays::ItemTable::m_memberNames;
  if ( Arrays::ItemTable::m_memberNames )
  {
    if ( !Arrays::ItemTable::size )
      goto LABEL_9;
    v2 = 0;
    while ( 1 )
    {
      v3 = (void *)v1[v2++];
      if ( v3 )
      {
        CustomFree(v3);
        v1 = (_DWORD *)Arrays::ItemTable::m_memberNames;
      }
      if ( Arrays::ItemTable::size <= v2 )
        break;
      v1 = (_DWORD *)Arrays::ItemTable::m_memberNames;
    }
    if ( v1 )
LABEL_9:
      CustomFree(v1);
    Arrays::ItemTable::m_memberNames = 0;
  }
}


// ===== 4a5f80 Arrays::ItemTable::finalize(void) =====
void __fastcall Arrays::ItemTable::finalize(Arrays::ItemTable *this)
{
  int v1; // r3
  int v2; // r4
  unsigned int v3; // r6
  int v4; // r0
  int v5; // r4

  v1 = Arrays::ItemTable::members;
  if ( Arrays::ItemTable::members )
  {
    if ( !Arrays::ItemTable::size )
      goto LABEL_7;
    v2 = 0;
    v3 = 0;
    while ( 1 )
    {
      (*(void (__fastcall **)(int))(*(_DWORD *)(v1 + v2) + 8))(v1 + v2);
      ++v3;
      v2 += 164;
      if ( Arrays::ItemTable::size <= v3 )
        break;
      v1 = Arrays::ItemTable::members;
    }
    v1 = Arrays::ItemTable::members;
    if ( Arrays::ItemTable::members )
    {
LABEL_7:
      v4 = v1 + 164 * *(_DWORD *)(v1 - 4);
      if ( v1 != v4 )
      {
        while ( 1 )
        {
          v5 = v4 - 164;
          (**(void (__fastcall ***)(int))(v4 - 164))(v4 - 164);
          v4 = Arrays::ItemTable::members;
          if ( Arrays::ItemTable::members == v5 )
            break;
          v4 = v5;
        }
      }
      CustomFree((void *)(v4 - 8));
    }
    Arrays::ItemTable::members = 0;
  }
}


// ===== 4a6064 Arrays::ItemList::finalizeNames(void) =====
void __fastcall Arrays::ItemList::finalizeNames(Arrays::ItemList *this)
{
  _DWORD *v1; // r3
  unsigned int v2; // r4
  void *v3; // r0

  v1 = (_DWORD *)Arrays::ItemList::m_memberNames;
  if ( Arrays::ItemList::m_memberNames )
  {
    if ( !Arrays::ItemList::size )
      goto LABEL_9;
    v2 = 0;
    while ( 1 )
    {
      v3 = (void *)v1[v2++];
      if ( v3 )
      {
        CustomFree(v3);
        v1 = (_DWORD *)Arrays::ItemList::m_memberNames;
      }
      if ( Arrays::ItemList::size <= v2 )
        break;
      v1 = (_DWORD *)Arrays::ItemList::m_memberNames;
    }
    if ( v1 )
LABEL_9:
      CustomFree(v1);
    Arrays::ItemList::m_memberNames = 0;
  }
}


// ===== 4a6100 Arrays::ItemList::finalize(void) =====
void __fastcall Arrays::ItemList::finalize(Arrays::ItemList *this)
{
  int v1; // r3
  int v2; // r4
  unsigned int v3; // r6
  int v4; // r0
  int v5; // r4

  v1 = Arrays::ItemList::members;
  if ( Arrays::ItemList::members )
  {
    if ( !Arrays::ItemList::size )
      goto LABEL_7;
    v2 = 0;
    v3 = 0;
    while ( 1 )
    {
      (*(void (__fastcall **)(int))(*(_DWORD *)(v1 + v2) + 8))(v1 + v2);
      ++v3;
      v2 += 12;
      if ( Arrays::ItemList::size <= v3 )
        break;
      v1 = Arrays::ItemList::members;
    }
    v1 = Arrays::ItemList::members;
    if ( Arrays::ItemList::members )
    {
LABEL_7:
      v4 = v1 + 12 * *(_DWORD *)(v1 - 4);
      if ( v1 != v4 )
      {
        while ( 1 )
        {
          v5 = v4 - 12;
          (**(void (__fastcall ***)(int))(v4 - 12))(v4 - 12);
          v4 = Arrays::ItemList::members;
          if ( Arrays::ItemList::members == v5 )
            break;
          v4 = v5;
        }
      }
      CustomFree((void *)(v4 - 8));
    }
    Arrays::ItemList::members = 0;
  }
}


// ===== 4a61e4 Arrays::InventoryTable::finalizeNames(void) =====
void __fastcall Arrays::InventoryTable::finalizeNames(Arrays::InventoryTable *this)
{
  _DWORD *v1; // r3
  unsigned int v2; // r4
  void *v3; // r0

  v1 = (_DWORD *)Arrays::InventoryTable::m_memberNames;
  if ( Arrays::InventoryTable::m_memberNames )
  {
    if ( !Arrays::InventoryTable::size )
      goto LABEL_9;
    v2 = 0;
    while ( 1 )
    {
      v3 = (void *)v1[v2++];
      if ( v3 )
      {
        CustomFree(v3);
        v1 = (_DWORD *)Arrays::InventoryTable::m_memberNames;
      }
      if ( Arrays::InventoryTable::size <= v2 )
        break;
      v1 = (_DWORD *)Arrays::InventoryTable::m_memberNames;
    }
    if ( v1 )
LABEL_9:
      CustomFree(v1);
    Arrays::InventoryTable::m_memberNames = 0;
  }
}


// ===== 4a6280 Arrays::InventoryTable::finalize(void) =====
void __fastcall Arrays::InventoryTable::finalize(Arrays::InventoryTable *this)
{
  int v1; // r3
  int v2; // r4
  int v3; // r0
  int v4; // r4

  v1 = Arrays::InventoryTable::members;
  if ( Arrays::InventoryTable::members )
  {
    if ( !Arrays::InventoryTable::size )
      goto LABEL_7;
    v2 = 0;
    while ( 1 )
    {
      (*(void (__fastcall **)(int))(*(_DWORD *)(v1 + 8 * v2) + 8))(v1 + 8 * v2);
      if ( Arrays::InventoryTable::size <= (unsigned int)++v2 )
        break;
      v1 = Arrays::InventoryTable::members;
    }
    v1 = Arrays::InventoryTable::members;
    if ( Arrays::InventoryTable::members )
    {
LABEL_7:
      v3 = v1 + 8 * *(_DWORD *)(v1 - 4);
      if ( v1 != v3 )
      {
        while ( 1 )
        {
          v4 = v3 - 8;
          (**(void (__fastcall ***)(int))(v3 - 8))(v3 - 8);
          v3 = Arrays::InventoryTable::members;
          if ( Arrays::InventoryTable::members == v4 )
            break;
          v3 = v4;
        }
      }
      CustomFree((void *)(v3 - 8));
    }
    Arrays::InventoryTable::members = 0;
  }
}


// ===== 4a6358 Arrays::DropTilePriorityTable::finalizeNames(void) =====
void __fastcall Arrays::DropTilePriorityTable::finalizeNames(Arrays::DropTilePriorityTable *this)
{
  _DWORD *v1; // r3
  unsigned int v2; // r4
  void *v3; // r0

  v1 = (_DWORD *)Arrays::DropTilePriorityTable::m_memberNames;
  if ( Arrays::DropTilePriorityTable::m_memberNames )
  {
    if ( !Arrays::DropTilePriorityTable::size )
      goto LABEL_9;
    v2 = 0;
    while ( 1 )
    {
      v3 = (void *)v1[v2++];
      if ( v3 )
      {
        CustomFree(v3);
        v1 = (_DWORD *)Arrays::DropTilePriorityTable::m_memberNames;
      }
      if ( Arrays::DropTilePriorityTable::size <= v2 )
        break;
      v1 = (_DWORD *)Arrays::DropTilePriorityTable::m_memberNames;
    }
    if ( v1 )
LABEL_9:
      CustomFree(v1);
    Arrays::DropTilePriorityTable::m_memberNames = 0;
  }
}


// ===== 4a63f4 Arrays::DropTilePriorityTable::finalize(void) =====
void __fastcall Arrays::DropTilePriorityTable::finalize(Arrays::DropTilePriorityTable *this)
{
  int v1; // r3
  int v2; // r4
  unsigned int v3; // r6
  int v4; // r0
  int v5; // r4

  v1 = Arrays::DropTilePriorityTable::members;
  if ( Arrays::DropTilePriorityTable::members )
  {
    if ( !Arrays::DropTilePriorityTable::size )
      goto LABEL_7;
    v2 = 0;
    v3 = 0;
    while ( 1 )
    {
      (*(void (__fastcall **)(int))(*(_DWORD *)(v1 + v2) + 8))(v1 + v2);
      ++v3;
      v2 += 12;
      if ( Arrays::DropTilePriorityTable::size <= v3 )
        break;
      v1 = Arrays::DropTilePriorityTable::members;
    }
    v1 = Arrays::DropTilePriorityTable::members;
    if ( Arrays::DropTilePriorityTable::members )
    {
LABEL_7:
      v4 = v1 + 12 * *(_DWORD *)(v1 - 4);
      if ( v1 != v4 )
      {
        while ( 1 )
        {
          v5 = v4 - 12;
          (**(void (__fastcall ***)(int))(v4 - 12))(v4 - 12);
          v4 = Arrays::DropTilePriorityTable::members;
          if ( Arrays::DropTilePriorityTable::members == v5 )
            break;
          v4 = v5;
        }
      }
      CustomFree((void *)(v4 - 8));
    }
    Arrays::DropTilePriorityTable::members = 0;
  }
}


// ===== 4a64d8 Arrays::ItemAudioVisualTable::finalizeNames(void) =====
void __fastcall Arrays::ItemAudioVisualTable::finalizeNames(Arrays::ItemAudioVisualTable *this)
{
  _DWORD *v1; // r3
  unsigned int v2; // r4
  void *v3; // r0

  v1 = (_DWORD *)Arrays::ItemAudioVisualTable::m_memberNames;
  if ( Arrays::ItemAudioVisualTable::m_memberNames )
  {
    if ( !Arrays::ItemAudioVisualTable::size )
      goto LABEL_9;
    v2 = 0;
    while ( 1 )
    {
      v3 = (void *)v1[v2++];
      if ( v3 )
      {
        CustomFree(v3);
        v1 = (_DWORD *)Arrays::ItemAudioVisualTable::m_memberNames;
      }
      if ( Arrays::ItemAudioVisualTable::size <= v2 )
        break;
      v1 = (_DWORD *)Arrays::ItemAudioVisualTable::m_memberNames;
    }
    if ( v1 )
LABEL_9:
      CustomFree(v1);
    Arrays::ItemAudioVisualTable::m_memberNames = 0;
  }
}


// ===== 4a6574 Arrays::ItemAudioVisualTable::finalize(void) =====
void __fastcall Arrays::ItemAudioVisualTable::finalize(Arrays::ItemAudioVisualTable *this)
{
  int v1; // r3
  int v2; // r4
  unsigned int v3; // r6
  int v4; // r0
  int v5; // r4

  v1 = Arrays::ItemAudioVisualTable::members;
  if ( Arrays::ItemAudioVisualTable::members )
  {
    if ( !Arrays::ItemAudioVisualTable::size )
      goto LABEL_7;
    v2 = 0;
    v3 = 0;
    while ( 1 )
    {
      (*(void (__fastcall **)(int))(*(_DWORD *)(v1 + v2) + 8))(v1 + v2);
      ++v3;
      v2 += 20;
      if ( Arrays::ItemAudioVisualTable::size <= v3 )
        break;
      v1 = Arrays::ItemAudioVisualTable::members;
    }
    v1 = Arrays::ItemAudioVisualTable::members;
    if ( Arrays::ItemAudioVisualTable::members )
    {
LABEL_7:
      v4 = v1 + 20 * *(_DWORD *)(v1 - 4);
      if ( v1 != v4 )
      {
        while ( 1 )
        {
          v5 = v4 - 20;
          (**(void (__fastcall ***)(int))(v4 - 20))(v4 - 20);
          v4 = Arrays::ItemAudioVisualTable::members;
          if ( Arrays::ItemAudioVisualTable::members == v5 )
            break;
          v4 = v5;
        }
      }
      CustomFree((void *)(v4 - 8));
    }
    Arrays::ItemAudioVisualTable::members = 0;
  }
}


// ===== 4a6658 Arrays::LevelList::finalizeNames(void) =====
void __fastcall Arrays::LevelList::finalizeNames(Arrays::LevelList *this)
{
  _DWORD *v1; // r3
  unsigned int v2; // r4
  void *v3; // r0

  v1 = (_DWORD *)Arrays::LevelList::m_memberNames;
  if ( Arrays::LevelList::m_memberNames )
  {
    if ( !Arrays::LevelList::size )
      goto LABEL_9;
    v2 = 0;
    while ( 1 )
    {
      v3 = (void *)v1[v2++];
      if ( v3 )
      {
        CustomFree(v3);
        v1 = (_DWORD *)Arrays::LevelList::m_memberNames;
      }
      if ( Arrays::LevelList::size <= v2 )
        break;
      v1 = (_DWORD *)Arrays::LevelList::m_memberNames;
    }
    if ( v1 )
LABEL_9:
      CustomFree(v1);
    Arrays::LevelList::m_memberNames = 0;
  }
}


// ===== 4a66f4 Arrays::LevelList::finalize(void) =====
void __fastcall Arrays::LevelList::finalize(Arrays::LevelList *this)
{
  int v1; // r3
  int v2; // r4
  unsigned int v3; // r6
  int v4; // r0
  int v5; // r4

  v1 = Arrays::LevelList::members;
  if ( Arrays::LevelList::members )
  {
    if ( !Arrays::LevelList::size )
      goto LABEL_7;
    v2 = 0;
    v3 = 0;
    while ( 1 )
    {
      (*(void (__fastcall **)(int))(*(_DWORD *)(v1 + v2) + 8))(v1 + v2);
      ++v3;
      v2 += 72;
      if ( Arrays::LevelList::size <= v3 )
        break;
      v1 = Arrays::LevelList::members;
    }
    v1 = Arrays::LevelList::members;
    if ( Arrays::LevelList::members )
    {
LABEL_7:
      v4 = v1 + 72 * *(_DWORD *)(v1 - 4);
      if ( v1 != v4 )
      {
        while ( 1 )
        {
          v5 = v4 - 72;
          (**(void (__fastcall ***)(int))(v4 - 72))(v4 - 72);
          v4 = Arrays::LevelList::members;
          if ( Arrays::LevelList::members == v5 )
            break;
          v4 = v5;
        }
      }
      CustomFree((void *)(v4 - 8));
    }
    Arrays::LevelList::members = 0;
  }
}


// ===== 4a67d8 Arrays::FastTravelList::finalizeNames(void) =====
void __fastcall Arrays::FastTravelList::finalizeNames(Arrays::FastTravelList *this)
{
  _DWORD *v1; // r3
  unsigned int v2; // r4
  void *v3; // r0

  v1 = (_DWORD *)Arrays::FastTravelList::m_memberNames;
  if ( Arrays::FastTravelList::m_memberNames )
  {
    if ( !Arrays::FastTravelList::size )
      goto LABEL_9;
    v2 = 0;
    while ( 1 )
    {
      v3 = (void *)v1[v2++];
      if ( v3 )
      {
        CustomFree(v3);
        v1 = (_DWORD *)Arrays::FastTravelList::m_memberNames;
      }
      if ( Arrays::FastTravelList::size <= v2 )
        break;
      v1 = (_DWORD *)Arrays::FastTravelList::m_memberNames;
    }
    if ( v1 )
LABEL_9:
      CustomFree(v1);
    Arrays::FastTravelList::m_memberNames = 0;
  }
}


// ===== 4a6874 Arrays::FastTravelList::finalize(void) =====
void __fastcall Arrays::FastTravelList::finalize(Arrays::FastTravelList *this)
{
  int v1; // r3
  int v2; // r4
  unsigned int v3; // r6
  int v4; // r0
  int v5; // r4

  v1 = Arrays::FastTravelList::members;
  if ( Arrays::FastTravelList::members )
  {
    if ( !Arrays::FastTravelList::size )
      goto LABEL_7;
    v2 = 0;
    v3 = 0;
    while ( 1 )
    {
      (*(void (__fastcall **)(int))(*(_DWORD *)(v1 + v2) + 8))(v1 + v2);
      ++v3;
      v2 += 28;
      if ( Arrays::FastTravelList::size <= v3 )
        break;
      v1 = Arrays::FastTravelList::members;
    }
    v1 = Arrays::FastTravelList::members;
    if ( Arrays::FastTravelList::members )
    {
LABEL_7:
      v4 = v1 + 28 * *(_DWORD *)(v1 - 4);
      if ( v1 != v4 )
      {
        while ( 1 )
        {
          v5 = v4 - 28;
          (**(void (__fastcall ***)(int))(v4 - 28))(v4 - 28);
          v4 = Arrays::FastTravelList::members;
          if ( Arrays::FastTravelList::members == v5 )
            break;
          v4 = v5;
        }
      }
      CustomFree((void *)(v4 - 8));
    }
    Arrays::FastTravelList::members = 0;
  }
}


// ===== 4a6958 Arrays::ItemBonusAttrMonopoly::finalizeNames(void) =====
void __fastcall Arrays::ItemBonusAttrMonopoly::finalizeNames(Arrays::ItemBonusAttrMonopoly *this)
{
  _DWORD *v1; // r3
  unsigned int v2; // r4
  void *v3; // r0

  v1 = (_DWORD *)Arrays::ItemBonusAttrMonopoly::m_memberNames;
  if ( Arrays::ItemBonusAttrMonopoly::m_memberNames )
  {
    if ( !Arrays::ItemBonusAttrMonopoly::size )
      goto LABEL_9;
    v2 = 0;
    while ( 1 )
    {
      v3 = (void *)v1[v2++];
      if ( v3 )
      {
        CustomFree(v3);
        v1 = (_DWORD *)Arrays::ItemBonusAttrMonopoly::m_memberNames;
      }
      if ( Arrays::ItemBonusAttrMonopoly::size <= v2 )
        break;
      v1 = (_DWORD *)Arrays::ItemBonusAttrMonopoly::m_memberNames;
    }
    if ( v1 )
LABEL_9:
      CustomFree(v1);
    Arrays::ItemBonusAttrMonopoly::m_memberNames = 0;
  }
}


// ===== 4a69f4 Arrays::ItemBonusAttrMonopoly::finalize(void) =====
void __fastcall Arrays::ItemBonusAttrMonopoly::finalize(Arrays::ItemBonusAttrMonopoly *this)
{
  int v1; // r3
  int v2; // r4
  unsigned int v3; // r6
  int v4; // r0
  int v5; // r4

  v1 = Arrays::ItemBonusAttrMonopoly::members;
  if ( Arrays::ItemBonusAttrMonopoly::members )
  {
    if ( !Arrays::ItemBonusAttrMonopoly::size )
      goto LABEL_7;
    v2 = 0;
    v3 = 0;
    while ( 1 )
    {
      (*(void (__fastcall **)(int))(*(_DWORD *)(v1 + v2) + 8))(v1 + v2);
      ++v3;
      v2 += 12;
      if ( Arrays::ItemBonusAttrMonopoly::size <= v3 )
        break;
      v1 = Arrays::ItemBonusAttrMonopoly::members;
    }
    v1 = Arrays::ItemBonusAttrMonopoly::members;
    if ( Arrays::ItemBonusAttrMonopoly::members )
    {
LABEL_7:
      v4 = v1 + 12 * *(_DWORD *)(v1 - 4);
      if ( v1 != v4 )
      {
        while ( 1 )
        {
          v5 = v4 - 12;
          (**(void (__fastcall ***)(int))(v4 - 12))(v4 - 12);
          v4 = Arrays::ItemBonusAttrMonopoly::members;
          if ( Arrays::ItemBonusAttrMonopoly::members == v5 )
            break;
          v4 = v5;
        }
      }
      CustomFree((void *)(v4 - 8));
    }
    Arrays::ItemBonusAttrMonopoly::members = 0;
  }
}


// ===== 4a6ad8 Arrays::ItemPowerTable::finalizeNames(void) =====
void __fastcall Arrays::ItemPowerTable::finalizeNames(Arrays::ItemPowerTable *this)
{
  _DWORD *v1; // r3
  unsigned int v2; // r4
  void *v3; // r0

  v1 = (_DWORD *)Arrays::ItemPowerTable::m_memberNames;
  if ( Arrays::ItemPowerTable::m_memberNames )
  {
    if ( !Arrays::ItemPowerTable::size )
      goto LABEL_9;
    v2 = 0;
    while ( 1 )
    {
      v3 = (void *)v1[v2++];
      if ( v3 )
      {
        CustomFree(v3);
        v1 = (_DWORD *)Arrays::ItemPowerTable::m_memberNames;
      }
      if ( Arrays::ItemPowerTable::size <= v2 )
        break;
      v1 = (_DWORD *)Arrays::ItemPowerTable::m_memberNames;
    }
    if ( v1 )
LABEL_9:
      CustomFree(v1);
    Arrays::ItemPowerTable::m_memberNames = 0;
  }
}


// ===== 4a6b74 Arrays::ItemPowerTable::finalize(void) =====
void __fastcall Arrays::ItemPowerTable::finalize(Arrays::ItemPowerTable *this)
{
  int v1; // r3
  int v2; // r4
  unsigned int v3; // r6
  int v4; // r0
  int v5; // r4

  v1 = Arrays::ItemPowerTable::members;
  if ( Arrays::ItemPowerTable::members )
  {
    if ( !Arrays::ItemPowerTable::size )
      goto LABEL_7;
    v2 = 0;
    v3 = 0;
    while ( 1 )
    {
      (*(void (__fastcall **)(int))(*(_DWORD *)(v1 + v2) + 8))(v1 + v2);
      ++v3;
      v2 += 40;
      if ( Arrays::ItemPowerTable::size <= v3 )
        break;
      v1 = Arrays::ItemPowerTable::members;
    }
    v1 = Arrays::ItemPowerTable::members;
    if ( Arrays::ItemPowerTable::members )
    {
LABEL_7:
      v4 = v1 + 40 * *(_DWORD *)(v1 - 4);
      if ( v1 != v4 )
      {
        while ( 1 )
        {
          v5 = v4 - 40;
          (**(void (__fastcall ***)(int))(v4 - 40))(v4 - 40);
          v4 = Arrays::ItemPowerTable::members;
          if ( Arrays::ItemPowerTable::members == v5 )
            break;
          v4 = v5;
        }
      }
      CustomFree((void *)(v4 - 8));
    }
    Arrays::ItemPowerTable::members = 0;
  }
}


// ===== 4a6c58 Arrays::ItemPowerList::finalizeNames(void) =====
void __fastcall Arrays::ItemPowerList::finalizeNames(Arrays::ItemPowerList *this)
{
  _DWORD *v1; // r3
  unsigned int v2; // r4
  void *v3; // r0

  v1 = (_DWORD *)Arrays::ItemPowerList::m_memberNames;
  if ( Arrays::ItemPowerList::m_memberNames )
  {
    if ( !Arrays::ItemPowerList::size )
      goto LABEL_9;
    v2 = 0;
    while ( 1 )
    {
      v3 = (void *)v1[v2++];
      if ( v3 )
      {
        CustomFree(v3);
        v1 = (_DWORD *)Arrays::ItemPowerList::m_memberNames;
      }
      if ( Arrays::ItemPowerList::size <= v2 )
        break;
      v1 = (_DWORD *)Arrays::ItemPowerList::m_memberNames;
    }
    if ( v1 )
LABEL_9:
      CustomFree(v1);
    Arrays::ItemPowerList::m_memberNames = 0;
  }
}


// ===== 4a6cf4 Arrays::ItemPowerList::finalize(void) =====
void __fastcall Arrays::ItemPowerList::finalize(Arrays::ItemPowerList *this)
{
  int v1; // r3
  int v2; // r4
  unsigned int v3; // r6
  int v4; // r0
  int v5; // r4

  v1 = Arrays::ItemPowerList::members;
  if ( Arrays::ItemPowerList::members )
  {
    if ( !Arrays::ItemPowerList::size )
      goto LABEL_7;
    v2 = 0;
    v3 = 0;
    while ( 1 )
    {
      (*(void (__fastcall **)(int))(*(_DWORD *)(v1 + v2) + 8))(v1 + v2);
      ++v3;
      v2 += 12;
      if ( Arrays::ItemPowerList::size <= v3 )
        break;
      v1 = Arrays::ItemPowerList::members;
    }
    v1 = Arrays::ItemPowerList::members;
    if ( Arrays::ItemPowerList::members )
    {
LABEL_7:
      v4 = v1 + 12 * *(_DWORD *)(v1 - 4);
      if ( v1 != v4 )
      {
        while ( 1 )
        {
          v5 = v4 - 12;
          (**(void (__fastcall ***)(int))(v4 - 12))(v4 - 12);
          v4 = Arrays::ItemPowerList::members;
          if ( Arrays::ItemPowerList::members == v5 )
            break;
          v4 = v5;
        }
      }
      CustomFree((void *)(v4 - 8));
    }
    Arrays::ItemPowerList::members = 0;
  }
}


// ===== 4a6dd8 Arrays::HintPages::finalizeNames(void) =====
void __fastcall Arrays::HintPages::finalizeNames(Arrays::HintPages *this)
{
  _DWORD *v1; // r3
  unsigned int v2; // r4
  void *v3; // r0

  v1 = (_DWORD *)Arrays::HintPages::m_memberNames;
  if ( Arrays::HintPages::m_memberNames )
  {
    if ( !Arrays::HintPages::size )
      goto LABEL_9;
    v2 = 0;
    while ( 1 )
    {
      v3 = (void *)v1[v2++];
      if ( v3 )
      {
        CustomFree(v3);
        v1 = (_DWORD *)Arrays::HintPages::m_memberNames;
      }
      if ( Arrays::HintPages::size <= v2 )
        break;
      v1 = (_DWORD *)Arrays::HintPages::m_memberNames;
    }
    if ( v1 )
LABEL_9:
      CustomFree(v1);
    Arrays::HintPages::m_memberNames = 0;
  }
}


// ===== 4a6e74 Arrays::HintPages::finalize(void) =====
void __fastcall Arrays::HintPages::finalize(Arrays::HintPages *this)
{
  int v1; // r3
  int v2; // r4
  unsigned int v3; // r6
  int v4; // r0
  int v5; // r4

  v1 = Arrays::HintPages::members;
  if ( Arrays::HintPages::members )
  {
    if ( !Arrays::HintPages::size )
      goto LABEL_7;
    v2 = 0;
    v3 = 0;
    while ( 1 )
    {
      (*(void (__fastcall **)(int))(*(_DWORD *)(v1 + v2) + 8))(v1 + v2);
      ++v3;
      v2 += 12;
      if ( Arrays::HintPages::size <= v3 )
        break;
      v1 = Arrays::HintPages::members;
    }
    v1 = Arrays::HintPages::members;
    if ( Arrays::HintPages::members )
    {
LABEL_7:
      v4 = v1 + 12 * *(_DWORD *)(v1 - 4);
      if ( v1 != v4 )
      {
        while ( 1 )
        {
          v5 = v4 - 12;
          (**(void (__fastcall ***)(int))(v4 - 12))(v4 - 12);
          v4 = Arrays::HintPages::members;
          if ( Arrays::HintPages::members == v5 )
            break;
          v4 = v5;
        }
      }
      CustomFree((void *)(v4 - 8));
    }
    Arrays::HintPages::members = 0;
  }
}


// ===== 4a6f58 Arrays::HelpPages::finalizeNames(void) =====
void __fastcall Arrays::HelpPages::finalizeNames(Arrays::HelpPages *this)
{
  _DWORD *v1; // r3
  unsigned int v2; // r4
  void *v3; // r0

  v1 = (_DWORD *)Arrays::HelpPages::m_memberNames;
  if ( Arrays::HelpPages::m_memberNames )
  {
    if ( !Arrays::HelpPages::size )
      goto LABEL_9;
    v2 = 0;
    while ( 1 )
    {
      v3 = (void *)v1[v2++];
      if ( v3 )
      {
        CustomFree(v3);
        v1 = (_DWORD *)Arrays::HelpPages::m_memberNames;
      }
      if ( Arrays::HelpPages::size <= v2 )
        break;
      v1 = (_DWORD *)Arrays::HelpPages::m_memberNames;
    }
    if ( v1 )
LABEL_9:
      CustomFree(v1);
    Arrays::HelpPages::m_memberNames = 0;
  }
}


// ===== 4a6ff4 Arrays::HelpPages::finalize(void) =====
void __fastcall Arrays::HelpPages::finalize(Arrays::HelpPages *this)
{
  int v1; // r3
  int v2; // r4
  unsigned int v3; // r6
  int v4; // r0
  int v5; // r4

  v1 = Arrays::HelpPages::members;
  if ( Arrays::HelpPages::members )
  {
    if ( !Arrays::HelpPages::size )
      goto LABEL_7;
    v2 = 0;
    v3 = 0;
    while ( 1 )
    {
      (*(void (__fastcall **)(int))(*(_DWORD *)(v1 + v2) + 8))(v1 + v2);
      ++v3;
      v2 += 12;
      if ( Arrays::HelpPages::size <= v3 )
        break;
      v1 = Arrays::HelpPages::members;
    }
    v1 = Arrays::HelpPages::members;
    if ( Arrays::HelpPages::members )
    {
LABEL_7:
      v4 = v1 + 12 * *(_DWORD *)(v1 - 4);
      if ( v1 != v4 )
      {
        while ( 1 )
        {
          v5 = v4 - 12;
          (**(void (__fastcall ***)(int))(v4 - 12))(v4 - 12);
          v4 = Arrays::HelpPages::members;
          if ( Arrays::HelpPages::members == v5 )
            break;
          v4 = v5;
        }
      }
      CustomFree((void *)(v4 - 8));
    }
    Arrays::HelpPages::members = 0;
  }
}


// ===== 4a70d8 Arrays::TriggerTraps::finalizeNames(void) =====
void __fastcall Arrays::TriggerTraps::finalizeNames(Arrays::TriggerTraps *this)
{
  _DWORD *v1; // r3
  unsigned int v2; // r4
  void *v3; // r0

  v1 = (_DWORD *)Arrays::TriggerTraps::m_memberNames;
  if ( Arrays::TriggerTraps::m_memberNames )
  {
    if ( !Arrays::TriggerTraps::size )
      goto LABEL_9;
    v2 = 0;
    while ( 1 )
    {
      v3 = (void *)v1[v2++];
      if ( v3 )
      {
        CustomFree(v3);
        v1 = (_DWORD *)Arrays::TriggerTraps::m_memberNames;
      }
      if ( Arrays::TriggerTraps::size <= v2 )
        break;
      v1 = (_DWORD *)Arrays::TriggerTraps::m_memberNames;
    }
    if ( v1 )
LABEL_9:
      CustomFree(v1);
    Arrays::TriggerTraps::m_memberNames = 0;
  }
}


// ===== 4a7174 Arrays::TriggerTraps::finalize(void) =====
void __fastcall Arrays::TriggerTraps::finalize(Arrays::TriggerTraps *this)
{
  int v1; // r3
  int v2; // r4
  unsigned int v3; // r6
  int v4; // r0
  int v5; // r4

  v1 = Arrays::TriggerTraps::members;
  if ( Arrays::TriggerTraps::members )
  {
    if ( !Arrays::TriggerTraps::size )
      goto LABEL_7;
    v2 = 0;
    v3 = 0;
    while ( 1 )
    {
      (*(void (__fastcall **)(int))(*(_DWORD *)(v1 + v2) + 8))(v1 + v2);
      ++v3;
      v2 += 28;
      if ( Arrays::TriggerTraps::size <= v3 )
        break;
      v1 = Arrays::TriggerTraps::members;
    }
    v1 = Arrays::TriggerTraps::members;
    if ( Arrays::TriggerTraps::members )
    {
LABEL_7:
      v4 = v1 + 28 * *(_DWORD *)(v1 - 4);
      if ( v1 != v4 )
      {
        while ( 1 )
        {
          v5 = v4 - 28;
          (**(void (__fastcall ***)(int))(v4 - 28))(v4 - 28);
          v4 = Arrays::TriggerTraps::members;
          if ( Arrays::TriggerTraps::members == v5 )
            break;
          v4 = v5;
        }
      }
      CustomFree((void *)(v4 - 8));
    }
    Arrays::TriggerTraps::members = 0;
  }
}


// ===== 4a7258 Arrays::TriggerPlates::finalizeNames(void) =====
void __fastcall Arrays::TriggerPlates::finalizeNames(Arrays::TriggerPlates *this)
{
  _DWORD *v1; // r3
  unsigned int v2; // r4
  void *v3; // r0

  v1 = (_DWORD *)Arrays::TriggerPlates::m_memberNames;
  if ( Arrays::TriggerPlates::m_memberNames )
  {
    if ( !Arrays::TriggerPlates::size )
      goto LABEL_9;
    v2 = 0;
    while ( 1 )
    {
      v3 = (void *)v1[v2++];
      if ( v3 )
      {
        CustomFree(v3);
        v1 = (_DWORD *)Arrays::TriggerPlates::m_memberNames;
      }
      if ( Arrays::TriggerPlates::size <= v2 )
        break;
      v1 = (_DWORD *)Arrays::TriggerPlates::m_memberNames;
    }
    if ( v1 )
LABEL_9:
      CustomFree(v1);
    Arrays::TriggerPlates::m_memberNames = 0;
  }
}


// ===== 4a72f4 Arrays::TriggerPlates::finalize(void) =====
void __fastcall Arrays::TriggerPlates::finalize(Arrays::TriggerPlates *this)
{
  int v1; // r3
  int v2; // r4
  int v3; // r0
  int v4; // r4

  v1 = Arrays::TriggerPlates::members;
  if ( Arrays::TriggerPlates::members )
  {
    if ( !Arrays::TriggerPlates::size )
      goto LABEL_7;
    v2 = 0;
    while ( 1 )
    {
      (*(void (__fastcall **)(int))(*(_DWORD *)(v1 + 32 * v2) + 8))(v1 + 32 * v2);
      if ( Arrays::TriggerPlates::size <= (unsigned int)++v2 )
        break;
      v1 = Arrays::TriggerPlates::members;
    }
    v1 = Arrays::TriggerPlates::members;
    if ( Arrays::TriggerPlates::members )
    {
LABEL_7:
      v3 = v1 + 32 * *(_DWORD *)(v1 - 4);
      if ( v1 != v3 )
      {
        while ( 1 )
        {
          v4 = v3 - 32;
          (**(void (__fastcall ***)(int))(v3 - 32))(v3 - 32);
          v3 = Arrays::TriggerPlates::members;
          if ( Arrays::TriggerPlates::members == v4 )
            break;
          v3 = v4;
        }
      }
      CustomFree((void *)(v3 - 8));
    }
    Arrays::TriggerPlates::members = 0;
  }
}


// ===== 4a73cc Arrays::TriggerObjects::finalizeNames(void) =====
void __fastcall Arrays::TriggerObjects::finalizeNames(Arrays::TriggerObjects *this)
{
  _DWORD *v1; // r3
  unsigned int v2; // r4
  void *v3; // r0

  v1 = (_DWORD *)Arrays::TriggerObjects::m_memberNames;
  if ( Arrays::TriggerObjects::m_memberNames )
  {
    if ( !Arrays::TriggerObjects::size )
      goto LABEL_9;
    v2 = 0;
    while ( 1 )
    {
      v3 = (void *)v1[v2++];
      if ( v3 )
      {
        CustomFree(v3);
        v1 = (_DWORD *)Arrays::TriggerObjects::m_memberNames;
      }
      if ( Arrays::TriggerObjects::size <= v2 )
        break;
      v1 = (_DWORD *)Arrays::TriggerObjects::m_memberNames;
    }
    if ( v1 )
LABEL_9:
      CustomFree(v1);
    Arrays::TriggerObjects::m_memberNames = 0;
  }
}


// ===== 4a7468 Arrays::TriggerObjects::finalize(void) =====
void __fastcall Arrays::TriggerObjects::finalize(Arrays::TriggerObjects *this)
{
  int v1; // r3
  int v2; // r4
  unsigned int v3; // r6
  int v4; // r0
  int v5; // r4

  v1 = Arrays::TriggerObjects::members;
  if ( Arrays::TriggerObjects::members )
  {
    if ( !Arrays::TriggerObjects::size )
      goto LABEL_7;
    v2 = 0;
    v3 = 0;
    while ( 1 )
    {
      (*(void (__fastcall **)(int))(*(_DWORD *)(v1 + v2) + 8))(v1 + v2);
      ++v3;
      v2 += 24;
      if ( Arrays::TriggerObjects::size <= v3 )
        break;
      v1 = Arrays::TriggerObjects::members;
    }
    v1 = Arrays::TriggerObjects::members;
    if ( Arrays::TriggerObjects::members )
    {
LABEL_7:
      v4 = v1 + 24 * *(_DWORD *)(v1 - 4);
      if ( v1 != v4 )
      {
        while ( 1 )
        {
          v5 = v4 - 24;
          (**(void (__fastcall ***)(int))(v4 - 24))(v4 - 24);
          v4 = Arrays::TriggerObjects::members;
          if ( Arrays::TriggerObjects::members == v5 )
            break;
          v4 = v5;
        }
      }
      CustomFree((void *)(v4 - 8));
    }
    Arrays::TriggerObjects::members = 0;
  }
}


// ===== 4a754c Arrays::TimerTraps::finalizeNames(void) =====
void __fastcall Arrays::TimerTraps::finalizeNames(Arrays::TimerTraps *this)
{
  _DWORD *v1; // r3
  unsigned int v2; // r4
  void *v3; // r0

  v1 = (_DWORD *)Arrays::TimerTraps::m_memberNames;
  if ( Arrays::TimerTraps::m_memberNames )
  {
    if ( !Arrays::TimerTraps::size )
      goto LABEL_9;
    v2 = 0;
    while ( 1 )
    {
      v3 = (void *)v1[v2++];
      if ( v3 )
      {
        CustomFree(v3);
        v1 = (_DWORD *)Arrays::TimerTraps::m_memberNames;
      }
      if ( Arrays::TimerTraps::size <= v2 )
        break;
      v1 = (_DWORD *)Arrays::TimerTraps::m_memberNames;
    }
    if ( v1 )
LABEL_9:
      CustomFree(v1);
    Arrays::TimerTraps::m_memberNames = 0;
  }
}


// ===== 4a75e8 Arrays::TimerTraps::finalize(void) =====
void __fastcall Arrays::TimerTraps::finalize(Arrays::TimerTraps *this)
{
  int v1; // r3
  int v2; // r4
  int v3; // r0
  int v4; // r4

  v1 = Arrays::TimerTraps::members;
  if ( Arrays::TimerTraps::members )
  {
    if ( !Arrays::TimerTraps::size )
      goto LABEL_7;
    v2 = 0;
    while ( 1 )
    {
      (*(void (__fastcall **)(int))(*(_DWORD *)(v1 + 32 * v2) + 8))(v1 + 32 * v2);
      if ( Arrays::TimerTraps::size <= (unsigned int)++v2 )
        break;
      v1 = Arrays::TimerTraps::members;
    }
    v1 = Arrays::TimerTraps::members;
    if ( Arrays::TimerTraps::members )
    {
LABEL_7:
      v3 = v1 + 32 * *(_DWORD *)(v1 - 4);
      if ( v1 != v3 )
      {
        while ( 1 )
        {
          v4 = v3 - 32;
          (**(void (__fastcall ***)(int))(v3 - 32))(v3 - 32);
          v3 = Arrays::TimerTraps::members;
          if ( Arrays::TimerTraps::members == v4 )
            break;
          v3 = v4;
        }
      }
      CustomFree((void *)(v3 - 8));
    }
    Arrays::TimerTraps::members = 0;
  }
}


// ===== 4a76c0 Arrays::ProjectileTraps::finalizeNames(void) =====
void __fastcall Arrays::ProjectileTraps::finalizeNames(Arrays::ProjectileTraps *this)
{
  _DWORD *v1; // r3
  unsigned int v2; // r4
  void *v3; // r0

  v1 = (_DWORD *)Arrays::ProjectileTraps::m_memberNames;
  if ( Arrays::ProjectileTraps::m_memberNames )
  {
    if ( !Arrays::ProjectileTraps::size )
      goto LABEL_9;
    v2 = 0;
    while ( 1 )
    {
      v3 = (void *)v1[v2++];
      if ( v3 )
      {
        CustomFree(v3);
        v1 = (_DWORD *)Arrays::ProjectileTraps::m_memberNames;
      }
      if ( Arrays::ProjectileTraps::size <= v2 )
        break;
      v1 = (_DWORD *)Arrays::ProjectileTraps::m_memberNames;
    }
    if ( v1 )
LABEL_9:
      CustomFree(v1);
    Arrays::ProjectileTraps::m_memberNames = 0;
  }
}


// ===== 4a775c Arrays::ProjectileTraps::finalize(void) =====
void __fastcall Arrays::ProjectileTraps::finalize(Arrays::ProjectileTraps *this)
{
  int v1; // r3
  int v2; // r4
  unsigned int v3; // r6
  int v4; // r0
  int v5; // r4

  v1 = Arrays::ProjectileTraps::members;
  if ( Arrays::ProjectileTraps::members )
  {
    if ( !Arrays::ProjectileTraps::size )
      goto LABEL_7;
    v2 = 0;
    v3 = 0;
    while ( 1 )
    {
      (*(void (__fastcall **)(int))(*(_DWORD *)(v1 + v2) + 8))(v1 + v2);
      ++v3;
      v2 += 40;
      if ( Arrays::ProjectileTraps::size <= v3 )
        break;
      v1 = Arrays::ProjectileTraps::members;
    }
    v1 = Arrays::ProjectileTraps::members;
    if ( Arrays::ProjectileTraps::members )
    {
LABEL_7:
      v4 = v1 + 40 * *(_DWORD *)(v1 - 4);
      if ( v1 != v4 )
      {
        while ( 1 )
        {
          v5 = v4 - 40;
          (**(void (__fastcall ***)(int))(v4 - 40))(v4 - 40);
          v4 = Arrays::ProjectileTraps::members;
          if ( Arrays::ProjectileTraps::members == v5 )
            break;
          v4 = v5;
        }
      }
      CustomFree((void *)(v4 - 8));
    }
    Arrays::ProjectileTraps::members = 0;
  }
}


// ===== 4a7840 Arrays::OpenableContainers::finalizeNames(void) =====
void __fastcall Arrays::OpenableContainers::finalizeNames(Arrays::OpenableContainers *this)
{
  _DWORD *v1; // r3
  unsigned int v2; // r4
  void *v3; // r0

  v1 = (_DWORD *)Arrays::OpenableContainers::m_memberNames;
  if ( Arrays::OpenableContainers::m_memberNames )
  {
    if ( !Arrays::OpenableContainers::size )
      goto LABEL_9;
    v2 = 0;
    while ( 1 )
    {
      v3 = (void *)v1[v2++];
      if ( v3 )
      {
        CustomFree(v3);
        v1 = (_DWORD *)Arrays::OpenableContainers::m_memberNames;
      }
      if ( Arrays::OpenableContainers::size <= v2 )
        break;
      v1 = (_DWORD *)Arrays::OpenableContainers::m_memberNames;
    }
    if ( v1 )
LABEL_9:
      CustomFree(v1);
    Arrays::OpenableContainers::m_memberNames = 0;
  }
}


// ===== 4a78dc Arrays::OpenableContainers::finalize(void) =====
void __fastcall Arrays::OpenableContainers::finalize(Arrays::OpenableContainers *this)
{
  int v1; // r3
  int v2; // r4
  unsigned int v3; // r6
  int v4; // r0
  int v5; // r4

  v1 = Arrays::OpenableContainers::members;
  if ( Arrays::OpenableContainers::members )
  {
    if ( !Arrays::OpenableContainers::size )
      goto LABEL_7;
    v2 = 0;
    v3 = 0;
    while ( 1 )
    {
      (*(void (__fastcall **)(int))(*(_DWORD *)(v1 + v2) + 8))(v1 + v2);
      ++v3;
      v2 += 40;
      if ( Arrays::OpenableContainers::size <= v3 )
        break;
      v1 = Arrays::OpenableContainers::members;
    }
    v1 = Arrays::OpenableContainers::members;
    if ( Arrays::OpenableContainers::members )
    {
LABEL_7:
      v4 = v1 + 40 * *(_DWORD *)(v1 - 4);
      if ( v1 != v4 )
      {
        while ( 1 )
        {
          v5 = v4 - 40;
          (**(void (__fastcall ***)(int))(v4 - 40))(v4 - 40);
          v4 = Arrays::OpenableContainers::members;
          if ( Arrays::OpenableContainers::members == v5 )
            break;
          v4 = v5;
        }
      }
      CustomFree((void *)(v4 - 8));
    }
    Arrays::OpenableContainers::members = 0;
  }
}


// ===== 4a79c0 Arrays::LiftableObjects::finalizeNames(void) =====
void __fastcall Arrays::LiftableObjects::finalizeNames(Arrays::LiftableObjects *this)
{
  _DWORD *v1; // r3
  unsigned int v2; // r4
  void *v3; // r0

  v1 = (_DWORD *)Arrays::LiftableObjects::m_memberNames;
  if ( Arrays::LiftableObjects::m_memberNames )
  {
    if ( !Arrays::LiftableObjects::size )
      goto LABEL_9;
    v2 = 0;
    while ( 1 )
    {
      v3 = (void *)v1[v2++];
      if ( v3 )
      {
        CustomFree(v3);
        v1 = (_DWORD *)Arrays::LiftableObjects::m_memberNames;
      }
      if ( Arrays::LiftableObjects::size <= v2 )
        break;
      v1 = (_DWORD *)Arrays::LiftableObjects::m_memberNames;
    }
    if ( v1 )
LABEL_9:
      CustomFree(v1);
    Arrays::LiftableObjects::m_memberNames = 0;
  }
}


// ===== 4a7a5c Arrays::LiftableObjects::finalize(void) =====
void __fastcall Arrays::LiftableObjects::finalize(Arrays::LiftableObjects *this)
{
  int v1; // r3
  int v2; // r4
  int v3; // r0
  int v4; // r4

  v1 = Arrays::LiftableObjects::members;
  if ( Arrays::LiftableObjects::members )
  {
    if ( !Arrays::LiftableObjects::size )
      goto LABEL_7;
    v2 = 0;
    while ( 1 )
    {
      (*(void (__fastcall **)(int))(*(_DWORD *)(v1 + 8 * v2) + 8))(v1 + 8 * v2);
      if ( Arrays::LiftableObjects::size <= (unsigned int)++v2 )
        break;
      v1 = Arrays::LiftableObjects::members;
    }
    v1 = Arrays::LiftableObjects::members;
    if ( Arrays::LiftableObjects::members )
    {
LABEL_7:
      v3 = v1 + 8 * *(_DWORD *)(v1 - 4);
      if ( v1 != v3 )
      {
        while ( 1 )
        {
          v4 = v3 - 8;
          (**(void (__fastcall ***)(int))(v3 - 8))(v3 - 8);
          v3 = Arrays::LiftableObjects::members;
          if ( Arrays::LiftableObjects::members == v4 )
            break;
          v3 = v4;
        }
      }
      CustomFree((void *)(v3 - 8));
    }
    Arrays::LiftableObjects::members = 0;
  }
}


// ===== 4a7b34 Arrays::GameObjectDamager::finalizeNames(void) =====
void __fastcall Arrays::GameObjectDamager::finalizeNames(Arrays::GameObjectDamager *this)
{
  _DWORD *v1; // r3
  unsigned int v2; // r4
  void *v3; // r0

  v1 = (_DWORD *)Arrays::GameObjectDamager::m_memberNames;
  if ( Arrays::GameObjectDamager::m_memberNames )
  {
    if ( !Arrays::GameObjectDamager::size )
      goto LABEL_9;
    v2 = 0;
    while ( 1 )
    {
      v3 = (void *)v1[v2++];
      if ( v3 )
      {
        CustomFree(v3);
        v1 = (_DWORD *)Arrays::GameObjectDamager::m_memberNames;
      }
      if ( Arrays::GameObjectDamager::size <= v2 )
        break;
      v1 = (_DWORD *)Arrays::GameObjectDamager::m_memberNames;
    }
    if ( v1 )
LABEL_9:
      CustomFree(v1);
    Arrays::GameObjectDamager::m_memberNames = 0;
  }
}


// ===== 4a7bd0 Arrays::GameObjectDamager::finalize(void) =====
void __fastcall Arrays::GameObjectDamager::finalize(Arrays::GameObjectDamager *this)
{
  int v1; // r3
  int v2; // r4
  unsigned int v3; // r6
  int v4; // r0
  int v5; // r4

  v1 = Arrays::GameObjectDamager::members;
  if ( Arrays::GameObjectDamager::members )
  {
    if ( !Arrays::GameObjectDamager::size )
      goto LABEL_7;
    v2 = 0;
    v3 = 0;
    while ( 1 )
    {
      (*(void (__fastcall **)(int))(*(_DWORD *)(v1 + v2) + 8))(v1 + v2);
      ++v3;
      v2 += 24;
      if ( Arrays::GameObjectDamager::size <= v3 )
        break;
      v1 = Arrays::GameObjectDamager::members;
    }
    v1 = Arrays::GameObjectDamager::members;
    if ( Arrays::GameObjectDamager::members )
    {
LABEL_7:
      v4 = v1 + 24 * *(_DWORD *)(v1 - 4);
      if ( v1 != v4 )
      {
        while ( 1 )
        {
          v5 = v4 - 24;
          (**(void (__fastcall ***)(int))(v4 - 24))(v4 - 24);
          v4 = Arrays::GameObjectDamager::members;
          if ( Arrays::GameObjectDamager::members == v5 )
            break;
          v4 = v5;
        }
      }
      CustomFree((void *)(v4 - 8));
    }
    Arrays::GameObjectDamager::members = 0;
  }
}


// ===== 4a7cb4 Arrays::ExplosiveTraps::finalizeNames(void) =====
void __fastcall Arrays::ExplosiveTraps::finalizeNames(Arrays::ExplosiveTraps *this)
{
  _DWORD *v1; // r3
  unsigned int v2; // r4
  void *v3; // r0

  v1 = (_DWORD *)Arrays::ExplosiveTraps::m_memberNames;
  if ( Arrays::ExplosiveTraps::m_memberNames )
  {
    if ( !Arrays::ExplosiveTraps::size )
      goto LABEL_9;
    v2 = 0;
    while ( 1 )
    {
      v3 = (void *)v1[v2++];
      if ( v3 )
      {
        CustomFree(v3);
        v1 = (_DWORD *)Arrays::ExplosiveTraps::m_memberNames;
      }
      if ( Arrays::ExplosiveTraps::size <= v2 )
        break;
      v1 = (_DWORD *)Arrays::ExplosiveTraps::m_memberNames;
    }
    if ( v1 )
LABEL_9:
      CustomFree(v1);
    Arrays::ExplosiveTraps::m_memberNames = 0;
  }
}


// ===== 4a7d50 Arrays::ExplosiveTraps::finalize(void) =====
void __fastcall Arrays::ExplosiveTraps::finalize(Arrays::ExplosiveTraps *this)
{
  int v1; // r3
  int v2; // r4
  unsigned int v3; // r6
  int v4; // r0
  int v5; // r4

  v1 = Arrays::ExplosiveTraps::members;
  if ( Arrays::ExplosiveTraps::members )
  {
    if ( !Arrays::ExplosiveTraps::size )
      goto LABEL_7;
    v2 = 0;
    v3 = 0;
    while ( 1 )
    {
      (*(void (__fastcall **)(int))(*(_DWORD *)(v1 + v2) + 8))(v1 + v2);
      ++v3;
      v2 += 24;
      if ( Arrays::ExplosiveTraps::size <= v3 )
        break;
      v1 = Arrays::ExplosiveTraps::members;
    }
    v1 = Arrays::ExplosiveTraps::members;
    if ( Arrays::ExplosiveTraps::members )
    {
LABEL_7:
      v4 = v1 + 24 * *(_DWORD *)(v1 - 4);
      if ( v1 != v4 )
      {
        while ( 1 )
        {
          v5 = v4 - 24;
          (**(void (__fastcall ***)(int))(v4 - 24))(v4 - 24);
          v4 = Arrays::ExplosiveTraps::members;
          if ( Arrays::ExplosiveTraps::members == v5 )
            break;
          v4 = v5;
        }
      }
      CustomFree((void *)(v4 - 8));
    }
    Arrays::ExplosiveTraps::members = 0;
  }
}


// ===== 4a7e34 Arrays::Doors::finalizeNames(void) =====
void __fastcall Arrays::Doors::finalizeNames(Arrays::Doors *this)
{
  _DWORD *v1; // r3
  unsigned int v2; // r4
  void *v3; // r0

  v1 = (_DWORD *)Arrays::Doors::m_memberNames;
  if ( Arrays::Doors::m_memberNames )
  {
    if ( !Arrays::Doors::size )
      goto LABEL_9;
    v2 = 0;
    while ( 1 )
    {
      v3 = (void *)v1[v2++];
      if ( v3 )
      {
        CustomFree(v3);
        v1 = (_DWORD *)Arrays::Doors::m_memberNames;
      }
      if ( Arrays::Doors::size <= v2 )
        break;
      v1 = (_DWORD *)Arrays::Doors::m_memberNames;
    }
    if ( v1 )
LABEL_9:
      CustomFree(v1);
    Arrays::Doors::m_memberNames = 0;
  }
}


// ===== 4a7ed0 Arrays::Doors::finalize(void) =====
void __fastcall Arrays::Doors::finalize(Arrays::Doors *this)
{
  int v1; // r3
  int v2; // r4
  unsigned int v3; // r6
  int v4; // r0
  int v5; // r4

  v1 = Arrays::Doors::members;
  if ( Arrays::Doors::members )
  {
    if ( !Arrays::Doors::size )
      goto LABEL_7;
    v2 = 0;
    v3 = 0;
    while ( 1 )
    {
      (*(void (__fastcall **)(int))(*(_DWORD *)(v1 + v2) + 8))(v1 + v2);
      ++v3;
      v2 += 24;
      if ( Arrays::Doors::size <= v3 )
        break;
      v1 = Arrays::Doors::members;
    }
    v1 = Arrays::Doors::members;
    if ( Arrays::Doors::members )
    {
LABEL_7:
      v4 = v1 + 24 * *(_DWORD *)(v1 - 4);
      if ( v1 != v4 )
      {
        while ( 1 )
        {
          v5 = v4 - 24;
          (**(void (__fastcall ***)(int))(v4 - 24))(v4 - 24);
          v4 = Arrays::Doors::members;
          if ( Arrays::Doors::members == v5 )
            break;
          v4 = v5;
        }
      }
      CustomFree((void *)(v4 - 8));
    }
    Arrays::Doors::members = 0;
  }
}


// ===== 4a7fb4 Arrays::DestructibleContainers::finalizeNames(void) =====
void __fastcall Arrays::DestructibleContainers::finalizeNames(Arrays::DestructibleContainers *this)
{
  _DWORD *v1; // r3
  unsigned int v2; // r4
  void *v3; // r0

  v1 = (_DWORD *)Arrays::DestructibleContainers::m_memberNames;
  if ( Arrays::DestructibleContainers::m_memberNames )
  {
    if ( !Arrays::DestructibleContainers::size )
      goto LABEL_9;
    v2 = 0;
    while ( 1 )
    {
      v3 = (void *)v1[v2++];
      if ( v3 )
      {
        CustomFree(v3);
        v1 = (_DWORD *)Arrays::DestructibleContainers::m_memberNames;
      }
      if ( Arrays::DestructibleContainers::size <= v2 )
        break;
      v1 = (_DWORD *)Arrays::DestructibleContainers::m_memberNames;
    }
    if ( v1 )
LABEL_9:
      CustomFree(v1);
    Arrays::DestructibleContainers::m_memberNames = 0;
  }
}


// ===== 4a8050 Arrays::DestructibleContainers::finalize(void) =====
void __fastcall Arrays::DestructibleContainers::finalize(Arrays::DestructibleContainers *this)
{
  int v1; // r3
  int v2; // r4
  unsigned int v3; // r6
  int v4; // r0
  int v5; // r4

  v1 = Arrays::DestructibleContainers::members;
  if ( Arrays::DestructibleContainers::members )
  {
    if ( !Arrays::DestructibleContainers::size )
      goto LABEL_7;
    v2 = 0;
    v3 = 0;
    while ( 1 )
    {
      (*(void (__fastcall **)(int))(*(_DWORD *)(v1 + v2) + 8))(v1 + v2);
      ++v3;
      v2 += 68;
      if ( Arrays::DestructibleContainers::size <= v3 )
        break;
      v1 = Arrays::DestructibleContainers::members;
    }
    v1 = Arrays::DestructibleContainers::members;
    if ( Arrays::DestructibleContainers::members )
    {
LABEL_7:
      v4 = v1 + 68 * *(_DWORD *)(v1 - 4);
      if ( v1 != v4 )
      {
        while ( 1 )
        {
          v5 = v4 - 68;
          (**(void (__fastcall ***)(int))(v4 - 68))(v4 - 68);
          v4 = Arrays::DestructibleContainers::members;
          if ( Arrays::DestructibleContainers::members == v5 )
            break;
          v4 = v5;
        }
      }
      CustomFree((void *)(v4 - 8));
    }
    Arrays::DestructibleContainers::members = 0;
  }
}


// ===== 4a8134 Arrays::FontPalette::finalizeNames(void) =====
void __fastcall Arrays::FontPalette::finalizeNames(Arrays::FontPalette *this)
{
  _DWORD *v1; // r3
  unsigned int v2; // r4
  void *v3; // r0

  v1 = (_DWORD *)Arrays::FontPalette::m_memberNames;
  if ( Arrays::FontPalette::m_memberNames )
  {
    if ( !Arrays::FontPalette::size )
      goto LABEL_9;
    v2 = 0;
    while ( 1 )
    {
      v3 = (void *)v1[v2++];
      if ( v3 )
      {
        CustomFree(v3);
        v1 = (_DWORD *)Arrays::FontPalette::m_memberNames;
      }
      if ( Arrays::FontPalette::size <= v2 )
        break;
      v1 = (_DWORD *)Arrays::FontPalette::m_memberNames;
    }
    if ( v1 )
LABEL_9:
      CustomFree(v1);
    Arrays::FontPalette::m_memberNames = 0;
  }
}


// ===== 4a81d0 Arrays::FontPalette::finalize(void) =====
void __fastcall Arrays::FontPalette::finalize(Arrays::FontPalette *this)
{
  int v1; // r3
  int v2; // r4
  unsigned int v3; // r6
  int v4; // r0
  int v5; // r4

  v1 = Arrays::FontPalette::members;
  if ( Arrays::FontPalette::members )
  {
    if ( !Arrays::FontPalette::size )
      goto LABEL_7;
    v2 = 0;
    v3 = 0;
    while ( 1 )
    {
      (*(void (__fastcall **)(int))(*(_DWORD *)(v1 + v2) + 8))(v1 + v2);
      ++v3;
      v2 += 12;
      if ( Arrays::FontPalette::size <= v3 )
        break;
      v1 = Arrays::FontPalette::members;
    }
    v1 = Arrays::FontPalette::members;
    if ( Arrays::FontPalette::members )
    {
LABEL_7:
      v4 = v1 + 12 * *(_DWORD *)(v1 - 4);
      if ( v1 != v4 )
      {
        while ( 1 )
        {
          v5 = v4 - 12;
          (**(void (__fastcall ***)(int))(v4 - 12))(v4 - 12);
          v4 = Arrays::FontPalette::members;
          if ( Arrays::FontPalette::members == v5 )
            break;
          v4 = v5;
        }
      }
      CustomFree((void *)(v4 - 8));
    }
    Arrays::FontPalette::members = 0;
  }
}


// ===== 4a82b4 Arrays::FaeryTable::finalizeNames(void) =====
void __fastcall Arrays::FaeryTable::finalizeNames(Arrays::FaeryTable *this)
{
  _DWORD *v1; // r3
  unsigned int v2; // r4
  void *v3; // r0

  v1 = (_DWORD *)Arrays::FaeryTable::m_memberNames;
  if ( Arrays::FaeryTable::m_memberNames )
  {
    if ( !Arrays::FaeryTable::size )
      goto LABEL_9;
    v2 = 0;
    while ( 1 )
    {
      v3 = (void *)v1[v2++];
      if ( v3 )
      {
        CustomFree(v3);
        v1 = (_DWORD *)Arrays::FaeryTable::m_memberNames;
      }
      if ( Arrays::FaeryTable::size <= v2 )
        break;
      v1 = (_DWORD *)Arrays::FaeryTable::m_memberNames;
    }
    if ( v1 )
LABEL_9:
      CustomFree(v1);
    Arrays::FaeryTable::m_memberNames = 0;
  }
}


// ===== 4a8350 Arrays::FaeryTable::finalize(void) =====
void __fastcall Arrays::FaeryTable::finalize(Arrays::FaeryTable *this)
{
  int v1; // r3
  int v2; // r4
  unsigned int v3; // r6
  int v4; // r0
  int v5; // r4

  v1 = Arrays::FaeryTable::members;
  if ( Arrays::FaeryTable::members )
  {
    if ( !Arrays::FaeryTable::size )
      goto LABEL_7;
    v2 = 0;
    v3 = 0;
    while ( 1 )
    {
      (*(void (__fastcall **)(int))(*(_DWORD *)(v1 + v2) + 8))(v1 + v2);
      ++v3;
      v2 += 36;
      if ( Arrays::FaeryTable::size <= v3 )
        break;
      v1 = Arrays::FaeryTable::members;
    }
    v1 = Arrays::FaeryTable::members;
    if ( Arrays::FaeryTable::members )
    {
LABEL_7:
      v4 = v1 + 36 * *(_DWORD *)(v1 - 4);
      if ( v1 != v4 )
      {
        while ( 1 )
        {
          v5 = v4 - 36;
          (**(void (__fastcall ***)(int))(v4 - 36))(v4 - 36);
          v4 = Arrays::FaeryTable::members;
          if ( Arrays::FaeryTable::members == v5 )
            break;
          v4 = v5;
        }
      }
      CustomFree((void *)(v4 - 8));
    }
    Arrays::FaeryTable::members = 0;
  }
}


// ===== 4a8434 Arrays::FaeryListTable::finalizeNames(void) =====
void __fastcall Arrays::FaeryListTable::finalizeNames(Arrays::FaeryListTable *this)
{
  _DWORD *v1; // r3
  unsigned int v2; // r4
  void *v3; // r0

  v1 = (_DWORD *)Arrays::FaeryListTable::m_memberNames;
  if ( Arrays::FaeryListTable::m_memberNames )
  {
    if ( !Arrays::FaeryListTable::size )
      goto LABEL_9;
    v2 = 0;
    while ( 1 )
    {
      v3 = (void *)v1[v2++];
      if ( v3 )
      {
        CustomFree(v3);
        v1 = (_DWORD *)Arrays::FaeryListTable::m_memberNames;
      }
      if ( Arrays::FaeryListTable::size <= v2 )
        break;
      v1 = (_DWORD *)Arrays::FaeryListTable::m_memberNames;
    }
    if ( v1 )
LABEL_9:
      CustomFree(v1);
    Arrays::FaeryListTable::m_memberNames = 0;
  }
}


// ===== 4a84d0 Arrays::FaeryListTable::finalize(void) =====
void __fastcall Arrays::FaeryListTable::finalize(Arrays::FaeryListTable *this)
{
  int v1; // r3
  int v2; // r4
  unsigned int v3; // r6
  int v4; // r0
  int v5; // r4

  v1 = Arrays::FaeryListTable::members;
  if ( Arrays::FaeryListTable::members )
  {
    if ( !Arrays::FaeryListTable::size )
      goto LABEL_7;
    v2 = 0;
    v3 = 0;
    while ( 1 )
    {
      (*(void (__fastcall **)(int))(*(_DWORD *)(v1 + v2) + 8))(v1 + v2);
      ++v3;
      v2 += 12;
      if ( Arrays::FaeryListTable::size <= v3 )
        break;
      v1 = Arrays::FaeryListTable::members;
    }
    v1 = Arrays::FaeryListTable::members;
    if ( Arrays::FaeryListTable::members )
    {
LABEL_7:
      v4 = v1 + 12 * *(_DWORD *)(v1 - 4);
      if ( v1 != v4 )
      {
        while ( 1 )
        {
          v5 = v4 - 12;
          (**(void (__fastcall ***)(int))(v4 - 12))(v4 - 12);
          v4 = Arrays::FaeryListTable::members;
          if ( Arrays::FaeryListTable::members == v5 )
            break;
          v4 = v5;
        }
      }
      CustomFree((void *)(v4 - 8));
    }
    Arrays::FaeryListTable::members = 0;
  }
}


// ===== 4a85b4 Arrays::FootstepEffectTable::finalizeNames(void) =====
void __fastcall Arrays::FootstepEffectTable::finalizeNames(Arrays::FootstepEffectTable *this)
{
  _DWORD *v1; // r3
  unsigned int v2; // r4
  void *v3; // r0

  v1 = (_DWORD *)Arrays::FootstepEffectTable::m_memberNames;
  if ( Arrays::FootstepEffectTable::m_memberNames )
  {
    if ( !Arrays::FootstepEffectTable::size )
      goto LABEL_9;
    v2 = 0;
    while ( 1 )
    {
      v3 = (void *)v1[v2++];
      if ( v3 )
      {
        CustomFree(v3);
        v1 = (_DWORD *)Arrays::FootstepEffectTable::m_memberNames;
      }
      if ( Arrays::FootstepEffectTable::size <= v2 )
        break;
      v1 = (_DWORD *)Arrays::FootstepEffectTable::m_memberNames;
    }
    if ( v1 )
LABEL_9:
      CustomFree(v1);
    Arrays::FootstepEffectTable::m_memberNames = 0;
  }
}


// ===== 4a8650 Arrays::FootstepEffectTable::finalize(void) =====
void __fastcall Arrays::FootstepEffectTable::finalize(Arrays::FootstepEffectTable *this)
{
  int v1; // r3
  int v2; // r4
  int v3; // r0
  int v4; // r4

  v1 = Arrays::FootstepEffectTable::members;
  if ( Arrays::FootstepEffectTable::members )
  {
    if ( !Arrays::FootstepEffectTable::size )
      goto LABEL_7;
    v2 = 0;
    while ( 1 )
    {
      (*(void (__fastcall **)(int))(*(_DWORD *)(v1 + 32 * v2) + 8))(v1 + 32 * v2);
      if ( Arrays::FootstepEffectTable::size <= (unsigned int)++v2 )
        break;
      v1 = Arrays::FootstepEffectTable::members;
    }
    v1 = Arrays::FootstepEffectTable::members;
    if ( Arrays::FootstepEffectTable::members )
    {
LABEL_7:
      v3 = v1 + 32 * *(_DWORD *)(v1 - 4);
      if ( v1 != v3 )
      {
        while ( 1 )
        {
          v4 = v3 - 32;
          (**(void (__fastcall ***)(int))(v3 - 32))(v3 - 32);
          v3 = Arrays::FootstepEffectTable::members;
          if ( Arrays::FootstepEffectTable::members == v4 )
            break;
          v3 = v4;
        }
      }
      CustomFree((void *)(v3 - 8));
    }
    Arrays::FootstepEffectTable::members = 0;
  }
}


// ===== 4a8728 Arrays::CharEffectTable::finalizeNames(void) =====
void __fastcall Arrays::CharEffectTable::finalizeNames(Arrays::CharEffectTable *this)
{
  _DWORD *v1; // r3
  unsigned int v2; // r4
  void *v3; // r0

  v1 = (_DWORD *)Arrays::CharEffectTable::m_memberNames;
  if ( Arrays::CharEffectTable::m_memberNames )
  {
    if ( !Arrays::CharEffectTable::size )
      goto LABEL_9;
    v2 = 0;
    while ( 1 )
    {
      v3 = (void *)v1[v2++];
      if ( v3 )
      {
        CustomFree(v3);
        v1 = (_DWORD *)Arrays::CharEffectTable::m_memberNames;
      }
      if ( Arrays::CharEffectTable::size <= v2 )
        break;
      v1 = (_DWORD *)Arrays::CharEffectTable::m_memberNames;
    }
    if ( v1 )
LABEL_9:
      CustomFree(v1);
    Arrays::CharEffectTable::m_memberNames = 0;
  }
}


// ===== 4a87c4 Arrays::CharEffectTable::finalize(void) =====
void __fastcall Arrays::CharEffectTable::finalize(Arrays::CharEffectTable *this)
{
  int v1; // r3
  int v2; // r4
  unsigned int v3; // r6
  int v4; // r0
  int v5; // r4

  v1 = Arrays::CharEffectTable::members;
  if ( Arrays::CharEffectTable::members )
  {
    if ( !Arrays::CharEffectTable::size )
      goto LABEL_7;
    v2 = 0;
    v3 = 0;
    while ( 1 )
    {
      (*(void (__fastcall **)(int))(*(_DWORD *)(v1 + v2) + 8))(v1 + v2);
      ++v3;
      v2 += 24;
      if ( Arrays::CharEffectTable::size <= v3 )
        break;
      v1 = Arrays::CharEffectTable::members;
    }
    v1 = Arrays::CharEffectTable::members;
    if ( Arrays::CharEffectTable::members )
    {
LABEL_7:
      v4 = v1 + 24 * *(_DWORD *)(v1 - 4);
      if ( v1 != v4 )
      {
        while ( 1 )
        {
          v5 = v4 - 24;
          (**(void (__fastcall ***)(int))(v4 - 24))(v4 - 24);
          v4 = Arrays::CharEffectTable::members;
          if ( Arrays::CharEffectTable::members == v5 )
            break;
          v4 = v5;
        }
      }
      CustomFree((void *)(v4 - 8));
    }
    Arrays::CharEffectTable::members = 0;
  }
}


// ===== 4a88a8 Arrays::AnimatedEffectTable::finalizeNames(void) =====
void __fastcall Arrays::AnimatedEffectTable::finalizeNames(Arrays::AnimatedEffectTable *this)
{
  _DWORD *v1; // r3
  unsigned int v2; // r4
  void *v3; // r0

  v1 = (_DWORD *)Arrays::AnimatedEffectTable::m_memberNames;
  if ( Arrays::AnimatedEffectTable::m_memberNames )
  {
    if ( !Arrays::AnimatedEffectTable::size )
      goto LABEL_9;
    v2 = 0;
    while ( 1 )
    {
      v3 = (void *)v1[v2++];
      if ( v3 )
      {
        CustomFree(v3);
        v1 = (_DWORD *)Arrays::AnimatedEffectTable::m_memberNames;
      }
      if ( Arrays::AnimatedEffectTable::size <= v2 )
        break;
      v1 = (_DWORD *)Arrays::AnimatedEffectTable::m_memberNames;
    }
    if ( v1 )
LABEL_9:
      CustomFree(v1);
    Arrays::AnimatedEffectTable::m_memberNames = 0;
  }
}


// ===== 4a8944 Arrays::AnimatedEffectTable::finalize(void) =====
void __fastcall Arrays::AnimatedEffectTable::finalize(Arrays::AnimatedEffectTable *this)
{
  int v1; // r3
  int v2; // r4
  unsigned int v3; // r6
  int v4; // r0
  int v5; // r4

  v1 = Arrays::AnimatedEffectTable::members;
  if ( Arrays::AnimatedEffectTable::members )
  {
    if ( !Arrays::AnimatedEffectTable::size )
      goto LABEL_7;
    v2 = 0;
    v3 = 0;
    while ( 1 )
    {
      (*(void (__fastcall **)(int))(*(_DWORD *)(v1 + v2) + 8))(v1 + v2);
      ++v3;
      v2 += 24;
      if ( Arrays::AnimatedEffectTable::size <= v3 )
        break;
      v1 = Arrays::AnimatedEffectTable::members;
    }
    v1 = Arrays::AnimatedEffectTable::members;
    if ( Arrays::AnimatedEffectTable::members )
    {
LABEL_7:
      v4 = v1 + 24 * *(_DWORD *)(v1 - 4);
      if ( v1 != v4 )
      {
        while ( 1 )
        {
          v5 = v4 - 24;
          (**(void (__fastcall ***)(int))(v4 - 24))(v4 - 24);
          v4 = Arrays::AnimatedEffectTable::members;
          if ( Arrays::AnimatedEffectTable::members == v5 )
            break;
          v4 = v5;
        }
      }
      CustomFree((void *)(v4 - 8));
    }
    Arrays::AnimatedEffectTable::members = 0;
  }
}


// ===== 4a8a28 Arrays::Dialogs::finalizeNames(void) =====
void __fastcall Arrays::Dialogs::finalizeNames(Arrays::Dialogs *this)
{
  _DWORD *v1; // r3
  unsigned int v2; // r4
  void *v3; // r0

  v1 = (_DWORD *)Arrays::Dialogs::m_memberNames;
  if ( Arrays::Dialogs::m_memberNames )
  {
    if ( !Arrays::Dialogs::size )
      goto LABEL_9;
    v2 = 0;
    while ( 1 )
    {
      v3 = (void *)v1[v2++];
      if ( v3 )
      {
        CustomFree(v3);
        v1 = (_DWORD *)Arrays::Dialogs::m_memberNames;
      }
      if ( Arrays::Dialogs::size <= v2 )
        break;
      v1 = (_DWORD *)Arrays::Dialogs::m_memberNames;
    }
    if ( v1 )
LABEL_9:
      CustomFree(v1);
    Arrays::Dialogs::m_memberNames = 0;
  }
}


// ===== 4a8ac4 Arrays::Dialogs::finalize(void) =====
void __fastcall Arrays::Dialogs::finalize(Arrays::Dialogs *this)
{
  int v1; // r3
  int v2; // r4
  unsigned int v3; // r6
  int v4; // r0
  int v5; // r4

  v1 = Arrays::Dialogs::members;
  if ( Arrays::Dialogs::members )
  {
    if ( !Arrays::Dialogs::size )
      goto LABEL_7;
    v2 = 0;
    v3 = 0;
    while ( 1 )
    {
      (*(void (__fastcall **)(int))(*(_DWORD *)(v1 + v2) + 8))(v1 + v2);
      ++v3;
      v2 += 12;
      if ( Arrays::Dialogs::size <= v3 )
        break;
      v1 = Arrays::Dialogs::members;
    }
    v1 = Arrays::Dialogs::members;
    if ( Arrays::Dialogs::members )
    {
LABEL_7:
      v4 = v1 + 12 * *(_DWORD *)(v1 - 4);
      if ( v1 != v4 )
      {
        while ( 1 )
        {
          v5 = v4 - 12;
          (**(void (__fastcall ***)(int))(v4 - 12))(v4 - 12);
          v4 = Arrays::Dialogs::members;
          if ( Arrays::Dialogs::members == v5 )
            break;
          v4 = v5;
        }
      }
      CustomFree((void *)(v4 - 8));
    }
    Arrays::Dialogs::members = 0;
  }
}


// ===== 4a8ba8 Arrays::DialogActors::finalizeNames(void) =====
void __fastcall Arrays::DialogActors::finalizeNames(Arrays::DialogActors *this)
{
  _DWORD *v1; // r3
  unsigned int v2; // r4
  void *v3; // r0

  v1 = (_DWORD *)Arrays::DialogActors::m_memberNames;
  if ( Arrays::DialogActors::m_memberNames )
  {
    if ( !Arrays::DialogActors::size )
      goto LABEL_9;
    v2 = 0;
    while ( 1 )
    {
      v3 = (void *)v1[v2++];
      if ( v3 )
      {
        CustomFree(v3);
        v1 = (_DWORD *)Arrays::DialogActors::m_memberNames;
      }
      if ( Arrays::DialogActors::size <= v2 )
        break;
      v1 = (_DWORD *)Arrays::DialogActors::m_memberNames;
    }
    if ( v1 )
LABEL_9:
      CustomFree(v1);
    Arrays::DialogActors::m_memberNames = 0;
  }
}


// ===== 4a8c44 Arrays::DialogActors::finalize(void) =====
void __fastcall Arrays::DialogActors::finalize(Arrays::DialogActors *this)
{
  int v1; // r3
  int v2; // r4
  unsigned int v3; // r6
  int v4; // r0
  int v5; // r4

  v1 = Arrays::DialogActors::members;
  if ( Arrays::DialogActors::members )
  {
    if ( !Arrays::DialogActors::size )
      goto LABEL_7;
    v2 = 0;
    v3 = 0;
    while ( 1 )
    {
      (*(void (__fastcall **)(int))(*(_DWORD *)(v1 + v2) + 8))(v1 + v2);
      ++v3;
      v2 += 20;
      if ( Arrays::DialogActors::size <= v3 )
        break;
      v1 = Arrays::DialogActors::members;
    }
    v1 = Arrays::DialogActors::members;
    if ( Arrays::DialogActors::members )
    {
LABEL_7:
      v4 = v1 + 20 * *(_DWORD *)(v1 - 4);
      if ( v1 != v4 )
      {
        while ( 1 )
        {
          v5 = v4 - 20;
          (**(void (__fastcall ***)(int))(v4 - 20))(v4 - 20);
          v4 = Arrays::DialogActors::members;
          if ( Arrays::DialogActors::members == v5 )
            break;
          v4 = v5;
        }
      }
      CustomFree((void *)(v4 - 8));
    }
    Arrays::DialogActors::members = 0;
  }
}


// ===== 4a8d28 Arrays::GameOptionTable::finalizeNames(void) =====
void __fastcall Arrays::GameOptionTable::finalizeNames(Arrays::GameOptionTable *this)
{
  _DWORD *v1; // r3
  unsigned int v2; // r4
  void *v3; // r0

  v1 = (_DWORD *)Arrays::GameOptionTable::m_memberNames;
  if ( Arrays::GameOptionTable::m_memberNames )
  {
    if ( !Arrays::GameOptionTable::size )
      goto LABEL_9;
    v2 = 0;
    while ( 1 )
    {
      v3 = (void *)v1[v2++];
      if ( v3 )
      {
        CustomFree(v3);
        v1 = (_DWORD *)Arrays::GameOptionTable::m_memberNames;
      }
      if ( Arrays::GameOptionTable::size <= v2 )
        break;
      v1 = (_DWORD *)Arrays::GameOptionTable::m_memberNames;
    }
    if ( v1 )
LABEL_9:
      CustomFree(v1);
    Arrays::GameOptionTable::m_memberNames = 0;
  }
}


// ===== 4a8dc4 Arrays::GameOptionTable::finalize(void) =====
void __fastcall Arrays::GameOptionTable::finalize(Arrays::GameOptionTable *this)
{
  int v1; // r3
  int v2; // r4
  int v3; // r0
  int v4; // r4

  v1 = Arrays::GameOptionTable::members;
  if ( Arrays::GameOptionTable::members )
  {
    if ( !Arrays::GameOptionTable::size )
      goto LABEL_7;
    v2 = 0;
    while ( 1 )
    {
      (*(void (__fastcall **)(int))(*(_DWORD *)(v1 + 32 * v2) + 8))(v1 + 32 * v2);
      if ( Arrays::GameOptionTable::size <= (unsigned int)++v2 )
        break;
      v1 = Arrays::GameOptionTable::members;
    }
    v1 = Arrays::GameOptionTable::members;
    if ( Arrays::GameOptionTable::members )
    {
LABEL_7:
      v3 = v1 + 32 * *(_DWORD *)(v1 - 4);
      if ( v1 != v3 )
      {
        while ( 1 )
        {
          v4 = v3 - 32;
          (**(void (__fastcall ***)(int))(v3 - 32))(v3 - 32);
          v3 = Arrays::GameOptionTable::members;
          if ( Arrays::GameOptionTable::members == v4 )
            break;
          v3 = v4;
        }
      }
      CustomFree((void *)(v3 - 8));
    }
    Arrays::GameOptionTable::members = 0;
  }
}


// ===== 4a8e9c Arrays::GameDifficulties::finalizeNames(void) =====
void __fastcall Arrays::GameDifficulties::finalizeNames(Arrays::GameDifficulties *this)
{
  _DWORD *v1; // r3
  unsigned int v2; // r4
  void *v3; // r0

  v1 = (_DWORD *)Arrays::GameDifficulties::m_memberNames;
  if ( Arrays::GameDifficulties::m_memberNames )
  {
    if ( !Arrays::GameDifficulties::size )
      goto LABEL_9;
    v2 = 0;
    while ( 1 )
    {
      v3 = (void *)v1[v2++];
      if ( v3 )
      {
        CustomFree(v3);
        v1 = (_DWORD *)Arrays::GameDifficulties::m_memberNames;
      }
      if ( Arrays::GameDifficulties::size <= v2 )
        break;
      v1 = (_DWORD *)Arrays::GameDifficulties::m_memberNames;
    }
    if ( v1 )
LABEL_9:
      CustomFree(v1);
    Arrays::GameDifficulties::m_memberNames = 0;
  }
}


// ===== 4a8f38 Arrays::GameDifficulties::finalize(void) =====
void __fastcall Arrays::GameDifficulties::finalize(Arrays::GameDifficulties *this)
{
  int v1; // r3
  int v2; // r4
  unsigned int v3; // r6
  int v4; // r0
  int v5; // r4

  v1 = Arrays::GameDifficulties::members;
  if ( Arrays::GameDifficulties::members )
  {
    if ( !Arrays::GameDifficulties::size )
      goto LABEL_7;
    v2 = 0;
    v3 = 0;
    while ( 1 )
    {
      (*(void (__fastcall **)(int))(*(_DWORD *)(v1 + v2) + 8))(v1 + v2);
      ++v3;
      v2 += 24;
      if ( Arrays::GameDifficulties::size <= v3 )
        break;
      v1 = Arrays::GameDifficulties::members;
    }
    v1 = Arrays::GameDifficulties::members;
    if ( Arrays::GameDifficulties::members )
    {
LABEL_7:
      v4 = v1 + 24 * *(_DWORD *)(v1 - 4);
      if ( v1 != v4 )
      {
        while ( 1 )
        {
          v5 = v4 - 24;
          (**(void (__fastcall ***)(int))(v4 - 24))(v4 - 24);
          v4 = Arrays::GameDifficulties::members;
          if ( Arrays::GameDifficulties::members == v5 )
            break;
          v4 = v5;
        }
      }
      CustomFree((void *)(v4 - 8));
    }
    Arrays::GameDifficulties::members = 0;
  }
}


// ===== 4a901c Arrays::DesignSettingsTable::finalizeNames(void) =====
void __fastcall Arrays::DesignSettingsTable::finalizeNames(Arrays::DesignSettingsTable *this)
{
  _DWORD *v1; // r3
  unsigned int v2; // r4
  void *v3; // r0

  v1 = (_DWORD *)Arrays::DesignSettingsTable::m_memberNames;
  if ( Arrays::DesignSettingsTable::m_memberNames )
  {
    if ( !Arrays::DesignSettingsTable::size )
      goto LABEL_9;
    v2 = 0;
    while ( 1 )
    {
      v3 = (void *)v1[v2++];
      if ( v3 )
      {
        CustomFree(v3);
        v1 = (_DWORD *)Arrays::DesignSettingsTable::m_memberNames;
      }
      if ( Arrays::DesignSettingsTable::size <= v2 )
        break;
      v1 = (_DWORD *)Arrays::DesignSettingsTable::m_memberNames;
    }
    if ( v1 )
LABEL_9:
      CustomFree(v1);
    Arrays::DesignSettingsTable::m_memberNames = 0;
  }
}


// ===== 4a90b8 Arrays::DesignSettingsTable::finalize(void) =====
void __fastcall Arrays::DesignSettingsTable::finalize(Arrays::DesignSettingsTable *this)
{
  int v1; // r3
  int v2; // r4
  unsigned int v3; // r6
  int v4; // r0
  int v5; // r4

  v1 = Arrays::DesignSettingsTable::members;
  if ( Arrays::DesignSettingsTable::members )
  {
    if ( !Arrays::DesignSettingsTable::size )
      goto LABEL_7;
    v2 = 0;
    v3 = 0;
    while ( 1 )
    {
      (*(void (__fastcall **)(int))(*(_DWORD *)(v1 + v2) + 8))(v1 + v2);
      ++v3;
      v2 += 176;
      if ( Arrays::DesignSettingsTable::size <= v3 )
        break;
      v1 = Arrays::DesignSettingsTable::members;
    }
    v1 = Arrays::DesignSettingsTable::members;
    if ( Arrays::DesignSettingsTable::members )
    {
LABEL_7:
      v4 = v1 + 176 * *(_DWORD *)(v1 - 4);
      if ( v1 != v4 )
      {
        while ( 1 )
        {
          v5 = v4 - 176;
          (**(void (__fastcall ***)(int))(v4 - 176))(v4 - 176);
          v4 = Arrays::DesignSettingsTable::members;
          if ( Arrays::DesignSettingsTable::members == v5 )
            break;
          v4 = v5;
        }
      }
      CustomFree((void *)(v4 - 8));
    }
    Arrays::DesignSettingsTable::members = 0;
  }
}


// ===== 4a919c Arrays::RectTable::finalizeNames(void) =====
void __fastcall Arrays::RectTable::finalizeNames(Arrays::RectTable *this)
{
  _DWORD *v1; // r3
  unsigned int v2; // r4
  void *v3; // r0

  v1 = (_DWORD *)Arrays::RectTable::m_memberNames;
  if ( Arrays::RectTable::m_memberNames )
  {
    if ( !Arrays::RectTable::size )
      goto LABEL_9;
    v2 = 0;
    while ( 1 )
    {
      v3 = (void *)v1[v2++];
      if ( v3 )
      {
        CustomFree(v3);
        v1 = (_DWORD *)Arrays::RectTable::m_memberNames;
      }
      if ( Arrays::RectTable::size <= v2 )
        break;
      v1 = (_DWORD *)Arrays::RectTable::m_memberNames;
    }
    if ( v1 )
LABEL_9:
      CustomFree(v1);
    Arrays::RectTable::m_memberNames = 0;
  }
}


// ===== 4a9238 Arrays::RectTable::finalize(void) =====
void __fastcall Arrays::RectTable::finalize(Arrays::RectTable *this)
{
  int v1; // r3
  int v2; // r4
  unsigned int v3; // r6
  int v4; // r0
  int v5; // r4

  v1 = Arrays::RectTable::members;
  if ( Arrays::RectTable::members )
  {
    if ( !Arrays::RectTable::size )
      goto LABEL_7;
    v2 = 0;
    v3 = 0;
    while ( 1 )
    {
      (*(void (__fastcall **)(int))(*(_DWORD *)(v1 + v2) + 8))(v1 + v2);
      ++v3;
      v2 += 20;
      if ( Arrays::RectTable::size <= v3 )
        break;
      v1 = Arrays::RectTable::members;
    }
    v1 = Arrays::RectTable::members;
    if ( Arrays::RectTable::members )
    {
LABEL_7:
      v4 = v1 + 20 * *(_DWORD *)(v1 - 4);
      if ( v1 != v4 )
      {
        while ( 1 )
        {
          v5 = v4 - 20;
          (**(void (__fastcall ***)(int))(v4 - 20))(v4 - 20);
          v4 = Arrays::RectTable::members;
          if ( Arrays::RectTable::members == v5 )
            break;
          v4 = v5;
        }
      }
      CustomFree((void *)(v4 - 8));
    }
    Arrays::RectTable::members = 0;
  }
}


// ===== 4a931c Arrays::Charater_Templates::finalizeNames(void) =====
void __fastcall Arrays::Charater_Templates::finalizeNames(Arrays::Charater_Templates *this)
{
  _DWORD *v1; // r3
  unsigned int v2; // r4
  void *v3; // r0

  v1 = (_DWORD *)Arrays::Charater_Templates::m_memberNames;
  if ( Arrays::Charater_Templates::m_memberNames )
  {
    if ( !Arrays::Charater_Templates::size )
      goto LABEL_9;
    v2 = 0;
    while ( 1 )
    {
      v3 = (void *)v1[v2++];
      if ( v3 )
      {
        CustomFree(v3);
        v1 = (_DWORD *)Arrays::Charater_Templates::m_memberNames;
      }
      if ( Arrays::Charater_Templates::size <= v2 )
        break;
      v1 = (_DWORD *)Arrays::Charater_Templates::m_memberNames;
    }
    if ( v1 )
LABEL_9:
      CustomFree(v1);
    Arrays::Charater_Templates::m_memberNames = 0;
  }
}


// ===== 4a93b8 Arrays::Charater_Templates::finalize(void) =====
void __fastcall Arrays::Charater_Templates::finalize(Arrays::Charater_Templates *this)
{
  int v1; // r3
  int v2; // r4
  unsigned int v3; // r6
  int v4; // r0
  int v5; // r4

  v1 = Arrays::Charater_Templates::members;
  if ( Arrays::Charater_Templates::members )
  {
    if ( !Arrays::Charater_Templates::size )
      goto LABEL_7;
    v2 = 0;
    v3 = 0;
    while ( 1 )
    {
      (*(void (__fastcall **)(int))(*(_DWORD *)(v1 + v2) + 8))(v1 + v2);
      ++v3;
      v2 += 12;
      if ( Arrays::Charater_Templates::size <= v3 )
        break;
      v1 = Arrays::Charater_Templates::members;
    }
    v1 = Arrays::Charater_Templates::members;
    if ( Arrays::Charater_Templates::members )
    {
LABEL_7:
      v4 = v1 + 12 * *(_DWORD *)(v1 - 4);
      if ( v1 != v4 )
      {
        while ( 1 )
        {
          v5 = v4 - 12;
          (**(void (__fastcall ***)(int))(v4 - 12))(v4 - 12);
          v4 = Arrays::Charater_Templates::members;
          if ( Arrays::Charater_Templates::members == v5 )
            break;
          v4 = v5;
        }
      }
      CustomFree((void *)(v4 - 8));
    }
    Arrays::Charater_Templates::members = 0;
  }
}


// ===== 4a949c Arrays::StatListTable::finalizeNames(void) =====
void __fastcall Arrays::StatListTable::finalizeNames(Arrays::StatListTable *this)
{
  _DWORD *v1; // r3
  unsigned int v2; // r4
  void *v3; // r0

  v1 = (_DWORD *)Arrays::StatListTable::m_memberNames;
  if ( Arrays::StatListTable::m_memberNames )
  {
    if ( !Arrays::StatListTable::size )
      goto LABEL_9;
    v2 = 0;
    while ( 1 )
    {
      v3 = (void *)v1[v2++];
      if ( v3 )
      {
        CustomFree(v3);
        v1 = (_DWORD *)Arrays::StatListTable::m_memberNames;
      }
      if ( Arrays::StatListTable::size <= v2 )
        break;
      v1 = (_DWORD *)Arrays::StatListTable::m_memberNames;
    }
    if ( v1 )
LABEL_9:
      CustomFree(v1);
    Arrays::StatListTable::m_memberNames = 0;
  }
}


// ===== 4a9538 Arrays::StatListTable::finalize(void) =====
void __fastcall Arrays::StatListTable::finalize(Arrays::StatListTable *this)
{
  int v1; // r3
  int v2; // r4
  unsigned int v3; // r6
  int v4; // r0
  int v5; // r4

  v1 = Arrays::StatListTable::members;
  if ( Arrays::StatListTable::members )
  {
    if ( !Arrays::StatListTable::size )
      goto LABEL_7;
    v2 = 0;
    v3 = 0;
    while ( 1 )
    {
      (*(void (__fastcall **)(int))(*(_DWORD *)(v1 + v2) + 8))(v1 + v2);
      ++v3;
      v2 += 12;
      if ( Arrays::StatListTable::size <= v3 )
        break;
      v1 = Arrays::StatListTable::members;
    }
    v1 = Arrays::StatListTable::members;
    if ( Arrays::StatListTable::members )
    {
LABEL_7:
      v4 = v1 + 12 * *(_DWORD *)(v1 - 4);
      if ( v1 != v4 )
      {
        while ( 1 )
        {
          v5 = v4 - 12;
          (**(void (__fastcall ***)(int))(v4 - 12))(v4 - 12);
          v4 = Arrays::StatListTable::members;
          if ( Arrays::StatListTable::members == v5 )
            break;
          v4 = v5;
        }
      }
      CustomFree((void *)(v4 - 8));
    }
    Arrays::StatListTable::members = 0;
  }
}


// ===== 4a961c Arrays::StatAutoAssignSchemeTable::finalizeNames(void) =====
void __fastcall Arrays::StatAutoAssignSchemeTable::finalizeNames(Arrays::StatAutoAssignSchemeTable *this)
{
  _DWORD *v1; // r3
  unsigned int v2; // r4
  void *v3; // r0

  v1 = (_DWORD *)Arrays::StatAutoAssignSchemeTable::m_memberNames;
  if ( Arrays::StatAutoAssignSchemeTable::m_memberNames )
  {
    if ( !Arrays::StatAutoAssignSchemeTable::size )
      goto LABEL_9;
    v2 = 0;
    while ( 1 )
    {
      v3 = (void *)v1[v2++];
      if ( v3 )
      {
        CustomFree(v3);
        v1 = (_DWORD *)Arrays::StatAutoAssignSchemeTable::m_memberNames;
      }
      if ( Arrays::StatAutoAssignSchemeTable::size <= v2 )
        break;
      v1 = (_DWORD *)Arrays::StatAutoAssignSchemeTable::m_memberNames;
    }
    if ( v1 )
LABEL_9:
      CustomFree(v1);
    Arrays::StatAutoAssignSchemeTable::m_memberNames = 0;
  }
}


// ===== 4a96b8 Arrays::StatAutoAssignSchemeTable::finalize(void) =====
void __fastcall Arrays::StatAutoAssignSchemeTable::finalize(Arrays::StatAutoAssignSchemeTable *this)
{
  int v1; // r3
  int v2; // r4
  unsigned int v3; // r6
  int v4; // r0
  int v5; // r4

  v1 = Arrays::StatAutoAssignSchemeTable::members;
  if ( Arrays::StatAutoAssignSchemeTable::members )
  {
    if ( !Arrays::StatAutoAssignSchemeTable::size )
      goto LABEL_7;
    v2 = 0;
    v3 = 0;
    while ( 1 )
    {
      (*(void (__fastcall **)(int))(*(_DWORD *)(v1 + v2) + 8))(v1 + v2);
      ++v3;
      v2 += 12;
      if ( Arrays::StatAutoAssignSchemeTable::size <= v3 )
        break;
      v1 = Arrays::StatAutoAssignSchemeTable::members;
    }
    v1 = Arrays::StatAutoAssignSchemeTable::members;
    if ( Arrays::StatAutoAssignSchemeTable::members )
    {
LABEL_7:
      v4 = v1 + 12 * *(_DWORD *)(v1 - 4);
      if ( v1 != v4 )
      {
        while ( 1 )
        {
          v5 = v4 - 12;
          (**(void (__fastcall ***)(int))(v4 - 12))(v4 - 12);
          v4 = Arrays::StatAutoAssignSchemeTable::members;
          if ( Arrays::StatAutoAssignSchemeTable::members == v5 )
            break;
          v4 = v5;
        }
      }
      CustomFree((void *)(v4 - 8));
    }
    Arrays::StatAutoAssignSchemeTable::members = 0;
  }
}


// ===== 4a979c Arrays::CharacterTable::finalizeNames(void) =====
void __fastcall Arrays::CharacterTable::finalizeNames(Arrays::CharacterTable *this)
{
  _DWORD *v1; // r3
  unsigned int v2; // r4
  void *v3; // r0

  v1 = (_DWORD *)Arrays::CharacterTable::m_memberNames;
  if ( Arrays::CharacterTable::m_memberNames )
  {
    if ( !Arrays::CharacterTable::size )
      goto LABEL_9;
    v2 = 0;
    while ( 1 )
    {
      v3 = (void *)v1[v2++];
      if ( v3 )
      {
        CustomFree(v3);
        v1 = (_DWORD *)Arrays::CharacterTable::m_memberNames;
      }
      if ( Arrays::CharacterTable::size <= v2 )
        break;
      v1 = (_DWORD *)Arrays::CharacterTable::m_memberNames;
    }
    if ( v1 )
LABEL_9:
      CustomFree(v1);
    Arrays::CharacterTable::m_memberNames = 0;
  }
}


// ===== 4a9838 Arrays::CharacterTable::finalize(void) =====
void __fastcall Arrays::CharacterTable::finalize(Arrays::CharacterTable *this)
{
  int v1; // r3
  int v2; // r4
  unsigned int v3; // r6
  int v4; // r0
  int v5; // r4

  v1 = Arrays::CharacterTable::members;
  if ( Arrays::CharacterTable::members )
  {
    if ( !Arrays::CharacterTable::size )
      goto LABEL_7;
    v2 = 0;
    v3 = 0;
    while ( 1 )
    {
      (*(void (__fastcall **)(int))(*(_DWORD *)(v1 + v2) + 8))(v1 + v2);
      ++v3;
      v2 += 900;
      if ( Arrays::CharacterTable::size <= v3 )
        break;
      v1 = Arrays::CharacterTable::members;
    }
    v1 = Arrays::CharacterTable::members;
    if ( Arrays::CharacterTable::members )
    {
LABEL_7:
      v4 = v1 + 900 * *(_DWORD *)(v1 - 4);
      if ( v1 != v4 )
      {
        while ( 1 )
        {
          v5 = v4 - 900;
          (**(void (__fastcall ***)(int))(v4 - 900))(v4 - 900);
          v4 = Arrays::CharacterTable::members;
          if ( Arrays::CharacterTable::members == v5 )
            break;
          v4 = v5;
        }
      }
      CustomFree((void *)(v4 - 8));
    }
    Arrays::CharacterTable::members = 0;
  }
}


// ===== 4a991c Arrays::ClassTable::finalizeNames(void) =====
void __fastcall Arrays::ClassTable::finalizeNames(Arrays::ClassTable *this)
{
  _DWORD *v1; // r3
  unsigned int v2; // r4
  void *v3; // r0

  v1 = (_DWORD *)Arrays::ClassTable::m_memberNames;
  if ( Arrays::ClassTable::m_memberNames )
  {
    if ( !Arrays::ClassTable::size )
      goto LABEL_9;
    v2 = 0;
    while ( 1 )
    {
      v3 = (void *)v1[v2++];
      if ( v3 )
      {
        CustomFree(v3);
        v1 = (_DWORD *)Arrays::ClassTable::m_memberNames;
      }
      if ( Arrays::ClassTable::size <= v2 )
        break;
      v1 = (_DWORD *)Arrays::ClassTable::m_memberNames;
    }
    if ( v1 )
LABEL_9:
      CustomFree(v1);
    Arrays::ClassTable::m_memberNames = 0;
  }
}


// ===== 4a99b8 Arrays::ClassTable::finalize(void) =====
void __fastcall Arrays::ClassTable::finalize(Arrays::ClassTable *this)
{
  int v1; // r3
  int v2; // r4
  unsigned int v3; // r6
  int v4; // r0
  int v5; // r4

  v1 = Arrays::ClassTable::members;
  if ( Arrays::ClassTable::members )
  {
    if ( !Arrays::ClassTable::size )
      goto LABEL_7;
    v2 = 0;
    v3 = 0;
    while ( 1 )
    {
      (*(void (__fastcall **)(int))(*(_DWORD *)(v1 + v2) + 8))(v1 + v2);
      ++v3;
      v2 += 12;
      if ( Arrays::ClassTable::size <= v3 )
        break;
      v1 = Arrays::ClassTable::members;
    }
    v1 = Arrays::ClassTable::members;
    if ( Arrays::ClassTable::members )
    {
LABEL_7:
      v4 = v1 + 12 * *(_DWORD *)(v1 - 4);
      if ( v1 != v4 )
      {
        while ( 1 )
        {
          v5 = v4 - 12;
          (**(void (__fastcall ***)(int))(v4 - 12))(v4 - 12);
          v4 = Arrays::ClassTable::members;
          if ( Arrays::ClassTable::members == v5 )
            break;
          v4 = v5;
        }
      }
      CustomFree((void *)(v4 - 8));
    }
    Arrays::ClassTable::members = 0;
  }
}


// ===== 4a9a9c Arrays::CharAnimTable::finalizeNames(void) =====
void __fastcall Arrays::CharAnimTable::finalizeNames(Arrays::CharAnimTable *this)
{
  _DWORD *v1; // r3
  unsigned int v2; // r4
  void *v3; // r0

  v1 = (_DWORD *)Arrays::CharAnimTable::m_memberNames;
  if ( Arrays::CharAnimTable::m_memberNames )
  {
    if ( !Arrays::CharAnimTable::size )
      goto LABEL_9;
    v2 = 0;
    while ( 1 )
    {
      v3 = (void *)v1[v2++];
      if ( v3 )
      {
        CustomFree(v3);
        v1 = (_DWORD *)Arrays::CharAnimTable::m_memberNames;
      }
      if ( Arrays::CharAnimTable::size <= v2 )
        break;
      v1 = (_DWORD *)Arrays::CharAnimTable::m_memberNames;
    }
    if ( v1 )
LABEL_9:
      CustomFree(v1);
    Arrays::CharAnimTable::m_memberNames = 0;
  }
}


// ===== 4a9b38 Arrays::CharAnimTable::finalize(void) =====
void __fastcall Arrays::CharAnimTable::finalize(Arrays::CharAnimTable *this)
{
  int v1; // r3
  int v2; // r4
  unsigned int v3; // r6
  int v4; // r0
  int v5; // r4

  v1 = Arrays::CharAnimTable::members;
  if ( Arrays::CharAnimTable::members )
  {
    if ( !Arrays::CharAnimTable::size )
      goto LABEL_7;
    v2 = 0;
    v3 = 0;
    while ( 1 )
    {
      (*(void (__fastcall **)(int))(*(_DWORD *)(v1 + v2) + 8))(v1 + v2);
      ++v3;
      v2 += 160;
      if ( Arrays::CharAnimTable::size <= v3 )
        break;
      v1 = Arrays::CharAnimTable::members;
    }
    v1 = Arrays::CharAnimTable::members;
    if ( Arrays::CharAnimTable::members )
    {
LABEL_7:
      v4 = v1 + 160 * *(_DWORD *)(v1 - 4);
      if ( v1 != v4 )
      {
        while ( 1 )
        {
          v5 = v4 - 160;
          (**(void (__fastcall ***)(int))(v4 - 160))(v4 - 160);
          v4 = Arrays::CharAnimTable::members;
          if ( Arrays::CharAnimTable::members == v5 )
            break;
          v4 = v5;
        }
      }
      CustomFree((void *)(v4 - 8));
    }
    Arrays::CharAnimTable::members = 0;
  }
}


// ===== 4a9c1c Arrays::CamAnimSetTable::finalizeNames(void) =====
void __fastcall Arrays::CamAnimSetTable::finalizeNames(Arrays::CamAnimSetTable *this)
{
  _DWORD *v1; // r3
  unsigned int v2; // r4
  void *v3; // r0

  v1 = (_DWORD *)Arrays::CamAnimSetTable::m_memberNames;
  if ( Arrays::CamAnimSetTable::m_memberNames )
  {
    if ( !Arrays::CamAnimSetTable::size )
      goto LABEL_9;
    v2 = 0;
    while ( 1 )
    {
      v3 = (void *)v1[v2++];
      if ( v3 )
      {
        CustomFree(v3);
        v1 = (_DWORD *)Arrays::CamAnimSetTable::m_memberNames;
      }
      if ( Arrays::CamAnimSetTable::size <= v2 )
        break;
      v1 = (_DWORD *)Arrays::CamAnimSetTable::m_memberNames;
    }
    if ( v1 )
LABEL_9:
      CustomFree(v1);
    Arrays::CamAnimSetTable::m_memberNames = 0;
  }
}


// ===== 4a9cb8 Arrays::CamAnimSetTable::finalize(void) =====
void __fastcall Arrays::CamAnimSetTable::finalize(Arrays::CamAnimSetTable *this)
{
  int v1; // r3
  int v2; // r4
  unsigned int v3; // r6
  int v4; // r0
  int v5; // r4

  v1 = Arrays::CamAnimSetTable::members;
  if ( Arrays::CamAnimSetTable::members )
  {
    if ( !Arrays::CamAnimSetTable::size )
      goto LABEL_7;
    v2 = 0;
    v3 = 0;
    while ( 1 )
    {
      (*(void (__fastcall **)(int))(*(_DWORD *)(v1 + v2) + 8))(v1 + v2);
      ++v3;
      v2 += 28;
      if ( Arrays::CamAnimSetTable::size <= v3 )
        break;
      v1 = Arrays::CamAnimSetTable::members;
    }
    v1 = Arrays::CamAnimSetTable::members;
    if ( Arrays::CamAnimSetTable::members )
    {
LABEL_7:
      v4 = v1 + 28 * *(_DWORD *)(v1 - 4);
      if ( v1 != v4 )
      {
        while ( 1 )
        {
          v5 = v4 - 28;
          (**(void (__fastcall ***)(int))(v4 - 28))(v4 - 28);
          v4 = Arrays::CamAnimSetTable::members;
          if ( Arrays::CamAnimSetTable::members == v5 )
            break;
          v4 = v5;
        }
      }
      CustomFree((void *)(v4 - 8));
    }
    Arrays::CamAnimSetTable::members = 0;
  }
}


// ===== 4a9d9c Arrays::AnimTable::finalizeNames(void) =====
void __fastcall Arrays::AnimTable::finalizeNames(Arrays::AnimTable *this)
{
  _DWORD *v1; // r3
  unsigned int v2; // r4
  void *v3; // r0

  v1 = (_DWORD *)Arrays::AnimTable::m_memberNames;
  if ( Arrays::AnimTable::m_memberNames )
  {
    if ( !Arrays::AnimTable::size )
      goto LABEL_9;
    v2 = 0;
    while ( 1 )
    {
      v3 = (void *)v1[v2++];
      if ( v3 )
      {
        CustomFree(v3);
        v1 = (_DWORD *)Arrays::AnimTable::m_memberNames;
      }
      if ( Arrays::AnimTable::size <= v2 )
        break;
      v1 = (_DWORD *)Arrays::AnimTable::m_memberNames;
    }
    if ( v1 )
LABEL_9:
      CustomFree(v1);
    Arrays::AnimTable::m_memberNames = 0;
  }
}


// ===== 4a9e38 Arrays::AnimTable::finalize(void) =====
void __fastcall Arrays::AnimTable::finalize(Arrays::AnimTable *this)
{
  int v1; // r3
  int v2; // r4
  unsigned int v3; // r6
  int v4; // r0
  int v5; // r4

  v1 = Arrays::AnimTable::members;
  if ( Arrays::AnimTable::members )
  {
    if ( !Arrays::AnimTable::size )
      goto LABEL_7;
    v2 = 0;
    v3 = 0;
    while ( 1 )
    {
      (*(void (__fastcall **)(int))(*(_DWORD *)(v1 + v2) + 8))(v1 + v2);
      ++v3;
      v2 += 20;
      if ( Arrays::AnimTable::size <= v3 )
        break;
      v1 = Arrays::AnimTable::members;
    }
    v1 = Arrays::AnimTable::members;
    if ( Arrays::AnimTable::members )
    {
LABEL_7:
      v4 = v1 + 20 * *(_DWORD *)(v1 - 4);
      if ( v1 != v4 )
      {
        while ( 1 )
        {
          v5 = v4 - 20;
          (**(void (__fastcall ***)(int))(v4 - 20))(v4 - 20);
          v4 = Arrays::AnimTable::members;
          if ( Arrays::AnimTable::members == v5 )
            break;
          v4 = v5;
        }
      }
      CustomFree((void *)(v4 - 8));
    }
    Arrays::AnimTable::members = 0;
  }
}


// ===== 4a9f1c Arrays::AIFactionTable::finalizeNames(void) =====
void __fastcall Arrays::AIFactionTable::finalizeNames(Arrays::AIFactionTable *this)
{
  _DWORD *v1; // r3
  unsigned int v2; // r4
  void *v3; // r0

  v1 = (_DWORD *)Arrays::AIFactionTable::m_memberNames;
  if ( Arrays::AIFactionTable::m_memberNames )
  {
    if ( !Arrays::AIFactionTable::size )
      goto LABEL_9;
    v2 = 0;
    while ( 1 )
    {
      v3 = (void *)v1[v2++];
      if ( v3 )
      {
        CustomFree(v3);
        v1 = (_DWORD *)Arrays::AIFactionTable::m_memberNames;
      }
      if ( Arrays::AIFactionTable::size <= v2 )
        break;
      v1 = (_DWORD *)Arrays::AIFactionTable::m_memberNames;
    }
    if ( v1 )
LABEL_9:
      CustomFree(v1);
    Arrays::AIFactionTable::m_memberNames = 0;
  }
}


// ===== 4a9fb8 Arrays::AIFactionTable::finalize(void) =====
void __fastcall Arrays::AIFactionTable::finalize(Arrays::AIFactionTable *this)
{
  int v1; // r3
  int v2; // r4
  unsigned int v3; // r6
  int v4; // r0
  int v5; // r4

  v1 = Arrays::AIFactionTable::members;
  if ( Arrays::AIFactionTable::members )
  {
    if ( !Arrays::AIFactionTable::size )
      goto LABEL_7;
    v2 = 0;
    v3 = 0;
    while ( 1 )
    {
      (*(void (__fastcall **)(int))(*(_DWORD *)(v1 + v2) + 8))(v1 + v2);
      ++v3;
      v2 += 12;
      if ( Arrays::AIFactionTable::size <= v3 )
        break;
      v1 = Arrays::AIFactionTable::members;
    }
    v1 = Arrays::AIFactionTable::members;
    if ( Arrays::AIFactionTable::members )
    {
LABEL_7:
      v4 = v1 + 12 * *(_DWORD *)(v1 - 4);
      if ( v1 != v4 )
      {
        while ( 1 )
        {
          v5 = v4 - 12;
          (**(void (__fastcall ***)(int))(v4 - 12))(v4 - 12);
          v4 = Arrays::AIFactionTable::members;
          if ( Arrays::AIFactionTable::members == v5 )
            break;
          v4 = v5;
        }
      }
      CustomFree((void *)(v4 - 8));
    }
    Arrays::AIFactionTable::members = 0;
  }
}


// ===== 4aa09c Arrays::AITable::finalizeNames(void) =====
void __fastcall Arrays::AITable::finalizeNames(Arrays::AITable *this)
{
  _DWORD *v1; // r3
  unsigned int v2; // r4
  void *v3; // r0

  v1 = (_DWORD *)Arrays::AITable::m_memberNames;
  if ( Arrays::AITable::m_memberNames )
  {
    if ( !Arrays::AITable::size )
      goto LABEL_9;
    v2 = 0;
    while ( 1 )
    {
      v3 = (void *)v1[v2++];
      if ( v3 )
      {
        CustomFree(v3);
        v1 = (_DWORD *)Arrays::AITable::m_memberNames;
      }
      if ( Arrays::AITable::size <= v2 )
        break;
      v1 = (_DWORD *)Arrays::AITable::m_memberNames;
    }
    if ( v1 )
LABEL_9:
      CustomFree(v1);
    Arrays::AITable::m_memberNames = 0;
  }
}


// ===== 4aa138 Arrays::AITable::finalize(void) =====
void __fastcall Arrays::AITable::finalize(Arrays::AITable *this)
{
  int v1; // r3
  int v2; // r4
  unsigned int v3; // r6
  int v4; // r0
  int v5; // r4

  v1 = Arrays::AITable::members;
  if ( Arrays::AITable::members )
  {
    if ( !Arrays::AITable::size )
      goto LABEL_7;
    v2 = 0;
    v3 = 0;
    while ( 1 )
    {
      (*(void (__fastcall **)(int))(*(_DWORD *)(v1 + v2) + 8))(v1 + v2);
      ++v3;
      v2 += 68;
      if ( Arrays::AITable::size <= v3 )
        break;
      v1 = Arrays::AITable::members;
    }
    v1 = Arrays::AITable::members;
    if ( Arrays::AITable::members )
    {
LABEL_7:
      v4 = v1 + 68 * *(_DWORD *)(v1 - 4);
      if ( v1 != v4 )
      {
        while ( 1 )
        {
          v5 = v4 - 68;
          (**(void (__fastcall ***)(int))(v4 - 68))(v4 - 68);
          v4 = Arrays::AITable::members;
          if ( Arrays::AITable::members == v5 )
            break;
          v4 = v5;
        }
      }
      CustomFree((void *)(v4 - 8));
    }
    Arrays::AITable::members = 0;
  }
}


// ===== 4aa21c PyDataArrays::Load(void) =====
int __fastcall PyDataArrays::Load(PyDataArrays *this)
{
  int v1; // r2
  int v3; // r5
  int v4; // r0
  int v6; // r0
  int v7; // r0
  int v8; // r0
  int v9; // r0
  int v10; // r0
  int v11; // r0
  int v12; // r0
  int v13; // r0
  int v14; // r0
  int v15; // r0
  int v16; // r0
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
  int v32; // r0
  int v33; // r0
  int v34; // r0
  int v35; // r0
  int v36; // r0
  int v37; // r0
  int v38; // r0
  int v39; // r0
  int v40; // r0
  int v41; // r0
  int v42; // r0
  int v43; // r0
  int v44; // r0
  int v45; // r0
  int v46; // r0
  int v47; // r0
  int v48; // r0
  int v49; // r0
  int v50; // r0
  int v51; // r0
  int v52; // r0
  int v53; // r0
  int v54; // r0
  int v55; // r0
  int v56; // r0
  int v57; // r0
  int v58; // r0
  int v59; // r0
  int v60; // r0
  int v61; // r0
  int v62; // r0
  int v63; // r0
  int v64; // r0
  int v65; // r0
  int v66; // r0
  int v67; // r0
  int v68; // r0
  int v69; // r0
  int v70; // r0
  int v71; // r0
  int v72; // r0
  int v73; // r0
  int v74; // r0
  _DWORD v75[2]; // [sp+4h] [bp-8h] BYREF

  v1 = *((_DWORD *)this + 14);
  v3 = *(_DWORD *)(dword_99F73C + 52);
  switch ( v1 )
  {
    case 0:
      v4 = (*(int (__fastcall **)(_DWORD, const char *))(*(_DWORD *)v3 + 144))(
             *(_DWORD *)(dword_99F73C + 52),
             "pydata/ai_pyarray.bin");
      v75[0] = v4;
      if ( v4 )
      {
        (*(void (__fastcall **)(PyDataArrays *, int, const char *))(*(_DWORD *)this + 8))(this, v4, "ai_pyarray.bin");
        (*(void (__fastcall **)(int, _DWORD *))(*(_DWORD *)v3 + 120))(v3, v75);
      }
      else
      {
        puts("[PyData Arrays] : ERROR LOADING \"pydata/ai_pyarray.bin\"");
      }
      v1 = *((_DWORD *)this + 14);
      goto LABEL_5;
    case 1:
      v43 = (*(int (__fastcall **)(_DWORD, const char *))(*(_DWORD *)v3 + 144))(
              *(_DWORD *)(dword_99F73C + 52),
              "pydata/ai_factions_pyarray.bin");
      v75[0] = v43;
      if ( v43 )
      {
        (*(void (__fastcall **)(PyDataArrays *, int, const char *))(*(_DWORD *)this + 8))(
          this,
          v43,
          "ai_factions_pyarray.bin");
        (*(void (__fastcall **)(int, _DWORD *))(*(_DWORD *)v3 + 120))(v3, v75);
      }
      else
      {
        puts("[PyData Arrays] : ERROR LOADING \"pydata/ai_factions_pyarray.bin\"");
      }
      v1 = *((_DWORD *)this + 14);
      goto LABEL_5;
    case 2:
      v59 = (*(int (__fastcall **)(_DWORD, const char *))(*(_DWORD *)v3 + 144))(
              *(_DWORD *)(dword_99F73C + 52),
              "pydata/animations_pyarray.bin");
      v75[0] = v59;
      if ( v59 )
      {
        (*(void (__fastcall **)(PyDataArrays *, int, const char *))(*(_DWORD *)this + 8))(
          this,
          v59,
          "animations_pyarray.bin");
        (*(void (__fastcall **)(int, _DWORD *))(*(_DWORD *)v3 + 120))(v3, v75);
      }
      else
      {
        puts("[PyData Arrays] : ERROR LOADING \"pydata/animations_pyarray.bin\"");
      }
      v1 = *((_DWORD *)this + 14);
      goto LABEL_5;
    case 3:
      v27 = (*(int (__fastcall **)(_DWORD, const char *))(*(_DWORD *)v3 + 144))(
              *(_DWORD *)(dword_99F73C + 52),
              "pydata/character_classes_pyarray.bin");
      v75[0] = v27;
      if ( v27 )
      {
        (*(void (__fastcall **)(PyDataArrays *, int, const char *))(*(_DWORD *)this + 8))(
          this,
          v27,
          "character_classes_pyarray.bin");
        (*(void (__fastcall **)(int, _DWORD *))(*(_DWORD *)v3 + 120))(v3, v75);
      }
      else
      {
        puts("[PyData Arrays] : ERROR LOADING \"pydata/character_classes_pyarray.bin\"");
      }
      v1 = *((_DWORD *)this + 14);
      goto LABEL_5;
    case 4:
      v67 = (*(int (__fastcall **)(_DWORD, const char *))(*(_DWORD *)v3 + 144))(
              *(_DWORD *)(dword_99F73C + 52),
              "pydata/character_properties_pyarray.bin");
      v75[0] = v67;
      if ( v67 )
      {
        (*(void (__fastcall **)(PyDataArrays *, int, const char *))(*(_DWORD *)this + 8))(
          this,
          v67,
          "character_properties_pyarray.bin");
        (*(void (__fastcall **)(int, _DWORD *))(*(_DWORD *)v3 + 120))(v3, v75);
      }
      else
      {
        puts("[PyData Arrays] : ERROR LOADING \"pydata/character_properties_pyarray.bin\"");
      }
      v1 = *((_DWORD *)this + 14);
      goto LABEL_5;
    case 5:
      v35 = (*(int (__fastcall **)(_DWORD, const char *))(*(_DWORD *)v3 + 144))(
              *(_DWORD *)(dword_99F73C + 52),
              "pydata/character_templates_pyarray.bin");
      v75[0] = v35;
      if ( v35 )
      {
        (*(void (__fastcall **)(PyDataArrays *, int, const char *))(*(_DWORD *)this + 8))(
          this,
          v35,
          "character_templates_pyarray.bin");
        (*(void (__fastcall **)(int, _DWORD *))(*(_DWORD *)v3 + 120))(v3, v75);
      }
      else
      {
        puts("[PyData Arrays] : ERROR LOADING \"pydata/character_templates_pyarray.bin\"");
      }
      v1 = *((_DWORD *)this + 14);
      goto LABEL_5;
    case 6:
      v51 = (*(int (__fastcall **)(_DWORD, const char *))(*(_DWORD *)v3 + 144))(
              *(_DWORD *)(dword_99F73C + 52),
              "pydata/common_pyarray.bin");
      v75[0] = v51;
      if ( v51 )
      {
        (*(void (__fastcall **)(PyDataArrays *, int, const char *))(*(_DWORD *)this + 8))(
          this,
          v51,
          "common_pyarray.bin");
        (*(void (__fastcall **)(int, _DWORD *))(*(_DWORD *)v3 + 120))(v3, v75);
      }
      else
      {
        puts("[PyData Arrays] : ERROR LOADING \"pydata/common_pyarray.bin\"");
      }
      v1 = *((_DWORD *)this + 14);
      goto LABEL_5;
    case 7:
      v19 = (*(int (__fastcall **)(_DWORD, const char *))(*(_DWORD *)v3 + 144))(
              *(_DWORD *)(dword_99F73C + 52),
              "pydata/design_pyarray.bin");
      v75[0] = v19;
      if ( v19 )
      {
        (*(void (__fastcall **)(PyDataArrays *, int, const char *))(*(_DWORD *)this + 8))(
          this,
          v19,
          "design_pyarray.bin");
        (*(void (__fastcall **)(int, _DWORD *))(*(_DWORD *)v3 + 120))(v3, v75);
      }
      else
      {
        puts("[PyData Arrays] : ERROR LOADING \"pydata/design_pyarray.bin\"");
      }
      v1 = *((_DWORD *)this + 14);
      goto LABEL_5;
    case 8:
      v71 = (*(int (__fastcall **)(_DWORD, const char *))(*(_DWORD *)v3 + 144))(
              *(_DWORD *)(dword_99F73C + 52),
              "pydata/dialogs_pyarray.bin");
      v75[0] = v71;
      if ( v71 )
      {
        (*(void (__fastcall **)(PyDataArrays *, int, const char *))(*(_DWORD *)this + 8))(
          this,
          v71,
          "dialogs_pyarray.bin");
        (*(void (__fastcall **)(int, _DWORD *))(*(_DWORD *)v3 + 120))(v3, v75);
      }
      else
      {
        puts("[PyData Arrays] : ERROR LOADING \"pydata/dialogs_pyarray.bin\"");
      }
      v1 = *((_DWORD *)this + 14);
      goto LABEL_5;
    case 9:
      v39 = (*(int (__fastcall **)(_DWORD, const char *))(*(_DWORD *)v3 + 144))(
              *(_DWORD *)(dword_99F73C + 52),
              "pydata/effects_pyarray.bin");
      v75[0] = v39;
      if ( v39 )
      {
        (*(void (__fastcall **)(PyDataArrays *, int, const char *))(*(_DWORD *)this + 8))(
          this,
          v39,
          "effects_pyarray.bin");
        (*(void (__fastcall **)(int, _DWORD *))(*(_DWORD *)v3 + 120))(v3, v75);
      }
      else
      {
        puts("[PyData Arrays] : ERROR LOADING \"pydata/effects_pyarray.bin\"");
      }
      v1 = *((_DWORD *)this + 14);
      goto LABEL_5;
    case 10:
      v55 = (*(int (__fastcall **)(_DWORD, const char *))(*(_DWORD *)v3 + 144))(
              *(_DWORD *)(dword_99F73C + 52),
              "pydata/faeries_pyarray.bin");
      v75[0] = v55;
      if ( v55 )
      {
        (*(void (__fastcall **)(PyDataArrays *, int, const char *))(*(_DWORD *)this + 8))(
          this,
          v55,
          "faeries_pyarray.bin");
        (*(void (__fastcall **)(int, _DWORD *))(*(_DWORD *)v3 + 120))(v3, v75);
      }
      else
      {
        puts("[PyData Arrays] : ERROR LOADING \"pydata/faeries_pyarray.bin\"");
      }
      v1 = *((_DWORD *)this + 14);
      goto LABEL_5;
    case 11:
      v23 = (*(int (__fastcall **)(_DWORD, const char *))(*(_DWORD *)v3 + 144))(
              *(_DWORD *)(dword_99F73C + 52),
              "pydata/fonts_pyarray.bin");
      v75[0] = v23;
      if ( v23 )
      {
        (*(void (__fastcall **)(PyDataArrays *, int, const char *))(*(_DWORD *)this + 8))(
          this,
          v23,
          "fonts_pyarray.bin");
        (*(void (__fastcall **)(int, _DWORD *))(*(_DWORD *)v3 + 120))(v3, v75);
      }
      else
      {
        puts("[PyData Arrays] : ERROR LOADING \"pydata/fonts_pyarray.bin\"");
      }
      v1 = *((_DWORD *)this + 14);
      goto LABEL_5;
    case 12:
      v63 = (*(int (__fastcall **)(_DWORD, const char *))(*(_DWORD *)v3 + 144))(
              *(_DWORD *)(dword_99F73C + 52),
              "pydata/game_objects_pyarray.bin");
      v75[0] = v63;
      if ( v63 )
      {
        (*(void (__fastcall **)(PyDataArrays *, int, const char *))(*(_DWORD *)this + 8))(
          this,
          v63,
          "game_objects_pyarray.bin");
        (*(void (__fastcall **)(int, _DWORD *))(*(_DWORD *)v3 + 120))(v3, v75);
      }
      else
      {
        puts("[PyData Arrays] : ERROR LOADING \"pydata/game_objects_pyarray.bin\"");
      }
      v1 = *((_DWORD *)this + 14);
      goto LABEL_5;
    case 13:
      v31 = (*(int (__fastcall **)(_DWORD, const char *))(*(_DWORD *)v3 + 144))(
              *(_DWORD *)(dword_99F73C + 52),
              "pydata/help_pages_pyarray.bin");
      v75[0] = v31;
      if ( v31 )
      {
        (*(void (__fastcall **)(PyDataArrays *, int, const char *))(*(_DWORD *)this + 8))(
          this,
          v31,
          "help_pages_pyarray.bin");
        (*(void (__fastcall **)(int, _DWORD *))(*(_DWORD *)v3 + 120))(v3, v75);
      }
      else
      {
        puts("[PyData Arrays] : ERROR LOADING \"pydata/help_pages_pyarray.bin\"");
      }
      v1 = *((_DWORD *)this + 14);
      goto LABEL_5;
    case 14:
      v47 = (*(int (__fastcall **)(_DWORD, const char *))(*(_DWORD *)v3 + 144))(
              *(_DWORD *)(dword_99F73C + 52),
              "pydata/item_powers_pyarray.bin");
      v75[0] = v47;
      if ( v47 )
      {
        (*(void (__fastcall **)(PyDataArrays *, int, const char *))(*(_DWORD *)this + 8))(
          this,
          v47,
          "item_powers_pyarray.bin");
        (*(void (__fastcall **)(int, _DWORD *))(*(_DWORD *)v3 + 120))(v3, v75);
      }
      else
      {
        puts("[PyData Arrays] : ERROR LOADING \"pydata/item_powers_pyarray.bin\"");
      }
      v1 = *((_DWORD *)this + 14);
      goto LABEL_5;
    case 15:
      v15 = (*(int (__fastcall **)(_DWORD, const char *))(*(_DWORD *)v3 + 144))(
              *(_DWORD *)(dword_99F73C + 52),
              "pydata/item_powers_monopoly_pyarray.bin");
      v75[0] = v15;
      if ( v15 )
      {
        (*(void (__fastcall **)(PyDataArrays *, int, const char *))(*(_DWORD *)this + 8))(
          this,
          v15,
          "item_powers_monopoly_pyarray.bin");
        (*(void (__fastcall **)(int, _DWORD *))(*(_DWORD *)v3 + 120))(v3, v75);
      }
      else
      {
        puts("[PyData Arrays] : ERROR LOADING \"pydata/item_powers_monopoly_pyarray.bin\"");
      }
      v1 = *((_DWORD *)this + 14);
      goto LABEL_5;
    case 16:
      v73 = (*(int (__fastcall **)(_DWORD, const char *))(*(_DWORD *)v3 + 144))(
              *(_DWORD *)(dword_99F73C + 52),
              "pydata/levels_pyarray.bin");
      v75[0] = v73;
      if ( v73 )
      {
        (*(void (__fastcall **)(PyDataArrays *, int, const char *))(*(_DWORD *)this + 8))(
          this,
          v73,
          "levels_pyarray.bin");
        (*(void (__fastcall **)(int, _DWORD *))(*(_DWORD *)v3 + 120))(v3, v75);
      }
      else
      {
        puts("[PyData Arrays] : ERROR LOADING \"pydata/levels_pyarray.bin\"");
      }
      v1 = *((_DWORD *)this + 14);
      goto LABEL_5;
    case 17:
      v41 = (*(int (__fastcall **)(_DWORD, const char *))(*(_DWORD *)v3 + 144))(
              *(_DWORD *)(dword_99F73C + 52),
              "pydata/loot_audiovisual_pyarray.bin");
      v75[0] = v41;
      if ( v41 )
      {
        (*(void (__fastcall **)(PyDataArrays *, int, const char *))(*(_DWORD *)this + 8))(
          this,
          v41,
          "loot_audiovisual_pyarray.bin");
        (*(void (__fastcall **)(int, _DWORD *))(*(_DWORD *)v3 + 120))(v3, v75);
      }
      else
      {
        puts("[PyData Arrays] : ERROR LOADING \"pydata/loot_audiovisual_pyarray.bin\"");
      }
      v1 = *((_DWORD *)this + 14);
      goto LABEL_5;
    case 18:
      v57 = (*(int (__fastcall **)(_DWORD, const char *))(*(_DWORD *)v3 + 144))(
              *(_DWORD *)(dword_99F73C + 52),
              "pydata/loot_table_pyarray.bin");
      v75[0] = v57;
      if ( v57 )
      {
        (*(void (__fastcall **)(PyDataArrays *, int, const char *))(*(_DWORD *)this + 8))(
          this,
          v57,
          "loot_table_pyarray.bin");
        (*(void (__fastcall **)(int, _DWORD *))(*(_DWORD *)v3 + 120))(v3, v75);
      }
      else
      {
        puts("[PyData Arrays] : ERROR LOADING \"pydata/loot_table_pyarray.bin\"");
      }
      v1 = *((_DWORD *)this + 14);
      goto LABEL_5;
    case 19:
      v25 = (*(int (__fastcall **)(_DWORD, const char *))(*(_DWORD *)v3 + 144))(
              *(_DWORD *)(dword_99F73C + 52),
              "pydata/projectiles_pyarray.bin");
      v75[0] = v25;
      if ( v25 )
      {
        (*(void (__fastcall **)(PyDataArrays *, int, const char *))(*(_DWORD *)this + 8))(
          this,
          v25,
          "projectiles_pyarray.bin");
        (*(void (__fastcall **)(int, _DWORD *))(*(_DWORD *)v3 + 120))(v3, v75);
      }
      else
      {
        puts("[PyData Arrays] : ERROR LOADING \"pydata/projectiles_pyarray.bin\"");
      }
      v1 = *((_DWORD *)this + 14);
      goto LABEL_5;
    case 20:
      v65 = (*(int (__fastcall **)(_DWORD, const char *))(*(_DWORD *)v3 + 144))(
              *(_DWORD *)(dword_99F73C + 52),
              "pydata/skills_pyarray.bin");
      v75[0] = v65;
      if ( v65 )
      {
        (*(void (__fastcall **)(PyDataArrays *, int, const char *))(*(_DWORD *)this + 8))(
          this,
          v65,
          "skills_pyarray.bin");
        (*(void (__fastcall **)(int, _DWORD *))(*(_DWORD *)v3 + 120))(v3, v75);
      }
      else
      {
        puts("[PyData Arrays] : ERROR LOADING \"pydata/skills_pyarray.bin\"");
      }
      v1 = *((_DWORD *)this + 14);
      goto LABEL_5;
    case 21:
      v33 = (*(int (__fastcall **)(_DWORD, const char *))(*(_DWORD *)v3 + 144))(
              *(_DWORD *)(dword_99F73C + 52),
              "pydata/sounds_pyarray.bin");
      v75[0] = v33;
      if ( v33 )
      {
        (*(void (__fastcall **)(PyDataArrays *, int, const char *))(*(_DWORD *)this + 8))(
          this,
          v33,
          "sounds_pyarray.bin");
        (*(void (__fastcall **)(int, _DWORD *))(*(_DWORD *)v3 + 120))(v3, v75);
      }
      else
      {
        puts("[PyData Arrays] : ERROR LOADING \"pydata/sounds_pyarray.bin\"");
      }
      v1 = *((_DWORD *)this + 14);
      goto LABEL_5;
    case 22:
      v49 = (*(int (__fastcall **)(_DWORD, const char *))(*(_DWORD *)v3 + 144))(
              *(_DWORD *)(dword_99F73C + 52),
              "pydata/spawn_groups_pyarray.bin");
      v75[0] = v49;
      if ( v49 )
      {
        (*(void (__fastcall **)(PyDataArrays *, int, const char *))(*(_DWORD *)this + 8))(
          this,
          v49,
          "spawn_groups_pyarray.bin");
        (*(void (__fastcall **)(int, _DWORD *))(*(_DWORD *)v3 + 120))(v3, v75);
      }
      else
      {
        puts("[PyData Arrays] : ERROR LOADING \"pydata/spawn_groups_pyarray.bin\"");
      }
      v1 = *((_DWORD *)this + 14);
      goto LABEL_5;
    case 23:
      v17 = (*(int (__fastcall **)(_DWORD, const char *))(*(_DWORD *)v3 + 144))(
              *(_DWORD *)(dword_99F73C + 52),
              "pydata/trophies_pyarray.bin");
      v75[0] = v17;
      if ( v17 )
      {
        (*(void (__fastcall **)(PyDataArrays *, int, const char *))(*(_DWORD *)this + 8))(
          this,
          v17,
          "trophies_pyarray.bin");
        (*(void (__fastcall **)(int, _DWORD *))(*(_DWORD *)v3 + 120))(v3, v75);
      }
      else
      {
        puts("[PyData Arrays] : ERROR LOADING \"pydata/trophies_pyarray.bin\"");
      }
      v1 = *((_DWORD *)this + 14);
      goto LABEL_5;
    case 24:
      v69 = (*(int (__fastcall **)(_DWORD, const char *))(*(_DWORD *)v3 + 144))(
              *(_DWORD *)(dword_99F73C + 52),
              "pydata/v2conditions_pyarray.bin");
      v75[0] = v69;
      if ( v69 )
      {
        (*(void (__fastcall **)(PyDataArrays *, int, const char *))(*(_DWORD *)this + 8))(
          this,
          v69,
          "v2conditions_pyarray.bin");
        (*(void (__fastcall **)(int, _DWORD *))(*(_DWORD *)v3 + 120))(v3, v75);
      }
      else
      {
        puts("[PyData Arrays] : ERROR LOADING \"pydata/v2conditions_pyarray.bin\"");
      }
      v1 = *((_DWORD *)this + 14);
      goto LABEL_5;
    case 25:
      v37 = (*(int (__fastcall **)(_DWORD, const char *))(*(_DWORD *)v3 + 144))(
              *(_DWORD *)(dword_99F73C + 52),
              "pydata/v2eventmanager_pyarray.bin");
      v75[0] = v37;
      if ( v37 )
      {
        (*(void (__fastcall **)(PyDataArrays *, int, const char *))(*(_DWORD *)this + 8))(
          this,
          v37,
          "v2eventmanager_pyarray.bin");
        (*(void (__fastcall **)(int, _DWORD *))(*(_DWORD *)v3 + 120))(v3, v75);
      }
      else
      {
        puts("[PyData Arrays] : ERROR LOADING \"pydata/v2eventmanager_pyarray.bin\"");
      }
      v1 = *((_DWORD *)this + 14);
      goto LABEL_5;
    case 26:
      v53 = (*(int (__fastcall **)(_DWORD, const char *))(*(_DWORD *)v3 + 144))(
              *(_DWORD *)(dword_99F73C + 52),
              "pydata/v2quests_pyarray.bin");
      v75[0] = v53;
      if ( v53 )
      {
        (*(void (__fastcall **)(PyDataArrays *, int, const char *))(*(_DWORD *)this + 8))(
          this,
          v53,
          "v2quests_pyarray.bin");
        (*(void (__fastcall **)(int, _DWORD *))(*(_DWORD *)v3 + 120))(v3, v75);
      }
      else
      {
        puts("[PyData Arrays] : ERROR LOADING \"pydata/v2quests_pyarray.bin\"");
      }
      v1 = *((_DWORD *)this + 14);
      goto LABEL_5;
    case 27:
      v21 = (*(int (__fastcall **)(_DWORD, const char *))(*(_DWORD *)v3 + 144))(
              *(_DWORD *)(dword_99F73C + 52),
              "pydata/worldmap_pyarray.bin");
      v75[0] = v21;
      if ( v21 )
      {
        (*(void (__fastcall **)(PyDataArrays *, int, const char *))(*(_DWORD *)this + 8))(
          this,
          v21,
          "worldmap_pyarray.bin");
        (*(void (__fastcall **)(int, _DWORD *))(*(_DWORD *)v3 + 120))(v3, v75);
      }
      else
      {
        puts("[PyData Arrays] : ERROR LOADING \"pydata/worldmap_pyarray.bin\"");
      }
      v1 = *((_DWORD *)this + 14);
      goto LABEL_5;
    case 28:
      v61 = (*(int (__fastcall **)(_DWORD, const char *))(*(_DWORD *)v3 + 144))(
              *(_DWORD *)(dword_99F73C + 52),
              "pydata/character_models_dictionary_pyarray.bin");
      v75[0] = v61;
      if ( v61 )
      {
        (*(void (__fastcall **)(PyDataArrays *, int, const char *))(*(_DWORD *)this + 8))(
          this,
          v61,
          "character_models_dictionary_pyarray.bin");
        (*(void (__fastcall **)(int, _DWORD *))(*(_DWORD *)v3 + 120))(v3, v75);
      }
      else
      {
        puts("[PyData Arrays] : ERROR LOADING \"pydata/character_models_dictionary_pyarray.bin\"");
      }
      v1 = *((_DWORD *)this + 14);
      goto LABEL_5;
    case 29:
      v29 = (*(int (__fastcall **)(_DWORD, const char *))(*(_DWORD *)v3 + 144))(
              *(_DWORD *)(dword_99F73C + 52),
              "pydata/animations_dictionary_pyarray.bin");
      v75[0] = v29;
      if ( v29 )
      {
        (*(void (__fastcall **)(PyDataArrays *, int, const char *))(*(_DWORD *)this + 8))(
          this,
          v29,
          "animations_dictionary_pyarray.bin");
        (*(void (__fastcall **)(int, _DWORD *))(*(_DWORD *)v3 + 120))(v3, v75);
      }
      else
      {
        puts("[PyData Arrays] : ERROR LOADING \"pydata/animations_dictionary_pyarray.bin\"");
      }
      v1 = *((_DWORD *)this + 14);
      goto LABEL_5;
    case 30:
      v45 = (*(int (__fastcall **)(_DWORD, const char *))(*(_DWORD *)v3 + 144))(
              *(_DWORD *)(dword_99F73C + 52),
              "pydata/effects_dictionary_pyarray.bin");
      v75[0] = v45;
      if ( v45 )
      {
        (*(void (__fastcall **)(PyDataArrays *, int, const char *))(*(_DWORD *)this + 8))(
          this,
          v45,
          "effects_dictionary_pyarray.bin");
        (*(void (__fastcall **)(int, _DWORD *))(*(_DWORD *)v3 + 120))(v3, v75);
      }
      else
      {
        puts("[PyData Arrays] : ERROR LOADING \"pydata/effects_dictionary_pyarray.bin\"");
      }
      v1 = *((_DWORD *)this + 14);
      goto LABEL_5;
    case 31:
      v13 = (*(int (__fastcall **)(_DWORD, const char *))(*(_DWORD *)v3 + 144))(
              *(_DWORD *)(dword_99F73C + 52),
              "pydata/projectiles_dictionary_pyarray.bin");
      v75[0] = v13;
      if ( v13 )
      {
        (*(void (__fastcall **)(PyDataArrays *, int, const char *))(*(_DWORD *)this + 8))(
          this,
          v13,
          "projectiles_dictionary_pyarray.bin");
        (*(void (__fastcall **)(int, _DWORD *))(*(_DWORD *)v3 + 120))(v3, v75);
      }
      else
      {
        puts("[PyData Arrays] : ERROR LOADING \"pydata/projectiles_dictionary_pyarray.bin\"");
      }
      v1 = *((_DWORD *)this + 14);
      goto LABEL_5;
    case 32:
      v74 = (*(int (__fastcall **)(_DWORD, const char *))(*(_DWORD *)v3 + 144))(
              *(_DWORD *)(dword_99F73C + 52),
              "pydata/game_objects_dictionary_pyarray.bin");
      v75[0] = v74;
      if ( v74 )
      {
        (*(void (__fastcall **)(PyDataArrays *, int, const char *))(*(_DWORD *)this + 8))(
          this,
          v74,
          "game_objects_dictionary_pyarray.bin");
        (*(void (__fastcall **)(int, _DWORD *))(*(_DWORD *)v3 + 120))(v3, v75);
      }
      else
      {
        puts("[PyData Arrays] : ERROR LOADING \"pydata/game_objects_dictionary_pyarray.bin\"");
      }
      v1 = *((_DWORD *)this + 14);
      goto LABEL_5;
    case 33:
      v42 = (*(int (__fastcall **)(_DWORD, const char *))(*(_DWORD *)v3 + 144))(
              *(_DWORD *)(dword_99F73C + 52),
              "pydata/common_text_pyarray.bin");
      v75[0] = v42;
      if ( v42 )
      {
        (*(void (__fastcall **)(PyDataArrays *, int, const char *))(*(_DWORD *)this + 8))(
          this,
          v42,
          "common_text_pyarray.bin");
        (*(void (__fastcall **)(int, _DWORD *))(*(_DWORD *)v3 + 120))(v3, v75);
      }
      else
      {
        puts("[PyData Arrays] : ERROR LOADING \"pydata/common_text_pyarray.bin\"");
      }
      v1 = *((_DWORD *)this + 14);
      goto LABEL_5;
    case 34:
      v58 = (*(int (__fastcall **)(_DWORD, const char *))(*(_DWORD *)v3 + 144))(
              *(_DWORD *)(dword_99F73C + 52),
              "pydata/sdd_dungeon_hunter_2_iphone_pyarray.bin");
      v75[0] = v58;
      if ( v58 )
      {
        (*(void (__fastcall **)(PyDataArrays *, int, const char *))(*(_DWORD *)this + 8))(
          this,
          v58,
          "sdd_dungeon_hunter_2_iphone_pyarray.bin");
        (*(void (__fastcall **)(int, _DWORD *))(*(_DWORD *)v3 + 120))(v3, v75);
      }
      else
      {
        puts("[PyData Arrays] : ERROR LOADING \"pydata/sdd_dungeon_hunter_2_iphone_pyarray.bin\"");
      }
      v1 = *((_DWORD *)this + 14);
      goto LABEL_5;
    case 35:
      v26 = (*(int (__fastcall **)(_DWORD, const char *))(*(_DWORD *)v3 + 144))(
              *(_DWORD *)(dword_99F73C + 52),
              "pydata/ai_pyarraynames.bin");
      v75[0] = v26;
      if ( v26 )
      {
        (*(void (__fastcall **)(PyDataArrays *, int, const char *))(*(_DWORD *)this + 8))(
          this,
          v26,
          "ai_pyarraynames.bin");
        (*(void (__fastcall **)(int, _DWORD *))(*(_DWORD *)v3 + 120))(v3, v75);
      }
      else
      {
        puts("[PyData Arrays] : ERROR LOADING \"pydata/ai_pyarraynames.bin\"");
      }
      v1 = *((_DWORD *)this + 14);
      goto LABEL_5;
    case 36:
      v66 = (*(int (__fastcall **)(_DWORD, const char *))(*(_DWORD *)v3 + 144))(
              *(_DWORD *)(dword_99F73C + 52),
              "pydata/ai_factions_pyarraynames.bin");
      v75[0] = v66;
      if ( v66 )
      {
        (*(void (__fastcall **)(PyDataArrays *, int, const char *))(*(_DWORD *)this + 8))(
          this,
          v66,
          "ai_factions_pyarraynames.bin");
        (*(void (__fastcall **)(int, _DWORD *))(*(_DWORD *)v3 + 120))(v3, v75);
      }
      else
      {
        puts("[PyData Arrays] : ERROR LOADING \"pydata/ai_factions_pyarraynames.bin\"");
      }
      v1 = *((_DWORD *)this + 14);
      goto LABEL_5;
    case 37:
      v34 = (*(int (__fastcall **)(_DWORD, const char *))(*(_DWORD *)v3 + 144))(
              *(_DWORD *)(dword_99F73C + 52),
              "pydata/animations_pyarraynames.bin");
      v75[0] = v34;
      if ( v34 )
      {
        (*(void (__fastcall **)(PyDataArrays *, int, const char *))(*(_DWORD *)this + 8))(
          this,
          v34,
          "animations_pyarraynames.bin");
        (*(void (__fastcall **)(int, _DWORD *))(*(_DWORD *)v3 + 120))(v3, v75);
      }
      else
      {
        puts("[PyData Arrays] : ERROR LOADING \"pydata/animations_pyarraynames.bin\"");
      }
      v1 = *((_DWORD *)this + 14);
      goto LABEL_5;
    case 38:
      v50 = (*(int (__fastcall **)(_DWORD, const char *))(*(_DWORD *)v3 + 144))(
              *(_DWORD *)(dword_99F73C + 52),
              "pydata/character_classes_pyarraynames.bin");
      v75[0] = v50;
      if ( v50 )
      {
        (*(void (__fastcall **)(PyDataArrays *, int, const char *))(*(_DWORD *)this + 8))(
          this,
          v50,
          "character_classes_pyarraynames.bin");
        (*(void (__fastcall **)(int, _DWORD *))(*(_DWORD *)v3 + 120))(v3, v75);
      }
      else
      {
        puts("[PyData Arrays] : ERROR LOADING \"pydata/character_classes_pyarraynames.bin\"");
      }
      v1 = *((_DWORD *)this + 14);
      goto LABEL_5;
    case 39:
      v18 = (*(int (__fastcall **)(_DWORD, const char *))(*(_DWORD *)v3 + 144))(
              *(_DWORD *)(dword_99F73C + 52),
              "pydata/character_properties_pyarraynames.bin");
      v75[0] = v18;
      if ( v18 )
      {
        (*(void (__fastcall **)(PyDataArrays *, int, const char *))(*(_DWORD *)this + 8))(
          this,
          v18,
          "character_properties_pyarraynames.bin");
        (*(void (__fastcall **)(int, _DWORD *))(*(_DWORD *)v3 + 120))(v3, v75);
      }
      else
      {
        puts("[PyData Arrays] : ERROR LOADING \"pydata/character_properties_pyarraynames.bin\"");
      }
      v1 = *((_DWORD *)this + 14);
      goto LABEL_5;
    case 40:
      v70 = (*(int (__fastcall **)(_DWORD, const char *))(*(_DWORD *)v3 + 144))(
              *(_DWORD *)(dword_99F73C + 52),
              "pydata/character_templates_pyarraynames.bin");
      v75[0] = v70;
      if ( v70 )
      {
        (*(void (__fastcall **)(PyDataArrays *, int, const char *))(*(_DWORD *)this + 8))(
          this,
          v70,
          "character_templates_pyarraynames.bin");
        (*(void (__fastcall **)(int, _DWORD *))(*(_DWORD *)v3 + 120))(v3, v75);
      }
      else
      {
        puts("[PyData Arrays] : ERROR LOADING \"pydata/character_templates_pyarraynames.bin\"");
      }
      v1 = *((_DWORD *)this + 14);
      goto LABEL_5;
    case 41:
      v38 = (*(int (__fastcall **)(_DWORD, const char *))(*(_DWORD *)v3 + 144))(
              *(_DWORD *)(dword_99F73C + 52),
              "pydata/common_pyarraynames.bin");
      v75[0] = v38;
      if ( v38 )
      {
        (*(void (__fastcall **)(PyDataArrays *, int, const char *))(*(_DWORD *)this + 8))(
          this,
          v38,
          "common_pyarraynames.bin");
        (*(void (__fastcall **)(int, _DWORD *))(*(_DWORD *)v3 + 120))(v3, v75);
      }
      else
      {
        puts("[PyData Arrays] : ERROR LOADING \"pydata/common_pyarraynames.bin\"");
      }
      v1 = *((_DWORD *)this + 14);
      goto LABEL_5;
    case 42:
      v54 = (*(int (__fastcall **)(_DWORD, const char *))(*(_DWORD *)v3 + 144))(
              *(_DWORD *)(dword_99F73C + 52),
              "pydata/design_pyarraynames.bin");
      v75[0] = v54;
      if ( v54 )
      {
        (*(void (__fastcall **)(PyDataArrays *, int, const char *))(*(_DWORD *)this + 8))(
          this,
          v54,
          "design_pyarraynames.bin");
        (*(void (__fastcall **)(int, _DWORD *))(*(_DWORD *)v3 + 120))(v3, v75);
      }
      else
      {
        puts("[PyData Arrays] : ERROR LOADING \"pydata/design_pyarraynames.bin\"");
      }
      v1 = *((_DWORD *)this + 14);
      goto LABEL_5;
    case 43:
      v22 = (*(int (__fastcall **)(_DWORD, const char *))(*(_DWORD *)v3 + 144))(
              *(_DWORD *)(dword_99F73C + 52),
              "pydata/dialogs_pyarraynames.bin");
      v75[0] = v22;
      if ( v22 )
      {
        (*(void (__fastcall **)(PyDataArrays *, int, const char *))(*(_DWORD *)this + 8))(
          this,
          v22,
          "dialogs_pyarraynames.bin");
        (*(void (__fastcall **)(int, _DWORD *))(*(_DWORD *)v3 + 120))(v3, v75);
      }
      else
      {
        puts("[PyData Arrays] : ERROR LOADING \"pydata/dialogs_pyarraynames.bin\"");
      }
      v1 = *((_DWORD *)this + 14);
      goto LABEL_5;
    case 44:
      v62 = (*(int (__fastcall **)(_DWORD, const char *))(*(_DWORD *)v3 + 144))(
              *(_DWORD *)(dword_99F73C + 52),
              "pydata/effects_pyarraynames.bin");
      v75[0] = v62;
      if ( v62 )
      {
        (*(void (__fastcall **)(PyDataArrays *, int, const char *))(*(_DWORD *)this + 8))(
          this,
          v62,
          "effects_pyarraynames.bin");
        (*(void (__fastcall **)(int, _DWORD *))(*(_DWORD *)v3 + 120))(v3, v75);
      }
      else
      {
        puts("[PyData Arrays] : ERROR LOADING \"pydata/effects_pyarraynames.bin\"");
      }
      v1 = *((_DWORD *)this + 14);
      goto LABEL_5;
    case 45:
      v30 = (*(int (__fastcall **)(_DWORD, const char *))(*(_DWORD *)v3 + 144))(
              *(_DWORD *)(dword_99F73C + 52),
              "pydata/faeries_pyarraynames.bin");
      v75[0] = v30;
      if ( v30 )
      {
        (*(void (__fastcall **)(PyDataArrays *, int, const char *))(*(_DWORD *)this + 8))(
          this,
          v30,
          "faeries_pyarraynames.bin");
        (*(void (__fastcall **)(int, _DWORD *))(*(_DWORD *)v3 + 120))(v3, v75);
      }
      else
      {
        puts("[PyData Arrays] : ERROR LOADING \"pydata/faeries_pyarraynames.bin\"");
      }
      v1 = *((_DWORD *)this + 14);
      goto LABEL_5;
    case 46:
      v46 = (*(int (__fastcall **)(_DWORD, const char *))(*(_DWORD *)v3 + 144))(
              *(_DWORD *)(dword_99F73C + 52),
              "pydata/fonts_pyarraynames.bin");
      v75[0] = v46;
      if ( v46 )
      {
        (*(void (__fastcall **)(PyDataArrays *, int, const char *))(*(_DWORD *)this + 8))(
          this,
          v46,
          "fonts_pyarraynames.bin");
        (*(void (__fastcall **)(int, _DWORD *))(*(_DWORD *)v3 + 120))(v3, v75);
      }
      else
      {
        puts("[PyData Arrays] : ERROR LOADING \"pydata/fonts_pyarraynames.bin\"");
      }
      v1 = *((_DWORD *)this + 14);
      goto LABEL_5;
    case 47:
      v14 = (*(int (__fastcall **)(_DWORD, const char *))(*(_DWORD *)v3 + 144))(
              *(_DWORD *)(dword_99F73C + 52),
              "pydata/game_objects_pyarraynames.bin");
      v75[0] = v14;
      if ( v14 )
      {
        (*(void (__fastcall **)(PyDataArrays *, int, const char *))(*(_DWORD *)this + 8))(
          this,
          v14,
          "game_objects_pyarraynames.bin");
        (*(void (__fastcall **)(int, _DWORD *))(*(_DWORD *)v3 + 120))(v3, v75);
      }
      else
      {
        puts("[PyData Arrays] : ERROR LOADING \"pydata/game_objects_pyarraynames.bin\"");
      }
      v1 = *((_DWORD *)this + 14);
      goto LABEL_5;
    case 48:
      v72 = (*(int (__fastcall **)(_DWORD, const char *))(*(_DWORD *)v3 + 144))(
              *(_DWORD *)(dword_99F73C + 52),
              "pydata/help_pages_pyarraynames.bin");
      v75[0] = v72;
      if ( v72 )
      {
        (*(void (__fastcall **)(PyDataArrays *, int, const char *))(*(_DWORD *)this + 8))(
          this,
          v72,
          "help_pages_pyarraynames.bin");
        (*(void (__fastcall **)(int, _DWORD *))(*(_DWORD *)v3 + 120))(v3, v75);
      }
      else
      {
        puts("[PyData Arrays] : ERROR LOADING \"pydata/help_pages_pyarraynames.bin\"");
      }
      v1 = *((_DWORD *)this + 14);
      goto LABEL_5;
    case 49:
      v40 = (*(int (__fastcall **)(_DWORD, const char *))(*(_DWORD *)v3 + 144))(
              *(_DWORD *)(dword_99F73C + 52),
              "pydata/item_powers_pyarraynames.bin");
      v75[0] = v40;
      if ( v40 )
      {
        (*(void (__fastcall **)(PyDataArrays *, int, const char *))(*(_DWORD *)this + 8))(
          this,
          v40,
          "item_powers_pyarraynames.bin");
        (*(void (__fastcall **)(int, _DWORD *))(*(_DWORD *)v3 + 120))(v3, v75);
      }
      else
      {
        puts("[PyData Arrays] : ERROR LOADING \"pydata/item_powers_pyarraynames.bin\"");
      }
      v1 = *((_DWORD *)this + 14);
      goto LABEL_5;
    case 50:
      v56 = (*(int (__fastcall **)(_DWORD, const char *))(*(_DWORD *)v3 + 144))(
              *(_DWORD *)(dword_99F73C + 52),
              "pydata/item_powers_monopoly_pyarraynames.bin");
      v75[0] = v56;
      if ( v56 )
      {
        (*(void (__fastcall **)(PyDataArrays *, int, const char *))(*(_DWORD *)this + 8))(
          this,
          v56,
          "item_powers_monopoly_pyarraynames.bin");
        (*(void (__fastcall **)(int, _DWORD *))(*(_DWORD *)v3 + 120))(v3, v75);
      }
      else
      {
        puts("[PyData Arrays] : ERROR LOADING \"pydata/item_powers_monopoly_pyarraynames.bin\"");
      }
      v1 = *((_DWORD *)this + 14);
      goto LABEL_5;
    case 51:
      v24 = (*(int (__fastcall **)(_DWORD, const char *))(*(_DWORD *)v3 + 144))(
              *(_DWORD *)(dword_99F73C + 52),
              "pydata/levels_pyarraynames.bin");
      v75[0] = v24;
      if ( v24 )
      {
        (*(void (__fastcall **)(PyDataArrays *, int, const char *))(*(_DWORD *)this + 8))(
          this,
          v24,
          "levels_pyarraynames.bin");
        (*(void (__fastcall **)(int, _DWORD *))(*(_DWORD *)v3 + 120))(v3, v75);
      }
      else
      {
        puts("[PyData Arrays] : ERROR LOADING \"pydata/levels_pyarraynames.bin\"");
      }
      v1 = *((_DWORD *)this + 14);
      goto LABEL_5;
    case 52:
      v64 = (*(int (__fastcall **)(_DWORD, const char *))(*(_DWORD *)v3 + 144))(
              *(_DWORD *)(dword_99F73C + 52),
              "pydata/loot_audiovisual_pyarraynames.bin");
      v75[0] = v64;
      if ( v64 )
      {
        (*(void (__fastcall **)(PyDataArrays *, int, const char *))(*(_DWORD *)this + 8))(
          this,
          v64,
          "loot_audiovisual_pyarraynames.bin");
        (*(void (__fastcall **)(int, _DWORD *))(*(_DWORD *)v3 + 120))(v3, v75);
      }
      else
      {
        puts("[PyData Arrays] : ERROR LOADING \"pydata/loot_audiovisual_pyarraynames.bin\"");
      }
      v1 = *((_DWORD *)this + 14);
      goto LABEL_5;
    case 53:
      v32 = (*(int (__fastcall **)(_DWORD, const char *))(*(_DWORD *)v3 + 144))(
              *(_DWORD *)(dword_99F73C + 52),
              "pydata/loot_table_pyarraynames.bin");
      v75[0] = v32;
      if ( v32 )
      {
        (*(void (__fastcall **)(PyDataArrays *, int, const char *))(*(_DWORD *)this + 8))(
          this,
          v32,
          "loot_table_pyarraynames.bin");
        (*(void (__fastcall **)(int, _DWORD *))(*(_DWORD *)v3 + 120))(v3, v75);
      }
      else
      {
        puts("[PyData Arrays] : ERROR LOADING \"pydata/loot_table_pyarraynames.bin\"");
      }
      v1 = *((_DWORD *)this + 14);
      goto LABEL_5;
    case 54:
      v48 = (*(int (__fastcall **)(_DWORD, const char *))(*(_DWORD *)v3 + 144))(
              *(_DWORD *)(dword_99F73C + 52),
              "pydata/projectiles_pyarraynames.bin");
      v75[0] = v48;
      if ( v48 )
      {
        (*(void (__fastcall **)(PyDataArrays *, int, const char *))(*(_DWORD *)this + 8))(
          this,
          v48,
          "projectiles_pyarraynames.bin");
        (*(void (__fastcall **)(int, _DWORD *))(*(_DWORD *)v3 + 120))(v3, v75);
      }
      else
      {
        puts("[PyData Arrays] : ERROR LOADING \"pydata/projectiles_pyarraynames.bin\"");
      }
      v1 = *((_DWORD *)this + 14);
      goto LABEL_5;
    case 55:
      v16 = (*(int (__fastcall **)(_DWORD, const char *))(*(_DWORD *)v3 + 144))(
              *(_DWORD *)(dword_99F73C + 52),
              "pydata/skills_pyarraynames.bin");
      v75[0] = v16;
      if ( v16 )
      {
        (*(void (__fastcall **)(PyDataArrays *, int, const char *))(*(_DWORD *)this + 8))(
          this,
          v16,
          "skills_pyarraynames.bin");
        (*(void (__fastcall **)(int, _DWORD *))(*(_DWORD *)v3 + 120))(v3, v75);
      }
      else
      {
        puts("[PyData Arrays] : ERROR LOADING \"pydata/skills_pyarraynames.bin\"");
      }
      v1 = *((_DWORD *)this + 14);
      goto LABEL_5;
    case 56:
      v68 = (*(int (__fastcall **)(_DWORD, const char *))(*(_DWORD *)v3 + 144))(
              *(_DWORD *)(dword_99F73C + 52),
              "pydata/sounds_pyarraynames.bin");
      v75[0] = v68;
      if ( v68 )
      {
        (*(void (__fastcall **)(PyDataArrays *, int, const char *))(*(_DWORD *)this + 8))(
          this,
          v68,
          "sounds_pyarraynames.bin");
        (*(void (__fastcall **)(int, _DWORD *))(*(_DWORD *)v3 + 120))(v3, v75);
      }
      else
      {
        puts("[PyData Arrays] : ERROR LOADING \"pydata/sounds_pyarraynames.bin\"");
      }
      v1 = *((_DWORD *)this + 14);
      goto LABEL_5;
    case 57:
      v36 = (*(int (__fastcall **)(_DWORD, const char *))(*(_DWORD *)v3 + 144))(
              *(_DWORD *)(dword_99F73C + 52),
              "pydata/spawn_groups_pyarraynames.bin");
      v75[0] = v36;
      if ( v36 )
      {
        (*(void (__fastcall **)(PyDataArrays *, int, const char *))(*(_DWORD *)this + 8))(
          this,
          v36,
          "spawn_groups_pyarraynames.bin");
        (*(void (__fastcall **)(int, _DWORD *))(*(_DWORD *)v3 + 120))(v3, v75);
      }
      else
      {
        puts("[PyData Arrays] : ERROR LOADING \"pydata/spawn_groups_pyarraynames.bin\"");
      }
      v1 = *((_DWORD *)this + 14);
      goto LABEL_5;
    case 58:
      v52 = (*(int (__fastcall **)(_DWORD, const char *))(*(_DWORD *)v3 + 144))(
              *(_DWORD *)(dword_99F73C + 52),
              "pydata/trophies_pyarraynames.bin");
      v75[0] = v52;
      if ( v52 )
      {
        (*(void (__fastcall **)(PyDataArrays *, int, const char *))(*(_DWORD *)this + 8))(
          this,
          v52,
          "trophies_pyarraynames.bin");
        (*(void (__fastcall **)(int, _DWORD *))(*(_DWORD *)v3 + 120))(v3, v75);
      }
      else
      {
        puts("[PyData Arrays] : ERROR LOADING \"pydata/trophies_pyarraynames.bin\"");
      }
      v1 = *((_DWORD *)this + 14);
      goto LABEL_5;
    case 59:
      v20 = (*(int (__fastcall **)(_DWORD, const char *))(*(_DWORD *)v3 + 144))(
              *(_DWORD *)(dword_99F73C + 52),
              "pydata/v2conditions_pyarraynames.bin");
      v75[0] = v20;
      if ( v20 )
      {
        (*(void (__fastcall **)(PyDataArrays *, int, const char *))(*(_DWORD *)this + 8))(
          this,
          v20,
          "v2conditions_pyarraynames.bin");
        (*(void (__fastcall **)(int, _DWORD *))(*(_DWORD *)v3 + 120))(v3, v75);
      }
      else
      {
        puts("[PyData Arrays] : ERROR LOADING \"pydata/v2conditions_pyarraynames.bin\"");
      }
      v1 = *((_DWORD *)this + 14);
      goto LABEL_5;
    case 60:
      v60 = (*(int (__fastcall **)(_DWORD, const char *))(*(_DWORD *)v3 + 144))(
              *(_DWORD *)(dword_99F73C + 52),
              "pydata/v2eventmanager_pyarraynames.bin");
      v75[0] = v60;
      if ( v60 )
      {
        (*(void (__fastcall **)(PyDataArrays *, int, const char *))(*(_DWORD *)this + 8))(
          this,
          v60,
          "v2eventmanager_pyarraynames.bin");
        (*(void (__fastcall **)(int, _DWORD *))(*(_DWORD *)v3 + 120))(v3, v75);
      }
      else
      {
        puts("[PyData Arrays] : ERROR LOADING \"pydata/v2eventmanager_pyarraynames.bin\"");
      }
      v1 = *((_DWORD *)this + 14);
      goto LABEL_5;
    case 61:
      v28 = (*(int (__fastcall **)(_DWORD, const char *))(*(_DWORD *)v3 + 144))(
              *(_DWORD *)(dword_99F73C + 52),
              "pydata/v2quests_pyarraynames.bin");
      v75[0] = v28;
      if ( v28 )
      {
        (*(void (__fastcall **)(PyDataArrays *, int, const char *))(*(_DWORD *)this + 8))(
          this,
          v28,
          "v2quests_pyarraynames.bin");
        (*(void (__fastcall **)(int, _DWORD *))(*(_DWORD *)v3 + 120))(v3, v75);
      }
      else
      {
        puts("[PyData Arrays] : ERROR LOADING \"pydata/v2quests_pyarraynames.bin\"");
      }
      v1 = *((_DWORD *)this + 14);
      goto LABEL_5;
    case 62:
      v44 = (*(int (__fastcall **)(_DWORD, const char *))(*(_DWORD *)v3 + 144))(
              *(_DWORD *)(dword_99F73C + 52),
              "pydata/worldmap_pyarraynames.bin");
      v75[0] = v44;
      if ( v44 )
      {
        (*(void (__fastcall **)(PyDataArrays *, int, const char *))(*(_DWORD *)this + 8))(
          this,
          v44,
          "worldmap_pyarraynames.bin");
        (*(void (__fastcall **)(int, _DWORD *))(*(_DWORD *)v3 + 120))(v3, v75);
      }
      else
      {
        puts("[PyData Arrays] : ERROR LOADING \"pydata/worldmap_pyarraynames.bin\"");
      }
      v1 = *((_DWORD *)this + 14);
      goto LABEL_5;
    case 63:
      v12 = (*(int (__fastcall **)(_DWORD, const char *))(*(_DWORD *)v3 + 144))(
              *(_DWORD *)(dword_99F73C + 52),
              "pydata/character_models_dictionary_pyarraynames.bin");
      v75[0] = v12;
      if ( v12 )
      {
        (*(void (__fastcall **)(PyDataArrays *, int, const char *))(*(_DWORD *)this + 8))(
          this,
          v12,
          "character_models_dictionary_pyarraynames.bin");
        (*(void (__fastcall **)(int, _DWORD *))(*(_DWORD *)v3 + 120))(v3, v75);
      }
      else
      {
        puts("[PyData Arrays] : ERROR LOADING \"pydata/character_models_dictionary_pyarraynames.bin\"");
      }
      v1 = *((_DWORD *)this + 14);
      goto LABEL_5;
    case 64:
      v11 = (*(int (__fastcall **)(_DWORD, const char *))(*(_DWORD *)v3 + 144))(
              *(_DWORD *)(dword_99F73C + 52),
              "pydata/animations_dictionary_pyarraynames.bin");
      v75[0] = v11;
      if ( v11 )
      {
        (*(void (__fastcall **)(PyDataArrays *, int, const char *))(*(_DWORD *)this + 8))(
          this,
          v11,
          "animations_dictionary_pyarraynames.bin");
        (*(void (__fastcall **)(int, _DWORD *))(*(_DWORD *)v3 + 120))(v3, v75);
      }
      else
      {
        puts("[PyData Arrays] : ERROR LOADING \"pydata/animations_dictionary_pyarraynames.bin\"");
      }
      v1 = *((_DWORD *)this + 14);
      goto LABEL_5;
    case 65:
      v9 = (*(int (__fastcall **)(_DWORD, const char *))(*(_DWORD *)v3 + 144))(
             *(_DWORD *)(dword_99F73C + 52),
             "pydata/effects_dictionary_pyarraynames.bin");
      v75[0] = v9;
      if ( v9 )
      {
        (*(void (__fastcall **)(PyDataArrays *, int, const char *))(*(_DWORD *)this + 8))(
          this,
          v9,
          "effects_dictionary_pyarraynames.bin");
        (*(void (__fastcall **)(int, _DWORD *))(*(_DWORD *)v3 + 120))(v3, v75);
      }
      else
      {
        puts("[PyData Arrays] : ERROR LOADING \"pydata/effects_dictionary_pyarraynames.bin\"");
      }
      v1 = *((_DWORD *)this + 14);
      goto LABEL_5;
    case 66:
      v10 = (*(int (__fastcall **)(_DWORD, const char *))(*(_DWORD *)v3 + 144))(
              *(_DWORD *)(dword_99F73C + 52),
              "pydata/projectiles_dictionary_pyarraynames.bin");
      v75[0] = v10;
      if ( v10 )
      {
        (*(void (__fastcall **)(PyDataArrays *, int, const char *))(*(_DWORD *)this + 8))(
          this,
          v10,
          "projectiles_dictionary_pyarraynames.bin");
        (*(void (__fastcall **)(int, _DWORD *))(*(_DWORD *)v3 + 120))(v3, v75);
      }
      else
      {
        puts("[PyData Arrays] : ERROR LOADING \"pydata/projectiles_dictionary_pyarraynames.bin\"");
      }
      v1 = *((_DWORD *)this + 14);
      goto LABEL_5;
    case 67:
      v8 = (*(int (__fastcall **)(_DWORD, const char *))(*(_DWORD *)v3 + 144))(
             *(_DWORD *)(dword_99F73C + 52),
             "pydata/game_objects_dictionary_pyarraynames.bin");
      v75[0] = v8;
      if ( v8 )
      {
        (*(void (__fastcall **)(PyDataArrays *, int, const char *))(*(_DWORD *)this + 8))(
          this,
          v8,
          "game_objects_dictionary_pyarraynames.bin");
        (*(void (__fastcall **)(int, _DWORD *))(*(_DWORD *)v3 + 120))(v3, v75);
      }
      else
      {
        puts("[PyData Arrays] : ERROR LOADING \"pydata/game_objects_dictionary_pyarraynames.bin\"");
      }
      v1 = *((_DWORD *)this + 14);
      goto LABEL_5;
    case 68:
      v7 = (*(int (__fastcall **)(_DWORD, const char *))(*(_DWORD *)v3 + 144))(
             *(_DWORD *)(dword_99F73C + 52),
             "pydata/common_text_pyarraynames.bin");
      v75[0] = v7;
      if ( v7 )
      {
        (*(void (__fastcall **)(PyDataArrays *, int, const char *))(*(_DWORD *)this + 8))(
          this,
          v7,
          "common_text_pyarraynames.bin");
        (*(void (__fastcall **)(int, _DWORD *))(*(_DWORD *)v3 + 120))(v3, v75);
      }
      else
      {
        puts("[PyData Arrays] : ERROR LOADING \"pydata/common_text_pyarraynames.bin\"");
      }
      v1 = *((_DWORD *)this + 14);
      goto LABEL_5;
    case 69:
      v6 = (*(int (__fastcall **)(_DWORD, const char *))(*(_DWORD *)v3 + 144))(
             *(_DWORD *)(dword_99F73C + 52),
             "pydata/sdd_dungeon_hunter_2_iphone_pyarraynames.bin");
      v75[0] = v6;
      if ( v6 )
      {
        (*(void (__fastcall **)(PyDataArrays *, int, const char *))(*(_DWORD *)this + 8))(
          this,
          v6,
          "sdd_dungeon_hunter_2_iphone_pyarraynames.bin");
        (*(void (__fastcall **)(int, _DWORD *))(*(_DWORD *)v3 + 120))(v3, v75);
      }
      else
      {
        puts("[PyData Arrays] : ERROR LOADING \"pydata/sdd_dungeon_hunter_2_iphone_pyarraynames.bin\"");
      }
      v1 = *((_DWORD *)this + 14);
      goto LABEL_5;
    case 70:
      return 1;
    default:
LABEL_5:
      *((_DWORD *)this + 14) = v1 + 1;
      return 0;
  }
}


// ===== 4ac574 Structs::GetMemberIDByString<Structs::SoundAutoGen>(char const*) =====
int __fastcall Structs::GetMemberIDByString<Structs::SoundAutoGen>(const char *a1)
{
  int result; // r0

  result = LC_API_STRCMP_0(a1, (const char *)dword_9F3FB0);
  if ( result )
  {
    if ( LC_API_STRCMP_0(a1, (const char *)dword_9F3FC8) )
      return -1;
    else
      return 1;
  }
  return result;
}


// ===== 4ac5c0 Arrays::GetMemberIDByString<Arrays::StrID_Languages>(char const*) =====
int __fastcall Arrays::GetMemberIDByString<Arrays::StrID_Languages>(char *a1)
{
  int v2; // r5
  int v3; // r4
  int v4; // r7

  v2 = Arrays::StrID_Languages::size;
  if ( !Arrays::StrID_Languages::size )
    return -1;
  v3 = 0;
  v4 = Arrays::StrID_Languages::m_memberNames;
  while ( LC_API_STRCMP_0(a1, *(const char **)(v4 + 4 * v3)) )
  {
    if ( ++v3 == v2 )
      return -1;
  }
  return v3;
}


// ===== 4ac634 Structs::GetMemberIDByString<Structs::LangSheetList>(char const*) =====
int __fastcall Structs::GetMemberIDByString<Structs::LangSheetList>(const char *a1)
{
  int result; // r0

  result = LC_API_STRCMP_0(a1, (const char *)dword_9F61B0);
  if ( result )
    return -1;
  return result;
}


// ===== 4ac664 Arrays::GetMemberIDByString<Arrays::GameObjectDict>(char const*) =====
int __fastcall Arrays::GetMemberIDByString<Arrays::GameObjectDict>(char *a1)
{
  int v2; // r5
  int v3; // r4
  int v4; // r7

  v2 = Arrays::GameObjectDict::size;
  if ( !Arrays::GameObjectDict::size )
    return -1;
  v3 = 0;
  v4 = Arrays::GameObjectDict::m_memberNames;
  while ( LC_API_STRCMP_0(a1, *(const char **)(v4 + 4 * v3)) )
  {
    if ( ++v3 == v2 )
      return -1;
  }
  return v3;
}


// ===== 4ac6d8 Arrays::GetMemberIDByString<Arrays::ProjectileDict>(char const*) =====
int __fastcall Arrays::GetMemberIDByString<Arrays::ProjectileDict>(char *a1)
{
  int v2; // r5
  int v3; // r4
  int v4; // r7

  v2 = Arrays::ProjectileDict::size;
  if ( !Arrays::ProjectileDict::size )
    return -1;
  v3 = 0;
  v4 = Arrays::ProjectileDict::m_memberNames;
  while ( LC_API_STRCMP_0(a1, *(const char **)(v4 + 4 * v3)) )
  {
    if ( ++v3 == v2 )
      return -1;
  }
  return v3;
}


// ===== 4ac74c Arrays::GetMemberIDByString<Arrays::EffectDict>(char const*) =====
int __fastcall Arrays::GetMemberIDByString<Arrays::EffectDict>(char *a1)
{
  int v2; // r5
  int v3; // r4
  int v4; // r7

  v2 = Arrays::EffectDict::size;
  if ( !Arrays::EffectDict::size )
    return -1;
  v3 = 0;
  v4 = Arrays::EffectDict::m_memberNames;
  while ( LC_API_STRCMP_0(a1, *(const char **)(v4 + 4 * v3)) )
  {
    if ( ++v3 == v2 )
      return -1;
  }
  return v3;
}


// ===== 4ac7c0 Arrays::GetMemberIDByString<Arrays::ModelDict>(char const*) =====
int __fastcall Arrays::GetMemberIDByString<Arrays::ModelDict>(char *a1)
{
  int v2; // r5
  int v3; // r4
  int v4; // r7

  v2 = Arrays::ModelDict::size;
  if ( !Arrays::ModelDict::size )
    return -1;
  v3 = 0;
  v4 = Arrays::ModelDict::m_memberNames;
  while ( LC_API_STRCMP_0(a1, *(const char **)(v4 + 4 * v3)) )
  {
    if ( ++v3 == v2 )
      return -1;
  }
  return v3;
}


// ===== 4ac834 Structs::GetMemberIDByString<Structs::ColladaFile>(char const*) =====
int __fastcall Structs::GetMemberIDByString<Structs::ColladaFile>(const char *a1)
{
  int result; // r0

  result = LC_API_STRCMP_0(a1, (const char *)dword_9EAC30);
  if ( result )
    return -1;
  return result;
}


// ===== 4ac864 Arrays::GetMemberIDByString<Arrays::WorldMapLockers>(char const*) =====
int __fastcall Arrays::GetMemberIDByString<Arrays::WorldMapLockers>(char *a1)
{
  int v2; // r5
  int v3; // r4
  int v4; // r7

  v2 = Arrays::WorldMapLockers::size;
  if ( !Arrays::WorldMapLockers::size )
    return -1;
  v3 = 0;
  v4 = Arrays::WorldMapLockers::m_memberNames;
  while ( LC_API_STRCMP_0(a1, *(const char **)(v4 + 4 * v3)) )
  {
    if ( ++v3 == v2 )
      return -1;
  }
  return v3;
}


// ===== 4ac8d8 Structs::GetMemberIDByString<Structs::WorldMapLocker>(char const*) =====
int __fastcall Structs::GetMemberIDByString<Structs::WorldMapLocker>(const char *a1)
{
  int result; // r0

  result = LC_API_STRCMP_0(a1, (const char *)dword_9F6150);
  if ( result )
  {
    if ( LC_API_STRCMP_0(a1, (const char *)dword_9F6168) )
      return -1;
    else
      return 1;
  }
  return result;
}


// ===== 4ac924 Arrays::GetMemberIDByString<Arrays::WorldMap>(char const*) =====
int __fastcall Arrays::GetMemberIDByString<Arrays::WorldMap>(char *a1)
{
  int v2; // r5
  int v3; // r4
  int v4; // r7

  v2 = Arrays::WorldMap::size;
  if ( !Arrays::WorldMap::size )
    return -1;
  v3 = 0;
  v4 = Arrays::WorldMap::m_memberNames;
  while ( LC_API_STRCMP_0(a1, *(const char **)(v4 + 4 * v3)) )
  {
    if ( ++v3 == v2 )
      return -1;
  }
  return v3;
}


// ===== 4ac998 Structs::GetMemberIDByString<Structs::WldMapLocation>(char const*) =====
int __fastcall Structs::GetMemberIDByString<Structs::WldMapLocation>(char *a1)
{
  const char **v2; // r4
  int v3; // r5

  v2 = (const char **)&Structs::WldMapLocation::m_dataNames;
  v3 = 0;
  while ( LC_API_STRCMP_0(a1, v2[5]) )
  {
    ++v3;
    v2 += 6;
    if ( v3 == 3 )
      return -1;
  }
  return v3;
}


// ===== 4ac9f0 Arrays::GetMemberIDByString<Arrays::v2Quests>(char const*) =====
int __fastcall Arrays::GetMemberIDByString<Arrays::v2Quests>(char *a1)
{
  int v2; // r5
  int v3; // r4
  int v4; // r7

  v2 = Arrays::v2Quests::size;
  if ( !Arrays::v2Quests::size )
    return -1;
  v3 = 0;
  v4 = Arrays::v2Quests::m_memberNames;
  while ( LC_API_STRCMP_0(a1, *(const char **)(v4 + 4 * v3)) )
  {
    if ( ++v3 == v2 )
      return -1;
  }
  return v3;
}


// ===== 4aca64 Structs::GetMemberIDByString<Structs::v2Quest>(char const*) =====
int __fastcall Structs::GetMemberIDByString<Structs::v2Quest>(char *a1)
{
  const char **v2; // r4
  int v3; // r5

  v2 = (const char **)&Structs::v2Quest::m_dataNames;
  v3 = 0;
  while ( LC_API_STRCMP_0(a1, v2[5]) )
  {
    ++v3;
    v2 += 6;
    if ( v3 == 17 )
      return -1;
  }
  return v3;
}


// ===== 4acabc Arrays::GetMemberIDByString<Arrays::v2Events>(char const*) =====
int __fastcall Arrays::GetMemberIDByString<Arrays::v2Events>(char *a1)
{
  int v2; // r5
  int v3; // r4
  int v4; // r7

  v2 = Arrays::v2Events::size;
  if ( !Arrays::v2Events::size )
    return -1;
  v3 = 0;
  v4 = Arrays::v2Events::m_memberNames;
  while ( LC_API_STRCMP_0(a1, *(const char **)(v4 + 4 * v3)) )
  {
    if ( ++v3 == v2 )
      return -1;
  }
  return v3;
}


// ===== 4acb30 Structs::GetMemberIDByString<Structs::v2Event>(char const*) =====
int __fastcall Structs::GetMemberIDByString<Structs::v2Event>(char *a1)
{
  const char **v2; // r4
  int v3; // r5

  v2 = (const char **)&Structs::v2Event::m_dataNames;
  v3 = 0;
  while ( LC_API_STRCMP_0(a1, v2[5]) )
  {
    ++v3;
    v2 += 6;
    if ( v3 == 3 )
      return -1;
  }
  return v3;
}


// ===== 4acb88 Arrays::GetMemberIDByString<Arrays::v2Conditions>(char const*) =====
int __fastcall Arrays::GetMemberIDByString<Arrays::v2Conditions>(char *a1)
{
  int v2; // r5
  int v3; // r4
  int v4; // r7

  v2 = Arrays::v2Conditions::size;
  if ( !Arrays::v2Conditions::size )
    return -1;
  v3 = 0;
  v4 = Arrays::v2Conditions::m_memberNames;
  while ( LC_API_STRCMP_0(a1, *(const char **)(v4 + 4 * v3)) )
  {
    if ( ++v3 == v2 )
      return -1;
  }
  return v3;
}


// ===== 4acbfc Structs::GetMemberIDByString<Structs::v2CondAnd>(char const*) =====
int __fastcall Structs::GetMemberIDByString<Structs::v2CondAnd>(const char *a1)
{
  int result; // r0

  result = LC_API_STRCMP_0(a1, (const char *)dword_9F4D60);
  if ( result )
  {
    if ( LC_API_STRCMP_0(a1, (const char *)dword_9F4D78) )
      return -1;
    else
      return 1;
  }
  return result;
}


// ===== 4acc48 Structs::GetMemberIDByString<Structs::Trophy>(char const*) =====
int __fastcall Structs::GetMemberIDByString<Structs::Trophy>(char *a1)
{
  const char **v2; // r4
  int v3; // r5

  v2 = (const char **)&Structs::Trophy::m_dataNames;
  v3 = 0;
  while ( LC_API_STRCMP_0(a1, v2[5]) )
  {
    ++v3;
    v2 += 6;
    if ( v3 == 7 )
      return -1;
  }
  return v3;
}


// ===== 4acca0 Structs::GetMemberIDByString<Structs::SpawnGroup>(char const*) =====
int __fastcall Structs::GetMemberIDByString<Structs::SpawnGroup>(char *a1)
{
  const char **v2; // r4
  int v3; // r5

  v2 = (const char **)&Structs::SpawnGroup::m_dataNames;
  v3 = 0;
  while ( LC_API_STRCMP_0(a1, v2[5]) )
  {
    ++v3;
    v2 += 6;
    if ( v3 == 3 )
      return -1;
  }
  return v3;
}


// ===== 4accf8 Arrays::GetMemberIDByString<Arrays::Sounds_bak>(char const*) =====
int __fastcall Arrays::GetMemberIDByString<Arrays::Sounds_bak>(char *a1)
{
  int v2; // r5
  int v3; // r4
  int v4; // r7

  v2 = Arrays::Sounds_bak::size;
  if ( !Arrays::Sounds_bak::size )
    return -1;
  v3 = 0;
  v4 = Arrays::Sounds_bak::m_memberNames;
  while ( LC_API_STRCMP_0(a1, *(const char **)(v4 + 4 * v3)) )
  {
    if ( ++v3 == v2 )
      return -1;
  }
  return v3;
}


// ===== 4acd6c Structs::GetMemberIDByString<Structs::Sound>(char const*) =====
int __fastcall Structs::GetMemberIDByString<Structs::Sound>(char *a1)
{
  const char **v2; // r4
  int v3; // r5

  v2 = (const char **)&Structs::Sound::m_dataNames;
  v3 = 0;
  while ( LC_API_STRCMP_0(a1, v2[5]) )
  {
    ++v3;
    v2 += 6;
    if ( v3 == 9 )
      return -1;
  }
  return v3;
}


// ===== 4acdc4 Arrays::GetMemberIDByString<Arrays::SoundGroupsRouting>(char const*) =====
int __fastcall Arrays::GetMemberIDByString<Arrays::SoundGroupsRouting>(char *a1)
{
  int v2; // r5
  int v3; // r4
  int v4; // r7

  v2 = Arrays::SoundGroupsRouting::size;
  if ( !Arrays::SoundGroupsRouting::size )
    return -1;
  v3 = 0;
  v4 = Arrays::SoundGroupsRouting::m_memberNames;
  while ( LC_API_STRCMP_0(a1, *(const char **)(v4 + 4 * v3)) )
  {
    if ( ++v3 == v2 )
      return -1;
  }
  return v3;
}


// ===== 4ace38 Structs::GetMemberIDByString<Structs::SoundGroup>(char const*) =====
int __fastcall Structs::GetMemberIDByString<Structs::SoundGroup>(const char *a1)
{
  int result; // r0

  result = LC_API_STRCMP_0(a1, (const char *)dword_9F3E78);
  if ( result )
  {
    if ( LC_API_STRCMP_0(a1, (const char *)dword_9F3E90) )
      return -1;
    else
      return 1;
  }
  return result;
}


// ===== 4ace84 Arrays::GetMemberIDByString<Arrays::SoundBankPlayback>(char const*) =====
int __fastcall Arrays::GetMemberIDByString<Arrays::SoundBankPlayback>(char *a1)
{
  int v2; // r5
  int v3; // r4
  int v4; // r7

  v2 = Arrays::SoundBankPlayback::size;
  if ( !Arrays::SoundBankPlayback::size )
    return -1;
  v3 = 0;
  v4 = Arrays::SoundBankPlayback::m_memberNames;
  while ( LC_API_STRCMP_0(a1, *(const char **)(v4 + 4 * v3)) )
  {
    if ( ++v3 == v2 )
      return -1;
  }
  return v3;
}


// ===== 4acef8 Structs::GetMemberIDByString<Structs::SoundBank>(char const*) =====
int __fastcall Structs::GetMemberIDByString<Structs::SoundBank>(const char *a1)
{
  int result; // r0

  result = LC_API_STRCMP_0(a1, (const char *)dword_9F3EA8);
  if ( result )
  {
    if ( LC_API_STRCMP_0(a1, (const char *)dword_9F3EC0) )
      return -1;
    else
      return 1;
  }
  return result;
}


// ===== 4acf44 Arrays::GetMemberIDByString<Arrays::Listeners>(char const*) =====
int __fastcall Arrays::GetMemberIDByString<Arrays::Listeners>(char *a1)
{
  int v2; // r5
  int v3; // r4
  int v4; // r7

  v2 = Arrays::Listeners::size;
  if ( !Arrays::Listeners::size )
    return -1;
  v3 = 0;
  v4 = Arrays::Listeners::m_memberNames;
  while ( LC_API_STRCMP_0(a1, *(const char **)(v4 + 4 * v3)) )
  {
    if ( ++v3 == v2 )
      return -1;
  }
  return v3;
}


// ===== 4acfb8 Structs::GetMemberIDByString<Structs::Listener>(char const*) =====
int __fastcall Structs::GetMemberIDByString<Structs::Listener>(char *a1)
{
  const char **v2; // r4
  int v3; // r5

  v2 = (const char **)&Structs::Listener::m_dataNames;
  v3 = 0;
  while ( LC_API_STRCMP_0(a1, v2[5]) )
  {
    ++v3;
    v2 += 6;
    if ( v3 == 6 )
      return -1;
  }
  return v3;
}


// ===== 4ad010 Arrays::GetMemberIDByString<Arrays::CharSoundsTable>(char const*) =====
int __fastcall Arrays::GetMemberIDByString<Arrays::CharSoundsTable>(char *a1)
{
  int v2; // r5
  int v3; // r4
  int v4; // r7

  v2 = Arrays::CharSoundsTable::size;
  if ( !Arrays::CharSoundsTable::size )
    return -1;
  v3 = 0;
  v4 = Arrays::CharSoundsTable::m_memberNames;
  while ( LC_API_STRCMP_0(a1, *(const char **)(v4 + 4 * v3)) )
  {
    if ( ++v3 == v2 )
      return -1;
  }
  return v3;
}


// ===== 4ad084 Structs::GetMemberIDByString<Structs::CharSounds>(char const*) =====
int __fastcall Structs::GetMemberIDByString<Structs::CharSounds>(char *a1)
{
  const char **v2; // r4
  int v3; // r5

  v2 = (const char **)&Structs::CharSounds::m_dataNames;
  v3 = 0;
  while ( LC_API_STRCMP_0(a1, v2[5]) )
  {
    ++v3;
    v2 += 6;
    if ( v3 == 6 )
      return -1;
  }
  return v3;
}


// ===== 4ad0dc Arrays::GetMemberIDByString<Arrays::SkillTable>(char const*) =====
int __fastcall Arrays::GetMemberIDByString<Arrays::SkillTable>(char *a1)
{
  int v2; // r5
  int v3; // r4
  int v4; // r7

  v2 = Arrays::SkillTable::size;
  if ( !Arrays::SkillTable::size )
    return -1;
  v3 = 0;
  v4 = Arrays::SkillTable::m_memberNames;
  while ( LC_API_STRCMP_0(a1, *(const char **)(v4 + 4 * v3)) )
  {
    if ( ++v3 == v2 )
      return -1;
  }
  return v3;
}


// ===== 4ad150 Structs::GetMemberIDByString<Structs::Skill>(char const*) =====
int __fastcall Structs::GetMemberIDByString<Structs::Skill>(char *a1)
{
  const char **v2; // r5
  int v3; // r4

  v2 = (const char **)&Structs::Skill::m_dataNames;
  v3 = 0;
  while ( LC_API_STRCMP_0(a1, v2[5]) )
  {
    ++v3;
    v2 += 6;
    if ( v3 == 15 )
      return -1;
  }
  return v3;
}


// ===== 4ad1a8 Arrays::GetMemberIDByString<Arrays::SkillListTable>(char const*) =====
int __fastcall Arrays::GetMemberIDByString<Arrays::SkillListTable>(char *a1)
{
  int v2; // r5
  int v3; // r4
  int v4; // r7

  v2 = Arrays::SkillListTable::size;
  if ( !Arrays::SkillListTable::size )
    return -1;
  v3 = 0;
  v4 = Arrays::SkillListTable::m_memberNames;
  while ( LC_API_STRCMP_0(a1, *(const char **)(v4 + 4 * v3)) )
  {
    if ( ++v3 == v2 )
      return -1;
  }
  return v3;
}


// ===== 4ad21c Structs::GetMemberIDByString<Structs::SkillList>(char const*) =====
int __fastcall Structs::GetMemberIDByString<Structs::SkillList>(const char *a1)
{
  int result; // r0

  result = LC_API_STRCMP_0(a1, (const char *)dword_9F3CF8);
  if ( result )
    return -1;
  return result;
}


// ===== 4ad24c Arrays::GetMemberIDByString<Arrays::ProjectileTable>(char const*) =====
int __fastcall Arrays::GetMemberIDByString<Arrays::ProjectileTable>(char *a1)
{
  int v2; // r5
  int v3; // r4
  int v4; // r7

  v2 = Arrays::ProjectileTable::size;
  if ( !Arrays::ProjectileTable::size )
    return -1;
  v3 = 0;
  v4 = Arrays::ProjectileTable::m_memberNames;
  while ( LC_API_STRCMP_0(a1, *(const char **)(v4 + 4 * v3)) )
  {
    if ( ++v3 == v2 )
      return -1;
  }
  return v3;
}


// ===== 4ad2c0 Structs::GetMemberIDByString<Structs::Projectile>(char const*) =====
int __fastcall Structs::GetMemberIDByString<Structs::Projectile>(char *a1)
{
  const char **v2; // r4
  int v3; // r5

  v2 = (const char **)&Structs::Projectile::m_dataNames;
  v3 = 0;
  while ( LC_API_STRCMP_0(a1, v2[5]) )
  {
    ++v3;
    v2 += 6;
    if ( v3 == 20 )
      return -1;
  }
  return v3;
}


// ===== 4ad318 Arrays::GetMemberIDByString<Arrays::NumProbArray>(char const*) =====
int __fastcall Arrays::GetMemberIDByString<Arrays::NumProbArray>(char *a1)
{
  int v2; // r5
  int v3; // r4
  int v4; // r7

  v2 = Arrays::NumProbArray::size;
  if ( !Arrays::NumProbArray::size )
    return -1;
  v3 = 0;
  v4 = Arrays::NumProbArray::m_memberNames;
  while ( LC_API_STRCMP_0(a1, *(const char **)(v4 + 4 * v3)) )
  {
    if ( ++v3 == v2 )
      return -1;
  }
  return v3;
}


// ===== 4ad38c Structs::GetMemberIDByString<Structs::NumProbList>(char const*) =====
int __fastcall Structs::GetMemberIDByString<Structs::NumProbList>(const char *a1)
{
  int result; // r0

  result = LC_API_STRCMP_0(a1, (const char *)dword_9F22E4);
  if ( result )
    return -1;
  return result;
}


// ===== 4ad3bc Arrays::GetMemberIDByString<Arrays::MerchantTable>(char const*) =====
int __fastcall Arrays::GetMemberIDByString<Arrays::MerchantTable>(char *a1)
{
  int v2; // r5
  int v3; // r4
  int v4; // r7

  v2 = Arrays::MerchantTable::size;
  if ( !Arrays::MerchantTable::size )
    return -1;
  v3 = 0;
  v4 = Arrays::MerchantTable::m_memberNames;
  while ( LC_API_STRCMP_0(a1, *(const char **)(v4 + 4 * v3)) )
  {
    if ( ++v3 == v2 )
      return -1;
  }
  return v3;
}


// ===== 4ad430 Structs::GetMemberIDByString<Structs::Merchant>(char const*) =====
int __fastcall Structs::GetMemberIDByString<Structs::Merchant>(char *a1)
{
  const char **v2; // r4
  int v3; // r5

  v2 = (const char **)&Structs::Merchant::m_dataNames;
  v3 = 0;
  while ( LC_API_STRCMP_0(a1, v2[5]) )
  {
    ++v3;
    v2 += 6;
    if ( v3 == 3 )
      return -1;
  }
  return v3;
}


// ===== 4ad488 Arrays::GetMemberIDByString<Arrays::LootTable>(char const*) =====
int __fastcall Arrays::GetMemberIDByString<Arrays::LootTable>(char *a1)
{
  int v2; // r5
  int v3; // r4
  int v4; // r7

  v2 = Arrays::LootTable::size;
  if ( !Arrays::LootTable::size )
    return -1;
  v3 = 0;
  v4 = Arrays::LootTable::m_memberNames;
  while ( LC_API_STRCMP_0(a1, *(const char **)(v4 + 4 * v3)) )
  {
    if ( ++v3 == v2 )
      return -1;
  }
  return v3;
}


// ===== 4ad4fc Structs::GetMemberIDByString<Structs::Loot>(char const*) =====
int __fastcall Structs::GetMemberIDByString<Structs::Loot>(char *a1)
{
  const char **v2; // r4
  int v3; // r5

  v2 = (const char **)&Structs::Loot::m_dataNames;
  v3 = 0;
  while ( LC_API_STRCMP_0(a1, v2[5]) )
  {
    ++v3;
    v2 += 6;
    if ( v3 == 5 )
      return -1;
  }
  return v3;
}


// ===== 4ad554 Arrays::GetMemberIDByString<Arrays::ItemTypeList>(char const*) =====
int __fastcall Arrays::GetMemberIDByString<Arrays::ItemTypeList>(char *a1)
{
  int v2; // r5
  int v3; // r4
  int v4; // r7

  v2 = Arrays::ItemTypeList::size;
  if ( !Arrays::ItemTypeList::size )
    return -1;
  v3 = 0;
  v4 = Arrays::ItemTypeList::m_memberNames;
  while ( LC_API_STRCMP_0(a1, *(const char **)(v4 + 4 * v3)) )
  {
    if ( ++v3 == v2 )
      return -1;
  }
  return v3;
}


// ===== 4ad5c8 Structs::GetMemberIDByString<Structs::ItemTypeListList>(char const*) =====
int __fastcall Structs::GetMemberIDByString<Structs::ItemTypeListList>(const char *a1)
{
  int result; // r0

  result = LC_API_STRCMP_0(a1, (const char *)dword_9F23D4);
  if ( result )
    return -1;
  return result;
}


// ===== 4ad5f8 Arrays::GetMemberIDByString<Arrays::ItemTable>(char const*) =====
int __fastcall Arrays::GetMemberIDByString<Arrays::ItemTable>(char *a1)
{
  int v2; // r5
  int v3; // r4
  int v4; // r7

  v2 = Arrays::ItemTable::size;
  if ( !Arrays::ItemTable::size )
    return -1;
  v3 = 0;
  v4 = Arrays::ItemTable::m_memberNames;
  while ( LC_API_STRCMP_0(a1, *(const char **)(v4 + 4 * v3)) )
  {
    if ( ++v3 == v2 )
      return -1;
  }
  return v3;
}


// ===== 4ad66c Structs::GetMemberIDByString<Structs::Item>(char const*) =====
int __fastcall Structs::GetMemberIDByString<Structs::Item>(char *a1)
{
  const char **v2; // r4
  int i; // r5

  v2 = (const char **)&Structs::Item::m_dataNames;
  for ( i = 0; i != 38; ++i )
  {
    if ( !LC_API_STRCMP_0(a1, v2[5]) )
      return i;
    v2 += 6;
  }
  return -1;
}


// ===== 4ad6c8 Arrays::GetMemberIDByString<Arrays::ItemList>(char const*) =====
int __fastcall Arrays::GetMemberIDByString<Arrays::ItemList>(char *a1)
{
  int v2; // r5
  int v3; // r4
  int v4; // r7

  v2 = Arrays::ItemList::size;
  if ( !Arrays::ItemList::size )
    return -1;
  v3 = 0;
  v4 = Arrays::ItemList::m_memberNames;
  while ( LC_API_STRCMP_0(a1, *(const char **)(v4 + 4 * v3)) )
  {
    if ( ++v3 == v2 )
      return -1;
  }
  return v3;
}


// ===== 4ad73c Structs::GetMemberIDByString<Structs::ItemListEntryList>(char const*) =====
int __fastcall Structs::GetMemberIDByString<Structs::ItemListEntryList>(const char *a1)
{
  int result; // r0

  result = LC_API_STRCMP_0(a1, (const char *)dword_9F229C);
  if ( result )
    return -1;
  return result;
}


// ===== 4ad76c Arrays::GetMemberIDByString<Arrays::InventoryTable>(char const*) =====
int __fastcall Arrays::GetMemberIDByString<Arrays::InventoryTable>(char *a1)
{
  int v2; // r5
  int v3; // r4
  int v4; // r7

  v2 = Arrays::InventoryTable::size;
  if ( !Arrays::InventoryTable::size )
    return -1;
  v3 = 0;
  v4 = Arrays::InventoryTable::m_memberNames;
  while ( LC_API_STRCMP_0(a1, *(const char **)(v4 + 4 * v3)) )
  {
    if ( ++v3 == v2 )
      return -1;
  }
  return v3;
}


// ===== 4ad7e0 Structs::GetMemberIDByString<Structs::Inventory>(char const*) =====
int __fastcall Structs::GetMemberIDByString<Structs::Inventory>(const char *a1)
{
  int result; // r0

  result = LC_API_STRCMP_0(a1, (const char *)dword_9F23BC);
  if ( result )
    return -1;
  return result;
}


// ===== 4ad810 Arrays::GetMemberIDByString<Arrays::DropTilePriorityTable>(char const*) =====
int __fastcall Arrays::GetMemberIDByString<Arrays::DropTilePriorityTable>(char *a1)
{
  int v2; // r5
  int v3; // r4
  int v4; // r7

  v2 = Arrays::DropTilePriorityTable::size;
  if ( !Arrays::DropTilePriorityTable::size )
    return -1;
  v3 = 0;
  v4 = Arrays::DropTilePriorityTable::m_memberNames;
  while ( LC_API_STRCMP_0(a1, *(const char **)(v4 + 4 * v3)) )
  {
    if ( ++v3 == v2 )
      return -1;
  }
  return v3;
}


// ===== 4ad884 Structs::GetMemberIDByString<Structs::TileOffsetList>(char const*) =====
int __fastcall Structs::GetMemberIDByString<Structs::TileOffsetList>(const char *a1)
{
  int result; // r0

  result = LC_API_STRCMP_0(a1, (const char *)dword_9F232C);
  if ( result )
    return -1;
  return result;
}


// ===== 4ad8b4 Arrays::GetMemberIDByString<Arrays::ItemAudioVisualTable>(char const*) =====
int __fastcall Arrays::GetMemberIDByString<Arrays::ItemAudioVisualTable>(char *a1)
{
  int v2; // r5
  int v3; // r4
  int v4; // r7

  v2 = Arrays::ItemAudioVisualTable::size;
  if ( !Arrays::ItemAudioVisualTable::size )
    return -1;
  v3 = 0;
  v4 = Arrays::ItemAudioVisualTable::m_memberNames;
  while ( LC_API_STRCMP_0(a1, *(const char **)(v4 + 4 * v3)) )
  {
    if ( ++v3 == v2 )
      return -1;
  }
  return v3;
}


// ===== 4ad928 Structs::GetMemberIDByString<Structs::ItemAudioVisual>(char const*) =====
int __fastcall Structs::GetMemberIDByString<Structs::ItemAudioVisual>(char *a1)
{
  const char **v2; // r4
  int v3; // r5

  v2 = (const char **)&Structs::ItemAudioVisual::m_dataNames;
  v3 = 0;
  while ( LC_API_STRCMP_0(a1, v2[5]) )
  {
    ++v3;
    v2 += 6;
    if ( v3 == 3 )
      return -1;
  }
  return v3;
}


// ===== 4ad980 Structs::GetMemberIDByString<Structs::LevelDeclaration>(char const*) =====
int __fastcall Structs::GetMemberIDByString<Structs::LevelDeclaration>(char *a1)
{
  const char **v2; // r5
  int v3; // r4

  v2 = (const char **)&Structs::LevelDeclaration::m_dataNames;
  v3 = 0;
  while ( LC_API_STRCMP_0(a1, v2[5]) )
  {
    ++v3;
    v2 += 6;
    if ( v3 == 15 )
      return -1;
  }
  return v3;
}


// ===== 4ad9d8 Arrays::GetMemberIDByString<Arrays::FastTravelList>(char const*) =====
int __fastcall Arrays::GetMemberIDByString<Arrays::FastTravelList>(char *a1)
{
  int v2; // r5
  int v3; // r4
  int v4; // r7

  v2 = Arrays::FastTravelList::size;
  if ( !Arrays::FastTravelList::size )
    return -1;
  v3 = 0;
  v4 = Arrays::FastTravelList::m_memberNames;
  while ( LC_API_STRCMP_0(a1, *(const char **)(v4 + 4 * v3)) )
  {
    if ( ++v3 == v2 )
      return -1;
  }
  return v3;
}


// ===== 4ada4c Structs::GetMemberIDByString<Structs::FastTravelDestination>(char const*) =====
int __fastcall Structs::GetMemberIDByString<Structs::FastTravelDestination>(char *a1)
{
  const char **v2; // r4
  int v3; // r5

  v2 = (const char **)&Structs::FastTravelDestination::m_dataNames;
  v3 = 0;
  while ( LC_API_STRCMP_0(a1, v2[5]) )
  {
    ++v3;
    v2 += 6;
    if ( v3 == 5 )
      return -1;
  }
  return v3;
}


// ===== 4adaa4 Arrays::GetMemberIDByString<Arrays::ItemBonusAttrMonopoly>(char const*) =====
int __fastcall Arrays::GetMemberIDByString<Arrays::ItemBonusAttrMonopoly>(char *a1)
{
  int v2; // r5
  int v3; // r4
  int v4; // r7

  v2 = Arrays::ItemBonusAttrMonopoly::size;
  if ( !Arrays::ItemBonusAttrMonopoly::size )
    return -1;
  v3 = 0;
  v4 = Arrays::ItemBonusAttrMonopoly::m_memberNames;
  while ( LC_API_STRCMP_0(a1, *(const char **)(v4 + 4 * v3)) )
  {
    if ( ++v3 == v2 )
      return -1;
  }
  return v3;
}


// ===== 4adb18 Structs::GetMemberIDByString<Structs::ItemBonusAttrList>(char const*) =====
int __fastcall Structs::GetMemberIDByString<Structs::ItemBonusAttrList>(const char *a1)
{
  int result; // r0

  result = LC_API_STRCMP_0(a1, (const char *)dword_9EEC54);
  if ( result )
    return -1;
  return result;
}


// ===== 4adb48 Arrays::GetMemberIDByString<Arrays::ItemPowerTable>(char const*) =====
int __fastcall Arrays::GetMemberIDByString<Arrays::ItemPowerTable>(char *a1)
{
  int v2; // r5
  int v3; // r4
  int v4; // r7

  v2 = Arrays::ItemPowerTable::size;
  if ( !Arrays::ItemPowerTable::size )
    return -1;
  v3 = 0;
  v4 = Arrays::ItemPowerTable::m_memberNames;
  while ( LC_API_STRCMP_0(a1, *(const char **)(v4 + 4 * v3)) )
  {
    if ( ++v3 == v2 )
      return -1;
  }
  return v3;
}


// ===== 4adbbc Structs::GetMemberIDByString<Structs::ItemPowerRef>(char const*) =====
int __fastcall Structs::GetMemberIDByString<Structs::ItemPowerRef>(char *a1)
{
  const char **v2; // r5
  int v3; // r4

  v2 = (const char **)&Structs::ItemPowerRef::m_dataNames;
  v3 = 0;
  while ( LC_API_STRCMP_0(a1, v2[5]) )
  {
    ++v3;
    v2 += 6;
    if ( v3 == 8 )
      return -1;
  }
  return v3;
}


// ===== 4adc14 Arrays::GetMemberIDByString<Arrays::ItemPowerList>(char const*) =====
int __fastcall Arrays::GetMemberIDByString<Arrays::ItemPowerList>(char *a1)
{
  int v2; // r5
  int v3; // r4
  int v4; // r7

  v2 = Arrays::ItemPowerList::size;
  if ( !Arrays::ItemPowerList::size )
    return -1;
  v3 = 0;
  v4 = Arrays::ItemPowerList::m_memberNames;
  while ( LC_API_STRCMP_0(a1, *(const char **)(v4 + 4 * v3)) )
  {
    if ( ++v3 == v2 )
      return -1;
  }
  return v3;
}


// ===== 4adc88 Structs::GetMemberIDByString<Structs::ItemPowerEntryList>(char const*) =====
int __fastcall Structs::GetMemberIDByString<Structs::ItemPowerEntryList>(const char *a1)
{
  int result; // r0

  result = LC_API_STRCMP_0(a1, (const char *)dword_9EC1DC);
  if ( result )
    return -1;
  return result;
}


// ===== 4adcb8 Arrays::GetMemberIDByString<Arrays::HintPages>(char const*) =====
int __fastcall Arrays::GetMemberIDByString<Arrays::HintPages>(char *a1)
{
  int v2; // r5
  int v3; // r4
  int v4; // r7

  v2 = Arrays::HintPages::size;
  if ( !Arrays::HintPages::size )
    return -1;
  v3 = 0;
  v4 = Arrays::HintPages::m_memberNames;
  while ( LC_API_STRCMP_0(a1, *(const char **)(v4 + 4 * v3)) )
  {
    if ( ++v3 == v2 )
      return -1;
  }
  return v3;
}


// ===== 4add2c Structs::GetMemberIDByString<Structs::HintPage>(char const*) =====
int __fastcall Structs::GetMemberIDByString<Structs::HintPage>(const char *a1)
{
  int result; // r0

  result = LC_API_STRCMP_0(a1, (const char *)dword_9EC17C);
  if ( result )
  {
    if ( LC_API_STRCMP_0(a1, (const char *)dword_9EC194) )
      return -1;
    else
      return 1;
  }
  return result;
}


// ===== 4add78 Arrays::GetMemberIDByString<Arrays::HelpPages>(char const*) =====
int __fastcall Arrays::GetMemberIDByString<Arrays::HelpPages>(char *a1)
{
  int v2; // r5
  int v3; // r4
  int v4; // r7

  v2 = Arrays::HelpPages::size;
  if ( !Arrays::HelpPages::size )
    return -1;
  v3 = 0;
  v4 = Arrays::HelpPages::m_memberNames;
  while ( LC_API_STRCMP_0(a1, *(const char **)(v4 + 4 * v3)) )
  {
    if ( ++v3 == v2 )
      return -1;
  }
  return v3;
}


// ===== 4addec Structs::GetMemberIDByString<Structs::HelpPage>(char const*) =====
int __fastcall Structs::GetMemberIDByString<Structs::HelpPage>(const char *a1)
{
  int result; // r0

  result = LC_API_STRCMP_0(a1, (const char *)dword_9EC14C);
  if ( result )
  {
    if ( LC_API_STRCMP_0(a1, (const char *)dword_9EC164) )
      return -1;
    else
      return 1;
  }
  return result;
}


// ===== 4ade38 Arrays::GetMemberIDByString<Arrays::TriggerTraps>(char const*) =====
int __fastcall Arrays::GetMemberIDByString<Arrays::TriggerTraps>(char *a1)
{
  int v2; // r5
  int v3; // r4
  int v4; // r7

  v2 = Arrays::TriggerTraps::size;
  if ( !Arrays::TriggerTraps::size )
    return -1;
  v3 = 0;
  v4 = Arrays::TriggerTraps::m_memberNames;
  while ( LC_API_STRCMP_0(a1, *(const char **)(v4 + 4 * v3)) )
  {
    if ( ++v3 == v2 )
      return -1;
  }
  return v3;
}


// ===== 4adeac Structs::GetMemberIDByString<Structs::TriggerTrap>(char const*) =====
int __fastcall Structs::GetMemberIDByString<Structs::TriggerTrap>(char *a1)
{
  const char **v2; // r4
  int v3; // r5

  v2 = (const char **)&Structs::TriggerTrap::m_dataNames;
  v3 = 0;
  while ( LC_API_STRCMP_0(a1, v2[5]) )
  {
    ++v3;
    v2 += 6;
    if ( v3 == 5 )
      return -1;
  }
  return v3;
}


// ===== 4adf04 Arrays::GetMemberIDByString<Arrays::TriggerPlates>(char const*) =====
int __fastcall Arrays::GetMemberIDByString<Arrays::TriggerPlates>(char *a1)
{
  int v2; // r5
  int v3; // r4
  int v4; // r7

  v2 = Arrays::TriggerPlates::size;
  if ( !Arrays::TriggerPlates::size )
    return -1;
  v3 = 0;
  v4 = Arrays::TriggerPlates::m_memberNames;
  while ( LC_API_STRCMP_0(a1, *(const char **)(v4 + 4 * v3)) )
  {
    if ( ++v3 == v2 )
      return -1;
  }
  return v3;
}


// ===== 4adf78 Structs::GetMemberIDByString<Structs::TriggerPlate>(char const*) =====
int __fastcall Structs::GetMemberIDByString<Structs::TriggerPlate>(char *a1)
{
  const char **v2; // r4
  int v3; // r5

  v2 = (const char **)&Structs::TriggerPlate::m_dataNames;
  v3 = 0;
  while ( LC_API_STRCMP_0(a1, v2[5]) )
  {
    ++v3;
    v2 += 6;
    if ( v3 == 7 )
      return -1;
  }
  return v3;
}


// ===== 4adfd0 Arrays::GetMemberIDByString<Arrays::TriggerObjects>(char const*) =====
int __fastcall Arrays::GetMemberIDByString<Arrays::TriggerObjects>(char *a1)
{
  int v2; // r5
  int v3; // r4
  int v4; // r7

  v2 = Arrays::TriggerObjects::size;
  if ( !Arrays::TriggerObjects::size )
    return -1;
  v3 = 0;
  v4 = Arrays::TriggerObjects::m_memberNames;
  while ( LC_API_STRCMP_0(a1, *(const char **)(v4 + 4 * v3)) )
  {
    if ( ++v3 == v2 )
      return -1;
  }
  return v3;
}


// ===== 4ae044 Structs::GetMemberIDByString<Structs::TriggerObject>(char const*) =====
int __fastcall Structs::GetMemberIDByString<Structs::TriggerObject>(char *a1)
{
  const char **v2; // r5
  int v3; // r4

  v2 = (const char **)&Structs::TriggerObject::m_dataNames;
  v3 = 0;
  while ( LC_API_STRCMP_0(a1, v2[5]) )
  {
    ++v3;
    v2 += 6;
    if ( v3 == 4 )
      return -1;
  }
  return v3;
}


// ===== 4ae09c Arrays::GetMemberIDByString<Arrays::TimerTraps>(char const*) =====
int __fastcall Arrays::GetMemberIDByString<Arrays::TimerTraps>(char *a1)
{
  int v2; // r5
  int v3; // r4
  int v4; // r7

  v2 = Arrays::TimerTraps::size;
  if ( !Arrays::TimerTraps::size )
    return -1;
  v3 = 0;
  v4 = Arrays::TimerTraps::m_memberNames;
  while ( LC_API_STRCMP_0(a1, *(const char **)(v4 + 4 * v3)) )
  {
    if ( ++v3 == v2 )
      return -1;
  }
  return v3;
}


// ===== 4ae110 Structs::GetMemberIDByString<Structs::TimerTrap>(char const*) =====
int __fastcall Structs::GetMemberIDByString<Structs::TimerTrap>(char *a1)
{
  const char **v2; // r4
  int v3; // r5

  v2 = (const char **)&Structs::TimerTrap::m_dataNames;
  v3 = 0;
  while ( LC_API_STRCMP_0(a1, v2[5]) )
  {
    ++v3;
    v2 += 6;
    if ( v3 == 6 )
      return -1;
  }
  return v3;
}


// ===== 4ae168 Arrays::GetMemberIDByString<Arrays::ProjectileTraps>(char const*) =====
int __fastcall Arrays::GetMemberIDByString<Arrays::ProjectileTraps>(char *a1)
{
  int v2; // r5
  int v3; // r4
  int v4; // r7

  v2 = Arrays::ProjectileTraps::size;
  if ( !Arrays::ProjectileTraps::size )
    return -1;
  v3 = 0;
  v4 = Arrays::ProjectileTraps::m_memberNames;
  while ( LC_API_STRCMP_0(a1, *(const char **)(v4 + 4 * v3)) )
  {
    if ( ++v3 == v2 )
      return -1;
  }
  return v3;
}


// ===== 4ae1dc Structs::GetMemberIDByString<Structs::ProjectileTrap>(char const*) =====
int __fastcall Structs::GetMemberIDByString<Structs::ProjectileTrap>(char *a1)
{
  const char **v2; // r5
  int v3; // r4

  v2 = (const char **)&Structs::ProjectileTrap::m_dataNames;
  v3 = 0;
  while ( LC_API_STRCMP_0(a1, v2[5]) )
  {
    ++v3;
    v2 += 6;
    if ( v3 == 8 )
      return -1;
  }
  return v3;
}


// ===== 4ae234 Structs::GetMemberIDByString<Structs::OpenableContainer>(char const*) =====
int __fastcall Structs::GetMemberIDByString<Structs::OpenableContainer>(char *a1)
{
  const char **v2; // r5
  int v3; // r4

  v2 = (const char **)&Structs::OpenableContainer::m_dataNames;
  v3 = 0;
  while ( LC_API_STRCMP_0(a1, v2[5]) )
  {
    ++v3;
    v2 += 6;
    if ( v3 == 8 )
      return -1;
  }
  return v3;
}


// ===== 4ae28c Arrays::GetMemberIDByString<Arrays::LiftableObjects>(char const*) =====
int __fastcall Arrays::GetMemberIDByString<Arrays::LiftableObjects>(char *a1)
{
  int v2; // r5
  int v3; // r4
  int v4; // r7

  v2 = Arrays::LiftableObjects::size;
  if ( !Arrays::LiftableObjects::size )
    return -1;
  v3 = 0;
  v4 = Arrays::LiftableObjects::m_memberNames;
  while ( LC_API_STRCMP_0(a1, *(const char **)(v4 + 4 * v3)) )
  {
    if ( ++v3 == v2 )
      return -1;
  }
  return v3;
}


// ===== 4ae300 Structs::GetMemberIDByString<Structs::LiftableObject>(char const*) =====
int __fastcall Structs::GetMemberIDByString<Structs::LiftableObject>(const char *a1)
{
  int result; // r0

  result = LC_API_STRCMP_0(a1, (const char *)dword_9EBDA4);
  if ( result )
    return -1;
  return result;
}


// ===== 4ae330 Arrays::GetMemberIDByString<Arrays::GameObjectDamager>(char const*) =====
int __fastcall Arrays::GetMemberIDByString<Arrays::GameObjectDamager>(char *a1)
{
  int v2; // r5
  int v3; // r4
  int v4; // r7

  v2 = Arrays::GameObjectDamager::size;
  if ( !Arrays::GameObjectDamager::size )
    return -1;
  v3 = 0;
  v4 = Arrays::GameObjectDamager::m_memberNames;
  while ( LC_API_STRCMP_0(a1, *(const char **)(v4 + 4 * v3)) )
  {
    if ( ++v3 == v2 )
      return -1;
  }
  return v3;
}


// ===== 4ae3a4 Structs::GetMemberIDByString<Structs::GameObjectDamage>(char const*) =====
int __fastcall Structs::GetMemberIDByString<Structs::GameObjectDamage>(char *a1)
{
  const char **v2; // r4
  int v3; // r5

  v2 = (const char **)&Structs::GameObjectDamage::m_dataNames;
  v3 = 0;
  while ( LC_API_STRCMP_0(a1, v2[5]) )
  {
    ++v3;
    v2 += 6;
    if ( v3 == 5 )
      return -1;
  }
  return v3;
}


// ===== 4ae3fc Arrays::GetMemberIDByString<Arrays::ExplosiveTraps>(char const*) =====
int __fastcall Arrays::GetMemberIDByString<Arrays::ExplosiveTraps>(char *a1)
{
  int v2; // r5
  int v3; // r4
  int v4; // r7

  v2 = Arrays::ExplosiveTraps::size;
  if ( !Arrays::ExplosiveTraps::size )
    return -1;
  v3 = 0;
  v4 = Arrays::ExplosiveTraps::m_memberNames;
  while ( LC_API_STRCMP_0(a1, *(const char **)(v4 + 4 * v3)) )
  {
    if ( ++v3 == v2 )
      return -1;
  }
  return v3;
}


// ===== 4ae470 Structs::GetMemberIDByString<Structs::ExplosiveTrap>(char const*) =====
int __fastcall Structs::GetMemberIDByString<Structs::ExplosiveTrap>(char *a1)
{
  const char **v2; // r5
  int v3; // r4

  v2 = (const char **)&Structs::ExplosiveTrap::m_dataNames;
  v3 = 0;
  while ( LC_API_STRCMP_0(a1, v2[5]) )
  {
    ++v3;
    v2 += 6;
    if ( v3 == 4 )
      return -1;
  }
  return v3;
}


// ===== 4ae4c8 Arrays::GetMemberIDByString<Arrays::Doors>(char const*) =====
int __fastcall Arrays::GetMemberIDByString<Arrays::Doors>(char *a1)
{
  int v2; // r5
  int v3; // r4
  int v4; // r7

  v2 = Arrays::Doors::size;
  if ( !Arrays::Doors::size )
    return -1;
  v3 = 0;
  v4 = Arrays::Doors::m_memberNames;
  while ( LC_API_STRCMP_0(a1, *(const char **)(v4 + 4 * v3)) )
  {
    if ( ++v3 == v2 )
      return -1;
  }
  return v3;
}


// ===== 4ae53c Structs::GetMemberIDByString<Structs::Door>(char const*) =====
int __fastcall Structs::GetMemberIDByString<Structs::Door>(char *a1)
{
  const char **v2; // r5
  int v3; // r4

  v2 = (const char **)&Structs::Door::m_dataNames;
  v3 = 0;
  while ( LC_API_STRCMP_0(a1, v2[5]) )
  {
    ++v3;
    v2 += 6;
    if ( v3 == 4 )
      return -1;
  }
  return v3;
}


// ===== 4ae594 Structs::GetMemberIDByString<Structs::DestructibleContainer>(char const*) =====
int __fastcall Structs::GetMemberIDByString<Structs::DestructibleContainer>(char *a1)
{
  const char **v2; // r5
  int v3; // r4

  v2 = (const char **)&Structs::DestructibleContainer::m_dataNames;
  v3 = 0;
  while ( LC_API_STRCMP_0(a1, v2[5]) )
  {
    ++v3;
    v2 += 6;
    if ( v3 == 15 )
      return -1;
  }
  return v3;
}


// ===== 4ae5ec Arrays::GetMemberIDByString<Arrays::FontPalette>(char const*) =====
int __fastcall Arrays::GetMemberIDByString<Arrays::FontPalette>(char *a1)
{
  int v2; // r5
  int v3; // r4
  int v4; // r7

  v2 = Arrays::FontPalette::size;
  if ( !Arrays::FontPalette::size )
    return -1;
  v3 = 0;
  v4 = Arrays::FontPalette::m_memberNames;
  while ( LC_API_STRCMP_0(a1, *(const char **)(v4 + 4 * v3)) )
  {
    if ( ++v3 == v2 )
      return -1;
  }
  return v3;
}


// ===== 4ae660 Structs::GetMemberIDByString<Structs::FontColorDef>(char const*) =====
int __fastcall Structs::GetMemberIDByString<Structs::FontColorDef>(const char *a1)
{
  int result; // r0

  result = LC_API_STRCMP_0(a1, (const char *)dword_9EBA28);
  if ( result )
  {
    if ( LC_API_STRCMP_0(a1, (const char *)dword_9EBA40) )
      return -1;
    else
      return 1;
  }
  return result;
}


// ===== 4ae6ac Arrays::GetMemberIDByString<Arrays::FaeryTable>(char const*) =====
int __fastcall Arrays::GetMemberIDByString<Arrays::FaeryTable>(char *a1)
{
  int v2; // r5
  int v3; // r4
  int v4; // r7

  v2 = Arrays::FaeryTable::size;
  if ( !Arrays::FaeryTable::size )
    return -1;
  v3 = 0;
  v4 = Arrays::FaeryTable::m_memberNames;
  while ( LC_API_STRCMP_0(a1, *(const char **)(v4 + 4 * v3)) )
  {
    if ( ++v3 == v2 )
      return -1;
  }
  return v3;
}


// ===== 4ae720 Structs::GetMemberIDByString<Structs::Faery>(char const*) =====
int __fastcall Structs::GetMemberIDByString<Structs::Faery>(char *a1)
{
  const char **v2; // r4
  int v3; // r5

  v2 = (const char **)&Structs::Faery::m_dataNames;
  v3 = 0;
  while ( LC_API_STRCMP_0(a1, v2[5]) )
  {
    ++v3;
    v2 += 6;
    if ( v3 == 7 )
      return -1;
  }
  return v3;
}


// ===== 4ae778 Arrays::GetMemberIDByString<Arrays::FaeryListTable>(char const*) =====
int __fastcall Arrays::GetMemberIDByString<Arrays::FaeryListTable>(char *a1)
{
  int v2; // r5
  int v3; // r4
  int v4; // r7

  v2 = Arrays::FaeryListTable::size;
  if ( !Arrays::FaeryListTable::size )
    return -1;
  v3 = 0;
  v4 = Arrays::FaeryListTable::m_memberNames;
  while ( LC_API_STRCMP_0(a1, *(const char **)(v4 + 4 * v3)) )
  {
    if ( ++v3 == v2 )
      return -1;
  }
  return v3;
}


// ===== 4ae7ec Structs::GetMemberIDByString<Structs::FaeryList>(char const*) =====
int __fastcall Structs::GetMemberIDByString<Structs::FaeryList>(const char *a1)
{
  int result; // r0

  result = LC_API_STRCMP_0(a1, (const char *)dword_9EB9F8);
  if ( result )
    return -1;
  return result;
}


// ===== 4ae81c Arrays::GetMemberIDByString<Arrays::FootstepEffectTable>(char const*) =====
int __fastcall Arrays::GetMemberIDByString<Arrays::FootstepEffectTable>(char *a1)
{
  int v2; // r5
  int v3; // r4
  int v4; // r7

  v2 = Arrays::FootstepEffectTable::size;
  if ( !Arrays::FootstepEffectTable::size )
    return -1;
  v3 = 0;
  v4 = Arrays::FootstepEffectTable::m_memberNames;
  while ( LC_API_STRCMP_0(a1, *(const char **)(v4 + 4 * v3)) )
  {
    if ( ++v3 == v2 )
      return -1;
  }
  return v3;
}


// ===== 4ae890 Structs::GetMemberIDByString<Structs::FootstepEffect>(char const*) =====
int __fastcall Structs::GetMemberIDByString<Structs::FootstepEffect>(char *a1)
{
  const char **v2; // r5
  int v3; // r4

  v2 = (const char **)&Structs::FootstepEffect::m_dataNames;
  v3 = 0;
  while ( LC_API_STRCMP_0(a1, v2[5]) )
  {
    ++v3;
    v2 += 6;
    if ( v3 == 4 )
      return -1;
  }
  return v3;
}


// ===== 4ae8e8 Arrays::GetMemberIDByString<Arrays::CharEffectTable>(char const*) =====
int __fastcall Arrays::GetMemberIDByString<Arrays::CharEffectTable>(char *a1)
{
  int v2; // r5
  int v3; // r4
  int v4; // r7

  v2 = Arrays::CharEffectTable::size;
  if ( !Arrays::CharEffectTable::size )
    return -1;
  v3 = 0;
  v4 = Arrays::CharEffectTable::m_memberNames;
  while ( LC_API_STRCMP_0(a1, *(const char **)(v4 + 4 * v3)) )
  {
    if ( ++v3 == v2 )
      return -1;
  }
  return v3;
}


// ===== 4ae95c Structs::GetMemberIDByString<Structs::CharEffect>(char const*) =====
int __fastcall Structs::GetMemberIDByString<Structs::CharEffect>(char *a1)
{
  const char **v2; // r4
  int v3; // r5

  v2 = (const char **)&Structs::CharEffect::m_dataNames;
  v3 = 0;
  while ( LC_API_STRCMP_0(a1, v2[5]) )
  {
    ++v3;
    v2 += 6;
    if ( v3 == 5 )
      return -1;
  }
  return v3;
}


// ===== 4ae9b4 Arrays::GetMemberIDByString<Arrays::AnimatedEffectTable>(char const*) =====
int __fastcall Arrays::GetMemberIDByString<Arrays::AnimatedEffectTable>(char *a1)
{
  int v2; // r5
  int v3; // r4
  int v4; // r7

  v2 = Arrays::AnimatedEffectTable::size;
  if ( !Arrays::AnimatedEffectTable::size )
    return -1;
  v3 = 0;
  v4 = Arrays::AnimatedEffectTable::m_memberNames;
  while ( LC_API_STRCMP_0(a1, *(const char **)(v4 + 4 * v3)) )
  {
    if ( ++v3 == v2 )
      return -1;
  }
  return v3;
}


// ===== 4aea28 Structs::GetMemberIDByString<Structs::AnimFXTpl>(char const*) =====
int __fastcall Structs::GetMemberIDByString<Structs::AnimFXTpl>(char *a1)
{
  const char **v2; // r5
  int v3; // r4

  v2 = (const char **)&Structs::AnimFXTpl::m_dataNames;
  v3 = 0;
  while ( LC_API_STRCMP_0(a1, v2[5]) )
  {
    ++v3;
    v2 += 6;
    if ( v3 == 4 )
      return -1;
  }
  return v3;
}


// ===== 4aea80 Arrays::GetMemberIDByString<Arrays::Dialogs>(char const*) =====
int __fastcall Arrays::GetMemberIDByString<Arrays::Dialogs>(char *a1)
{
  int v2; // r5
  int v3; // r4
  int v4; // r7

  v2 = Arrays::Dialogs::size;
  if ( !Arrays::Dialogs::size )
    return -1;
  v3 = 0;
  v4 = Arrays::Dialogs::m_memberNames;
  while ( LC_API_STRCMP_0(a1, *(const char **)(v4 + 4 * v3)) )
  {
    if ( ++v3 == v2 )
      return -1;
  }
  return v3;
}


// ===== 4aeaf4 Structs::GetMemberIDByString<Structs::DialogStepList>(char const*) =====
int __fastcall Structs::GetMemberIDByString<Structs::DialogStepList>(const char *a1)
{
  int result; // r0

  result = LC_API_STRCMP_0(a1, (const char *)dword_9EB6E0);
  if ( result )
    return -1;
  return result;
}


// ===== 4aeb24 Arrays::GetMemberIDByString<Arrays::DialogActors>(char const*) =====
int __fastcall Arrays::GetMemberIDByString<Arrays::DialogActors>(char *a1)
{
  int v2; // r5
  int v3; // r4
  int v4; // r7

  v2 = Arrays::DialogActors::size;
  if ( !Arrays::DialogActors::size )
    return -1;
  v3 = 0;
  v4 = Arrays::DialogActors::m_memberNames;
  while ( LC_API_STRCMP_0(a1, *(const char **)(v4 + 4 * v3)) )
  {
    if ( ++v3 == v2 )
      return -1;
  }
  return v3;
}


// ===== 4aeb98 Structs::GetMemberIDByString<Structs::DialogActor>(char const*) =====
int __fastcall Structs::GetMemberIDByString<Structs::DialogActor>(char *a1)
{
  const char **v2; // r4
  int v3; // r5

  v2 = (const char **)&Structs::DialogActor::m_dataNames;
  v3 = 0;
  while ( LC_API_STRCMP_0(a1, v2[5]) )
  {
    ++v3;
    v2 += 6;
    if ( v3 == 3 )
      return -1;
  }
  return v3;
}


// ===== 4aebf0 Arrays::GetMemberIDByString<Arrays::GameOptionTable>(char const*) =====
int __fastcall Arrays::GetMemberIDByString<Arrays::GameOptionTable>(char *a1)
{
  int v2; // r5
  int v3; // r4
  int v4; // r7

  v2 = Arrays::GameOptionTable::size;
  if ( !Arrays::GameOptionTable::size )
    return -1;
  v3 = 0;
  v4 = Arrays::GameOptionTable::m_memberNames;
  while ( LC_API_STRCMP_0(a1, *(const char **)(v4 + 4 * v3)) )
  {
    if ( ++v3 == v2 )
      return -1;
  }
  return v3;
}


// ===== 4aec64 Structs::GetMemberIDByString<Structs::GameOption>(char const*) =====
int __fastcall Structs::GetMemberIDByString<Structs::GameOption>(char *a1)
{
  const char **v2; // r4
  int v3; // r5

  v2 = (const char **)&Structs::GameOption::m_dataNames;
  v3 = 0;
  while ( LC_API_STRCMP_0(a1, v2[5]) )
  {
    ++v3;
    v2 += 6;
    if ( v3 == 7 )
      return -1;
  }
  return v3;
}


// ===== 4aecbc Arrays::GetMemberIDByString<Arrays::GameDifficulties>(char const*) =====
int __fastcall Arrays::GetMemberIDByString<Arrays::GameDifficulties>(char *a1)
{
  int v2; // r5
  int v3; // r4
  int v4; // r7

  v2 = Arrays::GameDifficulties::size;
  if ( !Arrays::GameDifficulties::size )
    return -1;
  v3 = 0;
  v4 = Arrays::GameDifficulties::m_memberNames;
  while ( LC_API_STRCMP_0(a1, *(const char **)(v4 + 4 * v3)) )
  {
    if ( ++v3 == v2 )
      return -1;
  }
  return v3;
}


// ===== 4aed30 Structs::GetMemberIDByString<Structs::GameDifficulty>(char const*) =====
int __fastcall Structs::GetMemberIDByString<Structs::GameDifficulty>(char *a1)
{
  const char **v2; // r4
  int v3; // r5

  v2 = (const char **)&Structs::GameDifficulty::m_dataNames;
  v3 = 0;
  while ( LC_API_STRCMP_0(a1, v2[5]) )
  {
    ++v3;
    v2 += 6;
    if ( v3 == 5 )
      return -1;
  }
  return v3;
}


// ===== 4aed88 Arrays::GetMemberIDByString<Arrays::DesignSettingsTable>(char const*) =====
int __fastcall Arrays::GetMemberIDByString<Arrays::DesignSettingsTable>(char *a1)
{
  int v2; // r5
  int v3; // r4
  int v4; // r7

  v2 = Arrays::DesignSettingsTable::size;
  if ( !Arrays::DesignSettingsTable::size )
    return -1;
  v3 = 0;
  v4 = Arrays::DesignSettingsTable::m_memberNames;
  while ( LC_API_STRCMP_0(a1, *(const char **)(v4 + 4 * v3)) )
  {
    if ( ++v3 == v2 )
      return -1;
  }
  return v3;
}


// ===== 4aedfc Structs::GetMemberIDByString<Structs::DesignSettings>(char const*) =====
int __fastcall Structs::GetMemberIDByString<Structs::DesignSettings>(char *a1)
{
  const char **v2; // r5
  int i; // r4

  v2 = (const char **)&Structs::DesignSettings::m_dataNames;
  for ( i = 0; i != 43; ++i )
  {
    if ( !LC_API_STRCMP_0(a1, v2[5]) )
      return i;
    v2 += 6;
  }
  return -1;
}


// ===== 4aee58 Arrays::GetMemberIDByString<Arrays::RectTable>(char const*) =====
int __fastcall Arrays::GetMemberIDByString<Arrays::RectTable>(char *a1)
{
  int v2; // r5
  int v3; // r4
  int v4; // r7

  v2 = Arrays::RectTable::size;
  if ( !Arrays::RectTable::size )
    return -1;
  v3 = 0;
  v4 = Arrays::RectTable::m_memberNames;
  while ( LC_API_STRCMP_0(a1, *(const char **)(v4 + 4 * v3)) )
  {
    if ( ++v3 == v2 )
      return -1;
  }
  return v3;
}


// ===== 4aeecc Structs::GetMemberIDByString<Structs::Rect>(char const*) =====
int __fastcall Structs::GetMemberIDByString<Structs::Rect>(char *a1)
{
  const char **v2; // r5
  int v3; // r4

  v2 = (const char **)&Structs::Rect::m_dataNames;
  v3 = 0;
  while ( LC_API_STRCMP_0(a1, v2[5]) )
  {
    ++v3;
    v2 += 6;
    if ( v3 == 4 )
      return -1;
  }
  return v3;
}


// ===== 4aef24 Arrays::GetMemberIDByString<Arrays::Charater_Templates>(char const*) =====
int __fastcall Arrays::GetMemberIDByString<Arrays::Charater_Templates>(char *a1)
{
  int v2; // r5
  int v3; // r4
  int v4; // r7

  v2 = Arrays::Charater_Templates::size;
  if ( !Arrays::Charater_Templates::size )
    return -1;
  v3 = 0;
  v4 = Arrays::Charater_Templates::m_memberNames;
  while ( LC_API_STRCMP_0(a1, *(const char **)(v4 + 4 * v3)) )
  {
    if ( ++v3 == v2 )
      return -1;
  }
  return v3;
}


// ===== 4aef98 Structs::GetMemberIDByString<Structs::CharTemplate>(char const*) =====
int __fastcall Structs::GetMemberIDByString<Structs::CharTemplate>(const char *a1)
{
  int result; // r0

  result = LC_API_STRCMP_0(a1, (const char *)dword_9EAC18);
  if ( result )
    return -1;
  return result;
}


// ===== 4aefc8 Arrays::GetMemberIDByString<Arrays::StatListTable>(char const*) =====
int __fastcall Arrays::GetMemberIDByString<Arrays::StatListTable>(char *a1)
{
  int v2; // r5
  int v3; // r4
  int v4; // r7

  v2 = Arrays::StatListTable::size;
  if ( !Arrays::StatListTable::size )
    return -1;
  v3 = 0;
  v4 = Arrays::StatListTable::m_memberNames;
  while ( LC_API_STRCMP_0(a1, *(const char **)(v4 + 4 * v3)) )
  {
    if ( ++v3 == v2 )
      return -1;
  }
  return v3;
}


// ===== 4af03c Structs::GetMemberIDByString<Structs::StatListList>(char const*) =====
int __fastcall Structs::GetMemberIDByString<Structs::StatListList>(const char *a1)
{
  int result; // r0

  result = LC_API_STRCMP_0(a1, (const char *)dword_9EABE4);
  if ( result )
    return -1;
  return result;
}


// ===== 4af06c Arrays::GetMemberIDByString<Arrays::StatAutoAssignSchemeTable>(char const*) =====
int __fastcall Arrays::GetMemberIDByString<Arrays::StatAutoAssignSchemeTable>(char *a1)
{
  int v2; // r5
  int v3; // r4
  int v4; // r7

  v2 = Arrays::StatAutoAssignSchemeTable::size;
  if ( !Arrays::StatAutoAssignSchemeTable::size )
    return -1;
  v3 = 0;
  v4 = Arrays::StatAutoAssignSchemeTable::m_memberNames;
  while ( LC_API_STRCMP_0(a1, *(const char **)(v4 + 4 * v3)) )
  {
    if ( ++v3 == v2 )
      return -1;
  }
  return v3;
}


// ===== 4af0e0 Structs::GetMemberIDByString<Structs::StatAutoAssignTargetList>(char const*) =====
int __fastcall Structs::GetMemberIDByString<Structs::StatAutoAssignTargetList>(const char *a1)
{
  int result; // r0

  result = LC_API_STRCMP_0(a1, (const char *)dword_9EABCC);
  if ( result )
    return -1;
  return result;
}


// ===== 4af110 Structs::GetMemberIDByString<Structs::CharacterProperties>(char const*) =====
int __fastcall Structs::GetMemberIDByString<Structs::CharacterProperties>(char *a1)
{
  _DWORD *v2; // r4
  int i; // r5

  v2 = Structs::CharacterProperties::m_dataNames;
  for ( i = 0; i != 224; ++i )
  {
    if ( !LC_API_STRCMP_0(a1, (const char *)v2[5]) )
      return i;
    v2 += 6;
  }
  return -1;
}


// ===== 4af16c Arrays::GetMemberIDByString<Arrays::ClassTable>(char const*) =====
int __fastcall Arrays::GetMemberIDByString<Arrays::ClassTable>(char *a1)
{
  int v2; // r5
  int v3; // r4
  int v4; // r7

  v2 = Arrays::ClassTable::size;
  if ( !Arrays::ClassTable::size )
    return -1;
  v3 = 0;
  v4 = Arrays::ClassTable::m_memberNames;
  while ( LC_API_STRCMP_0(a1, *(const char **)(v4 + 4 * v3)) )
  {
    if ( ++v3 == v2 )
      return -1;
  }
  return v3;
}


// ===== 4af1e0 Structs::GetMemberIDByString<Structs::ClassFuncList>(char const*) =====
int __fastcall Structs::GetMemberIDByString<Structs::ClassFuncList>(const char *a1)
{
  int result; // r0

  result = LC_API_STRCMP_0(a1, (const char *)dword_9A6F10);
  if ( result )
    return -1;
  return result;
}


// ===== 4af210 Arrays::GetMemberIDByString<Arrays::CharAnimTable>(char const*) =====
int __fastcall Arrays::GetMemberIDByString<Arrays::CharAnimTable>(char *a1)
{
  int v2; // r5
  int v3; // r4
  int v4; // r7

  v2 = Arrays::CharAnimTable::size;
  if ( !Arrays::CharAnimTable::size )
    return -1;
  v3 = 0;
  v4 = Arrays::CharAnimTable::m_memberNames;
  while ( LC_API_STRCMP_0(a1, *(const char **)(v4 + 4 * v3)) )
  {
    if ( ++v3 == v2 )
      return -1;
  }
  return v3;
}


// ===== 4af284 Structs::GetMemberIDByString<Structs::CharAnim>(char const*) =====
int __fastcall Structs::GetMemberIDByString<Structs::CharAnim>(char *a1)
{
  const char **v2; // r4
  int i; // r5

  v2 = (const char **)&Structs::CharAnim::m_dataNames;
  for ( i = 0; i != 37; ++i )
  {
    if ( !LC_API_STRCMP_0(a1, v2[5]) )
      return i;
    v2 += 6;
  }
  return -1;
}


// ===== 4af2e0 Arrays::GetMemberIDByString<Arrays::CamAnimSetTable>(char const*) =====
int __fastcall Arrays::GetMemberIDByString<Arrays::CamAnimSetTable>(char *a1)
{
  int v2; // r5
  int v3; // r4
  int v4; // r7

  v2 = Arrays::CamAnimSetTable::size;
  if ( !Arrays::CamAnimSetTable::size )
    return -1;
  v3 = 0;
  v4 = Arrays::CamAnimSetTable::m_memberNames;
  while ( LC_API_STRCMP_0(a1, *(const char **)(v4 + 4 * v3)) )
  {
    if ( ++v3 == v2 )
      return -1;
  }
  return v3;
}


// ===== 4af354 Structs::GetMemberIDByString<Structs::CamAnimSet>(char const*) =====
int __fastcall Structs::GetMemberIDByString<Structs::CamAnimSet>(char *a1)
{
  const char **v2; // r4
  int v3; // r5

  v2 = (const char **)&Structs::CamAnimSet::m_dataNames;
  v3 = 0;
  while ( LC_API_STRCMP_0(a1, v2[5]) )
  {
    ++v3;
    v2 += 6;
    if ( v3 == 5 )
      return -1;
  }
  return v3;
}


// ===== 4af3ac Arrays::GetMemberIDByString<Arrays::AnimTable>(char const*) =====
int __fastcall Arrays::GetMemberIDByString<Arrays::AnimTable>(char *a1)
{
  int v2; // r5
  int v3; // r4
  int v4; // r7

  v2 = Arrays::AnimTable::size;
  if ( !Arrays::AnimTable::size )
    return -1;
  v3 = 0;
  v4 = Arrays::AnimTable::m_memberNames;
  while ( LC_API_STRCMP_0(a1, *(const char **)(v4 + 4 * v3)) )
  {
    if ( ++v3 == v2 )
      return -1;
  }
  return v3;
}


// ===== 4af420 Structs::GetMemberIDByString<Structs::AnimTpl>(char const*) =====
int __fastcall Structs::GetMemberIDByString<Structs::AnimTpl>(char *a1)
{
  const char **v2; // r4
  int v3; // r5

  v2 = (const char **)&Structs::AnimTpl::m_dataNames;
  v3 = 0;
  while ( LC_API_STRCMP_0(a1, v2[5]) )
  {
    ++v3;
    v2 += 6;
    if ( v3 == 3 )
      return -1;
  }
  return v3;
}


// ===== 4af478 Arrays::GetMemberIDByString<Arrays::AIFactionTable>(char const*) =====
int __fastcall Arrays::GetMemberIDByString<Arrays::AIFactionTable>(char *a1)
{
  int v2; // r5
  int v3; // r4
  int v4; // r7

  v2 = Arrays::AIFactionTable::size;
  if ( !Arrays::AIFactionTable::size )
    return -1;
  v3 = 0;
  v4 = Arrays::AIFactionTable::m_memberNames;
  while ( LC_API_STRCMP_0(a1, *(const char **)(v4 + 4 * v3)) )
  {
    if ( ++v3 == v2 )
      return -1;
  }
  return v3;
}


// ===== 4af4ec Structs::GetMemberIDByString<Structs::AIFactions>(char const*) =====
int __fastcall Structs::GetMemberIDByString<Structs::AIFactions>(const char *a1)
{
  int result; // r0

  result = LC_API_STRCMP_0(a1, (const char *)dword_9A6928);
  if ( result )
    return -1;
  return result;
}


// ===== 4af51c Arrays::GetMemberIDByString<Arrays::AITable>(char const*) =====
int __fastcall Arrays::GetMemberIDByString<Arrays::AITable>(char *a1)
{
  int v2; // r5
  int v3; // r4
  int v4; // r7

  v2 = Arrays::AITable::size;
  if ( !Arrays::AITable::size )
    return -1;
  v3 = 0;
  v4 = Arrays::AITable::m_memberNames;
  while ( LC_API_STRCMP_0(a1, *(const char **)(v4 + 4 * v3)) )
  {
    if ( ++v3 == v2 )
      return -1;
  }
  return v3;
}


// ===== 4af590 Structs::GetMemberIDByString<Structs::AIProps>(char const*) =====
int __fastcall Structs::GetMemberIDByString<Structs::AIProps>(char *a1)
{
  const char **v2; // r5
  int v3; // r4

  v2 = (const char **)&Structs::AIProps::m_dataNames;
  v3 = 0;
  while ( LC_API_STRCMP_0(a1, v2[5]) )
  {
    ++v3;
    v2 += 6;
    if ( v3 == 15 )
      return -1;
  }
  return v3;
}


// ===== 4af5e8 Arrays::GameDifficulties::read(IStreamBase *) =====
_DWORD *__fastcall Arrays::GameDifficulties::read(Arrays::GameDifficulties *this, IStreamBase *a2)
{
  _DWORD *result; // r0
  int v4; // r3
  int i; // r2
  int v6; // r4
  unsigned int v7; // r5
  int v8; // [sp+4h] [bp-8h]

  v8 = StreamReader::readAs<unsigned int>((int)this);
  Arrays::GameDifficulties::finalize((Arrays::GameDifficulties *)v8);
  Arrays::GameDifficulties::size = v8;
  result = operator new[](8 * (3 * v8 + 1), 1);
  *result = 24;
  result[1] = v8;
  v4 = (int)(result + 2);
  if ( v8 )
  {
    for ( i = 0; i != v8; ++i )
    {
      result[2] = off_96B698;
      result += 6;
    }
  }
  Arrays::GameDifficulties::members = v4;
  if ( Arrays::GameDifficulties::size )
  {
    v6 = 0;
    v7 = 0;
    while ( 1 )
    {
      result = (_DWORD *)(*(int (__fastcall **)(int, Arrays::GameDifficulties *))(*(_DWORD *)(v4 + v6) + 12))(
                           v4 + v6,
                           this);
      ++v7;
      v6 += 24;
      if ( Arrays::GameDifficulties::size <= v7 )
        break;
      v4 = Arrays::GameDifficulties::members;
    }
  }
  return result;
}


// ===== 4af72c `global constructor keyed to'.._.._sources_Data_PyData_PyDataArrays.cpp =====
int `global constructor keyed to'.._.._sources_Data_PyData_PyDataArrays.cpp()
{
  int result; // r0

  result = `guard variable for'Singleton<Application>::s_inst;
  dword_9A640C = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9A6408 = 1056964608;
  if ( (`guard variable for'Singleton<Application>::s_inst & 1) == 0 )
  {
    `guard variable for'Singleton<Application>::s_inst = 1;
    Application::Application((Application *)&Singleton<Application>::s_inst);
    return _aeabi_atexit((int)&Singleton<Application>::s_inst, (int)Application::~Application, (int)&_dso_handle);
  }
  return result;
}


// ===== 4af7b4 std::vector<PyDataArrays::_Funcs,std::allocator<PyDataArrays::_Funcs>>::~vector() =====
int __fastcall std::vector<PyDataArrays::_Funcs>::~vector(int a1)
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


// ===== 4af7f4 std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,int (*)(char const*)>,std::priv::_Select1st<std::pair<std::string const,int (*)(char const*)>>,std::priv::_MapTraitsT<std::pair<std::string const,int (*)(char const*)>>,std::allocator<std::pair<std::string const,int (*)(char const*)>>>::_M_erase(std::priv::_Rb_tree_node_base *) =====
void __fastcall std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,int (*)(char const*)>,std::priv::_Select1st<std::pair<std::string const,int (*)(char const*)>>,std::priv::_MapTraitsT<std::pair<std::string const,int (*)(char const*)>>,std::allocator<std::pair<std::string const,int (*)(char const*)>>>::_M_erase(
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
      std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,int (*)(char const*)>,std::priv::_Select1st<std::pair<std::string const,int (*)(char const*)>>,std::priv::_MapTraitsT<std::pair<std::string const,int (*)(char const*)>>,std::allocator<std::pair<std::string const,int (*)(char const*)>>>::_M_erase(
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


// ===== 4af834 std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,std::vector<PyDataArrays::_Funcs,std::allocator<PyDataArrays::_Funcs>>>,std::priv::_Select1st<std::pair<std::string const,std::vector<PyDataArrays::_Funcs,std::allocator<PyDataArrays::_Funcs>>>>,std::priv::_MapTraitsT<std::pair<std::string const,std::vector<PyDataArrays::_Funcs,std::allocator<PyDataArrays::_Funcs>>>>,std::allocator<std::pair<std::string const,std::vector<PyDataArrays::_Funcs,std::allocator<PyDataArrays::_Funcs>>>>>::_M_erase(std::priv::_Rb_tree_node_base *) =====
void __fastcall std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,std::vector<PyDataArrays::_Funcs>>,std::priv::_Select1st<std::pair<std::string const,std::vector<PyDataArrays::_Funcs>>>,std::priv::_MapTraitsT<std::pair<std::string const,std::vector<PyDataArrays::_Funcs>>>,std::allocator<std::pair<std::string const,std::vector<PyDataArrays::_Funcs>>>>::_M_erase(
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
      std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,std::vector<PyDataArrays::_Funcs>>,std::priv::_Select1st<std::pair<std::string const,std::vector<PyDataArrays::_Funcs>>>,std::priv::_MapTraitsT<std::pair<std::string const,std::vector<PyDataArrays::_Funcs>>>,std::allocator<std::pair<std::string const,std::vector<PyDataArrays::_Funcs>>>>::_M_erase(
        a1,
        *(_DWORD *)(v2 + 12));
      v4 = *(_DWORD *)(v2 + 8);
      std::vector<PyDataArrays::_Funcs>::~vector(v2 + 40);
      std::string::~string((std::string *)(v2 + 16));
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer((void *)v2, 0x34u);
      v2 = v4;
    }
    while ( v4 );
  }
}


// ===== 4af87c PyDataArrays::~PyDataArrays() =====
void __fastcall PyDataArrays::~PyDataArrays(PyDataArrays *this)
{
  char *v1; // r4
  char *v3; // r5
  int v4; // r7
  int i; // r8
  char *v6; // r2
  int v7; // r3

  v1 = *((char **)this + 3);
  v3 = (char *)this + 4;
  *(_DWORD *)this = off_969D60;
  while ( v3 != v1 )
  {
    while ( 1 )
    {
      v4 = *((_DWORD *)v1 + 10);
      for ( i = *((_DWORD *)v1 + 11); v4 != i; v4 += 8 )
        (*(void (**)(void))(v4 + 4))();
      v6 = *((char **)v1 + 3);
      if ( !v6 )
        break;
      while ( *((_DWORD *)v6 + 2) )
        v6 = *((char **)v6 + 2);
      v1 = v6;
      if ( v3 == v6 )
        goto LABEL_10;
    }
    v7 = *((_DWORD *)v1 + 1);
    if ( *(char **)(v7 + 12) == v1 )
    {
      do
      {
        v1 = (char *)v7;
        v7 = *(_DWORD *)(v7 + 4);
      }
      while ( *(char **)(v7 + 12) == v1 );
      v6 = *((char **)v1 + 3);
    }
    if ( v6 != (char *)v7 )
      v1 = (char *)v7;
  }
LABEL_10:
  if ( *((_DWORD *)this + 11) )
  {
    std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,int (*)(char const*)>,std::priv::_Select1st<std::pair<std::string const,int (*)(char const*)>>,std::priv::_MapTraitsT<std::pair<std::string const,int (*)(char const*)>>,std::allocator<std::pair<std::string const,int (*)(char const*)>>>::_M_erase(
      (int)this + 28,
      *((_DWORD *)this + 8));
    *((_DWORD *)this + 10) = (char *)this + 28;
    *((_DWORD *)this + 11) = 0;
    *((_DWORD *)this + 9) = (char *)this + 28;
    *((_DWORD *)this + 8) = 0;
  }
  if ( *((_DWORD *)this + 5) )
  {
    std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,std::vector<PyDataArrays::_Funcs>>,std::priv::_Select1st<std::pair<std::string const,std::vector<PyDataArrays::_Funcs>>>,std::priv::_MapTraitsT<std::pair<std::string const,std::vector<PyDataArrays::_Funcs>>>,std::allocator<std::pair<std::string const,std::vector<PyDataArrays::_Funcs>>>>::_M_erase(
      (int)v3,
      *((_DWORD *)this + 2));
    *((_DWORD *)this + 4) = v1;
    *((_DWORD *)this + 5) = 0;
    *((_DWORD *)this + 3) = v1;
    *((_DWORD *)this + 2) = 0;
  }
}


// ===== 4af9a0 PyDataArrays::~PyDataArrays() =====
void __fastcall PyDataArrays::~PyDataArrays(PyDataArrays *this)
{
  PyDataArrays::~PyDataArrays(this);
  CustomFree(this);
}


// ===== 4af9bc PyDataArrays::~PyDataArrays() =====
void __fastcall PyDataArrays::~PyDataArrays(PyDataArrays *this)
{
  char *v1; // r4
  char *v3; // r5
  int v4; // r7
  int i; // r8
  char *v6; // r2
  int v7; // r3

  v1 = *((char **)this + 3);
  v3 = (char *)this + 4;
  *(_DWORD *)this = off_969D60;
  while ( v3 != v1 )
  {
    while ( 1 )
    {
      v4 = *((_DWORD *)v1 + 10);
      for ( i = *((_DWORD *)v1 + 11); v4 != i; v4 += 8 )
        (*(void (**)(void))(v4 + 4))();
      v6 = *((char **)v1 + 3);
      if ( !v6 )
        break;
      while ( *((_DWORD *)v6 + 2) )
        v6 = *((char **)v6 + 2);
      v1 = v6;
      if ( v3 == v6 )
        goto LABEL_10;
    }
    v7 = *((_DWORD *)v1 + 1);
    if ( *(char **)(v7 + 12) == v1 )
    {
      do
      {
        v1 = (char *)v7;
        v7 = *(_DWORD *)(v7 + 4);
      }
      while ( *(char **)(v7 + 12) == v1 );
      v6 = *((char **)v1 + 3);
    }
    if ( v6 != (char *)v7 )
      v1 = (char *)v7;
  }
LABEL_10:
  if ( *((_DWORD *)this + 11) )
  {
    std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,int (*)(char const*)>,std::priv::_Select1st<std::pair<std::string const,int (*)(char const*)>>,std::priv::_MapTraitsT<std::pair<std::string const,int (*)(char const*)>>,std::allocator<std::pair<std::string const,int (*)(char const*)>>>::_M_erase(
      (int)this + 28,
      *((_DWORD *)this + 8));
    *((_DWORD *)this + 10) = (char *)this + 28;
    *((_DWORD *)this + 11) = 0;
    *((_DWORD *)this + 9) = (char *)this + 28;
    *((_DWORD *)this + 8) = 0;
  }
  if ( *((_DWORD *)this + 5) )
  {
    std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,std::vector<PyDataArrays::_Funcs>>,std::priv::_Select1st<std::pair<std::string const,std::vector<PyDataArrays::_Funcs>>>,std::priv::_MapTraitsT<std::pair<std::string const,std::vector<PyDataArrays::_Funcs>>>,std::allocator<std::pair<std::string const,std::vector<PyDataArrays::_Funcs>>>>::_M_erase(
      (int)v3,
      *((_DWORD *)this + 2));
    *((_DWORD *)this + 4) = v1;
    *((_DWORD *)this + 5) = 0;
    *((_DWORD *)this + 3) = v1;
    *((_DWORD *)this + 2) = 0;
  }
}


// ===== 4afae0 std::allocator<PyDataArrays::_Funcs>::_M_allocate(uint,uint &) =====
void *__fastcall std::allocator<PyDataArrays::_Funcs>::_M_allocate(int a1, unsigned int a2, size_t *a3)
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


// ===== 4afb50 std::vector<PyDataArrays::_Funcs,std::allocator<PyDataArrays::_Funcs>>::_M_allocate_and_copy<PyDataArrays::_Funcs const*>(uint &,PyDataArrays::_Funcs const*,PyDataArrays::_Funcs const*) =====
char *__fastcall std::vector<PyDataArrays::_Funcs>::_M_allocate_and_copy<PyDataArrays::_Funcs const*>(
        int a1,
        unsigned int *a2,
        int a3,
        int a4)
{
  int v5; // r5
  char *result; // r0
  int v7; // r1
  char *v8; // r3
  int v9; // r2

  v5 = (a4 - a3) >> 3;
  result = (char *)std::allocator<PyDataArrays::_Funcs>::_M_allocate(a1 + 8, *a2, a2);
  if ( v5 > 0 )
  {
    v7 = 0;
    do
    {
      --v5;
      *(_DWORD *)&result[v7] = *(_DWORD *)(a3 + v7);
      v8 = &result[v7];
      v9 = *(_DWORD *)(a3 + v7 + 4);
      v7 += 8;
      *((_DWORD *)v8 + 1) = v9;
    }
    while ( v5 );
  }
  return result;
}


// ===== 4afba8 std::vector<PyDataArrays::_Funcs,std::allocator<PyDataArrays::_Funcs>>::operator=(std::vector<PyDataArrays::_Funcs,std::allocator<PyDataArrays::_Funcs>> const&) =====
char **__fastcall std::vector<PyDataArrays::_Funcs>::operator=(char **a1, int *a2)
{
  int v3; // r2
  int v4; // r3
  char *v5; // r6
  int v6; // r4
  int v7; // r7
  char *v8; // r12
  int v9; // r8
  int v10; // r0
  bool v11; // cc
  int v12; // r7
  unsigned int v13; // r0
  int v14; // r12
  char *v15; // r3
  int v16; // r0
  int v17; // r3
  char *v18; // r6
  int v19; // r4
  int v20; // r12
  int v21; // r2
  int v22; // r1
  int v24; // r0
  char *v25; // r3
  int v26; // r1
  char *v27; // r0
  char *v28; // r3
  char *v29; // r0
  size_t v30; // r1
  unsigned int v31; // r3
  int v32; // [sp+4h] [bp-4h] BYREF

  if ( a2 != (int *)a1 )
  {
    v3 = *a2;
    v4 = a2[1];
    v5 = *a1;
    v6 = (v4 - *a2) >> 3;
    v7 = v6;
    v8 = *a1;
    if ( v6 > (unsigned int)((a1[2] - *a1) >> 3) )
    {
      v32 = (v4 - *a2) >> 3;
      v27 = std::vector<PyDataArrays::_Funcs>::_M_allocate_and_copy<PyDataArrays::_Funcs const*>(
              (int)a1,
              (unsigned int *)&v32,
              v3,
              v4);
      v28 = a1[1];
      v18 = v27;
      v29 = *a1;
      if ( v28 != *a1 )
        v28 += 8 * ~((unsigned int)(v28 - 8 - v29) >> 3);
      if ( v28 )
      {
        v30 = (a1[2] - v28) & 0xFFFFFFF8;
        if ( v30 > 0x80 )
          CustomFree(v29);
        else
          __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v29, v30);
      }
      v31 = v32;
      v19 = 8 * v6;
      *a1 = v18;
      a1[2] = &v18[8 * v31];
      goto LABEL_22;
    }
    v9 = (int)a1[1];
    v10 = (v9 - (int)v5) >> 3;
    if ( v6 <= (unsigned int)v10 )
    {
      if ( v6 > 0 )
      {
        v24 = 0;
        do
        {
          --v6;
          *(_DWORD *)&v5[v24] = *(_DWORD *)(v3 + v24);
          v25 = &v5[v24];
          v26 = *(_DWORD *)(v3 + v24 + 4);
          v24 += 8;
          *((_DWORD *)v25 + 1) = v26;
        }
        while ( v6 );
        v18 = *a1;
        v19 = 8 * v7;
        goto LABEL_22;
      }
    }
    else
    {
      v12 = (v9 - (int)v5) >> 3;
      v11 = v10 <= 0;
      if ( v10 <= 0 )
        v12 = v9;
      v13 = v3 + 8 * v10;
      if ( !v11 )
      {
        v14 = 0;
        do
        {
          --v12;
          *(_DWORD *)&v5[v14] = *(_DWORD *)(v3 + v14);
          v15 = &v5[v14];
          v16 = *(_DWORD *)(v3 + v14 + 4);
          v14 += 8;
          *((_DWORD *)v15 + 1) = v16;
        }
        while ( v12 );
        v12 = (int)a1[1];
        v8 = *a1;
        v4 = a2[1];
        v13 = *a2 + ((v12 - (_DWORD)*a1) & 0xFFFFFFF8);
      }
      v17 = (int)(v4 - v13) >> 3;
      if ( v17 <= 0 )
      {
        v18 = v8;
        v19 = 8 * v6;
LABEL_22:
        a1[1] = &v18[v19];
        return a1;
      }
      v20 = 0;
      do
      {
        --v17;
        *(_DWORD *)(v12 + v20) = *(_DWORD *)(v13 + v20);
        v21 = v12 + v20;
        v22 = *(_DWORD *)(v13 + v20 + 4);
        v20 += 8;
        *(_DWORD *)(v21 + 4) = v22;
      }
      while ( v17 );
      v5 = *a1;
    }
    a1[1] = &v5[8 * v6];
  }
  return a1;
}


// ===== 4afd54 std::vector<PyDataArrays::_Funcs,std::allocator<PyDataArrays::_Funcs>>::vector(std::vector<PyDataArrays::_Funcs,std::allocator<PyDataArrays::_Funcs>> const&) =====
_DWORD *__fastcall std::vector<PyDataArrays::_Funcs>::vector(_DWORD *a1, _DWORD *a2)
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
  int v13; // r2
  size_t v15; // [sp+4h] [bp-8h] BYREF

  v4 = 0;
  v5 = (a2[1] - *a2) >> 3;
  v15 = v5;
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v6 = (char *)std::allocator<PyDataArrays::_Funcs>::_M_allocate((int)(a1 + 2), v5, &v15);
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
      v13 = *(_DWORD *)(v8 + v4 + 4);
      v4 += 8;
      *((_DWORD *)v12 + 1) = v13;
    }
    while ( v11 );
    v6 += 8 * v10;
  }
  a1[1] = v6;
  return a1;
}


// ===== 4afdf4 Arrays::LootTable::readNames(IStreamBase *) =====
int __fastcall Arrays::LootTable::readNames(Arrays::LootTable *this, IStreamBase *a2)
{
  int result; // r0
  unsigned int v4; // r4
  int v5; // r11
  int v6; // r2
  unsigned __int64 v7; // [sp+0h] [bp-1Ch]
  char *v8; // [sp+10h] [bp-Ch] BYREF
  unsigned int v9; // [sp+14h] [bp-8h]

  Arrays::LootTable::finalizeNames(this);
  result = StreamReader::readAs<unsigned int>((int)this);
  v9 = result;
  if ( Arrays::LootTable::size == result )
  {
    result = (int)operator new[](4 * result, 1);
    Arrays::LootTable::m_memberNames = result;
    if ( v9 )
    {
      v4 = 0;
      LODWORD(v7) = (char *)&v8 + 1;
      HIDWORD(v7) = (char *)&v8 + 2;
      do
      {
        StreamReader::readAs<unsigned int>((int)this, (int)&v8);
        v5 = Arrays::LootTable::m_memberNames;
        *(_DWORD *)(v5 + 4 * v4) = operator new[]((size_t)(v8 + 1), 1);
        result = StreamReader::readStringEx(
                   this,
                   *(IStreamBase **)(Arrays::LootTable::m_memberNames + 4 * v4),
                   v8,
                   0,
                   v7);
        v6 = *(_DWORD *)(Arrays::LootTable::m_memberNames + 4 * v4++);
        v8[v6] = 0;
      }
      while ( v9 > v4 );
    }
  }
  return result;
}


// ===== 4aff8c Arrays::LootTable::skipNames(IStreamBase *) =====
// attributes: thunk
int __fastcall Arrays::LootTable::skipNames(Arrays::LootTable *this, IStreamBase *a2)
{
  return Arrays::LootTable::readNames(this, a2);
}


// ===== 4aff90 Arrays::ItemTypeList::readNames(IStreamBase *) =====
int __fastcall Arrays::ItemTypeList::readNames(Arrays::ItemTypeList *this, IStreamBase *a2)
{
  int result; // r0
  unsigned int v4; // r4
  int v5; // r11
  int v6; // r2
  unsigned __int64 v7; // [sp+0h] [bp-1Ch]
  char *v8; // [sp+10h] [bp-Ch] BYREF
  unsigned int v9; // [sp+14h] [bp-8h]

  Arrays::ItemTypeList::finalizeNames(this);
  result = StreamReader::readAs<unsigned int>((int)this);
  v9 = result;
  if ( Arrays::ItemTypeList::size == result )
  {
    result = (int)operator new[](4 * result, 1);
    Arrays::ItemTypeList::m_memberNames = result;
    if ( v9 )
    {
      v4 = 0;
      LODWORD(v7) = (char *)&v8 + 1;
      HIDWORD(v7) = (char *)&v8 + 2;
      do
      {
        StreamReader::readAs<unsigned int>((int)this, (int)&v8);
        v5 = Arrays::ItemTypeList::m_memberNames;
        *(_DWORD *)(v5 + 4 * v4) = operator new[]((size_t)(v8 + 1), 1);
        result = StreamReader::readStringEx(
                   this,
                   *(IStreamBase **)(Arrays::ItemTypeList::m_memberNames + 4 * v4),
                   v8,
                   0,
                   v7);
        v6 = *(_DWORD *)(Arrays::ItemTypeList::m_memberNames + 4 * v4++);
        v8[v6] = 0;
      }
      while ( v9 > v4 );
    }
  }
  return result;
}


// ===== 4b0128 Arrays::ItemTypeList::skipNames(IStreamBase *) =====
// attributes: thunk
int __fastcall Arrays::ItemTypeList::skipNames(Arrays::ItemTypeList *this, IStreamBase *a2)
{
  return Arrays::ItemTypeList::readNames(this, a2);
}


// ===== 4b012c Arrays::NumProbArray::readNames(IStreamBase *) =====
int __fastcall Arrays::NumProbArray::readNames(Arrays::NumProbArray *this, IStreamBase *a2)
{
  int result; // r0
  unsigned int v4; // r4
  int v5; // r11
  int v6; // r2
  unsigned __int64 v7; // [sp+0h] [bp-1Ch]
  char *v8; // [sp+10h] [bp-Ch] BYREF
  unsigned int v9; // [sp+14h] [bp-8h]

  Arrays::NumProbArray::finalizeNames(this);
  result = StreamReader::readAs<unsigned int>((int)this);
  v9 = result;
  if ( Arrays::NumProbArray::size == result )
  {
    result = (int)operator new[](4 * result, 1);
    Arrays::NumProbArray::m_memberNames = result;
    if ( v9 )
    {
      v4 = 0;
      LODWORD(v7) = (char *)&v8 + 1;
      HIDWORD(v7) = (char *)&v8 + 2;
      do
      {
        StreamReader::readAs<unsigned int>((int)this, (int)&v8);
        v5 = Arrays::NumProbArray::m_memberNames;
        *(_DWORD *)(v5 + 4 * v4) = operator new[]((size_t)(v8 + 1), 1);
        result = StreamReader::readStringEx(
                   this,
                   *(IStreamBase **)(Arrays::NumProbArray::m_memberNames + 4 * v4),
                   v8,
                   0,
                   v7);
        v6 = *(_DWORD *)(Arrays::NumProbArray::m_memberNames + 4 * v4++);
        v8[v6] = 0;
      }
      while ( v9 > v4 );
    }
  }
  return result;
}


// ===== 4b02c4 Arrays::NumProbArray::skipNames(IStreamBase *) =====
// attributes: thunk
int __fastcall Arrays::NumProbArray::skipNames(Arrays::NumProbArray *this, IStreamBase *a2)
{
  return Arrays::NumProbArray::readNames(this, a2);
}


// ===== 4b02c8 Arrays::MerchantTable::readNames(IStreamBase *) =====
int __fastcall Arrays::MerchantTable::readNames(Arrays::MerchantTable *this, IStreamBase *a2)
{
  int v3; // r1
  int result; // r0
  unsigned int v5; // r4
  int v6; // r11
  int v7; // r2
  unsigned __int64 v8; // [sp+0h] [bp-1Ch]
  char *v9; // [sp+10h] [bp-Ch] BYREF
  unsigned int v10; // [sp+14h] [bp-8h]

  Arrays::MerchantTable::finalizeNames(this);
  result = StreamReader::readAs<unsigned int>(this, v3);
  v10 = result;
  if ( Arrays::MerchantTable::size == result )
  {
    result = operator new[](4 * result, 1);
    Arrays::MerchantTable::m_memberNames = result;
    if ( v10 )
    {
      v5 = 0;
      LODWORD(v8) = (char *)&v9 + 1;
      HIDWORD(v8) = (char *)&v9 + 2;
      do
      {
        StreamReader::readAs<unsigned int>(this, &v9);
        v6 = Arrays::MerchantTable::m_memberNames;
        *(_DWORD *)(v6 + 4 * v5) = operator new[](v9 + 1, 1);
        result = StreamReader::readStringEx(
                   this,
                   *(IStreamBase **)(Arrays::MerchantTable::m_memberNames + 4 * v5),
                   v9,
                   v8);
        v7 = *(_DWORD *)(Arrays::MerchantTable::m_memberNames + 4 * v5++);
        v9[v7] = 0;
      }
      while ( v10 > v5 );
    }
  }
  return result;
}


// ===== 4b0460 Arrays::MerchantTable::skipNames(IStreamBase *) =====
// attributes: thunk
int __fastcall Arrays::MerchantTable::skipNames(Arrays::MerchantTable *this, IStreamBase *a2)
{
  return Arrays::MerchantTable::readNames(this, a2);
}


// ===== 4b0464 Arrays::SkillListTable::readNames(IStreamBase *) =====
int __fastcall Arrays::SkillListTable::readNames(Arrays::SkillListTable *this, IStreamBase *a2)
{
  int result; // r0
  unsigned int v4; // r4
  int v5; // r11
  int v6; // r2
  unsigned __int64 v7; // [sp+0h] [bp-1Ch]
  char *v8; // [sp+10h] [bp-Ch] BYREF
  unsigned int v9; // [sp+14h] [bp-8h]

  Arrays::SkillListTable::finalizeNames(this);
  result = StreamReader::readAs<unsigned int>((int)this);
  v9 = result;
  if ( Arrays::SkillListTable::size == result )
  {
    result = (int)operator new[](4 * result, 1);
    Arrays::SkillListTable::m_memberNames = result;
    if ( v9 )
    {
      v4 = 0;
      LODWORD(v7) = (char *)&v8 + 1;
      HIDWORD(v7) = (char *)&v8 + 2;
      do
      {
        StreamReader::readAs<unsigned int>((int)this, (int)&v8);
        v5 = Arrays::SkillListTable::m_memberNames;
        *(_DWORD *)(v5 + 4 * v4) = operator new[]((size_t)(v8 + 1), 1);
        result = StreamReader::readStringEx(
                   this,
                   *(IStreamBase **)(Arrays::SkillListTable::m_memberNames + 4 * v4),
                   v8,
                   0,
                   v7);
        v6 = *(_DWORD *)(Arrays::SkillListTable::m_memberNames + 4 * v4++);
        v8[v6] = 0;
      }
      while ( v9 > v4 );
    }
  }
  return result;
}


// ===== 4b05fc Arrays::SkillListTable::skipNames(IStreamBase *) =====
// attributes: thunk
int __fastcall Arrays::SkillListTable::skipNames(Arrays::SkillListTable *this, IStreamBase *a2)
{
  return Arrays::SkillListTable::readNames(this, a2);
}


// ===== 4b0600 Arrays::ProjectileTable::readNames(IStreamBase *) =====
int __fastcall Arrays::ProjectileTable::readNames(Arrays::ProjectileTable *this, IStreamBase *a2)
{
  int result; // r0
  unsigned int v4; // r4
  int v5; // r11
  int v6; // r2
  unsigned __int64 v7; // [sp+0h] [bp-1Ch]
  char *v8; // [sp+10h] [bp-Ch] BYREF
  unsigned int v9; // [sp+14h] [bp-8h]

  Arrays::ProjectileTable::finalizeNames(this);
  result = StreamReader::readAs<unsigned int>((int)this);
  v9 = result;
  if ( Arrays::ProjectileTable::size == result )
  {
    result = (int)operator new[](4 * result, 1);
    Arrays::ProjectileTable::m_memberNames = result;
    if ( v9 )
    {
      v4 = 0;
      LODWORD(v7) = (char *)&v8 + 1;
      HIDWORD(v7) = (char *)&v8 + 2;
      do
      {
        StreamReader::readAs<unsigned int>((int)this, (int)&v8);
        v5 = Arrays::ProjectileTable::m_memberNames;
        *(_DWORD *)(v5 + 4 * v4) = operator new[]((size_t)(v8 + 1), 1);
        result = StreamReader::readStringEx(
                   this,
                   *(IStreamBase **)(Arrays::ProjectileTable::m_memberNames + 4 * v4),
                   v8,
                   0,
                   v7);
        v6 = *(_DWORD *)(Arrays::ProjectileTable::m_memberNames + 4 * v4++);
        v8[v6] = 0;
      }
      while ( v9 > v4 );
    }
  }
  return result;
}


// ===== 4b0798 Arrays::ProjectileTable::skipNames(IStreamBase *) =====
// attributes: thunk
int __fastcall Arrays::ProjectileTable::skipNames(Arrays::ProjectileTable *this, IStreamBase *a2)
{
  return Arrays::ProjectileTable::readNames(this, a2);
}


// ===== 4b079c Arrays::CharSoundsTable::readNames(IStreamBase *) =====
int __fastcall Arrays::CharSoundsTable::readNames(Arrays::CharSoundsTable *this, IStreamBase *a2)
{
  int result; // r0
  unsigned int v4; // r4
  int v5; // r11
  int v6; // r2
  unsigned __int64 v7; // [sp+0h] [bp-1Ch]
  char *v8; // [sp+10h] [bp-Ch] BYREF
  unsigned int v9; // [sp+14h] [bp-8h]

  Arrays::CharSoundsTable::finalizeNames(this);
  result = StreamReader::readAs<unsigned int>((int)this);
  v9 = result;
  if ( Arrays::CharSoundsTable::size == result )
  {
    result = (int)operator new[](4 * result, 1);
    Arrays::CharSoundsTable::m_memberNames = result;
    if ( v9 )
    {
      v4 = 0;
      LODWORD(v7) = (char *)&v8 + 1;
      HIDWORD(v7) = (char *)&v8 + 2;
      do
      {
        StreamReader::readAs<unsigned int>((int)this, (int)&v8);
        v5 = Arrays::CharSoundsTable::m_memberNames;
        *(_DWORD *)(v5 + 4 * v4) = operator new[]((size_t)(v8 + 1), 1);
        result = StreamReader::readStringEx(
                   this,
                   *(IStreamBase **)(Arrays::CharSoundsTable::m_memberNames + 4 * v4),
                   v8,
                   0,
                   v7);
        v6 = *(_DWORD *)(Arrays::CharSoundsTable::m_memberNames + 4 * v4++);
        v8[v6] = 0;
      }
      while ( v9 > v4 );
    }
  }
  return result;
}


// ===== 4b0934 Arrays::CharSoundsTable::skipNames(IStreamBase *) =====
// attributes: thunk
int __fastcall Arrays::CharSoundsTable::skipNames(Arrays::CharSoundsTable *this, IStreamBase *a2)
{
  return Arrays::CharSoundsTable::readNames(this, a2);
}


// ===== 4b0938 Arrays::SkillTable::readNames(IStreamBase *) =====
int __fastcall Arrays::SkillTable::readNames(Arrays::SkillTable *this, IStreamBase *a2)
{
  int result; // r0
  unsigned int v4; // r4
  int v5; // r11
  int v6; // r2
  unsigned __int64 v7; // [sp+0h] [bp-1Ch]
  char *v8; // [sp+10h] [bp-Ch] BYREF
  unsigned int v9; // [sp+14h] [bp-8h]

  Arrays::SkillTable::finalizeNames(this);
  result = StreamReader::readAs<unsigned int>((int)this);
  v9 = result;
  if ( Arrays::SkillTable::size == result )
  {
    result = (int)operator new[](4 * result, 1);
    Arrays::SkillTable::m_memberNames = result;
    if ( v9 )
    {
      v4 = 0;
      LODWORD(v7) = (char *)&v8 + 1;
      HIDWORD(v7) = (char *)&v8 + 2;
      do
      {
        StreamReader::readAs<unsigned int>((int)this, (int)&v8);
        v5 = Arrays::SkillTable::m_memberNames;
        *(_DWORD *)(v5 + 4 * v4) = operator new[]((size_t)(v8 + 1), 1);
        result = StreamReader::readStringEx(
                   this,
                   *(IStreamBase **)(Arrays::SkillTable::m_memberNames + 4 * v4),
                   v8,
                   0,
                   v7);
        v6 = *(_DWORD *)(Arrays::SkillTable::m_memberNames + 4 * v4++);
        v8[v6] = 0;
      }
      while ( v9 > v4 );
    }
  }
  return result;
}


// ===== 4b0ad0 Arrays::SoundBankPlayback::readNames(IStreamBase *) =====
int __fastcall Arrays::SoundBankPlayback::readNames(Arrays::SoundBankPlayback *this, IStreamBase *a2)
{
  int result; // r0
  unsigned int v4; // r4
  int v5; // r11
  int v6; // r2
  unsigned __int64 v7; // [sp+0h] [bp-1Ch]
  char *v8; // [sp+10h] [bp-Ch] BYREF
  unsigned int v9; // [sp+14h] [bp-8h]

  Arrays::SoundBankPlayback::finalizeNames(this);
  result = StreamReader::readAs<unsigned int>((int)this);
  v9 = result;
  if ( Arrays::SoundBankPlayback::size == result )
  {
    result = (int)operator new[](4 * result, 1);
    Arrays::SoundBankPlayback::m_memberNames = result;
    if ( v9 )
    {
      v4 = 0;
      LODWORD(v7) = (char *)&v8 + 1;
      HIDWORD(v7) = (char *)&v8 + 2;
      do
      {
        StreamReader::readAs<unsigned int>((int)this, (int)&v8);
        v5 = Arrays::SoundBankPlayback::m_memberNames;
        *(_DWORD *)(v5 + 4 * v4) = operator new[]((size_t)(v8 + 1), 1);
        result = StreamReader::readStringEx(
                   this,
                   *(IStreamBase **)(Arrays::SoundBankPlayback::m_memberNames + 4 * v4),
                   v8,
                   0,
                   v7);
        v6 = *(_DWORD *)(Arrays::SoundBankPlayback::m_memberNames + 4 * v4++);
        v8[v6] = 0;
      }
      while ( v9 > v4 );
    }
  }
  return result;
}


// ===== 4b0c68 Arrays::Listeners::readNames(IStreamBase *) =====
int __fastcall Arrays::Listeners::readNames(Arrays::Listeners *this, IStreamBase *a2)
{
  int result; // r0
  unsigned int v4; // r4
  int v5; // r11
  int v6; // r2
  unsigned __int64 v7; // [sp+0h] [bp-1Ch]
  char *v8; // [sp+10h] [bp-Ch] BYREF
  unsigned int v9; // [sp+14h] [bp-8h]

  Arrays::Listeners::finalizeNames(this);
  result = StreamReader::readAs<unsigned int>((int)this);
  v9 = result;
  if ( Arrays::Listeners::size == result )
  {
    result = (int)operator new[](4 * result, 1);
    Arrays::Listeners::m_memberNames = result;
    if ( v9 )
    {
      v4 = 0;
      LODWORD(v7) = (char *)&v8 + 1;
      HIDWORD(v7) = (char *)&v8 + 2;
      do
      {
        StreamReader::readAs<unsigned int>((int)this, (int)&v8);
        v5 = Arrays::Listeners::m_memberNames;
        *(_DWORD *)(v5 + 4 * v4) = operator new[]((size_t)(v8 + 1), 1);
        result = StreamReader::readStringEx(
                   this,
                   *(IStreamBase **)(Arrays::Listeners::m_memberNames + 4 * v4),
                   v8,
                   0,
                   v7);
        v6 = *(_DWORD *)(Arrays::Listeners::m_memberNames + 4 * v4++);
        v8[v6] = 0;
      }
      while ( v9 > v4 );
    }
  }
  return result;
}


// ===== 4b0e00 Arrays::Sounds_bak::readNames(IStreamBase *) =====
int __fastcall Arrays::Sounds_bak::readNames(Arrays::Sounds_bak *this, IStreamBase *a2)
{
  int result; // r0
  unsigned int v4; // r4
  int v5; // r11
  int v6; // r2
  unsigned __int64 v7; // [sp+0h] [bp-1Ch]
  char *v8; // [sp+10h] [bp-Ch] BYREF
  unsigned int v9; // [sp+14h] [bp-8h]

  Arrays::Sounds_bak::finalizeNames(this);
  result = StreamReader::readAs<unsigned int>((int)this);
  v9 = result;
  if ( Arrays::Sounds_bak::size == result )
  {
    result = (int)operator new[](4 * result, 1);
    Arrays::Sounds_bak::m_memberNames = result;
    if ( v9 )
    {
      v4 = 0;
      LODWORD(v7) = (char *)&v8 + 1;
      HIDWORD(v7) = (char *)&v8 + 2;
      do
      {
        StreamReader::readAs<unsigned int>((int)this, (int)&v8);
        v5 = Arrays::Sounds_bak::m_memberNames;
        *(_DWORD *)(v5 + 4 * v4) = operator new[]((size_t)(v8 + 1), 1);
        result = StreamReader::readStringEx(
                   this,
                   *(IStreamBase **)(Arrays::Sounds_bak::m_memberNames + 4 * v4),
                   v8,
                   0,
                   v7);
        v6 = *(_DWORD *)(Arrays::Sounds_bak::m_memberNames + 4 * v4++);
        v8[v6] = 0;
      }
      while ( v9 > v4 );
    }
  }
  return result;
}


// ===== 4b0f98 Arrays::SoundGroupsRouting::readNames(IStreamBase *) =====
int __fastcall Arrays::SoundGroupsRouting::readNames(Arrays::SoundGroupsRouting *this, IStreamBase *a2)
{
  int result; // r0
  unsigned int v4; // r4
  int v5; // r11
  int v6; // r2
  unsigned __int64 v7; // [sp+0h] [bp-1Ch]
  char *v8; // [sp+10h] [bp-Ch] BYREF
  unsigned int v9; // [sp+14h] [bp-8h]

  Arrays::SoundGroupsRouting::finalizeNames(this);
  result = StreamReader::readAs<unsigned int>((int)this);
  v9 = result;
  if ( Arrays::SoundGroupsRouting::size == result )
  {
    result = (int)operator new[](4 * result, 1);
    Arrays::SoundGroupsRouting::m_memberNames = result;
    if ( v9 )
    {
      v4 = 0;
      LODWORD(v7) = (char *)&v8 + 1;
      HIDWORD(v7) = (char *)&v8 + 2;
      do
      {
        StreamReader::readAs<unsigned int>((int)this, (int)&v8);
        v5 = Arrays::SoundGroupsRouting::m_memberNames;
        *(_DWORD *)(v5 + 4 * v4) = operator new[]((size_t)(v8 + 1), 1);
        result = StreamReader::readStringEx(
                   this,
                   *(IStreamBase **)(Arrays::SoundGroupsRouting::m_memberNames + 4 * v4),
                   v8,
                   0,
                   v7);
        v6 = *(_DWORD *)(Arrays::SoundGroupsRouting::m_memberNames + 4 * v4++);
        v8[v6] = 0;
      }
      while ( v9 > v4 );
    }
  }
  return result;
}


// ===== 4b1130 Arrays::TrophyTable::readNames(IStreamBase *) =====
int __fastcall Arrays::TrophyTable::readNames(Arrays::TrophyTable *this, IStreamBase *a2)
{
  int result; // r0
  unsigned int v4; // r4
  int v5; // r11
  int v6; // r2
  unsigned __int64 v7; // [sp+0h] [bp-1Ch]
  char *v8; // [sp+10h] [bp-Ch] BYREF
  unsigned int v9; // [sp+14h] [bp-8h]

  Arrays::TrophyTable::finalizeNames(this);
  result = StreamReader::readAs<unsigned int>((int)this);
  v9 = result;
  if ( Arrays::TrophyTable::size == result )
  {
    result = (int)operator new[](4 * result, 1);
    Arrays::TrophyTable::m_memberNames = result;
    if ( v9 )
    {
      v4 = 0;
      LODWORD(v7) = (char *)&v8 + 1;
      HIDWORD(v7) = (char *)&v8 + 2;
      do
      {
        StreamReader::readAs<unsigned int>((int)this, (int)&v8);
        v5 = Arrays::TrophyTable::m_memberNames;
        *(_DWORD *)(v5 + 4 * v4) = operator new[]((size_t)(v8 + 1), 1);
        result = StreamReader::readStringEx(
                   this,
                   *(IStreamBase **)(Arrays::TrophyTable::m_memberNames + 4 * v4),
                   v8,
                   0,
                   v7);
        v6 = *(_DWORD *)(Arrays::TrophyTable::m_memberNames + 4 * v4++);
        v8[v6] = 0;
      }
      while ( v9 > v4 );
    }
  }
  return result;
}


// ===== 4b12c8 Arrays::SpawnGroups::readNames(IStreamBase *) =====
int __fastcall Arrays::SpawnGroups::readNames(Arrays::SpawnGroups *this, IStreamBase *a2)
{
  int result; // r0
  unsigned int v4; // r4
  int v5; // r11
  int v6; // r2
  unsigned __int64 v7; // [sp+0h] [bp-1Ch]
  char *v8; // [sp+10h] [bp-Ch] BYREF
  unsigned int v9; // [sp+14h] [bp-8h]

  Arrays::SpawnGroups::finalizeNames(this);
  result = StreamReader::readAs<unsigned int>((int)this);
  v9 = result;
  if ( Arrays::SpawnGroups::size == result )
  {
    result = (int)operator new[](4 * result, 1);
    Arrays::SpawnGroups::m_memberNames = result;
    if ( v9 )
    {
      v4 = 0;
      LODWORD(v7) = (char *)&v8 + 1;
      HIDWORD(v7) = (char *)&v8 + 2;
      do
      {
        StreamReader::readAs<unsigned int>((int)this, (int)&v8);
        v5 = Arrays::SpawnGroups::m_memberNames;
        *(_DWORD *)(v5 + 4 * v4) = operator new[]((size_t)(v8 + 1), 1);
        result = StreamReader::readStringEx(
                   this,
                   *(IStreamBase **)(Arrays::SpawnGroups::m_memberNames + 4 * v4),
                   v8,
                   0,
                   v7);
        v6 = *(_DWORD *)(Arrays::SpawnGroups::m_memberNames + 4 * v4++);
        v8[v6] = 0;
      }
      while ( v9 > v4 );
    }
  }
  return result;
}


// ===== 4b1460 Arrays::v2Events::readNames(IStreamBase *) =====
int __fastcall Arrays::v2Events::readNames(Arrays::v2Events *this, IStreamBase *a2)
{
  int result; // r0
  unsigned int v4; // r4
  int v5; // r11
  int v6; // r2
  unsigned __int64 v7; // [sp+0h] [bp-1Ch]
  char *v8; // [sp+10h] [bp-Ch] BYREF
  unsigned int v9; // [sp+14h] [bp-8h]

  Arrays::v2Events::finalizeNames(this);
  result = StreamReader::readAs<unsigned int>((int)this);
  v9 = result;
  if ( Arrays::v2Events::size == result )
  {
    result = (int)operator new[](4 * result, 1);
    Arrays::v2Events::m_memberNames = result;
    if ( v9 )
    {
      v4 = 0;
      LODWORD(v7) = (char *)&v8 + 1;
      HIDWORD(v7) = (char *)&v8 + 2;
      do
      {
        StreamReader::readAs<unsigned int>((int)this, (int)&v8);
        v5 = Arrays::v2Events::m_memberNames;
        *(_DWORD *)(v5 + 4 * v4) = operator new[]((size_t)(v8 + 1), 1);
        result = StreamReader::readStringEx(
                   this,
                   *(IStreamBase **)(Arrays::v2Events::m_memberNames + 4 * v4),
                   v8,
                   0,
                   v7);
        v6 = *(_DWORD *)(Arrays::v2Events::m_memberNames + 4 * v4++);
        v8[v6] = 0;
      }
      while ( v9 > v4 );
    }
  }
  return result;
}


// ===== 4b15f8 Arrays::v2Conditions::readNames(IStreamBase *) =====
int __fastcall Arrays::v2Conditions::readNames(Arrays::v2Conditions *this, IStreamBase *a2)
{
  int result; // r0
  unsigned int v4; // r4
  int v5; // r11
  int v6; // r2
  unsigned __int64 v7; // [sp+0h] [bp-1Ch]
  char *v8; // [sp+10h] [bp-Ch] BYREF
  unsigned int v9; // [sp+14h] [bp-8h]

  Arrays::v2Conditions::finalizeNames(this);
  result = StreamReader::readAs<unsigned int>((int)this);
  v9 = result;
  if ( Arrays::v2Conditions::size == result )
  {
    result = (int)operator new[](4 * result, 1);
    Arrays::v2Conditions::m_memberNames = result;
    if ( v9 )
    {
      v4 = 0;
      LODWORD(v7) = (char *)&v8 + 1;
      HIDWORD(v7) = (char *)&v8 + 2;
      do
      {
        StreamReader::readAs<unsigned int>((int)this, (int)&v8);
        v5 = Arrays::v2Conditions::m_memberNames;
        *(_DWORD *)(v5 + 4 * v4) = operator new[]((size_t)(v8 + 1), 1);
        result = StreamReader::readStringEx(
                   this,
                   *(IStreamBase **)(Arrays::v2Conditions::m_memberNames + 4 * v4),
                   v8,
                   0,
                   v7);
        v6 = *(_DWORD *)(Arrays::v2Conditions::m_memberNames + 4 * v4++);
        v8[v6] = 0;
      }
      while ( v9 > v4 );
    }
  }
  return result;
}


// ===== 4b1790 Arrays::WorldMap::readNames(IStreamBase *) =====
int __fastcall Arrays::WorldMap::readNames(Arrays::WorldMap *this, IStreamBase *a2)
{
  int result; // r0
  unsigned int v4; // r4
  int v5; // r11
  int v6; // r2
  unsigned __int64 v7; // [sp+0h] [bp-1Ch]
  char *v8; // [sp+10h] [bp-Ch] BYREF
  unsigned int v9; // [sp+14h] [bp-8h]

  Arrays::WorldMap::finalizeNames(this);
  result = StreamReader::readAs<unsigned int>((int)this);
  v9 = result;
  if ( Arrays::WorldMap::size == result )
  {
    result = (int)operator new[](4 * result, 1);
    Arrays::WorldMap::m_memberNames = result;
    if ( v9 )
    {
      v4 = 0;
      LODWORD(v7) = (char *)&v8 + 1;
      HIDWORD(v7) = (char *)&v8 + 2;
      do
      {
        StreamReader::readAs<unsigned int>((int)this, (int)&v8);
        v5 = Arrays::WorldMap::m_memberNames;
        *(_DWORD *)(v5 + 4 * v4) = operator new[]((size_t)(v8 + 1), 1);
        result = StreamReader::readStringEx(
                   this,
                   *(IStreamBase **)(Arrays::WorldMap::m_memberNames + 4 * v4),
                   v8,
                   0,
                   v7);
        v6 = *(_DWORD *)(Arrays::WorldMap::m_memberNames + 4 * v4++);
        v8[v6] = 0;
      }
      while ( v9 > v4 );
    }
  }
  return result;
}


// ===== 4b1928 Arrays::v2Quests::readNames(IStreamBase *) =====
int __fastcall Arrays::v2Quests::readNames(Arrays::v2Quests *this, IStreamBase *a2)
{
  int result; // r0
  unsigned int v4; // r4
  int v5; // r11
  int v6; // r2
  unsigned __int64 v7; // [sp+0h] [bp-1Ch]
  char *v8; // [sp+10h] [bp-Ch] BYREF
  unsigned int v9; // [sp+14h] [bp-8h]

  Arrays::v2Quests::finalizeNames(this);
  result = StreamReader::readAs<unsigned int>((int)this);
  v9 = result;
  if ( Arrays::v2Quests::size == result )
  {
    result = (int)operator new[](4 * result, 1);
    Arrays::v2Quests::m_memberNames = result;
    if ( v9 )
    {
      v4 = 0;
      LODWORD(v7) = (char *)&v8 + 1;
      HIDWORD(v7) = (char *)&v8 + 2;
      do
      {
        StreamReader::readAs<unsigned int>((int)this, (int)&v8);
        v5 = Arrays::v2Quests::m_memberNames;
        *(_DWORD *)(v5 + 4 * v4) = operator new[]((size_t)(v8 + 1), 1);
        result = StreamReader::readStringEx(
                   this,
                   *(IStreamBase **)(Arrays::v2Quests::m_memberNames + 4 * v4),
                   v8,
                   0,
                   v7);
        v6 = *(_DWORD *)(Arrays::v2Quests::m_memberNames + 4 * v4++);
        v8[v6] = 0;
      }
      while ( v9 > v4 );
    }
  }
  return result;
}


// ===== 4b1ac0 Arrays::ModelDict::readNames(IStreamBase *) =====
int __fastcall Arrays::ModelDict::readNames(Arrays::ModelDict *this, IStreamBase *a2)
{
  int result; // r0
  unsigned int v4; // r4
  int v5; // r11
  int v6; // r2
  unsigned __int64 v7; // [sp+0h] [bp-1Ch]
  char *v8; // [sp+10h] [bp-Ch] BYREF
  unsigned int v9; // [sp+14h] [bp-8h]

  Arrays::ModelDict::finalizeNames(this);
  result = StreamReader::readAs<unsigned int>((int)this);
  v9 = result;
  if ( Arrays::ModelDict::size == result )
  {
    result = (int)operator new[](4 * result, 1);
    Arrays::ModelDict::m_memberNames = result;
    if ( v9 )
    {
      v4 = 0;
      LODWORD(v7) = (char *)&v8 + 1;
      HIDWORD(v7) = (char *)&v8 + 2;
      do
      {
        StreamReader::readAs<unsigned int>((int)this, (int)&v8);
        v5 = Arrays::ModelDict::m_memberNames;
        *(_DWORD *)(v5 + 4 * v4) = operator new[]((size_t)(v8 + 1), 1);
        result = StreamReader::readStringEx(
                   this,
                   *(IStreamBase **)(Arrays::ModelDict::m_memberNames + 4 * v4),
                   v8,
                   0,
                   v7);
        v6 = *(_DWORD *)(Arrays::ModelDict::m_memberNames + 4 * v4++);
        v8[v6] = 0;
      }
      while ( v9 > v4 );
    }
  }
  return result;
}


// ===== 4b1c58 Arrays::ModelDict::skipNames(IStreamBase *) =====
// attributes: thunk
int __fastcall Arrays::ModelDict::skipNames(Arrays::ModelDict *this, IStreamBase *a2)
{
  return Arrays::ModelDict::readNames(this, a2);
}


// ===== 4b1c5c Arrays::WorldMapLockers::readNames(IStreamBase *) =====
int __fastcall Arrays::WorldMapLockers::readNames(Arrays::WorldMapLockers *this, IStreamBase *a2)
{
  int result; // r0
  unsigned int v4; // r4
  int v5; // r11
  int v6; // r2
  unsigned __int64 v7; // [sp+0h] [bp-1Ch]
  char *v8; // [sp+10h] [bp-Ch] BYREF
  unsigned int v9; // [sp+14h] [bp-8h]

  Arrays::WorldMapLockers::finalizeNames(this);
  result = StreamReader::readAs<unsigned int>((int)this);
  v9 = result;
  if ( Arrays::WorldMapLockers::size == result )
  {
    result = (int)operator new[](4 * result, 1);
    Arrays::WorldMapLockers::m_memberNames = result;
    if ( v9 )
    {
      v4 = 0;
      LODWORD(v7) = (char *)&v8 + 1;
      HIDWORD(v7) = (char *)&v8 + 2;
      do
      {
        StreamReader::readAs<unsigned int>((int)this, (int)&v8);
        v5 = Arrays::WorldMapLockers::m_memberNames;
        *(_DWORD *)(v5 + 4 * v4) = operator new[]((size_t)(v8 + 1), 1);
        result = StreamReader::readStringEx(
                   this,
                   *(IStreamBase **)(Arrays::WorldMapLockers::m_memberNames + 4 * v4),
                   v8,
                   0,
                   v7);
        v6 = *(_DWORD *)(Arrays::WorldMapLockers::m_memberNames + 4 * v4++);
        v8[v6] = 0;
      }
      while ( v9 > v4 );
    }
  }
  return result;
}


// ===== 4b1df4 Arrays::WorldMapLockers::skipNames(IStreamBase *) =====
// attributes: thunk
int __fastcall Arrays::WorldMapLockers::skipNames(Arrays::WorldMapLockers *this, IStreamBase *a2)
{
  return Arrays::WorldMapLockers::readNames(this, a2);
}


// ===== 4b1df8 Arrays::EffectDict::readNames(IStreamBase *) =====
int __fastcall Arrays::EffectDict::readNames(Arrays::EffectDict *this, IStreamBase *a2)
{
  int result; // r0
  unsigned int v4; // r4
  int v5; // r11
  int v6; // r2
  unsigned __int64 v7; // [sp+0h] [bp-1Ch]
  char *v8; // [sp+10h] [bp-Ch] BYREF
  unsigned int v9; // [sp+14h] [bp-8h]

  Arrays::EffectDict::finalizeNames(this);
  result = StreamReader::readAs<unsigned int>((int)this);
  v9 = result;
  if ( Arrays::EffectDict::size == result )
  {
    result = (int)operator new[](4 * result, 1);
    Arrays::EffectDict::m_memberNames = result;
    if ( v9 )
    {
      v4 = 0;
      LODWORD(v7) = (char *)&v8 + 1;
      HIDWORD(v7) = (char *)&v8 + 2;
      do
      {
        StreamReader::readAs<unsigned int>((int)this, (int)&v8);
        v5 = Arrays::EffectDict::m_memberNames;
        *(_DWORD *)(v5 + 4 * v4) = operator new[]((size_t)(v8 + 1), 1);
        result = StreamReader::readStringEx(
                   this,
                   *(IStreamBase **)(Arrays::EffectDict::m_memberNames + 4 * v4),
                   v8,
                   0,
                   v7);
        v6 = *(_DWORD *)(Arrays::EffectDict::m_memberNames + 4 * v4++);
        v8[v6] = 0;
      }
      while ( v9 > v4 );
    }
  }
  return result;
}


// ===== 4b1f90 Arrays::EffectDict::skipNames(IStreamBase *) =====
// attributes: thunk
int __fastcall Arrays::EffectDict::skipNames(Arrays::EffectDict *this, IStreamBase *a2)
{
  return Arrays::EffectDict::readNames(this, a2);
}


// ===== 4b1f94 Arrays::AnimDict::readNames(IStreamBase *) =====
int __fastcall Arrays::AnimDict::readNames(Arrays::AnimDict *this, IStreamBase *a2)
{
  int result; // r0
  unsigned int v4; // r4
  int v5; // r11
  int v6; // r2
  unsigned __int64 v7; // [sp+0h] [bp-1Ch]
  char *v8; // [sp+10h] [bp-Ch] BYREF
  unsigned int v9; // [sp+14h] [bp-8h]

  Arrays::AnimDict::finalizeNames(this);
  result = StreamReader::readAs<unsigned int>((int)this);
  v9 = result;
  if ( Arrays::AnimDict::size == result )
  {
    result = (int)operator new[](4 * result, 1);
    Arrays::AnimDict::m_memberNames = result;
    if ( v9 )
    {
      v4 = 0;
      LODWORD(v7) = (char *)&v8 + 1;
      HIDWORD(v7) = (char *)&v8 + 2;
      do
      {
        StreamReader::readAs<unsigned int>((int)this, (int)&v8);
        v5 = Arrays::AnimDict::m_memberNames;
        *(_DWORD *)(v5 + 4 * v4) = operator new[]((size_t)(v8 + 1), 1);
        result = StreamReader::readStringEx(
                   this,
                   *(IStreamBase **)(Arrays::AnimDict::m_memberNames + 4 * v4),
                   v8,
                   0,
                   v7);
        v6 = *(_DWORD *)(Arrays::AnimDict::m_memberNames + 4 * v4++);
        v8[v6] = 0;
      }
      while ( v9 > v4 );
    }
  }
  return result;
}


// ===== 4b212c Arrays::AnimDict::skipNames(IStreamBase *) =====
// attributes: thunk
int __fastcall Arrays::AnimDict::skipNames(Arrays::AnimDict *this, IStreamBase *a2)
{
  return Arrays::AnimDict::readNames(this, a2);
}


// ===== 4b2130 Arrays::GameObjectDict::readNames(IStreamBase *) =====
int __fastcall Arrays::GameObjectDict::readNames(Arrays::GameObjectDict *this, IStreamBase *a2)
{
  int result; // r0
  unsigned int v4; // r4
  int v5; // r11
  int v6; // r2
  unsigned __int64 v7; // [sp+0h] [bp-1Ch]
  char *v8; // [sp+10h] [bp-Ch] BYREF
  unsigned int v9; // [sp+14h] [bp-8h]

  Arrays::GameObjectDict::finalizeNames(this);
  result = StreamReader::readAs<unsigned int>((int)this);
  v9 = result;
  if ( Arrays::GameObjectDict::size == result )
  {
    result = (int)operator new[](4 * result, 1);
    Arrays::GameObjectDict::m_memberNames = result;
    if ( v9 )
    {
      v4 = 0;
      LODWORD(v7) = (char *)&v8 + 1;
      HIDWORD(v7) = (char *)&v8 + 2;
      do
      {
        StreamReader::readAs<unsigned int>((int)this, (int)&v8);
        v5 = Arrays::GameObjectDict::m_memberNames;
        *(_DWORD *)(v5 + 4 * v4) = operator new[]((size_t)(v8 + 1), 1);
        result = StreamReader::readStringEx(
                   this,
                   *(IStreamBase **)(Arrays::GameObjectDict::m_memberNames + 4 * v4),
                   v8,
                   0,
                   v7);
        v6 = *(_DWORD *)(Arrays::GameObjectDict::m_memberNames + 4 * v4++);
        v8[v6] = 0;
      }
      while ( v9 > v4 );
    }
  }
  return result;
}


// ===== 4b22c8 Arrays::GameObjectDict::skipNames(IStreamBase *) =====
// attributes: thunk
int __fastcall Arrays::GameObjectDict::skipNames(Arrays::GameObjectDict *this, IStreamBase *a2)
{
  return Arrays::GameObjectDict::readNames(this, a2);
}


// ===== 4b22cc Arrays::ProjectileDict::readNames(IStreamBase *) =====
int __fastcall Arrays::ProjectileDict::readNames(Arrays::ProjectileDict *this, IStreamBase *a2)
{
  int result; // r0
  unsigned int v4; // r4
  int v5; // r11
  int v6; // r2
  unsigned __int64 v7; // [sp+0h] [bp-1Ch]
  char *v8; // [sp+10h] [bp-Ch] BYREF
  unsigned int v9; // [sp+14h] [bp-8h]

  Arrays::ProjectileDict::finalizeNames(this);
  result = StreamReader::readAs<unsigned int>((int)this);
  v9 = result;
  if ( Arrays::ProjectileDict::size == result )
  {
    result = (int)operator new[](4 * result, 1);
    Arrays::ProjectileDict::m_memberNames = result;
    if ( v9 )
    {
      v4 = 0;
      LODWORD(v7) = (char *)&v8 + 1;
      HIDWORD(v7) = (char *)&v8 + 2;
      do
      {
        StreamReader::readAs<unsigned int>((int)this, (int)&v8);
        v5 = Arrays::ProjectileDict::m_memberNames;
        *(_DWORD *)(v5 + 4 * v4) = operator new[]((size_t)(v8 + 1), 1);
        result = StreamReader::readStringEx(
                   this,
                   *(IStreamBase **)(Arrays::ProjectileDict::m_memberNames + 4 * v4),
                   v8,
                   0,
                   v7);
        v6 = *(_DWORD *)(Arrays::ProjectileDict::m_memberNames + 4 * v4++);
        v8[v6] = 0;
      }
      while ( v9 > v4 );
    }
  }
  return result;
}


// ===== 4b2464 Arrays::ProjectileDict::skipNames(IStreamBase *) =====
// attributes: thunk
int __fastcall Arrays::ProjectileDict::skipNames(Arrays::ProjectileDict *this, IStreamBase *a2)
{
  return Arrays::ProjectileDict::readNames(this, a2);
}


// ===== 4b2468 Arrays::FaeryTable::readNames(IStreamBase *) =====
int __fastcall Arrays::FaeryTable::readNames(Arrays::FaeryTable *this, IStreamBase *a2)
{
  int result; // r0
  unsigned int v4; // r4
  int v5; // r11
  int v6; // r2
  unsigned __int64 v7; // [sp+0h] [bp-1Ch]
  char *v8; // [sp+10h] [bp-Ch] BYREF
  unsigned int v9; // [sp+14h] [bp-8h]

  Arrays::FaeryTable::finalizeNames(this);
  result = StreamReader::readAs<unsigned int>((int)this);
  v9 = result;
  if ( Arrays::FaeryTable::size == result )
  {
    result = (int)operator new[](4 * result, 1);
    Arrays::FaeryTable::m_memberNames = result;
    if ( v9 )
    {
      v4 = 0;
      LODWORD(v7) = (char *)&v8 + 1;
      HIDWORD(v7) = (char *)&v8 + 2;
      do
      {
        StreamReader::readAs<unsigned int>((int)this, (int)&v8);
        v5 = Arrays::FaeryTable::m_memberNames;
        *(_DWORD *)(v5 + 4 * v4) = operator new[]((size_t)(v8 + 1), 1);
        result = StreamReader::readStringEx(
                   this,
                   *(IStreamBase **)(Arrays::FaeryTable::m_memberNames + 4 * v4),
                   v8,
                   0,
                   v7);
        v6 = *(_DWORD *)(Arrays::FaeryTable::m_memberNames + 4 * v4++);
        v8[v6] = 0;
      }
      while ( v9 > v4 );
    }
  }
  return result;
}


// ===== 4b2600 Arrays::FaeryTable::skipNames(IStreamBase *) =====
// attributes: thunk
int __fastcall Arrays::FaeryTable::skipNames(Arrays::FaeryTable *this, IStreamBase *a2)
{
  return Arrays::FaeryTable::readNames(this, a2);
}


// ===== 4b2604 Arrays::FaeryListTable::readNames(IStreamBase *) =====
int __fastcall Arrays::FaeryListTable::readNames(Arrays::FaeryListTable *this, IStreamBase *a2)
{
  int result; // r0
  unsigned int v4; // r4
  int v5; // r11
  int v6; // r2
  unsigned __int64 v7; // [sp+0h] [bp-1Ch]
  char *v8; // [sp+10h] [bp-Ch] BYREF
  unsigned int v9; // [sp+14h] [bp-8h]

  Arrays::FaeryListTable::finalizeNames(this);
  result = StreamReader::readAs<unsigned int>((int)this);
  v9 = result;
  if ( Arrays::FaeryListTable::size == result )
  {
    result = (int)operator new[](4 * result, 1);
    Arrays::FaeryListTable::m_memberNames = result;
    if ( v9 )
    {
      v4 = 0;
      LODWORD(v7) = (char *)&v8 + 1;
      HIDWORD(v7) = (char *)&v8 + 2;
      do
      {
        StreamReader::readAs<unsigned int>((int)this, (int)&v8);
        v5 = Arrays::FaeryListTable::m_memberNames;
        *(_DWORD *)(v5 + 4 * v4) = operator new[]((size_t)(v8 + 1), 1);
        result = StreamReader::readStringEx(
                   this,
                   *(IStreamBase **)(Arrays::FaeryListTable::m_memberNames + 4 * v4),
                   v8,
                   0,
                   v7);
        v6 = *(_DWORD *)(Arrays::FaeryListTable::m_memberNames + 4 * v4++);
        v8[v6] = 0;
      }
      while ( v9 > v4 );
    }
  }
  return result;
}


// ===== 4b279c Arrays::FaeryListTable::skipNames(IStreamBase *) =====
// attributes: thunk
int __fastcall Arrays::FaeryListTable::skipNames(Arrays::FaeryListTable *this, IStreamBase *a2)
{
  return Arrays::FaeryListTable::readNames(this, a2);
}


// ===== 4b27a0 Arrays::DestructibleContainers::readNames(IStreamBase *) =====
int __fastcall Arrays::DestructibleContainers::readNames(Arrays::DestructibleContainers *this, IStreamBase *a2)
{
  int result; // r0
  unsigned int v4; // r4
  int v5; // r11
  int v6; // r2
  unsigned __int64 v7; // [sp+0h] [bp-1Ch]
  char *v8; // [sp+10h] [bp-Ch] BYREF
  unsigned int v9; // [sp+14h] [bp-8h]

  Arrays::DestructibleContainers::finalizeNames(this);
  result = StreamReader::readAs<unsigned int>((int)this);
  v9 = result;
  if ( Arrays::DestructibleContainers::size == result )
  {
    result = (int)operator new[](4 * result, 1);
    Arrays::DestructibleContainers::m_memberNames = result;
    if ( v9 )
    {
      v4 = 0;
      LODWORD(v7) = (char *)&v8 + 1;
      HIDWORD(v7) = (char *)&v8 + 2;
      do
      {
        StreamReader::readAs<unsigned int>((int)this, (int)&v8);
        v5 = Arrays::DestructibleContainers::m_memberNames;
        *(_DWORD *)(v5 + 4 * v4) = operator new[]((size_t)(v8 + 1), 1);
        result = StreamReader::readStringEx(
                   this,
                   *(IStreamBase **)(Arrays::DestructibleContainers::m_memberNames + 4 * v4),
                   v8,
                   0,
                   v7);
        v6 = *(_DWORD *)(Arrays::DestructibleContainers::m_memberNames + 4 * v4++);
        v8[v6] = 0;
      }
      while ( v9 > v4 );
    }
  }
  return result;
}


// ===== 4b2938 Arrays::FontPalette::readNames(IStreamBase *) =====
int __fastcall Arrays::FontPalette::readNames(Arrays::FontPalette *this, IStreamBase *a2)
{
  int result; // r0
  unsigned int v4; // r4
  int v5; // r11
  int v6; // r2
  unsigned __int64 v7; // [sp+0h] [bp-1Ch]
  char *v8; // [sp+10h] [bp-Ch] BYREF
  unsigned int v9; // [sp+14h] [bp-8h]

  Arrays::FontPalette::finalizeNames(this);
  result = StreamReader::readAs<unsigned int>((int)this);
  v9 = result;
  if ( Arrays::FontPalette::size == result )
  {
    result = (int)operator new[](4 * result, 1);
    Arrays::FontPalette::m_memberNames = result;
    if ( v9 )
    {
      v4 = 0;
      LODWORD(v7) = (char *)&v8 + 1;
      HIDWORD(v7) = (char *)&v8 + 2;
      do
      {
        StreamReader::readAs<unsigned int>((int)this, (int)&v8);
        v5 = Arrays::FontPalette::m_memberNames;
        *(_DWORD *)(v5 + 4 * v4) = operator new[]((size_t)(v8 + 1), 1);
        result = StreamReader::readStringEx(
                   this,
                   *(IStreamBase **)(Arrays::FontPalette::m_memberNames + 4 * v4),
                   v8,
                   0,
                   v7);
        v6 = *(_DWORD *)(Arrays::FontPalette::m_memberNames + 4 * v4++);
        v8[v6] = 0;
      }
      while ( v9 > v4 );
    }
  }
  return result;
}


// ===== 4b2ad0 Arrays::FontPalette::skipNames(IStreamBase *) =====
// attributes: thunk
int __fastcall Arrays::FontPalette::skipNames(Arrays::FontPalette *this, IStreamBase *a2)
{
  return Arrays::FontPalette::readNames(this, a2);
}


// ===== 4b2ad4 Arrays::AnimatedEffectTable::readNames(IStreamBase *) =====
int __fastcall Arrays::AnimatedEffectTable::readNames(Arrays::AnimatedEffectTable *this, IStreamBase *a2)
{
  int result; // r0
  unsigned int v4; // r4
  int v5; // r11
  int v6; // r2
  unsigned __int64 v7; // [sp+0h] [bp-1Ch]
  char *v8; // [sp+10h] [bp-Ch] BYREF
  unsigned int v9; // [sp+14h] [bp-8h]

  Arrays::AnimatedEffectTable::finalizeNames(this);
  result = StreamReader::readAs<unsigned int>((int)this);
  v9 = result;
  if ( Arrays::AnimatedEffectTable::size == result )
  {
    result = (int)operator new[](4 * result, 1);
    Arrays::AnimatedEffectTable::m_memberNames = result;
    if ( v9 )
    {
      v4 = 0;
      LODWORD(v7) = (char *)&v8 + 1;
      HIDWORD(v7) = (char *)&v8 + 2;
      do
      {
        StreamReader::readAs<unsigned int>((int)this, (int)&v8);
        v5 = Arrays::AnimatedEffectTable::m_memberNames;
        *(_DWORD *)(v5 + 4 * v4) = operator new[]((size_t)(v8 + 1), 1);
        result = StreamReader::readStringEx(
                   this,
                   *(IStreamBase **)(Arrays::AnimatedEffectTable::m_memberNames + 4 * v4),
                   v8,
                   0,
                   v7);
        v6 = *(_DWORD *)(Arrays::AnimatedEffectTable::m_memberNames + 4 * v4++);
        v8[v6] = 0;
      }
      while ( v9 > v4 );
    }
  }
  return result;
}


// ===== 4b2c6c Arrays::Dialogs::readNames(IStreamBase *) =====
int __fastcall Arrays::Dialogs::readNames(Arrays::Dialogs *this, IStreamBase *a2)
{
  int result; // r0
  unsigned int v4; // r4
  int v5; // r11
  int v6; // r2
  unsigned __int64 v7; // [sp+0h] [bp-1Ch]
  char *v8; // [sp+10h] [bp-Ch] BYREF
  unsigned int v9; // [sp+14h] [bp-8h]

  Arrays::Dialogs::finalizeNames(this);
  result = StreamReader::readAs<unsigned int>((int)this);
  v9 = result;
  if ( Arrays::Dialogs::size == result )
  {
    result = (int)operator new[](4 * result, 1);
    Arrays::Dialogs::m_memberNames = result;
    if ( v9 )
    {
      v4 = 0;
      LODWORD(v7) = (char *)&v8 + 1;
      HIDWORD(v7) = (char *)&v8 + 2;
      do
      {
        StreamReader::readAs<unsigned int>((int)this, (int)&v8);
        v5 = Arrays::Dialogs::m_memberNames;
        *(_DWORD *)(v5 + 4 * v4) = operator new[]((size_t)(v8 + 1), 1);
        result = StreamReader::readStringEx(this, *(IStreamBase **)(Arrays::Dialogs::m_memberNames + 4 * v4), v8, 0, v7);
        v6 = *(_DWORD *)(Arrays::Dialogs::m_memberNames + 4 * v4++);
        v8[v6] = 0;
      }
      while ( v9 > v4 );
    }
  }
  return result;
}


// ===== 4b2e04 Arrays::Dialogs::skipNames(IStreamBase *) =====
// attributes: thunk
int __fastcall Arrays::Dialogs::skipNames(Arrays::Dialogs *this, IStreamBase *a2)
{
  return Arrays::Dialogs::readNames(this, a2);
}


// ===== 4b2e08 Arrays::FootstepEffectTable::readNames(IStreamBase *) =====
int __fastcall Arrays::FootstepEffectTable::readNames(Arrays::FootstepEffectTable *this, IStreamBase *a2)
{
  int v3; // r1
  int result; // r0
  unsigned int v5; // r4
  int v6; // r11
  int v7; // r2
  unsigned __int64 v8; // [sp+0h] [bp-1Ch]
  char *v9; // [sp+10h] [bp-Ch] BYREF
  unsigned int v10; // [sp+14h] [bp-8h]

  Arrays::FootstepEffectTable::finalizeNames(this);
  result = StreamReader::readAs<unsigned int>(this, v3);
  v10 = result;
  if ( Arrays::FootstepEffectTable::size == result )
  {
    result = operator new[](4 * result, 1);
    Arrays::FootstepEffectTable::m_memberNames = result;
    if ( v10 )
    {
      v5 = 0;
      LODWORD(v8) = (char *)&v9 + 1;
      HIDWORD(v8) = (char *)&v9 + 2;
      do
      {
        StreamReader::readAs<unsigned int>(this, &v9);
        v6 = Arrays::FootstepEffectTable::m_memberNames;
        *(_DWORD *)(v6 + 4 * v5) = operator new[](v9 + 1, 1);
        result = StreamReader::readStringEx(
                   this,
                   *(IStreamBase **)(Arrays::FootstepEffectTable::m_memberNames + 4 * v5),
                   v9,
                   v8);
        v7 = *(_DWORD *)(Arrays::FootstepEffectTable::m_memberNames + 4 * v5++);
        v9[v7] = 0;
      }
      while ( v10 > v5 );
    }
  }
  return result;
}


// ===== 4b2fa0 Arrays::CharEffectTable::readNames(IStreamBase *) =====
int __fastcall Arrays::CharEffectTable::readNames(Arrays::CharEffectTable *this, IStreamBase *a2)
{
  int v3; // r1
  int result; // r0
  unsigned int v5; // r4
  int v6; // r11
  int v7; // r2
  unsigned __int64 v8; // [sp+0h] [bp-1Ch]
  char *v9; // [sp+10h] [bp-Ch] BYREF
  unsigned int v10; // [sp+14h] [bp-8h]

  Arrays::CharEffectTable::finalizeNames(this);
  result = StreamReader::readAs<unsigned int>(this, v3);
  v10 = result;
  if ( Arrays::CharEffectTable::size == result )
  {
    result = operator new[](4 * result, 1);
    Arrays::CharEffectTable::m_memberNames = result;
    if ( v10 )
    {
      v5 = 0;
      LODWORD(v8) = (char *)&v9 + 1;
      HIDWORD(v8) = (char *)&v9 + 2;
      do
      {
        StreamReader::readAs<unsigned int>(this, &v9);
        v6 = Arrays::CharEffectTable::m_memberNames;
        *(_DWORD *)(v6 + 4 * v5) = operator new[](v9 + 1, 1);
        result = StreamReader::readStringEx(
                   this,
                   *(IStreamBase **)(Arrays::CharEffectTable::m_memberNames + 4 * v5),
                   v9,
                   v8);
        v7 = *(_DWORD *)(Arrays::CharEffectTable::m_memberNames + 4 * v5++);
        v9[v7] = 0;
      }
      while ( v10 > v5 );
    }
  }
  return result;
}


// ===== 4b3138 Arrays::CharEffectTable::skipNames(IStreamBase *) =====
// attributes: thunk
int __fastcall Arrays::CharEffectTable::skipNames(Arrays::CharEffectTable *this, IStreamBase *a2)
{
  return Arrays::CharEffectTable::readNames(this, a2);
}


// ===== 4b313c Arrays::Sounds::readNames(IStreamBase *) =====
int __fastcall Arrays::Sounds::readNames(Arrays::Sounds *this, IStreamBase *a2)
{
  int result; // r0
  unsigned int v4; // r4
  int v5; // r11
  int v6; // r2
  unsigned __int64 v7; // [sp+0h] [bp-1Ch]
  char *v8; // [sp+10h] [bp-Ch] BYREF
  unsigned int v9; // [sp+14h] [bp-8h]

  Arrays::Sounds::finalizeNames(this);
  result = StreamReader::readAs<unsigned int>((int)this);
  v9 = result;
  if ( Arrays::Sounds::size == result )
  {
    result = (int)operator new[](4 * result, 1);
    Arrays::Sounds::m_memberNames = result;
    if ( v9 )
    {
      v4 = 0;
      LODWORD(v7) = (char *)&v8 + 1;
      HIDWORD(v7) = (char *)&v8 + 2;
      do
      {
        StreamReader::readAs<unsigned int>((int)this, (int)&v8);
        v5 = Arrays::Sounds::m_memberNames;
        *(_DWORD *)(v5 + 4 * v4) = operator new[]((size_t)(v8 + 1), 1);
        result = StreamReader::readStringEx(this, *(IStreamBase **)(Arrays::Sounds::m_memberNames + 4 * v4), v8, 0, v7);
        v6 = *(_DWORD *)(Arrays::Sounds::m_memberNames + 4 * v4++);
        v8[v6] = 0;
      }
      while ( v9 > v4 );
    }
  }
  return result;
}


// ===== 4b32d4 Arrays::StrID_Languages::readNames(IStreamBase *) =====
int __fastcall Arrays::StrID_Languages::readNames(Arrays::StrID_Languages *this, IStreamBase *a2)
{
  int result; // r0
  unsigned int v4; // r4
  int v5; // r11
  int v6; // r2
  unsigned __int64 v7; // [sp+0h] [bp-1Ch]
  char *v8; // [sp+10h] [bp-Ch] BYREF
  unsigned int v9; // [sp+14h] [bp-8h]

  Arrays::StrID_Languages::finalizeNames(this);
  result = StreamReader::readAs<unsigned int>((int)this);
  v9 = result;
  if ( Arrays::StrID_Languages::size == result )
  {
    result = (int)operator new[](4 * result, 1);
    Arrays::StrID_Languages::m_memberNames = result;
    if ( v9 )
    {
      v4 = 0;
      LODWORD(v7) = (char *)&v8 + 1;
      HIDWORD(v7) = (char *)&v8 + 2;
      do
      {
        StreamReader::readAs<unsigned int>((int)this, (int)&v8);
        v5 = Arrays::StrID_Languages::m_memberNames;
        *(_DWORD *)(v5 + 4 * v4) = operator new[]((size_t)(v8 + 1), 1);
        result = StreamReader::readStringEx(
                   this,
                   *(IStreamBase **)(Arrays::StrID_Languages::m_memberNames + 4 * v4),
                   v8,
                   0,
                   v7);
        v6 = *(_DWORD *)(Arrays::StrID_Languages::m_memberNames + 4 * v4++);
        v8[v6] = 0;
      }
      while ( v9 > v4 );
    }
  }
  return result;
}


// ===== 4b346c Arrays::StrID_Languages::skipNames(IStreamBase *) =====
// attributes: thunk
int __fastcall Arrays::StrID_Languages::skipNames(Arrays::StrID_Languages *this, IStreamBase *a2)
{
  return Arrays::StrID_Languages::readNames(this, a2);
}


// ===== 4b3470 Arrays::DialogActors::readNames(IStreamBase *) =====
int __fastcall Arrays::DialogActors::readNames(Arrays::DialogActors *this, IStreamBase *a2)
{
  int v3; // r1
  int result; // r0
  unsigned int v5; // r4
  int v6; // r11
  int v7; // r2
  unsigned __int64 v8; // [sp+0h] [bp-1Ch]
  char *v9; // [sp+10h] [bp-Ch] BYREF
  unsigned int v10; // [sp+14h] [bp-8h]

  Arrays::DialogActors::finalizeNames(this);
  result = StreamReader::readAs<unsigned int>(this, v3);
  v10 = result;
  if ( Arrays::DialogActors::size == result )
  {
    result = operator new[](4 * result, 1);
    Arrays::DialogActors::m_memberNames = result;
    if ( v10 )
    {
      v5 = 0;
      LODWORD(v8) = (char *)&v9 + 1;
      HIDWORD(v8) = (char *)&v9 + 2;
      do
      {
        StreamReader::readAs<unsigned int>(this, &v9);
        v6 = Arrays::DialogActors::m_memberNames;
        *(_DWORD *)(v6 + 4 * v5) = operator new[](v9 + 1, 1);
        result = StreamReader::readStringEx(
                   this,
                   *(IStreamBase **)(Arrays::DialogActors::m_memberNames + 4 * v5),
                   v9,
                   v8);
        v7 = *(_DWORD *)(Arrays::DialogActors::m_memberNames + 4 * v5++);
        v9[v7] = 0;
      }
      while ( v10 > v5 );
    }
  }
  return result;
}


// ===== 4b3608 Arrays::DialogActors::skipNames(IStreamBase *) =====
// attributes: thunk
int __fastcall Arrays::DialogActors::skipNames(Arrays::DialogActors *this, IStreamBase *a2)
{
  return Arrays::DialogActors::readNames(this, a2);
}


// ===== 4b360c Arrays::GameOptionTable::readNames(IStreamBase *) =====
int __fastcall Arrays::GameOptionTable::readNames(Arrays::GameOptionTable *this, IStreamBase *a2)
{
  int result; // r0
  unsigned int v4; // r4
  int v5; // r11
  int v6; // r2
  unsigned __int64 v7; // [sp+0h] [bp-1Ch]
  char *v8; // [sp+10h] [bp-Ch] BYREF
  unsigned int v9; // [sp+14h] [bp-8h]

  Arrays::GameOptionTable::finalizeNames(this);
  result = StreamReader::readAs<unsigned int>((int)this);
  v9 = result;
  if ( Arrays::GameOptionTable::size == result )
  {
    result = (int)operator new[](4 * result, 1);
    Arrays::GameOptionTable::m_memberNames = result;
    if ( v9 )
    {
      v4 = 0;
      LODWORD(v7) = (char *)&v8 + 1;
      HIDWORD(v7) = (char *)&v8 + 2;
      do
      {
        StreamReader::readAs<unsigned int>((int)this, (int)&v8);
        v5 = Arrays::GameOptionTable::m_memberNames;
        *(_DWORD *)(v5 + 4 * v4) = operator new[]((size_t)(v8 + 1), 1);
        result = StreamReader::readStringEx(
                   this,
                   *(IStreamBase **)(Arrays::GameOptionTable::m_memberNames + 4 * v4),
                   v8,
                   0,
                   v7);
        v6 = *(_DWORD *)(Arrays::GameOptionTable::m_memberNames + 4 * v4++);
        v8[v6] = 0;
      }
      while ( v9 > v4 );
    }
  }
  return result;
}


// ===== 4b37a4 Arrays::CamAnimSetTable::read(IStreamBase *) =====
_DWORD *__fastcall Arrays::CamAnimSetTable::read(Arrays::CamAnimSetTable *this, IStreamBase *a2)
{
  _DWORD *result; // r0
  int v4; // r3
  int v5; // r2
  int v6; // r4
  unsigned int v7; // r5
  int v8; // [sp+4h] [bp-8h]

  v8 = StreamReader::readAs<unsigned int>((int)this);
  Arrays::CamAnimSetTable::finalize((Arrays::CamAnimSetTable *)v8);
  Arrays::CamAnimSetTable::size = v8;
  result = operator new[](28 * v8 + 8, 1);
  *result = 28;
  result[1] = v8;
  v4 = (int)(result + 2);
  if ( v8 )
  {
    v5 = 0;
    do
    {
      ++v5;
      result[2] = off_96BD28;
      result[4] = 0;
      result += 7;
    }
    while ( v5 != v8 );
  }
  Arrays::CamAnimSetTable::members = v4;
  if ( Arrays::CamAnimSetTable::size )
  {
    v6 = 0;
    v7 = 0;
    while ( 1 )
    {
      result = (_DWORD *)(*(int (__fastcall **)(int, Arrays::CamAnimSetTable *))(*(_DWORD *)(v4 + v6) + 12))(
                           v4 + v6,
                           this);
      ++v7;
      v6 += 28;
      if ( Arrays::CamAnimSetTable::size <= v7 )
        break;
      v4 = Arrays::CamAnimSetTable::members;
    }
  }
  return result;
}


// ===== 4b38f0 Arrays::AnimTable::read(IStreamBase *) =====
_DWORD *__fastcall Arrays::AnimTable::read(Arrays::AnimTable *this, IStreamBase *a2)
{
  _DWORD *result; // r0
  int v4; // r3
  int v5; // r2
  int v6; // r4
  unsigned int v7; // r5
  int v8; // [sp+4h] [bp-8h]

  v8 = StreamReader::readAs<unsigned int>((int)this);
  Arrays::AnimTable::finalize((Arrays::AnimTable *)v8);
  Arrays::AnimTable::size = v8;
  result = operator new[](20 * v8 + 8, 1);
  *result = 20;
  result[1] = v8;
  v4 = (int)(result + 2);
  if ( v8 )
  {
    v5 = 0;
    do
    {
      ++v5;
      result[2] = off_96BD40;
      result[5] = 0;
      result += 5;
    }
    while ( v5 != v8 );
  }
  Arrays::AnimTable::members = v4;
  if ( Arrays::AnimTable::size )
  {
    v6 = 0;
    v7 = 0;
    while ( 1 )
    {
      result = (_DWORD *)(*(int (__fastcall **)(int, Arrays::AnimTable *))(*(_DWORD *)(v4 + v6) + 12))(v4 + v6, this);
      ++v7;
      v6 += 20;
      if ( Arrays::AnimTable::size <= v7 )
        break;
      v4 = Arrays::AnimTable::members;
    }
  }
  return result;
}


// ===== 4b3a38 Arrays::AIFactionTable::read(IStreamBase *) =====
_DWORD *__fastcall Arrays::AIFactionTable::read(Arrays::AIFactionTable *this, IStreamBase *a2)
{
  _DWORD *result; // r0
  int v4; // r3
  int v5; // r2
  int v6; // r4
  unsigned int v7; // r5
  int v8; // [sp+4h] [bp-8h]

  v8 = StreamReader::readAs<unsigned int>((int)this);
  Arrays::AIFactionTable::finalize((Arrays::AIFactionTable *)v8);
  Arrays::AIFactionTable::size = v8;
  result = operator new[](12 * v8 + 8, 1);
  *result = 12;
  result[1] = v8;
  v4 = (int)(result + 2);
  if ( v8 )
  {
    v5 = 0;
    do
    {
      ++v5;
      result[2] = off_96BD70;
      result[4] = 0;
      result += 3;
    }
    while ( v5 != v8 );
  }
  Arrays::AIFactionTable::members = v4;
  if ( Arrays::AIFactionTable::size )
  {
    v6 = 0;
    v7 = 0;
    while ( 1 )
    {
      result = (_DWORD *)(*(int (__fastcall **)(int, Arrays::AIFactionTable *))(*(_DWORD *)(v4 + v6) + 12))(
                           v4 + v6,
                           this);
      ++v7;
      v6 += 12;
      if ( Arrays::AIFactionTable::size <= v7 )
        break;
      v4 = Arrays::AIFactionTable::members;
    }
  }
  return result;
}


// ===== 4b3b84 Arrays::AITable::read(IStreamBase *) =====
_DWORD *__fastcall Arrays::AITable::read(Arrays::AITable *this, IStreamBase *a2)
{
  _DWORD *result; // r0
  int v4; // r3
  int v5; // r2
  int v6; // r4
  unsigned int v7; // r5
  int v8; // [sp+4h] [bp-8h]

  v8 = StreamReader::readAs<unsigned int>((int)this);
  Arrays::AITable::finalize((Arrays::AITable *)v8);
  Arrays::AITable::size = v8;
  result = operator new[](68 * v8 + 8, 1);
  *result = 68;
  result[1] = v8;
  v4 = (int)(result + 2);
  if ( v8 )
  {
    v5 = 0;
    do
    {
      ++v5;
      result[2] = off_96BDA0;
      result[13] = 0;
      result += 17;
    }
    while ( v5 != v8 );
  }
  Arrays::AITable::members = v4;
  if ( Arrays::AITable::size )
  {
    v6 = 0;
    v7 = 0;
    while ( 1 )
    {
      result = (_DWORD *)(*(int (__fastcall **)(int, Arrays::AITable *))(*(_DWORD *)(v4 + v6) + 12))(v4 + v6, this);
      ++v7;
      v6 += 68;
      if ( Arrays::AITable::size <= v7 )
        break;
      v4 = Arrays::AITable::members;
    }
  }
  return result;
}


// ===== 4b3cd0 Arrays::DesignSettingsTable::read(IStreamBase *) =====
_DWORD *__fastcall Arrays::DesignSettingsTable::read(Arrays::DesignSettingsTable *this, IStreamBase *a2)
{
  _DWORD *result; // r0
  int v4; // r3
  int i; // r2
  int v6; // r4
  unsigned int v7; // r5
  int v8; // [sp+4h] [bp-8h]

  v8 = StreamReader::readAs<unsigned int>((int)this);
  Arrays::DesignSettingsTable::finalize((Arrays::DesignSettingsTable *)v8);
  Arrays::DesignSettingsTable::size = v8;
  result = operator new[](8 * (22 * v8 + 1), 1);
  *result = 176;
  result[1] = v8;
  v4 = (int)(result + 2);
  if ( v8 )
  {
    for ( i = 0; i != v8; ++i )
    {
      result[2] = off_96B6B0;
      result += 44;
    }
  }
  Arrays::DesignSettingsTable::members = v4;
  if ( Arrays::DesignSettingsTable::size )
  {
    v6 = 0;
    v7 = 0;
    while ( 1 )
    {
      result = (_DWORD *)(*(int (__fastcall **)(int, Arrays::DesignSettingsTable *))(*(_DWORD *)(v4 + v6) + 12))(
                           v4 + v6,
                           this);
      ++v7;
      v6 += 176;
      if ( Arrays::DesignSettingsTable::size <= v7 )
        break;
      v4 = Arrays::DesignSettingsTable::members;
    }
  }
  return result;
}


// ===== 4b3e18 Arrays::RectTable::read(IStreamBase *) =====
_DWORD *__fastcall Arrays::RectTable::read(Arrays::RectTable *this, IStreamBase *a2)
{
  _DWORD *result; // r0
  int v4; // r3
  int i; // r2
  int v6; // r4
  unsigned int v7; // r5
  int v8; // [sp+4h] [bp-8h]

  v8 = StreamReader::readAs<unsigned int>((int)this);
  Arrays::RectTable::finalize((Arrays::RectTable *)v8);
  Arrays::RectTable::size = v8;
  result = operator new[](20 * v8 + 8, 1);
  *result = 20;
  result[1] = v8;
  v4 = (int)(result + 2);
  if ( v8 )
  {
    for ( i = 0; i != v8; ++i )
    {
      result[2] = off_96B6C8;
      result += 5;
    }
  }
  Arrays::RectTable::members = v4;
  if ( Arrays::RectTable::size )
  {
    v6 = 0;
    v7 = 0;
    while ( 1 )
    {
      result = (_DWORD *)(*(int (__fastcall **)(int, Arrays::RectTable *))(*(_DWORD *)(v4 + v6) + 12))(v4 + v6, this);
      ++v7;
      v6 += 20;
      if ( Arrays::RectTable::size <= v7 )
        break;
      v4 = Arrays::RectTable::members;
    }
  }
  return result;
}


// ===== 4b3f5c Arrays::Charater_Templates::read(IStreamBase *) =====
_DWORD *__fastcall Arrays::Charater_Templates::read(Arrays::Charater_Templates *this, IStreamBase *a2)
{
  _DWORD *result; // r0
  int v4; // r3
  int v5; // r2
  int v6; // r4
  unsigned int v7; // r5
  int v8; // [sp+4h] [bp-8h]

  v8 = StreamReader::readAs<unsigned int>((int)this);
  Arrays::Charater_Templates::finalize((Arrays::Charater_Templates *)v8);
  Arrays::Charater_Templates::size = v8;
  result = operator new[](12 * v8 + 8, 1);
  *result = 12;
  result[1] = v8;
  v4 = (int)(result + 2);
  if ( v8 )
  {
    v5 = 0;
    do
    {
      ++v5;
      result[2] = off_96B740;
      result[4] = 0;
      result += 3;
    }
    while ( v5 != v8 );
  }
  Arrays::Charater_Templates::members = v4;
  if ( Arrays::Charater_Templates::size )
  {
    v6 = 0;
    v7 = 0;
    while ( 1 )
    {
      result = (_DWORD *)(*(int (__fastcall **)(int, Arrays::Charater_Templates *))(*(_DWORD *)(v4 + v6) + 12))(
                           v4 + v6,
                           this);
      ++v7;
      v6 += 12;
      if ( Arrays::Charater_Templates::size <= v7 )
        break;
      v4 = Arrays::Charater_Templates::members;
    }
  }
  return result;
}


// ===== 4b40a8 Arrays::StatListTable::read(IStreamBase *) =====
_DWORD *__fastcall Arrays::StatListTable::read(Arrays::StatListTable *this, IStreamBase *a2)
{
  _DWORD *result; // r0
  int v4; // r3
  int v5; // r2
  int v6; // r4
  unsigned int v7; // r5
  int v8; // [sp+4h] [bp-8h]

  v8 = StreamReader::readAs<unsigned int>((int)this);
  Arrays::StatListTable::finalize((Arrays::StatListTable *)v8);
  Arrays::StatListTable::size = v8;
  result = operator new[](12 * v8 + 8, 1);
  *result = 12;
  result[1] = v8;
  v4 = (int)(result + 2);
  if ( v8 )
  {
    v5 = 0;
    do
    {
      ++v5;
      result[2] = off_96B770;
      result[4] = 0;
      result += 3;
    }
    while ( v5 != v8 );
  }
  Arrays::StatListTable::members = v4;
  if ( Arrays::StatListTable::size )
  {
    v6 = 0;
    v7 = 0;
    while ( 1 )
    {
      result = (_DWORD *)(*(int (__fastcall **)(int, Arrays::StatListTable *))(*(_DWORD *)(v4 + v6) + 12))(
                           v4 + v6,
                           this);
      ++v7;
      v6 += 12;
      if ( Arrays::StatListTable::size <= v7 )
        break;
      v4 = Arrays::StatListTable::members;
    }
  }
  return result;
}


// ===== 4b41f4 Arrays::StatAutoAssignSchemeTable::read(IStreamBase *) =====
_DWORD *__fastcall Arrays::StatAutoAssignSchemeTable::read(Arrays::StatAutoAssignSchemeTable *this, IStreamBase *a2)
{
  _DWORD *result; // r0
  int v4; // r3
  int v5; // r2
  int v6; // r4
  unsigned int v7; // r5
  int v8; // [sp+4h] [bp-8h]

  v8 = StreamReader::readAs<unsigned int>((int)this);
  Arrays::StatAutoAssignSchemeTable::finalize((Arrays::StatAutoAssignSchemeTable *)v8);
  Arrays::StatAutoAssignSchemeTable::size = v8;
  result = operator new[](12 * v8 + 8, 1);
  *result = 12;
  result[1] = v8;
  v4 = (int)(result + 2);
  if ( v8 )
  {
    v5 = 0;
    do
    {
      ++v5;
      result[2] = off_96B788;
      result[4] = 0;
      result += 3;
    }
    while ( v5 != v8 );
  }
  Arrays::StatAutoAssignSchemeTable::members = v4;
  if ( Arrays::StatAutoAssignSchemeTable::size )
  {
    v6 = 0;
    v7 = 0;
    while ( 1 )
    {
      result = (_DWORD *)(*(int (__fastcall **)(int, Arrays::StatAutoAssignSchemeTable *))(*(_DWORD *)(v4 + v6) + 12))(
                           v4 + v6,
                           this);
      ++v7;
      v6 += 12;
      if ( Arrays::StatAutoAssignSchemeTable::size <= v7 )
        break;
      v4 = Arrays::StatAutoAssignSchemeTable::members;
    }
  }
  return result;
}


// ===== 4b4340 Arrays::CharacterTable::read(IStreamBase *) =====
_DWORD *__fastcall Arrays::CharacterTable::read(Arrays::CharacterTable *this, IStreamBase *a2)
{
  _DWORD *result; // r0
  int v4; // r3
  int i; // r2
  int v6; // r4
  unsigned int v7; // r5
  int v8; // [sp+4h] [bp-8h]

  v8 = StreamReader::readAs<unsigned int>((int)this);
  Arrays::CharacterTable::finalize((Arrays::CharacterTable *)v8);
  Arrays::CharacterTable::size = v8;
  result = operator new[](900 * v8 + 8, 1);
  *result = 900;
  result[1] = v8;
  v4 = (int)(result + 2);
  if ( v8 )
  {
    for ( i = 0; i != v8; ++i )
    {
      result[2] = off_96BBC0;
      result += 225;
    }
  }
  Arrays::CharacterTable::members = v4;
  if ( Arrays::CharacterTable::size )
  {
    v6 = 0;
    v7 = 0;
    while ( 1 )
    {
      result = (_DWORD *)(*(int (__fastcall **)(int, Arrays::CharacterTable *))(*(_DWORD *)(v4 + v6) + 12))(
                           v4 + v6,
                           this);
      ++v7;
      v6 += 900;
      if ( Arrays::CharacterTable::size <= v7 )
        break;
      v4 = Arrays::CharacterTable::members;
    }
  }
  return result;
}


// ===== 4b4484 Arrays::ClassTable::read(IStreamBase *) =====
_DWORD *__fastcall Arrays::ClassTable::read(Arrays::ClassTable *this, IStreamBase *a2)
{
  _DWORD *result; // r0
  int v4; // r3
  int v5; // r2
  int v6; // r4
  unsigned int v7; // r5
  int v8; // [sp+4h] [bp-8h]

  v8 = StreamReader::readAs<unsigned int>((int)this);
  Arrays::ClassTable::finalize((Arrays::ClassTable *)v8);
  Arrays::ClassTable::size = v8;
  result = operator new[](12 * v8 + 8, 1);
  *result = 12;
  result[1] = v8;
  v4 = (int)(result + 2);
  if ( v8 )
  {
    v5 = 0;
    do
    {
      ++v5;
      result[2] = off_96BCE0;
      result[4] = 0;
      result += 3;
    }
    while ( v5 != v8 );
  }
  Arrays::ClassTable::members = v4;
  if ( Arrays::ClassTable::size )
  {
    v6 = 0;
    v7 = 0;
    while ( 1 )
    {
      result = (_DWORD *)(*(int (__fastcall **)(int, Arrays::ClassTable *))(*(_DWORD *)(v4 + v6) + 12))(v4 + v6, this);
      ++v7;
      v6 += 12;
      if ( Arrays::ClassTable::size <= v7 )
        break;
      v4 = Arrays::ClassTable::members;
    }
  }
  return result;
}


// ===== 4b45d0 Arrays::CharAnimTable::read(IStreamBase *) =====
_DWORD *__fastcall Arrays::CharAnimTable::read(Arrays::CharAnimTable *this, IStreamBase *a2)
{
  _DWORD *result; // r0
  int v4; // r3
  int v5; // r2
  int v6; // r4
  unsigned int v7; // r5
  int v8; // [sp+4h] [bp-8h]

  v8 = StreamReader::readAs<unsigned int>((int)this);
  Arrays::CharAnimTable::finalize((Arrays::CharAnimTable *)v8);
  Arrays::CharAnimTable::size = v8;
  result = operator new[](8 * (20 * v8 + 1), 1);
  *result = 160;
  result[1] = v8;
  v4 = (int)(result + 2);
  if ( v8 )
  {
    v5 = 0;
    do
    {
      ++v5;
      result[2] = off_96BD10;
      result[19] = 0;
      result[36] = 0;
      result += 40;
    }
    while ( v5 != v8 );
  }
  Arrays::CharAnimTable::members = v4;
  if ( Arrays::CharAnimTable::size )
  {
    v6 = 0;
    v7 = 0;
    while ( 1 )
    {
      result = (_DWORD *)(*(int (__fastcall **)(int, Arrays::CharAnimTable *))(*(_DWORD *)(v4 + v6) + 12))(
                           v4 + v6,
                           this);
      ++v7;
      v6 += 160;
      if ( Arrays::CharAnimTable::size <= v7 )
        break;
      v4 = Arrays::CharAnimTable::members;
    }
  }
  return result;
}


// ===== 4b4724 Arrays::ItemTable::readNames(IStreamBase *) =====
int __fastcall Arrays::ItemTable::readNames(Arrays::ItemTable *this, IStreamBase *a2)
{
  int result; // r0
  unsigned int v4; // r4
  int v5; // r11
  int v6; // r2
  unsigned __int64 v7; // [sp+0h] [bp-1Ch]
  char *v8; // [sp+10h] [bp-Ch] BYREF
  unsigned int v9; // [sp+14h] [bp-8h]

  Arrays::ItemTable::finalizeNames(this);
  result = StreamReader::readAs<unsigned int>((int)this);
  v9 = result;
  if ( Arrays::ItemTable::size == result )
  {
    result = (int)operator new[](4 * result, 1);
    Arrays::ItemTable::m_memberNames = result;
    if ( v9 )
    {
      v4 = 0;
      LODWORD(v7) = (char *)&v8 + 1;
      HIDWORD(v7) = (char *)&v8 + 2;
      do
      {
        StreamReader::readAs<unsigned int>((int)this, (int)&v8);
        v5 = Arrays::ItemTable::m_memberNames;
        *(_DWORD *)(v5 + 4 * v4) = operator new[]((size_t)(v8 + 1), 1);
        result = StreamReader::readStringEx(
                   this,
                   *(IStreamBase **)(Arrays::ItemTable::m_memberNames + 4 * v4),
                   v8,
                   0,
                   v7);
        v6 = *(_DWORD *)(Arrays::ItemTable::m_memberNames + 4 * v4++);
        v8[v6] = 0;
      }
      while ( v9 > v4 );
    }
  }
  return result;
}


// ===== 4b48bc Arrays::ItemList::readNames(IStreamBase *) =====
int __fastcall Arrays::ItemList::readNames(Arrays::ItemList *this, IStreamBase *a2)
{
  int result; // r0
  unsigned int v4; // r4
  int v5; // r11
  int v6; // r2
  unsigned __int64 v7; // [sp+0h] [bp-1Ch]
  char *v8; // [sp+10h] [bp-Ch] BYREF
  unsigned int v9; // [sp+14h] [bp-8h]

  Arrays::ItemList::finalizeNames(this);
  result = StreamReader::readAs<unsigned int>((int)this);
  v9 = result;
  if ( Arrays::ItemList::size == result )
  {
    result = (int)operator new[](4 * result, 1);
    Arrays::ItemList::m_memberNames = result;
    if ( v9 )
    {
      v4 = 0;
      LODWORD(v7) = (char *)&v8 + 1;
      HIDWORD(v7) = (char *)&v8 + 2;
      do
      {
        StreamReader::readAs<unsigned int>((int)this, (int)&v8);
        v5 = Arrays::ItemList::m_memberNames;
        *(_DWORD *)(v5 + 4 * v4) = operator new[]((size_t)(v8 + 1), 1);
        result = StreamReader::readStringEx(
                   this,
                   *(IStreamBase **)(Arrays::ItemList::m_memberNames + 4 * v4),
                   v8,
                   0,
                   v7);
        v6 = *(_DWORD *)(Arrays::ItemList::m_memberNames + 4 * v4++);
        v8[v6] = 0;
      }
      while ( v9 > v4 );
    }
  }
  return result;
}


// ===== 4b4a54 Arrays::ItemList::skipNames(IStreamBase *) =====
// attributes: thunk
int __fastcall Arrays::ItemList::skipNames(Arrays::ItemList *this, IStreamBase *a2)
{
  return Arrays::ItemList::readNames(this, a2);
}


// ===== 4b4a58 Arrays::CamAnimSetTable::readNames(IStreamBase *) =====
int __fastcall Arrays::CamAnimSetTable::readNames(Arrays::CamAnimSetTable *this, IStreamBase *a2)
{
  int result; // r0
  unsigned int v4; // r4
  int v5; // r11
  int v6; // r2
  unsigned __int64 v7; // [sp+0h] [bp-1Ch]
  char *v8; // [sp+10h] [bp-Ch] BYREF
  unsigned int v9; // [sp+14h] [bp-8h]

  Arrays::CamAnimSetTable::finalizeNames(this);
  result = StreamReader::readAs<unsigned int>((int)this);
  v9 = result;
  if ( Arrays::CamAnimSetTable::size == result )
  {
    result = (int)operator new[](4 * result, 1);
    Arrays::CamAnimSetTable::m_memberNames = result;
    if ( v9 )
    {
      v4 = 0;
      LODWORD(v7) = (char *)&v8 + 1;
      HIDWORD(v7) = (char *)&v8 + 2;
      do
      {
        StreamReader::readAs<unsigned int>((int)this, (int)&v8);
        v5 = Arrays::CamAnimSetTable::m_memberNames;
        *(_DWORD *)(v5 + 4 * v4) = operator new[]((size_t)(v8 + 1), 1);
        result = StreamReader::readStringEx(
                   this,
                   *(IStreamBase **)(Arrays::CamAnimSetTable::m_memberNames + 4 * v4),
                   v8,
                   0,
                   v7);
        v6 = *(_DWORD *)(Arrays::CamAnimSetTable::m_memberNames + 4 * v4++);
        v8[v6] = 0;
      }
      while ( v9 > v4 );
    }
  }
  return result;
}


// ===== 4b4bf0 Arrays::AnimTable::readNames(IStreamBase *) =====
int __fastcall Arrays::AnimTable::readNames(Arrays::AnimTable *this, IStreamBase *a2)
{
  int result; // r0
  unsigned int v4; // r4
  int v5; // r11
  int v6; // r2
  unsigned __int64 v7; // [sp+0h] [bp-1Ch]
  char *v8; // [sp+10h] [bp-Ch] BYREF
  unsigned int v9; // [sp+14h] [bp-8h]

  Arrays::AnimTable::finalizeNames(this);
  result = StreamReader::readAs<unsigned int>((int)this);
  v9 = result;
  if ( Arrays::AnimTable::size == result )
  {
    result = (int)operator new[](4 * result, 1);
    Arrays::AnimTable::m_memberNames = result;
    if ( v9 )
    {
      v4 = 0;
      LODWORD(v7) = (char *)&v8 + 1;
      HIDWORD(v7) = (char *)&v8 + 2;
      do
      {
        StreamReader::readAs<unsigned int>((int)this, (int)&v8);
        v5 = Arrays::AnimTable::m_memberNames;
        *(_DWORD *)(v5 + 4 * v4) = operator new[]((size_t)(v8 + 1), 1);
        result = StreamReader::readStringEx(
                   this,
                   *(IStreamBase **)(Arrays::AnimTable::m_memberNames + 4 * v4),
                   v8,
                   0,
                   v7);
        v6 = *(_DWORD *)(Arrays::AnimTable::m_memberNames + 4 * v4++);
        v8[v6] = 0;
      }
      while ( v9 > v4 );
    }
  }
  return result;
}


// ===== 4b4d88 Arrays::AnimTable::skipNames(IStreamBase *) =====
// attributes: thunk
int __fastcall Arrays::AnimTable::skipNames(Arrays::AnimTable *this, IStreamBase *a2)
{
  return Arrays::AnimTable::readNames(this, a2);
}


// ===== 4b4d8c Arrays::ItemAudioVisualTable::readNames(IStreamBase *) =====
int __fastcall Arrays::ItemAudioVisualTable::readNames(Arrays::ItemAudioVisualTable *this, IStreamBase *a2)
{
  int result; // r0
  unsigned int v4; // r4
  int v5; // r11
  int v6; // r2
  unsigned __int64 v7; // [sp+0h] [bp-1Ch]
  char *v8; // [sp+10h] [bp-Ch] BYREF
  unsigned int v9; // [sp+14h] [bp-8h]

  Arrays::ItemAudioVisualTable::finalizeNames(this);
  result = StreamReader::readAs<unsigned int>((int)this);
  v9 = result;
  if ( Arrays::ItemAudioVisualTable::size == result )
  {
    result = (int)operator new[](4 * result, 1);
    Arrays::ItemAudioVisualTable::m_memberNames = result;
    if ( v9 )
    {
      v4 = 0;
      LODWORD(v7) = (char *)&v8 + 1;
      HIDWORD(v7) = (char *)&v8 + 2;
      do
      {
        StreamReader::readAs<unsigned int>((int)this, (int)&v8);
        v5 = Arrays::ItemAudioVisualTable::m_memberNames;
        *(_DWORD *)(v5 + 4 * v4) = operator new[]((size_t)(v8 + 1), 1);
        result = StreamReader::readStringEx(
                   this,
                   *(IStreamBase **)(Arrays::ItemAudioVisualTable::m_memberNames + 4 * v4),
                   v8,
                   0,
                   v7);
        v6 = *(_DWORD *)(Arrays::ItemAudioVisualTable::m_memberNames + 4 * v4++);
        v8[v6] = 0;
      }
      while ( v9 > v4 );
    }
  }
  return result;
}


// ===== 4b4f24 Arrays::ItemAudioVisualTable::skipNames(IStreamBase *) =====
// attributes: thunk
int __fastcall Arrays::ItemAudioVisualTable::skipNames(Arrays::ItemAudioVisualTable *this, IStreamBase *a2)
{
  return Arrays::ItemAudioVisualTable::readNames(this, a2);
}


// ===== 4b4f28 Arrays::LevelList::readNames(IStreamBase *) =====
int __fastcall Arrays::LevelList::readNames(Arrays::LevelList *this, IStreamBase *a2)
{
  int result; // r0
  unsigned int v4; // r4
  int v5; // r11
  int v6; // r2
  unsigned __int64 v7; // [sp+0h] [bp-1Ch]
  char *v8; // [sp+10h] [bp-Ch] BYREF
  unsigned int v9; // [sp+14h] [bp-8h]

  Arrays::LevelList::finalizeNames(this);
  result = StreamReader::readAs<unsigned int>((int)this);
  v9 = result;
  if ( Arrays::LevelList::size == result )
  {
    result = (int)operator new[](4 * result, 1);
    Arrays::LevelList::m_memberNames = result;
    if ( v9 )
    {
      v4 = 0;
      LODWORD(v7) = (char *)&v8 + 1;
      HIDWORD(v7) = (char *)&v8 + 2;
      do
      {
        StreamReader::readAs<unsigned int>((int)this, (int)&v8);
        v5 = Arrays::LevelList::m_memberNames;
        *(_DWORD *)(v5 + 4 * v4) = operator new[]((size_t)(v8 + 1), 1);
        result = StreamReader::readStringEx(
                   this,
                   *(IStreamBase **)(Arrays::LevelList::m_memberNames + 4 * v4),
                   v8,
                   0,
                   v7);
        v6 = *(_DWORD *)(Arrays::LevelList::m_memberNames + 4 * v4++);
        v8[v6] = 0;
      }
      while ( v9 > v4 );
    }
  }
  return result;
}


// ===== 4b50c0 Arrays::InventoryTable::readNames(IStreamBase *) =====
int __fastcall Arrays::InventoryTable::readNames(Arrays::InventoryTable *this, IStreamBase *a2)
{
  int result; // r0
  unsigned int v4; // r4
  int v5; // r11
  int v6; // r2
  unsigned __int64 v7; // [sp+0h] [bp-1Ch]
  char *v8; // [sp+10h] [bp-Ch] BYREF
  unsigned int v9; // [sp+14h] [bp-8h]

  Arrays::InventoryTable::finalizeNames(this);
  result = StreamReader::readAs<unsigned int>((int)this);
  v9 = result;
  if ( Arrays::InventoryTable::size == result )
  {
    result = (int)operator new[](4 * result, 1);
    Arrays::InventoryTable::m_memberNames = result;
    if ( v9 )
    {
      v4 = 0;
      LODWORD(v7) = (char *)&v8 + 1;
      HIDWORD(v7) = (char *)&v8 + 2;
      do
      {
        StreamReader::readAs<unsigned int>((int)this, (int)&v8);
        v5 = Arrays::InventoryTable::m_memberNames;
        *(_DWORD *)(v5 + 4 * v4) = operator new[]((size_t)(v8 + 1), 1);
        result = StreamReader::readStringEx(
                   this,
                   *(IStreamBase **)(Arrays::InventoryTable::m_memberNames + 4 * v4),
                   v8,
                   0,
                   v7);
        v6 = *(_DWORD *)(Arrays::InventoryTable::m_memberNames + 4 * v4++);
        v8[v6] = 0;
      }
      while ( v9 > v4 );
    }
  }
  return result;
}


// ===== 4b5258 Arrays::InventoryTable::skipNames(IStreamBase *) =====
// attributes: thunk
int __fastcall Arrays::InventoryTable::skipNames(Arrays::InventoryTable *this, IStreamBase *a2)
{
  return Arrays::InventoryTable::readNames(this, a2);
}


// ===== 4b525c Arrays::DropTilePriorityTable::readNames(IStreamBase *) =====
int __fastcall Arrays::DropTilePriorityTable::readNames(Arrays::DropTilePriorityTable *this, IStreamBase *a2)
{
  int result; // r0
  unsigned int v4; // r4
  int v5; // r11
  int v6; // r2
  unsigned __int64 v7; // [sp+0h] [bp-1Ch]
  char *v8; // [sp+10h] [bp-Ch] BYREF
  unsigned int v9; // [sp+14h] [bp-8h]

  Arrays::DropTilePriorityTable::finalizeNames(this);
  result = StreamReader::readAs<unsigned int>((int)this);
  v9 = result;
  if ( Arrays::DropTilePriorityTable::size == result )
  {
    result = (int)operator new[](4 * result, 1);
    Arrays::DropTilePriorityTable::m_memberNames = result;
    if ( v9 )
    {
      v4 = 0;
      LODWORD(v7) = (char *)&v8 + 1;
      HIDWORD(v7) = (char *)&v8 + 2;
      do
      {
        StreamReader::readAs<unsigned int>((int)this, (int)&v8);
        v5 = Arrays::DropTilePriorityTable::m_memberNames;
        *(_DWORD *)(v5 + 4 * v4) = operator new[]((size_t)(v8 + 1), 1);
        result = StreamReader::readStringEx(
                   this,
                   *(IStreamBase **)(Arrays::DropTilePriorityTable::m_memberNames + 4 * v4),
                   v8,
                   0,
                   v7);
        v6 = *(_DWORD *)(Arrays::DropTilePriorityTable::m_memberNames + 4 * v4++);
        v8[v6] = 0;
      }
      while ( v9 > v4 );
    }
  }
  return result;
}


// ===== 4b53f4 Arrays::DropTilePriorityTable::skipNames(IStreamBase *) =====
// attributes: thunk
int __fastcall Arrays::DropTilePriorityTable::skipNames(Arrays::DropTilePriorityTable *this, IStreamBase *a2)
{
  return Arrays::DropTilePriorityTable::readNames(this, a2);
}


// ===== 4b53f8 Arrays::StrID_Languages::read(IStreamBase *) =====
_DWORD *__fastcall Arrays::StrID_Languages::read(Arrays::StrID_Languages *this, IStreamBase *a2)
{
  _DWORD *result; // r0
  int v4; // r3
  int v5; // r2
  int v6; // r4
  unsigned int v7; // r5
  int v8; // [sp+4h] [bp-8h]

  v8 = StreamReader::readAs<unsigned int>((int)this);
  Arrays::StrID_Languages::finalize((Arrays::StrID_Languages *)v8);
  Arrays::StrID_Languages::size = v8;
  result = operator new[](12 * v8 + 8, 1);
  *result = 12;
  result[1] = v8;
  v4 = (int)(result + 2);
  if ( v8 )
  {
    v5 = 0;
    do
    {
      ++v5;
      result[2] = off_969D90;
      result[4] = 0;
      result += 3;
    }
    while ( v5 != v8 );
  }
  Arrays::StrID_Languages::members = v4;
  if ( Arrays::StrID_Languages::size )
  {
    v6 = 0;
    v7 = 0;
    while ( 1 )
    {
      result = (_DWORD *)(*(int (__fastcall **)(int, Arrays::StrID_Languages *))(*(_DWORD *)(v4 + v6) + 12))(
                           v4 + v6,
                           this);
      ++v7;
      v6 += 12;
      if ( Arrays::StrID_Languages::size <= v7 )
        break;
      v4 = Arrays::StrID_Languages::members;
    }
  }
  return result;
}


// ===== 4b5544 Arrays::GameObjectDict::read(IStreamBase *) =====
_DWORD *__fastcall Arrays::GameObjectDict::read(Arrays::GameObjectDict *this, IStreamBase *a2)
{
  _DWORD *result; // r0
  int v4; // r3
  int v5; // r2
  int v6; // r4
  unsigned int v7; // r5
  int v8; // [sp+4h] [bp-8h]

  v8 = StreamReader::readAs<unsigned int>((int)this);
  Arrays::GameObjectDict::finalize((Arrays::GameObjectDict *)v8);
  Arrays::GameObjectDict::size = v8;
  result = operator new[](12 * v8 + 8, 1);
  *result = 12;
  result[1] = v8;
  v4 = (int)(result + 2);
  if ( v8 )
  {
    v5 = 0;
    do
    {
      ++v5;
      result[2] = off_96B728;
      result[4] = 0;
      result += 3;
    }
    while ( v5 != v8 );
  }
  Arrays::GameObjectDict::members = v4;
  if ( Arrays::GameObjectDict::size )
  {
    v6 = 0;
    v7 = 0;
    while ( 1 )
    {
      result = (_DWORD *)(*(int (__fastcall **)(int, Arrays::GameObjectDict *))(*(_DWORD *)(v4 + v6) + 12))(
                           v4 + v6,
                           this);
      ++v7;
      v6 += 12;
      if ( Arrays::GameObjectDict::size <= v7 )
        break;
      v4 = Arrays::GameObjectDict::members;
    }
  }
  return result;
}


// ===== 4b5690 Arrays::Sounds::read(IStreamBase *) =====
_DWORD *__fastcall Arrays::Sounds::read(Arrays::Sounds *this, IStreamBase *a2)
{
  _DWORD *result; // r0
  int v4; // r3
  int i; // r2
  int v6; // r4
  unsigned int v7; // r5
  int v8; // [sp+4h] [bp-8h]

  v8 = StreamReader::readAs<unsigned int>((int)this);
  Arrays::Sounds::finalize((Arrays::Sounds *)v8);
  Arrays::Sounds::size = v8;
  result = operator new[](12 * v8 + 8, 1);
  *result = 12;
  result[1] = v8;
  v4 = (int)(result + 2);
  if ( v8 )
  {
    for ( i = 0; i != v8; ++i )
    {
      result[2] = off_96A3F0;
      result += 3;
    }
  }
  Arrays::Sounds::members = v4;
  if ( Arrays::Sounds::size )
  {
    v6 = 0;
    v7 = 0;
    while ( 1 )
    {
      result = (_DWORD *)(*(int (__fastcall **)(int, Arrays::Sounds *))(*(_DWORD *)(v4 + v6) + 12))(v4 + v6, this);
      ++v7;
      v6 += 12;
      if ( Arrays::Sounds::size <= v7 )
        break;
      v4 = Arrays::Sounds::members;
    }
  }
  return result;
}


// ===== 4b57d4 Arrays::GameDifficulties::readNames(IStreamBase *) =====
int __fastcall Arrays::GameDifficulties::readNames(Arrays::GameDifficulties *this, IStreamBase *a2)
{
  int result; // r0
  unsigned int v4; // r4
  int v5; // r11
  int v6; // r2
  unsigned __int64 v7; // [sp+0h] [bp-1Ch]
  char *v8; // [sp+10h] [bp-Ch] BYREF
  unsigned int v9; // [sp+14h] [bp-8h]

  Arrays::GameDifficulties::finalizeNames(this);
  result = StreamReader::readAs<unsigned int>((int)this);
  v9 = result;
  if ( Arrays::GameDifficulties::size == result )
  {
    result = (int)operator new[](4 * result, 1);
    Arrays::GameDifficulties::m_memberNames = result;
    if ( v9 )
    {
      v4 = 0;
      LODWORD(v7) = (char *)&v8 + 1;
      HIDWORD(v7) = (char *)&v8 + 2;
      do
      {
        StreamReader::readAs<unsigned int>((int)this, (int)&v8);
        v5 = Arrays::GameDifficulties::m_memberNames;
        *(_DWORD *)(v5 + 4 * v4) = operator new[]((size_t)(v8 + 1), 1);
        result = StreamReader::readStringEx(
                   this,
                   *(IStreamBase **)(Arrays::GameDifficulties::m_memberNames + 4 * v4),
                   v8,
                   0,
                   v7);
        v6 = *(_DWORD *)(Arrays::GameDifficulties::m_memberNames + 4 * v4++);
        v8[v6] = 0;
      }
      while ( v9 > v4 );
    }
  }
  return result;
}


// ===== 4b596c Arrays::ProjectileTraps::readNames(IStreamBase *) =====
int __fastcall Arrays::ProjectileTraps::readNames(Arrays::ProjectileTraps *this, IStreamBase *a2)
{
  int result; // r0
  unsigned int v4; // r4
  int v5; // r11
  int v6; // r2
  unsigned __int64 v7; // [sp+0h] [bp-1Ch]
  char *v8; // [sp+10h] [bp-Ch] BYREF
  unsigned int v9; // [sp+14h] [bp-8h]

  Arrays::ProjectileTraps::finalizeNames(this);
  result = StreamReader::readAs<unsigned int>((int)this);
  v9 = result;
  if ( Arrays::ProjectileTraps::size == result )
  {
    result = (int)operator new[](4 * result, 1);
    Arrays::ProjectileTraps::m_memberNames = result;
    if ( v9 )
    {
      v4 = 0;
      LODWORD(v7) = (char *)&v8 + 1;
      HIDWORD(v7) = (char *)&v8 + 2;
      do
      {
        StreamReader::readAs<unsigned int>((int)this, (int)&v8);
        v5 = Arrays::ProjectileTraps::m_memberNames;
        *(_DWORD *)(v5 + 4 * v4) = operator new[]((size_t)(v8 + 1), 1);
        result = StreamReader::readStringEx(
                   this,
                   *(IStreamBase **)(Arrays::ProjectileTraps::m_memberNames + 4 * v4),
                   v8,
                   0,
                   v7);
        v6 = *(_DWORD *)(Arrays::ProjectileTraps::m_memberNames + 4 * v4++);
        v8[v6] = 0;
      }
      while ( v9 > v4 );
    }
  }
  return result;
}


// ===== 4b5b04 Arrays::OpenableContainers::readNames(IStreamBase *) =====
int __fastcall Arrays::OpenableContainers::readNames(Arrays::OpenableContainers *this, IStreamBase *a2)
{
  int result; // r0
  unsigned int v4; // r4
  int v5; // r11
  int v6; // r2
  unsigned __int64 v7; // [sp+0h] [bp-1Ch]
  char *v8; // [sp+10h] [bp-Ch] BYREF
  unsigned int v9; // [sp+14h] [bp-8h]

  Arrays::OpenableContainers::finalizeNames(this);
  result = StreamReader::readAs<unsigned int>((int)this);
  v9 = result;
  if ( Arrays::OpenableContainers::size == result )
  {
    result = (int)operator new[](4 * result, 1);
    Arrays::OpenableContainers::m_memberNames = result;
    if ( v9 )
    {
      v4 = 0;
      LODWORD(v7) = (char *)&v8 + 1;
      HIDWORD(v7) = (char *)&v8 + 2;
      do
      {
        StreamReader::readAs<unsigned int>((int)this, (int)&v8);
        v5 = Arrays::OpenableContainers::m_memberNames;
        *(_DWORD *)(v5 + 4 * v4) = operator new[]((size_t)(v8 + 1), 1);
        result = StreamReader::readStringEx(
                   this,
                   *(IStreamBase **)(Arrays::OpenableContainers::m_memberNames + 4 * v4),
                   v8,
                   0,
                   v7);
        v6 = *(_DWORD *)(Arrays::OpenableContainers::m_memberNames + 4 * v4++);
        v8[v6] = 0;
      }
      while ( v9 > v4 );
    }
  }
  return result;
}


// ===== 4b5c9c Arrays::TriggerObjects::readNames(IStreamBase *) =====
int __fastcall Arrays::TriggerObjects::readNames(Arrays::TriggerObjects *this, IStreamBase *a2)
{
  int result; // r0
  unsigned int v4; // r4
  int v5; // r11
  int v6; // r2
  unsigned __int64 v7; // [sp+0h] [bp-1Ch]
  char *v8; // [sp+10h] [bp-Ch] BYREF
  unsigned int v9; // [sp+14h] [bp-8h]

  Arrays::TriggerObjects::finalizeNames(this);
  result = StreamReader::readAs<unsigned int>((int)this);
  v9 = result;
  if ( Arrays::TriggerObjects::size == result )
  {
    result = (int)operator new[](4 * result, 1);
    Arrays::TriggerObjects::m_memberNames = result;
    if ( v9 )
    {
      v4 = 0;
      LODWORD(v7) = (char *)&v8 + 1;
      HIDWORD(v7) = (char *)&v8 + 2;
      do
      {
        StreamReader::readAs<unsigned int>((int)this, (int)&v8);
        v5 = Arrays::TriggerObjects::m_memberNames;
        *(_DWORD *)(v5 + 4 * v4) = operator new[]((size_t)(v8 + 1), 1);
        result = StreamReader::readStringEx(
                   this,
                   *(IStreamBase **)(Arrays::TriggerObjects::m_memberNames + 4 * v4),
                   v8,
                   0,
                   v7);
        v6 = *(_DWORD *)(Arrays::TriggerObjects::m_memberNames + 4 * v4++);
        v8[v6] = 0;
      }
      while ( v9 > v4 );
    }
  }
  return result;
}


// ===== 4b5e34 Arrays::TimerTraps::readNames(IStreamBase *) =====
int __fastcall Arrays::TimerTraps::readNames(Arrays::TimerTraps *this, IStreamBase *a2)
{
  int result; // r0
  unsigned int v4; // r4
  int v5; // r11
  int v6; // r2
  unsigned __int64 v7; // [sp+0h] [bp-1Ch]
  char *v8; // [sp+10h] [bp-Ch] BYREF
  unsigned int v9; // [sp+14h] [bp-8h]

  Arrays::TimerTraps::finalizeNames(this);
  result = StreamReader::readAs<unsigned int>((int)this);
  v9 = result;
  if ( Arrays::TimerTraps::size == result )
  {
    result = (int)operator new[](4 * result, 1);
    Arrays::TimerTraps::m_memberNames = result;
    if ( v9 )
    {
      v4 = 0;
      LODWORD(v7) = (char *)&v8 + 1;
      HIDWORD(v7) = (char *)&v8 + 2;
      do
      {
        StreamReader::readAs<unsigned int>((int)this, (int)&v8);
        v5 = Arrays::TimerTraps::m_memberNames;
        *(_DWORD *)(v5 + 4 * v4) = operator new[]((size_t)(v8 + 1), 1);
        result = StreamReader::readStringEx(
                   this,
                   *(IStreamBase **)(Arrays::TimerTraps::m_memberNames + 4 * v4),
                   v8,
                   0,
                   v7);
        v6 = *(_DWORD *)(Arrays::TimerTraps::m_memberNames + 4 * v4++);
        v8[v6] = 0;
      }
      while ( v9 > v4 );
    }
  }
  return result;
}


// ===== 4b5fcc Arrays::ExplosiveTraps::readNames(IStreamBase *) =====
int __fastcall Arrays::ExplosiveTraps::readNames(Arrays::ExplosiveTraps *this, IStreamBase *a2)
{
  int result; // r0
  unsigned int v4; // r4
  int v5; // r11
  int v6; // r2
  unsigned __int64 v7; // [sp+0h] [bp-1Ch]
  char *v8; // [sp+10h] [bp-Ch] BYREF
  unsigned int v9; // [sp+14h] [bp-8h]

  Arrays::ExplosiveTraps::finalizeNames(this);
  result = StreamReader::readAs<unsigned int>((int)this);
  v9 = result;
  if ( Arrays::ExplosiveTraps::size == result )
  {
    result = (int)operator new[](4 * result, 1);
    Arrays::ExplosiveTraps::m_memberNames = result;
    if ( v9 )
    {
      v4 = 0;
      LODWORD(v7) = (char *)&v8 + 1;
      HIDWORD(v7) = (char *)&v8 + 2;
      do
      {
        StreamReader::readAs<unsigned int>((int)this, (int)&v8);
        v5 = Arrays::ExplosiveTraps::m_memberNames;
        *(_DWORD *)(v5 + 4 * v4) = operator new[]((size_t)(v8 + 1), 1);
        result = StreamReader::readStringEx(
                   this,
                   *(IStreamBase **)(Arrays::ExplosiveTraps::m_memberNames + 4 * v4),
                   v8,
                   0,
                   v7);
        v6 = *(_DWORD *)(Arrays::ExplosiveTraps::m_memberNames + 4 * v4++);
        v8[v6] = 0;
      }
      while ( v9 > v4 );
    }
  }
  return result;
}


// ===== 4b6164 Arrays::Doors::readNames(IStreamBase *) =====
int __fastcall Arrays::Doors::readNames(Arrays::Doors *this, IStreamBase *a2)
{
  int v3; // r1
  int result; // r0
  unsigned int v5; // r4
  int v6; // r11
  int v7; // r2
  unsigned __int64 v8; // [sp+0h] [bp-1Ch]
  char *v9; // [sp+10h] [bp-Ch] BYREF
  unsigned int v10; // [sp+14h] [bp-8h]

  Arrays::Doors::finalizeNames(this);
  result = StreamReader::readAs<unsigned int>(this, v3);
  v10 = result;
  if ( Arrays::Doors::size == result )
  {
    result = operator new[](4 * result, 1);
    Arrays::Doors::m_memberNames = result;
    if ( v10 )
    {
      v5 = 0;
      LODWORD(v8) = (char *)&v9 + 1;
      HIDWORD(v8) = (char *)&v9 + 2;
      do
      {
        StreamReader::readAs<unsigned int>(this, &v9);
        v6 = Arrays::Doors::m_memberNames;
        *(_DWORD *)(v6 + 4 * v5) = operator new[](v9 + 1, 1);
        result = StreamReader::readStringEx(this, *(IStreamBase **)(Arrays::Doors::m_memberNames + 4 * v5), v9, v8);
        v7 = *(_DWORD *)(Arrays::Doors::m_memberNames + 4 * v5++);
        v9[v7] = 0;
      }
      while ( v10 > v5 );
    }
  }
  return result;
}


// ===== 4b62fc Arrays::LiftableObjects::readNames(IStreamBase *) =====
int __fastcall Arrays::LiftableObjects::readNames(Arrays::LiftableObjects *this, IStreamBase *a2)
{
  int result; // r0
  unsigned int v4; // r4
  int v5; // r11
  int v6; // r2
  unsigned __int64 v7; // [sp+0h] [bp-1Ch]
  char *v8; // [sp+10h] [bp-Ch] BYREF
  unsigned int v9; // [sp+14h] [bp-8h]

  Arrays::LiftableObjects::finalizeNames(this);
  result = StreamReader::readAs<unsigned int>((int)this);
  v9 = result;
  if ( Arrays::LiftableObjects::size == result )
  {
    result = (int)operator new[](4 * result, 1);
    Arrays::LiftableObjects::m_memberNames = result;
    if ( v9 )
    {
      v4 = 0;
      LODWORD(v7) = (char *)&v8 + 1;
      HIDWORD(v7) = (char *)&v8 + 2;
      do
      {
        StreamReader::readAs<unsigned int>((int)this, (int)&v8);
        v5 = Arrays::LiftableObjects::m_memberNames;
        *(_DWORD *)(v5 + 4 * v4) = operator new[]((size_t)(v8 + 1), 1);
        result = StreamReader::readStringEx(
                   this,
                   *(IStreamBase **)(Arrays::LiftableObjects::m_memberNames + 4 * v4),
                   v8,
                   0,
                   v7);
        v6 = *(_DWORD *)(Arrays::LiftableObjects::m_memberNames + 4 * v4++);
        v8[v6] = 0;
      }
      while ( v9 > v4 );
    }
  }
  return result;
}


// ===== 4b6494 Arrays::GameObjectDamager::readNames(IStreamBase *) =====
int __fastcall Arrays::GameObjectDamager::readNames(Arrays::GameObjectDamager *this, IStreamBase *a2)
{
  int result; // r0
  unsigned int v4; // r4
  int v5; // r11
  int v6; // r2
  unsigned __int64 v7; // [sp+0h] [bp-1Ch]
  char *v8; // [sp+10h] [bp-Ch] BYREF
  unsigned int v9; // [sp+14h] [bp-8h]

  Arrays::GameObjectDamager::finalizeNames(this);
  result = StreamReader::readAs<unsigned int>((int)this);
  v9 = result;
  if ( Arrays::GameObjectDamager::size == result )
  {
    result = (int)operator new[](4 * result, 1);
    Arrays::GameObjectDamager::m_memberNames = result;
    if ( v9 )
    {
      v4 = 0;
      LODWORD(v7) = (char *)&v8 + 1;
      HIDWORD(v7) = (char *)&v8 + 2;
      do
      {
        StreamReader::readAs<unsigned int>((int)this, (int)&v8);
        v5 = Arrays::GameObjectDamager::m_memberNames;
        *(_DWORD *)(v5 + 4 * v4) = operator new[]((size_t)(v8 + 1), 1);
        result = StreamReader::readStringEx(
                   this,
                   *(IStreamBase **)(Arrays::GameObjectDamager::m_memberNames + 4 * v4),
                   v8,
                   0,
                   v7);
        v6 = *(_DWORD *)(Arrays::GameObjectDamager::m_memberNames + 4 * v4++);
        v8[v6] = 0;
      }
      while ( v9 > v4 );
    }
  }
  return result;
}


// ===== 4b662c Arrays::GameObjectDamager::skipNames(IStreamBase *) =====
// attributes: thunk
int __fastcall Arrays::GameObjectDamager::skipNames(Arrays::GameObjectDamager *this, IStreamBase *a2)
{
  return Arrays::GameObjectDamager::readNames(this, a2);
}


// ===== 4b6630 Arrays::ItemPowerTable::readNames(IStreamBase *) =====
int __fastcall Arrays::ItemPowerTable::readNames(Arrays::ItemPowerTable *this, IStreamBase *a2)
{
  int result; // r0
  unsigned int v4; // r4
  int v5; // r11
  int v6; // r2
  unsigned __int64 v7; // [sp+0h] [bp-1Ch]
  char *v8; // [sp+10h] [bp-Ch] BYREF
  unsigned int v9; // [sp+14h] [bp-8h]

  Arrays::ItemPowerTable::finalizeNames(this);
  result = StreamReader::readAs<unsigned int>((int)this);
  v9 = result;
  if ( Arrays::ItemPowerTable::size == result )
  {
    result = (int)operator new[](4 * result, 1);
    Arrays::ItemPowerTable::m_memberNames = result;
    if ( v9 )
    {
      v4 = 0;
      LODWORD(v7) = (char *)&v8 + 1;
      HIDWORD(v7) = (char *)&v8 + 2;
      do
      {
        StreamReader::readAs<unsigned int>((int)this, (int)&v8);
        v5 = Arrays::ItemPowerTable::m_memberNames;
        *(_DWORD *)(v5 + 4 * v4) = operator new[]((size_t)(v8 + 1), 1);
        result = StreamReader::readStringEx(
                   this,
                   *(IStreamBase **)(Arrays::ItemPowerTable::m_memberNames + 4 * v4),
                   v8,
                   0,
                   v7);
        v6 = *(_DWORD *)(Arrays::ItemPowerTable::m_memberNames + 4 * v4++);
        v8[v6] = 0;
      }
      while ( v9 > v4 );
    }
  }
  return result;
}


// ===== 4b67c8 Arrays::ItemPowerList::readNames(IStreamBase *) =====
int __fastcall Arrays::ItemPowerList::readNames(Arrays::ItemPowerList *this, IStreamBase *a2)
{
  int result; // r0
  unsigned int v4; // r4
  int v5; // r11
  int v6; // r2
  unsigned __int64 v7; // [sp+0h] [bp-1Ch]
  char *v8; // [sp+10h] [bp-Ch] BYREF
  unsigned int v9; // [sp+14h] [bp-8h]

  Arrays::ItemPowerList::finalizeNames(this);
  result = StreamReader::readAs<unsigned int>((int)this);
  v9 = result;
  if ( Arrays::ItemPowerList::size == result )
  {
    result = (int)operator new[](4 * result, 1);
    Arrays::ItemPowerList::m_memberNames = result;
    if ( v9 )
    {
      v4 = 0;
      LODWORD(v7) = (char *)&v8 + 1;
      HIDWORD(v7) = (char *)&v8 + 2;
      do
      {
        StreamReader::readAs<unsigned int>((int)this, (int)&v8);
        v5 = Arrays::ItemPowerList::m_memberNames;
        *(_DWORD *)(v5 + 4 * v4) = operator new[]((size_t)(v8 + 1), 1);
        result = StreamReader::readStringEx(
                   this,
                   *(IStreamBase **)(Arrays::ItemPowerList::m_memberNames + 4 * v4),
                   v8,
                   0,
                   v7);
        v6 = *(_DWORD *)(Arrays::ItemPowerList::m_memberNames + 4 * v4++);
        v8[v6] = 0;
      }
      while ( v9 > v4 );
    }
  }
  return result;
}


// ===== 4b6960 Arrays::ItemPowerList::skipNames(IStreamBase *) =====
// attributes: thunk
int __fastcall Arrays::ItemPowerList::skipNames(Arrays::ItemPowerList *this, IStreamBase *a2)
{
  return Arrays::ItemPowerList::readNames(this, a2);
}


// ===== 4b6964 Arrays::FastTravelList::readNames(IStreamBase *) =====
int __fastcall Arrays::FastTravelList::readNames(Arrays::FastTravelList *this, IStreamBase *a2)
{
  int result; // r0
  unsigned int v4; // r4
  int v5; // r11
  int v6; // r2
  unsigned __int64 v7; // [sp+0h] [bp-1Ch]
  char *v8; // [sp+10h] [bp-Ch] BYREF
  unsigned int v9; // [sp+14h] [bp-8h]

  Arrays::FastTravelList::finalizeNames(this);
  result = StreamReader::readAs<unsigned int>((int)this);
  v9 = result;
  if ( Arrays::FastTravelList::size == result )
  {
    result = (int)operator new[](4 * result, 1);
    Arrays::FastTravelList::m_memberNames = result;
    if ( v9 )
    {
      v4 = 0;
      LODWORD(v7) = (char *)&v8 + 1;
      HIDWORD(v7) = (char *)&v8 + 2;
      do
      {
        StreamReader::readAs<unsigned int>((int)this, (int)&v8);
        v5 = Arrays::FastTravelList::m_memberNames;
        *(_DWORD *)(v5 + 4 * v4) = operator new[]((size_t)(v8 + 1), 1);
        result = StreamReader::readStringEx(
                   this,
                   *(IStreamBase **)(Arrays::FastTravelList::m_memberNames + 4 * v4),
                   v8,
                   0,
                   v7);
        v6 = *(_DWORD *)(Arrays::FastTravelList::m_memberNames + 4 * v4++);
        v8[v6] = 0;
      }
      while ( v9 > v4 );
    }
  }
  return result;
}


// ===== 4b6afc Arrays::ItemBonusAttrMonopoly::readNames(IStreamBase *) =====
int __fastcall Arrays::ItemBonusAttrMonopoly::readNames(Arrays::ItemBonusAttrMonopoly *this, IStreamBase *a2)
{
  int result; // r0
  unsigned int v4; // r4
  int v5; // r11
  int v6; // r2
  unsigned __int64 v7; // [sp+0h] [bp-1Ch]
  char *v8; // [sp+10h] [bp-Ch] BYREF
  unsigned int v9; // [sp+14h] [bp-8h]

  Arrays::ItemBonusAttrMonopoly::finalizeNames(this);
  result = StreamReader::readAs<unsigned int>((int)this);
  v9 = result;
  if ( Arrays::ItemBonusAttrMonopoly::size == result )
  {
    result = (int)operator new[](4 * result, 1);
    Arrays::ItemBonusAttrMonopoly::m_memberNames = result;
    if ( v9 )
    {
      v4 = 0;
      LODWORD(v7) = (char *)&v8 + 1;
      HIDWORD(v7) = (char *)&v8 + 2;
      do
      {
        StreamReader::readAs<unsigned int>((int)this, (int)&v8);
        v5 = Arrays::ItemBonusAttrMonopoly::m_memberNames;
        *(_DWORD *)(v5 + 4 * v4) = operator new[]((size_t)(v8 + 1), 1);
        result = StreamReader::readStringEx(
                   this,
                   *(IStreamBase **)(Arrays::ItemBonusAttrMonopoly::m_memberNames + 4 * v4),
                   v8,
                   0,
                   v7);
        v6 = *(_DWORD *)(Arrays::ItemBonusAttrMonopoly::m_memberNames + 4 * v4++);
        v8[v6] = 0;
      }
      while ( v9 > v4 );
    }
  }
  return result;
}


// ===== 4b6c94 Arrays::ItemBonusAttrMonopoly::skipNames(IStreamBase *) =====
// attributes: thunk
int __fastcall Arrays::ItemBonusAttrMonopoly::skipNames(Arrays::ItemBonusAttrMonopoly *this, IStreamBase *a2)
{
  return Arrays::ItemBonusAttrMonopoly::readNames(this, a2);
}


// ===== 4b6c98 Arrays::TriggerTraps::readNames(IStreamBase *) =====
int __fastcall Arrays::TriggerTraps::readNames(Arrays::TriggerTraps *this, IStreamBase *a2)
{
  int result; // r0
  unsigned int v4; // r4
  int v5; // r11
  int v6; // r2
  unsigned __int64 v7; // [sp+0h] [bp-1Ch]
  char *v8; // [sp+10h] [bp-Ch] BYREF
  unsigned int v9; // [sp+14h] [bp-8h]

  Arrays::TriggerTraps::finalizeNames(this);
  result = StreamReader::readAs<unsigned int>((int)this);
  v9 = result;
  if ( Arrays::TriggerTraps::size == result )
  {
    result = (int)operator new[](4 * result, 1);
    Arrays::TriggerTraps::m_memberNames = result;
    if ( v9 )
    {
      v4 = 0;
      LODWORD(v7) = (char *)&v8 + 1;
      HIDWORD(v7) = (char *)&v8 + 2;
      do
      {
        StreamReader::readAs<unsigned int>((int)this, (int)&v8);
        v5 = Arrays::TriggerTraps::m_memberNames;
        *(_DWORD *)(v5 + 4 * v4) = operator new[]((size_t)(v8 + 1), 1);
        result = StreamReader::readStringEx(
                   this,
                   *(IStreamBase **)(Arrays::TriggerTraps::m_memberNames + 4 * v4),
                   v8,
                   0,
                   v7);
        v6 = *(_DWORD *)(Arrays::TriggerTraps::m_memberNames + 4 * v4++);
        v8[v6] = 0;
      }
      while ( v9 > v4 );
    }
  }
  return result;
}


// ===== 4b6e30 Arrays::TriggerPlates::readNames(IStreamBase *) =====
int __fastcall Arrays::TriggerPlates::readNames(Arrays::TriggerPlates *this, IStreamBase *a2)
{
  int result; // r0
  unsigned int v4; // r4
  int v5; // r11
  int v6; // r2
  unsigned __int64 v7; // [sp+0h] [bp-1Ch]
  char *v8; // [sp+10h] [bp-Ch] BYREF
  unsigned int v9; // [sp+14h] [bp-8h]

  Arrays::TriggerPlates::finalizeNames(this);
  result = StreamReader::readAs<unsigned int>((int)this);
  v9 = result;
  if ( Arrays::TriggerPlates::size == result )
  {
    result = (int)operator new[](4 * result, 1);
    Arrays::TriggerPlates::m_memberNames = result;
    if ( v9 )
    {
      v4 = 0;
      LODWORD(v7) = (char *)&v8 + 1;
      HIDWORD(v7) = (char *)&v8 + 2;
      do
      {
        StreamReader::readAs<unsigned int>((int)this, (int)&v8);
        v5 = Arrays::TriggerPlates::m_memberNames;
        *(_DWORD *)(v5 + 4 * v4) = operator new[]((size_t)(v8 + 1), 1);
        result = StreamReader::readStringEx(
                   this,
                   *(IStreamBase **)(Arrays::TriggerPlates::m_memberNames + 4 * v4),
                   v8,
                   0,
                   v7);
        v6 = *(_DWORD *)(Arrays::TriggerPlates::m_memberNames + 4 * v4++);
        v8[v6] = 0;
      }
      while ( v9 > v4 );
    }
  }
  return result;
}


// ===== 4b6fc8 Arrays::HintPages::readNames(IStreamBase *) =====
int __fastcall Arrays::HintPages::readNames(Arrays::HintPages *this, IStreamBase *a2)
{
  int result; // r0
  unsigned int v4; // r4
  int v5; // r11
  int v6; // r2
  unsigned __int64 v7; // [sp+0h] [bp-1Ch]
  char *v8; // [sp+10h] [bp-Ch] BYREF
  unsigned int v9; // [sp+14h] [bp-8h]

  Arrays::HintPages::finalizeNames(this);
  result = StreamReader::readAs<unsigned int>((int)this);
  v9 = result;
  if ( Arrays::HintPages::size == result )
  {
    result = (int)operator new[](4 * result, 1);
    Arrays::HintPages::m_memberNames = result;
    if ( v9 )
    {
      v4 = 0;
      LODWORD(v7) = (char *)&v8 + 1;
      HIDWORD(v7) = (char *)&v8 + 2;
      do
      {
        StreamReader::readAs<unsigned int>((int)this, (int)&v8);
        v5 = Arrays::HintPages::m_memberNames;
        *(_DWORD *)(v5 + 4 * v4) = operator new[]((size_t)(v8 + 1), 1);
        result = StreamReader::readStringEx(
                   this,
                   *(IStreamBase **)(Arrays::HintPages::m_memberNames + 4 * v4),
                   v8,
                   0,
                   v7);
        v6 = *(_DWORD *)(Arrays::HintPages::m_memberNames + 4 * v4++);
        v8[v6] = 0;
      }
      while ( v9 > v4 );
    }
  }
  return result;
}


// ===== 4b7160 Arrays::HintPages::skipNames(IStreamBase *) =====
// attributes: thunk
int __fastcall Arrays::HintPages::skipNames(Arrays::HintPages *this, IStreamBase *a2)
{
  return Arrays::HintPages::readNames(this, a2);
}


// ===== 4b7164 Arrays::HelpPages::readNames(IStreamBase *) =====
int __fastcall Arrays::HelpPages::readNames(Arrays::HelpPages *this, IStreamBase *a2)
{
  int result; // r0
  unsigned int v4; // r4
  int v5; // r11
  int v6; // r2
  unsigned __int64 v7; // [sp+0h] [bp-1Ch]
  char *v8; // [sp+10h] [bp-Ch] BYREF
  unsigned int v9; // [sp+14h] [bp-8h]

  Arrays::HelpPages::finalizeNames(this);
  result = StreamReader::readAs<unsigned int>((int)this);
  v9 = result;
  if ( Arrays::HelpPages::size == result )
  {
    result = (int)operator new[](4 * result, 1);
    Arrays::HelpPages::m_memberNames = result;
    if ( v9 )
    {
      v4 = 0;
      LODWORD(v7) = (char *)&v8 + 1;
      HIDWORD(v7) = (char *)&v8 + 2;
      do
      {
        StreamReader::readAs<unsigned int>((int)this, (int)&v8);
        v5 = Arrays::HelpPages::m_memberNames;
        *(_DWORD *)(v5 + 4 * v4) = operator new[]((size_t)(v8 + 1), 1);
        result = StreamReader::readStringEx(
                   this,
                   *(IStreamBase **)(Arrays::HelpPages::m_memberNames + 4 * v4),
                   v8,
                   0,
                   v7);
        v6 = *(_DWORD *)(Arrays::HelpPages::m_memberNames + 4 * v4++);
        v8[v6] = 0;
      }
      while ( v9 > v4 );
    }
  }
  return result;
}


// ===== 4b72fc Arrays::HelpPages::skipNames(IStreamBase *) =====
// attributes: thunk
int __fastcall Arrays::HelpPages::skipNames(Arrays::HelpPages *this, IStreamBase *a2)
{
  return Arrays::HelpPages::readNames(this, a2);
}


// ===== 4b7300 Arrays::AIFactionTable::readNames(IStreamBase *) =====
int __fastcall Arrays::AIFactionTable::readNames(Arrays::AIFactionTable *this, IStreamBase *a2)
{
  int result; // r0
  unsigned int v4; // r4
  int v5; // r11
  int v6; // r2
  unsigned __int64 v7; // [sp+0h] [bp-1Ch]
  char *v8; // [sp+10h] [bp-Ch] BYREF
  unsigned int v9; // [sp+14h] [bp-8h]

  Arrays::AIFactionTable::finalizeNames(this);
  result = StreamReader::readAs<unsigned int>((int)this);
  v9 = result;
  if ( Arrays::AIFactionTable::size == result )
  {
    result = (int)operator new[](4 * result, 1);
    Arrays::AIFactionTable::m_memberNames = result;
    if ( v9 )
    {
      v4 = 0;
      LODWORD(v7) = (char *)&v8 + 1;
      HIDWORD(v7) = (char *)&v8 + 2;
      do
      {
        StreamReader::readAs<unsigned int>((int)this, (int)&v8);
        v5 = Arrays::AIFactionTable::m_memberNames;
        *(_DWORD *)(v5 + 4 * v4) = operator new[]((size_t)(v8 + 1), 1);
        result = StreamReader::readStringEx(
                   this,
                   *(IStreamBase **)(Arrays::AIFactionTable::m_memberNames + 4 * v4),
                   v8,
                   0,
                   v7);
        v6 = *(_DWORD *)(Arrays::AIFactionTable::m_memberNames + 4 * v4++);
        v8[v6] = 0;
      }
      while ( v9 > v4 );
    }
  }
  return result;
}


// ===== 4b7498 Arrays::AIFactionTable::skipNames(IStreamBase *) =====
// attributes: thunk
int __fastcall Arrays::AIFactionTable::skipNames(Arrays::AIFactionTable *this, IStreamBase *a2)
{
  return Arrays::AIFactionTable::readNames(this, a2);
}


// ===== 4b749c Arrays::AITable::readNames(IStreamBase *) =====
int __fastcall Arrays::AITable::readNames(Arrays::AITable *this, IStreamBase *a2)
{
  int result; // r0
  unsigned int v4; // r4
  int v5; // r11
  int v6; // r2
  unsigned __int64 v7; // [sp+0h] [bp-1Ch]
  char *v8; // [sp+10h] [bp-Ch] BYREF
  unsigned int v9; // [sp+14h] [bp-8h]

  Arrays::AITable::finalizeNames(this);
  result = StreamReader::readAs<unsigned int>((int)this);
  v9 = result;
  if ( Arrays::AITable::size == result )
  {
    result = (int)operator new[](4 * result, 1);
    Arrays::AITable::m_memberNames = result;
    if ( v9 )
    {
      v4 = 0;
      LODWORD(v7) = (char *)&v8 + 1;
      HIDWORD(v7) = (char *)&v8 + 2;
      do
      {
        StreamReader::readAs<unsigned int>((int)this, (int)&v8);
        v5 = Arrays::AITable::m_memberNames;
        *(_DWORD *)(v5 + 4 * v4) = operator new[]((size_t)(v8 + 1), 1);
        result = StreamReader::readStringEx(this, *(IStreamBase **)(Arrays::AITable::m_memberNames + 4 * v4), v8, 0, v7);
        v6 = *(_DWORD *)(Arrays::AITable::m_memberNames + 4 * v4++);
        v8[v6] = 0;
      }
      while ( v9 > v4 );
    }
  }
  return result;
}


// ===== 4b7634 Arrays::AITable::skipNames(IStreamBase *) =====
// attributes: thunk
int __fastcall Arrays::AITable::skipNames(Arrays::AITable *this, IStreamBase *a2)
{
  return Arrays::AITable::readNames(this, a2);
}


// ===== 4b7638 Arrays::DesignSettingsTable::readNames(IStreamBase *) =====
int __fastcall Arrays::DesignSettingsTable::readNames(Arrays::DesignSettingsTable *this, IStreamBase *a2)
{
  int result; // r0
  unsigned int v4; // r4
  int v5; // r11
  int v6; // r2
  unsigned __int64 v7; // [sp+0h] [bp-1Ch]
  char *v8; // [sp+10h] [bp-Ch] BYREF
  unsigned int v9; // [sp+14h] [bp-8h]

  Arrays::DesignSettingsTable::finalizeNames(this);
  result = StreamReader::readAs<unsigned int>((int)this);
  v9 = result;
  if ( Arrays::DesignSettingsTable::size == result )
  {
    result = (int)operator new[](4 * result, 1);
    Arrays::DesignSettingsTable::m_memberNames = result;
    if ( v9 )
    {
      v4 = 0;
      LODWORD(v7) = (char *)&v8 + 1;
      HIDWORD(v7) = (char *)&v8 + 2;
      do
      {
        StreamReader::readAs<unsigned int>((int)this, (int)&v8);
        v5 = Arrays::DesignSettingsTable::m_memberNames;
        *(_DWORD *)(v5 + 4 * v4) = operator new[]((size_t)(v8 + 1), 1);
        result = StreamReader::readStringEx(
                   this,
                   *(IStreamBase **)(Arrays::DesignSettingsTable::m_memberNames + 4 * v4),
                   v8,
                   0,
                   v7);
        v6 = *(_DWORD *)(Arrays::DesignSettingsTable::m_memberNames + 4 * v4++);
        v8[v6] = 0;
      }
      while ( v9 > v4 );
    }
  }
  return result;
}


// ===== 4b77d0 Arrays::DesignSettingsTable::skipNames(IStreamBase *) =====
// attributes: thunk
int __fastcall Arrays::DesignSettingsTable::skipNames(Arrays::DesignSettingsTable *this, IStreamBase *a2)
{
  return Arrays::DesignSettingsTable::readNames(this, a2);
}


// ===== 4b77d4 Arrays::RectTable::readNames(IStreamBase *) =====
int __fastcall Arrays::RectTable::readNames(Arrays::RectTable *this, IStreamBase *a2)
{
  int result; // r0
  unsigned int v4; // r4
  int v5; // r11
  int v6; // r2
  unsigned __int64 v7; // [sp+0h] [bp-1Ch]
  char *v8; // [sp+10h] [bp-Ch] BYREF
  unsigned int v9; // [sp+14h] [bp-8h]

  Arrays::RectTable::finalizeNames(this);
  result = StreamReader::readAs<unsigned int>((int)this);
  v9 = result;
  if ( Arrays::RectTable::size == result )
  {
    result = (int)operator new[](4 * result, 1);
    Arrays::RectTable::m_memberNames = result;
    if ( v9 )
    {
      v4 = 0;
      LODWORD(v7) = (char *)&v8 + 1;
      HIDWORD(v7) = (char *)&v8 + 2;
      do
      {
        StreamReader::readAs<unsigned int>((int)this, (int)&v8);
        v5 = Arrays::RectTable::m_memberNames;
        *(_DWORD *)(v5 + 4 * v4) = operator new[]((size_t)(v8 + 1), 1);
        result = StreamReader::readStringEx(
                   this,
                   *(IStreamBase **)(Arrays::RectTable::m_memberNames + 4 * v4),
                   v8,
                   0,
                   v7);
        v6 = *(_DWORD *)(Arrays::RectTable::m_memberNames + 4 * v4++);
        v8[v6] = 0;
      }
      while ( v9 > v4 );
    }
  }
  return result;
}


// ===== 4b796c Arrays::RectTable::skipNames(IStreamBase *) =====
// attributes: thunk
int __fastcall Arrays::RectTable::skipNames(Arrays::RectTable *this, IStreamBase *a2)
{
  return Arrays::RectTable::readNames(this, a2);
}


// ===== 4b7970 Arrays::Charater_Templates::readNames(IStreamBase *) =====
int __fastcall Arrays::Charater_Templates::readNames(Arrays::Charater_Templates *this, IStreamBase *a2)
{
  int result; // r0
  unsigned int v4; // r4
  int v5; // r11
  int v6; // r2
  unsigned __int64 v7; // [sp+0h] [bp-1Ch]
  char *v8; // [sp+10h] [bp-Ch] BYREF
  unsigned int v9; // [sp+14h] [bp-8h]

  Arrays::Charater_Templates::finalizeNames(this);
  result = StreamReader::readAs<unsigned int>((int)this);
  v9 = result;
  if ( Arrays::Charater_Templates::size == result )
  {
    result = (int)operator new[](4 * result, 1);
    Arrays::Charater_Templates::m_memberNames = result;
    if ( v9 )
    {
      v4 = 0;
      LODWORD(v7) = (char *)&v8 + 1;
      HIDWORD(v7) = (char *)&v8 + 2;
      do
      {
        StreamReader::readAs<unsigned int>((int)this, (int)&v8);
        v5 = Arrays::Charater_Templates::m_memberNames;
        *(_DWORD *)(v5 + 4 * v4) = operator new[]((size_t)(v8 + 1), 1);
        result = StreamReader::readStringEx(
                   this,
                   *(IStreamBase **)(Arrays::Charater_Templates::m_memberNames + 4 * v4),
                   v8,
                   0,
                   v7);
        v6 = *(_DWORD *)(Arrays::Charater_Templates::m_memberNames + 4 * v4++);
        v8[v6] = 0;
      }
      while ( v9 > v4 );
    }
  }
  return result;
}


// ===== 4b7b08 Arrays::StatListTable::readNames(IStreamBase *) =====
int __fastcall Arrays::StatListTable::readNames(Arrays::StatListTable *this, IStreamBase *a2)
{
  int result; // r0
  unsigned int v4; // r4
  int v5; // r11
  int v6; // r2
  unsigned __int64 v7; // [sp+0h] [bp-1Ch]
  char *v8; // [sp+10h] [bp-Ch] BYREF
  unsigned int v9; // [sp+14h] [bp-8h]

  Arrays::StatListTable::finalizeNames(this);
  result = StreamReader::readAs<unsigned int>((int)this);
  v9 = result;
  if ( Arrays::StatListTable::size == result )
  {
    result = (int)operator new[](4 * result, 1);
    Arrays::StatListTable::m_memberNames = result;
    if ( v9 )
    {
      v4 = 0;
      LODWORD(v7) = (char *)&v8 + 1;
      HIDWORD(v7) = (char *)&v8 + 2;
      do
      {
        StreamReader::readAs<unsigned int>((int)this, (int)&v8);
        v5 = Arrays::StatListTable::m_memberNames;
        *(_DWORD *)(v5 + 4 * v4) = operator new[]((size_t)(v8 + 1), 1);
        result = StreamReader::readStringEx(
                   this,
                   *(IStreamBase **)(Arrays::StatListTable::m_memberNames + 4 * v4),
                   v8,
                   0,
                   v7);
        v6 = *(_DWORD *)(Arrays::StatListTable::m_memberNames + 4 * v4++);
        v8[v6] = 0;
      }
      while ( v9 > v4 );
    }
  }
  return result;
}


// ===== 4b7ca0 Arrays::StatListTable::skipNames(IStreamBase *) =====
// attributes: thunk
int __fastcall Arrays::StatListTable::skipNames(Arrays::StatListTable *this, IStreamBase *a2)
{
  return Arrays::StatListTable::readNames(this, a2);
}


// ===== 4b7ca4 Arrays::StatAutoAssignSchemeTable::readNames(IStreamBase *) =====
int __fastcall Arrays::StatAutoAssignSchemeTable::readNames(Arrays::StatAutoAssignSchemeTable *this, IStreamBase *a2)
{
  int result; // r0
  unsigned int v4; // r4
  int v5; // r11
  int v6; // r2
  unsigned __int64 v7; // [sp+0h] [bp-1Ch]
  char *v8; // [sp+10h] [bp-Ch] BYREF
  unsigned int v9; // [sp+14h] [bp-8h]

  Arrays::StatAutoAssignSchemeTable::finalizeNames(this);
  result = StreamReader::readAs<unsigned int>((int)this);
  v9 = result;
  if ( Arrays::StatAutoAssignSchemeTable::size == result )
  {
    result = (int)operator new[](4 * result, 1);
    Arrays::StatAutoAssignSchemeTable::m_memberNames = result;
    if ( v9 )
    {
      v4 = 0;
      LODWORD(v7) = (char *)&v8 + 1;
      HIDWORD(v7) = (char *)&v8 + 2;
      do
      {
        StreamReader::readAs<unsigned int>((int)this, (int)&v8);
        v5 = Arrays::StatAutoAssignSchemeTable::m_memberNames;
        *(_DWORD *)(v5 + 4 * v4) = operator new[]((size_t)(v8 + 1), 1);
        result = StreamReader::readStringEx(
                   this,
                   *(IStreamBase **)(Arrays::StatAutoAssignSchemeTable::m_memberNames + 4 * v4),
                   v8,
                   0,
                   v7);
        v6 = *(_DWORD *)(Arrays::StatAutoAssignSchemeTable::m_memberNames + 4 * v4++);
        v8[v6] = 0;
      }
      while ( v9 > v4 );
    }
  }
  return result;
}


// ===== 4b7e3c Arrays::StatAutoAssignSchemeTable::skipNames(IStreamBase *) =====
// attributes: thunk
int __fastcall Arrays::StatAutoAssignSchemeTable::skipNames(Arrays::StatAutoAssignSchemeTable *this, IStreamBase *a2)
{
  return Arrays::StatAutoAssignSchemeTable::readNames(this, a2);
}


// ===== 4b7e40 Arrays::CharacterTable::readNames(IStreamBase *) =====
int __fastcall Arrays::CharacterTable::readNames(Arrays::CharacterTable *this, IStreamBase *a2)
{
  int result; // r0
  unsigned int v4; // r4
  int v5; // r11
  int v6; // r2
  unsigned __int64 v7; // [sp+0h] [bp-1Ch]
  char *v8; // [sp+10h] [bp-Ch] BYREF
  unsigned int v9; // [sp+14h] [bp-8h]

  Arrays::CharacterTable::finalizeNames(this);
  result = StreamReader::readAs<unsigned int>((int)this);
  v9 = result;
  if ( Arrays::CharacterTable::size == result )
  {
    result = (int)operator new[](4 * result, 1);
    Arrays::CharacterTable::m_memberNames = result;
    if ( v9 )
    {
      v4 = 0;
      LODWORD(v7) = (char *)&v8 + 1;
      HIDWORD(v7) = (char *)&v8 + 2;
      do
      {
        StreamReader::readAs<unsigned int>((int)this, (int)&v8);
        v5 = Arrays::CharacterTable::m_memberNames;
        *(_DWORD *)(v5 + 4 * v4) = operator new[]((size_t)(v8 + 1), 1);
        result = StreamReader::readStringEx(
                   this,
                   *(IStreamBase **)(Arrays::CharacterTable::m_memberNames + 4 * v4),
                   v8,
                   0,
                   v7);
        v6 = *(_DWORD *)(Arrays::CharacterTable::m_memberNames + 4 * v4++);
        v8[v6] = 0;
      }
      while ( v9 > v4 );
    }
  }
  return result;
}


// ===== 4b7fd8 Arrays::ClassTable::readNames(IStreamBase *) =====
int __fastcall Arrays::ClassTable::readNames(Arrays::ClassTable *this, IStreamBase *a2)
{
  int result; // r0
  unsigned int v4; // r4
  int v5; // r11
  int v6; // r2
  unsigned __int64 v7; // [sp+0h] [bp-1Ch]
  char *v8; // [sp+10h] [bp-Ch] BYREF
  unsigned int v9; // [sp+14h] [bp-8h]

  Arrays::ClassTable::finalizeNames(this);
  result = StreamReader::readAs<unsigned int>((int)this);
  v9 = result;
  if ( Arrays::ClassTable::size == result )
  {
    result = (int)operator new[](4 * result, 1);
    Arrays::ClassTable::m_memberNames = result;
    if ( v9 )
    {
      v4 = 0;
      LODWORD(v7) = (char *)&v8 + 1;
      HIDWORD(v7) = (char *)&v8 + 2;
      do
      {
        StreamReader::readAs<unsigned int>((int)this, (int)&v8);
        v5 = Arrays::ClassTable::m_memberNames;
        *(_DWORD *)(v5 + 4 * v4) = operator new[]((size_t)(v8 + 1), 1);
        result = StreamReader::readStringEx(
                   this,
                   *(IStreamBase **)(Arrays::ClassTable::m_memberNames + 4 * v4),
                   v8,
                   0,
                   v7);
        v6 = *(_DWORD *)(Arrays::ClassTable::m_memberNames + 4 * v4++);
        v8[v6] = 0;
      }
      while ( v9 > v4 );
    }
  }
  return result;
}


// ===== 4b8170 Arrays::ClassTable::skipNames(IStreamBase *) =====
// attributes: thunk
int __fastcall Arrays::ClassTable::skipNames(Arrays::ClassTable *this, IStreamBase *a2)
{
  return Arrays::ClassTable::readNames(this, a2);
}


// ===== 4b8174 Arrays::CharAnimTable::readNames(IStreamBase *) =====
int __fastcall Arrays::CharAnimTable::readNames(Arrays::CharAnimTable *this, IStreamBase *a2)
{
  int result; // r0
  unsigned int v4; // r4
  int v5; // r11
  int v6; // r2
  unsigned __int64 v7; // [sp+0h] [bp-1Ch]
  char *v8; // [sp+10h] [bp-Ch] BYREF
  unsigned int v9; // [sp+14h] [bp-8h]

  Arrays::CharAnimTable::finalizeNames(this);
  result = StreamReader::readAs<unsigned int>((int)this);
  v9 = result;
  if ( Arrays::CharAnimTable::size == result )
  {
    result = (int)operator new[](4 * result, 1);
    Arrays::CharAnimTable::m_memberNames = result;
    if ( v9 )
    {
      v4 = 0;
      LODWORD(v7) = (char *)&v8 + 1;
      HIDWORD(v7) = (char *)&v8 + 2;
      do
      {
        StreamReader::readAs<unsigned int>((int)this, (int)&v8);
        v5 = Arrays::CharAnimTable::m_memberNames;
        *(_DWORD *)(v5 + 4 * v4) = operator new[]((size_t)(v8 + 1), 1);
        result = StreamReader::readStringEx(
                   this,
                   *(IStreamBase **)(Arrays::CharAnimTable::m_memberNames + 4 * v4),
                   v8,
                   0,
                   v7);
        v6 = *(_DWORD *)(Arrays::CharAnimTable::m_memberNames + 4 * v4++);
        v8[v6] = 0;
      }
      while ( v9 > v4 );
    }
  }
  return result;
}


// ===== 4b830c Arrays::ProjectileDict::read(IStreamBase *) =====
_DWORD *__fastcall Arrays::ProjectileDict::read(Arrays::ProjectileDict *this, IStreamBase *a2)
{
  _DWORD *result; // r0
  int v4; // r3
  int v5; // r2
  int v6; // r4
  unsigned int v7; // r5
  int v8; // [sp+4h] [bp-8h]

  v8 = StreamReader::readAs<unsigned int>((int)this);
  Arrays::ProjectileDict::finalize((Arrays::ProjectileDict *)v8);
  Arrays::ProjectileDict::size = v8;
  result = operator new[](12 * v8 + 8, 1);
  *result = 12;
  result[1] = v8;
  v4 = (int)(result + 2);
  if ( v8 )
  {
    v5 = 0;
    do
    {
      ++v5;
      result[2] = off_96B728;
      result[4] = 0;
      result += 3;
    }
    while ( v5 != v8 );
  }
  Arrays::ProjectileDict::members = v4;
  if ( Arrays::ProjectileDict::size )
  {
    v6 = 0;
    v7 = 0;
    while ( 1 )
    {
      result = (_DWORD *)(*(int (__fastcall **)(int, Arrays::ProjectileDict *))(*(_DWORD *)(v4 + v6) + 12))(
                           v4 + v6,
                           this);
      ++v7;
      v6 += 12;
      if ( Arrays::ProjectileDict::size <= v7 )
        break;
      v4 = Arrays::ProjectileDict::members;
    }
  }
  return result;
}


// ===== 4b8458 Arrays::EffectDict::read(IStreamBase *) =====
_DWORD *__fastcall Arrays::EffectDict::read(Arrays::EffectDict *this, IStreamBase *a2)
{
  _DWORD *result; // r0
  int v4; // r3
  int v5; // r2
  int v6; // r4
  unsigned int v7; // r5
  int v8; // [sp+4h] [bp-8h]

  v8 = StreamReader::readAs<unsigned int>(this, a2);
  Arrays::EffectDict::finalize((Arrays::EffectDict *)v8);
  Arrays::EffectDict::size = v8;
  result = (_DWORD *)operator new[](12 * v8 + 8, 1);
  *result = 12;
  result[1] = v8;
  v4 = (int)(result + 2);
  if ( v8 )
  {
    v5 = 0;
    do
    {
      ++v5;
      result[2] = off_96B728;
      result[4] = 0;
      result += 3;
    }
    while ( v5 != v8 );
  }
  Arrays::EffectDict::members = v4;
  if ( Arrays::EffectDict::size )
  {
    v6 = 0;
    v7 = 0;
    while ( 1 )
    {
      result = (_DWORD *)(*(int (__fastcall **)(int, Arrays::EffectDict *))(*(_DWORD *)(v4 + v6) + 12))(v4 + v6, this);
      ++v7;
      v6 += 12;
      if ( Arrays::EffectDict::size <= v7 )
        break;
      v4 = Arrays::EffectDict::members;
    }
  }
  return result;
}


// ===== 4b85a4 Arrays::AnimDict::read(IStreamBase *) =====
_DWORD *__fastcall Arrays::AnimDict::read(Arrays::AnimDict *this, IStreamBase *a2)
{
  _DWORD *result; // r0
  int v4; // r3
  int v5; // r2
  int v6; // r4
  unsigned int v7; // r5
  int v8; // [sp+4h] [bp-8h]

  v8 = StreamReader::readAs<unsigned int>((int)this);
  Arrays::AnimDict::finalize((Arrays::AnimDict *)v8);
  Arrays::AnimDict::size = v8;
  result = operator new[](12 * v8 + 8, 1);
  *result = 12;
  result[1] = v8;
  v4 = (int)(result + 2);
  if ( v8 )
  {
    v5 = 0;
    do
    {
      ++v5;
      result[2] = off_96B728;
      result[4] = 0;
      result += 3;
    }
    while ( v5 != v8 );
  }
  Arrays::AnimDict::members = v4;
  if ( Arrays::AnimDict::size )
  {
    v6 = 0;
    v7 = 0;
    while ( 1 )
    {
      result = (_DWORD *)(*(int (__fastcall **)(int, Arrays::AnimDict *))(*(_DWORD *)(v4 + v6) + 12))(v4 + v6, this);
      ++v7;
      v6 += 12;
      if ( Arrays::AnimDict::size <= v7 )
        break;
      v4 = Arrays::AnimDict::members;
    }
  }
  return result;
}


// ===== 4b86f0 Arrays::ModelDict::read(IStreamBase *) =====
_DWORD *__fastcall Arrays::ModelDict::read(Arrays::ModelDict *this, IStreamBase *a2)
{
  _DWORD *result; // r0
  int v4; // r3
  int v5; // r2
  int v6; // r4
  unsigned int v7; // r5
  int v8; // [sp+4h] [bp-8h]

  v8 = StreamReader::readAs<unsigned int>((int)this);
  Arrays::ModelDict::finalize((Arrays::ModelDict *)v8);
  Arrays::ModelDict::size = v8;
  result = operator new[](12 * v8 + 8, 1);
  *result = 12;
  result[1] = v8;
  v4 = (int)(result + 2);
  if ( v8 )
  {
    v5 = 0;
    do
    {
      ++v5;
      result[2] = off_96B728;
      result[4] = 0;
      result += 3;
    }
    while ( v5 != v8 );
  }
  Arrays::ModelDict::members = v4;
  if ( Arrays::ModelDict::size )
  {
    v6 = 0;
    v7 = 0;
    while ( 1 )
    {
      result = (_DWORD *)(*(int (__fastcall **)(int, Arrays::ModelDict *))(*(_DWORD *)(v4 + v6) + 12))(v4 + v6, this);
      ++v7;
      v6 += 12;
      if ( Arrays::ModelDict::size <= v7 )
        break;
      v4 = Arrays::ModelDict::members;
    }
  }
  return result;
}


// ===== 4b883c Arrays::WorldMapLockers::read(IStreamBase *) =====
_DWORD *__fastcall Arrays::WorldMapLockers::read(Arrays::WorldMapLockers *this, IStreamBase *a2)
{
  _DWORD *result; // r0
  int v4; // r3
  int i; // r2
  int v6; // r4
  unsigned int v7; // r5
  int v8; // [sp+4h] [bp-8h]

  v8 = StreamReader::readAs<unsigned int>((int)this);
  Arrays::WorldMapLockers::finalize((Arrays::WorldMapLockers *)v8);
  Arrays::WorldMapLockers::size = v8;
  result = operator new[](12 * v8 + 8, 1);
  *result = 12;
  result[1] = v8;
  v4 = (int)(result + 2);
  if ( v8 )
  {
    for ( i = 0; i != v8; ++i )
    {
      result[2] = off_969DC0;
      result += 3;
    }
  }
  Arrays::WorldMapLockers::members = v4;
  if ( Arrays::WorldMapLockers::size )
  {
    v6 = 0;
    v7 = 0;
    while ( 1 )
    {
      result = (_DWORD *)(*(int (__fastcall **)(int, Arrays::WorldMapLockers *))(*(_DWORD *)(v4 + v6) + 12))(
                           v4 + v6,
                           this);
      ++v7;
      v6 += 12;
      if ( Arrays::WorldMapLockers::size <= v7 )
        break;
      v4 = Arrays::WorldMapLockers::members;
    }
  }
  return result;
}


// ===== 4b8980 Arrays::WorldMap::read(IStreamBase *) =====
_DWORD *__fastcall Arrays::WorldMap::read(Arrays::WorldMap *this, IStreamBase *a2)
{
  _DWORD *result; // r0
  int v4; // r3
  int v5; // r2
  int v6; // r4
  unsigned int v7; // r5
  int v8; // [sp+4h] [bp-8h]

  v8 = StreamReader::readAs<unsigned int>((int)this);
  Arrays::WorldMap::finalize((Arrays::WorldMap *)v8);
  Arrays::WorldMap::size = v8;
  result = operator new[](20 * v8 + 8, 1);
  *result = 20;
  result[1] = v8;
  v4 = (int)(result + 2);
  if ( v8 )
  {
    v5 = 0;
    do
    {
      ++v5;
      result[2] = off_969DD8;
      result[6] = 0;
      result += 5;
    }
    while ( v5 != v8 );
  }
  Arrays::WorldMap::members = v4;
  if ( Arrays::WorldMap::size )
  {
    v6 = 0;
    v7 = 0;
    while ( 1 )
    {
      result = (_DWORD *)(*(int (__fastcall **)(int, Arrays::WorldMap *))(*(_DWORD *)(v4 + v6) + 12))(v4 + v6, this);
      ++v7;
      v6 += 20;
      if ( Arrays::WorldMap::size <= v7 )
        break;
      v4 = Arrays::WorldMap::members;
    }
  }
  return result;
}


// ===== 4b8acc Arrays::v2Quests::read(IStreamBase *) =====
_DWORD *__fastcall Arrays::v2Quests::read(Arrays::v2Quests *this, IStreamBase *a2)
{
  _DWORD *result; // r0
  int v4; // r3
  int v5; // r1
  int v6; // r4
  unsigned int v7; // r5
  int v8; // [sp+4h] [bp-8h]

  v8 = StreamReader::readAs<unsigned int>((int)this);
  Arrays::v2Quests::finalize((Arrays::v2Quests *)v8);
  Arrays::v2Quests::size = v8;
  result = operator new[](284 * v8 + 8, 1);
  *result = 284;
  result[1] = v8;
  v4 = (int)(result + 2);
  if ( v8 )
  {
    v5 = 0;
    do
    {
      ++v5;
      result[2] = off_96A018;
      result[8] = 0;
      result[10] = 0;
      result[12] = 0;
      result[14] = 0;
      result[16] = 0;
      result[17] = off_96A030;
      result[22] = 0;
      result[24] = 0;
      result[28] = off_96A030;
      result[33] = 0;
      result[35] = 0;
      result[42] = off_96A090;
      result[44] = 0;
      result[46] = 0;
      result[48] = 0;
      result[50] = 0;
      result[52] = 0;
      result[54] = 0;
      result[56] = 0;
      result[58] = 0;
      result[60] = 0;
      result[62] = 0;
      result[64] = 0;
      result[66] = 0;
      result[68] = 0;
      result[70] = 0;
      result += 71;
    }
    while ( v5 != v8 );
  }
  Arrays::v2Quests::members = v4;
  if ( Arrays::v2Quests::size )
  {
    v6 = 0;
    v7 = 0;
    while ( 1 )
    {
      result = (_DWORD *)(*(int (__fastcall **)(int, Arrays::v2Quests *))(*(_DWORD *)(v4 + v6) + 12))(v4 + v6, this);
      ++v7;
      v6 += 284;
      if ( Arrays::v2Quests::size <= v7 )
        break;
      v4 = Arrays::v2Quests::members;
    }
  }
  return result;
}


// ===== 4b8c9c Arrays::v2Events::read(IStreamBase *) =====
_DWORD *__fastcall Arrays::v2Events::read(Arrays::v2Events *this, IStreamBase *a2)
{
  _DWORD *result; // r0
  int v4; // r3
  int v5; // r2
  int v6; // r4
  unsigned int v7; // r5
  int v8; // [sp+4h] [bp-8h]

  v8 = StreamReader::readAs<unsigned int>((int)this);
  Arrays::v2Events::finalize((Arrays::v2Events *)v8);
  Arrays::v2Events::size = v8;
  result = operator new[](8 * (3 * v8 + 1), 1);
  *result = 24;
  result[1] = v8;
  v4 = (int)(result + 2);
  if ( v8 )
  {
    v5 = 0;
    do
    {
      ++v5;
      result[2] = off_96A000;
      result[5] = 0;
      result[7] = 0;
      result += 6;
    }
    while ( v5 != v8 );
  }
  Arrays::v2Events::members = v4;
  if ( Arrays::v2Events::size )
  {
    v6 = 0;
    v7 = 0;
    while ( 1 )
    {
      result = (_DWORD *)(*(int (__fastcall **)(int, Arrays::v2Events *))(*(_DWORD *)(v4 + v6) + 12))(v4 + v6, this);
      ++v7;
      v6 += 24;
      if ( Arrays::v2Events::size <= v7 )
        break;
      v4 = Arrays::v2Events::members;
    }
  }
  return result;
}


// ===== 4b8dec Arrays::v2Conditions::read(IStreamBase *) =====
_DWORD *__fastcall Arrays::v2Conditions::read(Arrays::v2Conditions *this, IStreamBase *a2)
{
  _DWORD *result; // r0
  int v4; // r3
  int v5; // r2
  int v6; // r4
  int v7; // [sp+4h] [bp-4h]

  v7 = StreamReader::readAs<unsigned int>((int)this);
  Arrays::v2Conditions::finalize((Arrays::v2Conditions *)v7);
  Arrays::v2Conditions::size = v7;
  result = operator new[](16 * v7 + 8, 1);
  *result = 16;
  result[1] = v7;
  v4 = (int)(result + 2);
  if ( v7 )
  {
    v5 = 0;
    do
    {
      ++v5;
      result[2] = off_96A0A8;
      result[4] = 0;
      result += 4;
    }
    while ( v5 != v7 );
  }
  Arrays::v2Conditions::members = v4;
  if ( Arrays::v2Conditions::size )
  {
    v6 = 0;
    while ( 1 )
    {
      result = (_DWORD *)(*(int (__fastcall **)(int, Arrays::v2Conditions *))(*(_DWORD *)(v4 + 16 * v6) + 12))(
                           v4 + 16 * v6,
                           this);
      if ( Arrays::v2Conditions::size <= (unsigned int)++v6 )
        break;
      v4 = Arrays::v2Conditions::members;
    }
  }
  return result;
}


// ===== 4b8f28 Arrays::TrophyTable::read(IStreamBase *) =====
_DWORD *__fastcall Arrays::TrophyTable::read(Arrays::TrophyTable *this, IStreamBase *a2)
{
  _DWORD *result; // r0
  int v4; // r3
  int i; // r2
  int v6; // r4
  int v7; // [sp+4h] [bp-4h]

  v7 = StreamReader::readAs<unsigned int>((int)this);
  Arrays::TrophyTable::finalize((Arrays::TrophyTable *)v7);
  Arrays::TrophyTable::size = v7;
  result = operator new[](32 * v7 + 8, 1);
  *result = 32;
  result[1] = v7;
  v4 = (int)(result + 2);
  if ( v7 )
  {
    for ( i = 0; i != v7; ++i )
    {
      result[2] = off_96A348;
      result += 8;
    }
  }
  Arrays::TrophyTable::members = v4;
  if ( Arrays::TrophyTable::size )
  {
    v6 = 0;
    while ( 1 )
    {
      result = (_DWORD *)(*(int (__fastcall **)(int, Arrays::TrophyTable *))(*(_DWORD *)(v4 + 32 * v6) + 12))(
                           v4 + 32 * v6,
                           this);
      if ( Arrays::TrophyTable::size <= (unsigned int)++v6 )
        break;
      v4 = Arrays::TrophyTable::members;
    }
  }
  return result;
}


// ===== 4b9060 Arrays::SpawnGroups::read(IStreamBase *) =====
_DWORD *__fastcall Arrays::SpawnGroups::read(Arrays::SpawnGroups *this, IStreamBase *a2)
{
  _DWORD *result; // r0
  int v4; // r3
  int v5; // r2
  int v6; // r4
  unsigned int v7; // r5
  int v8; // [sp+4h] [bp-8h]

  v8 = StreamReader::readAs<unsigned int>((int)this);
  Arrays::SpawnGroups::finalize((Arrays::SpawnGroups *)v8);
  Arrays::SpawnGroups::size = v8;
  result = operator new[](20 * v8 + 8, 1);
  *result = 20;
  result[1] = v8;
  v4 = (int)(result + 2);
  if ( v8 )
  {
    v5 = 0;
    do
    {
      ++v5;
      result[2] = off_96A360;
      result[6] = 0;
      result += 5;
    }
    while ( v5 != v8 );
  }
  Arrays::SpawnGroups::members = v4;
  if ( Arrays::SpawnGroups::size )
  {
    v6 = 0;
    v7 = 0;
    while ( 1 )
    {
      result = (_DWORD *)(*(int (__fastcall **)(int, Arrays::SpawnGroups *))(*(_DWORD *)(v4 + v6) + 12))(v4 + v6, this);
      ++v7;
      v6 += 20;
      if ( Arrays::SpawnGroups::size <= v7 )
        break;
      v4 = Arrays::SpawnGroups::members;
    }
  }
  return result;
}


// ===== 4b91ac Arrays::Sounds_bak::read(IStreamBase *) =====
_DWORD *__fastcall Arrays::Sounds_bak::read(Arrays::Sounds_bak *this, IStreamBase *a2)
{
  _DWORD *result; // r0
  int v4; // r3
  int v5; // r2
  int v6; // r4
  unsigned int v7; // r5
  int v8; // [sp+4h] [bp-8h]

  v8 = StreamReader::readAs<unsigned int>((int)this);
  Arrays::Sounds_bak::finalize((Arrays::Sounds_bak *)v8);
  Arrays::Sounds_bak::size = v8;
  result = operator new[](44 * v8 + 8, 1);
  *result = 44;
  result[1] = v8;
  v4 = (int)(result + 2);
  if ( v8 )
  {
    v5 = 0;
    do
    {
      ++v5;
      result[2] = off_96A408;
      result[6] = 0;
      result += 11;
    }
    while ( v5 != v8 );
  }
  Arrays::Sounds_bak::members = v4;
  if ( Arrays::Sounds_bak::size )
  {
    v6 = 0;
    v7 = 0;
    while ( 1 )
    {
      result = (_DWORD *)(*(int (__fastcall **)(int, Arrays::Sounds_bak *))(*(_DWORD *)(v4 + v6) + 12))(v4 + v6, this);
      ++v7;
      v6 += 44;
      if ( Arrays::Sounds_bak::size <= v7 )
        break;
      v4 = Arrays::Sounds_bak::members;
    }
  }
  return result;
}


// ===== 4b92f8 Arrays::SoundGroupsRouting::read(IStreamBase *) =====
_DWORD *__fastcall Arrays::SoundGroupsRouting::read(Arrays::SoundGroupsRouting *this, IStreamBase *a2)
{
  _DWORD *result; // r0
  int v4; // r3
  int v5; // r2
  int v6; // r4
  int v7; // [sp+4h] [bp-4h]

  v7 = StreamReader::readAs<unsigned int>((int)this);
  Arrays::SoundGroupsRouting::finalize((Arrays::SoundGroupsRouting *)v7);
  Arrays::SoundGroupsRouting::size = v7;
  result = operator new[](16 * v7 + 8, 1);
  *result = 16;
  result[1] = v7;
  v4 = (int)(result + 2);
  if ( v7 )
  {
    v5 = 0;
    do
    {
      ++v5;
      result[2] = off_96A438;
      result[4] = 0;
      result += 4;
    }
    while ( v5 != v7 );
  }
  Arrays::SoundGroupsRouting::members = v4;
  if ( Arrays::SoundGroupsRouting::size )
  {
    v6 = 0;
    while ( 1 )
    {
      result = (_DWORD *)(*(int (__fastcall **)(int, Arrays::SoundGroupsRouting *))(*(_DWORD *)(v4 + 16 * v6) + 12))(
                           v4 + 16 * v6,
                           this);
      if ( Arrays::SoundGroupsRouting::size <= (unsigned int)++v6 )
        break;
      v4 = Arrays::SoundGroupsRouting::members;
    }
  }
  return result;
}


// ===== 4b9434 Arrays::SoundBankPlayback::read(IStreamBase *) =====
_DWORD *__fastcall Arrays::SoundBankPlayback::read(Arrays::SoundBankPlayback *this, IStreamBase *a2)
{
  _DWORD *result; // r0
  int v4; // r3
  int i; // r2
  int v6; // r4
  unsigned int v7; // r5
  int v8; // [sp+4h] [bp-8h]

  v8 = StreamReader::readAs<unsigned int>((int)this);
  Arrays::SoundBankPlayback::finalize((Arrays::SoundBankPlayback *)v8);
  Arrays::SoundBankPlayback::size = v8;
  result = operator new[](12 * v8 + 8, 1);
  *result = 12;
  result[1] = v8;
  v4 = (int)(result + 2);
  if ( v8 )
  {
    for ( i = 0; i != v8; ++i )
    {
      result[2] = off_96A420;
      result += 3;
    }
  }
  Arrays::SoundBankPlayback::members = v4;
  if ( Arrays::SoundBankPlayback::size )
  {
    v6 = 0;
    v7 = 0;
    while ( 1 )
    {
      result = (_DWORD *)(*(int (__fastcall **)(int, Arrays::SoundBankPlayback *))(*(_DWORD *)(v4 + v6) + 12))(
                           v4 + v6,
                           this);
      ++v7;
      v6 += 12;
      if ( Arrays::SoundBankPlayback::size <= v7 )
        break;
      v4 = Arrays::SoundBankPlayback::members;
    }
  }
  return result;
}


// ===== 4b9578 Arrays::Listeners::read(IStreamBase *) =====
_DWORD *__fastcall Arrays::Listeners::read(Arrays::Listeners *this, IStreamBase *a2)
{
  _DWORD *result; // r0
  int v4; // r3
  int i; // r2
  int v6; // r4
  unsigned int v7; // r5
  int v8; // [sp+4h] [bp-8h]

  v8 = StreamReader::readAs<unsigned int>((int)this);
  Arrays::Listeners::finalize((Arrays::Listeners *)v8);
  Arrays::Listeners::size = v8;
  result = operator new[](28 * v8 + 8, 1);
  *result = 28;
  result[1] = v8;
  v4 = (int)(result + 2);
  if ( v8 )
  {
    for ( i = 0; i != v8; ++i )
    {
      result[2] = off_96A390;
      result += 7;
    }
  }
  Arrays::Listeners::members = v4;
  if ( Arrays::Listeners::size )
  {
    v6 = 0;
    v7 = 0;
    while ( 1 )
    {
      result = (_DWORD *)(*(int (__fastcall **)(int, Arrays::Listeners *))(*(_DWORD *)(v4 + v6) + 12))(v4 + v6, this);
      ++v7;
      v6 += 28;
      if ( Arrays::Listeners::size <= v7 )
        break;
      v4 = Arrays::Listeners::members;
    }
  }
  return result;
}


// ===== 4b96bc Arrays::CharSoundsTable::read(IStreamBase *) =====
_DWORD *__fastcall Arrays::CharSoundsTable::read(Arrays::CharSoundsTable *this, IStreamBase *a2)
{
  _DWORD *result; // r0
  int v4; // r3
  int v5; // r1
  int v6; // r4
  unsigned int v7; // r5
  int v8; // [sp+4h] [bp-8h]

  v8 = StreamReader::readAs<unsigned int>((int)this);
  Arrays::CharSoundsTable::finalize((Arrays::CharSoundsTable *)v8);
  Arrays::CharSoundsTable::size = v8;
  result = operator new[](8 * (5 * v8 + 1), 1);
  *result = 40;
  result[1] = v8;
  v4 = (int)(result + 2);
  if ( v8 )
  {
    v5 = 0;
    do
    {
      ++v5;
      result[2] = off_96A3C0;
      result[4] = 0;
      result[6] = 0;
      result[8] = 0;
      result[10] = 0;
      result += 10;
    }
    while ( v5 != v8 );
  }
  Arrays::CharSoundsTable::members = v4;
  if ( Arrays::CharSoundsTable::size )
  {
    v6 = 0;
    v7 = 0;
    while ( 1 )
    {
      result = (_DWORD *)(*(int (__fastcall **)(int, Arrays::CharSoundsTable *))(*(_DWORD *)(v4 + v6) + 12))(
                           v4 + v6,
                           this);
      ++v7;
      v6 += 40;
      if ( Arrays::CharSoundsTable::size <= v7 )
        break;
      v4 = Arrays::CharSoundsTable::members;
    }
  }
  return result;
}


// ===== 4b9810 Arrays::SkillTable::read(IStreamBase *) =====
_DWORD *__fastcall Arrays::SkillTable::read(Arrays::SkillTable *this, IStreamBase *a2)
{
  _DWORD *result; // r0
  int v4; // r3
  int v5; // r2
  int v6; // r4
  unsigned int v7; // r5
  int v8; // [sp+4h] [bp-8h]

  v8 = StreamReader::readAs<unsigned int>((int)this);
  Arrays::SkillTable::finalize((Arrays::SkillTable *)v8);
  Arrays::SkillTable::size = v8;
  result = operator new[](76 * v8 + 8, 1);
  *result = 76;
  result[1] = v8;
  v4 = (int)(result + 2);
  if ( v8 )
  {
    v5 = 0;
    do
    {
      ++v5;
      result[2] = off_96A450;
      result[6] = 0;
      result[12] = 0;
      result[17] = 0;
      result += 19;
    }
    while ( v5 != v8 );
  }
  Arrays::SkillTable::members = v4;
  if ( Arrays::SkillTable::size )
  {
    v6 = 0;
    v7 = 0;
    while ( 1 )
    {
      result = (_DWORD *)(*(int (__fastcall **)(int, Arrays::SkillTable *))(*(_DWORD *)(v4 + v6) + 12))(v4 + v6, this);
      ++v7;
      v6 += 76;
      if ( Arrays::SkillTable::size <= v7 )
        break;
      v4 = Arrays::SkillTable::members;
    }
  }
  return result;
}


// ===== 4b9964 Arrays::SkillListTable::read(IStreamBase *) =====
_DWORD *__fastcall Arrays::SkillListTable::read(Arrays::SkillListTable *this, IStreamBase *a2)
{
  _DWORD *result; // r0
  int v4; // r3
  int v5; // r2
  int v6; // r4
  unsigned int v7; // r5
  int v8; // [sp+4h] [bp-8h]

  v8 = StreamReader::readAs<unsigned int>((int)this);
  Arrays::SkillListTable::finalize((Arrays::SkillListTable *)v8);
  Arrays::SkillListTable::size = v8;
  result = operator new[](12 * v8 + 8, 1);
  *result = 12;
  result[1] = v8;
  v4 = (int)(result + 2);
  if ( v8 )
  {
    v5 = 0;
    do
    {
      ++v5;
      result[2] = off_96A468;
      result[4] = 0;
      result += 3;
    }
    while ( v5 != v8 );
  }
  Arrays::SkillListTable::members = v4;
  if ( Arrays::SkillListTable::size )
  {
    v6 = 0;
    v7 = 0;
    while ( 1 )
    {
      result = (_DWORD *)(*(int (__fastcall **)(int, Arrays::SkillListTable *))(*(_DWORD *)(v4 + v6) + 12))(
                           v4 + v6,
                           this);
      ++v7;
      v6 += 12;
      if ( Arrays::SkillListTable::size <= v7 )
        break;
      v4 = Arrays::SkillListTable::members;
    }
  }
  return result;
}


// ===== 4b9ab0 Arrays::ProjectileTable::read(IStreamBase *) =====
_DWORD *__fastcall Arrays::ProjectileTable::read(Arrays::ProjectileTable *this, IStreamBase *a2)
{
  _DWORD *result; // r0
  int v4; // r3
  int i; // r2
  int v6; // r4
  unsigned int v7; // r5
  int v8; // [sp+4h] [bp-8h]

  v8 = StreamReader::readAs<unsigned int>((int)this);
  Arrays::ProjectileTable::finalize((Arrays::ProjectileTable *)v8);
  Arrays::ProjectileTable::size = v8;
  result = operator new[](8 * (9 * v8 + 1), 1);
  *result = 72;
  result[1] = v8;
  v4 = (int)(result + 2);
  if ( v8 )
  {
    for ( i = 0; i != v8; ++i )
    {
      result[2] = off_96AC78;
      result += 18;
    }
  }
  Arrays::ProjectileTable::members = v4;
  if ( Arrays::ProjectileTable::size )
  {
    v6 = 0;
    v7 = 0;
    while ( 1 )
    {
      result = (_DWORD *)(*(int (__fastcall **)(int, Arrays::ProjectileTable *))(*(_DWORD *)(v4 + v6) + 12))(
                           v4 + v6,
                           this);
      ++v7;
      v6 += 72;
      if ( Arrays::ProjectileTable::size <= v7 )
        break;
      v4 = Arrays::ProjectileTable::members;
    }
  }
  return result;
}


// ===== 4b9bf4 Arrays::NumProbArray::read(IStreamBase *) =====
_DWORD *__fastcall Arrays::NumProbArray::read(Arrays::NumProbArray *this, IStreamBase *a2)
{
  _DWORD *result; // r0
  int v4; // r3
  int v5; // r2
  int v6; // r4
  unsigned int v7; // r5
  int v8; // [sp+4h] [bp-8h]

  v8 = StreamReader::readAs<unsigned int>(this, a2);
  Arrays::NumProbArray::finalize((Arrays::NumProbArray *)v8);
  Arrays::NumProbArray::size = v8;
  result = (_DWORD *)operator new[](12 * v8 + 8, 1);
  *result = 12;
  result[1] = v8;
  v4 = (int)(result + 2);
  if ( v8 )
  {
    v5 = 0;
    do
    {
      ++v5;
      result[2] = off_96AD20;
      result[4] = 0;
      result += 3;
    }
    while ( v5 != v8 );
  }
  Arrays::NumProbArray::members = v4;
  if ( Arrays::NumProbArray::size )
  {
    v6 = 0;
    v7 = 0;
    while ( 1 )
    {
      result = (_DWORD *)(*(int (__fastcall **)(int, Arrays::NumProbArray *))(*(_DWORD *)(v4 + v6) + 12))(v4 + v6, this);
      ++v7;
      v6 += 12;
      if ( Arrays::NumProbArray::size <= v7 )
        break;
      v4 = Arrays::NumProbArray::members;
    }
  }
  return result;
}


// ===== 4b9d40 Arrays::MerchantTable::read(IStreamBase *) =====
_DWORD *__fastcall Arrays::MerchantTable::read(Arrays::MerchantTable *this, IStreamBase *a2)
{
  _DWORD *result; // r0
  int v4; // r3
  int v5; // r2
  int v6; // r4
  unsigned int v7; // r5
  int v8; // [sp+4h] [bp-8h]

  v8 = StreamReader::readAs<unsigned int>(this, a2);
  Arrays::MerchantTable::finalize((Arrays::MerchantTable *)v8);
  Arrays::MerchantTable::size = v8;
  result = (_DWORD *)operator new[](20 * v8 + 8, 1);
  *result = 20;
  result[1] = v8;
  v4 = (int)(result + 2);
  if ( v8 )
  {
    v5 = 0;
    do
    {
      ++v5;
      result[2] = off_96ACC0;
      result[6] = 0;
      result += 5;
    }
    while ( v5 != v8 );
  }
  Arrays::MerchantTable::members = v4;
  if ( Arrays::MerchantTable::size )
  {
    v6 = 0;
    v7 = 0;
    while ( 1 )
    {
      result = (_DWORD *)(*(int (__fastcall **)(int, Arrays::MerchantTable *))(*(_DWORD *)(v4 + v6) + 12))(
                           v4 + v6,
                           this);
      ++v7;
      v6 += 20;
      if ( Arrays::MerchantTable::size <= v7 )
        break;
      v4 = Arrays::MerchantTable::members;
    }
  }
  return result;
}


// ===== 4b9e8c Arrays::LootTable::read(IStreamBase *) =====
_DWORD *__fastcall Arrays::LootTable::read(Arrays::LootTable *this, IStreamBase *a2)
{
  _DWORD *result; // r0
  int v4; // r3
  int v5; // r2
  int v6; // r4
  unsigned int v7; // r5
  int v8; // [sp+4h] [bp-8h]

  v8 = StreamReader::readAs<unsigned int>((int)this);
  Arrays::LootTable::finalize((Arrays::LootTable *)v8);
  Arrays::LootTable::size = v8;
  result = operator new[](36 * v8 + 8, 1);
  *result = 36;
  result[1] = v8;
  v4 = (int)(result + 2);
  if ( v8 )
  {
    v5 = 0;
    do
    {
      ++v5;
      result[2] = off_96AD80;
      result[6] = 0;
      result[8] = 0;
      result[10] = 0;
      result += 9;
    }
    while ( v5 != v8 );
  }
  Arrays::LootTable::members = v4;
  if ( Arrays::LootTable::size )
  {
    v6 = 0;
    v7 = 0;
    while ( 1 )
    {
      result = (_DWORD *)(*(int (__fastcall **)(int, Arrays::LootTable *))(*(_DWORD *)(v4 + v6) + 12))(v4 + v6, this);
      ++v7;
      v6 += 36;
      if ( Arrays::LootTable::size <= v7 )
        break;
      v4 = Arrays::LootTable::members;
    }
  }
  return result;
}


// ===== 4b9fe0 Arrays::ItemTypeList::read(IStreamBase *) =====
_DWORD *__fastcall Arrays::ItemTypeList::read(Arrays::ItemTypeList *this, IStreamBase *a2)
{
  _DWORD *result; // r0
  int v4; // r3
  int v5; // r2
  int v6; // r4
  unsigned int v7; // r5
  int v8; // [sp+4h] [bp-8h]

  v8 = StreamReader::readAs<unsigned int>((int)this);
  Arrays::ItemTypeList::finalize((Arrays::ItemTypeList *)v8);
  Arrays::ItemTypeList::size = v8;
  result = operator new[](12 * v8 + 8, 1);
  *result = 12;
  result[1] = v8;
  v4 = (int)(result + 2);
  if ( v8 )
  {
    v5 = 0;
    do
    {
      ++v5;
      result[2] = off_96AC90;
      result[4] = 0;
      result += 3;
    }
    while ( v5 != v8 );
  }
  Arrays::ItemTypeList::members = v4;
  if ( Arrays::ItemTypeList::size )
  {
    v6 = 0;
    v7 = 0;
    while ( 1 )
    {
      result = (_DWORD *)(*(int (__fastcall **)(int, Arrays::ItemTypeList *))(*(_DWORD *)(v4 + v6) + 12))(v4 + v6, this);
      ++v7;
      v6 += 12;
      if ( Arrays::ItemTypeList::size <= v7 )
        break;
      v4 = Arrays::ItemTypeList::members;
    }
  }
  return result;
}


// ===== 4ba12c Arrays::ItemTable::read(IStreamBase *) =====
_DWORD *__fastcall Arrays::ItemTable::read(Arrays::ItemTable *this, IStreamBase *a2)
{
  _DWORD *result; // r0
  int v4; // r3
  int v5; // r2
  int v6; // r4
  unsigned int v7; // r5
  int v8; // [sp+4h] [bp-8h]

  v8 = StreamReader::readAs<unsigned int>((int)this);
  Arrays::ItemTable::finalize((Arrays::ItemTable *)v8);
  Arrays::ItemTable::size = v8;
  result = operator new[](164 * v8 + 8, 1);
  *result = 164;
  result[1] = v8;
  v4 = (int)(result + 2);
  if ( v8 )
  {
    v5 = 0;
    do
    {
      ++v5;
      result[4] = 0;
      result[2] = off_96AED0;
      result[22] = 0;
      result += 41;
    }
    while ( v5 != v8 );
  }
  Arrays::ItemTable::members = v4;
  if ( Arrays::ItemTable::size )
  {
    v6 = 0;
    v7 = 0;
    while ( 1 )
    {
      result = (_DWORD *)(*(int (__fastcall **)(int, Arrays::ItemTable *))(*(_DWORD *)(v4 + v6) + 12))(v4 + v6, this);
      ++v7;
      v6 += 164;
      if ( Arrays::ItemTable::size <= v7 )
        break;
      v4 = Arrays::ItemTable::members;
    }
  }
  return result;
}


// ===== 4ba27c Arrays::ItemList::read(IStreamBase *) =====
_DWORD *__fastcall Arrays::ItemList::read(Arrays::ItemList *this, IStreamBase *a2)
{
  _DWORD *result; // r0
  int v4; // r3
  int v5; // r2
  int v6; // r4
  unsigned int v7; // r5
  int v8; // [sp+4h] [bp-8h]

  v8 = StreamReader::readAs<unsigned int>((int)this);
  Arrays::ItemList::finalize((Arrays::ItemList *)v8);
  Arrays::ItemList::size = v8;
  result = operator new[](12 * v8 + 8, 1);
  *result = 12;
  result[1] = v8;
  v4 = (int)(result + 2);
  if ( v8 )
  {
    v5 = 0;
    do
    {
      ++v5;
      result[2] = off_96AD50;
      result[4] = 0;
      result += 3;
    }
    while ( v5 != v8 );
  }
  Arrays::ItemList::members = v4;
  if ( Arrays::ItemList::size )
  {
    v6 = 0;
    v7 = 0;
    while ( 1 )
    {
      result = (_DWORD *)(*(int (__fastcall **)(int, Arrays::ItemList *))(*(_DWORD *)(v4 + v6) + 12))(v4 + v6, this);
      ++v7;
      v6 += 12;
      if ( Arrays::ItemList::size <= v7 )
        break;
      v4 = Arrays::ItemList::members;
    }
  }
  return result;
}


// ===== 4ba3c8 Arrays::InventoryTable::read(IStreamBase *) =====
_DWORD *__fastcall Arrays::InventoryTable::read(Arrays::InventoryTable *this, IStreamBase *a2)
{
  _DWORD *result; // r0
  int v4; // r3
  Arrays::InventoryTable *i; // r2
  int v6; // r4
  Arrays::InventoryTable *v7; // [sp+4h] [bp-4h]

  v7 = (Arrays::InventoryTable *)StreamReader::readAs<unsigned int>((int)this);
  Arrays::InventoryTable::finalize(v7);
  Arrays::InventoryTable::size = (int)v7;
  result = operator new[](8 * ((_DWORD)v7 + 1), 1);
  *result = 8;
  result[1] = v7;
  v4 = (int)(result + 2);
  if ( v7 )
  {
    for ( i = nullptr; i != v7; i = (Arrays::InventoryTable *)((char *)i + 1) )
    {
      result[2] = off_96ACA8;
      result += 2;
    }
  }
  Arrays::InventoryTable::members = v4;
  if ( Arrays::InventoryTable::size )
  {
    v6 = 0;
    while ( 1 )
    {
      result = (_DWORD *)(*(int (__fastcall **)(int, Arrays::InventoryTable *))(*(_DWORD *)(v4 + 8 * v6) + 12))(
                           v4 + 8 * v6,
                           this);
      if ( Arrays::InventoryTable::size <= (unsigned int)++v6 )
        break;
      v4 = Arrays::InventoryTable::members;
    }
  }
  return result;
}


// ===== 4ba4fc Arrays::DropTilePriorityTable::read(IStreamBase *) =====
_DWORD *__fastcall Arrays::DropTilePriorityTable::read(Arrays::DropTilePriorityTable *this, IStreamBase *a2)
{
  _DWORD *result; // r0
  int v4; // r3
  int v5; // r2
  int v6; // r4
  unsigned int v7; // r5
  int v8; // [sp+4h] [bp-8h]

  v8 = StreamReader::readAs<unsigned int>((int)this);
  Arrays::DropTilePriorityTable::finalize((Arrays::DropTilePriorityTable *)v8);
  Arrays::DropTilePriorityTable::size = v8;
  result = operator new[](12 * v8 + 8, 1);
  *result = 12;
  result[1] = v8;
  v4 = (int)(result + 2);
  if ( v8 )
  {
    v5 = 0;
    do
    {
      ++v5;
      result[2] = off_96ACF0;
      result[4] = 0;
      result += 3;
    }
    while ( v5 != v8 );
  }
  Arrays::DropTilePriorityTable::members = v4;
  if ( Arrays::DropTilePriorityTable::size )
  {
    v6 = 0;
    v7 = 0;
    while ( 1 )
    {
      result = (_DWORD *)(*(int (__fastcall **)(int, Arrays::DropTilePriorityTable *))(*(_DWORD *)(v4 + v6) + 12))(
                           v4 + v6,
                           this);
      ++v7;
      v6 += 12;
      if ( Arrays::DropTilePriorityTable::size <= v7 )
        break;
      v4 = Arrays::DropTilePriorityTable::members;
    }
  }
  return result;
}


// ===== 4ba648 Arrays::ItemAudioVisualTable::read(IStreamBase *) =====
_DWORD *__fastcall Arrays::ItemAudioVisualTable::read(Arrays::ItemAudioVisualTable *this, IStreamBase *a2)
{
  _DWORD *result; // r0
  int v4; // r3
  int v5; // r2
  int v6; // r4
  unsigned int v7; // r5
  int v8; // [sp+4h] [bp-8h]

  v8 = StreamReader::readAs<unsigned int>((int)this);
  Arrays::ItemAudioVisualTable::finalize((Arrays::ItemAudioVisualTable *)v8);
  Arrays::ItemAudioVisualTable::size = v8;
  result = operator new[](20 * v8 + 8, 1);
  *result = 20;
  result[1] = v8;
  v4 = (int)(result + 2);
  if ( v8 )
  {
    v5 = 0;
    do
    {
      ++v5;
      result[2] = off_96AF00;
      result[6] = 0;
      result += 5;
    }
    while ( v5 != v8 );
  }
  Arrays::ItemAudioVisualTable::members = v4;
  if ( Arrays::ItemAudioVisualTable::size )
  {
    v6 = 0;
    v7 = 0;
    while ( 1 )
    {
      result = (_DWORD *)(*(int (__fastcall **)(int, Arrays::ItemAudioVisualTable *))(*(_DWORD *)(v4 + v6) + 12))(
                           v4 + v6,
                           this);
      ++v7;
      v6 += 20;
      if ( Arrays::ItemAudioVisualTable::size <= v7 )
        break;
      v4 = Arrays::ItemAudioVisualTable::members;
    }
  }
  return result;
}


// ===== 4ba794 Arrays::LevelList::read(IStreamBase *) =====
_DWORD *__fastcall Arrays::LevelList::read(Arrays::LevelList *this, IStreamBase *a2)
{
  _DWORD *result; // r0
  int v4; // r3
  int v5; // r2
  int v6; // r4
  unsigned int v7; // r5
  int v8; // [sp+4h] [bp-8h]

  v8 = StreamReader::readAs<unsigned int>((int)this);
  Arrays::LevelList::finalize((Arrays::LevelList *)v8);
  Arrays::LevelList::size = v8;
  result = operator new[](8 * (9 * v8 + 1), 1);
  *result = 72;
  result[1] = v8;
  v4 = (int)(result + 2);
  if ( v8 )
  {
    v5 = 0;
    do
    {
      ++v5;
      result[2] = off_96AF18;
      result[5] = 0;
      result[10] = 0;
      result += 18;
    }
    while ( v5 != v8 );
  }
  Arrays::LevelList::members = v4;
  if ( Arrays::LevelList::size )
  {
    v6 = 0;
    v7 = 0;
    while ( 1 )
    {
      result = (_DWORD *)(*(int (__fastcall **)(int, Arrays::LevelList *))(*(_DWORD *)(v4 + v6) + 12))(v4 + v6, this);
      ++v7;
      v6 += 72;
      if ( Arrays::LevelList::size <= v7 )
        break;
      v4 = Arrays::LevelList::members;
    }
  }
  return result;
}


// ===== 4ba8e4 Arrays::FastTravelList::read(IStreamBase *) =====
_DWORD *__fastcall Arrays::FastTravelList::read(Arrays::FastTravelList *this, IStreamBase *a2)
{
  _DWORD *result; // r0
  int v4; // r3
  int v5; // r2
  int v6; // r4
  unsigned int v7; // r5
  int v8; // [sp+4h] [bp-8h]

  v8 = StreamReader::readAs<unsigned int>((int)this);
  Arrays::FastTravelList::finalize((Arrays::FastTravelList *)v8);
  Arrays::FastTravelList::size = v8;
  result = operator new[](28 * v8 + 8, 1);
  *result = 28;
  result[1] = v8;
  v4 = (int)(result + 2);
  if ( v8 )
  {
    v5 = 0;
    do
    {
      ++v5;
      result[2] = off_96AF30;
      result[6] = 0;
      result += 7;
    }
    while ( v5 != v8 );
  }
  Arrays::FastTravelList::members = v4;
  if ( Arrays::FastTravelList::size )
  {
    v6 = 0;
    v7 = 0;
    while ( 1 )
    {
      result = (_DWORD *)(*(int (__fastcall **)(int, Arrays::FastTravelList *))(*(_DWORD *)(v4 + v6) + 12))(
                           v4 + v6,
                           this);
      ++v7;
      v6 += 28;
      if ( Arrays::FastTravelList::size <= v7 )
        break;
      v4 = Arrays::FastTravelList::members;
    }
  }
  return result;
}


// ===== 4baa30 Arrays::ItemBonusAttrMonopoly::read(IStreamBase *) =====
_DWORD *__fastcall Arrays::ItemBonusAttrMonopoly::read(Arrays::ItemBonusAttrMonopoly *this, IStreamBase *a2)
{
  _DWORD *result; // r0
  int v4; // r3
  int v5; // r2
  int v6; // r4
  unsigned int v7; // r5
  int v8; // [sp+4h] [bp-8h]

  v8 = StreamReader::readAs<unsigned int>((int)this);
  Arrays::ItemBonusAttrMonopoly::finalize((Arrays::ItemBonusAttrMonopoly *)v8);
  Arrays::ItemBonusAttrMonopoly::size = v8;
  result = operator new[](12 * v8 + 8, 1);
  *result = 12;
  result[1] = v8;
  v4 = (int)(result + 2);
  if ( v8 )
  {
    v5 = 0;
    do
    {
      ++v5;
      result[2] = off_96AF48;
      result[4] = 0;
      result += 3;
    }
    while ( v5 != v8 );
  }
  Arrays::ItemBonusAttrMonopoly::members = v4;
  if ( Arrays::ItemBonusAttrMonopoly::size )
  {
    v6 = 0;
    v7 = 0;
    while ( 1 )
    {
      result = (_DWORD *)(*(int (__fastcall **)(int, Arrays::ItemBonusAttrMonopoly *))(*(_DWORD *)(v4 + v6) + 12))(
                           v4 + v6,
                           this);
      ++v7;
      v6 += 12;
      if ( Arrays::ItemBonusAttrMonopoly::size <= v7 )
        break;
      v4 = Arrays::ItemBonusAttrMonopoly::members;
    }
  }
  return result;
}


// ===== 4bab7c Arrays::ItemPowerTable::read(IStreamBase *) =====
_DWORD *__fastcall Arrays::ItemPowerTable::read(Arrays::ItemPowerTable *this, IStreamBase *a2)
{
  _DWORD *result; // r0
  int v4; // r3
  int v5; // r2
  int v6; // r4
  unsigned int v7; // r5
  int v8; // [sp+4h] [bp-8h]

  v8 = StreamReader::readAs<unsigned int>((int)this);
  Arrays::ItemPowerTable::finalize((Arrays::ItemPowerTable *)v8);
  Arrays::ItemPowerTable::size = v8;
  result = operator new[](8 * (5 * v8 + 1), 1);
  *result = 40;
  result[1] = v8;
  v4 = (int)(result + 2);
  if ( v8 )
  {
    v5 = 0;
    do
    {
      ++v5;
      result[2] = off_96B350;
      result[6] = 0;
      result += 10;
    }
    while ( v5 != v8 );
  }
  Arrays::ItemPowerTable::members = v4;
  if ( Arrays::ItemPowerTable::size )
  {
    v6 = 0;
    v7 = 0;
    while ( 1 )
    {
      result = (_DWORD *)(*(int (__fastcall **)(int, Arrays::ItemPowerTable *))(*(_DWORD *)(v4 + v6) + 12))(
                           v4 + v6,
                           this);
      ++v7;
      v6 += 40;
      if ( Arrays::ItemPowerTable::size <= v7 )
        break;
      v4 = Arrays::ItemPowerTable::members;
    }
  }
  return result;
}


// ===== 4bacc8 Arrays::ItemPowerList::read(IStreamBase *) =====
_DWORD *__fastcall Arrays::ItemPowerList::read(Arrays::ItemPowerList *this, IStreamBase *a2)
{
  _DWORD *result; // r0
  int v4; // r3
  int v5; // r2
  int v6; // r4
  unsigned int v7; // r5
  int v8; // [sp+4h] [bp-8h]

  v8 = StreamReader::readAs<unsigned int>((int)this);
  Arrays::ItemPowerList::finalize((Arrays::ItemPowerList *)v8);
  Arrays::ItemPowerList::size = v8;
  result = operator new[](12 * v8 + 8, 1);
  *result = 12;
  result[1] = v8;
  v4 = (int)(result + 2);
  if ( v8 )
  {
    v5 = 0;
    do
    {
      ++v5;
      result[2] = off_96B380;
      result[4] = 0;
      result += 3;
    }
    while ( v5 != v8 );
  }
  Arrays::ItemPowerList::members = v4;
  if ( Arrays::ItemPowerList::size )
  {
    v6 = 0;
    v7 = 0;
    while ( 1 )
    {
      result = (_DWORD *)(*(int (__fastcall **)(int, Arrays::ItemPowerList *))(*(_DWORD *)(v4 + v6) + 12))(
                           v4 + v6,
                           this);
      ++v7;
      v6 += 12;
      if ( Arrays::ItemPowerList::size <= v7 )
        break;
      v4 = Arrays::ItemPowerList::members;
    }
  }
  return result;
}


// ===== 4bae14 Arrays::HintPages::read(IStreamBase *) =====
_DWORD *__fastcall Arrays::HintPages::read(Arrays::HintPages *this, IStreamBase *a2)
{
  _DWORD *result; // r0
  int v4; // r3
  int i; // r2
  int v6; // r4
  unsigned int v7; // r5
  int v8; // [sp+4h] [bp-8h]

  v8 = StreamReader::readAs<unsigned int>((int)this);
  Arrays::HintPages::finalize((Arrays::HintPages *)v8);
  Arrays::HintPages::size = v8;
  result = operator new[](12 * v8 + 8, 1);
  *result = 12;
  result[1] = v8;
  v4 = (int)(result + 2);
  if ( v8 )
  {
    for ( i = 0; i != v8; ++i )
    {
      result[2] = off_96B3B0;
      result += 3;
    }
  }
  Arrays::HintPages::members = v4;
  if ( Arrays::HintPages::size )
  {
    v6 = 0;
    v7 = 0;
    while ( 1 )
    {
      result = (_DWORD *)(*(int (__fastcall **)(int, Arrays::HintPages *))(*(_DWORD *)(v4 + v6) + 12))(v4 + v6, this);
      ++v7;
      v6 += 12;
      if ( Arrays::HintPages::size <= v7 )
        break;
      v4 = Arrays::HintPages::members;
    }
  }
  return result;
}


// ===== 4baf58 Arrays::HelpPages::read(IStreamBase *) =====
_DWORD *__fastcall Arrays::HelpPages::read(Arrays::HelpPages *this, IStreamBase *a2)
{
  _DWORD *result; // r0
  int v4; // r3
  int i; // r2
  int v6; // r4
  unsigned int v7; // r5
  int v8; // [sp+4h] [bp-8h]

  v8 = StreamReader::readAs<unsigned int>((int)this);
  Arrays::HelpPages::finalize((Arrays::HelpPages *)v8);
  Arrays::HelpPages::size = v8;
  result = operator new[](12 * v8 + 8, 1);
  *result = 12;
  result[1] = v8;
  v4 = (int)(result + 2);
  if ( v8 )
  {
    for ( i = 0; i != v8; ++i )
    {
      result[2] = off_96B3C8;
      result += 3;
    }
  }
  Arrays::HelpPages::members = v4;
  if ( Arrays::HelpPages::size )
  {
    v6 = 0;
    v7 = 0;
    while ( 1 )
    {
      result = (_DWORD *)(*(int (__fastcall **)(int, Arrays::HelpPages *))(*(_DWORD *)(v4 + v6) + 12))(v4 + v6, this);
      ++v7;
      v6 += 12;
      if ( Arrays::HelpPages::size <= v7 )
        break;
      v4 = Arrays::HelpPages::members;
    }
  }
  return result;
}


// ===== 4bb09c Arrays::TriggerTraps::read(IStreamBase *) =====
_DWORD *__fastcall Arrays::TriggerTraps::read(Arrays::TriggerTraps *this, IStreamBase *a2)
{
  _DWORD *result; // r0
  int v4; // r3
  int v5; // r2
  int v6; // r4
  unsigned int v7; // r5
  int v8; // [sp+4h] [bp-8h]

  v8 = StreamReader::readAs<unsigned int>((int)this);
  Arrays::TriggerTraps::finalize((Arrays::TriggerTraps *)v8);
  Arrays::TriggerTraps::size = v8;
  result = operator new[](28 * v8 + 8, 1);
  *result = 28;
  result[1] = v8;
  v4 = (int)(result + 2);
  if ( v8 )
  {
    v5 = 0;
    do
    {
      ++v5;
      result[2] = off_96B3E0;
      result[6] = 0;
      result += 7;
    }
    while ( v5 != v8 );
  }
  Arrays::TriggerTraps::members = v4;
  if ( Arrays::TriggerTraps::size )
  {
    v6 = 0;
    v7 = 0;
    while ( 1 )
    {
      result = (_DWORD *)(*(int (__fastcall **)(int, Arrays::TriggerTraps *))(*(_DWORD *)(v4 + v6) + 12))(v4 + v6, this);
      ++v7;
      v6 += 28;
      if ( Arrays::TriggerTraps::size <= v7 )
        break;
      v4 = Arrays::TriggerTraps::members;
    }
  }
  return result;
}


// ===== 4bb1e8 Arrays::TriggerPlates::read(IStreamBase *) =====
_DWORD *__fastcall Arrays::TriggerPlates::read(Arrays::TriggerPlates *this, IStreamBase *a2)
{
  _DWORD *result; // r0
  int v4; // r3
  int i; // r2
  int v6; // r4
  int v7; // [sp+4h] [bp-4h]

  v7 = StreamReader::readAs<unsigned int>((int)this);
  Arrays::TriggerPlates::finalize((Arrays::TriggerPlates *)v7);
  Arrays::TriggerPlates::size = v7;
  result = operator new[](32 * v7 + 8, 1);
  *result = 32;
  result[1] = v7;
  v4 = (int)(result + 2);
  if ( v7 )
  {
    for ( i = 0; i != v7; ++i )
    {
      result[2] = off_96B3F8;
      result += 8;
    }
  }
  Arrays::TriggerPlates::members = v4;
  if ( Arrays::TriggerPlates::size )
  {
    v6 = 0;
    while ( 1 )
    {
      result = (_DWORD *)(*(int (__fastcall **)(int, Arrays::TriggerPlates *))(*(_DWORD *)(v4 + 32 * v6) + 12))(
                           v4 + 32 * v6,
                           this);
      if ( Arrays::TriggerPlates::size <= (unsigned int)++v6 )
        break;
      v4 = Arrays::TriggerPlates::members;
    }
  }
  return result;
}


// ===== 4bb320 Arrays::TriggerObjects::read(IStreamBase *) =====
_DWORD *__fastcall Arrays::TriggerObjects::read(Arrays::TriggerObjects *this, IStreamBase *a2)
{
  _DWORD *result; // r0
  int v4; // r3
  int v5; // r2
  int v6; // r4
  unsigned int v7; // r5
  int v8; // [sp+4h] [bp-8h]

  v8 = StreamReader::readAs<unsigned int>((int)this);
  Arrays::TriggerObjects::finalize((Arrays::TriggerObjects *)v8);
  Arrays::TriggerObjects::size = v8;
  result = operator new[](8 * (3 * v8 + 1), 1);
  *result = 24;
  result[1] = v8;
  v4 = (int)(result + 2);
  if ( v8 )
  {
    v5 = 0;
    do
    {
      ++v5;
      result[2] = off_96B410;
      result[5] = 0;
      result += 6;
    }
    while ( v5 != v8 );
  }
  Arrays::TriggerObjects::members = v4;
  if ( Arrays::TriggerObjects::size )
  {
    v6 = 0;
    v7 = 0;
    while ( 1 )
    {
      result = (_DWORD *)(*(int (__fastcall **)(int, Arrays::TriggerObjects *))(*(_DWORD *)(v4 + v6) + 12))(
                           v4 + v6,
                           this);
      ++v7;
      v6 += 24;
      if ( Arrays::TriggerObjects::size <= v7 )
        break;
      v4 = Arrays::TriggerObjects::members;
    }
  }
  return result;
}


// ===== 4bb46c Arrays::TimerTraps::read(IStreamBase *) =====
_DWORD *__fastcall Arrays::TimerTraps::read(Arrays::TimerTraps *this, IStreamBase *a2)
{
  _DWORD *result; // r0
  int v4; // r3
  int v5; // r2
  int v6; // r4
  int v7; // [sp+4h] [bp-4h]

  v7 = StreamReader::readAs<unsigned int>((int)this);
  Arrays::TimerTraps::finalize((Arrays::TimerTraps *)v7);
  Arrays::TimerTraps::size = v7;
  result = operator new[](32 * v7 + 8, 1);
  *result = 32;
  result[1] = v7;
  v4 = (int)(result + 2);
  if ( v7 )
  {
    v5 = 0;
    do
    {
      ++v5;
      result[2] = off_96B428;
      result[7] = 0;
      result += 8;
    }
    while ( v5 != v7 );
  }
  Arrays::TimerTraps::members = v4;
  if ( Arrays::TimerTraps::size )
  {
    v6 = 0;
    while ( 1 )
    {
      result = (_DWORD *)(*(int (__fastcall **)(int, Arrays::TimerTraps *))(*(_DWORD *)(v4 + 32 * v6) + 12))(
                           v4 + 32 * v6,
                           this);
      if ( Arrays::TimerTraps::size <= (unsigned int)++v6 )
        break;
      v4 = Arrays::TimerTraps::members;
    }
  }
  return result;
}


// ===== 4bb5ac Arrays::ProjectileTraps::read(IStreamBase *) =====
_DWORD *__fastcall Arrays::ProjectileTraps::read(Arrays::ProjectileTraps *this, IStreamBase *a2)
{
  _DWORD *result; // r0
  int v4; // r3
  int v5; // r2
  int v6; // r4
  unsigned int v7; // r5
  int v8; // [sp+4h] [bp-8h]

  v8 = StreamReader::readAs<unsigned int>((int)this);
  Arrays::ProjectileTraps::finalize((Arrays::ProjectileTraps *)v8);
  Arrays::ProjectileTraps::size = v8;
  result = operator new[](8 * (5 * v8 + 1), 1);
  *result = 40;
  result[1] = v8;
  v4 = (int)(result + 2);
  if ( v8 )
  {
    v5 = 0;
    do
    {
      ++v5;
      result[2] = off_96B440;
      result[9] = 0;
      result += 10;
    }
    while ( v5 != v8 );
  }
  Arrays::ProjectileTraps::members = v4;
  if ( Arrays::ProjectileTraps::size )
  {
    v6 = 0;
    v7 = 0;
    while ( 1 )
    {
      result = (_DWORD *)(*(int (__fastcall **)(int, Arrays::ProjectileTraps *))(*(_DWORD *)(v4 + v6) + 12))(
                           v4 + v6,
                           this);
      ++v7;
      v6 += 40;
      if ( Arrays::ProjectileTraps::size <= v7 )
        break;
      v4 = Arrays::ProjectileTraps::members;
    }
  }
  return result;
}


// ===== 4bb6f8 Arrays::OpenableContainers::read(IStreamBase *) =====
_DWORD *__fastcall Arrays::OpenableContainers::read(Arrays::OpenableContainers *this, IStreamBase *a2)
{
  _DWORD *result; // r0
  int v4; // r3
  int v5; // r2
  int v6; // r4
  unsigned int v7; // r5
  int v8; // [sp+4h] [bp-8h]

  v8 = StreamReader::readAs<unsigned int>((int)this);
  Arrays::OpenableContainers::finalize((Arrays::OpenableContainers *)v8);
  Arrays::OpenableContainers::size = v8;
  result = operator new[](8 * (5 * v8 + 1), 1);
  *result = 40;
  result[1] = v8;
  v4 = (int)(result + 2);
  if ( v8 )
  {
    v5 = 0;
    do
    {
      ++v5;
      result[2] = off_96B458;
      result[8] = 0;
      result += 10;
    }
    while ( v5 != v8 );
  }
  Arrays::OpenableContainers::members = v4;
  if ( Arrays::OpenableContainers::size )
  {
    v6 = 0;
    v7 = 0;
    while ( 1 )
    {
      result = (_DWORD *)(*(int (__fastcall **)(int, Arrays::OpenableContainers *))(*(_DWORD *)(v4 + v6) + 12))(
                           v4 + v6,
                           this);
      ++v7;
      v6 += 40;
      if ( Arrays::OpenableContainers::size <= v7 )
        break;
      v4 = Arrays::OpenableContainers::members;
    }
  }
  return result;
}


// ===== 4bb844 Arrays::LiftableObjects::read(IStreamBase *) =====
_DWORD *__fastcall Arrays::LiftableObjects::read(Arrays::LiftableObjects *this, IStreamBase *a2)
{
  _DWORD *result; // r0
  int v4; // r3
  Arrays::LiftableObjects *i; // r2
  int v6; // r4
  Arrays::LiftableObjects *v7; // [sp+4h] [bp-4h]

  v7 = (Arrays::LiftableObjects *)StreamReader::readAs<unsigned int>((int)this);
  Arrays::LiftableObjects::finalize(v7);
  Arrays::LiftableObjects::size = (int)v7;
  result = operator new[](8 * ((_DWORD)v7 + 1), 1);
  *result = 8;
  result[1] = v7;
  v4 = (int)(result + 2);
  if ( v7 )
  {
    for ( i = nullptr; i != v7; i = (Arrays::LiftableObjects *)((char *)i + 1) )
    {
      result[2] = off_96B470;
      result += 2;
    }
  }
  Arrays::LiftableObjects::members = v4;
  if ( Arrays::LiftableObjects::size )
  {
    v6 = 0;
    while ( 1 )
    {
      result = (_DWORD *)(*(int (__fastcall **)(int, Arrays::LiftableObjects *))(*(_DWORD *)(v4 + 8 * v6) + 12))(
                           v4 + 8 * v6,
                           this);
      if ( Arrays::LiftableObjects::size <= (unsigned int)++v6 )
        break;
      v4 = Arrays::LiftableObjects::members;
    }
  }
  return result;
}


// ===== 4bb978 Arrays::GameObjectDamager::read(IStreamBase *) =====
_DWORD *__fastcall Arrays::GameObjectDamager::read(Arrays::GameObjectDamager *this, IStreamBase *a2)
{
  _DWORD *result; // r0
  int v4; // r3
  int i; // r2
  int v6; // r4
  unsigned int v7; // r5
  int v8; // [sp+4h] [bp-8h]

  v8 = StreamReader::readAs<unsigned int>((int)this);
  Arrays::GameObjectDamager::finalize((Arrays::GameObjectDamager *)v8);
  Arrays::GameObjectDamager::size = v8;
  result = operator new[](8 * (3 * v8 + 1), 1);
  *result = 24;
  result[1] = v8;
  v4 = (int)(result + 2);
  if ( v8 )
  {
    for ( i = 0; i != v8; ++i )
    {
      result[2] = off_96B4A0;
      result += 6;
    }
  }
  Arrays::GameObjectDamager::members = v4;
  if ( Arrays::GameObjectDamager::size )
  {
    v6 = 0;
    v7 = 0;
    while ( 1 )
    {
      result = (_DWORD *)(*(int (__fastcall **)(int, Arrays::GameObjectDamager *))(*(_DWORD *)(v4 + v6) + 12))(
                           v4 + v6,
                           this);
      ++v7;
      v6 += 24;
      if ( Arrays::GameObjectDamager::size <= v7 )
        break;
      v4 = Arrays::GameObjectDamager::members;
    }
  }
  return result;
}


// ===== 4bbabc Arrays::ExplosiveTraps::read(IStreamBase *) =====
_DWORD *__fastcall Arrays::ExplosiveTraps::read(Arrays::ExplosiveTraps *this, IStreamBase *a2)
{
  _DWORD *result; // r0
  int v4; // r3
  int v5; // r2
  int v6; // r4
  unsigned int v7; // r5
  int v8; // [sp+4h] [bp-8h]

  v8 = StreamReader::readAs<unsigned int>((int)this);
  Arrays::ExplosiveTraps::finalize((Arrays::ExplosiveTraps *)v8);
  Arrays::ExplosiveTraps::size = v8;
  result = operator new[](8 * (3 * v8 + 1), 1);
  *result = 24;
  result[1] = v8;
  v4 = (int)(result + 2);
  if ( v8 )
  {
    v5 = 0;
    do
    {
      ++v5;
      result[2] = off_96B4B8;
      result[6] = 0;
      result += 6;
    }
    while ( v5 != v8 );
  }
  Arrays::ExplosiveTraps::members = v4;
  if ( Arrays::ExplosiveTraps::size )
  {
    v6 = 0;
    v7 = 0;
    while ( 1 )
    {
      result = (_DWORD *)(*(int (__fastcall **)(int, Arrays::ExplosiveTraps *))(*(_DWORD *)(v4 + v6) + 12))(
                           v4 + v6,
                           this);
      ++v7;
      v6 += 24;
      if ( Arrays::ExplosiveTraps::size <= v7 )
        break;
      v4 = Arrays::ExplosiveTraps::members;
    }
  }
  return result;
}


// ===== 4bbc04 Arrays::Doors::read(IStreamBase *) =====
_DWORD *__fastcall Arrays::Doors::read(Arrays::Doors *this, IStreamBase *a2)
{
  _DWORD *result; // r0
  int v4; // r3
  int v5; // r2
  int v6; // r4
  unsigned int v7; // r5
  int v8; // [sp+4h] [bp-8h]

  v8 = StreamReader::readAs<unsigned int>(this, a2);
  Arrays::Doors::finalize((Arrays::Doors *)v8);
  Arrays::Doors::size = v8;
  result = (_DWORD *)operator new[](8 * (3 * v8 + 1), 1);
  *result = 24;
  result[1] = v8;
  v4 = (int)(result + 2);
  if ( v8 )
  {
    v5 = 0;
    do
    {
      ++v5;
      result[2] = off_96B4D0;
      result[4] = 0;
      result += 6;
    }
    while ( v5 != v8 );
  }
  Arrays::Doors::members = v4;
  if ( Arrays::Doors::size )
  {
    v6 = 0;
    v7 = 0;
    while ( 1 )
    {
      result = (_DWORD *)(*(int (__fastcall **)(int, Arrays::Doors *))(*(_DWORD *)(v4 + v6) + 12))(v4 + v6, this);
      ++v7;
      v6 += 24;
      if ( Arrays::Doors::size <= v7 )
        break;
      v4 = Arrays::Doors::members;
    }
  }
  return result;
}


// ===== 4bbd50 Arrays::DestructibleContainers::read(IStreamBase *) =====
_DWORD *__fastcall Arrays::DestructibleContainers::read(Arrays::DestructibleContainers *this, IStreamBase *a2)
{
  _DWORD *result; // r0
  int v4; // r3
  int v5; // r2
  int v6; // r4
  unsigned int v7; // r5
  int v8; // [sp+4h] [bp-8h]

  v8 = StreamReader::readAs<unsigned int>(this, a2);
  Arrays::DestructibleContainers::finalize((Arrays::DestructibleContainers *)v8);
  Arrays::DestructibleContainers::size = v8;
  result = (_DWORD *)operator new[](68 * v8 + 8, 1);
  *result = 68;
  result[1] = v8;
  v4 = (int)(result + 2);
  if ( v8 )
  {
    v5 = 0;
    do
    {
      ++v5;
      result[2] = off_96B4E8;
      result[14] = 0;
      result += 17;
    }
    while ( v5 != v8 );
  }
  Arrays::DestructibleContainers::members = v4;
  if ( Arrays::DestructibleContainers::size )
  {
    v6 = 0;
    v7 = 0;
    while ( 1 )
    {
      result = (_DWORD *)(*(int (__fastcall **)(int, Arrays::DestructibleContainers *))(*(_DWORD *)(v4 + v6) + 12))(
                           v4 + v6,
                           this);
      ++v7;
      v6 += 68;
      if ( Arrays::DestructibleContainers::size <= v7 )
        break;
      v4 = Arrays::DestructibleContainers::members;
    }
  }
  return result;
}


// ===== 4bbe9c Arrays::FontPalette::read(IStreamBase *) =====
_DWORD *__fastcall Arrays::FontPalette::read(Arrays::FontPalette *this, IStreamBase *a2)
{
  _DWORD *result; // r0
  int v4; // r3
  int i; // r2
  int v6; // r4
  unsigned int v7; // r5
  int v8; // [sp+4h] [bp-8h]

  v8 = StreamReader::readAs<unsigned int>((int)this);
  Arrays::FontPalette::finalize((Arrays::FontPalette *)v8);
  Arrays::FontPalette::size = v8;
  result = operator new[](12 * v8 + 8, 1);
  *result = 12;
  result[1] = v8;
  v4 = (int)(result + 2);
  if ( v8 )
  {
    for ( i = 0; i != v8; ++i )
    {
      result[2] = off_96B500;
      result += 3;
    }
  }
  Arrays::FontPalette::members = v4;
  if ( Arrays::FontPalette::size )
  {
    v6 = 0;
    v7 = 0;
    while ( 1 )
    {
      result = (_DWORD *)(*(int (__fastcall **)(int, Arrays::FontPalette *))(*(_DWORD *)(v4 + v6) + 12))(v4 + v6, this);
      ++v7;
      v6 += 12;
      if ( Arrays::FontPalette::size <= v7 )
        break;
      v4 = Arrays::FontPalette::members;
    }
  }
  return result;
}


// ===== 4bbfe0 Arrays::FaeryTable::read(IStreamBase *) =====
_DWORD *__fastcall Arrays::FaeryTable::read(Arrays::FaeryTable *this, IStreamBase *a2)
{
  _DWORD *result; // r0
  int v4; // r3
  int v5; // r2
  int v6; // r4
  unsigned int v7; // r5
  int v8; // [sp+4h] [bp-8h]

  v8 = StreamReader::readAs<unsigned int>((int)this);
  Arrays::FaeryTable::finalize((Arrays::FaeryTable *)v8);
  Arrays::FaeryTable::size = v8;
  result = operator new[](36 * v8 + 8, 1);
  *result = 36;
  result[1] = v8;
  v4 = (int)(result + 2);
  if ( v8 )
  {
    v5 = 0;
    do
    {
      ++v5;
      result[2] = off_96B548;
      result[8] = 0;
      result += 9;
    }
    while ( v5 != v8 );
  }
  Arrays::FaeryTable::members = v4;
  if ( Arrays::FaeryTable::size )
  {
    v6 = 0;
    v7 = 0;
    while ( 1 )
    {
      result = (_DWORD *)(*(int (__fastcall **)(int, Arrays::FaeryTable *))(*(_DWORD *)(v4 + v6) + 12))(v4 + v6, this);
      ++v7;
      v6 += 36;
      if ( Arrays::FaeryTable::size <= v7 )
        break;
      v4 = Arrays::FaeryTable::members;
    }
  }
  return result;
}


// ===== 4bc12c Arrays::FaeryListTable::read(IStreamBase *) =====
_DWORD *__fastcall Arrays::FaeryListTable::read(Arrays::FaeryListTable *this, IStreamBase *a2)
{
  _DWORD *result; // r0
  int v4; // r3
  int v5; // r2
  int v6; // r4
  unsigned int v7; // r5
  int v8; // [sp+4h] [bp-8h]

  v8 = StreamReader::readAs<unsigned int>((int)this);
  Arrays::FaeryListTable::finalize((Arrays::FaeryListTable *)v8);
  Arrays::FaeryListTable::size = v8;
  result = operator new[](12 * v8 + 8, 1);
  *result = 12;
  result[1] = v8;
  v4 = (int)(result + 2);
  if ( v8 )
  {
    v5 = 0;
    do
    {
      ++v5;
      result[2] = off_96B530;
      result[4] = 0;
      result += 3;
    }
    while ( v5 != v8 );
  }
  Arrays::FaeryListTable::members = v4;
  if ( Arrays::FaeryListTable::size )
  {
    v6 = 0;
    v7 = 0;
    while ( 1 )
    {
      result = (_DWORD *)(*(int (__fastcall **)(int, Arrays::FaeryListTable *))(*(_DWORD *)(v4 + v6) + 12))(
                           v4 + v6,
                           this);
      ++v7;
      v6 += 12;
      if ( Arrays::FaeryListTable::size <= v7 )
        break;
      v4 = Arrays::FaeryListTable::members;
    }
  }
  return result;
}


// ===== 4bc278 Arrays::FootstepEffectTable::read(IStreamBase *) =====
_DWORD *__fastcall Arrays::FootstepEffectTable::read(Arrays::FootstepEffectTable *this, IStreamBase *a2)
{
  _DWORD *result; // r0
  int v4; // r3
  int v5; // r2
  int v6; // r4
  int v7; // [sp+4h] [bp-4h]

  v7 = StreamReader::readAs<unsigned int>(this, a2);
  Arrays::FootstepEffectTable::finalize((Arrays::FootstepEffectTable *)v7);
  Arrays::FootstepEffectTable::size = v7;
  result = (_DWORD *)operator new[](32 * v7 + 8, 1);
  *result = 32;
  result[1] = v7;
  v4 = (int)(result + 2);
  if ( v7 )
  {
    v5 = 0;
    do
    {
      ++v5;
      result[2] = off_96B560;
      result[5] = 0;
      result[7] = 0;
      result[9] = 0;
      result += 8;
    }
    while ( v5 != v7 );
  }
  Arrays::FootstepEffectTable::members = v4;
  if ( Arrays::FootstepEffectTable::size )
  {
    v6 = 0;
    while ( 1 )
    {
      result = (_DWORD *)(*(int (__fastcall **)(int, Arrays::FootstepEffectTable *))(*(_DWORD *)(v4 + 32 * v6) + 12))(
                           v4 + 32 * v6,
                           this);
      if ( Arrays::FootstepEffectTable::size <= (unsigned int)++v6 )
        break;
      v4 = Arrays::FootstepEffectTable::members;
    }
  }
  return result;
}


// ===== 4bc3c0 Arrays::CharEffectTable::read(IStreamBase *) =====
_DWORD *__fastcall Arrays::CharEffectTable::read(Arrays::CharEffectTable *this, IStreamBase *a2)
{
  _DWORD *result; // r0
  int v4; // r3
  int i; // r2
  int v6; // r4
  unsigned int v7; // r5
  int v8; // [sp+4h] [bp-8h]

  v8 = StreamReader::readAs<unsigned int>(this, a2);
  Arrays::CharEffectTable::finalize((Arrays::CharEffectTable *)v8);
  Arrays::CharEffectTable::size = v8;
  result = (_DWORD *)operator new[](8 * (3 * v8 + 1), 1);
  *result = 24;
  result[1] = v8;
  v4 = (int)(result + 2);
  if ( v8 )
  {
    for ( i = 0; i != v8; ++i )
    {
      result[2] = off_96B578;
      result += 6;
    }
  }
  Arrays::CharEffectTable::members = v4;
  if ( Arrays::CharEffectTable::size )
  {
    v6 = 0;
    v7 = 0;
    while ( 1 )
    {
      result = (_DWORD *)(*(int (__fastcall **)(int, Arrays::CharEffectTable *))(*(_DWORD *)(v4 + v6) + 12))(
                           v4 + v6,
                           this);
      ++v7;
      v6 += 24;
      if ( Arrays::CharEffectTable::size <= v7 )
        break;
      v4 = Arrays::CharEffectTable::members;
    }
  }
  return result;
}


// ===== 4bc504 Arrays::AnimatedEffectTable::read(IStreamBase *) =====
_DWORD *__fastcall Arrays::AnimatedEffectTable::read(Arrays::AnimatedEffectTable *this, IStreamBase *a2)
{
  _DWORD *result; // r0
  int v4; // r3
  int v5; // r2
  int v6; // r4
  unsigned int v7; // r5
  int v8; // [sp+4h] [bp-8h]

  v8 = StreamReader::readAs<unsigned int>(this, a2);
  Arrays::AnimatedEffectTable::finalize((Arrays::AnimatedEffectTable *)v8);
  Arrays::AnimatedEffectTable::size = v8;
  result = (_DWORD *)operator new[](8 * (3 * v8 + 1), 1);
  *result = 24;
  result[1] = v8;
  v4 = (int)(result + 2);
  if ( v8 )
  {
    v5 = 0;
    do
    {
      ++v5;
      result[2] = off_96B590;
      result[6] = 0;
      result += 6;
    }
    while ( v5 != v8 );
  }
  Arrays::AnimatedEffectTable::members = v4;
  if ( Arrays::AnimatedEffectTable::size )
  {
    v6 = 0;
    v7 = 0;
    while ( 1 )
    {
      result = (_DWORD *)(*(int (__fastcall **)(int, Arrays::AnimatedEffectTable *))(*(_DWORD *)(v4 + v6) + 12))(
                           v4 + v6,
                           this);
      ++v7;
      v6 += 24;
      if ( Arrays::AnimatedEffectTable::size <= v7 )
        break;
      v4 = Arrays::AnimatedEffectTable::members;
    }
  }
  return result;
}


// ===== 4bc64c Arrays::Dialogs::read(IStreamBase *) =====
_DWORD *__fastcall Arrays::Dialogs::read(Arrays::Dialogs *this, IStreamBase *a2)
{
  _DWORD *result; // r0
  int v4; // r3
  int v5; // r2
  int v6; // r4
  unsigned int v7; // r5
  int v8; // [sp+4h] [bp-8h]

  v8 = StreamReader::readAs<unsigned int>(this, a2);
  Arrays::Dialogs::finalize((Arrays::Dialogs *)v8);
  Arrays::Dialogs::size = v8;
  result = (_DWORD *)operator new[](12 * v8 + 8, 1);
  *result = 12;
  result[1] = v8;
  v4 = (int)(result + 2);
  if ( v8 )
  {
    v5 = 0;
    do
    {
      ++v5;
      result[2] = off_96B5C0;
      result[4] = 0;
      result += 3;
    }
    while ( v5 != v8 );
  }
  Arrays::Dialogs::members = v4;
  if ( Arrays::Dialogs::size )
  {
    v6 = 0;
    v7 = 0;
    while ( 1 )
    {
      result = (_DWORD *)(*(int (__fastcall **)(int, Arrays::Dialogs *))(*(_DWORD *)(v4 + v6) + 12))(v4 + v6, this);
      ++v7;
      v6 += 12;
      if ( Arrays::Dialogs::size <= v7 )
        break;
      v4 = Arrays::Dialogs::members;
    }
  }
  return result;
}


// ===== 4bc798 Arrays::DialogActors::read(IStreamBase *) =====
_DWORD *__fastcall Arrays::DialogActors::read(Arrays::DialogActors *this, IStreamBase *a2)
{
  _DWORD *result; // r0
  int v4; // r3
  int v5; // r2
  int v6; // r4
  unsigned int v7; // r5
  int v8; // [sp+4h] [bp-8h]

  v8 = StreamReader::readAs<unsigned int>(this, a2);
  Arrays::DialogActors::finalize((Arrays::DialogActors *)v8);
  Arrays::DialogActors::size = v8;
  result = (_DWORD *)operator new[](20 * v8 + 8, 1);
  *result = 20;
  result[1] = v8;
  v4 = (int)(result + 2);
  if ( v8 )
  {
    v5 = 0;
    do
    {
      ++v5;
      result[2] = off_96B620;
      result[5] = 0;
      result += 5;
    }
    while ( v5 != v8 );
  }
  Arrays::DialogActors::members = v4;
  if ( Arrays::DialogActors::size )
  {
    v6 = 0;
    v7 = 0;
    while ( 1 )
    {
      result = (_DWORD *)(*(int (__fastcall **)(int, Arrays::DialogActors *))(*(_DWORD *)(v4 + v6) + 12))(v4 + v6, this);
      ++v7;
      v6 += 20;
      if ( Arrays::DialogActors::size <= v7 )
        break;
      v4 = Arrays::DialogActors::members;
    }
  }
  return result;
}


// ===== 4bc8e0 Arrays::GameOptionTable::read(IStreamBase *) =====
_DWORD *__fastcall Arrays::GameOptionTable::read(Arrays::GameOptionTable *this, IStreamBase *a2)
{
  _DWORD *result; // r0
  int v4; // r3
  int i; // r2
  int v6; // r4
  int v7; // [sp+4h] [bp-4h]

  v7 = StreamReader::readAs<unsigned int>((int)this);
  Arrays::GameOptionTable::finalize((Arrays::GameOptionTable *)v7);
  Arrays::GameOptionTable::size = v7;
  result = operator new[](32 * v7 + 8, 1);
  *result = 32;
  result[1] = v7;
  v4 = (int)(result + 2);
  if ( v7 )
  {
    for ( i = 0; i != v7; ++i )
    {
      result[2] = off_96B680;
      result += 8;
    }
  }
  Arrays::GameOptionTable::members = v4;
  if ( Arrays::GameOptionTable::size )
  {
    v6 = 0;
    while ( 1 )
    {
      result = (_DWORD *)(*(int (__fastcall **)(int, Arrays::GameOptionTable *))(*(_DWORD *)(v4 + 32 * v6) + 12))(
                           v4 + 32 * v6,
                           this);
      if ( Arrays::GameOptionTable::size <= (unsigned int)++v6 )
        break;
      v4 = Arrays::GameOptionTable::members;
    }
  }
  return result;
}


// ===== 4bca18 std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,std::vector<PyDataArrays::_Funcs,std::allocator<PyDataArrays::_Funcs>>>,std::priv::_Select1st<std::pair<std::string const,std::vector<PyDataArrays::_Funcs,std::allocator<PyDataArrays::_Funcs>>>>,std::priv::_MapTraitsT<std::pair<std::string const,std::vector<PyDataArrays::_Funcs,std::allocator<PyDataArrays::_Funcs>>>>,std::allocator<std::pair<std::string const,std::vector<PyDataArrays::_Funcs,std::allocator<PyDataArrays::_Funcs>>>>>::_M_create_node(std::pair<std::string const,std::vector<PyDataArrays::_Funcs,std::allocator<PyDataArrays::_Funcs>>> const&) =====
char *__fastcall std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,std::vector<PyDataArrays::_Funcs>>,std::priv::_Select1st<std::pair<std::string const,std::vector<PyDataArrays::_Funcs>>>,std::priv::_MapTraitsT<std::pair<std::string const,std::vector<PyDataArrays::_Funcs>>>,std::allocator<std::pair<std::string const,std::vector<PyDataArrays::_Funcs>>>>::_M_create_node(
        int a1,
        int a2)
{
  char *v3; // r4
  size_t v5; // [sp+4h] [bp-8h] BYREF

  v5 = 52;
  v3 = (char *)__ZNSt12__node_alloc11_M_allocateERj_veneer(&v5);
  *((_DWORD *)v3 + 8) = v3 + 16;
  *((_DWORD *)v3 + 9) = v3 + 16;
  std::string::_M_range_initialize((std::string *)(v3 + 16), *(const char **)(a2 + 20), *(const char **)(a2 + 16));
  std::vector<PyDataArrays::_Funcs>::vector((_DWORD *)v3 + 10, (_DWORD *)(a2 + 24));
  *((_DWORD *)v3 + 3) = 0;
  *((_DWORD *)v3 + 2) = 0;
  return v3;
}


// ===== 4bca74 std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,std::vector<PyDataArrays::_Funcs,std::allocator<PyDataArrays::_Funcs>>>,std::priv::_Select1st<std::pair<std::string const,std::vector<PyDataArrays::_Funcs,std::allocator<PyDataArrays::_Funcs>>>>,std::priv::_MapTraitsT<std::pair<std::string const,std::vector<PyDataArrays::_Funcs,std::allocator<PyDataArrays::_Funcs>>>>,std::allocator<std::pair<std::string const,std::vector<PyDataArrays::_Funcs,std::allocator<PyDataArrays::_Funcs>>>>>::_M_insert(std::priv::_Rb_tree_node_base *,std::pair<std::string const,std::vector<PyDataArrays::_Funcs,std::allocator<PyDataArrays::_Funcs>>> const&,std::priv::_Rb_tree_node_base *,std::priv::_Rb_tree_node_base *) =====
char **__fastcall std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,std::vector<PyDataArrays::_Funcs>>,std::priv::_Select1st<std::pair<std::string const,std::vector<PyDataArrays::_Funcs>>>,std::priv::_MapTraitsT<std::pair<std::string const,std::vector<PyDataArrays::_Funcs>>>,std::allocator<std::pair<std::string const,std::vector<PyDataArrays::_Funcs>>>>::_M_insert(
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
    node = std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,std::vector<PyDataArrays::_Funcs>>,std::priv::_Select1st<std::pair<std::string const,std::vector<PyDataArrays::_Funcs>>>,std::priv::_MapTraitsT<std::pair<std::string const,std::vector<PyDataArrays::_Funcs>>>,std::allocator<std::pair<std::string const,std::vector<PyDataArrays::_Funcs>>>>::_M_create_node(
             (int)a2,
             a4);
    a2[2] = node;
    a2[1] = node;
    a2[3] = node;
  }
  else if ( !a6
         && (a5 || (v14 = a4, v13 = std::less<std::string>::operator()((int)(a2 + 5), a4, (int)(a3 + 4)), a4 = v14, v13)) )
  {
    v12 = std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,std::vector<PyDataArrays::_Funcs>>,std::priv::_Select1st<std::pair<std::string const,std::vector<PyDataArrays::_Funcs>>>,std::priv::_MapTraitsT<std::pair<std::string const,std::vector<PyDataArrays::_Funcs>>>,std::allocator<std::pair<std::string const,std::vector<PyDataArrays::_Funcs>>>>::_M_create_node(
            (int)a2,
            a4);
    a3[2] = v12;
    node = v12;
    if ( a3 == (_DWORD *)a2[2] )
      a2[2] = v12;
  }
  else
  {
    v9 = std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,std::vector<PyDataArrays::_Funcs>>,std::priv::_Select1st<std::pair<std::string const,std::vector<PyDataArrays::_Funcs>>>,std::priv::_MapTraitsT<std::pair<std::string const,std::vector<PyDataArrays::_Funcs>>>,std::allocator<std::pair<std::string const,std::vector<PyDataArrays::_Funcs>>>>::_M_create_node(
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


// ===== 4bcb64 std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,int (*)(char const*)>,std::priv::_Select1st<std::pair<std::string const,int (*)(char const*)>>,std::priv::_MapTraitsT<std::pair<std::string const,int (*)(char const*)>>,std::allocator<std::pair<std::string const,int (*)(char const*)>>>::_M_create_node(std::pair<std::string const,int (*)(char const*)> const&) =====
char *__fastcall std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,int (*)(char const*)>,std::priv::_Select1st<std::pair<std::string const,int (*)(char const*)>>,std::priv::_MapTraitsT<std::pair<std::string const,int (*)(char const*)>>,std::allocator<std::pair<std::string const,int (*)(char const*)>>>::_M_create_node(
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

