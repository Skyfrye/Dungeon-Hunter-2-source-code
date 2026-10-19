// ===== 313bf8 std::less<std::string>::operator()(std::string const&,std::string const&) =====
unsigned int __fastcall std::less<std::string>::operator()(int a1, int a2, int a3)
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


// ===== 313c48 std::operator==<char,std::char_traits<char>,std::allocator<char>>(std::basic_string<char,std::char_traits<char>,std::allocator<char>> const&,char const*) =====
bool __fastcall std::operator==<char>(int a1, char *a2)
{
  size_t v4; // r2
  const void *v5; // r0

  v4 = LC_API_STRLEN_0(a2);
  v5 = *(const void **)(a1 + 20);
  return v4 == *(_DWORD *)(a1 + 16) - (_DWORD)v5 && memcmp(v5, a2, v4) == 0;
}


// ===== 313c90 Savegame::Job::~Job() =====
void __fastcall Savegame::Job::~Job(Savegame::Job *this)
{
  if ( *((_BYTE *)this + 29) && *(_DWORD *)this )
    (*(void (__fastcall **)(_DWORD))(**(_DWORD **)this + 4))(*(_DWORD *)this);
  *((_BYTE *)this + 29) = 0;
  *(_DWORD *)this = 0;
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block((std::priv::_String_base<char,std::allocator<char> > *const)((char *)this + 4));
}


// ===== 313cdc Savegame::Job::copy(Savegame::Job const&) =====
std::string *__fastcall Savegame::Job::copy(Savegame::Job *this, const char **a2)
{
  std::string *result; // r0

  if ( *((_BYTE *)this + 29) && *(_DWORD *)this )
    (*(void (__fastcall **)(_DWORD))(**(_DWORD **)this + 4))(*(_DWORD *)this);
  *((_BYTE *)this + 29) = 0;
  *(_DWORD *)this = 0;
  *(_DWORD *)this = *a2;
  result = (std::string *)((char *)this + 4);
  if ( (const char **)((char *)this + 4) != a2 + 1 )
    result = std::string::_M_assign(result, a2[6], a2[5]);
  *((_BYTE *)this + 29) = *((_BYTE *)a2 + 29);
  *((_BYTE *)this + 28) = *((_BYTE *)a2 + 28);
  *((_BYTE *)a2 + 29) = 0;
  return result;
}


// ===== 313d5c std::priv::_List_base<Savegame::Job,std::allocator<Savegame::Job>>::clear(void) =====
void __fastcall std::priv::_List_base<Savegame::Job,std::allocator<Savegame::Job>>::clear(_DWORD *a1)
{
  _DWORD *v1; // r6
  _DWORD *v3; // r4

  v1 = (_DWORD *)*a1;
  if ( (_DWORD *)*a1 != a1 )
  {
    while ( 1 )
    {
      v3 = (_DWORD *)*v1;
      Savegame::Job::~Job((Savegame::Job *)(v1 + 2));
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v1, 0x28u);
      if ( v3 == a1 )
        break;
      v1 = v3;
    }
    v1 = a1;
  }
  a1[1] = v1;
  *a1 = v1;
}


// ===== 313da8 std::list<Savegame::Job,std::allocator<Savegame::Job>>::~list() =====
_DWORD *__fastcall std::list<Savegame::Job>::~list(_DWORD *a1)
{
  std::priv::_List_base<Savegame::Job,std::allocator<Savegame::Job>>::clear(a1);
  return a1;
}


// ===== 313dbc std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,Savegame::SectionInfo>,std::priv::_Select1st<std::pair<std::string const,Savegame::SectionInfo>>,std::priv::_MapTraitsT<std::pair<std::string const,Savegame::SectionInfo>>,std::allocator<std::pair<std::string const,Savegame::SectionInfo>>>::_M_erase(std::priv::_Rb_tree_node_base *) =====
void __fastcall std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,Savegame::SectionInfo>,std::priv::_Select1st<std::pair<std::string const,Savegame::SectionInfo>>,std::priv::_MapTraitsT<std::pair<std::string const,Savegame::SectionInfo>>,std::allocator<std::pair<std::string const,Savegame::SectionInfo>>>::_M_erase(
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
      std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,Savegame::SectionInfo>,std::priv::_Select1st<std::pair<std::string const,Savegame::SectionInfo>>,std::priv::_MapTraitsT<std::pair<std::string const,Savegame::SectionInfo>>,std::allocator<std::pair<std::string const,Savegame::SectionInfo>>>::_M_erase(
        a1,
        *(_DWORD *)(v2 + 12));
      v4 = *(_DWORD *)(v2 + 8);
      std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block((std::priv::_String_base<char,std::allocator<char> > *const)(v2 + 16));
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer((void *)v2, 0x40u);
      v2 = v4;
    }
    while ( v4 );
  }
}


// ===== 313dfc Savegame::~Savegame() =====
void __fastcall Savegame::~Savegame(Savegame *this)
{
  int v1; // r1

  v1 = *((_DWORD *)this + 7);
  *(_DWORD *)this = off_95B010;
  if ( v1 )
  {
    (*(void (__fastcall **)(int))(*(_DWORD *)v1 + 4))(v1);
    *((_DWORD *)this + 7) = 0;
  }
  if ( *((_DWORD *)this + 12) )
  {
    std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,Savegame::SectionInfo>,std::priv::_Select1st<std::pair<std::string const,Savegame::SectionInfo>>,std::priv::_MapTraitsT<std::pair<std::string const,Savegame::SectionInfo>>,std::allocator<std::pair<std::string const,Savegame::SectionInfo>>>::_M_erase(
      (int)this + 32,
      *((_DWORD *)this + 9));
    *((_DWORD *)this + 11) = (char *)this + 32;
    *((_DWORD *)this + 12) = 0;
    *((_DWORD *)this + 10) = (char *)this + 32;
    *((_DWORD *)this + 9) = 0;
  }
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block((std::priv::_String_base<char,std::allocator<char> > *const)((char *)this + 4));
}


// ===== 313e88 Savegame::~Savegame() =====
void __fastcall Savegame::~Savegame(Savegame *this)
{
  Savegame::~Savegame(this);
  CustomFree(this);
}


// ===== 313ea4 Savegame::~Savegame() =====
void __fastcall Savegame::~Savegame(Savegame *this)
{
  int v1; // r1

  v1 = *((_DWORD *)this + 7);
  *(_DWORD *)this = off_95B010;
  if ( v1 )
  {
    (*(void (__fastcall **)(int))(*(_DWORD *)v1 + 4))(v1);
    *((_DWORD *)this + 7) = 0;
  }
  if ( *((_DWORD *)this + 12) )
  {
    std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,Savegame::SectionInfo>,std::priv::_Select1st<std::pair<std::string const,Savegame::SectionInfo>>,std::priv::_MapTraitsT<std::pair<std::string const,Savegame::SectionInfo>>,std::allocator<std::pair<std::string const,Savegame::SectionInfo>>>::_M_erase(
      (int)this + 32,
      *((_DWORD *)this + 9));
    *((_DWORD *)this + 11) = (char *)this + 32;
    *((_DWORD *)this + 12) = 0;
    *((_DWORD *)this + 10) = (char *)this + 32;
    *((_DWORD *)this + 9) = 0;
  }
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block((std::priv::_String_base<char,std::allocator<char> > *const)((char *)this + 4));
}


// ===== 313f30 std::vector<std::string,std::allocator<std::string>>::~vector() =====
std::priv::_String_base<char,std::allocator<char> > **__fastcall std::vector<std::string>::~vector(
        std::priv::_String_base<char,std::allocator<char> > **a1)
{
  std::priv::_String_base<char,std::allocator<char> > *v1; // r5
  std::priv::_String_base<char,std::allocator<char> > *v2; // r6
  std::priv::_String_base<char,std::allocator<char> > *v4; // r0
  size_t v5; // r1

  v1 = a1[1];
  v2 = *a1;
  while ( v2 != v1 )
    std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(--v1);
  v4 = *a1;
  if ( !*a1 )
    return a1;
  v5 = 8 * (((char *)a1[2] - (char *)v4) >> 3);
  if ( v5 <= 0x80 )
  {
    __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v4, v5);
    return a1;
  }
  CustomFree(v4);
  return a1;
}


// ===== 313fb0 Savegame::DeleteAllSlotFiles(int) =====
std::priv::_String_base<char,std::allocator<char> > **__fastcall Savegame::DeleteAllSlotFiles(Savegame *this, int a2)
{
  int v2; // r9
  void (__fastcall *v3)(int, int, char *, std::priv::_String_base<char,std::allocator<char> > **); // r10
  int v4; // r0
  std::priv::_String_base<char,std::allocator<char> > *v5; // r6
  std::priv::_String_base<char,std::allocator<char> > *v6; // r10
  char *M_data; // r1
  std::priv::_String_base<char,std::allocator<char> > *v9; // [sp+0h] [bp-410h] BYREF
  std::priv::_String_base<char,std::allocator<char> > *v10; // [sp+4h] [bp-40Ch]
  int v11; // [sp+8h] [bp-408h]
  char v12[4]; // [sp+Ch] [bp-404h] BYREF

  sprintf(v12, "%s%03u", "dh2_", this);
  v11 = 0;
  v9 = nullptr;
  v10 = nullptr;
  v2 = *(_DWORD *)(dword_99F73C + 52);
  v3 = *(void (__fastcall **)(int, int, char *, std::priv::_String_base<char,std::allocator<char> > **))(*(_DWORD *)v2 + 128);
  v4 = (*(int (__fastcall **)(int))(*(_DWORD *)v2 + 116))(v2);
  v3(v2, v4, v12, &v9);
  v5 = v9;
  v6 = v10;
  while ( v5 != v6 )
  {
    M_data = v5->_M_start_of_storage._M_data;
    ++v5;
    (*(void (__fastcall **)(_DWORD, char *))(**(_DWORD **)(dword_99F73C + 52) + 156))(
      *(_DWORD *)(dword_99F73C + 52),
      M_data);
  }
  return std::vector<std::string>::~vector(&v9);
}


// ===== 3140b0 std::list<Savegame::Job,std::allocator<Savegame::Job>>::erase(std::priv::_List_iterator<Savegame::Job,std::_Nonconst_traits<Savegame::Job>>) [clone] =====
_DWORD *__fastcall std::list<Savegame::Job>::erase(_DWORD *a1, int **a2)
{
  int *v2; // r6
  int v4; // r4
  _DWORD *v5; // r3
  Savegame::Job *v6; // r0

  v2 = *a2;
  v4 = **a2;
  v5 = (_DWORD *)(*a2)[1];
  v6 = (Savegame::Job *)(*a2 + 2);
  *v5 = v4;
  *(_DWORD *)(v4 + 4) = v5;
  Savegame::Job::~Job(v6);
  __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v2, 0x28u);
  *a1 = v4;
  return a1;
}


// ===== 3140ec std::string::string(char const*,std::allocator<char> const&) =====
std::string *__fastcall std::string::string(std::string *a1, char *a2)
{
  size_t v4; // r0

  a1->_M_finish = (char *)a1;
  a1->_M_start_of_storage._M_data = (char *)a1;
  v4 = LC_API_STRLEN_0(a2);
  std::string::_M_range_initialize(a1, a2, &a2[v4]);
  return a1;
}


// ===== 314120 std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,Savegame::SectionInfo>,std::priv::_Select1st<std::pair<std::string const,Savegame::SectionInfo>>,std::priv::_MapTraitsT<std::pair<std::string const,Savegame::SectionInfo>>,std::allocator<std::pair<std::string const,Savegame::SectionInfo>>>::_M_find<char const*>(char const* const&) =====
_DWORD *__fastcall std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,Savegame::SectionInfo>,std::priv::_Select1st<std::pair<std::string const,Savegame::SectionInfo>>,std::priv::_MapTraitsT<std::pair<std::string const,Savegame::SectionInfo>>,std::allocator<std::pair<std::string const,Savegame::SectionInfo>>>::_M_find<char const*>(
        _DWORD *a1,
        char **a2)
{
  _DWORD *v2; // r4
  _DWORD *v4; // r10
  const void *v5; // r3
  int v6; // r6
  int v7; // r5
  size_t v8; // r2
  int v9; // r3
  const void *v10; // r1
  int v11; // r5
  int v12; // r6
  size_t v13; // r2
  int v14; // r7
  int v16; // [sp+4h] [bp-50h]
  std::priv::_String_base<char,std::allocator<char> > v18; // [sp+1Ch] [bp-38h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v19; // [sp+34h] [bp-20h] BYREF

  v2 = (_DWORD *)a1[1];
  if ( !v2 )
    return a1;
  v4 = a1;
  do
  {
    std::string::string((std::string *)&v19, *a2);
    v5 = (const void *)v2[9];
    v6 = v2[8] - (_DWORD)v5;
    v7 = v19._M_finish - v19._M_start_of_storage._M_data;
    if ( v19._M_finish - v19._M_start_of_storage._M_data >= v6 )
      v8 = v2[8] - (_DWORD)v5;
    else
      v8 = v19._M_finish - v19._M_start_of_storage._M_data;
    v9 = memcmp(v5, v19._M_start_of_storage._M_data, v8);
    if ( !v9 )
    {
      if ( v6 >= v7 )
        v9 = v6 > v7;
      else
        v9 = -1;
    }
    v16 = v9;
    std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v19);
    if ( v16 < 0 )
      v2 = (_DWORD *)v2[3];
    else
      v4 = v2;
    if ( v16 >= 0 )
      v2 = (_DWORD *)v2[2];
  }
  while ( v2 );
  if ( v4 != a1 )
  {
    std::string::string((std::string *)&v18, *a2);
    v10 = (const void *)v4[9];
    v11 = v4[8] - (_DWORD)v10;
    v12 = v18._M_finish - v18._M_start_of_storage._M_data;
    v13 = v11 >= v18._M_finish - v18._M_start_of_storage._M_data
        ? v18._M_finish - v18._M_start_of_storage._M_data
        : v4[8] - (_DWORD)v10;
    v14 = memcmp(v18._M_start_of_storage._M_data, v10, v13);
    if ( !v14 )
    {
      if ( v12 >= v11 )
        v14 = v12 > v11;
      else
        v14 = -1;
    }
    std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v18);
    if ( v14 < 0 )
      return a1;
  }
  return v4;
}


// ===== 314290 std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,Savegame::SectionInfo>,std::priv::_Select1st<std::pair<std::string const,Savegame::SectionInfo>>,std::priv::_MapTraitsT<std::pair<std::string const,Savegame::SectionInfo>>,std::allocator<std::pair<std::string const,Savegame::SectionInfo>>>::_M_lower_bound<char const*>(char const* const&) =====
_DWORD *__fastcall std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,Savegame::SectionInfo>,std::priv::_Select1st<std::pair<std::string const,Savegame::SectionInfo>>,std::priv::_MapTraitsT<std::pair<std::string const,Savegame::SectionInfo>>,std::allocator<std::pair<std::string const,Savegame::SectionInfo>>>::_M_lower_bound<char const*>(
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
  std::priv::_String_base<char,std::allocator<char> > v12; // [sp+Ch] [bp-20h] BYREF

  v2 = a1;
  v4 = (_DWORD *)a1[1];
  while ( v4 )
  {
    std::string::string((std::string *)&v12, *a2);
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
    std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v12);
    if ( v11 < 0 )
      v4 = (_DWORD *)v4[3];
    else
      v2 = v4;
    if ( v11 >= 0 )
      v4 = (_DWORD *)v4[2];
  }
  return v2;
}


// ===== 314380 std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,Savegame::SectionInfo>,std::priv::_Select1st<std::pair<std::string const,Savegame::SectionInfo>>,std::priv::_MapTraitsT<std::pair<std::string const,Savegame::SectionInfo>>,std::allocator<std::pair<std::string const,Savegame::SectionInfo>>>::_M_find<char [5]>(char [5] const&) =====
int __fastcall std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,Savegame::SectionInfo>,std::priv::_Select1st<std::pair<std::string const,Savegame::SectionInfo>>,std::priv::_MapTraitsT<std::pair<std::string const,Savegame::SectionInfo>>,std::allocator<std::pair<std::string const,Savegame::SectionInfo>>>::_M_find<char [5]>(
        int a1,
        char *a2)
{
  _DWORD *v2; // r4
  int v4; // r10
  const void *v5; // r3
  int v6; // r6
  int v7; // r5
  size_t v8; // r2
  int v9; // r3
  const void *v10; // r1
  int v11; // r5
  int v12; // r6
  size_t v13; // r2
  int v14; // r7
  int v16; // [sp+4h] [bp-50h]
  std::priv::_String_base<char,std::allocator<char> > v18; // [sp+1Ch] [bp-38h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v19; // [sp+34h] [bp-20h] BYREF

  v2 = *(_DWORD **)(a1 + 4);
  if ( !v2 )
    return a1;
  v4 = a1;
  do
  {
    std::string::string((std::string *)&v19, a2);
    v5 = (const void *)v2[9];
    v6 = v2[8] - (_DWORD)v5;
    v7 = v19._M_finish - v19._M_start_of_storage._M_data;
    if ( v19._M_finish - v19._M_start_of_storage._M_data >= v6 )
      v8 = v2[8] - (_DWORD)v5;
    else
      v8 = v19._M_finish - v19._M_start_of_storage._M_data;
    v9 = memcmp(v5, v19._M_start_of_storage._M_data, v8);
    if ( !v9 )
    {
      if ( v6 >= v7 )
        v9 = v6 > v7;
      else
        v9 = -1;
    }
    v16 = v9;
    std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v19);
    if ( v16 < 0 )
      v2 = (_DWORD *)v2[3];
    else
      v4 = (int)v2;
    if ( v16 >= 0 )
      v2 = (_DWORD *)v2[2];
  }
  while ( v2 );
  if ( v4 != a1 )
  {
    std::string::string((std::string *)&v18, a2);
    v10 = *(const void **)(v4 + 36);
    v11 = *(_DWORD *)(v4 + 32) - (_DWORD)v10;
    v12 = v18._M_finish - v18._M_start_of_storage._M_data;
    v13 = v11 >= v18._M_finish - v18._M_start_of_storage._M_data
        ? v18._M_finish - v18._M_start_of_storage._M_data
        : *(_DWORD *)(v4 + 32) - (_DWORD)v10;
    v14 = memcmp(v18._M_start_of_storage._M_data, v10, v13);
    if ( !v14 )
    {
      if ( v12 >= v11 )
        v14 = v12 > v11;
      else
        v14 = -1;
    }
    std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v18);
    if ( v14 < 0 )
      return a1;
  }
  return v4;
}


// ===== 3144f0 std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,Savegame::SectionInfo>,std::priv::_Select1st<std::pair<std::string const,Savegame::SectionInfo>>,std::priv::_MapTraitsT<std::pair<std::string const,Savegame::SectionInfo>>,std::allocator<std::pair<std::string const,Savegame::SectionInfo>>>::_M_lower_bound<char [5]>(char [5] const&) =====
int __fastcall std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,Savegame::SectionInfo>,std::priv::_Select1st<std::pair<std::string const,Savegame::SectionInfo>>,std::priv::_MapTraitsT<std::pair<std::string const,Savegame::SectionInfo>>,std::allocator<std::pair<std::string const,Savegame::SectionInfo>>>::_M_lower_bound<char [5]>(
        int a1,
        char *a2)
{
  int v2; // r9
  _DWORD *v4; // r4
  const void *v5; // r3
  int v6; // r6
  int v7; // r5
  size_t v8; // r2
  int v9; // r3
  int v11; // [sp+0h] [bp-2Ch]
  std::priv::_String_base<char,std::allocator<char> > v12; // [sp+Ch] [bp-20h] BYREF

  v2 = a1;
  v4 = *(_DWORD **)(a1 + 4);
  while ( v4 )
  {
    std::string::string((std::string *)&v12, a2);
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
    std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v12);
    if ( v11 < 0 )
      v4 = (_DWORD *)v4[3];
    else
      v2 = (int)v4;
    if ( v11 >= 0 )
      v4 = (_DWORD *)v4[2];
  }
  return v2;
}


// ===== 3145e0 Savegame::Job::Job(Savegame::Job const&) =====
Savegame::Job *__fastcall Savegame::Job::Job(Savegame::Job *this, const char **a2)
{
  _DWORD *v4; // r0

  v4 = (_DWORD *)((char *)this + 4);
  *((_DWORD *)this + 5) = v4;
  *((_DWORD *)this + 6) = v4;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block(v4, 0x10u);
  **((_BYTE **)this + 5) = 0;
  *((_BYTE *)this + 29) = 0;
  Savegame::Job::copy(this, a2);
  return this;
}


// ===== 314628 `global constructor keyed to'.._.._sources_Utils_Savegame.cpp =====
int `global constructor keyed to'.._.._sources_Utils_Savegame.cpp()
{
  int result; // r0

  dword_99F8B4 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_99F8B0 = 1056964608;
  Savegame::s_jobList = (int)&Savegame::s_jobList;
  dword_99F8CC = (int)&Savegame::s_jobList;
  _aeabi_atexit((int)&Savegame::s_jobList, (int)std::list<Savegame::Job>::~list, (int)&_dso_handle);
  Savegame::s_currentJob = 0;
  dword_99F8E4 = (int)dword_99F8D4;
  dword_99F8E8 = (int)dword_99F8D4;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block(dword_99F8D4, 0x10u);
  *(_BYTE *)dword_99F8E4 = 0;
  byte_99F8ED = 0;
  byte_99F8EC = 0;
  result = _aeabi_atexit((int)&Savegame::s_currentJob, (int)Savegame::Job::~Job, (int)&_dso_handle);
  if ( (`guard variable for'Singleton<Application>::s_inst & 1) == 0 )
  {
    `guard variable for'Singleton<Application>::s_inst = 1;
    Application::Application((Application *)&Singleton<Application>::s_inst);
    return _aeabi_atexit((int)&Singleton<Application>::s_inst, (int)Application::~Application, (int)&_dso_handle);
  }
  return result;
}


// ===== 314734 Savegame::UpdateJobs(void) =====
int __fastcall Savegame::UpdateJobs(Savegame *this)
{
  int result; // r0
  _DWORD *v2; // r5
  int v3; // r1
  _DWORD *v4; // r0
  int v5; // r10
  int v6; // r9
  int v7; // r3
  void (__fastcall *v8)(int, int, _DWORD, _DWORD); // r5
  __int64 v9; // r0
  int v10; // r3
  int v11; // r1
  int v12; // r0
  int v13; // r11
  int v14; // r9
  void (__fastcall *v15)(int, int, char *); // r3
  void *p_M_finish; // r2
  char *M_finish; // r2
  char *M_data; // r7
  unsigned int size; // r0
  unsigned int *v20; // r1
  char *v21; // r0
  int v22; // r5
  char *v23; // r0
  char *v24; // r5
  void (__fastcall *v25)(int, int, char *); // [sp+8h] [bp-44h]
  char *v26; // [sp+Ch] [bp-40h]
  _DWORD v27[3]; // [sp+10h] [bp-3Ch] BYREF
  unsigned int v28; // [sp+1Ch] [bp-30h] BYREF
  int *v29; // [sp+20h] [bp-2Ch] BYREF
  int v30; // [sp+24h] [bp-28h] BYREF
  int v31; // [sp+28h] [bp-24h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v32; // [sp+2Ch] [bp-20h] BYREF

  if ( Savegame::UpdateJobs(void)::inQueue )
    return 0;
  Savegame::UpdateJobs(void)::inQueue = 1;
  v2 = (_DWORD *)Savegame::s_currentJob;
  if ( !Savegame::s_currentJob )
  {
    if ( (int *)Savegame::s_jobList == &Savegame::s_jobList )
    {
      result = Savegame::s_currentJob;
      goto LABEL_9;
    }
    Savegame::Job::copy((Savegame::Job *)&Savegame::s_currentJob, (const char **)(Savegame::s_jobList + 8));
    v29 = (int *)Savegame::s_jobList;
    std::list<Savegame::Job>::erase(v27, &v29);
    if ( byte_99F8EC )
    {
      v31 = -1;
      v12 = (*(int (__fastcall **)(_DWORD, int, _DWORD))(**(_DWORD **)(dword_99F73C + 52) + 148))(
              *(_DWORD *)(dword_99F73C + 52),
              dword_99F8E8,
              0);
      v30 = v12;
      if ( v12 )
      {
        IStreamBase::readAs<unsigned int>(v12, (int)&v31);
        (*(void (__fastcall **)(_DWORD, int *))(**(_DWORD **)(dword_99F73C + 52) + 120))(
          *(_DWORD *)(dword_99F73C + 52),
          &v30);
        if ( v31 != -1 )
        {
          v13 = dword_99F8E8;
          v14 = *(_DWORD *)(dword_99F73C + 52);
          v15 = *(void (__fastcall **)(int, int, char *))(*(_DWORD *)v14 + 160);
          v32._M_finish = (char *)&v32;
          v32._M_start_of_storage._M_data = (char *)&v32;
          v25 = v15;
          std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block(&v32, dword_99F8E4 - dword_99F8E8 + 5);
          *v32._M_finish = 0;
          std::string::_M_append((std::string *)&v32, (char *)dword_99F8E8, (char *)dword_99F8E4);
          if ( (std::priv::_String_base<char,std::allocator<char> > *)v32._M_start_of_storage._M_data == &v32 )
            p_M_finish = &v32._M_finish;
          else
            p_M_finish = v32._M_buffers._M_end_of_storage;
          if ( (unsigned int)p_M_finish - (unsigned int)v32._M_finish <= 4 )
          {
            size = std::string::_M_compute_next_size((std::string *)&v32, 4u);
            if ( size )
            {
              v28 = size;
              M_data = (char *)std::__node_alloc::allocate((std::__node_alloc *)&v28, v20);
              v26 = &M_data[v28];
            }
            else
            {
              v26 = nullptr;
              M_data = nullptr;
            }
            if ( v32._M_start_of_storage._M_data == v32._M_finish )
            {
              v21 = M_data;
            }
            else
            {
              v22 = v32._M_finish - v32._M_start_of_storage._M_data;
              v21 = (char *)memcpy(
                              M_data,
                              v32._M_start_of_storage._M_data,
                              v32._M_finish - v32._M_start_of_storage._M_data)
                  + v22;
            }
            v23 = (char *)memcpy(v21, ".bak", 4u);
            v23[4] = 0;
            v24 = v23 + 4;
            std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v32);
            v32._M_finish = v24;
            v32._M_start_of_storage._M_data = M_data;
            v32._M_buffers._M_end_of_storage = v26;
          }
          else
          {
            *v32._M_finish = 46;
            M_finish = v32._M_finish;
            v32._M_finish[1] = 98;
            M_finish[3] = 107;
            M_finish[2] = 97;
            v32._M_finish[4] = 0;
            M_data = v32._M_start_of_storage._M_data;
            v32._M_finish += 4;
          }
          v25(v14, v13, M_data);
          std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v32);
        }
      }
      goto LABEL_17;
    }
    Savegame::UpdateJobs(void)::count = 0;
    Savegame::UpdateJobs(void)::max_count = ((*(_DWORD *)(Savegame::s_currentJob + 32)
                                            - *(_DWORD *)(Savegame::s_currentJob + 28)) >> 2)
                                          - 1;
    Savegame::UpdateJobs(void)::filestream = (*(int (__fastcall **)(_DWORD, int, int))(**(_DWORD **)(dword_99F73C + 52)
                                                                                     + 148))(
                                               *(_DWORD *)(dword_99F73C + 52),
                                               dword_99F8E8,
                                               1);
    if ( !Savegame::UpdateJobs(void)::filestream )
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
          "..\\..\\project_vs2005\\Game/..\\..\\sources\\Utils\\Savegame.cpp",
          118);
      }
      Savegame::Job::finish(&Savegame::s_currentJob);
      result = 1;
      goto LABEL_9;
    }
    v2 = (_DWORD *)Savegame::s_currentJob;
  }
  v3 = Savegame::UpdateJobs(void)::count;
  if ( !Savegame::UpdateJobs(void)::count )
  {
    (*(void (__fastcall **)(_DWORD *, _DWORD, _DWORD, _DWORD))(*v2 + 32))(v2, *v2, 0, 0);
    if ( (*(int (__fastcall **)(int, void *, int, _DWORD))(*(_DWORD *)Savegame::s_currentJob + 24))(
           Savegame::s_currentJob,
           &_data_start,
           4,
           0) != 4
      || v11 )
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
          "..\\..\\project_vs2005\\Game/..\\..\\sources\\Utils\\/StreamReader.h",
          80);
      }
    }
    v30 = -1;
    (*(void (__fastcall **)(int, _DWORD, _DWORD, _DWORD))(*(_DWORD *)Savegame::s_currentJob + 44))(
      Savegame::s_currentJob,
      *(_DWORD *)Savegame::s_currentJob,
      0,
      0);
    StreamReader::writeAs<unsigned int>(Savegame::s_currentJob, (int)&v30);
    v2 = (_DWORD *)Savegame::s_currentJob;
    v3 = Savegame::UpdateJobs(void)::count;
  }
  v4 = v2;
  v5 = Savegame::UpdateJobs(void)::filestream;
  v6 = *(_DWORD *)(v2[7] + 4 * v3);
  v7 = *v2;
  v8 = *(void (__fastcall **)(int, int, _DWORD, _DWORD))(*(_DWORD *)Savegame::UpdateJobs(void)::filestream + 28);
  v9 = ((__int64 (__fastcall *)(_DWORD *))*(_DWORD *)(v7 + 52))(v4);
  v8(v5, v6, v9, HIDWORD(v9));
  v10 = Savegame::UpdateJobs(void)::count;
  if ( !Savegame::UpdateJobs(void)::count )
  {
    (*(void (__fastcall **)(int, _DWORD, _DWORD, _DWORD))(*(_DWORD *)Savegame::s_currentJob + 44))(
      Savegame::s_currentJob,
      *(_DWORD *)Savegame::s_currentJob,
      0,
      0);
    StreamReader::writeAs<unsigned int>(Savegame::s_currentJob, (int)&_data_start);
    v10 = Savegame::UpdateJobs(void)::count;
  }
  Savegame::UpdateJobs(void)::count = v10 + 1;
  if ( v10 + 1 != Savegame::UpdateJobs(void)::max_count )
    goto LABEL_8;
  (*(void (__fastcall **)(int, _DWORD, _DWORD, _DWORD))(*(_DWORD *)Savegame::UpdateJobs(void)::filestream + 32))(
    Savegame::UpdateJobs(void)::filestream,
    *(_DWORD *)Savegame::UpdateJobs(void)::filestream,
    0,
    0);
  StreamReader::writeAs<unsigned int>(Savegame::UpdateJobs(void)::filestream, (int)&_data_start);
  (*(void (__fastcall **)(_DWORD, int *))(**(_DWORD **)(dword_99F73C + 52) + 120))(
    *(_DWORD *)(dword_99F73C + 52),
    &Savegame::UpdateJobs(void)::filestream);
LABEL_17:
  Savegame::Job::finish(&Savegame::s_currentJob);
LABEL_8:
  result = 1;
LABEL_9:
  Savegame::UpdateJobs(void)::inQueue = 0;
  return result;
}


// ===== 314cfc Savegame::FlushJobs(char const*) =====
int __fastcall Savegame::FlushJobs(int this, const char *a2)
{
  char *v2; // r5
  int *i; // r4

  v2 = (char *)this;
  if ( this )
  {
    this = std::operator==<char>((int)dword_99F8D4, (char *)this);
    if ( this )
    {
      do
        this = Savegame::UpdateJobs((Savegame *)this);
      while ( this );
    }
    else
    {
      for ( i = (int *)Savegame::s_jobList; ; i = (int *)*i )
      {
        this = (int)(i + 3);
        if ( i == &Savegame::s_jobList )
          break;
        this = std::operator==<char>(this, v2);
        if ( this )
        {
          do
            this = Savegame::UpdateJobs((Savegame *)this);
          while ( this );
          return this;
        }
      }
    }
  }
  else
  {
    do
      this = Savegame::UpdateJobs((Savegame *)this);
    while ( this );
  }
  return this;
}


// ===== 314da0 std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,Savegame::SectionInfo>,std::priv::_Select1st<std::pair<std::string const,Savegame::SectionInfo>>,std::priv::_MapTraitsT<std::pair<std::string const,Savegame::SectionInfo>>,std::allocator<std::pair<std::string const,Savegame::SectionInfo>>>::_M_create_node(std::pair<std::string const,Savegame::SectionInfo> const&) =====
char *__fastcall std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,Savegame::SectionInfo>,std::priv::_Select1st<std::pair<std::string const,Savegame::SectionInfo>>,std::priv::_MapTraitsT<std::pair<std::string const,Savegame::SectionInfo>>,std::allocator<std::pair<std::string const,Savegame::SectionInfo>>>::_M_create_node(
        int a1,
        int *a2)
{
  char *v3; // r5
  int v4; // r0
  int v5; // r1
  int v6; // r2
  int v7; // r3
  int v8; // r1
  size_t v10; // [sp+4h] [bp-8h] BYREF

  v10 = 64;
  v3 = (char *)__ZNSt12__node_alloc11_M_allocateERj_veneer(&v10);
  *((_DWORD *)v3 + 8) = v3 + 16;
  *((_DWORD *)v3 + 9) = v3 + 16;
  std::string::_M_range_initialize((std::string *)(v3 + 16), (const char *)a2[5], (const char *)a2[4]);
  a2 += 6;
  v4 = *a2;
  v5 = a2[1];
  v6 = a2[2];
  v7 = a2[3];
  a2 += 4;
  *((_DWORD *)v3 + 10) = v4;
  *((_DWORD *)v3 + 11) = v5;
  *((_DWORD *)v3 + 12) = v6;
  *((_DWORD *)v3 + 13) = v7;
  v8 = a2[1];
  *((_DWORD *)v3 + 14) = *a2;
  *((_DWORD *)v3 + 15) = v8;
  *((_DWORD *)v3 + 3) = 0;
  *((_DWORD *)v3 + 2) = 0;
  return v3;
}


// ===== 314e08 std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,Savegame::SectionInfo>,std::priv::_Select1st<std::pair<std::string const,Savegame::SectionInfo>>,std::priv::_MapTraitsT<std::pair<std::string const,Savegame::SectionInfo>>,std::allocator<std::pair<std::string const,Savegame::SectionInfo>>>::_M_insert(std::priv::_Rb_tree_node_base *,std::pair<std::string const,Savegame::SectionInfo> const&,std::priv::_Rb_tree_node_base *,std::priv::_Rb_tree_node_base *) =====
char **__fastcall std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,Savegame::SectionInfo>,std::priv::_Select1st<std::pair<std::string const,Savegame::SectionInfo>>,std::priv::_MapTraitsT<std::pair<std::string const,Savegame::SectionInfo>>,std::allocator<std::pair<std::string const,Savegame::SectionInfo>>>::_M_insert(
        char **a1,
        _DWORD *a2,
        _DWORD *a3,
        int *a4,
        int a5,
        int a6)
{
  char *v9; // r0
  char *node; // r7
  char *v12; // r0
  unsigned int v13; // r0
  int *v14; // [sp+4h] [bp-8h]

  if ( a2 == a3 )
  {
    node = std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,Savegame::SectionInfo>,std::priv::_Select1st<std::pair<std::string const,Savegame::SectionInfo>>,std::priv::_MapTraitsT<std::pair<std::string const,Savegame::SectionInfo>>,std::allocator<std::pair<std::string const,Savegame::SectionInfo>>>::_M_create_node(
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
    v12 = std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,Savegame::SectionInfo>,std::priv::_Select1st<std::pair<std::string const,Savegame::SectionInfo>>,std::priv::_MapTraitsT<std::pair<std::string const,Savegame::SectionInfo>>,std::allocator<std::pair<std::string const,Savegame::SectionInfo>>>::_M_create_node(
            (int)a2,
            a4);
    a3[2] = v12;
    node = v12;
    if ( a3 == (_DWORD *)a2[2] )
      a2[2] = v12;
  }
  else
  {
    v9 = std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,Savegame::SectionInfo>,std::priv::_Select1st<std::pair<std::string const,Savegame::SectionInfo>>,std::priv::_MapTraitsT<std::pair<std::string const,Savegame::SectionInfo>>,std::allocator<std::pair<std::string const,Savegame::SectionInfo>>>::_M_create_node(
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


// ===== 314ef8 std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,Savegame::SectionInfo>,std::priv::_Select1st<std::pair<std::string const,Savegame::SectionInfo>>,std::priv::_MapTraitsT<std::pair<std::string const,Savegame::SectionInfo>>,std::allocator<std::pair<std::string const,Savegame::SectionInfo>>>::insert_unique(std::pair<std::string const,Savegame::SectionInfo> const&) =====
int __fastcall std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,Savegame::SectionInfo>,std::priv::_Select1st<std::pair<std::string const,Savegame::SectionInfo>>,std::priv::_MapTraitsT<std::pair<std::string const,Savegame::SectionInfo>>,std::allocator<std::pair<std::string const,Savegame::SectionInfo>>>::insert_unique(
        int a1,
        _DWORD *a2,
        int *a3)
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
  v7 = (const void *)a3[5];
  v8 = a3[4];
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
    std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,Savegame::SectionInfo>,std::priv::_Select1st<std::pair<std::string const,Savegame::SectionInfo>>,std::priv::_MapTraitsT<std::pair<std::string const,Savegame::SectionInfo>>,std::allocator<std::pair<std::string const,Savegame::SectionInfo>>>::_M_insert(
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
      v7 = (const void *)a3[5];
      v8 = a3[4];
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
        v7 = (const void *)a3[5];
        v8 = a3[4];
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
        v7 = (const void *)a3[5];
        v8 = a3[4];
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
      std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,Savegame::SectionInfo>,std::priv::_Select1st<std::pair<std::string const,Savegame::SectionInfo>>,std::priv::_MapTraitsT<std::pair<std::string const,Savegame::SectionInfo>>,std::allocator<std::pair<std::string const,Savegame::SectionInfo>>>::_M_insert(
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


// ===== 315110 Savegame::AddJob(Savegame::Job &) =====
Savegame::Job *__fastcall Savegame::AddJob(Savegame *this, Savegame::Job *a2)
{
  int v3; // r4
  const void *v4; // r1
  const void *v5; // r0
  int v6; // r6
  size_t v7; // r2
  int *v8; // r6
  Savegame::Job *result; // r0
  int **v10; // r3
  int v11; // [sp+0h] [bp-14h] BYREF
  size_t v12; // [sp+8h] [bp-Ch] BYREF
  int *v13; // [sp+Ch] [bp-8h] BYREF

  v3 = Savegame::s_jobList;
  while ( (int *)v3 != &Savegame::s_jobList )
  {
    v4 = *(const void **)(v3 + 32);
    v5 = *((const void **)this + 6);
    v6 = *(_DWORD *)v3;
    v7 = *((_DWORD *)this + 5) - (_DWORD)v5;
    if ( v7 == *(_DWORD *)(v3 + 28) - (_DWORD)v4
      && !memcmp(v5, v4, v7)
      && *((unsigned __int8 *)this + 28) == *(unsigned __int8 *)(v3 + 36) )
    {
      v13 = (int *)v3;
      std::list<Savegame::Job>::erase(&v11, &v13);
      v3 = v6;
    }
    else
    {
      v3 = v6;
    }
  }
  v12 = 40;
  v8 = (int *)__ZNSt12__node_alloc11_M_allocateERj_veneer(&v12);
  result = Savegame::Job::Job((Savegame::Job *)(v8 + 2), (const char **)this);
  v10 = *(int ***)(v3 + 4);
  *v8 = v3;
  v8[1] = (int)v10;
  *v10 = v8;
  *(_DWORD *)(v3 + 4) = v8;
  return result;
}


// ===== 3151ec std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,Savegame::SectionInfo>,std::priv::_Select1st<std::pair<std::string const,Savegame::SectionInfo>>,std::priv::_MapTraitsT<std::pair<std::string const,Savegame::SectionInfo>>,std::allocator<std::pair<std::string const,Savegame::SectionInfo>>>::insert_unique(std::priv::_Rb_tree_iterator<std::pair<std::string const,Savegame::SectionInfo>,std::priv::_MapTraitsT<std::pair<std::string const,Savegame::SectionInfo>>>,std::pair<std::string const,Savegame::SectionInfo> const&) =====
char **__fastcall std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,Savegame::SectionInfo>,std::priv::_Select1st<std::pair<std::string const,Savegame::SectionInfo>>,std::priv::_MapTraitsT<std::pair<std::string const,Savegame::SectionInfo>>,std::allocator<std::pair<std::string const,Savegame::SectionInfo>>>::insert_unique(
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
      std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,Savegame::SectionInfo>,std::priv::_Select1st<std::pair<std::string const,Savegame::SectionInfo>>,std::priv::_MapTraitsT<std::pair<std::string const,Savegame::SectionInfo>>,std::allocator<std::pair<std::string const,Savegame::SectionInfo>>>::insert_unique(
        (int)&v50,
        a2,
        (int *)a4);
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
        std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,Savegame::SectionInfo>,std::priv::_Select1st<std::pair<std::string const,Savegame::SectionInfo>>,std::priv::_MapTraitsT<std::pair<std::string const,Savegame::SectionInfo>>,std::allocator<std::pair<std::string const,Savegame::SectionInfo>>>::insert_unique(
          (int)&v49,
          a2,
          (int *)a4);
        *a1 = v49;
        return a1;
      }
      v31 = (int)*a3;
      if ( !*((_DWORD *)*a3 + 3) )
      {
LABEL_93:
        std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,Savegame::SectionInfo>,std::priv::_Select1st<std::pair<std::string const,Savegame::SectionInfo>>,std::priv::_MapTraitsT<std::pair<std::string const,Savegame::SectionInfo>>,std::allocator<std::pair<std::string const,Savegame::SectionInfo>>>::_M_insert(
          a1,
          a2,
          *a3,
          (int *)a4,
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
        std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,Savegame::SectionInfo>,std::priv::_Select1st<std::pair<std::string const,Savegame::SectionInfo>>,std::priv::_MapTraitsT<std::pair<std::string const,Savegame::SectionInfo>>,std::allocator<std::pair<std::string const,Savegame::SectionInfo>>>::_M_insert(
          a1,
          a2,
          (_DWORD *)v33,
          (int *)a4,
          0,
          (int)v4);
        return a1;
      }
      v40 = v38 > v37;
    }
    if ( v40 >= 0 )
    {
      std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,Savegame::SectionInfo>,std::priv::_Select1st<std::pair<std::string const,Savegame::SectionInfo>>,std::priv::_MapTraitsT<std::pair<std::string const,Savegame::SectionInfo>>,std::allocator<std::pair<std::string const,Savegame::SectionInfo>>>::insert_unique(
        (int)&v48,
        a2,
        (int *)a4);
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
      std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,Savegame::SectionInfo>,std::priv::_Select1st<std::pair<std::string const,Savegame::SectionInfo>>,std::priv::_MapTraitsT<std::pair<std::string const,Savegame::SectionInfo>>,std::allocator<std::pair<std::string const,Savegame::SectionInfo>>>::_M_insert(
        a1,
        a2,
        v8,
        (int *)a4,
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
    std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,Savegame::SectionInfo>,std::priv::_Select1st<std::pair<std::string const,Savegame::SectionInfo>>,std::priv::_MapTraitsT<std::pair<std::string const,Savegame::SectionInfo>>,std::allocator<std::pair<std::string const,Savegame::SectionInfo>>>::_M_insert(
      a1,
      a2,
      v4,
      (int *)a4,
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
        std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,Savegame::SectionInfo>,std::priv::_Select1st<std::pair<std::string const,Savegame::SectionInfo>>,std::priv::_MapTraitsT<std::pair<std::string const,Savegame::SectionInfo>>,std::allocator<std::pair<std::string const,Savegame::SectionInfo>>>::insert_unique(
          (int)&v47,
          a2,
          (int *)a4);
        *a1 = v47;
        return a1;
      }
      v4 = *a3;
    }
    if ( !*((_DWORD *)v4 + 3) )
    {
      std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,Savegame::SectionInfo>,std::priv::_Select1st<std::pair<std::string const,Savegame::SectionInfo>>,std::priv::_MapTraitsT<std::pair<std::string const,Savegame::SectionInfo>>,std::allocator<std::pair<std::string const,Savegame::SectionInfo>>>::_M_insert(
        a1,
        a2,
        v4,
        (int *)a4,
        0,
        (int)v4);
      return a1;
    }
LABEL_61:
    std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,Savegame::SectionInfo>,std::priv::_Select1st<std::pair<std::string const,Savegame::SectionInfo>>,std::priv::_MapTraitsT<std::pair<std::string const,Savegame::SectionInfo>>,std::allocator<std::pair<std::string const,Savegame::SectionInfo>>>::_M_insert(
      a1,
      a2,
      v16,
      (int *)a4,
      (int)v16,
      0);
    return a1;
  }
LABEL_22:
  *a1 = v4;
  return a1;
}


// ===== 3156f0 std::map<std::string,Savegame::SectionInfo,std::less<std::string>,std::allocator<std::pair<std::string const,Savegame::SectionInfo>>>::operator[]<char const*>(char const* const&) =====
char *__fastcall std::map<std::string,Savegame::SectionInfo>::operator[]<char const*>(char *a1, char **a2)
{
  char *v4; // r5
  const void *v5; // r1
  int v6; // r11
  int v7; // r9
  size_t v8; // r2
  int v9; // r0
  char *v10; // r3
  char *v12; // r5
  char *v13; // [sp+8h] [bp-7Ch] BYREF
  char *v14; // [sp+Ch] [bp-78h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v15; // [sp+18h] [bp-6Ch] BYREF
  int v16; // [sp+30h] [bp-54h]
  int v17; // [sp+34h] [bp-50h]
  int v18; // [sp+38h] [bp-4Ch]
  int v19; // [sp+3Ch] [bp-48h]
  int v20; // [sp+40h] [bp-44h]
  int v21; // [sp+44h] [bp-40h]
  std::priv::_String_base<char,std::allocator<char> > v22; // [sp+4Ch] [bp-38h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v23; // [sp+64h] [bp-20h] BYREF

  v4 = (char *)std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,Savegame::SectionInfo>,std::priv::_Select1st<std::pair<std::string const,Savegame::SectionInfo>>,std::priv::_MapTraitsT<std::pair<std::string const,Savegame::SectionInfo>>,std::allocator<std::pair<std::string const,Savegame::SectionInfo>>>::_M_lower_bound<char const*>(
                 a1,
                 a2);
  if ( v4 == a1 )
    goto LABEL_11;
  std::string::string((std::string *)&v23, *a2);
  v5 = *((const void **)v4 + 9);
  v6 = *((_DWORD *)v4 + 8) - (_DWORD)v5;
  v7 = v23._M_finish - v23._M_start_of_storage._M_data;
  if ( v6 >= v23._M_finish - v23._M_start_of_storage._M_data )
    v8 = v23._M_finish - v23._M_start_of_storage._M_data;
  else
    v8 = *((_DWORD *)v4 + 8) - (_DWORD)v5;
  v9 = memcmp(v23._M_start_of_storage._M_data, v5, v8);
  if ( v9 )
  {
    if ( v9 >= 0 )
      goto LABEL_7;
    goto LABEL_10;
  }
  if ( v7 < v6 )
  {
LABEL_10:
    std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v23);
LABEL_11:
    std::string::string((std::string *)&v22, *a2);
    v15._M_finish = (char *)&v15;
    v15._M_start_of_storage._M_data = (char *)&v15;
    std::string::_M_range_initialize((std::string *)&v15, v22._M_start_of_storage._M_data, v22._M_finish);
    v18 = 0;
    v21 = 0;
    v20 = 0;
    v19 = 0;
    v13 = v4;
    v16 = 0;
    v17 = 0;
    std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,Savegame::SectionInfo>,std::priv::_Select1st<std::pair<std::string const,Savegame::SectionInfo>>,std::priv::_MapTraitsT<std::pair<std::string const,Savegame::SectionInfo>>,std::allocator<std::pair<std::string const,Savegame::SectionInfo>>>::insert_unique(
      &v14,
      a1,
      &v13,
      (int)&v15);
    v12 = v14;
    std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v15);
    std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v22);
    v10 = v12;
    return v10 + 40;
  }
LABEL_7:
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v23);
  v10 = v4;
  return v10 + 40;
}


// ===== 315848 Savegame::load(char const*,void (*)(IStreamBase *,void *),void (*)(IStreamBase *,void *),void *) =====
char *__fastcall Savegame::load(
        Savegame *this,
        char *a2,
        void (*a3)(IStreamBase *, void *),
        void (*a4)(IStreamBase *, void *),
        void *a5)
{
  char *v5; // r5
  char *result; // r0
  int v10; // r2
  _DWORD *v11; // r1
  char *v12; // [sp+4h] [bp-8h] BYREF

  v12 = a2;
  v5 = (char *)this + 32;
  result = (char *)std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,Savegame::SectionInfo>,std::priv::_Select1st<std::pair<std::string const,Savegame::SectionInfo>>,std::priv::_MapTraitsT<std::pair<std::string const,Savegame::SectionInfo>>,std::allocator<std::pair<std::string const,Savegame::SectionInfo>>>::_M_find<char const*>(
                     (_DWORD *)this + 8,
                     &v12);
  if ( result == v5 )
  {
    result = std::map<std::string,Savegame::SectionInfo>::operator[]<char const*>(result, &v12);
    *(_QWORD *)result = 0;
    *((_DWORD *)result + 5) = a5;
    *((_DWORD *)result + 4) = a4;
    *((_DWORD *)result + 3) = a3;
    *((_DWORD *)result + 2) = 0;
  }
  else
  {
    v10 = *((_DWORD *)result + 12);
    *((_DWORD *)result + 14) = a4;
    *((_DWORD *)result + 13) = a3;
    *((_DWORD *)result + 15) = a5;
    if ( v10 )
    {
      v11 = *((_DWORD **)this + 7);
      if ( v11 )
      {
        result = (char *)(*(int (__fastcall **)(_DWORD, _DWORD, _DWORD, _DWORD))(*v11 + 32))(
                           *((_DWORD *)this + 7),
                           *v11,
                           *((_DWORD *)result + 10),
                           *((_DWORD *)result + 11));
        if ( a3 )
          return (char *)((int (__fastcall *)(_DWORD, void *))a3)(*((_DWORD *)this + 7), a5);
      }
    }
  }
  return result;
}


// ===== 315904 Savegame::initSectionInfo(char const*,void (*)(IStreamBase *,void *),void (*)(IStreamBase *,void *),void *) =====
char *__fastcall Savegame::initSectionInfo(
        Savegame *this,
        char *a2,
        void (*a3)(IStreamBase *, void *),
        void (*a4)(IStreamBase *, void *),
        void *a5)
{
  char *v5; // r5
  char *result; // r0
  char *v9; // [sp+4h] [bp-4h] BYREF

  v9 = a2;
  v5 = (char *)this + 32;
  result = (char *)std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,Savegame::SectionInfo>,std::priv::_Select1st<std::pair<std::string const,Savegame::SectionInfo>>,std::priv::_MapTraitsT<std::pair<std::string const,Savegame::SectionInfo>>,std::allocator<std::pair<std::string const,Savegame::SectionInfo>>>::_M_find<char const*>(
                     (_DWORD *)this + 8,
                     &v9);
  if ( result == v5 )
  {
    result = std::map<std::string,Savegame::SectionInfo>::operator[]<char const*>(result, &v9);
    *(_QWORD *)result = 0;
    *((_DWORD *)result + 5) = a5;
    *((_DWORD *)result + 4) = a4;
    *((_DWORD *)result + 3) = a3;
    *((_DWORD *)result + 2) = 0;
  }
  else
  {
    *((_DWORD *)result + 15) = a5;
    *((_DWORD *)result + 13) = a3;
    *((_DWORD *)result + 14) = a4;
  }
  return result;
}


// ===== 315978 std::map<std::string,Savegame::SectionInfo,std::less<std::string>,std::allocator<std::pair<std::string const,Savegame::SectionInfo>>>::operator[]<char [5]>(char [5] const&) =====
char *__fastcall std::map<std::string,Savegame::SectionInfo>::operator[]<char [5]>(char *a1, char *a2)
{
  int v4; // r5
  const void *v5; // r1
  int v6; // r11
  int v7; // r9
  size_t v8; // r2
  int v9; // r0
  char *v10; // r3
  char *v12; // r5
  char *v13; // [sp+8h] [bp-7Ch] BYREF
  char *v14; // [sp+Ch] [bp-78h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v15; // [sp+18h] [bp-6Ch] BYREF
  int v16; // [sp+30h] [bp-54h]
  int v17; // [sp+34h] [bp-50h]
  int v18; // [sp+38h] [bp-4Ch]
  int v19; // [sp+3Ch] [bp-48h]
  int v20; // [sp+40h] [bp-44h]
  int v21; // [sp+44h] [bp-40h]
  std::priv::_String_base<char,std::allocator<char> > v22; // [sp+4Ch] [bp-38h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v23; // [sp+64h] [bp-20h] BYREF

  v4 = std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,Savegame::SectionInfo>,std::priv::_Select1st<std::pair<std::string const,Savegame::SectionInfo>>,std::priv::_MapTraitsT<std::pair<std::string const,Savegame::SectionInfo>>,std::allocator<std::pair<std::string const,Savegame::SectionInfo>>>::_M_lower_bound<char [5]>(
         (int)a1,
         a2);
  if ( (char *)v4 == a1 )
    goto LABEL_11;
  std::string::string((std::string *)&v23, a2);
  v5 = *(const void **)(v4 + 36);
  v6 = *(_DWORD *)(v4 + 32) - (_DWORD)v5;
  v7 = v23._M_finish - v23._M_start_of_storage._M_data;
  if ( v6 >= v23._M_finish - v23._M_start_of_storage._M_data )
    v8 = v23._M_finish - v23._M_start_of_storage._M_data;
  else
    v8 = *(_DWORD *)(v4 + 32) - (_DWORD)v5;
  v9 = memcmp(v23._M_start_of_storage._M_data, v5, v8);
  if ( v9 )
  {
    if ( v9 >= 0 )
      goto LABEL_7;
    goto LABEL_10;
  }
  if ( v7 < v6 )
  {
LABEL_10:
    std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v23);
LABEL_11:
    std::string::string((std::string *)&v22, a2);
    v15._M_finish = (char *)&v15;
    v15._M_start_of_storage._M_data = (char *)&v15;
    std::string::_M_range_initialize((std::string *)&v15, v22._M_start_of_storage._M_data, v22._M_finish);
    v18 = 0;
    v21 = 0;
    v20 = 0;
    v19 = 0;
    v13 = (char *)v4;
    v16 = 0;
    v17 = 0;
    std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,Savegame::SectionInfo>,std::priv::_Select1st<std::pair<std::string const,Savegame::SectionInfo>>,std::priv::_MapTraitsT<std::pair<std::string const,Savegame::SectionInfo>>,std::allocator<std::pair<std::string const,Savegame::SectionInfo>>>::insert_unique(
      &v14,
      a1,
      &v13,
      (int)&v15);
    v12 = v14;
    std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v15);
    std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v22);
    v10 = v12;
    return v10 + 40;
  }
LABEL_7:
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v23);
  v10 = (char *)v4;
  return v10 + 40;
}


// ===== 315ad0 Savegame::_cacheFile(StreamBuffer *) =====
int __fastcall Savegame::_cacheFile(Savegame *this, StreamBuffer *a2)
{
  int v2; // r3
  StreamBuffer *v5; // r7
  unsigned __int64 v6; // r0
  int v7; // r3
  unsigned __int64 v8; // r0
  int v9; // r3
  char *v10; // r5
  StreamBuffer *v11; // r8
  int v12; // r3
  int v13; // r5
  unsigned __int64 v14; // kr00_8
  int v15; // r6
  StreamReader *v16; // r0
  __int64 v17; // r10
  char *v18; // r0
  char *v19; // r0
  StreamBuffer *v20; // r8
  int v21; // r3
  unsigned __int64 v23; // [sp+0h] [bp-1Ch]
  char v24[8]; // [sp+Ch] [bp-10h] BYREF
  IStreamBase *v25; // [sp+14h] [bp-8h] BYREF

  v2 = *((_DWORD *)this + 7);
  if ( v2 )
  {
    (*(void (__fastcall **)(_DWORD))(*(_DWORD *)v2 + 4))(*((_DWORD *)this + 7));
    *((_DWORD *)this + 7) = 0;
  }
  if ( a2 )
  {
    (*(void (__fastcall **)(StreamBuffer *, _DWORD, _DWORD, _DWORD))(*(_DWORD *)a2 + 32))(a2, *(_DWORD *)a2, 0, 0);
    (*(void (__fastcall **)(StreamBuffer *, _DWORD, _DWORD, _DWORD))(*(_DWORD *)a2 + 44))(a2, *(_DWORD *)a2, 0, 0);
    v5 = (StreamBuffer *)operator new(0x30u, 0);
    LODWORD(v6) = StreamBuffer::StreamBuffer(v5, a2);
    *((_DWORD *)this + 7) = v5;
  }
  else
  {
    LODWORD(v6) = (*(int (__fastcall **)(_DWORD, _DWORD, _DWORD))(**(_DWORD **)(dword_99F73C + 52) + 148))(
                    *(_DWORD *)(dword_99F73C + 52),
                    *((_DWORD *)this + 6),
                    0);
    v25 = (IStreamBase *)v6;
    if ( (_DWORD)v6 )
    {
      v20 = (StreamBuffer *)operator new(0x30u, 0);
      StreamBuffer::StreamBuffer(v20, v25);
      *((_DWORD *)this + 7) = v20;
      LODWORD(v6) = (*(int (__fastcall **)(_DWORD, IStreamBase **))(**(_DWORD **)(dword_99F73C + 52) + 120))(
                      *(_DWORD *)(dword_99F73C + 52),
                      &v25);
    }
  }
  if ( !*((_BYTE *)this + 56) )
  {
    v7 = *((_DWORD *)this + 7);
    if ( v7 )
    {
      LODWORD(v8) = (*(int (__fastcall **)(_DWORD))(*(_DWORD *)v7 + 8))(*((_DWORD *)this + 7));
      if ( v8 > 3 )
      {
        LODWORD(v6) = StreamReader::readAs<unsigned int>(*((_DWORD *)this + 7));
        if ( (_DWORD)v6 != -1 )
        {
LABEL_14:
          v12 = *((_DWORD *)this + 7);
          if ( v12 )
          {
            LODWORD(v6) = (*(int (__fastcall **)(_DWORD))(*(_DWORD *)v12 + 8))(*((_DWORD *)this + 7));
            if ( v6 > 3 )
            {
              (*(void (__fastcall **)(_DWORD, _DWORD, _DWORD, _DWORD))(**((_DWORD **)this + 7) + 32))(
                *((_DWORD *)this + 7),
                **((_DWORD **)this + 7),
                0,
                0);
              LODWORD(v6) = StreamReader::readAs<unsigned int>(*((_DWORD *)this + 7));
              HIDWORD(v23) = v6;
              if ( (_DWORD)v6 )
              {
                v13 = 0;
                do
                {
                  v14 = ((__int64 (__fastcall *)(_DWORD))*(_DWORD *)(**((_DWORD **)this + 7) + 36))(*((_DWORD *)this + 7));
                  LODWORD(v6) = (*(int (__fastcall **)(_DWORD))(**((_DWORD **)this + 7) + 8))(*((_DWORD *)this + 7));
                  if ( v6 <= v14 )
                    break;
                  v15 = StreamReader::readAs<unsigned int>(*((_DWORD *)this + 7));
                  v16 = *((StreamReader **)this + 7);
                  v24[0] = 0;
                  v24[1] = 0;
                  v24[2] = 0;
                  v24[3] = 0;
                  v24[4] = 0;
                  StreamReader::readStringEx(v16, (IStreamBase *)v24, byte_4, v23);
                  v17 = ((__int64 (__fastcall *)(_DWORD))*(_DWORD *)(**((_DWORD **)this + 7) + 36))(*((_DWORD *)this + 7));
                  v18 = (char *)std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,Savegame::SectionInfo>,std::priv::_Select1st<std::pair<std::string const,Savegame::SectionInfo>>,std::priv::_MapTraitsT<std::pair<std::string const,Savegame::SectionInfo>>,std::allocator<std::pair<std::string const,Savegame::SectionInfo>>>::_M_find<char [5]>(
                                  (int)this + 32,
                                  v24);
                  if ( (char *)this + 32 == v18 )
                  {
                    v19 = std::map<std::string,Savegame::SectionInfo>::operator[]<char [5]>(v18, v24);
                    *(_QWORD *)v19 = v17;
                    *((_DWORD *)v19 + 5) = 0;
                    *((_DWORD *)v19 + 4) = 0;
                    *((_DWORD *)v19 + 3) = 0;
                    *((_DWORD *)v19 + 2) = v15;
                  }
                  else
                  {
                    *(_QWORD *)std::map<std::string,Savegame::SectionInfo>::operator[]<char [5]>((char *)this + 32, v24) = v17;
                    *((_DWORD *)std::map<std::string,Savegame::SectionInfo>::operator[]<char [5]>(
                                  (char *)this + 32,
                                  v24)
                    + 2) = v15;
                  }
                  LODWORD(v6) = (*(int (__fastcall **)(_DWORD, _DWORD, _DWORD, _DWORD))(**((_DWORD **)this + 7) + 32))(
                                  *((_DWORD *)this + 7),
                                  **((_DWORD **)this + 7),
                                  v17 + v15,
                                  (v17 + (unsigned __int64)(unsigned int)v15) >> 32);
                  ++v13;
                }
                while ( v13 != HIDWORD(v23) );
              }
            }
          }
          return v6;
        }
      }
      v9 = *((_DWORD *)this + 7);
      if ( v9 )
      {
        (*(void (__fastcall **)(_DWORD))(*(_DWORD *)v9 + 4))(*((_DWORD *)this + 7));
        *((_DWORD *)this + 7) = 0;
      }
    }
    v10 = (char *)operator new[](*((_DWORD *)this + 5) - *((_DWORD *)this + 6) + 5, 0);
    LC_API_STRCPY_0(v10, *((const char **)this + 6));
    strcpy(&v10[LC_API_STRLEN_0(v10)], ".bak");
    LODWORD(v6) = (*(int (__fastcall **)(_DWORD, char *, _DWORD))(**(_DWORD **)(dword_99F73C + 52) + 148))(
                    *(_DWORD *)(dword_99F73C + 52),
                    v10,
                    0);
    v25 = (IStreamBase *)v6;
    if ( v10 )
    {
      CustomFree(v10);
      LODWORD(v6) = v25;
    }
    if ( !(_DWORD)v6 )
      goto LABEL_14;
    v11 = (StreamBuffer *)operator new(0x30u, 0);
    StreamBuffer::StreamBuffer(v11, v25);
    *((_DWORD *)this + 7) = v11;
    (*(void (__fastcall **)(_DWORD, IStreamBase **))(**(_DWORD **)(dword_99F73C + 52) + 120))(
      *(_DWORD *)(dword_99F73C + 52),
      &v25);
    LODWORD(v6) = StreamReader::readAs<unsigned int>(*((_DWORD *)this + 7));
    if ( (_DWORD)v6 != -1 )
      goto LABEL_14;
    v21 = *((_DWORD *)this + 7);
    if ( v21 )
    {
      LODWORD(v6) = (*(int (__fastcall **)(_DWORD))(*(_DWORD *)v21 + 4))(*((_DWORD *)this + 7));
      *((_DWORD *)this + 7) = 0;
    }
  }
  return v6;
}


// ===== 315ed8 Savegame::Savegame(char const*,bool) =====
void __fastcall Savegame::Savegame(Savegame *this, char *a2, bool a3)
{
  *(_DWORD *)this = off_95B010;
  std::string::string((std::string *)((char *)this + 4), a2);
  *((_DWORD *)this + 7) = 0;
  *((_DWORD *)this + 9) = 0;
  *((_BYTE *)this + 32) = 0;
  *((_DWORD *)this + 11) = (char *)this + 32;
  *((_BYTE *)this + 56) = a3;
  *((_DWORD *)this + 10) = (char *)this + 32;
  *((_DWORD *)this + 12) = 0;
  Savegame::_cacheFile(this, nullptr);
}


// ===== 315f48 Savegame::Savegame(char const*,bool) =====
void __fastcall Savegame::Savegame(Savegame *this, char *a2, bool a3)
{
  *(_DWORD *)this = off_95B010;
  std::string::string((std::string *)((char *)this + 4), a2);
  *((_DWORD *)this + 7) = 0;
  *((_DWORD *)this + 9) = 0;
  *((_BYTE *)this + 32) = 0;
  *((_DWORD *)this + 11) = (char *)this + 32;
  *((_BYTE *)this + 56) = a3;
  *((_DWORD *)this + 10) = (char *)this + 32;
  *((_DWORD *)this + 12) = 0;
  Savegame::_cacheFile(this, nullptr);
}


// ===== 315fb8 Savegame::saveAll(void) =====
int __fastcall Savegame::saveAll(Savegame *this)
{
  char *v2; // r11
  const char *v3; // r2
  const char *v4; // r1
  Savegame::Job *v5; // r1
  StreamBuffer *v6; // r4
  int v7; // r5
  int v8; // r0
  void (__fastcall *v9)(StreamBuffer *, _DWORD); // r3
  int v10; // r8
  __int64 v11; // r0
  __int64 v12; // kr00_8
  int v13; // r3
  __int64 v14; // r6
  const char *v15; // r2
  const char *v16; // r1
  Savegame::Job *v17; // r1
  int v19; // r6
  void (__fastcall *v20)(StreamBuffer *, int, _DWORD, _DWORD); // r10
  int v21; // r2
  void *v22; // r10
  unsigned __int64 v23; // [sp+0h] [bp-8Ch]
  __int64 v24; // [sp+8h] [bp-84h]
  int v25; // [sp+3Ch] [bp-50h] BYREF
  int v26; // [sp+40h] [bp-4Ch] BYREF
  StreamBuffer *v27; // [sp+44h] [bp-48h] BYREF
  std::string v28; // [sp+48h] [bp-44h] BYREF
  char v29; // [sp+60h] [bp-2Ch]
  char v30; // [sp+61h] [bp-2Bh]
  int v31; // [sp+64h] [bp-28h] BYREF
  std::string v32; // [sp+68h] [bp-24h] BYREF
  char v33; // [sp+80h] [bp-Ch]
  char v34; // [sp+81h] [bp-Bh]

  PushProfilingContext("Savegame::saveAll");
  v2 = (char *)this + 32;
  v31 = 0;
  v3 = *((const char **)this + 5);
  v4 = *((const char **)this + 6);
  v32._M_finish = (char *)&v32;
  v32._M_start_of_storage._M_data = (char *)&v32;
  std::string::_M_range_initialize(&v32, v4, v3);
  v33 = 1;
  v34 = 0;
  Savegame::AddJob((Savegame *)&v31, v5);
  v6 = (StreamBuffer *)CustomAlloc(0x30u);
  StreamBuffer::StreamBuffer(v6);
  v26 = -1;
  StreamReader::writeAs<unsigned int>(v6, &v26);
  v7 = *((_DWORD *)this + 10);
  while ( (char *)v7 != v2 )
  {
    while ( 1 )
    {
      v24 = ((__int64 (__fastcall *)(StreamBuffer *))*(_DWORD *)(*(_DWORD *)v6 + 48))(v6);
      v25 = 0;
      StreamReader::writeAs<unsigned int>(v6, &v25);
      StreamReader::writeStringEx(v6, *(IStreamBase **)(v7 + 36), &byte_4, v23);
      v8 = (*(int (__fastcall **)(StreamBuffer *))(*(_DWORD *)v6 + 48))(v6);
      v9 = *(void (__fastcall **)(StreamBuffer *, _DWORD))(v7 + 56);
      v10 = v8;
      if ( v9 )
      {
        v9(v6, *(_DWORD *)(v7 + 60));
      }
      else
      {
        v19 = *((_DWORD *)this + 7);
        if ( v19 )
        {
          v20 = *(void (__fastcall **)(StreamBuffer *, int, _DWORD, _DWORD))(*(_DWORD *)v6 + 28);
          if ( !*(_BYTE *)(v19 + 44) )
          {
            if ( gAssertLevel == 2 )
            {
              *(_DWORD *)*(unsigned __int8 *)(v19 + 44) = *(unsigned __int8 *)(v19 + 44);
            }
            else if ( gAssertLevel == 1 )
            {
              LODWORD(v23) = 130;
              fprintf(
                (FILE *)&_sF + 2,
                "ASSERT(%s) FAILED: %s:%d\n",
                "static_",
                "..\\..\\project_vs2005\\Game/..\\..\\sources/Core/Irrlicht/../../Utils/StreamBuffer.h");
            }
          }
          v20(v6, **(_DWORD **)(v19 + 28) + *(_DWORD *)(v7 + 40), *(_DWORD *)(v7 + 48), 0);
        }
        else
        {
          v22 = (void *)operator new[](*(_DWORD *)(v7 + 48), 0);
          LC_API_MEMSET_0(v22, 0, *(_DWORD *)(v7 + 48));
          (*(void (__fastcall **)(StreamBuffer *, void *, _DWORD, _DWORD))(*(_DWORD *)v6 + 28))(
            v6,
            v22,
            *(_DWORD *)(v7 + 48),
            0);
          if ( v22 )
            CustomFree(v22);
        }
      }
      v11 = ((__int64 (__fastcall *)(StreamBuffer *))*(_DWORD *)(*(_DWORD *)v6 + 48))(v6);
      v25 = v11 - v10;
      v12 = v11;
      (*(void (__fastcall **)(StreamBuffer *, _DWORD, _DWORD, _DWORD))(*(_DWORD *)v6 + 44))(
        v6,
        *(_DWORD *)v6,
        v24,
        HIDWORD(v24));
      StreamReader::writeAs<unsigned int>(v6, &v25);
      (*(void (__fastcall **)(StreamBuffer *, _DWORD, _DWORD, _DWORD))(*(_DWORD *)v6 + 44))(
        v6,
        *(_DWORD *)v6,
        v12,
        HIDWORD(v12));
      v13 = *(_DWORD *)(v7 + 12);
      if ( !v13 )
        break;
      while ( *(_DWORD *)(v13 + 8) )
        v13 = *(_DWORD *)(v13 + 8);
      v7 = v13;
      if ( (char *)v13 == v2 )
        goto LABEL_10;
    }
    v21 = *(_DWORD *)(v7 + 4);
    if ( v7 == *(_DWORD *)(v21 + 12) )
    {
      do
      {
        v7 = v21;
        v21 = *(_DWORD *)(v21 + 4);
      }
      while ( *(_DWORD *)(v21 + 12) == v7 );
      v13 = *(_DWORD *)(v7 + 12);
    }
    if ( v13 != v21 )
      v7 = v21;
  }
LABEL_10:
  v14 = ((__int64 (__fastcall *)(StreamBuffer *))*(_DWORD *)(*(_DWORD *)v6 + 48))(v6);
  (*(void (__fastcall **)(StreamBuffer *, _DWORD, _DWORD, _DWORD))(*(_DWORD *)v6 + 44))(v6, *(_DWORD *)v6, 0, 0);
  v26 = *((_DWORD *)this + 12);
  StreamReader::writeAs<unsigned int>(v6, &v26);
  (*(void (__fastcall **)(StreamBuffer *, _DWORD, _DWORD, _DWORD))(*(_DWORD *)v6 + 44))(
    v6,
    *(_DWORD *)v6,
    v14,
    HIDWORD(v14));
  Savegame::_cacheFile(this, v6);
  v27 = v6;
  v15 = *((const char **)this + 5);
  v16 = *((const char **)this + 6);
  v28._M_finish = (char *)&v28;
  v28._M_start_of_storage._M_data = (char *)&v28;
  std::string::_M_range_initialize(&v28, v16, v15);
  v29 = 0;
  v30 = 1;
  Savegame::AddJob((Savegame *)&v27, v17);
  Savegame::Job::~Job((Savegame::Job *)&v27);
  Savegame::Job::~Job((Savegame::Job *)&v31);
  PopProfilingContext("Savegame::saveAll");
  return 16556;
}


// ===== 3163c0 Savegame::reset(void) =====
int __fastcall Savegame::reset(Savegame *this)
{
  char *v2; // r5

  if ( *((_DWORD *)this + 12) )
  {
    v2 = (char *)this + 32;
    std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,Savegame::SectionInfo>,std::priv::_Select1st<std::pair<std::string const,Savegame::SectionInfo>>,std::priv::_MapTraitsT<std::pair<std::string const,Savegame::SectionInfo>>,std::allocator<std::pair<std::string const,Savegame::SectionInfo>>>::_M_erase(
      (int)this + 32,
      *((_DWORD *)this + 9));
    *((_DWORD *)this + 11) = v2;
    *((_DWORD *)this + 12) = 0;
    *((_DWORD *)this + 10) = v2;
    *((_DWORD *)this + 9) = 0;
  }
  return Savegame::saveAll(this);
}


// ===== 316404 IStreamBase::~IStreamBase() =====
void __fastcall IStreamBase::~IStreamBase(IStreamBase *this)
{
  ;
}


// ===== 316408 IStreamBase::seekWrite(ulong long) =====
int __fastcall IStreamBase::seekWrite(IStreamBase *this, unsigned __int64 a2)
{
  return (*(int (__fastcall **)(IStreamBase *, _DWORD, _DWORD, _DWORD))(*(_DWORD *)this + 32))(
           this,
           *(_DWORD *)this,
           a2,
           HIDWORD(a2));
}


// ===== 31641c IStreamBase::tellWrite(void) =====
int __fastcall IStreamBase::tellWrite(IStreamBase *this)
{
  return (*(int (__fastcall **)(IStreamBase *))(*(_DWORD *)this + 36))(this);
}


// ===== 316430 StreamBuffer::size(void) =====
__int64 __fastcall StreamBuffer::size(StreamBuffer *this)
{
  return *((unsigned int *)this + 10);
}


// ===== 31643c StreamBuffer::size(int) =====
unsigned int __fastcall StreamBuffer::size(StreamBuffer *this, int a2)
{
  unsigned int v2; // r3
  unsigned int result; // r0

  v2 = *((_DWORD *)this + 6);
  result = *((_DWORD *)this + 10) - v2 * a2;
  if ( v2 < result )
    return v2;
  return result;
}


// ===== 316458 StreamBuffer::canRead(void) =====
int __fastcall StreamBuffer::canRead(StreamBuffer *this)
{
  return 1;
}


// ===== 316460 StreamBuffer::canWrite(void) =====
int __fastcall StreamBuffer::canWrite(StreamBuffer *this)
{
  return 0;
}


// ===== 316468 StreamBuffer::skip(ulong long) =====
int __fastcall StreamBuffer::skip(StreamBuffer *this, unsigned __int64 a2)
{
  return (*(int (__fastcall **)(StreamBuffer *, _DWORD, _DWORD, _DWORD))(*(_DWORD *)this + 32))(
           this,
           *(_DWORD *)this,
           a2 + *((_DWORD *)this + 2),
           (a2 + *((_QWORD *)this + 1)) >> 32);
}


// ===== 316488 StreamBuffer::tellWrite(void) =====
__int64 __fastcall StreamBuffer::tellWrite(StreamBuffer *this)
{
  return *((_QWORD *)this + 2);
}


// ===== 316494 StreamBuffer::read(void *,ulong long) =====
__int64 __fastcall StreamBuffer::read(StreamBuffer *this, void *a2, unsigned __int64 a3)
{
  __int64 result; // r0

  result = ((__int64 (__fastcall *)(StreamBuffer *, void *, _DWORD, _DWORD))*(_DWORD *)(*(_DWORD *)this + 20))(
             this,
             a2,
             a3,
             HIDWORD(a3));
  *((_QWORD *)this + 1) += result;
  return result;
}


// ===== 3164cc StreamBuffer::tell(void) =====
__int64 __fastcall StreamBuffer::tell(StreamBuffer *this)
{
  return *((_QWORD *)this + 1);
}


// ===== 3164d8 StreamBuffer::seek(ulong long) =====
_DWORD *__fastcall StreamBuffer::seek(_DWORD *this, unsigned __int64 a2)
{
  unsigned int v3; // r1

  v3 = *(this + 10);
  *(this + 3) = 0;
  if ( a2 <= v3 )
    *(this + 2) = a2;
  else
    *(this + 2) = v3;
  return this;
}


// ===== 316510 StreamBuffer::seekWrite(ulong long) =====
_DWORD *__fastcall StreamBuffer::seekWrite(_DWORD *this, unsigned __int64 a2)
{
  unsigned int v3; // r1

  v3 = *(this + 10);
  *(this + 5) = 0;
  if ( a2 <= v3 )
    *(this + 4) = a2;
  else
    *(this + 4) = v3;
  return this;
}


// ===== 316548 `global constructor keyed to'.._.._sources_Utils_StreamBuffer.cpp =====
void `global constructor keyed to'.._.._sources_Utils_StreamBuffer.cpp()
{
  dword_99F8F8 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_99F8F4 = 1056964608;
}


// ===== 316568 Buffer::read(uint,void *,uint) =====
unsigned int __fastcall Buffer::read(Buffer *this, unsigned int a2, char *a3, unsigned int a4)
{
  int v4; // r5
  unsigned int v9; // r8
  unsigned int result; // r0
  unsigned int v11; // r1
  size_t v12; // r4
  int v13; // r5
  int v14; // r3
  const void *v15; // r10
  int v16; // r8
  unsigned int i; // r2

  v4 = *(_DWORD *)this;
  v9 = a2 / *(_DWORD *)this;
  v11 = a2 % *(_DWORD *)this;
  result = a2 / *(_DWORD *)this;
  v12 = v4 - v11;
  v13 = 4 * (v9 + 1);
  v14 = *((_DWORD *)this + 1);
  v15 = (const void *)(*(_DWORD *)(v14 + 4 * v9) + v11);
  if ( a4 < v12 )
    v12 = a4;
  v16 = 4 * v9;
  for ( i = a4; i; a4 = i )
  {
    if ( !*(_DWORD *)(v14 + v16) )
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
          "buffer_[block_number]",
          "..\\..\\project_vs2005\\Game/..\\..\\sources\\Utils\\/StreamBuffer.h",
          160);
      }
    }
    result = (unsigned int)memcpy(a3, v15, v12);
    v14 = *((_DWORD *)this + 1);
    i = a4 - v12;
    a3 += v12;
    v15 = *(const void **)(v14 + v13);
    if ( a4 - v12 >= *(_DWORD *)this )
      v12 = *(_DWORD *)this;
    else
      v12 = a4 - v12;
    v16 += 4;
    v13 += 4;
  }
  return result;
}


// ===== 3166bc StreamBuffer::peek(void *,ulong long) =====
unsigned __int64 __fastcall StreamBuffer::peek(StreamBuffer *this, char *a2, unsigned __int64 a3)
{
  __int64 v3; // r6
  unsigned __int64 v4; // r4

  v3 = *((_QWORD *)this + 1);
  v4 = a3;
  if ( a3 > (unsigned __int64)*((unsigned int *)this + 10) - v3 )
    v4 = *((unsigned int *)this + 10) - v3;
  Buffer::read((StreamBuffer *)((char *)this + 24), v3, a2, v4);
  return v4;
}


// ===== 31671c std::vector<uchar *,std::allocator<uchar *>>::_M_compute_next_size(uint) =====
unsigned int __fastcall std::vector<unsigned char *>::_M_compute_next_size(_DWORD *a1, unsigned int a2)
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


// ===== 31677c std::allocator<uchar *>::deallocate(uchar **,uint) =====
void __fastcall std::allocator<unsigned char *>::deallocate(int a1, void *a2, int a3)
{
  if ( a2 )
  {
    if ( (unsigned int)(4 * a3) > 0x80 )
      CustomFree(a2);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(a2, 4 * a3);
  }
}


// ===== 316798 IStreamBase::~IStreamBase() =====
void __fastcall IStreamBase::~IStreamBase(IStreamBase *this)
{
  *(_DWORD *)this = off_95B020;
  CustomFree(this);
}


// ===== 3167cc std::allocator<uchar *>::_M_allocate(uint,uint &) =====
void *__fastcall std::allocator<unsigned char *>::_M_allocate(int a1, unsigned int a2, size_t *a3)
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


// ===== 316838 std::vector<uchar *,std::allocator<uchar *>>::_M_allocate_and_copy<uchar **>(uint &,uchar **,uchar **) =====
void *__fastcall std::vector<unsigned char *>::_M_allocate_and_copy<unsigned char **>(
        int a1,
        unsigned int *a2,
        _BYTE *a3,
        _BYTE *a4)
{
  void *v6; // r0
  void *v7; // r6

  v6 = std::allocator<unsigned char *>::_M_allocate(a1 + 8, *a2, a2);
  v7 = v6;
  if ( a3 != a4 )
    memcpy(v6, a3, a4 - a3);
  return v7;
}


// ===== 316874 std::vector<uchar *,std::allocator<uchar *>>::reserve(uint) =====
void __fastcall std::vector<unsigned char *>::reserve(int a1, unsigned int a2)
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
      __ZSt24__stl_throw_length_errorPKc_veneer("vector");
      v3 = *(_BYTE **)a1;
    }
    v5 = *(_BYTE **)(a1 + 4);
    v6 = (v5 - v3) >> 2;
    if ( v3 )
    {
      v7 = (char *)std::vector<unsigned char *>::_M_allocate_and_copy<unsigned char **>(a1, &v9, v3, v5);
      std::allocator<unsigned char *>::deallocate(a1 + 8, *(void **)a1, (*(_DWORD *)(a1 + 8) - *(_DWORD *)a1) >> 2);
    }
    else
    {
      v7 = (char *)std::allocator<unsigned char *>::_M_allocate(a1 + 8, v9, &v9);
    }
    v8 = v9;
    *(_DWORD *)(a1 + 4) = &v7[4 * v6];
    *(_DWORD *)(a1 + 8) = &v7[4 * v8];
    *(_DWORD *)a1 = v7;
  }
}


// ===== 31692c Buffer::clear(void) =====
void __fastcall Buffer::clear(Buffer *this)
{
  void **v1; // r4
  void **v2; // r3
  void *v4; // r0
  void **v5; // r3

  v1 = *((void ***)this + 1);
  v2 = *((void ***)this + 2);
  if ( v1 != v2 )
  {
    do
    {
      v4 = *v1++;
      if ( v4 )
      {
        CustomFree(v4);
        v2 = *((void ***)this + 2);
      }
    }
    while ( v1 != v2 );
    v5 = *((void ***)this + 1);
    if ( v1 != v5 )
      *((_DWORD *)this + 2) = v5;
  }
  *((_BYTE *)this + 20) = 0;
  *(_DWORD *)this = 2048;
  *((_DWORD *)this + 4) = 0;
}


// ===== 316988 Buffer::~Buffer() =====
void __fastcall Buffer::~Buffer(void **this)
{
  int v2; // r3

  Buffer::clear((Buffer *)this);
  v2 = (int)*(this + 1);
  if ( v2 )
    std::allocator<unsigned char *>::deallocate((int)(this + 3), *(this + 1), ((int)*(this + 3) - v2) >> 2);
}


// ===== 3169c4 StreamBuffer::~StreamBuffer() =====
void __fastcall StreamBuffer::~StreamBuffer(void **this)
{
  *this = off_95B060;
  Buffer::~Buffer(this + 6);
}


// ===== 3169f8 StreamBuffer::~StreamBuffer() =====
void __fastcall StreamBuffer::~StreamBuffer(void **this)
{
  StreamBuffer::~StreamBuffer(this);
  CustomFree(this);
}


// ===== 316a14 StreamBuffer::~StreamBuffer() =====
void __fastcall StreamBuffer::~StreamBuffer(void **this)
{
  *this = off_95B060;
  Buffer::~Buffer(this + 6);
}


// ===== 316a48 StreamBuffer::clear(void) =====
void __fastcall StreamBuffer::clear(StreamBuffer *this)
{
  Buffer::clear((StreamBuffer *)((char *)this + 24));
  *((_QWORD *)this + 2) = 0;
  *((_QWORD *)this + 1) = 0;
}


// ===== 316a6c std::vector<uchar *,std::allocator<uchar *>>::_M_insert_overflow(uchar **,uchar * const&,std::__true_type const&,uint,bool) =====
void __fastcall std::vector<unsigned char *>::_M_insert_overflow(
        const void **a1,
        _BYTE *a2,
        _DWORD *a3,
        int a4,
        unsigned int a5,
        char a6)
{
  char *v9; // r0
  char *v10; // r8
  size_t v11; // r7
  char *v12; // r7
  unsigned int v13; // r2
  int v14; // r3
  size_t v15; // r4
  size_t v16; // r3
  size_t size; // [sp+4h] [bp-8h] BYREF

  size = std::vector<unsigned char *>::_M_compute_next_size(a1, a5);
  v9 = (char *)std::allocator<unsigned char *>::_M_allocate((int)(a1 + 2), size, &size);
  v10 = v9;
  if ( a2 != *a1 )
  {
    v11 = a2 - (_BYTE *)*a1;
    v9 = (char *)memmove(v9, *a1, v11) + v11;
  }
  v12 = v9;
  if ( a5 )
  {
    v13 = a5;
    v14 = 0;
    do
    {
      --v13;
      *(_DWORD *)&v9[v14] = *a3;
      v14 += 4;
    }
    while ( v13 );
    v12 = &v9[4 * a5];
  }
  if ( !a6 )
  {
    v15 = (_BYTE *)a1[1] - a2;
    if ( v15 )
      v12 = (char *)memmove(v12, a2, v15) + v15;
  }
  std::allocator<unsigned char *>::deallocate((int)(a1 + 2), (void *)*a1, ((_BYTE *)a1[2] - (_BYTE *)*a1) >> 2);
  v16 = size;
  *a1 = v10;
  a1[1] = v12;
  a1[2] = &v10[4 * v16];
}


// ===== 316b5c std::vector<uchar *,std::allocator<uchar *>>::_M_fill_insert_aux(uchar **,uint,uchar * const&,std::__false_type const&) =====
char *__fastcall std::vector<unsigned char *>::_M_fill_insert_aux(char *result, char *a2, unsigned int a3, char *a4)
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
      return (char *)std::vector<unsigned char *>::_M_fill_insert_aux(result);
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


// ===== 316ca4 std::vector<uchar *,std::allocator<uchar *>>::_M_fill_insert(uchar **,uint,uchar * const&) =====
void __fastcall std::vector<unsigned char *>::_M_fill_insert(int a1, char *a2, unsigned int a3, char *a4)
{
  _BYTE v4[4]; // [sp+8h] [bp-Ch] BYREF

  if ( a3 )
  {
    if ( a3 <= (*(_DWORD *)(a1 + 8) - *(_DWORD *)(a1 + 4)) >> 2 )
      std::vector<unsigned char *>::_M_fill_insert_aux((char *)a1, a2, a3, a4);
    else
      std::vector<unsigned char *>::_M_insert_overflow((const void **)a1, a2, a4, (int)v4, a3, 0);
  }
}


// ===== 316cf8 std::vector<uchar *,std::allocator<uchar *>>::resize(uint,uchar * const&) =====
void __fastcall std::vector<unsigned char *>::resize(int a1, unsigned int a2, char *a3)
{
  int v3; // r4
  unsigned int v5; // r2
  int v6; // r5

  v3 = *(_DWORD *)(a1 + 4);
  v5 = (v3 - *(_DWORD *)a1) >> 2;
  if ( a2 >= v5 )
  {
    std::vector<unsigned char *>::_M_fill_insert(a1, *(char **)(a1 + 4), a2 - v5, a3);
  }
  else
  {
    v6 = *(_DWORD *)a1 + 4 * a2;
    if ( v6 != v3 )
      *(_DWORD *)(a1 + 4) = v6;
  }
}


// ===== 316d3c StreamBuffer::StreamBuffer(void) =====
void __fastcall StreamBuffer::StreamBuffer(StreamBuffer *this)
{
  *((_BYTE *)this + 44) = 0;
  *(_DWORD *)this = off_95B060;
  *((_QWORD *)this + 2) = 0;
  *((_DWORD *)this + 6) = 2048;
  *((_QWORD *)this + 1) = 0;
  *((_DWORD *)this + 7) = 0;
  *((_DWORD *)this + 8) = 0;
  *((_DWORD *)this + 9) = 0;
  *((_DWORD *)this + 10) = 0;
}


// ===== 316d98 Buffer::ensureBuffer(uint,uint) =====
void __fastcall Buffer::ensureBuffer(Buffer *this, unsigned int a2, unsigned int a3)
{
  unsigned int v4; // r0
  int v5; // r3
  _BYTE *v6; // r1
  unsigned int v7; // r6
  unsigned int v8; // r0
  unsigned int v9; // r5
  unsigned int v10; // r6
  void *v11; // r0
  _BYTE *v12; // r1
  _BYTE *v13; // r3
  _BYTE *v14; // r2
  int v15; // [sp+Ch] [bp-14h] BYREF
  void *v16; // [sp+10h] [bp-10h] BYREF
  int v17; // [sp+14h] [bp-Ch] BYREF
  _BYTE v18[4]; // [sp+18h] [bp-8h] BYREF
  _BYTE v19[4]; // [sp+1Ch] [bp-4h] BYREF

  v4 = (a3 + a2) / *(_DWORD *)this;
  v5 = *((_DWORD *)this + 1);
  v6 = *((_BYTE **)this + 2);
  v7 = v4 + 2;
  v8 = (int)&v6[-v5] >> 2;
  v9 = v8;
  if ( v7 <= v8 )
    return;
  if ( v7 > (*((_DWORD *)this + 3) - v5) >> 2 )
  {
    std::vector<unsigned char *>::reserve((int)this + 4, v7);
    v6 = *((_BYTE **)this + 2);
    v8 = (int)&v6[-*((_DWORD *)this + 1)] >> 2;
    v9 = v8;
    if ( !v8 )
      goto LABEL_4;
    goto LABEL_13;
  }
  if ( v8 )
  {
LABEL_13:
    v17 = 0;
    std::vector<unsigned char *>::resize((int)this + 4, v8 - 1, (char *)&v17);
    v6 = *((_BYTE **)this + 2);
    v9 = (int)&v6[-*((_DWORD *)this + 1)] >> 2;
  }
LABEL_4:
  v10 = v7 - 1;
  if ( v10 > v9 )
  {
    do
    {
      while ( 1 )
      {
        v11 = operator new[](*(_DWORD *)this, 0);
        v12 = *((_BYTE **)this + 2);
        v13 = *((_BYTE **)this + 3);
        v16 = v11;
        if ( v12 == v13 )
          break;
        *(_DWORD *)v12 = v11;
        ++v9;
        *((_DWORD *)this + 2) += 4;
        if ( v9 >= v10 )
          goto LABEL_9;
      }
      ++v9;
      std::vector<unsigned char *>::_M_insert_overflow((const void **)this + 1, v12, &v16, (int)v19, 1u, 1);
    }
    while ( v9 < v10 );
LABEL_9:
    v6 = *((_BYTE **)this + 2);
  }
  v14 = *((_BYTE **)this + 3);
  v15 = 0;
  if ( v6 == v14 )
  {
    std::vector<unsigned char *>::_M_insert_overflow((const void **)this + 1, v6, &v15, (int)v18, 1u, 1);
  }
  else
  {
    *(_DWORD *)v6 = 0;
    *((_DWORD *)this + 2) += 4;
  }
}


// ===== 316f0c Buffer::write(uint,void const*,uint) =====
void *__fastcall Buffer::write(Buffer *this, unsigned int a2, char *a3, unsigned int a4)
{
  unsigned int v6; // r8
  unsigned int v8; // r10
  unsigned int v9; // r6
  unsigned int v10; // r2
  int v11; // r0
  size_t v12; // r3
  unsigned int v13; // r5
  unsigned int v14; // r10
  void *result; // r0
  size_t v16; // r5
  int v17; // r10
  unsigned int i; // r3

  v6 = a4;
  v8 = a2 / *(_DWORD *)this;
  v9 = a2 % *(_DWORD *)this;
  Buffer::ensureBuffer(this, a2, a4);
  v10 = *((_DWORD *)this + 4);
  v11 = *(_DWORD *)(*((_DWORD *)this + 1) + 4 * v8);
  v12 = *(_DWORD *)this - v9;
  v13 = v6 + a2;
  v14 = v8 + 1;
  if ( v10 < v13 )
    *((_DWORD *)this + 4) = v13;
  else
    *((_DWORD *)this + 4) = v10;
  result = (void *)(v11 + v9);
  if ( v6 >= v12 )
    v16 = v12;
  else
    v16 = v6;
  v17 = 4 * v14;
  for ( i = v6; i; v6 = i )
  {
    memcpy(result, a3, v16);
    i = v6 - v16;
    a3 += v16;
    result = *(void **)(*((_DWORD *)this + 1) + v17);
    if ( v6 - v16 >= *(_DWORD *)this )
      v16 = *(_DWORD *)this;
    else
      v16 = v6 - v16;
    v17 += 4;
  }
  return result;
}


// ===== 316fd4 StreamBuffer::write(void const*,ulong long) =====
unsigned __int64 __fastcall StreamBuffer::write(StreamBuffer *this, char *a2, unsigned __int64 a3)
{
  Buffer::write((StreamBuffer *)((char *)this + 24), *((_DWORD *)this + 4), a2, a3);
  *((_QWORD *)this + 2) += a3;
  return a3;
}


// ===== 317014 Buffer::setSize(uint) =====
void __fastcall Buffer::setSize(Buffer *this, size_t a2)
{
  void *v4; // r0
  _BYTE *v5; // r1
  _BYTE *v6; // r3
  _BYTE *v7; // r2
  _BYTE *v8; // r1
  _BYTE *v9; // r2
  int v10; // [sp+8h] [bp-10h] BYREF
  void *v11; // [sp+Ch] [bp-Ch] BYREF
  _BYTE v12[4]; // [sp+10h] [bp-8h] BYREF
  _BYTE v13[4]; // [sp+14h] [bp-4h] BYREF

  if ( (unsigned int)(*((_DWORD *)this + 2) - *((_DWORD *)this + 1)) >> 2 )
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
        "buffer_.size() == 0",
        "..\\..\\project_vs2005\\Game/..\\..\\sources\\Utils\\/StreamBuffer.h",
        117);
    }
  }
  std::vector<unsigned char *>::reserve((int)this + 4, 2u);
  v4 = operator new[](a2, 0);
  v5 = *((_BYTE **)this + 2);
  v6 = *((_BYTE **)this + 3);
  v11 = v4;
  if ( v5 == v6 )
  {
    std::vector<unsigned char *>::_M_insert_overflow((const void **)this + 1, v5, &v11, (int)v13, 1u, 1);
    v8 = *((_BYTE **)this + 2);
    v9 = *((_BYTE **)this + 3);
    v10 = 0;
    if ( v8 != v9 )
      goto LABEL_8;
LABEL_11:
    std::vector<unsigned char *>::_M_insert_overflow((const void **)this + 1, v8, &v10, (int)v12, 1u, 1);
    goto LABEL_9;
  }
  *(_DWORD *)v5 = v4;
  v7 = *((_BYTE **)this + 3);
  v8 = (_BYTE *)(*((_DWORD *)this + 2) + 4);
  *((_DWORD *)this + 2) = v8;
  v10 = 0;
  if ( v8 == v7 )
    goto LABEL_11;
LABEL_8:
  *(_DWORD *)v8 = 0;
  *((_DWORD *)this + 2) += 4;
LABEL_9:
  *((_BYTE *)this + 20) = 1;
  *(_DWORD *)this = a2;
  *((_DWORD *)this + 4) = a2;
}


// ===== 317180 StreamBuffer::expand(ulong long) =====
void __fastcall StreamBuffer::expand(StreamBuffer *this, unsigned __int64 a2)
{
  Buffer *v3; // r5
  size_t v4; // r6

  v3 = (StreamBuffer *)((char *)this + 24);
  v4 = a2;
  Buffer::clear((StreamBuffer *)((char *)this + 24));
  Buffer::setSize(v3, v4);
  *((_QWORD *)this + 2) = 0;
  *((_QWORD *)this + 1) = 0;
}


// ===== 3171b8 StreamBuffer::StreamBuffer(IStreamBase *) =====
void __fastcall StreamBuffer::StreamBuffer(StreamBuffer *this, IStreamBase *a2)
{
  unsigned __int64 v4; // r0
  void (__fastcall *v5)(IStreamBase *, _DWORD, _DWORD, _DWORD); // r7

  *((_QWORD *)this + 2) = 0;
  *((_QWORD *)this + 1) = 0;
  *(_DWORD *)this = off_95B060;
  *((_BYTE *)this + 44) = 0;
  *((_DWORD *)this + 7) = 0;
  *((_DWORD *)this + 8) = 0;
  *((_DWORD *)this + 9) = 0;
  *((_DWORD *)this + 10) = 0;
  *((_DWORD *)this + 6) = 2048;
  v4 = ((__int64 (__fastcall *)(IStreamBase *))*(_DWORD *)(*(_DWORD *)a2 + 8))(a2);
  StreamBuffer::expand(this, v4);
  v5 = *(void (__fastcall **)(IStreamBase *, _DWORD, _DWORD, _DWORD))(*(_DWORD *)a2 + 24);
  if ( !*((_BYTE *)this + 44) )
  {
    if ( gAssertLevel == 2 )
    {
      *(_DWORD *)*((unsigned __int8 *)this + 44) = *((unsigned __int8 *)this + 44);
    }
    else if ( gAssertLevel == 1 )
    {
      fprintf(
        (FILE *)&_sF + 2,
        "ASSERT(%s) FAILED: %s:%d\n",
        "static_",
        "..\\..\\project_vs2005\\Game/..\\..\\sources\\Utils\\/StreamBuffer.h",
        130);
    }
  }
  v5(a2, **((_DWORD **)this + 7), *((_DWORD *)this + 10), 0);
}


// ===== 3172d8 StreamBuffer::StreamBuffer(IStreamBase *) =====
void __fastcall StreamBuffer::StreamBuffer(StreamBuffer *this, IStreamBase *a2)
{
  unsigned __int64 v4; // r0
  void (__fastcall *v5)(IStreamBase *, _DWORD, _DWORD, _DWORD); // r7

  *((_QWORD *)this + 2) = 0;
  *((_QWORD *)this + 1) = 0;
  *(_DWORD *)this = off_95B060;
  *((_BYTE *)this + 44) = 0;
  *((_DWORD *)this + 7) = 0;
  *((_DWORD *)this + 8) = 0;
  *((_DWORD *)this + 9) = 0;
  *((_DWORD *)this + 10) = 0;
  *((_DWORD *)this + 6) = 2048;
  v4 = ((__int64 (__fastcall *)(IStreamBase *))*(_DWORD *)(*(_DWORD *)a2 + 8))(a2);
  StreamBuffer::expand(this, v4);
  v5 = *(void (__fastcall **)(IStreamBase *, _DWORD, _DWORD, _DWORD))(*(_DWORD *)a2 + 24);
  if ( !*((_BYTE *)this + 44) )
  {
    if ( gAssertLevel == 2 )
    {
      *(_DWORD *)*((unsigned __int8 *)this + 44) = *((unsigned __int8 *)this + 44);
    }
    else if ( gAssertLevel == 1 )
    {
      fprintf(
        (FILE *)&_sF + 2,
        "ASSERT(%s) FAILED: %s:%d\n",
        "static_",
        "..\\..\\project_vs2005\\Game/..\\..\\sources\\Utils\\/StreamBuffer.h",
        130);
    }
  }
  v5(a2, **((_DWORD **)this + 7), *((_DWORD *)this + 10), 0);
}


// ===== 3173f8 StreamBuffer::StreamBuffer(void) =====
void __fastcall StreamBuffer::StreamBuffer(StreamBuffer *this)
{
  *((_BYTE *)this + 44) = 0;
  *(_DWORD *)this = off_95B060;
  *((_QWORD *)this + 2) = 0;
  *((_DWORD *)this + 6) = 2048;
  *((_QWORD *)this + 1) = 0;
  *((_DWORD *)this + 7) = 0;
  *((_DWORD *)this + 8) = 0;
  *((_DWORD *)this + 9) = 0;
  *((_DWORD *)this + 10) = 0;
}


// ===== 317454 StreamReader::readStringEx(IStreamBase *,char *,ulong long) =====
bool __fastcall StreamReader::readStringEx(StreamReader *this, IStreamBase *a2, char *a3, int a4, unsigned __int64 a5)
{
  int v6; // r1

  return (char *)(*(int (__fastcall **)(StreamReader *, IStreamBase *))(*(_DWORD *)this + 24))(this, a2) == a3
      && v6 == a4;
}


// ===== 317490 StreamReader::writeString(IStreamBase *,char const*,ulong long) =====
int __fastcall StreamReader::writeString(
        StreamReader *this,
        IStreamBase *a2,
        const char *a3,
        int a4,
        unsigned __int64 a5)
{
  int v10; // [sp+4h] [bp-4h] BYREF

  (*(void (__fastcall **)(StreamReader *, int *, int, _DWORD, int, const char *))(*(_DWORD *)this + 28))(
    this,
    &v10,
    4,
    0,
    1,
    a3);
  (*(void (__fastcall **)(StreamReader *, IStreamBase *, const char *, int))(*(_DWORD *)this + 28))(this, a2, a3, a4);
  return 1;
}


// ===== 317548 StreamReader::writeString(IStreamBase *,wchar_t const*,ulong long) =====
int __fastcall StreamReader::writeString(
        StreamReader *this,
        IStreamBase *a2,
        unsigned int a3,
        int a4,
        unsigned __int64 a5)
{
  int v10; // [sp+4h] [bp-4h] BYREF

  (*(void (__fastcall **)(StreamReader *, int *, int, _DWORD, int, unsigned int))(*(_DWORD *)this + 28))(
    this,
    &v10,
    4,
    0,
    1,
    a3);
  (*(void (__fastcall **)(StreamReader *, IStreamBase *, unsigned int, unsigned int))(*(_DWORD *)this + 28))(
    this,
    a2,
    4 * a3,
    (4 * a4) | (a3 >> 30));
  return 1;
}


// ===== 317604 StreamReader::writeStringEx(IStreamBase *,char const*,ulong long) =====
int __fastcall StreamReader::writeStringEx(
        StreamReader *this,
        IStreamBase *a2,
        const char *a3,
        int a4,
        unsigned __int64 a5)
{
  (*(void (__fastcall **)(StreamReader *, IStreamBase *, const char *))(*(_DWORD *)this + 28))(this, a2, a3);
  return 1;
}


// ===== 31761c `global constructor keyed to'.._.._sources_Utils_StreamReader.cpp =====
void `global constructor keyed to'.._.._sources_Utils_StreamReader.cpp()
{
  dword_99F904 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_99F900 = 1056964608;
}


// ===== 31763c StreamReader::readString(IStreamBase *,wchar_t *,ulong long) =====
bool __fastcall StreamReader::readString(StreamReader *this, IStreamBase *a2, unsigned __int64 a3, unsigned __int64 a4)
{
  unsigned int v7; // r5
  unsigned int v8; // r4

  v7 = StreamReader::readAs<unsigned int>((int)this);
  v8 = v7;
  if ( !((a3 - 1) >> 32) )
  {
    if ( v7 <= (int)a3 - 1 )
      v8 = v7;
    else
      v8 = a3 - 1;
  }
  (*(void (__fastcall **)(StreamReader *, IStreamBase *, unsigned int, unsigned int, int, unsigned int))(*(_DWORD *)this + 24))(
    this,
    a2,
    4 * v8,
    v8 >> 30,
    1,
    v7);
  *((_DWORD *)a2 + v8) = 0;
  return a3 > v7;
}


// ===== 317734 StreamReader::readString(IStreamBase *,char *,ulong long) =====
bool __fastcall StreamReader::readString(StreamReader *this, IStreamBase *a2, unsigned __int64 a3, unsigned __int64 a4)
{
  unsigned int v7; // r4
  unsigned int v8; // r5

  v7 = StreamReader::readAs<unsigned int>((int)this);
  v8 = v7;
  if ( !((a3 - 1) >> 32) )
  {
    if ( v7 <= (int)a3 - 1 )
      v8 = v7;
    else
      v8 = a3 - 1;
  }
  (*(void (__fastcall **)(StreamReader *, IStreamBase *, unsigned int, _DWORD, int, unsigned int))(*(_DWORD *)this + 24))(
    this,
    a2,
    v8,
    0,
    1,
    v7);
  *((_BYTE *)a2 + v8) = 0;
  return a3 > v7;
}


// ===== 317828 `global constructor keyed to'.._.._sources_Utils_sys.cpp =====
void `global constructor keyed to'.._.._sources_Utils_sys.cpp()
{
  dword_99F910 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_99F90C = 1056964608;
}


// ===== 317848 sys::printNoFormat(char const*) =====
// attributes: thunk
int sys::printNoFormat(const char *format, ...)
{
  return printf(format);
}


// ===== 31784c sys::print(char const*,...) =====
int sys::print(sys *this, const char *a2, ...)
{
  struct tm *v2; // r0
  time_t v4; // [sp+4h] [bp-430h] BYREF
  int *p_varg_r1; // [sp+8h] [bp-42Ch]
  char v6[4]; // [sp+Ch] [bp-428h] BYREF
  char v7[32]; // [sp+40Ch] [bp-28h] BYREF
  int varg_r1; // [sp+44Ch] [bp+18h] BYREF

  p_varg_r1 = &varg_r1;
  vsnprintf(v6, 0x400u, (const char *)this, (__gnuc_va_list)&varg_r1);
  v4 = time(nullptr);
  v2 = localtime(&v4);
  strftime(v7, 0x1Eu, "[%H:%M:%S] ", v2);
  sys::printNoFormat(v7);
  return sys::printNoFormat(v6);
}


// ===== 317914 sys::println(char const*,...) =====
int sys::println(sys *this, const char *a2, ...)
{
  struct tm *v2; // r0
  time_t v4; // [sp+4h] [bp-430h] BYREF
  int *p_varg_r1; // [sp+8h] [bp-42Ch]
  char v6[4]; // [sp+Ch] [bp-428h] BYREF
  char v7[32]; // [sp+40Ch] [bp-28h] BYREF
  int varg_r1; // [sp+44Ch] [bp+18h] BYREF

  p_varg_r1 = &varg_r1;
  vsnprintf(v6, 0x400u, (const char *)this, (__gnuc_va_list)&varg_r1);
  v4 = time(nullptr);
  v2 = localtime(&v4);
  strftime(v7, 0x1Eu, "[%H:%M:%S] ", v2);
  sys::printNoFormat(v7);
  sys::printNoFormat(v6);
  return sys::printNoFormat("\n");
}


// ===== 3179ec lstr::operator()(char const*,char const*) =====
unsigned int __fastcall lstr::operator()(int a1, char *a2, char *a3)
{
  return (unsigned int)LC_API_STRCMP_0(a2, a3) >> 31;
}


// ===== 317a04 strrstr(char const*,char const*) =====
const char *__fastcall strrstr(const char *a1, const char *a2)
{
  unsigned __int8 v2; // r5
  const char *v3; // r4
  const char *v5; // r0
  const char *v6; // r6
  const char *v7; // r2
  int v8; // r3
  int v9; // t1

  v2 = *a2;
  v3 = a1;
  if ( *a2 )
  {
    v5 = &a1[LC_API_STRLEN_0(a1)];
    if ( v3 == v5 )
    {
      return nullptr;
    }
    else
    {
LABEL_6:
      v6 = a2;
      v7 = v5;
      v8 = v2;
      do
      {
        if ( v8 != *((unsigned __int8 *)v7 - 1) )
        {
          if ( --v5 == v3 )
            return nullptr;
          goto LABEL_6;
        }
        v9 = *(unsigned __int8 *)++v6;
        v8 = v9;
        ++v7;
      }
      while ( v9 );
      return v5 - 1;
    }
  }
  return v3;
}


// ===== 317a8c TimerUtil::TimerUtil(void) =====
void __fastcall TimerUtil::TimerUtil(TimerUtil *this)
{
  *((_BYTE *)this + 4) = 1;
  *(_DWORD *)this = 0;
}


// ===== 317aa0 TimerUtil::TimerUtil(void) =====
void __fastcall TimerUtil::TimerUtil(TimerUtil *this)
{
  *((_BYTE *)this + 4) = 1;
  *(_DWORD *)this = 0;
}


// ===== 317ab4 TimerUtil::Start(uint) =====
int __fastcall TimerUtil::Start(int this, unsigned int a2)
{
  *(_BYTE *)(this + 4) = 0;
  *(_DWORD *)this = a2;
  return this;
}


// ===== 317ac4 TimerUtil::Pause(void) =====
int __fastcall TimerUtil::Pause(int this)
{
  *(_BYTE *)(this + 4) = 1;
  return this;
}


// ===== 317ad0 TimerUtil::Unpause(void) =====
int __fastcall TimerUtil::Unpause(int this)
{
  *(_BYTE *)(this + 4) = 0;
  return this;
}


// ===== 317adc TimerUtil::GetRemainingTime(void) =====
int __fastcall TimerUtil::GetRemainingTime(TimerUtil *this)
{
  return *(_DWORD *)this;
}


// ===== 317ae4 TimerUtil::Update(void) =====
int __fastcall TimerUtil::Update(int this)
{
  int *v1; // r4
  int v2; // r5

  v1 = (int *)this;
  if ( !*(_BYTE *)(this + 4) )
  {
    v2 = *(_DWORD *)this;
    this = Application::GetDt((Application *)&Singleton<Application>::s_inst);
    *v1 = (v2 - this) & ~((v2 - this) >> 31);
  }
  return this;
}


// ===== 317b28 `global constructor keyed to'.._.._sources_Utils_Timer.cpp =====
int `global constructor keyed to'.._.._sources_Utils_Timer.cpp()
{
  int result; // r0

  result = `guard variable for'Singleton<Application>::s_inst;
  dword_99F920 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_99F91C = 1056964608;
  if ( (`guard variable for'Singleton<Application>::s_inst & 1) == 0 )
  {
    `guard variable for'Singleton<Application>::s_inst = 1;
    Application::Application((Application *)&Singleton<Application>::s_inst);
    return _aeabi_atexit((int)&Singleton<Application>::s_inst, (int)Application::~Application, (int)&_dso_handle);
  }
  return result;
}


// ===== 317bb0 UnInitUnitMemory(void) =====
void UnInitUnitMemory()
{
  ;
}


// ===== 317bb4 ShowUnitHeapMemoryStats(char const*) =====
void __fastcall ShowUnitHeapMemoryStats(const char *a1)
{
  ;
}


// ===== 317bb8 UnlockMemoryMutex(void) =====
int UnlockMemoryMutex()
{
  return CMutex::Unlock((int)&s_mem_mutex);
}


// ===== 317bc8 LockMemoryMutex(void) =====
int LockMemoryMutex()
{
  return CMutex::Lock((int)&s_mem_mutex);
}


// ===== 317bd8 internal_free(void *) =====
// attributes: thunk
void internal_free(void *p)
{
  free(p);
}


// ===== 317bdc FreeMem(void *) =====
int __fastcall FreeMem(int result)
{
  void *v1; // r4

  v1 = (void *)result;
  if ( result )
  {
    LockMemoryMutex();
    internal_free(v1);
    return UnlockMemoryMutex();
  }
  return result;
}


// ===== 317c00 internal_malloc_aligned(uint,uint,char const*,uint,char const*) =====
void *__fastcall internal_malloc_aligned(
        unsigned int a1,
        size_t byte_count,
        const char *a3,
        unsigned int a4,
        const char *a5)
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
      "0",
      "..\\..\\project_vs2005\\Game/..\\..\\sources\\Utils\\UnitHeap.cpp",
      81);
  }
  return LC_API_MALLOC_0(byte_count);
}


// ===== 317c94 internal_malloc(uint,char const*,uint,char const*) =====
// attributes: thunk
void *internal_malloc(size_t byte_count)
{
  return LC_API_MALLOC_0(byte_count);
}


// ===== 317c98 AllocateMem(uint,uint,char const*,uint,char const*) =====
void *__fastcall AllocateMem(size_t a1, unsigned int a2, const char *a3, unsigned int a4, const char *a5)
{
  int v9; // r2
  void *v10; // r5

  LockMemoryMutex();
  v9 = (unsigned __int8)s_heapsInitialized;
  if ( !s_heapsInitialized )
  {
    s_totalAllocated = (unsigned __int8)s_heapsInitialized;
    s_heapsInitialized = 1;
    s_heapTotalAllocated = v9;
  }
  if ( !a2 || (v10 = internal_malloc_aligned(a2, a1, a3, a4, a5)) == nullptr )
  {
    v10 = internal_malloc(a1);
    if ( !v10 )
    {
      ShowMemoryStats("Out of memory.");
      if ( gAssertLevel == 2 )
      {
        dword_0 = 0;
      }
      else if ( gAssertLevel == 1 )
      {
        fprintf(
          (FILE *)&_sF + 2,
          "ASSERT(%s) FAILED: %s:%d\n",
          "0",
          "..\\..\\project_vs2005\\Game/..\\..\\sources\\Utils\\UnitHeap.cpp",
          461);
      }
    }
  }
  UnlockMemoryMutex();
  return v10;
}


// ===== 317db8 `global constructor keyed to'.._.._sources_Utils_UnitHeap.cpp =====
int `global constructor keyed to'.._.._sources_Utils_UnitHeap.cpp()
{
  dword_99F940 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_99F93C = 1056964608;
  CMutex::CMutex((CMutex *)&s_mem_mutex);
  return _aeabi_atexit((int)&s_mem_mutex, (int)CMutex::~CMutex, (int)&_dso_handle);
}


// ===== 317e10 Thread::~Thread() =====
void __fastcall Thread::~Thread(Thread *this)
{
  ;
}


// ===== 317e14 updateJob_thread::updateJob_thread(int) =====
void __fastcall updateJob_thread::updateJob_thread(updateJob_thread *this, int a2)
{
  *((_DWORD *)this + 3) = a2;
  *((_BYTE *)this + 8) = 1;
  *(_DWORD *)this = off_95B0C0;
}


// ===== 317e44 updateJob_thread::updateJob_thread(int) =====
void __fastcall updateJob_thread::updateJob_thread(updateJob_thread *this, int a2)
{
  *((_DWORD *)this + 3) = a2;
  *((_BYTE *)this + 8) = 1;
  *(_DWORD *)this = off_95B0C0;
}


// ===== 317e74 updateJob_thread::~updateJob_thread() =====
void __fastcall updateJob_thread::~updateJob_thread(updateJob_thread *this)
{
  ;
}


// ===== 317e78 updateJob_thread::~updateJob_thread() =====
void __fastcall updateJob_thread::~updateJob_thread(updateJob_thread *this)
{
  ;
}


// ===== 317e7c updateJob_thread::Run(void) =====
void __fastcall updateJob_thread::Run(updateJob_thread *this)
{
  ;
}


// ===== 317e80 updateJob_thread::Kernel(void) =====
int __fastcall updateJob_thread::Kernel(updateJob_thread *this)
{
  return 1;
}


// ===== 317e88 updateJob_thread::Prepare(void) =====
int __fastcall updateJob_thread::Prepare(updateJob_thread *this)
{
  return 1;
}


// ===== 317e90 updateJob_thread::IsCurrectThreadRunning(void) =====
int __fastcall updateJob_thread::IsCurrectThreadRunning(updateJob_thread *this)
{
  return 1;
}


// ===== 317e98 updateJob_thread::Start2(void) =====
int __fastcall updateJob_thread::Start2(updateJob_thread *this)
{
  int result; // r0
  pthread_t v2; // [sp+4h] [bp-8h] BYREF

  v2 = *((_DWORD *)this + 1);
  result = pthread_create(&v2, nullptr, (void *(*)(void *))threadfun3, this);
  if ( result )
  {
    _DEBUG_OUT("\n\n Not Created2222 \n\n");
    return -1;
  }
  return result;
}


// ===== 317ef8 updateJob_thread::Start(void) =====
int __fastcall updateJob_thread::Start(updateJob_thread *this)
{
  int result; // r0
  pthread_t v2; // [sp+4h] [bp-8h] BYREF

  v2 = *((_DWORD *)this + 1);
  result = pthread_create(&v2, nullptr, (void *(*)(void *))threadfun2, this);
  if ( result )
  {
    _DEBUG_OUT("\n\n Not Created \n\n");
    return -1;
  }
  return result;
}


// ===== 317f58 updateJob_thread::Stop(void) =====
int __fastcall updateJob_thread::Stop(updateJob_thread *this)
{
  _DEBUG_OUT("\n\n updateJob_thread::Stop() \n\n");
  return 1;
}


// ===== 317f74 updateJob_thread::Finish(void) =====
int __fastcall updateJob_thread::Finish(updateJob_thread *this)
{
  _DEBUG_OUT("\n\n updateJob_thread::Finish() \n\n");
  return 1;
}


// ===== 317f90 threadfun3(void *) =====
int __fastcall threadfun3(void *a1)
{
  SavegameManager::saveSettings((SavegameManager *)dword_99F778);
  return 0;
}


// ===== 317fbc threadfun2(void *) =====
int __fastcall threadfun2(Savegame *a1)
{
  Savegame::UpdateJobs(a1);
  return 0;
}


// ===== 317fcc updateJob_thread::~updateJob_thread() =====
void __fastcall updateJob_thread::~updateJob_thread(updateJob_thread *this)
{
  updateJob_thread::~updateJob_thread(this);
  CustomFree(this);
}


// ===== 317fe8 Thread::~Thread() =====
void __fastcall Thread::~Thread(Thread *this)
{
  *(_DWORD *)this = off_95B0A0;
  CustomFree(this);
}


// ===== 31801c `global constructor keyed to'.._.._sources_Utils_updateJob_thread.cpp =====
int `global constructor keyed to'.._.._sources_Utils_updateJob_thread.cpp()
{
  int result; // r0

  result = `guard variable for'Singleton<Application>::s_inst;
  dword_99F94C = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_99F948 = 1056964608;
  if ( (`guard variable for'Singleton<Application>::s_inst & 1) == 0 )
  {
    `guard variable for'Singleton<Application>::s_inst = 1;
    Application::Application((Application *)&Singleton<Application>::s_inst);
    return _aeabi_atexit((int)&Singleton<Application>::s_inst, (int)Application::~Application, (int)&_dso_handle);
  }
  return result;
}


// ===== 3180a4 `global constructor keyed to'.._.._sources_Utils_UserProperties.cpp =====
void `global constructor keyed to'.._.._sources_Utils_UserProperties.cpp()
{
  dword_99F958 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_99F954 = 1056964608;
}


// ===== 3180c4 std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,std::string>,std::priv::_Select1st<std::pair<std::string const,std::string>>,std::priv::_MapTraitsT<std::pair<std::string const,std::string>>,std::allocator<std::pair<std::string const,std::string>>>::_M_erase(std::priv::_Rb_tree_node_base *) =====
void __fastcall std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,std::string>,std::priv::_Select1st<std::pair<std::string const,std::string>>,std::priv::_MapTraitsT<std::pair<std::string const,std::string>>,std::allocator<std::pair<std::string const,std::string>>>::_M_erase(
        int a1,
        _DWORD *a2)
{
  _DWORD *v2; // r4
  _DWORD *v4; // r0
  size_t v5; // r1
  _DWORD *v6; // r0
  _DWORD *v7; // r5
  size_t v8; // r1

  v2 = a2;
  if ( a2 )
  {
    while ( 1 )
    {
      std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,std::string>,std::priv::_Select1st<std::pair<std::string const,std::string>>,std::priv::_MapTraitsT<std::pair<std::string const,std::string>>,std::allocator<std::pair<std::string const,std::string>>>::_M_erase(
        a1,
        v2[3]);
      v6 = (_DWORD *)v2[15];
      v7 = (_DWORD *)v2[2];
      if ( v6 != v2 + 10 && v6 )
      {
        v8 = v2[10] - (_DWORD)v6;
        if ( v8 <= 0x80 )
          __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v6, v8);
        else
          CustomFree(v6);
      }
      v4 = (_DWORD *)v2[9];
      if ( v4 == v2 + 4 || !v4 )
        goto LABEL_8;
      v5 = v2[4] - (_DWORD)v4;
      if ( v5 > 0x80 )
      {
        CustomFree(v4);
        __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v2, 0x40u);
        v2 = v7;
        if ( !v7 )
          return;
      }
      else
      {
        __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v4, v5);
LABEL_8:
        __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v2, 0x40u);
        v2 = v7;
        if ( !v7 )
          return;
      }
    }
  }
}


// ===== 318178 UserProperties::~UserProperties() =====
void __fastcall UserProperties::~UserProperties(UserProperties *this)
{
  int v1; // r1
  char *v3; // r5

  v1 = *((_DWORD *)this + 5);
  *(_DWORD *)this = off_95B0E0;
  if ( v1 )
  {
    v3 = (char *)this + 4;
    std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,std::string>,std::priv::_Select1st<std::pair<std::string const,std::string>>,std::priv::_MapTraitsT<std::pair<std::string const,std::string>>,std::allocator<std::pair<std::string const,std::string>>>::_M_erase(
      (int)this + 4,
      *((_DWORD **)this + 2));
    *((_DWORD *)this + 4) = v3;
    *((_DWORD *)this + 5) = 0;
    *((_DWORD *)this + 3) = v3;
    *((_DWORD *)this + 2) = 0;
  }
}


// ===== 3181d8 UserProperties::~UserProperties() =====
void __fastcall UserProperties::~UserProperties(UserProperties *this)
{
  UserProperties::~UserProperties(this);
  CustomFree(this);
}


// ===== 3181f4 UserProperties::~UserProperties() =====
void __fastcall UserProperties::~UserProperties(UserProperties *this)
{
  int v1; // r1
  char *v3; // r5

  v1 = *((_DWORD *)this + 5);
  *(_DWORD *)this = off_95B0E0;
  if ( v1 )
  {
    v3 = (char *)this + 4;
    std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,std::string>,std::priv::_Select1st<std::pair<std::string const,std::string>>,std::priv::_MapTraitsT<std::pair<std::string const,std::string>>,std::allocator<std::pair<std::string const,std::string>>>::_M_erase(
      (int)this + 4,
      *((_DWORD **)this + 2));
    *((_DWORD *)this + 4) = v3;
    *((_DWORD *)this + 5) = 0;
    *((_DWORD *)this + 3) = v3;
    *((_DWORD *)this + 2) = 0;
  }
}


// ===== 318254 std::string::~string() =====
void __fastcall std::string::~string(std::string *this)
{
  std::string *M_data; // r0
  char *v3; // r1

  M_data = (std::string *)this->_M_start_of_storage._M_data;
  if ( M_data != this && M_data )
  {
    v3 = (char *)(this->_M_buffers._M_end_of_storage - (char *)M_data);
    if ( (unsigned int)v3 > 0x80 )
      CustomFree(M_data);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(M_data, (size_t)v3);
  }
}


// ===== 318298 std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,std::string>,std::priv::_Select1st<std::pair<std::string const,std::string>>,std::priv::_MapTraitsT<std::pair<std::string const,std::string>>,std::allocator<std::pair<std::string const,std::string>>>::_M_lower_bound<char const*>(char const* const&) =====
_DWORD *__fastcall std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,std::string>,std::priv::_Select1st<std::pair<std::string const,std::string>>,std::priv::_MapTraitsT<std::pair<std::string const,std::string>>,std::allocator<std::pair<std::string const,std::string>>>::_M_lower_bound<char const*>(
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


// ===== 3183cc std::pair<std::string const,std::string>::pair(std::string const&,std::string const&) =====
std::string *__fastcall std::pair<std::string const,std::string>::pair(std::string *a1, int a2, int a3)
{
  a1->_M_finish = (char *)a1;
  a1->_M_start_of_storage._M_data = (char *)a1;
  std::string::_M_range_initialize(a1, *(const char **)(a2 + 20), *(const char **)(a2 + 16));
  a1[1]._M_finish = (char *)&a1[1];
  a1[1]._M_start_of_storage._M_data = (char *)&a1[1];
  std::string::_M_range_initialize(a1 + 1, *(const char **)(a3 + 20), *(const char **)(a3 + 16));
  return a1;
}


// ===== 31840c std::pair<std::string const,std::string>::pair(std::pair<std::string const,std::string> const&) =====
std::string *__fastcall std::pair<std::string const,std::string>::pair(std::string *a1, const char **a2)
{
  a1->_M_finish = (char *)a1;
  a1->_M_start_of_storage._M_data = (char *)a1;
  std::string::_M_range_initialize(a1, a2[5], a2[4]);
  a1[1]._M_finish = (char *)&a1[1];
  a1[1]._M_start_of_storage._M_data = (char *)&a1[1];
  std::string::_M_range_initialize(a1 + 1, a2[11], a2[10]);
  return a1;
}


// ===== 31844c std::allocator<std::priv::_Rb_tree_node<std::pair<std::string const,std::string>>>::allocate(uint,void const*) [clone] =====
void *std::allocator<std::priv::_Rb_tree_node<std::pair<std::string const,std::string>>>::allocate()
{
  size_t v1; // [sp+4h] [bp-8h] BYREF

  v1 = 64;
  return __ZNSt12__node_alloc11_M_allocateERj_veneer(&v1);
}


// ===== 31846c std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,std::string>,std::priv::_Select1st<std::pair<std::string const,std::string>>,std::priv::_MapTraitsT<std::pair<std::string const,std::string>>,std::allocator<std::pair<std::string const,std::string>>>::_M_insert(std::priv::_Rb_tree_node_base *,std::pair<std::string const,std::string> const&,std::priv::_Rb_tree_node_base *,std::priv::_Rb_tree_node_base *) =====
int *__fastcall std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,std::string>,std::priv::_Select1st<std::pair<std::string const,std::string>>,std::priv::_MapTraitsT<std::pair<std::string const,std::string>>,std::allocator<std::pair<std::string const,std::string>>>::_M_insert(
        int *a1,
        _DWORD *a2,
        _DWORD *a3,
        const char **a4,
        int a5,
        int a6)
{
  char *v10; // r8
  int v11; // r7
  char *v13; // r8
  char *v14; // r8

  if ( a2 == a3 )
  {
    v14 = (char *)std::allocator<std::priv::_Rb_tree_node<std::pair<std::string const,std::string>>>::allocate();
    std::pair<std::string const,std::string>::pair((std::string *)(v14 + 16), a4);
    *((_DWORD *)v14 + 3) = 0;
    *((_DWORD *)v14 + 2) = 0;
    v11 = (int)v14;
    a2[2] = v14;
    a2[1] = v14;
    a2[3] = v14;
  }
  else if ( !a6 && (a5 || std::less<std::string>::operator()((int)(a2 + 5), (int)a4, (int)(a3 + 4))) )
  {
    v13 = (char *)std::allocator<std::priv::_Rb_tree_node<std::pair<std::string const,std::string>>>::allocate();
    std::pair<std::string const,std::string>::pair((std::string *)(v13 + 16), a4);
    *((_DWORD *)v13 + 3) = 0;
    *((_DWORD *)v13 + 2) = 0;
    a3[2] = v13;
    v11 = (int)v13;
    if ( a3 == (_DWORD *)a2[2] )
      a2[2] = v13;
  }
  else
  {
    v10 = (char *)std::allocator<std::priv::_Rb_tree_node<std::pair<std::string const,std::string>>>::allocate();
    std::pair<std::string const,std::string>::pair((std::string *)(v10 + 16), a4);
    *((_DWORD *)v10 + 3) = 0;
    *((_DWORD *)v10 + 2) = 0;
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


// ===== 318598 std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,std::string>,std::priv::_Select1st<std::pair<std::string const,std::string>>,std::priv::_MapTraitsT<std::pair<std::string const,std::string>>,std::allocator<std::pair<std::string const,std::string>>>::insert_unique(std::pair<std::string const,std::string> const&) =====
int __fastcall std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,std::string>,std::priv::_Select1st<std::pair<std::string const,std::string>>,std::priv::_MapTraitsT<std::pair<std::string const,std::string>>,std::allocator<std::pair<std::string const,std::string>>>::insert_unique(
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
    std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,std::string>,std::priv::_Select1st<std::pair<std::string const,std::string>>,std::priv::_MapTraitsT<std::pair<std::string const,std::string>>,std::allocator<std::pair<std::string const,std::string>>>::_M_insert(
      &v28,
      a2,
      v3,
      (const char **)a3,
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
      std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,std::string>,std::priv::_Select1st<std::pair<std::string const,std::string>>,std::priv::_MapTraitsT<std::pair<std::string const,std::string>>,std::allocator<std::pair<std::string const,std::string>>>::_M_insert(
        &v27,
        a2,
        v3,
        (const char **)a3,
        0,
        0);
      v24 = v27;
      *(_BYTE *)(a1 + 4) = 1;
      *(_DWORD *)a1 = v24;
    }
  }
  return a1;
}


// ===== 3187b0 std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,std::string>,std::priv::_Select1st<std::pair<std::string const,std::string>>,std::priv::_MapTraitsT<std::pair<std::string const,std::string>>,std::allocator<std::pair<std::string const,std::string>>>::insert_unique(std::priv::_Rb_tree_iterator<std::pair<std::string const,std::string>,std::priv::_MapTraitsT<std::pair<std::string const,std::string>>>,std::pair<std::string const,std::string> const&) =====
int *__fastcall std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,std::string>,std::priv::_Select1st<std::pair<std::string const,std::string>>,std::priv::_MapTraitsT<std::pair<std::string const,std::string>>,std::allocator<std::pair<std::string const,std::string>>>::insert_unique(
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
      std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,std::string>,std::priv::_Select1st<std::pair<std::string const,std::string>>,std::priv::_MapTraitsT<std::pair<std::string const,std::string>>,std::allocator<std::pair<std::string const,std::string>>>::insert_unique(
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
        std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,std::string>,std::priv::_Select1st<std::pair<std::string const,std::string>>,std::priv::_MapTraitsT<std::pair<std::string const,std::string>>,std::allocator<std::pair<std::string const,std::string>>>::insert_unique(
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
        std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,std::string>,std::priv::_Select1st<std::pair<std::string const,std::string>>,std::priv::_MapTraitsT<std::pair<std::string const,std::string>>,std::allocator<std::pair<std::string const,std::string>>>::_M_insert(
          a1,
          a2,
          (_DWORD *)*a3,
          (const char **)a4,
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
        std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,std::string>,std::priv::_Select1st<std::pair<std::string const,std::string>>,std::priv::_MapTraitsT<std::pair<std::string const,std::string>>,std::allocator<std::pair<std::string const,std::string>>>::_M_insert(
          a1,
          a2,
          (_DWORD *)v33,
          (const char **)a4,
          0,
          (int)v4);
        return a1;
      }
      v40 = v38 > v37;
    }
    if ( v40 >= 0 )
    {
      std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,std::string>,std::priv::_Select1st<std::pair<std::string const,std::string>>,std::priv::_MapTraitsT<std::pair<std::string const,std::string>>,std::allocator<std::pair<std::string const,std::string>>>::insert_unique(
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
      std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,std::string>,std::priv::_Select1st<std::pair<std::string const,std::string>>,std::priv::_MapTraitsT<std::pair<std::string const,std::string>>,std::allocator<std::pair<std::string const,std::string>>>::_M_insert(
        a1,
        a2,
        v8,
        (const char **)a4,
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
    std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,std::string>,std::priv::_Select1st<std::pair<std::string const,std::string>>,std::priv::_MapTraitsT<std::pair<std::string const,std::string>>,std::allocator<std::pair<std::string const,std::string>>>::_M_insert(
      a1,
      a2,
      v4,
      (const char **)a4,
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
        std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,std::string>,std::priv::_Select1st<std::pair<std::string const,std::string>>,std::priv::_MapTraitsT<std::pair<std::string const,std::string>>,std::allocator<std::pair<std::string const,std::string>>>::insert_unique(
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
      std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,std::string>,std::priv::_Select1st<std::pair<std::string const,std::string>>,std::priv::_MapTraitsT<std::pair<std::string const,std::string>>,std::allocator<std::pair<std::string const,std::string>>>::_M_insert(
        a1,
        a2,
        v4,
        (const char **)a4,
        0,
        (int)v4);
      return a1;
    }
LABEL_61:
    std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,std::string>,std::priv::_Select1st<std::pair<std::string const,std::string>>,std::priv::_MapTraitsT<std::pair<std::string const,std::string>>,std::allocator<std::pair<std::string const,std::string>>>::_M_insert(
      a1,
      a2,
      v16,
      (const char **)a4,
      (int)v16,
      0);
    return a1;
  }
LABEL_22:
  *a1 = (int)v4;
  return a1;
}


// ===== 318cb4 std::map<std::string,std::string,std::less<std::string>,std::allocator<std::pair<std::string const,std::string>>>::operator[]<char const*>(char const* const&) =====
_DWORD *__fastcall std::map<std::string,std::string>::operator[]<char const*>(_DWORD *a1, char **a2)
{
  _DWORD *v4; // r5
  const void *v5; // r1
  int v6; // r8
  int v7; // r10
  size_t v8; // r2
  int v9; // r0
  _DWORD *v10; // r3
  int v12; // r5
  _DWORD *v13; // [sp+Ch] [bp-90h] BYREF
  int v14; // [sp+10h] [bp-8Ch] BYREF
  std::string v15; // [sp+1Ch] [bp-80h] BYREF
  std::string v16; // [sp+34h] [bp-68h] BYREF
  std::string v17; // [sp+4Ch] [bp-50h] BYREF
  std::string v18; // [sp+64h] [bp-38h] BYREF
  std::string v19; // [sp+7Ch] [bp-20h] BYREF

  v4 = std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,std::string>,std::priv::_Select1st<std::pair<std::string const,std::string>>,std::priv::_MapTraitsT<std::pair<std::string const,std::string>>,std::allocator<std::pair<std::string const,std::string>>>::_M_lower_bound<char const*>(
         a1,
         a2);
  if ( v4 == a1 )
    goto LABEL_11;
  std::string::string(&v19, *a2);
  v5 = (const void *)v4[9];
  v6 = v4[8] - (_DWORD)v5;
  v7 = v19._M_finish - v19._M_start_of_storage._M_data;
  if ( v6 >= v19._M_finish - v19._M_start_of_storage._M_data )
    v8 = v19._M_finish - v19._M_start_of_storage._M_data;
  else
    v8 = v4[8] - (_DWORD)v5;
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
    std::string::string(&v17, *a2);
    v18._M_finish = (char *)&v18;
    v18._M_start_of_storage._M_data = (char *)&v18;
    std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block(&v18, 0x10u);
    *v18._M_finish = 0;
    std::pair<std::string const,std::string>::pair(&v15, (int)&v17, (int)&v18);
    v13 = v4;
    std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,std::string>,std::priv::_Select1st<std::pair<std::string const,std::string>>,std::priv::_MapTraitsT<std::pair<std::string const,std::string>>,std::allocator<std::pair<std::string const,std::string>>>::insert_unique(
      &v14,
      a1,
      (int *)&v13,
      (int)&v15);
    v12 = v14;
    std::string::~string(&v16);
    std::string::~string(&v15);
    std::string::~string(&v18);
    std::string::~string(&v17);
    v10 = (_DWORD *)v12;
    return v10 + 10;
  }
LABEL_7:
  std::string::~string(&v19);
  v10 = v4;
  return v10 + 10;
}


// ===== 318e18 UserProperties::AddProperty(char const*,char const*) =====
std::string *__fastcall UserProperties::AddProperty(UserProperties *this, char *a2, const char *a3)
{
  std::string *v4; // r5
  size_t v5; // r0
  char *v7; // [sp+4h] [bp-8h] BYREF

  v7 = a2;
  v4 = (std::string *)std::map<std::string,std::string>::operator[]<char const*>((_DWORD *)this + 1, &v7);
  v5 = LC_API_STRLEN_0(a3);
  return std::string::_M_assign(v4, a3, &a3[v5]);
}


// ===== 318e5c UserProperties::_ParseKeyValue(char *,char *) =====
std::string *__fastcall UserProperties::_ParseKeyValue(std::string *this, char *a2, char *a3)
{
  int v3; // r3
  UserProperties *v4; // r7
  char *v6; // r8
  char v7; // r4
  char *v8; // r5
  char *v9; // r5
  char *v10; // r0
  const char *v11; // r9
  char *v12; // r0
  bool v13; // zf
  char *v14; // r6
  int v15; // t1

  v3 = (unsigned __int8)*a2;
  v4 = (UserProperties *)this;
  if ( *a2 )
  {
    v6 = a2;
    this = (std::string *)ctype_;
    while ( (char)v3 == -1 || (*(_BYTE *)(ctype_ + (unsigned __int8)v3 + 1) & 7) == 0 )
    {
      v15 = (unsigned __int8)*++v6;
      v3 = v15;
      if ( !v15 )
        return this;
    }
    if ( v3 )
    {
      v7 = v6[1];
      v8 = v6 + 1;
      if ( v7 && v7 != -1 && (*(_BYTE *)(ctype_ + (unsigned __int8)v7 + 1) & 7) != 0 )
      {
        v9 = v6;
        while ( 1 )
        {
          v7 = v9[2];
          if ( !v7 || v7 == -1 )
            break;
          ++v9;
          if ( (*(_BYTE *)(ctype_ + (unsigned __int8)v7 + 1) & 7) == 0 )
          {
            v8 = v9 + 1;
            goto LABEL_15;
          }
        }
        v8 = v9 + 2;
      }
LABEL_15:
      *v8 = 0;
      if ( a3 )
      {
        v10 = LC_API_STRSTR_0(a3, "%22");
        if ( !v10 )
          goto LABEL_26;
        v11 = v10 + 3;
        v12 = LC_API_STRSTR_0(v10 + 3, "%22");
        v13 = v11 == nullptr;
        if ( v11 )
          v13 = v12 == nullptr;
        v14 = v12;
        if ( v13 )
        {
LABEL_26:
          this = UserProperties::AddProperty(v4, v6, a3);
          *v8 = v7;
        }
        else
        {
          *v12 = 0;
          this = UserProperties::AddProperty(v4, v6, v11);
          *v14 = 37;
          *v8 = v7;
        }
      }
      else
      {
        this = UserProperties::AddProperty(v4, v6, "");
        *v8 = v7;
      }
    }
  }
  return this;
}


// ===== 318fe4 UserProperties::_ParseLine(char *) =====
std::string *__fastcall UserProperties::_ParseLine(std::string *this, char *a2)
{
  char *v4; // r0
  char *v5; // r4
  std::string *result; // r0

  v4 = strchr(a2, 61);
  v5 = v4;
  if ( !v4 )
    return UserProperties::_ParseKeyValue(this, a2, nullptr);
  *v4 = 0;
  result = UserProperties::_ParseKeyValue(this, a2, v4 + 1);
  *v5 = 61;
  return result;
}


// ===== 31903c UserProperties::_ParseProperties(char const*) =====
void __fastcall UserProperties::_ParseProperties(std::string *this, char *a2)
{
  char *M_data; // r10
  char *v4; // r0
  char *v5; // r8
  std::string v6; // [sp+Ch] [bp-20h] BYREF

  if ( a2 )
  {
    std::string::string(&v6, a2);
    M_data = v6._M_start_of_storage._M_data;
    while ( 1 )
    {
      v4 = strchr(M_data, 10);
      v5 = v4;
      if ( !v4 )
        break;
      *v4 = 0;
      UserProperties::_ParseLine(this, M_data);
      M_data = v5 + 1;
      *v5 = 10;
    }
    UserProperties::_ParseLine(this, M_data);
    std::string::~string(&v6);
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
      "props",
      "..\\..\\project_vs2005\\Game/..\\..\\sources\\Utils\\UserProperties.cpp",
      37);
  }
}


// ===== 319158 UserProperties::UserProperties(char const*) =====
void __fastcall UserProperties::UserProperties(UserProperties *this, char *a2)
{
  *((_DWORD *)this + 2) = 0;
  *(_DWORD *)this = off_95B0E0;
  *((_BYTE *)this + 4) = 0;
  *((_DWORD *)this + 4) = (char *)this + 4;
  *((_DWORD *)this + 5) = 0;
  *((_DWORD *)this + 3) = (char *)this + 4;
  if ( a2 )
    UserProperties::_ParseProperties((std::string *)this, a2);
}


// ===== 3191b0 UserProperties::UserProperties(char const*) =====
void __fastcall UserProperties::UserProperties(UserProperties *this, char *a2)
{
  *((_DWORD *)this + 2) = 0;
  *(_DWORD *)this = off_95B0E0;
  *((_BYTE *)this + 4) = 0;
  *((_DWORD *)this + 4) = (char *)this + 4;
  *((_DWORD *)this + 5) = 0;
  *((_DWORD *)this + 3) = (char *)this + 4;
  if ( a2 )
    UserProperties::_ParseProperties((std::string *)this, a2);
}


// ===== 319208 `global constructor keyed to'.._.._sources_Utils_sfc_script_lua_Arguments.cpp =====
void `global constructor keyed to'.._.._sources_Utils_sfc_script_lua_Arguments.cpp()
{
  dword_99F964 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_99F960 = 1056964608;
}


// ===== 319228 sfc::script::lua::Arguments::~Arguments() =====
void __fastcall sfc::script::lua::Arguments::~Arguments(sfc::script::lua::Arguments *this)
{
  int v2; // r0

  v2 = *((_DWORD *)this + 1);
  *(_DWORD *)this = off_95B100;
  sfc::script::lua::Value::freeValueList(v2);
}


// ===== 319260 sfc::script::lua::Arguments::~Arguments() =====
void __fastcall sfc::script::lua::Arguments::~Arguments(sfc::script::lua::Arguments *this)
{
  sfc::script::lua::Arguments::~Arguments(this);
  CustomFree(this);
}


// ===== 31927c sfc::script::lua::Arguments::~Arguments() =====
void __fastcall sfc::script::lua::Arguments::~Arguments(sfc::script::lua::Arguments *this)
{
  int v2; // r0

  v2 = *((_DWORD *)this + 1);
  *(_DWORD *)this = off_95B100;
  sfc::script::lua::Value::freeValueList(v2);
}


// ===== 3192b4 sfc::script::lua::Arguments::Arguments(void) =====
sfc::script::lua::Arguments *__fastcall sfc::script::lua::Arguments::Arguments(sfc::script::lua::Arguments *this)
{
  *(_DWORD *)this = off_95B100;
  *((_DWORD *)this + 1) = sfc::script::lua::Value::allocValueList(this);
  return this;
}


// ===== 3192ec sfc::script::lua::Arguments::Arguments(void) =====
sfc::script::lua::Arguments *__fastcall sfc::script::lua::Arguments::Arguments(sfc::script::lua::Arguments *this)
{
  *(_DWORD *)this = off_95B100;
  *((_DWORD *)this + 1) = sfc::script::lua::Value::allocValueList(this);
  return this;
}


// ===== 319324 std::vector<sfc::script::lua::Value,std::allocator<sfc::script::lua::Value>>::_M_clear_after_move(void) =====
void __fastcall std::vector<sfc::script::lua::Value>::_M_clear_after_move(void **a1)
{
  char *v1; // r4
  char *v2; // r5
  void (__fastcall **v4)(void *); // t1
  size_t v5; // r1

  v1 = (char *)a1[1];
  v2 = (char *)*a1;
  if ( v1 != *a1 )
  {
    do
    {
      v4 = *((void (__fastcall ***)(void *))v1 - 28);
      v1 -= 112;
      (*v4)(v1);
    }
    while ( v2 != v1 );
    v1 = (char *)*a1;
  }
  if ( v1 )
  {
    v5 = 16 * (((_BYTE *)a1[2] - v1) >> 4);
    if ( v5 > 0x80 )
      CustomFree(v1);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v1, v5);
  }
}


// ===== 3193b0 std::priv::_String_base<wchar_t,std::allocator<wchar_t>>::_M_deallocate_block(void) =====
void __fastcall std::priv::_String_base<wchar_t,std::allocator<wchar_t>>::_M_deallocate_block(int a1)
{
  int v1; // r3
  size_t v2; // r1

  v1 = *(_DWORD *)(a1 + 68);
  if ( v1 != a1 && v1 )
  {
    v2 = (*(_DWORD *)a1 - v1) & 0xFFFFFFFC;
    if ( v2 > 0x80 )
      CustomFree(*(void **)(a1 + 68));
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(*(void **)(a1 + 68), v2);
  }
}


// ===== 3193e8 sfc::script::lua::Value::~Value() =====
void __fastcall sfc::script::lua::Value::~Value(sfc::script::lua::Value *this)
{
  char *v2; // r0
  size_t v3; // r1

  *(_DWORD *)this = off_95B0F0;
  std::priv::_String_base<wchar_t,std::allocator<wchar_t>>::_M_deallocate_block((int)this + 36);
  v2 = *((char **)this + 8);
  if ( v2 != (char *)this + 12 && v2 )
  {
    v3 = *((_DWORD *)this + 3) - (_DWORD)v2;
    if ( v3 > 0x80 )
      CustomFree(v2);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v2, v3);
  }
}


// ===== 319454 sfc::script::lua::Value::~Value() =====
void __fastcall sfc::script::lua::Value::~Value(sfc::script::lua::Value *this)
{
  sfc::script::lua::Value::~Value(this);
  CustomFree(this);
}


// ===== 319470 std::allocator<wchar_t>::_M_allocate(uint,uint &) =====
void *__fastcall std::allocator<wchar_t>::_M_allocate(int a1, unsigned int a2, size_t *a3)
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


// ===== 3194e0 sfc::script::lua::Value::Value(void) =====
sfc::script::lua::Value *__fastcall sfc::script::lua::Value::Value(sfc::script::lua::Value *this)
{
  *(_DWORD *)this = off_95B0F0;
  *((_DWORD *)this + 8) = (char *)this + 12;
  *((_DWORD *)this + 26) = (char *)this + 36;
  *((_DWORD *)this + 9) = 0;
  *((_DWORD *)this + 7) = (char *)this + 12;
  *((_BYTE *)this + 12) = 0;
  *((_DWORD *)this + 25) = (char *)this + 36;
  sfc::script::lua::Value::setNil(this);
  return this;
}


// ===== 319538 std::allocator<sfc::script::lua::Value>::_M_allocate(uint,uint &) =====
void *__fastcall std::allocator<sfc::script::lua::Value>::_M_allocate(int a1, unsigned int a2, size_t *a3)
{
  void *result; // r0
  size_t __n; // [sp+4h] [bp-4h] BYREF

  if ( a2 > 0x2492492 )
  {
    puts("out of memory\n");
    exit(1);
  }
  if ( !a2 )
    return nullptr;
  __n = 112 * a2;
  if ( 112 * a2 > 0x80 )
    result = CustomAlloc(112 * a2);
  else
    result = __ZNSt12__node_alloc11_M_allocateERj_veneer(&__n);
  *a3 = __n / 0x70;
  return result;
}


// ===== 3195c0 std::vector<sfc::script::lua::Value,std::allocator<sfc::script::lua::Value>>::push_back(sfc::script::lua::Value const&) =====
void __fastcall std::vector<sfc::script::lua::Value>::push_back(void **a1, const sfc::script::lua::Value *a2)
{
  sfc::script::lua::Value *v3; // r5
  sfc::script::lua::Value *v4; // r0
  unsigned int v6; // r2
  unsigned int v7; // r1
  sfc::script::lua::Value *v8; // r0
  char *v9; // r10
  sfc::script::lua::Value *v10; // r8
  int v11; // r5
  int v12; // r9
  sfc::script::lua::Value *v13; // r9
  int v14; // r7
  int v15; // r5
  int v16; // r3
  size_t v17; // [sp+4h] [bp-4h] BYREF

  v3 = (sfc::script::lua::Value *)a1[2];
  v4 = (sfc::script::lua::Value *)a1[1];
  if ( v4 == v3 )
  {
    v6 = -1227133513 * ((v3 - (sfc::script::lua::Value *)*a1) >> 4);
    if ( v6 )
      v7 = 1840700270 * ((v3 - (sfc::script::lua::Value *)*a1) >> 4);
    else
      v7 = 1;
    if ( v7 > 0x2492492 || v6 > v7 )
      v7 = 38347922;
    v17 = v7;
    v8 = (sfc::script::lua::Value *)std::allocator<sfc::script::lua::Value>::_M_allocate((int)(a1 + 2), v7, &v17);
    v9 = (char *)*a1;
    v10 = v8;
    v11 = (v3 - (sfc::script::lua::Value *)*a1) >> 4;
    v12 = -1227133513 * v11;
    if ( -1227133513 * v11 > 0 )
    {
      v14 = -1227133513 * v11;
      v15 = 0;
      do
      {
        sfc::script::lua::Value::Value(
          (sfc::script::lua::Value *)((char *)v10 + v15),
          (const sfc::script::lua::Value *)&v9[v15]);
        --v14;
        v15 += 112;
      }
      while ( v14 );
      v13 = (sfc::script::lua::Value *)((char *)v10 + 112 * v12);
    }
    else
    {
      v13 = v8;
    }
    sfc::script::lua::Value::Value(v13, a2);
    std::vector<sfc::script::lua::Value>::_M_clear_after_move(a1);
    v16 = (int)v10 + 112 * v17;
    *a1 = v10;
    a1[2] = (void *)v16;
    a1[1] = (char *)v13 + 112;
  }
  else
  {
    sfc::script::lua::Value::Value(v4, a2);
    a1[1] = (char *)a1[1] + 112;
  }
}


// ===== 3196ec sfc::script::lua::Arguments::Arguments(lua_State *,int) =====
_DWORD *__fastcall sfc::script::lua::Arguments::Arguments(_DWORD *a1, int a2, int a3)
{
  sfc::script::lua::Value *v4; // r0
  void **v7; // r11
  int v8; // r4
  int *v9; // r3
  int v10; // r0
  int v11; // r2
  int v12; // r11
  int v13; // r2
  int v15; // r8
  int v16; // r5
  void **v17; // r11
  int *v18; // r11
  int v19; // r0
  int v20; // r2
  int v21; // r3
  int v22; // r2
  int *v23; // [sp+4h] [bp-F8h]
  int v24; // [sp+4h] [bp-F8h]
  _BYTE v25[112]; // [sp+14h] [bp-E8h] BYREF
  _BYTE v26[112]; // [sp+84h] [bp-78h] BYREF
  sfc::script::lua::Value *v27; // [sp+F4h] [bp-8h]

  v4 = (sfc::script::lua::Value *)_stack_chk_guard;
  *a1 = off_95B100;
  v27 = v4;
  v7 = (void **)sfc::script::lua::Value::allocValueList(v4);
  a1[1] = v7;
  if ( a3 <= 0 )
  {
    v15 = 1 - a3;
    v16 = lua_gettop(a2);
    while ( v16 >= v15 )
    {
      v17 = (void **)a1[1];
      sfc::script::lua::Value::Value((sfc::script::lua::Value *)v25);
      std::vector<sfc::script::lua::Value>::push_back(v17, (const sfc::script::lua::Value *)v25);
      sfc::script::lua::Value::~Value((sfc::script::lua::Value *)v25);
      v18 = (int *)a1[1];
      v19 = *v18;
      v20 = (v18[1] - *v18) >> 4;
      v21 = -1227133513 * v20 - 1;
      if ( !(-1227133513 * v20) )
      {
        v24 = -1227133513 * v20 - 1;
        __ZSt24__stl_throw_out_of_rangePKc_veneer("vector");
        v19 = *v18;
        v21 = v24;
      }
      v22 = v15++;
      sfc::script::lua::Value::_setFromStack(v19 + 112 * v21, a2, v22);
    }
    lua_settop(a2, ~v16);
  }
  else
  {
    v8 = 1;
    while ( 1 )
    {
      sfc::script::lua::Value::Value((sfc::script::lua::Value *)v26);
      std::vector<sfc::script::lua::Value>::push_back(v7, (const sfc::script::lua::Value *)v26);
      sfc::script::lua::Value::~Value((sfc::script::lua::Value *)v26);
      v9 = (int *)a1[1];
      v10 = *v9;
      v11 = (v9[1] - *v9) >> 4;
      v12 = -1227133513 * v11 - 1;
      if ( !(-1227133513 * v11) )
      {
        v23 = (int *)a1[1];
        __ZSt24__stl_throw_out_of_rangePKc_veneer("vector");
        v10 = *v23;
      }
      v13 = -10002 - v8++;
      sfc::script::lua::Value::_setFromStack(v10 + 112 * v12, a2, v13);
      if ( a3 < v8 )
        break;
      v7 = (void **)a1[1];
    }
  }
  return a1;
}


// ===== 3198e0 sfc::script::lua::Arguments::Arguments(lua_State *,int) =====
_DWORD *__fastcall sfc::script::lua::Arguments::Arguments(_DWORD *a1, int a2, int a3)
{
  sfc::script::lua::Value *v4; // r0
  void **v7; // r11
  int v8; // r4
  int *v9; // r3
  int v10; // r0
  int v11; // r2
  int v12; // r11
  int v13; // r2
  int v15; // r8
  int v16; // r5
  void **v17; // r11
  int *v18; // r11
  int v19; // r0
  int v20; // r2
  int v21; // r3
  int v22; // r2
  int *v23; // [sp+4h] [bp-F8h]
  int v24; // [sp+4h] [bp-F8h]
  _BYTE v25[112]; // [sp+14h] [bp-E8h] BYREF
  _BYTE v26[112]; // [sp+84h] [bp-78h] BYREF
  sfc::script::lua::Value *v27; // [sp+F4h] [bp-8h]

  v4 = (sfc::script::lua::Value *)_stack_chk_guard;
  *a1 = off_95B100;
  v27 = v4;
  v7 = (void **)sfc::script::lua::Value::allocValueList(v4);
  a1[1] = v7;
  if ( a3 <= 0 )
  {
    v15 = 1 - a3;
    v16 = lua_gettop(a2);
    while ( v16 >= v15 )
    {
      v17 = (void **)a1[1];
      sfc::script::lua::Value::Value((sfc::script::lua::Value *)v25);
      std::vector<sfc::script::lua::Value>::push_back(v17, (const sfc::script::lua::Value *)v25);
      sfc::script::lua::Value::~Value((sfc::script::lua::Value *)v25);
      v18 = (int *)a1[1];
      v19 = *v18;
      v20 = (v18[1] - *v18) >> 4;
      v21 = -1227133513 * v20 - 1;
      if ( !(-1227133513 * v20) )
      {
        v24 = -1227133513 * v20 - 1;
        __ZSt24__stl_throw_out_of_rangePKc_veneer("vector");
        v19 = *v18;
        v21 = v24;
      }
      v22 = v15++;
      sfc::script::lua::Value::_setFromStack(v19 + 112 * v21, a2, v22);
    }
    lua_settop(a2, ~v16);
  }
  else
  {
    v8 = 1;
    while ( 1 )
    {
      sfc::script::lua::Value::Value((sfc::script::lua::Value *)v26);
      std::vector<sfc::script::lua::Value>::push_back(v7, (const sfc::script::lua::Value *)v26);
      sfc::script::lua::Value::~Value((sfc::script::lua::Value *)v26);
      v9 = (int *)a1[1];
      v10 = *v9;
      v11 = (v9[1] - *v9) >> 4;
      v12 = -1227133513 * v11 - 1;
      if ( !(-1227133513 * v11) )
      {
        v23 = (int *)a1[1];
        __ZSt24__stl_throw_out_of_rangePKc_veneer("vector");
        v10 = *v23;
      }
      v13 = -10002 - v8++;
      sfc::script::lua::Value::_setFromStack(v10 + 112 * v12, a2, v13);
      if ( a3 < v8 )
        break;
      v7 = (void **)a1[1];
    }
  }
  return a1;
}


// ===== 319ad4 `global constructor keyed to'.._.._sources_Utils_sfc_script_lua_Binder.cpp =====
void `global constructor keyed to'.._.._sources_Utils_sfc_script_lua_Binder.cpp()
{
  dword_99F970 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_99F96C = 1056964608;
}


// ===== 319af4 sfc::script::lua::Binder::bindMethod(char const*,void (*)(sfc::script::lua::Arguments const&,sfc::script::lua::ReturnValues &,void *)) =====
int __fastcall sfc::script::lua::Binder::bindMethod(
        int this,
        const char *a2,
        void (*a3)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *))
{
  int v3; // r4

  v3 = this;
  if ( *(_DWORD *)(this + 8) )
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
          "funcName",
          "..\\..\\project_vs2005\\Game/..\\..\\sources\\Utils\\sfc\\script\\lua\\Binder.cpp",
          139);
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
          "callback",
          "..\\..\\project_vs2005\\Game/..\\..\\sources\\Utils\\sfc\\script\\lua\\Binder.cpp",
          140);
      }
    }
    lua_pushstring(*(_DWORD *)(v3 + 8), a2);
    lua_pushlightuserdata(*(_DWORD *)(v3 + 8), a3);
    lua_pushcclosure(*(_DWORD *)(v3 + 8), sfc::script::lua::Binder::__smethodCallback, 1);
    return lua_settable(*(_DWORD *)(v3 + 8), -3);
  }
  return this;
}


// ===== 319c44 sfc::script::lua::Binder::_bindMethod(char const*,void *,void *) =====
int __fastcall sfc::script::lua::Binder::_bindMethod(
        sfc::script::lua::Binder *this,
        const char *a2,
        void *a3,
        void *a4)
{
  lua_pushstring(*((_DWORD *)this + 2), a2);
  lua_pushlightuserdata(*((_DWORD *)this + 2), a3);
  lua_pushlightuserdata(*((_DWORD *)this + 2), a4);
  lua_pushcclosure(*((_DWORD *)this + 2), sfc::script::lua::Binder::__methodCallback, 2);
  return lua_settable(*((_DWORD *)this + 2), -3);
}


// ===== 319ca8 sfc::script::lua::Binder::__methodCallback(lua_State *) =====
int __fastcall sfc::script::lua::Binder::__methodCallback(int a1)
{
  int v2; // r9
  sfc::script::lua::Value **v3; // r7
  sfc::script::lua::Value *v4; // r0
  char *Pointer; // r0
  sfc::script::lua::Value **v6; // r7
  sfc::script::lua::Value *v7; // r0
  int v8; // r0
  int v9; // r3
  void (__fastcall *v10)(int, _DWORD *, _BYTE *, int); // r10
  int v11; // r7
  int v12; // r12
  int v13; // r5
  int v15; // [sp+8h] [bp-54h]
  char *v16; // [sp+14h] [bp-48h]
  int v17; // [sp+1Ch] [bp-40h] BYREF
  int v18; // [sp+20h] [bp-3Ch]
  _DWORD v19[2]; // [sp+24h] [bp-38h] BYREF
  _BYTE v20[40]; // [sp+2Ch] [bp-30h] BYREF

  if ( lua_type(a1, 1) != 5 )
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
        "(lua_type(ls, (1)) == 5)",
        "..\\..\\project_vs2005\\Game/..\\..\\sources\\Utils\\sfc\\script\\lua\\Binder.cpp",
        72);
    }
  }
  lua_getfield(a1, 1, "_this");
  v2 = lua_touserdata(a1, -1);
  lua_settop(a1, -2);
  sfc::script::lua::Arguments::Arguments(v19, a1, -1);
  sfc::script::lua::Arguments::Arguments(&v17, a1, 2);
  sfc::script::lua::ReturnValues::ReturnValues((sfc::script::lua::ReturnValues *)v20);
  v3 = (sfc::script::lua::Value **)v18;
  v4 = *(sfc::script::lua::Value **)v18;
  if ( !(1227133513 * ((*(_DWORD *)(v18 + 4) - *(_DWORD *)v18) >> 4)) )
  {
    __ZSt24__stl_throw_out_of_rangePKc_veneer("vector");
    v4 = *v3;
  }
  Pointer = (char *)sfc::script::lua::Value::getPointer(v4);
  v6 = (sfc::script::lua::Value **)v18;
  v16 = Pointer;
  v7 = *(sfc::script::lua::Value **)v18;
  if ( (unsigned int)(-1227133513 * ((*(_DWORD *)(v18 + 4) - *(_DWORD *)v18) >> 4)) <= 1 )
  {
    __ZSt24__stl_throw_out_of_rangePKc_veneer("vector");
    v7 = *v6;
  }
  v8 = sfc::script::lua::Value::getPointer((sfc::script::lua::Value *)((char *)v7 + 112));
  v10 = (void (__fastcall *)(int, _DWORD *, _BYTE *, int))v16;
  v11 = v8;
  if ( v16 )
  {
    v12 = v8 & 1;
  }
  else if ( (v8 & 1) != 0 )
  {
    v12 = 1;
  }
  else
  {
    v9 = gAssertLevel;
    if ( gAssertLevel == 2 )
    {
      dword_0 = 0;
      v12 = 0;
    }
    else
    {
      if ( gAssertLevel == 1 )
        v8 = fprintf(
               (FILE *)&_sF + 2,
               "ASSERT(%s) FAILED: %s:%d\n",
               "callback.method",
               "..\\..\\project_vs2005\\Game/..\\..\\sources\\Utils\\sfc\\script\\lua\\Binder.cpp",
               86);
      v12 = 0;
    }
  }
  if ( !v2 )
  {
    v9 = gAssertLevel;
    if ( gAssertLevel == 2 )
    {
      dword_0 = 0;
    }
    else if ( gAssertLevel == 1 )
    {
      v15 = v12;
      v8 = fprintf(
             (FILE *)&_sF + 2,
             "ASSERT(%s) FAILED: %s:%d\n",
             "_this",
             "..\\..\\project_vs2005\\Game/..\\..\\sources\\Utils\\sfc\\script\\lua\\Binder.cpp",
             87);
      v12 = v15;
    }
  }
  if ( v12 )
    v9 = *(_DWORD *)(v2 + (v11 >> 1));
  else
    v8 = v2 + (v11 >> 1);
  if ( v12 )
  {
    v8 = v2 + (v11 >> 1);
    v10 = *(void (__fastcall **)(int, _DWORD *, _BYTE *, int))&v16[v9];
  }
  v10(v8, v19, v20, v9);
  v13 = sfc::script::lua::ReturnValues::_doReturn(v20, a1);
  sfc::script::lua::ReturnValues::~ReturnValues((sfc::script::lua::ReturnValues *)v20);
  sfc::script::lua::Arguments::~Arguments((sfc::script::lua::Arguments *)&v17);
  sfc::script::lua::Arguments::~Arguments((sfc::script::lua::Arguments *)v19);
  return v13;
}


// ===== 319fd0 sfc::script::lua::Binder::__smethodCallback(lua_State *) =====
int __fastcall sfc::script::lua::Binder::__smethodCallback(int a1)
{
  int v2; // r8
  sfc::script::lua::Value **v3; // r11
  sfc::script::lua::Value *v4; // r0
  void (__fastcall *Pointer)(_DWORD *, _BYTE *, int); // r11
  int v6; // r5
  int v8; // [sp+Ch] [bp-40h] BYREF
  int v9; // [sp+10h] [bp-3Ch]
  _DWORD v10[2]; // [sp+14h] [bp-38h] BYREF
  _BYTE v11[40]; // [sp+1Ch] [bp-30h] BYREF

  if ( lua_type(a1, 1) != 5 )
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
        "(lua_type(ls, (1)) == 5)",
        "..\\..\\project_vs2005\\Game/..\\..\\sources\\Utils\\sfc\\script\\lua\\Binder.cpp",
        46);
    }
  }
  lua_getfield(a1, 1, "_this");
  v2 = lua_touserdata(a1, -1);
  lua_settop(a1, -2);
  sfc::script::lua::Arguments::Arguments(v10, a1, -1);
  sfc::script::lua::Arguments::Arguments(&v8, a1, 1);
  sfc::script::lua::ReturnValues::ReturnValues((sfc::script::lua::ReturnValues *)v11);
  v3 = (sfc::script::lua::Value **)v9;
  v4 = *(sfc::script::lua::Value **)v9;
  if ( !(1227133513 * ((*(_DWORD *)(v9 + 4) - *(_DWORD *)v9) >> 4)) )
  {
    __ZSt24__stl_throw_out_of_rangePKc_veneer("vector");
    v4 = *v3;
  }
  Pointer = (void (__fastcall *)(_DWORD *, _BYTE *, int))sfc::script::lua::Value::getPointer(v4);
  if ( !Pointer )
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
        "callback",
        "..\\..\\project_vs2005\\Game/..\\..\\sources\\Utils\\sfc\\script\\lua\\Binder.cpp",
        57);
    }
  }
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
        "_this",
        "..\\..\\project_vs2005\\Game/..\\..\\sources\\Utils\\sfc\\script\\lua\\Binder.cpp",
        58);
    }
  }
  Pointer(v10, v11, v2);
  v6 = sfc::script::lua::ReturnValues::_doReturn(v11, a1);
  sfc::script::lua::ReturnValues::~ReturnValues((sfc::script::lua::ReturnValues *)v11);
  sfc::script::lua::Arguments::~Arguments((sfc::script::lua::Arguments *)&v8);
  sfc::script::lua::Arguments::~Arguments((sfc::script::lua::Arguments *)v10);
  return v6;
}


// ===== 31a250 sfc::script::lua::Binder::__functionCallback(lua_State *) =====
int __fastcall sfc::script::lua::Binder::__functionCallback(int a1)
{
  sfc::script::lua::Value **v2; // r8
  sfc::script::lua::Value *v3; // r0
  void (__fastcall *Pointer)(_DWORD *, _BYTE *, int); // r0
  sfc::script::lua::Value **v5; // r11
  void (__fastcall *v6)(_DWORD *, _BYTE *, int); // r8
  sfc::script::lua::Value *v7; // r0
  int v8; // r11
  int v9; // r7
  int v11; // [sp+Ch] [bp-40h] BYREF
  int v12; // [sp+10h] [bp-3Ch]
  _DWORD v13[2]; // [sp+14h] [bp-38h] BYREF
  _BYTE v14[40]; // [sp+1Ch] [bp-30h] BYREF

  sfc::script::lua::Arguments::Arguments(v13, a1, 0);
  sfc::script::lua::Arguments::Arguments(&v11, a1, 2);
  sfc::script::lua::ReturnValues::ReturnValues((sfc::script::lua::ReturnValues *)v14);
  v2 = (sfc::script::lua::Value **)v12;
  v3 = *(sfc::script::lua::Value **)v12;
  if ( !(1227133513 * ((*(_DWORD *)(v12 + 4) - *(_DWORD *)v12) >> 4)) )
  {
    __ZSt24__stl_throw_out_of_rangePKc_veneer("vector");
    v3 = *v2;
  }
  Pointer = (void (__fastcall *)(_DWORD *, _BYTE *, int))sfc::script::lua::Value::getPointer(v3);
  v5 = (sfc::script::lua::Value **)v12;
  v6 = Pointer;
  v7 = *(sfc::script::lua::Value **)v12;
  if ( (unsigned int)(-1227133513 * ((*(_DWORD *)(v12 + 4) - *(_DWORD *)v12) >> 4)) <= 1 )
  {
    __ZSt24__stl_throw_out_of_rangePKc_veneer("vector");
    v7 = *v5;
  }
  v8 = sfc::script::lua::Value::getPointer((sfc::script::lua::Value *)((char *)v7 + 112));
  if ( !v6 )
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
        "callback",
        "..\\..\\project_vs2005\\Game/..\\..\\sources\\Utils\\sfc\\script\\lua\\Binder.cpp",
        32);
    }
  }
  v6(v13, v14, v8);
  v9 = sfc::script::lua::ReturnValues::_doReturn(v14, a1);
  sfc::script::lua::ReturnValues::~ReturnValues((sfc::script::lua::ReturnValues *)v14);
  sfc::script::lua::Arguments::~Arguments((sfc::script::lua::Arguments *)&v11);
  sfc::script::lua::Arguments::~Arguments((sfc::script::lua::Arguments *)v13);
  return v9;
}


// ===== 31a414 sfc::script::lua::Value::Value(void *) =====
sfc::script::lua::Value *__fastcall sfc::script::lua::Value::Value(sfc::script::lua::Value *this, void *a2)
{
  *(_DWORD *)this = off_95B0F0;
  *((_DWORD *)this + 8) = (char *)this + 12;
  *((_DWORD *)this + 26) = (char *)this + 36;
  *((_DWORD *)this + 9) = 0;
  *((_DWORD *)this + 7) = (char *)this + 12;
  *((_BYTE *)this + 12) = 0;
  *((_DWORD *)this + 25) = (char *)this + 36;
  sfc::script::lua::Value::setPointer(this, a2);
  return this;
}


// ===== 31a46c sfc::script::lua::Arguments::pushPointer(void *) =====
void __fastcall sfc::script::lua::Arguments::pushPointer(sfc::script::lua::Arguments *this, void *a2)
{
  void **v2; // r6
  _BYTE v3[112]; // [sp+4h] [bp-74h] BYREF

  v2 = *((void ***)this + 1);
  sfc::script::lua::Value::Value((sfc::script::lua::Value *)v3, a2);
  std::vector<sfc::script::lua::Value>::push_back(v2, (const sfc::script::lua::Value *)v3);
  sfc::script::lua::Value::~Value((sfc::script::lua::Value *)v3);
}


// ===== 31a4d4 sfc::script::lua::Binder::bindFunction(char const*,void (*)(sfc::script::lua::Arguments const&,sfc::script::lua::ReturnValues &,void *),void *) =====
void __fastcall sfc::script::lua::Binder::bindFunction(
        sfc::script::lua::Binder *this,
        const char *a2,
        void (*a3)(const sfc::script::lua::Arguments *, sfc::script::lua::ReturnValues *, void *),
        void *a4)
{
  _BYTE v8[12]; // [sp+8h] [bp-Ch] BYREF

  if ( *((_DWORD *)this + 1) )
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
          "funcName",
          "..\\..\\project_vs2005\\Game/..\\..\\sources\\Utils\\sfc\\script\\lua\\Binder.cpp",
          121);
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
          "callback",
          "..\\..\\project_vs2005\\Game/..\\..\\sources\\Utils\\sfc\\script\\lua\\Binder.cpp",
          122);
      }
    }
    sfc::script::lua::Arguments::Arguments((sfc::script::lua::Arguments *)v8);
    sfc::script::lua::Arguments::pushPointer((sfc::script::lua::Arguments *)v8, a3);
    sfc::script::lua::Arguments::pushPointer((sfc::script::lua::Arguments *)v8, a4);
    sfc::script::lua::Instance::registerFunction(
      *((_DWORD *)this + 1),
      a2,
      sfc::script::lua::Binder::__functionCallback,
      v8);
    sfc::script::lua::Arguments::~Arguments((sfc::script::lua::Arguments *)v8);
  }
}


// ===== 31a62c `global constructor keyed to'.._.._sources_Utils_sfc_script_lua_Error.cpp =====
void `global constructor keyed to'.._.._sources_Utils_sfc_script_lua_Error.cpp()
{
  dword_99F97C = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_99F978 = 1056964608;
}


// ===== 31a64c std::allocator<char>::_M_allocate(uint,uint &) =====
void *__fastcall std::allocator<char>::_M_allocate(int a1, size_t a2, size_t *a3)
{
  void *result; // r0
  size_t __n; // [sp+4h] [bp-4h] BYREF

  result = (void *)a2;
  if ( a2 )
  {
    __n = a2;
    if ( a2 > 0x80 )
      result = CustomAlloc(a2);
    else
      result = __ZNSt12__node_alloc11_M_allocateERj_veneer(&__n);
    *a3 = __n;
  }
  return result;
}


// ===== 31a68c sfc::script::lua::Error::~Error() =====
void __fastcall sfc::script::lua::Error::~Error(sfc::script::lua::Error *this)
{
  *(_DWORD *)this = off_95B110;
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block((std::priv::_String_base<char,std::allocator<char> > *const)((char *)this + 8));
}


// ===== 31a6c0 sfc::script::lua::Error::~Error() =====
void __fastcall sfc::script::lua::Error::~Error(sfc::script::lua::Error *this)
{
  *(_DWORD *)this = off_95B110;
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block((std::priv::_String_base<char,std::allocator<char> > *const)((char *)this + 8));
}


// ===== 31a6f4 sfc::script::lua::Error::~Error() =====
void __fastcall sfc::script::lua::Error::~Error(sfc::script::lua::Error *this)
{
  sfc::script::lua::Error::~Error(this);
  CustomFree(this);
}


// ===== 31a710 std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block(uint) [clone] =====
void std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block()
{
  ;
}


// ===== 31a714 sfc::script::lua::Error::Error(sfc::script::lua::Error const&) =====
sfc::script::lua::Error *__fastcall sfc::script::lua::Error::Error(
        sfc::script::lua::Error *this,
        const sfc::script::lua::Error *a2)
{
  std::string *v3; // r5

  *(_DWORD *)this = off_95B110;
  v3 = (std::string *)((char *)this + 8);
  *((_DWORD *)this + 6) = (char *)this + 8;
  *((_DWORD *)this + 7) = (char *)this + 8;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block();
  **((_BYTE **)this + 6) = 0;
  *((_DWORD *)this + 1) = *((_DWORD *)a2 + 1);
  if ( v3 != (std::string *)((char *)a2 + 8) )
    std::string::_M_assign(v3, *((const char **)a2 + 7), *((const char **)a2 + 6));
  return this;
}


// ===== 31a78c sfc::script::lua::Error::Error(sfc::script::lua::Error const&) =====
sfc::script::lua::Error *__fastcall sfc::script::lua::Error::Error(
        sfc::script::lua::Error *this,
        const sfc::script::lua::Error *a2)
{
  std::string *v3; // r5

  *(_DWORD *)this = off_95B110;
  v3 = (std::string *)((char *)this + 8);
  *((_DWORD *)this + 6) = (char *)this + 8;
  *((_DWORD *)this + 7) = (char *)this + 8;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block();
  **((_BYTE **)this + 6) = 0;
  *((_DWORD *)this + 1) = *((_DWORD *)a2 + 1);
  if ( v3 != (std::string *)((char *)a2 + 8) )
    std::string::_M_assign(v3, *((const char **)a2 + 7), *((const char **)a2 + 6));
  return this;
}


// ===== 31a804 sfc::script::lua::Error::Error(void) =====
sfc::script::lua::Error *__fastcall sfc::script::lua::Error::Error(sfc::script::lua::Error *this)
{
  *(_DWORD *)this = off_95B110;
  *((_DWORD *)this + 6) = (char *)this + 8;
  *((_DWORD *)this + 7) = (char *)this + 8;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block();
  **((_BYTE **)this + 6) = 0;
  *((_DWORD *)this + 1) = 0;
  return this;
}


// ===== 31a858 sfc::script::lua::Error::Error(void) =====
sfc::script::lua::Error *__fastcall sfc::script::lua::Error::Error(sfc::script::lua::Error *this)
{
  *(_DWORD *)this = off_95B110;
  *((_DWORD *)this + 6) = (char *)this + 8;
  *((_DWORD *)this + 7) = (char *)this + 8;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block();
  **((_BYTE **)this + 6) = 0;
  *((_DWORD *)this + 1) = 0;
  return this;
}


// ===== 31a8ac sfc::script::lua::Error::setError(lua_State *,int) =====
std::string *__fastcall sfc::script::lua::Error::setError(int a1, int a2, int a3)
{
  const char *v6; // r6
  size_t v7; // r0

  *(_DWORD *)(a1 + 4) = a3;
  if ( !a3 )
    return std::string::_M_assign((std::string *const)(a1 + 8), "", "");
  v6 = (const char *)lua_tolstring(a2, -1, 0);
  v7 = LC_API_STRLEN_0(v6);
  std::string::_M_assign((std::string *const)(a1 + 8), v6, &v6[v7]);
  return (std::string *)lua_settop(a2, -2);
}


// ===== 31a918 sfc::script::lua::Error::Error(lua_State *,int) =====
_DWORD *__fastcall sfc::script::lua::Error::Error(_DWORD *a1, int a2, int a3)
{
  *a1 = off_95B110;
  a1[6] = a1 + 2;
  a1[7] = a1 + 2;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block();
  *(_BYTE *)a1[6] = 0;
  sfc::script::lua::Error::setError((int)a1, a2, a3);
  return a1;
}


// ===== 31a980 sfc::script::lua::Error::Error(lua_State *,int) =====
_DWORD *__fastcall sfc::script::lua::Error::Error(_DWORD *a1, int a2, int a3)
{
  *a1 = off_95B110;
  a1[6] = a1 + 2;
  a1[7] = a1 + 2;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block();
  *(_BYTE *)a1[6] = 0;
  sfc::script::lua::Error::setError((int)a1, a2, a3);
  return a1;
}


// ===== 31a9e8 sfc::script::lua::panic(lua_State *) =====
int sfc::script::lua::panic()
{
  return 0;
}


// ===== 31a9f0 sfc::script::lua::Instance::Instance(lua_State *) =====
int __fastcall sfc::script::lua::Instance::Instance(int result, int a2)
{
  *(_DWORD *)(result + 4) = a2;
  *(_BYTE *)(result + 8) = 0;
  *(_DWORD *)result = off_95B120;
  return result;
}


// ===== 31aa20 sfc::script::lua::Instance::Instance(lua_State *) =====
int __fastcall sfc::script::lua::Instance::Instance(int result, int a2)
{
  *(_DWORD *)(result + 4) = a2;
  *(_BYTE *)(result + 8) = 0;
  *(_DWORD *)result = off_95B120;
  return result;
}


// ===== 31aa50 sfc::script::lua::Instance::includeIO(void) =====
void __fastcall sfc::script::lua::Instance::includeIO(sfc::script::lua::Instance *this)
{
  ;
}


// ===== 31aa54 sfc::script::lua::Instance::includePackage(void) =====
void __fastcall sfc::script::lua::Instance::includePackage(sfc::script::lua::Instance *this)
{
  ;
}


// ===== 31aa58 `global constructor keyed to'.._.._sources_Utils_sfc_script_lua_Instance.cpp =====
void `global constructor keyed to'.._.._sources_Utils_sfc_script_lua_Instance.cpp()
{
  dword_99F988 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_99F984 = 1056964608;
}


// ===== 31aa78 sfc::script::lua::Instance::pCall_(uint,sfc::script::lua::ReturnValues &) =====
std::string *__fastcall sfc::script::lua::Instance::pCall_(
        sfc::script::lua::Instance *this,
        unsigned int a2,
        sfc::script::lua::ReturnValues *a3)
{
  int v6; // r0
  int v7; // r6
  int v8; // r8
  int v9; // r0
  std::string *result; // r0
  signed int v11; // r7
  int v12; // r6

  v6 = lua_gettop(*((_DWORD *)this + 1));
  v7 = *((_DWORD *)this + 1);
  v8 = v6;
  v9 = lua_pcall(v7, a2, -1, 0);
  result = sfc::script::lua::Error::setError((int)a3 + 4, v7, v9);
  if ( !*((_DWORD *)a3 + 2) )
  {
    v11 = 1 - (v8 - a2) + lua_gettop(*((_DWORD *)this + 1));
    if ( v11 > 0 )
    {
      v12 = -v11;
      do
        sfc::script::lua::ReturnValues::_addFromStack(a3, *((_DWORD *)this + 1), v12++);
      while ( v12 );
    }
    return (std::string *)lua_settop(*((_DWORD *)this + 1), ~v11);
  }
  return result;
}


// ===== 31ab14 sfc::script::lua::Instance::pCall(char const*,sfc::script::lua::ReturnValues &) =====
std::string *__fastcall sfc::script::lua::Instance::pCall(
        sfc::script::lua::Instance *this,
        const char *a2,
        sfc::script::lua::ReturnValues *a3)
{
  lua_getfield(*((_DWORD *)this + 1), -10002, a2);
  return sfc::script::lua::Instance::pCall_(this, 0, a3);
}


// ===== 31ab4c sfc::script::lua::Instance::pCall(sfc::script::lua::Arguments const&,sfc::script::lua::ReturnValues &) =====
std::string *__fastcall sfc::script::lua::Instance::pCall(
        sfc::script::lua::Instance *this,
        const sfc::script::lua::Arguments *a2,
        sfc::script::lua::ReturnValues *a3)
{
  int *v3; // r3
  int v6; // r0
  unsigned int v8; // r1
  int v9; // r6
  unsigned int v10; // r7
  int *v11; // r2

  v3 = *((int **)a2 + 1);
  v6 = *v3;
  v8 = -1227133513 * ((v3[1] - *v3) >> 4);
  if ( v8 )
  {
    v9 = 0;
    v10 = 0;
    do
    {
      sfc::script::lua::Value::_pushOnStack(v6 + v9, *((_DWORD *)this + 1));
      v11 = *((int **)a2 + 1);
      ++v10;
      v9 += 112;
      v6 = *v11;
      v8 = -1227133513 * ((v11[1] - *v11) >> 4);
    }
    while ( v10 < v8 );
  }
  return sfc::script::lua::Instance::pCall_(this, v8, a3);
}


// ===== 31abe8 sfc::script::lua::Instance::pCall(char const*,sfc::script::lua::Arguments const&,sfc::script::lua::ReturnValues &) =====
std::string *__fastcall sfc::script::lua::Instance::pCall(
        sfc::script::lua::Instance *this,
        const char *a2,
        const sfc::script::lua::Arguments *a3,
        sfc::script::lua::ReturnValues *a4)
{
  lua_getfield(*((_DWORD *)this + 1), -10002, a2);
  return sfc::script::lua::Instance::pCall(this, a3, a4);
}


// ===== 31ac24 sfc::script::lua::Instance::execFile(IFileStream &,sfc::script::lua::ReturnValues &) =====
std::string *__fastcall sfc::script::lua::Instance::execFile(
        sfc::script::lua::Instance *this,
        IFileStream *a2,
        sfc::script::lua::ReturnValues *a3)
{
  int v3; // r7
  int v6; // r0
  std::string *result; // r0
  _DWORD v8[5]; // [sp+0h] [bp-418h] BYREF
  int v9; // [sp+14h] [bp-404h] BYREF

  v3 = *((_DWORD *)this + 1);
  v8[1] = a2;
  v8[2] = 0;
  v8[3] = &v9;
  v8[4] = 1024;
  v8[0] = this;
  v6 = ((int (__fastcall *)(int, int (*)(), _DWORD *, const char *))lua_load)(
         v3,
         sfc::script::lua::Instance::_chunkReader,
         v8,
         "loadFile()");
  result = sfc::script::lua::Error::setError((int)a3 + 4, v3, v6);
  if ( !*((_DWORD *)a3 + 2) )
    return sfc::script::lua::Instance::pCall_(this, 0, a3);
  return result;
}


// ===== 31acf4 sfc::script::lua::Instance::loadFile(StreamBuffer &) =====
sfc::script::lua::Instance *__fastcall sfc::script::lua::Instance::loadFile(
        sfc::script::lua::Instance *this,
        StreamBuffer *a2,
        int a3)
{
  int v6; // r7
  int v7; // r0
  int v8; // r6
  int v9; // r0
  _DWORD v11[5]; // [sp+0h] [bp-41Ch] BYREF
  int v12; // [sp+14h] [bp-408h] BYREF

  sfc::script::lua::Error::Error(this);
  v6 = *((_DWORD *)a2 + 1);
  v11[1] = 0;
  v11[3] = &v12;
  v11[4] = 1024;
  v11[2] = a3;
  v11[0] = a2;
  v7 = ((int (__fastcall *)(int, int (*)(), _DWORD *, const char *))lua_load)(
         v6,
         sfc::script::lua::Instance::_chunkReader,
         v11,
         "loadFile()");
  sfc::script::lua::Error::setError((int)this, v6, v7);
  if ( !*((_DWORD *)this + 1) )
  {
    v8 = *((_DWORD *)a2 + 1);
    v9 = lua_pcall(v8, 0, 0, 0);
    sfc::script::lua::Error::setError((int)this, v8, v9);
  }
  return this;
}


// ===== 31ade8 sfc::script::lua::Instance::loadFile(IFileStream &) =====
sfc::script::lua::Instance *__fastcall sfc::script::lua::Instance::loadFile(
        sfc::script::lua::Instance *this,
        IFileStream *a2,
        int a3)
{
  int v6; // r7
  int v7; // r0
  int v8; // r6
  int v9; // r0
  _DWORD v11[5]; // [sp+0h] [bp-41Ch] BYREF
  int v12; // [sp+14h] [bp-408h] BYREF

  sfc::script::lua::Error::Error(this);
  v6 = *((_DWORD *)a2 + 1);
  v11[2] = 0;
  v11[3] = &v12;
  v11[4] = 1024;
  v11[0] = a2;
  v11[1] = a3;
  v7 = ((int (__fastcall *)(int, int (*)(), _DWORD *, const char *))lua_load)(
         v6,
         sfc::script::lua::Instance::_chunkReader,
         v11,
         "loadFile()");
  sfc::script::lua::Error::setError((int)this, v6, v7);
  if ( !*((_DWORD *)this + 1) )
  {
    v8 = *((_DWORD *)a2 + 1);
    v9 = lua_pcall(v8, 0, 0, 0);
    sfc::script::lua::Error::setError((int)this, v8, v9);
  }
  return this;
}


// ===== 31aed8 sfc::script::lua::Instance::setGlobal(char const*,sfc::script::lua::Value const&) =====
int __fastcall sfc::script::lua::Instance::setGlobal(
        sfc::script::lua::Instance *this,
        const char *a2,
        const sfc::script::lua::Value *a3)
{
  sfc::script::lua::Value::_pushOnStack(a3, *((_DWORD *)this + 1));
  return lua_setfield(*((_DWORD *)this + 1), -10002, a2);
}


// ===== 31af08 sfc::script::lua::Instance::registerFunction(char const*,int (*)(lua_State *),sfc::script::lua::Arguments const&) =====
int __fastcall sfc::script::lua::Instance::registerFunction(int a1, int a2, int a3, int a4)
{
  int *v5; // r3
  int v8; // r0
  unsigned int v10; // r2
  int v11; // r7
  unsigned int v12; // r8
  int *v13; // r1

  v5 = *(int **)(a4 + 4);
  v8 = *v5;
  v10 = -1227133513 * ((v5[1] - *v5) >> 4);
  if ( v10 )
  {
    v11 = 0;
    v12 = 0;
    do
    {
      sfc::script::lua::Value::_pushOnStack(v8 + v11, *(_DWORD *)(a1 + 4));
      v13 = *(int **)(a4 + 4);
      ++v12;
      v11 += 112;
      v8 = *v13;
      v10 = -1227133513 * ((v13[1] - *v13) >> 4);
    }
    while ( v12 < v10 );
  }
  lua_pushcclosure(*(_DWORD *)(a1 + 4), a3, v10);
  return lua_setfield(*(_DWORD *)(a1 + 4), -10002, a2);
}


// ===== 31afbc sfc::script::lua::Instance::registerFunction(char const*,int (*)(lua_State *)) =====
int __fastcall sfc::script::lua::Instance::registerFunction(int a1, int a2, int a3)
{
  lua_pushcclosure(*(_DWORD *)(a1 + 4), a3, 0);
  return lua_setfield(*(_DWORD *)(a1 + 4), -10002, a2);
}


// ===== 31aff0 sfc::script::lua::Instance::includeDebug(void) =====
int __fastcall sfc::script::lua::Instance::includeDebug(sfc::script::lua::Instance *this)
{
  return luaopen_debug(*((_DWORD *)this + 1));
}


// ===== 31aff8 sfc::script::lua::Instance::includeTable(void) =====
int __fastcall sfc::script::lua::Instance::includeTable(sfc::script::lua::Instance *this)
{
  return luaopen_table(*((_DWORD *)this + 1));
}


// ===== 31b000 sfc::script::lua::Instance::includeMath(void) =====
int __fastcall sfc::script::lua::Instance::includeMath(sfc::script::lua::Instance *this)
{
  return luaopen_math(*((_DWORD *)this + 1));
}


// ===== 31b008 sfc::script::lua::Instance::includeString(void) =====
int __fastcall sfc::script::lua::Instance::includeString(sfc::script::lua::Instance *this)
{
  return luaopen_string(*((_DWORD *)this + 1));
}


// ===== 31b010 sfc::script::lua::Instance::includeBase(void) =====
int __fastcall sfc::script::lua::Instance::includeBase(sfc::script::lua::Instance *this)
{
  return luaopen_base(*((_DWORD *)this + 1));
}


// ===== 31b018 sfc::script::lua::Instance::_chunkReader(lua_State *,void *,uint *) =====
int __fastcall sfc::script::lua::Instance::_chunkReader(int a1, _DWORD *a2, _DWORD *a3)
{
  int v3; // r3
  int v6; // r5
  __int64 v8; // r0
  int v9; // r7
  int v10; // r1
  int v11; // r3
  __int64 v12; // r0
  int v13; // r7
  int v14; // r1

  v3 = a2[1];
  if ( v3 )
  {
    v8 = ((__int64 (__fastcall *)(int, Elf32_Dyn **))*(_DWORD *)(*(_DWORD *)v3 + 36))(v3, &__GLOBAL_OFFSET_TABLE_);
    v9 = HIDWORD(v8);
    if ( (_DWORD)v8 == (*(int (__fastcall **)(_DWORD))(*(_DWORD *)a2[1] + 8))(a2[1]) && v9 == v10 )
      return 0;
    v11 = a2[1];
LABEL_9:
    *a3 = (*(int (__fastcall **)(int, _DWORD, _DWORD, _DWORD))(*(_DWORD *)v11 + 24))(v11, a2[3], a2[4], 0);
    return a2[3];
  }
  v6 = a2[2];
  if ( v6 )
  {
    v12 = ((__int64 (__fastcall *)(_DWORD, Elf32_Dyn **))*(_DWORD *)(*(_DWORD *)v6 + 36))(
            a2[2],
            &__GLOBAL_OFFSET_TABLE_);
    v13 = HIDWORD(v12);
    if ( (_DWORD)v12 == (*(int (__fastcall **)(_DWORD))(*(_DWORD *)a2[2] + 8))(a2[2]) )
    {
      if ( v13 == v14 )
        return 0;
      v11 = a2[2];
    }
    else
    {
      v11 = a2[2];
    }
    goto LABEL_9;
  }
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
    "!\"Something is wrong!!!\"",
    "..\\..\\project_vs2005\\Game/..\\..\\sources\\Utils\\sfc\\script\\lua\\Instance.cpp",
    94);
  return 0;
}


// ===== 31b180 sfc::script::lua::Instance::~Instance() =====
void __fastcall sfc::script::lua::Instance::~Instance(sfc::script::lua::Instance *this)
{
  int v1; // r1

  v1 = *((unsigned __int8 *)this + 8);
  *(_DWORD *)this = off_95B120;
  if ( v1 )
    lua_close(*((_DWORD *)this + 1));
}


// ===== 31b1c4 sfc::script::lua::Instance::~Instance() =====
void __fastcall sfc::script::lua::Instance::~Instance(sfc::script::lua::Instance *this)
{
  sfc::script::lua::Instance::~Instance(this);
  CustomFree(this);
}


// ===== 31b1e0 sfc::script::lua::Instance::~Instance() =====
void __fastcall sfc::script::lua::Instance::~Instance(sfc::script::lua::Instance *this)
{
  int v1; // r1

  v1 = *((unsigned __int8 *)this + 8);
  *(_DWORD *)this = off_95B120;
  if ( v1 )
    lua_close(*((_DWORD *)this + 1));
}


// ===== 31b224 sfc::script::lua::newstate(void) =====
int __fastcall sfc::script::lua::newstate(sfc::script::lua *this)
{
  int v1; // r0
  int v2; // r4

  v1 = lua_newstate(LuaAllocator, 0);
  v2 = v1;
  if ( v1 )
    lua_atpanic(v1, sfc::script::lua::panic);
  return v2;
}


// ===== 31b268 sfc::script::lua::Instance::Instance(void) =====
sfc::script::lua::Instance *__fastcall sfc::script::lua::Instance::Instance(sfc::script::lua::Instance *this)
{
  *((_BYTE *)this + 8) = 1;
  *(_DWORD *)this = off_95B120;
  *((_DWORD *)this + 1) = sfc::script::lua::newstate(this);
  return this;
}


// ===== 31b2a8 sfc::script::lua::Instance::Instance(void) =====
sfc::script::lua::Instance *__fastcall sfc::script::lua::Instance::Instance(sfc::script::lua::Instance *this)
{
  *((_BYTE *)this + 8) = 1;
  *(_DWORD *)this = off_95B120;
  *((_DWORD *)this + 1) = sfc::script::lua::newstate(this);
  return this;
}


// ===== 31b2e8 `global constructor keyed to'.._.._sources_Utils_sfc_script_lua_ReturnValues.cpp =====
void `global constructor keyed to'.._.._sources_Utils_sfc_script_lua_ReturnValues.cpp()
{
  dword_99F994 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_99F990 = 1056964608;
}


// ===== 31b308 sfc::script::lua::ReturnValues::_doReturn(lua_State *) =====
unsigned int __fastcall sfc::script::lua::ReturnValues::_doReturn(int a1, int a2)
{
  int *v2; // r3
  int v5; // r2
  unsigned int result; // r0
  int v7; // r4
  unsigned int v8; // r5

  v2 = *(int **)(a1 + 36);
  v5 = *v2;
  result = -1227133513 * ((v2[1] - *v2) >> 4);
  if ( result )
  {
    v7 = 0;
    v8 = 0;
    do
    {
      sfc::script::lua::Value::_pushOnStack(v5 + v7, a2);
      ++v8;
      v7 += 112;
      v5 = **(_DWORD **)(a1 + 36);
      result = -1227133513 * ((*(_DWORD *)(*(_DWORD *)(a1 + 36) + 4) - v5) >> 4);
    }
    while ( v8 < result );
  }
  return result;
}


// ===== 31b398 sfc::script::lua::ReturnValues::~ReturnValues() =====
void __fastcall sfc::script::lua::ReturnValues::~ReturnValues(sfc::script::lua::ReturnValues *this)
{
  int v2; // r0

  v2 = *((_DWORD *)this + 9);
  *(_DWORD *)this = off_95B130;
  sfc::script::lua::Value::freeValueList(v2);
  sfc::script::lua::Error::~Error((sfc::script::lua::ReturnValues *)((char *)this + 4));
}


// ===== 31b3d8 sfc::script::lua::ReturnValues::~ReturnValues() =====
void __fastcall sfc::script::lua::ReturnValues::~ReturnValues(sfc::script::lua::ReturnValues *this)
{
  sfc::script::lua::ReturnValues::~ReturnValues(this);
  CustomFree(this);
}


// ===== 31b3f4 sfc::script::lua::ReturnValues::~ReturnValues() =====
void __fastcall sfc::script::lua::ReturnValues::~ReturnValues(sfc::script::lua::ReturnValues *this)
{
  int v2; // r0

  v2 = *((_DWORD *)this + 9);
  *(_DWORD *)this = off_95B130;
  sfc::script::lua::Value::freeValueList(v2);
  sfc::script::lua::Error::~Error((sfc::script::lua::ReturnValues *)((char *)this + 4));
}


// ===== 31b434 sfc::script::lua::ReturnValues::ReturnValues(void) =====
sfc::script::lua::ReturnValues *__fastcall sfc::script::lua::ReturnValues::ReturnValues(
        sfc::script::lua::ReturnValues *this)
{
  sfc::script::lua::Value *v2; // r0

  *(_DWORD *)this = off_95B130;
  v2 = sfc::script::lua::Error::Error((sfc::script::lua::ReturnValues *)((char *)this + 4));
  *((_DWORD *)this + 9) = sfc::script::lua::Value::allocValueList(v2);
  return this;
}


// ===== 31b470 sfc::script::lua::ReturnValues::ReturnValues(void) =====
sfc::script::lua::ReturnValues *__fastcall sfc::script::lua::ReturnValues::ReturnValues(
        sfc::script::lua::ReturnValues *this)
{
  sfc::script::lua::Value *v2; // r0

  *(_DWORD *)this = off_95B130;
  v2 = sfc::script::lua::Error::Error((sfc::script::lua::ReturnValues *)((char *)this + 4));
  *((_DWORD *)this + 9) = sfc::script::lua::Value::allocValueList(v2);
  return this;
}


// ===== 31b4ac sfc::script::lua::ReturnValues::_addFromStack(lua_State *,int) =====
int __fastcall sfc::script::lua::ReturnValues::_addFromStack(int a1, int a2, int a3)
{
  void **v3; // r8
  int *v7; // r5
  int v8; // r2
  int v9; // r3
  int v10; // r7
  _BYTE v12[112]; // [sp+4h] [bp-74h] BYREF

  v3 = *(void ***)(a1 + 36);
  sfc::script::lua::Value::Value((sfc::script::lua::Value *)v12);
  std::vector<sfc::script::lua::Value>::push_back(v3, (const sfc::script::lua::Value *)v12);
  sfc::script::lua::Value::~Value((sfc::script::lua::Value *)v12);
  v7 = *(int **)(a1 + 36);
  v8 = *v7;
  v9 = (v7[1] - *v7) >> 4;
  v10 = -1227133513 * v9 - 1;
  if ( !(-1227133513 * v9) )
  {
    __ZSt24__stl_throw_out_of_rangePKc_veneer("vector");
    v8 = *v7;
  }
  return sfc::script::lua::Value::_setFromStack(v8 + 112 * v10, a2, a3);
}


// ===== 31b57c sfc::script::lua::Binder::~Binder() =====
void __fastcall sfc::script::lua::Binder::~Binder(sfc::script::lua::Binder *this)
{
  ;
}


// ===== 31b580 sfc::script::lua::Value::getPointer(void) =====
int __fastcall sfc::script::lua::Value::getPointer(sfc::script::lua::Value *this)
{
  int v1; // r3

  v1 = *((_DWORD *)this + 1);
  if ( v1 == 2 || v1 == 7 )
    return *((_DWORD *)this + 27);
  else
    return 0;
}


// ===== 31b5a0 sfc::script::lua::Value::getUserData(void) =====
int __fastcall sfc::script::lua::Value::getUserData(sfc::script::lua::Value *this)
{
  int v1; // r3

  v1 = *((_DWORD *)this + 1);
  if ( v1 == 2 || v1 == 7 )
    return *((_DWORD *)this + 27);
  else
    return 0;
}


// ===== 31b5c0 sfc::script::lua::Value::setNil(void) =====
int __fastcall sfc::script::lua::Value::setNil(int this)
{
  *(_DWORD *)(this + 4) = 0;
  return this;
}


// ===== 31b5cc sfc::script::lua::Value::setBool(bool) =====
int __fastcall sfc::script::lua::Value::setBool(int this, int a2)
{
  int v2; // r3

  *(_DWORD *)(this + 4) = 1;
  if ( a2 )
    v2 = 1065353216;
  else
    v2 = 0;
  *(_DWORD *)(this + 8) = v2;
  return this;
}


// ===== 31b5e8 sfc::script::lua::Value::setNumber(float) =====
int __fastcall sfc::script::lua::Value::setNumber(int this, float a2)
{
  *(float *)(this + 8) = a2;
  *(_DWORD *)(this + 4) = 3;
  return this;
}


// ===== 31b5f8 sfc::script::lua::Value::setPointer(void *) =====
int __fastcall sfc::script::lua::Value::setPointer(int this, void *a2)
{
  *(_DWORD *)(this + 108) = a2;
  *(_DWORD *)(this + 4) = 2;
  return this;
}


// ===== 31b608 sfc::script::lua::Value::setUserData(sfc::script::lua::UserData *) =====
int __fastcall sfc::script::lua::Value::setUserData(int result, int a2)
{
  *(_DWORD *)(result + 108) = a2;
  *(_DWORD *)(result + 4) = 7;
  return result;
}


// ===== 31b618 std::priv::_Deque_iterator_base<std::vector<sfc::script::lua::Value,std::allocator<sfc::script::lua::Value>> *>::_M_subtract(std::priv::_Deque_iterator_base<std::vector<sfc::script::lua::Value,std::allocator<sfc::script::lua::Value>> *> const&) =====
int __fastcall std::priv::_Deque_iterator_base<std::vector<sfc::script::lua::Value> *>::_M_subtract(
        _DWORD *a1,
        _DWORD *a2)
{
  return ((*a1 - a1[1]) >> 2) + ((a2[2] - *a2) >> 2) + 32 * (((a1[3] - a2[3]) >> 2) - 1);
}


// ===== 31b65c std::priv::__find<std::priv::_Deque_iterator<std::vector<sfc::script::lua::Value,std::allocator<sfc::script::lua::Value>> *,std::_Nonconst_traits<std::vector<sfc::script::lua::Value,std::allocator<sfc::script::lua::Value>> *>>,std::vector<sfc::script::lua::Value,std::allocator<sfc::script::lua::Value>> *>(std::priv::_Deque_iterator<std::vector<sfc::script::lua::Value,std::allocator<sfc::script::lua::Value>> *,std::_Nonconst_traits<std::vector<sfc::script::lua::Value,std::allocator<sfc::script::lua::Value>> *>>,std::priv::_Deque_iterator<std::vector<sfc::script::lua::Value,std::allocator<sfc::script::lua::Value>> *,std::_Nonconst_traits<std::vector<sfc::script::lua::Value,std::allocator<sfc::script::lua::Value>> *>>,std::vector<sfc::script::lua::Value,std::allocator<sfc::script::lua::Value>> * const&,std::random_access_iterator_tag const&) =====
_DWORD *__fastcall std::priv::__find<std::priv::_Deque_iterator<std::vector<sfc::script::lua::Value> *,std::_Nonconst_traits<std::vector<sfc::script::lua::Value> *>>,std::vector<sfc::script::lua::Value> *>(
        _DWORD *a1,
        _DWORD *a2,
        _DWORD *a3,
        _DWORD *a4)
{
  _DWORD *v8; // r0
  int v9; // r1
  int v10; // r2
  int v11; // r3
  _DWORD *v12; // t0
  int v13; // r0
  _DWORD *v14; // r2
  _DWORD *v15; // r3
  _DWORD *v16; // r2
  _DWORD *v17; // r3
  _DWORD *v18; // r2
  _DWORD *v19; // r3
  _DWORD *v20; // r2
  _DWORD *v21; // r3
  _DWORD **v22; // r2
  int v23; // r1
  int v24; // r2
  int v25; // r3
  _DWORD **v27; // r2
  _DWORD **v28; // r2
  int *v29; // r2
  int v30; // r3
  int v31; // r1
  int v32; // r2
  int v33; // r3
  int v34; // r0
  int v35; // r1
  int v36; // r2
  int v37; // r3
  _DWORD *v38; // r3
  _DWORD *v39; // r2
  _DWORD *v40; // r3
  _DWORD *v41; // r2
  _DWORD **v42; // r2
  _DWORD **v43; // r2
  _DWORD v44[4]; // [sp+0h] [bp-24h] BYREF
  _DWORD v45[5]; // [sp+10h] [bp-14h] BYREF

  v8 = (_DWORD *)*a2;
  v12 = a2 + 1;
  v9 = a2[1];
  v10 = *++v12;
  v11 = v12[1];
  v45[0] = v8;
  v45[1] = v9;
  v45[2] = v10;
  v45[3] = v11;
  v13 = std::priv::_Deque_iterator_base<std::vector<sfc::script::lua::Value> *>::_M_subtract(a3, v45) >> 2;
  if ( v13 > 0 )
  {
    while ( *(_DWORD *)*a2 != *a4 )
    {
      v20 = (_DWORD *)a2[2];
      v21 = (_DWORD *)(*a2 + 4);
      *a2 = v21;
      if ( v21 == v20 )
      {
        v22 = (_DWORD **)(a2[3] + 4);
        a2[3] = v22;
        v21 = *v22;
        a2[2] = *v22 + 32;
        a2[1] = v21;
        *a2 = v21;
        if ( *v21 == *a4 )
          goto LABEL_15;
      }
      else if ( *v21 == *a4 )
      {
        goto LABEL_15;
      }
      v14 = (_DWORD *)a2[2];
      v15 = v21 + 1;
      *a2 = v15;
      if ( v15 == v14 )
      {
        v27 = (_DWORD **)(a2[3] + 4);
        a2[3] = v27;
        v15 = *v27;
        a2[2] = *v27 + 32;
        a2[1] = v15;
        *a2 = v15;
      }
      if ( *v15 == *a4 )
        break;
      v16 = (_DWORD *)a2[2];
      v17 = v15 + 1;
      *a2 = v17;
      if ( v17 == v16 )
      {
        v28 = (_DWORD **)(a2[3] + 4);
        a2[3] = v28;
        v17 = *v28;
        a2[2] = *v28 + 32;
        a2[1] = v17;
        *a2 = v17;
      }
      if ( *v17 == *a4 )
        break;
      v18 = (_DWORD *)a2[2];
      v19 = v17 + 1;
      *a2 = v19;
      if ( v19 == v18 )
      {
        --v13;
        v29 = (int *)(a2[3] + 4);
        a2[3] = v29;
        v30 = *v29;
        a2[2] = *v29 + 128;
        *a2 = v30;
        a2[1] = v30;
        if ( !v13 )
          goto LABEL_18;
      }
      else if ( !--v13 )
      {
        goto LABEL_18;
      }
    }
    goto LABEL_15;
  }
LABEL_18:
  v31 = a2[1];
  v32 = a2[2];
  v33 = a2[3];
  v44[0] = *a2;
  v44[1] = v31;
  v44[2] = v32;
  v44[3] = v33;
  v34 = std::priv::_Deque_iterator_base<std::vector<sfc::script::lua::Value> *>::_M_subtract(a3, v44);
  switch ( v34 )
  {
    case 2:
      v38 = (_DWORD *)*a2;
      break;
    case 3:
      if ( *(_DWORD *)*a2 == *a4 )
        goto LABEL_15;
      v41 = (_DWORD *)a2[2];
      v38 = (_DWORD *)(*a2 + 4);
      *a2 = v38;
      if ( v38 == v41 )
      {
        v42 = (_DWORD **)(a2[3] + 4);
        a2[3] = v42;
        v38 = *v42;
        a2[2] = *v42 + 32;
        a2[1] = v38;
        *a2 = v38;
      }
      break;
    case 1:
      v40 = (_DWORD *)*a2;
      goto LABEL_26;
    default:
LABEL_21:
      v35 = a3[1];
      v36 = a3[2];
      v37 = a3[3];
      *a1 = *a3;
      a1[1] = v35;
      a1[2] = v36;
      a1[3] = v37;
      return a1;
  }
  if ( *v38 == *a4 )
    goto LABEL_15;
  v39 = (_DWORD *)a2[2];
  v40 = v38 + 1;
  *a2 = v40;
  if ( v40 == v39 )
  {
    v43 = (_DWORD **)(a2[3] + 4);
    a2[3] = v43;
    v40 = *v43;
    a2[2] = *v43 + 32;
    a2[1] = v40;
    *a2 = v40;
  }
LABEL_26:
  if ( *v40 != *a4 )
    goto LABEL_21;
LABEL_15:
  v23 = a2[1];
  v24 = a2[2];
  v25 = a2[3];
  *a1 = *a2;
  a1[1] = v23;
  a1[2] = v24;
  a1[3] = v25;
  return a1;
}


// ===== 31b8dc std::priv::__copy_backward<std::priv::_Deque_iterator<std::vector<sfc::script::lua::Value,std::allocator<sfc::script::lua::Value>> *,std::_Nonconst_traits<std::vector<sfc::script::lua::Value,std::allocator<sfc::script::lua::Value>> *>>,std::priv::_Deque_iterator<std::vector<sfc::script::lua::Value,std::allocator<sfc::script::lua::Value>> *,std::_Nonconst_traits<std::vector<sfc::script::lua::Value,std::allocator<sfc::script::lua::Value>> *>>,int>(std::priv::_Deque_iterator<std::vector<sfc::script::lua::Value,std::allocator<sfc::script::lua::Value>> *,std::_Nonconst_traits<std::vector<sfc::script::lua::Value,std::allocator<sfc::script::lua::Value>> *>>,std::priv::_Deque_iterator<std::vector<sfc::script::lua::Value,std::allocator<sfc::script::lua::Value>> *,std::_Nonconst_traits<std::vector<sfc::script::lua::Value,std::allocator<sfc::script::lua::Value>> *>>,std::priv::_Deque_iterator<std::vector<sfc::script::lua::Value,std::allocator<sfc::script::lua::Value>> *,std::_Nonconst_traits<std::vector<sfc::script::lua::Value,std::allocator<sfc::script::lua::Value>> *>>,std::random_access_iterator_tag const&,int *) =====
int *__fastcall std::priv::__copy_backward<std::priv::_Deque_iterator<std::vector<sfc::script::lua::Value> *,std::_Nonconst_traits<std::vector<sfc::script::lua::Value> *>>,std::priv::_Deque_iterator<std::vector<sfc::script::lua::Value> *,std::_Nonconst_traits<std::vector<sfc::script::lua::Value> *>>,int>(
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
  v12 = std::priv::_Deque_iterator_base<std::vector<sfc::script::lua::Value> *>::_M_subtract(a3, v25);
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


// ===== 31b9d8 std::priv::__copy<std::priv::_Deque_iterator<std::vector<sfc::script::lua::Value,std::allocator<sfc::script::lua::Value>> *,std::_Nonconst_traits<std::vector<sfc::script::lua::Value,std::allocator<sfc::script::lua::Value>> *>>,std::priv::_Deque_iterator<std::vector<sfc::script::lua::Value,std::allocator<sfc::script::lua::Value>> *,std::_Nonconst_traits<std::vector<sfc::script::lua::Value,std::allocator<sfc::script::lua::Value>> *>>,int>(std::priv::_Deque_iterator<std::vector<sfc::script::lua::Value,std::allocator<sfc::script::lua::Value>> *,std::_Nonconst_traits<std::vector<sfc::script::lua::Value,std::allocator<sfc::script::lua::Value>> *>>,std::priv::_Deque_iterator<std::vector<sfc::script::lua::Value,std::allocator<sfc::script::lua::Value>> *,std::_Nonconst_traits<std::vector<sfc::script::lua::Value,std::allocator<sfc::script::lua::Value>> *>>,std::priv::_Deque_iterator<std::vector<sfc::script::lua::Value,std::allocator<sfc::script::lua::Value>> *,std::_Nonconst_traits<std::vector<sfc::script::lua::Value,std::allocator<sfc::script::lua::Value>> *>>,std::random_access_iterator_tag const&,int *) =====
_DWORD *__fastcall std::priv::__copy<std::priv::_Deque_iterator<std::vector<sfc::script::lua::Value> *,std::_Nonconst_traits<std::vector<sfc::script::lua::Value> *>>,std::priv::_Deque_iterator<std::vector<sfc::script::lua::Value> *,std::_Nonconst_traits<std::vector<sfc::script::lua::Value> *>>,int>(
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
  v13 = std::priv::_Deque_iterator_base<std::vector<sfc::script::lua::Value> *>::_M_subtract(a3, v28);
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


// ===== 31bad0 std::priv::_Deque_iterator_base<std::vector<sfc::script::lua::Value,std::allocator<sfc::script::lua::Value>> *>::_M_advance(int) =====
_DWORD *__fastcall std::priv::_Deque_iterator_base<std::vector<sfc::script::lua::Value> *>::_M_advance(
        _DWORD *result,
        int a2)
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


// ===== 31bb44 std::__node_alloc::deallocate(void *,uint) =====
void __fastcall std::__node_alloc::deallocate(std::__node_alloc *this, unsigned int a2, unsigned int a3)
{
  if ( a2 > 0x80 )
    CustomFree(this);
  else
    __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(this, a2);
}


// ===== 31bb54 sfc::script::lua::Binder::~Binder() =====
void __fastcall sfc::script::lua::Binder::~Binder(sfc::script::lua::Binder *this)
{
  *(_DWORD *)this = off_95B140;
  CustomFree(this);
}


// ===== 31bb88 std::basic_string<wchar_t,std::char_traits<wchar_t>,std::allocator<wchar_t>>::_M_compute_next_size(uint) =====
unsigned int __fastcall std::wstring::_M_compute_next_size(int a1, unsigned int a2)
{
  unsigned int v2; // r4
  unsigned int v4; // r0
  unsigned int result; // r0

  v2 = (*(_DWORD *)(a1 + 64) - *(_DWORD *)(a1 + 68)) >> 2;
  if ( 1073741822 - v2 < a2 )
    __ZSt24__stl_throw_length_errorPKc_veneer("basic_string");
  v4 = v2 + 1;
  if ( v2 < a2 )
    result = v4 + a2;
  else
    result = v4 + v2;
  if ( result > 0x3FFFFFFE || result < v2 )
    return 1073741822;
  return result;
}


// ===== 31bbf0 sfc::script::lua::Value::getNumber(void) =====
int __fastcall sfc::script::lua::Value::getNumber(sfc::script::lua::Value *this)
{
  int v1; // r3
  float v3; // r5
  int v5; // r4

  v1 = *((_DWORD *)this + 1);
  if ( !v1 )
    goto LABEL_7;
  if ( v1 != 1 && v1 != 3 )
  {
    if ( v1 == 2 || v1 == 7 )
    {
      v3 = (float)*((unsigned int *)this + 27);
      return LODWORD(v3);
    }
    if ( v1 == 4 )
    {
      v5 = luaL_newstate();
      lua_pushstring(v5, *((_DWORD *)this + 8));
      v3 = COERCE_FLOAT(lua_tonumber(v5, -1));
      lua_close(v5);
      return LODWORD(v3);
    }
LABEL_7:
    v3 = 0.0;
    return LODWORD(v3);
  }
  return *((_DWORD *)this + 2);
}


// ===== 31bc80 sfc::script::lua::Value::getBool(void) =====
bool __fastcall sfc::script::lua::Value::getBool(sfc::script::lua::Value *this)
{
  int v1; // r3
  _BOOL4 v3; // r5
  int v5; // r4

  v1 = *((_DWORD *)this + 1);
  if ( !v1 )
    return 0;
  if ( v1 != 1 && v1 != 3 )
  {
    if ( v1 == 2 || v1 == 7 )
      return *((_DWORD *)this + 27) != 0;
    if ( v1 == 4 )
    {
      v5 = luaL_newstate();
      lua_pushstring(v5, *((_DWORD *)this + 8));
      v3 = lua_toboolean(v5, -1) != 0;
      lua_close(v5);
      return v3;
    }
    return 0;
  }
  return *((float *)this + 2) != 0.0;
}


// ===== 31bd2c std::basic_string<wchar_t,std::char_traits<wchar_t>,std::allocator<wchar_t>>::erase(wchar_t *,wchar_t *) =====
wchar_t *__fastcall std::wstring::erase(int a1, wchar_t *s1, wchar_t *s2)
{
  if ( s1 != s2 )
  {
    wmemmove(s1, s2, ((*(_DWORD *)(a1 + 64) - (int)s2) >> 2) + 1);
    *(_DWORD *)(a1 + 64) -= ((char *)s2 - (char *)s1) & 0xFFFFFFFC;
  }
  return s1;
}


// ===== 31bd7c std::priv::_String_base<wchar_t,std::allocator<wchar_t>>::_M_allocate_block(uint) [clone] =====
void std::priv::_String_base<wchar_t,std::allocator<wchar_t>>::_M_allocate_block()
{
  ;
}


// ===== 31bd80 std::allocator<std::vector<sfc::script::lua::Value,std::allocator<sfc::script::lua::Value>> **>::allocate(uint,void const*) =====
void *__fastcall std::allocator<std::vector<sfc::script::lua::Value> **>::allocate(int a1, unsigned int a2)
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


// ===== 31bde0 std::vector<sfc::script::lua::Value,std::allocator<sfc::script::lua::Value>>::_M_clear(void) =====
void __fastcall std::vector<sfc::script::lua::Value>::_M_clear(void **a1)
{
  char *v1; // r4
  char *v2; // r5
  void (__fastcall **v4)(void *); // t1
  size_t v5; // r1

  v1 = (char *)a1[1];
  v2 = (char *)*a1;
  if ( v1 != *a1 )
  {
    do
    {
      v4 = *((void (__fastcall ***)(void *))v1 - 28);
      v1 -= 112;
      (*v4)(v1);
    }
    while ( v2 != v1 );
    v1 = (char *)*a1;
  }
  if ( v1 )
  {
    v5 = 16 * (((_BYTE *)a1[2] - v1) >> 4);
    if ( v5 > 0x80 )
      CustomFree(v1);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v1, v5);
  }
}


// ===== 31be6c std::priv::_Deque_base<std::vector<sfc::script::lua::Value,std::allocator<sfc::script::lua::Value>> *,std::allocator<std::vector<sfc::script::lua::Value,std::allocator<sfc::script::lua::Value>> *>>::~_Deque_base() =====
_DWORD *__fastcall std::priv::_Deque_base<std::vector<sfc::script::lua::Value> *,std::allocator<std::vector<sfc::script::lua::Value> *>>::~_Deque_base(
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


// ===== 31bef0 std::deque<std::vector<sfc::script::lua::Value,std::allocator<sfc::script::lua::Value>> *,std::allocator<std::vector<sfc::script::lua::Value,std::allocator<sfc::script::lua::Value>> *>>::~deque() =====
_DWORD *__fastcall std::deque<std::vector<sfc::script::lua::Value> *,std::allocator<std::vector<sfc::script::lua::Value> *>>::~deque(
        _DWORD *a1)
{
  std::priv::_Deque_base<std::vector<sfc::script::lua::Value> *,std::allocator<std::vector<sfc::script::lua::Value> *>>::~_Deque_base(a1);
  return a1;
}


// ===== 31bf04 std::vector<sfc::script::lua::Value,std::allocator<sfc::script::lua::Value>>::~vector() =====
void **__fastcall std::vector<sfc::script::lua::Value>::~vector(void **a1)
{
  char *v1; // r5
  char *v2; // r6
  void (__fastcall **v4)(void *); // t1
  _BYTE *v5; // r0
  size_t v6; // r1

  v1 = (char *)a1[1];
  v2 = (char *)*a1;
  if ( v1 != *a1 )
  {
    do
    {
      v4 = *((void (__fastcall ***)(void *))v1 - 28);
      v1 -= 112;
      (*v4)(v1);
    }
    while ( v2 != v1 );
  }
  v5 = *a1;
  if ( !*a1 )
    return a1;
  v6 = 16 * (((_BYTE *)a1[2] - v5) >> 4);
  if ( v6 <= 0x80 )
  {
    __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v5, v6);
    return a1;
  }
  CustomFree(v5);
  return a1;
}


// ===== 31bf8c std::priv::_List_base<std::vector<sfc::script::lua::Value,std::allocator<sfc::script::lua::Value>>,std::allocator<std::vector<sfc::script::lua::Value,std::allocator<sfc::script::lua::Value>>>>::clear(void) =====
void __fastcall std::priv::_List_base<std::vector<sfc::script::lua::Value>,std::allocator<std::vector<sfc::script::lua::Value>>>::clear(
        void **a1)
{
  void **v1; // r6
  void **v3; // r4

  v1 = (void **)*a1;
  if ( *a1 != a1 )
  {
    while ( 1 )
    {
      v3 = (void **)*v1;
      std::vector<sfc::script::lua::Value>::~vector(v1 + 2);
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v1, 0x14u);
      if ( v3 == a1 )
        break;
      v1 = v3;
    }
    v1 = a1;
  }
  a1[1] = v1;
  *a1 = v1;
}


// ===== 31bfd8 std::list<std::vector<sfc::script::lua::Value,std::allocator<sfc::script::lua::Value>>,std::allocator<std::vector<sfc::script::lua::Value,std::allocator<sfc::script::lua::Value>>>>::~list() =====
void **__fastcall std::list<std::vector<sfc::script::lua::Value>>::~list(void **a1)
{
  std::priv::_List_base<std::vector<sfc::script::lua::Value>,std::allocator<std::vector<sfc::script::lua::Value>>>::clear(a1);
  return a1;
}


// ===== 31bfec std::basic_string<wchar_t,std::char_traits<wchar_t>,std::allocator<wchar_t>>::_M_append(wchar_t const*,wchar_t const*) =====
_DWORD *__fastcall std::wstring::_M_append(_DWORD *a1, _DWORD *a2, _DWORD *a3)
{
  _DWORD *v5; // r3
  signed int v6; // r4
  bool v7; // zf
  int v8; // r1
  int v9; // r3
  unsigned int v10; // r3
  signed int v11; // r7
  int v12; // r2
  int v13; // r3
  _DWORD *v14; // r3
  int v15; // t1
  _DWORD *v17; // r10
  int v18; // r0
  int v19; // r8
  _DWORD *v20; // r8
  int v21; // r2
  int v22; // r3
  int v23; // r3
  size_t v24; // r3
  size_t size; // [sp+4h] [bp-8h] BYREF

  if ( a2 != a3 )
  {
    v5 = (_DWORD *)a1[17];
    v6 = a3 - a2;
    v7 = v5 == a1;
    if ( v5 != a1 )
      v5 = (_DWORD *)*a1;
    v8 = a1[16];
    if ( v7 )
      v9 = (v8 - (int)a1) >> 2;
    else
      v9 = (int)v5 - v8;
    if ( v7 )
      v10 = 16 - v9;
    else
      v10 = v9 >> 2;
    v11 = v6;
    if ( v6 >= v10 )
    {
      size = std::wstring::_M_compute_next_size((int)a1, v6);
      v17 = std::allocator<wchar_t>::_M_allocate((int)(a1 + 17), size, &size);
      v18 = a1[17];
      v19 = (a1[16] - v18) >> 2;
      if ( v19 > 0 )
      {
        v21 = (a1[16] - v18) >> 2;
        v22 = 0;
        do
        {
          --v21;
          v17[v22] = *(_DWORD *)(v18 + v22 * 4);
          ++v22;
        }
        while ( v21 );
        v20 = &v17[v19];
      }
      else
      {
        v20 = v17;
      }
      if ( v6 > 0 )
      {
        v23 = 0;
        do
        {
          --v6;
          v20[v23] = a2[v23];
          ++v23;
        }
        while ( v6 );
        v20 += v11;
      }
      *v20 = 0;
      std::priv::_String_base<wchar_t,std::allocator<wchar_t>>::_M_deallocate_block((int)a1);
      v24 = size;
      a1[17] = v17;
      a1[16] = v20;
      *a1 = &v17[v24];
    }
    else
    {
      v12 = a3 - (a2 + 1);
      v13 = a1[16];
      if ( v12 > 0 )
      {
        v14 = a2;
        do
        {
          v15 = v14[1];
          ++v14;
          --v12;
          *(_DWORD *)(v8 + 4) = v15;
          v8 += 4;
        }
        while ( v12 );
        v13 = a1[16];
      }
      *(_DWORD *)(v13 + 4 * v6) = 0;
      *(_DWORD *)a1[16] = *a2;
      a1[16] += 4 * v6;
    }
  }
  return a1;
}


// ===== 31c144 std::basic_string<wchar_t,std::char_traits<wchar_t>,std::allocator<wchar_t>>::_M_assign(wchar_t const*,wchar_t const*) =====
int __fastcall std::wstring::_M_assign(int a1, const wchar_t *a2, _DWORD *a3)
{
  int v4; // r3
  wchar_t *v5; // r0
  size_t v7; // r5
  size_t v8; // r2

  v4 = *(_DWORD *)(a1 + 64);
  v5 = *(wchar_t **)(a1 + 68);
  v7 = a3 - a2;
  v8 = (v4 - (int)v5) >> 2;
  if ( v7 <= v8 )
  {
    wmemcpy(v5, a2, v7);
    std::wstring::erase(a1, (wchar_t *)(*(_DWORD *)(a1 + 68) + 4 * v7), *(wchar_t **)(a1 + 64));
  }
  else
  {
    wmemcpy(v5, a2, v8);
    std::wstring::_M_append(
      (_DWORD *)a1,
      (const wchar_t *)((char *)a2 + ((*(_DWORD *)(a1 + 64) - *(_DWORD *)(a1 + 68)) & 0xFFFFFFFC)),
      a3);
  }
  return a1;
}


// ===== 31c1c4 std::allocator<std::vector<sfc::script::lua::Value,std::allocator<sfc::script::lua::Value>> *>::allocate(uint,void const*) [clone] =====
void *std::allocator<std::vector<sfc::script::lua::Value> *>::allocate()
{
  size_t v1; // [sp+4h] [bp-8h] BYREF

  v1 = 128;
  return __ZNSt12__node_alloc11_M_allocateERj_veneer(&v1);
}


// ===== 31c1e4 std::priv::_Deque_base<std::vector<sfc::script::lua::Value,std::allocator<sfc::script::lua::Value>> *,std::allocator<std::vector<sfc::script::lua::Value,std::allocator<sfc::script::lua::Value>> *>>::_M_initialize_map(uint) [clone] =====
void *__fastcall std::priv::_Deque_base<std::vector<sfc::script::lua::Value> *,std::allocator<std::vector<sfc::script::lua::Value> *>>::_M_initialize_map(
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
  v2 = std::allocator<std::vector<sfc::script::lua::Value> **>::allocate((int)(a1 + 8), 8u);
  a1[8] = v2;
  v3 = a1[9];
  result = std::allocator<std::vector<sfc::script::lua::Value> *>::allocate();
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


// ===== 31c258 `global constructor keyed to'.._.._sources_Utils_sfc_script_lua_Value.cpp =====
int `global constructor keyed to'.._.._sources_Utils_sfc_script_lua_Value.cpp()
{
  dword_99F9A0 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_99F99C = 1056964608;
  sfc::script::lua::_s_pool = (int)&sfc::script::lua::_s_pool;
  dword_99F9A8 = (int)&sfc::script::lua::_s_pool;
  _aeabi_atexit(
    (int)&sfc::script::lua::_s_pool,
    (int)std::list<std::vector<sfc::script::lua::Value>>::~list,
    (int)&_dso_handle);
  sfc::script::lua::_s_poolFree = 0;
  dword_99F9B0 = 0;
  dword_99F9B4 = 0;
  dword_99F9B8 = 0;
  dword_99F9BC = 0;
  dword_99F9C0 = 0;
  dword_99F9C4 = 0;
  dword_99F9C8 = 0;
  dword_99F9CC = 0;
  dword_99F9D0 = 0;
  std::priv::_Deque_base<std::vector<sfc::script::lua::Value> *,std::allocator<std::vector<sfc::script::lua::Value> *>>::_M_initialize_map(&sfc::script::lua::_s_poolFree);
  _aeabi_atexit(
    (int)&sfc::script::lua::_s_poolFree,
    (int)std::deque<std::vector<sfc::script::lua::Value> *,std::allocator<std::vector<sfc::script::lua::Value> *>>::~deque,
    (int)&_dso_handle);
  dword_99F9F8 = 0;
  sfc::script::lua::_s_poolUsed = 0;
  dword_99F9D8 = 0;
  dword_99F9DC = 0;
  dword_99F9E0 = 0;
  dword_99F9E4 = 0;
  dword_99F9E8 = 0;
  dword_99F9EC = 0;
  dword_99F9F0 = 0;
  dword_99F9F4 = 0;
  std::priv::_Deque_base<std::vector<sfc::script::lua::Value> *,std::allocator<std::vector<sfc::script::lua::Value> *>>::_M_initialize_map(&sfc::script::lua::_s_poolUsed);
  return _aeabi_atexit(
           (int)&sfc::script::lua::_s_poolUsed,
           (int)std::deque<std::vector<sfc::script::lua::Value> *,std::allocator<std::vector<sfc::script::lua::Value> *>>::~deque,
           (int)&_dso_handle);
}


// ===== 31c368 sfc::script::lua::Value::operator=(sfc::script::lua::Value const&) =====
_DWORD *__fastcall sfc::script::lua::Value::operator=(_DWORD *a1, int a2)
{
  std::string *v3; // r0

  a1[1] = *(_DWORD *)(a2 + 4);
  v3 = (std::string *)(a1 + 3);
  a1[2] = *(_DWORD *)(a2 + 8);
  if ( v3 != (std::string *)(a2 + 12) )
    std::string::_M_assign(v3, *(const char **)(a2 + 32), *(const char **)(a2 + 28));
  if ( a1 + 9 != (_DWORD *)(a2 + 36) )
    std::wstring::_M_assign((int)(a1 + 9), *(const wchar_t **)(a2 + 104), *(_DWORD **)(a2 + 100));
  a1[27] = *(_DWORD *)(a2 + 108);
  return a1;
}


// ===== 31c3cc std::vector<sfc::script::lua::Value,std::allocator<sfc::script::lua::Value>>::_M_erase(sfc::script::lua::Value*,sfc::script::lua::Value*,std::__false_type const&) =====
void (__fastcall ***__fastcall std::vector<sfc::script::lua::Value>::_M_erase(
        int a1,
        void (__fastcall ***a2)(_DWORD),
        int a3))(_DWORD)
{
  void (__fastcall ***v3)(_DWORD); // r4
  int v6; // r3
  int v8; // r10
  void (__fastcall ***v9)(_DWORD); // r10
  int v10; // r6
  int v11; // r4
  void (__fastcall ***v12)(_DWORD); // r6
  void (__fastcall **v13)(_DWORD); // r3
  void (__fastcall ***v14)(_DWORD); // r0

  v3 = *(void (__fastcall ****)(_DWORD))(a1 + 4);
  v6 = ((int)v3 - a3) >> 4;
  v8 = -1227133513 * v6;
  if ( -1227133513 * v6 > 0 )
  {
    v10 = -1227133513 * v6;
    v11 = 0;
    do
    {
      sfc::script::lua::Value::operator=(&a2[v11], a3 + v11 * 4);
      --v10;
      v11 += 28;
    }
    while ( v10 );
    v9 = &a2[28 * v8];
    v3 = *(void (__fastcall ****)(_DWORD))(a1 + 4);
  }
  else
  {
    v9 = a2;
  }
  if ( v9 != v3 )
  {
    v12 = v9;
    do
    {
      v13 = *v12;
      v14 = v12;
      v12 += 28;
      (*v13)(v14);
    }
    while ( v12 != v3 );
  }
  *(_DWORD *)(a1 + 4) = v9;
  return a2;
}


// ===== 31c46c sfc::script::lua::Value::setString(char const*) =====
std::string *__fastcall sfc::script::lua::Value::setString(sfc::script::lua::Value *this, const char *a2)
{
  size_t v4; // r0

  *((_DWORD *)this + 1) = 4;
  v4 = LC_API_STRLEN_0(a2);
  return std::string::_M_assign((std::string *const)((char *)this + 12), a2, &a2[v4]);
}


// ===== 31c49c sfc::script::lua::Value::getString(void) =====
const char *__fastcall sfc::script::lua::Value::getString(sfc::script::lua::Value *this)
{
  int v1; // r3
  float v3; // r7
  size_t v4; // r0
  float v6; // r0
  size_t v7; // r0
  char s[32]; // [sp+4h] [bp-24h] BYREF

  v1 = *((_DWORD *)this + 1);
  switch ( v1 )
  {
    case 0:
      return "nil";
    case 1:
      if ( sfc::script::lua::Value::getBool(this) )
        return "true";
      else
        return "false";
    case 4:
      return *((const char **)this + 8);
  }
  if ( v1 != 3 )
  {
    if ( v1 != 2 && v1 != 7 )
      return nullptr;
    sprintf(s, "0x%0*x", 8, *((_DWORD *)this + 27));
    v7 = LC_API_STRLEN_0(s);
    std::string::_M_assign((std::string *const)((char *)this + 12), s, &s[v7]);
    return *((const char **)this + 8);
  }
  v3 = *((float *)this + 2);
  if ( v3 == floorf(v3) )
  {
    v6 = COERCE_FLOAT(sfc::script::lua::Value::getNumber(this));
    sprintf(s, "%d", (int)v6);
  }
  else
  {
    sprintf(s, "%f", v3);
  }
  v4 = LC_API_STRLEN_0(s);
  std::string::_M_assign((std::string *const)((char *)this + 12), s, &s[v4]);
  return *((const char **)this + 8);
}


// ===== 31c634 sfc::script::lua::Value::Value(sfc::script::lua::Value const&) =====
sfc::script::lua::Value *__fastcall sfc::script::lua::Value::Value(
        sfc::script::lua::Value *this,
        const sfc::script::lua::Value *a2)
{
  _DWORD *v3; // r0
  int v5; // r3
  int UserData; // r0
  _BOOL4 Bool; // r0
  int Number; // r0
  const char *String; // r0
  void *Pointer; // r0

  *(_DWORD *)this = off_95B0F0;
  v3 = (_DWORD *)((char *)this + 12);
  *((_DWORD *)this + 7) = v3;
  *((_DWORD *)this + 8) = v3;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block(v3, 0x10u);
  **((_BYTE **)this + 7) = 0;
  *((_DWORD *)this + 25) = (char *)this + 36;
  *((_DWORD *)this + 26) = (char *)this + 36;
  std::priv::_String_base<wchar_t,std::allocator<wchar_t>>::_M_allocate_block();
  **((_DWORD **)this + 25) = 0;
  v5 = *((_DWORD *)a2 + 1);
  switch ( v5 )
  {
    case 0:
      goto LABEL_7;
    case 1:
      Bool = sfc::script::lua::Value::getBool(a2);
      sfc::script::lua::Value::setBool((int)this, Bool);
      return this;
    case 3:
      Number = sfc::script::lua::Value::getNumber(a2);
      sfc::script::lua::Value::setNumber((int)this, *(float *)&Number);
      return this;
    case 4:
      String = sfc::script::lua::Value::getString(a2);
      sfc::script::lua::Value::setString(this, String);
      return this;
    case 2:
      Pointer = (void *)sfc::script::lua::Value::getPointer(a2);
      sfc::script::lua::Value::setPointer((int)this, Pointer);
      return this;
  }
  if ( v5 != 7 )
  {
LABEL_7:
    sfc::script::lua::Value::setNil((int)this);
    return this;
  }
  UserData = sfc::script::lua::Value::getUserData(a2);
  sfc::script::lua::Value::setUserData((int)this, UserData);
  return this;
}


// ===== 31c760 std::vector<sfc::script::lua::Value,std::allocator<sfc::script::lua::Value>>::vector(std::vector<sfc::script::lua::Value,std::allocator<sfc::script::lua::Value>> const&) =====
_DWORD *__fastcall std::vector<sfc::script::lua::Value>::vector(_DWORD *a1, int *a2)
{
  int v3; // r3
  int v5; // r6
  char *v6; // r0
  size_t v7; // r3
  int v8; // r8
  char *v9; // r7
  int v10; // r3
  int v11; // r10
  int v12; // r5
  int v14; // [sp+4h] [bp-8h] BYREF

  v3 = (a2[1] - *a2) >> 4;
  v5 = 0;
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v14 = -1227133513 * v3;
  v6 = (char *)std::allocator<sfc::script::lua::Value>::_M_allocate((int)(a1 + 2), -1227133513 * v3, (size_t *)&v14);
  v7 = v14;
  *a1 = v6;
  a1[1] = v6;
  a1[2] = &v6[112 * v7];
  v8 = *a2;
  v9 = v6;
  v10 = (a2[1] - *a2) >> 4;
  v11 = -1227133513 * v10;
  if ( -1227133513 * v10 > 0 )
  {
    v12 = -1227133513 * v10;
    do
    {
      sfc::script::lua::Value::Value((sfc::script::lua::Value *)&v9[v5], (const sfc::script::lua::Value *)(v8 + v5));
      --v12;
      v5 += 112;
    }
    while ( v12 );
    v9 += 112 * v11;
  }
  a1[1] = v9;
  return a1;
}


// ===== 31c830 std::vector<sfc::script::lua::Value,std::allocator<sfc::script::lua::Value>>::_M_allocate_and_copy<sfc::script::lua::Value*>(uint &,sfc::script::lua::Value*,sfc::script::lua::Value*) =====
char *__fastcall std::vector<sfc::script::lua::Value>::_M_allocate_and_copy<sfc::script::lua::Value*>(
        int a1,
        unsigned int *a2,
        int a3,
        int a4)
{
  char *v6; // r7
  int v7; // r6
  int v8; // r5

  v6 = (char *)std::allocator<sfc::script::lua::Value>::_M_allocate(a1 + 8, *a2, a2);
  v7 = -1227133513 * ((a4 - a3) >> 4);
  if ( v7 > 0 )
  {
    v8 = 0;
    do
    {
      sfc::script::lua::Value::Value((sfc::script::lua::Value *)&v6[v8], (const sfc::script::lua::Value *)(a3 + v8));
      --v7;
      v8 += 112;
    }
    while ( v7 );
  }
  return v6;
}


// ===== 31c89c sfc::script::lua::Value::Value(sfc::script::lua::Value const&) =====
sfc::script::lua::Value *__fastcall sfc::script::lua::Value::Value(
        sfc::script::lua::Value *this,
        const sfc::script::lua::Value *a2)
{
  _DWORD *v3; // r0
  int v5; // r3
  int UserData; // r0
  _BOOL4 Bool; // r0
  int Number; // r0
  const char *String; // r0
  void *Pointer; // r0

  *(_DWORD *)this = off_95B0F0;
  v3 = (_DWORD *)((char *)this + 12);
  *((_DWORD *)this + 7) = v3;
  *((_DWORD *)this + 8) = v3;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block(v3, 0x10u);
  **((_BYTE **)this + 7) = 0;
  *((_DWORD *)this + 25) = (char *)this + 36;
  *((_DWORD *)this + 26) = (char *)this + 36;
  std::priv::_String_base<wchar_t,std::allocator<wchar_t>>::_M_allocate_block();
  **((_DWORD **)this + 25) = 0;
  v5 = *((_DWORD *)a2 + 1);
  switch ( v5 )
  {
    case 0:
      goto LABEL_7;
    case 1:
      Bool = sfc::script::lua::Value::getBool(a2);
      sfc::script::lua::Value::setBool((int)this, Bool);
      return this;
    case 3:
      Number = sfc::script::lua::Value::getNumber(a2);
      sfc::script::lua::Value::setNumber((int)this, *(float *)&Number);
      return this;
    case 4:
      String = sfc::script::lua::Value::getString(a2);
      sfc::script::lua::Value::setString(this, String);
      return this;
    case 2:
      Pointer = (void *)sfc::script::lua::Value::getPointer(a2);
      sfc::script::lua::Value::setPointer((int)this, Pointer);
      return this;
  }
  if ( v5 != 7 )
  {
LABEL_7:
    sfc::script::lua::Value::setNil((int)this);
    return this;
  }
  UserData = sfc::script::lua::Value::getUserData(a2);
  sfc::script::lua::Value::setUserData((int)this, UserData);
  return this;
}


// ===== 31c9c8 sfc::script::lua::Value::_setFromStack(lua_State *,int) =====
float __fastcall sfc::script::lua::Value::_setFromStack(int a1, int a2, int a3)
{
  float result; // r0
  const char *v7; // r5
  size_t v8; // r0

  result = COERCE_FLOAT(lua_type(a2, a3));
  *(float *)(a1 + 4) = result;
  switch ( LODWORD(result) )
  {
    case 0:
      return result;
    case 1:
      result = (float)lua_toboolean(a2, a3);
      *(float *)(a1 + 8) = result;
      break;
    case 2:
      result = COERCE_FLOAT(lua_touserdata(a2, a3));
      *(float *)(a1 + 108) = result;
      break;
    case 3:
      result = COERCE_FLOAT(lua_tonumber(a2, a3));
      *(float *)(a1 + 8) = result;
      break;
    case 4:
      v7 = (const char *)lua_tolstring(a2, a3, 0);
      v8 = LC_API_STRLEN_0(v7);
      result = COERCE_FLOAT(std::string::_M_assign((std::string *const)(a1 + 12), v7, &v7[v8]));
      break;
    case 5:
      lua_getfield(a2, a3, "_this");
      *(_DWORD *)(a1 + 108) = lua_touserdata(a2, -1);
      result = COERCE_FLOAT(lua_settop(a2, -2));
      *(_DWORD *)(a1 + 4) = 7;
      break;
    default:
      *(_DWORD *)(a1 + 4) = 0;
      break;
  }
  return result;
}


// ===== 31cac4 sfc::script::lua::Value::_pushOnStack(lua_State *) =====
void __fastcall sfc::script::lua::Value::_pushOnStack(int a1, int a2)
{
  char *v4; // r9
  size_t v5; // r0
  unsigned int v6; // r2
  int v7; // r3
  _DWORD v8[3]; // [sp+0h] [bp-28h] BYREF
  std::string v9; // [sp+Ch] [bp-1Ch] BYREF

  switch ( *(_DWORD *)(a1 + 4) )
  {
    case 0:
      goto LABEL_9;
    case 1:
      lua_pushboolean(a2, *(float *)(a1 + 8) != 0.0);
      break;
    case 2:
      lua_pushlightuserdata(a2, *(_DWORD *)(a1 + 108));
      break;
    case 3:
      lua_pushnumber(a2, *(_DWORD *)(a1 + 8));
      break;
    case 4:
      lua_pushstring(a2, *(_DWORD *)(a1 + 32));
      break;
    case 7:
      if ( *(_DWORD *)(a1 + 108) )
      {
        lua_createtable(a2, 0, 0);
        lua_pushstring(a2, "_this");
        lua_pushlightuserdata(a2, *(_DWORD *)(a1 + 108));
        lua_settable(a2, -3);
        v9._M_finish = (char *)&v9;
        v9._M_start_of_storage._M_data = (char *)&v9;
        std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block(&v9, 0xDu);
        v9._M_finish = (char *)memcpy(v9._M_start_of_storage._M_data, "sfc_vftable_", 0xCu) + 12;
        *v9._M_finish = 0;
        v4 = (char *)(*(int (__fastcall **)(_DWORD))(**(_DWORD **)(a1 + 108) + 8))(*(_DWORD *)(a1 + 108));
        v5 = LC_API_STRLEN_0(v4);
        std::string::_M_append(&v9, v4, &v4[v5]);
        if ( luaL_newmetatable(a2, v9._M_start_of_storage._M_data) )
        {
          lua_pushstring(a2, "__index");
          lua_createtable(a2, 0, 0);
          v7 = *(_DWORD *)(a1 + 108);
          v8[1] = 0;
          v8[2] = a2;
          v8[0] = off_95B140;
          (*(void (__fastcall **)(int, _DWORD *))(*(_DWORD *)v7 + 12))(v7, v8);
          lua_settable(a2, -3);
          v8[0] = off_95B140;
        }
        lua_setmetatable(a2, -2);
        if ( (std::string *)v9._M_start_of_storage._M_data != &v9 )
        {
          if ( v9._M_start_of_storage._M_data )
            std::__node_alloc::deallocate(
              (std::__node_alloc *)v9._M_start_of_storage._M_data,
              v9._M_buffers._M_end_of_storage - v9._M_start_of_storage._M_data,
              v6);
        }
      }
      else
      {
LABEL_9:
        lua_pushnil(a2);
      }
      break;
    default:
      return;
  }
}


// ===== 31cd00 std::deque<std::vector<sfc::script::lua::Value,std::allocator<sfc::script::lua::Value>> *,std::allocator<std::vector<sfc::script::lua::Value,std::allocator<sfc::script::lua::Value>> *>>::_M_push_back_aux_v(std::vector<sfc::script::lua::Value,std::allocator<sfc::script::lua::Value>> * const&) =====
void *__fastcall std::deque<std::vector<sfc::script::lua::Value> *,std::allocator<std::vector<sfc::script::lua::Value> *>>::_M_push_back_aux_v(
        int a1,
        _DWORD *a2)
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
      v17 = (char *)std::allocator<std::vector<sfc::script::lua::Value> **>::allocate(a1 + 32, v16);
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
  result = std::allocator<std::vector<sfc::script::lua::Value> *>::allocate();
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


// ===== 31ce84 sfc::script::lua::Value::allocValueList(void) =====
int __fastcall sfc::script::lua::Value::allocValueList(sfc::script::lua::Value *this)
{
  int *i; // r3
  _DWORD *v2; // r4
  _DWORD *v3; // r3
  int v4; // r4
  int v5; // r2
  int v6; // r3
  int v7; // r8
  char *v8; // r9
  int v9; // r4
  int v10; // r2
  _DWORD *v11; // r3
  int v13; // r1
  _DWORD v14[4]; // [sp+8h] [bp-3Ch] BYREF
  _DWORD v15[4]; // [sp+18h] [bp-2Ch] BYREF
  void *v16[3]; // [sp+28h] [bp-1Ch] BYREF
  unsigned int v17; // [sp+34h] [bp-10h] BYREF
  int v18; // [sp+38h] [bp-Ch] BYREF
  int v19; // [sp+3Ch] [bp-8h] BYREF

  v19 = 0;
  v15[0] = sfc::script::lua::_s_poolFree;
  v15[1] = dword_99F9B0;
  v15[2] = dword_99F9B4;
  v15[3] = dword_99F9B8;
  if ( !std::priv::_Deque_iterator_base<std::vector<sfc::script::lua::Value> *>::_M_subtract(&dword_99F9BC, v15) )
  {
    for ( i = (int *)sfc::script::lua::_s_pool; i != &sfc::script::lua::_s_pool; i = (int *)*i )
      ;
    memset(v16, 0, sizeof(v16));
    v17 = 20;
    v2 = __ZNSt12__node_alloc11_M_allocateERj_veneer(&v17);
    std::vector<sfc::script::lua::Value>::vector(v2 + 2, (int *)v16);
    v3 = (_DWORD *)dword_99F9A8;
    *v2 = &sfc::script::lua::_s_pool;
    v2[1] = v3;
    *v3 = v2;
    dword_99F9A8 = (int)v2;
    std::vector<sfc::script::lua::Value>::~vector(v16);
    v4 = dword_99F9A8;
    v17 = 20;
    v5 = *(_DWORD *)(dword_99F9A8 + 8);
    if ( (unsigned int)(-1227133513 * ((*(_DWORD *)(dword_99F9A8 + 16) - v5) >> 4)) <= 0x13 )
    {
      v6 = *(_DWORD *)(dword_99F9A8 + 12);
      v7 = -1227133513 * ((v6 - v5) >> 4);
      if ( v5 )
      {
        v8 = std::vector<sfc::script::lua::Value>::_M_allocate_and_copy<sfc::script::lua::Value*>(
               dword_99F9A8 + 8,
               &v17,
               v5,
               v6);
        std::vector<sfc::script::lua::Value>::_M_clear((void **)(v4 + 8));
      }
      else
      {
        v8 = (char *)std::allocator<sfc::script::lua::Value>::_M_allocate(dword_99F9A8 + 16, 0x14u, &v17);
      }
      *(_DWORD *)(v4 + 16) = &v8[112 * v17];
      *(_DWORD *)(v4 + 12) = &v8[112 * v7];
      *(_DWORD *)(v4 + 8) = v8;
      v4 = dword_99F9A8;
    }
    v9 = v4 + 8;
    v18 = v9;
    if ( dword_99F9BC == dword_99F9C4 - 4 )
    {
      std::deque<std::vector<sfc::script::lua::Value> *,std::allocator<std::vector<sfc::script::lua::Value> *>>::_M_push_back_aux_v(
        (int)&sfc::script::lua::_s_poolFree,
        &v18);
    }
    else
    {
      *(_DWORD *)dword_99F9BC = v9;
      dword_99F9BC += 4;
    }
  }
  v14[0] = sfc::script::lua::_s_poolFree;
  v14[1] = dword_99F9B0;
  v14[2] = dword_99F9B4;
  v14[3] = dword_99F9B8;
  if ( !std::priv::_Deque_iterator_base<std::vector<sfc::script::lua::Value> *>::_M_subtract(&dword_99F9BC, v14) )
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
        "_s_poolFree.size() > 0",
        "..\\..\\project_vs2005\\Game/..\\..\\sources\\Utils\\sfc\\script\\lua\\Value.cpp",
        50);
    }
  }
  v10 = sfc::script::lua::_s_poolFree;
  if ( sfc::script::lua::_s_poolFree != dword_99F9B4 - 4 )
    v10 = sfc::script::lua::_s_poolFree + 4;
  v19 = *(_DWORD *)sfc::script::lua::_s_poolFree;
  if ( sfc::script::lua::_s_poolFree == dword_99F9B4 - 4 )
  {
    if ( dword_99F9B0 )
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer((void *)dword_99F9B0, 0x80u);
    dword_99F9B8 += 4;
    v13 = *(_DWORD *)dword_99F9B8 + 128;
    sfc::script::lua::_s_poolFree = *(_DWORD *)dword_99F9B8;
    dword_99F9B0 = sfc::script::lua::_s_poolFree;
    dword_99F9B4 = v13;
    v11 = (_DWORD *)dword_99F9E4;
    if ( dword_99F9E4 != dword_99F9EC - 4 )
      goto LABEL_21;
LABEL_28:
    std::deque<std::vector<sfc::script::lua::Value> *,std::allocator<std::vector<sfc::script::lua::Value> *>>::_M_push_back_aux_v(
      (int)&sfc::script::lua::_s_poolUsed,
      &v19);
    return v19;
  }
  sfc::script::lua::_s_poolFree = v10;
  v11 = (_DWORD *)dword_99F9E4;
  if ( dword_99F9E4 == dword_99F9EC - 4 )
    goto LABEL_28;
LABEL_21:
  *v11 = v19;
  dword_99F9E4 += 4;
  return v19;
}


// ===== 31d194 sfc::script::lua::Value::freeValueList(std::vector<sfc::script::lua::Value,std::allocator<sfc::script::lua::Value>> *) =====
void (__fastcall ***__fastcall sfc::script::lua::Value::freeValueList(int a1))(_DWORD)
{
  int v1; // r3
  int v2; // r8
  int v3; // r7
  int v4; // r10
  int v5; // r11
  unsigned int v6; // r9
  void (__fastcall ***result)(_DWORD); // r0
  int v8; // r2
  unsigned int v9; // r2
  int v10; // r2
  int v11; // r1
  int v12; // r1
  void (__fastcall ****v13)(_DWORD); // [sp+Ch] [bp-108h] BYREF
  _DWORD v14[4]; // [sp+10h] [bp-104h] BYREF
  _DWORD v15[4]; // [sp+20h] [bp-F4h] BYREF
  _DWORD v16[4]; // [sp+30h] [bp-E4h] BYREF
  _DWORD v17[4]; // [sp+40h] [bp-D4h] BYREF
  int v18[4]; // [sp+50h] [bp-C4h] BYREF
  int v19[4]; // [sp+60h] [bp-B4h] BYREF
  int v20[4]; // [sp+70h] [bp-A4h] BYREF
  int v21[4]; // [sp+80h] [bp-94h] BYREF
  _DWORD v22[4]; // [sp+90h] [bp-84h] BYREF
  _DWORD v23[4]; // [sp+A0h] [bp-74h] BYREF
  _DWORD v24[4]; // [sp+B0h] [bp-64h] BYREF
  int v25; // [sp+C0h] [bp-54h] BYREF
  int v26; // [sp+C4h] [bp-50h]
  int v27; // [sp+C8h] [bp-4Ch]
  int v28; // [sp+CCh] [bp-48h]
  _DWORD v29[4]; // [sp+D0h] [bp-44h] BYREF
  _DWORD v30[4]; // [sp+E0h] [bp-34h] BYREF
  int v31; // [sp+F0h] [bp-24h] BYREF
  int v32; // [sp+F4h] [bp-20h]
  int v33; // [sp+F8h] [bp-1Ch]
  int v34; // [sp+FCh] [bp-18h]

  v13 = (void (__fastcall ****)(_DWORD))a1;
  if ( !a1 )
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
        "vlist",
        "..\\..\\project_vs2005\\Game/..\\..\\sources\\Utils\\sfc\\script\\lua\\Value.cpp",
        62);
    }
  }
  v29[2] = dword_99F9DC;
  v30[0] = dword_99F9E4;
  v29[3] = dword_99F9E0;
  v29[1] = dword_99F9D8;
  v29[0] = sfc::script::lua::_s_poolUsed;
  v30[3] = dword_99F9F0;
  v30[2] = dword_99F9EC;
  v30[1] = dword_99F9E8;
  std::priv::__find<std::priv::_Deque_iterator<std::vector<sfc::script::lua::Value> *,std::_Nonconst_traits<std::vector<sfc::script::lua::Value> *>>,std::vector<sfc::script::lua::Value> *>(
    &v31,
    v29,
    v30,
    &v13);
  v1 = dword_99F9E4;
  if ( dword_99F9E4 == v31 )
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
        "iter != _s_poolUsed.end()",
        "..\\..\\project_vs2005\\Game/..\\..\\sources\\Utils\\sfc\\script\\lua\\Value.cpp",
        66);
      v1 = v31;
    }
  }
  else
  {
    v1 = v31;
  }
  v2 = v32;
  v3 = v33;
  v4 = v34;
  v5 = v1 + 4;
  v27 = v33;
  v25 = v1;
  v28 = v34;
  v26 = v32;
  if ( v33 == v1 + 4 )
  {
    v4 = v34 + 4;
    v2 = *(_DWORD *)(v34 + 4);
  }
  v23[0] = sfc::script::lua::_s_poolUsed;
  v23[1] = dword_99F9D8;
  v23[2] = dword_99F9DC;
  v23[3] = dword_99F9E0;
  if ( v33 == v1 + 4 )
  {
    v3 = v2 + 128;
    v5 = v2;
  }
  v6 = std::priv::_Deque_iterator_base<std::vector<sfc::script::lua::Value> *>::_M_subtract(&v25, v23);
  v22[0] = sfc::script::lua::_s_poolUsed;
  v22[1] = dword_99F9D8;
  v22[2] = dword_99F9DC;
  v22[3] = dword_99F9E0;
  if ( v6 >= (unsigned int)std::priv::_Deque_iterator_base<std::vector<sfc::script::lua::Value> *>::_M_subtract(
                             &dword_99F9E4,
                             v22) >> 1 )
  {
    v15[3] = dword_99F9F0;
    v15[1] = dword_99F9E8;
    v16[3] = v4;
    v15[0] = dword_99F9E4;
    v16[2] = v3;
    v16[1] = v2;
    v14[3] = v28;
    v16[0] = v5;
    v15[2] = dword_99F9EC;
    v14[2] = v27;
    v14[1] = v26;
    v14[0] = v25;
    std::priv::__copy<std::priv::_Deque_iterator<std::vector<sfc::script::lua::Value> *,std::_Nonconst_traits<std::vector<sfc::script::lua::Value> *>>,std::priv::_Deque_iterator<std::vector<sfc::script::lua::Value> *,std::_Nonconst_traits<std::vector<sfc::script::lua::Value> *>>,int>(
      v17,
      (int)v16,
      v15,
      (int)v14);
    if ( dword_99F9E4 == dword_99F9E8 )
    {
      if ( dword_99F9E4 )
        std::__node_alloc::deallocate((std::__node_alloc *)dword_99F9E4, (unsigned int)&dword_80, v9);
      dword_99F9F0 -= 4;
      v10 = *(_DWORD *)dword_99F9F0;
      v11 = *(_DWORD *)dword_99F9F0 + 128;
      dword_99F9E4 = *(_DWORD *)dword_99F9F0 + 124;
      dword_99F9EC = v11;
      dword_99F9E8 = v10;
    }
    else
    {
      dword_99F9E4 -= 4;
    }
  }
  else
  {
    v20[3] = dword_99F9E0;
    v20[1] = dword_99F9D8;
    v20[2] = dword_99F9DC;
    v20[0] = sfc::script::lua::_s_poolUsed;
    v18[3] = v4;
    v18[2] = v3;
    v19[3] = v28;
    v18[1] = v2;
    v18[0] = v5;
    v19[2] = v27;
    v19[1] = v26;
    v19[0] = v25;
    std::priv::__copy_backward<std::priv::_Deque_iterator<std::vector<sfc::script::lua::Value> *,std::_Nonconst_traits<std::vector<sfc::script::lua::Value> *>>,std::priv::_Deque_iterator<std::vector<sfc::script::lua::Value> *,std::_Nonconst_traits<std::vector<sfc::script::lua::Value> *>>,int>(
      v21,
      v20,
      v19,
      v18);
    if ( sfc::script::lua::_s_poolUsed == dword_99F9DC - 4 )
    {
      if ( dword_99F9D8 )
        __ZNSt12__node_alloc13_M_deallocateEPvj_veneer((void *)dword_99F9D8, 0x80u);
      dword_99F9E0 += 4;
      v12 = *(_DWORD *)dword_99F9E0 + 128;
      sfc::script::lua::_s_poolUsed = *(_DWORD *)dword_99F9E0;
      dword_99F9DC = v12;
      dword_99F9D8 = sfc::script::lua::_s_poolUsed;
    }
    else
    {
      sfc::script::lua::_s_poolUsed += 4;
    }
  }
  v24[0] = sfc::script::lua::_s_poolUsed;
  v24[1] = dword_99F9D8;
  v24[2] = dword_99F9DC;
  v24[3] = dword_99F9E0;
  std::priv::_Deque_iterator_base<std::vector<sfc::script::lua::Value> *>::_M_advance(v24, v6);
  if ( dword_99F9BC == dword_99F9C4 - 4 )
  {
    std::deque<std::vector<sfc::script::lua::Value> *,std::allocator<std::vector<sfc::script::lua::Value> *>>::_M_push_back_aux_v(
      (int)&sfc::script::lua::_s_poolFree,
      &v13);
  }
  else
  {
    *(_DWORD *)dword_99F9BC = v13;
    dword_99F9BC += 4;
  }
  result = (void (__fastcall ***)(_DWORD))v13;
  v8 = (int)v13[1];
  if ( *v13 != (void (__fastcall ***)(_DWORD))v8 )
    return std::vector<sfc::script::lua::Value>::_M_erase((int)v13, *v13, v8);
  return result;
}


// ===== 31d580 glitch::IReferenceCounted::~IReferenceCounted() =====
void __fastcall glitch::IReferenceCounted::~IReferenceCounted(glitch::IReferenceCounted *this)
{
  ;
}


// ===== 31d584 glitch::IReferenceCounted::drop(void) =====
int __fastcall glitch::IReferenceCounted::drop(glitch::IReferenceCounted *this)
{
  if ( (*((_DWORD *)this + 1))-- != 1 )
    return 0;
  (*(void (__fastcall **)(glitch::IReferenceCounted *))(*(_DWORD *)this + 8))(this);
  (*(void (__fastcall **)(glitch::IReferenceCounted *))(*(_DWORD *)this + 4))(this);
  return 1;
}


// ===== 31d5cc glitch::IReferenceCounted::onDelete(void) =====
void __fastcall glitch::IReferenceCounted::onDelete(glitch::IReferenceCounted *this)
{
  ;
}


// ===== 31d5d0 glitch::io::IAttribute::getInt(void) =====
int __fastcall glitch::io::IAttribute::getInt(glitch::io::IAttribute *this)
{
  return 0;
}


// ===== 31d5d8 glitch::io::IAttribute::getFloat(void) =====
int __fastcall glitch::io::IAttribute::getFloat(glitch::io::IAttribute *this)
{
  return 0;
}


// ===== 31d5e0 glitch::io::IAttribute::getColorf(void) =====
_DWORD *__fastcall glitch::io::IAttribute::getColorf(_DWORD *this)
{
  *(this + 3) = 1065353216;
  *this = 1065353216;
  *(this + 1) = 1065353216;
  *(this + 2) = 1065353216;
  return this;
}


// ===== 31d5f8 glitch::io::IAttribute::getColor(void) =====
int __fastcall glitch::io::IAttribute::getColor(glitch::io::IAttribute *this)
{
  return -1;
}


// ===== 31d61c glitch::io::IAttribute::getArray(void) =====
_DWORD *__fastcall glitch::io::IAttribute::getArray(_DWORD *this)
{
  *(this + 2) = 0;
  *this = 0;
  *(this + 1) = 0;
  return this;
}


// ===== 31d630 glitch::io::IAttribute::getBool(void) =====
int __fastcall glitch::io::IAttribute::getBool(glitch::io::IAttribute *this)
{
  return 0;
}


// ===== 31d638 glitch::io::IAttribute::getBinary(void *,int) =====
void __fastcall glitch::io::IAttribute::getBinary(glitch::io::IAttribute *this, void *a2, int a3)
{
  ;
}


// ===== 31d63c glitch::io::IAttribute::getVector3d(void) =====
_DWORD *__fastcall glitch::io::IAttribute::getVector3d(_DWORD *this)
{
  *(this + 2) = 0;
  *this = 0;
  *(this + 1) = 0;
  return this;
}


// ===== 31d650 glitch::io::IAttribute::getVector4d(void) =====
_DWORD *__fastcall glitch::io::IAttribute::getVector4d(_DWORD *this)
{
  *(this + 3) = 0;
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  return this;
}


// ===== 31d668 glitch::io::IAttribute::getPosition(void) =====
_DWORD *__fastcall glitch::io::IAttribute::getPosition(_DWORD *this)
{
  *(this + 1) = 0;
  *this = 0;
  return this;
}


// ===== 31d678 glitch::io::IAttribute::getRect(void) =====
_DWORD *__fastcall glitch::io::IAttribute::getRect(_DWORD *this)
{
  *(this + 3) = 0;
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  return this;
}


// ===== 31d690 glitch::io::IAttribute::getQuaternion(void) =====
_DWORD *__fastcall glitch::io::IAttribute::getQuaternion(_DWORD *this)
{
  *(this + 2) = 0;
  *(this + 3) = 1065353216;
  *this = 0;
  *(this + 1) = 0;
  return this;
}


// ===== 31d6ac glitch::io::IAttribute::getTriangle(void) =====
_DWORD *__fastcall glitch::io::IAttribute::getTriangle(_DWORD *this)
{
  *(this + 8) = 0;
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 6) = 0;
  *(this + 7) = 0;
  return this;
}


// ===== 31d6d8 glitch::io::IAttribute::getVector2d(void) =====
_DWORD *__fastcall glitch::io::IAttribute::getVector2d(_DWORD *this)
{
  *(this + 1) = 0;
  *this = 0;
  return this;
}


// ===== 31d6e8 glitch::io::IAttribute::getVector2di(void) =====
_DWORD *__fastcall glitch::io::IAttribute::getVector2di(_DWORD *this)
{
  *(this + 1) = 0;
  *this = 0;
  return this;
}


// ===== 31d6f8 glitch::io::IAttribute::getVector3di(void) =====
_DWORD *__fastcall glitch::io::IAttribute::getVector3di(_DWORD *this)
{
  *(this + 2) = 0;
  *this = 0;
  *(this + 1) = 0;
  return this;
}


// ===== 31d70c glitch::io::IAttribute::getVector4di(void) =====
_DWORD *__fastcall glitch::io::IAttribute::getVector4di(_DWORD *this)
{
  *(this + 3) = 0;
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  return this;
}


// ===== 31d724 glitch::io::IAttribute::getLine2d(void) =====
_DWORD *__fastcall glitch::io::IAttribute::getLine2d(_DWORD *this)
{
  *(this + 1) = 0;
  *(this + 3) = 1065353216;
  *this = 0;
  *(this + 2) = 1065353216;
  return this;
}


// ===== 31d740 glitch::io::IAttribute::getLine2di(void) =====
_DWORD *__fastcall glitch::io::IAttribute::getLine2di(_DWORD *this)
{
  *(this + 3) = 1;
  *(this + 1) = 0;
  *this = 0;
  *(this + 2) = 1;
  return this;
}


// ===== 31d75c glitch::io::IAttribute::getLine3d(void) =====
_DWORD *__fastcall glitch::io::IAttribute::getLine3d(_DWORD *this)
{
  *(this + 2) = 0;
  *(this + 5) = 1065353216;
  *this = 0;
  *(this + 1) = 0;
  *(this + 3) = 1065353216;
  *(this + 4) = 1065353216;
  return this;
}


// ===== 31d780 glitch::io::IAttribute::getLine3di(void) =====
_DWORD *__fastcall glitch::io::IAttribute::getLine3di(_DWORD *this)
{
  *(this + 5) = 1;
  *(this + 2) = 0;
  *this = 0;
  *(this + 1) = 0;
  *(this + 3) = 1;
  *(this + 4) = 1;
  return this;
}


// ===== 31d7a4 glitch::io::IAttribute::getDimension2d(void) =====
_DWORD *__fastcall glitch::io::IAttribute::getDimension2d(_DWORD *this)
{
  *(this + 1) = 0;
  *this = 0;
  return this;
}


// ===== 31d7b4 glitch::io::IAttribute::getBBox(void) =====
_DWORD *__fastcall glitch::io::IAttribute::getBBox(_DWORD *this)
{
  *(this + 2) = -1082130432;
  *(this + 5) = 1065353216;
  *this = -1082130432;
  *(this + 1) = -1082130432;
  *(this + 3) = 1065353216;
  *(this + 4) = 1065353216;
  return this;
}


// ===== 31d7dc glitch::io::IAttribute::getPlane(void) =====
_DWORD *__fastcall glitch::io::IAttribute::getPlane(_DWORD *this)
{
  *(this + 1) = 1065353216;
  *(this + 3) = 0x80000000;
  *(this + 2) = 0;
  *this = 0;
  return this;
}


// ===== 31d7fc glitch::io::IAttribute::getTexture(void) =====
_DWORD *__fastcall glitch::io::IAttribute::getTexture(_DWORD *this)
{
  *this = 0;
  return this;
}


// ===== 31d808 glitch::io::IAttribute::getLight(void) =====
_DWORD *__fastcall glitch::io::IAttribute::getLight(_DWORD *this)
{
  *this = 0;
  return this;
}


// ===== 31d814 glitch::io::IAttribute::getEnum(void) =====
int __fastcall glitch::io::IAttribute::getEnum(glitch::io::IAttribute *this)
{
  return 0;
}


// ===== 31d81c glitch::io::IAttribute::getUserPointer(void) =====
int __fastcall glitch::io::IAttribute::getUserPointer(glitch::io::IAttribute *this)
{
  return 0;
}


// ===== 31d824 glitch::io::IAttribute::setInt(int) =====
void __fastcall glitch::io::IAttribute::setInt(glitch::io::IAttribute *this, int a2)
{
  ;
}


// ===== 31d828 glitch::io::IAttribute::setFloat(float) =====
void __fastcall glitch::io::IAttribute::setFloat(glitch::io::IAttribute *this, float a2)
{
  ;
}


// ===== 31d82c glitch::io::IAttribute::setString(char const*) =====
void __fastcall glitch::io::IAttribute::setString(glitch::io::IAttribute *this, const char *a2)
{
  ;
}


// ===== 31d830 glitch::io::IAttribute::setArray(std::vector<std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>,glitch::core::SAllocator<std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>,(glitch::memory::E_MEMORY_HINT)0>>) =====
void glitch::io::IAttribute::setArray()
{
  ;
}


// ===== 31d834 glitch::io::IAttribute::setColor(glitch::video::SColorf) =====
va_list glitch::io::IAttribute::setColor(int a1, ...)
{
  va_list result; // r0
  va_list varg_r1; // [sp+4h] [bp+0h] BYREF

  va_start(varg_r1, a1);
  va_copy(result, varg_r1);
  return result;
}


// ===== 31d848 glitch::io::IAttribute::setColor(glitch::video::SColor) =====
void glitch::io::IAttribute::setColor()
{
  ;
}


// ===== 31d854 glitch::io::IAttribute::setBool(bool) =====
void __fastcall glitch::io::IAttribute::setBool(glitch::io::IAttribute *this, bool a2)
{
  ;
}


// ===== 31d858 glitch::io::IAttribute::setBinary(void *,int) =====
void __fastcall glitch::io::IAttribute::setBinary(glitch::io::IAttribute *this, void *a2, int a3)
{
  ;
}


// ===== 31d85c glitch::io::IAttribute::setVector2d(glitch::core::vector2d<float>) =====
void glitch::io::IAttribute::setVector2d()
{
  ;
}


// ===== 31d860 glitch::io::IAttribute::setVector3d(glitch::core::vector3d<float> const&) =====
void glitch::io::IAttribute::setVector3d()
{
  ;
}


// ===== 31d864 glitch::io::IAttribute::setVector4d(glitch::core::vector4d<float> const&) =====
void glitch::io::IAttribute::setVector4d()
{
  ;
}


// ===== 31d868 glitch::io::IAttribute::setPosition(glitch::core::position2d<int>) =====
void glitch::io::IAttribute::setPosition()
{
  ;
}


// ===== 31d86c glitch::io::IAttribute::setRect(glitch::core::rect<int>) =====
void glitch::io::IAttribute::setRect()
{
  ;
}


// ===== 31d870 glitch::io::IAttribute::setQuaternion(glitch::core::quaternion) =====
va_list glitch::io::IAttribute::setQuaternion(int a1, ...)
{
  va_list result; // r0
  va_list varg_r1; // [sp+4h] [bp+0h] BYREF

  va_start(varg_r1, a1);
  va_copy(result, varg_r1);
  return result;
}


// ===== 31d884 glitch::io::IAttribute::setMatrix(glitch::core::CMatrix4<float>) =====
void glitch::io::IAttribute::setMatrix()
{
  ;
}


// ===== 31d888 glitch::io::IAttribute::setTriangle(glitch::core::triangle3d<float>) =====
void glitch::io::IAttribute::setTriangle()
{
  ;
}


// ===== 31d88c glitch::io::IAttribute::setVector2di(glitch::core::vector2d<int>) =====
void glitch::io::IAttribute::setVector2di()
{
  ;
}


// ===== 31d890 glitch::io::IAttribute::setVector3di(glitch::core::vector3d<int> const&) =====
void glitch::io::IAttribute::setVector3di()
{
  ;
}


// ===== 31d894 glitch::io::IAttribute::setVector4di(glitch::core::vector4d<int> const&) =====
void glitch::io::IAttribute::setVector4di()
{
  ;
}


// ===== 31d898 glitch::io::IAttribute::setLine2d(glitch::core::line2d<float>) =====
void glitch::io::IAttribute::setLine2d()
{
  ;
}


// ===== 31d89c glitch::io::IAttribute::setLine2d(glitch::core::line2d<int>) =====
void glitch::io::IAttribute::setLine2d()
{
  ;
}


// ===== 31d8a0 glitch::io::IAttribute::setLine3d(glitch::core::line3d<float>) =====
void glitch::io::IAttribute::setLine3d()
{
  ;
}


// ===== 31d8a4 glitch::io::IAttribute::setLine3d(glitch::core::line3d<int>) =====
void glitch::io::IAttribute::setLine3d()
{
  ;
}


// ===== 31d8a8 glitch::io::IAttribute::setDimension2d(glitch::core::dimension2d<int>) =====
void glitch::io::IAttribute::setDimension2d()
{
  ;
}


// ===== 31d8b4 glitch::io::IAttribute::setBBox(glitch::core::aabbox3d<float>) =====
void glitch::io::IAttribute::setBBox()
{
  ;
}


// ===== 31d8b8 glitch::io::IAttribute::setPlane(glitch::core::plane3d<float>) =====
void glitch::io::IAttribute::setPlane()
{
  ;
}


// ===== 31d8bc glitch::io::IAttribute::setUserPointer(void *) =====
void __fastcall glitch::io::IAttribute::setUserPointer(glitch::io::IAttribute *this, void *a2)
{
  ;
}


// ===== 31d8c0 glitch::io::IAttribute::setEnum(char const*,char const* const*) =====
void __fastcall glitch::io::IAttribute::setEnum(glitch::io::IAttribute *this, const char *a2, const char *const *a3)
{
  ;
}


// ===== 31d8c4 glitch::io::IAttribute::setTexture(boost::intrusive_ptr<glitch::video::ITexture> const&) =====
void glitch::io::IAttribute::setTexture()
{
  ;
}


// ===== 31d8c8 glitch::io::IAttribute::setLight(boost::intrusive_ptr<glitch::video::CLight>) =====
void glitch::io::IAttribute::setLight()
{
  ;
}


// ===== 31d8cc glitch::IEventReceiver::~IEventReceiver() =====
void __fastcall glitch::IEventReceiver::~IEventReceiver(glitch::IEventReceiver *this)
{
  ;
}


// ===== 31d8d0 CMessage::GetDataPtr(void) =====
int __fastcall CMessage::GetDataPtr(CMessage *this)
{
  return 0;
}


// ===== 31d8d8 IEvent::~IEvent() =====
void __fastcall IEvent::~IEvent(IEvent *this)
{
  ;
}


// ===== 31d8dc IEvent::getEventID(void) =====
int __fastcall IEvent::getEventID(IEvent *this)
{
  return *((_DWORD *)this + 1);
}


// ===== 31d8e4 EvKeyboard::~EvKeyboard() =====
void __fastcall EvKeyboard::~EvKeyboard(EvKeyboard *this)
{
  ;
}


// ===== 31d8e8 EvMouseMove::~EvMouseMove() =====
void __fastcall EvMouseMove::~EvMouseMove(EvMouseMove *this)
{
  ;
}


// ===== 31d8ec EvMouseButton::~EvMouseButton() =====
void __fastcall EvMouseButton::~EvMouseButton(EvMouseButton *this)
{
  ;
}


// ===== 31d8f0 EvMouseWheel::~EvMouseWheel() =====
void __fastcall EvMouseWheel::~EvMouseWheel(EvMouseWheel *this)
{
  ;
}


// ===== 31d8f4 EvGamepad::~EvGamepad() =====
void __fastcall EvGamepad::~EvGamepad(EvGamepad *this)
{
  ;
}


// ===== 31d8f8 glitch::io::CBoolAttribute::getInt(void) =====
int __fastcall glitch::io::CBoolAttribute::getInt(glitch::io::CBoolAttribute *this)
{
  return *((unsigned __int8 *)this + 33);
}


// ===== 31d900 glitch::io::CBoolAttribute::getFloat(void) =====
int __fastcall glitch::io::CBoolAttribute::getFloat(glitch::io::CBoolAttribute *this)
{
  if ( *((_BYTE *)this + 33) )
    return 1065353216;
  else
    return 0;
}


// ===== 31d914 glitch::io::CBoolAttribute::getBool(void) =====
int __fastcall glitch::io::CBoolAttribute::getBool(glitch::io::CBoolAttribute *this)
{
  return *((unsigned __int8 *)this + 33);
}


// ===== 31d91c glitch::io::CBoolAttribute::setInt(int) =====
__int64 __fastcall glitch::io::CBoolAttribute::setInt(__int64 this)
{
  HIDWORD(this) = HIDWORD(this) != 0;
  *(_BYTE *)(this + 33) = BYTE4(this);
  return this;
}


// ===== 31d92c glitch::io::CBoolAttribute::setFloat(float) =====
bool __fastcall glitch::io::CBoolAttribute::setFloat(glitch::io::CBoolAttribute *this, float a2)
{
  _BOOL4 result; // r0

  *((_BYTE *)this + 33) = 0;
  result = a2 == 0.0;
  if ( a2 != 0.0 )
    *((_BYTE *)this + 33) = 1;
  return result;
}


// ===== 31d958 glitch::io::CBoolAttribute::setBool(bool) =====
int __fastcall glitch::io::CBoolAttribute::setBool(int this, bool a2)
{
  *(_BYTE *)(this + 33) = a2;
  return this;
}


// ===== 31d960 glitch::io::CBoolAttribute::getType(void) =====
int __fastcall glitch::io::CBoolAttribute::getType(glitch::io::CBoolAttribute *this)
{
  return 3;
}


// ===== 31d968 glitch::io::CBoolAttribute::getTypeString(void) =====
void *__fastcall glitch::io::CBoolAttribute::getTypeString(glitch::io::CBoolAttribute *this)
{
  return &unk_8BE9E8;
}


// ===== 31d978 glitch::io::CIntAttribute::getInt(void) =====
int __fastcall glitch::io::CIntAttribute::getInt(glitch::io::CIntAttribute *this)
{
  return *((_DWORD *)this + 9);
}


// ===== 31d980 glitch::io::CIntAttribute::getFloat(void) =====
float __fastcall glitch::io::CIntAttribute::getFloat(glitch::io::CIntAttribute *this)
{
  return (float)*((int *)this + 9);
}


// ===== 31d990 glitch::io::CIntAttribute::getBool(void) =====
bool __fastcall glitch::io::CIntAttribute::getBool(glitch::io::CIntAttribute *this)
{
  return *((_DWORD *)this + 9) != 0;
}


// ===== 31d9a0 glitch::io::CIntAttribute::setInt(int) =====
int __fastcall glitch::io::CIntAttribute::setInt(int this, int a2)
{
  *(_DWORD *)(this + 36) = a2;
  return this;
}


// ===== 31d9a8 glitch::io::CIntAttribute::setFloat(float) =====
int __fastcall glitch::io::CIntAttribute::setFloat(glitch::io::CIntAttribute *this, float a2)
{
  *((_DWORD *)this + 9) = (int)a2;
  return (int)a2;
}


// ===== 31d9c0 glitch::io::CIntAttribute::getType(void) =====
int __fastcall glitch::io::CIntAttribute::getType(glitch::io::CIntAttribute *this)
{
  return 0;
}


// ===== 31d9c8 glitch::io::CIntAttribute::getTypeString(void) =====
void *__fastcall glitch::io::CIntAttribute::getTypeString(glitch::io::CIntAttribute *this)
{
  return &unk_8BEA00;
}


// ===== 31d9d8 glitch::io::CFloatAttribute::getInt(void) =====
int __fastcall glitch::io::CFloatAttribute::getInt(glitch::io::CFloatAttribute *this)
{
  return (int)*((float *)this + 9);
}


// ===== 31d9e8 glitch::io::CFloatAttribute::getFloat(void) =====
int __fastcall glitch::io::CFloatAttribute::getFloat(glitch::io::CFloatAttribute *this)
{
  return *((_DWORD *)this + 9);
}


// ===== 31d9f0 glitch::io::CFloatAttribute::getBool(void) =====
bool __fastcall glitch::io::CFloatAttribute::getBool(glitch::io::CFloatAttribute *this)
{
  return *((float *)this + 9) != 0.0;
}


// ===== 31da14 glitch::io::CFloatAttribute::setInt(int) =====
float __fastcall glitch::io::CFloatAttribute::setInt(glitch::io::CFloatAttribute *this, int a2)
{
  *((float *)this + 9) = (float)a2;
  return (float)a2;
}


// ===== 31da2c glitch::io::CFloatAttribute::setFloat(float) =====
int __fastcall glitch::io::CFloatAttribute::setFloat(int this, float a2)
{
  *(float *)(this + 36) = a2;
  return this;
}


// ===== 31da34 glitch::io::CFloatAttribute::getType(void) =====
int __fastcall glitch::io::CFloatAttribute::getType(glitch::io::CFloatAttribute *this)
{
  return 1;
}


// ===== 31da3c glitch::io::CFloatAttribute::getTypeString(void) =====
void *__fastcall glitch::io::CFloatAttribute::getTypeString(glitch::io::CFloatAttribute *this)
{
  return &unk_8BEA10;
}


// ===== 31da4c glitch::io::CNumbersAttribute::getInt(void) =====
int __fastcall glitch::io::CNumbersAttribute::getInt(glitch::io::CNumbersAttribute *this)
{
  if ( !*((_DWORD *)this + 15) )
    return 0;
  if ( *((_BYTE *)this + 64) )
    return (int)**((float **)this + 12);
  return **((_DWORD **)this + 9);
}


// ===== 31da8c glitch::io::CNumbersAttribute::getFloat(void) =====
float __fastcall glitch::io::CNumbersAttribute::getFloat(float **this)
{
  if ( !*(this + 15) )
    return 0.0;
  if ( *((_BYTE *)this + 64) )
    return **(this + 12);
  return (float)*(int *)*(this + 9);
}


// ===== 31dacc glitch::io::CNumbersAttribute::getBool(void) =====
int __fastcall glitch::io::CNumbersAttribute::getBool(glitch::io::CNumbersAttribute *this)
{
  int v1; // r8
  int v2; // r4
  int v3; // r5

  v1 = *((_DWORD *)this + 15);
  if ( v1 )
  {
    v2 = 0;
    v3 = 0;
    do
    {
      if ( *((_BYTE *)this + 64) )
      {
        ++v3;
        if ( *(float *)(*((_DWORD *)this + 12) + v2) != 0.0 )
          return 1;
      }
      else
      {
        ++v3;
        if ( *(_DWORD *)(*((_DWORD *)this + 9) + v2) )
          return 1;
      }
      v2 += 4;
    }
    while ( v3 != v1 );
  }
  return 0;
}


// ===== 31db5c glitch::io::CNumbersAttribute::getPosition(void) =====
int *__fastcall glitch::io::CNumbersAttribute::getPosition(int *this, int a2)
{
  int *v2; // r4
  int v3; // r0
  int v4; // r0
  int v5; // r3
  unsigned int v6; // r3
  bool v7; // cc
  int v8; // r3

  *(this + 1) = 0;
  *this = 0;
  v2 = this;
  if ( *(_BYTE *)(a2 + 64) )
  {
    v3 = *(_DWORD *)(a2 + 60);
    if ( v3 )
      v3 = (int)**(float **)(a2 + 48);
    *v2 = v3;
    if ( *(_DWORD *)(a2 + 60) > 1u )
      v4 = (int)*(float *)(*(_DWORD *)(a2 + 48) + 4);
    else
      v4 = 0;
    v2[1] = v4;
    return v2;
  }
  else
  {
    v5 = *(_DWORD *)(a2 + 60);
    if ( v5 )
      v5 = **(_DWORD **)(a2 + 36);
    *this = v5;
    v6 = *(_DWORD *)(a2 + 60);
    v7 = v6 > 1;
    if ( v6 <= 1 )
      v8 = 0;
    else
      v8 = *(_DWORD *)(a2 + 36);
    if ( v7 )
      v8 = *(_DWORD *)(v8 + 4);
    *(this + 1) = v8;
  }
  return this;
}


// ===== 31dbf8 glitch::io::CNumbersAttribute::getVector2d(void) =====
float *__fastcall glitch::io::CNumbersAttribute::getVector2d(float *this, int a2)
{
  int v2; // r3
  float *v3; // r4
  unsigned int v4; // r3
  bool v5; // cc
  int v6; // r3
  float v7; // r0

  v2 = 0;
  *this = 0.0;
  *(this + 1) = 0.0;
  v3 = this;
  if ( !*(_BYTE *)(a2 + 64) )
  {
    if ( *(_DWORD *)(a2 + 60) )
    {
      *this = (float)**(int **)(a2 + 36);
      if ( *(_DWORD *)(a2 + 60) <= 1u )
      {
        v7 = 0.0;
        goto LABEL_14;
      }
    }
    else
    {
      *this = 0.0;
      if ( *(_DWORD *)(a2 + 60) <= 1u )
      {
        v7 = 0.0;
LABEL_14:
        v3[1] = v7;
        return v3;
      }
    }
    v7 = (float)*(int *)(*(_DWORD *)(a2 + 36) + 4);
    goto LABEL_14;
  }
  if ( *(_DWORD *)(a2 + 60) )
    v2 = **(_DWORD **)(a2 + 48);
  *(_DWORD *)this = v2;
  v4 = *(_DWORD *)(a2 + 60);
  v5 = v4 > 1;
  if ( v4 <= 1 )
    v6 = 0;
  else
    v6 = *(_DWORD *)(a2 + 48);
  if ( v5 )
    v6 = *(_DWORD *)(v6 + 4);
  *((_DWORD *)this + 1) = v6;
  return this;
}


// ===== 31dcb0 glitch::io::CNumbersAttribute::getVector3d(void) =====
float *__fastcall glitch::io::CNumbersAttribute::getVector3d(float *this, int a2)
{
  int v2; // r3
  float *v3; // r4
  unsigned int v4; // r3
  bool v5; // cc
  int v6; // r3
  unsigned int v7; // r3
  bool v8; // cc
  int v9; // r3
  float v10; // r0

  v2 = 0;
  *this = 0.0;
  *(this + 1) = 0.0;
  *(this + 2) = 0.0;
  v3 = this;
  if ( !*(_BYTE *)(a2 + 64) )
  {
    if ( *(_DWORD *)(a2 + 60) )
    {
      *this = (float)**(int **)(a2 + 36);
      if ( *(_DWORD *)(a2 + 60) <= 1u )
      {
        v10 = 0.0;
        goto LABEL_19;
      }
    }
    else
    {
      *this = 0.0;
      if ( *(_DWORD *)(a2 + 60) <= 1u )
      {
        v10 = 0.0;
LABEL_19:
        v3[1] = v10;
        if ( *(_DWORD *)(a2 + 60) > 2u )
          v3[2] = (float)*(int *)(*(_DWORD *)(a2 + 36) + 8);
        else
          v3[2] = 0.0;
        return v3;
      }
    }
    v10 = (float)*(int *)(*(_DWORD *)(a2 + 36) + 4);
    goto LABEL_19;
  }
  if ( *(_DWORD *)(a2 + 60) )
    v2 = **(_DWORD **)(a2 + 48);
  *(_DWORD *)this = v2;
  v4 = *(_DWORD *)(a2 + 60);
  v5 = v4 > 1;
  if ( v4 <= 1 )
    v6 = 0;
  else
    v6 = *(_DWORD *)(a2 + 48);
  if ( v5 )
    v6 = *(_DWORD *)(v6 + 4);
  *((_DWORD *)this + 1) = v6;
  v7 = *(_DWORD *)(a2 + 60);
  v8 = v7 > 2;
  if ( v7 <= 2 )
    v9 = 0;
  else
    v9 = *(_DWORD *)(a2 + 48);
  if ( v8 )
    v9 = *(_DWORD *)(v9 + 8);
  *((_DWORD *)this + 2) = v9;
  return this;
}


// ===== 31ddac glitch::io::CNumbersAttribute::getVector4d(void) =====
float *__fastcall glitch::io::CNumbersAttribute::getVector4d(float *this, int a2)
{
  int v2; // r3
  float *v3; // r4
  unsigned int v4; // r3
  bool v5; // cc
  int v6; // r3
  unsigned int v7; // r3
  bool v8; // cc
  int v9; // r3
  unsigned int v10; // r3
  bool v11; // cc
  int v12; // r3
  float v13; // r0

  v2 = 0;
  *this = 0.0;
  *(this + 1) = 0.0;
  *(this + 2) = 0.0;
  *(this + 3) = 0.0;
  v3 = this;
  if ( !*(_BYTE *)(a2 + 64) )
  {
    if ( *(_DWORD *)(a2 + 60) )
    {
      *this = (float)**(int **)(a2 + 36);
      if ( *(_DWORD *)(a2 + 60) <= 1u )
      {
        v13 = 0.0;
LABEL_24:
        v3[1] = v13;
        if ( *(_DWORD *)(a2 + 60) > 2u )
        {
          v3[2] = (float)*(int *)(*(_DWORD *)(a2 + 36) + 8);
          if ( *(_DWORD *)(a2 + 60) <= 3u )
            goto LABEL_26;
        }
        else
        {
          v3[2] = 0.0;
          if ( *(_DWORD *)(a2 + 60) <= 3u )
          {
LABEL_26:
            v3[3] = 0.0;
            return v3;
          }
        }
        v3[3] = (float)*(int *)(*(_DWORD *)(a2 + 36) + 12);
        return v3;
      }
    }
    else
    {
      *this = 0.0;
      if ( *(_DWORD *)(a2 + 60) <= 1u )
      {
        v13 = 0.0;
        goto LABEL_24;
      }
    }
    v13 = (float)*(int *)(*(_DWORD *)(a2 + 36) + 4);
    goto LABEL_24;
  }
  if ( *(_DWORD *)(a2 + 60) )
    v2 = **(_DWORD **)(a2 + 48);
  *(_DWORD *)this = v2;
  v4 = *(_DWORD *)(a2 + 60);
  v5 = v4 > 1;
  if ( v4 <= 1 )
    v6 = 0;
  else
    v6 = *(_DWORD *)(a2 + 48);
  if ( v5 )
    v6 = *(_DWORD *)(v6 + 4);
  *((_DWORD *)this + 1) = v6;
  v7 = *(_DWORD *)(a2 + 60);
  v8 = v7 > 2;
  if ( v7 <= 2 )
    v9 = 0;
  else
    v9 = *(_DWORD *)(a2 + 48);
  if ( v8 )
    v9 = *(_DWORD *)(v9 + 8);
  *((_DWORD *)this + 2) = v9;
  v10 = *(_DWORD *)(a2 + 60);
  v11 = v10 > 3;
  if ( v10 <= 3 )
    v12 = 0;
  else
    v12 = *(_DWORD *)(a2 + 48);
  if ( v11 )
    v12 = *(_DWORD *)(v12 + 12);
  *((_DWORD *)this + 3) = v12;
  return this;
}


// ===== 31defc glitch::io::CNumbersAttribute::getColorf(void) =====
float *__fastcall glitch::io::CNumbersAttribute::getColorf(float *this, int a2)
{
  int v2; // r3
  float *v3; // r4
  unsigned int v4; // r3
  bool v5; // cc
  int v6; // r3
  unsigned int v7; // r3
  bool v8; // cc
  int v9; // r3
  unsigned int v10; // r3
  bool v11; // cc
  int v12; // r3
  float v13; // r0

  v2 = 0;
  *(this + 3) = 1.0;
  *this = 0.0;
  *(this + 1) = 0.0;
  *(this + 2) = 0.0;
  v3 = this;
  if ( !*(_BYTE *)(a2 + 64) )
  {
    if ( *(_DWORD *)(a2 + 60) )
    {
      *this = (float)**(int **)(a2 + 36) / 255.0;
      if ( *(_DWORD *)(a2 + 60) <= 1u )
      {
        v13 = 0.0;
LABEL_24:
        v3[1] = v13;
        if ( *(_DWORD *)(a2 + 60) > 2u )
        {
          v3[2] = (float)*(int *)(*(_DWORD *)(a2 + 36) + 8) / 255.0;
          if ( *(_DWORD *)(a2 + 60) <= 3u )
            goto LABEL_26;
        }
        else
        {
          v3[2] = 0.0;
          if ( *(_DWORD *)(a2 + 60) <= 3u )
          {
LABEL_26:
            v3[3] = 0.0;
            return v3;
          }
        }
        v3[3] = (float)*(int *)(*(_DWORD *)(a2 + 36) + 12) / 255.0;
        return v3;
      }
    }
    else
    {
      *this = 0.0;
      if ( *(_DWORD *)(a2 + 60) <= 1u )
      {
        v13 = 0.0;
        goto LABEL_24;
      }
    }
    v13 = (float)*(int *)(*(_DWORD *)(a2 + 36) + 4) / 255.0;
    goto LABEL_24;
  }
  if ( *(_DWORD *)(a2 + 60) )
    v2 = **(_DWORD **)(a2 + 48);
  *(_DWORD *)this = v2;
  v4 = *(_DWORD *)(a2 + 60);
  v5 = v4 > 1;
  if ( v4 <= 1 )
    v6 = 0;
  else
    v6 = *(_DWORD *)(a2 + 48);
  if ( v5 )
    v6 = *(_DWORD *)(v6 + 4);
  *((_DWORD *)this + 1) = v6;
  v7 = *(_DWORD *)(a2 + 60);
  v8 = v7 > 2;
  if ( v7 <= 2 )
    v9 = 0;
  else
    v9 = *(_DWORD *)(a2 + 48);
  if ( v8 )
    v9 = *(_DWORD *)(v9 + 8);
  *((_DWORD *)this + 2) = v9;
  v10 = *(_DWORD *)(a2 + 60);
  v11 = v10 > 3;
  if ( v10 <= 3 )
    v12 = 0;
  else
    v12 = *(_DWORD *)(a2 + 48);
  if ( v11 )
    v12 = *(_DWORD *)(v12 + 12);
  *((_DWORD *)this + 3) = v12;
  return this;
}


// ===== 31e080 glitch::io::CNumbersAttribute::getColor(void) =====
int __fastcall glitch::io::CNumbersAttribute::getColor(glitch::io::CNumbersAttribute *this)
{
  float v2[5]; // [sp+4h] [bp-14h] BYREF

  (*(void (__fastcall **)(float *, glitch::io::CNumbersAttribute *))(*(_DWORD *)this + 20))(v2, this);
  return (unsigned __int8)(unsigned int)(float)(v2[0] * 255.0)
       | (unsigned __int16)((unsigned __int8)(unsigned int)(float)(v2[1] * 255.0) << 8)
       | ((unsigned __int8)(unsigned int)(float)(v2[2] * 255.0) << 16) & 0xFFFFFF
       | ((unsigned __int8)(unsigned int)(float)(v2[3] * 255.0) << 24);
}


// ===== 31e120 glitch::io::CNumbersAttribute::getRect(void) =====
int *__fastcall glitch::io::CNumbersAttribute::getRect(int *this, int a2)
{
  int v2; // r7
  int v3; // r6
  int v4; // r2
  unsigned int v5; // r3
  bool v6; // cc
  int v7; // r3

  *(this + 3) = 0;
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  if ( *(_BYTE *)(a2 + 64) )
  {
    v2 = *(_DWORD *)(a2 + 60);
    if ( v2 )
      v2 = (int)**(float **)(a2 + 48);
    *this = v2;
    if ( *(_DWORD *)(a2 + 60) > 1u )
      v3 = (int)*(float *)(*(_DWORD *)(a2 + 48) + 4);
    else
      v3 = 0;
    *(this + 1) = v3;
    if ( *(_DWORD *)(a2 + 60) > 2u )
    {
      *(this + 2) = (int)*(float *)(*(_DWORD *)(a2 + 48) + 8);
      if ( *(_DWORD *)(a2 + 60) > 3u )
        goto LABEL_9;
    }
    else
    {
      *(this + 2) = (int)(float)v2;
      if ( *(_DWORD *)(a2 + 60) > 3u )
      {
LABEL_9:
        *(this + 3) = (int)*(float *)(*(_DWORD *)(a2 + 48) + 12);
        return this;
      }
    }
    *(this + 3) = (int)(float)v3;
  }
  else
  {
    v4 = *(_DWORD *)(a2 + 60);
    if ( v4 )
      v4 = **(_DWORD **)(a2 + 36);
    *this = v4;
    v5 = *(_DWORD *)(a2 + 60);
    v6 = v5 > 1;
    if ( v5 <= 1 )
      v7 = 0;
    else
      v7 = *(_DWORD *)(a2 + 36);
    if ( v6 )
      v7 = *(_DWORD *)(v7 + 4);
    *(this + 1) = v7;
    if ( *(_DWORD *)(a2 + 60) > 2u )
      v4 = *(_DWORD *)(*(_DWORD *)(a2 + 36) + 8);
    *(this + 2) = v4;
    if ( *(_DWORD *)(a2 + 60) > 3u )
      v7 = *(_DWORD *)(*(_DWORD *)(a2 + 36) + 12);
    *(this + 3) = v7;
  }
  return this;
}


// ===== 31e25c glitch::io::CNumbersAttribute::getQuaternion(void) =====
float *__fastcall glitch::io::CNumbersAttribute::getQuaternion(float *this, int a2)
{
  int v2; // r3
  float *v3; // r4
  unsigned int v4; // r3
  bool v5; // cc
  int v6; // r3
  unsigned int v7; // r3
  bool v8; // cc
  int v9; // r3
  unsigned int v10; // r3
  bool v11; // cc
  int v12; // r3
  float v13; // r0

  v2 = 0;
  *(this + 3) = 1.0;
  *this = 0.0;
  *(this + 1) = 0.0;
  *(this + 2) = 0.0;
  v3 = this;
  if ( !*(_BYTE *)(a2 + 64) )
  {
    if ( *(_DWORD *)(a2 + 60) )
    {
      *this = (float)**(int **)(a2 + 36);
      if ( *(_DWORD *)(a2 + 60) <= 1u )
      {
        v13 = 0.0;
LABEL_24:
        v3[1] = v13;
        if ( *(_DWORD *)(a2 + 60) > 2u )
        {
          v3[2] = (float)*(int *)(*(_DWORD *)(a2 + 36) + 8);
          if ( *(_DWORD *)(a2 + 60) <= 3u )
            goto LABEL_26;
        }
        else
        {
          v3[2] = 0.0;
          if ( *(_DWORD *)(a2 + 60) <= 3u )
          {
LABEL_26:
            v3[3] = 0.0;
            return v3;
          }
        }
        v3[3] = (float)*(int *)(*(_DWORD *)(a2 + 36) + 12);
        return v3;
      }
    }
    else
    {
      *this = 0.0;
      if ( *(_DWORD *)(a2 + 60) <= 1u )
      {
        v13 = 0.0;
        goto LABEL_24;
      }
    }
    v13 = (float)*(int *)(*(_DWORD *)(a2 + 36) + 4);
    goto LABEL_24;
  }
  if ( *(_DWORD *)(a2 + 60) )
    v2 = **(_DWORD **)(a2 + 48);
  *(_DWORD *)this = v2;
  v4 = *(_DWORD *)(a2 + 60);
  v5 = v4 > 1;
  if ( v4 <= 1 )
    v6 = 0;
  else
    v6 = *(_DWORD *)(a2 + 48);
  if ( v5 )
    v6 = *(_DWORD *)(v6 + 4);
  *((_DWORD *)this + 1) = v6;
  v7 = *(_DWORD *)(a2 + 60);
  v8 = v7 > 2;
  if ( v7 <= 2 )
    v9 = 0;
  else
    v9 = *(_DWORD *)(a2 + 48);
  if ( v8 )
    v9 = *(_DWORD *)(v9 + 8);
  *((_DWORD *)this + 2) = v9;
  v10 = *(_DWORD *)(a2 + 60);
  v11 = v10 > 3;
  if ( v10 <= 3 )
    v12 = 0;
  else
    v12 = *(_DWORD *)(a2 + 48);
  if ( v11 )
    v12 = *(_DWORD *)(v12 + 12);
  *((_DWORD *)this + 3) = v12;
  return this;
}


// ===== 31e3b0 glitch::io::CNumbersAttribute::getTriangle(void) =====
float *__fastcall glitch::io::CNumbersAttribute::getTriangle(float *this, int a2)
{
  int v2; // r3
  float *v3; // r4
  unsigned int v4; // r3
  bool v5; // cc
  int v6; // r3
  unsigned int v7; // r3
  bool v8; // cc
  int v9; // r3
  unsigned int v10; // r3
  bool v11; // cc
  int v12; // r3
  unsigned int v13; // r3
  bool v14; // cc
  int v15; // r3
  unsigned int v16; // r3
  bool v17; // cc
  int v18; // r3
  unsigned int v19; // r3
  bool v20; // cc
  int v21; // r3
  unsigned int v22; // r3
  bool v23; // cc
  int v24; // r3
  unsigned int v25; // r3
  bool v26; // cc
  int v27; // r3
  float v28; // r0

  v2 = 0;
  *this = 0.0;
  *(this + 1) = 0.0;
  *(this + 2) = 0.0;
  *(this + 3) = 0.0;
  *(this + 4) = 0.0;
  *(this + 5) = 0.0;
  *(this + 6) = 0.0;
  *(this + 7) = 0.0;
  *(this + 8) = 0.0;
  v3 = this;
  if ( !*(_BYTE *)(a2 + 64) )
  {
    if ( *(_DWORD *)(a2 + 60) )
    {
      *this = (float)**(int **)(a2 + 36);
      if ( *(_DWORD *)(a2 + 60) <= 1u )
      {
        v28 = 0.0;
LABEL_49:
        v3[1] = v28;
        if ( *(_DWORD *)(a2 + 60) > 2u )
        {
          v3[2] = (float)*(int *)(*(_DWORD *)(a2 + 36) + 8);
          if ( *(_DWORD *)(a2 + 60) <= 3u )
          {
LABEL_51:
            v3[3] = 0.0;
            if ( *(_DWORD *)(a2 + 60) <= 4u )
              goto LABEL_52;
            goto LABEL_68;
          }
        }
        else
        {
          v3[2] = 0.0;
          if ( *(_DWORD *)(a2 + 60) <= 3u )
            goto LABEL_51;
        }
        v3[3] = (float)*(int *)(*(_DWORD *)(a2 + 36) + 12);
        if ( *(_DWORD *)(a2 + 60) <= 4u )
        {
LABEL_52:
          v3[4] = 0.0;
          if ( *(_DWORD *)(a2 + 60) <= 5u )
            goto LABEL_53;
          goto LABEL_66;
        }
LABEL_68:
        v3[4] = (float)*(int *)(*(_DWORD *)(a2 + 36) + 16);
        if ( *(_DWORD *)(a2 + 60) <= 5u )
        {
LABEL_53:
          v3[5] = 0.0;
          if ( *(_DWORD *)(a2 + 60) <= 6u )
            goto LABEL_54;
          goto LABEL_64;
        }
LABEL_66:
        v3[5] = (float)*(int *)(*(_DWORD *)(a2 + 36) + 20);
        if ( *(_DWORD *)(a2 + 60) <= 6u )
        {
LABEL_54:
          v3[6] = 0.0;
          if ( *(_DWORD *)(a2 + 60) <= 7u )
            goto LABEL_55;
          goto LABEL_62;
        }
LABEL_64:
        v3[6] = (float)*(int *)(*(_DWORD *)(a2 + 36) + 24);
        if ( *(_DWORD *)(a2 + 60) <= 7u )
        {
LABEL_55:
          v3[7] = 0.0;
          if ( *(_DWORD *)(a2 + 60) <= 8u )
          {
LABEL_56:
            v3[8] = 0.0;
            return v3;
          }
LABEL_61:
          v3[8] = (float)*(int *)(*(_DWORD *)(a2 + 36) + 32);
          return v3;
        }
LABEL_62:
        v3[7] = (float)*(int *)(*(_DWORD *)(a2 + 36) + 28);
        if ( *(_DWORD *)(a2 + 60) <= 8u )
          goto LABEL_56;
        goto LABEL_61;
      }
    }
    else
    {
      *this = 0.0;
      if ( *(_DWORD *)(a2 + 60) <= 1u )
      {
        v28 = 0.0;
        goto LABEL_49;
      }
    }
    v28 = (float)*(int *)(*(_DWORD *)(a2 + 36) + 4);
    goto LABEL_49;
  }
  if ( *(_DWORD *)(a2 + 60) )
    v2 = **(_DWORD **)(a2 + 48);
  *(_DWORD *)this = v2;
  v4 = *(_DWORD *)(a2 + 60);
  v5 = v4 > 1;
  if ( v4 <= 1 )
    v6 = 0;
  else
    v6 = *(_DWORD *)(a2 + 48);
  if ( v5 )
    v6 = *(_DWORD *)(v6 + 4);
  *((_DWORD *)this + 1) = v6;
  v7 = *(_DWORD *)(a2 + 60);
  v8 = v7 > 2;
  if ( v7 <= 2 )
    v9 = 0;
  else
    v9 = *(_DWORD *)(a2 + 48);
  if ( v8 )
    v9 = *(_DWORD *)(v9 + 8);
  *((_DWORD *)this + 2) = v9;
  v10 = *(_DWORD *)(a2 + 60);
  v11 = v10 > 3;
  if ( v10 <= 3 )
    v12 = 0;
  else
    v12 = *(_DWORD *)(a2 + 48);
  if ( v11 )
    v12 = *(_DWORD *)(v12 + 12);
  *((_DWORD *)this + 3) = v12;
  v13 = *(_DWORD *)(a2 + 60);
  v14 = v13 > 4;
  if ( v13 <= 4 )
    v15 = 0;
  else
    v15 = *(_DWORD *)(a2 + 48);
  if ( v14 )
    v15 = *(_DWORD *)(v15 + 16);
  *((_DWORD *)this + 4) = v15;
  v16 = *(_DWORD *)(a2 + 60);
  v17 = v16 > 5;
  if ( v16 <= 5 )
    v18 = 0;
  else
    v18 = *(_DWORD *)(a2 + 48);
  if ( v17 )
    v18 = *(_DWORD *)(v18 + 20);
  *((_DWORD *)this + 5) = v18;
  v19 = *(_DWORD *)(a2 + 60);
  v20 = v19 > 6;
  if ( v19 <= 6 )
    v21 = 0;
  else
    v21 = *(_DWORD *)(a2 + 48);
  if ( v20 )
    v21 = *(_DWORD *)(v21 + 24);
  *((_DWORD *)this + 6) = v21;
  v22 = *(_DWORD *)(a2 + 60);
  v23 = v22 > 7;
  if ( v22 <= 7 )
    v24 = 0;
  else
    v24 = *(_DWORD *)(a2 + 48);
  if ( v23 )
    v24 = *(_DWORD *)(v24 + 28);
  *((_DWORD *)this + 7) = v24;
  v25 = *(_DWORD *)(a2 + 60);
  v26 = v25 > 8;
  if ( v25 <= 8 )
    v27 = 0;
  else
    v27 = *(_DWORD *)(a2 + 48);
  if ( v26 )
    v27 = *(_DWORD *)(v27 + 32);
  *((_DWORD *)this + 8) = v27;
  return this;
}


// ===== 31e6a4 glitch::io::CNumbersAttribute::getPlane(void) =====
float *__fastcall glitch::io::CNumbersAttribute::getPlane(float *this, int a2)
{
  int v2; // r3
  float *v3; // r4
  unsigned int v4; // r3
  bool v5; // cc
  int v6; // r3
  unsigned int v7; // r3
  bool v8; // cc
  int v9; // r3
  unsigned int v10; // r3
  bool v11; // cc
  int v12; // r3
  float v13; // r0

  v2 = 0;
  *(this + 1) = 1.0;
  *(this + 3) = -0.0;
  *this = 0.0;
  *(this + 2) = 0.0;
  v3 = this;
  if ( !*(_BYTE *)(a2 + 64) )
  {
    if ( *(_DWORD *)(a2 + 60) )
    {
      *this = (float)**(int **)(a2 + 36);
      if ( *(_DWORD *)(a2 + 60) <= 1u )
      {
        v13 = 0.0;
LABEL_24:
        v3[1] = v13;
        if ( *(_DWORD *)(a2 + 60) > 2u )
        {
          v3[2] = (float)*(int *)(*(_DWORD *)(a2 + 36) + 8);
          if ( *(_DWORD *)(a2 + 60) <= 3u )
            goto LABEL_26;
        }
        else
        {
          v3[2] = 0.0;
          if ( *(_DWORD *)(a2 + 60) <= 3u )
          {
LABEL_26:
            v3[3] = 0.0;
            return v3;
          }
        }
        v3[3] = (float)*(int *)(*(_DWORD *)(a2 + 36) + 12);
        return v3;
      }
    }
    else
    {
      *this = 0.0;
      if ( *(_DWORD *)(a2 + 60) <= 1u )
      {
        v13 = 0.0;
        goto LABEL_24;
      }
    }
    v13 = (float)*(int *)(*(_DWORD *)(a2 + 36) + 4);
    goto LABEL_24;
  }
  if ( *(_DWORD *)(a2 + 60) )
    v2 = **(_DWORD **)(a2 + 48);
  *(_DWORD *)this = v2;
  v4 = *(_DWORD *)(a2 + 60);
  v5 = v4 > 1;
  if ( v4 <= 1 )
    v6 = 0;
  else
    v6 = *(_DWORD *)(a2 + 48);
  if ( v5 )
    v6 = *(_DWORD *)(v6 + 4);
  *((_DWORD *)this + 1) = v6;
  v7 = *(_DWORD *)(a2 + 60);
  v8 = v7 > 2;
  if ( v7 <= 2 )
    v9 = 0;
  else
    v9 = *(_DWORD *)(a2 + 48);
  if ( v8 )
    v9 = *(_DWORD *)(v9 + 8);
  *((_DWORD *)this + 2) = v9;
  v10 = *(_DWORD *)(a2 + 60);
  v11 = v10 > 3;
  if ( v10 <= 3 )
    v12 = 0;
  else
    v12 = *(_DWORD *)(a2 + 48);
  if ( v11 )
    v12 = *(_DWORD *)(v12 + 12);
  *((_DWORD *)this + 3) = v12;
  return this;
}


// ===== 31e7fc glitch::io::CNumbersAttribute::getBBox(void) =====
float *__fastcall glitch::io::CNumbersAttribute::getBBox(float *this, int a2)
{
  float *v2; // r4
  int v3; // r3
  bool v4; // zf
  _DWORD *v5; // r3
  unsigned int v6; // r3
  bool v7; // cc
  int v8; // r3
  unsigned int v9; // r3
  bool v10; // cc
  int v11; // r3
  unsigned int v12; // r3
  bool v13; // cc
  int v14; // r3
  unsigned int v15; // r3
  bool v16; // cc
  int v17; // r3
  unsigned int v18; // r3
  bool v19; // cc
  int v20; // r3
  float v21; // r0

  *(this + 2) = -1.0;
  *(this + 5) = 1.0;
  *this = -1.0;
  *(this + 1) = -1.0;
  *(this + 3) = 1.0;
  *(this + 4) = 1.0;
  v2 = this;
  if ( !*(_BYTE *)(a2 + 64) )
  {
    if ( *(_DWORD *)(a2 + 60) )
    {
      *this = (float)**(int **)(a2 + 36);
      if ( *(_DWORD *)(a2 + 60) <= 1u )
      {
        v21 = 0.0;
LABEL_37:
        v2[1] = v21;
        if ( *(_DWORD *)(a2 + 60) > 2u )
        {
          v2[2] = (float)*(int *)(*(_DWORD *)(a2 + 36) + 8);
          if ( *(_DWORD *)(a2 + 60) <= 3u )
          {
LABEL_39:
            v2[3] = 0.0;
            if ( *(_DWORD *)(a2 + 60) <= 4u )
              goto LABEL_40;
            goto LABEL_47;
          }
        }
        else
        {
          v2[2] = 0.0;
          if ( *(_DWORD *)(a2 + 60) <= 3u )
            goto LABEL_39;
        }
        v2[3] = (float)*(int *)(*(_DWORD *)(a2 + 36) + 12);
        if ( *(_DWORD *)(a2 + 60) <= 4u )
        {
LABEL_40:
          v2[4] = 0.0;
          if ( *(_DWORD *)(a2 + 60) <= 5u )
          {
LABEL_41:
            v2[5] = 0.0;
            return v2;
          }
LABEL_46:
          v2[5] = (float)*(int *)(*(_DWORD *)(a2 + 36) + 20);
          return v2;
        }
LABEL_47:
        v2[4] = (float)*(int *)(*(_DWORD *)(a2 + 36) + 16);
        if ( *(_DWORD *)(a2 + 60) <= 5u )
          goto LABEL_41;
        goto LABEL_46;
      }
    }
    else
    {
      *this = 0.0;
      if ( *(_DWORD *)(a2 + 60) <= 1u )
      {
        v21 = 0.0;
        goto LABEL_37;
      }
    }
    v21 = (float)*(int *)(*(_DWORD *)(a2 + 36) + 4);
    goto LABEL_37;
  }
  v3 = *(_DWORD *)(a2 + 60);
  v4 = v3 == 0;
  if ( v3 )
    v5 = *(_DWORD **)(a2 + 48);
  else
    v5 = nullptr;
  if ( !v4 )
    v5 = (_DWORD *)*v5;
  *(_DWORD *)this = v5;
  v6 = *(_DWORD *)(a2 + 60);
  v7 = v6 > 1;
  if ( v6 <= 1 )
    v8 = 0;
  else
    v8 = *(_DWORD *)(a2 + 48);
  if ( v7 )
    v8 = *(_DWORD *)(v8 + 4);
  *((_DWORD *)this + 1) = v8;
  v9 = *(_DWORD *)(a2 + 60);
  v10 = v9 > 2;
  if ( v9 <= 2 )
    v11 = 0;
  else
    v11 = *(_DWORD *)(a2 + 48);
  if ( v10 )
    v11 = *(_DWORD *)(v11 + 8);
  *((_DWORD *)this + 2) = v11;
  v12 = *(_DWORD *)(a2 + 60);
  v13 = v12 > 3;
  if ( v12 <= 3 )
    v14 = 0;
  else
    v14 = *(_DWORD *)(a2 + 48);
  if ( v13 )
    v14 = *(_DWORD *)(v14 + 12);
  *((_DWORD *)this + 3) = v14;
  v15 = *(_DWORD *)(a2 + 60);
  v16 = v15 > 4;
  if ( v15 <= 4 )
    v17 = 0;
  else
    v17 = *(_DWORD *)(a2 + 48);
  if ( v16 )
    v17 = *(_DWORD *)(v17 + 16);
  *((_DWORD *)this + 4) = v17;
  v18 = *(_DWORD *)(a2 + 60);
  v19 = v18 > 5;
  if ( v18 <= 5 )
    v20 = 0;
  else
    v20 = *(_DWORD *)(a2 + 48);
  if ( v19 )
    v20 = *(_DWORD *)(v20 + 20);
  *((_DWORD *)this + 5) = v20;
  return this;
}


// ===== 31ea00 glitch::io::CNumbersAttribute::getLine2d(void) =====
float *__fastcall glitch::io::CNumbersAttribute::getLine2d(float *this, int a2)
{
  int v2; // r3
  float *v3; // r4
  unsigned int v4; // r3
  bool v5; // cc
  int v6; // r3
  unsigned int v7; // r3
  bool v8; // cc
  int v9; // r3
  unsigned int v10; // r3
  bool v11; // cc
  int v12; // r3
  float v13; // r0

  v2 = 0;
  *(this + 3) = 1.0;
  *this = 0.0;
  *(this + 1) = 0.0;
  *(this + 2) = 1.0;
  v3 = this;
  if ( !*(_BYTE *)(a2 + 64) )
  {
    if ( *(_DWORD *)(a2 + 60) )
    {
      *this = (float)**(int **)(a2 + 36);
      if ( *(_DWORD *)(a2 + 60) <= 1u )
      {
        v13 = 0.0;
LABEL_24:
        v3[1] = v13;
        if ( *(_DWORD *)(a2 + 60) > 2u )
        {
          v3[2] = (float)*(int *)(*(_DWORD *)(a2 + 36) + 8);
          if ( *(_DWORD *)(a2 + 60) <= 3u )
            goto LABEL_26;
        }
        else
        {
          v3[2] = 0.0;
          if ( *(_DWORD *)(a2 + 60) <= 3u )
          {
LABEL_26:
            v3[3] = 0.0;
            return v3;
          }
        }
        v3[3] = (float)*(int *)(*(_DWORD *)(a2 + 36) + 12);
        return v3;
      }
    }
    else
    {
      *this = 0.0;
      if ( *(_DWORD *)(a2 + 60) <= 1u )
      {
        v13 = 0.0;
        goto LABEL_24;
      }
    }
    v13 = (float)*(int *)(*(_DWORD *)(a2 + 36) + 4);
    goto LABEL_24;
  }
  if ( *(_DWORD *)(a2 + 60) )
    v2 = **(_DWORD **)(a2 + 48);
  *(_DWORD *)this = v2;
  v4 = *(_DWORD *)(a2 + 60);
  v5 = v4 > 1;
  if ( v4 <= 1 )
    v6 = 0;
  else
    v6 = *(_DWORD *)(a2 + 48);
  if ( v5 )
    v6 = *(_DWORD *)(v6 + 4);
  *((_DWORD *)this + 1) = v6;
  v7 = *(_DWORD *)(a2 + 60);
  v8 = v7 > 2;
  if ( v7 <= 2 )
    v9 = 0;
  else
    v9 = *(_DWORD *)(a2 + 48);
  if ( v8 )
    v9 = *(_DWORD *)(v9 + 8);
  *((_DWORD *)this + 2) = v9;
  v10 = *(_DWORD *)(a2 + 60);
  v11 = v10 > 3;
  if ( v10 <= 3 )
    v12 = 0;
  else
    v12 = *(_DWORD *)(a2 + 48);
  if ( v11 )
    v12 = *(_DWORD *)(v12 + 12);
  *((_DWORD *)this + 3) = v12;
  return this;
}


// ===== 31eb54 glitch::io::CNumbersAttribute::getLine3d(void) =====
float *__fastcall glitch::io::CNumbersAttribute::getLine3d(float *this, int a2)
{
  int v2; // r3
  float *v3; // r4
  unsigned int v4; // r3
  bool v5; // cc
  int v6; // r3
  unsigned int v7; // r3
  bool v8; // cc
  int v9; // r3
  unsigned int v10; // r3
  bool v11; // cc
  int v12; // r3
  unsigned int v13; // r3
  bool v14; // cc
  int v15; // r3
  unsigned int v16; // r3
  bool v17; // cc
  int v18; // r3
  float v19; // r0

  v2 = 0;
  *(this + 5) = 1.0;
  *this = 0.0;
  *(this + 1) = 0.0;
  *(this + 2) = 0.0;
  *(this + 3) = 1.0;
  *(this + 4) = 1.0;
  v3 = this;
  if ( !*(_BYTE *)(a2 + 64) )
  {
    if ( *(_DWORD *)(a2 + 60) )
    {
      *this = (float)**(int **)(a2 + 36);
      if ( *(_DWORD *)(a2 + 60) <= 1u )
      {
        v19 = 0.0;
LABEL_34:
        v3[1] = v19;
        if ( *(_DWORD *)(a2 + 60) > 2u )
        {
          v3[2] = (float)*(int *)(*(_DWORD *)(a2 + 36) + 8);
          if ( *(_DWORD *)(a2 + 60) <= 3u )
          {
LABEL_36:
            v3[3] = 0.0;
            if ( *(_DWORD *)(a2 + 60) <= 4u )
              goto LABEL_37;
            goto LABEL_44;
          }
        }
        else
        {
          v3[2] = 0.0;
          if ( *(_DWORD *)(a2 + 60) <= 3u )
            goto LABEL_36;
        }
        v3[3] = (float)*(int *)(*(_DWORD *)(a2 + 36) + 12);
        if ( *(_DWORD *)(a2 + 60) <= 4u )
        {
LABEL_37:
          v3[4] = 0.0;
          if ( *(_DWORD *)(a2 + 60) <= 5u )
          {
LABEL_38:
            v3[5] = 0.0;
            return v3;
          }
LABEL_43:
          v3[5] = (float)*(int *)(*(_DWORD *)(a2 + 36) + 20);
          return v3;
        }
LABEL_44:
        v3[4] = (float)*(int *)(*(_DWORD *)(a2 + 36) + 16);
        if ( *(_DWORD *)(a2 + 60) <= 5u )
          goto LABEL_38;
        goto LABEL_43;
      }
    }
    else
    {
      *this = 0.0;
      if ( *(_DWORD *)(a2 + 60) <= 1u )
      {
        v19 = 0.0;
        goto LABEL_34;
      }
    }
    v19 = (float)*(int *)(*(_DWORD *)(a2 + 36) + 4);
    goto LABEL_34;
  }
  if ( *(_DWORD *)(a2 + 60) )
    v2 = **(_DWORD **)(a2 + 48);
  *(_DWORD *)this = v2;
  v4 = *(_DWORD *)(a2 + 60);
  v5 = v4 > 1;
  if ( v4 <= 1 )
    v6 = 0;
  else
    v6 = *(_DWORD *)(a2 + 48);
  if ( v5 )
    v6 = *(_DWORD *)(v6 + 4);
  *((_DWORD *)this + 1) = v6;
  v7 = *(_DWORD *)(a2 + 60);
  v8 = v7 > 2;
  if ( v7 <= 2 )
    v9 = 0;
  else
    v9 = *(_DWORD *)(a2 + 48);
  if ( v8 )
    v9 = *(_DWORD *)(v9 + 8);
  *((_DWORD *)this + 2) = v9;
  v10 = *(_DWORD *)(a2 + 60);
  v11 = v10 > 3;
  if ( v10 <= 3 )
    v12 = 0;
  else
    v12 = *(_DWORD *)(a2 + 48);
  if ( v11 )
    v12 = *(_DWORD *)(v12 + 12);
  *((_DWORD *)this + 3) = v12;
  v13 = *(_DWORD *)(a2 + 60);
  v14 = v13 > 4;
  if ( v13 <= 4 )
    v15 = 0;
  else
    v15 = *(_DWORD *)(a2 + 48);
  if ( v14 )
    v15 = *(_DWORD *)(v15 + 16);
  *((_DWORD *)this + 4) = v15;
  v16 = *(_DWORD *)(a2 + 60);
  v17 = v16 > 5;
  if ( v16 <= 5 )
    v18 = 0;
  else
    v18 = *(_DWORD *)(a2 + 48);
  if ( v17 )
    v18 = *(_DWORD *)(v18 + 20);
  *((_DWORD *)this + 5) = v18;
  return this;
}


// ===== 31ed50 glitch::io::CNumbersAttribute::setInt(int) =====
float __fastcall glitch::io::CNumbersAttribute::setInt(float this, float a2)
{
  float v2; // r4
  int v3; // r5
  unsigned int v4; // r6

  v2 = this;
  if ( *(_DWORD *)(LODWORD(this) + 60) )
  {
    v3 = 0;
    v4 = 0;
    do
    {
      while ( 1 )
      {
        this = a2;
        if ( !*(_BYTE *)(LODWORD(v2) + 64) )
          break;
        this = (float)SLODWORD(a2);
        ++v4;
        *(float *)(*(_DWORD *)(LODWORD(v2) + 48) + v3) = (float)SLODWORD(a2);
        v3 += 4;
        if ( *(_DWORD *)(LODWORD(v2) + 60) <= v4 )
          return this;
      }
      ++v4;
      *(float *)(*(_DWORD *)(LODWORD(v2) + 36) + v3) = a2;
      v3 += 4;
    }
    while ( *(_DWORD *)(LODWORD(v2) + 60) > v4 );
  }
  return this;
}


// ===== 31edc4 glitch::io::CNumbersAttribute::setFloat(float) =====
int __fastcall glitch::io::CNumbersAttribute::setFloat(int this, int a2)
{
  int v2; // r4
  int v3; // r5
  unsigned int v4; // r6

  v2 = this;
  if ( *(_DWORD *)(this + 60) )
  {
    v3 = 0;
    v4 = 0;
    do
    {
      while ( 1 )
      {
        this = a2;
        if ( !*(_BYTE *)(v2 + 64) )
          break;
        ++v4;
        *(float *)(*(_DWORD *)(v2 + 48) + v3) = *(float *)&a2;
        v3 += 4;
        if ( *(_DWORD *)(v2 + 60) <= v4 )
          return this;
      }
      this = (int)*(float *)&a2;
      ++v4;
      *(_DWORD *)(*(_DWORD *)(v2 + 36) + v3) = (int)*(float *)&a2;
      v3 += 4;
    }
    while ( *(_DWORD *)(v2 + 60) > v4 );
  }
  return this;
}


// ===== 31ee38 glitch::io::CNumbersAttribute::setBool(bool) =====
int __fastcall glitch::io::CNumbersAttribute::setBool(glitch::io::CNumbersAttribute *this, bool a2)
{
  return (*(int (__fastcall **)(glitch::io::CNumbersAttribute *, bool))(*(_DWORD *)this + 136))(this, a2);
}


// ===== 31ee4c glitch::io::CNumbersAttribute::isNumberList(void) =====
int __fastcall glitch::io::CNumbersAttribute::isNumberList(glitch::io::CNumbersAttribute *this)
{
  return 1;
}


// ===== 31ee54 glitch::io::CNumbersAttribute::isFloat(void) =====
int __fastcall glitch::io::CNumbersAttribute::isFloat(glitch::io::CNumbersAttribute *this)
{
  return *((unsigned __int8 *)this + 64);
}


// ===== 31ee5c glitch::io::CNumbersAttribute::getType(void) =====
int __fastcall glitch::io::CNumbersAttribute::getType(glitch::io::CNumbersAttribute *this)
{
  if ( *((_BYTE *)this + 64) )
    return 23;
  else
    return 24;
}


// ===== 31ee70 glitch::io::CNumbersAttribute::getTypeString(void) =====
void *__fastcall glitch::io::CNumbersAttribute::getTypeString(glitch::io::CNumbersAttribute *this)
{
  if ( *((_BYTE *)this + 64) )
    return &unk_8BEA48;
  else
    return &unk_8BEA28;
}


// ===== 31ee9c glitch::io::CNumbersAttribute::setFloatArray(std::vector<float,glitch::core::SAllocator<float,(glitch::memory::E_MEMORY_HINT)0>> &) =====
int __fastcall glitch::io::CNumbersAttribute::setFloatArray(int result, int *a2)
{
  unsigned int v2; // r3
  int v3; // r4
  unsigned int v5; // r2
  int v6; // r1
  int v7; // r3
  int v8; // r5
  unsigned int v9; // r6
  unsigned int i; // r3

  v2 = *(unsigned __int8 *)(result + 64);
  v3 = result;
  if ( *(_BYTE *)(result + 64) )
  {
    v5 = *(_DWORD *)(result + 60);
    if ( v5 )
    {
      for ( i = 0; i < v5; ++i )
      {
        *(_DWORD *)(*(_DWORD *)(result + 48) + 4 * i) = 0;
        v5 = *(_DWORD *)(result + 60);
      }
    }
  }
  else
  {
    v5 = *(_DWORD *)(result + 60);
    if ( v5 )
    {
      v6 = *(unsigned __int8 *)(result + 64);
      do
      {
        *(_DWORD *)(*(_DWORD *)(result + 36) + 4 * v2) = v6;
        v5 = *(_DWORD *)(result + 60);
        ++v2;
      }
      while ( v2 < v5 );
    }
  }
  v7 = *a2;
  if ( (unsigned int)(a2[1] - *a2) >> 2 && v5 )
  {
    v8 = 0;
    v9 = 0;
    if ( !*(_BYTE *)(result + 64) )
      goto LABEL_16;
LABEL_11:
    *(_DWORD *)(*(_DWORD *)(v3 + 48) + v8) = *(_DWORD *)(v7 + v8);
    while ( 1 )
    {
      v7 = *a2;
      ++v9;
      v8 += 4;
      if ( v9 >= (a2[1] - *a2) >> 2 || *(_DWORD *)(v3 + 60) <= v9 )
        break;
      if ( *(_BYTE *)(v3 + 64) )
        goto LABEL_11;
LABEL_16:
      result = (int)*(float *)(v7 + v8);
      *(_DWORD *)(*(_DWORD *)(v3 + 36) + v8) = result;
    }
  }
  return result;
}


// ===== 31ef94 glitch::io::CColorfAttribute::getInt(void) =====
int __fastcall glitch::io::CColorfAttribute::getInt(glitch::io::CColorfAttribute *this)
{
  int v1; // r0
  int v3; // [sp+8h] [bp-Ch]

  v1 = (*(int (__fastcall **)(glitch::io::CColorfAttribute *))(*(_DWORD *)this + 24))(this);
  HIBYTE(v3) = BYTE2(v1);
  LOBYTE(v3) = HIBYTE(v1);
  *(_WORD *)((char *)&v3 + 1) = v1;
  return v3;
}


// ===== 31eff4 glitch::io::CColorfAttribute::getFloat(void) =====
float __fastcall glitch::io::CColorfAttribute::getFloat(glitch::io::CColorfAttribute *this)
{
  int v1; // r0
  unsigned int v3; // [sp+8h] [bp-Ch]

  v1 = (*(int (__fastcall **)(glitch::io::CColorfAttribute *))(*(_DWORD *)this + 24))(this);
  HIBYTE(v3) = BYTE2(v1);
  LOBYTE(v3) = HIBYTE(v1);
  *(_WORD *)((char *)&v3 + 1) = v1;
  return (float)v3;
}


// ===== 31f058 glitch::io::CColorfAttribute::setInt(int) =====
float __fastcall glitch::io::CColorfAttribute::setInt(float **this, unsigned int a2)
{
  float result; // r0

  result = (float)(unsigned __int8)a2 * 0.0039216;
  **(this + 12) = (float)BYTE1(a2) * 0.0039216;
  (*(this + 12))[1] = (float)BYTE2(a2) * 0.0039216;
  (*(this + 12))[2] = (float)HIBYTE(a2) * 0.0039216;
  (*(this + 12))[3] = result;
  return result;
}


// ===== 31f0ec glitch::io::CColorfAttribute::setFloat(float) =====
int __fastcall glitch::io::CColorfAttribute::setFloat(glitch::io::CColorfAttribute *this, float a2)
{
  return (*(int (__fastcall **)(glitch::io::CColorfAttribute *, int))(*(_DWORD *)this + 136))(this, (int)a2);
}


// ===== 31f114 glitch::io::CColorfAttribute::getType(void) =====
int __fastcall glitch::io::CColorfAttribute::getType(glitch::io::CColorfAttribute *this)
{
  return 6;
}


// ===== 31f11c glitch::io::CColorfAttribute::getTypeString(void) =====
void *__fastcall glitch::io::CColorfAttribute::getTypeString(glitch::io::CColorfAttribute *this)
{
  return &unk_8BEA70;
}


// ===== 31f12c glitch::io::CColorAttribute::getInt(void) =====
int __fastcall glitch::io::CColorAttribute::getInt(glitch::io::CColorAttribute *this)
{
  int v1; // r0
  int v3; // [sp+8h] [bp-Ch]

  v1 = (*(int (__fastcall **)(glitch::io::CColorAttribute *))(*(_DWORD *)this + 24))(this);
  HIBYTE(v3) = BYTE2(v1);
  LOBYTE(v3) = HIBYTE(v1);
  *(_WORD *)((char *)&v3 + 1) = v1;
  return v3;
}


// ===== 31f18c glitch::io::CColorAttribute::getFloat(void) =====
float __fastcall glitch::io::CColorAttribute::getFloat(glitch::io::CColorAttribute *this)
{
  int v1; // r0
  unsigned int v3; // [sp+8h] [bp-Ch]

  v1 = (*(int (__fastcall **)(glitch::io::CColorAttribute *))(*(_DWORD *)this + 24))(this);
  HIBYTE(v3) = BYTE2(v1);
  LOBYTE(v3) = HIBYTE(v1);
  *(_WORD *)((char *)&v3 + 1) = v1;
  return (float)v3;
}


// ===== 31f1f0 glitch::io::CColorAttribute::setInt(int) =====
float __fastcall glitch::io::CColorAttribute::setInt(float **this, unsigned int a2)
{
  float result; // r0

  result = (float)(unsigned __int8)a2 * 0.0039216;
  **(this + 12) = (float)BYTE1(a2) * 0.0039216;
  (*(this + 12))[1] = (float)BYTE2(a2) * 0.0039216;
  (*(this + 12))[2] = (float)HIBYTE(a2) * 0.0039216;
  (*(this + 12))[3] = result;
  return result;
}


// ===== 31f284 glitch::io::CColorAttribute::setFloat(float) =====
int __fastcall glitch::io::CColorAttribute::setFloat(glitch::io::CColorAttribute *this, float a2)
{
  return (*(int (__fastcall **)(glitch::io::CColorAttribute *, int))(*(_DWORD *)this + 136))(this, (int)a2);
}


// ===== 31f2ac glitch::io::CColorAttribute::getType(void) =====
int __fastcall glitch::io::CColorAttribute::getType(glitch::io::CColorAttribute *this)
{
  return 5;
}


// ===== 31f2b4 glitch::io::CColorAttribute::getTypeString(void) =====
void *__fastcall glitch::io::CColorAttribute::getTypeString(glitch::io::CColorAttribute *this)
{
  return &unk_8BEA90;
}


// ===== 31f2c4 glitch::io::CVector2DAttribute::getType(void) =====
int __fastcall glitch::io::CVector2DAttribute::getType(glitch::io::CVector2DAttribute *this)
{
  return 7;
}


// ===== 31f2cc glitch::io::CVector2DAttribute::getTypeString(void) =====
void *__fastcall glitch::io::CVector2DAttribute::getTypeString(glitch::io::CVector2DAttribute *this)
{
  return &unk_8BEAA8;
}


// ===== 31f2dc glitch::io::CVector3DAttribute::getType(void) =====
int __fastcall glitch::io::CVector3DAttribute::getType(glitch::io::CVector3DAttribute *this)
{
  return 8;
}


// ===== 31f2e4 glitch::io::CVector3DAttribute::getTypeString(void) =====
void *__fastcall glitch::io::CVector3DAttribute::getTypeString(glitch::io::CVector3DAttribute *this)
{
  return &unk_8BEAD0;
}


// ===== 31f2f4 glitch::io::CVector4DAttribute::getType(void) =====
int __fastcall glitch::io::CVector4DAttribute::getType(glitch::io::CVector4DAttribute *this)
{
  return 9;
}


// ===== 31f2fc glitch::io::CVector4DAttribute::getTypeString(void) =====
void *__fastcall glitch::io::CVector4DAttribute::getTypeString(glitch::io::CVector4DAttribute *this)
{
  return &unk_8BEAF8;
}


// ===== 31f30c glitch::io::CStringAttribute::getType(void) =====
int __fastcall glitch::io::CStringAttribute::getType(glitch::io::CStringAttribute *this)
{
  return 2;
}


// ===== 31f314 glitch::io::CStringAttribute::getTypeString(void) =====
void *__fastcall glitch::io::CStringAttribute::getTypeString(glitch::io::CStringAttribute *this)
{
  return &unk_8BEB20;
}


// ===== 31f324 glitch::io::CStringAttribute::getBinary(void *,int) =====
_BYTE *__fastcall glitch::io::CStringAttribute::getBinary(_BYTE *this, _BYTE *a2, int a3)
{
  _BYTE *v3; // r6
  int v4; // r3
  int v5; // r5
  int v6; // r3
  char v7; // r12
  char v8; // r12
  unsigned int v9; // r4
  char v10; // r4
  char v11; // r4
  bool v12; // cc

  v3 = *((_BYTE **)this + 14);
  if ( a3 > 0 )
  {
    v4 = 0;
    this = nullptr;
    do
      a2[v4++] = 0;
    while ( v4 != a3 );
    if ( *v3 )
    {
      v5 = 0;
      this = v3;
      v6 = 0;
      do
      {
        v7 = *this;
        if ( (unsigned __int8)(*this - 48) > 9u )
        {
          v9 = (unsigned __int8)(*this - 97);
          if ( v9 > 5 )
            v8 = 0;
          else
            v8 = v7 - 87;
          if ( v9 <= 5 )
            v8 *= 16;
        }
        else
        {
          v8 = 16 * (v7 - 48);
        }
        v10 = *(this + 1);
        if ( v10 )
        {
          if ( (unsigned __int8)(v10 - 48) > 9u )
          {
            if ( (unsigned __int8)(v10 - 97) <= 5u )
              v11 = v10 - 87;
            else
              v11 = 0;
          }
          else
          {
            v11 = v10 - 48;
          }
          v8 += v11;
        }
        ++v6;
        a2[v5] = v8;
        this += 2;
        v5 = v6;
        v12 = (char)v3[v6] <= 0;
        if ( v3[v6] )
          v12 = a3 <= v6;
      }
      while ( !v12 );
    }
  }
  return this;
}


// ===== 31f410 glitch::debugger::CTweakable::getInstanceName(void) =====
int __fastcall glitch::debugger::CTweakable::getInstanceName(glitch::debugger::CTweakable *this)
{
  return *((_DWORD *)this + 26);
}


// ===== 31f418 glitch::debugger::CTweakable::getXML(void) =====
char *__fastcall glitch::debugger::CTweakable::getXML(glitch::debugger::CTweakable *this)
{
  return (char *)this + 112;
}


// ===== 31f420 glitch::debugger::CTweakable::onSetValue(std::string const&) =====
void __fastcall glitch::debugger::CTweakable::onSetValue(glitch::debugger::CTweakable *this, const std::string *a2)
{
  ;
}


// ===== 31f424 CMsgStartGame::GetDataPtr(void) =====
char *__fastcall CMsgStartGame::GetDataPtr(CMsgStartGame *this)
{
  return (char *)this + 80;
}


// ===== 31f42c CMsgStartGame::GetDataSize(void) =====
int __fastcall CMsgStartGame::GetDataSize(CMsgStartGame *this)
{
  return 28;
}


// ===== 31f434 CMsgControllerAction::GetDataPtr(void) =====
char *__fastcall CMsgControllerAction::GetDataPtr(CMsgControllerAction *this)
{
  return (char *)this + 80;
}


// ===== 31f43c CMsgControllerAction::GetDataSize(void) =====
int __fastcall CMsgControllerAction::GetDataSize(CMsgControllerAction *this)
{
  return 20;
}


// ===== 31f444 CMsgAttackResult::GetDataPtr(void) =====
char *__fastcall CMsgAttackResult::GetDataPtr(CMsgAttackResult *this)
{
  return (char *)this + 80;
}


// ===== 31f44c CMsgAttackResult::GetDataSize(void) =====
int __fastcall CMsgAttackResult::GetDataSize(CMsgAttackResult *this)
{
  return 52;
}


// ===== 31f454 CMsgRaisedEvent::GetDataPtr(void) =====
char *__fastcall CMsgRaisedEvent::GetDataPtr(CMsgRaisedEvent *this)
{
  return (char *)this + 80;
}


// ===== 31f45c CMsgRaisedEvent::GetDataSize(void) =====
int __fastcall CMsgRaisedEvent::GetDataSize(CMsgRaisedEvent *this)
{
  return 20;
}


// ===== 31f464 CMsgMenuReady::GetDataPtr(void) =====
char *__fastcall CMsgMenuReady::GetDataPtr(CMsgMenuReady *this)
{
  return (char *)this + 80;
}


// ===== 31f46c CMsgMenuReady::GetDataSize(void) =====
int __fastcall CMsgMenuReady::GetDataSize(CMsgMenuReady *this)
{
  return 8;
}


// ===== 31f474 CMsgScriptCmd::GetDataPtr(void) =====
char *__fastcall CMsgScriptCmd::GetDataPtr(CMsgScriptCmd *this)
{
  return (char *)this + 80;
}


// ===== 31f47c CMsgScriptCmd::GetDataSize(void) =====
int __fastcall CMsgScriptCmd::GetDataSize(CMsgScriptCmd *this)
{
  return 12;
}


// ===== 31f484 CMsgDropLoot::GetDataPtr(void) =====
char *__fastcall CMsgDropLoot::GetDataPtr(CMsgDropLoot *this)
{
  return (char *)this + 80;
}


// ===== 31f48c CMsgDropLoot::GetDataSize(void) =====
int __fastcall CMsgDropLoot::GetDataSize(CMsgDropLoot *this)
{
  return *((_DWORD *)this + 25) + 24;
}


// ===== 31f498 CMsgInitialSetup::GetDataPtr(void) =====
char *__fastcall CMsgInitialSetup::GetDataPtr(CMsgInitialSetup *this)
{
  return (char *)this + 80;
}


// ===== 31f4a0 CMsgInitialSetup::GetDataSize(void) =====
int __fastcall CMsgInitialSetup::GetDataSize(CMsgInitialSetup *this)
{
  return 12;
}


// ===== 31f4a8 CMsgQuestsSync::GetDataSize(void) =====
int __fastcall CMsgQuestsSync::GetDataSize(CMsgQuestsSync *this)
{
  return *((_DWORD *)this + 20) + 8;
}


// ===== 31f4b4 CMsgSpawnObject::GetDataPtr(void) =====
char *__fastcall CMsgSpawnObject::GetDataPtr(CMsgSpawnObject *this)
{
  return (char *)this + 80;
}


// ===== 31f4bc CMsgSpawnObject::GetDataSize(void) =====
int __fastcall CMsgSpawnObject::GetDataSize(CMsgSpawnObject *this)
{
  return 28;
}


// ===== 31f4c4 CMsgIsHost::GetDataPtr(void) =====
char *__fastcall CMsgIsHost::GetDataPtr(CMsgIsHost *this)
{
  return (char *)this + 80;
}


// ===== 31f4cc CMsgIsHost::GetDataSize(void) =====
int __fastcall CMsgIsHost::GetDataSize(CMsgIsHost *this)
{
  return 4;
}


// ===== 31f4d4 CMsgGlobalDeath::GetDataSize(void) =====
int __fastcall CMsgGlobalDeath::GetDataSize(CMsgGlobalDeath *this)
{
  return 0;
}


// ===== 31f4dc CMsgAskResendAttributes::GetDataPtr(void) =====
char *__fastcall CMsgAskResendAttributes::GetDataPtr(CMsgAskResendAttributes *this)
{
  return (char *)this + 80;
}


// ===== 31f4e4 CMsgAskResendAttributes::GetDataSize(void) =====
int __fastcall CMsgAskResendAttributes::GetDataSize(CMsgAskResendAttributes *this)
{
  return 1;
}


// ===== 31f4ec GetConfigFilePath(char *,char const*) =====
void __fastcall GetConfigFilePath(char *a1, const char *a2)
{
  ;
}


// ===== 31f4f0 GetSaveFilePath(char *,char const*) =====
void __fastcall GetSaveFilePath(char *a1, const char *a2)
{
  ;
}


// ===== 31f4f4 Application::InitIPhone(glitch::IDevice *,float,float,float,float,float) =====
void Application::InitIPhone()
{
  LOBYTE(dword_0) = 1;
}


// ===== 31f504 Application::IsInitFinish(void) =====
bool __fastcall Application::IsInitFinish(Application *this)
{
  int v1; // r2
  int v2; // r1
  int v3; // r2
  void *v4; // r2

  v1 = *((_DWORD *)this + 6);
  v2 = *(_DWORD *)(v1 + 12);
  v3 = *(_DWORD *)(v1 + 16);
  return (unsigned int)(v3 - v2) >> 3 && (v4 = *(void **)(v3 - 8)) != nullptr && v4 != &GSInit::s_inst;
}


// ===== 31f554 Application::IsInIGPOrGameCenter(void) =====
int __fastcall Application::IsInIGPOrGameCenter(Application *this)
{
  return 0;
}


// ===== 31f55c Application::CleanGlitch(void) =====
int __fastcall Application::CleanGlitch(Application *this)
{
  return (*(int (__fastcall **)(_DWORD))(**(_DWORD **)(dword_99F73C + 16) + 172))(*(_DWORD *)(dword_99F73C + 16));
}


// ===== 31f594 Application::GetCurrentLevel(void) =====
int __fastcall Application::GetCurrentLevel(Application *this)
{
  return GSLevel::s_level;
}


// ===== 31f5b4 Application::IsLevelLoaded(void) =====
int __fastcall Application::IsLevelLoaded(Application *this)
{
  int CurrentLevel; // r0

  CurrentLevel = Application::GetCurrentLevel(this);
  if ( !CurrentLevel || *(_DWORD *)(CurrentLevel + 304) == 38 )
    return 1;
  *((_BYTE *)this + 169) = 0;
  return 0;
}


// ===== 31f5e8 Application::IsInLevelTransition(void) =====
int __fastcall Application::IsInLevelTransition(Application *this)
{
  int result; // r0

  result = Application::GetCurrentLevel(this);
  if ( result )
    return *(unsigned __int8 *)(result + 325);
  return result;
}


// ===== 31f5fc Application::IsInActionPhase(void) =====
bool __fastcall Application::IsInActionPhase(Application *this)
{
  int CurrentLevel; // r0
  int v3; // r2
  int v4; // r1
  int v5; // r2

  CurrentLevel = Application::GetCurrentLevel(this);
  v3 = *((_DWORD *)this + 6);
  v4 = *(_DWORD *)(v3 + 12);
  v5 = *(_DWORD *)(v3 + 16);
  return v5 - v4 > 7
      && *(_UNKNOWN **)(v5 - 8) == &GSLevel::s_gsLevel
      && CurrentLevel
      && *(_DWORD *)(CurrentLevel + 304) == 38;
}


// ===== 31f668 Application::ShowStatubBar(bool) =====
void __fastcall Application::ShowStatubBar(Application *this, bool a2)
{
  ;
}


// ===== 31f66c Application::GetDt(void) =====
int __fastcall Application::GetDt(Application *this)
{
  return *((_DWORD *)this + 35);
}


// ===== 31f674 Application::GetDtScaled(void) =====
int __fastcall Application::GetDtScaled(Application *this)
{
  return *((_DWORD *)this + 36);
}


// ===== 31f67c Application::SetTimeScale(float) =====
int __fastcall Application::SetTimeScale(int this, float a2)
{
  *(float *)(this + 152) = a2;
  return this;
}


// ===== 31f684 Application::IsCurrentlyInGameView(void) =====
int __fastcall Application::IsCurrentlyInGameView(Application *this)
{
  int result; // r0

  result = Application::GetCurrentLevel(this);
  if ( result )
    return *(unsigned __int8 *)(Application::GetCurrentLevel(this) + 408);
  return result;
}


// ===== 31f6a8 Application::GetVersionNumber(void) =====
int __fastcall Application::GetVersionNumber(Application *this)
{
  return 10000;
}


// ===== 31f6b0 Application::GetVersionString(char *,int,bool) =====
int __fastcall Application::GetVersionString(Application *this, char *a2, int a3, bool a4)
{
  bool v4; // cc
  char v5; // r2
  int result; // r0

  v4 = (int)a2 <= 0;
  if ( a2 )
    v4 = a3 <= 0;
  v5 = v4;
  if ( !v4 )
  {
    result = 5960;
    if ( OPERATOR_PACKAGE_INGAME == 4 )
    {
      a2[8] = v5;
      a2[1] = 49;
      a2[5] = 46;
      a2[7] = 48;
      *a2 = 48;
      a2[2] = 46;
      a2[3] = 48;
      a2[4] = 48;
      a2[6] = 48;
      return 46;
    }
    else
    {
      a2[5] = v5;
      *a2 = 49;
      a2[2] = 48;
      a2[3] = 46;
      a2[4] = 50;
      a2[1] = 46;
    }
  }
  return result;
}


// ===== 31f748 Application::ResetOrientation(int) =====
void __fastcall Application::ResetOrientation(Application *this, int a2)
{
  ;
}


// ===== 31f74c Application::SetOrientation(int,bool) =====
int __fastcall Application::SetOrientation(Application *this, int a2, bool a3)
{
  return 0;
}


// ===== 31f754 Application::IsVideoReorienting(void) =====
int __fastcall Application::IsVideoReorienting(Application *this)
{
  return 0;
}


// ===== 31f75c Application::GetDeviceLanguage(void) =====
int __fastcall Application::GetDeviceLanguage(Application *this)
{
  return -1;
}


// ===== 31f764 Application::IsDeviceLanguageSupported(char *) =====
int __fastcall Application::IsDeviceLanguageSupported(Application *this, char *a2)
{
  return 0;
}


// ===== 31f76c Application::IsBluetoothEnabled(void) =====
int __fastcall Application::IsBluetoothEnabled(Application *this)
{
  return 1;
}


// ===== 31f774 Application::GetGoToMainMenuEvent(bool) =====
int __fastcall Application::GetGoToMainMenuEvent(Application *this, int a2, int a3)
{
  int result; // r0

  if ( a2 )
    a3 = 0;
  result = *((_DWORD *)this + 44);
  if ( a2 )
    *((_DWORD *)this + 44) = a3;
  return result;
}


// ===== 31f78c GCSingleton<GameCenter>::~GCSingleton() =====
void GCSingleton<GameCenter>::~GCSingleton()
{
  ;
}


// ===== 31f790 glitch::core::CMatrix4<float>::getTransposed(glitch::core::CMatrix4<float>&) =====
int __fastcall glitch::core::CMatrix4<float>::getTransposed(int result, int a2)
{
  *(_BYTE *)(a2 + 64) = 0;
  *(_DWORD *)a2 = *(_DWORD *)result;
  *(_DWORD *)(a2 + 4) = *(_DWORD *)(result + 16);
  *(_DWORD *)(a2 + 8) = *(_DWORD *)(result + 32);
  *(_DWORD *)(a2 + 12) = *(_DWORD *)(result + 48);
  *(_DWORD *)(a2 + 16) = *(_DWORD *)(result + 4);
  *(_DWORD *)(a2 + 20) = *(_DWORD *)(result + 20);
  *(_DWORD *)(a2 + 24) = *(_DWORD *)(result + 36);
  *(_DWORD *)(a2 + 28) = *(_DWORD *)(result + 52);
  *(_DWORD *)(a2 + 32) = *(_DWORD *)(result + 8);
  *(_DWORD *)(a2 + 36) = *(_DWORD *)(result + 24);
  *(_DWORD *)(a2 + 40) = *(_DWORD *)(result + 40);
  *(_DWORD *)(a2 + 44) = *(_DWORD *)(result + 56);
  *(_DWORD *)(a2 + 48) = *(_DWORD *)(result + 12);
  *(_DWORD *)(a2 + 52) = *(_DWORD *)(result + 28);
  *(_DWORD *)(a2 + 56) = *(_DWORD *)(result + 44);
  *(_DWORD *)(a2 + 60) = *(_DWORD *)(result + 60);
  *(_BYTE *)(a2 + 64) = *(_BYTE *)(result + 64);
  return result;
}


// ===== 31f824 std::basic_streambuf<char,std::char_traits<char>>::imbue(std::locale const&) =====
void std::streambuf::imbue()
{
  ;
}


// ===== 31f828 std::basic_streambuf<char,std::char_traits<char>>::sync(void) =====
int std::streambuf::sync()
{
  return 0;
}


// ===== 31f830 std::basic_streambuf<char,std::char_traits<char>>::overflow(int) =====
int std::streambuf::overflow()
{
  return -1;
}


// ===== 31f838 std::basic_stringbuf<char,std::char_traits<char>,std::allocator<char>>::seekoff(long,int,int) =====
int *__fastcall std::stringbuf::seekoff(int *result, _DWORD *a2, int a3, int a4, int a5)
{
  unsigned int v5; // r12
  int v6; // r4
  int v7; // r12
  int v8; // r5
  int v9; // r3
  int v10; // r3
  int v11; // r2
  int v12; // r3
  int v13; // r4
  int v14; // r3
  int v15; // r12

  v5 = a5 & a2[8];
  v6 = (v5 >> 3) & 1;
  v7 = (v5 >> 4) & 1;
  if ( v6 )
  {
    if ( !a2[2] )
    {
LABEL_7:
      *result = -1;
      result[1] = 0;
      return result;
    }
    if ( !v7 )
    {
      if ( a4 != 2 )
        goto LABEL_5;
      goto LABEL_12;
    }
  }
  else if ( !v7 )
  {
    *result = -1;
    result[1] = 0;
    return result;
  }
  if ( !a2[5] )
    goto LABEL_7;
  if ( a4 != 2 )
  {
LABEL_5:
    if ( a4 == 4 )
    {
      v10 = a2[13] - a2[14];
    }
    else
    {
      if ( a4 != 1 )
        goto LABEL_7;
      v10 = 0;
    }
    goto LABEL_21;
  }
LABEL_12:
  if ( v6 )
  {
    v8 = a2[2];
    v9 = a2[1];
  }
  else
  {
    v8 = a2[5];
    v9 = a2[4];
  }
  if ( !a3 )
    result[1] = 0;
  v10 = v8 - v9;
  if ( !a3 )
  {
    *result = v10;
    return result;
  }
LABEL_21:
  v11 = v10 + a3;
  if ( v6 )
  {
    v12 = a2[1];
    if ( (v11 > a2[3] - v12) | ((unsigned int)v11 >> 31) )
      goto LABEL_7;
    v13 = a2[3];
    a2[2] = v12 + v11;
    a2[3] = v13;
  }
  if ( v7 )
  {
    v14 = a2[4];
    if ( (v11 > a2[6] - v14) | ((unsigned int)v11 >> 31) )
      goto LABEL_7;
    v15 = a2[6];
    a2[5] = v14 + v11;
    a2[6] = v15;
  }
  *result = v11;
  result[1] = 0;
  return result;
}


// ===== 31f984 std::basic_stringbuf<char,std::char_traits<char>,std::allocator<char>>::seekpos(std::fpos<mbstate_t>,int) =====
int *__fastcall std::stringbuf::seekpos(int *result, _DWORD *a2, int a3, int a4, int a5)
{
  unsigned int v5; // r12
  int v6; // r4
  int v7; // r12
  int v8; // r5
  int v9; // r4
  int v10; // r12
  int v11; // r4

  v5 = a5 & a2[8];
  v6 = (v5 >> 3) & 1;
  v7 = (v5 >> 4) & 1;
  if ( v6 )
  {
    if ( !a2[2] )
      goto LABEL_7;
    if ( !v7 )
      goto LABEL_4;
  }
  else if ( !v7 )
  {
    *result = -1;
    result[1] = 0;
    return result;
  }
  if ( !a2[5] )
    goto LABEL_7;
  if ( v6 )
  {
LABEL_4:
    if ( a3 < 0 )
      goto LABEL_7;
    v8 = a2[1];
    v9 = a2[3];
    if ( v9 - v8 < a3 )
      goto LABEL_7;
    a2[2] = v8 + a3;
    a2[3] = v9;
  }
  if ( v7 )
  {
    if ( a3 >= 0 )
    {
      v10 = a2[14];
      if ( a3 <= (unsigned int)(a2[13] - v10) )
      {
        v11 = a2[13];
        a2[5] = v10 + a3;
        a2[6] = v11;
        a2[4] = v10;
        goto LABEL_16;
      }
    }
LABEL_7:
    *result = -1;
    result[1] = 0;
    return result;
  }
LABEL_16:
  *result = a3;
  result[1] = a4;
  return result;
}


// ===== 31fa68 std::basic_streambuf<char,std::char_traits<char>>::showmanyc(void) =====
int std::streambuf::showmanyc()
{
  return 0;
}


// ===== 31fa70 std::basic_stringbuf<char,std::char_traits<char>,std::allocator<char>>::underflow(void) =====
int __fastcall std::stringbuf::underflow(int a1)
{
  unsigned __int8 *v1; // r3

  v1 = *(unsigned __int8 **)(a1 + 8);
  if ( v1 == *(unsigned __int8 **)(a1 + 12) )
    return -1;
  else
    return *v1;
}


// ===== 31fa88 std::basic_stringbuf<char,std::char_traits<char>,std::allocator<char>>::uflow(void) =====
int __fastcall std::stringbuf::uflow(int a1)
{
  unsigned __int8 *v1; // r2
  unsigned __int8 *v2; // r1
  bool v4; // zf
  int result; // r0
  int v6; // t1

  v1 = *(unsigned __int8 **)(a1 + 8);
  v2 = *(unsigned __int8 **)(a1 + 12);
  v4 = v1 == v2;
  if ( v1 == v2 )
  {
    result = -1;
  }
  else
  {
    v6 = *v1++;
    result = v6;
  }
  if ( !v4 )
    *(_DWORD *)(a1 + 8) = v1;
  return result;
}


// ===== 31faa8 std::basic_stringbuf<char,std::char_traits<char>,std::allocator<char>>::pbackfail(int) =====
int __fastcall std::stringbuf::pbackfail(_DWORD *a1, int a2)
{
  int v2; // r2
  int v3; // r4

  v2 = a1[2];
  if ( v2 == a1[1] )
    return -1;
  if ( a2 != -1 )
  {
    v3 = v2 - 1;
    if ( (unsigned __int8)a2 == *(unsigned __int8 *)(v2 - 1) )
    {
      a1[2] = v3;
      return a2;
    }
    if ( (a1[8] & 0x10) != 0 )
    {
      a1[2] = v3;
      *(_BYTE *)(v2 - 1) = a2;
      return a2;
    }
    return -1;
  }
  a1[2] = v2 - 1;
  return 0;
}


// ===== 31fb14 std::basic_streambuf<char,std::char_traits<char>>::setbuf(char *,int) =====
void std::streambuf::setbuf()
{
  ;
}


// ===== 31fb18 std::basic_streambuf<char,std::char_traits<char>>::seekoff(long,int,int) =====
_DWORD *__fastcall std::streambuf::seekoff(_DWORD *result)
{
  result[1] = 0;
  *result = -1;
  return result;
}


// ===== 31fb2c std::basic_streambuf<char,std::char_traits<char>>::seekpos(std::fpos<mbstate_t>,int) =====
_DWORD *__fastcall std::streambuf::seekpos(_DWORD *result)
{
  result[1] = 0;
  *result = -1;
  return result;
}


// ===== 31fb48 std::basic_streambuf<char,std::char_traits<char>>::underflow(void) =====
int std::streambuf::underflow()
{
  return -1;
}


// ===== 31fb50 std::basic_streambuf<char,std::char_traits<char>>::uflow(void) =====
int __fastcall std::streambuf::uflow(_DWORD *a1)
{
  int result; // r0
  unsigned __int8 *v3; // r3

  result = (*(int (__fastcall **)(_DWORD *))(*a1 + 32))(a1);
  if ( result != -1 )
  {
    v3 = (unsigned __int8 *)a1[2];
    a1[2] = v3 + 1;
    return *v3;
  }
  return result;
}


// ===== 31fb7c std::basic_streambuf<char,std::char_traits<char>>::pbackfail(int) =====
int std::streambuf::pbackfail()
{
  return -1;
}


// ===== 31fb84 CMsgDropLoot::ResetData(void) =====
void __fastcall CMsgDropLoot::ResetData(CMsgDropLoot *this)
{
  void *v2; // r0

  v2 = *((void **)this + 26);
  *((_BYTE *)this + 80) = 0;
  *((_DWORD *)this + 21) = 0;
  *((_DWORD *)this + 22) = 0;
  *((_DWORD *)this + 23) = 0;
  *((_DWORD *)this + 24) = 0;
  *((_DWORD *)this + 25) = 0;
  if ( v2 )
  {
    CustomFree(v2);
    *((_DWORD *)this + 26) = 0;
  }
}


// ===== 31fbc0 CMsgQuestsSync::ResetData(void) =====
void __fastcall CMsgQuestsSync::ResetData(CMsgQuestsSync *this)
{
  void *v2; // r0

  v2 = *((void **)this + 22);
  *((_DWORD *)this + 20) = 0;
  *((_DWORD *)this + 21) = 0;
  if ( v2 )
  {
    CustomFree(v2);
    *((_DWORD *)this + 22) = 0;
  }
}


// ===== 31fbec GCSingleton<GameCenter>::~GCSingleton() =====
_DWORD *__fastcall GCSingleton<GameCenter>::~GCSingleton(_DWORD *a1)
{
  *a1 = off_95B430;
  CustomFree(a1);
  return a1;
}


// ===== 31fc20 IEvent::~IEvent() =====
void __fastcall IEvent::~IEvent(IEvent *this)
{
  *(_DWORD *)this = off_95B458;
  CustomFree(this);
}


// ===== 31fc54 EvKeyboard::~EvKeyboard() =====
void __fastcall EvKeyboard::~EvKeyboard(EvKeyboard *this)
{
  *(_DWORD *)this = off_95B458;
  CustomFree(this);
}


// ===== 31fc88 EvGamepad::~EvGamepad() =====
void __fastcall EvGamepad::~EvGamepad(EvGamepad *this)
{
  *(_DWORD *)this = off_95B458;
  CustomFree(this);
}


// ===== 31fcbc EvMouseMove::~EvMouseMove() =====
void __fastcall EvMouseMove::~EvMouseMove(EvMouseMove *this)
{
  *(_DWORD *)this = off_95B458;
  CustomFree(this);
}


// ===== 31fcf0 EvMouseWheel::~EvMouseWheel() =====
void __fastcall EvMouseWheel::~EvMouseWheel(EvMouseWheel *this)
{
  *(_DWORD *)this = off_95B458;
  CustomFree(this);
}


// ===== 31fd24 EvMouseButton::~EvMouseButton() =====
void __fastcall EvMouseButton::~EvMouseButton(EvMouseButton *this)
{
  *(_DWORD *)this = off_95B458;
  CustomFree(this);
}


// ===== 31fd58 glitch::IReferenceCounted::~IReferenceCounted() =====
void __fastcall glitch::IReferenceCounted::~IReferenceCounted(glitch::IReferenceCounted *this)
{
  *(_DWORD *)this = off_95B720;
  CustomFree(this);
}


// ===== 31fd8c glitch::IEventReceiver::~IEventReceiver() =====
void __fastcall glitch::IEventReceiver::~IEventReceiver(glitch::IEventReceiver *this)
{
  *(_DWORD *)this = off_95C300;
  CustomFree(this);
}


// ===== 31fdc0 std::__destroy_range_aux<std::priv::_Deque_iterator<AchievementMsg,std::_Nonconst_traits<AchievementMsg>>,AchievementMsg>(std::priv::_Deque_iterator<AchievementMsg,std::_Nonconst_traits<AchievementMsg>>,std::priv::_Deque_iterator<AchievementMsg,std::_Nonconst_traits<AchievementMsg>>,AchievementMsg *,std::__false_type const&) =====
std::priv::_String_base<char,std::allocator<char> > *__fastcall std::__destroy_range_aux<std::priv::_Deque_iterator<AchievementMsg,std::_Nonconst_traits<AchievementMsg>>,AchievementMsg>(
        int a1,
        std::priv::_String_base<char,std::allocator<char> > **a2)
{
  std::priv::_String_base<char,std::allocator<char> > *v2; // r5
  std::priv::_String_base<char,std::allocator<char> > *result; // r0
  std::priv::_String_base<char,std::allocator<char> > *v6; // r3
  std::priv::_String_base<char,std::allocator<char> > **v7; // r2

  v2 = *(std::priv::_String_base<char,std::allocator<char> > **)a1;
  while ( 1 )
  {
    result = v2 + 1;
    if ( v2 == *a2 )
      break;
    while ( 1 )
    {
      std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(result);
      std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(v2);
      v6 = *(std::priv::_String_base<char,std::allocator<char> > **)(a1 + 8);
      v2 = (std::priv::_String_base<char,std::allocator<char> > *)(*(_DWORD *)a1 + 60);
      *(_DWORD *)a1 = v2;
      if ( v2 != v6 )
        break;
      v7 = (std::priv::_String_base<char,std::allocator<char> > **)(*(_DWORD *)(a1 + 12) + 4);
      *(_DWORD *)(a1 + 12) = v7;
      v2 = *v7;
      *(_DWORD *)(a1 + 8) = *v7 + 5;
      *(_DWORD *)(a1 + 4) = v2;
      *(_DWORD *)a1 = v2;
      result = v2 + 1;
      if ( v2 == *a2 )
        return result;
    }
  }
  return result;
}


// ===== 31fe38 std::__destroy_range_aux<std::priv::_Deque_iterator<CharMenuTutorialMsg,std::_Nonconst_traits<CharMenuTutorialMsg>>,CharMenuTutorialMsg>(std::priv::_Deque_iterator<CharMenuTutorialMsg,std::_Nonconst_traits<CharMenuTutorialMsg>>,std::priv::_Deque_iterator<CharMenuTutorialMsg,std::_Nonconst_traits<CharMenuTutorialMsg>>,CharMenuTutorialMsg *,std::__false_type const&) =====
std::priv::_String_base<char,std::allocator<char> > *__fastcall std::__destroy_range_aux<std::priv::_Deque_iterator<CharMenuTutorialMsg,std::_Nonconst_traits<CharMenuTutorialMsg>>,CharMenuTutorialMsg>(
        int *a1,
        _DWORD *a2)
{
  int v2; // r5
  std::priv::_String_base<char,std::allocator<char> > *result; // r0
  int v6; // r3
  int *v7; // r2

  v2 = *a1;
  while ( 1 )
  {
    result = (std::priv::_String_base<char,std::allocator<char> > *)(v2 + 28);
    if ( v2 == *a2 )
      break;
    while ( 1 )
    {
      std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(result);
      std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block((std::priv::_String_base<char,std::allocator<char> > *const)(v2 + 4));
      v6 = a1[2];
      v2 = *a1 + 52;
      *a1 = v2;
      if ( v2 != v6 )
        break;
      v7 = (int *)(a1[3] + 4);
      a1[3] = (int)v7;
      v2 = *v7;
      a1[2] = *v7 + 104;
      a1[1] = v2;
      *a1 = v2;
      result = (std::priv::_String_base<char,std::allocator<char> > *)(v2 + 28);
      if ( v2 == *a2 )
        return result;
    }
  }
  return result;
}


// ===== 31feb0 DialogMsg::~DialogMsg() =====
void __fastcall DialogMsg::~DialogMsg(DialogMsg *this)
{
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block((std::priv::_String_base<char,std::allocator<char> > *const)((char *)this + 52));
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block((std::priv::_String_base<char,std::allocator<char> > *const)this + 1);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block((std::priv::_String_base<char,std::allocator<char> > *const)this);
}


// ===== 31fed8 CMsgAskResendAttributes::~CMsgAskResendAttributes() =====
void __fastcall CMsgAskResendAttributes::~CMsgAskResendAttributes(CMsgAskResendAttributes *this)
{
  *(_DWORD *)this = off_95B1B0;
  CMessage::~CMessage(this);
}


// ===== 31ff0c CMsgGlobalDeath::~CMsgGlobalDeath() =====
void __fastcall CMsgGlobalDeath::~CMsgGlobalDeath(CMsgGlobalDeath *this)
{
  *(_DWORD *)this = off_95B1E0;
  CMessage::~CMessage(this);
}


// ===== 31ff40 CMsgSpawnObject::~CMsgSpawnObject() =====
void __fastcall CMsgSpawnObject::~CMsgSpawnObject(CMsgSpawnObject *this)
{
  *(_DWORD *)this = off_95B210;
  CMessage::~CMessage(this);
}


// ===== 31ff74 CMsgIsHost::~CMsgIsHost() =====
void __fastcall CMsgIsHost::~CMsgIsHost(CMsgIsHost *this)
{
  *(_DWORD *)this = off_95B240;
  CMessage::~CMessage(this);
}


// ===== 31ffa8 CMsgDropLoot::~CMsgDropLoot() =====
void __fastcall CMsgDropLoot::~CMsgDropLoot(CMsgDropLoot *this)
{
  *(_DWORD *)this = off_95B270;
  CMessage::~CMessage(this);
}


// ===== 31ffdc CMsgInitialSetup::~CMsgInitialSetup() =====
void __fastcall CMsgInitialSetup::~CMsgInitialSetup(CMsgInitialSetup *this)
{
  *(_DWORD *)this = off_95B2D0;
  CMessage::~CMessage(this);
}


// ===== 320010 CMsgScriptCmd::~CMsgScriptCmd() =====
void __fastcall CMsgScriptCmd::~CMsgScriptCmd(CMsgScriptCmd *this)
{
  *(_DWORD *)this = off_95B300;
  CMessage::~CMessage(this);
}


// ===== 320044 CMsgMenuReady::~CMsgMenuReady() =====
void __fastcall CMsgMenuReady::~CMsgMenuReady(CMsgMenuReady *this)
{
  *(_DWORD *)this = off_95B330;
  CMessage::~CMessage(this);
}


// ===== 320078 CMsgRaisedEvent::~CMsgRaisedEvent() =====
void __fastcall CMsgRaisedEvent::~CMsgRaisedEvent(CMsgRaisedEvent *this)
{
  *(_DWORD *)this = off_95B360;
  CMessage::~CMessage(this);
}


// ===== 3200ac CMsgAttackResult::~CMsgAttackResult() =====
void __fastcall CMsgAttackResult::~CMsgAttackResult(CMsgAttackResult *this)
{
  *(_DWORD *)this = off_95B390;
  CMessage::~CMessage(this);
}


// ===== 3200e0 CMsgControllerAction::~CMsgControllerAction() =====
void __fastcall CMsgControllerAction::~CMsgControllerAction(CMsgControllerAction *this)
{
  *(_DWORD *)this = off_95B3C0;
  CMessage::~CMessage(this);
}


// ===== 320114 CMsgStartGame::~CMsgStartGame() =====
void __fastcall CMsgStartGame::~CMsgStartGame(CMsgStartGame *this)
{
  *(_DWORD *)this = off_95B3F0;
  CMessage::~CMessage(this);
}


// ===== 320148 std::basic_streambuf<char,std::char_traits<char>>::xsgetn(char *,int) =====
int __fastcall std::streambuf::xsgetn(_DWORD *a1, char *a2, int a3)
{
  int v6; // r4
  int v7; // r0
  char *v8; // r1
  unsigned int v9; // r3
  size_t v10; // r6

  if ( a3 <= 0 )
    return 0;
  v6 = 0;
  do
  {
    while ( 1 )
    {
      v8 = (char *)a1[2];
      v9 = a1[3];
      v10 = a3 - v6;
      if ( (unsigned int)v8 < v9 )
        break;
      v7 = (*(int (__fastcall **)(_DWORD *))(*a1 + 36))(a1);
      if ( v7 != -1 )
      {
        ++v6;
        *a2++ = v7;
        if ( a3 > v6 )
          continue;
      }
      return v6;
    }
    if ( v10 >= v9 - (unsigned int)v8 )
      v10 = v9 - (_DWORD)v8;
    if ( v10 )
    {
      memcpy(a2, v8, v10);
      v8 = (char *)a1[2];
    }
    v6 += v10;
    a2 += v10;
    a1[2] = &v8[v10];
  }
  while ( a3 > v6 );
  return v6;
}


// ===== 3201ec std::basic_streambuf<char,std::char_traits<char>>::xsputn(char const*,int) =====
int __fastcall std::streambuf::xsputn(_DWORD *a1, unsigned __int8 *a2, int a3)
{
  int v6; // r4
  size_t v7; // r5
  unsigned int v8; // r3
  size_t v9; // r2
  char *v11; // r0

  if ( a3 <= 0 )
    return 0;
  v6 = 0;
  do
  {
    while ( 1 )
    {
      v11 = (char *)a1[5];
      v8 = a1[6];
      v7 = a3 - v6;
      v9 = v8 - (_DWORD)v11;
      if ( (unsigned int)v11 < v8 )
        break;
      if ( (*(int (__fastcall **)(_DWORD *, _DWORD, size_t))(*a1 + 52))(a1, *a2, v9) != -1 )
      {
        ++v6;
        ++a2;
        if ( a3 > v6 )
          continue;
      }
      return v6;
    }
    if ( v7 >= v9 )
      v7 = v8 - (_DWORD)v11;
    if ( v7 )
    {
      memcpy(v11, a2, v7);
      v11 = (char *)a1[5];
    }
    v6 += v7;
    a2 += v7;
    a1[5] = &v11[v7];
  }
  while ( a3 > v6 );
  return v6;
}


// ===== 320294 glitch::debugger::CTweakable::SMapping::operator=(glitch::debugger::CTweakable::SMapping const&) =====
int __fastcall glitch::debugger::CTweakable::SMapping::operator=(int a1, int a2)
{
  std::string *v3; // r0

  *(_DWORD *)a1 = *(_DWORD *)a2;
  v3 = (std::string *)(a1 + 8);
  *(_DWORD *)(a1 + 4) = *(_DWORD *)(a2 + 4);
  if ( v3 != (std::string *)(a2 + 8) )
    std::string::_M_assign(v3, *(const char **)(a2 + 28), *(const char **)(a2 + 24));
  if ( a1 + 32 != a2 + 32 )
    std::string::_M_assign((std::string *const)(a1 + 32), *(const char **)(a2 + 52), *(const char **)(a2 + 48));
  return a1;
}


// ===== 3202f0 std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_compute_next_size(uint) =====
unsigned int __fastcall std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_compute_next_size(
        int a1,
        unsigned int a2)
{
  unsigned int v2; // r4
  unsigned int v4; // r0
  unsigned int result; // r0

  v2 = (*(_DWORD *)(a1 + 64) - *(_DWORD *)(a1 + 68)) >> 2;
  if ( 1073741822 - v2 < a2 )
    __ZSt24__stl_throw_length_errorPKc_veneer("basic_string");
  v4 = v2 + 1;
  if ( v2 < a2 )
    result = v4 + a2;
  else
    result = v4 + v2;
  if ( result > 0x3FFFFFFE || result < v2 )
    return 1073741822;
  return result;
}

