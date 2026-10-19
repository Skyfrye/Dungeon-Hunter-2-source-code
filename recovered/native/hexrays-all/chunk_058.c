// ===== 863788 vox::VoxCallbackManager::~VoxCallbackManager() =====
void __fastcall vox::VoxCallbackManager::~VoxCallbackManager(vox::VoxCallbackManager *this)
{
  vox::VoxCallbackManager *v2; // r0
  vox::VoxCallbackManager *v3; // r3
  int v4; // r3
  _DWORD *v5; // r2
  void (__fastcall ***v6)(_DWORD); // r5

  while ( 1 )
  {
    v2 = *(vox::VoxCallbackManager **)this;
    if ( *(vox::VoxCallbackManager **)this == this )
      break;
    while ( 1 )
    {
      v3 = v2;
      do
        v3 = *(vox::VoxCallbackManager **)v3;
      while ( this != v3 );
      v4 = *(_DWORD *)v2;
      v5 = *((_DWORD **)v2 + 1);
      v6 = *((void (__fastcall ****)(_DWORD))v2 + 2);
      *v5 = *(_DWORD *)v2;
      *(_DWORD *)(v4 + 4) = v5;
      VoxFree(v2);
      if ( !v6 )
        break;
      (**v6)(v6);
      VoxFree(v6);
      v2 = *(vox::VoxCallbackManager **)this;
      if ( *(vox::VoxCallbackManager **)this == this )
        goto LABEL_6;
    }
  }
LABEL_6:
  *(_DWORD *)this = this;
  *((_DWORD *)this + 1) = this;
}


// ===== 8637fc vox::VoxCallbackManager::~VoxCallbackManager() =====
void __fastcall vox::VoxCallbackManager::~VoxCallbackManager(vox::VoxCallbackManager *this)
{
  vox::VoxCallbackManager *v2; // r0
  vox::VoxCallbackManager *v3; // r3
  int v4; // r3
  _DWORD *v5; // r2
  void (__fastcall ***v6)(_DWORD); // r5

  while ( 1 )
  {
    v2 = *(vox::VoxCallbackManager **)this;
    if ( *(vox::VoxCallbackManager **)this == this )
      break;
    while ( 1 )
    {
      v3 = v2;
      do
        v3 = *(vox::VoxCallbackManager **)v3;
      while ( this != v3 );
      v4 = *(_DWORD *)v2;
      v5 = *((_DWORD **)v2 + 1);
      v6 = *((void (__fastcall ****)(_DWORD))v2 + 2);
      *v5 = *(_DWORD *)v2;
      *(_DWORD *)(v4 + 4) = v5;
      VoxFree(v2);
      if ( !v6 )
        break;
      (**v6)(v6);
      VoxFree(v6);
      v2 = *(vox::VoxCallbackManager **)this;
      if ( *(vox::VoxCallbackManager **)this == this )
        goto LABEL_6;
    }
  }
LABEL_6:
  *(_DWORD *)this = this;
  *((_DWORD *)this + 1) = this;
}


// ===== 863870 vox::PriorityBank::~PriorityBank() =====
void __fastcall vox::PriorityBank::~PriorityBank(vox::PriorityBank *this)
{
  int v1; // r3
  void *v2; // r0

  v1 = *((_DWORD *)this + 3);
  if ( v1 != *((_DWORD *)this + 4) )
    *((_DWORD *)this + 4) = v1;
  v2 = *((void **)this + 3);
  if ( v2 )
    VoxFree(v2);
}


// ===== 8638a0 std::vector<vox::PriorityBank,vox::SAllocator<vox::PriorityBank,(vox::VoxMemHint)0>>::~vector() =====
vox::PriorityBank **__fastcall std::vector<vox::PriorityBank,vox::SAllocator<vox::PriorityBank,(vox::VoxMemHint)0>>::~vector(
        vox::PriorityBank **a1)
{
  vox::PriorityBank *v1; // r4
  vox::PriorityBank *v2; // r5

  v1 = a1[1];
  v2 = *a1;
  while ( v2 != v1 )
  {
    v1 = (vox::PriorityBank *)((char *)v1 - 24);
    vox::PriorityBank::~PriorityBank(v1);
  }
  if ( *a1 )
    VoxFree(*a1);
  return a1;
}


// ===== 8638e4 vox::EmitterObj::UpdateDSP(float) =====
void __fastcall vox::EmitterObj::UpdateDSP(void **this, float a2)
{
  int v4; // r3
  int v5; // r3

  if ( *(this + 60) )
  {
    VoxFree(*(this + 59));
    v4 = (int)*(this + 68);
    *(this + 59) = *(this + 60);
    *(this + 60) = nullptr;
    if ( !v4 )
      return;
    (*(void (__fastcall **)(int))(*(_DWORD *)v4 + 64))(v4);
  }
  v5 = (int)*(this + 68);
  if ( v5 )
    (*(void (__fastcall **)(_DWORD, _DWORD))(*(_DWORD *)v5 + 68))(*(this + 68), LODWORD(a2));
}


// ===== 863954 vox::EmitterObj::CleanUp(void) =====
void __fastcall vox::EmitterObj::CleanUp(vox::EmitterObj *this)
{
  int v1; // r3
  int v3; // r4
  int v4; // r2
  void *v5; // r0
  void *v6; // r0
  void *v7; // r0

  v1 = *((_DWORD *)this + 69);
  if ( v1 )
  {
    v3 = (*(int (__fastcall **)(_DWORD))(*(_DWORD *)v1 + 52))(*((_DWORD *)this + 69));
    if ( !v3 )
    {
      v4 = *((_DWORD *)this + 65);
      if ( v4 > 0 )
      {
        do
        {
          v5 = *(void **)(*((_DWORD *)this + 61) + 4 * v3++);
          if ( v5 )
          {
            VoxFree(v5);
            v4 = *((_DWORD *)this + 65);
          }
        }
        while ( v4 > v3 );
      }
    }
  }
  v6 = *((void **)this + 59);
  if ( v6 )
    VoxFree(v6);
  v7 = *((void **)this + 60);
  if ( v7 )
    VoxFree(v7);
}


// ===== 8639d8 std::priv::_Rb_tree<long long,vox::HandleIdCompStruct,std::pair<long long const,vox::Handlable *>,std::priv::_Select1st<std::pair<long long const,vox::Handlable *>>,std::priv::_MapTraitsT<std::pair<long long const,vox::Handlable *>>,vox::SAllocator<std::pair<long long,vox::Handlable *>,(vox::VoxMemHint)0>>::_M_erase(std::priv::_Rb_tree_node_base *) =====
void __fastcall std::priv::_Rb_tree<long long,vox::HandleIdCompStruct,std::pair<long long const,vox::Handlable *>,std::priv::_Select1st<std::pair<long long const,vox::Handlable *>>,std::priv::_MapTraitsT<std::pair<long long const,vox::Handlable *>>,vox::SAllocator<std::pair<long long,vox::Handlable *>,(vox::VoxMemHint)0>>::_M_erase(
        int a1,
        _DWORD *a2)
{
  _DWORD *v2; // r4
  _DWORD *v4; // r6

  v2 = a2;
  if ( a2 )
  {
    do
    {
      std::priv::_Rb_tree<long long,vox::HandleIdCompStruct,std::pair<long long const,vox::Handlable *>,std::priv::_Select1st<std::pair<long long const,vox::Handlable *>>,std::priv::_MapTraitsT<std::pair<long long const,vox::Handlable *>>,vox::SAllocator<std::pair<long long,vox::Handlable *>,(vox::VoxMemHint)0>>::_M_erase(
        a1,
        v2[3]);
      v4 = (_DWORD *)v2[2];
      VoxFree(v2);
      v2 = v4;
    }
    while ( v4 );
  }
}


// ===== 863a0c vox::HandlableContainer::Clear(void) =====
void __fastcall vox::HandlableContainer::Clear(vox::HandlableContainer *this)
{
  vox::HandlableContainer *v1; // r5
  void (__fastcall ***v3)(_DWORD); // r3
  vox::HandlableContainer *v4; // r2
  vox::HandlableContainer *v5; // r3

  v1 = *((vox::HandlableContainer **)this + 2);
  while ( this != v1 )
  {
    while ( 1 )
    {
      v3 = *((void (__fastcall ****)(_DWORD))v1 + 6);
      if ( v3 )
      {
        (**v3)(*((_DWORD *)v1 + 6));
        VoxFree(*((void **)v1 + 6));
      }
      v4 = *((vox::HandlableContainer **)v1 + 3);
      if ( !v4 )
        break;
      while ( *((_DWORD *)v4 + 2) )
        v4 = *((vox::HandlableContainer **)v4 + 2);
      v1 = v4;
      if ( this == v4 )
        goto LABEL_10;
    }
    v5 = *((vox::HandlableContainer **)v1 + 1);
    if ( v1 == *((vox::HandlableContainer **)v5 + 3) )
    {
      do
      {
        v1 = v5;
        v5 = *((vox::HandlableContainer **)v5 + 1);
      }
      while ( *((vox::HandlableContainer **)v5 + 3) == v1 );
      v4 = *((vox::HandlableContainer **)v1 + 3);
    }
    if ( v4 != v5 )
      v1 = v5;
  }
LABEL_10:
  if ( *((_DWORD *)this + 4) )
  {
    std::priv::_Rb_tree<long long,vox::HandleIdCompStruct,std::pair<long long const,vox::Handlable *>,std::priv::_Select1st<std::pair<long long const,vox::Handlable *>>,std::priv::_MapTraitsT<std::pair<long long const,vox::Handlable *>>,vox::SAllocator<std::pair<long long,vox::Handlable *>,(vox::VoxMemHint)0>>::_M_erase(
      (int)this,
      *((_DWORD **)this + 1));
    *((_DWORD *)this + 4) = 0;
    *((_DWORD *)this + 1) = 0;
    *((_DWORD *)this + 2) = this;
    *((_DWORD *)this + 3) = this;
  }
}


// ===== 863ad0 vox::HandlableContainer::~HandlableContainer() =====
void __fastcall vox::HandlableContainer::~HandlableContainer(vox::HandlableContainer *this)
{
  vox::HandlableContainer::Clear(this);
  if ( *((_DWORD *)this + 4) )
  {
    std::priv::_Rb_tree<long long,vox::HandleIdCompStruct,std::pair<long long const,vox::Handlable *>,std::priv::_Select1st<std::pair<long long const,vox::Handlable *>>,std::priv::_MapTraitsT<std::pair<long long const,vox::Handlable *>>,vox::SAllocator<std::pair<long long,vox::Handlable *>,(vox::VoxMemHint)0>>::_M_erase(
      (int)this,
      *((_DWORD **)this + 1));
    *((_DWORD *)this + 4) = 0;
    *((_DWORD *)this + 1) = 0;
    *((_DWORD *)this + 2) = this;
    *((_DWORD *)this + 3) = this;
  }
}


// ===== 863b0c vox::HandlableContainer::~HandlableContainer() =====
void __fastcall vox::HandlableContainer::~HandlableContainer(vox::HandlableContainer *this)
{
  vox::HandlableContainer::Clear(this);
  if ( *((_DWORD *)this + 4) )
  {
    std::priv::_Rb_tree<long long,vox::HandleIdCompStruct,std::pair<long long const,vox::Handlable *>,std::priv::_Select1st<std::pair<long long const,vox::Handlable *>>,std::priv::_MapTraitsT<std::pair<long long const,vox::Handlable *>>,vox::SAllocator<std::pair<long long,vox::Handlable *>,(vox::VoxMemHint)0>>::_M_erase(
      (int)this,
      *((_DWORD **)this + 1));
    *((_DWORD *)this + 4) = 0;
    *((_DWORD *)this + 1) = 0;
    *((_DWORD *)this + 2) = this;
    *((_DWORD *)this + 3) = this;
  }
}


// ===== 863b48 vox::HandlableContainer::Erase(long long) =====
void __fastcall vox::HandlableContainer::Erase(vox::HandlableContainer *this, __int64 a2)
{
  vox::HandlableContainer *v3; // r5
  vox::HandlableContainer *v4; // r4
  vox::HandlableContainer *v5; // r1
  void (__fastcall ***v6)(_DWORD); // r3
  unsigned __int8 *v7; // r0

  v3 = *((vox::HandlableContainer **)this + 1);
  v4 = this;
  if ( !v3 )
  {
LABEL_9:
    v3 = v4;
    goto LABEL_10;
  }
  while ( *((_QWORD *)v3 + 2) >= a2 )
  {
    v5 = *((vox::HandlableContainer **)v3 + 2);
    this = v3;
    if ( !v5 )
      goto LABEL_7;
LABEL_4:
    v3 = v5;
  }
  v5 = *((vox::HandlableContainer **)v3 + 3);
  v3 = this;
  if ( v5 )
    goto LABEL_4;
LABEL_7:
  if ( v4 != v3 )
  {
    if ( *((_QWORD *)v3 + 2) > a2 )
      goto LABEL_9;
LABEL_10:
    if ( v4 != v3 )
    {
      v6 = *((void (__fastcall ****)(_DWORD))v3 + 6);
      if ( v6 )
      {
        (**v6)(*((_DWORD *)v3 + 6));
        VoxFree(*((void **)v3 + 6));
      }
      v7 = std::priv::_Rb_global<bool>::_Rebalance_for_erase(
             (unsigned __int8 *)v3,
             (unsigned __int8 **)v4 + 1,
             (unsigned __int8 **)v4 + 2,
             (unsigned __int8 **)v4 + 3);
      VoxFree(v7);
      --*((_DWORD *)v4 + 4);
    }
  }
}


// ===== 863c24 vox::DataObj::~DataObj() =====
void __fastcall vox::DataObj::~DataObj(vox::DataObj *this)
{
  char *v2; // r5
  char *v3; // r3
  char *i; // r0
  char *v5; // r4

  v2 = (char *)this + 64;
  *(_DWORD *)this = off_993470;
  vox::Mutex::~Mutex((vox::DataObj *)((char *)this + 88));
  v3 = *((char **)this + 16);
  if ( v3 != v2 )
  {
    for ( i = *((char **)this + 16); ; i = v5 )
    {
      v5 = *(char **)i;
      VoxFree(i);
      if ( v5 == v2 )
        break;
    }
    v3 = v2;
  }
  *((_DWORD *)this + 16) = v3;
  *((_DWORD *)v2 + 1) = v3;
  *(_DWORD *)this = off_9934D8;
  vox::Mutex::~Mutex((vox::DataObj *)((char *)this + 24));
}


// ===== 863cac vox::DataObj::~DataObj() =====
void __fastcall vox::DataObj::~DataObj(vox::DataObj *this)
{
  vox::DataObj::~DataObj(this);
  LC_API_FREE_0(this);
}


// ===== 863cc8 vox::VoxCallbackManager::Add(vox::VoxCallback *) =====
_DWORD *__fastcall vox::VoxCallbackManager::Add(_DWORD *result, int a2)
{
  _DWORD *v3; // r4
  _DWORD *v4; // r3

  v3 = result;
  if ( a2 )
  {
    result = VoxAlloc(0xCu, 0);
    result[2] = a2;
    v4 = (_DWORD *)v3[1];
    *result = v3;
    result[1] = v4;
    *v4 = result;
    v3[1] = result;
  }
  return result;
}


// ===== 863d00 std::vector<vox::PriorityBankElement,vox::SAllocator<vox::PriorityBankElement,(vox::VoxMemHint)0>>::_M_allocate_and_copy<vox::PriorityBankElement*>(uint &,vox::PriorityBankElement*,vox::PriorityBankElement*) =====
char *__fastcall std::vector<vox::PriorityBankElement,vox::SAllocator<vox::PriorityBankElement,(vox::VoxMemHint)0>>::_M_allocate_and_copy<vox::PriorityBankElement*>(
        int a1,
        _DWORD *a2,
        int a3,
        int a4)
{
  int v5; // r5
  char *result; // r0
  int v7; // r1
  char *v8; // r3
  int v9; // r2

  v5 = (a4 - a3) >> 3;
  result = (char *)VoxAlloc(8 * *a2, 0);
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


// ===== 863d58 std::vector<vox::PriorityBankElement,vox::SAllocator<vox::PriorityBankElement,(vox::VoxMemHint)0>>::vector(std::vector<vox::PriorityBankElement,vox::SAllocator<vox::PriorityBankElement,(vox::VoxMemHint)0>> const&) =====
_DWORD *__fastcall std::vector<vox::PriorityBankElement,vox::SAllocator<vox::PriorityBankElement,(vox::VoxMemHint)0>>::vector(
        _DWORD *a1,
        _DWORD *a2)
{
  int v2; // r5
  size_t v4; // r7
  char *v6; // r0
  int v7; // r6
  _DWORD *v8; // t0
  char *v9; // r3
  int v10; // r7
  int v11; // r1
  char *v12; // r3
  int v13; // r2

  v2 = 0;
  v4 = (a2[1] - *a2) & 0xFFFFFFF8;
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v6 = (char *)VoxAlloc(v4, 0);
  a1[2] = &v6[v4];
  *a1 = v6;
  a1[1] = v6;
  v8 = a2;
  v7 = *a2;
  v9 = v6;
  v10 = (v8[1] - v7) >> 3;
  if ( v10 > 0 )
  {
    v11 = v10;
    do
    {
      --v11;
      *(_DWORD *)&v6[v2] = *(_DWORD *)(v7 + v2);
      v12 = &v6[v2];
      v13 = *(_DWORD *)(v7 + v2 + 4);
      v2 += 8;
      *((_DWORD *)v12 + 1) = v13;
    }
    while ( v11 );
    v9 = &v6[8 * v10];
  }
  a1[1] = v9;
  return a1;
}


// ===== 863dec std::priv::__ufill<vox::PriorityBank *,vox::PriorityBank,int>(vox::PriorityBank *,vox::PriorityBank *,vox::PriorityBank const&,std::random_access_iterator_tag const&,int *) =====
_DWORD *__fastcall std::priv::__ufill<vox::PriorityBank *,vox::PriorityBank,int>(_DWORD *result, int a2, _DWORD *a3)
{
  int v4; // r5
  _DWORD *v5; // r4
  _DWORD *v6; // r7

  v4 = -1431655765 * ((a2 - (int)result) >> 3);
  if ( v4 > 0 )
  {
    v5 = result;
    v6 = a3 + 3;
    do
    {
      *v5 = *a3;
      v5[1] = a3[1];
      v5[2] = a3[2];
      result = std::vector<vox::PriorityBankElement,vox::SAllocator<vox::PriorityBankElement,(vox::VoxMemHint)0>>::vector(
                 v5 + 3,
                 v6);
      --v4;
      v5 += 6;
    }
    while ( v4 );
  }
  return result;
}


// ===== 863e54 std::priv::__ucopy<vox::PriorityBank *,vox::PriorityBank *,int>(vox::PriorityBank *,vox::PriorityBank *,vox::PriorityBank *,std::random_access_iterator_tag const&,int *) =====
_DWORD *__fastcall std::priv::__ucopy<vox::PriorityBank *,vox::PriorityBank *,int>(_DWORD *a1, int a2, _DWORD *a3)
{
  int v3; // r3
  _DWORD *v4; // r4
  int v6; // r7
  int v7; // r6
  _DWORD *v8; // r5
  _DWORD *v9; // r1
  int v10; // r3

  v3 = (a2 - (int)a1) >> 3;
  v4 = a1;
  v6 = -1431655765 * v3;
  if ( -1431655765 * v3 <= 0 )
    return a3;
  v7 = -1431655765 * v3;
  v8 = a3;
  do
  {
    v9 = v4 + 3;
    *v8 = *v4;
    v8[1] = v4[1];
    v10 = v4[2];
    v4 += 6;
    v8[2] = v10;
    std::vector<vox::PriorityBankElement,vox::SAllocator<vox::PriorityBankElement,(vox::VoxMemHint)0>>::vector(
      v8 + 3,
      v9);
    --v7;
    v8 += 6;
  }
  while ( v7 );
  return &a3[6 * v6];
}


// ===== 863ed4 std::vector<vox::PriorityBankElement,vox::SAllocator<vox::PriorityBankElement,(vox::VoxMemHint)0>>::_M_allocate_and_copy<vox::PriorityBankElement const*>(uint &,vox::PriorityBankElement const*,vox::PriorityBankElement const*) =====
char *__fastcall std::vector<vox::PriorityBankElement,vox::SAllocator<vox::PriorityBankElement,(vox::VoxMemHint)0>>::_M_allocate_and_copy<vox::PriorityBankElement const*>(
        int a1,
        _DWORD *a2,
        int a3,
        int a4)
{
  int v5; // r5
  char *result; // r0
  int v7; // r1
  char *v8; // r3
  int v9; // r2

  v5 = (a4 - a3) >> 3;
  result = (char *)VoxAlloc(8 * *a2, 0);
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


// ===== 863f2c std::vector<vox::PriorityBankElement,vox::SAllocator<vox::PriorityBankElement,(vox::VoxMemHint)0>>::operator=(std::vector<vox::PriorityBankElement,vox::SAllocator<vox::PriorityBankElement,(vox::VoxMemHint)0>> const&) =====
char **__fastcall std::vector<vox::PriorityBankElement,vox::SAllocator<vox::PriorityBankElement,(vox::VoxMemHint)0>>::operator=(
        char **a1,
        int *a2)
{
  int v3; // r2
  int v4; // r3
  char *v5; // r12
  int v6; // r4
  int v7; // r7
  char *v8; // r6
  int v9; // r8
  int v10; // r0
  int v11; // r4
  int v12; // r0
  char *v13; // r3
  int v14; // r1
  bool v16; // cc
  int v17; // r7
  unsigned int v18; // r0
  int v19; // r6
  char *v20; // r3
  int v21; // r0
  int v22; // r3
  int v23; // r12
  int v24; // r2
  int v25; // r1
  char *v26; // r0
  int v27; // r3
  int v28; // [sp+4h] [bp-4h] BYREF

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
      v28 = (v4 - *a2) >> 3;
      v8 = std::vector<vox::PriorityBankElement,vox::SAllocator<vox::PriorityBankElement,(vox::VoxMemHint)0>>::_M_allocate_and_copy<vox::PriorityBankElement const*>(
             (int)a1,
             &v28,
             v3,
             v4);
      v26 = a1[1];
      v11 = 8 * v6;
      if ( v26 != *a1 )
        v26 += 8 * ~((unsigned int)(v26 - 8 - *a1) >> 3);
      VoxFree(v26);
      v27 = v28;
      *a1 = v8;
      a1[2] = &v8[8 * v27];
    }
    else
    {
      v9 = (int)a1[1];
      v10 = (v9 - (int)v5) >> 3;
      if ( v6 > (unsigned int)v10 )
      {
        v17 = (v9 - (int)v5) >> 3;
        v16 = v10 <= 0;
        if ( v10 <= 0 )
          v17 = v9;
        v18 = v3 + 8 * v10;
        if ( !v16 )
        {
          v19 = 0;
          do
          {
            --v17;
            *(_DWORD *)&v5[v19] = *(_DWORD *)(v3 + v19);
            v20 = &v5[v19];
            v21 = *(_DWORD *)(v3 + v19 + 4);
            v19 += 8;
            *((_DWORD *)v20 + 1) = v21;
          }
          while ( v17 );
          v8 = *a1;
          v17 = (int)a1[1];
          v4 = a2[1];
          v18 = *a2 + ((v17 - (_DWORD)*a1) & 0xFFFFFFF8);
        }
        v22 = (int)(v4 - v18) >> 3;
        if ( v22 > 0 )
        {
          v23 = 0;
          do
          {
            --v22;
            *(_DWORD *)(v17 + v23) = *(_DWORD *)(v18 + v23);
            v24 = v17 + v23;
            v25 = *(_DWORD *)(v18 + v23 + 4);
            v23 += 8;
            *(_DWORD *)(v24 + 4) = v25;
          }
          while ( v22 );
          v8 = *a1;
        }
        v11 = 8 * v6;
      }
      else
      {
        if ( v6 > 0 )
        {
          v12 = 0;
          do
          {
            --v6;
            *(_DWORD *)&v5[v12] = *(_DWORD *)(v3 + v12);
            v13 = &v5[v12];
            v14 = *(_DWORD *)(v3 + v12 + 4);
            v12 += 8;
            *((_DWORD *)v13 + 1) = v14;
          }
          while ( v6 );
          v5 = *a1;
          v11 = 8 * v7;
        }
        else
        {
          v11 = 8 * v6;
        }
        v8 = v5;
      }
    }
    a1[1] = &v8[v11];
  }
  return a1;
}


// ===== 8640a8 std::priv::__copy<vox::PriorityBank *,vox::PriorityBank *,int>(vox::PriorityBank *,vox::PriorityBank *,vox::PriorityBank *,std::random_access_iterator_tag const&,int *) =====
int __fastcall std::priv::__copy<vox::PriorityBank *,vox::PriorityBank *,int>(_DWORD *a1, int a2, int a3)
{
  _DWORD *v3; // r4
  int v4; // r7
  int v5; // r8
  int v6; // r5
  int v7; // r6
  int *v8; // r1
  int v9; // r3

  v3 = a1;
  v4 = a3;
  v5 = -1431655765 * ((a2 - (int)a1) >> 3);
  if ( v5 > 0 )
  {
    v6 = a3;
    v7 = -1431655765 * ((a2 - (int)a1) >> 3);
    do
    {
      v8 = v3 + 3;
      *(_DWORD *)v6 = *v3;
      *(_DWORD *)(v6 + 4) = v3[1];
      v9 = v3[2];
      v3 += 6;
      *(_DWORD *)(v6 + 8) = v9;
      std::vector<vox::PriorityBankElement,vox::SAllocator<vox::PriorityBankElement,(vox::VoxMemHint)0>>::operator=(
        (char **)(v6 + 12),
        v8);
      --v7;
      v6 += 24;
    }
    while ( v7 );
    v4 += 24 * v5;
  }
  return v4;
}


// ===== 864124 std::vector<vox::PriorityBank,vox::SAllocator<vox::PriorityBank,(vox::VoxMemHint)0>>::_M_erase(vox::PriorityBank*,vox::PriorityBank*,std::__false_type const&) =====
int __fastcall std::vector<vox::PriorityBank,vox::SAllocator<vox::PriorityBank,(vox::VoxMemHint)0>>::_M_erase(
        int a1,
        int a2,
        _DWORD *a3)
{
  int v5; // r0
  vox::PriorityBank *v6; // r7
  int v7; // r8
  vox::PriorityBank *v8; // r6
  vox::PriorityBank *v9; // r0

  v5 = std::priv::__copy<vox::PriorityBank *,vox::PriorityBank *,int>(a3, *(_DWORD *)(a1 + 4), a2);
  v6 = *(vox::PriorityBank **)(a1 + 4);
  v7 = v5;
  if ( v6 != (vox::PriorityBank *)v5 )
  {
    v8 = (vox::PriorityBank *)v5;
    do
    {
      v9 = v8;
      v8 = (vox::PriorityBank *)((char *)v8 + 24);
      vox::PriorityBank::~PriorityBank(v9);
    }
    while ( v6 != v8 );
  }
  *(_DWORD *)(a1 + 4) = v7;
  return a2;
}


// ===== 86418c vox::PriorityBankManager::~PriorityBankManager() =====
void __fastcall vox::PriorityBankManager::~PriorityBankManager(vox::PriorityBankManager *this)
{
  int v1; // r1
  _DWORD *v2; // r2
  vox::PriorityBank **v4; // r5

  v1 = *((_DWORD *)this + 1);
  v2 = *((_DWORD **)this + 2);
  v4 = (vox::PriorityBank **)((char *)this + 4);
  if ( (_DWORD *)v1 != v2 )
    std::vector<vox::PriorityBank,vox::SAllocator<vox::PriorityBank,(vox::VoxMemHint)0>>::_M_erase(
      (int)this + 4,
      v1,
      v2);
  vox::Mutex::~Mutex((vox::PriorityBankManager *)((char *)this + 16));
  std::vector<vox::PriorityBank,vox::SAllocator<vox::PriorityBank,(vox::VoxMemHint)0>>::~vector(v4);
}


// ===== 8641d0 std::vector<vox::PriorityBank,vox::SAllocator<vox::PriorityBank,(vox::VoxMemHint)0>>::_M_allocate_and_copy<vox::PriorityBank*>(uint &,vox::PriorityBank*,vox::PriorityBank*) =====
_DWORD *__fastcall std::vector<vox::PriorityBank,vox::SAllocator<vox::PriorityBank,(vox::VoxMemHint)0>>::_M_allocate_and_copy<vox::PriorityBank*>(
        int a1,
        _DWORD *a2,
        _DWORD *a3,
        int a4)
{
  _DWORD *v6; // r4

  v6 = VoxAlloc(24 * *a2, 0);
  std::priv::__ucopy<vox::PriorityBank *,vox::PriorityBank *,int>(a3, a4, v6);
  return v6;
}


// ===== 864220 std::priv::_Rb_tree<long long,vox::HandleIdCompStruct,std::pair<long long const,vox::Handlable *>,std::priv::_Select1st<std::pair<long long const,vox::Handlable *>>,std::priv::_MapTraitsT<std::pair<long long const,vox::Handlable *>>,vox::SAllocator<std::pair<long long,vox::Handlable *>,(vox::VoxMemHint)0>>::_M_insert(std::priv::_Rb_tree_node_base *,std::pair<long long const,vox::Handlable *> const&,std::priv::_Rb_tree_node_base *,std::priv::_Rb_tree_node_base *) =====
int *__fastcall std::priv::_Rb_tree<long long,vox::HandleIdCompStruct,std::pair<long long const,vox::Handlable *>,std::priv::_Select1st<std::pair<long long const,vox::Handlable *>>,std::priv::_MapTraitsT<std::pair<long long const,vox::Handlable *>>,vox::SAllocator<std::pair<long long,vox::Handlable *>,(vox::VoxMemHint)0>>::_M_insert(
        int *a1,
        _DWORD *a2,
        int a3,
        int a4,
        int a5,
        int a6)
{
  _QWORD *v10; // r0
  int v11; // r2
  int v12; // r7
  _QWORD *v14; // r0
  int v15; // r2
  _QWORD *v16; // r0
  int v17; // r2

  if ( a2 == (_DWORD *)a3 )
  {
    v16 = VoxAlloc(0x20u, 0);
    v16[2] = *(_QWORD *)a4;
    v17 = *(_DWORD *)(a4 + 8);
    *((_DWORD *)v16 + 3) = 0;
    *((_DWORD *)v16 + 6) = v17;
    *((_DWORD *)v16 + 2) = 0;
    v12 = (int)v16;
    a2[2] = v16;
    a2[1] = v16;
    a2[3] = v16;
  }
  else if ( a6 || !a5 && *(_QWORD *)(a3 + 16) <= *(_QWORD *)a4 )
  {
    v10 = VoxAlloc(0x20u, 0);
    v10[2] = *(_QWORD *)a4;
    v11 = *(_DWORD *)(a4 + 8);
    *((_DWORD *)v10 + 3) = 0;
    *((_DWORD *)v10 + 6) = v11;
    *((_DWORD *)v10 + 2) = 0;
    *(_DWORD *)(a3 + 12) = v10;
    v12 = (int)v10;
    if ( a3 == a2[3] )
      a2[3] = v10;
  }
  else
  {
    v14 = VoxAlloc(0x20u, 0);
    v14[2] = *(_QWORD *)a4;
    v15 = *(_DWORD *)(a4 + 8);
    *((_DWORD *)v14 + 3) = 0;
    *((_DWORD *)v14 + 6) = v15;
    *((_DWORD *)v14 + 2) = 0;
    *(_DWORD *)(a3 + 8) = v14;
    v12 = (int)v14;
    if ( a3 == a2[2] )
      a2[2] = v14;
  }
  *(_DWORD *)(v12 + 4) = a3;
  std::priv::_Rb_global<bool>::_Rebalance(v12, a2 + 1);
  ++a2[4];
  *a1 = v12;
  return a1;
}


// ===== 864364 std::priv::_Rb_tree<long long,vox::HandleIdCompStruct,std::pair<long long const,vox::Handlable *>,std::priv::_Select1st<std::pair<long long const,vox::Handlable *>>,std::priv::_MapTraitsT<std::pair<long long const,vox::Handlable *>>,vox::SAllocator<std::pair<long long,vox::Handlable *>,(vox::VoxMemHint)0>>::insert_unique(std::pair<long long const,vox::Handlable *> const&) =====
int __fastcall std::priv::_Rb_tree<long long,vox::HandleIdCompStruct,std::pair<long long const,vox::Handlable *>,std::priv::_Select1st<std::pair<long long const,vox::Handlable *>>,std::priv::_MapTraitsT<std::pair<long long const,vox::Handlable *>>,vox::SAllocator<std::pair<long long,vox::Handlable *>,(vox::VoxMemHint)0>>::insert_unique(
        int a1,
        _DWORD *a2,
        unsigned int *a3)
{
  int v3; // r12
  unsigned int v6; // r8
  int v7; // r6
  int v8; // r2
  int v9; // r5
  int v10; // r0
  unsigned int v11; // r7
  _DWORD *v12; // r2
  bool v13; // zf
  _DWORD *v15; // r0
  int v16; // r6
  int v17; // r0
  int v18; // r3
  int v19; // r3
  int v20; // [sp+8h] [bp-8h] BYREF
  int v21; // [sp+Ch] [bp-4h] BYREF

  v3 = a2[1];
  if ( !v3 )
  {
    v3 = (int)a2;
    goto LABEL_19;
  }
  v6 = *a3;
  v7 = a3[1];
  while ( 1 )
  {
    v10 = *(_DWORD *)(v3 + 20);
    v11 = *(_DWORD *)(v3 + 16);
    v9 = 1;
    if ( v10 > v7 )
    {
      v8 = *(_DWORD *)(v3 + 8);
      goto LABEL_9;
    }
    if ( v10 == v7 && v11 > v6 )
      break;
    v8 = *(_DWORD *)(v3 + 12);
    v9 = 0;
    if ( !v8 )
      goto LABEL_10;
LABEL_6:
    v3 = v8;
  }
  v8 = *(_DWORD *)(v3 + 8);
LABEL_9:
  if ( v8 )
    goto LABEL_6;
LABEL_10:
  if ( !v9 )
  {
    v12 = (_DWORD *)v3;
    goto LABEL_13;
  }
LABEL_19:
  if ( v3 == a2[2] )
  {
    std::priv::_Rb_tree<long long,vox::HandleIdCompStruct,std::pair<long long const,vox::Handlable *>,std::priv::_Select1st<std::pair<long long const,vox::Handlable *>>,std::priv::_MapTraitsT<std::pair<long long const,vox::Handlable *>>,vox::SAllocator<std::pair<long long,vox::Handlable *>,(vox::VoxMemHint)0>>::_M_insert(
      &v21,
      a2,
      v3,
      (int)a3,
      v3,
      0);
    v19 = v21;
    *(_BYTE *)(a1 + 4) = 1;
    *(_DWORD *)a1 = v19;
    return a1;
  }
  if ( !*(_BYTE *)v3 && v3 == *(_DWORD *)(*(_DWORD *)(v3 + 4) + 4) )
  {
    v6 = *a3;
    v7 = a3[1];
    v12 = *(_DWORD **)(v3 + 12);
    v11 = v12[4];
    v10 = v12[5];
    goto LABEL_13;
  }
  v15 = *(_DWORD **)(v3 + 8);
  if ( v15 )
  {
    while ( v15[3] )
      v15 = (_DWORD *)v15[3];
LABEL_26:
    v12 = v15;
    v16 = a3[1];
    v11 = v15[4];
    v17 = v15[5];
    v6 = *a3;
    v13 = v16 == v17;
    if ( v16 <= v17 )
      goto LABEL_14;
    goto LABEL_27;
  }
  v15 = *(_DWORD **)(v3 + 4);
  if ( v3 != v15[2] )
    goto LABEL_26;
  while ( 1 )
  {
    v12 = (_DWORD *)v15[1];
    if ( (_DWORD *)v12[2] != v15 )
      break;
    v15 = (_DWORD *)v15[1];
  }
  v6 = *a3;
  v7 = a3[1];
  v11 = v12[4];
  v10 = v12[5];
LABEL_13:
  v13 = v7 == v10;
  if ( v7 > v10 )
  {
LABEL_27:
    std::priv::_Rb_tree<long long,vox::HandleIdCompStruct,std::pair<long long const,vox::Handlable *>,std::priv::_Select1st<std::pair<long long const,vox::Handlable *>>,std::priv::_MapTraitsT<std::pair<long long const,vox::Handlable *>>,vox::SAllocator<std::pair<long long,vox::Handlable *>,(vox::VoxMemHint)0>>::_M_insert(
      &v20,
      a2,
      v3,
      (int)a3,
      0,
      0);
    v18 = v20;
    *(_BYTE *)(a1 + 4) = 1;
    *(_DWORD *)a1 = v18;
    return a1;
  }
LABEL_14:
  if ( v13 && v6 > v11 )
    goto LABEL_27;
  *(_DWORD *)a1 = v12;
  *(_BYTE *)(a1 + 4) = 0;
  return a1;
}


// ===== 864524 std::priv::_Rb_tree<long long,vox::HandleIdCompStruct,std::pair<long long const,vox::Handlable *>,std::priv::_Select1st<std::pair<long long const,vox::Handlable *>>,std::priv::_MapTraitsT<std::pair<long long const,vox::Handlable *>>,vox::SAllocator<std::pair<long long,vox::Handlable *>,(vox::VoxMemHint)0>>::insert_unique(std::priv::_Rb_tree_iterator<std::pair<long long const,vox::Handlable *>,std::priv::_MapTraitsT<std::pair<long long const,vox::Handlable *>>>,std::pair<long long const,vox::Handlable *> const&) =====
int *__fastcall std::priv::_Rb_tree<long long,vox::HandleIdCompStruct,std::pair<long long const,vox::Handlable *>,std::priv::_Select1st<std::pair<long long const,vox::Handlable *>>,std::priv::_MapTraitsT<std::pair<long long const,vox::Handlable *>>,vox::SAllocator<std::pair<long long,vox::Handlable *>,(vox::VoxMemHint)0>>::insert_unique(
        int *a1,
        _DWORD *a2,
        int *a3,
        unsigned int *a4)
{
  int v4; // r4
  _DWORD *v5; // r5
  int v7; // r12
  signed int v8; // r1
  signed int v9; // r8
  unsigned int v10; // r10
  unsigned int v11; // r11
  int v13; // r7
  int i; // r12
  unsigned int v15; // r2
  unsigned int v16; // r1
  unsigned int v17; // r0
  unsigned int v18; // r12
  int v19; // lr
  int v20; // r2
  int v21; // r2
  int v22; // r1
  int v23; // [sp+8h] [bp-24h] BYREF
  int v24; // [sp+10h] [bp-1Ch] BYREF
  int v25; // [sp+18h] [bp-14h] BYREF
  int v26[3]; // [sp+20h] [bp-Ch] BYREF

  v4 = *a3;
  v5 = a2;
  if ( *a3 != a2[2] )
  {
    if ( (_DWORD *)v4 != a2 )
    {
      if ( *(_BYTE *)v4 )
      {
        v7 = *(_DWORD *)(v4 + 8);
        if ( !v7 )
        {
LABEL_16:
          v7 = *(_DWORD *)(v4 + 4);
          if ( v4 == *(_DWORD *)(v7 + 8) )
          {
            while ( *(_DWORD *)(*(_DWORD *)(v7 + 4) + 8) == v7 )
              v7 = *(_DWORD *)(v7 + 4);
            v7 = *(_DWORD *)(v7 + 4);
          }
          goto LABEL_8;
        }
      }
      else
      {
        if ( v4 == *(_DWORD *)(*(_DWORD *)(v4 + 4) + 4) )
        {
          v7 = *(_DWORD *)(v4 + 12);
LABEL_8:
          v8 = a4[1];
          v9 = *(_DWORD *)(v4 + 20);
          v10 = *a4;
          v11 = *(_DWORD *)(v4 + 16);
          if ( __SPAIR64__(v9, v11) <= *(_QWORD *)a4 || *(_QWORD *)(v7 + 16) >= __SPAIR64__(v8, v10) )
          {
            v13 = *(_DWORD *)(v4 + 12);
            if ( v13 )
            {
              for ( i = *(_DWORD *)(v4 + 12); *(_DWORD *)(i + 8); i = *(_DWORD *)(i + 8) )
                ;
            }
            else
            {
              v21 = *(_DWORD *)(v4 + 4);
              if ( v4 == *(_DWORD *)(v21 + 12) )
              {
                do
                {
                  i = v21;
                  v21 = *(_DWORD *)(v21 + 4);
                }
                while ( i == *(_DWORD *)(v21 + 12) );
              }
              else
              {
                i = v4;
              }
              if ( v21 != *(_DWORD *)(i + 12) )
                i = v21;
            }
            if ( __SPAIR64__(v9, v11) > __SPAIR64__(v8, v10) )
            {
LABEL_30:
              std::priv::_Rb_tree<long long,vox::HandleIdCompStruct,std::pair<long long const,vox::Handlable *>,std::priv::_Select1st<std::pair<long long const,vox::Handlable *>>,std::priv::_MapTraitsT<std::pair<long long const,vox::Handlable *>>,vox::SAllocator<std::pair<long long,vox::Handlable *>,(vox::VoxMemHint)0>>::insert_unique(
                (int)&v23,
                v5,
                a4);
              *a1 = v23;
              return a1;
            }
            if ( v8 > v9 || v8 == v9 && v10 > v11 )
            {
              if ( v5 == (_DWORD *)i || *(_QWORD *)(i + 16) > __SPAIR64__(v8, v10) )
              {
                if ( !v13 )
                {
                  std::priv::_Rb_tree<long long,vox::HandleIdCompStruct,std::pair<long long const,vox::Handlable *>,std::priv::_Select1st<std::pair<long long const,vox::Handlable *>>,std::priv::_MapTraitsT<std::pair<long long const,vox::Handlable *>>,vox::SAllocator<std::pair<long long,vox::Handlable *>,(vox::VoxMemHint)0>>::_M_insert(
                    a1,
                    v5,
                    v4,
                    (int)a4,
                    0,
                    v4);
                  return a1;
                }
LABEL_48:
                std::priv::_Rb_tree<long long,vox::HandleIdCompStruct,std::pair<long long const,vox::Handlable *>,std::priv::_Select1st<std::pair<long long const,vox::Handlable *>>,std::priv::_MapTraitsT<std::pair<long long const,vox::Handlable *>>,vox::SAllocator<std::pair<long long,vox::Handlable *>,(vox::VoxMemHint)0>>::_M_insert(
                  a1,
                  v5,
                  i,
                  (int)a4,
                  i,
                  0);
                return a1;
              }
              goto LABEL_30;
            }
            goto LABEL_29;
          }
          if ( !*(_DWORD *)(v7 + 12) )
          {
            std::priv::_Rb_tree<long long,vox::HandleIdCompStruct,std::pair<long long const,vox::Handlable *>,std::priv::_Select1st<std::pair<long long const,vox::Handlable *>>,std::priv::_MapTraitsT<std::pair<long long const,vox::Handlable *>>,vox::SAllocator<std::pair<long long,vox::Handlable *>,(vox::VoxMemHint)0>>::_M_insert(
              a1,
              v5,
              v7,
              (int)a4,
              0,
              v7);
            return a1;
          }
          goto LABEL_11;
        }
        v7 = *(_DWORD *)(v4 + 8);
        if ( !v7 )
          goto LABEL_16;
      }
      while ( *(_DWORD *)(v7 + 12) )
        v7 = *(_DWORD *)(v7 + 12);
      goto LABEL_8;
    }
    v20 = *(_DWORD *)(v4 + 12);
    if ( *(_QWORD *)a4 <= *(_QWORD *)(v20 + 16) )
    {
      std::priv::_Rb_tree<long long,vox::HandleIdCompStruct,std::pair<long long const,vox::Handlable *>,std::priv::_Select1st<std::pair<long long const,vox::Handlable *>>,std::priv::_MapTraitsT<std::pair<long long const,vox::Handlable *>>,vox::SAllocator<std::pair<long long,vox::Handlable *>,(vox::VoxMemHint)0>>::insert_unique(
        (int)&v24,
        a2,
        a4);
      *a1 = v24;
      return a1;
    }
LABEL_50:
    std::priv::_Rb_tree<long long,vox::HandleIdCompStruct,std::pair<long long const,vox::Handlable *>,std::priv::_Select1st<std::pair<long long const,vox::Handlable *>>,std::priv::_MapTraitsT<std::pair<long long const,vox::Handlable *>>,vox::SAllocator<std::pair<long long,vox::Handlable *>,(vox::VoxMemHint)0>>::_M_insert(
      a1,
      a2,
      v20,
      (int)a4,
      0,
      v4);
    return a1;
  }
  if ( !a2[4] )
  {
    std::priv::_Rb_tree<long long,vox::HandleIdCompStruct,std::pair<long long const,vox::Handlable *>,std::priv::_Select1st<std::pair<long long const,vox::Handlable *>>,std::priv::_MapTraitsT<std::pair<long long const,vox::Handlable *>>,vox::SAllocator<std::pair<long long,vox::Handlable *>,(vox::VoxMemHint)0>>::insert_unique(
      (int)v26,
      a2,
      a4);
    *a1 = v26[0];
    return a1;
  }
  v15 = a4[1];
  v16 = *(_DWORD *)(v4 + 20);
  v17 = *a4;
  v18 = *(_DWORD *)(v4 + 16);
  if ( __SPAIR64__(v16, v18) > __SPAIR64__(v15, v17) )
  {
LABEL_11:
    std::priv::_Rb_tree<long long,vox::HandleIdCompStruct,std::pair<long long const,vox::Handlable *>,std::priv::_Select1st<std::pair<long long const,vox::Handlable *>>,std::priv::_MapTraitsT<std::pair<long long const,vox::Handlable *>>,vox::SAllocator<std::pair<long long,vox::Handlable *>,(vox::VoxMemHint)0>>::_M_insert(
      a1,
      v5,
      v4,
      (int)a4,
      v4,
      0);
    return a1;
  }
  if ( __SPAIR64__(v15, v17) <= __SPAIR64__(v16, v18) )
  {
LABEL_29:
    *a1 = v4;
    return a1;
  }
  v19 = *(_DWORD *)(v4 + 12);
  if ( v19 )
  {
    for ( i = *(_DWORD *)(v4 + 12); *(_DWORD *)(i + 8); i = *(_DWORD *)(i + 8) )
      ;
  }
  else
  {
    v22 = *(_DWORD *)(v4 + 4);
    if ( v4 == *(_DWORD *)(v22 + 12) )
    {
      do
      {
        i = v22;
        v22 = *(_DWORD *)(v22 + 4);
      }
      while ( *(_DWORD *)(v22 + 12) == i );
    }
    else
    {
      i = v4;
    }
    if ( v22 != *(_DWORD *)(i + 12) )
      i = v22;
  }
  if ( v5 == (_DWORD *)i )
  {
    a2 = v5;
    v20 = v4;
    goto LABEL_50;
  }
  if ( *(_QWORD *)(i + 16) > __SPAIR64__(v15, v17) )
  {
    if ( !v19 )
    {
      std::priv::_Rb_tree<long long,vox::HandleIdCompStruct,std::pair<long long const,vox::Handlable *>,std::priv::_Select1st<std::pair<long long const,vox::Handlable *>>,std::priv::_MapTraitsT<std::pair<long long const,vox::Handlable *>>,vox::SAllocator<std::pair<long long,vox::Handlable *>,(vox::VoxMemHint)0>>::_M_insert(
        a1,
        v5,
        v4,
        (int)a4,
        0,
        v4);
      return a1;
    }
    goto LABEL_48;
  }
  std::priv::_Rb_tree<long long,vox::HandleIdCompStruct,std::pair<long long const,vox::Handlable *>,std::priv::_Select1st<std::pair<long long const,vox::Handlable *>>,std::priv::_MapTraitsT<std::pair<long long const,vox::Handlable *>>,vox::SAllocator<std::pair<long long,vox::Handlable *>,(vox::VoxMemHint)0>>::insert_unique(
    (int)&v25,
    v5,
    a4);
  *a1 = v25;
  return a1;
}


// ===== 8648f4 vox::HandlableContainer::Add(vox::Handlable *) =====
int *__fastcall vox::HandlableContainer::Add(int *result, int a2)
{
  int v3; // r12
  unsigned int v4; // r6
  unsigned int v5; // r4
  int *v6; // r2
  int v7; // r3
  int v8; // r3
  unsigned int v9[4]; // [sp+0h] [bp-18h] BYREF
  int v10; // [sp+10h] [bp-8h] BYREF
  int v11; // [sp+14h] [bp-4h] BYREF

  if ( a2 )
  {
    v3 = result[1];
    v4 = *(_DWORD *)(a2 + 8);
    v5 = *(_DWORD *)(a2 + 12);
    if ( v3 )
    {
      v6 = result;
      while ( 1 )
      {
        if ( *(_QWORD *)(v3 + 16) >= __SPAIR64__(v5, v4) )
        {
          v7 = *(_DWORD *)(v3 + 8);
          v6 = (int *)v3;
          if ( !v7 )
            goto LABEL_9;
        }
        else
        {
          v7 = *(_DWORD *)(v3 + 12);
          v3 = (int)v6;
          if ( !v7 )
            goto LABEL_9;
        }
        v3 = v7;
      }
    }
    v3 = (int)result;
LABEL_9:
    if ( result == (int *)v3 || (v8 = v3, *(_QWORD *)(v3 + 16) > __SPAIR64__(v5, v4)) )
    {
      v9[0] = *(_DWORD *)(a2 + 8);
      v9[1] = v5;
      v9[2] = 0;
      v11 = v3;
      result = std::priv::_Rb_tree<long long,vox::HandleIdCompStruct,std::pair<long long const,vox::Handlable *>,std::priv::_Select1st<std::pair<long long const,vox::Handlable *>>,std::priv::_MapTraitsT<std::pair<long long const,vox::Handlable *>>,vox::SAllocator<std::pair<long long,vox::Handlable *>,(vox::VoxMemHint)0>>::insert_unique(
                 &v10,
                 result,
                 &v11,
                 v9);
      v8 = v10;
    }
    *(_DWORD *)(v8 + 24) = a2;
  }
  return result;
}


// ===== 8649c8 vox::HandlableContainer::Merge(vox::HandlableContainer*) =====
_DWORD *__fastcall vox::HandlableContainer::Merge(vox::HandlableContainer *this, vox::HandlableContainer *a2)
{
  _DWORD *result; // r0
  _DWORD *v5; // r3
  int v6; // r1
  _DWORD *v7; // r2
  int v8; // r1
  _DWORD *v9; // [sp+0h] [bp-Ch] BYREF
  _DWORD *v10; // [sp+4h] [bp-8h] BYREF

  vox::HandlableContainer::begin(&v10, (int)a2);
  vox::HandlableContainer::end(&v9, (int)a2);
  result = v9;
  v5 = v10;
  while ( result != v5 )
  {
    v6 = v5[6];
    if ( v6 )
    {
      vox::HandlableContainer::Add((int *)this, v6);
      result = v9;
      v5 = v10;
    }
    v7 = (_DWORD *)v5[3];
    if ( v7 )
    {
      while ( v7[2] )
        v7 = (_DWORD *)v7[2];
      v5 = v7;
      v10 = v7;
    }
    else
    {
      v8 = v5[1];
      if ( v5 == *(_DWORD **)(v8 + 12) )
      {
        do
        {
          v5 = (_DWORD *)v8;
          v8 = *(_DWORD *)(v8 + 4);
        }
        while ( *(_DWORD **)(v8 + 12) == v5 );
        v7 = (_DWORD *)v5[3];
      }
      if ( (_DWORD *)v8 != v7 )
        v5 = (_DWORD *)v8;
      v10 = v5;
    }
  }
  return result;
}


// ===== 864a80 vox::PriorityBankManager::GetDebugInfo(vox::DebugChunk_bank *) =====
int __fastcall vox::PriorityBankManager::GetDebugInfo(pthread_mutex_t *a1, _DWORD *a2)
{
  pthread_mutex_t *v2; // r5
  int v5; // r3
  volatile int v6; // r2
  int v7; // r1

  v2 = a1 + 4;
  vox::Mutex::Lock(a1 + 4);
  if ( a1->value > 0 )
  {
    v5 = 0;
    v6 = 0;
    do
    {
      *a2 = v6++;
      a2[1] = *(_DWORD *)(a1[1].value + v5 + 8);
      a2[2] = *(_DWORD *)(a1[1].value + v5);
      a2[3] = *(_DWORD *)(a1[1].value + v5 + 4);
      v7 = a1[1].value + v5;
      v5 += 24;
      a2[4] = (*(_DWORD *)(v7 + 16) - *(_DWORD *)(v7 + 12)) >> 3;
      a2 += 5;
    }
    while ( a1->value > v6 );
  }
  return vox::Mutex::Unlock(v2);
}


// ===== 864b1c vox::PriorityBankManager::CanAddEmitter(int,int) =====
int __fastcall vox::PriorityBankManager::CanAddEmitter(pthread_mutex_t *this, unsigned int a2, int a3)
{
  pthread_mutex_t *v3; // r4
  int CanAddEmitter; // r5

  v3 = this + 4;
  vox::Mutex::Lock(this + 4);
  CanAddEmitter = vox::PriorityBankManager::_CanAddEmitter((vox::PriorityBankManager *)this, a2, a3);
  vox::Mutex::Unlock(v3);
  return CanAddEmitter;
}


// ===== 864b5c vox::EmitterObj::GetStatus(void) =====
int __fastcall vox::EmitterObj::GetStatus(pthread_mutex_t *this)
{
  pthread_mutex_t *v1; // r5
  int v3; // r3
  bool v4; // zf
  int v5; // r3
  int v6; // r4
  int v7; // r4

  v1 = this + 6;
  vox::Mutex::Lock(this + 6);
  v3 = *((_DWORD *)this + 36);
  if ( v3 != 1 )
  {
    if ( v3 != 2 )
    {
      v4 = v3 == 0;
      if ( v3 )
        v4 = v3 == 3;
      v5 = v4;
      if ( v4 )
        v6 = 4;
      else
        v6 = v5;
      goto LABEL_16;
    }
LABEL_11:
    v7 = *((_DWORD *)this + 36);
    vox::Mutex::Unlock(v1);
    return v7;
  }
  if ( *((_BYTE *)this + 108) )
    goto LABEL_11;
  if ( *((_DWORD *)this + 37) == 1 )
    v6 = 17;
  else
    v6 = 33;
LABEL_16:
  vox::Mutex::Unlock(v1);
  return v6;
}


// ===== 864bec vox::EmitterObj::NeedToSendStateChangedCallback(void (*&)(vox::EmitterHandle &,void *,vox::EmitterExternState),void *&,vox::EmitterExternState&) =====
int __fastcall vox::EmitterObj::NeedToSendStateChangedCallback(int a1, _DWORD *a2, _DWORD *a3, _DWORD *a4)
{
  pthread_mutex_t *v4; // r5
  int v9; // r3
  int v10; // r4
  int result; // r0

  v4 = (pthread_mutex_t *)(a1 + 24);
  vox::Mutex::Lock((pthread_mutex_t *)(a1 + 24));
  if ( *(_BYTE *)(a1 + 152) && (v9 = *(_DWORD *)(a1 + 312)) != 0 )
  {
    *(_BYTE *)(a1 + 152) = 0;
    *a2 = v9;
    *a3 = *(_DWORD *)(a1 + 316);
    switch ( *(_DWORD *)(a1 + 144) )
    {
      case 0:
      case 3:
        *a4 = 4;
        vox::Mutex::Unlock(v4);
        result = 1;
        break;
      case 1:
        v10 = 1;
        *a4 = 1;
        goto LABEL_5;
      case 2:
        *a4 = 2;
        v10 = 1;
        goto LABEL_5;
      default:
        *a4 = 0;
        v10 = 1;
        goto LABEL_5;
    }
  }
  else
  {
    v10 = 0;
LABEL_5:
    vox::Mutex::Unlock(v4);
    return v10;
  }
  return result;
}


// ===== 864cb4 vox::EmitterObj::UnregisterStateChangedCallback(void) =====
int __fastcall vox::EmitterObj::UnregisterStateChangedCallback(pthread_mutex_t *this)
{
  pthread_mutex_t *v1; // r5

  v1 = this + 6;
  vox::Mutex::Lock(this + 6);
  *((_DWORD *)this + 79) = 0;
  *((_DWORD *)this + 78) = 0;
  return vox::Mutex::Unlock(v1);
}


// ===== 864ce0 vox::EmitterObj::RegisterStateChangedCallback(void (*)(vox::EmitterHandle &,void *,vox::EmitterExternState),void *) =====
int __fastcall vox::EmitterObj::RegisterStateChangedCallback(pthread_mutex_t *a1, volatile int a2, volatile int a3)
{
  pthread_mutex_t *v3; // r5

  v3 = a1 + 6;
  vox::Mutex::Lock(a1 + 6);
  a1[79].value = a3;
  a1[78].value = a2;
  return vox::Mutex::Unlock(v3);
}


// ===== 864d10 vox::VoxEngineInternal::IsSuspended(void) =====
bool __fastcall vox::VoxEngineInternal::IsSuspended(pthread_mutex_t *this)
{
  pthread_mutex_t *v1; // r4
  pthread_mutex_t *v3; // r0
  _BOOL4 v4; // r4

  v1 = this + 253;
  vox::Mutex::Lock(this + 253);
  v3 = v1;
  v4 = *((_DWORD *)this + 357) > 0;
  vox::Mutex::Unlock(v3);
  return v4;
}


// ===== 864d44 vox::VoxEngineInternal::Resume(void) =====
pthread_mutex_t *__fastcall vox::VoxEngineInternal::Resume(pthread_mutex_t *this)
{
  pthread_mutex_t *v1; // r4
  pthread_mutex_t *v2; // r5
  volatile int value; // r3

  v1 = this;
  if ( *((_DWORD *)this + 339) )
  {
    v2 = this + 253;
    vox::Mutex::Lock(this + 253);
    if ( v1[357].value <= 1 )
    {
      if ( v1[357].value == 1 )
      {
        value = v1[339].value;
        if ( value )
          (*(void (__fastcall **)(volatile int))(*(_DWORD *)value + 20))(v1[339].value);
        v1[357].value = 0;
      }
    }
    else
    {
      --v1[357].value;
    }
    return (pthread_mutex_t *)vox::Mutex::Unlock(v2);
  }
  return this;
}


// ===== 864dc4 vox::VoxEngineInternal::Suspend(void) =====
pthread_mutex_t *__fastcall vox::VoxEngineInternal::Suspend(pthread_mutex_t *this)
{
  pthread_mutex_t *v1; // r4
  pthread_mutex_t *v2; // r5
  volatile int value; // r3

  v1 = this;
  if ( *((_DWORD *)this + 339) )
  {
    v2 = this + 253;
    vox::Mutex::Lock(this + 253);
    if ( !v1[357].value )
    {
      value = v1[339].value;
      if ( value )
        (*(void (__fastcall **)(volatile int))(*(_DWORD *)value + 16))(v1[339].value);
    }
    ++v1[357].value;
    return (pthread_mutex_t *)vox::Mutex::Unlock(v2);
  }
  return this;
}


// ===== 864e28 vox::EmitterObj::PrintDebug(void) =====
int __fastcall vox::EmitterObj::PrintDebug(pthread_mutex_t *this)
{
  pthread_mutex_t *v1; // r4
  int v3; // r3

  v1 = this + 6;
  vox::Mutex::Lock(this + 6);
  v3 = *((_DWORD *)this + 68);
  if ( v3 )
    (*(void (__fastcall **)(_DWORD))(*(_DWORD *)v3 + 80))(*((_DWORD *)this + 68));
  return vox::Mutex::Unlock(v1);
}


// ===== 864e64 vox::EmitterObj::Get3DParameterfv(int,vox::VoxVector3f &) =====
int __fastcall vox::EmitterObj::Get3DParameterfv(pthread_mutex_t *a1, int a2, volatile int *a3)
{
  pthread_mutex_t *v3; // r5

  v3 = a1 + 6;
  vox::Mutex::Lock(a1 + 6);
  switch ( a2 )
  {
    case 9:
      *(pthread_mutex_t *)a3 = a1[45];
      *((pthread_mutex_t *)a3 + 1) = a1[46];
      *((pthread_mutex_t *)a3 + 2) = a1[47];
      break;
    case 10:
      *(pthread_mutex_t *)a3 = a1[42];
      *((pthread_mutex_t *)a3 + 1) = a1[43];
      *((pthread_mutex_t *)a3 + 2) = a1[44];
      break;
    case 8:
      *(pthread_mutex_t *)a3 = a1[39];
      *((pthread_mutex_t *)a3 + 1) = a1[40];
      *((pthread_mutex_t *)a3 + 2) = a1[41];
      break;
  }
  return vox::Mutex::Unlock(v3);
}


// ===== 864f04 vox::EmitterObj::Get3DParameter3f(int,float &,float &,float &) =====
int __fastcall vox::EmitterObj::Get3DParameter3f(pthread_mutex_t *this, int a2, float *a3, float *a4, float *a5)
{
  pthread_mutex_t *v5; // r5

  v5 = this + 6;
  vox::Mutex::Lock(this + 6);
  switch ( a2 )
  {
    case 9:
      *a3 = *((float *)this + 45);
      *a4 = *((float *)this + 46);
      *a5 = *((float *)this + 47);
      break;
    case 10:
      *a3 = *((float *)this + 42);
      *a4 = *((float *)this + 43);
      *a5 = *((float *)this + 44);
      break;
    case 8:
      *a3 = *((float *)this + 39);
      *a4 = *((float *)this + 40);
      *a5 = *((float *)this + 41);
      break;
  }
  return vox::Mutex::Unlock(v5);
}


// ===== 864fa0 vox::EmitterObj::Get3DParameterf(int,float &) =====
int __fastcall vox::EmitterObj::Get3DParameterf(pthread_mutex_t *this, int a2, float *a3)
{
  pthread_mutex_t *v3; // r4
  int v5; // r6

  v3 = this + 6;
  v5 = a2 - 1;
  vox::Mutex::Lock(this + 6);
  switch ( v5 )
  {
    case 0:
      *a3 = *((float *)this + 49);
      break;
    case 1:
      *a3 = *((float *)this + 50);
      break;
    case 2:
      *a3 = *((float *)this + 51);
      break;
    case 3:
      *a3 = *((float *)this + 52);
      break;
    case 4:
      *a3 = *((float *)this + 53);
      break;
    case 5:
      *a3 = *((float *)this + 54);
      break;
    case 6:
      *a3 = *((float *)this + 55);
      break;
    default:
      return vox::Mutex::Unlock(v3);
  }
  return vox::Mutex::Unlock(v3);
}


// ===== 865044 vox::EmitterObj::Get3DParameteri(int,int &) =====
int __fastcall vox::EmitterObj::Get3DParameteri(pthread_mutex_t *this, int a2, int *a3)
{
  pthread_mutex_t *v3; // r4

  v3 = this + 6;
  vox::Mutex::Lock(this + 6);
  if ( !a2 )
    *a3 = *((_DWORD *)this + 48);
  return vox::Mutex::Unlock(v3);
}


// ===== 865078 vox::EmitterObj::Set3DParameterfv(int,vox::VoxVector3f const&) =====
int __fastcall vox::EmitterObj::Set3DParameterfv(int a1, int a2, _DWORD *a3)
{
  pthread_mutex_t *v3; // r5
  int v8; // r3
  int v9; // r3
  int v10; // r3

  v3 = (pthread_mutex_t *)(a1 + 24);
  vox::Mutex::Lock((pthread_mutex_t *)(a1 + 24));
  switch ( a2 )
  {
    case 9:
      *(_DWORD *)(a1 + 180) = *a3;
      *(_DWORD *)(a1 + 184) = a3[1];
      v10 = a3[2];
      *(_BYTE *)(a1 + 233) = 1;
      *(_DWORD *)(a1 + 188) = v10;
      break;
    case 10:
      *(_DWORD *)(a1 + 168) = *a3;
      *(_DWORD *)(a1 + 172) = a3[1];
      v9 = a3[2];
      *(_BYTE *)(a1 + 234) = 1;
      *(_DWORD *)(a1 + 176) = v9;
      break;
    case 8:
      *(_DWORD *)(a1 + 156) = *a3;
      *(_DWORD *)(a1 + 160) = a3[1];
      v8 = a3[2];
      *(_BYTE *)(a1 + 232) = 1;
      *(_DWORD *)(a1 + 164) = v8;
      break;
  }
  return vox::Mutex::Unlock(v3);
}


// ===== 865130 vox::EmitterObj::Set3DParameter3f(int,float,float,float) =====
int __fastcall vox::EmitterObj::Set3DParameter3f(pthread_mutex_t *this, int a2, float a3, float a4, float a5)
{
  pthread_mutex_t *v5; // r5

  v5 = this + 6;
  vox::Mutex::Lock(this + 6);
  switch ( a2 )
  {
    case 9:
      *((_BYTE *)this + 233) = 1;
      *((float *)this + 45) = a3;
      *((float *)this + 46) = a4;
      *((float *)this + 47) = a5;
      break;
    case 10:
      *((_BYTE *)this + 234) = 1;
      *((float *)this + 42) = a3;
      *((float *)this + 43) = a4;
      *((float *)this + 44) = a5;
      break;
    case 8:
      *((_BYTE *)this + 232) = 1;
      *((float *)this + 39) = a3;
      *((float *)this + 40) = a4;
      *((float *)this + 41) = a5;
      break;
  }
  return vox::Mutex::Unlock(v5);
}


// ===== 8651c0 vox::EmitterObj::Set3DParameterf(int,float) =====
int __fastcall vox::EmitterObj::Set3DParameterf(pthread_mutex_t *this, int a2, float a3)
{
  pthread_mutex_t *v3; // r5
  int v5; // r6

  v3 = this + 6;
  v5 = a2 - 1;
  vox::Mutex::Lock(this + 6);
  switch ( v5 )
  {
    case 0:
      *((_BYTE *)this + 225) = 1;
      *((float *)this + 49) = a3;
      break;
    case 1:
      *((_BYTE *)this + 226) = 1;
      *((float *)this + 50) = a3;
      break;
    case 2:
      *((_BYTE *)this + 227) = 1;
      *((float *)this + 51) = a3;
      break;
    case 3:
      *((_BYTE *)this + 228) = 1;
      *((float *)this + 52) = a3;
      break;
    case 4:
      *((_BYTE *)this + 229) = 1;
      *((float *)this + 53) = a3;
      break;
    case 5:
      *((_BYTE *)this + 230) = 1;
      *((float *)this + 54) = a3;
      break;
    case 6:
      *((_BYTE *)this + 231) = 1;
      *((float *)this + 55) = a3;
      break;
    default:
      return vox::Mutex::Unlock(v3);
  }
  return vox::Mutex::Unlock(v3);
}


// ===== 865280 vox::EmitterObj::Set3DParameteri(int,int) =====
int __fastcall vox::EmitterObj::Set3DParameteri(pthread_mutex_t *this, int a2, int a3)
{
  pthread_mutex_t *v3; // r5

  v3 = this + 6;
  vox::Mutex::Lock(this + 6);
  if ( !a2 )
  {
    *((_BYTE *)this + 224) = 1;
    *((_DWORD *)this + 48) = a3;
  }
  return vox::Mutex::Unlock(v3);
}


// ===== 8652b8 vox::EmitterObj::SetDefaultParameters(void) =====
int __fastcall vox::EmitterObj::SetDefaultParameters(pthread_mutex_t *this)
{
  vox::EmitterObj::Set3DParameteri(this, 0, 0);
  vox::EmitterObj::Set3DParameterf(this, 1, 3.4028e38);
  vox::EmitterObj::Set3DParameterf(this, 2, 100.0);
  vox::EmitterObj::Set3DParameterf(this, 3, 1.0);
  vox::EmitterObj::Set3DParameterf(this, 4, 360.0);
  vox::EmitterObj::Set3DParameterf(this, 5, 360.0);
  vox::EmitterObj::Set3DParameterf(this, 6, 0.0);
  *((_DWORD *)this + 41) = 0;
  *((_DWORD *)this + 40) = 0;
  *((_DWORD *)this + 39) = 0;
  vox::EmitterObj::Set3DParameterfv((int)this, 8, (_DWORD *)this + 39);
  *((_DWORD *)this + 47) = 0;
  *((_DWORD *)this + 46) = 0;
  *((_DWORD *)this + 45) = 0;
  vox::EmitterObj::Set3DParameterfv((int)this, 9, (_DWORD *)this + 45);
  *((_DWORD *)this + 44) = 0;
  *((_DWORD *)this + 43) = 0;
  *((_DWORD *)this + 42) = 0;
  return vox::EmitterObj::Set3DParameterfv((int)this, 10, (_DWORD *)this + 42);
}


// ===== 865398 vox::EmitterObj::GetUserData(void) =====
int __fastcall vox::EmitterObj::GetUserData(pthread_mutex_t *this)
{
  pthread_mutex_t *v1; // r4
  int v3; // r5

  v1 = this + 6;
  vox::Mutex::Lock(this + 6);
  v3 = *((_DWORD *)this + 77);
  vox::Mutex::Unlock(v1);
  return v3;
}


// ===== 8653c0 vox::EmitterObj::SetUserData(vox::EmitterHandleUserData &) =====
int __fastcall vox::EmitterObj::SetUserData(pthread_mutex_t *a1, volatile int *a2)
{
  pthread_mutex_t *v2; // r5

  v2 = a1 + 6;
  vox::Mutex::Lock(a1 + 6);
  a1[77].value = *a2;
  return vox::Mutex::Unlock(v2);
}


// ===== 8653ec vox::EmitterObj::SetPlayCursor(float) =====
int __fastcall vox::EmitterObj::SetPlayCursor(pthread_mutex_t *this, float a2)
{
  pthread_mutex_t *v2; // r5
  int v5; // r3
  int v6; // r3
  int v7; // r3
  unsigned int v8; // r6

  v2 = this + 6;
  vox::Mutex::Lock(this + 6);
  if ( *((_DWORD *)this + 68) )
  {
    v5 = *((_DWORD *)this + 69);
    if ( v5 )
    {
      if ( *(int *)(v5 + 16) > 0 )
      {
        v6 = *((_DWORD *)this + 70);
        v7 = *(_DWORD *)(v6 + 80) ? 0 : *(_DWORD *)(v6 + 60);
        if ( (*(int (__fastcall **)(int))(*(_DWORD *)v7 + 24))(v7) != 4 )
        {
          if ( a2 < 0.0 )
            a2 = 0.0;
          v8 = (unsigned int)(float)((float)*(int *)(*((_DWORD *)this + 69) + 8) * a2);
          (*(void (__fastcall **)(_DWORD))(**((_DWORD **)this + 68) + 20))(*((_DWORD *)this + 68));
          (*(void (__fastcall **)(_DWORD, unsigned int))(**((_DWORD **)this + 68) + 32))(
            *((_DWORD *)this + 68),
            *(_DWORD *)(*((_DWORD *)this + 69) + 4) * (*(int *)(*((_DWORD *)this + 69) + 12) >> 3) * v8);
          (*(void (__fastcall **)(_DWORD, unsigned int))(**((_DWORD **)this + 69) + 40))(*((_DWORD *)this + 69), v8);
          if ( *((_DWORD *)this + 37) == 2 )
            *((_DWORD *)this + 37) = 3;
        }
      }
    }
  }
  return vox::Mutex::Unlock(v2);
}


// ===== 8654f8 vox::EmitterObj::GetPlayCursor(void) =====
int __fastcall vox::EmitterObj::GetPlayCursor(pthread_mutex_t *this)
{
  pthread_mutex_t *v1; // r5
  float v3; // r4

  v1 = this + 6;
  vox::Mutex::Lock(this + 6);
  if ( *((int *)this + 9) > 0 )
  {
    v3 = (float)((*(int (__fastcall **)(_DWORD))(**((_DWORD **)this + 68) + 28))(*((_DWORD *)this + 68))
               % *((_DWORD *)this + 9))
       / (float)*((int *)this + 8);
    vox::Mutex::Unlock(v1);
  }
  else
  {
    v3 = 0.0;
  }
  return LODWORD(v3);
}


// ===== 86556c vox::EmitterObj::IsDone(void) =====
bool __fastcall vox::EmitterObj::IsDone(pthread_mutex_t *this)
{
  pthread_mutex_t *v1; // r4
  _BOOL4 IsDone; // r5

  v1 = this + 6;
  vox::Mutex::Lock(this + 6);
  IsDone = vox::EmitterObj::_IsDone((vox::EmitterObj *)this);
  vox::Mutex::Unlock(v1);
  return IsDone;
}


// ===== 86559c vox::EmitterObj::IsPlaying(void) =====
bool __fastcall vox::EmitterObj::IsPlaying(pthread_mutex_t *this)
{
  pthread_mutex_t *v1; // r5
  _BOOL4 v3; // r4

  v1 = this + 6;
  vox::Mutex::Lock(this + 6);
  v3 = *((_DWORD *)this + 36) == 1 || *((_DWORD *)this + 37) == 1;
  vox::Mutex::Unlock(v1);
  return v3;
}


// ===== 8655e0 vox::EmitterObj::Reset(void) =====
int __fastcall vox::EmitterObj::Reset(pthread_mutex_t *this)
{
  pthread_mutex_t *v1; // r4

  v1 = this + 6;
  vox::Mutex::Lock(this + 6);
  *((_BYTE *)this + 153) = 1;
  return vox::Mutex::Unlock(v1);
}


// ===== 865608 vox::EmitterObj::SetLoop(bool) =====
int __fastcall vox::EmitterObj::SetLoop(pthread_mutex_t *this, bool a2)
{
  pthread_mutex_t *v2; // r4

  v2 = this + 6;
  vox::Mutex::Lock(this + 6);
  *((_BYTE *)this + 141) = a2;
  return vox::Mutex::Unlock(v2);
}


// ===== 865630 vox::EmitterObj::GetLoop(void) =====
int __fastcall vox::EmitterObj::GetLoop(pthread_mutex_t *this)
{
  pthread_mutex_t *v1; // r4
  int v3; // r5

  v1 = this + 6;
  vox::Mutex::Lock(this + 6);
  v3 = *((unsigned __int8 *)this + 140);
  vox::Mutex::Unlock(v1);
  return v3;
}


// ===== 865658 vox::EmitterObj::SetState(int) =====
int __fastcall vox::EmitterObj::SetState(pthread_mutex_t *this, int a2)
{
  pthread_mutex_t *v2; // r4

  v2 = this + 6;
  vox::Mutex::Lock(this + 6);
  *((_DWORD *)this + 37) = a2;
  return vox::Mutex::Unlock(v2);
}


// ===== 865680 vox::EmitterObj::GetState(void) =====
int __fastcall vox::EmitterObj::GetState(pthread_mutex_t *this)
{
  pthread_mutex_t *v1; // r4
  int v3; // r5

  v1 = this + 6;
  vox::Mutex::Lock(this + 6);
  v3 = *((_DWORD *)this + 36);
  vox::Mutex::Unlock(v1);
  return v3;
}


// ===== 8656a8 vox::EmitterObj::GetPitch(void) =====
int __fastcall vox::EmitterObj::GetPitch(pthread_mutex_t *this)
{
  pthread_mutex_t *v1; // r4
  int v3; // r5

  v1 = this + 6;
  vox::Mutex::Lock(this + 6);
  v3 = *((_DWORD *)this + 29);
  vox::Mutex::Unlock(v1);
  return v3;
}


// ===== 8656d0 vox::EmitterObj::GetGain(void) =====
int __fastcall vox::EmitterObj::GetGain(pthread_mutex_t *this)
{
  pthread_mutex_t *v1; // r4
  int v3; // r5

  v1 = this + 6;
  vox::Mutex::Lock(this + 6);
  v3 = *((_DWORD *)this + 15);
  vox::Mutex::Unlock(v1);
  return v3;
}


// ===== 8656f8 vox::EmitterObj::IsGroup(uint) =====
bool __fastcall vox::EmitterObj::IsGroup(pthread_mutex_t *this, unsigned int a2)
{
  pthread_mutex_t *v2; // r4
  pthread_mutex_t *v5; // r0
  _BOOL4 v6; // r4

  v2 = this + 6;
  vox::Mutex::Lock(this + 6);
  v5 = v2;
  v6 = (a2 & (1 << *((_DWORD *)this + 10))) != 0;
  vox::Mutex::Unlock(v5);
  return v6;
}


// ===== 865734 vox::EmitterObj::SetGroup(int) =====
int __fastcall vox::EmitterObj::SetGroup(pthread_mutex_t *this, int a2)
{
  pthread_mutex_t *v2; // r4

  v2 = this + 6;
  vox::Mutex::Lock(this + 6);
  *((_DWORD *)this + 10) = a2;
  return vox::Mutex::Unlock(v2);
}


// ===== 86575c vox::EmitterObj::GetGroup(void) =====
int __fastcall vox::EmitterObj::GetGroup(pthread_mutex_t *this)
{
  pthread_mutex_t *v1; // r4
  int v3; // r5

  v1 = this + 6;
  vox::Mutex::Lock(this + 6);
  v3 = *((_DWORD *)this + 10);
  vox::Mutex::Unlock(v1);
  return v3;
}


// ===== 865784 vox::EmitterObj::ShouldDie(void) =====
bool __fastcall vox::EmitterObj::ShouldDie(pthread_mutex_t *this)
{
  pthread_mutex_t *v1; // r5
  int v3; // r4

  v1 = this + 6;
  vox::Mutex::Lock(this + 6);
  if ( vox::EmitterObj::_IsDone((vox::EmitterObj *)this) && !*((_DWORD *)this + 4) || *((_BYTE *)this + 284) )
  {
    vox::Mutex::Unlock(v1);
    return 1;
  }
  else
  {
    v3 = *((_DWORD *)this + 36);
    vox::Mutex::Unlock(v1);
    return v3 == -1;
  }
}


// ===== 8657f4 vox::EmitterObj::IsAlive(void) =====
int __fastcall vox::EmitterObj::IsAlive(pthread_mutex_t *this)
{
  pthread_mutex_t *v1; // r4
  pthread_mutex_t *v2; // r5

  v1 = this + 6;
  v2 = this;
  vox::Mutex::Lock(this + 6);
  LOBYTE(v2) = vox::EmitterObj::ShouldDie(v2);
  vox::Mutex::Unlock(v1);
  return (unsigned __int8)v2 ^ 1;
}


// ===== 865828 vox::EmitterObj::NeedToDie(void) =====
int __fastcall vox::EmitterObj::NeedToDie(pthread_mutex_t *this)
{
  pthread_mutex_t *v1; // r4

  v1 = this + 6;
  vox::Mutex::Lock(this + 6);
  *((_BYTE *)this + 284) = 1;
  return vox::Mutex::Unlock(v1);
}


// ===== 865850 vox::EmitterObj::SetAutoKillAfterDone(bool) =====
int __fastcall vox::EmitterObj::SetAutoKillAfterDone(pthread_mutex_t *this, bool a2)
{
  pthread_mutex_t *v2; // r4

  v2 = this + 6;
  vox::Mutex::Lock(this + 6);
  *((_BYTE *)this + 285) = a2;
  return vox::Mutex::Unlock(v2);
}


// ===== 865878 vox::DataObj::GetUserData(void) =====
int __fastcall vox::DataObj::GetUserData(pthread_mutex_t *this)
{
  pthread_mutex_t *v1; // r4
  int v3; // r5

  v1 = this + 6;
  vox::Mutex::Lock(this + 6);
  v3 = *((_DWORD *)this + 18);
  vox::Mutex::Unlock(v1);
  return v3;
}


// ===== 8658a0 vox::DataObj::SetUserData(vox::DataHandleUserData &) =====
int __fastcall vox::DataObj::SetUserData(pthread_mutex_t *a1, volatile int *a2)
{
  pthread_mutex_t *v2; // r5

  v2 = a1 + 6;
  vox::Mutex::Lock(a1 + 6);
  a1[18].value = *a2;
  return vox::Mutex::Unlock(v2);
}


// ===== 8658cc vox::DataObj::IsReady(void) =====
bool __fastcall vox::DataObj::IsReady(pthread_mutex_t *this)
{
  pthread_mutex_t *v1; // r4
  pthread_mutex_t *v3; // r0
  _BOOL4 v4; // r4

  v1 = this + 22;
  vox::Mutex::Lock(this + 22);
  v3 = v1;
  v4 = *((_DWORD *)this + 20) == 0;
  vox::Mutex::Unlock(v3);
  return v4;
}


// ===== 8658fc vox::DataObj::GetDuration(void) =====
int __fastcall vox::DataObj::GetDuration(pthread_mutex_t *this)
{
  float v2; // r5
  pthread_mutex_t *v3; // r4

  if ( vox::DataObj::IsReady(this) )
  {
    v3 = this + 6;
    vox::Mutex::Lock(this + 6);
    v2 = (float)*((unsigned int *)this + 13) / (float)*((int *)this + 11);
    vox::Mutex::Unlock(v3);
  }
  else
  {
    v2 = 0.0;
  }
  return LODWORD(v2);
}


// ===== 865954 vox::DataObj::GetDebugInfo(vox::DebugChunk_dataSource &) =====
int __fastcall vox::DataObj::GetDebugInfo(int a1, int a2)
{
  pthread_mutex_t *v4; // r5
  int Duration; // r7
  int v6; // r3

  v4 = (pthread_mutex_t *)(a1 + 24);
  Duration = vox::DataObj::GetDuration((pthread_mutex_t *)a1);
  vox::Mutex::Lock(v4);
  *(_DWORD *)(a2 + 16) = *(_DWORD *)(a1 + 32);
  *(_QWORD *)a2 = *(_QWORD *)(a1 + 8);
  *(_DWORD *)(a2 + 12) = (*(int (__fastcall **)(_DWORD))(**(_DWORD **)(a1 + 60) + 24))(*(_DWORD *)(a1 + 60));
  *(_DWORD *)(a2 + 8) = (*(int (__fastcall **)(_DWORD))(**(_DWORD **)(a1 + 56) + 28))(*(_DWORD *)(a1 + 56));
  *(_DWORD *)(a2 + 20) = *(_DWORD *)(a1 + 44);
  *(_DWORD *)(a2 + 24) = *(_DWORD *)(a1 + 40);
  v6 = *(_DWORD *)(a1 + 48);
  *(_DWORD *)(a2 + 32) = Duration;
  *(_DWORD *)(a2 + 28) = v6;
  *(_DWORD *)(a2 + 36) = *(_DWORD *)(a1 + 28);
  *(_DWORD *)(a2 + 40) = *(_DWORD *)(a1 + 16);
  return vox::Mutex::Unlock(v4);
}


// ===== 8659ec vox::DataObj::PrintDebug(void) =====
int __fastcall vox::DataObj::PrintDebug(pthread_mutex_t *this)
{
  pthread_mutex_t *v1; // r4

  v1 = this + 6;
  vox::DataObj::GetDuration(this);
  vox::Mutex::Lock(v1);
  return vox::Mutex::Unlock(v1);
}


// ===== 865a0c vox::DataObj::IsGroup(uint) =====
bool __fastcall vox::DataObj::IsGroup(pthread_mutex_t *this, unsigned int a2)
{
  pthread_mutex_t *v2; // r4
  pthread_mutex_t *v5; // r0
  _BOOL4 v6; // r4

  v2 = this + 6;
  vox::Mutex::Lock(this + 6);
  v5 = v2;
  v6 = (a2 & (1 << *((_DWORD *)this + 7))) != 0;
  vox::Mutex::Unlock(v5);
  return v6;
}


// ===== 865a48 vox::DataObj::GetGroup(void) =====
int __fastcall vox::DataObj::GetGroup(pthread_mutex_t *this)
{
  pthread_mutex_t *v1; // r4
  int v3; // r5

  v1 = this + 6;
  vox::Mutex::Lock(this + 6);
  v3 = *((_DWORD *)this + 7);
  vox::Mutex::Unlock(v1);
  return v3;
}


// ===== 865a70 vox::DataObj::ShouldDie(void) =====
bool __fastcall vox::DataObj::ShouldDie(pthread_mutex_t *this)
{
  pthread_mutex_t *v1; // r5
  vox::DataObj *v3; // r3
  int v4; // r4

  v1 = this + 6;
  vox::Mutex::Lock(this + 6);
  v3 = *((vox::DataObj **)this + 16);
  if ( v3 == (vox::DataObj *)(this + 16) )
  {
    if ( !*((_DWORD *)this + 4) )
      goto LABEL_6;
  }
  else
  {
    do
      v3 = *(vox::DataObj **)v3;
    while ( this + 16 != (pthread_mutex_t *)v3 );
  }
  if ( !*((_BYTE *)this + 77) )
  {
    v4 = *((_DWORD *)this + 20);
    vox::Mutex::Unlock(v1);
    return v4 == -1;
  }
LABEL_6:
  vox::Mutex::Unlock(v1);
  return 1;
}


// ===== 865aec vox::DataObj::NeedToDie(void) =====
int __fastcall vox::DataObj::NeedToDie(pthread_mutex_t *this)
{
  pthread_mutex_t *v1; // r5

  v1 = this + 6;
  vox::Mutex::Lock(this + 6);
  *((_BYTE *)this + 77) = 1;
  vox::Mutex::Unlock(v1);
  vox::Mutex::Lock(this + 22);
  *((_DWORD *)this + 20) = 4;
  return vox::Mutex::Unlock(this + 22);
}


// ===== 865b30 vox::DataObj::UnregisterEmitter(long long) =====
int __fastcall vox::DataObj::UnregisterEmitter(pthread_mutex_t *this, __int64 a2)
{
  pthread_mutex_t *v3; // r4
  char *v6; // r0
  char *v7; // r5
  char *v8; // t1
  char *v9; // r3
  _DWORD *v10; // r2

  v3 = this + 6;
  vox::Mutex::Lock(this + 6);
  v8 = *((char **)this + 16);
  v7 = (char *)(this + 16);
  v6 = v8;
  if ( v7 == v8 )
    return vox::Mutex::Unlock(v3);
  while ( *((_QWORD *)v6 + 1) != a2 )
  {
    v6 = *(char **)v6;
    if ( v7 == v6 )
      return vox::Mutex::Unlock(v3);
  }
  v9 = *(char **)v6;
  v10 = *((_DWORD **)v6 + 1);
  *v10 = *(_DWORD *)v6;
  *((_DWORD *)v9 + 1) = v10;
  VoxFree(v6);
  return vox::Mutex::Unlock(v3);
}


// ===== 865ba8 vox::DataObj::RegisterEmitter(long long) =====
int __fastcall vox::DataObj::RegisterEmitter(pthread_mutex_t *this, __int64 a2)
{
  pthread_mutex_t *v3; // r5
  _QWORD *v6; // r0
  _DWORD *v7; // r3

  v3 = this + 6;
  vox::Mutex::Lock(this + 6);
  v6 = VoxAlloc(0x10u, 0);
  v6[1] = a2;
  v7 = *((_DWORD **)this + 17);
  *(_DWORD *)v6 = this + 16;
  *((_DWORD *)v6 + 1) = v7;
  *v7 = v6;
  *((_DWORD *)this + 17) = v6;
  return vox::Mutex::Unlock(v3);
}


// ===== 865bf4 vox::Handlable::Release(void) =====
int __fastcall vox::Handlable::Release(pthread_mutex_t *this)
{
  pthread_mutex_t *v1; // r5
  int v3; // r3

  v1 = this + 6;
  vox::Mutex::Lock(this + 6);
  v3 = *((_DWORD *)this + 4);
  if ( v3 > 0 )
    *((_DWORD *)this + 4) = v3 - 1;
  return vox::Mutex::Unlock(v1);
}


// ===== 865c24 vox::Handlable::Retain(void) =====
int __fastcall vox::Handlable::Retain(pthread_mutex_t *this)
{
  pthread_mutex_t *v1; // r5

  v1 = this + 6;
  vox::Mutex::Lock(this + 6);
  ++*((_DWORD *)this + 4);
  return vox::Mutex::Unlock(v1);
}


// ===== 865c50 vox::VoxEngineInternal::SetSFXPresetActive(int,bool,float) =====
int __fastcall vox::VoxEngineInternal::SetSFXPresetActive(pthread_mutex_t *this, int a2, int a3, float a4)
{
  pthread_mutex_t *v4; // r4
  int v9; // r12

  v4 = this + 253;
  vox::Mutex::Lock(this + 253);
  v9 = *((_DWORD *)this + 339);
  if ( v9 )
    (*(void (__fastcall **)(_DWORD, int, int, _DWORD))(*(_DWORD *)v9 + 52))(
      *((_DWORD *)this + 339),
      a2,
      a3,
      LODWORD(a4));
  return vox::Mutex::Unlock(v4);
}


// ===== 865ca4 vox::VoxEngineInternal::SetDynamicBusRouting(char *) =====
int __fastcall vox::VoxEngineInternal::SetDynamicBusRouting(pthread_mutex_t *this, char *a2)
{
  pthread_mutex_t *v2; // r4
  int v5; // r3

  v2 = this + 253;
  vox::Mutex::Lock(this + 253);
  v5 = *((_DWORD *)this + 339);
  if ( v5 )
    (*(void (__fastcall **)(_DWORD, char *))(*(_DWORD *)v5 + 48))(*((_DWORD *)this + 339), a2);
  return vox::Mutex::Unlock(v2);
}


// ===== 865ce8 vox::VoxEngineInternal::SetStaticBusRouting(char *) =====
int __fastcall vox::VoxEngineInternal::SetStaticBusRouting(pthread_mutex_t *this, char *a2)
{
  pthread_mutex_t *v2; // r4
  int v5; // r3

  v2 = this + 253;
  vox::Mutex::Lock(this + 253);
  v5 = *((_DWORD *)this + 339);
  if ( v5 )
    (*(void (__fastcall **)(_DWORD, char *))(*(_DWORD *)v5 + 44))(*((_DWORD *)this + 339), a2);
  return vox::Mutex::Unlock(v2);
}


// ===== 865d2c vox::VoxEngineInternal::Get3DGeneralParameteri(int,int &) =====
int __fastcall vox::VoxEngineInternal::Get3DGeneralParameteri(pthread_mutex_t *this, int a2, int *a3)
{
  pthread_mutex_t *v3; // r4

  v3 = this + 253;
  vox::Mutex::Lock(this + 253);
  if ( a2 == 2 )
    *a3 = *((_DWORD *)this + 268);
  return vox::Mutex::Unlock(v3);
}


// ===== 865d60 vox::VoxEngineInternal::Get3DGeneralParameterf(int,float &) =====
int __fastcall vox::VoxEngineInternal::Get3DGeneralParameterf(pthread_mutex_t *this, int a2, float *a3)
{
  pthread_mutex_t *v3; // r4

  v3 = this + 253;
  vox::Mutex::Lock(this + 253);
  if ( a2 )
  {
    if ( a2 == 1 )
      *a3 = *((float *)this + 267);
  }
  else
  {
    *a3 = *((float *)this + 266);
  }
  return vox::Mutex::Unlock(v3);
}


// ===== 865da8 vox::VoxEngineInternal::Get3DGeneralParameter(vox::Vox3DGeneralParameters &) =====
int __fastcall vox::VoxEngineInternal::Get3DGeneralParameter(pthread_mutex_t *a1, volatile int *a2)
{
  pthread_mutex_t *v2; // r5

  v2 = a1 + 253;
  vox::Mutex::Lock(a1 + 253);
  *(pthread_mutex_t *)a2 = a1[266];
  *((pthread_mutex_t *)a2 + 1) = a1[267];
  *((pthread_mutex_t *)a2 + 2) = a1[268];
  return vox::Mutex::Unlock(v2);
}


// ===== 865de8 vox::VoxEngineInternal::Get3DListenerOrientation(float &,float &,float &,float &,float &,float &) =====
int __fastcall vox::VoxEngineInternal::Get3DListenerOrientation(
        pthread_mutex_t *this,
        float *a2,
        float *a3,
        float *a4,
        float *a5,
        float *a6,
        float *a7)
{
  pthread_mutex_t *v7; // r5

  v7 = this + 253;
  vox::Mutex::Lock(this + 253);
  *a2 = *((float *)this + 260);
  *a3 = *((float *)this + 261);
  *a4 = *((float *)this + 262);
  *a5 = *((float *)this + 263);
  *a6 = *((float *)this + 264);
  *a7 = *((float *)this + 265);
  return vox::Mutex::Unlock(v7);
}


// ===== 865e58 vox::VoxEngineInternal::Get3DListenerVelocity(float &,float &,float &) =====
int __fastcall vox::VoxEngineInternal::Get3DListenerVelocity(pthread_mutex_t *this, float *a2, float *a3, float *a4)
{
  pthread_mutex_t *v4; // r5

  v4 = this + 253;
  vox::Mutex::Lock(this + 253);
  *a2 = *((float *)this + 257);
  *a3 = *((float *)this + 258);
  *a4 = *((float *)this + 259);
  return vox::Mutex::Unlock(v4);
}


// ===== 865e9c vox::VoxEngineInternal::Get3DListenerPosition(float &,float &,float &) =====
int __fastcall vox::VoxEngineInternal::Get3DListenerPosition(pthread_mutex_t *this, float *a2, float *a3, float *a4)
{
  pthread_mutex_t *v4; // r5

  v4 = this + 253;
  vox::Mutex::Lock(this + 253);
  *a2 = *((float *)this + 254);
  *a3 = *((float *)this + 255);
  *a4 = *((float *)this + 256);
  return vox::Mutex::Unlock(v4);
}


// ===== 865ee0 vox::VoxEngineInternal::Set3DGeneralParameteri(int,int) =====
int __fastcall vox::VoxEngineInternal::Set3DGeneralParameteri(pthread_mutex_t *this, int a2, int a3)
{
  pthread_mutex_t *v3; // r5

  v3 = this + 253;
  vox::Mutex::Lock(this + 253);
  if ( a2 == 2 )
  {
    *((_BYTE *)this + 1078) = 1;
    *((_DWORD *)this + 268) = a3;
  }
  return vox::Mutex::Unlock(v3);
}


// ===== 865f18 vox::VoxEngineInternal::Set3DGeneralParameterf(int,float) =====
int __fastcall vox::VoxEngineInternal::Set3DGeneralParameterf(pthread_mutex_t *this, int a2, float a3)
{
  pthread_mutex_t *v3; // r5

  v3 = this + 253;
  vox::Mutex::Lock(this + 253);
  if ( a2 )
  {
    if ( a2 == 1 )
    {
      *((_BYTE *)this + 1077) = 1;
      *((float *)this + 267) = a3;
    }
  }
  else
  {
    *((_BYTE *)this + 1076) = 1;
    *((float *)this + 266) = a3;
  }
  return vox::Mutex::Unlock(v3);
}


// ===== 865f68 vox::VoxEngineInternal::Set3DGeneralParameter(vox::Vox3DGeneralParameters const&) =====
int __fastcall vox::VoxEngineInternal::Set3DGeneralParameter(int a1, _DWORD *a2)
{
  pthread_mutex_t *v2; // r5
  int v5; // r2

  v2 = (pthread_mutex_t *)(a1 + 1012);
  vox::Mutex::Lock((pthread_mutex_t *)(a1 + 1012));
  *(_DWORD *)(a1 + 1064) = *a2;
  *(_DWORD *)(a1 + 1068) = a2[1];
  v5 = a2[2];
  *(_BYTE *)(a1 + 1078) = 1;
  *(_BYTE *)(a1 + 1076) = 1;
  *(_DWORD *)(a1 + 1072) = v5;
  *(_BYTE *)(a1 + 1077) = 1;
  return vox::Mutex::Unlock(v2);
}


// ===== 865fb8 vox::VoxEngineInternal::Set3DListenerOrientation(float,float,float,float,float,float) =====
int __fastcall vox::VoxEngineInternal::Set3DListenerOrientation(
        pthread_mutex_t *this,
        float a2,
        float a3,
        float a4,
        float a5,
        float a6,
        float a7)
{
  pthread_mutex_t *v7; // r5

  v7 = this + 253;
  vox::Mutex::Lock(this + 253);
  *((_BYTE *)this + 1081) = 1;
  *((float *)this + 260) = a2;
  *((float *)this + 261) = a3;
  *((float *)this + 262) = a4;
  *((float *)this + 263) = a5;
  *((float *)this + 264) = a6;
  *((float *)this + 265) = a7;
  return vox::Mutex::Unlock(v7);
}


// ===== 866018 vox::VoxEngineInternal::Set3DListenerVelocity(float,float,float) =====
int __fastcall vox::VoxEngineInternal::Set3DListenerVelocity(pthread_mutex_t *this, float a2, float a3, float a4)
{
  pthread_mutex_t *v4; // r5

  v4 = this + 253;
  vox::Mutex::Lock(this + 253);
  *((_BYTE *)this + 1080) = 1;
  *((float *)this + 257) = a2;
  *((float *)this + 258) = a3;
  *((float *)this + 259) = a4;
  return vox::Mutex::Unlock(v4);
}


// ===== 866058 vox::VoxEngineInternal::Set3DListenerPosition(float,float,float) =====
int __fastcall vox::VoxEngineInternal::Set3DListenerPosition(pthread_mutex_t *this, float a2, float a3, float a4)
{
  pthread_mutex_t *v4; // r5

  v4 = this + 253;
  vox::Mutex::Lock(this + 253);
  *((_BYTE *)this + 1079) = 1;
  *((float *)this + 254) = a2;
  *((float *)this + 255) = a3;
  *((float *)this + 256) = a4;
  return vox::Mutex::Unlock(v4);
}


// ===== 866098 vox::VoxEngineInternal::GetGroupGain(int) =====
pthread_mutex_t *__fastcall vox::VoxEngineInternal::GetGroupGain(pthread_mutex_t *this, unsigned int a2)
{
  pthread_mutex_t *v2; // r4
  pthread_mutex_t *value; // r5

  v2 = this + 253;
  vox::Mutex::Lock(this + 253);
  if ( a2 > 0x1F )
    value = nullptr;
  else
    value = this + 5 * a2;
  if ( a2 <= 0x1F )
    value = (pthread_mutex_t *)value[62].value;
  vox::Mutex::Unlock(v2);
  return value;
}


// ===== 8660d4 vox::VoxEngineInternal::GetMasterGain(void) =====
int __fastcall vox::VoxEngineInternal::GetMasterGain(pthread_mutex_t *this)
{
  pthread_mutex_t *v1; // r4
  int v3; // r5

  v1 = this + 253;
  vox::Mutex::Lock(this + 253);
  v3 = *((_DWORD *)this + 57);
  vox::Mutex::Unlock(v1);
  return v3;
}


// ===== 8660fc std::vector<vox::PriorityBankElement,vox::SAllocator<vox::PriorityBankElement,(vox::VoxMemHint)0>>::reserve(uint) =====
void __fastcall std::vector<vox::PriorityBankElement,vox::SAllocator<vox::PriorityBankElement,(vox::VoxMemHint)0>>::reserve(
        int *a1,
        unsigned int a2)
{
  int v3; // r2
  int v4; // r0
  int v5; // r3
  int v6; // r5
  void *v7; // r6
  char *v8; // r0
  unsigned int v9; // r3
  unsigned int v10; // [sp+4h] [bp-4h] BYREF

  v3 = *a1;
  v4 = a1[2];
  v10 = a2;
  if ( a2 > (v4 - v3) >> 3 )
  {
    if ( a2 > 0x1FFFFFFF )
    {
      __ZSt24__stl_throw_length_errorPKc_veneer_0("vector");
      v3 = *a1;
    }
    v5 = a1[1];
    v6 = (v5 - v3) >> 3;
    if ( v3 )
    {
      v7 = std::vector<vox::PriorityBankElement,vox::SAllocator<vox::PriorityBankElement,(vox::VoxMemHint)0>>::_M_allocate_and_copy<vox::PriorityBankElement*>(
             (int)a1,
             &v10,
             v3,
             v5);
      v8 = (char *)a1[1];
      if ( v8 != (char *)*a1 )
        v8 += 8 * ~((unsigned int)&v8[-*a1 - 8] >> 3);
      VoxFree(v8);
    }
    else
    {
      v7 = VoxAlloc(8 * v10, 0);
    }
    v9 = v10;
    a1[1] = (int)v7 + 8 * v6;
    a1[2] = (int)v7 + 8 * v9;
    *a1 = (int)v7;
  }
}


// ===== 8661bc vox::PriorityBankManager::SetPriorityBank(int,int,int,vox::PriorityBankBehavior) =====
int __fastcall vox::PriorityBankManager::SetPriorityBank(pthread_mutex_t *a1, int a2, int a3, unsigned int a4, int a5)
{
  pthread_mutex_t *v5; // r5
  bool v10; // cc
  int v12; // r6

  v5 = a1 + 4;
  vox::Mutex::Lock(a1 + 4);
  v10 = a2 <= 0;
  if ( a2 >= 0 )
    v10 = a1->value <= a2;
  if ( v10 )
  {
    vox::Mutex::Unlock(v5);
    return 0;
  }
  else
  {
    v12 = 24 * a2;
    *(_DWORD *)(a1[1].value + v12) = a3;
    *(_DWORD *)(a1[1].value + v12 + 4) = a4;
    *(_DWORD *)(a1[1].value + v12 + 8) = a5;
    std::vector<vox::PriorityBankElement,vox::SAllocator<vox::PriorityBankElement,(vox::VoxMemHint)0>>::reserve(
      (int *)(a1[1].value + v12 + 12),
      a4);
    vox::Mutex::Unlock(v5);
    return 1;
  }
}


// ===== 866258 vox::VoxEngineInternal::SetPriorityBank(int,int,int,vox::PriorityBankBehavior) =====
pthread_mutex_t *__fastcall vox::VoxEngineInternal::SetPriorityBank(int a1, int a2, int a3, unsigned int a4, int a5)
{
  pthread_mutex_t *result; // r0

  result = *(pthread_mutex_t **)(a1 + 220);
  if ( result )
    return (pthread_mutex_t *)vox::PriorityBankManager::SetPriorityBank(result, a2, a3, a4, a5);
  return result;
}


// ===== 866270 std::vector<vox::PriorityBank,vox::SAllocator<vox::PriorityBank,(vox::VoxMemHint)0>>::reserve(uint) =====
void __fastcall std::vector<vox::PriorityBank,vox::SAllocator<vox::PriorityBank,(vox::VoxMemHint)0>>::reserve(
        vox::PriorityBank **a1,
        unsigned int a2)
{
  vox::PriorityBank *v3; // r2
  int v4; // r0
  int v5; // r3
  int v6; // r5
  vox::PriorityBank *v7; // r0
  vox::PriorityBank *v8; // r6
  vox::PriorityBank *v9; // r7
  vox::PriorityBank *v10; // r8
  vox::PriorityBank *v11; // r3
  unsigned int v12; // [sp+4h] [bp-4h] BYREF

  v3 = *a1;
  v4 = (a1[2] - *a1) >> 3;
  v12 = a2;
  if ( a2 > -1431655765 * v4 )
  {
    if ( a2 > 0xAAAAAAA )
    {
      __ZSt24__stl_throw_length_errorPKc_veneer_0("vector");
      v3 = *a1;
    }
    v5 = (int)a1[1];
    v6 = -1431655765 * ((v5 - (int)v3) >> 3);
    if ( v3 )
    {
      v7 = (vox::PriorityBank *)std::vector<vox::PriorityBank,vox::SAllocator<vox::PriorityBank,(vox::VoxMemHint)0>>::_M_allocate_and_copy<vox::PriorityBank*>(
                                  (int)a1,
                                  &v12,
                                  v3,
                                  v5);
      v8 = a1[1];
      v9 = *a1;
      v10 = v7;
      if ( v8 != *a1 )
      {
        do
        {
          v8 = (vox::PriorityBank *)((char *)v8 - 24);
          vox::PriorityBank::~PriorityBank(v8);
        }
        while ( v9 != v8 );
        v8 = *a1;
      }
      VoxFree(v8);
    }
    else
    {
      v10 = (vox::PriorityBank *)VoxAlloc(24 * v12, 0);
    }
    v11 = (vox::PriorityBank *)((char *)v10 + 24 * v12);
    a1[1] = (vox::PriorityBank *)((char *)v10 + 24 * v6);
    a1[2] = v11;
    *a1 = v10;
  }
}


// ===== 866380 vox::EmitterObj::EmitterObj(long long,int,int,vox::DriverSourceInterface *,vox::DataObj *) =====
vox::EmitterObj *__fastcall vox::EmitterObj::EmitterObj(
        vox::EmitterObj *this,
        __int64 a2,
        int a3,
        int a4,
        vox::DriverSourceInterface *a5,
        vox::DataObj *a6)
{
  int v8; // r3
  vox::EmitterObj *v9; // r2
  _DWORD *v10; // r3
  int v11; // r2
  int v12; // r1
  int v13; // r3
  int v14; // r3

  *((_QWORD *)this + 1) = a2;
  *(_DWORD *)this = off_9934D8;
  *((_DWORD *)this + 4) = 0;
  vox::Mutex::Mutex((vox::EmitterObj *)((char *)this + 24));
  *(_DWORD *)this = off_9934C0;
  *((_DWORD *)this + 11) = a3;
  *((_BYTE *)this + 28) = 1;
  *((_DWORD *)this + 12) = a4;
  *((_DWORD *)this + 8) = 1;
  *((_DWORD *)this + 18) = 0;
  *((_DWORD *)this + 20) = 0;
  *((_DWORD *)this + 21) = 0;
  *((_BYTE *)this + 88) = 1;
  *((_DWORD *)this + 23) = 0;
  *((_DWORD *)this + 25) = 0;
  *((_DWORD *)this + 26) = 0;
  *((_BYTE *)this + 108) = 1;
  *((_DWORD *)this + 30) = 0;
  *((_DWORD *)this + 32) = 0;
  *((_DWORD *)this + 33) = 0;
  *((_BYTE *)this + 136) = 1;
  *((_DWORD *)this + 10) = 0;
  *((_BYTE *)this + 52) = 0;
  *((_DWORD *)this + 14) = 1065353216;
  *((_DWORD *)this + 15) = 1065353216;
  *((_DWORD *)this + 16) = 1065353216;
  *((_DWORD *)this + 17) = 1065353216;
  *((_DWORD *)this + 19) = 1065353216;
  *((_DWORD *)this + 24) = 1065353216;
  *((_DWORD *)this + 28) = 1065353216;
  *((_DWORD *)this + 29) = 1065353216;
  *((_DWORD *)this + 31) = 1065353216;
  *((_BYTE *)this + 140) = 0;
  *((_BYTE *)this + 141) = 0;
  *((_DWORD *)this + 36) = 0;
  *((_DWORD *)this + 37) = 0;
  *((_BYTE *)this + 152) = 0;
  *((_DWORD *)this + 50) = 1120403456;
  *((_DWORD *)this + 53) = 1135869952;
  *((_DWORD *)this + 55) = 2139095039;
  v8 = 0;
  *((_DWORD *)this + 68) = a5;
  *((_DWORD *)this + 39) = 0;
  *((_DWORD *)this + 40) = 0;
  *((_DWORD *)this + 41) = 0;
  *((_DWORD *)this + 42) = 0;
  *((_DWORD *)this + 43) = 0;
  *((_DWORD *)this + 44) = 0;
  *((_DWORD *)this + 45) = 0;
  *((_DWORD *)this + 46) = 0;
  *((_DWORD *)this + 47) = 0;
  *((_DWORD *)this + 54) = 0;
  *((_DWORD *)this + 70) = a6;
  *((_DWORD *)this + 73) = 1065353216;
  *((_BYTE *)this + 153) = 0;
  *((_DWORD *)this + 48) = 0;
  *((_DWORD *)this + 49) = 2139095039;
  *((_DWORD *)this + 51) = 1065353216;
  *((_DWORD *)this + 52) = 1135869952;
  *((_DWORD *)this + 59) = 0;
  *((_DWORD *)this + 60) = 0;
  *((_DWORD *)this + 61) = 0;
  *((_DWORD *)this + 62) = 0;
  *((_DWORD *)this + 63) = 0;
  *((_DWORD *)this + 66) = 0;
  *((_DWORD *)this + 67) = 0;
  *((_DWORD *)this + 69) = 0;
  *((_BYTE *)this + 284) = 0;
  *((_DWORD *)this + 72) = 0;
  *((_DWORD *)this + 74) = 0;
  *((_DWORD *)this + 75) = 0;
  *((_BYTE *)this + 304) = 1;
  *((_DWORD *)this + 77) = -1;
  *((_BYTE *)this + 285) = 0;
  *((_DWORD *)this + 78) = 0;
  *((_DWORD *)this + 79) = 0;
  v9 = this;
  do
  {
    ++v8;
    *((_BYTE *)v9 + 224) = 0;
    v9 = (vox::EmitterObj *)((char *)v9 + 1);
  }
  while ( v8 != 11 );
  v10 = *((_DWORD **)this + 70);
  *((_DWORD *)this + 65) = 0;
  *((_DWORD *)this + 64) = 0;
  if ( v10 )
  {
    v11 = v10[10] * ((int)v10[12] >> 3);
    v12 = v10[11];
    *((_DWORD *)this + 9) = v10[13] * v11;
    *((_DWORD *)this + 8) = v12 * v11;
  }
  vox::EmitterObj::SetDefaultParameters((pthread_mutex_t *)this);
  v13 = *((_DWORD *)this + 70);
  if ( *(_DWORD *)(v13 + 80) )
    v14 = 0;
  else
    v14 = *(_DWORD *)(v13 + 60);
  *((_DWORD *)this + 80) = (*(int (__fastcall **)(int))(*(_DWORD *)v14 + 24))(v14);
  *((_BYTE *)this + 325) = 1;
  *((_BYTE *)this + 326) = 0;
  *((_BYTE *)this + 324) = 0;
  return this;
}


// ===== 8665cc vox::EmitterObj::EmitterObj(long long,int,int,vox::DriverSourceInterface *,vox::DataObj *) =====
vox::EmitterObj *__fastcall vox::EmitterObj::EmitterObj(
        vox::EmitterObj *this,
        __int64 a2,
        int a3,
        int a4,
        vox::DriverSourceInterface *a5,
        vox::DataObj *a6)
{
  int v8; // r3
  vox::EmitterObj *v9; // r2
  _DWORD *v10; // r3
  int v11; // r2
  int v12; // r1
  int v13; // r3
  int v14; // r3

  *((_QWORD *)this + 1) = a2;
  *(_DWORD *)this = off_9934D8;
  *((_DWORD *)this + 4) = 0;
  vox::Mutex::Mutex((vox::EmitterObj *)((char *)this + 24));
  *(_DWORD *)this = off_9934C0;
  *((_DWORD *)this + 11) = a3;
  *((_BYTE *)this + 28) = 1;
  *((_DWORD *)this + 12) = a4;
  *((_DWORD *)this + 8) = 1;
  *((_DWORD *)this + 18) = 0;
  *((_DWORD *)this + 20) = 0;
  *((_DWORD *)this + 21) = 0;
  *((_BYTE *)this + 88) = 1;
  *((_DWORD *)this + 23) = 0;
  *((_DWORD *)this + 25) = 0;
  *((_DWORD *)this + 26) = 0;
  *((_BYTE *)this + 108) = 1;
  *((_DWORD *)this + 30) = 0;
  *((_DWORD *)this + 32) = 0;
  *((_DWORD *)this + 33) = 0;
  *((_BYTE *)this + 136) = 1;
  *((_DWORD *)this + 10) = 0;
  *((_BYTE *)this + 52) = 0;
  *((_DWORD *)this + 14) = 1065353216;
  *((_DWORD *)this + 15) = 1065353216;
  *((_DWORD *)this + 16) = 1065353216;
  *((_DWORD *)this + 17) = 1065353216;
  *((_DWORD *)this + 19) = 1065353216;
  *((_DWORD *)this + 24) = 1065353216;
  *((_DWORD *)this + 28) = 1065353216;
  *((_DWORD *)this + 29) = 1065353216;
  *((_DWORD *)this + 31) = 1065353216;
  *((_BYTE *)this + 140) = 0;
  *((_BYTE *)this + 141) = 0;
  *((_DWORD *)this + 36) = 0;
  *((_DWORD *)this + 37) = 0;
  *((_BYTE *)this + 152) = 0;
  *((_DWORD *)this + 50) = 1120403456;
  *((_DWORD *)this + 53) = 1135869952;
  *((_DWORD *)this + 55) = 2139095039;
  v8 = 0;
  *((_DWORD *)this + 68) = a5;
  *((_DWORD *)this + 39) = 0;
  *((_DWORD *)this + 40) = 0;
  *((_DWORD *)this + 41) = 0;
  *((_DWORD *)this + 42) = 0;
  *((_DWORD *)this + 43) = 0;
  *((_DWORD *)this + 44) = 0;
  *((_DWORD *)this + 45) = 0;
  *((_DWORD *)this + 46) = 0;
  *((_DWORD *)this + 47) = 0;
  *((_DWORD *)this + 54) = 0;
  *((_DWORD *)this + 70) = a6;
  *((_DWORD *)this + 73) = 1065353216;
  *((_BYTE *)this + 153) = 0;
  *((_DWORD *)this + 48) = 0;
  *((_DWORD *)this + 49) = 2139095039;
  *((_DWORD *)this + 51) = 1065353216;
  *((_DWORD *)this + 52) = 1135869952;
  *((_DWORD *)this + 59) = 0;
  *((_DWORD *)this + 60) = 0;
  *((_DWORD *)this + 61) = 0;
  *((_DWORD *)this + 62) = 0;
  *((_DWORD *)this + 63) = 0;
  *((_DWORD *)this + 66) = 0;
  *((_DWORD *)this + 67) = 0;
  *((_DWORD *)this + 69) = 0;
  *((_BYTE *)this + 284) = 0;
  *((_DWORD *)this + 72) = 0;
  *((_DWORD *)this + 74) = 0;
  *((_DWORD *)this + 75) = 0;
  *((_BYTE *)this + 304) = 1;
  *((_DWORD *)this + 77) = -1;
  *((_BYTE *)this + 285) = 0;
  *((_DWORD *)this + 78) = 0;
  *((_DWORD *)this + 79) = 0;
  v9 = this;
  do
  {
    ++v8;
    *((_BYTE *)v9 + 224) = 0;
    v9 = (vox::EmitterObj *)((char *)v9 + 1);
  }
  while ( v8 != 11 );
  v10 = *((_DWORD **)this + 70);
  *((_DWORD *)this + 65) = 0;
  *((_DWORD *)this + 64) = 0;
  if ( v10 )
  {
    v11 = v10[10] * ((int)v10[12] >> 3);
    v12 = v10[11];
    *((_DWORD *)this + 9) = v10[13] * v11;
    *((_DWORD *)this + 8) = v12 * v11;
  }
  vox::EmitterObj::SetDefaultParameters((pthread_mutex_t *)this);
  v13 = *((_DWORD *)this + 70);
  if ( *(_DWORD *)(v13 + 80) )
    v14 = 0;
  else
    v14 = *(_DWORD *)(v13 + 60);
  *((_DWORD *)this + 80) = (*(int (__fastcall **)(int))(*(_DWORD *)v14 + 24))(v14);
  *((_BYTE *)this + 325) = 1;
  *((_BYTE *)this + 326) = 0;
  *((_BYTE *)this + 324) = 0;
  return this;
}


// ===== 866818 vox::EmitterObj::GetDebugInfo(vox::DebugChunk_emitter &) =====
int __fastcall vox::EmitterObj::GetDebugInfo(int a1, int a2)
{
  pthread_mutex_t *v2; // r6
  int v5; // r1
  int v6; // r2
  int v7; // r3
  int v8; // r1
  int v9; // r2
  int v10; // r3

  v2 = (pthread_mutex_t *)(a1 + 24);
  vox::Mutex::Lock((pthread_mutex_t *)(a1 + 24));
  *(_QWORD *)a2 = *(_QWORD *)(a1 + 8);
  *(_QWORD *)(a2 + 8) = *(_QWORD *)(*(_DWORD *)(a1 + 280) + 8);
  *(_DWORD *)(a2 + 32) = *(_DWORD *)(a1 + 56);
  *(float *)(a2 + 36) = (float)(*(float *)(a1 + 68) * *(float *)(a1 + 96)) * *(float *)(a1 + 76);
  *(_DWORD *)(a2 + 40) = *(_DWORD *)(a1 + 112);
  *(_DWORD *)(a2 + 44) = *(_DWORD *)(a1 + 116);
  *(_DWORD *)(a2 + 28) = *(_DWORD *)(a1 + 148);
  *(_DWORD *)(a2 + 16) = *(_DWORD *)(a1 + 156);
  *(_DWORD *)(a2 + 20) = *(_DWORD *)(a1 + 160);
  *(_DWORD *)(a2 + 24) = *(_DWORD *)(a1 + 164);
  *(_DWORD *)(a2 + 60) = *(_DWORD *)(a1 + 180);
  *(_DWORD *)(a2 + 64) = *(_DWORD *)(a1 + 184);
  *(_DWORD *)(a2 + 68) = *(_DWORD *)(a1 + 188);
  *(_DWORD *)(a2 + 72) = *(_DWORD *)(a1 + 168);
  *(_DWORD *)(a2 + 76) = *(_DWORD *)(a1 + 172);
  *(_DWORD *)(a2 + 80) = *(_DWORD *)(a1 + 176);
  *(_DWORD *)(a2 + 48) = *(unsigned __int8 *)(a1 + 140);
  *(_DWORD *)(a2 + 56) = *(_DWORD *)(a1 + 40);
  *(_DWORD *)(a2 + 52) = *(_DWORD *)(a1 + 16);
  v5 = *(_DWORD *)(a1 + 196);
  v6 = *(_DWORD *)(a1 + 200);
  v7 = *(_DWORD *)(a1 + 204);
  *(_DWORD *)(a2 + 84) = *(_DWORD *)(a1 + 192);
  *(_DWORD *)(a2 + 88) = v5;
  *(_DWORD *)(a2 + 92) = v6;
  *(_DWORD *)(a2 + 96) = v7;
  v8 = *(_DWORD *)(a1 + 212);
  v9 = *(_DWORD *)(a1 + 216);
  v10 = *(_DWORD *)(a1 + 220);
  *(_DWORD *)(a2 + 100) = *(_DWORD *)(a1 + 208);
  *(_DWORD *)(a2 + 104) = v8;
  *(_DWORD *)(a2 + 108) = v9;
  *(_DWORD *)(a2 + 112) = v10;
  if ( *(int *)(*(_DWORD *)(a1 + 276) + 4) > 1 )
    *(_DWORD *)(a2 + 84) = -1;
  return vox::Mutex::Unlock(v2);
}


// ===== 866924 std::vector<uchar *,vox::SAllocator<uchar *,(vox::VoxMemHint)0>>::_M_allocate_and_copy<uchar **>(uint &,uchar **,uchar **) =====
void *__fastcall std::vector<unsigned char *,vox::SAllocator<unsigned char *,(vox::VoxMemHint)0>>::_M_allocate_and_copy<unsigned char **>(
        int a1,
        _DWORD *a2,
        _BYTE *a3,
        _BYTE *a4)
{
  void *v6; // r0
  void *v7; // r5

  v6 = VoxAlloc(4 * *a2, 0);
  v7 = v6;
  if ( a3 != a4 )
    memcpy(v6, a3, a4 - a3);
  return v7;
}


// ===== 866960 std::vector<uchar *,vox::SAllocator<uchar *,(vox::VoxMemHint)0>>::reserve(uint) =====
void __fastcall std::vector<unsigned char *,vox::SAllocator<unsigned char *,(vox::VoxMemHint)0>>::reserve(
        int a1,
        unsigned int a2)
{
  _BYTE *v3; // r2
  int v4; // r0
  _BYTE *v5; // r3
  int v6; // r5
  char *v7; // r6
  unsigned int v8; // r3
  unsigned int v9; // [sp+4h] [bp-4h] BYREF

  v3 = *(_BYTE **)a1;
  v4 = *(_DWORD *)(a1 + 8);
  v9 = a2;
  if ( a2 > (v4 - (int)v3) >> 2 )
  {
    if ( a2 > 0x3FFFFFFF )
    {
      __ZSt24__stl_throw_length_errorPKc_veneer_0("vector");
      v3 = *(_BYTE **)a1;
    }
    v5 = *(_BYTE **)(a1 + 4);
    v6 = (v5 - v3) >> 2;
    if ( v3 )
    {
      v7 = (char *)std::vector<unsigned char *,vox::SAllocator<unsigned char *,(vox::VoxMemHint)0>>::_M_allocate_and_copy<unsigned char **>(
                     a1,
                     &v9,
                     v3,
                     v5);
      VoxFree(*(void **)a1);
    }
    else
    {
      v7 = (char *)VoxAlloc(4 * v9, 0);
    }
    v8 = v9;
    *(_DWORD *)(a1 + 4) = &v7[4 * v6];
    *(_DWORD *)(a1 + 8) = &v7[4 * v8];
    *(_DWORD *)a1 = v7;
  }
}


// ===== 866a08 std::vector<uchar *,vox::SAllocator<uchar *,(vox::VoxMemHint)0>>::_M_allocate_and_copy<uchar * const*>(uint &,uchar * const*,uchar * const*) =====
void *__fastcall std::vector<unsigned char *,vox::SAllocator<unsigned char *,(vox::VoxMemHint)0>>::_M_allocate_and_copy<unsigned char * const*>(
        int a1,
        _DWORD *a2,
        _BYTE *a3,
        _BYTE *a4)
{
  void *v6; // r0
  void *v7; // r5

  v6 = VoxAlloc(4 * *a2, 0);
  v7 = v6;
  if ( a3 != a4 )
    memcpy(v6, a3, a4 - a3);
  return v7;
}


// ===== 866a44 std::vector<vox::EmitterObj *,vox::SAllocator<vox::EmitterObj *,(vox::VoxMemHint)0>>::_M_allocate_and_copy<vox::EmitterObj **>(uint &,vox::EmitterObj **,vox::EmitterObj **) =====
void *__fastcall std::vector<vox::EmitterObj *,vox::SAllocator<vox::EmitterObj *,(vox::VoxMemHint)0>>::_M_allocate_and_copy<vox::EmitterObj **>(
        int a1,
        _DWORD *a2,
        _BYTE *a3,
        _BYTE *a4)
{
  void *v6; // r0
  void *v7; // r5

  v6 = VoxAlloc(4 * *a2, 0);
  v7 = v6;
  if ( a3 != a4 )
    memcpy(v6, a3, a4 - a3);
  return v7;
}


// ===== 866a80 std::vector<vox::DataObj *,vox::SAllocator<vox::DataObj *,(vox::VoxMemHint)0>>::_M_allocate_and_copy<vox::DataObj **>(uint &,vox::DataObj **,vox::DataObj **) =====
void *__fastcall std::vector<vox::DataObj *,vox::SAllocator<vox::DataObj *,(vox::VoxMemHint)0>>::_M_allocate_and_copy<vox::DataObj **>(
        int a1,
        _DWORD *a2,
        _BYTE *a3,
        _BYTE *a4)
{
  void *v6; // r0
  void *v7; // r5

  v6 = VoxAlloc(4 * *a2, 0);
  v7 = v6;
  if ( a3 != a4 )
    memcpy(v6, a3, a4 - a3);
  return v7;
}


// ===== 866abc vox::EmitterObj::SetInteractiveMusicStateChange(char const*) =====
char *__fastcall vox::EmitterObj::SetInteractiveMusicStateChange(vox::EmitterObj *this, const char *a2)
{
  *((_BYTE *)this + 324) = 1;
  return LC_API_STRCPY_0((char *)this + 326, a2);
}


// ===== 866acc vox::EmitterObj::SetDSPParameter(int,void *) =====
int __fastcall vox::EmitterObj::SetDSPParameter(vox::EmitterObj *this, int a2, const char *a3)
{
  pthread_mutex_t *v3; // r4
  signed int v7; // r6
  char *v8; // r0

  v3 = (pthread_mutex_t *)((char *)this + 24);
  vox::Mutex::Lock((pthread_mutex_t *)this + 6);
  if ( !a2 )
  {
    v7 = LC_API_STRLEN_0(a3);
    if ( v7 > 0 )
    {
      VoxFree(*((void **)this + 60));
      v8 = (char *)VoxAlloc(v7 + 1);
      *((_DWORD *)this + 60) = v8;
      if ( v8 )
        LC_API_STRCPY_0(v8, a3);
    }
  }
  return vox::Mutex::Unlock(v3);
}


// ===== 866b30 vox::EmitterObj::ProcessNativeData(float) =====
int __fastcall vox::EmitterObj::ProcessNativeData(vox::EmitterObj *this, float a2)
{
  int result; // r0
  int v4; // r2
  int v5; // r3
  int v6; // r1
  int v7; // r2
  int v8; // r1
  int v9; // r1
  int v10; // r0
  int v11; // r3
  int v12; // r0
  int v13; // r2
  int v14; // r0
  int v15; // r1
  int v16; // r1
  int v17; // t0
  int v18; // [sp+0h] [bp-Ch] BYREF
  int v19; // [sp+4h] [bp-8h] BYREF

  if ( !*((_BYTE *)this + 324) )
  {
    result = (*(int (__fastcall **)(_DWORD, _DWORD))(**((_DWORD **)this + 68) + 36))(
               *((_DWORD *)this + 68),
               LODWORD(a2));
    if ( !result )
      return result;
LABEL_7:
    result = (*(int (__fastcall **)(_DWORD))(**((_DWORD **)this + 69) + 24))(*((_DWORD *)this + 69));
    if ( result )
    {
      v5 = *((_DWORD *)this + 61);
      v6 = *((_DWORD *)this + 64);
      v7 = *(_DWORD *)(v5 + 4 * v6);
      v8 = v5 + 4 * v6;
      if ( v7 )
      {
        result = (*(int (__fastcall **)(_DWORD, int, _DWORD))(**((_DWORD **)this + 69) + 20))(
                   *((_DWORD *)this + 69),
                   v8,
                   *((_DWORD *)this + 66));
        if ( result > 0 )
        {
          (*(void (__fastcall **)(_DWORD, _DWORD, int))(**((_DWORD **)this + 68) + 40))(
            *((_DWORD *)this + 68),
            *(_DWORD *)(*((_DWORD *)this + 61) + 4 * *((_DWORD *)this + 64)),
            result);
          v9 = *((_DWORD *)this + 65);
          v10 = *((_DWORD *)this + 64) + 1;
          *((_DWORD *)this + 64) = v10;
          *((_DWORD *)this + 64) = v10 % v9;
          return v10 / v9;
        }
      }
      else
      {
        *((_DWORD *)this + 37) = -1;
      }
    }
    return result;
  }
  v4 = *((unsigned __int8 *)this + 325);
  if ( *((_BYTE *)this + 325) )
  {
    (*(void (__fastcall **)(_DWORD, _DWORD))(**((_DWORD **)this + 69) + 28))(*((_DWORD *)this + 69), LODWORD(a2));
    vox::DecoderNativeCursor::SetInteractiveMusicState(
      *((vox::DecoderNativeCursor **)this + 69),
      (const char *)this + 326);
    (*(void (__fastcall **)(_DWORD))(**((_DWORD **)this + 68) + 20))(*((_DWORD *)this + 68));
    *((_DWORD *)this + 67) = 0;
    *((_DWORD *)this + 64) = 0;
    goto LABEL_6;
  }
  v11 = *((_DWORD *)this + 69);
  v18 = *((unsigned __int8 *)this + 325);
  v19 = v4;
  v12 = (*(int (__fastcall **)(int, _DWORD))(*(_DWORD *)v11 + 32))(v11, LODWORD(a2));
  (*(void (__fastcall **)(_DWORD, int, int *, int *))(**((_DWORD **)this + 68) + 76))(
    *((_DWORD *)this + 68),
    v12,
    &v18,
    &v19);
  if ( v19 <= 0 )
  {
LABEL_6:
    *((_BYTE *)this + 324) = 0;
    result = (*(int (__fastcall **)(_DWORD))(**((_DWORD **)this + 68) + 36))(*((_DWORD *)this + 68));
    if ( !result )
      return result;
    goto LABEL_7;
  }
  v13 = *((_DWORD *)this + 64);
  if ( v13 < v18 )
    v13 += *((_DWORD *)this + 65);
  *((_DWORD *)this + 64) = v13 - v18;
  result = (*(int (__fastcall **)(_DWORD))(**((_DWORD **)this + 69) + 36))(*((_DWORD *)this + 69));
  if ( *(_DWORD *)(*((_DWORD *)this + 61) + 4 * *((_DWORD *)this + 64)) )
  {
    result = (*(int (__fastcall **)(_DWORD))(**((_DWORD **)this + 68) + 36))(*((_DWORD *)this + 68));
    if ( result )
    {
      result = (*(int (__fastcall **)(_DWORD, _DWORD, _DWORD))(**((_DWORD **)this + 69) + 16))(
                 *((_DWORD *)this + 69),
                 *(_DWORD *)(*((_DWORD *)this + 61) + 4 * *((_DWORD *)this + 64)),
                 *((_DWORD *)this + 66));
      if ( result > 0 )
      {
        (*(void (__fastcall **)(_DWORD, _DWORD, int))(**((_DWORD **)this + 68) + 40))(
          *((_DWORD *)this + 68),
          *(_DWORD *)(*((_DWORD *)this + 61) + 4 * *((_DWORD *)this + 64)),
          result);
        v14 = *((_DWORD *)this + 64);
        *((_DWORD *)this + 67) = 0;
        *((_DWORD *)this + 64) = ++v14;
        v15 = *((_DWORD *)this + 65);
        v17 = v14 / v15;
        v16 = v14 % v15;
        result = v17;
        *((_DWORD *)this + 64) = v16;
      }
    }
  }
  *((_BYTE *)this + 324) = 0;
  return result;
}


// ===== 866da0 std::vector<uchar *,vox::SAllocator<uchar *,(vox::VoxMemHint)0>>::vector(uint) =====
_DWORD *__fastcall std::vector<unsigned char *,vox::SAllocator<unsigned char *,(vox::VoxMemHint)0>>::vector(
        _DWORD *a1,
        int a2)
{
  size_t v2; // r7
  char *v4; // r0
  char *v5; // r5

  v2 = 4 * a2;
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v4 = (char *)VoxAlloc(4 * a2, 0);
  v5 = &v4[v2];
  *a1 = v4;
  a1[1] = v4;
  a1[2] = &v4[v2];
  LC_API_MEMSET_0(v4, 0, v2);
  a1[1] = v5;
  return a1;
}


// ===== 866dec vox::DataObj::Update(void) =====
pthread_mutex_t *__fastcall vox::DataObj::Update(pthread_mutex_t *this)
{
  pthread_mutex_t *v1; // r4
  pthread_mutex_t *v2; // r5
  volatile int value; // r6
  int v4; // r0
  int v5; // r6
  _DWORD *v6; // r0
  volatile int v7; // r1
  volatile int v8; // r2
  volatile int v9; // r3
  volatile int v10; // r3
  int v11; // r0
  int v12; // r7
  _DWORD *v13; // r0
  _DWORD *v14; // r6
  volatile int v15; // r1
  volatile int v16; // r2
  volatile int v17; // r3
  int v18; // r3
  int v19; // r8
  void *v20; // r0
  void *v21; // r9
  int v22; // r11
  void *v23; // r6
  int (__fastcall ***v24)(_DWORD); // r0
  void *v25; // r6
  void (__fastcall ***v26)(volatile int); // r3
  volatile int v27; // r3
  signed int v28; // r0
  signed int v29; // r7
  void *v30; // r10
  int v31; // r0
  int v32; // r8
  int v33; // r9
  void *v34; // r6
  int (__fastcall ***v35)(_DWORD); // r0
  int v36; // r0
  int v37; // r6
  _DWORD *v38; // r0
  volatile int v39; // r3
  int v40; // r1
  volatile int v41; // r1
  volatile int v42; // r2
  volatile int v43; // r3
  void *v44; // [sp+4h] [bp-10h] BYREF
  int v45; // [sp+8h] [bp-Ch]
  char v46; // [sp+Ch] [bp-8h]
  char v47; // [sp+Dh] [bp-7h]

  v1 = this;
  if ( *((_DWORD *)this + 20) )
  {
    v2 = this + 6;
    vox::Mutex::Lock(this + 6);
    if ( v1[20].value != 3 )
      return (pthread_mutex_t *)vox::Mutex::Unlock(v2);
    value = v1[21].value;
    switch ( value )
    {
      case 1:
        v27 = v1[14].value;
        if ( !v27 )
          goto LABEL_11;
        if ( !v1[15].value )
          goto LABEL_11;
        v28 = (*(int (__fastcall **)(volatile int))(*(_DWORD *)v27 + 16))(v1[14].value);
        v29 = v28;
        if ( v28 <= 0 )
          goto LABEL_11;
        v30 = VoxAlloc(v28);
        if ( !v30 )
          goto LABEL_11;
        v31 = (*(int (__fastcall **)(volatile int))(*(_DWORD *)v1[14].value + 20))(v1[14].value);
        v32 = v31;
        if ( !v31 )
          goto LABEL_11;
        v33 = (*(int (__fastcall **)(int, void *, signed int))(*(_DWORD *)v31 + 28))(v31, v30, v29);
        (*(void (__fastcall **)(volatile int, int))(*(_DWORD *)v1[14].value + 24))(v1[14].value, v32);
        if ( v29 != v33 )
        {
          VoxFree(v30);
          v1[20].value = -1;
          return (pthread_mutex_t *)vox::Mutex::Unlock(v2);
        }
        v47 = 1;
        v46 = 0;
        v44 = v30;
        v45 = v29;
        v34 = VoxAlloc(0x10u, 0);
        vox::StreamMemoryBuffer::StreamMemoryBuffer(v34, &v44);
        if ( !v34 )
          goto LABEL_11;
        v35 = (int (__fastcall ***)(_DWORD))v1[14].value;
        if ( v35 )
        {
          Destruct<vox::StreamInterface>(v35);
          VoxFree((void *)v1[14].value);
        }
        v1[14].value = (volatile int)v34;
        v36 = (*(int (__fastcall **)(void *))(*(_DWORD *)v34 + 20))(v34);
        v37 = v36;
        if ( !v36 )
          goto LABEL_11;
        v38 = (_DWORD *)(*(int (__fastcall **)(volatile int, int))(*(_DWORD *)v1[15].value + 16))(v1[15].value, v36);
        if ( v38 )
        {
          v41 = v38[2];
          v42 = v38[3];
          v43 = v38[4];
          v1[10].value = v38[1];
          v1[11].value = v41;
          v1[12].value = v42;
          v1[13].value = v43;
          (*(void (__fastcall **)(volatile int, _DWORD *))(*(_DWORD *)v1[15].value + 20))(v1[15].value, v38);
          (*(void (__fastcall **)(volatile int, int))(*(_DWORD *)v1[14].value + 24))(v1[14].value, v37);
          v1[20].value = 0;
          return (pthread_mutex_t *)vox::Mutex::Unlock(v2);
        }
        v39 = v1[14].value;
        v40 = v37;
        break;
      case 0:
        v4 = (*(int (__fastcall **)(volatile int))(*(_DWORD *)v1[14].value + 20))(v1[14].value);
        v5 = v4;
        if ( v4 )
        {
          v6 = (_DWORD *)(*(int (__fastcall **)(volatile int, int))(*(_DWORD *)v1[15].value + 16))(v1[15].value, v4);
          if ( v6 )
          {
            v7 = v6[2];
            v8 = v6[3];
            v9 = v6[4];
            v1[10].value = v6[1];
            v1[11].value = v7;
            v1[12].value = v8;
            v1[13].value = v9;
            (*(void (__fastcall **)(volatile int, _DWORD *))(*(_DWORD *)v1[15].value + 20))(v1[15].value, v6);
          }
          (*(void (__fastcall **)(volatile int, int))(*(_DWORD *)v1[14].value + 24))(v1[14].value, v5);
        }
        if ( v1[10].value <= 0 )
          goto LABEL_11;
LABEL_13:
        v1[20].value = 0;
        return (pthread_mutex_t *)vox::Mutex::Unlock(v2);
      case 2:
        v10 = v1[14].value;
        if ( !v10
          || !v1[15].value
          || (v11 = (*(int (__fastcall **)(volatile int))(*(_DWORD *)v10 + 20))(v1[14].value), (v12 = v11) == 0) )
        {
LABEL_11:
          v1[20].value = -1;
          return (pthread_mutex_t *)vox::Mutex::Unlock(v2);
        }
        v13 = (_DWORD *)(*(int (__fastcall **)(volatile int, int))(*(_DWORD *)v1[15].value + 16))(v1[15].value, v11);
        v14 = v13;
        if ( v13 )
        {
          v15 = v13[2];
          v16 = v13[3];
          v17 = v13[4];
          v1[10].value = v13[1];
          v1[11].value = v15;
          v1[12].value = v16;
          v1[13].value = v17;
          v18 = v13[4] * ((int)v13[3] >> 3);
          v19 = v13[1] * v18;
          if ( v19 <= 0 || (v20 = VoxAlloc(v13[1] * v18), (v21 = v20) == nullptr) )
          {
            (*(void (__fastcall **)(volatile int, int))(*(_DWORD *)v1[14].value + 24))(v1[14].value, v12);
            (*(void (__fastcall **)(volatile int, _DWORD *))(*(_DWORD *)v1[15].value + 20))(v1[15].value, v14);
            v1[20].value = -1;
            return (pthread_mutex_t *)vox::Mutex::Unlock(v2);
          }
          v22 = (*(int (__fastcall **)(_DWORD *, void *, int))(*v14 + 16))(v14, v20, v19);
          (*(void (__fastcall **)(volatile int, int))(*(_DWORD *)v1[14].value + 24))(v1[14].value, v12);
          (*(void (__fastcall **)(volatile int, _DWORD *))(*(_DWORD *)v1[15].value + 20))(v1[15].value, v14);
          if ( v22 <= 0 )
          {
            VoxFree(v21);
            v1[20].value = -1;
            return (pthread_mutex_t *)vox::Mutex::Unlock(v2);
          }
          v47 = 1;
          v46 = 0;
          v44 = v21;
          v45 = v19;
          v23 = VoxAlloc(0x10u, 0);
          vox::StreamMemoryBuffer::StreamMemoryBuffer(v23, &v44);
          if ( v23 )
          {
            v24 = (int (__fastcall ***)(_DWORD))v1[14].value;
            if ( v24 )
            {
              Destruct<vox::StreamInterface>(v24);
              VoxFree((void *)v1[14].value);
            }
            v1[14].value = (volatile int)v23;
            v25 = VoxAlloc(0x14u, 0);
            vox::DecoderRaw::DecoderRaw(v25, &v1[10]);
            if ( v25 )
            {
              v26 = (void (__fastcall ***)(volatile int))v1[15].value;
              if ( v26 )
              {
                (**v26)(v1[15].value);
                VoxFree((void *)v1[15].value);
              }
              v1[20].value = 0;
              v1[15].value = (volatile int)v25;
              return (pthread_mutex_t *)vox::Mutex::Unlock(v2);
            }
          }
          goto LABEL_11;
        }
        v39 = v1[14].value;
        v40 = v12;
        break;
      default:
        goto LABEL_13;
    }
    (*(void (__fastcall **)(volatile int, int))(*(_DWORD *)v39 + 24))(v39, v40);
    goto LABEL_11;
  }
  return this;
}


// ===== 867260 vox::VoxEngineInternal::GetDebugInfo(vox::DebugInfo &) =====
int __fastcall vox::VoxEngineInternal::GetDebugInfo(_DWORD *a1, _DWORD *a2)
{
  vox::AccessController *v2; // r6
  _DWORD *v3; // r5
  vox::AccessController *v5; // r0
  vox::AccessController *v6; // r6
  int v7; // r3
  int v8; // r3
  int v9; // r2
  int v11; // r1
  int v12; // [sp+0h] [bp-8h] BYREF
  int v13; // [sp+4h] [bp-4h] BYREF

  v2 = (vox::AccessController *)(a1 + 21);
  v3 = a1;
  vox::AccessController::GetReadAccess((vox::AccessController *)(a1 + 21));
  v5 = v2;
  v6 = (vox::AccessController *)(v3 + 49);
  *a2 = v3[6];
  vox::AccessController::ReleaseReadAccess(v5);
  vox::AccessController::GetReadAccess((vox::AccessController *)(v3 + 49));
  v7 = v3[34];
  v3 += 30;
  a2[1] = v7;
  vox::HandlableContainer::begin(&v13, (int)v3);
  vox::HandlableContainer::end(&v12, (int)v3);
  a2[2] = 0;
  v8 = v13;
  while ( v12 != v8 )
  {
    if ( vox::EmitterObj::IsPlaying(*(pthread_mutex_t **)(v8 + 24)) )
      ++a2[2];
    v8 = v13;
    v9 = *(_DWORD *)(v13 + 12);
    if ( v9 )
    {
      while ( *(_DWORD *)(v9 + 8) )
        v9 = *(_DWORD *)(v9 + 8);
      v8 = v9;
      v13 = v9;
    }
    else
    {
      v11 = *(_DWORD *)(v13 + 4);
      if ( v13 == *(_DWORD *)(v11 + 12) )
      {
        do
        {
          v8 = v11;
          v11 = *(_DWORD *)(v11 + 4);
        }
        while ( *(_DWORD *)(v11 + 12) == v8 );
        v9 = *(_DWORD *)(v8 + 12);
      }
      if ( v11 != v9 )
        v8 = v11;
      v13 = v8;
    }
  }
  a2[3] = -1;
  return vox::AccessController::ReleaseReadAccess(v6);
}


// ===== 867370 vox::VoxEngineInternal::PrintDebug(void) =====
int __fastcall vox::VoxEngineInternal::PrintDebug(pthread_mutex_t *this)
{
  pthread_mutex_t *v1; // r4
  int v3; // r3
  vox::AccessController *v4; // r5
  vox::AccessController *v5; // r6
  _DWORD *v6; // r3
  vox::HandlableContainer *v7; // r10
  vox::HandlableContainer *v8; // r0
  int v9; // r8
  int *i; // r7
  int *v11; // r8
  int *v12; // t1
  pthread_mutex_t *v13; // r0
  _DWORD *v14; // r2
  int v16; // r1
  _DWORD *v17; // [sp+0h] [bp-Ch] BYREF
  _DWORD *v18; // [sp+4h] [bp-8h] BYREF

  v1 = this + 253;
  vox::Mutex::Lock(this + 253);
  v3 = *((_DWORD *)this + 339);
  if ( v3 )
    (*(void (__fastcall **)(_DWORD))(*(_DWORD *)v3 + 64))(*((_DWORD *)this + 339));
  v4 = (vox::AccessController *)(this + 21);
  vox::Mutex::Unlock(v1);
  v5 = (vox::AccessController *)(this + 49);
  vox::AccessController::GetReadAccess((vox::AccessController *)(this + 21));
  vox::AccessController::GetReadAccess((vox::AccessController *)(this + 49));
  vox::HandlableContainer::begin(&v18, (int)(this + 2));
  vox::HandlableContainer::end(&v17, (int)(this + 2));
  v6 = v18;
  v7 = (vox::HandlableContainer *)(this + 30);
  while ( v6 != v17 )
  {
    vox::DataObj::PrintDebug((pthread_mutex_t *)v6[6]);
    vox::Mutex::Lock(v1);
    v8 = v7;
    v9 = v18[6];
    v12 = *(int **)(v9 + 64);
    v11 = (int *)(v9 + 64);
    for ( i = v12; v11 != i; v8 = v7 )
    {
      v13 = (pthread_mutex_t *)vox::HandlableContainer::Find(v8, *((_QWORD *)i + 1));
      if ( v13 )
        vox::EmitterObj::PrintDebug(v13);
      i = (int *)*i;
    }
    vox::Mutex::Unlock(v1);
    v6 = v18;
    v14 = (_DWORD *)v18[3];
    if ( v14 )
    {
      while ( v14[2] )
        v14 = (_DWORD *)v14[2];
      v6 = v14;
      v18 = v14;
    }
    else
    {
      v16 = v18[1];
      if ( v18 == *(_DWORD **)(v16 + 12) )
      {
        do
        {
          v6 = (_DWORD *)v16;
          v16 = *(_DWORD *)(v16 + 4);
        }
        while ( *(_DWORD **)(v16 + 12) == v6 );
        v14 = (_DWORD *)v6[3];
      }
      if ( (_DWORD *)v16 != v14 )
        v6 = (_DWORD *)v16;
      v18 = v6;
    }
  }
  vox::AccessController::ReleaseReadAccess(v5);
  return vox::AccessController::ReleaseReadAccess(v4);
}


// ===== 8674cc vox::VoxEngineInternal::GetEmitterObject(vox::EmitterHandle &) =====
int __fastcall vox::VoxEngineInternal::GetEmitterObject(int a1, int *a2)
{
  __int64 v4; // r0
  int v5; // r7
  int v6; // r3
  int v7; // r1
  __int64 v9; // r0
  int v10; // [sp+0h] [bp-Ch] BYREF
  int v11; // [sp+4h] [bp-8h] BYREF

  (*(void (__fastcall **)(int *, int *, int *))(*a2 + 16))(a2, &v11, &v10);
  if ( *(_DWORD *)(a1 + 4 * (v10 + 340)) != v11 || (v5 = (*(int (__fastcall **)(int *))(*a2 + 12))(a2)) == 0 )
  {
    v4 = ((__int64 (__fastcall *)(int *))*(_DWORD *)(*a2 + 8))(a2);
    v5 = vox::HandlableContainer::Find((vox::HandlableContainer *)(a1 + 120), v4);
    if ( v5
      || (vox::AccessController::GetReadAccess((vox::AccessController *)(a1 + 208)),
          v9 = ((__int64 (__fastcall *)(int *))*(_DWORD *)(*a2 + 8))(a2),
          v5 = vox::HandlableContainer::Find((vox::HandlableContainer *)(a1 + 152), v9),
          vox::AccessController::ReleaseReadAccess((vox::AccessController *)(a1 + 208)),
          v5) )
    {
      v6 = *a2;
      v7 = *(_DWORD *)(a1 + 4 * (*(_DWORD *)(v5 + 20) + 340));
      v10 = *(_DWORD *)(v5 + 20);
      (*(void (__fastcall **)(int *, int))(v6 + 20))(a2, v7);
    }
  }
  return v5;
}


// ===== 8675c0 vox::VoxEngineInternal::GetUserData(vox::EmitterHandle &) =====
int __fastcall vox::VoxEngineInternal::GetUserData(int a1, int *a2)
{
  vox::AccessController *v2; // r4
  pthread_mutex_t *EmitterObject; // r0
  int UserData; // r5

  v2 = (vox::AccessController *)(a1 + 196);
  vox::AccessController::GetReadAccess((vox::AccessController *)(a1 + 196));
  EmitterObject = (pthread_mutex_t *)vox::VoxEngineInternal::GetEmitterObject(a1, a2);
  if ( EmitterObject )
    UserData = vox::EmitterObj::GetUserData(EmitterObject);
  else
    UserData = -1;
  vox::AccessController::ReleaseReadAccess(v2);
  return UserData;
}


// ===== 867608 vox::VoxEngineInternal::SetUserData(vox::EmitterHandle &,vox::EmitterHandleUserData &) =====
int __fastcall vox::VoxEngineInternal::SetUserData(int a1, int *a2, volatile int *a3)
{
  vox::AccessController *v3; // r4
  pthread_mutex_t *EmitterObject; // r0

  v3 = (vox::AccessController *)(a1 + 196);
  vox::AccessController::GetReadAccess((vox::AccessController *)(a1 + 196));
  EmitterObject = (pthread_mutex_t *)vox::VoxEngineInternal::GetEmitterObject(a1, a2);
  if ( EmitterObject )
    vox::EmitterObj::SetUserData(EmitterObject, a3);
  return vox::AccessController::ReleaseReadAccess(v3);
}


// ===== 86764c vox::VoxEngineInternal::SetInteractiveMusicState(vox::EmitterHandle &,char const*) =====
int __fastcall vox::VoxEngineInternal::SetInteractiveMusicState(
        vox::VoxEngineInternal *this,
        vox::EmitterHandle *a2,
        const char *a3)
{
  vox::AccessController *v3; // r4
  int EmitterObject; // r0
  vox::EmitterObj *v8; // r5
  int v9; // r3
  int v10; // r3
  vox::DecoderNativeCursor *v12; // r0

  v3 = (vox::VoxEngineInternal *)((char *)this + 196);
  vox::AccessController::GetReadAccess((vox::VoxEngineInternal *)((char *)this + 196));
  EmitterObject = vox::VoxEngineInternal::GetEmitterObject((int)this, (int *)a2);
  v8 = (vox::EmitterObj *)EmitterObject;
  if ( EmitterObject )
  {
    v9 = *(_DWORD *)(EmitterObject + 280);
    if ( *(_DWORD *)(v9 + 80) )
      v10 = 0;
    else
      v10 = *(_DWORD *)(v9 + 60);
    if ( (*(int (__fastcall **)(int))(*(_DWORD *)v10 + 24))(v10) == 4 )
    {
      v12 = *((vox::DecoderNativeCursor **)v8 + 69);
      if ( v12 )
      {
        vox::DecoderNativeCursor::SetInteractiveMusicState(v12, a3);
        vox::EmitterObj::SetInteractiveMusicStateChange(v8, a3);
      }
    }
  }
  return vox::AccessController::ReleaseReadAccess(v3);
}


// ===== 8676d8 vox::VoxEngineInternal::SetDSPEmitterParameter(vox::EmitterHandle &,int,void *) =====
int __fastcall vox::VoxEngineInternal::SetDSPEmitterParameter(int a1, int *a2, int a3, const char *a4)
{
  vox::AccessController *v4; // r4
  vox::EmitterObj *EmitterObject; // r0

  v4 = (vox::AccessController *)(a1 + 196);
  vox::AccessController::GetReadAccess((vox::AccessController *)(a1 + 196));
  EmitterObject = (vox::EmitterObj *)vox::VoxEngineInternal::GetEmitterObject(a1, a2);
  if ( EmitterObject )
    vox::EmitterObj::SetDSPParameter(EmitterObject, a3, a4);
  return vox::AccessController::ReleaseReadAccess(v4);
}


// ===== 867724 vox::VoxEngineInternal::Get3DEmitterParameteri(vox::EmitterHandle &,int,int &) =====
int __fastcall vox::VoxEngineInternal::Get3DEmitterParameteri(int a1, int *a2, int a3, int *a4)
{
  vox::AccessController *v4; // r4
  pthread_mutex_t *EmitterObject; // r0

  v4 = (vox::AccessController *)(a1 + 196);
  vox::AccessController::GetReadAccess((vox::AccessController *)(a1 + 196));
  EmitterObject = (pthread_mutex_t *)vox::VoxEngineInternal::GetEmitterObject(a1, a2);
  if ( EmitterObject )
    vox::EmitterObj::Get3DParameteri(EmitterObject, a3, a4);
  return vox::AccessController::ReleaseReadAccess(v4);
}


// ===== 867770 vox::VoxEngineInternal::Get3DEmitterParameterf(vox::EmitterHandle &,int,float &) =====
int __fastcall vox::VoxEngineInternal::Get3DEmitterParameterf(int a1, int *a2, int a3, float *a4)
{
  vox::AccessController *v4; // r4
  pthread_mutex_t *EmitterObject; // r0

  v4 = (vox::AccessController *)(a1 + 196);
  vox::AccessController::GetReadAccess((vox::AccessController *)(a1 + 196));
  EmitterObject = (pthread_mutex_t *)vox::VoxEngineInternal::GetEmitterObject(a1, a2);
  if ( EmitterObject )
    vox::EmitterObj::Get3DParameterf(EmitterObject, a3, a4);
  return vox::AccessController::ReleaseReadAccess(v4);
}


// ===== 8677bc vox::VoxEngineInternal::Get3DEmitterParameters(vox::EmitterHandle &,vox::Vox3DEmitterParameters &) =====
int __fastcall vox::VoxEngineInternal::Get3DEmitterParameters(int a1, int *a2, int a3)
{
  vox::AccessController *v3; // r6
  pthread_mutex_t *EmitterObject; // r0
  pthread_mutex_t *v8; // r5

  v3 = (vox::AccessController *)(a1 + 196);
  vox::AccessController::GetReadAccess((vox::AccessController *)(a1 + 196));
  EmitterObject = (pthread_mutex_t *)vox::VoxEngineInternal::GetEmitterObject(a1, a2);
  v8 = EmitterObject;
  if ( EmitterObject )
  {
    vox::EmitterObj::Get3DParameteri(EmitterObject, 0, (int *)a3);
    vox::EmitterObj::Get3DParameterf(v8, 1, (float *)(a3 + 4));
    vox::EmitterObj::Get3DParameterf(v8, 2, (float *)(a3 + 8));
    vox::EmitterObj::Get3DParameterf(v8, 3, (float *)(a3 + 12));
    vox::EmitterObj::Get3DParameterf(v8, 4, (float *)(a3 + 16));
    vox::EmitterObj::Get3DParameterf(v8, 5, (float *)(a3 + 20));
    vox::EmitterObj::Get3DParameterf(v8, 6, (float *)(a3 + 24));
    vox::EmitterObj::Get3DParameterf(v8, 7, (float *)(a3 + 28));
  }
  return vox::AccessController::ReleaseReadAccess(v3);
}


// ===== 867874 vox::VoxEngineInternal::Get3DEmitterDirection(vox::EmitterHandle &,float &,float &,float &) =====
int __fastcall vox::VoxEngineInternal::Get3DEmitterDirection(int a1, int *a2, float *a3, float *a4, float *a5)
{
  vox::AccessController *v5; // r4
  pthread_mutex_t *EmitterObject; // r0

  v5 = (vox::AccessController *)(a1 + 196);
  vox::AccessController::GetReadAccess((vox::AccessController *)(a1 + 196));
  EmitterObject = (pthread_mutex_t *)vox::VoxEngineInternal::GetEmitterObject(a1, a2);
  if ( EmitterObject )
    vox::EmitterObj::Get3DParameter3f(EmitterObject, 10, a3, a4, a5);
  return vox::AccessController::ReleaseReadAccess(v5);
}


// ===== 8678d4 vox::VoxEngineInternal::Get3DEmitterVelocity(vox::EmitterHandle &,float &,float &,float &) =====
int __fastcall vox::VoxEngineInternal::Get3DEmitterVelocity(int a1, int *a2, float *a3, float *a4, float *a5)
{
  vox::AccessController *v5; // r4
  pthread_mutex_t *EmitterObject; // r0

  v5 = (vox::AccessController *)(a1 + 196);
  vox::AccessController::GetReadAccess((vox::AccessController *)(a1 + 196));
  EmitterObject = (pthread_mutex_t *)vox::VoxEngineInternal::GetEmitterObject(a1, a2);
  if ( EmitterObject )
    vox::EmitterObj::Get3DParameter3f(EmitterObject, 9, a3, a4, a5);
  return vox::AccessController::ReleaseReadAccess(v5);
}


// ===== 867934 vox::VoxEngineInternal::Get3DEmitterPosition(vox::EmitterHandle &,float &,float &,float &) =====
int __fastcall vox::VoxEngineInternal::Get3DEmitterPosition(int a1, int *a2, float *a3, float *a4, float *a5)
{
  vox::AccessController *v5; // r4
  pthread_mutex_t *EmitterObject; // r0

  v5 = (vox::AccessController *)(a1 + 196);
  vox::AccessController::GetReadAccess((vox::AccessController *)(a1 + 196));
  EmitterObject = (pthread_mutex_t *)vox::VoxEngineInternal::GetEmitterObject(a1, a2);
  if ( EmitterObject )
    vox::EmitterObj::Get3DParameter3f(EmitterObject, 8, a3, a4, a5);
  return vox::AccessController::ReleaseReadAccess(v5);
}


// ===== 867994 vox::VoxEngineInternal::Set3DEmitterParameteri(vox::EmitterHandle &,int,int) =====
int __fastcall vox::VoxEngineInternal::Set3DEmitterParameteri(int a1, int *a2, int a3, int a4)
{
  vox::AccessController *v4; // r4
  pthread_mutex_t *EmitterObject; // r0

  v4 = (vox::AccessController *)(a1 + 196);
  vox::AccessController::GetReadAccess((vox::AccessController *)(a1 + 196));
  EmitterObject = (pthread_mutex_t *)vox::VoxEngineInternal::GetEmitterObject(a1, a2);
  if ( EmitterObject )
    vox::EmitterObj::Set3DParameteri(EmitterObject, a3, a4);
  return vox::AccessController::ReleaseReadAccess(v4);
}


// ===== 8679e0 vox::VoxEngineInternal::Set3DEmitterParameterf(vox::EmitterHandle &,int,float) =====
int __fastcall vox::VoxEngineInternal::Set3DEmitterParameterf(int a1, int *a2, int a3, float a4)
{
  vox::AccessController *v4; // r4
  pthread_mutex_t *EmitterObject; // r0

  v4 = (vox::AccessController *)(a1 + 196);
  vox::AccessController::GetReadAccess((vox::AccessController *)(a1 + 196));
  EmitterObject = (pthread_mutex_t *)vox::VoxEngineInternal::GetEmitterObject(a1, a2);
  if ( EmitterObject )
    vox::EmitterObj::Set3DParameterf(EmitterObject, a3, a4);
  return vox::AccessController::ReleaseReadAccess(v4);
}


// ===== 867a2c vox::VoxEngineInternal::Set3DEmitterParameters(vox::EmitterHandle &,vox::Vox3DEmitterParameters const&) =====
int __fastcall vox::VoxEngineInternal::Set3DEmitterParameters(int a1, int *a2, int a3)
{
  vox::AccessController *v3; // r6
  pthread_mutex_t *EmitterObject; // r0
  pthread_mutex_t *v8; // r5

  v3 = (vox::AccessController *)(a1 + 196);
  vox::AccessController::GetReadAccess((vox::AccessController *)(a1 + 196));
  EmitterObject = (pthread_mutex_t *)vox::VoxEngineInternal::GetEmitterObject(a1, a2);
  v8 = EmitterObject;
  if ( EmitterObject )
  {
    vox::EmitterObj::Set3DParameteri(EmitterObject, 0, *(_DWORD *)a3);
    vox::EmitterObj::Set3DParameterf(v8, 1, *(float *)(a3 + 4));
    vox::EmitterObj::Set3DParameterf(v8, 2, *(float *)(a3 + 8));
    vox::EmitterObj::Set3DParameterf(v8, 3, *(float *)(a3 + 12));
    vox::EmitterObj::Set3DParameterf(v8, 4, *(float *)(a3 + 16));
    vox::EmitterObj::Set3DParameterf(v8, 5, *(float *)(a3 + 20));
    vox::EmitterObj::Set3DParameterf(v8, 6, *(float *)(a3 + 24));
    vox::EmitterObj::Set3DParameterf(v8, 7, *(float *)(a3 + 28));
  }
  return vox::AccessController::ReleaseReadAccess(v3);
}


// ===== 867ae4 vox::VoxEngineInternal::Set3DEmitterDirection(vox::EmitterHandle &,float,float,float) =====
int __fastcall vox::VoxEngineInternal::Set3DEmitterDirection(int a1, int *a2, float a3, float a4, float a5)
{
  vox::AccessController *v5; // r4
  pthread_mutex_t *EmitterObject; // r0

  v5 = (vox::AccessController *)(a1 + 196);
  vox::AccessController::GetReadAccess((vox::AccessController *)(a1 + 196));
  EmitterObject = (pthread_mutex_t *)vox::VoxEngineInternal::GetEmitterObject(a1, a2);
  if ( EmitterObject )
    vox::EmitterObj::Set3DParameter3f(EmitterObject, 10, a3, a4, a5);
  return vox::AccessController::ReleaseReadAccess(v5);
}


// ===== 867b44 vox::VoxEngineInternal::Set3DEmitterVelocity(vox::EmitterHandle &,float,float,float) =====
int __fastcall vox::VoxEngineInternal::Set3DEmitterVelocity(int a1, int *a2, float a3, float a4, float a5)
{
  vox::AccessController *v5; // r4
  pthread_mutex_t *EmitterObject; // r0

  v5 = (vox::AccessController *)(a1 + 196);
  vox::AccessController::GetReadAccess((vox::AccessController *)(a1 + 196));
  EmitterObject = (pthread_mutex_t *)vox::VoxEngineInternal::GetEmitterObject(a1, a2);
  if ( EmitterObject )
    vox::EmitterObj::Set3DParameter3f(EmitterObject, 9, a3, a4, a5);
  return vox::AccessController::ReleaseReadAccess(v5);
}


// ===== 867ba4 vox::VoxEngineInternal::Set3DEmitterPosition(vox::EmitterHandle &,float,float,float) =====
int __fastcall vox::VoxEngineInternal::Set3DEmitterPosition(int a1, int *a2, float a3, float a4, float a5)
{
  vox::AccessController *v5; // r4
  pthread_mutex_t *EmitterObject; // r0

  v5 = (vox::AccessController *)(a1 + 196);
  vox::AccessController::GetReadAccess((vox::AccessController *)(a1 + 196));
  EmitterObject = (pthread_mutex_t *)vox::VoxEngineInternal::GetEmitterObject(a1, a2);
  if ( EmitterObject )
    vox::EmitterObj::Set3DParameter3f(EmitterObject, 8, a3, a4, a5);
  return vox::AccessController::ReleaseReadAccess(v5);
}


// ===== 867c04 vox::VoxEngineInternal::GetGroup(vox::EmitterHandle &) =====
int __fastcall vox::VoxEngineInternal::GetGroup(int a1, int *a2)
{
  vox::AccessController *v2; // r4
  pthread_mutex_t *EmitterObject; // r0
  int Group; // r5

  v2 = (vox::AccessController *)(a1 + 196);
  vox::AccessController::GetReadAccess((vox::AccessController *)(a1 + 196));
  EmitterObject = (pthread_mutex_t *)vox::VoxEngineInternal::GetEmitterObject(a1, a2);
  Group = (int)EmitterObject;
  if ( EmitterObject )
    Group = vox::EmitterObj::GetGroup(EmitterObject);
  vox::AccessController::ReleaseReadAccess(v2);
  return Group;
}


// ===== 867c48 vox::VoxEngineInternal::SetGroup(vox::EmitterHandle &,int) =====
int __fastcall vox::VoxEngineInternal::SetGroup(int a1, int *a2, unsigned int a3)
{
  vox::AccessController *v3; // r4
  vox::AccessController *v6; // r0
  int v7; // r7
  pthread_mutex_t *EmitterObject; // r0

  v3 = (vox::AccessController *)(a1 + 196);
  v6 = (vox::AccessController *)(a1 + 196);
  if ( a3 > 0x1F )
    v7 = 0;
  else
    v7 = a3;
  vox::AccessController::GetReadAccess(v6);
  EmitterObject = (pthread_mutex_t *)vox::VoxEngineInternal::GetEmitterObject(a1, a2);
  if ( EmitterObject )
    vox::EmitterObj::SetGroup(EmitterObject, v7);
  return vox::AccessController::ReleaseReadAccess(v3);
}


// ===== 867c94 vox::VoxEngineInternal::SetPlayCursor(vox::EmitterHandle &,float) =====
int __fastcall vox::VoxEngineInternal::SetPlayCursor(int a1, int *a2, float a3)
{
  vox::AccessController *v3; // r4
  pthread_mutex_t *EmitterObject; // r0

  v3 = (vox::AccessController *)(a1 + 196);
  vox::AccessController::GetReadAccess((vox::AccessController *)(a1 + 196));
  EmitterObject = (pthread_mutex_t *)vox::VoxEngineInternal::GetEmitterObject(a1, a2);
  if ( EmitterObject )
    vox::EmitterObj::SetPlayCursor(EmitterObject, a3);
  return vox::AccessController::ReleaseReadAccess(v3);
}


// ===== 867cd8 vox::VoxEngineInternal::GetPlayCursor(vox::EmitterHandle &) =====
int __fastcall vox::VoxEngineInternal::GetPlayCursor(int a1, int *a2)
{
  vox::AccessController *v2; // r4
  pthread_mutex_t *EmitterObject; // r0
  int PlayCursor; // r5

  v2 = (vox::AccessController *)(a1 + 196);
  vox::AccessController::GetReadAccess((vox::AccessController *)(a1 + 196));
  EmitterObject = (pthread_mutex_t *)vox::VoxEngineInternal::GetEmitterObject(a1, a2);
  if ( EmitterObject )
    PlayCursor = vox::EmitterObj::GetPlayCursor(EmitterObject);
  else
    PlayCursor = 0;
  vox::AccessController::ReleaseReadAccess(v2);
  return PlayCursor;
}


// ===== 867d20 vox::VoxEngineInternal::GetStatus(vox::EmitterHandle &) =====
int __fastcall vox::VoxEngineInternal::GetStatus(int a1, int *a2)
{
  vox::AccessController *v2; // r4
  pthread_mutex_t *EmitterObject; // r0
  int Status; // r5

  v2 = (vox::AccessController *)(a1 + 196);
  vox::AccessController::GetReadAccess((vox::AccessController *)(a1 + 196));
  EmitterObject = (pthread_mutex_t *)vox::VoxEngineInternal::GetEmitterObject(a1, a2);
  Status = (int)EmitterObject;
  if ( EmitterObject )
    Status = vox::EmitterObj::GetStatus(EmitterObject);
  vox::AccessController::ReleaseReadAccess(v2);
  return Status;
}


// ===== 867d64 vox::VoxEngineInternal::IsDone(vox::EmitterHandle &) =====
bool __fastcall vox::VoxEngineInternal::IsDone(int a1, int *a2)
{
  vox::AccessController *v2; // r4
  pthread_mutex_t *EmitterObject; // r0
  _BOOL4 IsDone; // r5

  v2 = (vox::AccessController *)(a1 + 196);
  vox::AccessController::GetReadAccess((vox::AccessController *)(a1 + 196));
  EmitterObject = (pthread_mutex_t *)vox::VoxEngineInternal::GetEmitterObject(a1, a2);
  if ( EmitterObject )
    IsDone = vox::EmitterObj::IsDone(EmitterObject);
  else
    IsDone = 1;
  vox::AccessController::ReleaseReadAccess(v2);
  return IsDone;
}


// ===== 867dac vox::VoxEngineInternal::IsPlaying(vox::EmitterHandle &) =====
bool __fastcall vox::VoxEngineInternal::IsPlaying(int a1, int *a2)
{
  vox::AccessController *v2; // r4
  pthread_mutex_t *EmitterObject; // r0
  _BOOL4 IsPlaying; // r5

  v2 = (vox::AccessController *)(a1 + 196);
  vox::AccessController::GetReadAccess((vox::AccessController *)(a1 + 196));
  EmitterObject = (pthread_mutex_t *)vox::VoxEngineInternal::GetEmitterObject(a1, a2);
  IsPlaying = (_BOOL4)EmitterObject;
  if ( EmitterObject )
    IsPlaying = vox::EmitterObj::IsPlaying(EmitterObject);
  vox::AccessController::ReleaseReadAccess(v2);
  return IsPlaying;
}


// ===== 867df0 vox::VoxEngineInternal::IsAlive(vox::EmitterHandle &) =====
int __fastcall vox::VoxEngineInternal::IsAlive(int a1, int *a2)
{
  vox::AccessController *v2; // r4
  pthread_mutex_t *EmitterObject; // r0
  int IsAlive; // r5

  v2 = (vox::AccessController *)(a1 + 196);
  vox::AccessController::GetReadAccess((vox::AccessController *)(a1 + 196));
  EmitterObject = (pthread_mutex_t *)vox::VoxEngineInternal::GetEmitterObject(a1, a2);
  IsAlive = (int)EmitterObject;
  if ( EmitterObject )
    IsAlive = vox::EmitterObj::IsAlive(EmitterObject);
  vox::AccessController::ReleaseReadAccess(v2);
  return IsAlive;
}


// ===== 867e34 vox::VoxEngineInternal::IsValid(vox::EmitterHandle &) =====
int __fastcall vox::VoxEngineInternal::IsValid(int a1, int *a2)
{
  vox::AccessController *v2; // r4
  int EmitterObject; // r5
  int result; // r0

  v2 = (vox::AccessController *)(a1 + 196);
  vox::AccessController::GetReadAccess((vox::AccessController *)(a1 + 196));
  EmitterObject = vox::VoxEngineInternal::GetEmitterObject(a1, a2);
  vox::AccessController::ReleaseReadAccess(v2);
  result = EmitterObject;
  if ( EmitterObject )
    return 1;
  return result;
}


// ===== 867e70 vox::VoxEngineInternal::IsReady(vox::EmitterHandle &) =====
int __fastcall vox::VoxEngineInternal::IsReady(int a1, int *a2)
{
  vox::AccessController *v2; // r4
  vox::EmitterObj *EmitterObject; // r0
  int IsReady; // r5

  v2 = (vox::AccessController *)(a1 + 196);
  vox::AccessController::GetReadAccess((vox::AccessController *)(a1 + 196));
  EmitterObject = (vox::EmitterObj *)vox::VoxEngineInternal::GetEmitterObject(a1, a2);
  IsReady = (int)EmitterObject;
  if ( EmitterObject )
    IsReady = vox::EmitterObj::IsReady(EmitterObject);
  vox::AccessController::ReleaseReadAccess(v2);
  return IsReady;
}


// ===== 867eb4 vox::VoxEngineInternal::GetPitch(vox::EmitterHandle &) =====
int __fastcall vox::VoxEngineInternal::GetPitch(int a1, int *a2)
{
  vox::AccessController *v2; // r4
  pthread_mutex_t *EmitterObject; // r0
  int Pitch; // r5

  v2 = (vox::AccessController *)(a1 + 196);
  vox::AccessController::GetReadAccess((vox::AccessController *)(a1 + 196));
  EmitterObject = (pthread_mutex_t *)vox::VoxEngineInternal::GetEmitterObject(a1, a2);
  if ( EmitterObject )
    Pitch = vox::EmitterObj::GetPitch(EmitterObject);
  else
    Pitch = 0;
  vox::AccessController::ReleaseReadAccess(v2);
  return Pitch;
}


// ===== 867efc vox::VoxEngineInternal::SetLoop(vox::EmitterHandle &,bool) =====
int __fastcall vox::VoxEngineInternal::SetLoop(int a1, int *a2, bool a3)
{
  vox::AccessController *v3; // r4
  pthread_mutex_t *EmitterObject; // r0

  v3 = (vox::AccessController *)(a1 + 196);
  vox::AccessController::GetReadAccess((vox::AccessController *)(a1 + 196));
  EmitterObject = (pthread_mutex_t *)vox::VoxEngineInternal::GetEmitterObject(a1, a2);
  if ( EmitterObject )
    vox::EmitterObj::SetLoop(EmitterObject, a3);
  return vox::AccessController::ReleaseReadAccess(v3);
}


// ===== 867f40 vox::VoxEngineInternal::GetGain(vox::EmitterHandle &) =====
int __fastcall vox::VoxEngineInternal::GetGain(int a1, int *a2)
{
  vox::AccessController *v2; // r4
  pthread_mutex_t *EmitterObject; // r0
  int Gain; // r5

  v2 = (vox::AccessController *)(a1 + 196);
  vox::AccessController::GetReadAccess((vox::AccessController *)(a1 + 196));
  EmitterObject = (pthread_mutex_t *)vox::VoxEngineInternal::GetEmitterObject(a1, a2);
  if ( EmitterObject )
    Gain = vox::EmitterObj::GetGain(EmitterObject);
  else
    Gain = 0;
  vox::AccessController::ReleaseReadAccess(v2);
  return Gain;
}


// ===== 867f88 vox::VoxEngineInternal::SetAutoKillAfterDone(vox::EmitterHandle &,bool) =====
int __fastcall vox::VoxEngineInternal::SetAutoKillAfterDone(int a1, int *a2, bool a3)
{
  vox::AccessController *v3; // r4
  pthread_mutex_t *EmitterObject; // r0

  v3 = (vox::AccessController *)(a1 + 196);
  vox::AccessController::GetReadAccess((vox::AccessController *)(a1 + 196));
  EmitterObject = (pthread_mutex_t *)vox::VoxEngineInternal::GetEmitterObject(a1, a2);
  if ( EmitterObject )
    vox::EmitterObj::SetAutoKillAfterDone(EmitterObject, a3);
  return vox::AccessController::ReleaseReadAccess(v3);
}


// ===== 867fcc vox::VoxEngineInternal::UnregisterForEmitterStateChangeNotification(vox::EmitterHandle &) =====
int __fastcall vox::VoxEngineInternal::UnregisterForEmitterStateChangeNotification(int a1, int *a2)
{
  vox::AccessController *v2; // r4
  pthread_mutex_t *EmitterObject; // r0

  v2 = (vox::AccessController *)(a1 + 196);
  vox::AccessController::GetReadAccess((vox::AccessController *)(a1 + 196));
  EmitterObject = (pthread_mutex_t *)vox::VoxEngineInternal::GetEmitterObject(a1, a2);
  if ( EmitterObject )
    vox::EmitterObj::UnregisterStateChangedCallback(EmitterObject);
  return vox::AccessController::ReleaseReadAccess(v2);
}


// ===== 868008 vox::VoxEngineInternal::RegisterForEmitterStateChangeNotification(vox::EmitterHandle &,void (*)(vox::EmitterHandle &,void *,vox::EmitterExternState),void *) =====
int __fastcall vox::VoxEngineInternal::RegisterForEmitterStateChangeNotification(
        int a1,
        int *a2,
        volatile int a3,
        volatile int a4)
{
  vox::AccessController *v4; // r4
  pthread_mutex_t *EmitterObject; // r0

  v4 = (vox::AccessController *)(a1 + 196);
  vox::AccessController::GetReadAccess((vox::AccessController *)(a1 + 196));
  EmitterObject = (pthread_mutex_t *)vox::VoxEngineInternal::GetEmitterObject(a1, a2);
  if ( EmitterObject )
    vox::EmitterObj::RegisterStateChangedCallback(EmitterObject, a3, a4);
  return vox::AccessController::ReleaseReadAccess(v4);
}


// ===== 868054 vox::VoxEngineInternal::IncreaseEmitterObjectRefCount(vox::EmitterHandle &) =====
int __fastcall vox::VoxEngineInternal::IncreaseEmitterObjectRefCount(int a1, int *a2)
{
  vox::AccessController *v2; // r4
  int EmitterObject; // r0

  v2 = (vox::AccessController *)(a1 + 196);
  vox::AccessController::GetReadAccess((vox::AccessController *)(a1 + 196));
  EmitterObject = vox::VoxEngineInternal::GetEmitterObject(a1, a2);
  if ( EmitterObject )
    (*(void (__fastcall **)(int))(*(_DWORD *)EmitterObject + 8))(EmitterObject);
  return vox::AccessController::ReleaseReadAccess(v2);
}


// ===== 868098 vox::EmitterHandle::EmitterHandle(long long,vox::VoxEngineInternal **,vox::Handlable *,uint,uint) =====
vox::EmitterHandle *__fastcall vox::EmitterHandle::EmitterHandle(
        vox::EmitterHandle *this,
        __int64 a2,
        vox::VoxEngineInternal **a3,
        vox::Handlable *a4,
        unsigned int a5,
        unsigned int a6)
{
  *((_DWORD *)this + 4) = a5;
  *((_DWORD *)this + 5) = a6;
  *(_DWORD *)this = off_9934F0;
  *((_QWORD *)this + 1) = a2;
  *((_DWORD *)this + 6) = a4;
  *((_DWORD *)this + 7) = a3;
  *((_DWORD *)this + 8) = a4;
  if ( !a3 || !*a3 )
    return this;
  if ( a4 )
  {
    (*(void (__fastcall **)(vox::Handlable *))(*(_DWORD *)a4 + 8))(a4);
    return this;
  }
  vox::VoxEngineInternal::IncreaseEmitterObjectRefCount((int)*a3, (int *)this);
  return this;
}


// ===== 86812c vox::EmitterHandle::EmitterHandle(long long,vox::VoxEngineInternal **,vox::Handlable *,uint,uint) =====
vox::EmitterHandle *__fastcall vox::EmitterHandle::EmitterHandle(
        vox::EmitterHandle *this,
        __int64 a2,
        vox::VoxEngineInternal **a3,
        vox::Handlable *a4,
        unsigned int a5,
        unsigned int a6)
{
  *((_DWORD *)this + 4) = a5;
  *((_DWORD *)this + 5) = a6;
  *(_DWORD *)this = off_9934F0;
  *((_QWORD *)this + 1) = a2;
  *((_DWORD *)this + 6) = a4;
  *((_DWORD *)this + 7) = a3;
  *((_DWORD *)this + 8) = a4;
  if ( !a3 || !*a3 )
    return this;
  if ( a4 )
  {
    (*(void (__fastcall **)(vox::Handlable *))(*(_DWORD *)a4 + 8))(a4);
    return this;
  }
  vox::VoxEngineInternal::IncreaseEmitterObjectRefCount((int)*a3, (int *)this);
  return this;
}


// ===== 8681c0 vox::EmitterHandle::EmitterHandle(vox::EmitterHandle const&) =====
vox::EmitterHandle *__fastcall vox::EmitterHandle::EmitterHandle(
        vox::EmitterHandle *this,
        const vox::EmitterHandle *a2)
{
  int *v3; // r3
  int v4; // r2

  *(_DWORD *)this = off_9635C8;
  *((_QWORD *)this + 1) = *((_QWORD *)a2 + 1);
  *((_DWORD *)this + 4) = *((_DWORD *)a2 + 4);
  *((_DWORD *)this + 5) = *((_DWORD *)a2 + 5);
  *((_DWORD *)this + 6) = *((_DWORD *)a2 + 6);
  v3 = *((int **)a2 + 7);
  *((_DWORD *)this + 7) = v3;
  v4 = *((_DWORD *)a2 + 8);
  *(_DWORD *)this = off_9934F0;
  *((_DWORD *)this + 8) = v4;
  if ( v3 && *v3 )
    vox::VoxEngineInternal::IncreaseEmitterObjectRefCount(*v3, (int *)this);
  return this;
}


// ===== 868250 vox::EmitterHandle::EmitterHandle(vox::EmitterHandle const&) =====
vox::EmitterHandle *__fastcall vox::EmitterHandle::EmitterHandle(
        vox::EmitterHandle *this,
        const vox::EmitterHandle *a2)
{
  int *v3; // r3
  int v4; // r2

  *(_DWORD *)this = off_9635C8;
  *((_QWORD *)this + 1) = *((_QWORD *)a2 + 1);
  *((_DWORD *)this + 4) = *((_DWORD *)a2 + 4);
  *((_DWORD *)this + 5) = *((_DWORD *)a2 + 5);
  *((_DWORD *)this + 6) = *((_DWORD *)a2 + 6);
  v3 = *((int **)a2 + 7);
  *((_DWORD *)this + 7) = v3;
  v4 = *((_DWORD *)a2 + 8);
  *(_DWORD *)this = off_9934F0;
  *((_DWORD *)this + 8) = v4;
  if ( v3 && *v3 )
    vox::VoxEngineInternal::IncreaseEmitterObjectRefCount(*v3, (int *)this);
  return this;
}


// ===== 8682e0 vox::VoxEngineInternal::DecreaseEmitterObjectRefCount(vox::EmitterHandle &) =====
int __fastcall vox::VoxEngineInternal::DecreaseEmitterObjectRefCount(
        vox::VoxEngineInternal *this,
        vox::EmitterHandle *a2)
{
  vox::AccessController *v2; // r4
  int EmitterObject; // r0

  v2 = (vox::VoxEngineInternal *)((char *)this + 196);
  vox::AccessController::GetReadAccess((vox::VoxEngineInternal *)((char *)this + 196));
  EmitterObject = vox::VoxEngineInternal::GetEmitterObject((int)this, (int *)a2);
  if ( EmitterObject )
    (*(void (__fastcall **)(int))(*(_DWORD *)EmitterObject + 12))(EmitterObject);
  return vox::AccessController::ReleaseReadAccess(v2);
}


// ===== 868324 vox::EmitterHandle::operator=(vox::EmitterHandle const&) =====
vox::EmitterHandle *__fastcall vox::EmitterHandle::operator=(vox::EmitterHandle *a1, int a2)
{
  vox::VoxEngineInternal **v4; // r3
  int *v5; // r3

  if ( a1 != (vox::EmitterHandle *)a2 )
  {
    v4 = *((vox::VoxEngineInternal ***)a1 + 7);
    if ( v4 && *v4 )
      vox::VoxEngineInternal::DecreaseEmitterObjectRefCount(*v4, a1);
    v5 = *(int **)(a2 + 28);
    *((_DWORD *)a1 + 7) = v5;
    *((_QWORD *)a1 + 1) = *(_QWORD *)(a2 + 8);
    *((_DWORD *)a1 + 4) = *(_DWORD *)(a2 + 16);
    *((_DWORD *)a1 + 5) = *(_DWORD *)(a2 + 20);
    *((_DWORD *)a1 + 6) = *(_DWORD *)(a2 + 24);
    *((_DWORD *)a1 + 8) = *(_DWORD *)(a2 + 32);
    if ( v5 && *v5 )
      vox::VoxEngineInternal::IncreaseEmitterObjectRefCount(*v5, (int *)a1);
  }
  return a1;
}


// ===== 8683ac vox::EmitterHandle::~EmitterHandle() =====
void __fastcall vox::EmitterHandle::~EmitterHandle(vox::EmitterHandle *this)
{
  vox::VoxEngineInternal **v1; // r1

  v1 = *((vox::VoxEngineInternal ***)this + 7);
  *(_DWORD *)this = off_9934F0;
  if ( v1 )
  {
    if ( *v1 )
      vox::VoxEngineInternal::DecreaseEmitterObjectRefCount(*v1, this);
  }
}


// ===== 8683fc vox::EmitterHandle::~EmitterHandle() =====
void __fastcall vox::EmitterHandle::~EmitterHandle(vox::EmitterHandle *this)
{
  vox::EmitterHandle::~EmitterHandle(this);
  LC_API_FREE_0(this);
}


// ===== 868418 vox::EmitterHandle::~EmitterHandle() =====
void __fastcall vox::EmitterHandle::~EmitterHandle(vox::EmitterHandle *this)
{
  vox::VoxEngineInternal **v1; // r1

  v1 = *((vox::VoxEngineInternal ***)this + 7);
  *(_DWORD *)this = off_9934F0;
  if ( v1 )
  {
    if ( *v1 )
      vox::VoxEngineInternal::DecreaseEmitterObjectRefCount(*v1, this);
  }
}


// ===== 868468 vox::VoxEngineInternal::GetAllEmitters(vox::EmitterHandle *,int) =====
int __fastcall vox::VoxEngineInternal::GetAllEmitters(vox::VoxEngineInternal *this, vox::EmitterHandle *a2, int a3)
{
  int v5; // r3
  vox::EmitterHandle *v6; // r5
  int i; // r4
  vox::EmitterHandle *v8; // r5
  int v9; // r3
  int v11; // r2
  int v12; // r2
  int v13; // r1
  int v14; // r1
  vox::AccessController *v15; // [sp+14h] [bp-70h]
  vox::AccessController *v16; // [sp+18h] [bp-6Ch]
  _BYTE v18[40]; // [sp+20h] [bp-64h] BYREF
  _BYTE v19[40]; // [sp+48h] [bp-3Ch] BYREF
  int v20; // [sp+70h] [bp-14h] BYREF
  int v21; // [sp+74h] [bp-10h] BYREF
  int v22; // [sp+78h] [bp-Ch] BYREF
  int v23; // [sp+7Ch] [bp-8h] BYREF

  v16 = (vox::VoxEngineInternal *)((char *)this + 196);
  v15 = (vox::VoxEngineInternal *)((char *)this + 208);
  vox::AccessController::GetReadAccess((vox::VoxEngineInternal *)((char *)this + 196));
  vox::AccessController::GetReadAccess(v15);
  vox::HandlableContainer::begin(&v23, (int)this + 120);
  vox::HandlableContainer::end(&v22, (int)this + 120);
  v5 = v23;
  v6 = a2;
  for ( i = 0; v5 != v22 && i < a3; ++i )
  {
    vox::EmitterHandle::EmitterHandle(
      (vox::EmitterHandle *)v19,
      *(_QWORD *)(*(_DWORD *)(v5 + 24) + 8),
      (vox::VoxEngineInternal **)&vox::VoxEngineInternal::s_voxEngineInternal,
      *(vox::Handlable **)(v5 + 24),
      *((_DWORD *)this + *(_DWORD *)(*(_DWORD *)(v5 + 24) + 20) + 340),
      *(_DWORD *)(*(_DWORD *)(v5 + 24) + 20));
    vox::EmitterHandle::operator=(v6, (int)v19);
    vox::EmitterHandle::~EmitterHandle((vox::EmitterHandle *)v19);
    v5 = v23;
    v11 = *(_DWORD *)(v23 + 12);
    if ( v11 )
    {
      while ( *(_DWORD *)(v11 + 8) )
        v11 = *(_DWORD *)(v11 + 8);
      v5 = v11;
    }
    else
    {
      v14 = *(_DWORD *)(v23 + 4);
      if ( *(_DWORD *)(v14 + 12) == v23 )
      {
        do
        {
          v5 = v14;
          v14 = *(_DWORD *)(v14 + 4);
        }
        while ( *(_DWORD *)(v14 + 12) == v5 );
        v11 = *(_DWORD *)(v5 + 12);
      }
      if ( v14 != v11 )
        v5 = v14;
    }
    v23 = v5;
    v6 = (vox::EmitterHandle *)((char *)v6 + 40);
  }
  vox::HandlableContainer::begin(&v21, (int)this + 152);
  v23 = v21;
  vox::HandlableContainer::end(&v20, (int)this + 152);
  v8 = (vox::EmitterHandle *)((char *)a2 + 40 * i);
  v22 = v20;
  v9 = v23;
  while ( v9 != v22 && i < a3 )
  {
    vox::EmitterHandle::EmitterHandle(
      (vox::EmitterHandle *)v18,
      *(_QWORD *)(*(_DWORD *)(v9 + 24) + 8),
      (vox::VoxEngineInternal **)&vox::VoxEngineInternal::s_voxEngineInternal,
      *(vox::Handlable **)(v9 + 24),
      *((_DWORD *)this + *(_DWORD *)(*(_DWORD *)(v9 + 24) + 20) + 340),
      *(_DWORD *)(*(_DWORD *)(v9 + 24) + 20));
    vox::EmitterHandle::operator=(v8, (int)v18);
    vox::EmitterHandle::~EmitterHandle((vox::EmitterHandle *)v18);
    v9 = v23;
    v12 = *(_DWORD *)(v23 + 12);
    if ( v12 )
    {
      while ( *(_DWORD *)(v12 + 8) )
        v12 = *(_DWORD *)(v12 + 8);
      v9 = v12;
    }
    else
    {
      v13 = *(_DWORD *)(v23 + 4);
      if ( v23 == *(_DWORD *)(v13 + 12) )
      {
        do
        {
          v9 = v13;
          v13 = *(_DWORD *)(v13 + 4);
        }
        while ( *(_DWORD *)(v13 + 12) == v9 );
        v12 = *(_DWORD *)(v9 + 12);
      }
      if ( v13 != v12 )
        v9 = v13;
    }
    v23 = v9;
    ++i;
    v8 = (vox::EmitterHandle *)((char *)v8 + 40);
  }
  vox::AccessController::ReleaseReadAccess(v15);
  vox::AccessController::ReleaseReadAccess(v16);
  return i;
}


// ===== 8686bc vox::VoxEngineInternal::GetDataObject(vox::DataHandle &) =====
int __fastcall vox::VoxEngineInternal::GetDataObject(int a1, int *a2)
{
  __int64 v4; // r0
  int v5; // r7
  int v6; // r3
  int v7; // r1
  __int64 v9; // r0
  int v10; // [sp+0h] [bp-Ch] BYREF
  int v11; // [sp+4h] [bp-8h] BYREF

  (*(void (__fastcall **)(int *, int *, int *))(*a2 + 16))(a2, &v11, &v10);
  if ( *(_DWORD *)(a1 + 4 * (v10 + 340)) != v11 || (v5 = (*(int (__fastcall **)(int *))(*a2 + 12))(a2)) == 0 )
  {
    v4 = ((__int64 (__fastcall *)(int *))*(_DWORD *)(*a2 + 8))(a2);
    v5 = vox::HandlableContainer::Find((vox::HandlableContainer *)(a1 + 8), v4);
    if ( v5
      || (vox::AccessController::GetReadAccess((vox::AccessController *)(a1 + 96)),
          v9 = ((__int64 (__fastcall *)(int *))*(_DWORD *)(*a2 + 8))(a2),
          v5 = vox::HandlableContainer::Find((vox::HandlableContainer *)(a1 + 40), v9),
          vox::AccessController::ReleaseReadAccess((vox::AccessController *)(a1 + 96)),
          v5) )
    {
      v6 = *a2;
      v7 = *(_DWORD *)(a1 + 4 * (*(_DWORD *)(v5 + 20) + 340));
      v10 = *(_DWORD *)(v5 + 20);
      (*(void (__fastcall **)(int *, int))(v6 + 20))(a2, v7);
    }
  }
  return v5;
}


// ===== 8687b0 vox::VoxEngineInternal::GetUserData(vox::DataHandle &) =====
int __fastcall vox::VoxEngineInternal::GetUserData(int a1, int *a2)
{
  vox::AccessController *v2; // r4
  pthread_mutex_t *DataObject; // r0
  int UserData; // r5

  v2 = (vox::AccessController *)(a1 + 84);
  vox::AccessController::GetReadAccess((vox::AccessController *)(a1 + 84));
  DataObject = (pthread_mutex_t *)vox::VoxEngineInternal::GetDataObject(a1, a2);
  if ( DataObject )
    UserData = vox::DataObj::GetUserData(DataObject);
  else
    UserData = -1;
  vox::AccessController::ReleaseReadAccess(v2);
  return UserData;
}


// ===== 8687f8 vox::VoxEngineInternal::SetUserData(vox::DataHandle &,vox::DataHandleUserData &) =====
int __fastcall vox::VoxEngineInternal::SetUserData(int a1, int *a2, volatile int *a3)
{
  vox::AccessController *v3; // r4
  pthread_mutex_t *DataObject; // r0

  v3 = (vox::AccessController *)(a1 + 84);
  vox::AccessController::GetReadAccess((vox::AccessController *)(a1 + 84));
  DataObject = (pthread_mutex_t *)vox::VoxEngineInternal::GetDataObject(a1, a2);
  if ( DataObject )
    vox::DataObj::SetUserData(DataObject, a3);
  return vox::AccessController::ReleaseReadAccess(v3);
}


// ===== 86883c vox::VoxEngineInternal::GetUid(vox::DataHandle &) =====
int __fastcall vox::VoxEngineInternal::GetUid(int a1, int *a2)
{
  vox::AccessController *v2; // r4
  int DataObject; // r0
  int v6; // r5

  v2 = (vox::AccessController *)(a1 + 84);
  vox::AccessController::GetReadAccess((vox::AccessController *)(a1 + 84));
  DataObject = vox::VoxEngineInternal::GetDataObject(a1, a2);
  if ( DataObject )
    v6 = *(_DWORD *)(DataObject + 36);
  else
    v6 = -1;
  vox::AccessController::ReleaseReadAccess(v2);
  return v6;
}


// ===== 86887c vox::VoxEngineInternal::SetUid(vox::DataHandle &,int) =====
int __fastcall vox::VoxEngineInternal::SetUid(int a1, int *a2, int a3)
{
  vox::AccessController *v3; // r4
  int DataObject; // r0

  v3 = (vox::AccessController *)(a1 + 84);
  vox::AccessController::GetReadAccess((vox::AccessController *)(a1 + 84));
  DataObject = vox::VoxEngineInternal::GetDataObject(a1, a2);
  if ( DataObject )
    *(_DWORD *)(DataObject + 36) = a3;
  return vox::AccessController::ReleaseReadAccess(v3);
}


// ===== 8688b8 vox::VoxEngineInternal::SetPriorityBankId(vox::DataHandle &,int) =====
int __fastcall vox::VoxEngineInternal::SetPriorityBankId(int a1, int *a2, int a3)
{
  vox::AccessController *v3; // r4
  int DataObject; // r0

  v3 = (vox::AccessController *)(a1 + 84);
  vox::AccessController::GetReadAccess((vox::AccessController *)(a1 + 84));
  DataObject = vox::VoxEngineInternal::GetDataObject(a1, a2);
  if ( DataObject )
    *(_DWORD *)(DataObject + 32) = a3;
  return vox::AccessController::ReleaseReadAccess(v3);
}


// ===== 8688f4 vox::VoxEngineInternal::GetDuration(vox::DataHandle &) =====
int __fastcall vox::VoxEngineInternal::GetDuration(int a1, int *a2)
{
  vox::AccessController *v2; // r4
  pthread_mutex_t *DataObject; // r0
  int Duration; // r5

  v2 = (vox::AccessController *)(a1 + 84);
  vox::AccessController::GetReadAccess((vox::AccessController *)(a1 + 84));
  DataObject = (pthread_mutex_t *)vox::VoxEngineInternal::GetDataObject(a1, a2);
  if ( DataObject )
    Duration = vox::DataObj::GetDuration(DataObject);
  else
    Duration = 0;
  vox::AccessController::ReleaseReadAccess(v2);
  return Duration;
}


// ===== 86893c vox::VoxEngineInternal::IsValid(vox::DataHandle &) =====
int __fastcall vox::VoxEngineInternal::IsValid(int a1, int *a2)
{
  vox::AccessController *v2; // r4
  int DataObject; // r5
  int result; // r0

  v2 = (vox::AccessController *)(a1 + 84);
  vox::AccessController::GetReadAccess((vox::AccessController *)(a1 + 84));
  DataObject = vox::VoxEngineInternal::GetDataObject(a1, a2);
  vox::AccessController::ReleaseReadAccess(v2);
  result = DataObject;
  if ( DataObject )
    return 1;
  return result;
}


// ===== 868978 vox::VoxEngineInternal::IsReady(vox::DataHandle &) =====
bool __fastcall vox::VoxEngineInternal::IsReady(int a1, int *a2)
{
  vox::AccessController *v2; // r4
  pthread_mutex_t *DataObject; // r0
  _BOOL4 IsReady; // r5

  v2 = (vox::AccessController *)(a1 + 84);
  vox::AccessController::GetReadAccess((vox::AccessController *)(a1 + 84));
  DataObject = (pthread_mutex_t *)vox::VoxEngineInternal::GetDataObject(a1, a2);
  IsReady = (_BOOL4)DataObject;
  if ( DataObject )
    IsReady = vox::DataObj::IsReady(DataObject);
  vox::AccessController::ReleaseReadAccess(v2);
  return IsReady;
}


// ===== 8689bc vox::VoxEngineInternal::GetEmitterHandles(vox::DataHandle &,vox::EmitterHandle *,int) =====
int __fastcall vox::VoxEngineInternal::GetEmitterHandles(int a1, int *a2, int a3, int a4)
{
  vox::AccessController *v4; // r10
  int DataObject; // r6
  int v9; // r4
  _DWORD *v10; // r2
  _DWORD *v11; // r0
  _DWORD *v12; // r0
  _DWORD *v13; // r2
  int v15; // r1
  _DWORD *v16; // r3
  int v17; // r1
  _DWORD *v18; // r3
  int v19; // r1
  int v20; // r1
  _BYTE v22[40]; // [sp+20h] [bp-64h] BYREF
  _BYTE v23[40]; // [sp+48h] [bp-3Ch] BYREF
  _DWORD *v24; // [sp+70h] [bp-14h] BYREF
  _DWORD *v25; // [sp+74h] [bp-10h] BYREF
  _DWORD *v26; // [sp+78h] [bp-Ch] BYREF
  _DWORD *v27; // [sp+7Ch] [bp-8h] BYREF

  v4 = (vox::AccessController *)(a1 + 84);
  vox::AccessController::GetReadAccess((vox::AccessController *)(a1 + 84));
  DataObject = vox::VoxEngineInternal::GetDataObject(a1, a2);
  if ( DataObject )
  {
    vox::AccessController::GetReadAccess((vox::AccessController *)(a1 + 196));
    vox::AccessController::GetReadAccess((vox::AccessController *)(a1 + 208));
    vox::HandlableContainer::begin(&v27, a1 + 120);
    vox::HandlableContainer::end(&v26, a1 + 120);
    v10 = v27;
    v11 = v26;
    v9 = 0;
    while ( v10 != v11 && v9 < a4 )
    {
      v15 = v10[6];
      if ( DataObject == *(_DWORD *)(v15 + 280) )
      {
        vox::EmitterHandle::EmitterHandle(
          (vox::EmitterHandle *)v23,
          *(_QWORD *)(v15 + 8),
          (vox::VoxEngineInternal **)&vox::VoxEngineInternal::s_voxEngineInternal,
          (vox::Handlable *)v15,
          *(_DWORD *)(a1 + 4 * (*(_DWORD *)(v15 + 20) + 340)),
          *(_DWORD *)(v15 + 20));
        vox::EmitterHandle::operator=((vox::EmitterHandle *)(a3 + 40 * v9), (int)v23);
        vox::EmitterHandle::~EmitterHandle((vox::EmitterHandle *)v23);
        ++v9;
        v10 = v27;
        v11 = v26;
      }
      v16 = (_DWORD *)v10[3];
      if ( v16 )
      {
        while ( v16[2] )
          v16 = (_DWORD *)v16[2];
        v10 = v16;
        v27 = v16;
      }
      else
      {
        v20 = v10[1];
        if ( *(_DWORD **)(v20 + 12) == v10 )
        {
          do
          {
            v10 = (_DWORD *)v20;
            v20 = *(_DWORD *)(v20 + 4);
          }
          while ( *(_DWORD **)(v20 + 12) == v10 );
          v16 = (_DWORD *)v10[3];
        }
        if ( (_DWORD *)v20 != v16 )
          v10 = (_DWORD *)v20;
        v27 = v10;
      }
    }
    vox::HandlableContainer::begin(&v25, a1 + 152);
    v27 = v25;
    vox::HandlableContainer::end(&v24, a1 + 152);
    v12 = v24;
    v13 = v27;
    v26 = v24;
    while ( v12 != v13 && v9 < a4 )
    {
      v17 = v13[6];
      if ( DataObject == *(_DWORD *)(v17 + 280) )
      {
        vox::EmitterHandle::EmitterHandle(
          (vox::EmitterHandle *)v22,
          *(_QWORD *)(v17 + 8),
          (vox::VoxEngineInternal **)&vox::VoxEngineInternal::s_voxEngineInternal,
          (vox::Handlable *)v17,
          *(_DWORD *)(a1 + 4 * (*(_DWORD *)(v17 + 20) + 340)),
          *(_DWORD *)(v17 + 20));
        vox::EmitterHandle::operator=((vox::EmitterHandle *)(a3 + 40 * v9), (int)v22);
        vox::EmitterHandle::~EmitterHandle((vox::EmitterHandle *)v22);
        ++v9;
        v13 = v27;
        v12 = v26;
      }
      v18 = (_DWORD *)v13[3];
      if ( v18 )
      {
        while ( v18[2] )
          v18 = (_DWORD *)v18[2];
        v13 = v18;
        v27 = v18;
      }
      else
      {
        v19 = v13[1];
        if ( v13 == *(_DWORD **)(v19 + 12) )
        {
          do
          {
            v13 = (_DWORD *)v19;
            v19 = *(_DWORD *)(v19 + 4);
          }
          while ( *(_DWORD **)(v19 + 12) == v13 );
          v18 = (_DWORD *)v13[3];
        }
        if ( v18 != (_DWORD *)v19 )
          v13 = (_DWORD *)v19;
        v27 = v13;
      }
    }
    vox::AccessController::ReleaseReadAccess((vox::AccessController *)(a1 + 208));
    vox::AccessController::ReleaseReadAccess((vox::AccessController *)(a1 + 196));
  }
  else
  {
    v9 = 0;
  }
  vox::AccessController::ReleaseReadAccess(v4);
  return v9;
}


// ===== 868c88 vox::VoxEngineInternal::ReleaseDatasource(vox::DataHandle &) =====
int __fastcall vox::VoxEngineInternal::ReleaseDatasource(pthread_mutex_t *a1, int *a2)
{
  vox::AccessController *v2; // r5
  pthread_mutex_t *DataObject; // r0
  pthread_mutex_t *v6; // r7
  signed int value_low; // r1
  _DWORD *v9; // r0
  _DWORD *value; // r3

  v2 = (vox::AccessController *)&a1[21];
  vox::AccessController::GetReadAccess((vox::AccessController *)&a1[21]);
  DataObject = (pthread_mutex_t *)vox::VoxEngineInternal::GetDataObject((int)a1, a2);
  v6 = DataObject;
  if ( DataObject )
  {
    vox::DataObj::NeedToDie(DataObject);
    vox::Mutex::Lock(a1 + 29);
    value_low = LOBYTE(v6[19].value);
    if ( !LOBYTE(v6[19].value) )
    {
      LOBYTE(v6[19].value) = 1;
      v9 = VoxAlloc(0xCu, value_low);
      v9[2] = v6;
      value = (_DWORD *)a1[28].value;
      *v9 = a1 + 27;
      v9[1] = value;
      *value = v9;
      a1[28].value = (volatile int)v9;
    }
    vox::Mutex::Unlock(a1 + 29);
  }
  return vox::AccessController::ReleaseReadAccess(v2);
}


// ===== 868d10 vox::VoxEngineInternal::IncreaseDataObjectRefCount(vox::DataHandle &) =====
int __fastcall vox::VoxEngineInternal::IncreaseDataObjectRefCount(int a1, int *a2)
{
  vox::AccessController *v2; // r4
  int DataObject; // r0

  v2 = (vox::AccessController *)(a1 + 84);
  vox::AccessController::GetReadAccess((vox::AccessController *)(a1 + 84));
  DataObject = vox::VoxEngineInternal::GetDataObject(a1, a2);
  if ( DataObject )
    (*(void (__fastcall **)(int))(*(_DWORD *)DataObject + 8))(DataObject);
  return vox::AccessController::ReleaseReadAccess(v2);
}


// ===== 868d54 vox::DataHandle::DataHandle(long long,vox::VoxEngineInternal **,vox::Handlable *,uint,uint) =====
vox::DataHandle *__fastcall vox::DataHandle::DataHandle(
        vox::DataHandle *this,
        __int64 a2,
        vox::VoxEngineInternal **a3,
        vox::Handlable *a4,
        unsigned int a5,
        unsigned int a6)
{
  *((_DWORD *)this + 4) = a5;
  *((_DWORD *)this + 5) = a6;
  *(_DWORD *)this = off_993510;
  *((_QWORD *)this + 1) = a2;
  *((_DWORD *)this + 6) = a4;
  *((_DWORD *)this + 7) = a3;
  *((_DWORD *)this + 8) = a4;
  if ( !a3 || !*a3 )
    return this;
  if ( a4 )
  {
    (*(void (__fastcall **)(vox::Handlable *))(*(_DWORD *)a4 + 8))(a4);
    return this;
  }
  vox::VoxEngineInternal::IncreaseDataObjectRefCount((int)*a3, (int *)this);
  return this;
}


// ===== 868de8 vox::DataHandle::DataHandle(long long,vox::VoxEngineInternal **,vox::Handlable *,uint,uint) =====
vox::DataHandle *__fastcall vox::DataHandle::DataHandle(
        vox::DataHandle *this,
        __int64 a2,
        vox::VoxEngineInternal **a3,
        vox::Handlable *a4,
        unsigned int a5,
        unsigned int a6)
{
  *((_DWORD *)this + 4) = a5;
  *((_DWORD *)this + 5) = a6;
  *(_DWORD *)this = off_993510;
  *((_QWORD *)this + 1) = a2;
  *((_DWORD *)this + 6) = a4;
  *((_DWORD *)this + 7) = a3;
  *((_DWORD *)this + 8) = a4;
  if ( !a3 || !*a3 )
    return this;
  if ( a4 )
  {
    (*(void (__fastcall **)(vox::Handlable *))(*(_DWORD *)a4 + 8))(a4);
    return this;
  }
  vox::VoxEngineInternal::IncreaseDataObjectRefCount((int)*a3, (int *)this);
  return this;
}


// ===== 868e7c vox::DataHandle::DataHandle(vox::DataHandle const&) =====
vox::DataHandle *__fastcall vox::DataHandle::DataHandle(vox::DataHandle *this, const vox::DataHandle *a2)
{
  int *v3; // r3
  int v4; // r2

  *(_DWORD *)this = off_9635C8;
  *((_QWORD *)this + 1) = *((_QWORD *)a2 + 1);
  *((_DWORD *)this + 4) = *((_DWORD *)a2 + 4);
  *((_DWORD *)this + 5) = *((_DWORD *)a2 + 5);
  *((_DWORD *)this + 6) = *((_DWORD *)a2 + 6);
  v3 = *((int **)a2 + 7);
  *((_DWORD *)this + 7) = v3;
  v4 = *((_DWORD *)a2 + 8);
  *(_DWORD *)this = off_993510;
  *((_DWORD *)this + 8) = v4;
  if ( v3 && *v3 )
    vox::VoxEngineInternal::IncreaseDataObjectRefCount(*v3, (int *)this);
  return this;
}


// ===== 868f0c vox::DataHandle::DataHandle(vox::DataHandle const&) =====
vox::DataHandle *__fastcall vox::DataHandle::DataHandle(vox::DataHandle *this, const vox::DataHandle *a2)
{
  int *v3; // r3
  int v4; // r2

  *(_DWORD *)this = off_9635C8;
  *((_QWORD *)this + 1) = *((_QWORD *)a2 + 1);
  *((_DWORD *)this + 4) = *((_DWORD *)a2 + 4);
  *((_DWORD *)this + 5) = *((_DWORD *)a2 + 5);
  *((_DWORD *)this + 6) = *((_DWORD *)a2 + 6);
  v3 = *((int **)a2 + 7);
  *((_DWORD *)this + 7) = v3;
  v4 = *((_DWORD *)a2 + 8);
  *(_DWORD *)this = off_993510;
  *((_DWORD *)this + 8) = v4;
  if ( v3 && *v3 )
    vox::VoxEngineInternal::IncreaseDataObjectRefCount(*v3, (int *)this);
  return this;
}


// ===== 868f9c vox::VoxEngineInternal::GetData(vox::EmitterHandle &) =====
vox::VoxEngineInternal *__fastcall vox::VoxEngineInternal::GetData(
        vox::VoxEngineInternal *this,
        vox::EmitterHandle *a2,
        int *a3)
{
  vox::AccessController *v3; // r6
  int EmitterObject; // r0
  int v8; // r3
  vox::AccessController *v9; // r0
  __int64 v10; // r6

  v3 = (vox::EmitterHandle *)((char *)a2 + 196);
  vox::AccessController::GetReadAccess((vox::EmitterHandle *)((char *)a2 + 196));
  EmitterObject = vox::VoxEngineInternal::GetEmitterObject((int)a2, a3);
  if ( !EmitterObject )
    goto LABEL_6;
  v8 = *(_DWORD *)(EmitterObject + 280);
  if ( !v8 )
  {
    vox::AccessController::ReleaseReadAccess(v3);
LABEL_6:
    vox::AccessController::ReleaseReadAccess(v3);
    vox::DataHandle::DataHandle(this, -1, nullptr, nullptr, 0, 0);
    return this;
  }
  v9 = v3;
  v10 = *(_QWORD *)(v8 + 8);
  vox::AccessController::ReleaseReadAccess(v9);
  vox::DataHandle::DataHandle(
    this,
    v10,
    (vox::VoxEngineInternal **)&vox::VoxEngineInternal::s_voxEngineInternal,
    nullptr,
    0,
    0);
  return this;
}


// ===== 869068 vox::VoxEngineInternal::GetFreeEmitterObjectId(void) =====
__int64 __fastcall vox::VoxEngineInternal::GetFreeEmitterObjectId(vox::VoxEngineInternal *this)
{
  vox::AccessController *v1; // r4
  __int64 FreeHandleId; // kr00_8

  v1 = (vox::VoxEngineInternal *)((char *)this + 196);
  vox::AccessController::GetWriteAccess((vox::VoxEngineInternal *)((char *)this + 196));
  FreeHandleId = vox::HandlableContainer::GetFreeHandleId((vox::VoxEngineInternal *)((char *)this + 120));
  vox::AccessController::ReleaseWriteAccess(v1);
  return FreeHandleId;
}


// ===== 8690a0 vox::VoxEngineInternal::CreateEmitterAsync(vox::DataHandle &,int,void *) =====
vox::VoxEngineInternal *__fastcall vox::VoxEngineInternal::CreateEmitterAsync(
        vox::VoxEngineInternal *this,
        vox::DataHandle *a2,
        int *a3,
        int a4,
        int a5)
{
  vox::AccessController *v5; // r8
  pthread_mutex_t *DataObject; // r0
  pthread_mutex_t *v11; // r5
  volatile int value; // r3
  bool v13; // zf
  volatile int v14; // r1
  volatile int v15; // r2
  volatile int v16; // r3
  int v17; // r3
  __int64 FreeEmitterObjectId; // r0
  int v19; // r11
  __int64 v20; // kr00_8
  __int64 *v21; // r7
  int Group; // r0
  __int64 v23; // r2
  int v24; // r3
  vox::DriverSourceInterface *v26; // [sp+1Ch] [bp-40h]
  _BYTE v27[40]; // [sp+20h] [bp-3Ch] BYREF
  _DWORD v28[5]; // [sp+48h] [bp-14h] BYREF

  v5 = (vox::DataHandle *)((char *)a2 + 84);
  vox::AccessController::GetReadAccess((vox::DataHandle *)((char *)a2 + 84));
  DataObject = (pthread_mutex_t *)vox::VoxEngineInternal::GetDataObject((int)a2, a3);
  v11 = DataObject;
  if ( !DataObject || !vox::DataObj::IsReady(DataObject) )
  {
    vox::AccessController::ReleaseReadAccess(v5);
    vox::EmitterHandle::EmitterHandle(this, -1, nullptr, nullptr, 0, 0);
    return this;
  }
  if ( v11[20].value )
    goto LABEL_16;
  value = v11[14].value;
  v13 = value == 0;
  if ( value )
    v13 = v11[15].value == 0;
  if ( v13 )
    goto LABEL_16;
  v14 = v11[11].value;
  v15 = v11[12].value;
  v16 = v11[13].value;
  v28[0] = v11[10].value;
  v28[1] = v14;
  v28[2] = v15;
  v28[3] = v16;
  if ( v28[0] <= 0 )
    goto LABEL_16;
  v17 = *((_DWORD *)a2 + 339);
  if ( !v17 )
    goto LABEL_16;
  v26 = (vox::DriverSourceInterface *)(*(int (__fastcall **)(_DWORD, _DWORD *, int, int))(*(_DWORD *)v17 + 68))(
                                        *((_DWORD *)a2 + 339),
                                        v28,
                                        a5,
                                        a4);
  if ( !v26 )
    goto LABEL_16;
  FreeEmitterObjectId = vox::VoxEngineInternal::GetFreeEmitterObjectId(a2);
  v19 = v11[8].value;
  v20 = FreeEmitterObjectId;
  v21 = (__int64 *)VoxAlloc(0x168u, 0);
  vox::EmitterObj::EmitterObj((vox::EmitterObj *)v21, v20, a4, v19, v26, (vox::DataObj *)v11);
  if ( !v21 )
  {
    v24 = *((_DWORD *)a2 + 339);
    if ( v24 )
      (*(void (__fastcall **)(_DWORD, vox::DriverSourceInterface *))(*(_DWORD *)v24 + 72))(*((_DWORD *)a2 + 339), v26);
LABEL_16:
    vox::AccessController::ReleaseReadAccess(v5);
    vox::EmitterHandle::EmitterHandle(this, -1, nullptr, nullptr, 0, 0);
    return this;
  }
  Group = vox::DataObj::GetGroup(v11);
  vox::EmitterObj::SetGroup((pthread_mutex_t *)v21, Group);
  vox::DataObj::RegisterEmitter(v11, v21[1]);
  vox::AccessController::ReleaseReadAccess(v5);
  v23 = v21[1];
  *((_DWORD *)v21 + 5) = *((_DWORD *)a2 + 356);
  vox::EmitterHandle::EmitterHandle(
    (vox::EmitterHandle *)v27,
    v23,
    (vox::VoxEngineInternal **)&vox::VoxEngineInternal::s_voxEngineInternal,
    (vox::Handlable *)v21,
    *((_DWORD *)a2 + *((_DWORD *)a2 + 356) + 340),
    *((_DWORD *)a2 + 356));
  *((_DWORD *)a2 + 356) = ((unsigned __int8)*((_DWORD *)a2 + 356) + 1) & 0xF;
  vox::AccessController::GetWriteAccess((vox::DataHandle *)((char *)a2 + 208));
  vox::HandlableContainer::Add((int *)a2 + 38, (int)v21);
  vox::AccessController::ReleaseWriteAccess((vox::DataHandle *)((char *)a2 + 208));
  vox::EmitterHandle::EmitterHandle(this, (const vox::EmitterHandle *)v27);
  vox::EmitterHandle::~EmitterHandle((vox::EmitterHandle *)v27);
  return this;
}


// ===== 869314 vox::VoxEngineInternal::GetFreeDataObjectId(void) =====
__int64 __fastcall vox::VoxEngineInternal::GetFreeDataObjectId(vox::VoxEngineInternal *this)
{
  vox::AccessController *v1; // r4
  __int64 FreeHandleId; // kr00_8

  v1 = (vox::VoxEngineInternal *)((char *)this + 84);
  vox::AccessController::GetWriteAccess((vox::VoxEngineInternal *)((char *)this + 84));
  FreeHandleId = vox::HandlableContainer::GetFreeHandleId((vox::VoxEngineInternal *)((char *)this + 8));
  vox::AccessController::ReleaseWriteAccess(v1);
  return FreeHandleId;
}


// ===== 86934c vox::VoxEngineInternal::Initialize(void) =====
int __fastcall vox::VoxEngineInternal::Initialize(vox::VoxEngineInternal *this)
{
  vox::VoxEngineInternal *v1; // r4

  v1 = this;
  if ( !*((_DWORD *)this + 339) )
  {
    this = (vox::VoxEngineInternal *)vox::CreateDriver(this);
    *((_DWORD *)v1 + 339) = this;
  }
  return vox::FileSystemInterface::GetInstance(this);
}


// ===== 869374 std::vector<vox::EmitterObj *,vox::SAllocator<vox::EmitterObj *,(vox::VoxMemHint)0>>::reserve(uint) [clone] =====
void __fastcall std::vector<vox::EmitterObj *,vox::SAllocator<vox::EmitterObj *,(vox::VoxMemHint)0>>::reserve(int a1)
{
  _BYTE *v1; // r2
  unsigned int v2; // r3
  _BYTE *v4; // r3
  int v5; // r5
  char *v6; // r6
  int v7; // r3
  int v8; // [sp+4h] [bp-4h] BYREF

  v1 = *(_BYTE **)a1;
  v2 = (*(_DWORD *)(a1 + 8) - *(_DWORD *)a1) >> 2;
  v8 = 128;
  if ( v2 <= 0x7F )
  {
    v4 = *(_BYTE **)(a1 + 4);
    v5 = (v4 - v1) >> 2;
    if ( v1 )
    {
      v6 = (char *)std::vector<vox::EmitterObj *,vox::SAllocator<vox::EmitterObj *,(vox::VoxMemHint)0>>::_M_allocate_and_copy<vox::EmitterObj **>(
                     a1,
                     &v8,
                     v1,
                     v4);
      VoxFree(*(void **)a1);
    }
    else
    {
      v6 = (char *)VoxAlloc(0x200u, 0);
    }
    v7 = v8;
    *(_DWORD *)(a1 + 4) = &v6[4 * v5];
    *(_DWORD *)(a1 + 8) = &v6[4 * v7];
    *(_DWORD *)a1 = v6;
  }
}


// ===== 8693fc std::vector<vox::DataObj *,vox::SAllocator<vox::DataObj *,(vox::VoxMemHint)0>>::reserve(uint) [clone] =====
void __fastcall std::vector<vox::DataObj *,vox::SAllocator<vox::DataObj *,(vox::VoxMemHint)0>>::reserve(int a1)
{
  _BYTE *v1; // r2
  unsigned int v2; // r3
  _BYTE *v4; // r3
  int v5; // r5
  char *v6; // r6
  int v7; // r3
  int v8; // [sp+4h] [bp-4h] BYREF

  v1 = *(_BYTE **)a1;
  v2 = (*(_DWORD *)(a1 + 8) - *(_DWORD *)a1) >> 2;
  v8 = 128;
  if ( v2 <= 0x7F )
  {
    v4 = *(_BYTE **)(a1 + 4);
    v5 = (v4 - v1) >> 2;
    if ( v1 )
    {
      v6 = (char *)std::vector<vox::DataObj *,vox::SAllocator<vox::DataObj *,(vox::VoxMemHint)0>>::_M_allocate_and_copy<vox::DataObj **>(
                     a1,
                     &v8,
                     v1,
                     v4);
      VoxFree(*(void **)a1);
    }
    else
    {
      v6 = (char *)VoxAlloc(0x200u, 0);
    }
    v7 = v8;
    *(_DWORD *)(a1 + 4) = &v6[4 * v5];
    *(_DWORD *)(a1 + 8) = &v6[4 * v7];
    *(_DWORD *)a1 = v6;
  }
}


// ===== 869484 std::vector<vox::PriorityBankElement,vox::SAllocator<vox::PriorityBankElement,(vox::VoxMemHint)0>>::push_back(vox::PriorityBankElement const&) =====
void __fastcall std::vector<vox::PriorityBankElement,vox::SAllocator<vox::PriorityBankElement,(vox::VoxMemHint)0>>::push_back(
        _DWORD *a1,
        _DWORD *a2)
{
  _DWORD *v2; // r3
  _DWORD *v3; // r6
  unsigned int v6; // r3
  unsigned int v7; // r7
  size_t v8; // r7
  _DWORD *v9; // r0
  char *v10; // lr
  _DWORD *v11; // r8
  int v12; // r6
  _DWORD *v13; // r6
  int v14; // r1
  int v15; // r0
  _DWORD *v16; // r3
  int v17; // r2
  _DWORD *v18; // r7
  char *v19; // r0

  v2 = (_DWORD *)a1[1];
  v3 = (_DWORD *)a1[2];
  if ( v2 == v3 )
  {
    v6 = ((int)v3 - *a1) >> 3;
    if ( v6 )
      v7 = 2 * v6;
    else
      v7 = 1;
    if ( v7 > 0x1FFFFFFF || v6 > v7 )
      v8 = -2;
    else
      v8 = 2 * v7;
    v9 = VoxAlloc(v8 * 4, 0);
    v10 = (char *)*a1;
    v11 = v9;
    v12 = ((int)v3 - *a1) >> 3;
    if ( v12 > 0 )
    {
      v14 = v12;
      v15 = 0;
      do
      {
        --v14;
        v11[v15] = *(_DWORD *)&v10[v15 * 4];
        v16 = &v11[v15];
        v17 = *(_DWORD *)&v10[v15 * 4 + 4];
        v15 += 2;
        v16[1] = v17;
      }
      while ( v14 );
      v13 = &v11[2 * v12];
    }
    else
    {
      v13 = v9;
    }
    v18 = &v11[v8];
    *v13 = *a2;
    v13[1] = a2[1];
    v19 = (char *)a1[1];
    if ( v19 != (char *)*a1 )
      v19 += 8 * ~((unsigned int)&v19[-*a1 - 8] >> 3);
    VoxFree(v19);
    a1[2] = v18;
    *a1 = v11;
    a1[1] = v13 + 2;
  }
  else
  {
    *v2 = *a2;
    v2[1] = a2[1];
    a1[1] += 8;
  }
}


// ===== 86958c std::vector<vox::PriorityBank,vox::SAllocator<vox::PriorityBank,(vox::VoxMemHint)0>>::push_back(vox::PriorityBank const&) =====
void __fastcall std::vector<vox::PriorityBank,vox::SAllocator<vox::PriorityBank,(vox::VoxMemHint)0>>::push_back(
        int a1,
        _DWORD *a2)
{
  _DWORD *v2; // r8
  unsigned int v5; // r2
  unsigned int v6; // r1
  size_t v7; // r7
  _DWORD *v8; // r6
  _DWORD *v9; // r0
  _DWORD *v10; // r8
  vox::PriorityBank *v11; // r5
  vox::PriorityBank *v12; // r10

  v2 = *(_DWORD **)(a1 + 4);
  if ( v2 == *(_DWORD **)(a1 + 8) )
  {
    v5 = -1431655765 * (((int)v2 - *(_DWORD *)a1) >> 3);
    if ( v5 )
      v6 = 1431655766 * (((int)v2 - *(_DWORD *)a1) >> 3);
    else
      v6 = 1;
    if ( v6 > 0xAAAAAAA || v5 > v6 )
      v7 = -4;
    else
      v7 = 6 * v6;
    v8 = VoxAlloc(v7 * 4, 0);
    v9 = std::priv::__ucopy<vox::PriorityBank *,vox::PriorityBank *,int>(*(_DWORD **)a1, (int)v2, v8);
    *v9 = *a2;
    v10 = v9 + 6;
    v9[1] = a2[1];
    v9[2] = a2[2];
    std::vector<vox::PriorityBankElement,vox::SAllocator<vox::PriorityBankElement,(vox::VoxMemHint)0>>::vector(
      v9 + 3,
      a2 + 3);
    v11 = *(vox::PriorityBank **)(a1 + 4);
    v12 = *(vox::PriorityBank **)a1;
    if ( v11 != *(vox::PriorityBank **)a1 )
    {
      do
      {
        v11 = (vox::PriorityBank *)((char *)v11 - 24);
        vox::PriorityBank::~PriorityBank(v11);
      }
      while ( v12 != v11 );
      v12 = *(vox::PriorityBank **)a1;
    }
    VoxFree(v12);
    *(_DWORD *)(a1 + 8) = &v8[v7];
    *(_DWORD *)a1 = v8;
    *(_DWORD *)(a1 + 4) = v10;
  }
  else
  {
    *v2 = *a2;
    v2[1] = a2[1];
    v2[2] = a2[2];
    std::vector<vox::PriorityBankElement,vox::SAllocator<vox::PriorityBankElement,(vox::VoxMemHint)0>>::vector(
      v2 + 3,
      a2 + 3);
    *(_DWORD *)(a1 + 4) += 24;
  }
}


// ===== 8696d0 vox::PriorityBankManager::AddPriorityBank(int,int,vox::PriorityBankBehavior) =====
int __fastcall vox::PriorityBankManager::AddPriorityBank(pthread_mutex_t *a1, int a2, unsigned int a3, int a4)
{
  pthread_mutex_t *v4; // r5
  volatile int value; // r3
  int v10; // r2
  int v11; // r1
  int v12; // r6
  _DWORD v14[7]; // [sp+0h] [bp-1Ch] BYREF

  v4 = a1 + 4;
  vox::Mutex::Lock(a1 + 4);
  v14[0] = -2147483647;
  v14[1] = 0x7FFFFFFF;
  v14[2] = 3;
  memset(&v14[3], 0, 12);
  std::vector<vox::PriorityBank,vox::SAllocator<vox::PriorityBank,(vox::VoxMemHint)0>>::push_back((int)&a1[1], v14);
  vox::PriorityBank::~PriorityBank((vox::PriorityBank *)v14);
  value = a1[1].value;
  v10 = (a1[2].value - value) >> 3;
  v11 = a1->value + 1;
  a1->value = v11;
  v12 = -1431655765 * v10 - 1;
  if ( v11 == -1431655765 * v10 )
  {
    *(_DWORD *)(value + 24 * v12) = a2;
    *(_DWORD *)(a1[1].value + 24 * v12 + 4) = a3;
    *(_DWORD *)(a1[1].value + 24 * v12 + 8) = a4;
    std::vector<vox::PriorityBankElement,vox::SAllocator<vox::PriorityBankElement,(vox::VoxMemHint)0>>::reserve(
      (int *)(a1[1].value + 24 * v12 + 12),
      a3);
  }
  else
  {
    v12 = -1;
  }
  vox::Mutex::Unlock(v4);
  return v12;
}


// ===== 8697bc vox::PriorityBankManager::PriorityBankManager(int) =====
vox::PriorityBankManager *__fastcall vox::PriorityBankManager::PriorityBankManager(
        vox::PriorityBankManager *this,
        int a2)
{
  int v3; // r4
  vox::PriorityBank **v4; // r8
  _DWORD v6[7]; // [sp+0h] [bp-1Ch] BYREF

  v3 = 0;
  *(_DWORD *)this = a2;
  *((_DWORD *)this + 1) = 0;
  *((_DWORD *)this + 2) = 0;
  *((_DWORD *)this + 3) = 0;
  v4 = (vox::PriorityBank **)((char *)this + 4);
  vox::Mutex::Mutex((vox::PriorityBankManager *)((char *)this + 16));
  std::vector<vox::PriorityBank,vox::SAllocator<vox::PriorityBank,(vox::VoxMemHint)0>>::reserve(v4, *(_DWORD *)this);
  if ( *(int *)this > 0 )
  {
    do
    {
      v6[0] = -2147483647;
      v6[1] = 0x7FFFFFFF;
      v6[2] = 3;
      memset(&v6[3], 0, 12);
      std::vector<vox::PriorityBank,vox::SAllocator<vox::PriorityBank,(vox::VoxMemHint)0>>::push_back((int)v4, v6);
      vox::PriorityBank::~PriorityBank((vox::PriorityBank *)v6);
      ++v3;
    }
    while ( *(_DWORD *)this > v3 );
  }
  return this;
}


// ===== 869858 vox::PriorityBankManager::PriorityBankManager(void) =====
vox::PriorityBankManager *__fastcall vox::PriorityBankManager::PriorityBankManager(vox::PriorityBankManager *this)
{
  _BYTE v3[24]; // [sp+4h] [bp-18h] BYREF

  *((_DWORD *)this + 3) = 0;
  *((_DWORD *)this + 1) = 0;
  *((_DWORD *)this + 2) = 0;
  vox::Mutex::Mutex((vox::PriorityBankManager *)((char *)this + 16));
  vox::PriorityBankManager::PriorityBankManager((vox::PriorityBankManager *)v3, 1);
  vox::PriorityBankManager::~PriorityBankManager((vox::PriorityBankManager *)v3);
  return this;
}


// ===== 8698a0 vox::PriorityBankManager::PriorityBankManager(void) =====
vox::PriorityBankManager *__fastcall vox::PriorityBankManager::PriorityBankManager(vox::PriorityBankManager *this)
{
  _BYTE v3[24]; // [sp+4h] [bp-18h] BYREF

  *((_DWORD *)this + 3) = 0;
  *((_DWORD *)this + 1) = 0;
  *((_DWORD *)this + 2) = 0;
  vox::Mutex::Mutex((vox::PriorityBankManager *)((char *)this + 16));
  vox::PriorityBankManager::PriorityBankManager((vox::PriorityBankManager *)v3, 1);
  vox::PriorityBankManager::~PriorityBankManager((vox::PriorityBankManager *)v3);
  return this;
}


// ===== 8698e8 vox::PriorityBankManager::PriorityBankManager(int) =====
vox::PriorityBankManager *__fastcall vox::PriorityBankManager::PriorityBankManager(
        vox::PriorityBankManager *this,
        int a2)
{
  int v3; // r4
  vox::PriorityBank **v4; // r8
  _DWORD v6[7]; // [sp+0h] [bp-1Ch] BYREF

  v3 = 0;
  *(_DWORD *)this = a2;
  *((_DWORD *)this + 1) = 0;
  *((_DWORD *)this + 2) = 0;
  *((_DWORD *)this + 3) = 0;
  v4 = (vox::PriorityBank **)((char *)this + 4);
  vox::Mutex::Mutex((vox::PriorityBankManager *)((char *)this + 16));
  std::vector<vox::PriorityBank,vox::SAllocator<vox::PriorityBank,(vox::VoxMemHint)0>>::reserve(v4, *(_DWORD *)this);
  if ( *(int *)this > 0 )
  {
    do
    {
      v6[0] = -2147483647;
      v6[1] = 0x7FFFFFFF;
      v6[2] = 3;
      memset(&v6[3], 0, 12);
      std::vector<vox::PriorityBank,vox::SAllocator<vox::PriorityBank,(vox::VoxMemHint)0>>::push_back((int)v4, v6);
      vox::PriorityBank::~PriorityBank((vox::PriorityBank *)v6);
      ++v3;
    }
    while ( *(_DWORD *)this > v3 );
  }
  return this;
}


// ===== 869984 vox::Handlable::~Handlable() =====
void __fastcall vox::Handlable::~Handlable(vox::Handlable *this)
{
  *(_DWORD *)this = off_9934D8;
  vox::Mutex::~Mutex((vox::Handlable *)((char *)this + 24));
  LC_API_FREE_0(this);
}


// ===== 8699c0 vox::EmitterObj::~EmitterObj() =====
void __fastcall vox::EmitterObj::~EmitterObj(vox::EmitterObj *this)
{
  void *v2; // r0

  v2 = *((void **)this + 61);
  *(_DWORD *)this = off_9934C0;
  if ( v2 )
    VoxFree(v2);
  *(_DWORD *)this = off_9934D8;
  vox::Mutex::~Mutex((vox::EmitterObj *)((char *)this + 24));
}


// ===== 869a1c vox::EmitterObj::~EmitterObj() =====
void __fastcall vox::EmitterObj::~EmitterObj(vox::EmitterObj *this)
{
  vox::EmitterObj::~EmitterObj(this);
  LC_API_FREE_0(this);
}


// ===== 869a38 vox::EmitterObj::~EmitterObj() =====
void __fastcall vox::EmitterObj::~EmitterObj(vox::EmitterObj *this)
{
  void *v2; // r0

  v2 = *((void **)this + 61);
  *(_DWORD *)this = off_9934C0;
  if ( v2 )
    VoxFree(v2);
  *(_DWORD *)this = off_9934D8;
  vox::Mutex::~Mutex((vox::EmitterObj *)((char *)this + 24));
}


// ===== 869a94 vox::VoxEngineInternal::VoxEngineInternal(void) =====
vox::VoxEngineInternal *__fastcall vox::VoxEngineInternal::VoxEngineInternal(vox::VoxEngineInternal *this)
{
  char *v2; // r3
  int v3; // lr
  _DWORD *v4; // r12
  _BYTE *v5; // r12
  vox::PriorityBankManager *v6; // r5

  *(_DWORD *)this = off_993488;
  *((_DWORD *)this + 3) = 0;
  *((_BYTE *)this + 8) = 0;
  *((_DWORD *)this + 5) = (char *)this + 8;
  *((_DWORD *)this + 4) = (char *)this + 8;
  *((_DWORD *)this + 6) = 0;
  *((_QWORD *)this + 4) = 1;
  *((_DWORD *)this + 11) = 0;
  *((_BYTE *)this + 40) = 0;
  *((_DWORD *)this + 13) = (char *)this + 40;
  *((_DWORD *)this + 12) = (char *)this + 40;
  *((_DWORD *)this + 14) = 0;
  *((_QWORD *)this + 8) = 1;
  *((_DWORD *)this + 18) = 0;
  *((_DWORD *)this + 19) = 0;
  *((_DWORD *)this + 20) = 0;
  *((_DWORD *)this + 21) = 0;
  *((_DWORD *)this + 22) = 0;
  vox::Mutex::Mutex((vox::VoxEngineInternal *)((char *)this + 92));
  *((_DWORD *)this + 24) = 0;
  *((_DWORD *)this + 25) = 0;
  vox::Mutex::Mutex((vox::VoxEngineInternal *)((char *)this + 104));
  *((_DWORD *)this + 28) = (char *)this + 108;
  *((_DWORD *)this + 27) = (char *)this + 108;
  vox::Mutex::Mutex((vox::VoxEngineInternal *)((char *)this + 116));
  *((_DWORD *)this + 31) = 0;
  *((_BYTE *)this + 120) = 0;
  *((_DWORD *)this + 33) = (char *)this + 120;
  *((_DWORD *)this + 32) = (char *)this + 120;
  *((_DWORD *)this + 34) = 0;
  *((_QWORD *)this + 18) = 1;
  *((_DWORD *)this + 39) = 0;
  *((_BYTE *)this + 152) = 0;
  *((_DWORD *)this + 41) = (char *)this + 152;
  *((_DWORD *)this + 40) = (char *)this + 152;
  *((_QWORD *)this + 22) = 1;
  *((_DWORD *)this + 42) = 0;
  *((_DWORD *)this + 46) = 0;
  *((_DWORD *)this + 47) = 0;
  *((_DWORD *)this + 48) = 0;
  *((_DWORD *)this + 49) = 0;
  *((_DWORD *)this + 50) = 0;
  vox::Mutex::Mutex((vox::VoxEngineInternal *)((char *)this + 204));
  *((_DWORD *)this + 53) = 0;
  *((_DWORD *)this + 52) = 0;
  vox::Mutex::Mutex((vox::VoxEngineInternal *)((char *)this + 216));
  *((_DWORD *)this + 56) = 0;
  *((_DWORD *)this + 57) = 1065353216;
  *((_DWORD *)this + 58) = 0;
  *((_DWORD *)this + 59) = 0;
  *((_BYTE *)this + 240) = 1;
  v2 = (char *)this + 244;
  do
  {
    *(_DWORD *)v2 = 0;
    *((_DWORD *)v2 + 1) = 1065353216;
    *((_DWORD *)v2 + 2) = 0;
    *((_DWORD *)v2 + 3) = 0;
    v2[16] = 1;
    v2 += 20;
  }
  while ( v2 != (char *)this + 884 );
  vox::Mutex::Mutex((vox::VoxEngineInternal *)((char *)this + 1012));
  *((_DWORD *)this + 272) = (char *)this + 1084;
  *((_DWORD *)this + 271) = (char *)this + 1084;
  *((_DWORD *)this + 254) = 0;
  *((_DWORD *)this + 255) = 0;
  *((_DWORD *)this + 256) = 0;
  *((_DWORD *)this + 257) = 0;
  *((_DWORD *)this + 258) = 0;
  *((_DWORD *)this + 259) = 0;
  *((_DWORD *)this + 260) = 0;
  *((_DWORD *)this + 261) = 0;
  *((_DWORD *)this + 262) = 0;
  *((_DWORD *)this + 263) = 0;
  *((_DWORD *)this + 264) = 0;
  *((_DWORD *)this + 265) = 0;
  *((_DWORD *)this + 305) = 0;
  *((_DWORD *)this + 338) = 0;
  std::vector<vox::EmitterObj *,vox::SAllocator<vox::EmitterObj *,(vox::VoxMemHint)0>>::reserve((int)this + 184);
  std::vector<vox::DataObj *,vox::SAllocator<vox::DataObj *,(vox::VoxMemHint)0>>::reserve((int)this + 72);
  *((_DWORD *)this + 56) = 0;
  *((_DWORD *)this + 57) = 1065353216;
  *((_DWORD *)this + 58) = 0;
  *((_DWORD *)this + 59) = 0;
  v3 = 0;
  *((_BYTE *)this + 240) = 0;
  do
  {
    v4 = (_DWORD *)((char *)this + 20 * v3 + 244);
    *v4 = 0;
    v4[1] = 1065353216;
    v4[2] = 0;
    v4[3] = 0;
    v5 = (char *)this + 20 * v3++ + 260;
    *v5 = 0;
  }
  while ( v3 != 32 );
  *((_BYTE *)this + 1076) = 0;
  *((_BYTE *)this + 1077) = 0;
  *((_BYTE *)this + 1078) = 0;
  *((_BYTE *)this + 1079) = 0;
  *((_BYTE *)this + 1080) = 0;
  *((_BYTE *)this + 1081) = 0;
  vox::VoxEngineInternal::_SetDefault3DParameters(this);
  v6 = (vox::PriorityBankManager *)VoxAlloc(0x14u, 0);
  vox::PriorityBankManager::PriorityBankManager(v6, 8);
  *((_DWORD *)this + 55) = v6;
  *((_DWORD *)this + 339) = 0;
  LC_API_MEMSET_0((char *)this + 1360, 0, 0x40u);
  *((_DWORD *)this + 359) = 0;
  *((_DWORD *)this + 356) = 0;
  *((_DWORD *)this + 357) = 0;
  *((_DWORD *)this + 358) = 0;
  return this;
}


// ===== 869d3c vox::VoxEngineInternal::GetVoxEngineInternal(void) =====
int __fastcall vox::VoxEngineInternal::GetVoxEngineInternal(vox::VoxEngineInternal *this)
{
  vox::VoxEngineInternal *v2; // r5

  if ( vox::VoxEngineInternal::s_voxEngineInternal )
    return vox::VoxEngineInternal::s_voxEngineInternal;
  v2 = (vox::VoxEngineInternal *)VoxAlloc(0x5A0u, 0);
  vox::VoxEngineInternal::VoxEngineInternal(v2);
  vox::VoxEngineInternal::s_voxEngineInternal = (int)v2;
  return (int)v2;
}


// ===== 869d8c vox::VoxEngineInternal::VoxEngineInternal(void) =====
vox::VoxEngineInternal *__fastcall vox::VoxEngineInternal::VoxEngineInternal(vox::VoxEngineInternal *this)
{
  char *v2; // r3
  int v3; // lr
  _DWORD *v4; // r12
  _BYTE *v5; // r12
  vox::PriorityBankManager *v6; // r5

  *(_DWORD *)this = off_993488;
  *((_DWORD *)this + 3) = 0;
  *((_BYTE *)this + 8) = 0;
  *((_DWORD *)this + 5) = (char *)this + 8;
  *((_DWORD *)this + 4) = (char *)this + 8;
  *((_DWORD *)this + 6) = 0;
  *((_QWORD *)this + 4) = 1;
  *((_DWORD *)this + 11) = 0;
  *((_BYTE *)this + 40) = 0;
  *((_DWORD *)this + 13) = (char *)this + 40;
  *((_DWORD *)this + 12) = (char *)this + 40;
  *((_DWORD *)this + 14) = 0;
  *((_QWORD *)this + 8) = 1;
  *((_DWORD *)this + 18) = 0;
  *((_DWORD *)this + 19) = 0;
  *((_DWORD *)this + 20) = 0;
  *((_DWORD *)this + 21) = 0;
  *((_DWORD *)this + 22) = 0;
  vox::Mutex::Mutex((vox::VoxEngineInternal *)((char *)this + 92));
  *((_DWORD *)this + 24) = 0;
  *((_DWORD *)this + 25) = 0;
  vox::Mutex::Mutex((vox::VoxEngineInternal *)((char *)this + 104));
  *((_DWORD *)this + 28) = (char *)this + 108;
  *((_DWORD *)this + 27) = (char *)this + 108;
  vox::Mutex::Mutex((vox::VoxEngineInternal *)((char *)this + 116));
  *((_DWORD *)this + 31) = 0;
  *((_BYTE *)this + 120) = 0;
  *((_DWORD *)this + 33) = (char *)this + 120;
  *((_DWORD *)this + 32) = (char *)this + 120;
  *((_DWORD *)this + 34) = 0;
  *((_QWORD *)this + 18) = 1;
  *((_DWORD *)this + 39) = 0;
  *((_BYTE *)this + 152) = 0;
  *((_DWORD *)this + 41) = (char *)this + 152;
  *((_DWORD *)this + 40) = (char *)this + 152;
  *((_QWORD *)this + 22) = 1;
  *((_DWORD *)this + 42) = 0;
  *((_DWORD *)this + 46) = 0;
  *((_DWORD *)this + 47) = 0;
  *((_DWORD *)this + 48) = 0;
  *((_DWORD *)this + 49) = 0;
  *((_DWORD *)this + 50) = 0;
  vox::Mutex::Mutex((vox::VoxEngineInternal *)((char *)this + 204));
  *((_DWORD *)this + 53) = 0;
  *((_DWORD *)this + 52) = 0;
  vox::Mutex::Mutex((vox::VoxEngineInternal *)((char *)this + 216));
  *((_DWORD *)this + 56) = 0;
  *((_DWORD *)this + 57) = 1065353216;
  *((_DWORD *)this + 58) = 0;
  *((_DWORD *)this + 59) = 0;
  *((_BYTE *)this + 240) = 1;
  v2 = (char *)this + 244;
  do
  {
    *(_DWORD *)v2 = 0;
    *((_DWORD *)v2 + 1) = 1065353216;
    *((_DWORD *)v2 + 2) = 0;
    *((_DWORD *)v2 + 3) = 0;
    v2[16] = 1;
    v2 += 20;
  }
  while ( v2 != (char *)this + 884 );
  vox::Mutex::Mutex((vox::VoxEngineInternal *)((char *)this + 1012));
  *((_DWORD *)this + 272) = (char *)this + 1084;
  *((_DWORD *)this + 271) = (char *)this + 1084;
  *((_DWORD *)this + 254) = 0;
  *((_DWORD *)this + 255) = 0;
  *((_DWORD *)this + 256) = 0;
  *((_DWORD *)this + 257) = 0;
  *((_DWORD *)this + 258) = 0;
  *((_DWORD *)this + 259) = 0;
  *((_DWORD *)this + 260) = 0;
  *((_DWORD *)this + 261) = 0;
  *((_DWORD *)this + 262) = 0;
  *((_DWORD *)this + 263) = 0;
  *((_DWORD *)this + 264) = 0;
  *((_DWORD *)this + 265) = 0;
  *((_DWORD *)this + 305) = 0;
  *((_DWORD *)this + 338) = 0;
  std::vector<vox::EmitterObj *,vox::SAllocator<vox::EmitterObj *,(vox::VoxMemHint)0>>::reserve((int)this + 184);
  std::vector<vox::DataObj *,vox::SAllocator<vox::DataObj *,(vox::VoxMemHint)0>>::reserve((int)this + 72);
  *((_DWORD *)this + 56) = 0;
  *((_DWORD *)this + 57) = 1065353216;
  *((_DWORD *)this + 58) = 0;
  *((_DWORD *)this + 59) = 0;
  v3 = 0;
  *((_BYTE *)this + 240) = 0;
  do
  {
    v4 = (_DWORD *)((char *)this + 20 * v3 + 244);
    *v4 = 0;
    v4[1] = 1065353216;
    v4[2] = 0;
    v4[3] = 0;
    v5 = (char *)this + 20 * v3++ + 260;
    *v5 = 0;
  }
  while ( v3 != 32 );
  *((_BYTE *)this + 1076) = 0;
  *((_BYTE *)this + 1077) = 0;
  *((_BYTE *)this + 1078) = 0;
  *((_BYTE *)this + 1079) = 0;
  *((_BYTE *)this + 1080) = 0;
  *((_BYTE *)this + 1081) = 0;
  vox::VoxEngineInternal::_SetDefault3DParameters(this);
  v6 = (vox::PriorityBankManager *)VoxAlloc(0x14u, 0);
  vox::PriorityBankManager::PriorityBankManager(v6, 8);
  *((_DWORD *)this + 55) = v6;
  *((_DWORD *)this + 339) = 0;
  LC_API_MEMSET_0((char *)this + 1360, 0, 0x40u);
  *((_DWORD *)this + 359) = 0;
  *((_DWORD *)this + 356) = 0;
  *((_DWORD *)this + 357) = 0;
  *((_DWORD *)this + 358) = 0;
  return this;
}


// ===== 86a034 vox::VoxEngineInternal::ReleaseDatasource(uint) =====
int __fastcall vox::VoxEngineInternal::ReleaseDatasource(pthread_mutex_t *this, unsigned int a2)
{
  vox::AccessController *v3; // r8
  _DWORD *v5; // r3
  char *v6; // r10
  int v7; // r4
  _DWORD *v8; // r2
  _DWORD *v9; // r3
  int v10; // r4
  _DWORD *v11; // r2
  signed int v13; // r1
  int v14; // r1
  signed int v15; // r1
  int v16; // r1
  _DWORD *v17; // r0
  _DWORD *v18; // r3
  _DWORD *v19; // r0
  _DWORD *v20; // r3
  _DWORD *v21; // [sp+0h] [bp-10h] BYREF
  _DWORD *v22; // [sp+4h] [bp-Ch] BYREF
  _DWORD *v23; // [sp+8h] [bp-8h] BYREF
  _DWORD *v24; // [sp+Ch] [bp-4h] BYREF

  v3 = (vox::AccessController *)(this + 21);
  vox::AccessController::GetReadAccess((vox::AccessController *)(this + 21));
  vox::HandlableContainer::begin(&v24, (int)(this + 2));
  vox::HandlableContainer::end(&v23, (int)(this + 2));
  v5 = v24;
  v6 = (char *)(this + 27);
  while ( v23 != v5 )
  {
    v7 = v5[6];
    if ( vox::DataObj::IsGroup((pthread_mutex_t *)v7, a2) )
    {
      vox::DataObj::NeedToDie((pthread_mutex_t *)v7);
      vox::Mutex::Lock(this + 29);
      v13 = *(unsigned __int8 *)(v7 + 76);
      if ( !*(_BYTE *)(v7 + 76) )
      {
        *(_BYTE *)(v7 + 76) = 1;
        v19 = VoxAlloc(0xCu, v13);
        v19[2] = v7;
        v20 = *((_DWORD **)this + 28);
        *v19 = v6;
        v19[1] = v20;
        *v20 = v19;
        *((_DWORD *)this + 28) = v19;
      }
      vox::Mutex::Unlock(this + 29);
      v5 = v24;
      v8 = (_DWORD *)v24[3];
      if ( !v8 )
      {
LABEL_21:
        v14 = v5[1];
        if ( v5 == *(_DWORD **)(v14 + 12) )
        {
          do
          {
            v5 = (_DWORD *)v14;
            v14 = *(_DWORD *)(v14 + 4);
          }
          while ( *(_DWORD **)(v14 + 12) == v5 );
          v8 = (_DWORD *)v5[3];
        }
        if ( (_DWORD *)v14 != v8 )
          v5 = (_DWORD *)v14;
        v24 = v5;
        continue;
      }
    }
    else
    {
      v5 = v24;
      v8 = (_DWORD *)v24[3];
      if ( !v8 )
        goto LABEL_21;
    }
    while ( v8[2] )
      v8 = (_DWORD *)v8[2];
    v5 = v8;
    v24 = v8;
  }
  vox::AccessController::ReleaseReadAccess(v3);
  vox::AccessController::GetReadAccess((vox::AccessController *)(this + 24));
  vox::HandlableContainer::begin(&v22, (int)(this + 10));
  v24 = v22;
  vox::HandlableContainer::end(&v21, (int)(this + 10));
  v9 = v24;
  v23 = v21;
  while ( v9 != v23 )
  {
    v10 = v9[6];
    if ( vox::DataObj::IsGroup((pthread_mutex_t *)v10, a2) )
    {
      vox::DataObj::NeedToDie((pthread_mutex_t *)v10);
      vox::Mutex::Lock(this + 29);
      v15 = *(unsigned __int8 *)(v10 + 76);
      if ( !*(_BYTE *)(v10 + 76) )
      {
        *(_BYTE *)(v10 + 76) = 1;
        v17 = VoxAlloc(0xCu, v15);
        v17[2] = v10;
        v18 = *((_DWORD **)this + 28);
        *v17 = v6;
        v17[1] = v18;
        *v18 = v17;
        *((_DWORD *)this + 28) = v17;
      }
      vox::Mutex::Unlock(this + 29);
      v9 = v24;
      v11 = (_DWORD *)v24[3];
      if ( !v11 )
      {
LABEL_30:
        v16 = v9[1];
        if ( v9 == *(_DWORD **)(v16 + 12) )
        {
          do
          {
            v9 = (_DWORD *)v16;
            v16 = *(_DWORD *)(v16 + 4);
          }
          while ( *(_DWORD **)(v16 + 12) == v9 );
          v11 = (_DWORD *)v9[3];
        }
        if ( v11 != (_DWORD *)v16 )
          v9 = (_DWORD *)v16;
        v24 = v9;
        continue;
      }
    }
    else
    {
      v9 = v24;
      v11 = (_DWORD *)v24[3];
      if ( !v11 )
        goto LABEL_30;
    }
    while ( v11[2] )
      v11 = (_DWORD *)v11[2];
    v9 = v11;
    v24 = v11;
  }
  return vox::AccessController::ReleaseReadAccess((vox::AccessController *)(this + 24));
}


// ===== 86a2b4 std::vector<uchar *,vox::SAllocator<uchar *,(vox::VoxMemHint)0>>::operator=(std::vector<uchar *,vox::SAllocator<uchar *,(vox::VoxMemHint)0>> const&) =====
int __fastcall std::vector<unsigned char *,vox::SAllocator<unsigned char *,(vox::VoxMemHint)0>>::operator=(
        int a1,
        int a2)
{
  _BYTE *v4; // r2
  _BYTE *v5; // r3
  _BYTE *v6; // r7
  signed int v7; // r12
  unsigned int v8; // r5
  _BYTE *v9; // r0
  unsigned int v10; // r1
  _BYTE *v12; // r1
  char *v13; // r7
  int v14; // r3
  int v15; // [sp+4h] [bp-8h] BYREF

  if ( a2 != a1 )
  {
    v4 = *(_BYTE **)a2;
    v5 = *(_BYTE **)(a2 + 4);
    v6 = *(_BYTE **)a1;
    v7 = (signed int)&v5[-*(_DWORD *)a2];
    v8 = v7 >> 2;
    if ( v7 >> 2 > (unsigned int)((*(_DWORD *)(a1 + 8) - *(_DWORD *)a1) >> 2) )
    {
      v15 = (int)&v5[-*(_DWORD *)a2] >> 2;
      v13 = (char *)std::vector<unsigned char *,vox::SAllocator<unsigned char *,(vox::VoxMemHint)0>>::_M_allocate_and_copy<unsigned char * const*>(
                      a1,
                      &v15,
                      v4,
                      v5);
      VoxFree(*(void **)a1);
      v14 = v15;
      *(_DWORD *)a1 = v13;
      *(_DWORD *)(a1 + 8) = &v13[4 * v14];
      *(_DWORD *)(a1 + 4) = &v13[4 * v8];
      return a1;
    }
    v9 = *(_BYTE **)(a1 + 4);
    v10 = (v9 - v6) >> 2;
    if ( v8 > v10 )
    {
      v12 = &v4[4 * v10];
      if ( v12 != v4 )
      {
        memmove(v6, v4, v12 - v4);
        v9 = *(_BYTE **)(a1 + 4);
        v6 = *(_BYTE **)a1;
        v5 = *(_BYTE **)(a2 + 4);
        v12 = (_BYTE *)(*(_DWORD *)a2 + ((unsigned int)&v9[-*(_DWORD *)a1] & 0xFFFFFFFC));
      }
      if ( v12 != v5 )
      {
        memcpy(v9, v12, v5 - v12);
        *(_DWORD *)(a1 + 4) = *(_DWORD *)a1 + 4 * v8;
        return a1;
      }
    }
    else if ( v7 )
    {
      memmove(v6, v4, v7);
      *(_DWORD *)(a1 + 4) = *(_DWORD *)a1 + 4 * v8;
      return a1;
    }
    *(_DWORD *)(a1 + 4) = &v6[4 * v8];
  }
  return a1;
}


// ===== 86a3c8 vox::PriorityBankManager::Update(void) =====
int __fastcall vox::PriorityBankManager::Update(pthread_mutex_t *this)
{
  pthread_mutex_t *v1; // r10
  pthread_mutex_t v3; // r2
  int v4; // r6
  volatile int v5; // r8
  int v6; // r3
  pthread_mutex_t **v7; // r5
  pthread_mutex_t **v8; // r4
  int v9; // r12
  pthread_mutex_t **v10; // r3
  int v11; // r2
  pthread_mutex_t **v12; // r3
  pthread_mutex_t *v13; // r1
  int v15; // r2
  pthread_mutex_t **v16; // r3
  pthread_mutex_t *v17; // r1

  v1 = this + 4;
  vox::Mutex::Lock(this + 4);
  v3.value = this->value;
  if ( this->value > 0 )
  {
    v4 = 0;
    v5 = 0;
    while ( 1 )
    {
      v6 = *((_DWORD *)this + 1) + v4;
      v7 = *(pthread_mutex_t ***)(v6 + 16);
      v8 = *(pthread_mutex_t ***)(v6 + 12);
      if ( v8 != v7 )
        break;
LABEL_16:
      ++v5;
      v4 += 24;
      if ( v3.value <= v5 )
        return vox::Mutex::Unlock(v1);
    }
    while ( *v8 )
    {
      if ( vox::EmitterObj::IsPlaying(*v8) )
      {
        v8 += 2;
        if ( v7 == v8 )
        {
LABEL_15:
          v3.value = this->value;
          goto LABEL_16;
        }
      }
      else
      {
        LOBYTE((*v8)[13].value) = 0;
        v9 = *((_DWORD *)this + 1) + v4;
        v10 = *(pthread_mutex_t ***)(v9 + 16);
        if ( v8 + 2 == v10 )
          goto LABEL_14;
        v11 = ((char *)v10 - (char *)(v8 + 2)) >> 3;
        if ( v11 <= 0 )
          goto LABEL_14;
        v12 = v8;
        do
        {
          v13 = v12[3];
          --v11;
          *v12 = v12[2];
          v12[1] = v13;
          v12 += 2;
        }
        while ( v11 );
LABEL_13:
        v10 = *(pthread_mutex_t ***)(v9 + 16);
LABEL_14:
        *(_DWORD *)(v9 + 16) = v10 - 2;
        v7 = *(pthread_mutex_t ***)(*((_DWORD *)this + 1) + v4 + 16);
        if ( v7 == v8 )
          goto LABEL_15;
      }
    }
    v9 = *((_DWORD *)this + 1) + v4;
    v10 = *(pthread_mutex_t ***)(v9 + 16);
    if ( v8 + 2 == v10 )
      goto LABEL_14;
    v15 = ((char *)v10 - (char *)(v8 + 2)) >> 3;
    if ( v15 <= 0 )
      goto LABEL_14;
    v16 = v8;
    do
    {
      v17 = v16[3];
      --v15;
      *v16 = v16[2];
      v16[1] = v17;
      v16 += 2;
    }
    while ( v15 );
    goto LABEL_13;
  }
  return vox::Mutex::Unlock(v1);
}


// ===== 86a504 vox::HandlableContainer::Detach(long long) =====
int __fastcall vox::HandlableContainer::Detach(vox::HandlableContainer *this, __int64 a2)
{
  vox::HandlableContainer *v3; // r12
  vox::HandlableContainer *v4; // r4
  vox::HandlableContainer *v5; // r1
  int v6; // r5
  unsigned __int8 *v7; // r0

  v3 = *((vox::HandlableContainer **)this + 1);
  v4 = this;
  if ( !v3 )
  {
LABEL_9:
    v3 = v4;
    goto LABEL_10;
  }
  while ( *((_QWORD *)v3 + 2) >= a2 )
  {
    v5 = *((vox::HandlableContainer **)v3 + 2);
    this = v3;
    if ( !v5 )
      goto LABEL_7;
LABEL_4:
    v3 = v5;
  }
  v5 = *((vox::HandlableContainer **)v3 + 3);
  v3 = this;
  if ( v5 )
    goto LABEL_4;
LABEL_7:
  if ( v4 == v3 )
    return 0;
  if ( *((_QWORD *)v3 + 2) > a2 )
    goto LABEL_9;
LABEL_10:
  if ( v4 == v3 )
    return 0;
  v6 = *((_DWORD *)v3 + 6);
  v7 = std::priv::_Rb_global<bool>::_Rebalance_for_erase(
         (unsigned __int8 *)v3,
         (unsigned __int8 **)v4 + 1,
         (unsigned __int8 **)v4 + 2,
         (unsigned __int8 **)v4 + 3);
  VoxFree(v7);
  --*((_DWORD *)v4 + 4);
  return v6;
}


// ===== 86a5d0 vox::VoxEngineInternal::DetachEmitterObject(long long) =====
int __fastcall vox::VoxEngineInternal::DetachEmitterObject(vox::VoxEngineInternal *this, __int64 a2)
{
  int result; // r0
  int v6; // r8

  result = vox::HandlableContainer::Detach((vox::VoxEngineInternal *)((char *)this + 120), a2);
  if ( !result )
  {
    vox::AccessController::GetWriteAccess((vox::VoxEngineInternal *)((char *)this + 208));
    v6 = vox::HandlableContainer::Detach((vox::VoxEngineInternal *)((char *)this + 152), a2);
    vox::AccessController::ReleaseWriteAccess((vox::VoxEngineInternal *)((char *)this + 208));
    return v6;
  }
  return result;
}


// ===== 86a628 vox::VoxEngineInternal::ReleaseDatasource(vox::DataObj *) =====
void __fastcall vox::VoxEngineInternal::ReleaseDatasource(vox::VoxEngineInternal *this, vox::DataObj *a2)
{
  vox::DataObj *v4; // r4
  vox::AccessController *v5; // r7
  vox::DataObj *v6; // r3
  int v7; // r8
  void (__fastcall ***v8)(_DWORD); // r4
  void *v9; // r4

  if ( a2 )
  {
    v4 = (vox::DataObj *)((char *)a2 + 64);
    v5 = (vox::VoxEngineInternal *)((char *)this + 196);
    ++*((_DWORD *)this + *((_DWORD *)a2 + 5) + 340);
    v6 = *((vox::DataObj **)a2 + 16);
    if ( v6 != (vox::DataObj *)((char *)a2 + 64) )
    {
      do
      {
        do
          v6 = *(vox::DataObj **)v6;
        while ( v4 != v6 );
        vox::AccessController::GetWriteAccess(v5);
        v7 = vox::VoxEngineInternal::DetachEmitterObject(this, *(_QWORD *)(*((_DWORD *)a2 + 17) + 8));
        vox::AccessController::ReleaseWriteAccess(v5);
        (*(void (__fastcall **)(vox::VoxEngineInternal *, int))(*(_DWORD *)this + 32))(this, v7);
        v6 = *((vox::DataObj **)a2 + 16);
      }
      while ( v6 != v4 );
    }
    v8 = *((void (__fastcall ****)(_DWORD))a2 + 15);
    if ( v8 )
    {
      (**v8)(*((_DWORD *)a2 + 15));
      VoxFree(v8);
    }
    v9 = *((void **)a2 + 14);
    if ( v9 )
    {
      Destruct<vox::StreamInterface>(*((int (__fastcall ****)(_DWORD))a2 + 14));
      VoxFree(v9);
    }
    (**(void (__fastcall ***)(vox::DataObj *))a2)(a2);
    VoxFree(a2);
  }
}


// ===== 86a710 vox::VoxEngineInternal::_ReleaseAllDatasource(void) =====
void __fastcall vox::VoxEngineInternal::_ReleaseAllDatasource(vox::VoxEngineInternal *this)
{
  char *v1; // r5
  int v3; // r3
  int v4; // r2
  char *v5; // r5
  int v6; // r3
  int v7; // r2
  int v8; // r1
  int v9; // r1
  int v10; // [sp+0h] [bp-14h] BYREF
  int v11; // [sp+4h] [bp-10h] BYREF
  int v12; // [sp+8h] [bp-Ch] BYREF
  int v13; // [sp+Ch] [bp-8h] BYREF

  v1 = (char *)this + 8;
  vox::HandlableContainer::begin(&v13, (int)this + 8);
  vox::HandlableContainer::end(&v12, (int)v1);
  v3 = v13;
  while ( v3 != v12 )
  {
    vox::VoxEngineInternal::ReleaseDatasource(this, *(vox::DataObj **)(v3 + 24));
    v3 = v13;
    v4 = *(_DWORD *)(v13 + 12);
    if ( v4 )
    {
      while ( *(_DWORD *)(v4 + 8) )
        v4 = *(_DWORD *)(v4 + 8);
      v3 = v4;
      v13 = v4;
    }
    else
    {
      v8 = *(_DWORD *)(v13 + 4);
      if ( v13 == *(_DWORD *)(v8 + 12) )
      {
        do
        {
          v3 = v8;
          v8 = *(_DWORD *)(v8 + 4);
        }
        while ( *(_DWORD *)(v8 + 12) == v3 );
        v4 = *(_DWORD *)(v3 + 12);
      }
      if ( v4 != v8 )
        v3 = v8;
      v13 = v3;
    }
  }
  if ( *((_DWORD *)this + 6) )
  {
    std::priv::_Rb_tree<long long,vox::HandleIdCompStruct,std::pair<long long const,vox::Handlable *>,std::priv::_Select1st<std::pair<long long const,vox::Handlable *>>,std::priv::_MapTraitsT<std::pair<long long const,vox::Handlable *>>,vox::SAllocator<std::pair<long long,vox::Handlable *>,(vox::VoxMemHint)0>>::_M_erase(
      (int)v1,
      *((_DWORD **)this + 3));
    *((_DWORD *)this + 5) = v1;
    *((_DWORD *)this + 6) = 0;
    *((_DWORD *)this + 4) = v1;
    *((_DWORD *)this + 3) = 0;
  }
  v5 = (char *)this + 40;
  vox::HandlableContainer::begin(&v11, (int)this + 40);
  v13 = v11;
  vox::HandlableContainer::end(&v10, (int)this + 40);
  v6 = v13;
  v12 = v10;
  while ( v6 != v12 )
  {
    vox::VoxEngineInternal::ReleaseDatasource(this, *(vox::DataObj **)(v6 + 24));
    v6 = v13;
    v7 = *(_DWORD *)(v13 + 12);
    if ( v7 )
    {
      while ( *(_DWORD *)(v7 + 8) )
        v7 = *(_DWORD *)(v7 + 8);
      v6 = v7;
      v13 = v7;
    }
    else
    {
      v9 = *(_DWORD *)(v13 + 4);
      if ( v13 == *(_DWORD *)(v9 + 12) )
      {
        do
        {
          v6 = v9;
          v9 = *(_DWORD *)(v9 + 4);
        }
        while ( *(_DWORD *)(v9 + 12) == v6 );
        v7 = *(_DWORD *)(v6 + 12);
      }
      if ( v9 != v7 )
        v6 = v9;
      v13 = v6;
    }
  }
  if ( *((_DWORD *)this + 14) )
  {
    std::priv::_Rb_tree<long long,vox::HandleIdCompStruct,std::pair<long long const,vox::Handlable *>,std::priv::_Select1st<std::pair<long long const,vox::Handlable *>>,std::priv::_MapTraitsT<std::pair<long long const,vox::Handlable *>>,vox::SAllocator<std::pair<long long,vox::Handlable *>,(vox::VoxMemHint)0>>::_M_erase(
      (int)this + 40,
      *((_DWORD **)this + 11));
    *((_DWORD *)this + 14) = 0;
    *((_DWORD *)this + 13) = v5;
    *((_DWORD *)this + 12) = v5;
    *((_DWORD *)this + 11) = 0;
  }
}


// ===== 86a8dc vox::VoxEngineInternal::KillEmitter(vox::EmitterHandle &) =====
int __fastcall vox::VoxEngineInternal::KillEmitter(vox::VoxEngineInternal *this, vox::EmitterHandle *a2)
{
  vox::AccessController *v2; // r5
  __int64 v5; // r0
  int v6; // r6
  int result; // r0

  v2 = (vox::VoxEngineInternal *)((char *)this + 196);
  vox::AccessController::GetWriteAccess((vox::VoxEngineInternal *)((char *)this + 196));
  v5 = ((__int64 (__fastcall *)(vox::EmitterHandle *))*(_DWORD *)(*(_DWORD *)a2 + 8))(a2);
  v6 = vox::VoxEngineInternal::DetachEmitterObject(this, v5);
  result = vox::AccessController::ReleaseWriteAccess(v2);
  if ( v6 )
    return (*(int (__fastcall **)(vox::VoxEngineInternal *, int))(*(_DWORD *)this + 32))(this, v6);
  return result;
}


// ===== 86a940 vox::VoxEngineInternal::DetachDataObject(long long) =====
int __fastcall vox::VoxEngineInternal::DetachDataObject(vox::VoxEngineInternal *this, __int64 a2)
{
  int result; // r0
  int v6; // r8

  result = vox::HandlableContainer::Detach((vox::VoxEngineInternal *)((char *)this + 8), a2);
  if ( !result )
  {
    vox::AccessController::GetWriteAccess((vox::VoxEngineInternal *)((char *)this + 96));
    v6 = vox::HandlableContainer::Detach((vox::VoxEngineInternal *)((char *)this + 40), a2);
    vox::AccessController::ReleaseWriteAccess((vox::VoxEngineInternal *)((char *)this + 96));
    return v6;
  }
  return result;
}


// ===== 86a998 vox::VoxEngineInternal::UpdateSources(void) =====
void __fastcall vox::VoxEngineInternal::UpdateSources(vox::VoxEngineInternal *this)
{
  vox::AccessController *v2; // r4
  char *v3; // r7
  vox::VoxEngineInternal *v4; // r3
  int v5; // r7
  int v6; // r6
  int *v7; // r3
  int v8; // r2
  int *v9; // r1
  int v10; // r10

  if ( *((int *)this + 357) <= 0 )
  {
    v2 = (vox::VoxEngineInternal *)((char *)this + 84);
    vox::AccessController::GetWriteAccess((vox::VoxEngineInternal *)((char *)this + 84));
    vox::AccessController::GetWriteAccess((vox::VoxEngineInternal *)((char *)this + 96));
    if ( *((int *)this + 14) > 0 )
    {
      v3 = (char *)this + 40;
      vox::HandlableContainer::Merge(
        (vox::VoxEngineInternal *)((char *)this + 8),
        (vox::VoxEngineInternal *)((char *)this + 40));
      if ( *((_DWORD *)this + 14) )
      {
        std::priv::_Rb_tree<long long,vox::HandleIdCompStruct,std::pair<long long const,vox::Handlable *>,std::priv::_Select1st<std::pair<long long const,vox::Handlable *>>,std::priv::_MapTraitsT<std::pair<long long const,vox::Handlable *>>,vox::SAllocator<std::pair<long long,vox::Handlable *>,(vox::VoxMemHint)0>>::_M_erase(
          (int)this + 40,
          *((_DWORD **)this + 11));
        *((_DWORD *)this + 13) = v3;
        *((_DWORD *)this + 14) = 0;
        *((_DWORD *)this + 12) = v3;
        *((_DWORD *)this + 11) = 0;
      }
    }
    vox::AccessController::ReleaseWriteAccess((vox::VoxEngineInternal *)((char *)this + 96));
    vox::AccessController::ReleaseWriteAccess(v2);
    vox::Mutex::Lock((pthread_mutex_t *)this + 29);
    v4 = *((vox::VoxEngineInternal **)this + 27);
    if ( v4 == (vox::VoxEngineInternal *)((char *)this + 108) )
    {
      vox::Mutex::Unlock((pthread_mutex_t *)this + 29);
    }
    else
    {
      v5 = 0;
      do
      {
        v4 = *(vox::VoxEngineInternal **)v4;
        ++v5;
      }
      while ( (vox::VoxEngineInternal *)((char *)this + 108) != v4 );
      vox::Mutex::Unlock((pthread_mutex_t *)this + 29);
      v6 = 0;
      do
      {
        while ( 1 )
        {
          vox::AccessController::GetWriteAccess(v2);
          vox::Mutex::Lock((pthread_mutex_t *)this + 29);
          v7 = *((int **)this + 27);
          v8 = *v7;
          v9 = (int *)v7[1];
          v10 = v7[2];
          *v9 = *v7;
          *(_DWORD *)(v8 + 4) = v9;
          VoxFree(v7);
          vox::Mutex::Unlock((pthread_mutex_t *)this + 29);
          if ( !vox::DataObj::ShouldDie((pthread_mutex_t *)v10) )
            break;
          vox::VoxEngineInternal::DetachDataObject(this, *(_QWORD *)(v10 + 8));
          vox::AccessController::ReleaseWriteAccess(v2);
          ++v6;
          vox::VoxEngineInternal::ReleaseDatasource(this, (vox::DataObj *)v10);
          if ( v6 == v5 )
            return;
        }
        *(_BYTE *)(v10 + 76) = 0;
        vox::AccessController::ReleaseWriteAccess(v2);
        vox::AccessController::GetReadAccess(v2);
        vox::DataObj::Update((pthread_mutex_t *)v10);
        ++v6;
        vox::AccessController::ReleaseReadAccess(v2);
      }
      while ( v6 != v5 );
    }
  }
}


// ===== 86ab10 vox::VoxEngineInternal::DecreaseDataObjectRefCount(vox::DataHandle &) =====
int __fastcall vox::VoxEngineInternal::DecreaseDataObjectRefCount(pthread_mutex_t *this, vox::DataHandle *a2)
{
  vox::AccessController *v2; // r6
  int DataObject; // r0
  int v6; // r5
  signed int v7; // r1
  _DWORD *v9; // r0
  _DWORD *v10; // r3

  v2 = (vox::AccessController *)(this + 21);
  vox::AccessController::GetReadAccess((vox::AccessController *)(this + 21));
  DataObject = vox::VoxEngineInternal::GetDataObject((int)this, (int *)a2);
  v6 = DataObject;
  if ( DataObject )
  {
    (*(void (__fastcall **)(int))(*(_DWORD *)DataObject + 12))(DataObject);
    vox::Mutex::Lock(this + 29);
    v7 = *(unsigned __int8 *)(v6 + 76);
    if ( !*(_BYTE *)(v6 + 76) )
    {
      *(_BYTE *)(v6 + 76) = 1;
      v9 = VoxAlloc(0xCu, v7);
      v9[2] = v6;
      v10 = *((_DWORD **)this + 28);
      *v9 = this + 27;
      v9[1] = v10;
      *v10 = v9;
      *((_DWORD *)this + 28) = v9;
    }
    vox::Mutex::Unlock(this + 29);
  }
  return vox::AccessController::ReleaseReadAccess(v2);
}


// ===== 86aba0 vox::DataHandle::operator=(vox::DataHandle const&) =====
vox::DataHandle *__fastcall vox::DataHandle::operator=(vox::DataHandle *a1, int a2)
{
  pthread_mutex_t **v4; // r3
  int *v5; // r3

  if ( a1 != (vox::DataHandle *)a2 )
  {
    v4 = *((pthread_mutex_t ***)a1 + 7);
    if ( v4 && *v4 )
      vox::VoxEngineInternal::DecreaseDataObjectRefCount(*v4, a1);
    v5 = *(int **)(a2 + 28);
    *((_DWORD *)a1 + 7) = v5;
    *((_QWORD *)a1 + 1) = *(_QWORD *)(a2 + 8);
    *((_DWORD *)a1 + 4) = *(_DWORD *)(a2 + 16);
    *((_DWORD *)a1 + 5) = *(_DWORD *)(a2 + 20);
    *((_DWORD *)a1 + 6) = *(_DWORD *)(a2 + 24);
    *((_DWORD *)a1 + 8) = *(_DWORD *)(a2 + 32);
    if ( v5 && *v5 )
      vox::VoxEngineInternal::IncreaseDataObjectRefCount(*v5, (int *)a1);
  }
  return a1;
}


// ===== 86ac28 vox::DataHandle::~DataHandle() =====
void __fastcall vox::DataHandle::~DataHandle(vox::DataHandle *this)
{
  pthread_mutex_t **v1; // r1

  v1 = *((pthread_mutex_t ***)this + 7);
  *(_DWORD *)this = off_993510;
  if ( v1 )
  {
    if ( *v1 )
      vox::VoxEngineInternal::DecreaseDataObjectRefCount(*v1, this);
  }
}


// ===== 86ac78 vox::DataHandle::~DataHandle() =====
void __fastcall vox::DataHandle::~DataHandle(vox::DataHandle *this)
{
  vox::DataHandle::~DataHandle(this);
  LC_API_FREE_0(this);
}


// ===== 86ac94 vox::VoxEngineInternal::GetAllDataSources(vox::DataHandle *,int) =====
int __fastcall vox::VoxEngineInternal::GetAllDataSources(vox::VoxEngineInternal *this, vox::DataHandle *a2, int a3)
{
  int v5; // r3
  vox::DataHandle *v6; // r5
  int i; // r4
  vox::DataHandle *v8; // r5
  int v9; // r3
  int v11; // r2
  int v12; // r2
  int v13; // r1
  int v14; // r1
  vox::AccessController *v15; // [sp+10h] [bp-6Ch]
  _BYTE v17[40]; // [sp+18h] [bp-64h] BYREF
  _BYTE v18[40]; // [sp+40h] [bp-3Ch] BYREF
  int v19; // [sp+68h] [bp-14h] BYREF
  int v20; // [sp+6Ch] [bp-10h] BYREF
  int v21; // [sp+70h] [bp-Ch] BYREF
  int v22; // [sp+74h] [bp-8h] BYREF

  v15 = (vox::VoxEngineInternal *)((char *)this + 84);
  vox::AccessController::GetReadAccess((vox::VoxEngineInternal *)((char *)this + 84));
  vox::HandlableContainer::begin(&v22, (int)this + 8);
  vox::HandlableContainer::end(&v21, (int)this + 8);
  v5 = v22;
  v6 = a2;
  for ( i = 0; v5 != v21 && i < a3; ++i )
  {
    vox::DataHandle::DataHandle(
      (vox::DataHandle *)v18,
      *(_QWORD *)(*(_DWORD *)(v5 + 24) + 8),
      (vox::VoxEngineInternal **)&vox::VoxEngineInternal::s_voxEngineInternal,
      *(vox::Handlable **)(v5 + 24),
      *((_DWORD *)this + *(_DWORD *)(*(_DWORD *)(v5 + 24) + 20) + 340),
      *(_DWORD *)(*(_DWORD *)(v5 + 24) + 20));
    vox::DataHandle::operator=(v6, (int)v18);
    vox::DataHandle::~DataHandle((vox::DataHandle *)v18);
    v5 = v22;
    v11 = *(_DWORD *)(v22 + 12);
    if ( v11 )
    {
      while ( *(_DWORD *)(v11 + 8) )
        v11 = *(_DWORD *)(v11 + 8);
      v5 = v11;
    }
    else
    {
      v14 = *(_DWORD *)(v22 + 4);
      if ( v22 == *(_DWORD *)(v14 + 12) )
      {
        do
        {
          v5 = v14;
          v14 = *(_DWORD *)(v14 + 4);
        }
        while ( *(_DWORD *)(v14 + 12) == v5 );
        v11 = *(_DWORD *)(v5 + 12);
      }
      if ( v14 != v11 )
        v5 = v14;
    }
    v22 = v5;
    v6 = (vox::DataHandle *)((char *)v6 + 40);
  }
  vox::AccessController::ReleaseReadAccess(v15);
  vox::AccessController::GetReadAccess((vox::VoxEngineInternal *)((char *)this + 96));
  vox::HandlableContainer::begin(&v20, (int)this + 40);
  v22 = v20;
  vox::HandlableContainer::end(&v19, (int)this + 40);
  v8 = (vox::DataHandle *)((char *)a2 + 40 * i);
  v21 = v19;
  v9 = v22;
  while ( v9 != v21 && i < a3 )
  {
    vox::DataHandle::DataHandle(
      (vox::DataHandle *)v17,
      *(_QWORD *)(*(_DWORD *)(v9 + 24) + 8),
      (vox::VoxEngineInternal **)&vox::VoxEngineInternal::s_voxEngineInternal,
      *(vox::Handlable **)(v9 + 24),
      *((_DWORD *)this + *(_DWORD *)(*(_DWORD *)(v9 + 24) + 20) + 340),
      *(_DWORD *)(*(_DWORD *)(v9 + 24) + 20));
    vox::DataHandle::operator=(v8, (int)v17);
    vox::DataHandle::~DataHandle((vox::DataHandle *)v17);
    v9 = v22;
    v12 = *(_DWORD *)(v22 + 12);
    if ( v12 )
    {
      while ( *(_DWORD *)(v12 + 8) )
        v12 = *(_DWORD *)(v12 + 8);
      v9 = v12;
    }
    else
    {
      v13 = *(_DWORD *)(v22 + 4);
      if ( v22 == *(_DWORD *)(v13 + 12) )
      {
        do
        {
          v9 = v13;
          v13 = *(_DWORD *)(v13 + 4);
        }
        while ( *(_DWORD *)(v13 + 12) == v9 );
        v12 = *(_DWORD *)(v9 + 12);
      }
      if ( v12 != v13 )
        v9 = v13;
    }
    v22 = v9;
    ++i;
    v8 = (vox::DataHandle *)((char *)v8 + 40);
  }
  vox::AccessController::ReleaseReadAccess((vox::VoxEngineInternal *)((char *)this + 96));
  return i;
}


// ===== 86aee8 vox::VoxEngineInternal::LoadDataSourceAsync(int,void *,int,void *,int,vox::VoxSourceLoadingFlags) =====
vox::DataHandle *__fastcall vox::VoxEngineInternal::LoadDataSourceAsync(
        vox::DataHandle *this,
        pthread_mutex_t *a2,
        volatile int a3,
        int a4,
        volatile int a5,
        int a6,
        volatile int a7,
        unsigned __int16 a8)
{
  int (__fastcall *value)(int); // r2
  int (__fastcall ***v11)(_DWORD); // r10
  int (__fastcall *v13)(int); // r3
  int v14; // r9
  __int64 FreeDataObjectId; // kr00_8
  pthread_mutex_t *v16; // r4
  __int64 v17; // r2
  _DWORD *v18; // r0
  _DWORD *v19; // r3
  _BYTE v20[40]; // [sp+18h] [bp-28h] BYREF

  if ( a3 >= 0 && a3 < a2[305].value )
  {
    value = (int (__fastcall *)(int))a2[a3 + 273].value;
    if ( value )
    {
      v11 = (int (__fastcall ***)(_DWORD))value(a4);
      if ( v11 )
      {
        if ( a5 >= 0 && a5 < a2[338].value )
        {
          v13 = (int (__fastcall *)(int))a2[a5 + 306].value;
          if ( v13 )
          {
            v14 = v13(a6);
            if ( v14 )
            {
              FreeDataObjectId = vox::VoxEngineInternal::GetFreeDataObjectId((vox::VoxEngineInternal *)a2);
              v16 = (pthread_mutex_t *)VoxAlloc(0x60u, 0);
              *(_QWORD *)&v16[2].value = FreeDataObjectId;
              v16[4].value = 0;
              v16->value = (volatile int)off_9934D8;
              vox::Mutex::Mutex((vox::Mutex *)&v16[6]);
              v16->value = (volatile int)off_993470;
              v16[14].value = (volatile int)v11;
              v16[17].value = (volatile int)&v16[16];
              v16[7].value = a7;
              v16[18].value = -1;
              v16[20].value = 3;
              v16[21].value = a8;
              v16[9].value = -1;
              v16[16].value = (volatile int)&v16[16];
              v16[15].value = v14;
              v16[8].value = 0;
              v16[10].value = 0;
              v16[11].value = 0;
              v16[12].value = 0;
              v16[13].value = 0;
              LOBYTE(v16[19].value) = 0;
              BYTE1(v16[19].value) = 0;
              vox::Mutex::Mutex((vox::Mutex *)&v16[22]);
              v17 = *(_QWORD *)&v16[2].value;
              v16[5].value = a2[356].value;
              vox::DataHandle::DataHandle(
                (vox::DataHandle *)v20,
                v17,
                (vox::VoxEngineInternal **)&vox::VoxEngineInternal::s_voxEngineInternal,
                (vox::Handlable *)v16,
                a2[a2[356].value + 340].value,
                a2[356].value);
              a2[356].value = ((unsigned __int8)a2[356].value + 1) & 0xF;
              vox::AccessController::GetWriteAccess((vox::AccessController *)&a2[24]);
              vox::HandlableContainer::Add((int *)&a2[10].value, (int)v16);
              vox::AccessController::ReleaseWriteAccess((vox::AccessController *)&a2[24]);
              vox::Mutex::Lock(a2 + 29);
              LOBYTE(v16[19].value) = 1;
              v18 = VoxAlloc(0xCu, 0);
              v18[2] = v16;
              v19 = (_DWORD *)a2[28].value;
              *v18 = a2 + 27;
              v18[1] = v19;
              *v19 = v18;
              a2[28].value = (volatile int)v18;
              vox::Mutex::Unlock(a2 + 29);
              vox::DataHandle::DataHandle(this, (const vox::DataHandle *)v20);
              vox::DataHandle::~DataHandle((vox::DataHandle *)v20);
              return this;
            }
          }
        }
        Destruct<vox::StreamInterface>(v11);
        VoxFree(v11);
      }
    }
  }
  vox::DataHandle::DataHandle(this, -1, nullptr, nullptr, 0, 0);
  return this;
}


// ===== 86b144 vox::VoxEngineInternal::LoadDataSource(int,void *,int,void *,int) =====
vox::VoxEngineInternal *__fastcall vox::VoxEngineInternal::LoadDataSource(
        vox::VoxEngineInternal *this,
        int *a2,
        int a3,
        int a4,
        int a5,
        int a6,
        int a7)
{
  int (__fastcall *v9)(int); // r2
  int (__fastcall ***v10)(_DWORD); // r8
  int (__fastcall *v12)(int); // r3
  void *v13; // r10
  int v14; // r9
  _DWORD *v15; // r0
  int v16; // r11
  char *v17; // r5
  int v18; // [sp+14h] [bp-40h]
  int v19; // [sp+18h] [bp-3Ch]
  int v20; // [sp+1Ch] [bp-38h]
  __int64 FreeDataObjectId; // [sp+20h] [bp-34h]
  _BYTE v22[44]; // [sp+28h] [bp-2Ch] BYREF

  if ( a3 >= 0 && a3 < a2[305] )
  {
    v9 = (int (__fastcall *)(int))a2[a3 + 273];
    if ( v9 )
    {
      v10 = (int (__fastcall ***)(_DWORD))v9(a4);
      if ( v10 )
      {
        if ( a5 >= 0
          && a5 < a2[338]
          && (v12 = (int (__fastcall *)(int))a2[a5 + 306]) != nullptr
          && (v13 = (void *)v12(a6)) != nullptr )
        {
          v14 = (*v10)[5](v10);
          if ( v14 )
          {
            v15 = (_DWORD *)(*(int (__fastcall **)(void *, int))(*(_DWORD *)v13 + 16))(v13, v14);
            if ( v15
              && (v16 = v15[1],
                  v18 = v15[4],
                  v19 = v15[3],
                  v20 = v15[2],
                  (*(void (__fastcall **)(void *, _DWORD *))(*(_DWORD *)v13 + 20))(v13, v15),
                  v16 > 0) )
            {
              FreeDataObjectId = vox::VoxEngineInternal::GetFreeDataObjectId((vox::VoxEngineInternal *)a2);
              v17 = (char *)VoxAlloc(0x60u, 0);
              *((_DWORD *)v17 + 4) = 0;
              *((_QWORD *)v17 + 1) = FreeDataObjectId;
              *(_DWORD *)v17 = off_9934D8;
              vox::Mutex::Mutex((vox::Mutex *)(v17 + 24));
              *((_DWORD *)v17 + 7) = a7;
              *((_DWORD *)v17 + 13) = v18;
              *(_DWORD *)v17 = off_993470;
              *((_DWORD *)v17 + 12) = v19;
              *((_DWORD *)v17 + 17) = v17 + 64;
              *((_DWORD *)v17 + 18) = -1;
              *((_DWORD *)v17 + 11) = v20;
              *((_DWORD *)v17 + 10) = v16;
              *((_DWORD *)v17 + 9) = -1;
              *((_DWORD *)v17 + 16) = v17 + 64;
              *((_DWORD *)v17 + 20) = 0;
              *((_DWORD *)v17 + 8) = 0;
              v17[76] = 0;
              v17[77] = 0;
              *((_DWORD *)v17 + 14) = v10;
              *((_DWORD *)v17 + 15) = v13;
              vox::Mutex::Mutex((vox::Mutex *)(v17 + 88));
              ((void (__fastcall *)(int (__fastcall ***)(_DWORD), int))(*v10)[6])(v10, v14);
              if ( v17 )
              {
                *((_DWORD *)v17 + 5) = a2[356];
                vox::DataHandle::DataHandle(
                  (vox::DataHandle *)v22,
                  *((_QWORD *)v17 + 1),
                  (vox::VoxEngineInternal **)&vox::VoxEngineInternal::s_voxEngineInternal,
                  (vox::Handlable *)v17,
                  a2[a2[356] + 340],
                  a2[356]);
                a2[356] = ((unsigned __int8)a2[356] + 1) & 0xF;
                vox::AccessController::GetWriteAccess((vox::AccessController *)(a2 + 24));
                vox::HandlableContainer::Add(a2 + 10, (int)v17);
                vox::AccessController::ReleaseWriteAccess((vox::AccessController *)(a2 + 24));
                vox::DataHandle::DataHandle(this, (const vox::DataHandle *)v22);
                vox::DataHandle::~DataHandle((vox::DataHandle *)v22);
                return this;
              }
            }
            else
            {
              ((void (__fastcall *)(int (__fastcall ***)(_DWORD), int))(*v10)[6])(v10, v14);
            }
          }
          Destruct<vox::StreamInterface>(v10);
          VoxFree(v10);
          (**(void (__fastcall ***)(void *))v13)(v13);
          VoxFree(v13);
        }
        else
        {
          Destruct<vox::StreamInterface>(v10);
          VoxFree(v10);
        }
      }
    }
  }
  vox::DataHandle::DataHandle(this, -1, nullptr, nullptr, 0, 0);
  return this;
}


// ===== 86b420 vox::VoxEngineInternal::ConvertToRamBufferSource(vox::DataHandle &) =====
vox::VoxEngineInternal *__fastcall vox::VoxEngineInternal::ConvertToRamBufferSource(
        vox::VoxEngineInternal *this,
        vox::DataHandle *a2,
        int *a3)
{
  vox::AccessController *v3; // r9
  pthread_mutex_t *DataObject; // r5
  volatile int value; // r6
  volatile int v9; // r10
  bool v10; // zf
  int v12; // r0
  int v13; // r8
  signed int v14; // r0
  int v15; // r8
  int v16; // r6
  int Group; // r0
  signed int v18; // [sp+10h] [bp-6Ch]
  void *v19; // [sp+14h] [bp-68h]
  _BYTE v20[40]; // [sp+18h] [bp-64h] BYREF
  _DWORD v21[11]; // [sp+40h] [bp-3Ch] BYREF
  _DWORD v22[2]; // [sp+6Ch] [bp-10h] BYREF
  char v23; // [sp+74h] [bp-8h]
  char v24; // [sp+75h] [bp-7h]

  v3 = (vox::DataHandle *)((char *)a2 + 84);
  vox::AccessController::GetReadAccess((vox::DataHandle *)((char *)a2 + 84));
  DataObject = (pthread_mutex_t *)vox::VoxEngineInternal::GetDataObject((int)a2, a3);
  if ( !DataObject )
  {
    vox::AccessController::ReleaseReadAccess(v3);
    vox::DataHandle::DataHandle(this, -1, nullptr, nullptr, 0, 0);
    return this;
  }
  v21[2] = -1;
  v21[3] = -1;
  v21[0] = off_993510;
  memset(&v21[4], 0, 20);
  if ( DataObject[20].value )
    goto LABEL_7;
  value = DataObject[14].value;
  v9 = DataObject[15].value;
  v10 = v9 == 0;
  if ( v9 )
    v10 = value == 0;
  if ( v10
    || (v12 = (*(int (__fastcall **)(volatile int))(*(_DWORD *)value + 20))(DataObject[14].value), (v13 = v12) == 0) )
  {
LABEL_7:
    vox::AccessController::ReleaseReadAccess(v3);
  }
  else
  {
    v14 = (*(int (__fastcall **)(volatile int))(*(_DWORD *)value + 16))(value);
    v18 = v14;
    if ( v14 <= 0 )
    {
      (*(void (__fastcall **)(volatile int, int))(*(_DWORD *)value + 24))(value, v13);
      vox::AccessController::ReleaseReadAccess(v3);
      vox::DataHandle::DataHandle(this, -1, nullptr, nullptr, 0, 0);
      goto LABEL_9;
    }
    v19 = VoxAlloc(v14);
    if ( v19 )
    {
      (*(void (__fastcall **)(int, _DWORD, _DWORD))(*(_DWORD *)v13 + 16))(v13, 0, 0);
      (*(void (__fastcall **)(int, void *, signed int))(*(_DWORD *)v13 + 28))(v13, v19, v18);
      (*(void (__fastcall **)(volatile int, int))(*(_DWORD *)value + 24))(value, v13);
      vox::AccessController::ReleaseReadAccess(v3);
      v23 = 0;
      v22[0] = v19;
      v22[1] = v18;
      v24 = 1;
      v15 = (*(int (__fastcall **)(volatile int))(*(_DWORD *)v9 + 24))(v9);
      v16 = (*(int (__fastcall **)(volatile int))(*(_DWORD *)v9 + 28))(v9);
      Group = vox::DataObj::GetGroup(DataObject);
      vox::VoxEngineInternal::LoadDataSource((vox::VoxEngineInternal *)v20, (int *)a2, 0, (int)v22, v15, v16, Group);
      vox::DataHandle::operator=((vox::DataHandle *)v21, (int)v20);
      vox::DataHandle::~DataHandle((vox::DataHandle *)v20);
    }
    else
    {
      (*(void (__fastcall **)(volatile int, int))(*(_DWORD *)value + 24))(value, v13);
      vox::AccessController::ReleaseReadAccess(v3);
    }
  }
  vox::DataHandle::DataHandle(this, (const vox::DataHandle *)v21);
LABEL_9:
  vox::DataHandle::~DataHandle((vox::DataHandle *)v21);
  return this;
}


// ===== 86b694 vox::VoxEngineInternal::ConvertToRawSource(vox::DataHandle &) =====
vox::VoxEngineInternal *__fastcall vox::VoxEngineInternal::ConvertToRawSource(
        vox::VoxEngineInternal *this,
        vox::DataHandle *a2,
        int *a3)
{
  vox::AccessController *v3; // r9
  pthread_mutex_t *DataObject; // r5
  volatile int value; // r8
  volatile int v8; // r7
  _DWORD *v9; // r0
  _DWORD *v10; // r6
  int v11; // r2
  int v12; // r3
  int v13; // r11
  void *v14; // r0
  void *v15; // r11
  int Group; // r0
  void *v19; // [sp+18h] [bp-7Ch]
  int v20; // [sp+1Ch] [bp-78h]
  _BYTE v21[40]; // [sp+20h] [bp-74h] BYREF
  _DWORD v22[11]; // [sp+48h] [bp-4Ch] BYREF
  int v23; // [sp+74h] [bp-20h] BYREF
  int v24; // [sp+78h] [bp-1Ch]
  int v25; // [sp+7Ch] [bp-18h]
  int v26; // [sp+80h] [bp-14h]
  _DWORD v27[2]; // [sp+84h] [bp-10h] BYREF
  char v28; // [sp+8Ch] [bp-8h]
  char v29; // [sp+8Dh] [bp-7h]

  v3 = (vox::DataHandle *)((char *)a2 + 84);
  vox::AccessController::GetReadAccess((vox::DataHandle *)((char *)a2 + 84));
  DataObject = (pthread_mutex_t *)vox::VoxEngineInternal::GetDataObject((int)a2, a3);
  if ( !DataObject )
  {
    vox::AccessController::ReleaseReadAccess(v3);
    vox::DataHandle::DataHandle(this, -1, nullptr, nullptr, 0, 0);
    return this;
  }
  v22[2] = -1;
  v22[3] = -1;
  v22[0] = off_993510;
  memset(&v22[4], 0, 20);
  if ( !DataObject[20].value
    && (value = DataObject[14].value, v8 = DataObject[15].value, value)
    && (v20 = (*(int (__fastcall **)(volatile int))(*(_DWORD *)value + 20))(DataObject[14].value)) != 0 )
  {
    if ( v8
      && (v9 = (_DWORD *)(*(int (__fastcall **)(volatile int, int))(*(_DWORD *)v8 + 16))(v8, v20), (v10 = v9) != nullptr) )
    {
      v11 = v9[4];
      v12 = v9[1];
      v13 = v12 * v11 * ((int)v9[3] >> 3);
      if ( v13 <= 0 )
      {
        (*(void (__fastcall **)(volatile int, _DWORD *))(*(_DWORD *)v8 + 20))(v8, v9);
        (*(void (__fastcall **)(volatile int, int))(*(_DWORD *)value + 24))(value, v20);
        vox::AccessController::ReleaseReadAccess(v3);
        vox::DataHandle::DataHandle(this, -1, nullptr, nullptr, 0, 0);
        goto LABEL_13;
      }
      v14 = VoxAlloc(v12 * v11 * ((int)v9[3] >> 3));
      v19 = v14;
      if ( v14 )
      {
        (*(void (__fastcall **)(_DWORD *, _DWORD))(*v10 + 40))(v10, 0);
        v14 = (void *)(*(int (__fastcall **)(_DWORD *, void *, int))(*v10 + 16))(v10, v19, v13);
      }
      v23 = 0;
      v24 = 0;
      v25 = 0;
      v26 = 0;
      v15 = v14;
      v23 = v10[1];
      v24 = v10[2];
      v25 = v10[3];
      v26 = v10[4];
      (*(void (__fastcall **)(volatile int, _DWORD *))(*(_DWORD *)v8 + 20))(v8, v10);
      (*(void (__fastcall **)(volatile int, int))(*(_DWORD *)value + 24))(value, v20);
      vox::AccessController::ReleaseReadAccess(v3);
      if ( v19 )
      {
        v27[1] = v15;
        v27[0] = v19;
        v29 = 1;
        v28 = 0;
        Group = vox::DataObj::GetGroup(DataObject);
        vox::VoxEngineInternal::LoadDataSource(
          (vox::VoxEngineInternal *)v21,
          (int *)a2,
          0,
          (int)v27,
          0,
          (int)&v23,
          Group);
        vox::DataHandle::operator=((vox::DataHandle *)v22, (int)v21);
        vox::DataHandle::~DataHandle((vox::DataHandle *)v21);
      }
    }
    else
    {
      (*(void (__fastcall **)(volatile int, int))(*(_DWORD *)value + 24))(value, v20);
    }
  }
  else
  {
    vox::AccessController::ReleaseReadAccess(v3);
  }
  vox::DataHandle::DataHandle(this, (const vox::DataHandle *)v22);
LABEL_13:
  vox::DataHandle::~DataHandle((vox::DataHandle *)v22);
  return this;
}


// ===== 86b968 vox::DataHandle::~DataHandle() =====
void __fastcall vox::DataHandle::~DataHandle(vox::DataHandle *this)
{
  pthread_mutex_t **v1; // r1

  v1 = *((pthread_mutex_t ***)this + 7);
  *(_DWORD *)this = off_993510;
  if ( v1 )
  {
    if ( *v1 )
      vox::VoxEngineInternal::DecreaseDataObjectRefCount(*v1, this);
  }
}


// ===== 86b9b8 vox::VoxEngineInternal::SetGroupGain(uint,float,float) =====
int __fastcall vox::VoxEngineInternal::SetGroupGain(pthread_mutex_t *this, unsigned int a2, float a3, float a4)
{
  float v6; // r10
  int v7; // r4
  float *p_value; // r5
  float v9; // r8
  float v10; // r3
  float *v11; // r8
  pthread_mutex_t *mutex; // [sp+Ch] [bp-20h]

  v6 = a3;
  if ( a3 >= 0.0 )
  {
    if ( a3 > 1.0 )
      v6 = 1.0;
  }
  else
  {
    v6 = 0.0;
  }
  mutex = this + 253;
  vox::Mutex::Lock(this + 253);
  if ( a2 )
  {
    v7 = 0;
    p_value = (float *)&this->value;
    do
    {
      while ( (a2 & (1 << v7)) == 0 )
      {
        ++v7;
        p_value += 5;
        if ( v7 == 32 )
          return vox::Mutex::Unlock(mutex);
      }
      v9 = p_value[64];
      if ( p_value[63] < v9 )
      {
        if ( v9 > 0.0 )
          v10 = p_value[61] + (float)((float)(p_value[63] * (float)(p_value[62] - p_value[61])) / v9);
        else
          v10 = p_value[61];
      }
      else
      {
        v10 = p_value[62];
      }
      v11 = (float *)(this + 5 * v7 + 61);
      *v11 = v10;
      v11[1] = v6;
      v11[2] = 0.0;
      v11[3] = a4 + 0.001;
      ++v7;
      *((_BYTE *)v11 + 16) = 0;
      p_value += 5;
    }
    while ( v7 != 32 );
  }
  return vox::Mutex::Unlock(mutex);
}


// ===== 86bb24 vox::EmitterObj::SetGain(float,float) =====
int __fastcall vox::EmitterObj::SetGain(pthread_mutex_t *this, float a2, float a3)
{
  pthread_mutex_t *v3; // r5
  float v7; // r10
  float v8; // r8
  float v9; // r0

  v3 = this + 6;
  vox::Mutex::Lock(this + 6);
  v7 = *((float *)this + 20);
  v8 = *((float *)this + 21);
  *((float *)this + 16) = a2;
  if ( v7 < v8 )
  {
    if ( v8 > 0.0 )
      v9 = *((float *)this + 18) + (float)((float)(v7 * (float)(*((float *)this + 19) - *((float *)this + 18))) / v8);
    else
      v9 = *((float *)this + 18);
  }
  else
  {
    v9 = *((float *)this + 19);
  }
  *((float *)this + 18) = v9;
  *((float *)this + 19) = a2;
  *((_DWORD *)this + 20) = 0;
  *((float *)this + 21) = a3;
  *((_BYTE *)this + 88) = 0;
  return vox::Mutex::Unlock(v3);
}


// ===== 86bbf4 vox::VoxEngineInternal::SetGain(vox::EmitterHandle &,float,float) =====
int __fastcall vox::VoxEngineInternal::SetGain(
        vox::VoxEngineInternal *this,
        vox::EmitterHandle *a2,
        float a3,
        float a4)
{
  vox::AccessController *v4; // r4
  pthread_mutex_t *EmitterObject; // r0

  v4 = (vox::VoxEngineInternal *)((char *)this + 196);
  vox::AccessController::GetReadAccess((vox::VoxEngineInternal *)((char *)this + 196));
  EmitterObject = (pthread_mutex_t *)vox::VoxEngineInternal::GetEmitterObject((int)this, (int *)a2);
  if ( EmitterObject )
    vox::EmitterObj::SetGain(EmitterObject, a3, a4);
  return vox::AccessController::ReleaseReadAccess(v4);
}


// ===== 86bc40 vox::EmitterObj::SetPitch(float,float) =====
int __fastcall vox::EmitterObj::SetPitch(pthread_mutex_t *this, float a2, float a3)
{
  pthread_mutex_t *v3; // r5
  float v7; // r10
  float v8; // r8
  float v9; // r0

  v3 = this + 6;
  vox::Mutex::Lock(this + 6);
  v7 = *((float *)this + 32);
  v8 = *((float *)this + 33);
  *((float *)this + 29) = a2;
  if ( v7 < v8 )
  {
    if ( v8 > 0.0 )
      v9 = *((float *)this + 30) + (float)((float)(v7 * (float)(*((float *)this + 31) - *((float *)this + 30))) / v8);
    else
      v9 = *((float *)this + 30);
  }
  else
  {
    v9 = *((float *)this + 31);
  }
  *((float *)this + 30) = v9;
  *((float *)this + 31) = a2;
  *((_DWORD *)this + 32) = 0;
  *((float *)this + 33) = a3;
  *((_BYTE *)this + 136) = 0;
  return vox::Mutex::Unlock(v3);
}


// ===== 86bd10 vox::VoxEngineInternal::SetPitch(vox::EmitterHandle &,float,float) =====
int __fastcall vox::VoxEngineInternal::SetPitch(
        vox::VoxEngineInternal *this,
        vox::EmitterHandle *a2,
        float a3,
        float a4)
{
  vox::AccessController *v4; // r4
  pthread_mutex_t *EmitterObject; // r0

  v4 = (vox::VoxEngineInternal *)((char *)this + 196);
  vox::AccessController::GetReadAccess((vox::VoxEngineInternal *)((char *)this + 196));
  EmitterObject = (pthread_mutex_t *)vox::VoxEngineInternal::GetEmitterObject((int)this, (int *)a2);
  if ( EmitterObject )
    vox::EmitterObj::SetPitch(EmitterObject, a3, a4);
  return vox::AccessController::ReleaseReadAccess(v4);
}


// ===== 86bd5c vox::VoxEngineInternal::SetMasterGain(float,float) =====
int __fastcall vox::VoxEngineInternal::SetMasterGain(pthread_mutex_t *this, float a2, float a3)
{
  float v3; // r6
  pthread_mutex_t *v6; // r4
  float v7; // r7
  float v8; // r3
  float *v9; // r5

  v3 = a2;
  if ( a2 >= 0.0 )
  {
    if ( a2 > 1.0 )
      v3 = 1.0;
  }
  else
  {
    v3 = 0.0;
  }
  v6 = this + 253;
  vox::Mutex::Lock(this + 253);
  v7 = *((float *)this + 59);
  if ( *((float *)this + 58) < v7 )
  {
    if ( v7 > 0.0 )
      v8 = *((float *)this + 56)
         + (float)((float)(*((float *)this + 58) * (float)(*((float *)this + 57) - *((float *)this + 56))) / v7);
    else
      v8 = *((float *)this + 56);
  }
  else
  {
    v8 = *((float *)this + 57);
  }
  v9 = (float *)(this + 56);
  *v9 = v8;
  v9[1] = v3;
  v9[2] = 0.0;
  v9[3] = a3 + 0.001;
  *((_BYTE *)v9 + 16) = 0;
  return vox::Mutex::Unlock(v6);
}


// ===== 86be68 vox::VoxEngineInternal::~VoxEngineInternal() =====
void __fastcall vox::VoxEngineInternal::~VoxEngineInternal(vox::VoxEngineInternal *this)
{
  vox::VoxNativeSubDecoder *v2; // r0
  vox::PriorityBankManager *v3; // r0
  void (__fastcall ***v4)(_DWORD); // r3
  void *v5; // r0
  vox::VoxEngineInternal **v6; // r0
  vox::VoxEngineInternal *v7; // r4
  void *v8; // r0
  vox::VoxEngineInternal **v9; // r0
  vox::VoxEngineInternal *v10; // r4
  void *v11; // r0

  *(_DWORD *)this = off_993488;
  vox::VoxEngineInternal::_ReleaseAllDatasource(this);
  vox::VoxNativeSubDecoder::Clean(v2);
  v3 = *((vox::PriorityBankManager **)this + 55);
  if ( v3 )
  {
    vox::PriorityBankManager::~PriorityBankManager(v3);
    VoxFree(*((void **)this + 55));
  }
  v4 = *((void (__fastcall ****)(_DWORD))this + 339);
  if ( v4 )
  {
    (**v4)(*((_DWORD *)this + 339));
    VoxFree(*((void **)this + 339));
  }
  vox::FileSystemInterface::DestroyInstance(v3);
  v5 = *((void **)this + 358);
  if ( v5 )
    VoxFree(v5);
  vox::VoxEngineInternal::s_voxEngineInternal = 0;
  v6 = *((vox::VoxEngineInternal ***)this + 271);
  if ( v6 != (vox::VoxEngineInternal **)((char *)this + 1084) )
  {
    while ( 1 )
    {
      v7 = *v6;
      VoxFree(v6);
      if ( v7 == (vox::VoxEngineInternal *)((char *)this + 1084) )
        break;
      v6 = (vox::VoxEngineInternal **)v7;
    }
    v6 = (vox::VoxEngineInternal **)((char *)this + 1084);
  }
  *((_DWORD *)this + 271) = v6;
  *((_DWORD *)this + 272) = v6;
  vox::Mutex::~Mutex((vox::VoxEngineInternal *)((char *)this + 1012));
  vox::Mutex::Unlock((pthread_mutex_t *)this + 54);
  vox::Mutex::~Mutex((vox::VoxEngineInternal *)((char *)this + 216));
  vox::Mutex::Unlock((pthread_mutex_t *)this + 51);
  vox::Mutex::~Mutex((vox::VoxEngineInternal *)((char *)this + 204));
  v8 = *((void **)this + 46);
  if ( v8 )
    VoxFree(v8);
  vox::HandlableContainer::~HandlableContainer((vox::VoxEngineInternal *)((char *)this + 152));
  vox::HandlableContainer::~HandlableContainer((vox::VoxEngineInternal *)((char *)this + 120));
  vox::Mutex::~Mutex((vox::VoxEngineInternal *)((char *)this + 116));
  v9 = *((vox::VoxEngineInternal ***)this + 27);
  if ( v9 != (vox::VoxEngineInternal **)((char *)this + 108) )
  {
    while ( 1 )
    {
      v10 = *v9;
      VoxFree(v9);
      if ( v10 == (vox::VoxEngineInternal *)((char *)this + 108) )
        break;
      v9 = (vox::VoxEngineInternal **)v10;
    }
    v9 = (vox::VoxEngineInternal **)((char *)this + 108);
  }
  *((_DWORD *)this + 27) = v9;
  *((_DWORD *)this + 28) = v9;
  vox::Mutex::Unlock((pthread_mutex_t *)this + 26);
  vox::Mutex::~Mutex((vox::VoxEngineInternal *)((char *)this + 104));
  vox::Mutex::Unlock((pthread_mutex_t *)this + 23);
  vox::Mutex::~Mutex((vox::VoxEngineInternal *)((char *)this + 92));
  v11 = *((void **)this + 18);
  if ( v11 )
    VoxFree(v11);
  vox::HandlableContainer::~HandlableContainer((vox::VoxEngineInternal *)((char *)this + 40));
  vox::HandlableContainer::~HandlableContainer((vox::VoxEngineInternal *)((char *)this + 8));
}


// ===== 86c010 vox::VoxEngineInternal::~VoxEngineInternal() =====
void __fastcall vox::VoxEngineInternal::~VoxEngineInternal(vox::VoxEngineInternal *this)
{
  vox::VoxEngineInternal::~VoxEngineInternal(this);
  LC_API_FREE_0(this);
}


// ===== 86c02c vox::VoxEngineInternal::~VoxEngineInternal() =====
void __fastcall vox::VoxEngineInternal::~VoxEngineInternal(vox::VoxEngineInternal *this)
{
  vox::VoxNativeSubDecoder *v2; // r0
  vox::PriorityBankManager *v3; // r0
  void (__fastcall ***v4)(_DWORD); // r3
  void *v5; // r0
  vox::VoxEngineInternal **v6; // r0
  vox::VoxEngineInternal *v7; // r4
  void *v8; // r0
  vox::VoxEngineInternal **v9; // r0
  vox::VoxEngineInternal *v10; // r4
  void *v11; // r0

  *(_DWORD *)this = off_993488;
  vox::VoxEngineInternal::_ReleaseAllDatasource(this);
  vox::VoxNativeSubDecoder::Clean(v2);
  v3 = *((vox::PriorityBankManager **)this + 55);
  if ( v3 )
  {
    vox::PriorityBankManager::~PriorityBankManager(v3);
    VoxFree(*((void **)this + 55));
  }
  v4 = *((void (__fastcall ****)(_DWORD))this + 339);
  if ( v4 )
  {
    (**v4)(*((_DWORD *)this + 339));
    VoxFree(*((void **)this + 339));
  }
  vox::FileSystemInterface::DestroyInstance(v3);
  v5 = *((void **)this + 358);
  if ( v5 )
    VoxFree(v5);
  vox::VoxEngineInternal::s_voxEngineInternal = 0;
  v6 = *((vox::VoxEngineInternal ***)this + 271);
  if ( v6 != (vox::VoxEngineInternal **)((char *)this + 1084) )
  {
    while ( 1 )
    {
      v7 = *v6;
      VoxFree(v6);
      if ( v7 == (vox::VoxEngineInternal *)((char *)this + 1084) )
        break;
      v6 = (vox::VoxEngineInternal **)v7;
    }
    v6 = (vox::VoxEngineInternal **)((char *)this + 1084);
  }
  *((_DWORD *)this + 271) = v6;
  *((_DWORD *)this + 272) = v6;
  vox::Mutex::~Mutex((vox::VoxEngineInternal *)((char *)this + 1012));
  vox::Mutex::Unlock((pthread_mutex_t *)this + 54);
  vox::Mutex::~Mutex((vox::VoxEngineInternal *)((char *)this + 216));
  vox::Mutex::Unlock((pthread_mutex_t *)this + 51);
  vox::Mutex::~Mutex((vox::VoxEngineInternal *)((char *)this + 204));
  v8 = *((void **)this + 46);
  if ( v8 )
    VoxFree(v8);
  vox::HandlableContainer::~HandlableContainer((vox::VoxEngineInternal *)((char *)this + 152));
  vox::HandlableContainer::~HandlableContainer((vox::VoxEngineInternal *)((char *)this + 120));
  vox::Mutex::~Mutex((vox::VoxEngineInternal *)((char *)this + 116));
  v9 = *((vox::VoxEngineInternal ***)this + 27);
  if ( v9 != (vox::VoxEngineInternal **)((char *)this + 108) )
  {
    while ( 1 )
    {
      v10 = *v9;
      VoxFree(v9);
      if ( v10 == (vox::VoxEngineInternal *)((char *)this + 108) )
        break;
      v9 = (vox::VoxEngineInternal **)v10;
    }
    v9 = (vox::VoxEngineInternal **)((char *)this + 108);
  }
  *((_DWORD *)this + 27) = v9;
  *((_DWORD *)this + 28) = v9;
  vox::Mutex::Unlock((pthread_mutex_t *)this + 26);
  vox::Mutex::~Mutex((vox::VoxEngineInternal *)((char *)this + 104));
  vox::Mutex::Unlock((pthread_mutex_t *)this + 23);
  vox::Mutex::~Mutex((vox::VoxEngineInternal *)((char *)this + 92));
  v11 = *((void **)this + 18);
  if ( v11 )
    VoxFree(v11);
  vox::HandlableContainer::~HandlableContainer((vox::VoxEngineInternal *)((char *)this + 40));
  vox::HandlableContainer::~HandlableContainer((vox::VoxEngineInternal *)((char *)this + 8));
}


// ===== 86c1d4 vox::EmitterObj::Resume(float) =====
int __fastcall vox::EmitterObj::Resume(pthread_mutex_t *this, float a2)
{
  pthread_mutex_t *v2; // r4
  int v5; // r3
  float v7; // r10
  float v8; // r8
  float v9; // r0

  v2 = this + 6;
  vox::Mutex::Lock(this + 6);
  v5 = *((_DWORD *)this + 37);
  if ( v5 == 2 || *((_DWORD *)this + 36) == 2 && v5 != 3 )
  {
    v7 = *((float *)this + 25);
    v8 = *((float *)this + 26);
    *((_DWORD *)this + 37) = 1;
    if ( v7 < v8 )
    {
      if ( v8 > 0.0 )
        v9 = *((float *)this + 23) + (float)((float)(v7 * (float)(*((float *)this + 24) - *((float *)this + 23))) / v8);
      else
        v9 = *((float *)this + 23);
    }
    else
    {
      v9 = *((float *)this + 24);
    }
    *((float *)this + 23) = v9;
    *((_DWORD *)this + 24) = 1065353216;
    *((_DWORD *)this + 25) = 0;
    *((float *)this + 26) = a2;
    *((_BYTE *)this + 108) = 0;
  }
  return vox::Mutex::Unlock(v2);
}


// ===== 86c2cc vox::VoxEngineInternal::Resume(vox::EmitterObj *,float) =====
vox::EmitterObj *__fastcall vox::VoxEngineInternal::Resume(vox::VoxEngineInternal *this, vox::EmitterObj *a2, float a3)
{
  vox::EmitterObj *result; // r0

  result = a2;
  if ( a2 )
    return (vox::EmitterObj *)vox::EmitterObj::Resume(a2, a3);
  return result;
}


// ===== 86c2dc vox::VoxEngineInternal::ResumeAllEmitters(uint,float) =====
int __fastcall vox::VoxEngineInternal::ResumeAllEmitters(vox::VoxEngineInternal *this, unsigned int a2, float a3)
{
  vox::AccessController *v4; // r7
  _DWORD *v7; // r3
  vox::EmitterObj *v8; // r10
  _DWORD *v9; // r2
  _DWORD *v10; // r3
  vox::EmitterObj *v11; // r10
  _DWORD *v12; // r2
  int v14; // r1
  int v15; // r1
  _DWORD *v16; // [sp+0h] [bp-14h] BYREF
  _DWORD *v17; // [sp+4h] [bp-10h] BYREF
  _DWORD *v18; // [sp+8h] [bp-Ch] BYREF
  _DWORD *v19; // [sp+Ch] [bp-8h] BYREF

  v4 = (vox::VoxEngineInternal *)((char *)this + 196);
  vox::AccessController::GetReadAccess((vox::VoxEngineInternal *)((char *)this + 196));
  vox::AccessController::GetReadAccess((vox::VoxEngineInternal *)((char *)this + 208));
  vox::HandlableContainer::begin((vox::HandlableContainer *)&v19);
  vox::HandlableContainer::end((vox::HandlableContainer *)&v18);
  v7 = v19;
  while ( v18 != v7 )
  {
    v8 = (vox::EmitterObj *)v7[6];
    if ( vox::EmitterObj::IsGroup(v8, a2) )
    {
      vox::VoxEngineInternal::Resume(this, v8, a3);
      v7 = v19;
      v9 = (_DWORD *)v19[3];
      if ( !v9 )
      {
LABEL_19:
        v14 = v7[1];
        if ( v7 == *(_DWORD **)(v14 + 12) )
        {
          do
          {
            v7 = (_DWORD *)v14;
            v14 = *(_DWORD *)(v14 + 4);
          }
          while ( *(_DWORD **)(v14 + 12) == v7 );
          v9 = (_DWORD *)v7[3];
        }
        if ( (_DWORD *)v14 != v9 )
          v7 = (_DWORD *)v14;
        v19 = v7;
        continue;
      }
    }
    else
    {
      v7 = v19;
      v9 = (_DWORD *)v19[3];
      if ( !v9 )
        goto LABEL_19;
    }
    while ( v9[2] )
      v9 = (_DWORD *)v9[2];
    v7 = v9;
    v19 = v9;
  }
  vox::HandlableContainer::begin((vox::HandlableContainer *)&v17);
  v19 = v17;
  vox::HandlableContainer::end((vox::HandlableContainer *)&v16);
  v10 = v19;
  v18 = v16;
  while ( v10 != v18 )
  {
    v11 = (vox::EmitterObj *)v10[6];
    if ( vox::EmitterObj::IsGroup(v11, a2) )
    {
      vox::VoxEngineInternal::Resume(this, v11, a3);
      v10 = v19;
      v12 = (_DWORD *)v19[3];
      if ( !v12 )
      {
LABEL_26:
        v15 = v10[1];
        if ( v10 == *(_DWORD **)(v15 + 12) )
        {
          do
          {
            v10 = (_DWORD *)v15;
            v15 = *(_DWORD *)(v15 + 4);
          }
          while ( *(_DWORD **)(v15 + 12) == v10 );
          v12 = (_DWORD *)v10[3];
        }
        if ( (_DWORD *)v15 != v12 )
          v10 = (_DWORD *)v15;
        v19 = v10;
        continue;
      }
    }
    else
    {
      v10 = v19;
      v12 = (_DWORD *)v19[3];
      if ( !v12 )
        goto LABEL_26;
    }
    while ( v12[2] )
      v12 = (_DWORD *)v12[2];
    v10 = v12;
    v19 = v12;
  }
  vox::AccessController::ReleaseReadAccess((vox::VoxEngineInternal *)((char *)this + 208));
  return vox::AccessController::ReleaseReadAccess(v4);
}


// ===== 86c4d8 vox::VoxEngineInternal::Resume(vox::EmitterHandle &,float) =====
int __fastcall vox::VoxEngineInternal::Resume(vox::VoxEngineInternal *this, vox::EmitterHandle *a2, float a3)
{
  vox::AccessController *v3; // r5
  vox::EmitterObj *EmitterObject; // r0

  v3 = (vox::VoxEngineInternal *)((char *)this + 196);
  vox::AccessController::GetReadAccess((vox::VoxEngineInternal *)((char *)this + 196));
  EmitterObject = (vox::EmitterObj *)vox::VoxEngineInternal::GetEmitterObject((int)this, (int *)a2);
  vox::VoxEngineInternal::Resume(this, EmitterObject, a3);
  return vox::AccessController::ReleaseReadAccess(v3);
}


// ===== 86c51c std::vector<uchar *,vox::SAllocator<uchar *,(vox::VoxMemHint)0>>::_M_insert_overflow(uchar **,uchar * const&,std::__true_type const&,uint,bool) [clone] =====
void __fastcall std::vector<unsigned char *,vox::SAllocator<unsigned char *,(vox::VoxMemHint)0>>::_M_insert_overflow(
        int a1,
        int a2,
        _DWORD *a3)
{
  unsigned int v6; // r3
  unsigned int v7; // r7
  size_t v8; // r7
  char *v9; // r0
  char *v10; // r5
  size_t v11; // r6
  char *v12; // r6

  v6 = (*(_DWORD *)(a1 + 4) - *(_DWORD *)a1) >> 2;
  if ( v6 )
    v7 = 2 * v6;
  else
    v7 = 1;
  if ( v7 > 0x3FFFFFFF || v6 > v7 )
    v8 = -4;
  else
    v8 = 4 * v7;
  v9 = (char *)VoxAlloc(v8, 0);
  v10 = v9;
  v11 = a2 - *(_DWORD *)a1;
  if ( v11 )
    v12 = (char *)memmove(v9, *(const void **)a1, v11) + v11;
  else
    v12 = v9;
  *(_DWORD *)v12 = *a3;
  VoxFree(*(void **)a1);
  *(_DWORD *)a1 = v10;
  *(_DWORD *)(a1 + 4) = v12 + 4;
  *(_DWORD *)(a1 + 8) = &v10[v8];
}


// ===== 86c5ac std::vector<uchar *,vox::SAllocator<uchar *,(vox::VoxMemHint)0>>::push_back(uchar * const&) =====
void __fastcall std::vector<unsigned char *,vox::SAllocator<unsigned char *,(vox::VoxMemHint)0>>::push_back(
        int a1,
        _DWORD *a2)
{
  _DWORD *v2; // r12

  v2 = *(_DWORD **)(a1 + 4);
  if ( v2 == *(_DWORD **)(a1 + 8) )
  {
    std::vector<unsigned char *,vox::SAllocator<unsigned char *,(vox::VoxMemHint)0>>::_M_insert_overflow(
      a1,
      *(_DWORD *)(a1 + 4),
      a2);
  }
  else
  {
    *v2 = *a2;
    *(_DWORD *)(a1 + 4) += 4;
  }
}


// ===== 86c5ec vox::EmitterObj::EmitterObj(long long,int,int,int,vox::DriverSourceInterface *,vox::DecoderCursorInterface *,vox::DataObj *) =====
vox::EmitterObj *__fastcall vox::EmitterObj::EmitterObj(
        vox::EmitterObj *this,
        __int64 a2,
        int a3,
        int a4,
        int a5,
        vox::DriverSourceInterface *a6,
        vox::DecoderCursorInterface *a7,
        vox::DataObj *a8)
{
  int v10; // r3
  vox::EmitterObj *v11; // r2
  int v12; // r1
  int v13; // r3
  bool v14; // zf
  int v15; // r3
  int v16; // r3
  _DWORD *v18; // r2
  int v19; // r3
  void *v20; // r0
  int v21; // r3
  int v22; // r6
  int v23; // r5
  void *v25; // r0
  _DWORD *v26; // r1
  _DWORD *v27; // r3
  void *p[3]; // [sp+0h] [bp-20h] BYREF
  _DWORD v29[3]; // [sp+Ch] [bp-14h] BYREF
  void *v30; // [sp+18h] [bp-8h] BYREF
  void *v31; // [sp+1Ch] [bp-4h] BYREF

  *((_QWORD *)this + 1) = a2;
  *(_DWORD *)this = off_9934D8;
  *((_DWORD *)this + 4) = 0;
  vox::Mutex::Mutex((vox::EmitterObj *)((char *)this + 24));
  *(_DWORD *)this = off_9934C0;
  *((_DWORD *)this + 11) = a3;
  *((_DWORD *)this + 8) = 1;
  *((_DWORD *)this + 12) = a4;
  *((_DWORD *)this + 18) = 0;
  *((_DWORD *)this + 20) = 0;
  *((_DWORD *)this + 21) = 0;
  *((_BYTE *)this + 88) = 1;
  *((_DWORD *)this + 23) = 0;
  *((_DWORD *)this + 25) = 0;
  *((_DWORD *)this + 26) = 0;
  *((_BYTE *)this + 108) = 1;
  *((_DWORD *)this + 30) = 0;
  *((_DWORD *)this + 32) = 0;
  *((_DWORD *)this + 33) = 0;
  *((_BYTE *)this + 136) = 1;
  *((_BYTE *)this + 28) = 0;
  *((_DWORD *)this + 10) = 0;
  *((_BYTE *)this + 52) = 0;
  *((_DWORD *)this + 14) = 1065353216;
  *((_DWORD *)this + 15) = 1065353216;
  *((_DWORD *)this + 16) = 1065353216;
  *((_DWORD *)this + 17) = 1065353216;
  *((_DWORD *)this + 19) = 1065353216;
  *((_DWORD *)this + 24) = 1065353216;
  *((_DWORD *)this + 28) = 1065353216;
  *((_DWORD *)this + 29) = 1065353216;
  *((_DWORD *)this + 31) = 1065353216;
  *((_BYTE *)this + 140) = 0;
  *((_BYTE *)this + 141) = 0;
  *((_DWORD *)this + 36) = 0;
  *((_DWORD *)this + 37) = 0;
  *((_BYTE *)this + 152) = 0;
  *((_DWORD *)this + 50) = 1120403456;
  *((_DWORD *)this + 53) = 1135869952;
  *((_DWORD *)this + 55) = 2139095039;
  v10 = 0;
  *((_DWORD *)this + 66) = a5;
  *((_DWORD *)this + 68) = a6;
  *((_DWORD *)this + 39) = 0;
  *((_DWORD *)this + 40) = 0;
  *((_DWORD *)this + 41) = 0;
  *((_DWORD *)this + 42) = 0;
  *((_DWORD *)this + 43) = 0;
  *((_DWORD *)this + 44) = 0;
  *((_DWORD *)this + 45) = 0;
  *((_DWORD *)this + 46) = 0;
  *((_DWORD *)this + 47) = 0;
  *((_DWORD *)this + 54) = 0;
  *((_DWORD *)this + 70) = a8;
  *((_DWORD *)this + 73) = 1065353216;
  *((_BYTE *)this + 153) = 0;
  *((_DWORD *)this + 48) = 0;
  *((_DWORD *)this + 49) = 2139095039;
  *((_DWORD *)this + 51) = 1065353216;
  *((_DWORD *)this + 52) = 1135869952;
  *((_DWORD *)this + 59) = 0;
  *((_DWORD *)this + 60) = 0;
  *((_DWORD *)this + 61) = 0;
  *((_DWORD *)this + 62) = 0;
  *((_DWORD *)this + 63) = 0;
  *((_DWORD *)this + 67) = 0;
  *((_DWORD *)this + 69) = a7;
  *((_DWORD *)this + 72) = 0;
  *((_DWORD *)this + 74) = 0;
  *((_DWORD *)this + 75) = 0;
  *((_BYTE *)this + 304) = 1;
  *((_DWORD *)this + 77) = -1;
  *((_BYTE *)this + 284) = 0;
  *((_BYTE *)this + 285) = 0;
  *((_DWORD *)this + 78) = 0;
  *((_DWORD *)this + 79) = 0;
  v11 = this;
  do
  {
    ++v10;
    *((_BYTE *)v11 + 224) = 0;
    v12 = 0;
    v11 = (vox::EmitterObj *)((char *)v11 + 1);
  }
  while ( v10 != 11 );
  v13 = *((_DWORD *)this + 68);
  *((_DWORD *)this + 65) = 0;
  *((_DWORD *)this + 64) = 0;
  v14 = a7 == nullptr;
  if ( a7 )
    v14 = v13 == 0;
  if ( v14 )
  {
    *((_BYTE *)this + 284) = 1;
    goto LABEL_8;
  }
  v18 = *((_DWORD **)this + 69);
  *((_DWORD *)this + 9) = v18[1] * v18[4] * ((int)v18[3] >> 3);
  *((_DWORD *)this + 8) = ((int)v18[3] >> 3) * v18[1] * v18[2];
  if ( (*(int (__fastcall **)(int))(*(_DWORD *)v13 + 72))(v13) )
  {
    v22 = (*(int (__fastcall **)(_DWORD))(**((_DWORD **)this + 68) + 84))(*((_DWORD *)this + 68));
    v23 = (*(int (__fastcall **)(_DWORD))(**((_DWORD **)this + 69) + 52))(*((_DWORD *)this + 69));
    if ( v23 )
    {
      *((_DWORD *)this + 65) = 1;
      std::vector<unsigned char *,vox::SAllocator<unsigned char *,(vox::VoxMemHint)0>>::vector(v29, 1);
      std::vector<unsigned char *,vox::SAllocator<unsigned char *,(vox::VoxMemHint)0>>::operator=(
        (int)this + 244,
        (int)v29);
      v20 = (void *)v29[0];
      if ( v29[0] )
        goto LABEL_15;
    }
    else
    {
      std::vector<unsigned char *,vox::SAllocator<unsigned char *,(vox::VoxMemHint)0>>::reserve(
        (int)this + 244,
        v22 + 1);
      if ( v22 >= 0 )
      {
        while ( 1 )
        {
          v25 = VoxAlloc(*((_DWORD *)this + 66));
          v26 = *((_DWORD **)this + 62);
          v27 = *((_DWORD **)this + 63);
          v31 = v25;
          if ( v26 == v27 )
          {
            std::vector<unsigned char *,vox::SAllocator<unsigned char *,(vox::VoxMemHint)0>>::_M_insert_overflow(
              (int)this + 244,
              (int)v26,
              &v31);
          }
          else
          {
            *v26 = v25;
            *((_DWORD *)this + 62) += 4;
          }
          if ( !*(_DWORD *)(*((_DWORD *)this + 61) + 4 * v23++) )
            break;
          v21 = *((_DWORD *)this + 65) + 1;
          *((_DWORD *)this + 65) = v21;
          if ( v22 < v23 )
            goto LABEL_16;
        }
      }
    }
  }
  else
  {
    v19 = *((_DWORD *)this + 69);
    *((_DWORD *)this + 65) = 1;
    if ( (*(int (__fastcall **)(int))(*(_DWORD *)v19 + 52))(v19) )
    {
      std::vector<unsigned char *,vox::SAllocator<unsigned char *,(vox::VoxMemHint)0>>::vector(p, 1);
      std::vector<unsigned char *,vox::SAllocator<unsigned char *,(vox::VoxMemHint)0>>::operator=(
        (int)this + 244,
        (int)p);
      v20 = p[0];
      if ( p[0] )
      {
LABEL_15:
        VoxFree(v20);
        v21 = *((_DWORD *)this + 65);
        goto LABEL_16;
      }
    }
    else
    {
      v30 = VoxAlloc(*((_DWORD *)this + 66));
      std::vector<unsigned char *,vox::SAllocator<unsigned char *,(vox::VoxMemHint)0>>::push_back((int)this + 244, &v30);
      if ( !**((_DWORD **)this + 61) )
      {
        *((_DWORD *)this + 65) = 0;
        goto LABEL_17;
      }
    }
  }
  v21 = *((_DWORD *)this + 65);
LABEL_16:
  if ( !v21 )
LABEL_17:
    *((_BYTE *)this + 284) = 1;
  vox::EmitterObj::SetDefaultParameters((pthread_mutex_t *)this);
LABEL_8:
  v15 = *((_DWORD *)this + 70);
  if ( *(_DWORD *)(v15 + 80) )
    v16 = 0;
  else
    v16 = *(_DWORD *)(v15 + 60);
  *((_DWORD *)this + 80) = (*(int (__fastcall **)(int, int))(*(_DWORD *)v16 + 24))(v16, v12);
  *((_BYTE *)this + 325) = 1;
  *((_BYTE *)this + 326) = 0;
  *((_BYTE *)this + 324) = 0;
  return this;
}


// ===== 86ca08 vox::VoxEngineInternal::CreateEmitter(vox::DataHandle &,int,void *) =====
vox::VoxEngineInternal *__fastcall vox::VoxEngineInternal::CreateEmitter(
        vox::VoxEngineInternal *this,
        vox::DataHandle *a2,
        int *a3,
        int a4,
        int a5)
{
  vox::AccessController *v5; // r8
  pthread_mutex_t *DataObject; // r0
  pthread_mutex_t *v10; // r5
  unsigned int IsReady; // r6
  volatile int value; // r11
  bool v13; // zf
  int v14; // r0
  int v15; // r0
  int v16; // r1
  int v17; // r2
  int v18; // r3
  int v19; // r3
  int v20; // r0
  int v21; // r2
  int v22; // r3
  int v23; // r3
  __int64 *v25; // r9
  int Group; // r0
  __int64 v27; // r2
  int v28; // [sp+1Ch] [bp-60h]
  int v29; // [sp+20h] [bp-5Ch]
  int v30; // [sp+24h] [bp-58h]
  volatile int v31; // [sp+28h] [bp-54h]
  vox::VoxEngineInternal **v33; // [sp+30h] [bp-4Ch]
  vox::DriverSourceInterface *v34; // [sp+34h] [bp-48h]
  __int64 FreeEmitterObjectId; // [sp+38h] [bp-44h]
  _BYTE v36[40]; // [sp+40h] [bp-3Ch] BYREF
  _DWORD v37[5]; // [sp+68h] [bp-14h] BYREF

  v5 = (vox::DataHandle *)((char *)a2 + 84);
  vox::AccessController::GetReadAccess((vox::DataHandle *)((char *)a2 + 84));
  DataObject = (pthread_mutex_t *)vox::VoxEngineInternal::GetDataObject((int)a2, a3);
  v10 = DataObject;
  if ( !DataObject )
    goto LABEL_23;
  IsReady = vox::DataObj::IsReady(DataObject);
  if ( !IsReady )
    goto LABEL_20;
  if ( !v10[20].value )
  {
    value = v10[14].value;
    v13 = value == 0;
    if ( value )
      v13 = v10[15].value == 0;
    v31 = v10[15].value;
    if ( !v13 )
    {
      v33 = (vox::VoxEngineInternal **)(*(int (__fastcall **)(volatile int))(*(_DWORD *)value + 20))(value);
      if ( v33 )
      {
        v14 = (*(int (__fastcall **)(volatile int, vox::VoxEngineInternal **))(*(_DWORD *)v31 + 16))(v31, v33);
        IsReady = v14;
        if ( v14 )
        {
          v15 = *(_DWORD *)(v14 + 4);
          v16 = *(_DWORD *)(IsReady + 8);
          v17 = *(_DWORD *)(IsReady + 12);
          v18 = *(_DWORD *)(IsReady + 16);
          v37[0] = *(_DWORD *)(IsReady + 4);
          v37[1] = v16;
          v37[2] = v17;
          v37[3] = v18;
          if ( v15 > 0
            && (v19 = *((_DWORD *)a2 + 339)) != 0
            && (v20 = (*(int (__fastcall **)(_DWORD, _DWORD *, int, int))(*(_DWORD *)v19 + 68))(
                        *((_DWORD *)a2 + 339),
                        v37,
                        a5,
                        a4),
                (v34 = (vox::DriverSourceInterface *)v20) != nullptr) )
          {
            if ( (*(int (__fastcall **)(int))(*(_DWORD *)v20 + 72))(v20)
              && (*(int (__fastcall **)(unsigned int))(*(_DWORD *)IsReady + 52))(IsReady) )
            {
              v21 = *(_DWORD *)(IsReady + 12);
              v22 = v21 * *(_DWORD *)(IsReady + 16) / 8;
            }
            else
            {
              v21 = *(_DWORD *)(IsReady + 12);
              v22 = *(_DWORD *)(IsReady + 4) * v21 / 8 * 150 * *(_DWORD *)(IsReady + 8) / 1000;
            }
            if ( v22 > 0 )
            {
              v28 = v22;
              v29 = v22 % (*(_DWORD *)(IsReady + 4) * v21 / 8);
              FreeEmitterObjectId = vox::VoxEngineInternal::GetFreeEmitterObjectId(a2);
              v30 = v10[8].value;
              v25 = (__int64 *)VoxAlloc(0x168u, 0);
              vox::EmitterObj::EmitterObj(
                (vox::EmitterObj *)v25,
                FreeEmitterObjectId,
                a4,
                v30,
                v28 - v29,
                v34,
                (vox::DecoderCursorInterface *)IsReady,
                (vox::DataObj *)v10);
              if ( v25 )
              {
                Group = vox::DataObj::GetGroup(v10);
                vox::EmitterObj::SetGroup((pthread_mutex_t *)v25, Group);
                vox::DataObj::RegisterEmitter(v10, v25[1]);
                vox::AccessController::ReleaseReadAccess(v5);
                v27 = v25[1];
                *((_DWORD *)v25 + 5) = *((_DWORD *)a2 + 356);
                vox::EmitterHandle::EmitterHandle(
                  (vox::EmitterHandle *)v36,
                  v27,
                  (vox::VoxEngineInternal **)&vox::VoxEngineInternal::s_voxEngineInternal,
                  (vox::Handlable *)v25,
                  *((_DWORD *)a2 + *((_DWORD *)a2 + 356) + 340),
                  *((_DWORD *)a2 + 356));
                *((_DWORD *)a2 + 356) = ((unsigned __int8)*((_DWORD *)a2 + 356) + 1) & 0xF;
                vox::AccessController::GetWriteAccess((vox::DataHandle *)((char *)a2 + 208));
                vox::HandlableContainer::Add((int *)a2 + 38, (int)v25);
                vox::AccessController::ReleaseWriteAccess((vox::DataHandle *)((char *)a2 + 208));
                vox::EmitterHandle::EmitterHandle(this, (const vox::EmitterHandle *)v36);
                vox::EmitterHandle::~EmitterHandle((vox::EmitterHandle *)v36);
                return this;
              }
            }
            (*(void (__fastcall **)(volatile int, vox::VoxEngineInternal **))(*(_DWORD *)value + 24))(value, v33);
            (*(void (__fastcall **)(volatile int, unsigned int))(*(_DWORD *)v31 + 20))(v31, IsReady);
            v23 = *((_DWORD *)a2 + 339);
            if ( v23 )
              (*(void (__fastcall **)(_DWORD, vox::DriverSourceInterface *))(*(_DWORD *)v23 + 72))(
                *((_DWORD *)a2 + 339),
                v34);
          }
          else
          {
            (*(void (__fastcall **)(volatile int, vox::VoxEngineInternal **))(*(_DWORD *)value + 24))(value, v33);
            (*(void (__fastcall **)(volatile int, unsigned int))(*(_DWORD *)v31 + 20))(v31, IsReady);
          }
          goto LABEL_17;
        }
        (*(void (__fastcall **)(volatile int, vox::VoxEngineInternal **))(*(_DWORD *)value + 24))(value, v33);
LABEL_20:
        vox::AccessController::ReleaseReadAccess(v5);
        vox::EmitterHandle::EmitterHandle(
          this,
          -1,
          (vox::VoxEngineInternal **)IsReady,
          (vox::Handlable *)IsReady,
          IsReady,
          IsReady);
        return this;
      }
LABEL_23:
      vox::AccessController::ReleaseReadAccess(v5);
      vox::EmitterHandle::EmitterHandle(this, -1, nullptr, nullptr, 0, 0);
      return this;
    }
  }
LABEL_17:
  vox::AccessController::ReleaseReadAccess(v5);
  vox::EmitterHandle::EmitterHandle(this, -1, nullptr, nullptr, 0, 0);
  return this;
}


// ===== 86ce1c vox::EmitterObj::EmitterObj(long long,int,int,int,vox::DriverSourceInterface *,vox::DecoderCursorInterface *,vox::DataObj *) =====
vox::EmitterObj *__fastcall vox::EmitterObj::EmitterObj(
        vox::EmitterObj *this,
        __int64 a2,
        int a3,
        int a4,
        int a5,
        vox::DriverSourceInterface *a6,
        vox::DecoderCursorInterface *a7,
        vox::DataObj *a8)
{
  int v10; // r3
  vox::EmitterObj *v11; // r2
  int v12; // r1
  int v13; // r3
  bool v14; // zf
  int v15; // r3
  int v16; // r3
  _DWORD *v18; // r2
  int v19; // r3
  void *v20; // r0
  int v21; // r3
  int v22; // r6
  int v23; // r5
  void *v25; // r0
  _DWORD *v26; // r1
  _DWORD *v27; // r3
  void *p[3]; // [sp+0h] [bp-20h] BYREF
  _DWORD v29[3]; // [sp+Ch] [bp-14h] BYREF
  void *v30; // [sp+18h] [bp-8h] BYREF
  void *v31; // [sp+1Ch] [bp-4h] BYREF

  *((_QWORD *)this + 1) = a2;
  *(_DWORD *)this = off_9934D8;
  *((_DWORD *)this + 4) = 0;
  vox::Mutex::Mutex((vox::EmitterObj *)((char *)this + 24));
  *(_DWORD *)this = off_9934C0;
  *((_DWORD *)this + 11) = a3;
  *((_DWORD *)this + 8) = 1;
  *((_DWORD *)this + 12) = a4;
  *((_DWORD *)this + 18) = 0;
  *((_DWORD *)this + 20) = 0;
  *((_DWORD *)this + 21) = 0;
  *((_BYTE *)this + 88) = 1;
  *((_DWORD *)this + 23) = 0;
  *((_DWORD *)this + 25) = 0;
  *((_DWORD *)this + 26) = 0;
  *((_BYTE *)this + 108) = 1;
  *((_DWORD *)this + 30) = 0;
  *((_DWORD *)this + 32) = 0;
  *((_DWORD *)this + 33) = 0;
  *((_BYTE *)this + 136) = 1;
  *((_BYTE *)this + 28) = 0;
  *((_DWORD *)this + 10) = 0;
  *((_BYTE *)this + 52) = 0;
  *((_DWORD *)this + 14) = 1065353216;
  *((_DWORD *)this + 15) = 1065353216;
  *((_DWORD *)this + 16) = 1065353216;
  *((_DWORD *)this + 17) = 1065353216;
  *((_DWORD *)this + 19) = 1065353216;
  *((_DWORD *)this + 24) = 1065353216;
  *((_DWORD *)this + 28) = 1065353216;
  *((_DWORD *)this + 29) = 1065353216;
  *((_DWORD *)this + 31) = 1065353216;
  *((_BYTE *)this + 140) = 0;
  *((_BYTE *)this + 141) = 0;
  *((_DWORD *)this + 36) = 0;
  *((_DWORD *)this + 37) = 0;
  *((_BYTE *)this + 152) = 0;
  *((_DWORD *)this + 50) = 1120403456;
  *((_DWORD *)this + 53) = 1135869952;
  *((_DWORD *)this + 55) = 2139095039;
  v10 = 0;
  *((_DWORD *)this + 66) = a5;
  *((_DWORD *)this + 68) = a6;
  *((_DWORD *)this + 39) = 0;
  *((_DWORD *)this + 40) = 0;
  *((_DWORD *)this + 41) = 0;
  *((_DWORD *)this + 42) = 0;
  *((_DWORD *)this + 43) = 0;
  *((_DWORD *)this + 44) = 0;
  *((_DWORD *)this + 45) = 0;
  *((_DWORD *)this + 46) = 0;
  *((_DWORD *)this + 47) = 0;
  *((_DWORD *)this + 54) = 0;
  *((_DWORD *)this + 70) = a8;
  *((_DWORD *)this + 73) = 1065353216;
  *((_BYTE *)this + 153) = 0;
  *((_DWORD *)this + 48) = 0;
  *((_DWORD *)this + 49) = 2139095039;
  *((_DWORD *)this + 51) = 1065353216;
  *((_DWORD *)this + 52) = 1135869952;
  *((_DWORD *)this + 59) = 0;
  *((_DWORD *)this + 60) = 0;
  *((_DWORD *)this + 61) = 0;
  *((_DWORD *)this + 62) = 0;
  *((_DWORD *)this + 63) = 0;
  *((_DWORD *)this + 67) = 0;
  *((_DWORD *)this + 69) = a7;
  *((_DWORD *)this + 72) = 0;
  *((_DWORD *)this + 74) = 0;
  *((_DWORD *)this + 75) = 0;
  *((_BYTE *)this + 304) = 1;
  *((_DWORD *)this + 77) = -1;
  *((_BYTE *)this + 284) = 0;
  *((_BYTE *)this + 285) = 0;
  *((_DWORD *)this + 78) = 0;
  *((_DWORD *)this + 79) = 0;
  v11 = this;
  do
  {
    ++v10;
    *((_BYTE *)v11 + 224) = 0;
    v12 = 0;
    v11 = (vox::EmitterObj *)((char *)v11 + 1);
  }
  while ( v10 != 11 );
  v13 = *((_DWORD *)this + 68);
  *((_DWORD *)this + 65) = 0;
  *((_DWORD *)this + 64) = 0;
  v14 = a7 == nullptr;
  if ( a7 )
    v14 = v13 == 0;
  if ( v14 )
  {
    *((_BYTE *)this + 284) = 1;
    goto LABEL_8;
  }
  v18 = *((_DWORD **)this + 69);
  *((_DWORD *)this + 9) = v18[1] * v18[4] * ((int)v18[3] >> 3);
  *((_DWORD *)this + 8) = ((int)v18[3] >> 3) * v18[1] * v18[2];
  if ( (*(int (__fastcall **)(int))(*(_DWORD *)v13 + 72))(v13) )
  {
    v22 = (*(int (__fastcall **)(_DWORD))(**((_DWORD **)this + 68) + 84))(*((_DWORD *)this + 68));
    v23 = (*(int (__fastcall **)(_DWORD))(**((_DWORD **)this + 69) + 52))(*((_DWORD *)this + 69));
    if ( v23 )
    {
      *((_DWORD *)this + 65) = 1;
      std::vector<unsigned char *,vox::SAllocator<unsigned char *,(vox::VoxMemHint)0>>::vector(v29, 1);
      std::vector<unsigned char *,vox::SAllocator<unsigned char *,(vox::VoxMemHint)0>>::operator=(
        (int)this + 244,
        (int)v29);
      v20 = (void *)v29[0];
      if ( v29[0] )
        goto LABEL_15;
    }
    else
    {
      std::vector<unsigned char *,vox::SAllocator<unsigned char *,(vox::VoxMemHint)0>>::reserve(
        (int)this + 244,
        v22 + 1);
      if ( v22 >= 0 )
      {
        while ( 1 )
        {
          v25 = VoxAlloc(*((_DWORD *)this + 66));
          v26 = *((_DWORD **)this + 62);
          v27 = *((_DWORD **)this + 63);
          v31 = v25;
          if ( v26 == v27 )
          {
            std::vector<unsigned char *,vox::SAllocator<unsigned char *,(vox::VoxMemHint)0>>::_M_insert_overflow(
              (int)this + 244,
              (int)v26,
              &v31);
          }
          else
          {
            *v26 = v25;
            *((_DWORD *)this + 62) += 4;
          }
          if ( !*(_DWORD *)(*((_DWORD *)this + 61) + 4 * v23++) )
            break;
          v21 = *((_DWORD *)this + 65) + 1;
          *((_DWORD *)this + 65) = v21;
          if ( v22 < v23 )
            goto LABEL_16;
        }
      }
    }
  }
  else
  {
    v19 = *((_DWORD *)this + 69);
    *((_DWORD *)this + 65) = 1;
    if ( (*(int (__fastcall **)(int))(*(_DWORD *)v19 + 52))(v19) )
    {
      std::vector<unsigned char *,vox::SAllocator<unsigned char *,(vox::VoxMemHint)0>>::vector(p, 1);
      std::vector<unsigned char *,vox::SAllocator<unsigned char *,(vox::VoxMemHint)0>>::operator=(
        (int)this + 244,
        (int)p);
      v20 = p[0];
      if ( p[0] )
      {
LABEL_15:
        VoxFree(v20);
        v21 = *((_DWORD *)this + 65);
        goto LABEL_16;
      }
    }
    else
    {
      v30 = VoxAlloc(*((_DWORD *)this + 66));
      std::vector<unsigned char *,vox::SAllocator<unsigned char *,(vox::VoxMemHint)0>>::push_back((int)this + 244, &v30);
      if ( !**((_DWORD **)this + 61) )
      {
        *((_DWORD *)this + 65) = 0;
        goto LABEL_17;
      }
    }
  }
  v21 = *((_DWORD *)this + 65);
LABEL_16:
  if ( !v21 )
LABEL_17:
    *((_BYTE *)this + 284) = 1;
  vox::EmitterObj::SetDefaultParameters((pthread_mutex_t *)this);
LABEL_8:
  v15 = *((_DWORD *)this + 70);
  if ( *(_DWORD *)(v15 + 80) )
    v16 = 0;
  else
    v16 = *(_DWORD *)(v15 + 60);
  *((_DWORD *)this + 80) = (*(int (__fastcall **)(int, int))(*(_DWORD *)v16 + 24))(v16, v12);
  *((_BYTE *)this + 325) = 1;
  *((_BYTE *)this + 326) = 0;
  *((_BYTE *)this + 324) = 0;
  return this;
}


// ===== 86d238 vox::EmitterObj::LoadAsync(void) =====
int __fastcall vox::EmitterObj::LoadAsync(vox::EmitterObj *this)
{
  _DWORD *v1; // r3
  int v4; // r6
  int v5; // r5
  bool v6; // zf
  int v7; // r10
  int v8; // r0
  int v9; // r7
  int v10; // r3
  _DWORD *v11; // r7
  int v12; // kr00_4
  int v13; // r1
  int v14; // r6
  int v15; // r5
  int v17; // r3
  void *v18; // r0
  _DWORD *v19; // r1
  _DWORD *v20; // r3
  int v21; // r3
  void *v22; // r0
  _DWORD *v23; // r1
  void *p[3]; // [sp+0h] [bp-24h] BYREF
  _DWORD v25[3]; // [sp+Ch] [bp-18h] BYREF
  void *v26; // [sp+18h] [bp-Ch] BYREF
  void *v27; // [sp+1Ch] [bp-8h] BYREF

  v1 = *((_DWORD **)this + 70);
  if ( !v1 || !*((_DWORD *)this + 68) || v1[20] )
    goto LABEL_4;
  v4 = v1[15];
  v5 = v1[14];
  v6 = v5 == 0;
  if ( v5 )
    v6 = v4 == 0;
  if ( v6 )
  {
LABEL_4:
    *((_BYTE *)this + 284) = 1;
    *((_DWORD *)this + 36) = -1;
    return 0;
  }
  v7 = (*(int (__fastcall **)(int))(*(_DWORD *)v5 + 20))(v5);
  if ( v7 )
  {
    v8 = (*(int (__fastcall **)(int, int))(*(_DWORD *)v4 + 16))(v4, v7);
    v9 = v8;
    if ( v8 )
    {
      v10 = *((_DWORD *)this + 68);
      *((_DWORD *)this + 69) = v8;
      if ( (*(int (__fastcall **)(int))(*(_DWORD *)v10 + 72))(v10)
        && (*(int (__fastcall **)(_DWORD))(**((_DWORD **)this + 69) + 52))(*((_DWORD *)this + 69)) )
      {
        v11 = *((_DWORD **)this + 69);
        v13 = v11[3] * v11[4] / 8;
        *((_DWORD *)this + 66) = v13;
      }
      else
      {
        v11 = *((_DWORD **)this + 69);
        v12 = v11[1] * v11[3] / 8 * 150 * v11[2];
        *((_DWORD *)this + 66) = v12 / 1000;
        v13 = v12 / 1000 - v12 / 1000 % (v11[1] * v11[3] / 8);
        *((_DWORD *)this + 66) = v13;
      }
      if ( v13 > 0 )
      {
        if ( (*(int (__fastcall **)(_DWORD))(**((_DWORD **)this + 68) + 72))(*((_DWORD *)this + 68)) )
        {
          v14 = (*(int (__fastcall **)(_DWORD))(**((_DWORD **)this + 68) + 84))(*((_DWORD *)this + 68));
          v15 = (*(int (__fastcall **)(_DWORD))(**((_DWORD **)this + 69) + 52))(*((_DWORD *)this + 69));
          if ( !v15 )
          {
            std::vector<unsigned char *,vox::SAllocator<unsigned char *,(vox::VoxMemHint)0>>::reserve(
              (int)this + 244,
              v14 + 1);
            if ( v14 >= 0 )
            {
              while ( 1 )
              {
                v18 = VoxAlloc(*((_DWORD *)this + 66));
                v19 = *((_DWORD **)this + 62);
                v20 = *((_DWORD **)this + 63);
                v27 = v18;
                if ( v19 == v20 )
                {
                  std::vector<unsigned char *,vox::SAllocator<unsigned char *,(vox::VoxMemHint)0>>::_M_insert_overflow(
                    (int)this + 244,
                    (int)v19,
                    &v27);
                }
                else
                {
                  *v19 = v18;
                  *((_DWORD *)this + 62) += 4;
                }
                if ( !*(_DWORD *)(*((_DWORD *)this + 61) + 4 * v15++) )
                  break;
                v17 = *((_DWORD *)this + 65) + 1;
                *((_DWORD *)this + 65) = v17;
                if ( v14 < v15 )
                  goto LABEL_27;
              }
            }
            goto LABEL_34;
          }
          *((_DWORD *)this + 65) = 1;
          std::vector<unsigned char *,vox::SAllocator<unsigned char *,(vox::VoxMemHint)0>>::vector(v25, 1);
          std::vector<unsigned char *,vox::SAllocator<unsigned char *,(vox::VoxMemHint)0>>::operator=(
            (int)this + 244,
            (int)v25);
          v22 = (void *)v25[0];
          if ( !v25[0] )
          {
            v17 = *((_DWORD *)this + 65);
LABEL_27:
            if ( v17 )
              return 1;
            goto LABEL_29;
          }
        }
        else
        {
          v21 = *((_DWORD *)this + 69);
          *((_DWORD *)this + 65) = 1;
          if ( !(*(int (__fastcall **)(int))(*(_DWORD *)v21 + 52))(v21) )
          {
            v26 = VoxAlloc(*((_DWORD *)this + 66));
            std::vector<unsigned char *,vox::SAllocator<unsigned char *,(vox::VoxMemHint)0>>::push_back(
              (int)this + 244,
              &v26);
            if ( !**((_DWORD **)this + 61) )
            {
              *((_DWORD *)this + 65) = 0;
LABEL_29:
              *((_BYTE *)this + 284) = 1;
              return 0;
            }
            goto LABEL_34;
          }
          std::vector<unsigned char *,vox::SAllocator<unsigned char *,(vox::VoxMemHint)0>>::vector(p, 1);
          std::vector<unsigned char *,vox::SAllocator<unsigned char *,(vox::VoxMemHint)0>>::operator=(
            (int)this + 244,
            (int)p);
          v22 = p[0];
          if ( !p[0] )
          {
LABEL_34:
            v17 = *((_DWORD *)this + 65);
            goto LABEL_27;
          }
        }
        VoxFree(v22);
        v17 = *((_DWORD *)this + 65);
        goto LABEL_27;
      }
      v23 = v11;
      v9 = 0;
      (*(void (__fastcall **)(int, _DWORD *))(*(_DWORD *)v4 + 20))(v4, v23);
      *((_DWORD *)this + 69) = 0;
    }
    (*(void (__fastcall **)(int, int))(*(_DWORD *)v5 + 24))(v5, v7);
    *((_BYTE *)this + 284) = 1;
    *((_DWORD *)this + 36) = -1;
    return v9;
  }
  else
  {
    *((_BYTE *)this + 284) = 1;
    *((_DWORD *)this + 36) = -1;
    return 0;
  }
}


// ===== 86d5b8 vox::EmitterObj::Update(float) =====
int __fastcall vox::EmitterObj::Update(pthread_mutex_t *this, float a2)
{
  pthread_mutex_t *v2; // r7
  int v5; // r9
  float v6; // r6
  float v7; // r10
  float v8; // r8
  float v9; // r1
  float v10; // r0
  float v11; // r8
  float v12; // r1
  int v13; // r3
  float v14; // r0
  float v15; // r6
  float v16; // r6
  float v17; // r8
  float v18; // r0
  int v19; // r3
  float v20; // r0
  float v21; // r6
  int v22; // r6
  int v23; // r3
  int v24; // r2
  int v25; // r0
  int v26; // r3
  int v27; // r3
  int v28; // r0
  int v30; // r0
  int v31; // r3

  v2 = this + 6;
  vox::Mutex::Lock(this + 6);
  v5 = *((_DWORD *)this + 36);
  if ( *((_BYTE *)this + 28) && v5 != -1 )
  {
    if ( !vox::EmitterObj::LoadAsync((vox::EmitterObj *)this) )
      return vox::Mutex::Unlock(v2);
    *((_BYTE *)this + 28) = 0;
  }
  if ( !*((_BYTE *)this + 153)
    || (v27 = *((_DWORD *)this + 69),
        *((_BYTE *)this + 153) = 0,
        (*(void (__fastcall **)(int))(*(_DWORD *)v27 + 28))(v27),
        v28 = (*(int (__fastcall **)(_DWORD))(**((_DWORD **)this + 68) + 24))(*((_DWORD *)this + 68)),
        (*((_DWORD *)this + 36) = v28) == 0) )
  {
    if ( *((unsigned __int8 *)this + 140) != *((unsigned __int8 *)this + 141) )
    {
      (*(void (__fastcall **)(_DWORD))(**((_DWORD **)this + 69) + 44))(*((_DWORD *)this + 69));
      *((_BYTE *)this + 140) = *((_BYTE *)this + 141);
    }
    if ( *(_DWORD *)(*((_DWORD *)this + 69) + 4) == 1 )
      vox::EmitterObj::Update3D((vox::EmitterObj *)this);
    vox::EmitterObj::UpdateDSP((vox::EmitterObj *)this, a2);
    v6 = *((float *)this + 20);
    if ( v6 < *((float *)this + 21) )
    {
      *((float *)this + 20) = a2 + v6;
      v6 = a2 + v6;
    }
    else
    {
      *((_BYTE *)this + 88) = 1;
    }
    v7 = *((float *)this + 25);
    if ( v7 < *((float *)this + 26) )
    {
      v7 = a2 + v7;
      *((float *)this + 25) = v7;
    }
    else
    {
      *((_BYTE *)this + 108) = 1;
    }
    v8 = *((float *)this + 26);
    if ( v8 > v7 )
    {
      if ( v8 > 0.0 )
        v9 = *((float *)this + 23) + (float)((float)((float)(*((float *)this + 24) - *((float *)this + 23)) * v7) / v8);
      else
        v9 = *((float *)this + 23);
    }
    else
    {
      v9 = *((float *)this + 24);
    }
    v10 = *((float *)this + 17) * v9;
    v11 = *((float *)this + 21);
    if ( v6 < v11 )
    {
      if ( v11 > 0.0 )
        v12 = *((float *)this + 18)
            + (float)((float)(v6 * (float)(*((float *)this + 19) - *((float *)this + 18))) / v11);
      else
        v12 = *((float *)this + 18);
    }
    else
    {
      v12 = *((float *)this + 19);
    }
    v13 = *((_DWORD *)this + 68);
    *((float *)this + 15) = v10 * v12;
    v14 = COERCE_FLOAT((*(int (__fastcall **)(int))(*(_DWORD *)v13 + 52))(v13));
    v15 = *((float *)this + 15);
    *((float *)this + 14) = v14;
    if ( v14 != v15 )
    {
      (*(void (__fastcall **)(_DWORD, float))(**((_DWORD **)this + 68) + 44))(
        *((_DWORD *)this + 68),
        COERCE_FLOAT(LODWORD(v15)));
      *(this + 14) = *(this + 15);
    }
    v16 = *((float *)this + 32);
    if ( v16 < *((float *)this + 33) )
    {
      v16 = a2 + v16;
      *((float *)this + 32) = v16;
    }
    else
    {
      *((_BYTE *)this + 136) = 1;
    }
    v17 = *((float *)this + 33);
    if ( v16 < v17 )
    {
      if ( v17 > 0.0 )
        v18 = *((float *)this + 30)
            + (float)((float)(v16 * (float)(*((float *)this + 31) - *((float *)this + 30))) / v17);
      else
        v18 = *((float *)this + 30);
    }
    else
    {
      v18 = *((float *)this + 31);
    }
    v19 = *((_DWORD *)this + 68);
    *((float *)this + 29) = v18;
    v20 = COERCE_FLOAT((*(int (__fastcall **)(int))(*(_DWORD *)v19 + 56))(v19));
    v21 = *((float *)this + 29);
    *((float *)this + 28) = v20;
    if ( v20 != v21 )
    {
      (*(void (__fastcall **)(_DWORD, float))(**((_DWORD **)this + 68) + 48))(
        *((_DWORD *)this + 68),
        COERCE_FLOAT(LODWORD(v21)));
      *(this + 28) = *(this + 29);
    }
    v22 = (*(int (__fastcall **)(_DWORD))(**((_DWORD **)this + 68) + 24))(*((_DWORD *)this + 68));
    *((_DWORD *)this + 36) = v22;
    if ( v22 == 3 )
    {
      if ( *((_DWORD *)this + 37) == 3 )
        goto LABEL_39;
      if ( !(*(int (__fastcall **)(_DWORD))(**((_DWORD **)this + 69) + 24))(*((_DWORD *)this + 69)) )
      {
        *((_DWORD *)this + 37) = 3;
        *((_BYTE *)this + 153) = 1;
        *((_BYTE *)this + 325) = 1;
        goto LABEL_39;
      }
      v22 = *((_DWORD *)this + 36);
    }
    if ( v22 == -1 )
    {
      if ( v5 == -1 )
        return vox::Mutex::Unlock(v2);
      goto LABEL_47;
    }
LABEL_39:
    if ( *((_DWORD *)this + 80) == 4 )
      vox::EmitterObj::ProcessNativeData((vox::EmitterObj *)this, a2);
    else
      vox::EmitterObj::ProcessNonNativeData((vox::EmitterObj *)this, a2);
    v23 = *((_DWORD *)this + 36);
    v24 = *((_DWORD *)this + 37);
    v25 = v23;
    if ( v24 != v23 )
    {
      switch ( v24 )
      {
        case 0:
          goto LABEL_61;
        case 1:
          v26 = *((_DWORD *)this + 68);
          *((_BYTE *)this + 325) = 0;
          (*(void (__fastcall **)(int))(*(_DWORD *)v26 + 8))(v26);
          goto LABEL_44;
        case 2:
          if ( !*((_BYTE *)this + 108) )
            break;
          (*(void (__fastcall **)(_DWORD, _DWORD))(**((_DWORD **)this + 68) + 44))(*((_DWORD *)this + 68), 0);
          (*(void (__fastcall **)(_DWORD))(**((_DWORD **)this + 68) + 16))(*((_DWORD *)this + 68));
LABEL_44:
          v25 = (*(int (__fastcall **)(_DWORD))(**((_DWORD **)this + 68) + 24))(*((_DWORD *)this + 68));
          *((_DWORD *)this + 36) = v25;
          break;
        case 3:
          if ( v23 )
          {
            if ( *((_BYTE *)this + 108) )
            {
              (*(void (__fastcall **)(_DWORD))(**((_DWORD **)this + 68) + 12))(*((_DWORD *)this + 68));
              v30 = (*(int (__fastcall **)(_DWORD))(**((_DWORD **)this + 68) + 24))(*((_DWORD *)this + 68));
              if ( !v30 )
                v31 = 3;
              *((_DWORD *)this + 36) = v30;
              if ( !v30 )
                *((_DWORD *)this + 36) = v31;
              *((_BYTE *)this + 325) = 1;
              *((_BYTE *)this + 153) = 1;
              v25 = *((_DWORD *)this + 36);
            }
          }
          else
          {
LABEL_61:
            *((_DWORD *)this + 37) = v23;
            v25 = v23;
          }
          break;
        default:
          v25 = -1;
          *((_DWORD *)this + 36) = -1;
          *((_DWORD *)this + 37) = -1;
          break;
      }
    }
    if ( v5 == v25 || !v25 )
      return vox::Mutex::Unlock(v2);
LABEL_47:
    *((_BYTE *)this + 152) = 1;
    return vox::Mutex::Unlock(v2);
  }
  (*(void (__fastcall **)(_DWORD))(**((_DWORD **)this + 68) + 20))(*((_DWORD *)this + 68));
  return vox::Mutex::Unlock(v2);
}


// ===== 86db40 vox::VoxEngineInternal::UpdateEmitters(float) =====
int __fastcall vox::VoxEngineInternal::UpdateEmitters(vox::VoxEngineInternal *this, float a2)
{
  float v4; // r5
  float v5; // r6
  float v6; // r9
  vox::VoxEngineInternal *v7; // r8
  vox::VoxEngineInternal *v8; // r5
  int v9; // r7
  float v10; // r10
  float v11; // r6
  float v12; // r1
  vox::HandlableContainer *v13; // r5
  char *v14; // r8
  int v15; // r3
  vox::EmitterObj *v16; // r7
  int Group; // r0
  int v18; // r2
  int v19; // r3
  char *v20; // r10
  int v21; // r7
  int v22; // r2
  vox::PriorityBankManager *v23; // r0
  int result; // r0
  int v25; // r1
  int v26; // r1
  int v27; // r3
  void (__fastcall *v28)(vox::VoxEngineInternal *, int); // r7
  int v29; // r0
  unsigned int v30; // r2
  unsigned int v31; // r3
  unsigned int v32; // r9
  unsigned int v33; // r9
  char *v34; // r0
  _BYTE *v35; // r1
  char *v36; // r8
  size_t v37; // r10
  char *v38; // r10
  pthread_mutex_t *mutex; // [sp+4h] [bp-18h]
  int v40; // [sp+8h] [bp-14h] BYREF
  int v41; // [sp+Ch] [bp-10h] BYREF
  int v42; // [sp+10h] [bp-Ch] BYREF
  int v43; // [sp+14h] [bp-8h] BYREF

  mutex = (pthread_mutex_t *)((char *)this + 1012);
  vox::Mutex::Lock((pthread_mutex_t *)this + 253);
  if ( *((int *)this + 357) > 0 )
    return vox::Mutex::Unlock(mutex);
  if ( a2 >= 0.0 )
  {
    if ( a2 > 0.1 )
      a2 = 0.1;
  }
  else
  {
    a2 = 0.0;
  }
  vox::VoxEngineInternal::Update3D(this);
  vox::VoxEngineInternal::UpdateDSP(this, a2);
  v4 = *((float *)this + 58);
  if ( v4 < *((float *)this + 59) )
  {
    v4 = a2 + v4;
    *((float *)this + 58) = v4;
  }
  else
  {
    *((_BYTE *)this + 240) = 1;
  }
  v5 = *((float *)this + 59);
  if ( v5 > v4 )
  {
    if ( v5 > 0.0 )
      v6 = *((float *)this + 56) + (float)((float)((float)(*((float *)this + 57) - *((float *)this + 56)) * v4) / v5);
    else
      v6 = *((float *)this + 56);
  }
  else
  {
    v6 = *((float *)this + 57);
  }
  v7 = this;
  v8 = this;
  v9 = 0;
  do
  {
    v10 = *((float *)v8 + 63);
    if ( v10 < *((float *)v8 + 64) )
    {
      v10 = a2 + v10;
      *((float *)v8 + 63) = v10;
    }
    else
    {
      *((_BYTE *)v8 + 260) = 1;
    }
    v11 = *((float *)v8 + 64);
    if ( v10 < v11 )
    {
      if ( v11 > 0.0 )
        v12 = *((float *)v8 + 61) + (float)((float)(v10 * (float)(*((float *)v8 + 62) - *((float *)v8 + 61))) / v11);
      else
        v12 = *((float *)v8 + 61);
    }
    else
    {
      v12 = *((float *)v8 + 62);
    }
    ++v9;
    *((float *)v7 + 221) = v6 * v12;
    v8 = (vox::VoxEngineInternal *)((char *)v8 + 20);
    v7 = (vox::VoxEngineInternal *)((char *)v7 + 4);
  }
  while ( v9 != 32 );
  vox::Mutex::Unlock(mutex);
  vox::AccessController::GetWriteAccess((vox::VoxEngineInternal *)((char *)this + 196));
  vox::AccessController::GetWriteAccess((vox::VoxEngineInternal *)((char *)this + 208));
  if ( *((int *)this + 42) > 0 )
  {
    v13 = (vox::VoxEngineInternal *)((char *)this + 120);
    v14 = (char *)this + 152;
    vox::HandlableContainer::Merge(
      (vox::VoxEngineInternal *)((char *)this + 120),
      (vox::VoxEngineInternal *)((char *)this + 152));
    if ( *((_DWORD *)this + 42) )
    {
      std::priv::_Rb_tree<long long,vox::HandleIdCompStruct,std::pair<long long const,vox::Handlable *>,std::priv::_Select1st<std::pair<long long const,vox::Handlable *>>,std::priv::_MapTraitsT<std::pair<long long const,vox::Handlable *>>,vox::SAllocator<std::pair<long long,vox::Handlable *>,(vox::VoxMemHint)0>>::_M_erase(
        (char *)this + 152,
        *((_DWORD *)this + 39));
      *((_DWORD *)this + 41) = v14;
      *((_DWORD *)this + 42) = 0;
      *((_DWORD *)this + 40) = v14;
      *((_DWORD *)this + 39) = 0;
    }
  }
  else
  {
    v13 = (vox::VoxEngineInternal *)((char *)this + 120);
  }
  vox::AccessController::ReleaseWriteAccess((vox::VoxEngineInternal *)((char *)this + 208));
  vox::AccessController::ReleaseWriteAccess((vox::VoxEngineInternal *)((char *)this + 196));
  vox::AccessController::GetReadAccess((vox::VoxEngineInternal *)((char *)this + 196));
  vox::HandlableContainer::begin((vox::HandlableContainer *)&v43);
  vox::HandlableContainer::end((vox::HandlableContainer *)&v42);
  v15 = v43;
  while ( v42 != v15 )
  {
    v16 = *(vox::EmitterObj **)(v15 + 24);
    Group = vox::EmitterObj::GetGroup(v16);
    vox::EmitterObj::SetGainModifier(v16, *((float *)this + Group + 221));
    vox::EmitterObj::Update(*(pthread_mutex_t **)(v43 + 24), a2);
    v15 = v43;
    v18 = *(_DWORD *)(v43 + 12);
    if ( v18 )
    {
      while ( *(_DWORD *)(v18 + 8) )
        v18 = *(_DWORD *)(v18 + 8);
      v15 = v18;
      v43 = v18;
    }
    else
    {
      v25 = *(_DWORD *)(v43 + 4);
      if ( v43 == *(_DWORD *)(v25 + 12) )
      {
        do
        {
          v15 = v25;
          v25 = *(_DWORD *)(v25 + 4);
        }
        while ( v15 == *(_DWORD *)(v25 + 12) );
        v18 = *(_DWORD *)(v15 + 12);
      }
      if ( v25 != v18 )
        v15 = v25;
      v43 = v15;
    }
  }
  vox::HandlableContainer::begin((vox::HandlableContainer *)&v41);
  v43 = v41;
  vox::HandlableContainer::end((vox::HandlableContainer *)&v40);
  v19 = v43;
  v42 = v40;
  while ( v19 != v42 )
  {
    if ( vox::EmitterObj::ShouldDie(*(vox::EmitterObj **)(v19 + 24)) )
    {
      v20 = *((char **)this + 47);
      v21 = *(_DWORD *)(v43 + 24);
      if ( v20 == *((char **)this + 48) )
      {
        v31 = (int)&v20[-*((_DWORD *)this + 46)] >> 2;
        if ( v31 )
          v32 = 2 * v31;
        else
          v32 = 1;
        if ( v32 > 0x3FFFFFFF || v31 > v32 )
          v33 = -4;
        else
          v33 = 4 * v32;
        v34 = (char *)VoxAlloc(v33);
        v35 = *((_BYTE **)this + 46);
        v36 = v34;
        v37 = v20 - v35;
        if ( v37 )
          v38 = (char *)memmove(v34, v35, v37) + v37;
        else
          v38 = v34;
        *(_DWORD *)v38 = v21;
        VoxFree(*((void **)this + 46));
        *((_DWORD *)this + 47) = v38 + 4;
        *((_DWORD *)this + 48) = &v36[v33];
        *((_DWORD *)this + 46) = v36;
      }
      else
      {
        *(_DWORD *)v20 = v21;
        *((_DWORD *)this + 47) += 4;
      }
    }
    v19 = v43;
    v22 = *(_DWORD *)(v43 + 12);
    if ( v22 )
    {
      while ( *(_DWORD *)(v22 + 8) )
        v22 = *(_DWORD *)(v22 + 8);
      v19 = v22;
      v43 = v22;
    }
    else
    {
      v26 = *(_DWORD *)(v43 + 4);
      if ( v43 == *(_DWORD *)(v26 + 12) )
      {
        do
        {
          v19 = v26;
          v26 = *(_DWORD *)(v26 + 4);
        }
        while ( *(_DWORD *)(v26 + 12) == v19 );
        v22 = *(_DWORD *)(v19 + 12);
      }
      if ( v26 != v22 )
        v19 = v26;
      v43 = v19;
    }
  }
  v23 = *((vox::PriorityBankManager **)this + 55);
  if ( v23 )
    vox::PriorityBankManager::Update(v23);
  result = vox::AccessController::ReleaseReadAccess((vox::VoxEngineInternal *)((char *)this + 196));
  if ( (unsigned int)(*((_DWORD *)this + 47) - *((_DWORD *)this + 46)) >> 2 )
  {
    vox::AccessController::GetWriteAccess((vox::VoxEngineInternal *)((char *)this + 196));
    v27 = *((_DWORD *)this + 47);
    if ( (unsigned int)(v27 - *((_DWORD *)this + 46)) >> 2 )
    {
      do
      {
        v28 = *(void (__fastcall **)(vox::VoxEngineInternal *, int))(*(_DWORD *)this + 32);
        v29 = vox::HandlableContainer::Detach(v13, *(_QWORD *)(*(_DWORD *)(v27 - 4) + 8));
        v28(this, v29);
        v27 = *((_DWORD *)this + 47) - 4;
        v30 = (unsigned int)(v27 - *((_DWORD *)this + 46)) >> 2;
        *((_DWORD *)this + 47) = v27;
      }
      while ( v30 );
    }
    return vox::AccessController::ReleaseWriteAccess((vox::VoxEngineInternal *)((char *)this + 196));
  }
  return result;
}


// ===== 86e078 vox::PriorityBankManager::RemoveEmitter(int,vox::EmitterObj *) =====
int __fastcall vox::PriorityBankManager::RemoveEmitter(pthread_mutex_t *this, unsigned int a2, vox::EmitterObj *a3)
{
  pthread_mutex_t *v3; // r5
  int v7; // r6
  int v8; // r3
  int v9; // r1
  int v10; // r0
  int v11; // r2
  int v12; // r1

  v3 = this + 4;
  vox::Mutex::Lock(this + 4);
  if ( (this->value <= (int)a2) | (a2 >> 31)
    || !a3
    || (v7 = *((_DWORD *)this + 1) + 24 * a2, v8 = *(_DWORD *)(v7 + 12), v9 = *(_DWORD *)(v7 + 16), v8 == v9) )
  {
LABEL_14:
    vox::Mutex::Unlock(v3);
    return 0;
  }
  else
  {
    while ( *(vox::EmitterObj **)v8 != a3 )
    {
      v8 += 8;
      if ( v8 == v9 )
        goto LABEL_14;
    }
    v10 = v8 + 8;
    if ( v9 != v8 + 8 )
    {
      v11 = (v9 - v10) >> 3;
      if ( v11 > 0 )
      {
        while ( 1 )
        {
          v12 = *(_DWORD *)(v8 + 12);
          --v11;
          *(_DWORD *)v8 = *(_DWORD *)(v8 + 8);
          *(_DWORD *)(v8 + 4) = v12;
          v8 = v10;
          if ( !v11 )
            break;
          v10 += 8;
        }
        v9 = *(_DWORD *)(v7 + 16);
      }
    }
    *(_DWORD *)(v7 + 16) = v9 - 8;
    vox::Mutex::Unlock(v3);
    return 1;
  }
}


// ===== 86e160 vox::VoxEngineInternal::KillEmitter(vox::EmitterObj *) =====
void __fastcall vox::VoxEngineInternal::KillEmitter(vox::VoxEngineInternal *this, vox::EmitterObj *a2)
{
  int v4; // r3
  int v5; // r6
  void *v6; // r8
  void (__fastcall ***v7)(_DWORD); // r0
  void *v8; // r10
  int v9; // r3
  int v10; // r3
  signed int v11; // r1
  _DWORD *v12; // r0
  _DWORD *v13; // r3

  if ( a2 )
  {
    ++*((_DWORD *)this + *((_DWORD *)a2 + 5) + 340);
    if ( *((_BYTE *)a2 + 52) )
      vox::PriorityBankManager::RemoveEmitter(*((pthread_mutex_t **)this + 55), *((_DWORD *)a2 + 12), a2);
    if ( *((_DWORD *)a2 + 68) )
    {
      v4 = *((_DWORD *)this + 339);
      if ( v4 )
        (*(void (__fastcall **)(_DWORD))(*(_DWORD *)v4 + 72))(*((_DWORD *)this + 339));
    }
    vox::EmitterObj::CleanUp(a2);
    vox::AccessController::GetReadAccess((vox::VoxEngineInternal *)((char *)this + 84));
    v5 = *((_DWORD *)a2 + 70);
    if ( v5 )
    {
      v6 = *((void **)a2 + 69);
      if ( v6 )
      {
        v7 = (void (__fastcall ***)(_DWORD))(*(int (__fastcall **)(_DWORD))(*(_DWORD *)v6 + 48))(*((_DWORD *)a2 + 69));
        v8 = v7;
        if ( v7 )
        {
          v9 = *(_DWORD *)(v5 + 56);
          if ( v9 )
          {
            (*(void (__fastcall **)(_DWORD, void (__fastcall ***)(_DWORD)))(*(_DWORD *)v9 + 24))(
              *(_DWORD *)(v5 + 56),
              v7);
          }
          else
          {
            (**v7)(v7);
            VoxFree(v8);
          }
        }
        v10 = *(_DWORD *)(v5 + 60);
        if ( v10 )
        {
          (*(void (__fastcall **)(_DWORD, void *))(*(_DWORD *)v10 + 20))(*(_DWORD *)(v5 + 60), v6);
        }
        else
        {
          (**(void (__fastcall ***)(void *))v6)(v6);
          VoxFree(v6);
        }
      }
      vox::DataObj::UnregisterEmitter((pthread_mutex_t *)v5, *((_QWORD *)a2 + 1));
      vox::Mutex::Lock((pthread_mutex_t *)this + 29);
      v11 = *(unsigned __int8 *)(v5 + 76);
      if ( !*(_BYTE *)(v5 + 76) )
      {
        *(_BYTE *)(v5 + 76) = 1;
        v12 = VoxAlloc(0xCu, v11);
        v12[2] = v5;
        v13 = *((_DWORD **)this + 28);
        *v12 = (char *)this + 108;
        v12[1] = v13;
        *v13 = v12;
        *((_DWORD *)this + 28) = v12;
      }
      vox::Mutex::Unlock((pthread_mutex_t *)this + 29);
    }
    vox::AccessController::ReleaseReadAccess((vox::VoxEngineInternal *)((char *)this + 84));
    (**(void (__fastcall ***)(vox::EmitterObj *))a2)(a2);
    VoxFree(a2);
  }
}


// ===== 86e304 vox::EmitterObj::Play(float) =====
int __fastcall vox::EmitterObj::Play(pthread_mutex_t *this, float a2)
{
  pthread_mutex_t *v2; // r5
  float v6; // r8
  float v7; // r0

  v2 = this + 6;
  vox::Mutex::Lock(this + 6);
  if ( *((_DWORD *)this + 37) == 2 )
  {
    v6 = *((float *)this + 26);
    if ( *((float *)this + 25) < v6 )
    {
      if ( v6 > 0.0 )
        v7 = *((float *)this + 23)
           + (float)((float)(*((float *)this + 25) * (float)(*((float *)this + 24) - *((float *)this + 23))) / v6);
      else
        v7 = *((float *)this + 23);
    }
    else
    {
      v7 = *((float *)this + 24);
    }
    *((float *)this + 23) = v7;
    *((_DWORD *)this + 24) = 1065353216;
    *((_DWORD *)this + 25) = 0;
    *((float *)this + 26) = a2;
    *((_BYTE *)this + 108) = 0;
    *((_DWORD *)this + 37) = 1;
  }
  else
  {
    *((_DWORD *)this + 23) = 0;
    *((_DWORD *)this + 24) = 1065353216;
    *((_DWORD *)this + 25) = 0;
    *((float *)this + 26) = a2;
    *((_BYTE *)this + 108) = 0;
    *((_DWORD *)this + 37) = 1;
  }
  return vox::Mutex::Unlock(v2);
}


// ===== 86e428 vox::EmitterObj::Pause(float) =====
int __fastcall vox::EmitterObj::Pause(pthread_mutex_t *this, float a2)
{
  pthread_mutex_t *v2; // r4
  int v5; // r12
  int v7; // r3
  float v8; // r8
  float v9; // r10
  float v10; // r0
  float v11; // r8
  float v12; // r0

  v2 = this + 6;
  vox::Mutex::Lock(this + 6);
  v5 = *((_DWORD *)this + 37);
  if ( (unsigned int)(v5 - 2) <= 1 )
  {
    v8 = *((float *)this + 26);
    v9 = *((float *)this + 25);
    if ( a2 < (float)(v8 - v9) )
    {
      if ( v8 > v9 )
      {
        if ( v8 > 0.0 )
          v10 = *((float *)this + 23)
              + (float)((float)(v9 * (float)(*((float *)this + 24) - *((float *)this + 23))) / v8);
        else
          v10 = *((float *)this + 23);
      }
      else
      {
        v10 = *((float *)this + 24);
      }
      *((float *)this + 23) = v10;
      *((_DWORD *)this + 24) = 0;
      *((_DWORD *)this + 25) = 0;
      *((float *)this + 26) = a2;
      *((_BYTE *)this + 108) = 0;
    }
  }
  else if ( v5 == 1 )
  {
    v7 = *((_DWORD *)this + 36);
    *((_DWORD *)this + 37) = 2;
    if ( v7 == 1 )
    {
      v11 = *((float *)this + 26);
      if ( *((float *)this + 25) < v11 )
      {
        if ( v11 > 0.0 )
          v12 = *((float *)this + 23)
              + (float)((float)(*((float *)this + 25) * (float)(*((float *)this + 24) - *((float *)this + 23))) / v11);
        else
          v12 = *((float *)this + 23);
      }
      else
      {
        v12 = *((float *)this + 24);
      }
      *((float *)this + 23) = v12;
      *((_DWORD *)this + 24) = 0;
      *((_DWORD *)this + 25) = 0;
      *((float *)this + 26) = a2;
      *((_BYTE *)this + 108) = 0;
    }
    else
    {
      *((_DWORD *)this + 23) = 0;
      *((_DWORD *)this + 24) = 1065353216;
      *((_DWORD *)this + 25) = 0;
      *((_DWORD *)this + 26) = 0;
      *((_BYTE *)this + 108) = 1;
    }
  }
  return vox::Mutex::Unlock(v2);
}


// ===== 86e618 vox::VoxEngineInternal::Pause(vox::EmitterObj *,float) =====
vox::EmitterObj *__fastcall vox::VoxEngineInternal::Pause(vox::VoxEngineInternal *this, vox::EmitterObj *a2, float a3)
{
  vox::EmitterObj *result; // r0

  result = a2;
  if ( a2 )
    return (vox::EmitterObj *)vox::EmitterObj::Pause(a2, a3);
  return result;
}


// ===== 86e628 vox::VoxEngineInternal::PauseAllEmitters(uint,float) =====
int __fastcall vox::VoxEngineInternal::PauseAllEmitters(vox::VoxEngineInternal *this, unsigned int a2, float a3)
{
  vox::AccessController *v4; // r7
  _DWORD *v7; // r3
  vox::EmitterObj *v8; // r10
  _DWORD *v9; // r2
  _DWORD *v10; // r3
  vox::EmitterObj *v11; // r10
  _DWORD *v12; // r2
  int v14; // r1
  int v15; // r1
  _DWORD *v16; // [sp+0h] [bp-14h] BYREF
  _DWORD *v17; // [sp+4h] [bp-10h] BYREF
  _DWORD *v18; // [sp+8h] [bp-Ch] BYREF
  _DWORD *v19; // [sp+Ch] [bp-8h] BYREF

  v4 = (vox::VoxEngineInternal *)((char *)this + 196);
  vox::AccessController::GetReadAccess((vox::VoxEngineInternal *)((char *)this + 196));
  vox::AccessController::GetReadAccess((vox::VoxEngineInternal *)((char *)this + 208));
  vox::HandlableContainer::begin((vox::HandlableContainer *)&v19);
  vox::HandlableContainer::end((vox::HandlableContainer *)&v18);
  v7 = v19;
  while ( v18 != v7 )
  {
    v8 = (vox::EmitterObj *)v7[6];
    if ( vox::EmitterObj::IsGroup(v8, a2) )
    {
      vox::VoxEngineInternal::Pause(this, v8, a3);
      v7 = v19;
      v9 = (_DWORD *)v19[3];
      if ( !v9 )
      {
LABEL_19:
        v14 = v7[1];
        if ( v7 == *(_DWORD **)(v14 + 12) )
        {
          do
          {
            v7 = (_DWORD *)v14;
            v14 = *(_DWORD *)(v14 + 4);
          }
          while ( *(_DWORD **)(v14 + 12) == v7 );
          v9 = (_DWORD *)v7[3];
        }
        if ( (_DWORD *)v14 != v9 )
          v7 = (_DWORD *)v14;
        v19 = v7;
        continue;
      }
    }
    else
    {
      v7 = v19;
      v9 = (_DWORD *)v19[3];
      if ( !v9 )
        goto LABEL_19;
    }
    while ( v9[2] )
      v9 = (_DWORD *)v9[2];
    v7 = v9;
    v19 = v9;
  }
  vox::HandlableContainer::begin((vox::HandlableContainer *)&v17);
  v19 = v17;
  vox::HandlableContainer::end((vox::HandlableContainer *)&v16);
  v10 = v19;
  v18 = v16;
  while ( v10 != v18 )
  {
    v11 = (vox::EmitterObj *)v10[6];
    if ( vox::EmitterObj::IsGroup(v11, a2) )
    {
      vox::VoxEngineInternal::Pause(this, v11, a3);
      v10 = v19;
      v12 = (_DWORD *)v19[3];
      if ( !v12 )
      {
LABEL_26:
        v15 = v10[1];
        if ( v10 == *(_DWORD **)(v15 + 12) )
        {
          do
          {
            v10 = (_DWORD *)v15;
            v15 = *(_DWORD *)(v15 + 4);
          }
          while ( *(_DWORD **)(v15 + 12) == v10 );
          v12 = (_DWORD *)v10[3];
        }
        if ( (_DWORD *)v15 != v12 )
          v10 = (_DWORD *)v15;
        v19 = v10;
        continue;
      }
    }
    else
    {
      v10 = v19;
      v12 = (_DWORD *)v19[3];
      if ( !v12 )
        goto LABEL_26;
    }
    while ( v12[2] )
      v12 = (_DWORD *)v12[2];
    v10 = v12;
    v19 = v12;
  }
  vox::AccessController::ReleaseReadAccess((vox::VoxEngineInternal *)((char *)this + 208));
  return vox::AccessController::ReleaseReadAccess(v4);
}


// ===== 86e824 vox::VoxEngineInternal::Pause(vox::EmitterHandle &,float) =====
int __fastcall vox::VoxEngineInternal::Pause(vox::VoxEngineInternal *this, vox::EmitterHandle *a2, float a3)
{
  vox::AccessController *v3; // r5
  vox::EmitterObj *EmitterObject; // r0

  v3 = (vox::VoxEngineInternal *)((char *)this + 196);
  vox::AccessController::GetReadAccess((vox::VoxEngineInternal *)((char *)this + 196));
  EmitterObject = (vox::EmitterObj *)vox::VoxEngineInternal::GetEmitterObject(this, a2);
  vox::VoxEngineInternal::Pause(this, EmitterObject, a3);
  return vox::AccessController::ReleaseReadAccess(v3);
}


// ===== 86e868 vox::EmitterObj::Stop(float) =====
int __fastcall vox::EmitterObj::Stop(pthread_mutex_t *this, float a2)
{
  pthread_mutex_t *v2; // r4
  float v6; // r10
  float v7; // r8
  float v8; // r0
  float v9; // r8
  float v10; // r10
  float v11; // r0

  v2 = this + 6;
  vox::Mutex::Lock(this + 6);
  if ( *((_DWORD *)this + 36) == 1 )
  {
    if ( *((_DWORD *)this + 37) == 3 )
    {
      v9 = *((float *)this + 26);
      v10 = *((float *)this + 25);
      if ( a2 < (float)(v9 - v10) )
      {
        if ( v9 > v10 )
        {
          if ( v9 > 0.0 )
            v11 = *((float *)this + 23)
                + (float)((float)(v10 * (float)(*((float *)this + 24) - *((float *)this + 23))) / v9);
          else
            v11 = *((float *)this + 23);
        }
        else
        {
          v11 = *((float *)this + 24);
        }
        *((float *)this + 23) = v11;
        *((_DWORD *)this + 24) = 0;
        *((_DWORD *)this + 25) = 0;
        *((float *)this + 26) = a2;
        *((_BYTE *)this + 108) = 0;
      }
    }
    else
    {
      v6 = *((float *)this + 25);
      v7 = *((float *)this + 26);
      *((_DWORD *)this + 37) = 3;
      if ( v6 < v7 )
      {
        if ( v7 > 0.0 )
          v8 = *((float *)this + 23)
             + (float)((float)(v6 * (float)(*((float *)this + 24) - *((float *)this + 23))) / v7);
        else
          v8 = *((float *)this + 23);
      }
      else
      {
        v8 = *((float *)this + 24);
      }
      *((float *)this + 23) = v8;
      *((_DWORD *)this + 24) = 0;
      *((_DWORD *)this + 25) = 0;
      *((float *)this + 26) = a2;
      *((_BYTE *)this + 108) = 0;
    }
  }
  else
  {
    *((_DWORD *)this + 37) = 3;
    *((_DWORD *)this + 23) = 0;
    *((_DWORD *)this + 24) = 1065353216;
    *((_DWORD *)this + 25) = 0;
    *((_DWORD *)this + 26) = 0;
    *((_BYTE *)this + 108) = 1;
  }
  return vox::Mutex::Unlock(v2);
}


// ===== 86ea54 vox::PriorityBankManager::AddEmitter(int,vox::EmitterObj *) =====
int __fastcall vox::PriorityBankManager::AddEmitter(pthread_mutex_t *this, unsigned int a2, vox::EmitterObj *a3)
{
  pthread_mutex_t *v3; // r5
  int v7; // r4
  int v9; // r6
  _DWORD *v10; // r0
  int v11; // r3
  pthread_mutex_t **v12; // r1
  pthread_mutex_t **v13; // r8
  int v14; // r3
  int v15; // r3
  volatile int v16; // r12
  pthread_mutex_t **v17; // r10
  pthread_mutex_t **v18; // r3
  volatile int value; // r2
  bool v20; // zf
  int v21; // r3
  _DWORD *v22; // r0
  volatile int v23; // r12
  pthread_mutex_t **v24; // r10
  pthread_mutex_t **v25; // r3
  volatile int v26; // r2
  int v27; // r3
  _DWORD *v28; // r0
  _DWORD v29[2]; // [sp+0h] [bp-24h] BYREF
  _DWORD v30[2]; // [sp+8h] [bp-1Ch] BYREF
  _DWORD v31[2]; // [sp+10h] [bp-14h] BYREF
  _DWORD v32[3]; // [sp+18h] [bp-Ch] BYREF

  v3 = this + 4;
  vox::Mutex::Lock(this + 4);
  if ( !a3
    || (this->value <= (int)a2) | (a2 >> 31)
    || *((_BYTE *)a3 + 52)
    || !vox::PriorityBankManager::_CanAddEmitter((vox::PriorityBankManager *)this, a2, *((_DWORD *)a3 + 11)) )
  {
    goto LABEL_3;
  }
  v9 = 24 * a2;
  v10 = (_DWORD *)(*((_DWORD *)this + 1) + v9);
  v11 = v10[2];
  if ( v11 == 3
    || (v12 = (pthread_mutex_t **)v10[4], v13 = (pthread_mutex_t **)v10[3], v10[1] > ((char *)v12 - (char *)v13) >> 3) )
  {
    v14 = *((_DWORD *)a3 + 11);
    v32[0] = a3;
    v32[1] = v14;
    v7 = 1;
    std::vector<vox::PriorityBankElement,vox::SAllocator<vox::PriorityBankElement,(vox::VoxMemHint)0>>::push_back(
      v10 + 3,
      v32);
    goto LABEL_4;
  }
  if ( !v11 )
  {
    if ( *v13 )
    {
      LOBYTE((*v13)[13].value) = 0;
      vox::EmitterObj::Stop(*v13, 0.0);
      v10 = (_DWORD *)(*((_DWORD *)this + 1) + v9);
      v12 = (pthread_mutex_t **)v10[4];
    }
    if ( v13 != v12 )
    {
      std::vector<vox::PriorityBankElement,vox::SAllocator<vox::PriorityBankElement,(vox::VoxMemHint)0>>::erase(
        (int)(v10 + 3),
        v13);
      v10 = (_DWORD *)(*((_DWORD *)this + 1) + v9);
    }
    v15 = *((_DWORD *)a3 + 11);
    v31[0] = a3;
    v31[1] = v15;
    v7 = 1;
    std::vector<vox::PriorityBankElement,vox::SAllocator<vox::PriorityBankElement,(vox::VoxMemHint)0>>::push_back(
      v10 + 3,
      v31);
    goto LABEL_4;
  }
  if ( v11 != 1 )
  {
    v16 = *((_DWORD *)a3 + 11);
    if ( v12 != v13 )
    {
      v17 = (pthread_mutex_t **)v10[4];
      v18 = (pthread_mutex_t **)v10[3];
      do
      {
        value = (*v18)[11].value;
        if ( v16 > value )
          goto LABEL_24;
        v20 = v17 == v12;
        if ( v17 == v12 )
          v20 = v16 == value;
        if ( v20 )
        {
LABEL_24:
          v16 = (*v18)[11].value;
          v17 = v18;
        }
        v18 += 2;
      }
      while ( v18 != v12 );
      if ( v17 != (pthread_mutex_t **)((char *)v13 + (((char *)v18 - (char *)(v13 + 2)) & 0xFFFFFFF8) + 8) )
      {
        if ( *v17 )
        {
          LOBYTE((*v17)[13].value) = 0;
          vox::EmitterObj::Stop(*v17, 0.0);
          v10 = (_DWORD *)(*((_DWORD *)this + 1) + v9);
        }
        std::vector<vox::PriorityBankElement,vox::SAllocator<vox::PriorityBankElement,(vox::VoxMemHint)0>>::erase(
          (int)(v10 + 3),
          v17);
        v21 = *((_DWORD *)a3 + 11);
        v22 = (_DWORD *)(*((_DWORD *)this + 1) + v9 + 12);
        v29[0] = a3;
        v29[1] = v21;
        v7 = 1;
        std::vector<vox::PriorityBankElement,vox::SAllocator<vox::PriorityBankElement,(vox::VoxMemHint)0>>::push_back(
          v22,
          v29);
        goto LABEL_4;
      }
    }
LABEL_3:
    v7 = 0;
    goto LABEL_4;
  }
  v23 = *((_DWORD *)a3 + 11);
  if ( v12 == v13 )
    goto LABEL_3;
  v24 = (pthread_mutex_t **)v10[4];
  v25 = (pthread_mutex_t **)v10[3];
  do
  {
    v26 = (*v25)[11].value;
    if ( v23 > v26 )
      v24 = v25;
    v25 += 2;
    if ( v23 > v26 )
      v23 = v26;
  }
  while ( v25 != v12 );
  if ( v24 == (pthread_mutex_t **)((char *)v13 + (((char *)v25 - (char *)(v13 + 2)) & 0xFFFFFFF8) + 8) )
    goto LABEL_3;
  if ( *v24 )
  {
    LOBYTE((*v24)[13].value) = 0;
    vox::EmitterObj::Stop(*v24, 0.0);
    v10 = (_DWORD *)(*((_DWORD *)this + 1) + v9);
  }
  std::vector<vox::PriorityBankElement,vox::SAllocator<vox::PriorityBankElement,(vox::VoxMemHint)0>>::erase(
    (int)(v10 + 3),
    v24);
  v27 = *((_DWORD *)a3 + 11);
  v28 = (_DWORD *)(*((_DWORD *)this + 1) + v9 + 12);
  v30[0] = a3;
  v30[1] = v27;
  v7 = 1;
  std::vector<vox::PriorityBankElement,vox::SAllocator<vox::PriorityBankElement,(vox::VoxMemHint)0>>::push_back(
    v28,
    v30);
LABEL_4:
  vox::Mutex::Unlock(v3);
  return v7;
}


// ===== 86ed00 vox::VoxEngineInternal::Stop(vox::EmitterObj *,float) =====
int __fastcall vox::VoxEngineInternal::Stop(int this, vox::EmitterObj *a2, float a3)
{
  if ( a2 )
  {
    if ( *((_BYTE *)a2 + 52) )
      vox::PriorityBankManager::RemoveEmitter(*(vox::PriorityBankManager **)(this + 220), *((_DWORD *)a2 + 12), a2);
    *((_BYTE *)a2 + 52) = 0;
    return vox::EmitterObj::Stop(a2, a3);
  }
  return this;
}


// ===== 86ed4c vox::VoxEngineInternal::StopAllEmitters(uint,float) =====
int __fastcall vox::VoxEngineInternal::StopAllEmitters(vox::VoxEngineInternal *this, unsigned int a2, float a3)
{
  vox::AccessController *v4; // r7
  _DWORD *v7; // r3
  vox::EmitterObj *v8; // r10
  _DWORD *v9; // r2
  _DWORD *v10; // r3
  vox::EmitterObj *v11; // r10
  _DWORD *v12; // r2
  int v14; // r1
  int v15; // r1
  _DWORD *v16; // [sp+0h] [bp-14h] BYREF
  _DWORD *v17; // [sp+4h] [bp-10h] BYREF
  _DWORD *v18; // [sp+8h] [bp-Ch] BYREF
  _DWORD *v19; // [sp+Ch] [bp-8h] BYREF

  v4 = (vox::VoxEngineInternal *)((char *)this + 196);
  vox::AccessController::GetReadAccess((vox::VoxEngineInternal *)((char *)this + 196));
  vox::AccessController::GetReadAccess((vox::VoxEngineInternal *)((char *)this + 208));
  vox::HandlableContainer::begin((vox::HandlableContainer *)&v19);
  vox::HandlableContainer::end((vox::HandlableContainer *)&v18);
  v7 = v19;
  while ( v18 != v7 )
  {
    v8 = (vox::EmitterObj *)v7[6];
    if ( vox::EmitterObj::IsGroup(v8, a2) )
    {
      vox::VoxEngineInternal::Stop(this, v8, a3);
      v7 = v19;
      v9 = (_DWORD *)v19[3];
      if ( !v9 )
      {
LABEL_19:
        v14 = v7[1];
        if ( v7 == *(_DWORD **)(v14 + 12) )
        {
          do
          {
            v7 = (_DWORD *)v14;
            v14 = *(_DWORD *)(v14 + 4);
          }
          while ( *(_DWORD **)(v14 + 12) == v7 );
          v9 = (_DWORD *)v7[3];
        }
        if ( (_DWORD *)v14 != v9 )
          v7 = (_DWORD *)v14;
        v19 = v7;
        continue;
      }
    }
    else
    {
      v7 = v19;
      v9 = (_DWORD *)v19[3];
      if ( !v9 )
        goto LABEL_19;
    }
    while ( v9[2] )
      v9 = (_DWORD *)v9[2];
    v7 = v9;
    v19 = v9;
  }
  vox::HandlableContainer::begin((vox::HandlableContainer *)&v17);
  v19 = v17;
  vox::HandlableContainer::end((vox::HandlableContainer *)&v16);
  v10 = v19;
  v18 = v16;
  while ( v10 != v18 )
  {
    v11 = (vox::EmitterObj *)v10[6];
    if ( vox::EmitterObj::IsGroup(v11, a2) )
    {
      vox::VoxEngineInternal::Stop(this, v11, a3);
      v10 = v19;
      v12 = (_DWORD *)v19[3];
      if ( !v12 )
      {
LABEL_26:
        v15 = v10[1];
        if ( v10 == *(_DWORD **)(v15 + 12) )
        {
          do
          {
            v10 = (_DWORD *)v15;
            v15 = *(_DWORD *)(v15 + 4);
          }
          while ( *(_DWORD **)(v15 + 12) == v10 );
          v12 = (_DWORD *)v10[3];
        }
        if ( (_DWORD *)v15 != v12 )
          v10 = (_DWORD *)v15;
        v19 = v10;
        continue;
      }
    }
    else
    {
      v10 = v19;
      v12 = (_DWORD *)v19[3];
      if ( !v12 )
        goto LABEL_26;
    }
    while ( v12[2] )
      v12 = (_DWORD *)v12[2];
    v10 = v12;
    v19 = v12;
  }
  vox::AccessController::ReleaseReadAccess((vox::VoxEngineInternal *)((char *)this + 208));
  return vox::AccessController::ReleaseReadAccess(v4);
}


// ===== 86ef48 vox::VoxEngineInternal::Stop(vox::EmitterHandle &,float) =====
int __fastcall vox::VoxEngineInternal::Stop(vox::VoxEngineInternal *this, vox::EmitterHandle *a2, float a3)
{
  vox::AccessController *v3; // r5
  vox::EmitterObj *EmitterObject; // r0

  v3 = (vox::VoxEngineInternal *)((char *)this + 196);
  vox::AccessController::GetReadAccess((vox::VoxEngineInternal *)((char *)this + 196));
  EmitterObject = (vox::EmitterObj *)vox::VoxEngineInternal::GetEmitterObject((int)this, (int *)a2);
  vox::VoxEngineInternal::Stop((int)this, EmitterObject, a3);
  return vox::AccessController::ReleaseReadAccess(v3);
}


// ===== 86ef8c vox::VoxEngineInternal::Play(vox::EmitterObj *,bool,float) =====
int __fastcall vox::VoxEngineInternal::Play(int this, pthread_mutex_t *a2, bool a3, float a4)
{
  int v5; // r5

  v5 = this;
  if ( a2 )
  {
    if ( LOBYTE(a2[13].value) )
    {
      vox::PriorityBankManager::RemoveEmitter(*(pthread_mutex_t **)(this + 220), a2[12].value, (vox::EmitterObj *)a2);
      LOBYTE(a2[13].value) = 0;
    }
    this = *(_DWORD *)(v5 + 220);
    if ( this )
    {
      if ( vox::PriorityBankManager::AddEmitter((pthread_mutex_t *)this, a2[12].value, (vox::EmitterObj *)a2) )
      {
        if ( vox::EmitterObj::IsPlaying(a2) )
          vox::EmitterObj::Reset(a2);
        vox::EmitterObj::Play(a2, a4);
        this = vox::EmitterObj::SetLoop(a2, a3);
        LOBYTE(a2[13].value) = 1;
      }
      else
      {
        LOBYTE(a2[13].value) = 0;
        return vox::EmitterObj::Stop(a2, 0.0);
      }
    }
  }
  return this;
}


// ===== 86f040 vox::VoxEngineInternal::PlayAllEmitters(uint,float) =====
int __fastcall vox::VoxEngineInternal::PlayAllEmitters(vox::VoxEngineInternal *this, unsigned int a2, float a3)
{
  vox::AccessController *v4; // r8
  _DWORD *v7; // r3
  pthread_mutex_t *v8; // r10
  _DWORD *v9; // r2
  _DWORD *v10; // r3
  pthread_mutex_t *v11; // r10
  _DWORD *v12; // r2
  char Loop; // r0
  int v15; // r1
  char v16; // r0
  int v17; // r1
  _DWORD *v18; // [sp+0h] [bp-14h] BYREF
  _DWORD *v19; // [sp+4h] [bp-10h] BYREF
  _DWORD *v20; // [sp+8h] [bp-Ch] BYREF
  _DWORD *v21; // [sp+Ch] [bp-8h] BYREF

  v4 = (vox::VoxEngineInternal *)((char *)this + 196);
  vox::AccessController::GetReadAccess((vox::VoxEngineInternal *)((char *)this + 196));
  vox::AccessController::GetReadAccess((vox::VoxEngineInternal *)((char *)this + 208));
  vox::HandlableContainer::begin(&v21, (int)this + 120);
  vox::HandlableContainer::end(&v20, (int)this + 120);
  v7 = v21;
  while ( v20 != v7 )
  {
    v8 = (pthread_mutex_t *)v7[6];
    if ( vox::EmitterObj::IsGroup(v8, a2) )
    {
      Loop = vox::EmitterObj::GetLoop(v8);
      vox::VoxEngineInternal::Play((int)this, v8, Loop, a3);
      v7 = v21;
      v9 = (_DWORD *)v21[3];
      if ( !v9 )
      {
LABEL_19:
        v15 = v7[1];
        if ( v7 == *(_DWORD **)(v15 + 12) )
        {
          do
          {
            v7 = (_DWORD *)v15;
            v15 = *(_DWORD *)(v15 + 4);
          }
          while ( *(_DWORD **)(v15 + 12) == v7 );
          v9 = (_DWORD *)v7[3];
        }
        if ( (_DWORD *)v15 != v9 )
          v7 = (_DWORD *)v15;
        v21 = v7;
        continue;
      }
    }
    else
    {
      v7 = v21;
      v9 = (_DWORD *)v21[3];
      if ( !v9 )
        goto LABEL_19;
    }
    while ( v9[2] )
      v9 = (_DWORD *)v9[2];
    v7 = v9;
    v21 = v9;
  }
  vox::HandlableContainer::begin(&v19, (int)this + 152);
  v21 = v19;
  vox::HandlableContainer::end(&v18, (int)this + 152);
  v10 = v21;
  v20 = v18;
  while ( v10 != v20 )
  {
    v11 = (pthread_mutex_t *)v10[6];
    if ( vox::EmitterObj::IsGroup(v11, a2) )
    {
      v16 = vox::EmitterObj::GetLoop(v11);
      vox::VoxEngineInternal::Play((int)this, v11, v16, a3);
      v10 = v21;
      v12 = (_DWORD *)v21[3];
      if ( !v12 )
      {
LABEL_26:
        v17 = v10[1];
        if ( v10 == *(_DWORD **)(v17 + 12) )
        {
          do
          {
            v10 = (_DWORD *)v17;
            v17 = *(_DWORD *)(v17 + 4);
          }
          while ( *(_DWORD **)(v17 + 12) == v10 );
          v12 = (_DWORD *)v10[3];
        }
        if ( (_DWORD *)v17 != v12 )
          v10 = (_DWORD *)v17;
        v21 = v10;
        continue;
      }
    }
    else
    {
      v10 = v21;
      v12 = (_DWORD *)v21[3];
      if ( !v12 )
        goto LABEL_26;
    }
    while ( v12[2] )
      v12 = (_DWORD *)v12[2];
    v10 = v12;
    v21 = v12;
  }
  vox::AccessController::ReleaseReadAccess((vox::VoxEngineInternal *)((char *)this + 208));
  return vox::AccessController::ReleaseReadAccess(v4);
}


// ===== 86f254 vox::VoxEngineInternal::Play(vox::EmitterHandle &,bool,float) =====
int __fastcall vox::VoxEngineInternal::Play(vox::VoxEngineInternal *this, vox::EmitterHandle *a2, bool a3, float a4)
{
  vox::AccessController *v4; // r5
  pthread_mutex_t *EmitterObject; // r0

  v4 = (vox::VoxEngineInternal *)((char *)this + 196);
  vox::AccessController::GetReadAccess((vox::VoxEngineInternal *)((char *)this + 196));
  EmitterObject = (pthread_mutex_t *)vox::VoxEngineInternal::GetEmitterObject((int)this, (int *)a2);
  vox::VoxEngineInternal::Play((int)this, EmitterObject, a3, a4);
  return vox::AccessController::ReleaseReadAccess(v4);
}


// ===== 86f2a0 std::priv::_String_base<char,vox::SAllocator<char,(vox::VoxMemHint)0>>::_M_allocate_block(uint) =====
void __fastcall std::priv::_String_base<char,vox::SAllocator<char,(vox::VoxMemHint)0>>::_M_allocate_block(
        _DWORD *a1,
        size_t a2)
{
  char *v4; // r0

  if ( a2 )
  {
    if ( a2 > 0x10 )
    {
      v4 = (char *)VoxAlloc(a2, 0);
      *a1 = &v4[a2];
      a1[5] = v4;
      a1[4] = v4;
    }
  }
  else
  {
    __ZSt24__stl_throw_length_errorPKc_veneer_0("basic_string");
  }
}


// ===== 86f2f0 std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>>::_M_range_initialize(char const*,char const*) =====
_BYTE *__fastcall std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>>::_M_range_initialize(
        _DWORD *a1,
        _BYTE *a2,
        _BYTE *a3)
{
  size_t v3; // r5
  _BYTE *result; // r0

  v3 = a3 - a2;
  std::priv::_String_base<char,vox::SAllocator<char,(vox::VoxMemHint)0>>::_M_allocate_block(a1, a3 - a2 + 1);
  result = (_BYTE *)a1[5];
  if ( a3 != a2 )
    result = (char *)memcpy(result, a2, v3) + v3;
  a1[4] = result;
  *result = 0;
  return result;
}


// ===== 86f338 std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>>::basic_string(char const*,vox::SAllocator<char,(vox::VoxMemHint)0> const&) =====
_DWORD *__fastcall std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>>::basic_string(
        _DWORD *a1,
        char *a2)
{
  size_t v4; // r0

  a1[4] = a1;
  a1[5] = a1;
  v4 = LC_API_STRLEN_0(a2);
  std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>>::_M_range_initialize(
    a1,
    a2,
    &a2[v4]);
  return a1;
}


// ===== 86f36c std::operator==<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>>(std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const&,char const*) =====
bool __fastcall std::operator==<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>>(int a1, char *a2)
{
  size_t v4; // r2
  const void *v5; // r0

  v4 = LC_API_STRLEN_0(a2);
  v5 = *(const void **)(a1 + 20);
  return v4 == *(_DWORD *)(a1 + 16) - (_DWORD)v5 && memcmp(v5, a2, v4) == 0;
}


// ===== 86f3b4 vox::VoxUtils::LoadDataSourceFromFileToRAM(char const*,int,int) =====
vox::VoxUtils *__fastcall vox::VoxUtils::LoadDataSourceFromFileToRAM(
        vox::VoxUtils *this,
        const char *a2,
        void *a3,
        int a4)
{
  vox::FileSystemInterface *VoxEngine; // r11
  int Instance; // r0
  int v8; // r8
  int v9; // r0
  int v10; // r5
  signed int v11; // r7
  char *v12; // r10
  int i; // r4
  int v14; // r12
  int v15; // r0
  char *v16; // r1
  int v17; // r0
  _DWORD v20[2]; // [sp+1Ch] [bp-10h] BYREF
  char v21; // [sp+24h] [bp-8h]
  char v22; // [sp+25h] [bp-7h]

  VoxEngine = (vox::FileSystemInterface *)vox::VoxEngine::GetVoxEngine(this);
  Instance = vox::FileSystemInterface::GetInstance(VoxEngine);
  v8 = Instance;
  if ( !Instance )
    goto LABEL_13;
  v9 = (*(int (__fastcall **)(int, const char *, int))(*(_DWORD *)Instance + 8))(Instance, a2, 6);
  v10 = v9;
  if ( !v9 )
    goto LABEL_13;
  (*(void (__fastcall **)(int, _DWORD, int))(*(_DWORD *)v9 + 12))(v9, 0, 2);
  v11 = (*(int (__fastcall **)(int))(*(_DWORD *)v10 + 16))(v10);
  if ( v11 <= 0
    || ((*(void (__fastcall **)(int, _DWORD, _DWORD))(*(_DWORD *)v10 + 12))(v10, 0, 0),
        (v12 = (char *)VoxAlloc(v11)) == nullptr) )
  {
    (*(void (__fastcall **)(int, int))(*(_DWORD *)v8 + 12))(v8, v10);
LABEL_13:
    *((_QWORD *)this + 1) = -1;
    *((_DWORD *)this + 8) = 0;
    *(_DWORD *)this = off_993510;
    *((_DWORD *)this + 4) = 0;
    *((_DWORD *)this + 5) = 0;
    *((_DWORD *)this + 6) = 0;
    *((_DWORD *)this + 7) = 0;
    return this;
  }
  for ( i = 0; ; i += v17 )
  {
    if ( v11 - i > 0xFFFF )
    {
      v16 = &v12[i];
      v14 = *(_DWORD *)v10;
      v15 = v10;
    }
    else
    {
      v14 = *(_DWORD *)v10;
      v15 = v10;
      v16 = &v12[i];
    }
    v17 = (*(int (__fastcall **)(int, char *, int))(v14 + 8))(v15, v16, 1);
    if ( v17 <= 0 )
      break;
  }
  (*(void (__fastcall **)(int, int))(*(_DWORD *)v8 + 12))(v8, v10);
  v22 = 1;
  v20[0] = v12;
  v20[1] = v11;
  v21 = 0;
  vox::VoxEngine::LoadDataSource(this, (int)VoxEngine, nullptr, (int)v20, a3, 0);
  return this;
}


// ===== 86f558 vox::VoxUtils::LoadDataSourceFromFile(char const*,int,int) =====
vox::VoxUtils *__fastcall vox::VoxUtils::LoadDataSourceFromFile(vox::VoxUtils *this, const char *a2, void *a3, int a4)
{
  int VoxEngine; // r0

  VoxEngine = vox::VoxEngine::GetVoxEngine(this);
  vox::VoxEngine::LoadDataSource(this, VoxEngine, (char *)&dword_0 + 1, (int)a2, a3, 0);
  return this;
}


// ===== 86f5a0 vox::VoxUtils::LoadDataSourceFromFileAsRAW(char const*,int,int) =====
vox::VoxUtils *__fastcall vox::VoxUtils::LoadDataSourceFromFileAsRAW(
        vox::VoxUtils *this,
        const char *a2,
        void *a3,
        int a4)
{
  vox::DataHandle *VoxEngine; // r6
  _BYTE v10[44]; // [sp+0h] [bp-2Ch] BYREF

  VoxEngine = (vox::DataHandle *)vox::VoxEngine::GetVoxEngine(this);
  vox::VoxUtils::LoadDataSourceFromFile((vox::VoxUtils *)v10, a2, a3, a4);
  vox::VoxEngine::ConvertToRawSource(this, VoxEngine);
  vox::DataHandle::~DataHandle((vox::DataHandle *)v10);
  return this;
}


// ===== 86f5fc vox::VoxUtils::LoadDataSourceFromFileEx(char const*,int,vox::VoxSourceLoadingFlags,int) =====
vox::VoxEngine *__fastcall vox::VoxUtils::LoadDataSourceFromFileEx(
        vox::VoxEngine *a1,
        const char *a2,
        void *a3,
        int a4,
        int a5)
{
  int VoxEngine; // r0

  VoxEngine = vox::VoxEngine::GetVoxEngine(a1);
  if ( (a4 & 0x10000) != 0 )
  {
    vox::VoxEngine::LoadDataSourceAsync(a1, VoxEngine, 1, (int)a2, (int)a3, 0, a5, a4);
  }
  else if ( (a4 & 1) != 0 )
  {
    vox::VoxUtils::LoadDataSourceFromFileToRAM(a1, a2, a3, a5);
  }
  else if ( a4 == 2 )
  {
    vox::VoxUtils::LoadDataSourceFromFileAsRAW(a1, a2, a3, a5);
  }
  else
  {
    vox::VoxUtils::LoadDataSourceFromFile(a1, a2, a3, a5);
  }
  return a1;
}


// ===== 86f6b0 vox::VoxUtils::LoadDataSourceFromFileAutoDetectDecoder(char const*,int) =====
vox::VoxUtils *__fastcall vox::VoxUtils::LoadDataSourceFromFileAutoDetectDecoder(
        vox::VoxUtils *this,
        const char *a2,
        int a3)
{
  char *v6; // r0
  const char *v7; // r8
  size_t i; // r11
  char v9; // r3
  _BYTE *v10; // r2
  _DWORD v12[5]; // [sp+4h] [bp-20h] BYREF
  void *p; // [sp+18h] [bp-Ch]

  if ( !a2 )
    goto LABEL_22;
  v6 = strrchr(a2, 46);
  if ( !v6 )
  {
    *((_QWORD *)this + 1) = -1;
    *((_DWORD *)this + 8) = 0;
    *((_DWORD *)this + 4) = 0;
    *(_DWORD *)this = off_993510;
    *((_DWORD *)this + 5) = 0;
    *((_DWORD *)this + 6) = 0;
    *((_DWORD *)this + 7) = 0;
    return this;
  }
  v7 = v6 + 1;
  std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>>::basic_string(v12, v6 + 1);
  for ( i = 0; i < LC_API_STRLEN_0(v7); ++i )
  {
    v9 = *((_BYTE *)p + i);
    v10 = (char *)p + i;
    if ( v9 <= 96 )
      v9 += 32;
    *v10 = v9;
  }
  if ( !std::operator==<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>>((int)v12, "wav") )
  {
    if ( std::operator==<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>>((int)v12, "ogg") )
    {
      vox::VoxUtils::LoadDataSourceFromFile(this, a2, (char *)&dword_0 + 2, a3);
      goto LABEL_10;
    }
    if ( std::operator==<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>>((int)v12, "mpc") )
    {
      vox::VoxUtils::LoadDataSourceFromFile(this, a2, (char *)&dword_0 + 3, a3);
      goto LABEL_10;
    }
    if ( std::operator==<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>>((int)v12, "vxn") )
    {
      vox::VoxUtils::LoadDataSourceFromFile(this, a2, byte_4, a3);
      goto LABEL_10;
    }
    if ( p != v12 && p )
      VoxFree(p);
LABEL_22:
    *((_QWORD *)this + 1) = -1;
    *((_DWORD *)this + 8) = 0;
    *(_DWORD *)this = off_993510;
    *((_DWORD *)this + 4) = 0;
    *((_DWORD *)this + 5) = 0;
    *((_DWORD *)this + 6) = 0;
    *((_DWORD *)this + 7) = 0;
    return this;
  }
  vox::VoxUtils::LoadDataSourceFromFile(this, a2, (char *)&dword_0 + 1, a3);
LABEL_10:
  if ( p != v12 && p )
    VoxFree(p);
  return this;
}


// ===== 86f8e0 vox::VoxUtils::LoadDataSourceFromFileAutoDetectDecoderEx(char const*,int,vox::VoxSourceLoadingFlags,vox::DataHandleUserData *) =====
int __fastcall vox::VoxUtils::LoadDataSourceFromFileAutoDetectDecoderEx(int a1, const char *a2, int a3, int a4)
{
  char *v8; // r0
  const char *v9; // r10
  size_t v10; // r3
  char v11; // r2
  size_t v13; // [sp+Ch] [bp-28h]
  _DWORD v14[5]; // [sp+14h] [bp-20h] BYREF
  void *p; // [sp+28h] [bp-Ch]

  if ( !a2 )
    goto LABEL_22;
  v8 = strrchr(a2, 46);
  if ( !v8 )
  {
    *(_QWORD *)(a1 + 8) = -1;
    *(_DWORD *)(a1 + 32) = 0;
    *(_DWORD *)(a1 + 16) = 0;
    *(_DWORD *)a1 = off_993510;
    *(_DWORD *)(a1 + 20) = 0;
    *(_DWORD *)(a1 + 24) = 0;
    *(_DWORD *)(a1 + 28) = 0;
    return a1;
  }
  v9 = v8 + 1;
  std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>>::basic_string(v14, v8 + 1);
  v10 = 0;
  while ( 1 )
  {
    v13 = v10;
    if ( v10 >= LC_API_STRLEN_0(v9) )
      break;
    v11 = *((_BYTE *)p + v13);
    v10 = v13 + 1;
    if ( v11 <= 96 )
      v11 += 32;
    *((_BYTE *)p + v13) = v11;
  }
  if ( !std::operator==<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>>((int)v14, "wav") )
  {
    if ( std::operator==<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>>((int)v14, "ogg") )
    {
      vox::VoxUtils::LoadDataSourceFromFileEx((vox::VoxEngine *)a1, a2, (char *)&dword_0 + 2, a4, a3);
      goto LABEL_10;
    }
    if ( std::operator==<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>>((int)v14, "mpc") )
    {
      vox::VoxUtils::LoadDataSourceFromFileEx((vox::VoxEngine *)a1, a2, (char *)&dword_0 + 3, a4, a3);
      goto LABEL_10;
    }
    if ( std::operator==<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>>((int)v14, "vxn") )
    {
      vox::VoxUtils::LoadDataSourceFromFileEx((vox::VoxEngine *)a1, a2, byte_4, a4, a3);
      goto LABEL_10;
    }
    if ( p != v14 && p )
      VoxFree(p);
LABEL_22:
    *(_QWORD *)(a1 + 8) = -1;
    *(_DWORD *)(a1 + 32) = 0;
    *(_DWORD *)a1 = off_993510;
    *(_DWORD *)(a1 + 16) = 0;
    *(_DWORD *)(a1 + 20) = 0;
    *(_DWORD *)(a1 + 24) = 0;
    *(_DWORD *)(a1 + 28) = 0;
    return a1;
  }
  vox::VoxUtils::LoadDataSourceFromFileEx((vox::VoxEngine *)a1, a2, (char *)&dword_0 + 1, a4, a3);
LABEL_10:
  if ( p != v14 && p )
    VoxFree(p);
  return a1;
}


// ===== 86fb2c vox::DecoderInterface::~DecoderInterface() =====
void __fastcall vox::DecoderInterface::~DecoderInterface(vox::DecoderInterface *this)
{
  ;
}


// ===== 86fb30 vox::DecoderInterface::Init(void) =====
void __fastcall vox::DecoderInterface::Init(vox::DecoderInterface *this)
{
  ;
}


// ===== 86fb34 vox::DecoderInterface::Shutdown(void) =====
void __fastcall vox::DecoderInterface::Shutdown(vox::DecoderInterface *this)
{
  ;
}


// ===== 86fb38 vox::DecoderCursorInterface::~DecoderCursorInterface() =====
void __fastcall vox::DecoderCursorInterface::~DecoderCursorInterface(vox::DecoderCursorInterface *this)
{
  ;
}


// ===== 86fb3c vox::DecoderCursorInterface::Init(void) =====
void __fastcall vox::DecoderCursorInterface::Init(vox::DecoderCursorInterface *this)
{
  ;
}


// ===== 86fb40 vox::DecoderCursorInterface::Shutdown(void) =====
void __fastcall vox::DecoderCursorInterface::Shutdown(vox::DecoderCursorInterface *this)
{
  ;
}


// ===== 86fb44 vox::DecoderCursorInterface::DecodeRef(void *&,int) =====
int __fastcall vox::DecoderCursorInterface::DecodeRef(vox::DecoderCursorInterface *this, void **a2, int a3)
{
  return (*(int (__fastcall **)(vox::DecoderCursorInterface *, _DWORD, int))(*(_DWORD *)this + 16))(this, *a2, a3);
}


// ===== 86fb5c vox::DecoderCursorInterface::Reset(void) =====
int __fastcall vox::DecoderCursorInterface::Reset(vox::DecoderCursorInterface *this)
{
  return (*(int (__fastcall **)(vox::DecoderCursorInterface *, _DWORD))(*(_DWORD *)this + 40))(this, 0);
}


// ===== 86fb74 vox::DecoderCursorInterface::GetRewindLimit(void) =====
int __fastcall vox::DecoderCursorInterface::GetRewindLimit(vox::DecoderCursorInterface *this)
{
  return 0;
}


// ===== 86fb7c vox::DecoderCursorInterface::Rewind(int) =====
void __fastcall vox::DecoderCursorInterface::Rewind(vox::DecoderCursorInterface *this, int a2)
{
  ;
}


// ===== 86fb80 vox::DecoderCursorInterface::SetLoop(bool) =====
int __fastcall vox::DecoderCursorInterface::SetLoop(int this, bool a2)
{
  *(_BYTE *)(this + 28) = a2;
  return this;
}


// ===== 86fb88 vox::DecoderCursorInterface::GetStreamCursor(void) =====
int __fastcall vox::DecoderCursorInterface::GetStreamCursor(vox::DecoderCursorInterface *this)
{
  return *((_DWORD *)this + 6);
}


// ===== 86fb90 vox::DecoderCursorInterface::AllowBufferReference(void) =====
int __fastcall vox::DecoderCursorInterface::AllowBufferReference(vox::DecoderCursorInterface *this)
{
  return 0;
}


// ===== 86fb98 vox::DecoderMPC8::GetType(void) =====
int __fastcall vox::DecoderMPC8::GetType(vox::DecoderMPC8 *this)
{
  return 3;
}


// ===== 86fba0 vox::DecoderMPC8::GetParam(void) =====
int __fastcall vox::DecoderMPC8::GetParam(vox::DecoderMPC8 *this)
{
  return 0;
}


// ===== 86fba8 mpc_read(mpc_reader_t *,void *,int) =====
int __fastcall mpc_read(int a1)
{
  int v1; // r3

  v1 = *(_DWORD *)(a1 + 20);
  if ( v1 )
    return (*(int (__fastcall **)(_DWORD))(*(_DWORD *)v1 + 28))(*(_DWORD *)(a1 + 20));
  else
    return 0;
}


// ===== 86fbd4 mpc_seek(mpc_reader_t *,int) =====
bool __fastcall mpc_seek(int a1, int a2)
{
  int v2; // r3

  v2 = *(_DWORD *)(a1 + 20);
  return v2 && (*(int (__fastcall **)(_DWORD, int, _DWORD))(*(_DWORD *)v2 + 16))(*(_DWORD *)(a1 + 20), a2, 0) == 0;
}


// ===== 86fc0c mpc_tell(mpc_reader_t *) =====
int __fastcall mpc_tell(int a1)
{
  int v1; // r3

  v1 = *(_DWORD *)(a1 + 20);
  if ( v1 )
    return (*(int (__fastcall **)(_DWORD))(*(_DWORD *)v1 + 24))(*(_DWORD *)(a1 + 20));
  else
    return 0;
}


// ===== 86fc38 mpc_getsize(mpc_reader_t *) =====
int __fastcall mpc_getsize(int a1)
{
  int v1; // r3
  int v2; // r3

  v1 = *(_DWORD *)(a1 + 20);
  if ( v1 && (v2 = *(_DWORD *)(v1 + 4)) != 0 )
    return (*(int (__fastcall **)(int))(*(_DWORD *)v2 + 16))(v2);
  else
    return 0;
}


// ===== 86fc70 mpc_canseek(mpc_reader_t *) =====
int mpc_canseek()
{
  return 1;
}


// ===== 86fc78 vox::DecoderMPC8::DecoderMPC8(vox::DecoderMPC8Params *) =====
_DWORD *__fastcall vox::DecoderMPC8::DecoderMPC8(_DWORD *result, _DWORD *a2)
{
  if ( !a2 )
    result[1] = -1;
  *result = off_9935D8;
  if ( a2 )
    result[1] = *a2;
  return result;
}


// ===== 86fcb0 vox::DecoderMPC8::DecoderMPC8(vox::DecoderMPC8Params *) =====
_DWORD *__fastcall vox::DecoderMPC8::DecoderMPC8(_DWORD *result, _DWORD *a2)
{
  if ( !a2 )
    result[1] = -1;
  *result = off_9935D8;
  if ( a2 )
    result[1] = *a2;
  return result;
}


// ===== 86fce8 vox::DecoderMPC8Cursor::HasData(void) =====
bool __fastcall vox::DecoderMPC8Cursor::HasData(vox::DecoderMPC8Cursor *this)
{
  unsigned int v2; // r2
  unsigned int v3; // r3

  if ( !*((_DWORD *)this + 6) )
    return 0;
  v2 = *((_DWORD *)this + 8);
  v3 = *((_DWORD *)this + 4);
  if ( v2 < v3 || !*((_BYTE *)this + 28) )
    return v2 < v3;
  (*(void (__fastcall **)(vox::DecoderMPC8Cursor *, _DWORD))(*(_DWORD *)this + 40))(this, 0);
  return *((_DWORD *)this + 8) < *((_DWORD *)this + 4);
}


// ===== 86fd58 vox::DecoderMPC8Cursor::ConvertFloatToShort(short *,float *,int) =====
void __fastcall vox::DecoderMPC8Cursor::ConvertFloatToShort(
        vox::DecoderMPC8Cursor *this,
        __int16 *a2,
        float *a3,
        int a4)
{
  int i; // r5
  int v5; // r0
  __int16 v6; // r0

  if ( a4 > 0 )
  {
    for ( i = 0; i != a4; ++i )
    {
      v5 = (int)(float)(a3[i] * 32768.0);
      if ( (unsigned int)(v5 + 0x8000) > 0xFFFF )
      {
        if ( v5 < 0 )
          v6 = 0x8000;
        else
          v6 = 0x7FFF;
        a2[i] = v6;
      }
      else
      {
        a2[i] = v5;
      }
    }
  }
}


// ===== 86fdbc vox::DecoderMPC8Cursor::ConvertFixedToShort(short *,int *,int) =====
void __fastcall vox::DecoderMPC8Cursor::ConvertFixedToShort(vox::DecoderMPC8Cursor *this, __int16 *a2, int *a3, int a4)
{
  ;
}


// ===== 86fdc0 vox::DecoderMPC8::~DecoderMPC8() =====
void __fastcall vox::DecoderMPC8::~DecoderMPC8(vox::DecoderMPC8 *this)
{
  ;
}


// ===== 86fdc4 vox::DecoderMPC8::~DecoderMPC8() =====
void __fastcall vox::DecoderMPC8::~DecoderMPC8(vox::DecoderMPC8 *this)
{
  LC_API_FREE_0(this);
}


// ===== 86fdd8 vox::DecoderInterface::~DecoderInterface() =====
void __fastcall vox::DecoderInterface::~DecoderInterface(vox::DecoderInterface *this)
{
  LC_API_FREE_0(this);
}


// ===== 86fdec vox::DecoderCursorInterface::~DecoderCursorInterface() =====
void __fastcall vox::DecoderCursorInterface::~DecoderCursorInterface(vox::DecoderCursorInterface *this)
{
  LC_API_FREE_0(this);
}


// ===== 86fe00 vox::DecoderMPC8Cursor::Seek(uint) =====
int __fastcall vox::DecoderMPC8Cursor::Seek(vox::DecoderMPC8Cursor *this, unsigned int a2)
{
  int result; // r0

  if ( !a2 )
    return -1;
  result = mpc_demux_seek_sample(*((_DWORD *)this + 11), a2, 0, 0);
  if ( result )
    return -1;
  *((_DWORD *)this + 8) = 0;
  return result;
}


// ===== 86fe38 vox::DecoderMPC8Cursor::Decode(void *,int) =====
int __fastcall vox::DecoderMPC8Cursor::Decode(vox::DecoderMPC8Cursor *this, char *a2, int a3)
{
  int v3; // r10
  int v4; // r5
  int v7; // r0
  int v8; // r1
  int v9; // r8
  int v10; // r6
  int v11; // r5
  int v12; // r8
  int v13; // r3
  int v15; // r2
  int v16; // r1
  int v17; // r3
  int v18; // r2
  int v19; // r3
  int v20; // r2
  int v21; // r3
  bool v22; // cc
  int v23; // r1
  int v24; // r3
  int v25; // r2
  int v26; // r3
  int v27; // [sp+0h] [bp-14h] BYREF
  float *v28; // [sp+8h] [bp-Ch]

  v3 = *((_DWORD *)this + 3);
  v4 = *((_DWORD *)this + 1);
  v7 = a3 / (v4 * (v3 >> 3));
  v8 = *((_DWORD *)this + 10);
  v9 = *((_DWORD *)this + 9);
  v10 = v7;
  if ( v8 < v9 )
  {
    v12 = v9 - v8;
    if ( v7 < v12 )
    {
      if ( v3 == 32 )
        memcpy(a2, (const void *)(*((_DWORD *)this + 18) + 4 * v4 * v8), 4 * v4 * v7);
      else
        vox::DecoderMPC8Cursor::ConvertFloatToShort(
          this,
          (__int16 *)a2,
          (float *)(*((_DWORD *)this + 18) + 4 * v4 * v8),
          v4 * v7);
      v11 = 0;
      v13 = *((_DWORD *)this + 8) + v10;
      *((_DWORD *)this + 10) += v10;
      *((_DWORD *)this + 8) = v13;
      return (v10 - v11) * *((_DWORD *)this + 1) * (*((int *)this + 3) >> 3);
    }
    if ( v3 == 32 )
      memcpy(a2, (const void *)(*((_DWORD *)this + 18) + 4 * v4 * v8), 4 * v4 * v12);
    else
      vox::DecoderMPC8Cursor::ConvertFloatToShort(
        this,
        (__int16 *)a2,
        (float *)(*((_DWORD *)this + 18) + 4 * v4 * v8),
        v4 * v12);
    v15 = *((_DWORD *)this + 8);
    v11 = v10 - v12;
    *((_DWORD *)this + 10) += v12;
    *((_DWORD *)this + 8) = v15 + v12;
  }
  else
  {
    v11 = a3 / (v4 * (v3 >> 3));
  }
  v28 = *((float **)this + 18);
  while ( v11 > 0 )
  {
    mpc_demux_decode(*((_DWORD *)this + 11), &v27);
    v20 = v27;
    v21 = *((_DWORD *)this + 1);
    v22 = v27 <= v11;
    *((_DWORD *)this + 10) = 0;
    *((_DWORD *)this + 9) = v20;
    v23 = v21 * (v10 - v11);
    if ( v22 )
    {
      if ( *((_DWORD *)this + 3) == 32 )
        memcpy(&a2[4 * v23], v28, 4 * v21 * v20);
      else
        vox::DecoderMPC8Cursor::ConvertFloatToShort(this, (__int16 *)&a2[2 * v23], v28, v21 * v20);
      v24 = *((_DWORD *)this + 9);
      v16 = *((_DWORD *)this + 8);
      v11 -= v24;
      *((_DWORD *)this + 10) += v24;
      v25 = *((_DWORD *)this + 4);
      v26 = v24 + v16;
      *((_DWORD *)this + 8) = v26;
      if ( v25 != v26 )
        continue;
    }
    else
    {
      if ( *((_DWORD *)this + 3) == 32 )
        memcpy(&a2[4 * v23], v28, 4 * v21 * v11);
      else
        vox::DecoderMPC8Cursor::ConvertFloatToShort(this, (__int16 *)&a2[2 * v23], v28, v21 * v11);
      v17 = *((_DWORD *)this + 8);
      *((_DWORD *)this + 10) += v11;
      v18 = *((_DWORD *)this + 4);
      v19 = v11 + v17;
      *((_DWORD *)this + 8) = v19;
      v11 = 0;
      if ( v18 != v19 )
        continue;
    }
    if ( !*((_BYTE *)this + 28) || mpc_demux_seek_sample(*((_DWORD *)this + 11), v16, 0, 0) )
      return (v10 - v11) * *((_DWORD *)this + 1) * (*((int *)this + 3) >> 3);
    *((_DWORD *)this + 8) = 0;
  }
  return (v10 - v11) * *((_DWORD *)this + 1) * (*((int *)this + 3) >> 3);
}


// ===== 8700a4 vox::DecoderMPC8Cursor::~DecoderMPC8Cursor() =====
void __fastcall vox::DecoderMPC8Cursor::~DecoderMPC8Cursor(vox::DecoderMPC8Cursor *this)
{
  int v2; // r0
  void *v3; // r0

  v2 = *((_DWORD *)this + 11);
  *(_DWORD *)this = off_993598;
  if ( v2 )
    mpc_demux_exit();
  v3 = *((void **)this + 18);
  if ( v3 )
    VoxFree(v3);
}


// ===== 8700f4 vox::DecoderMPC8Cursor::~DecoderMPC8Cursor() =====
void __fastcall vox::DecoderMPC8Cursor::~DecoderMPC8Cursor(vox::DecoderMPC8Cursor *this)
{
  vox::DecoderMPC8Cursor::~DecoderMPC8Cursor(this);
  LC_API_FREE_0(this);
}


// ===== 870110 vox::DecoderMPC8Cursor::~DecoderMPC8Cursor() =====
void __fastcall vox::DecoderMPC8Cursor::~DecoderMPC8Cursor(vox::DecoderMPC8Cursor *this)
{
  int v2; // r0
  void *v3; // r0

  v2 = *((_DWORD *)this + 11);
  *(_DWORD *)this = off_993598;
  if ( v2 )
    mpc_demux_exit();
  v3 = *((void **)this + 18);
  if ( v3 )
    VoxFree(v3);
}


// ===== 870160 vox::DecoderMPC8::DestroyCursor(vox::DecoderCursorInterface *) =====
void __fastcall vox::DecoderMPC8::DestroyCursor(vox::DecoderMPC8 *this, vox::DecoderCursorInterface *a2)
{
  if ( a2 )
  {
    (**(void (__fastcall ***)(vox::DecoderCursorInterface *))a2)(a2);
    VoxFree(a2);
  }
}


// ===== 87018c vox::DecoderMPC8Cursor::DecoderMPC8Cursor(vox::DecoderInterface *,vox::StreamCursorInterface *) =====
vox::DecoderMPC8Cursor *__fastcall vox::DecoderMPC8Cursor::DecoderMPC8Cursor(
        vox::DecoderMPC8Cursor *this,
        vox::DecoderInterface *a2,
        vox::StreamCursorInterface *a3)
{
  int v3; // r9
  void *v6; // r0
  _DWORD *v7; // r0
  int v8; // r3
  int v9; // r3
  _DWORD v11[93]; // [sp+0h] [bp-174h] BYREF

  v3 = _stack_chk_guard;
  *(_DWORD *)this = off_993598;
  *((_DWORD *)this + 18) = 0;
  *((_DWORD *)this + 12) = mpc_read;
  *((_DWORD *)this + 13) = mpc_seek;
  *((_DWORD *)this + 14) = mpc_tell;
  *((_DWORD *)this + 16) = mpc_canseek;
  *((_DWORD *)this + 15) = mpc_getsize;
  *((_DWORD *)this + 17) = a3;
  *((_DWORD *)this + 1) = 0;
  *((_DWORD *)this + 2) = 0;
  *((_DWORD *)this + 3) = 0;
  *((_DWORD *)this + 4) = 0;
  *((_DWORD *)this + 5) = a2;
  *((_DWORD *)this + 6) = a3;
  *((_BYTE *)this + 28) = 0;
  *((_DWORD *)this + 8) = 0;
  *((_DWORD *)this + 9) = 0;
  *((_DWORD *)this + 10) = 0;
  *((_DWORD *)this + 11) = 0;
  v11[91] = v3;
  v6 = VoxAlloc(0x4800u);
  *((_DWORD *)this + 18) = v6;
  if ( v6 )
  {
    v7 = (_DWORD *)mpc_demux_init((char *)this + 48);
    *((_DWORD *)this + 11) = v7;
  }
  else
  {
    v7 = *((_DWORD **)this + 11);
  }
  if ( v7 )
  {
    if ( v7[1] && *v7 )
    {
      mpc_demux_get_info((int)v7, v11);
      v8 = v11[1];
      *((_DWORD *)this + 3) = 16;
      *((_DWORD *)this + 1) = v8;
      v9 = *((_DWORD *)a2 + 1);
      if ( v9 <= 0 )
        v9 = v11[0];
      *((_DWORD *)this + 2) = v9;
      *((_DWORD *)this + 4) = v11[14];
    }
    else
    {
      *((_DWORD *)this + 4) = 0;
      *((_DWORD *)this + 1) = 0;
      *((_DWORD *)this + 2) = 0;
      *((_DWORD *)this + 3) = 0;
    }
  }
  else
  {
    *((_DWORD *)this + 4) = 0;
    *((_DWORD *)this + 1) = 0;
    *((_DWORD *)this + 2) = 0;
    *((_DWORD *)this + 3) = 0;
  }
  return this;
}


// ===== 87031c vox::DecoderMPC8Cursor::DecoderMPC8Cursor(vox::DecoderInterface *,vox::StreamCursorInterface *) =====
vox::DecoderMPC8Cursor *__fastcall vox::DecoderMPC8Cursor::DecoderMPC8Cursor(
        vox::DecoderMPC8Cursor *this,
        vox::DecoderInterface *a2,
        vox::StreamCursorInterface *a3)
{
  int v3; // r9
  void *v6; // r0
  _DWORD *v7; // r0
  int v8; // r3
  int v9; // r3
  _DWORD v11[93]; // [sp+0h] [bp-174h] BYREF

  v3 = _stack_chk_guard;
  *(_DWORD *)this = off_993598;
  *((_DWORD *)this + 18) = 0;
  *((_DWORD *)this + 12) = mpc_read;
  *((_DWORD *)this + 13) = mpc_seek;
  *((_DWORD *)this + 14) = mpc_tell;
  *((_DWORD *)this + 16) = mpc_canseek;
  *((_DWORD *)this + 15) = mpc_getsize;
  *((_DWORD *)this + 17) = a3;
  *((_DWORD *)this + 1) = 0;
  *((_DWORD *)this + 2) = 0;
  *((_DWORD *)this + 3) = 0;
  *((_DWORD *)this + 4) = 0;
  *((_DWORD *)this + 5) = a2;
  *((_DWORD *)this + 6) = a3;
  *((_BYTE *)this + 28) = 0;
  *((_DWORD *)this + 8) = 0;
  *((_DWORD *)this + 9) = 0;
  *((_DWORD *)this + 10) = 0;
  *((_DWORD *)this + 11) = 0;
  v11[91] = v3;
  v6 = VoxAlloc(0x4800u);
  *((_DWORD *)this + 18) = v6;
  if ( v6 )
  {
    v7 = (_DWORD *)mpc_demux_init((char *)this + 48);
    *((_DWORD *)this + 11) = v7;
  }
  else
  {
    v7 = *((_DWORD **)this + 11);
  }
  if ( v7 )
  {
    if ( v7[1] && *v7 )
    {
      mpc_demux_get_info((int)v7, v11);
      v8 = v11[1];
      *((_DWORD *)this + 3) = 16;
      *((_DWORD *)this + 1) = v8;
      v9 = *((_DWORD *)a2 + 1);
      if ( v9 <= 0 )
        v9 = v11[0];
      *((_DWORD *)this + 2) = v9;
      *((_DWORD *)this + 4) = v11[14];
    }
    else
    {
      *((_DWORD *)this + 4) = 0;
      *((_DWORD *)this + 1) = 0;
      *((_DWORD *)this + 2) = 0;
      *((_DWORD *)this + 3) = 0;
    }
  }
  else
  {
    *((_DWORD *)this + 4) = 0;
    *((_DWORD *)this + 1) = 0;
    *((_DWORD *)this + 2) = 0;
    *((_DWORD *)this + 3) = 0;
  }
  return this;
}


// ===== 8704ac vox::DecoderMPC8::CreateNewCursor(vox::StreamCursorInterface *) =====
vox::DecoderMPC8Cursor *__fastcall vox::DecoderMPC8::CreateNewCursor(
        vox::DecoderMPC8 *this,
        vox::StreamCursorInterface *a2)
{
  vox::DecoderMPC8Cursor *v4; // r4

  v4 = (vox::DecoderMPC8Cursor *)VoxAlloc(0x4Cu, 0);
  vox::DecoderMPC8Cursor::DecoderMPC8Cursor(v4, this, a2);
  return v4;
}


// ===== 8704dc vox::DecoderMPC8Factory(void *) =====
_DWORD *__fastcall vox::DecoderMPC8Factory(vox *this, void *a2)
{
  _DWORD *v3; // r4

  v3 = VoxAlloc(8u, 0);
  vox::DecoderMPC8::DecoderMPC8(v3, this);
  return v3;
}


// ===== 870504 vox::DecoderMSWav::GetType(void) =====
int __fastcall vox::DecoderMSWav::GetType(vox::DecoderMSWav *this)
{
  return 1;
}


// ===== 87050c vox::DecoderMSWav::GetParam(void) =====
int __fastcall vox::DecoderMSWav::GetParam(vox::DecoderMSWav *this)
{
  return 0;
}


// ===== 870514 vox::DecoderMSWav::DecoderMSWav(void) =====
int __fastcall vox::DecoderMSWav::DecoderMSWav(int this)
{
  *(_BYTE *)(this + 64) = 1;
  *(_DWORD *)this = off_993640;
  *(_DWORD *)(this + 60) = 0;
  return this;
}


// ===== 870548 vox::DecoderMSWav::DecoderMSWav(void) =====
int __fastcall vox::DecoderMSWav::DecoderMSWav(int this)
{
  *(_BYTE *)(this + 64) = 1;
  *(_DWORD *)this = off_993640;
  *(_DWORD *)(this + 60) = 0;
  return this;
}


// ===== 87057c vox::DecoderMSWavCursor::Decode(void *,int) =====
int __fastcall vox::DecoderMSWavCursor::Decode(vox::DecoderMSWavCursor *this, void *a2, int a3)
{
  int v3; // r3

  v3 = *((_DWORD *)this + 9);
  if ( v3 )
    return (*(int (__fastcall **)(_DWORD, void *, int))(*(_DWORD *)v3 + 8))(*((_DWORD *)this + 9), a2, a3);
  else
    return 0;
}


// ===== 8705a8 vox::DecoderMSWavCursor::Seek(uint) =====
int __fastcall vox::DecoderMSWavCursor::Seek(vox::DecoderMSWavCursor *this, unsigned int a2)
{
  int v2; // r3

  v2 = *((_DWORD *)this + 9);
  if ( v2 )
    return (*(int (__fastcall **)(_DWORD, unsigned int))(*(_DWORD *)v2 + 12))(*((_DWORD *)this + 9), a2);
  else
    return -1;
}


// ===== 8705d4 vox::DecoderMSWavCursor::SetLoop(bool) =====
int __fastcall vox::DecoderMSWavCursor::SetLoop(int this, bool a2)
{
  int v2; // r3

  v2 = *(_DWORD *)(this + 36);
  if ( v2 )
    *(_BYTE *)(v2 + 40) = a2;
  return this;
}


// ===== 8705e4 vox::DecoderMSWavCursor::HasData(void) =====
int __fastcall vox::DecoderMSWavCursor::HasData(vox::DecoderMSWavCursor *this)
{
  int v1; // r3

  v1 = *((_DWORD *)this + 9);
  if ( v1 )
    return (*(int (__fastcall **)(_DWORD))(*(_DWORD *)v1 + 16))(*((_DWORD *)this + 9));
  else
    return 0;
}


// ===== 870610 vox::DecoderMSWavCursor::ParseFile(void) =====
int __fastcall vox::DecoderMSWavCursor::ParseFile(vox::DecoderMSWavCursor *this)
{
  int v1; // r3
  int v3; // r7
  int v4; // r9
  int v5; // r3
  int v6; // r11
  _DWORD *v7; // r0
  int v8; // r2
  int v10; // r1
  int v11; // r11
  _DWORD *v12; // r0
  int v13; // r3
  int v14; // [sp+0h] [bp-1Ch]
  int v15; // [sp+4h] [bp-18h]
  int v16; // [sp+Ch] [bp-10h]
  char v17[4]; // [sp+10h] [bp-Ch] BYREF
  int v18; // [sp+14h] [bp-8h]

  v1 = *((_DWORD *)this + 6);
  if ( !v1 )
    return 0;
  v16 = (*(int (__fastcall **)(_DWORD))(*(_DWORD *)v1 + 24))(*((_DWORD *)this + 6));
  (*(void (__fastcall **)(_DWORD, _DWORD, _DWORD))(**((_DWORD **)this + 6) + 16))(*((_DWORD *)this + 6), 0, 0);
  v3 = 0;
  while ( !(*(int (__fastcall **)(_DWORD))(**((_DWORD **)this + 6) + 36))(*((_DWORD *)this + 6)) )
  {
    if ( ((*(int (__fastcall **)(_DWORD))(**((_DWORD **)this + 6) + 24))(*((_DWORD *)this + 6)) & 1) != 0 )
      (*(void (__fastcall **)(_DWORD, int, int))(**((_DWORD **)this + 6) + 16))(*((_DWORD *)this + 6), 1, 1);
    if ( (*(int (__fastcall **)(_DWORD, char *, int))(**((_DWORD **)this + 6) + 28))(*((_DWORD *)this + 6), v17, 8) != 8 )
      break;
    if ( LC_API_STRNCMP_0(v17, "RIFF", 4u) )
    {
      if ( LC_API_STRNCMP_0(v17, "fmt ", 4u) )
      {
        if ( LC_API_STRNCMP_0(v17, "fact", 4u) )
        {
          if ( LC_API_STRNCMP_0(v17, "data", 4u) )
          {
            (*(void (__fastcall **)(_DWORD, int, int))(**((_DWORD **)this + 6) + 16))(*((_DWORD *)this + 6), v18, 1);
          }
          else
          {
            LC_API_STRNCPY_0((char *)(*((_DWORD *)this + 8) + 36), v17, 4u);
            *(_DWORD *)(*((_DWORD *)this + 8) + 40) = v18;
            v4 = *(_DWORD *)(*((_DWORD *)this + 8) + 56);
            if ( v4 )
            {
              v5 = (*(int (__fastcall **)(_DWORD))(**((_DWORD **)this + 6) + 24))(*((_DWORD *)this + 6)) - 8;
              do
              {
                v6 = v4;
                v4 = *(_DWORD *)(v4 + 8);
              }
              while ( v4 );
              v14 = *(_DWORD *)(*((_DWORD *)this + 8) + 40);
              v15 = v5;
              v7 = VoxAlloc(0xCu, 0);
              *v7 = v15;
              v7[1] = v14;
              v7[2] = 0;
              *(_DWORD *)(v6 + 8) = v7;
              v8 = *((_DWORD *)this + 8);
            }
            else
            {
              v11 = (*(int (__fastcall **)(_DWORD))(**((_DWORD **)this + 6) + 24))(*((_DWORD *)this + 6));
              v12 = VoxAlloc(0xCu, 0);
              v13 = *(_DWORD *)(*((_DWORD *)this + 8) + 40);
              *v12 = v11 - 8;
              v12[1] = v13;
              v12[2] = 0;
              *(_DWORD *)(*((_DWORD *)this + 8) + 56) = v12;
              v8 = *((_DWORD *)this + 8);
              if ( !*(_DWORD *)(v8 + 56) )
                return 0;
            }
            (*(void (__fastcall **)(_DWORD, _DWORD, int))(**((_DWORD **)this + 6) + 16))(
              *((_DWORD *)this + 6),
              *(_DWORD *)(v8 + 40),
              1);
          }
        }
        else
        {
          LC_API_STRNCPY_0((char *)(*((_DWORD *)this + 8) + 44), v17, 4u);
          *(_DWORD *)(*((_DWORD *)this + 8) + 48) = v18;
          (*(void (__fastcall **)(_DWORD, int, int))(**((_DWORD **)this + 6) + 28))(
            *((_DWORD *)this + 6),
            *((_DWORD *)this + 8) + 52,
            4);
        }
      }
      else
      {
        LC_API_STRNCPY_0((char *)(*((_DWORD *)this + 8) + 12), v17, 4u);
        *(_DWORD *)(*((_DWORD *)this + 8) + 16) = v18;
        (*(void (__fastcall **)(_DWORD, int, int))(**((_DWORD **)this + 6) + 28))(
          *((_DWORD *)this + 6),
          *((_DWORD *)this + 8) + 20,
          16);
        v10 = *(_DWORD *)(*((_DWORD *)this + 8) + 16);
        if ( (unsigned int)(v10 + 8) > 0x18 )
          (*(void (__fastcall **)(_DWORD, int, int))(**((_DWORD **)this + 6) + 16))(*((_DWORD *)this + 6), v10 - 16, 1);
      }
      if ( !v3 )
        break;
    }
    else
    {
      LC_API_STRNCPY_0(*((char **)this + 8), v17, 4u);
      v3 = 1;
      *(_DWORD *)(*((_DWORD *)this + 8) + 4) = v18;
      (*(void (__fastcall **)(_DWORD, int, int))(**((_DWORD **)this + 6) + 28))(
        *((_DWORD *)this + 6),
        *((_DWORD *)this + 8) + 8,
        4);
    }
  }
  (*(void (__fastcall **)(_DWORD, int, _DWORD))(**((_DWORD **)this + 6) + 16))(*((_DWORD *)this + 6), v16, 0);
  return 1;
}


// ===== 8709b8 vox::DecoderMSWavFactory(void *) =====
void *__fastcall vox::DecoderMSWavFactory(vox *this, void *a2)
{
  void *v2; // r4

  v2 = VoxAlloc(0x44u, 0);
  vox::DecoderMSWav::DecoderMSWav((int)v2);
  return v2;
}


// ===== 8709d8 vox::DecoderMSWavCursor::~DecoderMSWavCursor() =====
void __fastcall vox::DecoderMSWavCursor::~DecoderMSWavCursor(vox::DecoderMSWavCursor *this)
{
  void (__fastcall ***v1)(_DWORD); // r1

  v1 = *((void (__fastcall ****)(_DWORD))this + 9);
  *(_DWORD *)this = off_993600;
  if ( v1 )
  {
    (**v1)(v1);
    VoxFree(*((void **)this + 9));
  }
}


// ===== 870a2c vox::DecoderMSWavCursor::~DecoderMSWavCursor() =====
void __fastcall vox::DecoderMSWavCursor::~DecoderMSWavCursor(vox::DecoderMSWavCursor *this)
{
  vox::DecoderMSWavCursor::~DecoderMSWavCursor(this);
  LC_API_FREE_0(this);
}


// ===== 870a48 vox::DecoderMSWavCursor::~DecoderMSWavCursor() =====
void __fastcall vox::DecoderMSWavCursor::~DecoderMSWavCursor(vox::DecoderMSWavCursor *this)
{
  void (__fastcall ***v1)(_DWORD); // r1

  v1 = *((void (__fastcall ****)(_DWORD))this + 9);
  *(_DWORD *)this = off_993600;
  if ( v1 )
  {
    (**v1)(v1);
    VoxFree(*((void **)this + 9));
  }
}


// ===== 870a9c vox::DecoderMSWav::DestroyCursor(vox::DecoderCursorInterface *) =====
void __fastcall vox::DecoderMSWav::DestroyCursor(vox::DecoderMSWav *this, vox::DecoderCursorInterface *a2)
{
  if ( a2 )
  {
    (**(void (__fastcall ***)(vox::DecoderCursorInterface *))a2)(a2);
    VoxFree(a2);
  }
}


// ===== 870ac8 vox::DecoderMSWavCursor::DecoderMSWavCursor(vox::DecoderInterface *,vox::StreamCursorInterface *) =====
vox::DecoderMSWavCursor *__fastcall vox::DecoderMSWavCursor::DecoderMSWavCursor(
        vox::DecoderMSWavCursor *this,
        vox::DecoderInterface *a2,
        vox::StreamCursorInterface *a3)
{
  const char *v4; // r5
  _BOOL4 v6; // r0
  _DWORD *v7; // r5
  int v8; // r1
  int v9; // r2
  int v10; // r3
  int v12; // r0
  int v13; // r3

  v4 = (char *)a2 + 4;
  *(_DWORD *)this = off_993600;
  *((_DWORD *)this + 1) = 0;
  *((_DWORD *)this + 2) = 0;
  *((_DWORD *)this + 3) = 0;
  *((_DWORD *)this + 4) = 0;
  *((_DWORD *)this + 5) = a2;
  *((_DWORD *)this + 6) = a3;
  *((_BYTE *)this + 28) = 0;
  *((_DWORD *)this + 9) = 0;
  *((_DWORD *)this + 8) = (char *)a2 + 4;
  if ( *((_BYTE *)a2 + 64) )
  {
    if ( !vox::DecoderMSWavCursor::ParseFile(this) )
    {
      *((_DWORD *)this + 4) = 0;
      *((_DWORD *)this + 1) = 0;
      *((_DWORD *)this + 2) = 0;
      *((_DWORD *)this + 3) = 0;
      return this;
    }
    *(_BYTE *)(*((_DWORD *)this + 5) + 64) = 0;
    v4 = *((const char **)this + 8);
  }
  if ( LC_API_STRNCMP_0(v4, "RIFF", 4u) )
  {
    v6 = 0;
    v13 = *((unsigned __int16 *)v4 + 10);
    if ( v13 != 1 )
      goto LABEL_6;
  }
  else
  {
    v12 = LC_API_STRNCMP_0(v4 + 8, "WAVE", 4u);
    v13 = *((unsigned __int16 *)v4 + 10);
    v6 = v12 == 0;
    if ( v13 != 1 )
    {
LABEL_6:
      if ( v13 == 17 && v6 )
      {
        v7 = VoxAlloc(0x6Cu, 0);
        vox::VoxMSWavSubDecoderIMAADPCM::VoxMSWavSubDecoderIMAADPCM(v7, a3, *((_DWORD *)this + 8));
        *((_DWORD *)this + 9) = v7;
        goto LABEL_8;
      }
      goto LABEL_7;
    }
  }
  if ( v6 )
  {
    v7 = VoxAlloc(0x2Cu, 0);
    vox::VoxMSWavSubDecoderPCM::VoxMSWavSubDecoderPCM(v7, a3, *((_DWORD *)this + 8));
    *((_DWORD *)this + 9) = v7;
    goto LABEL_8;
  }
LABEL_7:
  v7 = *((_DWORD **)this + 9);
LABEL_8:
  if ( v7 )
  {
    v8 = v7[6];
    v9 = v7[5];
    v10 = v7[4];
    *((_DWORD *)this + 4) = v7[7];
    *((_DWORD *)this + 3) = v8;
    *((_DWORD *)this + 2) = v9;
    *((_DWORD *)this + 1) = v10;
  }
  else
  {
    *((_DWORD *)this + 4) = 0;
    *((_DWORD *)this + 1) = 0;
    *((_DWORD *)this + 2) = 0;
    *((_DWORD *)this + 3) = 0;
  }
  return this;
}


// ===== 870c68 vox::DecoderMSWav::CreateNewCursor(vox::StreamCursorInterface *) =====
vox::DecoderMSWavCursor *__fastcall vox::DecoderMSWav::CreateNewCursor(
        vox::DecoderMSWav *this,
        vox::StreamCursorInterface *a2)
{
  vox::DecoderMSWavCursor *v4; // r4

  v4 = (vox::DecoderMSWavCursor *)VoxAlloc(0x28u, 0);
  vox::DecoderMSWavCursor::DecoderMSWavCursor(v4, this, a2);
  return v4;
}


// ===== 870c98 vox::DecoderMSWavCursor::DecoderMSWavCursor(vox::DecoderInterface *,vox::StreamCursorInterface *) =====
vox::DecoderMSWavCursor *__fastcall vox::DecoderMSWavCursor::DecoderMSWavCursor(
        vox::DecoderMSWavCursor *this,
        vox::DecoderInterface *a2,
        vox::StreamCursorInterface *a3)
{
  const char *v4; // r5
  _BOOL4 v6; // r0
  _DWORD *v7; // r5
  int v8; // r1
  int v9; // r2
  int v10; // r3
  int v12; // r0
  int v13; // r3

  v4 = (char *)a2 + 4;
  *(_DWORD *)this = off_993600;
  *((_DWORD *)this + 1) = 0;
  *((_DWORD *)this + 2) = 0;
  *((_DWORD *)this + 3) = 0;
  *((_DWORD *)this + 4) = 0;
  *((_DWORD *)this + 5) = a2;
  *((_DWORD *)this + 6) = a3;
  *((_BYTE *)this + 28) = 0;
  *((_DWORD *)this + 9) = 0;
  *((_DWORD *)this + 8) = (char *)a2 + 4;
  if ( *((_BYTE *)a2 + 64) )
  {
    if ( !vox::DecoderMSWavCursor::ParseFile(this) )
    {
      *((_DWORD *)this + 4) = 0;
      *((_DWORD *)this + 1) = 0;
      *((_DWORD *)this + 2) = 0;
      *((_DWORD *)this + 3) = 0;
      return this;
    }
    *(_BYTE *)(*((_DWORD *)this + 5) + 64) = 0;
    v4 = *((const char **)this + 8);
  }
  if ( LC_API_STRNCMP_0(v4, "RIFF", 4u) )
  {
    v6 = 0;
    v13 = *((unsigned __int16 *)v4 + 10);
    if ( v13 != 1 )
      goto LABEL_6;
  }
  else
  {
    v12 = LC_API_STRNCMP_0(v4 + 8, "WAVE", 4u);
    v13 = *((unsigned __int16 *)v4 + 10);
    v6 = v12 == 0;
    if ( v13 != 1 )
    {
LABEL_6:
      if ( v13 == 17 && v6 )
      {
        v7 = VoxAlloc(0x6Cu, 0);
        vox::VoxMSWavSubDecoderIMAADPCM::VoxMSWavSubDecoderIMAADPCM(v7, a3, *((_DWORD *)this + 8));
        *((_DWORD *)this + 9) = v7;
        goto LABEL_8;
      }
      goto LABEL_7;
    }
  }
  if ( v6 )
  {
    v7 = VoxAlloc(0x2Cu, 0);
    vox::VoxMSWavSubDecoderPCM::VoxMSWavSubDecoderPCM(v7, a3, *((_DWORD *)this + 8));
    *((_DWORD *)this + 9) = v7;
    goto LABEL_8;
  }
LABEL_7:
  v7 = *((_DWORD **)this + 9);
LABEL_8:
  if ( v7 )
  {
    v8 = v7[6];
    v9 = v7[5];
    v10 = v7[4];
    *((_DWORD *)this + 4) = v7[7];
    *((_DWORD *)this + 3) = v8;
    *((_DWORD *)this + 2) = v9;
    *((_DWORD *)this + 1) = v10;
  }
  else
  {
    *((_DWORD *)this + 4) = 0;
    *((_DWORD *)this + 1) = 0;
    *((_DWORD *)this + 2) = 0;
    *((_DWORD *)this + 3) = 0;
  }
  return this;
}


// ===== 870e38 vox::DataNode::DropNodes(void) =====
void __fastcall vox::DataNode::DropNodes(vox::DataNode *this)
{
  _DWORD *v1; // r4
  _DWORD *v3; // r5
  _DWORD *v4; // r6
  _DWORD *v5; // r8
  _DWORD *v6; // r10
  _DWORD *v7; // r9
  _DWORD *v8; // r11
  _DWORD *v9; // r3
  vox::DataNode *v10; // r0
  void *v11; // r0
  int v12; // [sp+4h] [bp-8h]

  v1 = *((_DWORD **)this + 2);
  if ( v1 )
  {
    v3 = (_DWORD *)v1[2];
    if ( !v3 )
      goto LABEL_27;
    v4 = (_DWORD *)v3[2];
    if ( !v4 )
      goto LABEL_25;
    v5 = (_DWORD *)v4[2];
    if ( !v5 )
      goto LABEL_23;
    v6 = (_DWORD *)v5[2];
    if ( !v6 )
      goto LABEL_21;
    v7 = (_DWORD *)v6[2];
    if ( !v7 )
      goto LABEL_19;
    v8 = (_DWORD *)v7[2];
    if ( !v8 )
      goto LABEL_17;
    v9 = (_DWORD *)v8[2];
    if ( !v9 )
      goto LABEL_15;
    v10 = (vox::DataNode *)v9[2];
    if ( !v10 )
      goto LABEL_13;
    v12 = v8[2];
    vox::DataNode::DropNodes(v10);
    v11 = *(void **)(v12 + 8);
    if ( v11 )
      VoxFree(v11);
    v9 = (_DWORD *)v8[2];
    if ( v9 )
LABEL_13:
      VoxFree(v9);
    v8 = (_DWORD *)v7[2];
    if ( v8 )
LABEL_15:
      VoxFree(v8);
    v7 = (_DWORD *)v6[2];
    if ( v7 )
LABEL_17:
      VoxFree(v7);
    v6 = (_DWORD *)v5[2];
    if ( v6 )
LABEL_19:
      VoxFree(v6);
    v5 = (_DWORD *)v4[2];
    if ( v5 )
LABEL_21:
      VoxFree(v5);
    v4 = (_DWORD *)v3[2];
    if ( v4 )
LABEL_23:
      VoxFree(v4);
    v3 = (_DWORD *)v1[2];
    if ( v3 )
LABEL_25:
      VoxFree(v3);
    v1 = *((_DWORD **)this + 2);
    if ( v1 )
LABEL_27:
      VoxFree(v1);
  }
}


// ===== 870f7c vox::DecoderMSWav::~DecoderMSWav() =====
void __fastcall vox::DecoderMSWav::~DecoderMSWav(vox::DecoderMSWav *this)
{
  _DWORD *v1; // r5
  vox::DataNode *v3; // r0
  void *v4; // r0

  v1 = *((_DWORD **)this + 15);
  *(_DWORD *)this = off_993640;
  *((_BYTE *)this + 64) = 1;
  if ( v1 )
  {
    v3 = (vox::DataNode *)v1[2];
    if ( !v3 )
      goto LABEL_6;
    vox::DataNode::DropNodes(v3);
    v4 = (void *)v1[2];
    if ( v4 )
      VoxFree(v4);
    v1 = *((_DWORD **)this + 15);
    if ( v1 )
LABEL_6:
      VoxFree(v1);
    *((_DWORD *)this + 15) = 0;
  }
}


// ===== 870ffc vox::DecoderMSWav::~DecoderMSWav() =====
void __fastcall vox::DecoderMSWav::~DecoderMSWav(vox::DecoderMSWav *this)
{
  _DWORD *v1; // r5
  vox::DataNode *v3; // r0
  void *v4; // r0

  v1 = *((_DWORD **)this + 15);
  *(_DWORD *)this = off_993640;
  *((_BYTE *)this + 64) = 1;
  if ( v1 )
  {
    v3 = (vox::DataNode *)v1[2];
    if ( !v3 )
      goto LABEL_6;
    vox::DataNode::DropNodes(v3);
    v4 = (void *)v1[2];
    if ( v4 )
      VoxFree(v4);
    v1 = *((_DWORD **)this + 15);
    if ( v1 )
LABEL_6:
      VoxFree(v1);
    *((_DWORD *)this + 15) = 0;
  }
}


// ===== 87107c vox::DecoderMSWav::~DecoderMSWav() =====
void __fastcall vox::DecoderMSWav::~DecoderMSWav(vox::DecoderMSWav *this)
{
  vox::DecoderMSWav::~DecoderMSWav(this);
  LC_API_FREE_0(this);
}


// ===== 871098 vox::DecoderNative::GetType(void) =====
int __fastcall vox::DecoderNative::GetType(vox::DecoderNative *this)
{
  return 4;
}


// ===== 8710a0 vox::DecoderNative::GetParam(void) =====
int __fastcall vox::DecoderNative::GetParam(vox::DecoderNative *this)
{
  return 0;
}


// ===== 8710a8 vox::DecoderNativeCursor::HasData(void) =====
int __fastcall vox::DecoderNativeCursor::HasData(vox::DecoderNativeCursor *this)
{
  int v1; // r3

  v1 = *((_DWORD *)this + 18);
  if ( v1 )
    return (*(int (__fastcall **)(_DWORD))(*(_DWORD *)v1 + 8))(*((_DWORD *)this + 18));
  else
    return 0;
}


// ===== 8710d4 vox::DecoderNativeCursor::GetRewindLimit(void) =====
int __fastcall vox::DecoderNativeCursor::GetRewindLimit(vox::DecoderNativeCursor *this)
{
  int v1; // r3
  int v2; // r2

  v1 = *((_DWORD *)this + 23);
  v2 = *((_DWORD *)this + 25);
  if ( v1 > v2 )
    return 0;
  if ( v2 >= *((_DWORD *)this + 22) )
    return *((_DWORD *)this + 22);
  return v1;
}


// ===== 8710fc vox::DecoderNativeCursor::Seek(uint) =====
int __fastcall vox::DecoderNativeCursor::Seek(vox::DecoderNativeCursor *this, unsigned int a2)
{
  int v2; // r3

  v2 = *((_DWORD *)this + 18);
  if ( v2 )
    return (*(int (__fastcall **)(_DWORD, unsigned int))(*(_DWORD *)v2 + 12))(*((_DWORD *)this + 18), a2);
  else
    return -1;
}


// ===== 871128 vox::DecoderNativeCursor::SetLoop(bool) =====
void __fastcall vox::DecoderNativeCursor::SetLoop(vox::DecoderNativeCursor *this, bool a2)
{
  ;
}


// ===== 87112c std::vector<vox::TransitionParams,vox::SAllocator<vox::TransitionParams,(vox::VoxMemHint)0>>::vector(std::vector<vox::TransitionParams,vox::SAllocator<vox::TransitionParams,(vox::VoxMemHint)0>> const&) =====
_DWORD *__fastcall std::vector<vox::TransitionParams,vox::SAllocator<vox::TransitionParams,(vox::VoxMemHint)0>>::vector(
        _DWORD *a1,
        _DWORD *a2)
{
  int v2; // r5
  size_t v4; // r7
  char *v6; // r0
  int v7; // r6
  _DWORD *v8; // t0
  char *v9; // r3
  int v10; // r7
  int v11; // r1
  char *v12; // r3
  char v13; // r2

  v2 = 0;
  v4 = (a2[1] - *a2) & 0xFFFFFFF8;
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v6 = (char *)VoxAlloc(v4, 0);
  a1[2] = &v6[v4];
  *a1 = v6;
  a1[1] = v6;
  v8 = a2;
  v7 = *a2;
  v9 = v6;
  v10 = (v8[1] - v7) >> 3;
  if ( v10 > 0 )
  {
    v11 = v10;
    do
    {
      --v11;
      *(_DWORD *)&v6[v2] = *(_DWORD *)(v7 + v2);
      v12 = &v6[v2];
      v13 = *(_BYTE *)(v7 + v2 + 4);
      v2 += 8;
      v12[4] = v13;
    }
    while ( v11 );
    v9 = &v6[8 * v10];
  }
  a1[1] = v9;
  return a1;
}


// ===== 8711c0 std::vector<std::vector<vox::TransitionParams,vox::SAllocator<vox::TransitionParams,(vox::VoxMemHint)0>>,vox::SAllocator<std::vector<vox::TransitionParams,vox::SAllocator<vox::TransitionParams,(vox::VoxMemHint)0>>,(vox::VoxMemHint)0>>::_M_initialize(uint,std::vector<vox::TransitionParams,vox::SAllocator<vox::TransitionParams,(vox::VoxMemHint)0>> const&) =====
_DWORD *__fastcall std::vector<std::vector<vox::TransitionParams,vox::SAllocator<vox::TransitionParams,(vox::VoxMemHint)0>>,vox::SAllocator<std::vector<vox::TransitionParams,vox::SAllocator<vox::TransitionParams,(vox::VoxMemHint)0>>,(vox::VoxMemHint)0>>::_M_initialize(
        _DWORD *result,
        int a2,
        _DWORD *a3)
{
  _DWORD *v3; // r4
  _DWORD *v4; // r5
  int v5; // r8
  int v7; // r6

  v3 = (_DWORD *)*result;
  v4 = result;
  v5 = *result + 12 * a2;
  v7 = -1431655765 * ((12 * a2) >> 2);
  if ( v7 > 0 )
  {
    do
    {
      result = std::vector<vox::TransitionParams,vox::SAllocator<vox::TransitionParams,(vox::VoxMemHint)0>>::vector(
                 v3,
                 a3);
      --v7;
      v3 += 3;
    }
    while ( v7 );
  }
  v4[1] = v5;
  return result;
}


// ===== 87121c std::vector<vox::TransitionParams,vox::SAllocator<vox::TransitionParams,(vox::VoxMemHint)0>>::_M_allocate_and_copy<vox::TransitionParams const*>(uint &,vox::TransitionParams const*,vox::TransitionParams const*) =====
char *__fastcall std::vector<vox::TransitionParams,vox::SAllocator<vox::TransitionParams,(vox::VoxMemHint)0>>::_M_allocate_and_copy<vox::TransitionParams const*>(
        int a1,
        _DWORD *a2,
        int a3,
        int a4)
{
  int v5; // r5
  char *result; // r0
  int v7; // r1
  char *v8; // r3
  char v9; // r2

  v5 = (a4 - a3) >> 3;
  result = (char *)VoxAlloc(8 * *a2, 0);
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


// ===== 871274 std::vector<std::vector<vox::TransitionParams,vox::SAllocator<vox::TransitionParams,(vox::VoxMemHint)0>>,vox::SAllocator<std::vector<vox::TransitionParams,vox::SAllocator<vox::TransitionParams,(vox::VoxMemHint)0>>,(vox::VoxMemHint)0>>::_M_allocate_and_copy<std::vector<vox::TransitionParams,vox::SAllocator<vox::TransitionParams,(vox::VoxMemHint)0>>*>(uint &,std::vector<vox::TransitionParams,vox::SAllocator<vox::TransitionParams,(vox::VoxMemHint)0>>*,std::vector<vox::TransitionParams,vox::SAllocator<vox::TransitionParams,(vox::VoxMemHint)0>>*) =====
char *__fastcall std::vector<std::vector<vox::TransitionParams,vox::SAllocator<vox::TransitionParams,(vox::VoxMemHint)0>>,vox::SAllocator<std::vector<vox::TransitionParams,vox::SAllocator<vox::TransitionParams,(vox::VoxMemHint)0>>,(vox::VoxMemHint)0>>::_M_allocate_and_copy<std::vector<vox::TransitionParams,vox::SAllocator<vox::TransitionParams,(vox::VoxMemHint)0>>*>(
        int a1,
        _DWORD *a2,
        int a3,
        int a4)
{
  char *v6; // r7
  int v7; // r6
  int v8; // r5

  v6 = (char *)VoxAlloc(12 * *a2, 0);
  v7 = -1431655765 * ((a4 - a3) >> 2);
  if ( v7 > 0 )
  {
    v8 = 0;
    do
    {
      std::vector<vox::TransitionParams,vox::SAllocator<vox::TransitionParams,(vox::VoxMemHint)0>>::vector(
        &v6[v8],
        (_DWORD *)(a3 + v8));
      --v7;
      v8 += 12;
    }
    while ( v7 );
  }
  return v6;
}


// ===== 8712e0 std::vector<std::vector<vox::TransitionParams,vox::SAllocator<vox::TransitionParams,(vox::VoxMemHint)0>>,vox::SAllocator<std::vector<vox::TransitionParams,vox::SAllocator<vox::TransitionParams,(vox::VoxMemHint)0>>,(vox::VoxMemHint)0>>::_M_allocate_and_copy<std::vector<vox::TransitionParams,vox::SAllocator<vox::TransitionParams,(vox::VoxMemHint)0>> const*>(uint &,std::vector<vox::TransitionParams,vox::SAllocator<vox::TransitionParams,(vox::VoxMemHint)0>> const*,std::vector<vox::TransitionParams,vox::SAllocator<vox::TransitionParams,(vox::VoxMemHint)0>> const*) =====
char *__fastcall std::vector<std::vector<vox::TransitionParams,vox::SAllocator<vox::TransitionParams,(vox::VoxMemHint)0>>,vox::SAllocator<std::vector<vox::TransitionParams,vox::SAllocator<vox::TransitionParams,(vox::VoxMemHint)0>>,(vox::VoxMemHint)0>>::_M_allocate_and_copy<std::vector<vox::TransitionParams,vox::SAllocator<vox::TransitionParams,(vox::VoxMemHint)0>> const*>(
        int a1,
        _DWORD *a2,
        int a3,
        int a4)
{
  char *v6; // r7
  int v7; // r6
  int v8; // r5

  v6 = (char *)VoxAlloc(12 * *a2, 0);
  v7 = -1431655765 * ((a4 - a3) >> 2);
  if ( v7 > 0 )
  {
    v8 = 0;
    do
    {
      std::vector<vox::TransitionParams,vox::SAllocator<vox::TransitionParams,(vox::VoxMemHint)0>>::vector(
        &v6[v8],
        (_DWORD *)(a3 + v8));
      --v7;
      v8 += 12;
    }
    while ( v7 );
  }
  return v6;
}


// ===== 87134c std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>>::_M_compute_next_size(uint) =====
unsigned int __fastcall std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>>::_M_compute_next_size(
        int a1,
        unsigned int a2)
{
  unsigned int v2; // r4
  unsigned int v4; // r0
  unsigned int result; // r0

  v2 = *(_DWORD *)(a1 + 16) - *(_DWORD *)(a1 + 20);
  if ( -2 - v2 < a2 )
    __ZSt24__stl_throw_length_errorPKc_veneer_0("basic_string");
  v4 = v2 + 1;
  if ( a2 < v2 )
    result = v4 + v2;
  else
    result = v4 + a2;
  if ( result == -1 || result < v2 )
    return -2;
  return result;
}


// ===== 8713b0 std::priv::_Rb_tree<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>>,vox::StringCompare,std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,int>,std::priv::_Select1st<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,int>>,std::priv::_MapTraitsT<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,int>>,vox::SAllocator<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,int>,(vox::VoxMemHint)0>>::_M_create_node(std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,int> const&) =====
_DWORD *__fastcall std::priv::_Rb_tree<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>>,vox::StringCompare,std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,int>,std::priv::_Select1st<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,int>>,std::priv::_MapTraitsT<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,int>>,vox::SAllocator<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,int>,(vox::VoxMemHint)0>>::_M_create_node(
        int a1,
        int a2)
{
  _DWORD *v3; // r4
  int v4; // r2

  v3 = VoxAlloc(0x2Cu, 0);
  v3[8] = v3 + 4;
  v3[9] = v3 + 4;
  std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>>::_M_range_initialize(
    v3 + 4,
    *(_BYTE **)(a2 + 20),
    *(_BYTE **)(a2 + 16));
  v4 = *(_DWORD *)(a2 + 24);
  v3[3] = 0;
  v3[10] = v4;
  v3[2] = 0;
  return v3;
}


// ===== 8713fc std::vector<int,vox::SAllocator<int,(vox::VoxMemHint)0>>::vector(std::vector<int,vox::SAllocator<int,(vox::VoxMemHint)0>> const&) =====
_DWORD *__fastcall std::vector<int,vox::SAllocator<int,(vox::VoxMemHint)0>>::vector(_DWORD *a1, int a2)
{
  size_t v3; // r7
  char *v5; // r0
  int v6; // r1
  int v7; // r5
  char *v8; // r3

  v3 = (*(_DWORD *)(a2 + 4) - *(_DWORD *)a2) & 0xFFFFFFFC;
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v5 = (char *)VoxAlloc(v3, 0);
  a1[2] = &v5[v3];
  *a1 = v5;
  a1[1] = v5;
  v7 = *(_DWORD *)(a2 + 4);
  v8 = v5;
  if ( *(_DWORD *)a2 != v7 )
    v8 = (char *)memcpy(v5, *(const void **)a2, v7 - *(_DWORD *)a2) + v7 - v6;
  a1[1] = v8;
  return a1;
}


// ===== 871468 std::vector<std::vector<int,vox::SAllocator<int,(vox::VoxMemHint)0>>,vox::SAllocator<std::vector<int,vox::SAllocator<int,(vox::VoxMemHint)0>>,(vox::VoxMemHint)0>>::_M_allocate_and_copy<std::vector<int,vox::SAllocator<int,(vox::VoxMemHint)0>>*>(uint &,std::vector<int,vox::SAllocator<int,(vox::VoxMemHint)0>>*,std::vector<int,vox::SAllocator<int,(vox::VoxMemHint)0>>*) =====
char *__fastcall std::vector<std::vector<int,vox::SAllocator<int,(vox::VoxMemHint)0>>,vox::SAllocator<std::vector<int,vox::SAllocator<int,(vox::VoxMemHint)0>>,(vox::VoxMemHint)0>>::_M_allocate_and_copy<std::vector<int,vox::SAllocator<int,(vox::VoxMemHint)0>>*>(
        int a1,
        _DWORD *a2,
        int a3,
        int a4)
{
  char *v6; // r7
  int v7; // r6
  int v8; // r5

  v6 = (char *)VoxAlloc(12 * *a2, 0);
  v7 = -1431655765 * ((a4 - a3) >> 2);
  if ( v7 > 0 )
  {
    v8 = 0;
    do
    {
      std::vector<int,vox::SAllocator<int,(vox::VoxMemHint)0>>::vector(&v6[v8], a3 + v8);
      --v7;
      v8 += 12;
    }
    while ( v7 );
  }
  return v6;
}


// ===== 8714d4 std::vector<std::vector<int,vox::SAllocator<int,(vox::VoxMemHint)0>>,vox::SAllocator<std::vector<int,vox::SAllocator<int,(vox::VoxMemHint)0>>,(vox::VoxMemHint)0>>::_M_initialize(uint,std::vector<int,vox::SAllocator<int,(vox::VoxMemHint)0>> const&) =====
_DWORD *__fastcall std::vector<std::vector<int,vox::SAllocator<int,(vox::VoxMemHint)0>>,vox::SAllocator<std::vector<int,vox::SAllocator<int,(vox::VoxMemHint)0>>,(vox::VoxMemHint)0>>::_M_initialize(
        _DWORD *result,
        int a2,
        int a3)
{
  _DWORD *v3; // r4
  _DWORD *v4; // r5
  int v5; // r8
  int v7; // r6

  v3 = (_DWORD *)*result;
  v4 = result;
  v5 = *result + 12 * a2;
  v7 = -1431655765 * ((12 * a2) >> 2);
  if ( v7 > 0 )
  {
    do
    {
      result = std::vector<int,vox::SAllocator<int,(vox::VoxMemHint)0>>::vector(v3, a3);
      --v7;
      v3 += 3;
    }
    while ( v7 );
  }
  v4[1] = v5;
  return result;
}


// ===== 871530 std::vector<std::vector<int,vox::SAllocator<int,(vox::VoxMemHint)0>>,vox::SAllocator<std::vector<int,vox::SAllocator<int,(vox::VoxMemHint)0>>,(vox::VoxMemHint)0>>::_M_allocate_and_copy<std::vector<int,vox::SAllocator<int,(vox::VoxMemHint)0>> const*>(uint &,std::vector<int,vox::SAllocator<int,(vox::VoxMemHint)0>> const*,std::vector<int,vox::SAllocator<int,(vox::VoxMemHint)0>> const*) =====
char *__fastcall std::vector<std::vector<int,vox::SAllocator<int,(vox::VoxMemHint)0>>,vox::SAllocator<std::vector<int,vox::SAllocator<int,(vox::VoxMemHint)0>>,(vox::VoxMemHint)0>>::_M_allocate_and_copy<std::vector<int,vox::SAllocator<int,(vox::VoxMemHint)0>> const*>(
        int a1,
        _DWORD *a2,
        int a3,
        int a4)
{
  char *v6; // r7
  int v7; // r6
  int v8; // r5

  v6 = (char *)VoxAlloc(12 * *a2, 0);
  v7 = -1431655765 * ((a4 - a3) >> 2);
  if ( v7 > 0 )
  {
    v8 = 0;
    do
    {
      std::vector<int,vox::SAllocator<int,(vox::VoxMemHint)0>>::vector(&v6[v8], a3 + v8);
      --v7;
      v8 += 12;
    }
    while ( v7 );
  }
  return v6;
}


// ===== 87159c std::vector<int,vox::SAllocator<int,(vox::VoxMemHint)0>>::_M_allocate_and_copy<int const*>(uint &,int const*,int const*) =====
void *__fastcall std::vector<int,vox::SAllocator<int,(vox::VoxMemHint)0>>::_M_allocate_and_copy<int const*>(
        int a1,
        _DWORD *a2,
        _BYTE *a3,
        _BYTE *a4)
{
  void *v6; // r0
  void *v7; // r5

  v6 = VoxAlloc(4 * *a2, 0);
  v7 = v6;
  if ( a3 != a4 )
    memcpy(v6, a3, a4 - a3);
  return v7;
}


// ===== 8715d8 vox::StringCompare::operator()(std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const&,std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const&) =====
unsigned int __fastcall vox::StringCompare::operator()(int a1, int a2, int a3)
{
  const void *v3; // r0
  int v4; // r5
  const void *v5; // r1
  signed int v6; // r5
  int v7; // r4
  size_t v8; // r2
  unsigned int v9; // r0

  v3 = *(const void **)(a2 + 20);
  v4 = *(_DWORD *)(a2 + 16);
  v5 = *(const void **)(a3 + 20);
  v6 = v4 - (_DWORD)v3;
  v7 = *(_DWORD *)(a3 + 16) - (_DWORD)v5;
  if ( v7 >= v6 )
    v8 = v6;
  else
    v8 = *(_DWORD *)(a3 + 16) - (_DWORD)v5;
  v9 = memcmp(v3, v5, v8);
  if ( !v9 )
  {
    if ( v6 >= v7 )
      v9 = v6 > v7;
    else
      v9 = -1;
  }
  return v9 >> 31;
}


// ===== 871628 std::priv::_Rb_tree<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>>,vox::StringCompare,std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,int>,std::priv::_Select1st<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,int>>,std::priv::_MapTraitsT<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,int>>,vox::SAllocator<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,int>,(vox::VoxMemHint)0>>::_M_insert(std::priv::_Rb_tree_node_base *,std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,int> const&,std::priv::_Rb_tree_node_base *,std::priv::_Rb_tree_node_base *) =====
_DWORD *__fastcall std::priv::_Rb_tree<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>>,vox::StringCompare,std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,int>,std::priv::_Select1st<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,int>>,std::priv::_MapTraitsT<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,int>>,vox::SAllocator<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,int>,(vox::VoxMemHint)0>>::_M_insert(
        _DWORD *a1,
        _DWORD *a2,
        _DWORD *a3,
        int a4,
        int a5,
        int a6)
{
  _DWORD *v9; // r0
  _DWORD *node; // r7
  _DWORD *v12; // r0
  unsigned int v13; // r0
  int v14; // [sp+4h] [bp-8h]

  if ( a2 == a3 )
  {
    node = std::priv::_Rb_tree<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>>,vox::StringCompare,std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,int>,std::priv::_Select1st<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,int>>,std::priv::_MapTraitsT<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,int>>,vox::SAllocator<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,int>,(vox::VoxMemHint)0>>::_M_create_node(
             (int)a2,
             a4);
    a2[2] = node;
    a2[1] = node;
    a2[3] = node;
  }
  else if ( !a6
         && (a5 || (v14 = a4, v13 = vox::StringCompare::operator()((int)(a2 + 5), a4, (int)(a3 + 4)), a4 = v14, v13)) )
  {
    v12 = std::priv::_Rb_tree<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>>,vox::StringCompare,std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,int>,std::priv::_Select1st<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,int>>,std::priv::_MapTraitsT<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,int>>,vox::SAllocator<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,int>,(vox::VoxMemHint)0>>::_M_create_node(
            (int)a2,
            a4);
    a3[2] = v12;
    node = v12;
    if ( a3 == (_DWORD *)a2[2] )
      a2[2] = v12;
  }
  else
  {
    v9 = std::priv::_Rb_tree<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>>,vox::StringCompare,std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,int>,std::priv::_Select1st<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,int>>,std::priv::_MapTraitsT<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,int>>,vox::SAllocator<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,int>,(vox::VoxMemHint)0>>::_M_create_node(
           (int)a2,
           a4);
    a3[3] = v9;
    node = v9;
    if ( a3 == (_DWORD *)a2[3] )
      a2[3] = v9;
  }
  node[1] = a3;
  std::priv::_Rb_global<bool>::_Rebalance((int)node, a2 + 1);
  ++a2[4];
  *a1 = node;
  return a1;
}


// ===== 871718 std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>>::_M_append(char const*,char const*) =====
_DWORD *__fastcall std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>>::_M_append(
        _DWORD *result,
        _BYTE *a2,
        _BYTE *a3)
{
  _DWORD *v4; // r5
  _DWORD *v5; // r3
  signed int v6; // r6
  bool v7; // zf
  int v8; // r1
  int v9; // r2
  int v10; // r3
  _BYTE *v11; // r2
  _BYTE *v12; // r3
  char v13; // t1
  size_t size; // r7
  _BYTE *v15; // r0
  int v16; // r1
  _BYTE *v17; // r10
  int v18; // r2
  _BYTE *v19; // r8
  int i; // r8
  int j; // r3
  _DWORD *v22; // r0

  v4 = result;
  if ( a2 != a3 )
  {
    v5 = (_DWORD *)result[5];
    v6 = a3 - a2;
    v7 = v5 == result;
    if ( v5 != result )
      v5 = (_DWORD *)*result;
    v8 = result[4];
    if ( v7 )
      v5 = result + 4;
    if ( v6 >= (unsigned int)v5 - v8 )
    {
      size = std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>>::_M_compute_next_size(
               (int)result,
               v6);
      v15 = VoxAlloc(size, 0);
      v16 = v4[5];
      v17 = v15;
      v18 = v4[4] - v16;
      if ( v18 > 0 )
      {
        for ( i = 0; i != v18; ++i )
          v15[i] = *(_BYTE *)(v16 + i);
        v19 = &v15[i];
      }
      else
      {
        v19 = v15;
      }
      if ( v6 > 0 )
      {
        for ( j = 0; j != v6; ++j )
          v19[j] = a2[j];
        v19 += v6;
      }
      *v19 = 0;
      v22 = (_DWORD *)v4[5];
      if ( v4 != v22 && v22 )
        VoxFree(v22);
      *v4 = &v17[size];
      v4[4] = v19;
      v4[5] = v17;
      return v4;
    }
    else
    {
      v9 = a3 - (a2 + 1);
      v10 = result[4];
      if ( v9 > 0 )
      {
        v11 = &a2[v9];
        v12 = a2;
        do
        {
          v13 = *++v12;
          *(_BYTE *)++v8 = v13;
        }
        while ( v12 != v11 );
        v10 = result[4];
      }
      *(_BYTE *)(v10 + v6) = 0;
      *(_BYTE *)result[4] = *a2;
      result[4] += v6;
    }
  }
  return result;
}


// ===== 871854 std::vector<std::vector<int,vox::SAllocator<int,(vox::VoxMemHint)0>>,vox::SAllocator<std::vector<int,vox::SAllocator<int,(vox::VoxMemHint)0>>,(vox::VoxMemHint)0>>::vector(uint) =====
_DWORD *__fastcall std::vector<std::vector<int,vox::SAllocator<int,(vox::VoxMemHint)0>>,vox::SAllocator<std::vector<int,vox::SAllocator<int,(vox::VoxMemHint)0>>,(vox::VoxMemHint)0>>::vector(
        _DWORD *a1,
        int a2)
{
  int v2; // r7
  char *v5; // r0
  void *p[4]; // [sp+4h] [bp-10h] BYREF

  v2 = 12 * a2;
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v5 = (char *)VoxAlloc(12 * a2, 0);
  *a1 = v5;
  a1[1] = v5;
  a1[2] = &v5[v2];
  memset(p, 0, 12);
  std::vector<std::vector<int,vox::SAllocator<int,(vox::VoxMemHint)0>>,vox::SAllocator<std::vector<int,vox::SAllocator<int,(vox::VoxMemHint)0>>,(vox::VoxMemHint)0>>::_M_initialize(
    a1,
    a2,
    (int)p);
  if ( p[0] )
    VoxFree(p[0]);
  return a1;
}


// ===== 8718cc vox::DecoderNativeCursor::Reset(void) =====
int __fastcall vox::DecoderNativeCursor::Reset(int this)
{
  int v1; // r3
  pthread_mutex_t *v2; // r6
  pthread_mutex_t *value; // r0
  pthread_mutex_t *v4; // r4

  v1 = *(_DWORD *)(this + 72);
  v2 = (pthread_mutex_t *)this;
  if ( v1 )
  {
    (*(void (__fastcall **)(_DWORD))(*(_DWORD *)v1 + 16))(*(_DWORD *)(this + 72));
    v2[25].value = 0;
    v2[19].value = 0;
    v2[22].value = 0;
    v2[23].value = 0;
    vox::Mutex::Lock(v2 + 26);
    value = (pthread_mutex_t *)v2[16].value;
    if ( value != &v2[16] )
    {
      while ( 1 )
      {
        v4 = (pthread_mutex_t *)value->value;
        VoxFree(value);
        if ( v4 == &v2[16] )
          break;
        value = v4;
      }
      value = v2 + 16;
    }
    v2[17].value = (volatile int)value;
    v2[16].value = (volatile int)value;
    return vox::Mutex::Unlock(v2 + 26);
  }
  return this;
}


// ===== 871954 vox::DecoderNativeCursor::GetStateIndex(void) =====
int __fastcall vox::DecoderNativeCursor::GetStateIndex(pthread_mutex_t *this)
{
  pthread_mutex_t *v1; // r5
  vox::DecoderNativeCursor *v3; // r3
  int *v4; // r3
  int v5; // r2
  int *v6; // r1
  int v7; // r4

  v1 = this + 26;
  vox::Mutex::Lock(this + 26);
  v3 = *((vox::DecoderNativeCursor **)this + 16);
  if ( v3 == (vox::DecoderNativeCursor *)(this + 16) )
  {
    vox::Mutex::Unlock(v1);
    return -1;
  }
  else
  {
    do
      v3 = *(vox::DecoderNativeCursor **)v3;
    while ( this + 16 != (pthread_mutex_t *)v3 );
    v4 = *((int **)this + 17);
    v5 = *v4;
    v6 = (int *)v4[1];
    v7 = v4[2];
    *v6 = *v4;
    *(_DWORD *)(v5 + 4) = v6;
    VoxFree(v4);
    vox::Mutex::Unlock(v1);
  }
  return v7;
}


// ===== 8719c0 std::vector<std::vector<vox::TransitionParams,vox::SAllocator<vox::TransitionParams,(vox::VoxMemHint)0>>,vox::SAllocator<std::vector<vox::TransitionParams,vox::SAllocator<vox::TransitionParams,(vox::VoxMemHint)0>>,(vox::VoxMemHint)0>>::vector(uint) =====
_DWORD *__fastcall std::vector<std::vector<vox::TransitionParams,vox::SAllocator<vox::TransitionParams,(vox::VoxMemHint)0>>,vox::SAllocator<std::vector<vox::TransitionParams,vox::SAllocator<vox::TransitionParams,(vox::VoxMemHint)0>>,(vox::VoxMemHint)0>>::vector(
        _DWORD *a1,
        int a2)
{
  int v2; // r7
  char *v5; // r0
  char *v6; // r3
  char *v8; // [sp+4h] [bp-10h] BYREF
  char *v9; // [sp+8h] [bp-Ch]
  int v10; // [sp+Ch] [bp-8h]

  v2 = 12 * a2;
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v5 = (char *)VoxAlloc(12 * a2, 0);
  *a1 = v5;
  a1[1] = v5;
  a1[2] = &v5[v2];
  v10 = 0;
  v8 = nullptr;
  v9 = nullptr;
  std::vector<std::vector<vox::TransitionParams,vox::SAllocator<vox::TransitionParams,(vox::VoxMemHint)0>>,vox::SAllocator<std::vector<vox::TransitionParams,vox::SAllocator<vox::TransitionParams,(vox::VoxMemHint)0>>,(vox::VoxMemHint)0>>::_M_initialize(
    a1,
    a2,
    &v8);
  v6 = v9;
  if ( v9 != v8 )
    v6 = &v9[8 * ~((unsigned int)(v9 - 8 - v8) >> 3)];
  if ( v6 )
    VoxFree(v8);
  return a1;
}


// ===== 871a50 vox::DecoderNative::DestroyCursor(vox::DecoderCursorInterface *) =====
void __fastcall vox::DecoderNative::DestroyCursor(vox::DecoderNative *this, vox::DecoderCursorInterface *a2)
{
  if ( a2 )
  {
    (**(void (__fastcall ***)(vox::DecoderCursorInterface *))a2)(a2);
    VoxFree(a2);
  }
}


// ===== 871a7c std::vector<std::vector<vox::TransitionParams,vox::SAllocator<vox::TransitionParams,(vox::VoxMemHint)0>>,vox::SAllocator<std::vector<vox::TransitionParams,vox::SAllocator<vox::TransitionParams,(vox::VoxMemHint)0>>,(vox::VoxMemHint)0>>::_M_clear(void) =====
void __fastcall std::vector<std::vector<vox::TransitionParams,vox::SAllocator<vox::TransitionParams,(vox::VoxMemHint)0>>,vox::SAllocator<std::vector<vox::TransitionParams,vox::SAllocator<vox::TransitionParams,(vox::VoxMemHint)0>>,(vox::VoxMemHint)0>>::_M_clear(
        char **a1)
{
  char *v1; // r4
  char *v2; // r5
  void *v4; // r0

  v1 = a1[1];
  v2 = *a1;
  if ( v1 != *a1 )
  {
    do
    {
      v4 = *((void **)v1 - 3);
      v1 -= 12;
      if ( v4 )
        VoxFree(v4);
    }
    while ( v2 != v1 );
    v2 = *a1;
  }
  VoxFree(v2);
}


// ===== 871ac0 std::vector<std::vector<vox::TransitionParams,vox::SAllocator<vox::TransitionParams,(vox::VoxMemHint)0>>,vox::SAllocator<std::vector<vox::TransitionParams,vox::SAllocator<vox::TransitionParams,(vox::VoxMemHint)0>>,(vox::VoxMemHint)0>>::reserve(uint) =====
void __fastcall std::vector<std::vector<vox::TransitionParams,vox::SAllocator<vox::TransitionParams,(vox::VoxMemHint)0>>,vox::SAllocator<std::vector<vox::TransitionParams,vox::SAllocator<vox::TransitionParams,(vox::VoxMemHint)0>>,(vox::VoxMemHint)0>>::reserve(
        int a1,
        unsigned int a2)
{
  char *v3; // r2
  int v4; // r0
  int v5; // r3
  int v6; // r5
  char *v7; // r6
  char *v8; // r3
  unsigned int v9; // [sp+4h] [bp-4h] BYREF

  v3 = *(char **)a1;
  v4 = (*(_DWORD *)(a1 + 8) - *(_DWORD *)a1) >> 2;
  v9 = a2;
  if ( a2 > -1431655765 * v4 )
  {
    if ( a2 > 0x15555555 )
    {
      __ZSt24__stl_throw_length_errorPKc_veneer_0("vector");
      v3 = *(char **)a1;
    }
    v5 = *(_DWORD *)(a1 + 4);
    v6 = -1431655765 * ((v5 - (int)v3) >> 2);
    if ( v3 )
    {
      v7 = std::vector<std::vector<vox::TransitionParams,vox::SAllocator<vox::TransitionParams,(vox::VoxMemHint)0>>,vox::SAllocator<std::vector<vox::TransitionParams,vox::SAllocator<vox::TransitionParams,(vox::VoxMemHint)0>>,(vox::VoxMemHint)0>>::_M_allocate_and_copy<std::vector<vox::TransitionParams,vox::SAllocator<vox::TransitionParams,(vox::VoxMemHint)0>>*>(
             a1,
             &v9,
             (int)v3,
             v5);
      std::vector<std::vector<vox::TransitionParams,vox::SAllocator<vox::TransitionParams,(vox::VoxMemHint)0>>,vox::SAllocator<std::vector<vox::TransitionParams,vox::SAllocator<vox::TransitionParams,(vox::VoxMemHint)0>>,(vox::VoxMemHint)0>>::_M_clear((char **)a1);
    }
    else
    {
      v7 = (char *)VoxAlloc(12 * v9, 0);
    }
    v8 = &v7[12 * v9];
    *(_DWORD *)(a1 + 4) = &v7[12 * v6];
    *(_DWORD *)(a1 + 8) = v8;
    *(_DWORD *)a1 = v7;
  }
}


// ===== 871ba8 std::vector<std::vector<vox::TransitionParams,vox::SAllocator<vox::TransitionParams,(vox::VoxMemHint)0>>,vox::SAllocator<std::vector<vox::TransitionParams,vox::SAllocator<vox::TransitionParams,(vox::VoxMemHint)0>>,(vox::VoxMemHint)0>>::~vector() =====
char **__fastcall std::vector<std::vector<vox::TransitionParams,vox::SAllocator<vox::TransitionParams,(vox::VoxMemHint)0>>,vox::SAllocator<std::vector<vox::TransitionParams,vox::SAllocator<vox::TransitionParams,(vox::VoxMemHint)0>>,(vox::VoxMemHint)0>>::~vector(
        void **a1)
{
  char *v1; // r4
  char *v2; // r5
  void *v4; // r0

  v1 = (char *)a1[1];
  v2 = (char *)*a1;
  if ( v1 != *a1 )
  {
    do
    {
      v4 = *((void **)v1 - 3);
      v1 -= 12;
      if ( v4 )
        VoxFree(v4);
    }
    while ( v2 != v1 );
  }
  if ( *a1 )
    VoxFree(*a1);
  return (char **)a1;
}


// ===== 871bf4 std::vector<std::vector<int,vox::SAllocator<int,(vox::VoxMemHint)0>>,vox::SAllocator<std::vector<int,vox::SAllocator<int,(vox::VoxMemHint)0>>,(vox::VoxMemHint)0>>::_M_clear(void) =====
void __fastcall std::vector<std::vector<int,vox::SAllocator<int,(vox::VoxMemHint)0>>,vox::SAllocator<std::vector<int,vox::SAllocator<int,(vox::VoxMemHint)0>>,(vox::VoxMemHint)0>>::_M_clear(
        void **a1)
{
  char *v2; // r5
  char *v3; // r0
  char *v4; // r4
  void *v5; // r0

  v2 = (char *)*a1;
  v3 = (char *)a1[1];
  if ( v3 != v2 )
  {
    v4 = v3;
    do
    {
      v5 = *((void **)v4 - 3);
      v4 -= 12;
      if ( v5 )
        VoxFree(v5);
    }
    while ( v2 != v4 );
    v3 = (char *)*a1;
  }
  VoxFree(v3);
}


// ===== 871c38 std::vector<std::vector<int,vox::SAllocator<int,(vox::VoxMemHint)0>>,vox::SAllocator<std::vector<int,vox::SAllocator<int,(vox::VoxMemHint)0>>,(vox::VoxMemHint)0>>::reserve(uint) =====
void __fastcall std::vector<std::vector<int,vox::SAllocator<int,(vox::VoxMemHint)0>>,vox::SAllocator<std::vector<int,vox::SAllocator<int,(vox::VoxMemHint)0>>,(vox::VoxMemHint)0>>::reserve(
        int a1,
        unsigned int a2)
{
  int v3; // r2
  int v4; // r0
  int v5; // r3
  int v6; // r5
  char *v7; // r6
  char *v8; // r3
  unsigned int v9; // [sp+4h] [bp-4h] BYREF

  v3 = *(_DWORD *)a1;
  v4 = (*(_DWORD *)(a1 + 8) - *(_DWORD *)a1) >> 2;
  v9 = a2;
  if ( a2 > -1431655765 * v4 )
  {
    if ( a2 > 0x15555555 )
    {
      __ZSt24__stl_throw_length_errorPKc_veneer_0("vector");
      v3 = *(_DWORD *)a1;
    }
    v5 = *(_DWORD *)(a1 + 4);
    v6 = -1431655765 * ((v5 - v3) >> 2);
    if ( v3 )
    {
      v7 = std::vector<std::vector<int,vox::SAllocator<int,(vox::VoxMemHint)0>>,vox::SAllocator<std::vector<int,vox::SAllocator<int,(vox::VoxMemHint)0>>,(vox::VoxMemHint)0>>::_M_allocate_and_copy<std::vector<int,vox::SAllocator<int,(vox::VoxMemHint)0>>*>(
             a1,
             &v9,
             v3,
             v5);
      std::vector<std::vector<int,vox::SAllocator<int,(vox::VoxMemHint)0>>,vox::SAllocator<std::vector<int,vox::SAllocator<int,(vox::VoxMemHint)0>>,(vox::VoxMemHint)0>>::_M_clear((void **)a1);
    }
    else
    {
      v7 = (char *)VoxAlloc(12 * v9, 0);
    }
    v8 = &v7[12 * v9];
    *(_DWORD *)(a1 + 4) = &v7[12 * v6];
    *(_DWORD *)(a1 + 8) = v8;
    *(_DWORD *)a1 = v7;
  }
}


// ===== 871d20 std::vector<std::vector<int,vox::SAllocator<int,(vox::VoxMemHint)0>>,vox::SAllocator<std::vector<int,vox::SAllocator<int,(vox::VoxMemHint)0>>,(vox::VoxMemHint)0>>::~vector() =====
char **__fastcall std::vector<std::vector<int,vox::SAllocator<int,(vox::VoxMemHint)0>>,vox::SAllocator<std::vector<int,vox::SAllocator<int,(vox::VoxMemHint)0>>,(vox::VoxMemHint)0>>::~vector(
        void **a1)
{
  char *v1; // r4
  char *v2; // r5
  void *v4; // r0

  v1 = (char *)a1[1];
  v2 = (char *)*a1;
  if ( v1 != *a1 )
  {
    do
    {
      v4 = *((void **)v1 - 3);
      v1 -= 12;
      if ( v4 )
        VoxFree(v4);
    }
    while ( v2 != v1 );
  }
  if ( *a1 )
    VoxFree(*a1);
  return (char **)a1;
}


// ===== 871d6c std::priv::_Rb_tree<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>>,vox::StringCompare,std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,int>,std::priv::_Select1st<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,int>>,std::priv::_MapTraitsT<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,int>>,vox::SAllocator<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,int>,(vox::VoxMemHint)0>>::_M_erase(std::priv::_Rb_tree_node_base *) =====
void __fastcall std::priv::_Rb_tree<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>>,vox::StringCompare,std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,int>,std::priv::_Select1st<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,int>>,std::priv::_MapTraitsT<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,int>>,vox::SAllocator<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,int>,(vox::VoxMemHint)0>>::_M_erase(
        int a1,
        int a2)
{
  int v2; // r4
  int v4; // r3
  int v5; // r6

  v2 = a2;
  if ( a2 )
  {
    do
    {
      std::priv::_Rb_tree<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>>,vox::StringCompare,std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,int>,std::priv::_Select1st<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,int>>,std::priv::_MapTraitsT<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,int>>,vox::SAllocator<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,int>,(vox::VoxMemHint)0>>::_M_erase(
        a1,
        *(_DWORD *)(v2 + 12));
      v4 = *(_DWORD *)(v2 + 36);
      v5 = *(_DWORD *)(v2 + 8);
      if ( v4 != v2 + 16 )
      {
        if ( v4 )
          VoxFree(*(void **)(v2 + 36));
      }
      VoxFree((void *)v2);
      v2 = v5;
    }
    while ( v5 );
  }
}


// ===== 871dc0 std::vector<int,vox::SAllocator<int,(vox::VoxMemHint)0>>::operator=(std::vector<int,vox::SAllocator<int,(vox::VoxMemHint)0>> const&) =====
int __fastcall std::vector<int,vox::SAllocator<int,(vox::VoxMemHint)0>>::operator=(int a1, int a2)
{
  _BYTE *v4; // r2
  _BYTE *v5; // r3
  _BYTE *v6; // r7
  signed int v7; // r12
  unsigned int v8; // r5
  _BYTE *v9; // r0
  unsigned int v10; // r1
  _BYTE *v11; // r1
  int v13; // r3
  int v14; // [sp+4h] [bp-8h] BYREF

  if ( a2 != a1 )
  {
    v4 = *(_BYTE **)a2;
    v5 = *(_BYTE **)(a2 + 4);
    v6 = *(_BYTE **)a1;
    v7 = (signed int)&v5[-*(_DWORD *)a2];
    v8 = v7 >> 2;
    if ( v7 >> 2 > (unsigned int)((*(_DWORD *)(a1 + 8) - *(_DWORD *)a1) >> 2) )
    {
      v14 = (int)&v5[-*(_DWORD *)a2] >> 2;
      v6 = std::vector<int,vox::SAllocator<int,(vox::VoxMemHint)0>>::_M_allocate_and_copy<int const*>(a1, &v14, v4, v5);
      VoxFree(*(void **)a1);
      v13 = v14;
      *(_DWORD *)a1 = v6;
      *(_DWORD *)(a1 + 8) = &v6[4 * v13];
    }
    else
    {
      v9 = *(_BYTE **)(a1 + 4);
      v10 = (v9 - v6) >> 2;
      if ( v8 <= v10 )
      {
        if ( v7 )
        {
          memmove(v6, v4, v7);
          v6 = *(_BYTE **)a1;
        }
      }
      else
      {
        v11 = &v4[4 * v10];
        if ( v11 != v4 )
        {
          memmove(v6, v4, v11 - v4);
          v9 = *(_BYTE **)(a1 + 4);
          v6 = *(_BYTE **)a1;
          v5 = *(_BYTE **)(a2 + 4);
          v11 = (_BYTE *)(*(_DWORD *)a2 + ((unsigned int)&v9[-*(_DWORD *)a1] & 0xFFFFFFFC));
        }
        if ( v11 != v5 )
        {
          memcpy(v9, v11, v5 - v11);
          v6 = *(_BYTE **)a1;
        }
      }
    }
    *(_DWORD *)(a1 + 4) = &v6[4 * v8];
  }
  return a1;
}


// ===== 871eb8 std::vector<std::vector<int,vox::SAllocator<int,(vox::VoxMemHint)0>>,vox::SAllocator<std::vector<int,vox::SAllocator<int,(vox::VoxMemHint)0>>,(vox::VoxMemHint)0>>::operator=(std::vector<std::vector<int,vox::SAllocator<int,(vox::VoxMemHint)0>>,vox::SAllocator<std::vector<int,vox::SAllocator<int,(vox::VoxMemHint)0>>,(vox::VoxMemHint)0>> const&) =====
int __fastcall std::vector<std::vector<int,vox::SAllocator<int,(vox::VoxMemHint)0>>,vox::SAllocator<std::vector<int,vox::SAllocator<int,(vox::VoxMemHint)0>>,(vox::VoxMemHint)0>>::operator=(
        int a1,
        int *a2)
{
  int v4; // r3
  int v5; // r8
  char *v6; // r6
  int v7; // r5
  int v8; // r11
  char *v9; // r2
  int v10; // r7
  void *v11; // r0
  int v13; // r10
  int v14; // r7
  int v15; // r8
  int v16; // r10
  int v17; // r7
  int v18; // r6
  int v19; // r2
  int v20; // r3
  char *v21; // [sp+4h] [bp-10h]
  int v22; // [sp+Ch] [bp-8h] BYREF

  if ( a2 != (int *)a1 )
  {
    v4 = a2[1];
    v5 = *a2;
    v6 = *(char **)a1;
    v7 = -1431655765 * ((v4 - *a2) >> 2);
    v8 = v7;
    if ( v7 > (unsigned int)(-1431655765 * ((*(_DWORD *)(a1 + 8) - *(_DWORD *)a1) >> 2)) )
    {
      v19 = *a2;
      v22 = -1431655765 * ((v4 - *a2) >> 2);
      v6 = std::vector<std::vector<int,vox::SAllocator<int,(vox::VoxMemHint)0>>,vox::SAllocator<std::vector<int,vox::SAllocator<int,(vox::VoxMemHint)0>>,(vox::VoxMemHint)0>>::_M_allocate_and_copy<std::vector<int,vox::SAllocator<int,(vox::VoxMemHint)0>> const*>(
             a1,
             &v22,
             v19,
             v4);
      std::vector<std::vector<int,vox::SAllocator<int,(vox::VoxMemHint)0>>,vox::SAllocator<std::vector<int,vox::SAllocator<int,(vox::VoxMemHint)0>>,(vox::VoxMemHint)0>>::_M_clear((void **)a1);
      v20 = v22;
      *(_DWORD *)a1 = v6;
      *(_DWORD *)(a1 + 8) = &v6[12 * v20];
    }
    else
    {
      v9 = *(char **)(a1 + 4);
      if ( v7 > (unsigned int)(-1431655765 * ((v9 - v6) >> 2)) )
      {
        v13 = v5 + 4 * ((v9 - v6) >> 2);
        v14 = -1431655765 * ((4 * ((v9 - v6) >> 2)) >> 2);
        if ( v14 > 0 )
        {
          v16 = 0;
          do
          {
            std::vector<int,vox::SAllocator<int,(vox::VoxMemHint)0>>::operator=((int)&v6[v16], v5 + v16);
            --v14;
            v16 += 12;
          }
          while ( v14 );
          v6 = *(char **)a1;
          v15 = *(_DWORD *)(a1 + 4);
          v4 = a2[1];
          v13 = *a2 + 4 * ((v15 - *(_DWORD *)a1) >> 2);
        }
        else
        {
          v15 = *(_DWORD *)(a1 + 4);
        }
        v17 = -1431655765 * ((v4 - v13) >> 2);
        if ( v17 <= 0 )
          goto LABEL_12;
        v18 = 0;
        do
        {
          std::vector<int,vox::SAllocator<int,(vox::VoxMemHint)0>>::vector((_DWORD *)(v15 + v18), v13 + v18);
          --v17;
          v18 += 12;
        }
        while ( v17 );
      }
      else
      {
        if ( v7 > 0 )
        {
          v10 = 0;
          do
          {
            std::vector<int,vox::SAllocator<int,(vox::VoxMemHint)0>>::operator=((int)&v6[v10], v5 + v10);
            --v8;
            v10 += 12;
          }
          while ( v8 );
          v6 += 12 * v7;
          v9 = *(char **)(a1 + 4);
        }
        while ( v9 != v6 )
        {
          while ( 1 )
          {
            v11 = *(void **)v6;
            v6 += 12;
            if ( !v11 )
              break;
            v21 = v9;
            VoxFree(v11);
            v9 = v21;
            if ( v21 == v6 )
              goto LABEL_11;
          }
        }
      }
LABEL_11:
      v6 = *(char **)a1;
    }
LABEL_12:
    *(_DWORD *)(a1 + 4) = &v6[12 * v7];
  }
  return a1;
}


// ===== 8720b8 vox::DecoderNativeCursor::Rewind(int) =====
vox::VoxNativeSubDecoderIMAADPCM *__fastcall vox::DecoderNativeCursor::Rewind(vox::DecoderNativeCursor *this, int a2)
{
  vox::VoxNativeSubDecoderIMAADPCM *result; // r0
  int v5; // r1

  result = *((vox::VoxNativeSubDecoderIMAADPCM **)this + 18);
  if ( result )
  {
    if ( *((_DWORD *)this + 23) < a2 )
    {
      if ( a2 > *((_DWORD *)this + 22) )
        return result;
      if ( *(_WORD *)(*((_DWORD *)this + 8) + 32) == 17 )
        result = (vox::VoxNativeSubDecoderIMAADPCM *)vox::VoxNativeSubDecoderIMAADPCM::SetState(
                                                       result,
                                                       *((vox::NativeSubDecoderIMAADPCMState **)this + 20));
      else
        result = (vox::VoxNativeSubDecoderIMAADPCM *)vox::VoxNativeSubDecoderPCM::SetState(
                                                       result,
                                                       *((vox::NativeSubDecoderPCMState **)this + 20));
      v5 = *((_DWORD *)this + 22) - a2;
    }
    else
    {
      if ( *(_WORD *)(*((_DWORD *)this + 8) + 32) == 17 )
        result = (vox::VoxNativeSubDecoderIMAADPCM *)vox::VoxNativeSubDecoderIMAADPCM::SetState(
                                                       result,
                                                       *((vox::NativeSubDecoderIMAADPCMState **)this + 21));
      else
        result = (vox::VoxNativeSubDecoderIMAADPCM *)vox::VoxNativeSubDecoderPCM::SetState(
                                                       result,
                                                       *((vox::NativeSubDecoderPCMState **)this + 21));
      v5 = *((_DWORD *)this + 23) - a2;
    }
    if ( v5 > 0 )
      return (vox::VoxNativeSubDecoderIMAADPCM *)vox::VoxNativeSubDecoder::EmulateDecode(
                                                   *((vox::VoxNativeSubDecoder **)this + 18),
                                                   v5);
  }
  return result;
}


// ===== 87215c vox::DecoderNative::CreateTransitionRulesContainer(int,int) =====
void *__fastcall vox::DecoderNative::CreateTransitionRulesContainer(vox::DecoderNative *this, int a2, int a3)
{
  void *result; // r0

  result = VoxAlloc(a3 + 36 * a2 - 36);
  *((_DWORD *)this + 21) = result;
  if ( result )
    *((_DWORD *)this + 20) = a2;
  return result;
}


// ===== 872188 vox::DecoderNative::CreateStatesContainer(int) =====
void *__fastcall vox::DecoderNative::CreateStatesContainer(vox::DecoderNative *this, int a2)
{
  void *result; // r0

  result = VoxAlloc(4 * a2);
  *((_DWORD *)this + 19) = result;
  if ( result )
    *((_DWORD *)this + 18) = a2;
  return result;
}


// ===== 8721ac vox::DecoderNative::CreateSegmentsInfoContainers(int,int) =====
char **__fastcall vox::DecoderNative::CreateSegmentsInfoContainers(vox::DecoderNative *this, unsigned int a2, int a3)
{
  char **result; // r0
  void *v6[3]; // [sp+4h] [bp-Ch] BYREF

  result = (char **)VoxAlloc(a3 + 24 * a2 - 24);
  *((_DWORD *)this + 13) = result;
  if ( result )
  {
    *((_DWORD *)this + 12) = a2;
    std::vector<std::vector<int,vox::SAllocator<int,(vox::VoxMemHint)0>>,vox::SAllocator<std::vector<int,vox::SAllocator<int,(vox::VoxMemHint)0>>,(vox::VoxMemHint)0>>::reserve(
      (int)this + 88,
      a2);
    std::vector<std::vector<int,vox::SAllocator<int,(vox::VoxMemHint)0>>,vox::SAllocator<std::vector<int,vox::SAllocator<int,(vox::VoxMemHint)0>>,(vox::VoxMemHint)0>>::vector(
      v6,
      a2);
    std::vector<std::vector<int,vox::SAllocator<int,(vox::VoxMemHint)0>>,vox::SAllocator<std::vector<int,vox::SAllocator<int,(vox::VoxMemHint)0>>,(vox::VoxMemHint)0>>::operator=(
      (int)this + 88,
      (int *)v6);
    return std::vector<std::vector<int,vox::SAllocator<int,(vox::VoxMemHint)0>>,vox::SAllocator<std::vector<int,vox::SAllocator<int,(vox::VoxMemHint)0>>,(vox::VoxMemHint)0>>::~vector(v6);
  }
  return result;
}


// ===== 872218 vox::DecoderNativeCursor::Decode(void *,int) =====
vox::VoxNativeSubDecoderIMAADPCM *__fastcall vox::DecoderNativeCursor::Decode(
        vox::DecoderNativeCursor *this,
        void *a2,
        int a3)
{
  vox::VoxNativeSubDecoderIMAADPCM *result; // r0
  vox::NativeSubDecoderIMAADPCMState *v7; // r1
  int v8; // r2
  int v9; // r3
  int v10; // r3
  int StateIndex; // r1
  int v12; // r3
  char *v13; // r1
  char *v14; // r2

  result = *((vox::VoxNativeSubDecoderIMAADPCM **)this + 18);
  if ( result )
  {
    if ( *((_DWORD *)this + 19) == 1 || a3 + *((_DWORD *)this + 23) > *((_DWORD *)this + 24) )
    {
      v7 = *((vox::NativeSubDecoderIMAADPCMState **)this + 20);
      v8 = *((_DWORD *)this + 21);
      v9 = *((_DWORD *)this + 8);
      *((_DWORD *)this + 21) = v7;
      *((_DWORD *)this + 20) = v8;
      if ( *(_WORD *)(v9 + 32) == 17 )
        vox::VoxNativeSubDecoderIMAADPCM::GetState(result, v7);
      else
        vox::VoxNativeSubDecoderPCM::GetState(result, v7);
      v10 = *((_DWORD *)this + 23);
      *((_DWORD *)this + 23) = 0;
      *((_DWORD *)this + 22) = v10;
    }
    StateIndex = vox::DecoderNativeCursor::GetStateIndex((pthread_mutex_t *)this);
    if ( StateIndex < 0 )
    {
      if ( !*((_DWORD *)this + 19) )
        vox::VoxNativeSubDecoder::SetState(*((vox::VoxNativeSubDecoder **)this + 18), 0);
    }
    else
    {
      vox::VoxNativeSubDecoder::SetState(*((vox::VoxNativeSubDecoder **)this + 18), StateIndex);
      *((_DWORD *)this + 25) = 0;
    }
    result = (vox::VoxNativeSubDecoderIMAADPCM *)vox::VoxNativeSubDecoder::Decode(
                                                   *((vox::VoxNativeSubDecoder **)this + 18),
                                                   a2,
                                                   a3);
    v12 = *((_DWORD *)this + 19);
    if ( v12 )
    {
      v13 = (char *)result + *((_DWORD *)this + 23);
      v14 = (char *)result + *((_DWORD *)this + 25);
      *((_DWORD *)this + 22) += result;
      *((_DWORD *)this + 23) = v13;
      *((_DWORD *)this + 25) = v14;
    }
    *((_DWORD *)this + 19) = v12 + 1;
  }
  return result;
}


// ===== 872314 vox::DecoderNativeCursor::~DecoderNativeCursor() =====
void __fastcall vox::DecoderNativeCursor::~DecoderNativeCursor(vox::DecoderNativeCursor *this)
{
  void (__fastcall ***v1)(_DWORD); // r1
  void (__fastcall ***v3)(_DWORD); // r3
  void (__fastcall ***v4)(_DWORD); // r3
  vox::NativePlaylistsManager *v5; // r0
  vox::DecoderNativeCursor **v6; // r0
  vox::DecoderNativeCursor *v7; // r4

  v1 = *((void (__fastcall ****)(_DWORD))this + 18);
  *(_DWORD *)this = off_993668;
  if ( v1 )
  {
    (**v1)(v1);
    VoxFree(*((void **)this + 18));
    *((_DWORD *)this + 18) = 0;
  }
  v3 = *((void (__fastcall ****)(_DWORD))this + 20);
  if ( v3 )
  {
    (**v3)(*((_DWORD *)this + 20));
    VoxFree(*((void **)this + 20));
    *((_DWORD *)this + 20) = 0;
  }
  v4 = *((void (__fastcall ****)(_DWORD))this + 21);
  if ( v4 )
  {
    (**v4)(*((_DWORD *)this + 21));
    VoxFree(*((void **)this + 21));
    *((_DWORD *)this + 21) = 0;
  }
  v5 = *((vox::NativePlaylistsManager **)this + 15);
  if ( v5 )
  {
    vox::NativePlaylistsManager::~NativePlaylistsManager(v5);
    VoxFree(*((void **)this + 15));
    *((_DWORD *)this + 15) = 0;
  }
  vox::Mutex::~Mutex((vox::DecoderNativeCursor *)((char *)this + 104));
  v6 = *((vox::DecoderNativeCursor ***)this + 16);
  if ( v6 != (vox::DecoderNativeCursor **)((char *)this + 64) )
  {
    while ( 1 )
    {
      v7 = *v6;
      VoxFree(v6);
      if ( v7 == (vox::DecoderNativeCursor *)((char *)this + 64) )
        break;
      v6 = (vox::DecoderNativeCursor **)v7;
    }
    v6 = (vox::DecoderNativeCursor **)((char *)this + 64);
  }
  *((_DWORD *)this + 16) = v6;
  *((_DWORD *)this + 17) = v6;
}


// ===== 872424 vox::DecoderNativeCursor::~DecoderNativeCursor() =====
void __fastcall vox::DecoderNativeCursor::~DecoderNativeCursor(vox::DecoderNativeCursor *this)
{
  vox::DecoderNativeCursor::~DecoderNativeCursor(this);
  LC_API_FREE_0(this);
}


// ===== 872440 vox::DecoderNativeCursor::~DecoderNativeCursor() =====
void __fastcall vox::DecoderNativeCursor::~DecoderNativeCursor(vox::DecoderNativeCursor *this)
{
  void (__fastcall ***v1)(_DWORD); // r1
  void (__fastcall ***v3)(_DWORD); // r3
  void (__fastcall ***v4)(_DWORD); // r3
  vox::NativePlaylistsManager *v5; // r0
  vox::DecoderNativeCursor **v6; // r0
  vox::DecoderNativeCursor *v7; // r4

  v1 = *((void (__fastcall ****)(_DWORD))this + 18);
  *(_DWORD *)this = off_993668;
  if ( v1 )
  {
    (**v1)(v1);
    VoxFree(*((void **)this + 18));
    *((_DWORD *)this + 18) = 0;
  }
  v3 = *((void (__fastcall ****)(_DWORD))this + 20);
  if ( v3 )
  {
    (**v3)(*((_DWORD *)this + 20));
    VoxFree(*((void **)this + 20));
    *((_DWORD *)this + 20) = 0;
  }
  v4 = *((void (__fastcall ****)(_DWORD))this + 21);
  if ( v4 )
  {
    (**v4)(*((_DWORD *)this + 21));
    VoxFree(*((void **)this + 21));
    *((_DWORD *)this + 21) = 0;
  }
  v5 = *((vox::NativePlaylistsManager **)this + 15);
  if ( v5 )
  {
    vox::NativePlaylistsManager::~NativePlaylistsManager(v5);
    VoxFree(*((void **)this + 15));
    *((_DWORD *)this + 15) = 0;
  }
  vox::Mutex::~Mutex((vox::DecoderNativeCursor *)((char *)this + 104));
  v6 = *((vox::DecoderNativeCursor ***)this + 16);
  if ( v6 != (vox::DecoderNativeCursor **)((char *)this + 64) )
  {
    while ( 1 )
    {
      v7 = *v6;
      VoxFree(v6);
      if ( v7 == (vox::DecoderNativeCursor *)((char *)this + 64) )
        break;
      v6 = (vox::DecoderNativeCursor **)v7;
    }
    v6 = (vox::DecoderNativeCursor **)((char *)this + 64);
  }
  *((_DWORD *)this + 16) = v6;
  *((_DWORD *)this + 17) = v6;
}


// ===== 872550 vox::DecoderNative::~DecoderNative() =====
void __fastcall vox::DecoderNative::~DecoderNative(vox::DecoderNative *this)
{
  void *v2; // r0
  void *v3; // r0
  void *v4; // r0

  v2 = *((void **)this + 13);
  *(_DWORD *)this = off_9936A8;
  if ( v2 )
  {
    VoxFree(v2);
    *((_DWORD *)this + 12) = 0;
    *((_DWORD *)this + 13) = 0;
  }
  v3 = *((void **)this + 21);
  if ( v3 )
  {
    VoxFree(v3);
    *((_DWORD *)this + 20) = 0;
    *((_DWORD *)this + 21) = 0;
  }
  v4 = *((void **)this + 19);
  if ( v4 )
  {
    VoxFree(v4);
    *((_DWORD *)this + 18) = 0;
    *((_DWORD *)this + 19) = 0;
  }
  if ( *((_DWORD *)this + 32) )
  {
    std::priv::_Rb_tree<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>>,vox::StringCompare,std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,int>,std::priv::_Select1st<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,int>>,std::priv::_MapTraitsT<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,int>>,vox::SAllocator<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,int>,(vox::VoxMemHint)0>>::_M_erase(
      (int)this + 112,
      *((_DWORD *)this + 29));
    *((_DWORD *)this + 31) = (char *)this + 112;
    *((_DWORD *)this + 32) = 0;
    *((_DWORD *)this + 30) = (char *)this + 112;
    *((_DWORD *)this + 29) = 0;
  }
  std::vector<std::vector<vox::TransitionParams,vox::SAllocator<vox::TransitionParams,(vox::VoxMemHint)0>>,vox::SAllocator<std::vector<vox::TransitionParams,vox::SAllocator<vox::TransitionParams,(vox::VoxMemHint)0>>,(vox::VoxMemHint)0>>::~vector((void **)this + 25);
  std::vector<std::vector<int,vox::SAllocator<int,(vox::VoxMemHint)0>>,vox::SAllocator<std::vector<int,vox::SAllocator<int,(vox::VoxMemHint)0>>,(vox::VoxMemHint)0>>::~vector((void **)this + 22);
  vox::NativePlaylistsManager::~NativePlaylistsManager((vox::DecoderNative *)((char *)this + 56));
}


// ===== 87261c vox::DecoderNative::~DecoderNative() =====
void __fastcall vox::DecoderNative::~DecoderNative(vox::DecoderNative *this)
{
  vox::DecoderNative::~DecoderNative(this);
  LC_API_FREE_0(this);
}


// ===== 872638 vox::DecoderNative::~DecoderNative() =====
void __fastcall vox::DecoderNative::~DecoderNative(vox::DecoderNative *this)
{
  void *v2; // r0
  void *v3; // r0
  void *v4; // r0

  v2 = *((void **)this + 13);
  *(_DWORD *)this = off_9936A8;
  if ( v2 )
  {
    VoxFree(v2);
    *((_DWORD *)this + 12) = 0;
    *((_DWORD *)this + 13) = 0;
  }
  v3 = *((void **)this + 21);
  if ( v3 )
  {
    VoxFree(v3);
    *((_DWORD *)this + 20) = 0;
    *((_DWORD *)this + 21) = 0;
  }
  v4 = *((void **)this + 19);
  if ( v4 )
  {
    VoxFree(v4);
    *((_DWORD *)this + 18) = 0;
    *((_DWORD *)this + 19) = 0;
  }
  if ( *((_DWORD *)this + 32) )
  {
    std::priv::_Rb_tree<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>>,vox::StringCompare,std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,int>,std::priv::_Select1st<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,int>>,std::priv::_MapTraitsT<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,int>>,vox::SAllocator<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,int>,(vox::VoxMemHint)0>>::_M_erase(
      (int)this + 112,
      *((_DWORD *)this + 29));
    *((_DWORD *)this + 31) = (char *)this + 112;
    *((_DWORD *)this + 32) = 0;
    *((_DWORD *)this + 30) = (char *)this + 112;
    *((_DWORD *)this + 29) = 0;
  }
  std::vector<std::vector<vox::TransitionParams,vox::SAllocator<vox::TransitionParams,(vox::VoxMemHint)0>>,vox::SAllocator<std::vector<vox::TransitionParams,vox::SAllocator<vox::TransitionParams,(vox::VoxMemHint)0>>,(vox::VoxMemHint)0>>::~vector((void **)this + 25);
  std::vector<std::vector<int,vox::SAllocator<int,(vox::VoxMemHint)0>>,vox::SAllocator<std::vector<int,vox::SAllocator<int,(vox::VoxMemHint)0>>,(vox::VoxMemHint)0>>::~vector((void **)this + 22);
  vox::NativePlaylistsManager::~NativePlaylistsManager((vox::DecoderNative *)((char *)this + 56));
}


// ===== 872704 std::priv::__copy<vox::TransitionParams const*,vox::TransitionParams*,int>(vox::TransitionParams const*,vox::TransitionParams const*,vox::TransitionParams*,std::random_access_iterator_tag const&,int *) =====
int __fastcall std::priv::__copy<vox::TransitionParams const*,vox::TransitionParams*,int>(int a1, int a2, int a3)
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


// ===== 872758 std::vector<vox::TransitionParams,vox::SAllocator<vox::TransitionParams,(vox::VoxMemHint)0>>::operator=(std::vector<vox::TransitionParams,vox::SAllocator<vox::TransitionParams,(vox::VoxMemHint)0>> const&) =====
int *__fastcall std::vector<vox::TransitionParams,vox::SAllocator<vox::TransitionParams,(vox::VoxMemHint)0>>::operator=(
        int *a1,
        int *a2)
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
  char *v18; // r0
  int v19; // r3
  int v20; // [sp+Ch] [bp-Ch] BYREF

  if ( a2 != a1 )
  {
    v4 = a2[1];
    v5 = *a2;
    v6 = *a1;
    v7 = (v4 - *a2) >> 3;
    if ( v7 > (a1[2] - *a1) >> 3 )
    {
      v20 = (v4 - *a2) >> 3;
      v9 = std::vector<vox::TransitionParams,vox::SAllocator<vox::TransitionParams,(vox::VoxMemHint)0>>::_M_allocate_and_copy<vox::TransitionParams const*>(
             (int)a1,
             &v20,
             v5,
             v4);
      v18 = (char *)a1[1];
      if ( v18 != (char *)*a1 )
        v18 += 8 * ~((unsigned int)&v18[-*a1 - 8] >> 3);
      VoxFree(v18);
      v19 = v20;
      *a1 = (int)v9;
      a1[2] = (int)&v9[8 * v19];
    }
    else
    {
      v8 = (a1[1] - v6) >> 3;
      if ( v7 > v8 )
      {
        v11 = 0;
        std::priv::__copy<vox::TransitionParams const*,vox::TransitionParams*,int>(v5, v5 + 8 * v8, v6);
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
        std::priv::__copy<vox::TransitionParams const*,vox::TransitionParams*,int>(v5, v4, v6);
        v9 = (char *)*a1;
      }
    }
    a1[1] = (int)&v9[8 * v7];
  }
  return a1;
}


// ===== 87288c std::vector<std::vector<vox::TransitionParams,vox::SAllocator<vox::TransitionParams,(vox::VoxMemHint)0>>,vox::SAllocator<std::vector<vox::TransitionParams,vox::SAllocator<vox::TransitionParams,(vox::VoxMemHint)0>>,(vox::VoxMemHint)0>>::operator=(std::vector<std::vector<vox::TransitionParams,vox::SAllocator<vox::TransitionParams,(vox::VoxMemHint)0>>,vox::SAllocator<std::vector<vox::TransitionParams,vox::SAllocator<vox::TransitionParams,(vox::VoxMemHint)0>>,(vox::VoxMemHint)0>> const&) =====
int __fastcall std::vector<std::vector<vox::TransitionParams,vox::SAllocator<vox::TransitionParams,(vox::VoxMemHint)0>>,vox::SAllocator<std::vector<vox::TransitionParams,vox::SAllocator<vox::TransitionParams,(vox::VoxMemHint)0>>,(vox::VoxMemHint)0>>::operator=(
        int a1,
        int *a2)
{
  char *v4; // r6
  int v5; // r8
  int v6; // r3
  void **v7; // r11
  int v8; // r5
  int v9; // r7
  void **v10; // r10
  int v11; // r10
  void *v12; // r0
  int v14; // r7
  int v15; // r10
  int v16; // r8
  int v17; // r7
  int v18; // r6
  int v19; // r2
  int v20; // r3
  int v21; // [sp+4h] [bp-8h] BYREF

  if ( a2 != (int *)a1 )
  {
    v4 = *(char **)a1;
    v5 = *a2;
    v6 = a2[1];
    v7 = *(void ***)a1;
    v8 = -1431655765 * ((v6 - *a2) >> 2);
    v9 = v8;
    if ( v8 > (unsigned int)(-1431655765 * ((*(_DWORD *)(a1 + 8) - *(_DWORD *)a1) >> 2)) )
    {
      v19 = *a2;
      v21 = -1431655765 * ((v6 - *a2) >> 2);
      v4 = std::vector<std::vector<vox::TransitionParams,vox::SAllocator<vox::TransitionParams,(vox::VoxMemHint)0>>,vox::SAllocator<std::vector<vox::TransitionParams,vox::SAllocator<vox::TransitionParams,(vox::VoxMemHint)0>>,(vox::VoxMemHint)0>>::_M_allocate_and_copy<std::vector<vox::TransitionParams,vox::SAllocator<vox::TransitionParams,(vox::VoxMemHint)0>> const*>(
             a1,
             &v21,
             v19,
             v6);
      std::vector<std::vector<vox::TransitionParams,vox::SAllocator<vox::TransitionParams,(vox::VoxMemHint)0>>,vox::SAllocator<std::vector<vox::TransitionParams,vox::SAllocator<vox::TransitionParams,(vox::VoxMemHint)0>>,(vox::VoxMemHint)0>>::_M_clear((char **)a1);
      v20 = v21;
      *(_DWORD *)a1 = v4;
      *(_DWORD *)(a1 + 8) = &v4[12 * v20];
    }
    else
    {
      v10 = *(void ***)(a1 + 4);
      if ( v8 > (unsigned int)(-1431655765 * (((char *)v10 - v4) >> 2)) )
      {
        v14 = -1431655765 * ((4 * (((char *)v10 - v4) >> 2)) >> 2);
        if ( v14 > 0 )
        {
          v15 = 0;
          do
          {
            std::vector<vox::TransitionParams,vox::SAllocator<vox::TransitionParams,(vox::VoxMemHint)0>>::operator=(
              (int *)&v4[v15],
              (int *)(v5 + v15));
            --v14;
            v15 += 12;
          }
          while ( v14 );
          v6 = a2[1];
          v5 = *a2;
          v4 = *(char **)a1;
          v10 = *(void ***)(a1 + 4);
        }
        v16 = v5 + 4 * (((char *)v10 - v4) >> 2);
        v17 = -1431655765 * ((v6 - v16) >> 2);
        if ( v17 <= 0 )
          goto LABEL_12;
        v18 = 0;
        do
        {
          std::vector<vox::TransitionParams,vox::SAllocator<vox::TransitionParams,(vox::VoxMemHint)0>>::vector(
            &v10[v18],
            (_DWORD *)(v16 + v18 * 4));
          --v17;
          v18 += 3;
        }
        while ( v17 );
      }
      else
      {
        if ( v8 > 0 )
        {
          v11 = 0;
          do
          {
            std::vector<vox::TransitionParams,vox::SAllocator<vox::TransitionParams,(vox::VoxMemHint)0>>::operator=(
              (int *)&v4[v11],
              (int *)(v5 + v11));
            --v9;
            v11 += 12;
          }
          while ( v9 );
          v7 = (void **)&v4[12 * v8];
          v10 = *(void ***)(a1 + 4);
        }
        while ( v10 != v7 )
        {
          while ( 1 )
          {
            v12 = *v7;
            v7 += 3;
            if ( !v12 )
              break;
            VoxFree(v12);
            if ( v10 == v7 )
              goto LABEL_11;
          }
        }
      }
LABEL_11:
      v4 = *(char **)a1;
    }
LABEL_12:
    *(_DWORD *)(a1 + 4) = &v4[12 * v8];
  }
  return a1;
}


// ===== 872a84 vox::DecoderNative::CreateTransitionsContainer(int) =====
char **__fastcall vox::DecoderNative::CreateTransitionsContainer(vox::DecoderNative *this, unsigned int a2)
{
  char *v2; // r5
  void *v5[3]; // [sp+4h] [bp-Ch] BYREF

  v2 = (char *)this + 100;
  std::vector<std::vector<vox::TransitionParams,vox::SAllocator<vox::TransitionParams,(vox::VoxMemHint)0>>,vox::SAllocator<std::vector<vox::TransitionParams,vox::SAllocator<vox::TransitionParams,(vox::VoxMemHint)0>>,(vox::VoxMemHint)0>>::reserve(
    (int)this + 100,
    a2);
  std::vector<std::vector<vox::TransitionParams,vox::SAllocator<vox::TransitionParams,(vox::VoxMemHint)0>>,vox::SAllocator<std::vector<vox::TransitionParams,vox::SAllocator<vox::TransitionParams,(vox::VoxMemHint)0>>,(vox::VoxMemHint)0>>::vector(
    v5,
    a2);
  std::vector<std::vector<vox::TransitionParams,vox::SAllocator<vox::TransitionParams,(vox::VoxMemHint)0>>,vox::SAllocator<std::vector<vox::TransitionParams,vox::SAllocator<vox::TransitionParams,(vox::VoxMemHint)0>>,(vox::VoxMemHint)0>>::operator=(
    (int)v2,
    (int *)v5);
  return std::vector<std::vector<vox::TransitionParams,vox::SAllocator<vox::TransitionParams,(vox::VoxMemHint)0>>,vox::SAllocator<std::vector<vox::TransitionParams,vox::SAllocator<vox::TransitionParams,(vox::VoxMemHint)0>>,(vox::VoxMemHint)0>>::~vector(v5);
}


// ===== 872ac8 vox::DecoderNative::CreatePlaylistsContainer(int) =====
int __fastcall vox::DecoderNative::CreatePlaylistsContainer(vox::DecoderNative *this, int a2)
{
  return vox::NativePlaylistsManager::Init((vox::DecoderNative *)((char *)this + 56), a2);
}


// ===== 872ad0 vox::DecoderNative::DecoderNative(void) =====
vox::DecoderNative *__fastcall vox::DecoderNative::DecoderNative(vox::DecoderNative *this)
{
  *((_DWORD *)this + 6) = 0;
  *(_DWORD *)this = off_9936A8;
  *((_WORD *)this + 18) = 0;
  *((_WORD *)this + 19) = 0;
  *((_DWORD *)this + 10) = 0;
  *((_WORD *)this + 22) = 0;
  *((_WORD *)this + 23) = 0;
  *((_DWORD *)this + 12) = 0;
  *((_DWORD *)this + 13) = 0;
  vox::NativePlaylistsManager::NativePlaylistsManager((vox::DecoderNative *)((char *)this + 56));
  *((_DWORD *)this + 18) = 0;
  *((_DWORD *)this + 19) = 0;
  *((_DWORD *)this + 20) = 0;
  *((_DWORD *)this + 21) = 0;
  *((_DWORD *)this + 22) = 0;
  *((_DWORD *)this + 23) = 0;
  *((_DWORD *)this + 24) = 0;
  *((_DWORD *)this + 25) = 0;
  *((_DWORD *)this + 26) = 0;
  *((_DWORD *)this + 27) = 0;
  *((_DWORD *)this + 29) = 0;
  *((_BYTE *)this + 112) = 0;
  *((_DWORD *)this + 31) = (char *)this + 112;
  *((_DWORD *)this + 32) = 0;
  *((_BYTE *)this + 136) = 1;
  *((_DWORD *)this + 30) = (char *)this + 112;
  return this;
}


// ===== 872b78 vox::DecoderNativeFactory(void *) =====
vox::DecoderNative *__fastcall vox::DecoderNativeFactory(vox *this, void *a2)
{
  vox::DecoderNative *v2; // r4

  v2 = (vox::DecoderNative *)VoxAlloc(0x8Cu, 0);
  vox::DecoderNative::DecoderNative(v2);
  return v2;
}


// ===== 872b98 vox::DecoderNative::DecoderNative(void) =====
vox::DecoderNative *__fastcall vox::DecoderNative::DecoderNative(vox::DecoderNative *this)
{
  *((_DWORD *)this + 6) = 0;
  *(_DWORD *)this = off_9936A8;
  *((_WORD *)this + 18) = 0;
  *((_WORD *)this + 19) = 0;
  *((_DWORD *)this + 10) = 0;
  *((_WORD *)this + 22) = 0;
  *((_WORD *)this + 23) = 0;
  *((_DWORD *)this + 12) = 0;
  *((_DWORD *)this + 13) = 0;
  vox::NativePlaylistsManager::NativePlaylistsManager((vox::DecoderNative *)((char *)this + 56));
  *((_DWORD *)this + 18) = 0;
  *((_DWORD *)this + 19) = 0;
  *((_DWORD *)this + 20) = 0;
  *((_DWORD *)this + 21) = 0;
  *((_DWORD *)this + 22) = 0;
  *((_DWORD *)this + 23) = 0;
  *((_DWORD *)this + 24) = 0;
  *((_DWORD *)this + 25) = 0;
  *((_DWORD *)this + 26) = 0;
  *((_DWORD *)this + 27) = 0;
  *((_DWORD *)this + 29) = 0;
  *((_BYTE *)this + 112) = 0;
  *((_DWORD *)this + 31) = (char *)this + 112;
  *((_DWORD *)this + 32) = 0;
  *((_BYTE *)this + 136) = 1;
  *((_DWORD *)this + 30) = (char *)this + 112;
  return this;
}


// ===== 872c40 std::vector<int,vox::SAllocator<int,(vox::VoxMemHint)0>>::_M_insert_overflow(int *,int const&,std::__true_type const&,uint,bool) [clone] =====
void __fastcall std::vector<int,vox::SAllocator<int,(vox::VoxMemHint)0>>::_M_insert_overflow(
        int a1,
        int a2,
        _DWORD *a3)
{
  unsigned int v6; // r3
  unsigned int v7; // r7
  size_t v8; // r7
  _DWORD *v9; // r0
  const void *v10; // r1
  _DWORD *v11; // r5
  size_t v12; // r6
  _DWORD *v13; // r6

  v6 = (*(_DWORD *)(a1 + 4) - *(_DWORD *)a1) >> 2;
  if ( v6 )
    v7 = 2 * v6;
  else
    v7 = 1;
  if ( v7 > 0x3FFFFFFF || v6 > v7 )
  {
    v8 = -1;
    v9 = VoxAlloc(0xFFFFFFFC, 0);
    v10 = *(const void **)a1;
    v11 = v9;
    v12 = a2 - *(_DWORD *)a1;
    if ( !v12 )
    {
      v13 = v9;
      goto LABEL_11;
    }
LABEL_14:
    v13 = (char *)memmove(v9, v10, v12) + v12;
    goto LABEL_11;
  }
  v8 = v7;
  v9 = VoxAlloc(v8 * 4, 0);
  v10 = *(const void **)a1;
  v11 = v9;
  v12 = a2 - *(_DWORD *)a1;
  if ( v12 )
    goto LABEL_14;
  v13 = v9;
LABEL_11:
  *v13 = *a3;
  VoxFree(*(void **)a1);
  *(_DWORD *)a1 = v11;
  *(_DWORD *)(a1 + 4) = v13 + 1;
  *(_DWORD *)(a1 + 8) = &v11[v8];
}


// ===== 872cf0 vox::DecoderNativeCursor::SetImplicitSegmentCues(void) =====
void __fastcall vox::DecoderNativeCursor::SetImplicitSegmentCues(vox::DecoderNativeCursor *this)
{
  int v2; // r8
  int v3; // r5
  int v4; // r4
  int v5; // r6
  int v6; // r2
  int v7; // r0
  int *v8; // r1
  _DWORD *v9; // r3
  int v10; // r2
  int v11; // r2
  int v12; // r0
  int *v13; // r1
  int v14; // r0
  _DWORD *v15; // r1
  int v16; // [sp+4h] [bp-4h] BYREF

  v2 = **((_DWORD **)this + 9);
  if ( v2 > 0 )
  {
    v3 = 0;
    v4 = 0;
    v5 = 0;
    while ( 1 )
    {
      v9 = *((_DWORD **)this + 13);
      v10 = (*(_DWORD *)(*v9 + v4 + 4) - *(_DWORD *)(*v9 + v4)) >> 2;
      if ( v10 == 1 )
        break;
      if ( v10 <= 2 )
        goto LABEL_7;
LABEL_3:
      v6 = *(_DWORD *)(*(_DWORD *)(*((_DWORD *)this + 9) + 4) + v3 + 8) - 1;
      v16 = v6;
      v7 = *v9 + v4;
      v8 = *(int **)(v7 + 4);
      if ( v8 == *(int **)(v7 + 8) )
      {
        ++v5;
        std::vector<int,vox::SAllocator<int,(vox::VoxMemHint)0>>::_M_insert_overflow(v7, (int)v8, &v16);
        v4 += 12;
        v3 += 24;
        if ( v5 == v2 )
          return;
      }
      else
      {
        *v8 = v6;
        ++v5;
        *(_DWORD *)(v7 + 4) += 4;
        v4 += 12;
        v3 += 24;
        if ( v5 == v2 )
          return;
      }
    }
    v16 = 0;
    v14 = *v9 + v4;
    v15 = *(_DWORD **)(v14 + 4);
    if ( v15 == *(_DWORD **)(v14 + 8) )
    {
      std::vector<int,vox::SAllocator<int,(vox::VoxMemHint)0>>::_M_insert_overflow(v14, (int)v15, &v16);
    }
    else
    {
      *v15 = 0;
      *(_DWORD *)(v14 + 4) += 4;
    }
    v9 = *((_DWORD **)this + 13);
LABEL_7:
    v11 = *(_DWORD *)(*(_DWORD *)(*((_DWORD *)this + 9) + 4) + v3 + 8) - 1;
    v16 = v11;
    v12 = *v9 + v4;
    v13 = *(int **)(v12 + 4);
    if ( v13 == *(int **)(v12 + 8) )
    {
      std::vector<int,vox::SAllocator<int,(vox::VoxMemHint)0>>::_M_insert_overflow(v12, (int)v13, &v16);
    }
    else
    {
      *v13 = v11;
      *(_DWORD *)(v12 + 4) += 4;
    }
    v9 = *((_DWORD **)this + 13);
    goto LABEL_3;
  }
}


// ===== 872e58 std::priv::_Rb_tree<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>>,vox::StringCompare,std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,int>,std::priv::_Select1st<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,int>>,std::priv::_MapTraitsT<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,int>>,vox::SAllocator<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,int>,(vox::VoxMemHint)0>>::insert_unique(std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,int> const&) =====
int __fastcall std::priv::_Rb_tree<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>>,vox::StringCompare,std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,int>,std::priv::_Select1st<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,int>>,std::priv::_MapTraitsT<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,int>>,vox::SAllocator<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,int>,(vox::VoxMemHint)0>>::insert_unique(
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
    std::priv::_Rb_tree<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>>,vox::StringCompare,std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,int>,std::priv::_Select1st<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,int>>,std::priv::_MapTraitsT<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,int>>,vox::SAllocator<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,int>,(vox::VoxMemHint)0>>::_M_insert(
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
      std::priv::_Rb_tree<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>>,vox::StringCompare,std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,int>,std::priv::_Select1st<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,int>>,std::priv::_MapTraitsT<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,int>>,vox::SAllocator<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,int>,(vox::VoxMemHint)0>>::_M_insert(
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


// ===== 873070 std::priv::_Rb_tree<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>>,vox::StringCompare,std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,int>,std::priv::_Select1st<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,int>>,std::priv::_MapTraitsT<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,int>>,vox::SAllocator<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,int>,(vox::VoxMemHint)0>>::_M_find<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>>>(std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const&) =====
_DWORD *__fastcall std::priv::_Rb_tree<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>>,vox::StringCompare,std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,int>,std::priv::_Select1st<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,int>>,std::priv::_MapTraitsT<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,int>>,vox::SAllocator<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,int>,(vox::VoxMemHint)0>>::_M_find<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>>>(
        _DWORD *a1,
        int a2)
{
  _DWORD *v2; // r4
  _DWORD *v4; // r9
  const void *v5; // r7
  _DWORD *v6; // r8
  signed int v7; // r6
  const void *v8; // r3
  int v9; // r5
  size_t v10; // r2
  int v11; // r0
  const void *v12; // r3
  int v13; // r4
  size_t v14; // r2
  int v15; // r0

  v2 = (_DWORD *)a1[1];
  v4 = a1;
  if ( !v2 )
    return v4;
  v5 = *(const void **)(a2 + 20);
  v6 = a1;
  v7 = *(_DWORD *)(a2 + 16) - (_DWORD)v5;
  do
  {
    while ( 1 )
    {
      v8 = (const void *)v2[9];
      v9 = v2[8] - (_DWORD)v8;
      v10 = v7 >= v9 ? v2[8] - (_DWORD)v8 : v7;
      v11 = memcmp(v8, v5, v10);
      if ( v11 )
        break;
      if ( v9 < v7 )
        goto LABEL_10;
LABEL_4:
      v6 = v2;
      v2 = (_DWORD *)v2[2];
      if ( !v2 )
        goto LABEL_11;
    }
    if ( v11 >= 0 )
      goto LABEL_4;
LABEL_10:
    v2 = (_DWORD *)v2[3];
  }
  while ( v2 );
LABEL_11:
  if ( v6 == a1 )
    return v6;
  v12 = (const void *)v6[9];
  v13 = v6[8] - (_DWORD)v12;
  if ( v13 >= v7 )
    v14 = v7;
  else
    v14 = v6[8] - (_DWORD)v12;
  v15 = memcmp(v5, v12, v14);
  if ( v15 )
  {
    if ( v15 >= 0 )
      return v6;
  }
  else if ( v7 >= v13 )
  {
    return v6;
  }
  return v4;
}


// ===== 873144 vox::DecoderNativeCursor::SetInteractiveMusicState(char const*) =====
void __fastcall vox::DecoderNativeCursor::SetInteractiveMusicState(pthread_mutex_t *this, char *a2)
{
  pthread_mutex_t *v2; // r8
  size_t v5; // r0
  _DWORD *v6; // r10
  int v7; // r6
  _DWORD *v8; // r0
  _DWORD *v9; // r3
  void *v10[5]; // [sp+4h] [bp-20h] BYREF
  void *p; // [sp+18h] [bp-Ch]

  v2 = this + 26;
  vox::Mutex::Lock(this + 26);
  v10[4] = v10;
  p = v10;
  v5 = LC_API_STRLEN_0(a2);
  std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>>::_M_range_initialize(
    v10,
    a2,
    &a2[v5]);
  v6 = std::priv::_Rb_tree<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>>,vox::StringCompare,std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,int>,std::priv::_Select1st<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,int>>,std::priv::_MapTraitsT<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,int>>,vox::SAllocator<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,int>,(vox::VoxMemHint)0>>::_M_find<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>>>(
         *((_DWORD **)this + 14),
         (int)v10);
  if ( v6 != *((_DWORD **)this + 14) )
  {
    v7 = *((_DWORD *)this + 16);
    v8 = VoxAlloc(0xCu, 0);
    v8[2] = v6[10];
    v9 = *(_DWORD **)(v7 + 4);
    *v8 = v7;
    v8[1] = v9;
    *v9 = v8;
    *(_DWORD *)(v7 + 4) = v8;
  }
  vox::Mutex::Unlock(v2);
  if ( p != v10 )
  {
    if ( p )
      VoxFree(p);
  }
}


// ===== 87322c std::priv::_Rb_tree<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>>,vox::StringCompare,std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,int>,std::priv::_Select1st<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,int>>,std::priv::_MapTraitsT<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,int>>,vox::SAllocator<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,int>,(vox::VoxMemHint)0>>::insert_unique(std::priv::_Rb_tree_iterator<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,int>,std::priv::_MapTraitsT<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,int>>>,std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,int> const&) =====
int *__fastcall std::priv::_Rb_tree<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>>,vox::StringCompare,std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,int>,std::priv::_Select1st<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,int>>,std::priv::_MapTraitsT<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,int>>,vox::SAllocator<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,int>,(vox::VoxMemHint)0>>::insert_unique(
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
      std::priv::_Rb_tree<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>>,vox::StringCompare,std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,int>,std::priv::_Select1st<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,int>>,std::priv::_MapTraitsT<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,int>>,vox::SAllocator<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,int>,(vox::VoxMemHint)0>>::insert_unique(
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
      if ( !vox::StringCompare::operator()((int)(a2 + 5), (int)(v4 + 4), a4) )
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
      if ( !vox::StringCompare::operator()((int)(a2 + 5), a4, (int)(v16 + 4)) )
      {
        std::priv::_Rb_tree<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>>,vox::StringCompare,std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,int>,std::priv::_Select1st<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,int>>,std::priv::_MapTraitsT<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,int>>,vox::SAllocator<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,int>,(vox::VoxMemHint)0>>::insert_unique(
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
        std::priv::_Rb_tree<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>>,vox::StringCompare,std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,int>,std::priv::_Select1st<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,int>>,std::priv::_MapTraitsT<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,int>>,vox::SAllocator<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,int>,(vox::VoxMemHint)0>>::_M_insert(
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
        std::priv::_Rb_tree<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>>,vox::StringCompare,std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,int>,std::priv::_Select1st<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,int>>,std::priv::_MapTraitsT<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,int>>,vox::SAllocator<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,int>,(vox::VoxMemHint)0>>::_M_insert(
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
      std::priv::_Rb_tree<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>>,vox::StringCompare,std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,int>,std::priv::_Select1st<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,int>>,std::priv::_MapTraitsT<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,int>>,vox::SAllocator<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,int>,(vox::VoxMemHint)0>>::insert_unique(
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
      std::priv::_Rb_tree<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>>,vox::StringCompare,std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,int>,std::priv::_Select1st<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,int>>,std::priv::_MapTraitsT<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,int>>,vox::SAllocator<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,int>,(vox::VoxMemHint)0>>::_M_insert(
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
    std::priv::_Rb_tree<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>>,vox::StringCompare,std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,int>,std::priv::_Select1st<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,int>>,std::priv::_MapTraitsT<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,int>>,vox::SAllocator<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,int>,(vox::VoxMemHint)0>>::_M_insert(
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
      if ( !vox::StringCompare::operator()((int)(a2 + 5), a4, (int)(v16 + 4)) )
      {
LABEL_41:
        std::priv::_Rb_tree<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>>,vox::StringCompare,std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,int>,std::priv::_Select1st<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,int>>,std::priv::_MapTraitsT<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,int>>,vox::SAllocator<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,int>,(vox::VoxMemHint)0>>::insert_unique(
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
      std::priv::_Rb_tree<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>>,vox::StringCompare,std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,int>,std::priv::_Select1st<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,int>>,std::priv::_MapTraitsT<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,int>>,vox::SAllocator<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,int>,(vox::VoxMemHint)0>>::_M_insert(
        a1,
        a2,
        v4,
        a4,
        0,
        (int)v4);
      return a1;
    }
LABEL_61:
    std::priv::_Rb_tree<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>>,vox::StringCompare,std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,int>,std::priv::_Select1st<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,int>>,std::priv::_MapTraitsT<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,int>>,vox::SAllocator<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,int>,(vox::VoxMemHint)0>>::_M_insert(
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


// ===== 873730 std::map<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>>,int,vox::StringCompare,vox::SAllocator<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,int>,(vox::VoxMemHint)0>>::operator[]<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>>>(std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const&) =====
_DWORD *__fastcall std::map<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>>,int,vox::StringCompare,vox::SAllocator<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,int>,(vox::VoxMemHint)0>>::operator[]<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>>>(
        _DWORD *a1,
        int a2)
{
  _DWORD *v2; // r4
  _BYTE *v4; // r11
  _BYTE *v5; // r10
  _DWORD *v6; // r8
  int v7; // r7
  const void *v8; // r3
  int v9; // r6
  size_t v10; // r2
  int v11; // r0
  _DWORD *v12; // r3
  const void *v13; // r3
  int v14; // r7
  size_t v15; // r2
  int v16; // r0
  bool v17; // zf
  bool v18; // nf
  _DWORD *v19; // r0
  int v20; // r4
  _DWORD *v22; // [sp+8h] [bp-2Ch] BYREF
  int v23; // [sp+Ch] [bp-28h] BYREF
  void *v24[5]; // [sp+10h] [bp-24h] BYREF
  void *p; // [sp+24h] [bp-10h]
  int v26; // [sp+28h] [bp-Ch]

  v2 = (_DWORD *)a1[1];
  if ( v2 )
  {
    v4 = *(_BYTE **)(a2 + 16);
    v5 = *(_BYTE **)(a2 + 20);
    v6 = a1;
    v7 = v4 - v5;
    while ( 1 )
    {
      v8 = (const void *)v2[9];
      v9 = v2[8] - (_DWORD)v8;
      if ( v7 >= v9 )
        v10 = v2[8] - (_DWORD)v8;
      else
        v10 = v4 - v5;
      v11 = memcmp(v8, v5, v10);
      if ( v11 )
      {
        if ( v11 >= 0 )
        {
LABEL_8:
          v12 = (_DWORD *)v2[2];
          if ( !v12 )
            goto LABEL_12;
          goto LABEL_9;
        }
      }
      else if ( v9 >= v7 )
      {
        goto LABEL_8;
      }
      v12 = (_DWORD *)v2[3];
      v2 = v6;
      if ( !v12 )
        goto LABEL_12;
LABEL_9:
      v6 = v2;
      v2 = v12;
    }
  }
  v4 = *(_BYTE **)(a2 + 16);
  v5 = *(_BYTE **)(a2 + 20);
  v2 = a1;
LABEL_12:
  if ( a1 != v2 )
  {
    v13 = (const void *)v2[9];
    v14 = v2[8] - (_DWORD)v13;
    if ( v14 >= v4 - v5 )
      v15 = v4 - v5;
    else
      v15 = v2[8] - (_DWORD)v13;
    v16 = memcmp(v5, v13, v15);
    v17 = v16 == 0;
    v18 = v16 < 0;
    v19 = v2;
    if ( v17 )
    {
      if ( v4 - v5 >= v14 )
        return v19 + 10;
    }
    else if ( !v18 )
    {
      return v19 + 10;
    }
  }
  v24[4] = v24;
  p = v24;
  std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>>::_M_range_initialize(
    v24,
    v5,
    v4);
  v22 = v2;
  v26 = 0;
  std::priv::_Rb_tree<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>>,vox::StringCompare,std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,int>,std::priv::_Select1st<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,int>>,std::priv::_MapTraitsT<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,int>>,vox::SAllocator<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,int>,(vox::VoxMemHint)0>>::insert_unique(
    &v23,
    a1,
    (int *)&v22,
    (int)v24);
  v20 = v23;
  if ( p != v24 && p )
    VoxFree(p);
  v19 = (_DWORD *)v20;
  return v19 + 10;
}


// ===== 8738bc vox::DecoderNativeCursor::ParseFile(void) =====
int __fastcall vox::DecoderNativeCursor::ParseFile(vox::DecoderNativeCursor *this)
{
  int v1; // r3
  vox::DecoderNativeCursor *v2; // r5
  char *v4; // r0
  signed int v5; // r6
  char *v6; // r11
  int v7; // r4
  int v8; // r9
  size_t v9; // r8
  int v10; // r4
  char *v11; // r7
  _DWORD *v12; // r2
  int v13; // r0
  int *v14; // r1
  unsigned int v15; // r9
  int v16; // r2
  char *v17; // r7
  int v18; // r4
  char *v19; // r10
  int i; // r8
  _DWORD *v21; // r3
  int v22; // r0
  _DWORD *v23; // r1
  int v24; // r8
  size_t v25; // r7
  int v26; // r4
  vox::DecoderNativeCursor *v27; // r9
  int v28; // r8
  size_t v29; // r7
  void *v30; // r0
  int v31; // r4
  void *v32; // r5
  int v33; // r8
  size_t v34; // r7
  void *v35; // r0
  int v36; // r4
  void *v37; // r5
  int v38; // r9
  unsigned int v39; // r10
  int v40; // r1
  char *v41; // r4
  char *v42; // r8
  int v43; // r7
  size_t v44; // r10
  int v45; // r2
  _DWORD *v46; // r0
  char *v47; // r7
  int j; // r4
  size_t v49; // r0
  char *v50; // r9
  int v51; // r4
  int v52; // r11
  int v53; // r10
  int v54; // r7
  int v55; // r8
  unsigned int v56; // r3
  unsigned int v57; // r2
  char *v58; // r0
  char *v59; // r3
  int v60; // r8
  char *v61; // r8
  int v62; // r0
  int v63; // r12
  int v64; // r9
  char *v65; // r2
  char v66; // r1
  signed int v67; // [sp+4h] [bp-B0h]
  signed int v68; // [sp+4h] [bp-B0h]
  signed int v69; // [sp+4h] [bp-B0h]
  signed int v70; // [sp+4h] [bp-B0h]
  signed int v71; // [sp+4h] [bp-B0h]
  char *v72; // [sp+4h] [bp-B0h]
  signed int v73; // [sp+8h] [bp-ACh]
  signed int v74; // [sp+Ch] [bp-A8h]
  int v75; // [sp+14h] [bp-A0h]
  int v76; // [sp+18h] [bp-9Ch]
  char *v77; // [sp+24h] [bp-90h]
  vox::NativePlaylistsManager *v78; // [sp+28h] [bp-8Ch]
  void *v79; // [sp+2Ch] [bp-88h]
  void *v80; // [sp+30h] [bp-84h]
  unsigned int v81; // [sp+44h] [bp-70h]
  unsigned int v82; // [sp+48h] [bp-6Ch]
  char *v83; // [sp+50h] [bp-64h]
  char *v84; // [sp+54h] [bp-60h]
  int v85; // [sp+58h] [bp-5Ch] BYREF
  int v86; // [sp+5Ch] [bp-58h]
  int v87; // [sp+60h] [bp-54h]
  char v88; // [sp+64h] [bp-50h]
  _DWORD v89[2]; // [sp+68h] [bp-4Ch] BYREF
  int v90; // [sp+70h] [bp-44h] BYREF
  int v91; // [sp+74h] [bp-40h] BYREF
  char v92[28]; // [sp+78h] [bp-3Ch] BYREF
  _DWORD v93[4]; // [sp+94h] [bp-20h] BYREF
  _BYTE *v94; // [sp+A4h] [bp-10h]
  void *p; // [sp+A8h] [bp-Ch]

  v1 = *((_DWORD *)this + 6);
  v2 = this;
  if ( !v1 )
    return 0;
  if ( (*(int (__fastcall **)(_DWORD))(*(_DWORD *)v1 + 24))(*((_DWORD *)this + 6)) )
    (*(void (__fastcall **)(_DWORD, _DWORD, _DWORD))(**((_DWORD **)v2 + 6) + 16))(*((_DWORD *)v2 + 6), 0, 0);
  if ( (*(int (__fastcall **)(_DWORD, _DWORD *, int))(**((_DWORD **)v2 + 6) + 28))(*((_DWORD *)v2 + 6), v89, 8) != 8 )
    return 0;
  if ( v89[0] != 1316515670 )
    return 0;
  **((_DWORD **)v2 + 8) = 1316515670;
  *(_DWORD *)(*((_DWORD *)v2 + 8) + 4) = v89[1];
  (*(void (__fastcall **)(_DWORD, int, _DWORD))(**((_DWORD **)v2 + 6) + 28))(
    *((_DWORD *)v2 + 6),
    *((_DWORD *)v2 + 8) + 8,
    v89[1]);
  v74 = *(_DWORD *)(*((_DWORD *)v2 + 8) + 20) - 16 - *(_DWORD *)(*((_DWORD *)v2 + 8) + 4);
  v4 = (char *)VoxAlloc(v74);
  v77 = v4;
  if ( !v4 )
    return 0;
  (*(void (__fastcall **)(_DWORD, char *, signed int))(**((_DWORD **)v2 + 6) + 28))(*((_DWORD *)v2 + 6), v4, v74);
  if ( v74 <= 0 )
  {
    v80 = nullptr;
    v79 = nullptr;
LABEL_93:
    vox::DecoderNativeCursor::SetImplicitSegmentCues(v2);
    VoxFree(v79);
    VoxFree(v80);
    VoxFree(v77);
    return 1;
  }
  v5 = 0;
  v78 = nullptr;
  v80 = nullptr;
  v79 = nullptr;
  v6 = v77;
  memcpy(v89, v77, sizeof(v89));
  while ( 1 )
  {
    v7 = v5 + 8;
    switch ( v89[0] )
    {
      case 0x746D6641:
        *(_DWORD *)(*((_DWORD *)v2 + 8) + 24) = 1953326657;
        *(_DWORD *)(*((_DWORD *)v2 + 8) + 28) = v89[1];
        memcpy((void *)(*((_DWORD *)v2 + 8) + 32), &v6[v7], v89[1]);
        v5 = v7 + v89[1];
        *(_WORD *)(*((_DWORD *)v2 + 8) + 42) = 16;
        goto LABEL_18;
      case 0x6D676553:
        v68 = v5;
        v73 = *(_DWORD *)&v6[v7];
        v15 = (v89[1] - 4) / (unsigned int)v73;
        vox::DecoderNative::CreateSegmentsInfoContainers(*((vox::DecoderNative **)v2 + 5), v73, v15);
        v16 = *((_DWORD *)v2 + 5);
        *((_DWORD *)v2 + 9) = v16 + 48;
        *((_DWORD *)v2 + 13) = v16 + 88;
        v17 = *(char **)(v16 + 52);
        if ( !v17 )
          return 0;
        v5 += 12;
        if ( v73 > 0 )
        {
          v18 = 0;
          v19 = &v6[v68 + 12];
          for ( i = 0; i != v73; ++i )
          {
            memcpy(v17, v19, v15);
            v21 = *((_DWORD **)v2 + 13);
            v90 = 0;
            v17 += 24;
            v22 = *v21 + v18;
            v23 = *(_DWORD **)(v22 + 4);
            if ( v23 == *(_DWORD **)(v22 + 8) )
            {
              std::vector<int,vox::SAllocator<int,(vox::VoxMemHint)0>>::_M_insert_overflow(v22, (int)v23, &v90);
            }
            else
            {
              *v23 = 0;
              *(_DWORD *)(v22 + 4) += 4;
            }
            v19 += v15;
            v18 += 12;
          }
          v5 += v15 + v15 * (i - 1);
        }
        goto LABEL_18;
      case 0x73657543:
        v86 = -1;
        v85 = -1;
        v87 = 0;
        v8 = *(_DWORD *)&v6[v7];
        v67 = v5;
        v5 += 12;
        v9 = (v89[1] - 4) / (unsigned int)v8;
        if ( v8 > 0 )
        {
          v10 = 0;
          v11 = &v6[v67 + 12];
          do
          {
            memcpy(&v85, v11, v9);
            v12 = *((_DWORD **)v2 + 13);
            v90 = v87;
            v13 = *v12 + 12 * v86;
            v14 = *(int **)(v13 + 4);
            if ( v14 == *(int **)(v13 + 8) )
            {
              std::vector<int,vox::SAllocator<int,(vox::VoxMemHint)0>>::_M_insert_overflow(v13, (int)v14, &v90);
            }
            else
            {
              *v14 = v87;
              *(_DWORD *)(v13 + 4) += 4;
            }
            ++v10;
            v11 += v9;
          }
          while ( v10 != v8 );
          v5 += v9 + v9 * (v10 - 1);
        }
        goto LABEL_18;
    }
    if ( v89[0] == 1936749127 )
      break;
    switch ( v89[0] )
    {
      case 0x65707247:
        v33 = *(_DWORD *)&v6[v7];
        v34 = (v89[1] - 4) / (unsigned int)v33;
        v35 = VoxAlloc(v34);
        v80 = v35;
        if ( !v35 )
          return 0;
        v5 += 12;
        if ( v33 > 0 )
        {
          v27 = v2;
          v36 = 0;
          v37 = v35;
          while ( 1 )
          {
            memcpy(v37, &v6[v5], v34);
            vox::NativePlaylistsManager::AddPlaylistElement(v78, v37);
            if ( !vox::NativePlaylistsManager::IsValid(v78) )
              return 0;
            ++v36;
            v5 += v34;
            if ( v36 == v33 )
              goto LABEL_51;
          }
        }
        break;
      case 0x656C7552:
        v38 = *(_DWORD *)&v6[v7];
        v69 = v5;
        v39 = (v89[1] - 4) / (unsigned int)v38;
        vox::DecoderNative::CreateTransitionRulesContainer(*((vox::DecoderNative **)v2 + 5), v38, v39);
        v40 = *((_DWORD *)v2 + 5);
        *((_DWORD *)v2 + 11) = v40 + 80;
        v41 = *(char **)(v40 + 84);
        if ( !v41 )
          return 0;
        v5 += 12;
        if ( v38 > 0 )
        {
          v42 = &v6[v69 + 12];
          v43 = 0;
          do
          {
            ++v43;
            memcpy(v41, v42, v39);
            v41 += 36;
            v42 += v39;
          }
          while ( v43 != v38 );
          v5 += v39 + v39 * (v43 - 1);
        }
        break;
      case 0x74736C50:
        v24 = *(_DWORD *)&v6[v7];
        v5 += 12;
        v25 = (v89[1] - 4) / (unsigned int)v24;
        vox::DecoderNative::CreatePlaylistsContainer(*((vox::DecoderNative **)v2 + 5), v24);
        v78 = (vox::NativePlaylistsManager *)(*((_DWORD *)v2 + 5) + 56);
        if ( vox::NativePlaylistsManager::IsValid(v78) )
        {
          v26 = 0;
          v86 = 1;
          v85 = 0;
          if ( v24 > 0 )
          {
            v27 = v2;
            while ( 1 )
            {
              memcpy(&v85, &v6[v5], v25);
              vox::NativePlaylistsManager::AddPlaylist(v78, v26, &v85);
              if ( !vox::NativePlaylistsManager::IsValid(v78) )
                return 0;
              ++v26;
              v5 += v25;
              if ( v26 == v24 )
                goto LABEL_51;
            }
          }
        }
        break;
      case 0x74617453:
        v76 = *(_DWORD *)&v6[v7];
        v44 = (v89[1] - 4) / (unsigned int)v76;
        vox::DecoderNative::CreateStatesContainer(*((vox::DecoderNative **)v2 + 5), v76);
        v45 = *((_DWORD *)v2 + 5);
        *((_DWORD *)v2 + 10) = v45 + 72;
        if ( !*(_DWORD *)(v45 + 76) )
          return 0;
        *((_DWORD *)v2 + 14) = v45 + 112;
        v91 = -1;
        v70 = v5;
        v92[0] = 0;
        v94 = v93;
        p = v93;
        std::priv::_String_base<char,vox::SAllocator<char,(vox::VoxMemHint)0>>::_M_allocate_block(v93, 0x10u);
        v5 += 12;
        *v94 = 0;
        if ( v76 > 0 )
        {
          v47 = &v6[v70 + 12];
          for ( j = 0; j != v76; ++j )
          {
            memcpy(&v91, v47, v44);
            v47 += v44;
            *(_DWORD *)(*(_DWORD *)(*((_DWORD *)v2 + 10) + 4) + 4 * j) = v91;
            v49 = LC_API_STRLEN_0(v92);
            std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>>::_M_append(
              v93,
              v92,
              &v92[v49]);
            *std::map<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>>,int,vox::StringCompare,vox::SAllocator<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,int>,(vox::VoxMemHint)0>>::operator[]<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>>>(
               *((_DWORD **)v2 + 14),
               (int)v93) = j;
            v46 = p;
            if ( p != v94 )
            {
              *(_BYTE *)p = 0;
              v46 = p;
              v94 = p;
            }
          }
          v5 += v44 + v44 * (v76 - 1);
        }
        else
        {
          v46 = p;
        }
        if ( v46 != v93 && v46 )
          VoxFree(v46);
        break;
      case 0x6E737254:
        v71 = v5;
        v75 = *(_DWORD *)&v6[v7];
        v81 = (v89[1] - 4) / (unsigned int)v75;
        vox::DecoderNative::CreateTransitionsContainer(*((vox::DecoderNative **)v2 + 5), v76);
        *((_DWORD *)v2 + 12) = *((_DWORD *)v2 + 5) + 100;
        v5 += 12;
        v87 = -1;
        v88 = 0;
        v85 = 0;
        v86 = 0;
        if ( v75 > 0 )
        {
          v50 = &v6[v71 + 12];
          v51 = 0;
          v83 = v6;
          do
          {
            memcpy(&v85, v50, v81);
            v52 = **((_DWORD **)v2 + 12);
            v53 = 12 * v85;
            v54 = v52 + 12 * v85;
            v55 = *(_DWORD *)(v54 + 4);
            if ( v55 == *(_DWORD *)(v54 + 8) )
            {
              v56 = (v55 - *(_DWORD *)(v52 + 12 * v85)) >> 3;
              if ( v56 )
                v57 = 2 * v56;
              else
                v57 = 1;
              if ( v57 > 0x1FFFFFFF || v56 > v57 )
              {
                v82 = -8;
                v58 = (char *)VoxAlloc(0xFFFFFFF8, 0);
              }
              else
              {
                v82 = 8 * v57;
                v58 = (char *)VoxAlloc(8 * v57, 0);
              }
              v59 = v58;
              v60 = (v55 - *(_DWORD *)(v52 + v53)) >> 3;
              if ( v60 > 0 )
              {
                v84 = v50;
                v62 = v60;
                v63 = 0;
                v64 = *(_DWORD *)(v52 + v53);
                do
                {
                  --v62;
                  *(_DWORD *)&v59[v63] = *(_DWORD *)(v64 + v63);
                  v65 = &v59[v63];
                  v66 = *(_BYTE *)(v64 + v63 + 4);
                  v63 += 8;
                  v65[4] = v66;
                }
                while ( v62 );
                v50 = v84;
                v61 = &v59[8 * v60];
              }
              else
              {
                v61 = v58;
              }
              *(_DWORD *)v61 = v87;
              v61[4] = v88;
              v72 = v59;
              VoxFree(*(void **)(v52 + v53));
              *(_DWORD *)(v52 + v53) = v72;
              *(_DWORD *)(v54 + 8) = &v72[v82];
              *(_DWORD *)(v54 + 4) = v61 + 8;
            }
            else
            {
              *(_DWORD *)v55 = v87;
              *(_BYTE *)(v55 + 4) = v88;
              *(_DWORD *)(v54 + 4) += 8;
            }
            ++v51;
            v50 += v81;
          }
          while ( v51 != v75 );
          v6 = v83;
          v5 += v81 + v81 * (v51 - 1);
        }
        break;
      default:
        v5 = v7 + v89[1];
        break;
    }
LABEL_18:
    if ( v74 <= v5 )
      goto LABEL_93;
    memcpy(v89, &v6[v5], sizeof(v89));
  }
  v28 = *(_DWORD *)&v6[v7];
  v29 = (v89[1] - 4) / (unsigned int)v28;
  v30 = VoxAlloc(v29);
  v79 = v30;
  if ( !v30 )
    return 0;
  v5 += 12;
  if ( v28 <= 0 )
    goto LABEL_18;
  v27 = v2;
  v31 = 0;
  v32 = v30;
  while ( 1 )
  {
    memcpy(v32, &v6[v5], v29);
    vox::NativePlaylistsManager::AddGroup(v78, v32);
    if ( !vox::NativePlaylistsManager::IsValid(v78) )
      return 0;
    ++v31;
    v5 += v29;
    if ( v31 == v28 )
    {
LABEL_51:
      v2 = v27;
      goto LABEL_18;
    }
  }
}


// ===== 8742f4 vox::DecoderNativeCursor::DecoderNativeCursor(vox::DecoderInterface *,vox::StreamCursorInterface *) =====
vox::DecoderNativeCursor *__fastcall vox::DecoderNativeCursor::DecoderNativeCursor(
        vox::DecoderNativeCursor *this,
        vox::DecoderInterface *a2,
        vox::StreamCursorInterface *a3)
{
  int v5; // r7
  int IsValid; // r0
  vox::NativePlaylistsManager *v7; // r6
  int v8; // r3
  int v9; // r1
  int v10; // r2
  int v11; // r3
  int v12; // r3
  int v13; // r2
  void *v15; // r10
  vox::NativeSubDecoderPCMState *v16; // r5
  vox::NativeSubDecoderPCMState *v17; // r5
  void *v18; // r10
  vox::NativeSubDecoderIMAADPCMState *v19; // r5
  vox::NativeSubDecoderIMAADPCMState *v20; // r5
  _DWORD v21[4]; // [sp+18h] [bp-10h] BYREF

  *((_DWORD *)this + 5) = a2;
  *(_DWORD *)this = off_993668;
  *((_DWORD *)this + 17) = (char *)this + 64;
  *((_DWORD *)this + 1) = 0;
  *((_DWORD *)this + 2) = 0;
  *((_DWORD *)this + 3) = 0;
  *((_DWORD *)this + 4) = 0;
  *((_DWORD *)this + 6) = a3;
  *((_BYTE *)this + 28) = 0;
  *((_DWORD *)this + 8) = 0;
  *((_DWORD *)this + 9) = 0;
  *((_DWORD *)this + 10) = 0;
  *((_DWORD *)this + 11) = 0;
  *((_DWORD *)this + 12) = 0;
  *((_DWORD *)this + 13) = 0;
  *((_DWORD *)this + 14) = 0;
  *((_DWORD *)this + 15) = 0;
  *((_DWORD *)this + 16) = (char *)this + 64;
  *((_DWORD *)this + 18) = 0;
  *((_DWORD *)this + 19) = 0;
  *((_DWORD *)this + 20) = 0;
  *((_DWORD *)this + 21) = 0;
  *((_DWORD *)this + 22) = 0;
  *((_DWORD *)this + 23) = 0;
  *((_DWORD *)this + 24) = 0;
  *((_DWORD *)this + 25) = 0;
  vox::Mutex::Mutex((vox::DecoderNativeCursor *)((char *)this + 104));
  v5 = *((_DWORD *)this + 5);
  *((_DWORD *)this + 8) = v5 + 4;
  if ( *(_BYTE *)(v5 + 136) )
  {
    IsValid = vox::DecoderNativeCursor::ParseFile(this);
    if ( !IsValid )
    {
LABEL_15:
      *((_DWORD *)this + 4) = IsValid;
      *((_DWORD *)this + 1) = IsValid;
      *((_DWORD *)this + 2) = IsValid;
      *((_DWORD *)this + 3) = IsValid;
      return this;
    }
    *(_BYTE *)(*((_DWORD *)this + 5) + 136) = 0;
    v5 = *((_DWORD *)this + 5);
  }
  *((_DWORD *)this + 9) = v5 + 48;
  *((_DWORD *)this + 13) = v5 + 88;
  *((_DWORD *)this + 11) = v5 + 80;
  *((_DWORD *)this + 12) = v5 + 100;
  *((_DWORD *)this + 14) = v5 + 112;
  *((_DWORD *)this + 10) = v5 + 72;
  v7 = (vox::NativePlaylistsManager *)VoxAlloc(0x10u, 0);
  vox::NativePlaylistsManager::NativePlaylistsManager(v7, (vox::NativePlaylistsManager *)(v5 + 56));
  *((_DWORD *)this + 15) = v7;
  if ( !v7 )
  {
    *((_DWORD *)this + 4) = 0;
    *((_DWORD *)this + 1) = 0;
    *((_DWORD *)this + 2) = 0;
    *((_DWORD *)this + 3) = 0;
    return this;
  }
  IsValid = vox::NativePlaylistsManager::IsValid(v7);
  if ( !IsValid )
    goto LABEL_15;
  v8 = *(__int16 *)(*((_DWORD *)this + 8) + 32);
  if ( v8 == 1 )
  {
    v15 = VoxAlloc(0x170u, 0);
    vox::VoxNativeSubDecoderPCM::VoxNativeSubDecoderPCM(
      v15,
      a3,
      *((_DWORD *)this + 8),
      *((_DWORD *)this + 10),
      *((_DWORD *)this + 9),
      *((_DWORD *)this + 13),
      *((_DWORD *)this + 11),
      *((_DWORD *)this + 12),
      *((_DWORD *)this + 14),
      *((_DWORD *)this + 15));
    *((_DWORD *)this + 18) = v15;
    v16 = (vox::NativeSubDecoderPCMState *)VoxAlloc(0x144u, 0);
    vox::NativeSubDecoderPCMState::NativeSubDecoderPCMState(v16, *((vox::NativePlaylistsManager **)this + 15));
    *((_DWORD *)this + 20) = v16;
    v17 = (vox::NativeSubDecoderPCMState *)VoxAlloc(0x144u, 0);
    vox::NativeSubDecoderPCMState::NativeSubDecoderPCMState(v17, *((vox::NativePlaylistsManager **)this + 15));
    *((_DWORD *)this + 21) = v17;
  }
  else if ( v8 == 17 )
  {
    v18 = VoxAlloc(0x1C0u, 0);
    vox::VoxNativeSubDecoderIMAADPCM::VoxNativeSubDecoderIMAADPCM(
      v18,
      a3,
      *((_DWORD *)this + 8),
      *((_DWORD *)this + 10),
      *((_DWORD *)this + 9),
      *((_DWORD *)this + 13),
      *((_DWORD *)this + 11),
      *((_DWORD *)this + 12),
      *((_DWORD *)this + 14),
      *((_DWORD *)this + 15));
    *((_DWORD *)this + 18) = v18;
    v19 = (vox::NativeSubDecoderIMAADPCMState *)VoxAlloc(0x150u, 0);
    vox::NativeSubDecoderIMAADPCMState::NativeSubDecoderIMAADPCMState(v19, *((vox::NativePlaylistsManager **)this + 15));
    *((_DWORD *)this + 20) = v19;
    v20 = (vox::NativeSubDecoderIMAADPCMState *)VoxAlloc(0x150u, 0);
    vox::NativeSubDecoderIMAADPCMState::NativeSubDecoderIMAADPCMState(v20, *((vox::NativePlaylistsManager **)this + 15));
    *((_DWORD *)this + 21) = v20;
  }
  if ( *((_DWORD *)this + 18) )
  {
    vox::VoxNativeSubDecoder::GetTrackParams((vox::VoxNativeSubDecoder *)v21);
    v9 = v21[1];
    v10 = v21[2];
    v11 = v21[3];
    *((_DWORD *)this + 1) = v21[0];
    *((_DWORD *)this + 2) = v9;
    *((_DWORD *)this + 3) = v10;
    *((_DWORD *)this + 4) = v11;
    v12 = *((_DWORD *)this + 20);
    if ( v12 && (v13 = *((_DWORD *)this + 21)) != 0 && *(_DWORD *)(v12 + 4) && *(_DWORD *)(v13 + 4) )
    {
      *((_DWORD *)this + 24) = (int)(float)((float)(600 * *((_DWORD *)this + 1) * *((_DWORD *)this + 2)) / 500.0);
    }
    else
    {
      *((_DWORD *)this + 4) = 0;
      *((_DWORD *)this + 1) = 0;
      *((_DWORD *)this + 2) = 0;
      *((_DWORD *)this + 3) = 0;
    }
  }
  else
  {
    *((_DWORD *)this + 4) = 0;
    *((_DWORD *)this + 1) = 0;
    *((_DWORD *)this + 2) = 0;
    *((_DWORD *)this + 3) = 0;
  }
  return this;
}


// ===== 874648 vox::DecoderNative::CreateNewCursor(vox::StreamCursorInterface *) =====
vox::DecoderNativeCursor *__fastcall vox::DecoderNative::CreateNewCursor(
        vox::DecoderNative *this,
        vox::StreamCursorInterface *a2)
{
  vox::DecoderNativeCursor *v4; // r4

  v4 = (vox::DecoderNativeCursor *)VoxAlloc(0x6Cu, 0);
  vox::DecoderNativeCursor::DecoderNativeCursor(v4, this, a2);
  return v4;
}


// ===== 874678 vox::DecoderNativeCursor::DecoderNativeCursor(vox::DecoderInterface *,vox::StreamCursorInterface *) =====
vox::DecoderNativeCursor *__fastcall vox::DecoderNativeCursor::DecoderNativeCursor(
        vox::DecoderNativeCursor *this,
        vox::DecoderInterface *a2,
        vox::StreamCursorInterface *a3)
{
  int v5; // r7
  int IsValid; // r0
  vox::NativePlaylistsManager *v7; // r6
  int v8; // r3
  int v9; // r1
  int v10; // r2
  int v11; // r3
  int v12; // r3
  int v13; // r2
  void *v15; // r10
  vox::NativeSubDecoderPCMState *v16; // r5
  vox::NativeSubDecoderPCMState *v17; // r5
  void *v18; // r10
  vox::NativeSubDecoderIMAADPCMState *v19; // r5
  vox::NativeSubDecoderIMAADPCMState *v20; // r5
  _DWORD v21[4]; // [sp+18h] [bp-10h] BYREF

  *((_DWORD *)this + 5) = a2;
  *(_DWORD *)this = off_993668;
  *((_DWORD *)this + 17) = (char *)this + 64;
  *((_DWORD *)this + 1) = 0;
  *((_DWORD *)this + 2) = 0;
  *((_DWORD *)this + 3) = 0;
  *((_DWORD *)this + 4) = 0;
  *((_DWORD *)this + 6) = a3;
  *((_BYTE *)this + 28) = 0;
  *((_DWORD *)this + 8) = 0;
  *((_DWORD *)this + 9) = 0;
  *((_DWORD *)this + 10) = 0;
  *((_DWORD *)this + 11) = 0;
  *((_DWORD *)this + 12) = 0;
  *((_DWORD *)this + 13) = 0;
  *((_DWORD *)this + 14) = 0;
  *((_DWORD *)this + 15) = 0;
  *((_DWORD *)this + 16) = (char *)this + 64;
  *((_DWORD *)this + 18) = 0;
  *((_DWORD *)this + 19) = 0;
  *((_DWORD *)this + 20) = 0;
  *((_DWORD *)this + 21) = 0;
  *((_DWORD *)this + 22) = 0;
  *((_DWORD *)this + 23) = 0;
  *((_DWORD *)this + 24) = 0;
  *((_DWORD *)this + 25) = 0;
  vox::Mutex::Mutex((vox::DecoderNativeCursor *)((char *)this + 104));
  v5 = *((_DWORD *)this + 5);
  *((_DWORD *)this + 8) = v5 + 4;
  if ( *(_BYTE *)(v5 + 136) )
  {
    IsValid = vox::DecoderNativeCursor::ParseFile(this);
    if ( !IsValid )
    {
LABEL_15:
      *((_DWORD *)this + 4) = IsValid;
      *((_DWORD *)this + 1) = IsValid;
      *((_DWORD *)this + 2) = IsValid;
      *((_DWORD *)this + 3) = IsValid;
      return this;
    }
    *(_BYTE *)(*((_DWORD *)this + 5) + 136) = 0;
    v5 = *((_DWORD *)this + 5);
  }
  *((_DWORD *)this + 9) = v5 + 48;
  *((_DWORD *)this + 13) = v5 + 88;
  *((_DWORD *)this + 11) = v5 + 80;
  *((_DWORD *)this + 12) = v5 + 100;
  *((_DWORD *)this + 14) = v5 + 112;
  *((_DWORD *)this + 10) = v5 + 72;
  v7 = (vox::NativePlaylistsManager *)VoxAlloc(0x10u, 0);
  vox::NativePlaylistsManager::NativePlaylistsManager(v7, (vox::NativePlaylistsManager *)(v5 + 56));
  *((_DWORD *)this + 15) = v7;
  if ( !v7 )
  {
    *((_DWORD *)this + 4) = 0;
    *((_DWORD *)this + 1) = 0;
    *((_DWORD *)this + 2) = 0;
    *((_DWORD *)this + 3) = 0;
    return this;
  }
  IsValid = vox::NativePlaylistsManager::IsValid(v7);
  if ( !IsValid )
    goto LABEL_15;
  v8 = *(__int16 *)(*((_DWORD *)this + 8) + 32);
  if ( v8 == 1 )
  {
    v15 = VoxAlloc(0x170u, 0);
    vox::VoxNativeSubDecoderPCM::VoxNativeSubDecoderPCM(
      v15,
      a3,
      *((_DWORD *)this + 8),
      *((_DWORD *)this + 10),
      *((_DWORD *)this + 9),
      *((_DWORD *)this + 13),
      *((_DWORD *)this + 11),
      *((_DWORD *)this + 12),
      *((_DWORD *)this + 14),
      *((_DWORD *)this + 15));
    *((_DWORD *)this + 18) = v15;
    v16 = (vox::NativeSubDecoderPCMState *)VoxAlloc(0x144u, 0);
    vox::NativeSubDecoderPCMState::NativeSubDecoderPCMState(v16, *((vox::NativePlaylistsManager **)this + 15));
    *((_DWORD *)this + 20) = v16;
    v17 = (vox::NativeSubDecoderPCMState *)VoxAlloc(0x144u, 0);
    vox::NativeSubDecoderPCMState::NativeSubDecoderPCMState(v17, *((vox::NativePlaylistsManager **)this + 15));
    *((_DWORD *)this + 21) = v17;
  }
  else if ( v8 == 17 )
  {
    v18 = VoxAlloc(0x1C0u, 0);
    vox::VoxNativeSubDecoderIMAADPCM::VoxNativeSubDecoderIMAADPCM(
      v18,
      a3,
      *((_DWORD *)this + 8),
      *((_DWORD *)this + 10),
      *((_DWORD *)this + 9),
      *((_DWORD *)this + 13),
      *((_DWORD *)this + 11),
      *((_DWORD *)this + 12),
      *((_DWORD *)this + 14),
      *((_DWORD *)this + 15));
    *((_DWORD *)this + 18) = v18;
    v19 = (vox::NativeSubDecoderIMAADPCMState *)VoxAlloc(0x150u, 0);
    vox::NativeSubDecoderIMAADPCMState::NativeSubDecoderIMAADPCMState(v19, *((vox::NativePlaylistsManager **)this + 15));
    *((_DWORD *)this + 20) = v19;
    v20 = (vox::NativeSubDecoderIMAADPCMState *)VoxAlloc(0x150u, 0);
    vox::NativeSubDecoderIMAADPCMState::NativeSubDecoderIMAADPCMState(v20, *((vox::NativePlaylistsManager **)this + 15));
    *((_DWORD *)this + 21) = v20;
  }
  if ( *((_DWORD *)this + 18) )
  {
    vox::VoxNativeSubDecoder::GetTrackParams((vox::VoxNativeSubDecoder *)v21);
    v9 = v21[1];
    v10 = v21[2];
    v11 = v21[3];
    *((_DWORD *)this + 1) = v21[0];
    *((_DWORD *)this + 2) = v9;
    *((_DWORD *)this + 3) = v10;
    *((_DWORD *)this + 4) = v11;
    v12 = *((_DWORD *)this + 20);
    if ( v12 && (v13 = *((_DWORD *)this + 21)) != 0 && *(_DWORD *)(v12 + 4) && *(_DWORD *)(v13 + 4) )
    {
      *((_DWORD *)this + 24) = (int)(float)((float)(600 * *((_DWORD *)this + 1) * *((_DWORD *)this + 2)) / 500.0);
    }
    else
    {
      *((_DWORD *)this + 4) = 0;
      *((_DWORD *)this + 1) = 0;
      *((_DWORD *)this + 2) = 0;
      *((_DWORD *)this + 3) = 0;
    }
  }
  else
  {
    *((_DWORD *)this + 4) = 0;
    *((_DWORD *)this + 1) = 0;
    *((_DWORD *)this + 2) = 0;
    *((_DWORD *)this + 3) = 0;
  }
  return this;
}


// ===== 8749cc vox::DecoderRaw::GetType(void) =====
int __fastcall vox::DecoderRaw::GetType(vox::DecoderRaw *this)
{
  return 0;
}


// ===== 8749d4 vox::DecoderRaw::GetParam(void) =====
char *__fastcall vox::DecoderRaw::GetParam(vox::DecoderRaw *this)
{
  return (char *)this + 4;
}


// ===== 8749dc vox::DecoderRawCursor::~DecoderRawCursor() =====
void __fastcall vox::DecoderRawCursor::~DecoderRawCursor(vox::DecoderRawCursor *this)
{
  ;
}


// ===== 8749e0 vox::DecoderRawCursor::AllowBufferReference(void) =====
int __fastcall vox::DecoderRawCursor::AllowBufferReference(vox::DecoderRawCursor *this)
{
  int v1; // r3

  v1 = *((_DWORD *)this + 6);
  if ( v1 )
    return (*(int (__fastcall **)(_DWORD))(*(_DWORD *)v1 + 40))(*((_DWORD *)this + 6));
  else
    return 0;
}


// ===== 874a0c vox::DecoderRaw::DecoderRaw(vox::TrackParams *) =====
_DWORD *__fastcall vox::DecoderRaw::DecoderRaw(_DWORD *a1, int *a2)
{
  int v3; // r0
  int v4; // r1
  int v5; // r2
  int v6; // r3
  _DWORD *v7; // t0

  a1[4] = 0;
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = 0;
  *a1 = off_993710;
  if ( a2 )
  {
    v3 = *a2;
    v7 = a2 + 1;
    v4 = a2[1];
    v5 = *++v7;
    v6 = v7[1];
    a1[1] = v3;
    a1[2] = v4;
    a1[3] = v5;
    a1[4] = v6;
  }
  return a1;
}


// ===== 874a64 vox::DecoderRaw::DecoderRaw(vox::TrackParams *) =====
_DWORD *__fastcall vox::DecoderRaw::DecoderRaw(_DWORD *a1, int *a2)
{
  int v3; // r0
  int v4; // r1
  int v5; // r2
  int v6; // r3
  _DWORD *v7; // t0

  a1[4] = 0;
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = 0;
  *a1 = off_993710;
  if ( a2 )
  {
    v3 = *a2;
    v7 = a2 + 1;
    v4 = a2[1];
    v5 = *++v7;
    v6 = v7[1];
    a1[1] = v3;
    a1[2] = v4;
    a1[3] = v5;
    a1[4] = v6;
  }
  return a1;
}


// ===== 874abc vox::DecoderRawCursor::DecoderRawCursor(vox::DecoderInterface *,vox::StreamCursorInterface *) =====
int __fastcall vox::DecoderRawCursor::DecoderRawCursor(int a1, int a2, int a3)
{
  int *v4; // r1
  _DWORD *v5; // r4
  int v6; // r0
  int v7; // r1
  int v8; // r2
  int v9; // r3
  _DWORD *v10; // t0

  *(_DWORD *)(a1 + 20) = a2;
  *(_DWORD *)(a1 + 24) = a3;
  *(_BYTE *)(a1 + 28) = 0;
  *(_DWORD *)(a1 + 4) = 0;
  *(_DWORD *)(a1 + 8) = 0;
  *(_DWORD *)(a1 + 12) = 0;
  *(_DWORD *)(a1 + 16) = 0;
  v4 = (int *)(a2 + 4);
  *(_DWORD *)a1 = off_9936D0;
  v5 = (_DWORD *)(a1 + 4);
  v6 = *v4;
  v10 = v4 + 1;
  v7 = v4[1];
  v8 = *++v10;
  v9 = v10[1];
  *v5 = v6;
  v5[1] = v7;
  v5[2] = v8;
  v5[3] = v9;
  return a1;
}


// ===== 874b20 vox::DecoderRawCursor::DecoderRawCursor(vox::DecoderInterface *,vox::StreamCursorInterface *) =====
int __fastcall vox::DecoderRawCursor::DecoderRawCursor(int a1, int a2, int a3)
{
  int *v4; // r1
  _DWORD *v5; // r4
  int v6; // r0
  int v7; // r1
  int v8; // r2
  int v9; // r3
  _DWORD *v10; // t0

  *(_DWORD *)(a1 + 20) = a2;
  *(_DWORD *)(a1 + 24) = a3;
  *(_BYTE *)(a1 + 28) = 0;
  *(_DWORD *)(a1 + 4) = 0;
  *(_DWORD *)(a1 + 8) = 0;
  *(_DWORD *)(a1 + 12) = 0;
  *(_DWORD *)(a1 + 16) = 0;
  v4 = (int *)(a2 + 4);
  *(_DWORD *)a1 = off_9936D0;
  v5 = (_DWORD *)(a1 + 4);
  v6 = *v4;
  v10 = v4 + 1;
  v7 = v4[1];
  v8 = *++v10;
  v9 = v10[1];
  *v5 = v6;
  v5[1] = v7;
  v5[2] = v8;
  v5[3] = v9;
  return a1;
}


// ===== 874b84 vox::DecoderRawCursor::DecodeRef(void *&,int) =====
int __fastcall vox::DecoderRawCursor::DecodeRef(vox::DecoderRawCursor *this, void **a2, int a3)
{
  int v6; // r5

  if ( !(*(int (__fastcall **)(_DWORD))(**((_DWORD **)this + 6) + 40))(*((_DWORD *)this + 6)) )
    return (*(int (__fastcall **)(vox::DecoderRawCursor *, _DWORD, int))(*(_DWORD *)this + 16))(this, *a2, a3);
  v6 = (*(int (__fastcall **)(_DWORD, void **, int))(**((_DWORD **)this + 6) + 32))(*((_DWORD *)this + 6), a2, a3);
  if ( *((_BYTE *)this + 28) )
  {
    if ( (*(int (__fastcall **)(_DWORD))(**((_DWORD **)this + 6) + 36))(*((_DWORD *)this + 6)) )
      (*(void (__fastcall **)(_DWORD, _DWORD, _DWORD))(**((_DWORD **)this + 6) + 16))(*((_DWORD *)this + 6), 0, 0);
  }
  return v6;
}


// ===== 874c44 vox::DecoderRawCursor::Decode(void *,int) =====
int __fastcall vox::DecoderRawCursor::Decode(vox::DecoderRawCursor *this, char *a2, int a3)
{
  int v6; // r4
  int v7; // r5
  int v8; // r0

  if ( a3 <= 0 )
    return 0;
  v7 = a3;
  v6 = 0;
  do
  {
    v8 = (*(int (__fastcall **)(_DWORD, char *, int))(**((_DWORD **)this + 6) + 28))(*((_DWORD *)this + 6), &a2[v6], v7);
    if ( v8 <= 0 )
      break;
    v6 += v8;
    v7 -= v8;
    if ( *((_BYTE *)this + 28) )
    {
      if ( (*(int (__fastcall **)(_DWORD))(**((_DWORD **)this + 6) + 36))(*((_DWORD *)this + 6))
        && (*(int (__fastcall **)(_DWORD, _DWORD, _DWORD))(**((_DWORD **)this + 6) + 16))(*((_DWORD *)this + 6), 0, 0) )
      {
        break;
      }
    }
  }
  while ( a3 > v6 );
  return v6;
}


// ===== 874cf0 vox::DecoderRawCursor::Seek(uint) =====
int __fastcall vox::DecoderRawCursor::Seek(vox::DecoderRawCursor *this, unsigned int a2)
{
  if ( *((_DWORD *)this + 4) < a2 )
    return -1;
  (*(void (__fastcall **)(_DWORD, unsigned int, _DWORD))(**((_DWORD **)this + 6) + 16))(
    *((_DWORD *)this + 6),
    a2 * *((_DWORD *)this + 1) * (*((int *)this + 3) >> 3),
    0);
  return 0;
}


// ===== 874d3c vox::DecoderRawCursor::HasData(void) =====
int __fastcall vox::DecoderRawCursor::HasData(vox::DecoderRawCursor *this)
{
  if ( *((_BYTE *)this + 28) && (*(int (__fastcall **)(_DWORD))(**((_DWORD **)this + 6) + 36))(*((_DWORD *)this + 6)) )
    (*(void (__fastcall **)(vox::DecoderRawCursor *, _DWORD))(*(_DWORD *)this + 40))(this, 0);
  return (*(unsigned __int8 (__fastcall **)(_DWORD))(**((_DWORD **)this + 6) + 36))(*((_DWORD *)this + 6)) ^ 1;
}


// ===== 874da4 vox::DecoderRaw::~DecoderRaw() =====
void __fastcall vox::DecoderRaw::~DecoderRaw(vox::DecoderRaw *this)
{
  ;
}


// ===== 874da8 vox::DecoderRaw::~DecoderRaw() =====
void __fastcall vox::DecoderRaw::~DecoderRaw(vox::DecoderRaw *this)
{
  LC_API_FREE_0(this);
}


// ===== 874dbc vox::DecoderRawCursor::~DecoderRawCursor() =====
void __fastcall vox::DecoderRawCursor::~DecoderRawCursor(vox::DecoderRawCursor *this)
{
  LC_API_FREE_0(this);
}


// ===== 874dd0 vox::DecoderRaw::DestroyCursor(vox::DecoderCursorInterface *) =====
void __fastcall vox::DecoderRaw::DestroyCursor(vox::DecoderRaw *this, vox::DecoderCursorInterface *a2)
{
  if ( a2 )
  {
    (**(void (__fastcall ***)(vox::DecoderCursorInterface *))a2)(a2);
    VoxFree(a2);
  }
}


// ===== 874dfc vox::DecoderRaw::CreateNewCursor(vox::StreamCursorInterface *) =====
void *__fastcall vox::DecoderRaw::CreateNewCursor(int a1, int a2)
{
  void *v4; // r4

  v4 = VoxAlloc(0x20u, 0);
  vox::DecoderRawCursor::DecoderRawCursor((int)v4, a1, a2);
  return v4;
}


// ===== 874e2c vox::DecoderRawFactory(void *) =====
_DWORD *__fastcall vox::DecoderRawFactory(vox *this, void *a2)
{
  _DWORD *v3; // r4

  v3 = VoxAlloc(0x14u, 0);
  vox::DecoderRaw::DecoderRaw(v3, (int *)this);
  return v3;
}


// ===== 874e54 vox::DecoderStbVorbis::GetType(void) =====
int __fastcall vox::DecoderStbVorbis::GetType(vox::DecoderStbVorbis *this)
{
  return 2;
}


// ===== 874e5c vox::DecoderStbVorbis::GetParam(void) =====
int __fastcall vox::DecoderStbVorbis::GetParam(vox::DecoderStbVorbis *this)
{
  return 0;
}


// ===== 874e64 fgetc(vox::StreamCursorInterface *) =====
int __fastcall fgetc(int a1)
{
  _BYTE v2[5]; // [sp+7h] [bp-5h] BYREF

  if ( !a1 )
    return -1;
  (*(void (__fastcall **)(int, _BYTE *, int))(*(_DWORD *)a1 + 28))(a1, v2, 1);
  return v2[0];
}


// ===== 874e98 fread(void *,uint,uint,vox::StreamCursorInterface *) =====
unsigned int __fastcall fread(void *a1, unsigned int a2, unsigned int a3, vox::StreamCursorInterface *a4)
{
  if ( a4 )
    return (*(int (__fastcall **)(vox::StreamCursorInterface *, void *, unsigned int))(*(_DWORD *)a4 + 28))(
             a4,
             a1,
             a2 * a3)
         / a2;
  else
    return 0;
}


// ===== 874ed8 ftell(vox::StreamCursorInterface *) =====
int __fastcall ftell(int a1)
{
  if ( a1 )
    return (*(int (__fastcall **)(int))(*(_DWORD *)a1 + 24))(a1);
  else
    return -1;
}


// ===== 874efc fseek(vox::StreamCursorInterface *,int,int) =====
int __fastcall fseek(int a1)
{
  if ( !a1 )
    return -1;
  (*(void (__fastcall **)(int))(*(_DWORD *)a1 + 16))(a1);
  return 0;
}


// ===== 874f24 fclose(vox::StreamCursorInterface *) =====
int fclose()
{
  return 0;
}


// ===== 874f2c vox::DecoderStbVorbisCursor::HasData(void) =====
bool __fastcall vox::DecoderStbVorbisCursor::HasData(vox::DecoderStbVorbisCursor *this)
{
  unsigned int v2; // r2
  unsigned int v3; // r3

  if ( !*((_DWORD *)this + 6) )
    return 0;
  v2 = *((_DWORD *)this + 9);
  v3 = *((_DWORD *)this + 4);
  if ( v2 < v3 || !*((_BYTE *)this + 28) )
    return v2 < v3;
  (*(void (__fastcall **)(vox::DecoderStbVorbisCursor *, _DWORD))(*(_DWORD *)this + 40))(this, 0);
  return *((_DWORD *)this + 9) < *((_DWORD *)this + 4);
}


// ===== 874f9c vox::DecoderStbVorbisCursor::Seek(uint) =====
int __fastcall vox::DecoderStbVorbisCursor::Seek(vox::DecoderStbVorbisCursor *this, unsigned int a2)
{
  if ( *((_DWORD *)this + 4) < a2 || a2 || !*((_DWORD *)this + 8) )
    return -1;
  stb_vorbis_seek_start();
  *((_DWORD *)this + 9) = 0;
  return 0;
}


// ===== 874fec vox::DecoderStbVorbisCursor::Decode(void *,int) =====
int __fastcall vox::DecoderStbVorbisCursor::Decode(vox::DecoderStbVorbisCursor *this, void *a2, int a3)
{
  int result; // r0
  int samples_float_interleaved; // r5
  int v6; // r3

  result = *((_DWORD *)this + 8);
  if ( result )
  {
    if ( *((_DWORD *)this + 3) == 32 )
      samples_float_interleaved = stb_vorbis_get_samples_float_interleaved();
    else
      samples_float_interleaved = stb_vorbis_get_samples_short_interleaved();
    v6 = samples_float_interleaved + *((_DWORD *)this + 9);
    *((_DWORD *)this + 9) = v6;
    if ( !samples_float_interleaved || v6 == *((_DWORD *)this + 4) )
    {
      if ( *((_BYTE *)this + 28) )
      {
        (*(void (__fastcall **)(vox::DecoderStbVorbisCursor *, _DWORD))(*(_DWORD *)this + 40))(this, 0);
        return samples_float_interleaved * *((_DWORD *)this + 1) * (*((int *)this + 3) >> 3);
      }
      else
      {
        return samples_float_interleaved * *((_DWORD *)this + 1) * (*((int *)this + 3) >> 3);
      }
    }
    else
    {
      return samples_float_interleaved * *((_DWORD *)this + 1) * (*((int *)this + 3) >> 3);
    }
  }
  return result;
}


// ===== 8750c4 vox::DecoderStbVorbisCursor::~DecoderStbVorbisCursor() =====
void __fastcall vox::DecoderStbVorbisCursor::~DecoderStbVorbisCursor(vox::DecoderStbVorbisCursor *this)
{
  int v2; // r0

  v2 = *((_DWORD *)this + 8);
  *(_DWORD *)this = off_993738;
  if ( v2 )
    stb_vorbis_close();
}


// ===== 875104 vox::DecoderStbVorbisCursor::~DecoderStbVorbisCursor() =====
void __fastcall vox::DecoderStbVorbisCursor::~DecoderStbVorbisCursor(vox::DecoderStbVorbisCursor *this)
{
  vox::DecoderStbVorbisCursor::~DecoderStbVorbisCursor(this);
  LC_API_FREE_0(this);
}


// ===== 875120 vox::DecoderStbVorbisCursor::~DecoderStbVorbisCursor() =====
void __fastcall vox::DecoderStbVorbisCursor::~DecoderStbVorbisCursor(vox::DecoderStbVorbisCursor *this)
{
  int v2; // r0

  v2 = *((_DWORD *)this + 8);
  *(_DWORD *)this = off_993738;
  if ( v2 )
    stb_vorbis_close();
}


// ===== 875160 vox::DecoderStbVorbis::~DecoderStbVorbis() =====
void __fastcall vox::DecoderStbVorbis::~DecoderStbVorbis(vox::DecoderStbVorbis *this)
{
  int v2; // r0

  v2 = *((_DWORD *)this + 1);
  *(_DWORD *)this = off_993778;
  if ( v2 )
    stb_vorbis_close();
}


// ===== 8751a0 vox::DecoderStbVorbis::~DecoderStbVorbis() =====
void __fastcall vox::DecoderStbVorbis::~DecoderStbVorbis(vox::DecoderStbVorbis *this)
{
  vox::DecoderStbVorbis::~DecoderStbVorbis(this);
  LC_API_FREE_0(this);
}


// ===== 8751bc vox::DecoderStbVorbis::~DecoderStbVorbis() =====
void __fastcall vox::DecoderStbVorbis::~DecoderStbVorbis(vox::DecoderStbVorbis *this)
{
  int v2; // r0

  v2 = *((_DWORD *)this + 1);
  *(_DWORD *)this = off_993778;
  if ( v2 )
    stb_vorbis_close();
}


// ===== 8751fc vox::DecoderStbVorbisCursor::DecoderStbVorbisCursor(vox::DecoderInterface *,vox::StreamCursorInterface *) =====
vox::DecoderStbVorbisCursor *__fastcall vox::DecoderStbVorbisCursor::DecoderStbVorbisCursor(
        vox::DecoderStbVorbisCursor *this,
        vox::DecoderInterface *a2,
        vox::StreamCursorInterface *a3)
{
  int v4; // r0
  int v5; // r2
  int v6; // r3
  _DWORD v8[6]; // [sp+4h] [bp-1Ch] BYREF
  _BYTE v9[4]; // [sp+1Ch] [bp-4h] BYREF

  *((_DWORD *)this + 5) = a2;
  *(_DWORD *)this = off_993738;
  *((_DWORD *)this + 6) = a3;
  *((_DWORD *)this + 1) = 0;
  *((_DWORD *)this + 2) = 0;
  *((_DWORD *)this + 3) = 0;
  *((_DWORD *)this + 4) = 0;
  *((_BYTE *)this + 28) = 0;
  *((_DWORD *)this + 8) = 0;
  *((_DWORD *)this + 9) = 0;
  v4 = stb_vorbis_open_file(a3, 0, v9, 0);
  *((_DWORD *)this + 8) = v4;
  if ( v4 )
  {
    stb_vorbis_get_info(v8, v4);
    v5 = v8[1];
    v6 = v8[0];
    *((_DWORD *)this + 3) = 16;
    *((_DWORD *)this + 1) = v5;
    *((_DWORD *)this + 2) = v6;
    *((_DWORD *)this + 4) = stb_vorbis_stream_length_in_samples(*((_DWORD *)this + 8));
  }
  else
  {
    *((_DWORD *)this + 4) = 0;
    *((_DWORD *)this + 1) = 0;
    *((_DWORD *)this + 2) = 0;
    *((_DWORD *)this + 3) = 0;
  }
  return this;
}


// ===== 8752bc vox::DecoderStbVorbisCursor::DecoderStbVorbisCursor(vox::DecoderInterface *,vox::StreamCursorInterface *) =====
vox::DecoderStbVorbisCursor *__fastcall vox::DecoderStbVorbisCursor::DecoderStbVorbisCursor(
        vox::DecoderStbVorbisCursor *this,
        vox::DecoderInterface *a2,
        vox::StreamCursorInterface *a3)
{
  int v4; // r0
  int v5; // r2
  int v6; // r3
  _DWORD v8[6]; // [sp+4h] [bp-1Ch] BYREF
  _BYTE v9[4]; // [sp+1Ch] [bp-4h] BYREF

  *((_DWORD *)this + 5) = a2;
  *(_DWORD *)this = off_993738;
  *((_DWORD *)this + 6) = a3;
  *((_DWORD *)this + 1) = 0;
  *((_DWORD *)this + 2) = 0;
  *((_DWORD *)this + 3) = 0;
  *((_DWORD *)this + 4) = 0;
  *((_BYTE *)this + 28) = 0;
  *((_DWORD *)this + 8) = 0;
  *((_DWORD *)this + 9) = 0;
  v4 = stb_vorbis_open_file(a3, 0, v9, 0);
  *((_DWORD *)this + 8) = v4;
  if ( v4 )
  {
    stb_vorbis_get_info(v8, v4);
    v5 = v8[1];
    v6 = v8[0];
    *((_DWORD *)this + 3) = 16;
    *((_DWORD *)this + 1) = v5;
    *((_DWORD *)this + 2) = v6;
    *((_DWORD *)this + 4) = stb_vorbis_stream_length_in_samples(*((_DWORD *)this + 8));
  }
  else
  {
    *((_DWORD *)this + 4) = 0;
    *((_DWORD *)this + 1) = 0;
    *((_DWORD *)this + 2) = 0;
    *((_DWORD *)this + 3) = 0;
  }
  return this;
}


// ===== 87537c vox::DecoderStbVorbis::DestroyCursor(vox::DecoderCursorInterface *) =====
void __fastcall vox::DecoderStbVorbis::DestroyCursor(vox::DecoderStbVorbis *this, vox::DecoderCursorInterface *a2)
{
  if ( a2 )
  {
    (**(void (__fastcall ***)(vox::DecoderCursorInterface *))a2)(a2);
    VoxFree(a2);
  }
}


// ===== 8753a8 vox::DecoderStbVorbis::CreateNewCursor(vox::StreamCursorInterface *) =====
vox::DecoderStbVorbisCursor *__fastcall vox::DecoderStbVorbis::CreateNewCursor(
        vox::DecoderStbVorbis *this,
        vox::StreamCursorInterface *a2)
{
  vox::DecoderStbVorbisCursor *v4; // r4

  v4 = (vox::DecoderStbVorbisCursor *)VoxAlloc(0x28u, 0);
  vox::DecoderStbVorbisCursor::DecoderStbVorbisCursor(v4, this, a2);
  return v4;
}


// ===== 8753d8 vox::DecoderStbVorbisFactory(void *) =====
_DWORD *__fastcall vox::DecoderStbVorbisFactory(vox *this, void *a2)
{
  _DWORD *result; // r0

  result = VoxAlloc(0xCu, 0);
  result[1] = 0;
  *result = off_993778;
  return result;
}


// ===== 875414 vox::VoxMSWavSubDecoder::~VoxMSWavSubDecoder() =====
void __fastcall vox::VoxMSWavSubDecoder::~VoxMSWavSubDecoder(vox::VoxMSWavSubDecoder *this)
{
  ;
}


// ===== 875418 vox::VoxMSWavSubDecoderIMAADPCM::HasData(void) =====
bool __fastcall vox::VoxMSWavSubDecoderIMAADPCM::HasData(vox::VoxMSWavSubDecoderIMAADPCM *this)
{
  if ( !*((_DWORD *)this + 1) )
    return 0;
  if ( *((_BYTE *)this + 40) )
  {
    if ( *((_DWORD *)this + 25) < *((_DWORD *)this + 7)
      && (*((_DWORD *)this + 21) < *(_DWORD *)(*((_DWORD *)this + 2) + 40)
       || *((_DWORD *)this + 24) != *((_DWORD *)this + 23)) )
    {
      return 1;
    }
    (*(void (__fastcall **)(vox::VoxMSWavSubDecoderIMAADPCM *, _DWORD))(*(_DWORD *)this + 12))(this, 0);
  }
  if ( *((_DWORD *)this + 25) >= *((_DWORD *)this + 7) )
    return 0;
  if ( *((_DWORD *)this + 21) < *(_DWORD *)(*((_DWORD *)this + 2) + 40) )
    return 1;
  return *((_DWORD *)this + 24) != *((_DWORD *)this + 23);
}


// ===== 8754c8 vox::VoxMSWavSubDecoder::~VoxMSWavSubDecoder() =====
void __fastcall vox::VoxMSWavSubDecoder::~VoxMSWavSubDecoder(vox::VoxMSWavSubDecoder *this)
{
  LC_API_FREE_0(this);
}


// ===== 8754dc vox::VoxMSWavSubDecoderIMAADPCM::~VoxMSWavSubDecoderIMAADPCM() =====
void __fastcall vox::VoxMSWavSubDecoderIMAADPCM::~VoxMSWavSubDecoderIMAADPCM(vox::VoxMSWavSubDecoderIMAADPCM *this)
{
  void *v2; // r0
  AdpcmState *v3; // r4

  v2 = *((void **)this + 19);
  *(_DWORD *)this = off_9937C0;
  VoxFree(v2);
  VoxFree(*((void **)this + 26));
  v3 = (vox::VoxMSWavSubDecoderIMAADPCM *)((char *)this + 74);
  do
  {
    v3 = (AdpcmState *)((char *)v3 - 4);
    AdpcmState::~AdpcmState(v3);
  }
  while ( v3 != (vox::VoxMSWavSubDecoderIMAADPCM *)((char *)this + 42) );
}


// ===== 875538 vox::VoxMSWavSubDecoderIMAADPCM::~VoxMSWavSubDecoderIMAADPCM() =====
void __fastcall vox::VoxMSWavSubDecoderIMAADPCM::~VoxMSWavSubDecoderIMAADPCM(vox::VoxMSWavSubDecoderIMAADPCM *this)
{
  vox::VoxMSWavSubDecoderIMAADPCM::~VoxMSWavSubDecoderIMAADPCM(this);
  LC_API_FREE_0(this);
}


// ===== 875554 vox::VoxMSWavSubDecoderIMAADPCM::~VoxMSWavSubDecoderIMAADPCM() =====
void __fastcall vox::VoxMSWavSubDecoderIMAADPCM::~VoxMSWavSubDecoderIMAADPCM(vox::VoxMSWavSubDecoderIMAADPCM *this)
{
  void *v2; // r0
  AdpcmState *v3; // r4

  v2 = *((void **)this + 19);
  *(_DWORD *)this = off_9937C0;
  VoxFree(v2);
  VoxFree(*((void **)this + 26));
  v3 = (vox::VoxMSWavSubDecoderIMAADPCM *)((char *)this + 74);
  do
  {
    v3 = (AdpcmState *)((char *)v3 - 4);
    AdpcmState::~AdpcmState(v3);
  }
  while ( v3 != (vox::VoxMSWavSubDecoderIMAADPCM *)((char *)this + 42) );
}


// ===== 8755b0 vox::VoxMSWavSubDecoderIMAADPCM::VoxMSWavSubDecoderIMAADPCM(vox::StreamCursorInterface *,vox::WaveChunk *) =====
int __fastcall vox::VoxMSWavSubDecoderIMAADPCM::VoxMSWavSubDecoderIMAADPCM(int a1, int a2, int a3)
{
  int v3; // r7
  int v6; // r5
  AdpcmState *v7; // r0
  void *v8; // r0
  void *v9; // r7
  int v10; // r3
  int v11; // r3

  v3 = 0;
  *(_DWORD *)(a1 + 4) = a2;
  *(_DWORD *)(a1 + 8) = a3;
  *(_DWORD *)(a1 + 12) = 0;
  *(_DWORD *)(a1 + 16) = 0;
  *(_DWORD *)(a1 + 20) = 0;
  *(_DWORD *)(a1 + 24) = 0;
  *(_DWORD *)(a1 + 28) = 0;
  *(_DWORD *)(a1 + 32) = 0;
  *(_DWORD *)(a1 + 36) = 0;
  *(_BYTE *)(a1 + 40) = 0;
  *(_DWORD *)a1 = off_9937C0;
  v6 = a1 + 42;
  do
  {
    v7 = (AdpcmState *)(v6 + v3);
    v3 += 4;
    AdpcmState::AdpcmState(v7);
  }
  while ( v3 != 32 );
  *(_DWORD *)(a1 + 76) = 0;
  *(_DWORD *)(a1 + 84) = 0;
  *(_DWORD *)(a1 + 92) = 0;
  *(_DWORD *)(a1 + 96) = 0;
  *(_DWORD *)(a1 + 100) = 0;
  *(_DWORD *)(a1 + 104) = 0;
  vox::VoxMSWavSubDecoder::GoToNextDataChunk((vox::VoxMSWavSubDecoder *)a1);
  *(_DWORD *)(a1 + 88) = (*(int (__fastcall **)(_DWORD))(**(_DWORD **)(a1 + 4) + 24))(*(_DWORD *)(a1 + 4));
  v8 = VoxAlloc(4 * *(unsigned __int16 *)(a3 + 32));
  *(_DWORD *)(a1 + 76) = v8;
  if ( v8 )
  {
    v9 = VoxAlloc(*(unsigned __int16 *)(a3 + 32));
    *(_DWORD *)(a1 + 104) = v9;
    if ( !v9 )
    {
      VoxFree(*(void **)(a1 + 76));
      *(_DWORD *)(a1 + 28) = 0;
      *(_DWORD *)(a1 + 76) = 0;
      *(_DWORD *)(a1 + 16) = 0;
      *(_DWORD *)(a1 + 20) = 0;
      *(_DWORD *)(a1 + 24) = 0;
      return a1;
    }
    v10 = *(unsigned __int16 *)(a3 + 22);
    if ( *(_WORD *)(a3 + 22) )
    {
      *(_DWORD *)(a1 + 80) = 2 * (*(unsigned __int16 *)(a3 + 32) - 4 * v10) / *(unsigned __int16 *)(a3 + 22) + 1;
      *(_DWORD *)(a1 + 24) = 16;
      v11 = *(unsigned __int16 *)(a3 + 22);
      *(_DWORD *)(a1 + 16) = v11;
      *(_DWORD *)(a1 + 20) = *(_DWORD *)(a3 + 24);
      *(_DWORD *)(a1 + 28) = *(_DWORD *)(a3 + 52);
      if ( v11 > 8 )
      {
        *(_DWORD *)(a1 + 28) = 0;
        *(_DWORD *)(a1 + 16) = 0;
        *(_DWORD *)(a1 + 20) = 0;
        *(_DWORD *)(a1 + 24) = 0;
      }
      return a1;
    }
    *(_DWORD *)(a1 + 28) = v10;
    *(_DWORD *)(a1 + 16) = v10;
    *(_DWORD *)(a1 + 20) = v10;
    *(_DWORD *)(a1 + 24) = v10;
    return a1;
  }
  else
  {
    *(_DWORD *)(a1 + 28) = 0;
    *(_DWORD *)(a1 + 16) = 0;
    *(_DWORD *)(a1 + 20) = 0;
    *(_DWORD *)(a1 + 24) = 0;
    return a1;
  }
}


// ===== 875744 vox::VoxMSWavSubDecoderIMAADPCM::VoxMSWavSubDecoderIMAADPCM(vox::StreamCursorInterface *,vox::WaveChunk *) =====
int __fastcall vox::VoxMSWavSubDecoderIMAADPCM::VoxMSWavSubDecoderIMAADPCM(int a1, int a2, int a3)
{
  int v3; // r7
  int v6; // r5
  AdpcmState *v7; // r0
  void *v8; // r0
  void *v9; // r7
  int v10; // r3
  int v11; // r3

  v3 = 0;
  *(_DWORD *)(a1 + 4) = a2;
  *(_DWORD *)(a1 + 8) = a3;
  *(_DWORD *)(a1 + 12) = 0;
  *(_DWORD *)(a1 + 16) = 0;
  *(_DWORD *)(a1 + 20) = 0;
  *(_DWORD *)(a1 + 24) = 0;
  *(_DWORD *)(a1 + 28) = 0;
  *(_DWORD *)(a1 + 32) = 0;
  *(_DWORD *)(a1 + 36) = 0;
  *(_BYTE *)(a1 + 40) = 0;
  *(_DWORD *)a1 = off_9937C0;
  v6 = a1 + 42;
  do
  {
    v7 = (AdpcmState *)(v6 + v3);
    v3 += 4;
    AdpcmState::AdpcmState(v7);
  }
  while ( v3 != 32 );
  *(_DWORD *)(a1 + 76) = 0;
  *(_DWORD *)(a1 + 84) = 0;
  *(_DWORD *)(a1 + 92) = 0;
  *(_DWORD *)(a1 + 96) = 0;
  *(_DWORD *)(a1 + 100) = 0;
  *(_DWORD *)(a1 + 104) = 0;
  vox::VoxMSWavSubDecoder::GoToNextDataChunk((vox::VoxMSWavSubDecoder *)a1);
  *(_DWORD *)(a1 + 88) = (*(int (__fastcall **)(_DWORD))(**(_DWORD **)(a1 + 4) + 24))(*(_DWORD *)(a1 + 4));
  v8 = VoxAlloc(4 * *(unsigned __int16 *)(a3 + 32));
  *(_DWORD *)(a1 + 76) = v8;
  if ( v8 )
  {
    v9 = VoxAlloc(*(unsigned __int16 *)(a3 + 32));
    *(_DWORD *)(a1 + 104) = v9;
    if ( !v9 )
    {
      VoxFree(*(void **)(a1 + 76));
      *(_DWORD *)(a1 + 28) = 0;
      *(_DWORD *)(a1 + 76) = 0;
      *(_DWORD *)(a1 + 16) = 0;
      *(_DWORD *)(a1 + 20) = 0;
      *(_DWORD *)(a1 + 24) = 0;
      return a1;
    }
    v10 = *(unsigned __int16 *)(a3 + 22);
    if ( *(_WORD *)(a3 + 22) )
    {
      *(_DWORD *)(a1 + 80) = 2 * (*(unsigned __int16 *)(a3 + 32) - 4 * v10) / *(unsigned __int16 *)(a3 + 22) + 1;
      *(_DWORD *)(a1 + 24) = 16;
      v11 = *(unsigned __int16 *)(a3 + 22);
      *(_DWORD *)(a1 + 16) = v11;
      *(_DWORD *)(a1 + 20) = *(_DWORD *)(a3 + 24);
      *(_DWORD *)(a1 + 28) = *(_DWORD *)(a3 + 52);
      if ( v11 > 8 )
      {
        *(_DWORD *)(a1 + 28) = 0;
        *(_DWORD *)(a1 + 16) = 0;
        *(_DWORD *)(a1 + 20) = 0;
        *(_DWORD *)(a1 + 24) = 0;
      }
      return a1;
    }
    *(_DWORD *)(a1 + 28) = v10;
    *(_DWORD *)(a1 + 16) = v10;
    *(_DWORD *)(a1 + 20) = v10;
    *(_DWORD *)(a1 + 24) = v10;
    return a1;
  }
  else
  {
    *(_DWORD *)(a1 + 28) = 0;
    *(_DWORD *)(a1 + 16) = 0;
    *(_DWORD *)(a1 + 20) = 0;
    *(_DWORD *)(a1 + 24) = 0;
    return a1;
  }
}


// ===== 8758d8 vox::VoxMSWavSubDecoderIMAADPCM::DecodeBlock(void *) =====
int __fastcall vox::VoxMSWavSubDecoderIMAADPCM::DecodeBlock(vox::VoxMSWavSubDecoderIMAADPCM *this, char *a2)
{
  int v2; // r3
  int v3; // r12
  _WORD *v4; // r4
  unsigned int v5; // r2
  int v6; // r3
  unsigned int v7; // r0
  int v9; // r2
  int v10; // r0
  vox::VoxMSWavSubDecoderIMAADPCM *v11; // r1
  int v12; // r3
  _WORD *v13; // r2
  int *i; // r3
  int v15; // r1
  vox::VoxMSWavSubDecoderIMAADPCM *v16; // r12
  int v17; // r3
  int v18; // r0
  _WORD *v19; // r5
  __int16 v20; // r1
  int v21; // r1
  unsigned __int8 *v22; // r11
  int v23; // r10
  vox::VoxMSWavSubDecoderIMAADPCM *v24; // r9
  int v25; // r6
  _WORD *v26; // r5
  int v27; // r4
  unsigned int v28; // r0
  int v29; // r10
  int v30; // r3
  int v31; // r12
  int v32; // r1
  int v33; // r2
  int v34; // r1
  int v35; // r3
  unsigned int v36; // r2
  bool v37; // cc
  int v39; // [sp+8h] [bp-4Ch]
  int v40; // [sp+Ch] [bp-48h]
  _WORD *v41; // [sp+10h] [bp-44h]
  int v43; // [sp+1Ch] [bp-38h]
  int v44; // [sp+20h] [bp-34h]
  int v45; // [sp+28h] [bp-2Ch]
  int v46; // [sp+2Ch] [bp-28h]
  _DWORD v47[9]; // [sp+30h] [bp-24h] BYREF
  int v48; // [sp+34h] [bp-20h] BYREF

  v2 = *((_DWORD *)this + 2);
  v3 = *(_DWORD *)(v2 + 40);
  v4 = *((_WORD **)this + 26);
  v5 = *(unsigned __int16 *)(v2 + 32);
  v6 = *((_DWORD *)this + 1);
  v7 = v3 - *((_DWORD *)this + 21);
  if ( v7 < v5 )
    v5 = v7;
  v46 = (*(int (__fastcall **)(int, _WORD *, unsigned int))(*(_DWORD *)v6 + 28))(v6, v4, v5);
  *((_WORD *)this + 21) = *v4;
  v9 = *((_DWORD *)this + 2);
  *((_WORD *)this + 22) = v4[1];
  v10 = *(unsigned __int16 *)(v9 + 22);
  if ( (unsigned int)v10 > 1 )
  {
    v11 = this;
    v12 = 1;
    do
    {
      v13 = &v4[2 * v12++];
      *((_WORD *)v11 + 23) = *v13;
      *((_WORD *)v11 + 24) = v13[1];
      v9 = *((_DWORD *)this + 2);
      v11 = (vox::VoxMSWavSubDecoderIMAADPCM *)((char *)v11 + 4);
      v10 = *(unsigned __int16 *)(v9 + 22);
    }
    while ( v10 > v12 );
    v47[0] = a2;
    if ( v10 > 1 )
    {
      for ( i = &v48; ; a2 = (char *)*(i - 1) )
      {
        *i++ = (int)(a2 + 2);
        if ( i == &v47[v10] )
          break;
      }
    }
  }
  else
  {
    v47[0] = a2;
  }
  if ( v10 )
  {
    v16 = this;
    v17 = 0;
    v18 = 0;
    do
    {
      v19 = (_WORD *)v47[v17];
      v20 = *((_WORD *)v16 + 21);
      ++v18;
      v16 = (vox::VoxMSWavSubDecoderIMAADPCM *)((char *)v16 + 4);
      *v19 = v20;
      v9 = *((_DWORD *)this + 2);
      v15 = *(unsigned __int16 *)(v9 + 22);
      v47[v17++] = &v19[v15];
    }
    while ( v15 > v18 );
  }
  else
  {
    v15 = 0;
  }
  v21 = 4 * v15;
  v45 = v46 - v21;
  if ( v46 - v21 > 0 )
  {
    v22 = (unsigned __int8 *)&v4[v21 / 2u];
    v44 = 1;
    v43 = 0;
    do
    {
      v23 = *(unsigned __int16 *)(v9 + 22);
      if ( *(_WORD *)(v9 + 22) )
      {
        v24 = this;
        v39 = 0;
        v40 = 0;
        do
        {
          v41 = (_WORD *)v47[v39];
          v25 = (v22[2] << 16) + (v22[1] << 8) + *v22 + (v22[3] << 24);
          v26 = v41;
          v27 = *((__int16 *)v24 + 21);
          v28 = *((unsigned __int8 *)v24 + 44);
          v29 = 2 * v23;
          v30 = *v22 & 0xF;
          v31 = 0;
          while ( 1 )
          {
            v32 = AdpcmDecoder::cAdpcmStepSizeTable[v28];
            v33 = v32 >> 3;
            if ( (v30 & 4) != 0 )
              v33 += v32;
            if ( (v30 & 2) != 0 )
              v33 += v32 >> 1;
            if ( (v30 & 1) != 0 )
              v33 += v32 >> 2;
            if ( (v30 & 8) != 0 )
            {
              v27 -= v33;
              if ( v27 < -32768 )
                v27 = -32768;
            }
            else
            {
              v27 += v33;
              if ( v27 >= 0x7FFF )
                v27 = 0x7FFF;
            }
            v28 = (unsigned __int8)(v28 + AdpcmDecoder::cAdpcmIndexTable[v30]);
            if ( (v28 & 0x80) != 0 )
            {
              v28 = 0;
            }
            else if ( v28 >= 0x58 )
            {
              v28 = 88;
            }
            ++v31;
            *v26 = v27;
            if ( v31 == 8 )
              break;
            v25 >>= 4;
            v26 = (_WORD *)((char *)v26 + v29);
            v30 = v25 & 0xF;
          }
          *((_WORD *)v24 + 21) = v27;
          *((_BYTE *)v24 + 44) = v28;
          v9 = *((_DWORD *)this + 2);
          ++v40;
          v22 += 4;
          v23 = *(unsigned __int16 *)(v9 + 22);
          v24 = (vox::VoxMSWavSubDecoderIMAADPCM *)((char *)v24 + 4);
          v47[v39] = &v41[8 * v23];
          v34 = v39 * 4 + 4;
          ++v39;
        }
        while ( v23 > v40 );
        v43 += v34;
      }
      v44 += 8;
    }
    while ( v43 < v45 );
  }
  else
  {
    v44 = 1;
  }
  v35 = *((_DWORD *)this + 25);
  v36 = *((_DWORD *)this + 7);
  v37 = v44 + v35 > v36;
  if ( v44 + v35 > v36 )
    v35 = v36 - v35;
  *((_DWORD *)this + 21) += v46;
  if ( v37 )
    return v35;
  return v44;
}


// ===== 875c34 vox::VoxMSWavSubDecoderIMAADPCM::Seek(uint) =====
int __fastcall vox::VoxMSWavSubDecoderIMAADPCM::Seek(vox::VoxMSWavSubDecoderIMAADPCM *this, unsigned int a2)
{
  unsigned int v2; // r3
  unsigned int v6; // r6
  int v7; // r12
  int v8; // r1
  int v9; // r0
  char *v10; // r1
  int v11; // r6
  int v12; // r5

  v2 = *((_DWORD *)this + 7);
  if ( v2 < a2 || v2 <= a2 )
    return -1;
  v6 = a2 / *((_DWORD *)this + 20);
  v7 = *((_DWORD *)this + 22);
  v8 = *(unsigned __int16 *)(*((_DWORD *)this + 2) + 32) * v6;
  v9 = *((_DWORD *)this + 1);
  *((_DWORD *)this + 21) = v8;
  (*(void (__fastcall **)(int, int, _DWORD))(*(_DWORD *)v9 + 16))(v9, v8 + v7, 0);
  v10 = *((char **)this + 19);
  v11 = *((_DWORD *)this + 20) * v6;
  v12 = a2 - v11;
  *((_DWORD *)this + 25) = v12 + v11;
  *((_DWORD *)this + 24) = v12;
  *((_DWORD *)this + 23) = vox::VoxMSWavSubDecoderIMAADPCM::DecodeBlock(this, v10);
  return 0;
}


// ===== 875cc8 vox::VoxMSWavSubDecoderIMAADPCM::Decode(void *,int) =====
int __fastcall vox::VoxMSWavSubDecoderIMAADPCM::Decode(vox::VoxMSWavSubDecoderIMAADPCM *this, char *a2, int a3)
{
  int v5; // r0
  int v6; // r7
  int v7; // r6
  int v8; // r1
  int v9; // r0
  int v10; // r2
  int v11; // r3
  int v12; // r5
  unsigned int v13; // r12
  unsigned int v14; // r3
  int v15; // r2

  v5 = a3 / (*((_DWORD *)this + 4) * (*((int *)this + 6) >> 3));
  v6 = v5;
  if ( v5 <= 0 )
    return 0;
  v7 = v5;
  do
  {
    v8 = *((_DWORD *)this + 24);
    v9 = *((_DWORD *)this + 23);
    if ( v8 == v9 )
    {
      v9 = vox::VoxMSWavSubDecoderIMAADPCM::DecodeBlock(this, *((char **)this + 19));
      v10 = *((_DWORD *)this + 4);
      *((_DWORD *)this + 23) = v9;
      *((_DWORD *)this + 24) = 0;
      v11 = 0;
      v8 = 0;
    }
    else
    {
      v10 = *((_DWORD *)this + 4);
      v11 = 2 * v8 * v10;
    }
    v12 = v9 - v8;
    if ( v9 - v8 >= v7 )
      v12 = v7;
    memcpy(&a2[2 * (v6 - v7) * v10], (const void *)(*((_DWORD *)this + 19) + v11), 2 * v10 * v12);
    v13 = *((_DWORD *)this + 7);
    v14 = v12 + *((_DWORD *)this + 25);
    v15 = v12 + *((_DWORD *)this + 24);
    *((_DWORD *)this + 24) = v15;
    *((_DWORD *)this + 25) = v14;
    v7 -= v12;
  }
  while ( (v14 < v13
        && (*((_DWORD *)this + 21) < *(_DWORD *)(*((_DWORD *)this + 2) + 40) || v15 != *((_DWORD *)this + 23))
        || *((_BYTE *)this + 40)
        && !(*(int (__fastcall **)(vox::VoxMSWavSubDecoderIMAADPCM *, _DWORD))(*(_DWORD *)this + 12))(this, 0))
       && v7 > 0 );
  return (v6 - v7) * *((_DWORD *)this + 4) * (*((int *)this + 6) >> 3);
}


// ===== 875e24 vox::VoxMSWavSubDecoderPCM::~VoxMSWavSubDecoderPCM() =====
void __fastcall vox::VoxMSWavSubDecoderPCM::~VoxMSWavSubDecoderPCM(vox::VoxMSWavSubDecoderPCM *this)
{
  ;
}


// ===== 875e28 vox::VoxMSWavSubDecoderPCM::GetDataSize(void) =====
int __fastcall vox::VoxMSWavSubDecoderPCM::GetDataSize(vox::VoxMSWavSubDecoderPCM *this)
{
  int result; // r0
  int i; // r3
  int v3; // t0
  int v4; // r2

  result = *(_DWORD *)(*((_DWORD *)this + 2) + 56);
  if ( result )
  {
    v3 = result + 4;
    result = *(_DWORD *)(result + 4);
    for ( i = *(_DWORD *)(v3 + 4); i; result += v4 )
    {
      v4 = *(_DWORD *)(i + 4);
      i = *(_DWORD *)(i + 8);
    }
  }
  return result;
}


// ===== 875e58 vox::VoxMSWavSubDecoderPCM::HasData(void) =====
bool __fastcall vox::VoxMSWavSubDecoderPCM::HasData(vox::VoxMSWavSubDecoderPCM *this)
{
  unsigned int v2; // r2
  unsigned int v3; // r3

  if ( !*((_DWORD *)this + 1) )
    return 0;
  v2 = *((_DWORD *)this + 9);
  v3 = *((_DWORD *)this + 7);
  if ( v2 < v3 || !*((_BYTE *)this + 40) )
    return v2 < v3;
  (*(void (__fastcall **)(vox::VoxMSWavSubDecoderPCM *, _DWORD))(*(_DWORD *)this + 12))(this, 0);
  return *((_DWORD *)this + 9) < *((_DWORD *)this + 7);
}


// ===== 875ec8 vox::VoxMSWavSubDecoderPCM::~VoxMSWavSubDecoderPCM() =====
void __fastcall vox::VoxMSWavSubDecoderPCM::~VoxMSWavSubDecoderPCM(vox::VoxMSWavSubDecoderPCM *this)
{
  LC_API_FREE_0(this);
}


// ===== 875edc vox::VoxMSWavSubDecoderPCM::Seek(uint) =====
int __fastcall vox::VoxMSWavSubDecoderPCM::Seek(vox::VoxMSWavSubDecoderPCM *this, unsigned int a2)
{
  unsigned int v3; // r5
  int v5; // r6
  unsigned int v6; // r8
  unsigned int v7; // r7
  int v8; // r3

  v3 = a2;
  if ( *((_DWORD *)this + 7) < a2 )
    return -1;
  *((_DWORD *)this + 9) = 0;
  *((_DWORD *)this + 3) = 0;
  vox::VoxMSWavSubDecoder::GoToNextDataChunk(this);
  if ( !v3 || !*((_DWORD *)this + 3) )
    return 0;
  v5 = *((_DWORD *)this + 2);
  v6 = *(_DWORD *)(v5 + 40);
  v7 = *(unsigned __int16 *)(v5 + 32);
  while ( v6 / v7 <= v3 )
  {
    *((_DWORD *)this + 9) += v6 / v7;
    vox::VoxMSWavSubDecoder::GoToNextDataChunk(this);
    v5 = *((_DWORD *)this + 2);
    v6 = *(_DWORD *)(v5 + 40);
    v7 = *(unsigned __int16 *)(v5 + 32);
    v3 -= v6 / v7;
    if ( !v3 || !*((_DWORD *)this + 3) )
      return 0;
  }
  v8 = *((_DWORD *)this + 1);
  *((_DWORD *)this + 9) += v3;
  (*(void (__fastcall **)(int, unsigned int, int))(*(_DWORD *)v8 + 16))(v8, *(unsigned __int16 *)(v5 + 32) * v3, 1);
  *((_DWORD *)this + 8) = *(unsigned __int16 *)(*((_DWORD *)this + 2) + 32) * v3;
  return 0;
}


// ===== 875fd0 vox::VoxMSWavSubDecoderPCM::Decode(void *,int) =====
int __fastcall vox::VoxMSWavSubDecoderPCM::Decode(vox::VoxMSWavSubDecoderPCM *this, char *a2, int a3)
{
  int v3; // r3
  unsigned int v5; // r6
  int v8; // r7
  int v9; // r5
  int v10; // r10
  unsigned int v11; // r9
  unsigned int v12; // r3
  int v13; // r1

  v3 = *((_DWORD *)this + 2);
  v5 = *(_DWORD *)(v3 + 40);
  if ( *((_DWORD *)this + 8) >= v5 )
  {
    vox::VoxMSWavSubDecoder::GoToNextDataChunk(this);
    v3 = *((_DWORD *)this + 2);
    v5 = *(_DWORD *)(v3 + 40);
  }
  v8 = a3 - a3 % *(unsigned __int16 *)(v3 + 32);
  if ( v8 > 0 )
  {
    v9 = 0;
    while ( 1 )
    {
      v13 = *((_DWORD *)this + 8);
      if ( v8 - v9 + v13 <= v5 )
      {
        v10 = (*(int (__fastcall **)(_DWORD, char *))(**((_DWORD **)this + 1) + 28))(*((_DWORD *)this + 1), &a2[v9]);
        v11 = *((_DWORD *)this + 8) + v10;
      }
      else
      {
        v10 = (*(int (__fastcall **)(_DWORD, char *, unsigned int))(**((_DWORD **)this + 1) + 28))(
                *((_DWORD *)this + 1),
                &a2[v9],
                v5 - v13);
        v11 = *(_DWORD *)(*((_DWORD *)this + 2) + 40);
      }
      *((_DWORD *)this + 8) = v11;
      v9 += v10;
      v12 = v10 / (*((_DWORD *)this + 4) * (*((int *)this + 6) >> 3)) + *((_DWORD *)this + 9);
      *((_DWORD *)this + 9) = v12;
      if ( v11 < v5 )
        break;
      if ( v12 >= *((_DWORD *)this + 7) )
        goto LABEL_9;
      vox::VoxMSWavSubDecoder::GoToNextDataChunk(this);
      if ( !*(_DWORD *)(*((_DWORD *)this + 2) + 40) )
      {
        if ( !*((_BYTE *)this + 40) )
        {
          *((_DWORD *)this + 9) = *((_DWORD *)this + 7);
          return v9;
        }
        if ( (*(int (__fastcall **)(vox::VoxMSWavSubDecoderPCM *))(*(_DWORD *)this + 12))(this) )
          return v9;
      }
LABEL_11:
      if ( v8 <= v9 )
        return v9;
    }
    if ( v12 < *((_DWORD *)this + 7) )
    {
      if ( !v10 )
        return v9;
      goto LABEL_11;
    }
LABEL_9:
    if ( !*((_BYTE *)this + 40)
      || (*(int (__fastcall **)(vox::VoxMSWavSubDecoderPCM *, _DWORD))(*(_DWORD *)this + 12))(this, 0) )
    {
      return v9;
    }
    goto LABEL_11;
  }
  return 0;
}


// ===== 876168 vox::VoxMSWavSubDecoderPCM::VoxMSWavSubDecoderPCM(vox::StreamCursorInterface *,vox::WaveChunk *) =====
int __fastcall vox::VoxMSWavSubDecoderPCM::VoxMSWavSubDecoderPCM(int a1, int a2, int a3)
{
  *(_DWORD *)(a1 + 16) = 0;
  *(_DWORD *)(a1 + 20) = 0;
  *(_DWORD *)(a1 + 24) = 0;
  *(_BYTE *)(a1 + 40) = 0;
  *(_DWORD *)a1 = off_9937E0;
  *(_DWORD *)(a1 + 8) = a3;
  *(_DWORD *)(a1 + 12) = 0;
  *(_DWORD *)(a1 + 28) = 0;
  *(_DWORD *)(a1 + 32) = 0;
  *(_DWORD *)(a1 + 36) = 0;
  *(_DWORD *)(a1 + 4) = a2;
  *(_DWORD *)(a1 + 24) = *(unsigned __int16 *)(a3 + 34);
  *(_DWORD *)(a1 + 16) = *(unsigned __int16 *)(a3 + 22);
  *(_DWORD *)(a1 + 20) = *(_DWORD *)(a3 + 24);
  *(_DWORD *)(a1 + 28) = vox::VoxMSWavSubDecoderPCM::GetDataSize((vox::VoxMSWavSubDecoderPCM *)a1)
                       / (*(_DWORD *)(a1 + 16)
                        * (*(int *)(a1 + 24) >> 3));
  vox::VoxMSWavSubDecoder::GoToNextDataChunk((vox::VoxMSWavSubDecoder *)a1);
  return a1;
}


// ===== 876200 vox::VoxMSWavSubDecoderPCM::VoxMSWavSubDecoderPCM(vox::StreamCursorInterface *,vox::WaveChunk *) =====
int __fastcall vox::VoxMSWavSubDecoderPCM::VoxMSWavSubDecoderPCM(int a1, int a2, int a3)
{
  *(_DWORD *)(a1 + 16) = 0;
  *(_DWORD *)(a1 + 20) = 0;
  *(_DWORD *)(a1 + 24) = 0;
  *(_BYTE *)(a1 + 40) = 0;
  *(_DWORD *)a1 = off_9937E0;
  *(_DWORD *)(a1 + 8) = a3;
  *(_DWORD *)(a1 + 12) = 0;
  *(_DWORD *)(a1 + 28) = 0;
  *(_DWORD *)(a1 + 32) = 0;
  *(_DWORD *)(a1 + 36) = 0;
  *(_DWORD *)(a1 + 4) = a2;
  *(_DWORD *)(a1 + 24) = *(unsigned __int16 *)(a3 + 34);
  *(_DWORD *)(a1 + 16) = *(unsigned __int16 *)(a3 + 22);
  *(_DWORD *)(a1 + 20) = *(_DWORD *)(a3 + 24);
  *(_DWORD *)(a1 + 28) = vox::VoxMSWavSubDecoderPCM::GetDataSize((vox::VoxMSWavSubDecoderPCM *)a1)
                       / (*(_DWORD *)(a1 + 16)
                        * (*(int *)(a1 + 24) >> 3));
  vox::VoxMSWavSubDecoder::GoToNextDataChunk((vox::VoxMSWavSubDecoder *)a1);
  return a1;
}


// ===== 876298 get_stb_vorbis_struct_size(void) =====
int get_stb_vorbis_struct_size()
{
  return 1448;
}


// ===== 8762a0 stb_vorbis_get_stream_offset(stb_vorbis *) =====
int __fastcall stb_vorbis_get_stream_offset(int a1)
{
  int v1; // r3

  if ( a1 && (v1 = *(_DWORD *)(a1 + 20)) != 0 )
    return (*(int (__fastcall **)(_DWORD))(*(_DWORD *)v1 + 24))(*(_DWORD *)(a1 + 20));
  else
    return 0;
}


// ===== 8762d4 stb_vorbis_get_channel(stb_vorbis *) =====
int __fastcall stb_vorbis_get_channel(int result)
{
  if ( result )
    return *(_DWORD *)(result + 4);
  return result;
}


// ===== 8762e0 stb_vorbis_get_previous_window(stb_vorbis *,int) =====
int __fastcall stb_vorbis_get_previous_window(int a1, int a2)
{
  if ( !a1 )
    return 0;
  if ( *(_DWORD *)(a1 + 4) <= a2 )
    return 0;
  return a1 + 4 * (a2 + 236);
}


// ===== 87630c stb_vorbis_get_buffer(stb_vorbis *,int) =====
int __fastcall stb_vorbis_get_buffer(int a1, int a2)
{
  if ( !a1 )
    return 0;
  if ( *(_DWORD *)(a1 + 4) <= a2 )
    return 0;
  return a1 + 4 * (a2 + 204);
}


// ===== 876338 stb_vorbis_set_stream(stb_vorbis *,vox::StreamCursorInterface *) =====
int __fastcall stb_vorbis_set_stream(int result, int a2)
{
  bool v2; // zf

  v2 = a2 == 0;
  if ( a2 )
    v2 = result == 0;
  if ( !v2 )
    *(_DWORD *)(result + 20) = a2;
  return result;
}


// ===== 876348 stb_vorbis_get_blocksize_1(stb_vorbis *) =====
int __fastcall stb_vorbis_get_blocksize_1(int result)
{
  if ( result )
    return *(_DWORD *)(result + 132);
  return result;
}


// ===== 876354 stb_vorbis_copy(stb_vorbis *,stb_vorbis *) =====
void *__fastcall stb_vorbis_copy(void *a1, const void *a2)
{
  return memcpy(a1, a2, 0x5A8u);
}


// ===== 876364 bit_reverse(uint) =====
int __fastcall bit_reverse(unsigned int a1)
{
  unsigned int v1; // r3
  unsigned int v2; // r1
  unsigned int v3; // r3

  v1 = (2 * (a1 & 0x55555555)) | ((a1 & 0xAAAAAAAA) >> 1);
  v2 = (4 * (v1 & 0x33333333)) | ((v1 & 0xCCCCCCCC) >> 2);
  v3 = (16 * (v2 & 0xF0F0F0F)) | ((v2 & 0xF0F0F0F0) >> 4);
  return __ROR4__(((v3 & 0xFF00FF) << 8) | ((v3 & 0xFF00FFFF) >> 8), 16);
}


// ===== 8763e0 ilog(int) =====
int __fastcall ilog(int a1)
{
  if ( (unsigned int)a1 >= 0x4000 )
  {
    if ( (unsigned int)a1 >= 0x1000000 )
    {
      if ( (unsigned int)a1 <= 0x1FFFFFFF )
      {
        return ilog(int)::log2_4[a1 >> 25] + 25;
      }
      else if ( a1 >= 0 )
      {
        return ilog(int)::log2_4[a1 >> 30] + 30;
      }
      else
      {
        return 0;
      }
    }
    else if ( (unsigned int)a1 >= 0x80000 )
    {
      return ilog(int)::log2_4[a1 >> 20] + 20;
    }
    else
    {
      return ilog(int)::log2_4[a1 >> 15] + 15;
    }
  }
  else if ( (unsigned int)a1 <= 0xF )
  {
    return ilog(int)::log2_4[a1];
  }
  else if ( (unsigned int)a1 >= 0x200 )
  {
    return ilog(int)::log2_4[a1 >> 10] + 10;
  }
  else
  {
    return ilog(int)::log2_4[a1 >> 5] + 5;
  }
}


// ===== 8764d8 uint32_compare(void const*,void const*) =====
int __fastcall uint32_compare(_DWORD *a1, _DWORD *a2)
{
  if ( *a1 >= *a2 )
    return *a1 > *a2;
  else
    return -1;
}


// ===== 8764f8 point_compare(void const*,void const*) =====
int __fastcall point_compare(unsigned __int16 *a1, unsigned __int16 *a2)
{
  unsigned int v2; // r3
  unsigned int v3; // r2

  v2 = *a1;
  v3 = *a2;
  if ( v2 >= v3 )
    return v2 > v3;
  else
    return -1;
}


// ===== 876518 imdct_step3_iter0_loop(int,float *,int,int,float *) =====
float __fastcall imdct_step3_iter0_loop(float result, float *a2, int a3, int a4, float *a5)
{
  int v5; // r4
  float *v7; // r5
  float *v8; // r6
  float v9; // r8
  float v10; // r0
  float v11; // r8
  float v12; // r0
  float v13; // r8
  float v14; // r0
  float v15; // r8
  float v16; // r0

  v5 = SLODWORD(result) >> 2;
  if ( SLODWORD(result) >> 2 > 0 )
  {
    v7 = &a2[a3];
    v8 = &v7[a4];
    do
    {
      v9 = *v7 - *v8;
      v10 = *(v7 - 1) - *(v8 - 1);
      *v7 = *v7 + *v8;
      *(v7 - 1) = *(v7 - 1) + *(v8 - 1);
      *v8 = (float)(v9 * *a5) - (float)(v10 * a5[1]);
      *(v8 - 1) = (float)(v10 * *a5) + (float)(v9 * a5[1]);
      v11 = *(v7 - 2) - *(v8 - 2);
      v12 = *(v7 - 3) - *(v8 - 3);
      *(v7 - 2) = *(v7 - 2) + *(v8 - 2);
      *(v7 - 3) = *(v7 - 3) + *(v8 - 3);
      *(v8 - 2) = (float)(v11 * a5[8]) - (float)(v12 * a5[9]);
      *(v8 - 3) = (float)(v12 * a5[8]) + (float)(v11 * a5[9]);
      v13 = *(v7 - 4) - *(v8 - 4);
      v14 = *(v7 - 5) - *(v8 - 5);
      *(v7 - 4) = *(v7 - 4) + *(v8 - 4);
      *(v7 - 5) = *(v7 - 5) + *(v8 - 5);
      *(v8 - 4) = (float)(v13 * a5[16]) - (float)(v14 * a5[17]);
      *(v8 - 5) = (float)(v14 * a5[16]) + (float)(v13 * a5[17]);
      v15 = *(v7 - 6) - *(v8 - 6);
      v16 = *(v7 - 7) - *(v8 - 7);
      *(v7 - 6) = *(v7 - 6) + *(v8 - 6);
      *(v7 - 7) = *(v7 - 7) + *(v8 - 7);
      *(v8 - 6) = (float)(v15 * a5[24]) - (float)(v16 * a5[25]);
      result = (float)(v16 * a5[24]) + (float)(v15 * a5[25]);
      --v5;
      *(v8 - 7) = result;
      a5 += 32;
      v7 -= 8;
      v8 -= 8;
    }
    while ( v5 );
  }
  return result;
}


// ===== 8767cc imdct_step3_inner_r_loop(int,float *,int,int,float *,int) =====
float __fastcall imdct_step3_inner_r_loop(int a1, float *a2, int a3, int a4, float *a5, float a6)
{
  int v6; // r12
  bool v7; // cc
  float *v8; // r6
  float result; // r0
  float *v10; // r4
  float *v11; // r10
  float *v12; // r5
  float *v13; // r8
  float *v14; // r7
  float v15; // r9
  float v16; // r0
  float v17; // r9
  float v18; // r0
  float v19; // r9
  float v20; // r0
  float v21; // r9
  float v22; // r0
  int v23; // [sp+Ch] [bp-8h]

  v6 = a1 >> 2;
  v7 = a1 >> 2 <= 0;
  v8 = a5;
  result = a6;
  if ( !v7 )
  {
    v10 = &a2[a3];
    v11 = &a5[LODWORD(a6)];
    v12 = &v10[a4];
    v13 = &a5[2 * LODWORD(a6)];
    v14 = &a5[3 * LODWORD(a6)];
    v23 = 16 * LODWORD(a6);
    do
    {
      v15 = *v10 - *v12;
      v16 = *(v10 - 1) - *(v12 - 1);
      *v10 = *v10 + *v12;
      *(v10 - 1) = *(v10 - 1) + *(v12 - 1);
      *v12 = (float)(v15 * *v8) - (float)(v16 * v8[1]);
      *(v12 - 1) = (float)(v16 * *v8) + (float)(v15 * v8[1]);
      v8 = (float *)((char *)v8 + v23);
      v17 = *(v10 - 2) - *(v12 - 2);
      v18 = *(v10 - 3) - *(v12 - 3);
      *(v10 - 2) = *(v10 - 2) + *(v12 - 2);
      *(v10 - 3) = *(v10 - 3) + *(v12 - 3);
      *(v12 - 2) = (float)(v17 * *v11) - (float)(v18 * v11[1]);
      *(v12 - 3) = (float)(v18 * *v11) + (float)(v17 * v11[1]);
      v11 = (float *)((char *)v11 + v23);
      v19 = *(v10 - 4) - *(v12 - 4);
      v20 = *(v10 - 5) - *(v12 - 5);
      *(v10 - 4) = *(v10 - 4) + *(v12 - 4);
      *(v10 - 5) = *(v10 - 5) + *(v12 - 5);
      *(v12 - 4) = (float)(v19 * *v13) - (float)(v20 * v13[1]);
      *(v12 - 5) = (float)(v20 * *v13) + (float)(v19 * v13[1]);
      v13 = (float *)((char *)v13 + v23);
      v21 = *(v10 - 6) - *(v12 - 6);
      v22 = *(v10 - 7) - *(v12 - 7);
      *(v10 - 6) = *(v10 - 6) + *(v12 - 6);
      *(v10 - 7) = *(v10 - 7) + *(v12 - 7);
      v10 -= 8;
      *(v12 - 6) = (float)(v21 * *v14) - (float)(v22 * v14[1]);
      result = (float)(v22 * *v14) + (float)(v21 * v14[1]);
      --v6;
      *(v12 - 7) = result;
      v12 -= 8;
      v14 = (float *)((char *)v14 + v23);
    }
    while ( v6 );
  }
  return result;
}


// ===== 876b34 iter_54(float *) =====
float __fastcall iter_54(float *a1)
{
  float v2; // r5
  float v3; // r7
  float v4; // r0
  float v5; // r6
  float v6; // r1
  float v7; // r0
  float v8; // r8
  float v9; // r7
  float v10; // r5
  float v11; // r7
  float v12; // r0

  v2 = *a1 - *(a1 - 4);
  v3 = *a1 + *(a1 - 4);
  v4 = *(a1 - 2) + *(a1 - 6);
  v5 = *(a1 - 2) - *(a1 - 6);
  *a1 = v3 + v4;
  v6 = *(a1 - 7);
  *(a1 - 2) = v3 - v4;
  v7 = *(a1 - 3) - v6;
  *(a1 - 4) = v2 + v7;
  v8 = *(a1 - 1);
  v9 = *(a1 - 5);
  *(a1 - 6) = v2 - v7;
  v10 = v8 - v9;
  v11 = v8 + v9;
  v12 = *(a1 - 3) + *(a1 - 7);
  *(a1 - 1) = v11 + v12;
  *(a1 - 3) = v11 - v12;
  *(a1 - 5) = v10 - v5;
  *(a1 - 7) = v10 + v5;
  return v10 + v5;
}


// ===== 876c58 vorbis_finish_frame(stb_vorbis *,int,int,int) =====
int __fastcall vorbis_finish_frame(_DWORD *a1, int a2, int a3, int a4)
{
  int v4; // r11
  int v5; // r9
  int v7; // r3
  _DWORD *v8; // r1
  int v9; // r3
  int v10; // r2
  _DWORD *v11; // r10
  int v12; // r5
  int i; // r4
  int v14; // r7
  float v15; // r8
  float v16; // r0
  _DWORD *v18; // r2
  int j; // r4
  int v20; // r1
  int v21; // r3
  int result; // r0
  int v23; // [sp+4h] [bp-20h]
  int v24; // [sp+Ch] [bp-18h]
  int v28; // [sp+1Ch] [bp-8h]

  v5 = a1[252];
  if ( v5 )
  {
    v8 = a1;
    v9 = 2 * v5;
    if ( 2 * v5 == a1[32] )
    {
      v4 = a1[277];
    }
    else
    {
      v10 = a1[33];
      if ( v9 == v10 )
        v8 = a1;
      else
        v4 = 0;
      if ( v9 == v10 )
        v4 = v8[278];
    }
    v7 = a1[1];
    if ( v7 > 0 )
    {
      v11 = a1;
      v24 = 0;
      v23 = 4 * a3;
      v28 = a4;
      do
      {
        if ( v5 > 0 )
        {
          v12 = 0;
          for ( i = 0; i != v5; ++i )
          {
            v14 = v11[204];
            v15 = *(float *)(v14 + v12 + v23) * *(float *)(v4 + 4 * i);
            v16 = *(float *)(v11[236] + 4 * i) * *(float *)(v4 + 4 * v5 - v12 - 4);
            *(float *)(v14 + v12 + v23) = v15 + v16;
            v12 += 4;
          }
          v7 = a1[1];
        }
        ++v11;
      }
      while ( v7 > ++v24 );
      a4 = v28;
      v5 = a1[252];
    }
  }
  else
  {
    v7 = a1[1];
  }
  a1[252] = a2 - a4;
  if ( v7 > 0 )
  {
    v18 = a1;
    for ( j = 0; j < v7; ++j )
    {
      if ( a2 > a4 )
      {
        v20 = a4;
        v21 = 0;
        do
        {
          *(_DWORD *)(v18[236] + 4 * v21++) = *(_DWORD *)(v18[204] + 4 * v20);
          v20 = a4 + v21;
        }
        while ( v21 != a2 - a4 );
        v7 = a1[1];
      }
      ++v18;
    }
  }
  if ( !v5 )
    return 0;
  if ( a4 > a2 )
    result = a2 - a3;
  else
    result = a4 - a3;
  a1[358] += result;
  return result;
}


// ===== 876e18 stb_vorbis_get_sample_offset(stb_vorbis *) =====
int __fastcall stb_vorbis_get_sample_offset(int a1)
{
  if ( *(_DWORD *)(a1 + 1080) )
    return *(_DWORD *)(a1 + 1076);
  else
    return -1;
}


// ===== 876e2c stb_vorbis_get_info(stb_vorbis *) =====
_DWORD *__fastcall stb_vorbis_get_info(_DWORD *result, _DWORD *a2)
{
  result[1] = a2[1];
  *result = *a2;
  result[2] = a2[2];
  result[3] = a2[4];
  result[4] = a2[3];
  result[5] = (int)a2[33] >> 1;
  return result;
}


// ===== 876e64 stb_vorbis_get_error(stb_vorbis *) =====
int __fastcall stb_vorbis_get_error(int a1)
{
  int result; // r0

  result = *(_DWORD *)(a1 + 116);
  *(_DWORD *)(a1 + 116) = 0;
  return result;
}


// ===== 876e78 stb_vorbis_open_filename(char *,int *,stb_vorbis_alloc *) =====
int __fastcall stb_vorbis_open_filename(int a1, _DWORD *a2)
{
  if ( a2 )
    *a2 = 6;
  return 0;
}


// ===== 876e8c convert_samples_short(int,short **,int,int,float **,int,int) =====
int __fastcall convert_samples_short(int result, __int16 **a2, int a3, int a4, float **a5, int a6, int a7)
{
  _BOOL4 v8; // r3
  int v9; // r4
  int v10; // r4
  int v11; // r11
  int v12; // r7
  float *v13; // r6
  __int16 *v14; // r5
  int k; // r4
  int v16; // r0
  __int16 **v17; // r5
  int v18; // t1
  __int16 *v19; // r7
  int v20; // r5
  int v21; // r9
  int i; // r7
  int j; // r10
  int v24; // r0
  bool v25; // cc
  int v27; // [sp+4h] [bp-B0h]
  int v28; // [sp+8h] [bp-ACh]
  int v29; // [sp+Ch] [bp-A8h]
  int v30; // [sp+14h] [bp-A0h]
  int v31; // [sp+14h] [bp-A0h]
  __int16 *v33; // [sp+18h] [bp-9Ch]
  unsigned int v35; // [sp+20h] [bp-94h]
  int v36; // [sp+24h] [bp-90h]
  int v37; // [sp+28h] [bp-8Ch]
  char *v38; // [sp+2Ch] [bp-88h]
  _BYTE v39[132]; // [sp+30h] [bp-84h] BYREF

  v8 = result != a4;
  if ( result > 2 )
    v8 = 0;
  v30 = result;
  if ( v8 && a4 <= 6 )
  {
    if ( result > 0 )
    {
      v38 = (char *)&convert_samples_short(int,short **,int,int,float **,int,int)::channel_selector + 8 * result;
      v37 = a3;
      v36 = 4 * result;
      v35 = 0;
      do
      {
        result = v37 * 2;
        v29 = *(_DWORD *)&v38[v35];
        v19 = &a2[v35 / 4][v37];
        if ( a7 > 0 )
        {
          v20 = a6;
          v28 = 32;
          v31 = 0;
          do
          {
            LC_API_MEMSET_0(v39, 0, 0x80u);
            if ( a7 < v28 + v31 )
              v28 = a7 - v31;
            if ( a4 > 0 )
            {
              v21 = 0;
              v33 = v19;
              do
              {
                if ( (channel_position[6 * a4 + v21] & v29) != 0 && v28 > 0 )
                {
                  for ( i = 0; i != v28; ++i )
                    *(float *)&v39[i * 4] = *(float *)&v39[i * 4] + a5[v21][v20 + i];
                }
                ++v21;
              }
              while ( v21 != a4 );
              v19 = v33;
            }
            if ( v28 > 0 )
            {
              for ( j = 0; j != v28; ++j )
              {
                v24 = (int)(float)(*(float *)&v39[1 * j] * 32768.0);
                if ( (unsigned int)(v24 + 0x8000) > 0xFFFF )
                {
                  if ( v24 < 0 )
                    LOWORD(v24) = 0x8000;
                  else
                    LOWORD(v24) = 0x7FFF;
                }
                v19[j] = v24;
              }
            }
            v20 += 32;
            result = v31 + 32;
            v25 = a7 <= v31 + 32;
            v31 += 32;
            v19 += 32;
          }
          while ( !v25 );
        }
        v35 += 4;
      }
      while ( v35 != v36 );
    }
  }
  else
  {
    v9 = a4;
    if ( a4 >= result )
      v9 = result;
    v27 = v9;
    if ( v9 > 0 )
    {
      v11 = 0;
      v12 = 0;
      do
      {
        v13 = a5[v11];
        v14 = &a2[v11][a3];
        if ( a7 > 0 )
        {
          for ( k = 0; k != a7; ++k )
          {
            v16 = (int)(float)(v13[k] * 32768.0);
            if ( (unsigned int)(v16 + 0x8000) > 0xFFFF )
            {
              if ( v16 < 0 )
                LOWORD(v16) = 0x8000;
              else
                LOWORD(v16) = 0x7FFF;
            }
            v14[k] = v16;
          }
        }
        result = v27;
        ++v12;
        ++v11;
      }
      while ( v12 != v27 );
      v10 = v12;
    }
    else
    {
      v10 = 0;
    }
    if ( v30 > v10 )
    {
      v17 = &a2[v10];
      do
      {
        v18 = (int)*v17++;
        ++v10;
        result = (int)LC_API_MEMSET_0((void *)(v18 + 2 * a3), 0, 2 * a7);
      }
      while ( v10 != v30 );
    }
  }
  return result;
}


// ===== 8771bc convert_channels_short_interleaved(int,short *,int,float **,int,int) =====
int __fastcall convert_channels_short_interleaved(int result, int a2, int a3, float **a4, int a5, int a6)
{
  _BOOL4 v7; // r2
  int v8; // r9
  float *v9; // r10
  int v10; // r3
  int v11; // r7
  float *v12; // r6
  float *v13; // r8
  int v14; // r6
  int v15; // r0
  bool v16; // cc
  int v17; // r9
  int v18; // r4
  int v19; // r10
  int v20; // r6
  int v21; // r5
  int v22; // r2
  int v23; // r3
  int v24; // r7
  int v25; // r6
  float *v26; // r8
  int v27; // r7
  float *v28; // r6
  float *v29; // r8
  int v30; // [sp+4h] [bp-B0h]
  int v31; // [sp+4h] [bp-B0h]
  int v32; // [sp+8h] [bp-ACh]
  int v34; // [sp+Ch] [bp-A8h]
  int v35; // [sp+14h] [bp-A0h]
  int v36; // [sp+18h] [bp-9Ch]
  int v38; // [sp+24h] [bp-90h]
  int v39; // [sp+28h] [bp-8Ch]
  int v40; // [sp+2Ch] [bp-88h]
  _BYTE v41[132]; // [sp+30h] [bp-84h] BYREF

  v7 = result != a3;
  if ( result > 2 )
    v7 = 0;
  v40 = result;
  v38 = a2;
  if ( v7 && a3 <= 6 )
  {
    if ( result > 0 )
    {
      v39 = 0;
      while ( a6 <= 0 )
      {
LABEL_30:
        if ( ++v39 == v40 )
          return result;
      }
      v35 = 4 * a5;
      v32 = 16;
      v36 = 0;
      while ( 1 )
      {
        LC_API_MEMSET_0(v41, 0, 0x80u);
        if ( a6 < v36 + v32 )
          v32 = a6 - v36;
        if ( a3 > 0 )
          break;
LABEL_21:
        if ( 2 * v32 > 0 )
        {
          v14 = 0;
          do
          {
            v15 = (int)(float)(*(float *)&v41[2 * v14] * 32768.0);
            if ( (unsigned int)(v15 + 0x8000) > 0xFFFF )
            {
              if ( v15 < 0 )
                LOWORD(v15) = 0x8000;
              else
                LOWORD(v15) = 0x7FFF;
            }
            *(_WORD *)(v38 + 4 * v36 + v14) = v15;
            v14 += 2;
          }
          while ( v14 != 4 * v32 );
        }
        result = a6;
        v16 = a6 <= v36 + 16;
        v36 += 16;
        v35 += 64;
        if ( v16 )
          goto LABEL_30;
      }
      v30 = 0;
      v8 = 0;
      v9 = (float *)&v41[8 * v32];
      while ( 1 )
      {
        v10 = channel_position[6 * a3 + v8] & 6;
        if ( v10 != 6 )
          break;
        if ( v32 <= 0 )
        {
LABEL_15:
          ++v8;
          ++v30;
          if ( v8 == a3 )
            goto LABEL_21;
        }
        else
        {
          v11 = v35;
          v12 = (float *)v41;
          v13 = a4[v30];
          do
          {
            *v12 = *v12 + *(float *)((char *)v13 + v11);
            v12[1] = v12[1] + *(float *)((char *)v13 + v11);
            v12 += 2;
            v11 += 4;
          }
          while ( v12 != v9 );
          ++v8;
          ++v30;
          if ( v8 == a3 )
            goto LABEL_21;
        }
      }
      if ( v10 == 2 )
      {
        if ( v32 > 0 )
        {
          v24 = v35;
          v25 = 0;
          v26 = a4[v30];
          do
          {
            *(float *)&v41[v25] = *(float *)&v41[v25] + *(float *)((char *)v26 + v24);
            v25 += 8;
            v24 += 4;
          }
          while ( v25 != 8 * v32 );
        }
      }
      else if ( v10 == 4 && v32 > 0 )
      {
        v27 = v35;
        v28 = (float *)v41;
        v29 = a4[v30];
        do
        {
          v28[1] = v28[1] + *(float *)((char *)v29 + v27);
          v28 += 2;
          v27 += 4;
        }
        while ( v28 != v9 );
      }
      goto LABEL_15;
    }
  }
  else
  {
    v17 = a3;
    if ( a3 >= result )
      v17 = result;
    if ( a6 > 0 )
    {
      v18 = a5;
      v31 = 0;
      v34 = result + 1;
      v19 = a2;
      v20 = 2 * v17;
      v21 = a5;
      do
      {
        if ( v17 > 0 )
          v18 = 0;
        else
          a2 = 0;
        if ( v17 > 0 )
        {
          do
          {
            result = (int)(float)((*(float **)((char *)a4 + 2 * v18))[v21] * 32768.0);
            if ( (unsigned int)(result + 0x8000) > 0xFFFF )
            {
              if ( result < 0 )
                result = 0x8000;
              else
                result = 0x7FFF;
            }
            else
            {
              result = (unsigned __int16)result;
            }
            *(_WORD *)(v19 + v18) = result;
            v18 += 2;
          }
          while ( v18 != v20 );
          a2 = v17;
          v19 += v20;
        }
        if ( v40 > a2 )
        {
          v22 = a2;
          v23 = 0;
          do
          {
            ++v22;
            *(_WORD *)(v19 + v23) = 0;
            v23 += 2;
          }
          while ( v22 != v40 );
          result = v34;
          v19 += 2 * (v34 + ~a2);
        }
        ++v21;
        a2 = ++v31;
      }
      while ( v31 != a6 );
    }
  }
  return result;
}


// ===== 877590 vorbis_init(stb_vorbis *,stb_vorbis_alloc *) =====
void *__fastcall vorbis_init(_DWORD *a1, _DWORD *a2)
{
  void *result; // r0
  unsigned int v5; // r3

  result = LC_API_MEMSET_0(a1, 0, 0x5A8u);
  if ( a2 )
  {
    a1[24] = *a2;
    v5 = (a2[1] + 3) & 0xFFFFFFFC;
    a1[27] = v5;
    a1[25] = v5;
  }
  a1[5] = 0;
  a1[359] = -1;
  a1[28] = 0;
  a1[29] = 0;
  a1[8] = 0;
  a1[35] = 0;
  a1[7] = 0;
  return result;
}


// ===== 8775f4 setup_temp_malloc(stb_vorbis *,int) =====
void *__fastcall setup_temp_malloc(_DWORD *a1, int a2)
{
  int v2; // r3
  size_t v3; // r1
  signed int v4; // r2

  v2 = a1[24];
  v3 = (a2 + 3) & 0xFFFFFFFC;
  if ( !v2 )
    return VoxAlloc(v3, "..\\..\\lib\\VOX\\project\\vs2005/..\\..\\src\\stb_vorbis.cpp", "setup_temp_malloc", 0x29Bu);
  v4 = a1[27] - v3;
  if ( v4 < a1[26] )
  {
    if ( v3 )
      return VoxAlloc(v3, "..\\..\\lib\\VOX\\project\\vs2005/..\\..\\src\\stb_vorbis.cpp", "setup_temp_malloc", 0x297u);
    else
      return nullptr;
  }
  else
  {
    a1[27] = v4;
    return (void *)(v2 + v4);
  }
}


// ===== 877680 setup_malloc(stb_vorbis *,int) =====
void *__fastcall setup_malloc(_DWORD *a1, int a2)
{
  int v2; // r3
  size_t v3; // r1
  int v4; // r2

  v2 = a1[24];
  v3 = (a2 + 3) & 0xFFFFFFFC;
  a1[2] += v3;
  if ( v2 )
  {
    v4 = a1[26];
    if ( (signed int)(v3 + v4) <= a1[27] )
    {
      a1[26] = v3 + v4;
      return (void *)(v2 + v4);
    }
    else
    {
      if ( !v3 )
        return nullptr;
      return VoxAlloc(v3, "..\\..\\lib\\VOX\\project\\vs2005/..\\..\\src\\stb_vorbis.cpp", "setup_malloc", 0x281u);
    }
  }
  else
  {
    if ( !v3 )
      return nullptr;
    return VoxAlloc(v3, "..\\..\\lib\\VOX\\project\\vs2005/..\\..\\src\\stb_vorbis.cpp", "setup_malloc", 0x285u);
  }
}


// ===== 877738 setup_temp_free(stb_vorbis *,void *,uint) =====
void __fastcall setup_temp_free(_DWORD *a1, void *p, int a3)
{
  int v3; // r3

  v3 = a1[24];
  if ( v3 && v3 <= (int)p && (int)p < v3 + a1[25] )
    a1[27] += (a3 + 3) & 0xFFFFFFFC;
  else
    VoxFree(p);
}


// ===== 87777c setup_free(stb_vorbis *,void *) =====
void __fastcall setup_free(int a1, void *p)
{
  int v2; // r3

  v2 = *(_DWORD *)(a1 + 96);
  if ( !v2 || v2 > (int)p || (int)p >= v2 + *(_DWORD *)(a1 + 100) )
    VoxFree(p);
}


// ===== 8777a8 getn(stb_vorbis *,uchar *,int) =====
unsigned int __fastcall getn(int a1, void *a2, size_t a3)
{
  const void *v3; // r5
  unsigned int result; // r0

  v3 = *(const void **)(a1 + 32);
  if ( v3 )
  {
    if ( *(_DWORD *)(a1 + 40) >= (unsigned int)v3 + a3 )
    {
      memcpy(a2, v3, a3);
      *(_DWORD *)(a1 + 32) += a3;
      return 1;
    }
    else
    {
      *(_DWORD *)(a1 + 112) = 1;
      return 0;
    }
  }
  else
  {
    result = fread(a2, a3, 1u, *(vox::StreamCursorInterface **)(a1 + 20));
    if ( result != 1 )
    {
      *(_DWORD *)(a1 + 112) = 1;
      return 0;
    }
  }
  return result;
}


// ===== 877828 get8(stb_vorbis *) =====
int *__fastcall get8(int *result)
{
  unsigned __int8 *v1; // r5
  int *v2; // r4
  unsigned int v3; // r3
  bool v4; // cf
  int *v5; // t1

  v1 = (unsigned __int8 *)result[8];
  v2 = result;
  if ( v1 )
  {
    v3 = result[10];
    v4 = (unsigned int)v1 >= v3;
    if ( (unsigned int)v1 >= v3 )
    {
      result[28] = 1;
    }
    else
    {
      v5 = (int *)*v1++;
      result = v5;
    }
    if ( v4 )
      return nullptr;
    else
      v2[8] = (int)v1;
  }
  else
  {
    result = (int *)fgetc(result[5]);
    if ( result == (int *)-1 )
    {
      v2[28] = 1;
      return nullptr;
    }
    else
    {
      return (int *)(unsigned __int8)result;
    }
  }
  return result;
}


// ===== 87787c get32(stb_vorbis *) =====
int __fastcall get32(int *a1)
{
  int *v2; // r5
  int *v3; // r6
  int v4; // r6

  v2 = get8(a1);
  v3 = get8(a1);
  v4 = ((_DWORD)get8(a1) << 16) + ((_DWORD)v3 << 8);
  return (int)&v2[0x400000 * (_DWORD)get8(a1)] + v4;
}


// ===== 8778bc start_page_no_capturepattern(stb_vorbis *) =====
unsigned int __fastcall start_page_no_capturepattern(int a1)
{
  unsigned int result; // r0
  int v3; // r5
  int v4; // r6
  int *v5; // r0
  bool v6; // zf
  int v7; // r3
  int v8; // r12
  int v9; // r1
  int v10; // r2
  int i; // r3
  int v12; // r3

  if ( get8((int *)a1) )
  {
    *(_DWORD *)(a1 + 116) = 31;
    return 0;
  }
  else
  {
    *(_BYTE *)(a1 + 1391) = (unsigned __int8)get8((int *)a1);
    v3 = get32((int *)a1);
    v4 = get32((int *)a1);
    get32((int *)a1);
    *(_DWORD *)(a1 + 1128) = get32((int *)a1);
    get32((int *)a1);
    v5 = get8((int *)a1);
    *(_DWORD *)(a1 + 1132) = v5;
    result = getn(a1, (void *)(a1 + 1136), (size_t)v5);
    if ( result )
    {
      v6 = v4 == -1;
      if ( v4 == -1 )
        v6 = v3 == -1;
      *(_DWORD *)(a1 + 1420) = -2;
      if ( !v6 )
      {
        v7 = *(_DWORD *)(a1 + 1132);
        do
          --v7;
        while ( *(unsigned __int8 *)(a1 + v7 + 1136) == 255 );
        *(_DWORD *)(a1 + 1420) = v7;
        *(_DWORD *)(a1 + 1424) = v3;
      }
      if ( *(_BYTE *)(a1 + 1393) )
      {
        v8 = *(_DWORD *)(a1 + 1132);
        if ( v8 > 0 )
        {
          v9 = 0;
          v10 = a1;
          for ( i = 0; i != v8; ++i )
          {
            v9 += *(unsigned __int8 *)(v10 + 1136);
            ++v10;
          }
        }
        else
        {
          v9 = 0;
        }
        v12 = *(_DWORD *)(a1 + 52);
        *(_DWORD *)(a1 + 72) = v3;
        *(_DWORD *)(a1 + 68) = 0;
        *(_DWORD *)(a1 + 60) = v8 + 27 + v9 + v12;
        *(_DWORD *)(a1 + 56) = v12;
        *(_DWORD *)(a1 + 64) = v12;
      }
      *(_DWORD *)(a1 + 1396) = 0;
      return 1;
    }
    else
    {
      *(_DWORD *)(a1 + 116) = 10;
    }
  }
  return result;
}


// ===== 8779fc start_page(stb_vorbis *) =====
unsigned int __fastcall start_page(int *a1)
{
  if ( get8(a1) == (int *)((char *)&dword_4C + 3)
    && get8(a1) == (int *)((char *)&dword_64 + 3)
    && get8(a1) == (int *)((char *)&dword_64 + 3)
    && get8(a1) == (int *)((char *)&dword_50 + 3) )
  {
    return start_page_no_capturepattern((int)a1);
  }
  a1[29] = 30;
  return 0;
}


// ===== 877a5c next_segment(stb_vorbis *) =====
unsigned int __fastcall next_segment(int a1)
{
  int v2; // r3
  unsigned int v3; // r2
  int v4; // r1
  int v5; // r3
  bool v6; // cc
  unsigned int result; // r0

  if ( *(_DWORD *)(a1 + 1400) )
    return 0;
  v2 = *(_DWORD *)(a1 + 1396);
  if ( v2 == -1 )
  {
    *(_DWORD *)(a1 + 1404) = *(_DWORD *)(a1 + 1132) - 1;
    result = start_page((int *)a1);
    if ( !result )
    {
      *(_DWORD *)(a1 + 1400) = 1;
      return result;
    }
    result = *(_BYTE *)(a1 + 1391) & 1;
    if ( (*(_BYTE *)(a1 + 1391) & 1) == 0 )
    {
      *(_DWORD *)(a1 + 116) = 32;
      return result;
    }
    v2 = *(_DWORD *)(a1 + 1396);
  }
  v3 = *(unsigned __int8 *)(a1 + v2 + 1136);
  v4 = v2 + 1;
  *(_DWORD *)(a1 + 1396) = v2 + 1;
  if ( v3 != 255 )
    *(_DWORD *)(a1 + 1404) = v2;
  v5 = *(_DWORD *)(a1 + 1132);
  if ( v3 != 255 )
    *(_DWORD *)(a1 + 1400) = 1;
  v6 = v4 < v5;
  if ( v4 >= v5 )
    v5 = -1;
  result = v3;
  if ( !v6 )
    *(_DWORD *)(a1 + 1396) = v5;
  *(_BYTE *)(a1 + 1392) = v3;
  return result;
}


// ===== 877b00 start_packet(stb_vorbis *) =====
unsigned int __fastcall start_packet(int a1)
{
  unsigned int result; // r0

  while ( *(_DWORD *)(a1 + 1396) == -1 )
  {
    result = start_page((int *)a1);
    if ( !result )
      return result;
    if ( (*(_BYTE *)(a1 + 1391) & 1) != 0 )
    {
      *(_DWORD *)(a1 + 116) = 32;
      return 0;
    }
  }
  *(_BYTE *)(a1 + 1392) = 0;
  *(_DWORD *)(a1 + 1400) = 0;
  *(_DWORD *)(a1 + 1412) = 0;
  *(_DWORD *)(a1 + 1416) = 0;
  return 1;
}


// ===== 877b5c get8_packet_raw(stb_vorbis *) =====
int *__fastcall get8_packet_raw(int a1)
{
  char v1; // r3
  int v3; // r2

  v1 = *(_BYTE *)(a1 + 1392);
  if ( v1 )
    goto LABEL_2;
  if ( !*(_DWORD *)(a1 + 1400) && next_segment(a1) )
  {
    v1 = *(_BYTE *)(a1 + 1392);
LABEL_2:
    v3 = *(_DWORD *)(a1 + 1416);
    *(_BYTE *)(a1 + 1392) = v1 - 1;
    *(_DWORD *)(a1 + 1416) = v3 + 1;
    return get8((int *)a1);
  }
  return (int *)-1;
}


// ===== 877bb8 get_bits(stb_vorbis *,int) =====
int __fastcall get_bits(int a1, int a2)
{
  int v2; // r3
  unsigned int v5; // r2
  int v7; // r3
  int v8; // r0
  int *v9; // r0
  int v10; // r6

  v2 = *(_DWORD *)(a1 + 1412);
  if ( v2 < 0 )
    return 0;
  if ( v2 >= a2 )
  {
LABEL_6:
    v5 = *(_DWORD *)(a1 + 1408);
    *(_DWORD *)(a1 + 1412) = v2 - a2;
    *(_DWORD *)(a1 + 1408) = v5 >> a2;
    return v5 & ~(-1 << a2);
  }
  if ( a2 <= 24 )
  {
    if ( v2 || (*(_DWORD *)(a1 + 1408) = 0, a2 > 0) )
    {
      do
      {
        v9 = get8_packet_raw(a1);
        if ( v9 == (int *)-1 )
        {
          *(_DWORD *)(a1 + 1412) = -1;
          return 0;
        }
        v7 = *(_DWORD *)(a1 + 1412);
        v8 = *(_DWORD *)(a1 + 1408) + ((_DWORD)v9 << v7);
        v2 = v7 + 8;
        *(_DWORD *)(a1 + 1408) = v8;
        *(_DWORD *)(a1 + 1412) = v2;
      }
      while ( a2 > v2 );
      if ( v2 < 0 )
        return 0;
    }
    goto LABEL_6;
  }
  v10 = ((int (*)(void))get_bits)();
  return v10 + (get_bits(a1, a2 - 24) << 24);
}


// ===== 877c80 prep_huffman(stb_vorbis *) =====
int *__fastcall prep_huffman(int *result)
{
  int v1; // r3
  int v2; // r4
  int v3; // r2

  v1 = result[353];
  v2 = (int)result;
  if ( v1 <= 24 )
  {
    if ( !v1 )
      result[352] = 0;
    do
    {
      result = (int *)v2;
      if ( *(_DWORD *)(v2 + 1400) && !*(_BYTE *)(v2 + 1392) )
        break;
      result = get8_packet_raw(v2);
      if ( result == (int *)-1 )
        break;
      v3 = *(_DWORD *)(v2 + 1412);
      result = (int *)(*(_DWORD *)(v2 + 1408) + ((_DWORD)result << v3));
      *(_DWORD *)(v2 + 1408) = result;
      *(_DWORD *)(v2 + 1412) = v3 + 8;
    }
    while ( v3 + 8 <= 24 );
  }
  return result;
}


// ===== 877ce8 maybe_start_packet(stb_vorbis *) =====
unsigned int __fastcall maybe_start_packet(int a1)
{
  int *v3; // r0

  if ( *(_DWORD *)(a1 + 1396) != -1 )
    return start_packet(a1);
  v3 = get8((int *)a1);
  if ( !*(_DWORD *)(a1 + 112) )
  {
    if ( v3 == (int *)((char *)&dword_4C + 3)
      && get8((int *)a1) == (int *)((char *)&dword_64 + 3)
      && get8((int *)a1) == (int *)((char *)&dword_64 + 3)
      && get8((int *)a1) == (int *)((char *)&dword_50 + 3) )
    {
      if ( start_page_no_capturepattern(a1) )
      {
        if ( (*(_BYTE *)(a1 + 1391) & 1) == 0 )
          return start_packet(a1);
        *(_DWORD *)(a1 + 116) = 32;
        *(_BYTE *)(a1 + 1392) = 0;
        *(_DWORD *)(a1 + 1400) = 0;
      }
    }
    else
    {
      *(_DWORD *)(a1 + 116) = 30;
    }
  }
  return 0;
}


// ===== 877d90 vorbis_decode_initial(stb_vorbis *,int *,int *,int *,int *,int *) =====
int __fastcall vorbis_decode_initial(_DWORD *a1, int *a2, int *a3, int *a4, int *a5, int *a6)
{
  int v8; // r3
  int *v11; // r0
  int v13; // r0
  int bits; // r0
  int v15; // r8
  int v16; // r11
  int v17; // r9
  bool v18; // r3
  int v19; // r2
  int v20; // r3
  int v21; // r9
  int v22; // r0
  _BOOL4 v23; // r1
  int v24; // [sp+4h] [bp-8h]

  v8 = a1[28];
  a1[361] = 0;
  a1[360] = 0;
  if ( !v8 )
  {
    while ( 1 )
    {
      if ( !maybe_start_packet((int)a1) )
        return 0;
      if ( !get_bits((int)a1, 1) )
        break;
      do
      {
        v11 = get8_packet_raw((int)a1);
        a1[353] = 0;
      }
      while ( v11 != (int *)-1 );
      if ( a1[28] )
        return 0;
    }
    v13 = ilog(a1[106] - 1);
    bits = get_bits((int)a1, v13);
    v15 = bits;
    if ( bits == -1 || bits >= a1[106] )
      return 0;
    *a6 = bits;
    v16 = (int)a1 + 6 * bits + 424;
    if ( *((_BYTE *)a1 + 6 * bits + 428) )
    {
      v17 = a1[33];
      v24 = get_bits((int)a1, 1);
      v22 = get_bits((int)a1, 1);
      v19 = v17 >> 1;
      v23 = v24 == 0;
      if ( !*(_BYTE *)(v16 + 4) )
        v23 = 0;
      if ( v23 )
      {
        v18 = v22 == 0;
        *a2 = (v17 - a1[32]) >> 2;
        *a3 = (v17 + a1[32]) >> 2;
        goto LABEL_12;
      }
      v18 = v22 == 0;
    }
    else
    {
      v17 = a1[32];
      v18 = 1;
      v19 = v17 >> 1;
    }
    *a2 = 0;
    *a3 = v19;
LABEL_12:
    if ( *((_BYTE *)a1 + 6 * v15 + 428) )
      v20 = v18;
    else
      v20 = 0;
    if ( v20 )
    {
      v21 = 3 * v17;
      *a4 = (v21 - a1[32]) >> 2;
      *a5 = (v21 + a1[32]) >> 2;
    }
    else
    {
      *a4 = v19;
      *a5 = v17;
    }
    return 1;
  }
  return 0;
}


// ===== 877f58 stb_vorbis_get_file_offset(stb_vorbis *) =====
int __fastcall stb_vorbis_get_file_offset(int *a1)
{
  int v1; // r3

  v1 = a1[8];
  if ( v1 )
    return v1 - a1[9];
  else
    return ftell(a1[5]) - a1[6];
}


// ===== 877f8c skip(stb_vorbis *,int) =====
int *__fastcall skip(int *result, int a2)
{
  int v2; // r5
  int *v3; // r4
  unsigned int v4; // r3
  unsigned int v5; // r5

  v2 = result[8];
  v3 = result;
  if ( v2 )
  {
    v4 = result[10];
    v5 = v2 + a2;
    result[8] = v5;
    if ( v5 >= v4 )
      result[28] = 1;
  }
  else
  {
    ftell(result[5]);
    return (int *)fseek(v3[5]);
  }
  return result;
}


// ===== 877fec set_file_offset(stb_vorbis *,uint) =====
int __fastcall set_file_offset(int *a1, unsigned int a2)
{
  int v2; // r3
  int result; // r0
  unsigned int v5; // r2
  unsigned int v6; // r3
  int v7; // r0
  _BOOL4 v8; // r2

  v2 = a1[8];
  result = 0;
  a1[28] = 0;
  if ( v2 )
  {
    v5 = a1[10];
    v6 = a1[9] + a2;
    if ( (v6 >= v5) | (a2 >> 31) )
    {
      a1[28] = 1;
      a1[8] = v5;
    }
    else
    {
      a1[8] = v6;
      return 1;
    }
  }
  else
  {
    v7 = a1[5];
    v8 = __CFADD__(a2, a1[6]);
    if ( v8 | (a2 >> 31) )
      a1[28] = 1;
    if ( fseek(v7) )
    {
      a1[28] = 1;
      fseek(a1[5]);
      return 0;
    }
    else
    {
      return 1;
    }
  }
  return result;
}


// ===== 87809c vorbis_find_page(stb_vorbis *,uint *,uint *) =====
int __fastcall vorbis_find_page(int *a1, int *a2, int *a3)
{
  Elf32_Dyn **v3; // r5
  _DWORD *v5; // r6
  _DWORD *v6; // r8
  int v7; // r10
  int v8; // r3
  unsigned int v9; // r10
  int v10; // r2
  int v11; // r9
  unsigned int v12; // r11
  _DWORD *v13; // r8
  Elf32_Dyn **v14; // r6
  int *v15; // r5
  unsigned int v16; // r4
  int *v17; // r0
  int v18; // r11
  int *v19; // r1
  bool v21; // zf
  int v22; // r3
  unsigned int file_offset; // [sp+4h] [bp-48h]
  int *v24; // [sp+Ch] [bp-40h]
  int v25; // [sp+10h] [bp-3Ch]
  int v26; // [sp+14h] [bp-38h]
  int v27; // [sp+18h] [bp-34h]
  _DWORD *v30; // [sp+24h] [bp-28h]
  _BYTE v31[4]; // [sp+28h] [bp-24h] BYREF
  unsigned __int8 v32; // [sp+2Ch] [bp-20h]
  char v33; // [sp+2Dh] [bp-1Fh]
  unsigned __int8 v34; // [sp+3Eh] [bp-Eh]
  unsigned __int8 v35; // [sp+3Fh] [bp-Dh]
  unsigned __int8 v36; // [sp+40h] [bp-Ch]
  unsigned __int8 v37; // [sp+41h] [bp-Bh]
  unsigned __int8 v38; // [sp+42h] [bp-Ah]

  v3 = &__GLOBAL_OFFSET_TABLE_;
  v5 = crc_table;
  v6 = crc_table;
  while ( !a1[28] )
  {
    while ( get8(a1) == (int *)((char *)&dword_4C + 3) )
    {
      file_offset = stb_vorbis_get_file_offset(a1);
      if ( file_offset - 25 > a1[11] )
        return 0;
      if ( get8(a1) == (int *)((char *)&dword_64 + 3) )
      {
        if ( get8(a1) == (int *)((char *)&dword_64 + 3) )
          v7 = get8(a1) == (int *)((char *)&dword_50 + 3) ? 4 : 3;
        else
          v7 = 2;
      }
      else
      {
        v7 = 1;
      }
      if ( a1[28] )
        return 0;
      if ( v7 == 4 )
      {
        qmemcpy(v31, "OggS", sizeof(v31));
        do
          v31[v7++] = (unsigned __int8)get8(a1);
        while ( v7 != 27 );
        if ( a1[28] )
          return 0;
        v8 = v32;
        if ( !v32 )
        {
          v27 = v34;
          v9 = 0;
          v34 = 0;
          v26 = v35;
          v35 = 0;
          v25 = v36;
          v36 = 0;
          v24 = (int *)v37;
          v37 = 0;
          do
          {
            v10 = (unsigned __int8)v31[v8++];
            v9 = v5[v10 ^ HIBYTE(v9)] ^ (v9 << 8);
          }
          while ( v8 != 27 );
          if ( v38 )
          {
            v11 = 0;
            v30 = v6;
            v12 = 0;
            v13 = v5;
            v14 = v3;
            v15 = a1;
            v16 = v38;
            do
            {
              v17 = get8(v15);
              ++v12;
              v9 = crc_table[(unsigned int)v17 ^ HIBYTE(v9)] ^ (v9 << 8);
              v11 += (int)v17;
            }
            while ( v12 < v16 );
            a1 = v15;
            v3 = v14;
            v5 = v13;
            v6 = v30;
            if ( v11 )
            {
              v18 = a1[28];
              if ( v18 )
                return 0;
              do
              {
                ++v18;
                v9 = v30[(unsigned int)get8(a1) ^ HIBYTE(v9)] ^ (v9 << 8);
              }
              while ( v18 != v11 );
            }
          }
          v19 = v24;
          if ( v9 == (v25 << 16) + (v26 << 8) + v27 + ((_DWORD)v24 << 24) )
          {
            if ( a2 )
              *a2 = stb_vorbis_get_file_offset(a1);
            if ( a3 )
            {
              v22 = v33 & 4;
              v21 = v22 == 0;
              if ( (v33 & 4) != 0 )
              {
                v22 = 1;
                *a3 = 1;
              }
              else
              {
                v19 = a3;
              }
              if ( v21 )
                *v19 = v22;
            }
            set_file_offset(a1, file_offset - 1);
            return 1;
          }
        }
      }
      set_file_offset(a1, file_offset);
      if ( a1[28] )
        return 0;
    }
  }
  return 0;
}


// ===== 87836c stb_vorbis_stream_length_in_samples(stb_vorbis *) =====
int __fastcall stb_vorbis_stream_length_in_samples(int *a1)
{
  int v1; // r3
  int file_offset; // r0
  unsigned int v5; // r6
  unsigned int v6; // r10
  unsigned int v7; // r3
  unsigned int v8; // r6
  int *v9; // r0
  unsigned int v10; // r5
  int v11; // r7
  int v12; // r0
  bool v13; // zf
  int v14; // [sp+0h] [bp-14h] BYREF
  int v15; // [sp+8h] [bp-Ch] BYREF
  int v16[2]; // [sp+Ch] [bp-8h] BYREF

  v1 = a1[203];
  if ( v1 )
    goto LABEL_2;
  file_offset = stb_vorbis_get_file_offset(a1);
  v5 = a1[11];
  v6 = file_offset;
  if ( v5 < 0x10000 )
  {
    v7 = a1[13];
LABEL_8:
    v8 = v7;
    goto LABEL_9;
  }
  v7 = a1[13];
  v8 = v5 - 0x10000;
  if ( v8 < v7 )
    goto LABEL_8;
LABEL_9:
  set_file_offset(a1, v8);
  if ( !vorbis_find_page(a1, v16, &v15) )
    goto LABEL_10;
  v9 = a1;
  while ( 1 )
  {
    v10 = stb_vorbis_get_file_offset(v9);
    if ( v15 )
      break;
    set_file_offset(a1, v16[0]);
    v13 = vorbis_find_page(a1, v16, &v15) == 0;
    v9 = a1;
    if ( v13 )
      break;
    v8 = v10 + 1;
  }
  set_file_offset(a1, v10);
  getn((int)a1, &v14, 6u);
  v11 = get32(a1);
  v12 = get32(a1);
  v13 = v11 == -1;
  if ( v11 == -1 )
    v13 = v12 == -1;
  if ( v13 )
  {
LABEL_10:
    a1[29] = 36;
    a1[203] = -1;
  }
  else
  {
    if ( v12 )
      v11 = -2;
    a1[20] = v16[0];
    a1[19] = v10;
    a1[23] = v11;
    a1[22] = -1;
    a1[21] = v8;
    a1[203] = v11;
  }
  set_file_offset(a1, v6);
  v1 = a1[203];
LABEL_2:
  if ( v1 == -1 )
    return 0;
  else
    return v1;
}


// ===== 8784c8 stb_vorbis_stream_length_in_seconds(stb_vorbis *) =====
float __fastcall stb_vorbis_stream_length_in_seconds(int *a1)
{
  return (float)(unsigned int)stb_vorbis_stream_length_in_samples(a1) / (float)(unsigned int)*a1;
}


// ===== 8784f4 dct_iv_slow(float *,int) =====
void __fastcall dct_iv_slow(float *a1, int a2)
{
  int v2; // r5
  int v3; // r10
  int v5; // r6
  int i; // r7
  float v7; // r0
  int v8; // r11
  int v9; // r8
  int v10; // r7
  float v11; // r10
  float v12; // r0
  int v13; // [sp+0h] [bp-12014h]
  int v15; // [sp+Ch] [bp-12008h]
  float v16[16380]; // [sp+10h] [bp-12004h]
  _BYTE v17[8176]; // [sp+10010h] [bp-2004h] BYREF

  v2 = 4 * a2;
  v3 = 8 * a2;
  memcpy(v17, a1, 4 * a2);
  v5 = v3 - 1;
  if ( v3 > 0 )
  {
    for ( i = 0; i != v3; ++i )
    {
      v7 = cos((double)i * 0.785398163 / (double)a2);
      v16[i] = v7;
    }
  }
  if ( a2 > 0 )
  {
    v15 = 2 * a2 + 1;
    v8 = 1;
    v13 = 0;
    do
    {
      v9 = v8;
      v10 = 0;
      v11 = 0.0;
      do
      {
        v12 = v11 + (float)(*(float *)&v17[v10] * v16[v5 & v9]);
        v10 += 4;
        v11 = v12;
        v9 += 2 * v8;
      }
      while ( v2 != v10 );
      v8 += 2;
      a1[v13++] = v12;
    }
    while ( v8 != v15 );
  }
  VoxFree(v17);
}


// ===== 878634 inverse_mdct_slow(float *,int,stb_vorbis *,int) =====
int __fastcall inverse_mdct_slow(char *a1, int a2)
{
  int v2; // r7
  int v5; // r1
  int v6; // r7
  int result; // r0
  int v8; // r3
  float *v9; // r3
  char *v10; // r2
  int v11; // t1
  char *v12; // r5
  int v13; // r3
  float v14[4097]; // [sp+0h] [bp-4004h] BYREF

  v2 = a2 >> 1;
  memcpy(v14, a1, 4 * (a2 >> 1));
  v5 = v2;
  v6 = a2 >> 2;
  dct_iv_slow(v14, v5);
  result = a2 - (a2 >> 2);
  if ( a2 >> 2 > 0 )
  {
    v8 = 0;
    do
    {
      *(float *)&a1[v8 * 4] = v14[v6 + v8];
      ++v8;
    }
    while ( v8 != v6 );
  }
  else
  {
    v6 = 0;
  }
  if ( result > v6 )
  {
    v9 = &v14[result - v6];
    v10 = &a1[4 * v6];
    do
    {
      v11 = *((_DWORD *)v9-- - 1);
      *(_DWORD *)v10 = v11 + 0x80000000;
      v10 += 4;
    }
    while ( v9 != v14 );
    v6 += 1 + ~v6 + result;
  }
  if ( a2 > v6 )
  {
    result = v6 - result;
    v12 = &a1[4 * v6];
    v13 = 0;
    do
    {
      *(_DWORD *)&v12[v13 * 4] = LODWORD(v14[result + v13]) + 0x80000000;
      ++v13;
    }
    while ( v13 != a2 - v6 );
  }
  return result;
}


// ===== 87871c init_blocksize(stb_vorbis *,int,int) =====
float *__fastcall init_blocksize(_DWORD *a1, int a2, int a3)
{
  int v4; // r8
  _DWORD *v5; // r4
  _DWORD *v6; // r10
  float *v7; // r0
  float *v8; // r6
  float *v9; // r5
  int v10; // r4
  double v11; // r10
  float v12; // r0
  float v13; // r0
  double v14; // r8
  float v15; // r0
  float v16; // r0
  float *v17; // r5
  int v18; // r4
  float v19; // r0
  float v20; // r0
  float *result; // r0
  float *v22; // r5
  int i; // r4
  float v24; // r0
  float v25; // r0
  int v26; // r3
  float *v27; // r5
  char v28; // r0
  char v29; // r6
  unsigned int j; // r4
  unsigned int v31; // r0
  int v32; // r3
  int v34; // [sp+4h] [bp-18h]
  int v35; // [sp+4h] [bp-18h]
  int v36; // [sp+8h] [bp-14h]
  float *v38; // [sp+10h] [bp-Ch]
  int v39; // [sp+14h] [bp-8h]

  v39 = a3 >> 1;
  v36 = 4 * (a3 >> 1);
  v4 = a3 >> 2;
  v5 = &a1[a2 + 270];
  v5[1] = setup_malloc(a1, v36);
  v6 = &a1[a2 + 272];
  v6[1] = setup_malloc(a1, v36);
  v7 = (float *)setup_malloc(a1, 4 * v4);
  v38 = v7;
  v6[3] = v7;
  v8 = (float *)v5[1];
  if ( v8 && (v9 = (float *)v6[1]) != nullptr && v7 )
  {
    if ( v4 > 0 )
    {
      v34 = 2 * v4;
      v10 = 0;
      do
      {
        v11 = (double)(2 * v10);
        v12 = cos(v11 * 3.14159265 / (double)a3);
        *v8 = v12;
        v13 = sin(v11 * -3.14159265 / (double)a3);
        v8[1] = v13;
        v14 = (double)(v10 + 1) * 3.14159265 / (double)a3 * 0.5;
        v15 = cos(v14);
        *v9 = v15 * 0.5;
        v16 = sin(v14);
        v10 += 2;
        v9[1] = v16 * 0.5;
        v8 += 2;
        v9 += 2;
      }
      while ( v10 != v34 );
    }
    v35 = a3 >> 3;
    if ( a3 >> 3 > 0 )
    {
      v17 = v38;
      v18 = 2;
      do
      {
        v19 = cos((double)v18 * 3.14159265 / (double)a3);
        *v17 = v19;
        v20 = sin((double)v18 * -3.14159265 / (double)a3);
        v18 += 4;
        v17[1] = v20;
        v17 += 2;
      }
      while ( v18 != 4 * (a3 >> 3) + 2 );
    }
    result = (float *)setup_malloc(a1, v36);
    v22 = result;
    a1[a2 + 277] = result;
    if ( result )
    {
      if ( v39 > 0 )
      {
        for ( i = 0; i != v39; ++i )
        {
          v24 = sin(((double)i + 0.5) / (double)v39 * 0.5 * 3.14159265);
          v25 = sin((float)(v24 * v24) * 1.57079633);
          v22[i] = v25;
        }
      }
      result = (float *)setup_malloc(a1, 2 * v35);
      if ( !result )
        v26 = 3;
      a1[a2 + 279] = result;
      v27 = result;
      if ( result )
      {
        v28 = ilog(a3);
        if ( v35 > 0 )
        {
          v29 = 36 - v28;
          for ( j = 0; j != v35; ++j )
          {
            v31 = bit_reverse(j);
            v32 = 2 * j;
            *(_WORD *)((char *)v27 + v32) = 4 * (v31 >> v29);
          }
        }
        return (float *)(&dword_0 + 1);
      }
      else
      {
        a1[29] = v26;
      }
    }
    else
    {
      a1[29] = 3;
    }
  }
  else
  {
    a1[29] = 3;
    return nullptr;
  }
  return result;
}


// ===== 878b38 start_decoder(stb_vorbis *) =====
_BYTE *__fastcall start_decoder(int *a1)
{
  int v1; // r6
  char v2; // r2
  _BYTE *result; // r0
  int *v4; // r0
  int v5; // r3
  unsigned int segment; // r7
  int v7; // r3
  int i; // r1
  int v9; // r12
  int *v10; // r0
  int v11; // r3
  bool v12; // zf
  int j; // r10
  int bits; // r0
  void *v15; // r0
  int v16; // r3
  int v17; // r7
  unsigned __int8 v18; // r4
  unsigned __int8 v19; // r4
  unsigned __int8 v20; // r5
  int v21; // r7
  int v22; // r5
  _BYTE *v23; // r8
  int i13; // r10
  int v25; // r4
  int v26; // r8
  int k; // r7
  int v28; // r11
  int v29; // r1
  void *v30; // r0
  size_t v31; // r2
  int i14; // r3
  char v33; // r2
  int v34; // r0
  int v35; // r8
  int v36; // r7
  int v37; // r4
  int v38; // r11
  int v39; // r5
  unsigned __int8 *ii; // r4
  unsigned __int8 v41; // r0
  _DWORD *v42; // r9
  unsigned int v43; // r3
  int v44; // r5
  int i15; // r10
  unsigned __int8 *v46; // r9
  _BYTE *v47; // r5
  char v48; // r0
  int kk; // r7
  __int16 v50; // r0
  unsigned __int8 v51; // r0
  int v52; // r0
  int v53; // r10
  int v54; // r4
  unsigned __int16 v55; // r0
  int v56; // r4
  int v57; // r7
  int v58; // r1
  int v59; // r0
  int v60; // r7
  int i4; // r9
  int v62; // r11
  int v63; // r7
  int v64; // r2
  int v65; // r9
  int i5; // r9
  int v67; // r0
  int v68; // r10
  int v69; // r7
  unsigned __int16 *v70; // r7
  int v71; // r0
  unsigned int v72; // r3
  bool v73; // cc
  int i8; // r9
  int v75; // r11
  unsigned int v76; // r2
  _WORD *v77; // r7
  int i10; // r8
  unsigned __int8 v79; // r0
  int v80; // r3
  int v81; // r2
  signed int i9; // r9
  unsigned __int8 v83; // r0
  int v84; // r8
  _DWORD *i11; // r7
  int v86; // r10
  int i12; // r5
  int v88; // r0
  size_t v89; // r0
  int v90; // r4
  int v91; // r10
  int v92; // r8
  int n; // r10
  char v94; // r1
  int i20; // r3
  int v96; // r10
  int v97; // r3
  int v98; // r11
  _BYTE *v99; // r1
  int v100; // r2
  int v101; // t1
  int v102; // r11
  _BYTE *v103; // r2
  unsigned int v104; // r12
  int v105; // r0
  int v106; // r3
  int v107; // r2
  bool v108; // zf
  char v109; // r1
  int v110; // r3
  int v111; // r2
  int v112; // r0
  int v113; // r1
  unsigned int v114; // r12
  char v115; // r0
  unsigned __int8 v116; // r0
  int mm; // r5
  int v118; // r7
  int v119; // r9
  int v120; // r11
  int i7; // r9
  int v122; // r0
  int v123; // r11
  int v124; // r0
  int v125; // r11
  int v126; // r3
  int v127; // r1
  int v128; // r2
  int v129; // r3
  int v130; // r3
  unsigned __int8 *v131; // r7
  int v132; // r2
  unsigned __int8 *v133; // r0
  signed int nn; // r3
  signed int v135; // r1
  int v136; // r3
  int v137; // r11
  int v138; // r7
  unsigned int v139; // r9
  signed int v140; // r8
  int v141; // r10
  _DWORD *v142; // r2
  int v143; // r2
  unsigned __int8 *v144; // r1
  int i1; // r3
  __int16 v146; // r0
  unsigned int v147; // r3
  int v148; // r11
  unsigned __int16 *v149; // r3
  int i2; // r0
  unsigned __int8 *v151; // r4
  int v152; // lr
  int v153; // r12
  int v154; // r1
  unsigned int v155; // r2
  int v156; // r5
  int v157; // r9
  int v158; // r2
  int v159; // r8
  void *v160; // r0
  int v161; // r3
  int v162; // r11
  int v163; // r2
  int i16; // r3
  int v165; // r5
  int v166; // r10
  int v167; // r4
  unsigned int v168; // r0
  void *v169; // r0
  int v170; // r1
  _DWORD *v171; // r0
  _DWORD *v172; // r3
  int v173; // r10
  int v174; // r4
  unsigned int v175; // r3
  int v176; // r4
  int v177; // r2
  int v178; // r5
  int v179; // r3
  int v180; // r6
  int v181; // r3
  unsigned int v182; // r10
  int v183; // r0
  int v184; // r1
  int v185; // r2
  int v186; // r12
  int v187; // r1
  unsigned __int8 v188; // r0
  int v189; // r4
  bool v190; // nf
  int v191; // r0
  int v192; // r4
  float v193; // r0
  int v194; // r4
  int v195; // r0
  int v196; // r4
  float v197; // r0
  char v198; // r0
  int v199; // r3
  int i17; // r4
  int v201; // r1
  int v202; // r0
  double v203; // r0
  int v204; // r9
  int v205; // r3
  int v206; // r3
  int v207; // r4
  int v208; // r11
  int v209; // r3
  int v210; // r10
  int i18; // r5
  int v212; // r5
  int v213; // r8
  float v214; // r0
  float v215; // r0
  int v216; // r4
  float v217; // r0
  double v218; // r0
  int v219; // r2
  int i19; // r3
  int v221; // r1
  int v222; // r0
  int v223; // r4
  int v224; // r2
  int v225; // [sp+10h] [bp-46Ch]
  int v226; // [sp+10h] [bp-46Ch]
  int v227; // [sp+10h] [bp-46Ch]
  int v228; // [sp+10h] [bp-46Ch]
  int i6; // [sp+14h] [bp-468h]
  int m; // [sp+18h] [bp-464h]
  int i3; // [sp+18h] [bp-464h]
  int v232; // [sp+1Ch] [bp-460h]
  int jj; // [sp+1Ch] [bp-460h]
  unsigned __int16 *v234; // [sp+1Ch] [bp-460h]
  _WORD *v235; // [sp+20h] [bp-45Ch]
  int i21; // [sp+20h] [bp-45Ch]
  unsigned int v237; // [sp+20h] [bp-45Ch]
  int v238; // [sp+24h] [bp-458h]
  int v239; // [sp+24h] [bp-458h]
  unsigned int v240; // [sp+28h] [bp-454h]
  int v241; // [sp+2Ch] [bp-450h]
  char v242; // [sp+34h] [bp-448h]
  _BYTE v243[4]; // [sp+44h] [bp-438h] BYREF
  _BYTE v244[80]; // [sp+42Ch] [bp-50h] BYREF

  v1 = (int)a1;
  if ( !start_page(a1) )
    return nullptr;
  v2 = *(_BYTE *)(v1 + 1391);
  result = (_BYTE *)(v2 & 2);
  if ( (v2 & 2) == 0 )
    goto LABEL_3;
  result = (_BYTE *)(v2 & 4);
  if ( (*(_BYTE *)(v1 + 1391) & 4) != 0 )
    goto LABEL_9;
  if ( (*(_BYTE *)(v1 + 1391) & 1) != 0 )
    goto LABEL_3;
  if ( *(_DWORD *)(v1 + 1132) != 1 || *(_BYTE *)(v1 + 1136) != 30 || get8((int *)v1) != (int *)((char *)&dword_0 + 1) )
    goto LABEL_7;
  result = (_BYTE *)getn(v1, v244, 6u);
  if ( !result )
  {
    *(_DWORD *)(v1 + 116) = 10;
    return result;
  }
  if ( memcmp(v244, vorbis_validate(unsigned char *)::vorbis, 6u) )
  {
LABEL_7:
    *(_DWORD *)(v1 + 116) = 34;
    return nullptr;
  }
  if ( get32((int *)v1) )
  {
LABEL_9:
    *(_DWORD *)(v1 + 116) = 34;
    return nullptr;
  }
  result = get8((int *)v1);
  *(_DWORD *)(v1 + 4) = result;
  if ( !result )
    goto LABEL_3;
  if ( (int)result > 16 )
  {
    *(_DWORD *)(v1 + 116) = 5;
    return nullptr;
  }
  result = (_BYTE *)get32((int *)v1);
  *(_DWORD *)v1 = result;
  if ( !result )
    goto LABEL_3;
  get32((int *)v1);
  get32((int *)v1);
  get32((int *)v1);
  v4 = get8((int *)v1);
  v5 = (int)v4 >> 4;
  *(_DWORD *)(v1 + 128) = 1 << ((unsigned __int8)v4 & 0xF);
  *(_DWORD *)(v1 + 132) = 1 << ((int)v4 >> 4);
  if ( ((unsigned __int8)v4 & 0xFu) - 6 > 7 || (unsigned int)(v5 - 6) > 7 || ((unsigned __int8)v4 & 0xF) > v5 )
    goto LABEL_23;
  result = (_BYTE *)((unsigned int)get8((int *)v1) & 1);
  if ( !result )
  {
LABEL_3:
    *(_DWORD *)(v1 + 116) = 34;
    return result;
  }
  if ( !start_page((int *)v1) || !start_packet(v1) )
    return nullptr;
  do
  {
    segment = next_segment(v1);
    skip((int *)v1, segment);
    *(_BYTE *)(v1 + 1392) = 0;
  }
  while ( segment );
  if ( !start_packet(v1) )
    return nullptr;
  do
  {
    v7 = segment << 24;
    for ( i = 0; i != 8; ++i )
    {
      if ( v7 >= 0 )
        v9 = 0;
      else
        v9 = 79764919;
      v7 = v9 ^ (2 * v7);
    }
    crc_table[segment++] = v7;
  }
  while ( segment != 256 );
  v10 = get8_packet_raw(v1);
  v12 = v10 == (int *)&byte_5;
  if ( v10 != (int *)&byte_5 )
    v11 = 20;
  result = nullptr;
  *(_DWORD *)(v1 + 1412) = 0;
  if ( !v12 )
  {
    *(_DWORD *)(v1 + 116) = v11;
    return result;
  }
  for ( j = 0; j != 6; ++j )
  {
    v244[j] = (unsigned __int8)get8_packet_raw(v1);
    *(_DWORD *)(v1 + 1412) = 0;
  }
  if ( memcmp(v244, vorbis_validate(unsigned char *)::vorbis, 6u) )
  {
    *(_DWORD *)(v1 + 116) = 20;
    return nullptr;
  }
  bits = get_bits(v1, 8);
  *(_DWORD *)(v1 + 136) = bits + 1;
  v15 = setup_malloc((_DWORD *)v1, 2096 * (bits + 1));
  v16 = (int)v15;
  if ( !v15 )
    v16 = 3;
  *(_DWORD *)(v1 + 140) = v15;
  if ( !v15 )
  {
    *(_DWORD *)(v1 + 116) = v16;
    return nullptr;
  }
  v232 = 0;
  LC_API_MEMSET_0(v15, 0, 2096 * *(_DWORD *)(v1 + 136));
  v238 = 0;
LABEL_48:
  if ( v238 >= *(_DWORD *)(v1 + 136) )
  {
    v26 = (unsigned __int8)(get_bits(v1, 6) + 1);
    for ( k = 0; k < v26; ++k )
    {
      if ( get_bits(v1, 16) )
        goto LABEL_23;
    }
    v34 = get_bits(v1, 6) + 1;
    *(_DWORD *)(v1 + 144) = v34;
    v35 = 0;
    *(_DWORD *)(v1 + 276) = setup_malloc((_DWORD *)v1, 1596 * v34);
    v235 = (_WORD *)(v1 + 148);
    v239 = 0;
    for ( m = 0; m < *(_DWORD *)(v1 + 144); ++m )
    {
      v36 = (unsigned __int16)get_bits(v1, 16);
      *v235 = v36;
      if ( (unsigned int)v36 > 1 )
      {
LABEL_110:
        *(_DWORD *)(v1 + 116) = 20;
        return nullptr;
      }
      if ( !v36 )
      {
        v91 = *(_DWORD *)(v1 + 276);
        *(_BYTE *)(v91 + 1596 * m) = get_bits(v1, 8);
        v92 = v91 + 1596 * m;
        *(_WORD *)(v92 + 2) = get_bits(v1, 16);
        *(_WORD *)(v92 + 4) = get_bits(v1, 16);
        *(_BYTE *)(v92 + 6) = get_bits(v1, 6);
        *(_BYTE *)(v92 + 7) = get_bits(v1, 8);
        *(_BYTE *)(v92 + 8) = get_bits(v1, 4) + 1;
        for ( n = v92; ; *(_BYTE *)(n + 8) = get_bits(v1, 8) )
        {
          ++n;
          if ( v36 >= *(unsigned __int8 *)(v92 + 8) )
            break;
          ++v36;
        }
        *(_DWORD *)(v1 + 116) = 4;
        return nullptr;
      }
      v37 = *(_DWORD *)(v1 + 276);
      v38 = -1;
      *(_BYTE *)(v37 + v35) = get_bits(v1, 5);
      v39 = 0;
      for ( ii = (unsigned __int8 *)(v37 + v35); v39 < *ii; ii[++v39] = v41 )
      {
        v41 = get_bits(v1, 4);
        if ( v38 < v41 )
          v38 = v41;
      }
      v46 = ii;
      v47 = ii;
      for ( jj = 0; jj <= v38; ++jj )
      {
        v47[33] = get_bits(v1, 3) + 1;
        v48 = get_bits(v1, 2);
        v47[49] = v48;
        if ( v48 )
        {
          v51 = get_bits(v1, 8);
          v47[65] = v51;
          if ( v51 >= *(int *)(v1 + 136) )
            goto LABEL_110;
        }
        for ( kk = 0; kk < 1 << v47[49]; ++kk )
        {
          v50 = get_bits(v1, 8);
          *(_WORD *)&v46[2 * kk + 82] = v50 - 1;
          if ( (__int16)(v50 - 1) >= *(_DWORD *)(v1 + 136) )
            goto LABEL_110;
        }
        ++v47;
        v46 += 16;
      }
      ii[1588] = get_bits(v1, 2) + 1;
      v116 = get_bits(v1, 4);
      *((_WORD *)ii + 170) = 1 << v116;
      *((_WORD *)ii + 169) = 0;
      *((_DWORD *)ii + 398) = 2;
      ii[1589] = v116;
      for ( mm = 0; mm < *ii; ++mm )
      {
        v118 = 0;
        v119 = (int)&ii[ii[mm + 1] + 32];
        while ( v118 < *(unsigned __int8 *)(v119 + 1) )
        {
          v120 = *((_DWORD *)ii + 398);
          *(_WORD *)&ii[2 * v120 + 338] = get_bits(v1, ii[1589]);
          ++v118;
          ++*((_DWORD *)ii + 398);
        }
      }
      v131 = ii + 338;
      v132 = 0;
      v133 = ii + 338;
      for ( nn = 0; ; ++nn )
      {
        v135 = *((_DWORD *)ii + 398);
        v133 += 2;
        if ( nn >= v135 )
          break;
        *(_WORD *)&v243[v132] = *((_WORD *)v133 - 1);
        *(_WORD *)&v243[v132 + 2] = nn;
        v132 += 4;
      }
      qsort(v243, v135, 4u, (int (*)(const void *, const void *))point_compare);
      v143 = *((_DWORD *)ii + 398);
      v144 = ii;
      for ( i1 = 0; ; ++i1 )
      {
        ++v144;
        if ( i1 >= v143 )
          break;
        v146 = *(_WORD *)&v243[4 * i1 + 2];
        v144[837] = v146;
      }
      v148 = *((_DWORD *)ii + 398);
      v149 = (unsigned __int16 *)(ii + 342);
      for ( i2 = 2; i2 < v148; ++i2 )
      {
        v151 = v131;
        v152 = 0x10000;
        v153 = -1;
        v154 = 0;
        while ( 1 )
        {
          v155 = *(unsigned __int16 *)v151;
          v156 = v155;
          if ( v153 < (int)v155 )
          {
            v157 = v241;
            if ( *v149 > v155 )
            {
              v153 = *(unsigned __int16 *)v151;
              v157 = v154;
            }
            v241 = v157;
          }
          if ( v152 <= (int)v155 || *v149 >= v155 )
            v156 = v152;
          else
            v242 = v154;
          ++v154;
          v151 += 2;
          if ( i2 <= v154 )
            break;
          v152 = v156;
        }
        *((_BYTE *)v149 + 750) = v241;
        *((_BYTE *)v149++ + 751) = v242;
      }
      v158 = v239;
      v159 = v35 + 1584;
      if ( v239 < v148 )
        v158 = v148;
      v239 = v158;
      v35 = v159 + 12;
      ++v235;
    }
    v52 = get_bits(v1, 6) + 1;
    *(_DWORD *)(v1 + 280) = v52;
    *(_DWORD *)(v1 + 412) = setup_malloc((_DWORD *)v1, 24 * v52);
    v53 = 0;
    v234 = (unsigned __int16 *)(v1 + 284);
    for ( i3 = 0; i3 < *(_DWORD *)(v1 + 280); ++i3 )
    {
      v54 = *(_DWORD *)(v1 + 412);
      v55 = get_bits(v1, 16);
      *v234 = v55;
      if ( v55 > 2u )
      {
LABEL_127:
        *(_DWORD *)(v1 + 116) = 20;
        return nullptr;
      }
      *(_DWORD *)(v54 + v53) = get_bits(v1, 24);
      v56 = v54 + v53;
      *(_DWORD *)(v56 + 4) = get_bits(v1, 24);
      *(_DWORD *)(v56 + 8) = get_bits(v1, 24) + 1;
      *(_BYTE *)(v56 + 12) = get_bits(v1, 6) + 1;
      v57 = 0;
      *(_BYTE *)(v56 + 13) = get_bits(v1, 8);
      while ( 1 )
      {
        v58 = *(unsigned __int8 *)(v56 + 12);
        if ( v57 >= v58 )
          break;
        v35 = (unsigned __int8)get_bits(v1, 3);
        v59 = get_bits(v1, 1);
        if ( v59 )
          LOBYTE(v59) = get_bits(v1, 5);
        v244[v57++ + 8] = v35 + 8 * v59;
      }
      v60 = 0;
      *(_DWORD *)(v56 + 20) = setup_malloc((_DWORD *)v1, 16 * v58);
      for ( i4 = 0; i4 < *(unsigned __int8 *)(v56 + 12); ++i4 )
      {
        v35 = 0;
        v62 = (unsigned __int8)v244[i4 + 8];
        do
        {
          if ( ((v62 >> v35) & 1) != 0 )
          {
            v225 = *(_DWORD *)(v56 + 20) + v60;
            *(_WORD *)(v225 + 2 * v35) = get_bits(v1, 8);
            if ( *(__int16 *)(*(_DWORD *)(v56 + 20) + 2 * v35 + v60) >= *(_DWORD *)(v1 + 136) )
              goto LABEL_127;
          }
          else
          {
            *(_WORD *)(*(_DWORD *)(v56 + 20) + 2 * v35 + v60) = -1;
          }
          ++v35;
        }
        while ( v35 != 8 );
        v60 += 16;
      }
      result = setup_malloc(
                 (_DWORD *)v1,
                 4 * *(_DWORD *)(*(_DWORD *)(v1 + 140) + 2096 * *(unsigned __int8 *)(v56 + 13) + 4));
      *(_DWORD *)(v56 + 16) = result;
      if ( !result )
      {
        *(_DWORD *)(v1 + 116) = 3;
        return result;
      }
      v63 = 0;
      LC_API_MEMSET_0(result, 0, 4 * *(_DWORD *)(*(_DWORD *)(v1 + 140) + 2096 * *(unsigned __int8 *)(v56 + 13) + 4));
      while ( 1 )
      {
        v64 = *(_DWORD *)(v1 + 140);
        if ( v63 >= *(_DWORD *)(v64 + 2096 * *(unsigned __int8 *)(v56 + 13) + 4) )
          break;
        v35 = *(_DWORD *)(v64 + 2096 * *(unsigned __int8 *)(v56 + 13));
        v65 = *(_DWORD *)(v56 + 16);
        *(_DWORD *)(v65 + 4 * v63) = setup_malloc((_DWORD *)v1, v35);
        for ( i5 = v63; --v35 >= 0; i5 /= (int)*(unsigned __int8 *)(v56 + 12) )
          *(_BYTE *)(*(_DWORD *)(*(_DWORD *)(v56 + 16) + 4 * v63) + v35) = i5 % *(unsigned __int8 *)(v56 + 12);
        ++v63;
      }
      v53 += 24;
      ++v234;
    }
    v67 = get_bits(v1, 6) + 1;
    *(_DWORD *)(v1 + 416) = v67;
    v68 = 0;
    *(_DWORD *)(v1 + 420) = setup_malloc((_DWORD *)v1, 40 * v67);
    for ( i6 = 0; i6 < *(_DWORD *)(v1 + 416); ++i6 )
    {
      v69 = *(_DWORD *)(v1 + 420);
      if ( get_bits(v1, 16) )
        goto LABEL_23;
      v70 = (unsigned __int16 *)(v69 + v68);
      *((_DWORD *)v70 + 1) = setup_malloc((_DWORD *)v1, 3 * *(_DWORD *)(v1 + 4));
      if ( get_bits(v1, 1) )
        *((_BYTE *)v70 + 8) = get_bits(v1, 4);
      else
        *((_BYTE *)v70 + 8) = 1;
      if ( get_bits(v1, 1) )
      {
        v35 = 0;
        *v70 = get_bits(v1, 8) + 1;
        for ( i7 = 0; i7 < *v70; ++i7 )
        {
          v122 = ilog(*(_DWORD *)(v1 + 4));
          v123 = *((_DWORD *)v70 + 1);
          *(_BYTE *)(v123 + v35) = get_bits(v1, v122 - 1);
          v124 = ilog(*(_DWORD *)(v1 + 4));
          v125 = *((_DWORD *)v70 + 1);
          *(_BYTE *)(v125 + v35 + 1) = get_bits(v1, v124 - 1);
          v126 = *((_DWORD *)v70 + 1);
          v127 = *(_DWORD *)(v1 + 4);
          v128 = *(unsigned __int8 *)(v126 + v35);
          v129 = v126 + v35;
          if ( v128 >= v127 )
            goto LABEL_23;
          v130 = *(unsigned __int8 *)(v129 + 1);
          if ( v127 <= v130 )
            goto LABEL_23;
          v35 += 3;
          if ( v128 == v130 )
            goto LABEL_23;
        }
      }
      else
      {
        *v70 = 0;
      }
      v71 = get_bits(v1, 2);
      if ( v71 )
        goto LABEL_23;
      v72 = *((unsigned __int8 *)v70 + 8);
      v73 = v72 > 1;
      if ( v72 <= 1 )
        v72 = 0;
      else
        v35 = 0;
      if ( v73 )
      {
        for ( i8 = v35; i8 < *(_DWORD *)(v1 + 4); ++i8 )
        {
          v75 = *((_DWORD *)v70 + 1);
          *(_BYTE *)(v75 + v35 + 2) = get_bits(v1, 4);
          v72 = *((unsigned __int8 *)v70 + 8);
          v76 = *(unsigned __int8 *)(*((_DWORD *)v70 + 1) + v35 + 2);
          v35 += 3;
          if ( v72 <= v76 )
            goto LABEL_23;
        }
      }
      else
      {
        while ( (signed int)v72 < *(_DWORD *)(v1 + 4) )
        {
          ++v72;
          *(_BYTE *)(*((_DWORD *)v70 + 1) + v71 + 2) = 0;
          v71 += 3;
        }
        v72 = *((unsigned __int8 *)v70 + 8);
      }
      v35 = (int)v70;
      for ( i9 = 0; i9 < (int)v72; ++i9 )
      {
        get_bits(v1, 8);
        *(_BYTE *)(v35 + 9) = get_bits(v1, 8);
        v83 = get_bits(v1, 8);
        *(_BYTE *)(v35 + 24) = v83;
        if ( *(unsigned __int8 *)(v35 + 9) >= *(int *)(v1 + 144) )
          goto LABEL_23;
        ++v35;
        if ( v83 >= *(int *)(v1 + 280) )
          goto LABEL_23;
        v72 = *((unsigned __int8 *)v70 + 8);
      }
      v68 += 40;
    }
    *(_DWORD *)(v1 + 424) = get_bits(v1, 6) + 1;
    v77 = (_WORD *)(v1 + 432);
    for ( i10 = 0; i10 < *(_DWORD *)(v1 + 424); ++i10 )
    {
      *((_BYTE *)v77 - 4) = get_bits(v1, 1);
      *(v77 - 1) = get_bits(v1, 16);
      *v77 = get_bits(v1, 16);
      v79 = get_bits(v1, 8);
      v80 = (unsigned __int16)*(v77 - 1);
      *((_BYTE *)v77 - 3) = v79;
      if ( v80 )
        goto LABEL_23;
      v81 = (unsigned __int16)*v77;
      if ( *v77 )
      {
        *(_DWORD *)(v1 + 116) = 20;
        return nullptr;
      }
      v77 += 3;
      if ( v79 >= *(int *)(v1 + 416) )
      {
        *(_DWORD *)(v1 + 116) = 20;
        return (_BYTE *)v81;
      }
    }
    while ( get8_packet_raw(v1) != (int *)-1 )
      ;
    v84 = 0;
    *(_DWORD *)(v1 + 1008) = 0;
    for ( i11 = (_DWORD *)v1; ; i11[252] = setup_malloc((_DWORD *)v1, 2 * v239) )
    {
      ++i11;
      if ( v84 >= *(_DWORD *)(v1 + 4) )
        break;
      ++v84;
      i11[203] = setup_malloc((_DWORD *)v1, 4 * *(_DWORD *)(v1 + 132));
      i11[235] = setup_malloc((_DWORD *)v1, (unsigned int)(4 * *(_DWORD *)(v1 + 132)) >> 1);
    }
    if ( init_blocksize((_DWORD *)v1, 0, *(_DWORD *)(v1 + 128))
      && init_blocksize((_DWORD *)v1, 1, *(_DWORD *)(v1 + 132)) )
    {
      v136 = *(_DWORD *)(v1 + 132);
      v137 = *(_DWORD *)(v1 + 280);
      v138 = 0;
      *(_DWORD *)(v1 + 120) = *(_DWORD *)(v1 + 128);
      *(_DWORD *)(v1 + 124) = v136;
      v139 = (unsigned int)(4 * v136) >> 1;
      v140 = 0;
      v141 = 0;
      while ( v141 < v137 )
      {
        ++v141;
        v142 = (_DWORD *)(*(_DWORD *)(v1 + 412) + v138);
        v138 += 24;
        if ( v140 < (int)((unsigned int)(v142[1] - *v142) / v142[2]) )
          v140 = (unsigned int)(v142[1] - *v142) / v142[2];
      }
      v147 = (v140 + 1) * 4 * *(_DWORD *)(v1 + 4);
      *(_BYTE *)(v1 + 1393) = 1;
      if ( v139 < v147 )
        *(_DWORD *)(v1 + 12) = v147;
      else
        *(_DWORD *)(v1 + 12) = v139;
      *(_DWORD *)(v1 + 52) = stb_vorbis_get_file_offset((int *)v1);
      return (_BYTE *)(&dword_0 + 1);
    }
    return nullptr;
  }
  v17 = *(_DWORD *)(v1 + 140);
  if ( (unsigned __int8)get_bits(v1, 8) != 66
    || (unsigned __int8)get_bits(v1, 8) != 67
    || (unsigned __int8)get_bits(v1, 8) != 86 )
  {
    goto LABEL_214;
  }
  v18 = get_bits(v1, 8);
  *(_DWORD *)(v17 + v232) = (get_bits(v1, 8) << 8) + v18;
  v19 = get_bits(v1, 8);
  v20 = get_bits(v1, 8);
  v21 = v17 + v232;
  *(_DWORD *)(v21 + 4) = (get_bits(v1, 8) << 16) + v19 + (v20 << 8);
  v22 = get_bits(v1, 1);
  if ( v22 )
  {
    *(_BYTE *)(v21 + 23) = 0;
LABEL_55:
    v23 = setup_malloc((_DWORD *)v1, *(_DWORD *)(v21 + 4));
    *(_DWORD *)(v21 + 8) = v23;
    goto LABEL_56;
  }
  v115 = get_bits(v1, 1);
  *(_BYTE *)(v21 + 23) = v115;
  if ( !v115 )
    goto LABEL_55;
  v23 = setup_temp_malloc((_DWORD *)v1, *(_DWORD *)(v21 + 4));
LABEL_56:
  if ( !v23 )
    goto LABEL_215;
  if ( v22 )
  {
    v86 = 0;
    for ( i12 = get_bits(v1, 5) + 1; ; ++i12 )
    {
      v25 = *(_DWORD *)(v21 + 4);
      if ( v86 >= v25 )
        break;
      v88 = ilog(v25 - v86);
      v89 = get_bits(v1, v88);
      v90 = v89 + v86;
      if ( (signed int)(v89 + v86) > *(_DWORD *)(v21 + 4) )
        goto LABEL_214;
      LC_API_MEMSET_0(&v23[v86], i12, v89);
      v86 = v90;
    }
    v22 = 0;
  }
  else
  {
    for ( i13 = 0; ; ++i13 )
    {
      v25 = *(_DWORD *)(v21 + 4);
      if ( i13 >= v25 )
        break;
      if ( !*(_BYTE *)(v21 + 23) || get_bits(v1, 1) )
      {
        v23[i13] = get_bits(v1, 5) + 1;
        ++v22;
      }
      else
      {
        v23[i13] = -1;
      }
    }
  }
  v28 = *(unsigned __int8 *)(v21 + 23);
  if ( *(_BYTE *)(v21 + 23) )
  {
    if ( v22 < v25 >> 2 )
    {
      v29 = v22;
      goto LABEL_92;
    }
    v28 = 0;
    if ( v25 > *(_DWORD *)(v1 + 16) )
      *(_DWORD *)(v1 + 16) = v25;
    v30 = setup_malloc((_DWORD *)v1, *(_DWORD *)(v21 + 4));
    v31 = *(_DWORD *)(v21 + 4);
    *(_DWORD *)(v21 + 8) = v30;
    memcpy(v30, v23, v31);
    setup_temp_free((_DWORD *)v1, v23, *(_DWORD *)(v21 + 4));
    v25 = *(_DWORD *)(v21 + 4);
    v23 = *(_BYTE **)(v21 + 8);
    *(_BYTE *)(v21 + 23) = 0;
  }
  v29 = 0;
  for ( i14 = 0; i14 < v25; ++i14 )
  {
    v33 = v23[i14];
    if ( (unsigned __int8)(v33 - 11) <= 0xF3u )
      ++v29;
  }
LABEL_92:
  *(_DWORD *)(v21 + 2092) = v29;
  if ( v28 )
  {
    if ( v29 )
    {
      result = setup_malloc((_DWORD *)v1, v29);
      *(_DWORD *)(v21 + 8) = result;
      if ( !result
        || (result = setup_temp_malloc((_DWORD *)v1, 4 * *(_DWORD *)(v21 + 2092)), (*(_DWORD *)(v21 + 32) = result) == 0) )
      {
        *(_DWORD *)(v1 + 116) = 3;
        return result;
      }
      v42 = setup_temp_malloc((_DWORD *)v1, 4 * *(_DWORD *)(v21 + 2092));
      if ( !v42 )
      {
        *(_DWORD *)(v1 + 116) = 3;
        return nullptr;
      }
      v25 = *(_DWORD *)(v21 + 4);
    }
    else
    {
      v42 = nullptr;
    }
    v43 = v25 + 8 * *(_DWORD *)(v21 + 2092);
    if ( v43 > *(_DWORD *)(v1 + 16) )
    {
      *(_DWORD *)(v1 + 16) = v43;
      v25 = *(_DWORD *)(v21 + 4);
    }
  }
  else
  {
    v160 = setup_malloc((_DWORD *)v1, 4 * v25);
    *(_DWORD *)(v21 + 32) = v160;
    if ( !v160 )
    {
      *(_DWORD *)(v1 + 116) = 3;
      return nullptr;
    }
    v42 = nullptr;
    v25 = *(_DWORD *)(v21 + 4);
  }
  v44 = (int)v243;
  LC_API_MEMSET_0(v243, 0, 0x80u);
  for ( i15 = 0; v25 > i15 && (unsigned __int8)v23[i15] == 255; ++i15 )
    ;
  if ( v25 == i15 )
  {
LABEL_276:
    v161 = *(_DWORD *)(v21 + 2092);
    if ( !v161 )
    {
      v162 = *(unsigned __int8 *)(v21 + 23);
      goto LABEL_279;
    }
    v169 = setup_malloc((_DWORD *)v1, 4 * (v161 + 1));
    v170 = *(_DWORD *)(v21 + 2092);
    *(_DWORD *)(v21 + 2084) = v169;
    v171 = setup_malloc((_DWORD *)v1, 4 * (v170 + 1));
    if ( v171 )
      v172 = v171 + 1;
    *(_DWORD *)(v21 + 2088) = v171;
    if ( v171 )
    {
      *(_DWORD *)(v21 + 2088) = v172;
      *v171 = -1;
    }
    v173 = *(unsigned __int8 *)(v21 + 23);
    if ( *(_BYTE *)(v21 + 23) )
    {
      v174 = 0;
    }
    else
    {
      v44 = *(unsigned __int8 *)(v21 + 23);
      v174 = *(_DWORD *)(v21 + 4);
    }
    if ( *(_BYTE *)(v21 + 23) )
    {
      while ( v174 < *(_DWORD *)(v21 + 2092) )
      {
        *(_DWORD *)(*(_DWORD *)(v21 + 2084) + 4 * v174) = bit_reverse(*(_DWORD *)(*(_DWORD *)(v21 + 32) + 4 * v174));
        ++v174;
      }
    }
    else
    {
      while ( v44 < v174 )
      {
        v175 = (unsigned __int8)v23[v44];
        if ( *(_BYTE *)(v21 + 23) || v175 != 255 && v175 > 0xA )
        {
          *(_DWORD *)(*(_DWORD *)(v21 + 2084) + 4 * v173) = bit_reverse(*(_DWORD *)(*(_DWORD *)(v21 + 32) + 4 * v44));
          v174 = *(_DWORD *)(v21 + 4);
          ++v173;
        }
        ++v44;
      }
    }
    qsort(*(void **)(v21 + 2084), *(_DWORD *)(v21 + 2092), 4u, (int (*)(const void *, const void *))uint32_compare);
    v176 = 0;
    *(_DWORD *)(*(_DWORD *)(v21 + 2084) + 4 * *(_DWORD *)(v21 + 2092)) = -1;
    v162 = *(unsigned __int8 *)(v21 + 23);
    v177 = v1;
    v178 = 0;
    if ( *(_BYTE *)(v21 + 23) )
      v179 = *(_DWORD *)(v21 + 2092);
    else
      v179 = *(_DWORD *)(v21 + 4);
    v180 = v179;
    v181 = v177;
    while ( 1 )
    {
      if ( v178 >= v180 )
      {
        v1 = v181;
LABEL_279:
        if ( v162 )
        {
          setup_temp_free((_DWORD *)v1, v42, 4 * *(_DWORD *)(v21 + 2092));
          setup_temp_free((_DWORD *)v1, *(void **)(v21 + 32), 4 * *(_DWORD *)(v21 + 2092));
          setup_temp_free((_DWORD *)v1, v23, *(_DWORD *)(v21 + 4));
          *(_DWORD *)(v21 + 32) = 0;
        }
        v163 = v21;
        for ( i16 = 0; i16 != 1024; ++i16 )
        {
          *(_WORD *)(v163 + 36) = -1;
          v163 += 2;
        }
        v165 = 0;
        if ( *(_BYTE *)(v21 + 23) )
          v166 = *(_DWORD *)(v21 + 2092);
        else
          v166 = *(_DWORD *)(v21 + 4);
        v167 = 0;
        if ( v166 >= 0x7FFF )
          v166 = 0x7FFF;
        while ( v167 < v166 )
        {
          if ( *(unsigned __int8 *)(*(_DWORD *)(v21 + 8) + v167) <= 0xAu )
          {
            if ( *(_BYTE *)(v21 + 23) )
              v168 = bit_reverse(*(_DWORD *)(*(_DWORD *)(v21 + 2084) + v165));
            else
              v168 = *(_DWORD *)(*(_DWORD *)(v21 + 32) + v165);
            while ( v168 <= 0x3FF )
            {
              *(_WORD *)(v21 + 2 * v168 + 36) = v167;
              v168 += 1 << *(_BYTE *)(*(_DWORD *)(v21 + 8) + v167);
            }
          }
          ++v167;
          v165 += 4;
        }
        v188 = get_bits(v1, 4);
        *(_BYTE *)(v21 + 21) = v188;
        if ( v188 <= 2u )
        {
          if ( !v188 )
            goto LABEL_339;
          v189 = get_bits(v1, 32);
          v190 = v189 < 0;
          v191 = v189 & 0x1FFFFF;
          v192 = ((unsigned int)v189 >> 21) & 0x3FF;
          v203 = (double)(unsigned int)v191;
          if ( v190 )
            HIDWORD(v203) += 0x80000000;
          v193 = v203;
          *(float *)(v21 + 12) = ldexpf(v193, v192 - 788);
          v194 = get_bits(v1, 32);
          v190 = v194 < 0;
          v195 = v194 & 0x1FFFFF;
          v196 = ((unsigned int)v194 >> 21) & 0x3FF;
          v218 = (double)(unsigned int)v195;
          if ( v190 )
            HIDWORD(v218) += 0x80000000;
          v197 = v218;
          *(float *)(v21 + 16) = ldexpf(v197, v196 - 788);
          *(_BYTE *)(v21 + 20) = get_bits(v1, 4) + 1;
          v198 = get_bits(v1, 1);
          v199 = *(unsigned __int8 *)(v21 + 21);
          *(_BYTE *)(v21 + 22) = v198;
          if ( v199 == 1 )
          {
            v212 = *(_DWORD *)(v21 + 4);
            v213 = *(_DWORD *)v21;
            v214 = logf((float)v212) / (float)v213;
            v215 = expf(v214);
            v216 = (int)floorf(v215);
            v217 = powf((float)v216 + 1.0, (float)v213);
            if ( v212 >= (int)floorf(v217) )
              ++v216;
            *(_DWORD *)(v21 + 24) = v216;
          }
          else
          {
            *(_DWORD *)(v21 + 24) = *(_DWORD *)(v21 + 4) * *(_DWORD *)v21;
          }
          v23 = setup_temp_malloc((_DWORD *)v1, 2 * *(_DWORD *)(v21 + 24));
          if ( v23 )
          {
            for ( i17 = 0; ; ++i17 )
            {
              v201 = *(_DWORD *)(v21 + 24);
              if ( i17 >= v201 )
                break;
              v202 = get_bits(v1, *(unsigned __int8 *)(v21 + 20));
              if ( v202 == -1 )
              {
                setup_temp_free((_DWORD *)v1, v23, 2 * *(_DWORD *)(v21 + 24));
                *(_DWORD *)(v1 + 116) = 20;
                return nullptr;
              }
              *(_WORD *)&v23[2 * i17] = v202;
            }
            if ( *(_BYTE *)(v21 + 21) == 1 )
            {
              v204 = *(unsigned __int8 *)(v21 + 23);
              if ( *(_BYTE *)(v21 + 23) )
              {
                v205 = *(_DWORD *)(v21 + 2092);
                if ( v205 )
                  goto LABEL_357;
LABEL_339:
                ++v238;
                v232 += 2096;
                goto LABEL_48;
              }
              v205 = *(_DWORD *)(v21 + 4);
LABEL_357:
              *(_DWORD *)(v21 + 28) = setup_malloc((_DWORD *)v1, 4 * *(_DWORD *)v21 * v205);
              if ( !*(_DWORD *)(v21 + 28) )
              {
                setup_temp_free((_DWORD *)v1, v23, 2 * *(_DWORD *)(v21 + 24));
                *(_DWORD *)(v1 + 116) = 3;
                return nullptr;
              }
              if ( v204 )
                v206 = *(_DWORD *)(v21 + 2092);
              else
                v206 = *(_DWORD *)(v21 + 4);
              v207 = 0;
              v208 = v206;
              while ( v207 < v208 )
              {
                if ( v204 )
                  v209 = *(_DWORD *)(v21 + 2088);
                else
                  v209 = v207;
                if ( v204 )
                  v209 = *(_DWORD *)(v209 + 4 * v207);
                v210 = 1;
                for ( i18 = 0; i18 < *(_DWORD *)v21; ++i18 )
                {
                  v228 = i18 + *(_DWORD *)v21 * v207;
                  *(float *)(*(_DWORD *)(v21 + 28) + 4 * v228) = (float)((float)*(unsigned __int16 *)&v23[2 * ((unsigned int)(v209 / v210) % *(_DWORD *)(v21 + 24))]
                                                                       * *(float *)(v21 + 16))
                                                               + *(float *)(v21 + 12);
                  v210 *= *(_DWORD *)(v21 + 24);
                }
                ++v207;
              }
              setup_temp_free((_DWORD *)v1, v23, 2 * *(_DWORD *)(v21 + 24));
              *(_BYTE *)(v21 + 21) = 2;
            }
            else
            {
              v223 = 0;
              *(_DWORD *)(v21 + 28) = setup_malloc((_DWORD *)v1, 4 * v201);
              while ( 1 )
              {
                v224 = *(_DWORD *)(v21 + 24);
                if ( v223 >= v224 )
                  break;
                *(float *)(*(_DWORD *)(v21 + 28) + 4 * v223) = (float)((float)*(unsigned __int16 *)&v23[2 * v223]
                                                                     * *(float *)(v21 + 16))
                                                             + *(float *)(v21 + 12);
                ++v223;
              }
              setup_temp_free((_DWORD *)v1, v23, 2 * v224);
              if ( *(_BYTE *)(v21 + 21) != 2 )
                goto LABEL_339;
            }
            if ( *(_BYTE *)(v21 + 22) )
            {
              v219 = 0;
              for ( i19 = 1; i19 < *(_DWORD *)(v21 + 24); ++i19 )
              {
                v221 = *(_DWORD *)(v21 + 28);
                v222 = *(_DWORD *)(v221 + v219);
                v219 += 4;
                *(_DWORD *)(v221 + 4 * i19) = v222;
              }
              *(_BYTE *)(v21 + 22) = 0;
            }
            goto LABEL_339;
          }
LABEL_215:
          *(_DWORD *)(v1 + 116) = 3;
          return v23;
        }
LABEL_214:
        *(_DWORD *)(v1 + 116) = 20;
        return nullptr;
      }
      if ( v162 )
      {
        LOBYTE(v182) = v23[v42[v176]];
      }
      else
      {
        v182 = (unsigned __int8)v23[v178];
        if ( v182 == 255 || v182 <= 0xA )
          goto LABEL_333;
      }
      v227 = v181;
      v183 = bit_reverse(*(_DWORD *)(*(_DWORD *)(v21 + 32) + v176 * 4));
      v237 = v183;
      v184 = *(_DWORD *)(v21 + 2092);
      v185 = 0;
      while ( v184 > 1 )
      {
        v183 = v184 >> 1;
        v186 = (v184 >> 1) + v185;
        if ( v237 >= *(_DWORD *)(*(_DWORD *)(v21 + 2084) + 4 * v186) )
          v183 = v184 - v183;
        else
          v186 = v185;
        v184 = v183;
        v185 = v186;
      }
      v187 = *(_DWORD *)(v21 + 2088);
      if ( v162 )
        v183 = v42[v176];
      v181 = v227;
      if ( v162 )
      {
        *(_DWORD *)(v187 + 4 * v185) = v183;
        *(_BYTE *)(*(_DWORD *)(v21 + 8) + v185) = v182;
      }
      else
      {
        *(_DWORD *)(v187 + 4 * v185) = v178;
      }
      v162 = *(unsigned __int8 *)(v21 + 23);
LABEL_333:
      ++v178;
      ++v176;
    }
  }
  v94 = v23[i15];
  if ( *(_BYTE *)(v21 + 23) )
  {
    **(_DWORD **)(v21 + 32) = 0;
    **(_BYTE **)(v21 + 8) = v94;
    *v42 = i15;
  }
  else
  {
    *(_DWORD *)(*(_DWORD *)(v21 + 32) + 4 * i15) = *(unsigned __int8 *)(v21 + 23);
  }
  for ( i20 = 1; i20 <= (unsigned __int8)v23[i15]; ++i20 )
    *(_DWORD *)&v243[4 * i20] = 1 << (32 - i20);
  v96 = i15 + 1;
  v97 = 1;
  for ( i21 = 4 * v96; ; i21 += 4 )
  {
    if ( v25 <= v96 )
      goto LABEL_276;
    v98 = (unsigned __int8)v23[v96];
    if ( v98 != 255 )
      break;
LABEL_272:
    ++v96;
  }
  v99 = &v243[4 * v98];
  v100 = 0;
  while ( v99 != v243 )
  {
    v101 = *(_DWORD *)v99;
    v99 -= 4;
    ++v100;
    if ( v101 )
    {
      v102 = v98 - (v100 - 1);
      goto LABEL_195;
    }
  }
  v102 = v98 - v100;
LABEL_195:
  if ( v102 )
  {
    v103 = &v244[4 * v102 + 76];
    v104 = *((_DWORD *)v103 - 269);
    *((_DWORD *)v103 - 269) = 0;
    v226 = v97;
    v240 = v104;
    v105 = bit_reverse(v104);
    v106 = v226;
    v107 = *(unsigned __int8 *)(v21 + 23);
    v108 = v107 == 0;
    if ( *(_BYTE *)(v21 + 23) )
      v107 = *(_DWORD *)(v21 + 32);
    v109 = v23[v96];
    if ( v108 )
    {
      v106 = *(_DWORD *)(v21 + 32);
    }
    else
    {
      *(_DWORD *)(v107 + 4 * v226) = v105;
      v107 = *(_DWORD *)(v21 + 8);
    }
    if ( v108 )
      v107 = i21;
    else
      *(_BYTE *)(v107 + v106) = v109;
    if ( v108 )
      *(_DWORD *)(v106 + v107) = v105;
    else
      v42[v106] = v96;
    v110 = (unsigned __int8)v23[v96];
    if ( v102 != v110 )
    {
      v111 = 0;
      v112 = 32 - v110;
      v113 = 0;
      while ( v102 < v110 - v113 )
      {
        ++v113;
        v114 = v240 + (1 << v112++);
        *(_DWORD *)&v243[4 * v110 + v111] = v114;
        v111 -= 4;
      }
    }
    v97 = v226 + 1;
    goto LABEL_272;
  }
  if ( *(_BYTE *)(v21 + 23) )
    setup_temp_free((_DWORD *)v1, v42, 0);
LABEL_23:
  *(_DWORD *)(v1 + 116) = 20;
  return nullptr;
}


// ===== 87a73c vorbis_deinit(stb_vorbis *) =====
void __fastcall vorbis_deinit(int a1)
{
  int v2; // r8
  int v3; // r10
  int v4; // r6
  void **v5; // r1
  int v6; // r5
  char *v7; // r5
  void *v8; // r1
  int v9; // r6
  int v10; // r7
  void **v11; // r5
  char *v12; // r1
  int v13; // r5
  int v14; // r6
  void **v15; // r5
  int v16; // r6

  if ( *(int *)(a1 + 280) > 0 )
  {
    v2 = 0;
    v3 = 0;
    do
    {
      v4 = *(_DWORD *)(a1 + 412) + v2;
      v5 = *(void ***)(v4 + 16);
      if ( v5 )
      {
        if ( *(int *)(*(_DWORD *)(a1 + 140) + 2096 * *(unsigned __int8 *)(v4 + 13) + 4) > 0 )
        {
          v6 = 0;
          while ( 1 )
          {
            setup_free(a1, v5[v6++]);
            if ( *(_DWORD *)(*(_DWORD *)(a1 + 140) + 2096 * *(unsigned __int8 *)(v4 + 13) + 4) <= v6 )
              break;
            v5 = *(void ***)(v4 + 16);
          }
          v5 = *(void ***)(v4 + 16);
        }
        setup_free(a1, v5);
      }
      setup_free(a1, *(void **)(v4 + 20));
      ++v3;
      v2 += 24;
    }
    while ( *(_DWORD *)(a1 + 280) > v3 );
  }
  v7 = *(char **)(a1 + 140);
  v8 = v7;
  if ( v7 )
  {
    if ( *(int *)(a1 + 136) > 0 )
    {
      v9 = 0;
      v10 = 0;
      while ( 1 )
      {
        v11 = (void **)&v7[v9];
        setup_free(a1, v11[2]);
        setup_free(a1, v11[7]);
        setup_free(a1, v11[8]);
        setup_free(a1, v11[521]);
        v12 = (char *)v11[522];
        ++v10;
        if ( v12 )
          v12 -= 4;
        setup_free(a1, v12);
        v9 += 2096;
        if ( *(_DWORD *)(a1 + 136) <= v10 )
          break;
        v7 = *(char **)(a1 + 140);
      }
      v8 = *(void **)(a1 + 140);
    }
    setup_free(a1, v8);
  }
  setup_free(a1, *(void **)(a1 + 276));
  setup_free(a1, *(void **)(a1 + 412));
  if ( *(int *)(a1 + 416) > 0 )
  {
    v13 = 0;
    v14 = 0;
    do
    {
      ++v14;
      setup_free(a1, *(void **)(*(_DWORD *)(a1 + 420) + v13 + 4));
      v13 += 40;
    }
    while ( *(_DWORD *)(a1 + 416) > v14 );
  }
  setup_free(a1, *(void **)(a1 + 420));
  if ( *(int *)(a1 + 4) > 0 )
  {
    v15 = (void **)a1;
    v16 = 0;
    do
    {
      setup_free(a1, v15[204]);
      setup_free(a1, v15[236]);
      setup_free(a1, v15[253]);
      ++v16;
      ++v15;
    }
    while ( *(_DWORD *)(a1 + 4) > v16 );
  }
  setup_free(a1, *(void **)(a1 + 1084));
  setup_free(a1, *(void **)(a1 + 1092));
  setup_free(a1, *(void **)(a1 + 1100));
  setup_free(a1, *(void **)(a1 + 1108));
  setup_free(a1, *(void **)(a1 + 1116));
  setup_free(a1, *(void **)(a1 + 1088));
  setup_free(a1, *(void **)(a1 + 1096));
  setup_free(a1, *(void **)(a1 + 1104));
  setup_free(a1, *(void **)(a1 + 1112));
  setup_free(a1, *(void **)(a1 + 1120));
  if ( *(_DWORD *)(a1 + 28) )
    fclose();
}


// ===== 87a9bc stb_vorbis_close(stb_vorbis *) =====
void __fastcall stb_vorbis_close(void *a1)
{
  if ( a1 )
  {
    vorbis_deinit((int)a1);
    setup_free((int)a1, a1);
  }
}


// ===== 87a9e0 codebook_decode_scalar_raw(stb_vorbis *,Codebook *) =====
int __fastcall codebook_decode_scalar_raw(int a1, int a2)
{
  int v2; // r3
  int *v5; // r0
  int v6; // r2
  int v7; // r6
  int v8; // r3
  int v9; // r2
  unsigned int v10; // r1
  int result; // r0
  unsigned int v12; // r6
  int v13; // r0
  int v14; // r2
  unsigned int v15; // r7
  int v16; // r2
  int v17; // r3
  int v18; // r1
  int v19; // r3
  int v20; // r12

  v2 = *(_DWORD *)(a1 + 1412);
  if ( v2 <= 24 )
  {
    if ( !v2 )
      *(_DWORD *)(a1 + 1408) = 0;
    do
    {
      if ( *(_DWORD *)(a1 + 1400) && !*(_BYTE *)(a1 + 1392) )
        break;
      v5 = get8_packet_raw(a1);
      if ( v5 == (int *)-1 )
        break;
      v6 = *(_DWORD *)(a1 + 1412);
      *(_DWORD *)(a1 + 1408) += (_DWORD)v5 << v6;
      *(_DWORD *)(a1 + 1412) = v6 + 8;
    }
    while ( v6 + 8 <= 24 );
  }
  v7 = *(_DWORD *)(a2 + 4);
  if ( v7 > 8 )
  {
    v8 = *(_DWORD *)(a2 + 2084) != 0;
    if ( !*(_DWORD *)(a2 + 2084) )
      goto LABEL_10;
LABEL_16:
    v12 = *(_DWORD *)(a1 + 1408);
    v13 = bit_reverse(v12);
    v14 = *(_DWORD *)(a2 + 2092);
    v15 = v13;
    if ( v14 > 1 )
    {
      result = 0;
      while ( 1 )
      {
        v17 = v14 >> 1;
        if ( v15 >= *(_DWORD *)(*(_DWORD *)(a2 + 2084) + 4 * ((v14 >> 1) + result)) )
        {
          v17 = v14 - v17;
          result += v14 >> 1;
        }
        if ( v17 <= 1 )
          break;
        v14 = v17;
      }
      v16 = result;
    }
    else
    {
      v16 = 0;
      result = 0;
    }
    v18 = *(_DWORD *)(a1 + 1412);
    if ( !*(_BYTE *)(a2 + 23) )
    {
      v16 = *(_DWORD *)(*(_DWORD *)(a2 + 2088) + 4 * v16);
      result = v16;
    }
    v19 = *(unsigned __int8 *)(*(_DWORD *)(a2 + 8) + v16);
    if ( v19 <= v18 )
    {
      *(_DWORD *)(a1 + 1412) = v18 - v19;
      *(_DWORD *)(a1 + 1408) = v12 >> v19;
      return result;
    }
    goto LABEL_30;
  }
  v8 = *(_DWORD *)(a2 + 32) == 0;
  if ( !*(_DWORD *)(a2 + 32) )
    goto LABEL_16;
LABEL_10:
  if ( v7 <= 0 )
  {
LABEL_14:
    *(_DWORD *)(a1 + 1412) = 0;
    *(_DWORD *)(a1 + 116) = 21;
    return -1;
  }
  while ( 1 )
  {
    v9 = *(unsigned __int8 *)(*(_DWORD *)(a2 + 8) + v8);
    if ( v9 != 255 )
    {
      v10 = *(_DWORD *)(a1 + 1408);
      if ( *(_DWORD *)(*(_DWORD *)(a2 + 32) + 4 * v8) == (((1 << v9) - 1) & v10) )
        break;
    }
    if ( ++v8 == v7 )
      goto LABEL_14;
  }
  v20 = *(_DWORD *)(a1 + 1412);
  if ( v20 >= v9 )
  {
    *(_DWORD *)(a1 + 1408) = v10 >> v9;
    *(_DWORD *)(a1 + 1412) = v20 - *(unsigned __int8 *)(*(_DWORD *)(a2 + 8) + v8);
    return v8;
  }
LABEL_30:
  *(_DWORD *)(a1 + 1412) = 0;
  return -1;
}

