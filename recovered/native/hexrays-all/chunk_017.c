// ===== 48436c TiXmlVisitor::~TiXmlVisitor() =====
void __fastcall TiXmlVisitor::~TiXmlVisitor(TiXmlVisitor *this)
{
  *(_DWORD *)this = off_969B08;
  CustomFree(this);
}


// ===== 4843a0 rnd::RandomGenerator::UnloadTiles(void) =====
rnd::Tile *__fastcall rnd::RandomGenerator::UnloadTiles(rnd::RandomGenerator *this)
{
  rnd::Tile *result; // r0

  result = *((rnd::Tile **)this + 69);
  if ( result )
  {
    result = (rnd::Tile *)rnd::Tile::Unspawn(result);
    *((_DWORD *)this + 69) = 0;
  }
  return result;
}


// ===== 4843c4 std::priv::_Rb_tree<char const*,lstr,std::pair<char const* const,rnd::ListRule *>,std::priv::_Select1st<std::pair<char const* const,rnd::ListRule *>>,std::priv::_MapTraitsT<std::pair<char const* const,rnd::ListRule *>>,std::allocator<std::pair<char const* const,rnd::ListRule *>>>::_M_find<char const*>(char const* const&) =====
int __fastcall std::priv::_Rb_tree<char const*,lstr,std::pair<char const* const,rnd::ListRule *>,std::priv::_Select1st<std::pair<char const* const,rnd::ListRule *>>,std::priv::_MapTraitsT<std::pair<char const* const,rnd::ListRule *>>,std::allocator<std::pair<char const* const,rnd::ListRule *>>>::_M_find<char const*>(
        int a1,
        char **a2)
{
  int v2; // r4
  int v5; // r6
  int v6; // r7
  unsigned int v7; // r0

  v2 = *(_DWORD *)(a1 + 4);
  if ( !v2 )
    return a1;
  v5 = a1 + 20;
  v6 = a1;
  do
  {
    v7 = lstr::operator()(v5, *(char **)(v2 + 16), *a2);
    if ( v7 )
      v2 = *(_DWORD *)(v2 + 12);
    else
      v6 = v2;
    if ( !v7 )
      v2 = *(_DWORD *)(v2 + 8);
  }
  while ( v2 );
  if ( v6 != a1 && lstr::operator()(v5, *a2, *(char **)(v6 + 16)) )
    return a1;
  return v6;
}


// ===== 484438 rnd::RandomGenerator::GetList(char const*) =====
int __fastcall rnd::RandomGenerator::GetList(rnd::RandomGenerator *this, char *a2)
{
  char *v2; // r4
  int v3; // r0
  char *v5; // [sp+4h] [bp-4h] BYREF

  v5 = a2;
  v2 = (char *)this + 84;
  v3 = std::priv::_Rb_tree<char const*,lstr,std::pair<char const* const,rnd::ListRule *>,std::priv::_Select1st<std::pair<char const* const,rnd::ListRule *>>,std::priv::_MapTraitsT<std::pair<char const* const,rnd::ListRule *>>,std::allocator<std::pair<char const* const,rnd::ListRule *>>>::_M_find<char const*>(
         (int)this + 84,
         &v5);
  if ( (char *)v3 == v2 )
    return 0;
  else
    return *(_DWORD *)(v3 + 20);
}


// ===== 48446c std::priv::_Rb_tree<char const*,lstr,std::pair<char const* const,rnd::ListRule *>,std::priv::_Select1st<std::pair<char const* const,rnd::ListRule *>>,std::priv::_MapTraitsT<std::pair<char const* const,rnd::ListRule *>>,std::allocator<std::pair<char const* const,rnd::ListRule *>>>::_M_find<char [512]>(char [512] const&) =====
int __fastcall std::priv::_Rb_tree<char const*,lstr,std::pair<char const* const,rnd::ListRule *>,std::priv::_Select1st<std::pair<char const* const,rnd::ListRule *>>,std::priv::_MapTraitsT<std::pair<char const* const,rnd::ListRule *>>,std::allocator<std::pair<char const* const,rnd::ListRule *>>>::_M_find<char [512]>(
        int a1,
        char *a2)
{
  int v2; // r4
  int v5; // r6
  int v6; // r7
  unsigned int v7; // r0

  v2 = *(_DWORD *)(a1 + 4);
  if ( !v2 )
    return a1;
  v5 = a1 + 20;
  v6 = a1;
  do
  {
    v7 = lstr::operator()(v5, *(char **)(v2 + 16), a2);
    if ( v7 )
      v2 = *(_DWORD *)(v2 + 12);
    else
      v6 = v2;
    if ( !v7 )
      v2 = *(_DWORD *)(v2 + 8);
  }
  while ( v2 );
  if ( v6 != a1 && lstr::operator()(v5, a2, *(char **)(v6 + 16)) )
    return a1;
  return v6;
}


// ===== 4844e0 std::priv::_Rb_tree<char const*,lstr,std::pair<char const* const,rnd::Block *>,std::priv::_Select1st<std::pair<char const* const,rnd::Block *>>,std::priv::_MapTraitsT<std::pair<char const* const,rnd::Block *>>,std::allocator<std::pair<char const* const,rnd::Block *>>>::_M_find<char [512]>(char [512] const&) =====
int __fastcall std::priv::_Rb_tree<char const*,lstr,std::pair<char const* const,rnd::Block *>,std::priv::_Select1st<std::pair<char const* const,rnd::Block *>>,std::priv::_MapTraitsT<std::pair<char const* const,rnd::Block *>>,std::allocator<std::pair<char const* const,rnd::Block *>>>::_M_find<char [512]>(
        int a1,
        char *a2)
{
  int v2; // r4
  int v5; // r6
  int v6; // r7
  unsigned int v7; // r0

  v2 = *(_DWORD *)(a1 + 4);
  if ( !v2 )
    return a1;
  v5 = a1 + 20;
  v6 = a1;
  do
  {
    v7 = lstr::operator()(v5, *(char **)(v2 + 16), a2);
    if ( v7 )
      v2 = *(_DWORD *)(v2 + 12);
    else
      v6 = v2;
    if ( !v7 )
      v2 = *(_DWORD *)(v2 + 8);
  }
  while ( v2 );
  if ( v6 != a1 && lstr::operator()(v5, a2, *(char **)(v6 + 16)) )
    return a1;
  return v6;
}


// ===== 484554 rnd::RandomGenerator::ValidList(char const*) =====
bool __fastcall rnd::RandomGenerator::ValidList(rnd::RandomGenerator *this, const char *a2)
{
  char *v2; // r5
  char v4[512]; // [sp+4h] [bp-204h] BYREF

  v2 = (char *)this + 84;
  LC_API_STRCPY_0(v4, a2);
  ToLowerCase(v4, nullptr, (const char *)0xFFFFFFFF);
  return v2 != (char *)std::priv::_Rb_tree<char const*,lstr,std::pair<char const* const,rnd::ListRule *>,std::priv::_Select1st<std::pair<char const* const,rnd::ListRule *>>,std::priv::_MapTraitsT<std::pair<char const* const,rnd::ListRule *>>,std::allocator<std::pair<char const* const,rnd::ListRule *>>>::_M_find<char [512]>(
                         (int)v2,
                         v4);
}


// ===== 4845d0 rnd::RandomGenerator::ValidBlock(char const*) =====
bool __fastcall rnd::RandomGenerator::ValidBlock(rnd::RandomGenerator *this, const char *a2)
{
  char *v2; // r5
  char v4[512]; // [sp+4h] [bp-204h] BYREF

  v2 = (char *)this + 60;
  LC_API_STRCPY_0(v4, a2);
  ToLowerCase(v4, nullptr, (const char *)0xFFFFFFFF);
  return v2 != (char *)std::priv::_Rb_tree<char const*,lstr,std::pair<char const* const,rnd::Block *>,std::priv::_Select1st<std::pair<char const* const,rnd::Block *>>,std::priv::_MapTraitsT<std::pair<char const* const,rnd::Block *>>,std::allocator<std::pair<char const* const,rnd::Block *>>>::_M_find<char [512]>(
                         (int)v2,
                         v4);
}


// ===== 48464c `global constructor keyed to'.._.._sources_Game_random_rndApp.cpp =====
int `global constructor keyed to'.._.._sources_Game_random_rndApp.cpp()
{
  int result; // r0

  result = `guard variable for'Singleton<PlayerStatManager>::s_inst;
  dword_9A6208 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9A6204 = 1056964608;
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


// ===== 484728 std::string::find(char const*,uint) [clone] =====
size_t __fastcall std::string::find(int a1, char *a2)
{
  size_t result; // r0
  int v5; // r12
  int v6; // r5
  char *v7; // r0

  result = LC_API_STRLEN_0(a2);
  v5 = *(_DWORD *)(a1 + 16);
  v6 = *(_DWORD *)(a1 + 20);
  if ( v5 != v6 )
  {
    if ( result <= v5 - v6 )
    {
      v7 = std::search<char const*,char const*,std::priv::_Eq_traits<std::char_traits<char>>>(
             *(char **)(a1 + 20),
             *(char **)(a1 + 16),
             a2,
             &a2[result]);
      if ( v7 != *(char **)(a1 + 16) )
        return (size_t)&v7[-*(_DWORD *)(a1 + 20)];
    }
    return -1;
  }
  if ( result )
    return -1;
  return result;
}


// ===== 4847ac std::string::rfind(char,uint) [clone] =====
int __fastcall std::string::rfind(int a1)
{
  int v1; // r12
  int v3; // r3
  int v4; // r3
  int v6; // [sp+Ch] [bp-14h] BYREF
  int v7; // [sp+10h] [bp-10h] BYREF
  int v8; // [sp+14h] [bp-Ch] BYREF
  char v9[4]; // [sp+1Ch] [bp-4h] BYREF

  v1 = *(_DWORD *)(a1 + 20);
  v3 = *(_DWORD *)(a1 + 16) - v1;
  if ( !v3 )
    return -1;
  v6 = *(_DWORD *)(a1 + 20);
  v9[0] = 47;
  v7 = v1 + v3;
  std::priv::__find_if<std::reverse_iterator<char const*>,std::priv::_Eq_char_bound<std::char_traits<char>>>(
    &v8,
    &v7,
    &v6,
    v9);
  v4 = *(_DWORD *)(a1 + 20);
  if ( v4 == v8 )
    return -1;
  else
    return v8 - 1 - v4;
}


// ===== 484820 rnd::RandomGenerator::PrintMap(void) =====
int __fastcall rnd::RandomGenerator::PrintMap(rnd::RandomGenerator *this)
{
  _DWORD *v1; // r9
  char *v2; // r5
  int v3; // r1
  int v4; // r2
  int v5; // r3
  int result; // r0
  int i; // r8
  int j; // r7
  int v9; // r1
  int v10; // r2
  int v11; // r3
  int v12; // r1
  int v13; // r2
  int v14; // r3
  int v15; // r1
  int v16; // r2
  int v17; // r3
  int v18; // r1
  int v19; // r2
  int v20; // r3
  int v21; // r1
  int v22; // r2
  int v23; // r3
  int v24; // [sp+0h] [bp-30h] BYREF
  int v25; // [sp+4h] [bp-2Ch]
  int v26; // [sp+8h] [bp-28h]
  int v27; // [sp+Ch] [bp-24h]
  _DWORD v28[4]; // [sp+10h] [bp-20h] BYREF
  _DWORD *v29; // [sp+20h] [bp-10h] BYREF
  int v30; // [sp+24h] [bp-Ch]
  int v31; // [sp+28h] [bp-8h]
  int v32; // [sp+2Ch] [bp-4h]

  v1 = (_DWORD *)((char *)this + 36);
  v2 = (char *)this + 20;
  v3 = *((_DWORD *)this + 6);
  v4 = *((_DWORD *)this + 7);
  v5 = *((_DWORD *)this + 8);
  v24 = *((_DWORD *)this + 5);
  v25 = v3;
  v26 = v4;
  v27 = v5;
  result = std::priv::_Deque_iterator_base<std::deque<rnd::Tile *>>::_M_subtract((_DWORD *)this + 9, &v24);
  for ( i = 0; i < result; ++i )
  {
    for ( j = 0; ; ++j )
    {
      v15 = *((_DWORD *)v2 + 1);
      v16 = *((_DWORD *)v2 + 2);
      v17 = *((_DWORD *)v2 + 3);
      v29 = *(_DWORD **)v2;
      v30 = v15;
      v31 = v16;
      v32 = v17;
      std::priv::_Deque_iterator_base<std::deque<rnd::Tile *>>::_M_advance(&v29, 0);
      v18 = v29[1];
      v19 = v29[2];
      v20 = v29[3];
      v28[0] = *v29;
      v28[1] = v18;
      v28[2] = v19;
      v28[3] = v20;
      if ( j >= std::priv::_Deque_iterator_base<rnd::Tile *>::_M_subtract(v29 + 4, v28) )
        break;
      v9 = *((_DWORD *)v2 + 1);
      v10 = *((_DWORD *)v2 + 2);
      v11 = *((_DWORD *)v2 + 3);
      v29 = *(_DWORD **)v2;
      v30 = v9;
      v31 = v10;
      v32 = v11;
      std::priv::_Deque_iterator_base<std::deque<rnd::Tile *>>::_M_advance(&v29, i);
      v12 = v29[1];
      v13 = v29[2];
      v14 = v29[3];
      v29 = (_DWORD *)*v29;
      v30 = v12;
      v31 = v13;
      v32 = v14;
      std::priv::_Deque_iterator_base<rnd::Tile *>::_M_advance(&v29, j);
    }
    v21 = *((_DWORD *)v2 + 1);
    v22 = *((_DWORD *)v2 + 2);
    v23 = *((_DWORD *)v2 + 3);
    v24 = *(_DWORD *)v2;
    v25 = v21;
    v26 = v22;
    v27 = v23;
    result = std::priv::_Deque_iterator_base<std::deque<rnd::Tile *>>::_M_subtract(v1, &v24);
  }
  return result;
}


// ===== 4848f0 std::priv::__uninitialized_copy_fill<std::priv::_Deque_iterator<rnd::Tile *,std::_Nonconst_traits<rnd::Tile *>>,rnd::Tile *>(std::priv::_Deque_iterator<rnd::Tile *,std::_Nonconst_traits<rnd::Tile *>>,std::priv::_Deque_iterator<rnd::Tile *,std::_Nonconst_traits<rnd::Tile *>>,std::priv::_Deque_iterator<rnd::Tile *,std::_Nonconst_traits<rnd::Tile *>>,std::priv::_Deque_iterator<rnd::Tile *,std::_Nonconst_traits<rnd::Tile *>>,rnd::Tile * const&) =====
int __fastcall std::priv::__uninitialized_copy_fill<std::priv::_Deque_iterator<rnd::Tile *,std::_Nonconst_traits<rnd::Tile *>>,rnd::Tile *>(
        int *a1,
        int *a2,
        int *a3,
        _DWORD *a4,
        _DWORD *a5)
{
  int v5; // r8
  int v6; // r9
  int v7; // r10
  int v8; // r7
  int v9; // lr
  int v10; // r5
  int v11; // r6
  int v12; // r11
  int v14; // r2
  int v15; // r2
  int v16; // r12
  int v17; // lr
  int v18; // r8
  _DWORD *v19; // r7
  _DWORD *v20; // r6
  int result; // r0
  _DWORD *v22; // t1
  int v23; // [sp+8h] [bp-74h]
  int v24; // [sp+Ch] [bp-70h]
  _DWORD v25[4]; // [sp+14h] [bp-68h] BYREF
  _DWORD v26[4]; // [sp+24h] [bp-58h] BYREF
  int v27[4]; // [sp+34h] [bp-48h] BYREF
  _DWORD v28[4]; // [sp+44h] [bp-38h] BYREF
  _DWORD v29[4]; // [sp+54h] [bp-28h] BYREF
  int v30[2]; // [sp+64h] [bp-18h] BYREF
  _DWORD *v31; // [sp+6Ch] [bp-10h]
  int v32; // [sp+70h] [bp-Ch]

  v5 = a2[2];
  v6 = *a2;
  v7 = a2[1];
  v8 = a1[3];
  v9 = *a1;
  v10 = a1[1];
  v11 = a1[2];
  v12 = a3[3];
  v24 = *a3;
  v23 = a3[1];
  v14 = a3[2];
  v28[3] = a2[3];
  v27[2] = v14;
  v27[1] = v23;
  v27[0] = v24;
  v29[3] = v8;
  v29[2] = v11;
  v29[1] = v10;
  v29[0] = v9;
  v28[2] = v5;
  v28[1] = v7;
  v28[0] = v6;
  v27[3] = v12;
  std::priv::__ucopy<std::priv::_Deque_iterator<rnd::Tile *,std::_Nonconst_traits<rnd::Tile *>>,std::priv::_Deque_iterator<rnd::Tile *,std::_Nonconst_traits<rnd::Tile *>>,int>(
    v30,
    (int)v29,
    v28,
    v27);
  v15 = a4[1];
  v16 = a4[2];
  v17 = a4[3];
  v18 = v32;
  v19 = v31;
  v20 = (_DWORD *)v30[0];
  v26[0] = *a4;
  v26[3] = v17;
  v26[2] = v16;
  v26[1] = v15;
  v25[1] = v30[1];
  v25[0] = v30[0];
  v25[2] = v31;
  v25[3] = v32;
  result = std::priv::_Deque_iterator_base<rnd::Tile *>::_M_subtract(v26, v25);
  if ( result > 0 )
  {
    do
    {
      --result;
      *v20++ = *a5;
      if ( v20 == v19 )
      {
        v22 = *(_DWORD **)(v18 + 4);
        v18 += 4;
        v20 = v22;
        v19 = v22 + 32;
      }
    }
    while ( result );
  }
  return result;
}


// ===== 484a00 std::priv::__uninitialized_fill_copy<std::priv::_Deque_iterator<rnd::Tile *,std::_Nonconst_traits<rnd::Tile *>>,rnd::Tile *,std::priv::_Deque_iterator<rnd::Tile *,std::_Nonconst_traits<rnd::Tile *>>>(std::priv::_Deque_iterator<rnd::Tile *,std::_Nonconst_traits<rnd::Tile *>>,std::priv::_Deque_iterator<rnd::Tile *,std::_Nonconst_traits<rnd::Tile *>>,rnd::Tile * const&,std::priv::_Deque_iterator<rnd::Tile *,std::_Nonconst_traits<rnd::Tile *>>,std::priv::_Deque_iterator<rnd::Tile *,std::_Nonconst_traits<rnd::Tile *>>) =====
int *__fastcall std::priv::__uninitialized_fill_copy<std::priv::_Deque_iterator<rnd::Tile *,std::_Nonconst_traits<rnd::Tile *>>,rnd::Tile *,std::priv::_Deque_iterator<rnd::Tile *,std::_Nonconst_traits<rnd::Tile *>>>(
        int *a1,
        int a2,
        int *a3,
        _DWORD *a4,
        int *a5,
        int *a6)
{
  int v7; // r2
  _DWORD *v8; // r6
  int v9; // r7
  _DWORD *v10; // r5
  int v11; // r8
  int v12; // r12
  int v13; // lr
  int v16; // r0
  _DWORD *v17; // t1
  int v18; // r7
  int v19; // r12
  int v20; // r11
  int v21; // lr
  int v22; // r5
  int v23; // r10
  int v24; // r8
  int v25; // r4
  int v27; // [sp+Ch] [bp-68h]
  int v28; // [sp+10h] [bp-64h]
  int v29; // [sp+14h] [bp-60h]
  _DWORD v30[4]; // [sp+1Ch] [bp-58h] BYREF
  _DWORD v31[4]; // [sp+2Ch] [bp-48h] BYREF
  int v32[4]; // [sp+3Ch] [bp-38h] BYREF
  _DWORD v33[4]; // [sp+4Ch] [bp-28h] BYREF
  _DWORD v34[4]; // [sp+5Ch] [bp-18h] BYREF

  v7 = *(_DWORD *)(a2 + 4);
  v8 = *(_DWORD **)(a2 + 8);
  v9 = *(_DWORD *)(a2 + 12);
  v10 = *(_DWORD **)a2;
  v11 = a3[2];
  v12 = *a3;
  v13 = a3[1];
  v31[3] = a3[3];
  v31[2] = v11;
  v31[1] = v13;
  v31[0] = v12;
  v30[1] = v7;
  v30[0] = v10;
  v30[2] = v8;
  v30[3] = v9;
  v16 = std::priv::_Deque_iterator_base<rnd::Tile *>::_M_subtract(v31, v30);
  if ( v16 > 0 )
  {
    do
    {
      --v16;
      *v10++ = *a4;
      if ( v10 == v8 )
      {
        v17 = *(_DWORD **)(v9 + 4);
        v9 += 4;
        v10 = v17;
        v8 = v17 + 32;
      }
    }
    while ( v16 );
  }
  v18 = a5[3];
  v28 = a6[3];
  v27 = a3[3];
  v29 = *a5;
  v19 = *a6;
  v20 = a5[1];
  v21 = a6[1];
  v22 = a6[2];
  v23 = *a3;
  v24 = a3[1];
  v25 = a3[2];
  v34[2] = a5[2];
  v33[0] = v19;
  v34[0] = v29;
  v32[3] = v27;
  v34[3] = v18;
  v34[1] = v20;
  v33[3] = v28;
  v33[2] = v22;
  v33[1] = v21;
  v32[2] = v25;
  v32[1] = v24;
  v32[0] = v23;
  std::priv::__ucopy<std::priv::_Deque_iterator<rnd::Tile *,std::_Nonconst_traits<rnd::Tile *>>,std::priv::_Deque_iterator<rnd::Tile *,std::_Nonconst_traits<rnd::Tile *>>,int>(
    a1,
    (int)v34,
    v33,
    v32);
  return a1;
}


// ===== 484b2c std::priv::__put_num<char,std::char_traits<char>,ulong>(std::basic_ostream<char,std::char_traits<char>> &,ulong) =====
std::ostream *__fastcall std::priv::__put_num<char,std::char_traits<char>,unsigned long>(std::ostream *a1)
{
  std::ios_base *v2; // r0
  int M_exception_mask; // r2
  int v4; // r3
  std::locale::id *FacetIdEPKSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE_veneer; // r0
  std::locale::facet *v7; // r12
  int v8; // r5
  _BYTE v9[8]; // [sp+1Ch] [bp-10h] BYREF
  std::locale v10; // [sp+24h] [bp-8h] BYREF

  if ( !std::priv::__init_bostr<char,std::char_traits<char>>(a1)
    || (__ZNSt6localeC1ERKS__veneer(
          &v10,
          (const std::locale *const)&a1->gap4[*((_DWORD *)a1->_vptr.basic_ostream - 3) + 28]),
        FacetIdEPKSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE_veneer = __ZNSt4priv11_GetFacetIdEPKSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE_veneer(nullptr),
        v7 = __ZNKSt6locale12_M_use_facetERKNS_2idE_veneer(
               &v10,
               FacetIdEPKSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE_veneer),
        (*((void (__fastcall **)(_BYTE *, std::locale::facet *))v7->_vptr.facet + 4))(v9, v7),
        v8 = v9[4] ^ 1,
        __ZNSt6localeD1Ev_veneer(&v10),
        v8) )
  {
    v2 = (std::ios_base *)((char *)a1 + *((_DWORD *)a1->_vptr.basic_ostream - 3));
    M_exception_mask = v2->_M_exception_mask;
    v4 = v2->_M_iostate | 1;
    v2->_M_iostate = v4;
    if ( (v4 & M_exception_mask) != 0 )
      __ZNSt8ios_base16_M_throw_failureEv_veneer(v2);
  }
  if ( (*(_DWORD *)&a1->gap4[*((_DWORD *)a1->_vptr.basic_ostream - 3)] & 0x2000) != 0 )
    std::ostream::flush(a1);
  return a1;
}


// ===== 484c38 std::allocator<rnd::Tile **>::allocate(uint,void const*) =====
void *__fastcall std::allocator<rnd::Tile **>::allocate(int a1, unsigned int a2)
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


// ===== 484c98 std::allocator<std::deque<rnd::Tile *,std::allocator<rnd::Tile *>> *>::allocate(uint,void const*) =====
void *__fastcall std::allocator<std::deque<rnd::Tile *> *>::allocate(int a1, unsigned int a2)
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


// ===== 484cf8 std::allocator<rnd::RoomPool *>::_M_allocate(uint,uint &) =====
void *__fastcall std::allocator<rnd::RoomPool *>::_M_allocate(int a1, unsigned int a2, size_t *a3)
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


// ===== 484d68 std::priv::_Rb_tree<char const*,lstr,std::pair<char const* const,rnd::ListRule *>,std::priv::_Select1st<std::pair<char const* const,rnd::ListRule *>>,std::priv::_MapTraitsT<std::pair<char const* const,rnd::ListRule *>>,std::allocator<std::pair<char const* const,rnd::ListRule *>>>::_M_erase(std::priv::_Rb_tree_node_base *) =====
void __fastcall std::priv::_Rb_tree<char const*,lstr,std::pair<char const* const,rnd::ListRule *>,std::priv::_Select1st<std::pair<char const* const,rnd::ListRule *>>,std::priv::_MapTraitsT<std::pair<char const* const,rnd::ListRule *>>,std::allocator<std::pair<char const* const,rnd::ListRule *>>>::_M_erase(
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
      std::priv::_Rb_tree<char const*,lstr,std::pair<char const* const,rnd::ListRule *>,std::priv::_Select1st<std::pair<char const* const,rnd::ListRule *>>,std::priv::_MapTraitsT<std::pair<char const* const,rnd::ListRule *>>,std::allocator<std::pair<char const* const,rnd::ListRule *>>>::_M_erase(
        a1,
        v2[3]);
      v4 = (_DWORD *)v2[2];
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v2, 0x18u);
      v2 = v4;
    }
    while ( v4 );
  }
}


// ===== 484da0 std::deque<rnd::Tile *,std::allocator<rnd::Tile *>>::_M_erase(std::priv::_Deque_iterator<rnd::Tile *,std::_Nonconst_traits<rnd::Tile *>>,std::priv::_Deque_iterator<rnd::Tile *,std::_Nonconst_traits<rnd::Tile *>>,std::__false_type const&) =====
int *__fastcall std::deque<rnd::Tile *>::_M_erase(int *a1, int *a2, int *a3, int *a4)
{
  int v8; // r0
  int v9; // r1
  int v10; // r2
  int v11; // r3
  _DWORD *v12; // t0
  int v13; // r7
  int v14; // r1
  int v15; // r2
  int v16; // r3
  int v17; // r8
  int v18; // r1
  int v19; // r2
  int v20; // r3
  int v21; // r11
  int v22; // r9
  int v23; // r12
  int v24; // lr
  int v25; // r1
  int v26; // r2
  int v27; // r3
  void **v28; // r6
  unsigned int v29; // r7
  int v30; // r11
  int v31; // r9
  void *v32; // r0
  int v33; // r1
  int v34; // r2
  int v35; // r3
  int v36; // r1
  int v37; // r2
  unsigned int v38; // r3
  int v40; // r12
  int v41; // r6
  int v42; // lr
  int v43; // r5
  int v44; // r1
  int v45; // r2
  int v46; // r3
  unsigned int v47; // r3
  int v48; // r9
  int v49; // r11
  unsigned int v50; // r7
  unsigned int v51; // r6
  void *v52; // r0
  int v53; // [sp+8h] [bp-ECh]
  int v54; // [sp+8h] [bp-ECh]
  int v55; // [sp+8h] [bp-ECh]
  int v56; // [sp+8h] [bp-ECh]
  int v57; // [sp+Ch] [bp-E8h]
  int v58; // [sp+Ch] [bp-E8h]
  int v59; // [sp+Ch] [bp-E8h]
  int v60; // [sp+10h] [bp-E4h]
  int v61; // [sp+10h] [bp-E4h]
  int v62; // [sp+14h] [bp-E0h]
  int v63; // [sp+14h] [bp-E0h]
  int v64; // [sp+18h] [bp-DCh]
  int v65; // [sp+1Ch] [bp-D8h]
  int v66; // [sp+1Ch] [bp-D8h]
  int v67; // [sp+20h] [bp-D4h]
  int v68; // [sp+20h] [bp-D4h]
  int v69; // [sp+24h] [bp-D0h]
  int v70; // [sp+24h] [bp-D0h]
  int v71; // [sp+28h] [bp-CCh] BYREF
  int v72; // [sp+2Ch] [bp-C8h]
  int v73; // [sp+30h] [bp-C4h]
  unsigned int v74; // [sp+34h] [bp-C0h]
  _DWORD v75[4]; // [sp+38h] [bp-BCh] BYREF
  _DWORD v76[4]; // [sp+48h] [bp-ACh] BYREF
  _DWORD v77[4]; // [sp+58h] [bp-9Ch] BYREF
  _DWORD v78[4]; // [sp+68h] [bp-8Ch] BYREF
  int v79[4]; // [sp+78h] [bp-7Ch] BYREF
  int v80[4]; // [sp+88h] [bp-6Ch] BYREF
  int v81[4]; // [sp+98h] [bp-5Ch] BYREF
  int v82[4]; // [sp+A8h] [bp-4Ch] BYREF
  int v83[4]; // [sp+B8h] [bp-3Ch] BYREF
  _DWORD v84[4]; // [sp+C8h] [bp-2Ch] BYREF
  _DWORD v85[4]; // [sp+D8h] [bp-1Ch] BYREF

  v8 = *a3;
  v9 = a3[1];
  v12 = a3 + 2;
  v10 = a3[2];
  v11 = v12[1];
  v85[0] = v8;
  v85[1] = v9;
  v85[2] = v10;
  v85[3] = v11;
  v13 = std::priv::_Deque_iterator_base<rnd::Tile *>::_M_subtract(a4, v85);
  v14 = a2[1];
  v15 = a2[2];
  v16 = a2[3];
  v84[0] = *a2;
  v84[1] = v14;
  v84[2] = v15;
  v84[3] = v16;
  v17 = std::priv::_Deque_iterator_base<rnd::Tile *>::_M_subtract(a3, v84);
  v18 = a2[1];
  v19 = a2[2];
  v20 = a2[3];
  v75[0] = *a2;
  v75[1] = v18;
  v75[2] = v19;
  v75[3] = v20;
  if ( v17 > (std::priv::_Deque_iterator_base<rnd::Tile *>::_M_subtract(a2 + 4, v75) - v13) / 2 )
  {
    v66 = a4[3];
    v55 = a3[3];
    v70 = *a4;
    v68 = a4[1];
    v40 = a4[2];
    v64 = a2[4];
    v58 = a2[5];
    v41 = a2[6];
    v42 = a2[7];
    v63 = *a3;
    v61 = a3[1];
    v43 = a3[2];
    v78[2] = v40;
    v78[3] = v66;
    v77[3] = v42;
    v78[1] = v68;
    v76[2] = v43;
    v78[0] = v70;
    v77[2] = v41;
    v77[1] = v58;
    v77[0] = v64;
    v76[0] = v63;
    v76[1] = v61;
    v76[3] = v55;
    std::priv::__copy<std::priv::_Deque_iterator<rnd::Tile *,std::_Nonconst_traits<rnd::Tile *>>,std::priv::_Deque_iterator<rnd::Tile *,std::_Nonconst_traits<rnd::Tile *>>,int>(
      v79,
      (int)v78,
      v77,
      (int)v76);
    v44 = a2[5];
    v45 = a2[6];
    v46 = a2[7];
    v71 = a2[4];
    v72 = v44;
    v73 = v45;
    v74 = v46;
    std::priv::_Deque_iterator_base<rnd::Tile *>::_M_advance(&v71, -v13);
    v47 = a2[7];
    v48 = v74;
    v49 = v73;
    v56 = v72;
    v59 = v71;
    if ( v47 > v74 )
    {
      v50 = v74 + 4 + ((v47 - 1 - v74) & 0xFFFFFFFC);
      v51 = v74;
      do
      {
        v52 = *(void **)(v51 + 4);
        v51 += 4;
        if ( v52 )
          __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v52, 0x80u);
      }
      while ( v51 != v50 );
    }
    a2[6] = v49;
    a2[5] = v56;
    a2[7] = v48;
    a2[4] = v59;
  }
  else
  {
    v57 = a3[3];
    v53 = a4[3];
    v69 = *a2;
    v67 = a2[1];
    v65 = a2[2];
    v62 = *a3;
    v60 = a3[1];
    v21 = *a4;
    v22 = a4[1];
    v23 = a4[2];
    v24 = a3[2];
    v82[3] = a2[3];
    v81[2] = v24;
    v82[2] = v65;
    v81[1] = v60;
    v82[1] = v67;
    v82[0] = v69;
    v81[3] = v57;
    v81[0] = v62;
    v80[3] = v53;
    v80[2] = v23;
    v80[1] = v22;
    v80[0] = v21;
    std::priv::__copy_backward<std::priv::_Deque_iterator<rnd::Tile *,std::_Nonconst_traits<rnd::Tile *>>,std::priv::_Deque_iterator<rnd::Tile *,std::_Nonconst_traits<rnd::Tile *>>,int>(
      v83,
      v82,
      v81,
      v80);
    v25 = a2[1];
    v26 = a2[2];
    v27 = a2[3];
    v71 = *a2;
    v72 = v25;
    v73 = v26;
    v74 = v27;
    std::priv::_Deque_iterator_base<rnd::Tile *>::_M_advance(&v71, v13);
    v28 = (void **)a2[3];
    v29 = v74;
    v30 = v73;
    v31 = v72;
    v54 = v71;
    while ( (unsigned int)v28 < v29 )
    {
      v32 = *v28++;
      if ( v32 )
        __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v32, 0x80u);
    }
    a2[1] = v31;
    a2[2] = v30;
    a2[3] = v29;
    *a2 = v54;
  }
  v33 = a2[1];
  v34 = a2[2];
  v35 = a2[3];
  v71 = *a2;
  v72 = v33;
  v73 = v34;
  v74 = v35;
  std::priv::_Deque_iterator_base<rnd::Tile *>::_M_advance(&v71, v17);
  v36 = v72;
  v37 = v73;
  v38 = v74;
  *a1 = v71;
  a1[1] = v36;
  a1[2] = v37;
  a1[3] = v38;
  return a1;
}


// ===== 4850b8 std::priv::_Rb_tree<char const*,lstr,std::pair<char const* const,rnd::Block *>,std::priv::_Select1st<std::pair<char const* const,rnd::Block *>>,std::priv::_MapTraitsT<std::pair<char const* const,rnd::Block *>>,std::allocator<std::pair<char const* const,rnd::Block *>>>::_M_erase(std::priv::_Rb_tree_node_base *) =====
void __fastcall std::priv::_Rb_tree<char const*,lstr,std::pair<char const* const,rnd::Block *>,std::priv::_Select1st<std::pair<char const* const,rnd::Block *>>,std::priv::_MapTraitsT<std::pair<char const* const,rnd::Block *>>,std::allocator<std::pair<char const* const,rnd::Block *>>>::_M_erase(
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
      std::priv::_Rb_tree<char const*,lstr,std::pair<char const* const,rnd::Block *>,std::priv::_Select1st<std::pair<char const* const,rnd::Block *>>,std::priv::_MapTraitsT<std::pair<char const* const,rnd::Block *>>,std::allocator<std::pair<char const* const,rnd::Block *>>>::_M_erase(
        a1,
        v2[3]);
      v4 = (_DWORD *)v2[2];
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v2, 0x18u);
      v2 = v4;
    }
    while ( v4 );
  }
}


// ===== 4850f0 std::priv::_Rb_tree<char const*,lstr,std::pair<char const* const,rnd::ListRule *>,std::priv::_Select1st<std::pair<char const* const,rnd::ListRule *>>,std::priv::_MapTraitsT<std::pair<char const* const,rnd::ListRule *>>,std::allocator<std::pair<char const* const,rnd::ListRule *>>>::erase(std::priv::_Rb_tree_iterator<std::pair<char const* const,rnd::ListRule *>,std::priv::_MapTraitsT<std::pair<char const* const,rnd::ListRule *>>>) =====
void __fastcall std::priv::_Rb_tree<char const*,lstr,std::pair<char const* const,rnd::ListRule *>,std::priv::_Select1st<std::pair<char const* const,rnd::ListRule *>>,std::priv::_MapTraitsT<std::pair<char const* const,rnd::ListRule *>>,std::allocator<std::pair<char const* const,rnd::ListRule *>>>::erase(
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


// ===== 48512c std::priv::_Rb_tree<char const*,lstr,std::pair<char const* const,rnd::Block *>,std::priv::_Select1st<std::pair<char const* const,rnd::Block *>>,std::priv::_MapTraitsT<std::pair<char const* const,rnd::Block *>>,std::allocator<std::pair<char const* const,rnd::Block *>>>::erase(std::priv::_Rb_tree_iterator<std::pair<char const* const,rnd::Block *>,std::priv::_MapTraitsT<std::pair<char const* const,rnd::Block *>>>) =====
void __fastcall std::priv::_Rb_tree<char const*,lstr,std::pair<char const* const,rnd::Block *>,std::priv::_Select1st<std::pair<char const* const,rnd::Block *>>,std::priv::_MapTraitsT<std::pair<char const* const,rnd::Block *>>,std::allocator<std::pair<char const* const,rnd::Block *>>>::erase(
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


// ===== 485168 std::priv::_Deque_base<rnd::Tile *,std::allocator<rnd::Tile *>>::~_Deque_base() =====
_DWORD *__fastcall std::priv::_Deque_base<rnd::Tile *,std::allocator<rnd::Tile *>>::~_Deque_base(_DWORD *a1)
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


// ===== 4851ec std::deque<std::deque<rnd::Tile *,std::allocator<rnd::Tile *>>,std::allocator<std::deque<rnd::Tile *,std::allocator<rnd::Tile *>>>>::_M_erase(std::priv::_Deque_iterator<std::deque<rnd::Tile *,std::allocator<rnd::Tile *>>,std::_Nonconst_traits<std::deque<rnd::Tile *,std::allocator<rnd::Tile *>>>>,std::priv::_Deque_iterator<std::deque<rnd::Tile *,std::allocator<rnd::Tile *>>,std::_Nonconst_traits<std::deque<rnd::Tile *,std::allocator<rnd::Tile *>>>>,std::__true_type const&) =====
_DWORD *__fastcall std::deque<std::deque<rnd::Tile *>>::_M_erase(_DWORD *a1, _DWORD *a2, _DWORD *a3, _DWORD *a4)
{
  _DWORD *v7; // r0
  int v8; // r1
  int v9; // r2
  int v10; // r3
  _DWORD *v11; // t0
  int v12; // r1
  int v13; // r2
  int v14; // r3
  int v15; // r1
  int v16; // r2
  int v17; // r3
  _DWORD *v18; // r12
  _DWORD *v19; // r4
  _DWORD *v20; // r5
  _DWORD *v21; // r3
  _DWORD *v22; // r11
  _DWORD *v23; // r9
  bool v24; // zf
  _DWORD *v25; // r4
  _DWORD *v26; // r2
  _DWORD *v27; // r5
  bool v28; // cc
  _BOOL4 i; // r1
  _BOOL4 v30; // r1
  _DWORD *v31; // r8
  _DWORD *v32; // r5
  _DWORD *v33; // r7
  _DWORD *v34; // r4
  _DWORD *v35; // r8
  _DWORD *v36; // r0
  _DWORD *v37; // t1
  int v38; // r1
  int v39; // r2
  unsigned int v40; // r3
  unsigned int v41; // r7
  void **v42; // r5
  int v43; // r9
  int v44; // r10
  int v45; // r8
  void *v46; // r0
  _DWORD *v47; // r11
  _DWORD *v48; // r3
  _DWORD *v49; // r4
  _DWORD *v50; // r5
  _DWORD *v51; // r9
  _DWORD *v52; // r7
  int v53; // r1
  int v54; // r2
  int v55; // r3
  int v56; // r1
  int v57; // r2
  int v58; // r3
  int v59; // r0
  int v60; // r1
  int v61; // r2
  int v62; // r3
  bool v63; // zf
  _DWORD *v64; // r8
  int v65; // r5
  _DWORD *v66; // r0
  _DWORD *v67; // t1
  int v68; // r1
  int v69; // r2
  unsigned int v70; // r3
  unsigned int v71; // r8
  unsigned int v72; // r3
  int v73; // r11
  int v74; // r9
  int v75; // r10
  unsigned int v76; // r7
  unsigned int v77; // r5
  void *v78; // r0
  int v79; // r1
  int v80; // r2
  unsigned int v81; // r3
  int v82; // r1
  int v83; // r2
  unsigned int v84; // r3
  _BOOL4 v86; // r7
  _DWORD *v87; // r12
  int v88; // r1
  int v89; // r2
  int v90; // r3
  int v91; // r1
  int v92; // r2
  int v93; // r3
  bool v94; // zf
  int v95; // r0
  int v96; // r1
  int v97; // r2
  int v98; // r3
  _DWORD *v99; // t1
  bool v100; // zf
  _DWORD *v101; // t1
  int v103; // r1
  int v104; // r2
  int v105; // r3
  int v106; // r1
  int v107; // r2
  int v108; // r3
  int v109; // r0
  int v110; // r1
  int v111; // r2
  int v112; // r3
  _DWORD *v113; // t1
  int v114; // r1
  int v115; // r2
  int v116; // r3
  int v117; // r1
  int v118; // r2
  int v119; // r3
  int v120; // r0
  int v121; // r1
  int v122; // r2
  _DWORD *v123; // lr
  int v124; // r7
  _DWORD *v125; // r4
  _DWORD *v126; // r5
  _DWORD *v127; // r0
  _DWORD *v128; // t1
  _DWORD *v129; // r7
  int v130; // r8
  _DWORD *v131; // r0
  _DWORD *v132; // t1
  _DWORD *v133; // [sp+0h] [bp-5Ch]
  _DWORD *v135; // [sp+8h] [bp-54h]
  int v136; // [sp+8h] [bp-54h]
  int v137; // [sp+Ch] [bp-50h]
  int v138; // [sp+10h] [bp-4Ch]
  int v139; // [sp+14h] [bp-48h]
  int v140; // [sp+18h] [bp-44h] BYREF
  int v141; // [sp+1Ch] [bp-40h]
  int v142; // [sp+20h] [bp-3Ch]
  unsigned int v143; // [sp+24h] [bp-38h]
  _DWORD v144[4]; // [sp+28h] [bp-34h] BYREF
  _DWORD v145[4]; // [sp+38h] [bp-24h] BYREF
  _DWORD v146[5]; // [sp+48h] [bp-14h] BYREF

  v7 = (_DWORD *)*a3;
  v8 = a3[1];
  v11 = a3 + 2;
  v9 = a3[2];
  v10 = v11[1];
  v146[0] = v7;
  v146[1] = v8;
  v146[2] = v9;
  v146[3] = v10;
  v138 = std::priv::_Deque_iterator_base<std::deque<rnd::Tile *>>::_M_subtract(a4, v146);
  v12 = a2[1];
  v13 = a2[2];
  v14 = a2[3];
  v145[0] = *a2;
  v145[1] = v12;
  v145[2] = v13;
  v145[3] = v14;
  v137 = std::priv::_Deque_iterator_base<std::deque<rnd::Tile *>>::_M_subtract(a3, v145);
  v15 = a2[1];
  v16 = a2[2];
  v17 = a2[3];
  v144[0] = *a2;
  v144[1] = v15;
  v144[2] = v16;
  v144[3] = v17;
  if ( v137 > (std::priv::_Deque_iterator_base<std::deque<rnd::Tile *>>::_M_subtract(a2 + 4, v144) - v138) / 2 )
  {
    v47 = (_DWORD *)*a4;
    v48 = (_DWORD *)a2[4];
    if ( (_DWORD *)*a4 == v48 )
    {
      v124 = a3[3];
      v125 = (_DWORD *)*a3;
      v126 = (_DWORD *)a3[2];
      while ( v47 != v125 )
      {
        v127 = v125;
        v125 += 10;
        std::priv::_Deque_base<rnd::Tile *,std::allocator<rnd::Tile *>>::~_Deque_base(v127);
        if ( v125 == v126 )
        {
          v128 = *(_DWORD **)(v124 + 4);
          v124 += 4;
          v125 = v128;
          v126 = v128 + 30;
        }
      }
    }
    else
    {
      v49 = (_DWORD *)*a3;
      v50 = (_DWORD *)*a4;
      v139 = a4[3];
      v51 = (_DWORD *)a4[2];
      v136 = a3[3];
      v52 = (_DWORD *)a3[2];
      while ( v47 != v49 )
      {
        std::priv::_Deque_base<rnd::Tile *,std::allocator<rnd::Tile *>>::~_Deque_base(v49);
        v53 = v50[1];
        v54 = v50[2];
        v55 = v50[3];
        *v49 = *v50;
        v49[1] = v53;
        v49[2] = v54;
        v49[3] = v55;
        v56 = v50[5];
        v57 = v50[6];
        v58 = v50[7];
        v49[4] = v50[4];
        v49[5] = v56;
        v49[6] = v57;
        v49[7] = v58;
        v49[8] = v50[8];
        v49[9] = v50[9];
        v59 = *v50;
        v60 = v50[1];
        v61 = v50[2];
        v62 = v50[3];
        v50[8] = 0;
        v50[9] = 0;
        v50[4] = v59;
        v50[5] = v60;
        v50[6] = v61;
        v50[7] = v62;
        v50 += 10;
        if ( v51 == v50 )
          v62 = v139;
        v49 += 10;
        if ( v51 == v50 )
        {
          v50 = *(_DWORD **)(v62 + 4);
          v139 = v62 + 4;
          v51 = v50 + 30;
        }
        v63 = v49 == v52;
        if ( v49 == v52 )
        {
          v52 = *(_DWORD **)(v136 + 4);
          v136 += 4;
        }
        v48 = (_DWORD *)a2[4];
        if ( v63 )
        {
          v49 = v52;
          v52 += 30;
        }
        if ( v50 == v48 )
        {
          v64 = (_DWORD *)*a4;
          if ( (_DWORD *)*a4 != v49 )
          {
            v65 = v136;
            while ( v64 != v49 )
            {
              v66 = v49;
              v49 += 10;
              std::priv::_Deque_base<rnd::Tile *,std::allocator<rnd::Tile *>>::~_Deque_base(v66);
              if ( v49 == v52 )
              {
                v67 = *(_DWORD **)(v65 + 4);
                v65 += 4;
                v49 = v67;
                v52 = v67 + 30;
              }
            }
            goto LABEL_51;
          }
          break;
        }
        v47 = (_DWORD *)*a4;
      }
      while ( 1 )
      {
        v123 = v50 + 4;
        if ( v50 == v48 )
          break;
        v114 = v50[1];
        v115 = v50[2];
        v116 = v50[3];
        *v49 = *v50;
        v49[1] = v114;
        v49[2] = v115;
        v49[3] = v116;
        v117 = v50[5];
        v118 = v50[6];
        v119 = v50[7];
        v49[4] = *v123;
        v49[5] = v117;
        v49[6] = v118;
        v49[7] = v119;
        v49[8] = v50[8];
        v49[9] = v50[9];
        v120 = *v50;
        v121 = v50[1];
        v122 = v50[2];
        v48 = (_DWORD *)v50[3];
        v50[8] = 0;
        v50[9] = 0;
        *v123 = v120;
        v50[5] = v121;
        v50[6] = v122;
        v50[7] = v48;
        v50 += 10;
        if ( v51 == v50 )
          v121 = v139;
        v49 += 10;
        if ( v51 == v50 )
        {
          v50 = *(_DWORD **)(v121 + 4);
          v139 = v121 + 4;
          v51 = v50 + 30;
        }
        if ( v49 == v52 )
          v122 = v136;
        else
          v48 = (_DWORD *)a2[4];
        if ( v49 == v52 )
        {
          v49 = *(_DWORD **)(v122 + 4);
          v136 = v122 + 4;
          v48 = (_DWORD *)a2[4];
          v52 = v49 + 30;
        }
      }
    }
LABEL_51:
    v68 = a2[5];
    v69 = a2[6];
    v70 = a2[7];
    v140 = a2[4];
    v141 = v68;
    v142 = v69;
    v143 = v70;
    std::priv::_Deque_iterator_base<std::deque<rnd::Tile *>>::_M_advance(&v140, -v138);
    v71 = v143;
    v72 = a2[7];
    v73 = v142;
    v74 = v141;
    v75 = v140;
    if ( v72 > v143 )
    {
      v76 = v143 + 4 + ((v72 - 1 - v143) & 0xFFFFFFFC);
      v77 = v143;
      do
      {
        v78 = *(void **)(v77 + 4);
        v77 += 4;
        if ( v78 )
          __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v78, 0x78u);
      }
      while ( v77 != v76 );
    }
    a2[6] = v73;
    a2[5] = v74;
    a2[4] = v75;
    a2[7] = v71;
  }
  else
  {
    v18 = (_DWORD *)a4[2];
    v19 = (_DWORD *)*a3;
    v20 = (_DWORD *)*a4;
    v21 = (_DWORD *)a3[3];
    v22 = (_DWORD *)a3[1];
    v135 = v18;
    v133 = (_DWORD *)a4[3];
    v23 = (_DWORD *)a4[1];
    if ( *a3 == *a2 )
    {
      v129 = (_DWORD *)a2[2];
      v130 = a2[3];
      while ( v20 != v19 )
      {
        v131 = v19;
        v19 += 10;
        std::priv::_Deque_base<rnd::Tile *,std::allocator<rnd::Tile *>>::~_Deque_base(v131);
        if ( v19 == v129 )
        {
          v132 = *(_DWORD **)(v130 + 4);
          v130 += 4;
          v19 = v132;
          v129 = v132 + 30;
        }
      }
    }
    else
    {
      v24 = v19 == v22;
      if ( v19 == v22 )
        v22 = (_DWORD *)*(v21 - 1);
      else
        a4 = (_DWORD *)a3[3];
      if ( v24 )
      {
        a4 = v21 - 1;
        v19 = v22 + 30;
      }
      v25 = v19 - 10;
      if ( v23 == v20 )
      {
        v23 = (_DWORD *)*(v133 - 1);
        v18 = v23 + 30;
        --v133;
        v135 = v23 + 30;
        v20 = v23 + 30;
      }
      v26 = (_DWORD *)a2[3];
      v27 = v20 - 10;
      v28 = v26 > a4;
      if ( v26 == a4 )
        goto LABEL_79;
LABEL_11:
      for ( i = v28; !i; i = (unsigned int)v25 < *a2 )
      {
        v18 = v133;
        if ( v133 == v21 ? (unsigned int)v27 < *a3 : v133 < v21 )
          break;
        std::priv::_Deque_base<rnd::Tile *,std::allocator<rnd::Tile *>>::~_Deque_base(v27);
        v103 = v25[1];
        v104 = v25[2];
        v105 = v25[3];
        *v27 = *v25;
        v27[1] = v103;
        v27[2] = v104;
        v27[3] = v105;
        v18 = v25 + 4;
        v106 = v25[5];
        v107 = v25[6];
        v108 = v25[7];
        v27[4] = v25[4];
        v27[5] = v106;
        v27[6] = v107;
        v27[7] = v108;
        v27[8] = v25[8];
        v27[9] = v25[9];
        v109 = *v25;
        v110 = v25[1];
        v111 = v25[2];
        v112 = v25[3];
        v25[9] = 0;
        v25[8] = 0;
        v25[4] = v109;
        v25[5] = v110;
        v25[6] = v111;
        v25[7] = v112;
        if ( v25 == v22 )
        {
          v113 = (_DWORD *)*--a4;
          v22 = v113;
          v25 = v113 + 30;
        }
        v25 -= 10;
        if ( v27 == v23 )
        {
          v23 = (_DWORD *)*--v133;
          v135 = v23 + 30;
          v27 = v23 + 30;
        }
        v21 = (_DWORD *)a3[3];
        v26 = (_DWORD *)a2[3];
        v27 -= 10;
        v28 = v26 > a4;
        if ( v26 != a4 )
          goto LABEL_11;
LABEL_79:
        ;
      }
      if ( v21 == v133 )
        v30 = (unsigned int)v27 < *a3;
      else
        v30 = v21 > v133;
      if ( v30 )
      {
        v31 = v133;
        while ( 1 )
        {
          v86 = a4 == v26 ? *a2 > (unsigned int)v25 : a4 < v26;
          v87 = v25 + 4;
          if ( v86 )
            break;
          v88 = v25[1];
          v89 = v25[2];
          v90 = v25[3];
          *v27 = *v25;
          v27[1] = v88;
          v27[2] = v89;
          v27[3] = v90;
          v91 = v25[5];
          v92 = v25[6];
          v93 = v25[7];
          v27[4] = *v87;
          v27[5] = v91;
          v27[6] = v92;
          v27[7] = v93;
          v94 = v22 == v25;
          v27[8] = v25[8];
          v27[9] = v25[9];
          v95 = *v25;
          v96 = v25[1];
          v97 = v25[2];
          v98 = v25[3];
          v25[9] = 0;
          v25[8] = 0;
          *v87 = v95;
          v25[5] = v96;
          v25[6] = v97;
          v25[7] = v98;
          if ( v22 == v25 )
          {
            v99 = (_DWORD *)*--a4;
            v22 = v99;
          }
          v26 = (_DWORD *)a2[3];
          if ( v94 )
            v25 = v22 + 30;
          v100 = v23 == v27;
          if ( v23 == v27 )
          {
            v101 = (_DWORD *)*--v31;
            v23 = v101;
          }
          v25 -= 10;
          if ( v100 )
            v27 = v23 + 30;
          v27 -= 10;
        }
      }
      else
      {
        v32 = v27 + 10;
        v33 = (_DWORD *)a3[2];
        if ( v32 == v135 )
          v18 = v133;
        v34 = (_DWORD *)*a3;
        v35 = v21;
        if ( v32 == v135 )
          v32 = (_DWORD *)v18[1];
        while ( v32 != v34 )
        {
          v36 = v34;
          v34 += 10;
          std::priv::_Deque_base<rnd::Tile *,std::allocator<rnd::Tile *>>::~_Deque_base(v36);
          if ( v34 == v33 )
          {
            v37 = (_DWORD *)v35[1];
            ++v35;
            v34 = v37;
            v33 = v37 + 30;
          }
        }
      }
    }
    v38 = a2[1];
    v39 = a2[2];
    v40 = a2[3];
    v140 = *a2;
    v141 = v38;
    v142 = v39;
    v143 = v40;
    std::priv::_Deque_iterator_base<std::deque<rnd::Tile *>>::_M_advance(&v140, v138);
    v41 = v143;
    v42 = (void **)a2[3];
    v43 = v142;
    v44 = v141;
    v45 = v140;
    if ( (unsigned int)v42 < v143 )
    {
      do
      {
        v46 = *v42++;
        if ( v46 )
          __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v46, 0x78u);
      }
      while ( (unsigned int)v42 < v41 );
    }
    a2[2] = v43;
    *a2 = v45;
    a2[1] = v44;
    a2[3] = v41;
  }
  v79 = a2[1];
  v80 = a2[2];
  v81 = a2[3];
  v140 = *a2;
  v141 = v79;
  v142 = v80;
  v143 = v81;
  std::priv::_Deque_iterator_base<std::deque<rnd::Tile *>>::_M_advance(&v140, v137);
  v82 = v141;
  v83 = v142;
  v84 = v143;
  *a1 = v140;
  a1[1] = v82;
  a1[2] = v83;
  a1[3] = v84;
  return a1;
}


// ===== 4857c4 std::priv::_Deque_base<std::deque<rnd::Tile *,std::allocator<rnd::Tile *>>,std::allocator<std::deque<rnd::Tile *,std::allocator<rnd::Tile *>>>>::~_Deque_base() =====
_DWORD *__fastcall std::priv::_Deque_base<std::deque<rnd::Tile *>,std::allocator<std::deque<rnd::Tile *>>>::~_Deque_base(
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


// ===== 485848 std::deque<std::deque<rnd::Tile *,std::allocator<rnd::Tile *>>,std::allocator<std::deque<rnd::Tile *,std::allocator<rnd::Tile *>>>>::~deque() =====
_DWORD *__fastcall std::deque<std::deque<rnd::Tile *>>::~deque(_DWORD *a1)
{
  _DWORD *v2; // r4
  _DWORD *v3; // r5
  _DWORD *v4; // r6
  int v5; // r8
  _DWORD *v6; // r0
  _DWORD *v7; // t1

  v2 = (_DWORD *)*a1;
  v3 = (_DWORD *)a1[2];
  v4 = (_DWORD *)a1[4];
  v5 = a1[3];
  while ( v2 != v4 )
  {
    v6 = v2;
    v2 += 10;
    std::priv::_Deque_base<rnd::Tile *,std::allocator<rnd::Tile *>>::~_Deque_base(v6);
    if ( v2 == v3 )
    {
      v7 = *(_DWORD **)(v5 + 4);
      v5 += 4;
      v2 = v7;
      v3 = v7 + 30;
    }
  }
  std::priv::_Deque_base<std::deque<rnd::Tile *>,std::allocator<std::deque<rnd::Tile *>>>::~_Deque_base(a1);
  return a1;
}


// ===== 485894 std::deque<rnd::Tile *,std::allocator<rnd::Tile *>>::clear(void) =====
int __fastcall std::deque<rnd::Tile *>::clear(int *a1)
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


// ===== 48590c std::deque<rnd::Tile *,std::allocator<rnd::Tile *>>::erase(std::priv::_Deque_iterator<rnd::Tile *,std::_Nonconst_traits<rnd::Tile *>>,std::priv::_Deque_iterator<rnd::Tile *,std::_Nonconst_traits<rnd::Tile *>>) =====
int *__fastcall std::deque<rnd::Tile *>::erase(int *a1, int *a2, int *a3, int *a4)
{
  int v7; // r3
  int v8; // r0
  int v9; // r1
  int v10; // r2
  int v11; // r3
  _DWORD *v12; // t0
  int v13; // r1
  int v14; // r2
  int v15; // r3
  int *v17; // r5
  int v18; // r1
  int v19; // r2
  int v20; // r3
  int v21; // r0
  int v22; // r1
  int v23; // r2
  int v24; // r3
  _DWORD *v25; // t0
  int v26[4]; // [sp+Ch] [bp-24h] BYREF
  int v27[4]; // [sp+1Ch] [bp-14h] BYREF

  if ( *a3 == *a2 )
  {
    v7 = *a4;
    if ( *a4 == a2[4] )
    {
      v17 = a2 + 4;
      std::deque<rnd::Tile *>::clear(a2);
      v18 = v17[1];
      v19 = v17[2];
      v20 = v17[3];
      *a1 = *v17;
      a1[1] = v18;
      a1[2] = v19;
      a1[3] = v20;
      return a1;
    }
  }
  else
  {
    v7 = *a4;
  }
  if ( v7 == *a3 )
  {
    v21 = *a3;
    v22 = a3[1];
    v25 = a3 + 2;
    v23 = a3[2];
    v24 = v25[1];
    *a1 = v21;
    a1[1] = v22;
    a1[2] = v23;
    a1[3] = v24;
  }
  else
  {
    v8 = *a3;
    v9 = a3[1];
    v12 = a3 + 2;
    v10 = a3[2];
    v11 = v12[1];
    v27[0] = v8;
    v27[1] = v9;
    v27[2] = v10;
    v27[3] = v11;
    v13 = a4[1];
    v14 = a4[2];
    v15 = a4[3];
    v26[0] = *a4;
    v26[1] = v13;
    v26[2] = v14;
    v26[3] = v15;
    std::deque<rnd::Tile *>::_M_erase(a1, a2, v27, v26);
  }
  return a1;
}


// ===== 4859b0 std::vector<rnd::RPElem,std::allocator<rnd::RPElem>>::~vector() =====
int __fastcall std::vector<rnd::RPElem>::~vector(int a1)
{
  void *v2; // r0
  size_t v3; // r1

  v2 = *(void **)a1;
  if ( !v2 )
    return a1;
  v3 = 8 * ((*(_DWORD *)(a1 + 8) - (int)v2) >> 3);
  if ( v3 <= 0x80 )
  {
    __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v2, v3);
    return a1;
  }
  CustomFree(v2);
  return a1;
}


// ===== 485a0c rnd::RoomPool::~RoomPool() =====
void __fastcall rnd::RoomPool::~RoomPool(rnd::RoomPool *this)
{
  int v1; // r3

  v1 = *((_DWORD *)this + 1);
  if ( v1 != *((_DWORD *)this + 2) )
    *((_DWORD *)this + 2) = v1;
  std::vector<rnd::RPElem>::~vector((int)this + 4);
}


// ===== 485a34 rnd::RandomGenerator::UnloadRoomPools(void) =====
rnd::RoomPool **__fastcall rnd::RandomGenerator::UnloadRoomPools(rnd::RandomGenerator *this)
{
  rnd::RoomPool **v2; // r3
  rnd::RoomPool **result; // r0
  rnd::RoomPool *v4; // r4

  v2 = *((rnd::RoomPool ***)this + 71);
  for ( result = *((rnd::RoomPool ***)this + 70); v2 != result; result = *((rnd::RoomPool ***)this + 70) )
  {
    v4 = *result;
    if ( result + 1 != v2 )
    {
      memmove(result, result + 1, (char *)v2 - (char *)(result + 1));
      v2 = *((rnd::RoomPool ***)this + 71);
    }
    *((_DWORD *)this + 71) = --v2;
    if ( v4 )
    {
      rnd::RoomPool::~RoomPool(v4);
      CustomFree(v4);
      v2 = *((rnd::RoomPool ***)this + 71);
    }
  }
  return result;
}


// ===== 485aa0 TiXmlPrinter::TiXmlPrinter(void) =====
void __fastcall TiXmlPrinter::TiXmlPrinter(TiXmlPrinter *this)
{
  _DWORD *v2; // r0

  *(_DWORD *)this = off_96C3F0;
  v2 = (_DWORD *)((char *)this + 12);
  *((_DWORD *)this + 7) = v2;
  *((_DWORD *)this + 8) = v2;
  *((_DWORD *)this + 1) = 0;
  *((_BYTE *)this + 8) = 0;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block(v2, 0x10u);
  **((_BYTE **)this + 7) = 0;
  std::string::string((std::string *)((char *)this + 36), "\t");
  std::string::string((std::string *)((char *)this + 60), "\n");
}


// ===== 485b34 std::vector<std::string,std::allocator<std::string>>::_M_insert_overflow_aux(std::string *,std::string const&,std::__false_type const&,uint,bool) [clone] =====
void __fastcall std::vector<std::string>::_M_insert_overflow_aux(std::string **a1, int a2, int a3)
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
  v13->_M_finish = (char *)v13;
  v13->_M_start_of_storage._M_data = (char *)v13;
  std::string::_M_range_initialize(v13, *(const char **)(a3 + 20), *(const char **)(a3 + 16));
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


// ===== 485cdc rnd::RandomGenerator::LoadRoomPools(TiXmlNode *) =====
int __fastcall rnd::RandomGenerator::LoadRoomPools(rnd::RandomGenerator *this, TiXmlNode *a2)
{
  TiXmlNode *i; // r8
  rnd::RoomPool *v4; // r0
  rnd::RoomPool *v5; // r4
  char *v6; // r7
  unsigned int v8; // r2
  unsigned int v9; // r3
  char *v10; // r0
  _BYTE *v11; // r1
  char *v12; // r9
  size_t v13; // r7
  rnd::RoomPool **v14; // r7
  _DWORD *v15; // r7
  void *v16; // r0
  size_t v17; // r1
  size_t v18; // r3
  size_t v19; // r3
  size_t v20[2]; // [sp+Ch] [bp-8h] BYREF

  for ( i = (TiXmlNode *)TiXmlNode::FirstChild(a2, "pool"); i; i = (TiXmlNode *)TiXmlNode::NextSibling(i, "pool") )
  {
    v4 = (rnd::RoomPool *)operator new(0x14u, 0);
    *(_DWORD *)v4 = 0;
    *((_DWORD *)v4 + 1) = 0;
    *((_DWORD *)v4 + 2) = 0;
    *((_DWORD *)v4 + 3) = 0;
    *((_DWORD *)v4 + 4) = this;
    v5 = v4;
    rnd::RoomPool::LoadFromXml(v4, i);
    v6 = *((char **)this + 71);
    if ( v6 == *((char **)this + 72) )
    {
      v8 = (int)&v6[-*((_DWORD *)this + 70)] >> 2;
      if ( v8 )
        v9 = 2 * v8;
      else
        v9 = 1;
      if ( v9 > 0x3FFFFFFF || v8 > v9 )
        v9 = 0x3FFFFFFF;
      v20[0] = v9;
      v10 = (char *)std::allocator<rnd::RoomPool *>::_M_allocate((int)this + 288, v9, v20);
      v11 = *((_BYTE **)this + 70);
      v12 = v10;
      v13 = v6 - v11;
      if ( v13 )
        v14 = (rnd::RoomPool **)((char *)memmove(v10, v11, v13) + v13);
      else
        v14 = (rnd::RoomPool **)v10;
      *v14 = v5;
      v15 = v14 + 1;
      v16 = *((void **)this + 70);
      if ( v16 )
      {
        v17 = (*((_DWORD *)this + 72) - (_DWORD)v16) & 0xFFFFFFFC;
        if ( v17 > 0x80 )
        {
          CustomFree(v16);
          v19 = v20[0];
          *((_DWORD *)this + 70) = v12;
          *((_DWORD *)this + 71) = v15;
          *((_DWORD *)this + 72) = &v12[4 * v19];
          continue;
        }
        __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v16, v17);
      }
      v18 = v20[0];
      *((_DWORD *)this + 70) = v12;
      *((_DWORD *)this + 71) = v15;
      *((_DWORD *)this + 72) = &v12[4 * v18];
    }
    else
    {
      *(_DWORD *)v6 = v5;
      *((_DWORD *)this + 71) += 4;
    }
  }
  return 1;
}


// ===== 485e48 std::deque<std::deque<rnd::Tile *,std::allocator<rnd::Tile *>>,std::allocator<std::deque<rnd::Tile *,std::allocator<rnd::Tile *>>>>::clear(void) =====
_DWORD *__fastcall std::deque<std::deque<rnd::Tile *>>::clear(_DWORD *a1)
{
  int v1; // r4
  unsigned int v2; // r3
  unsigned int v4; // r4
  _DWORD *v5; // r6
  void *v6; // r0
  unsigned int v7; // r2
  _DWORD *v8; // r4
  _DWORD *v9; // r6
  _DWORD *v10; // r0
  _DWORD *v11; // r4
  _DWORD *v12; // r6
  _DWORD *v13; // r0
  _DWORD *v14; // r4
  _DWORD *v15; // r6
  _DWORD *v16; // r0
  _DWORD *result; // r0
  int v18; // r1
  int v19; // r2
  int v20; // r3

  v1 = a1[3];
  v2 = a1[7];
  if ( v2 > v1 + 4 )
  {
    v4 = v1 + 8;
    do
    {
      v5 = *(_DWORD **)(v4 - 4);
      std::priv::_Deque_base<rnd::Tile *,std::allocator<rnd::Tile *>>::~_Deque_base(v5);
      std::priv::_Deque_base<rnd::Tile *,std::allocator<rnd::Tile *>>::~_Deque_base(v5 + 10);
      std::priv::_Deque_base<rnd::Tile *,std::allocator<rnd::Tile *>>::~_Deque_base(v5 + 20);
      v6 = *(void **)(v4 - 4);
      if ( v6 )
        __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v6, 0x78u);
      v2 = a1[7];
      v7 = v4;
      v4 += 4;
    }
    while ( v2 > v7 );
    v1 = a1[3];
  }
  if ( v2 == v1 )
  {
    v14 = (_DWORD *)*a1;
    v15 = (_DWORD *)a1[4];
    if ( (_DWORD *)*a1 != v15 )
    {
      do
      {
        v16 = v14;
        v14 += 10;
        std::priv::_Deque_base<rnd::Tile *,std::allocator<rnd::Tile *>>::~_Deque_base(v16);
      }
      while ( v15 != v14 );
    }
  }
  else
  {
    v8 = (_DWORD *)*a1;
    v9 = (_DWORD *)a1[2];
    if ( (_DWORD *)*a1 != v9 )
    {
      do
      {
        v10 = v8;
        v8 += 10;
        std::priv::_Deque_base<rnd::Tile *,std::allocator<rnd::Tile *>>::~_Deque_base(v10);
      }
      while ( v9 != v8 );
    }
    v11 = (_DWORD *)a1[5];
    v12 = (_DWORD *)a1[4];
    if ( v11 != v12 )
    {
      do
      {
        v13 = v11;
        v11 += 10;
        std::priv::_Deque_base<rnd::Tile *,std::allocator<rnd::Tile *>>::~_Deque_base(v13);
      }
      while ( v12 != v11 );
      v12 = (_DWORD *)a1[5];
    }
    if ( v12 )
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v12, 0x78u);
  }
  result = (_DWORD *)*a1;
  v18 = a1[1];
  v19 = a1[2];
  v20 = a1[3];
  a1[4] = *a1;
  a1[5] = v18;
  a1[6] = v19;
  a1[7] = v20;
  return result;
}


// ===== 485f5c std::deque<std::deque<rnd::Tile *,std::allocator<rnd::Tile *>>,std::allocator<std::deque<rnd::Tile *,std::allocator<rnd::Tile *>>>>::erase(std::priv::_Deque_iterator<std::deque<rnd::Tile *,std::allocator<rnd::Tile *>>,std::_Nonconst_traits<std::deque<rnd::Tile *,std::allocator<rnd::Tile *>>>>,std::priv::_Deque_iterator<std::deque<rnd::Tile *,std::allocator<rnd::Tile *>>,std::_Nonconst_traits<std::deque<rnd::Tile *,std::allocator<rnd::Tile *>>>>) =====
_DWORD *__fastcall std::deque<std::deque<rnd::Tile *>>::erase(_DWORD *a1, _DWORD *a2, int *a3, int *a4)
{
  int v7; // r3
  int v8; // r0
  int v9; // r1
  int v10; // r2
  int v11; // r3
  _DWORD *v12; // t0
  int v13; // r1
  int v14; // r2
  int v15; // r3
  _DWORD *v17; // r5
  int v18; // r1
  int v19; // r2
  int v20; // r3
  int v21; // r0
  int v22; // r1
  int v23; // r2
  int v24; // r3
  _DWORD *v25; // t0
  _DWORD v26[4]; // [sp+Ch] [bp-24h] BYREF
  _DWORD v27[4]; // [sp+1Ch] [bp-14h] BYREF

  if ( *a3 == *a2 )
  {
    v7 = *a4;
    if ( *a4 == a2[4] )
    {
      v17 = a2 + 4;
      std::deque<std::deque<rnd::Tile *>>::clear(a2);
      v18 = v17[1];
      v19 = v17[2];
      v20 = v17[3];
      *a1 = *v17;
      a1[1] = v18;
      a1[2] = v19;
      a1[3] = v20;
      return a1;
    }
  }
  else
  {
    v7 = *a4;
  }
  if ( v7 == *a3 )
  {
    v21 = *a3;
    v22 = a3[1];
    v25 = a3 + 2;
    v23 = a3[2];
    v24 = v25[1];
    *a1 = v21;
    a1[1] = v22;
    a1[2] = v23;
    a1[3] = v24;
  }
  else
  {
    v8 = *a3;
    v9 = a3[1];
    v12 = a3 + 2;
    v10 = a3[2];
    v11 = v12[1];
    v27[0] = v8;
    v27[1] = v9;
    v27[2] = v10;
    v27[3] = v11;
    v13 = a4[1];
    v14 = a4[2];
    v15 = a4[3];
    v26[0] = *a4;
    v26[1] = v13;
    v26[2] = v14;
    v26[3] = v15;
    std::deque<std::deque<rnd::Tile *>>::_M_erase(a1, a2, v27, v26);
  }
  return a1;
}


// ===== 486000 std::allocator<std::priv::_Rb_tree_node<std::pair<char const* const,rnd::Block *>>>::allocate(uint,void const*) [clone] =====
void *std::allocator<std::priv::_Rb_tree_node<std::pair<char const* const,rnd::Block *>>>::allocate()
{
  size_t v1; // [sp+4h] [bp-8h] BYREF

  v1 = 24;
  return __ZNSt12__node_alloc11_M_allocateERj_veneer(&v1);
}


// ===== 486020 std::priv::_Rb_tree<char const*,lstr,std::pair<char const* const,rnd::Block *>,std::priv::_Select1st<std::pair<char const* const,rnd::Block *>>,std::priv::_MapTraitsT<std::pair<char const* const,rnd::Block *>>,std::allocator<std::pair<char const* const,rnd::Block *>>>::_M_insert(std::priv::_Rb_tree_node_base *,std::pair<char const* const,rnd::Block *> const&,std::priv::_Rb_tree_node_base *,std::priv::_Rb_tree_node_base *) [clone] =====
_DWORD *__fastcall std::priv::_Rb_tree<char const*,lstr,std::pair<char const* const,rnd::Block *>,std::priv::_Select1st<std::pair<char const* const,rnd::Block *>>,std::priv::_MapTraitsT<std::pair<char const* const,rnd::Block *>>,std::allocator<std::pair<char const* const,rnd::Block *>>>::_M_insert(
        _DWORD *a1,
        _DWORD *a2,
        int a3,
        char **a4,
        int a5)
{
  _DWORD *v8; // r0
  _DWORD *v9; // r7
  char *v10; // r3
  char *v11; // r3
  unsigned int v13; // r8
  _DWORD *v14; // r0
  char *v15; // r3
  char **v16; // [sp+4h] [bp-4h]
  char **v17; // [sp+4h] [bp-4h]
  char **v18; // [sp+4h] [bp-4h]

  if ( a2 == (_DWORD *)a3 )
  {
    v17 = a4;
    v9 = std::allocator<std::priv::_Rb_tree_node<std::pair<char const* const,rnd::Block *>>>::allocate();
    v9[4] = *v17;
    v11 = v17[1];
    v9[3] = 0;
    v9[2] = 0;
    v9[5] = v11;
    a2[2] = v9;
    a2[1] = v9;
    a2[3] = v9;
  }
  else if ( a5 || (v18 = a4, v13 = lstr::operator()((int)(a2 + 5), *a4, *(char **)(a3 + 16)), a4 = v18, v13) )
  {
    v16 = a4;
    v8 = std::allocator<std::priv::_Rb_tree_node<std::pair<char const* const,rnd::Block *>>>::allocate();
    v9 = v8;
    v8[4] = *v16;
    v10 = v16[1];
    v8[3] = 0;
    v8[2] = 0;
    v8[5] = v10;
    *(_DWORD *)(a3 + 8) = v8;
    if ( a3 == a2[2] )
      a2[2] = v8;
  }
  else
  {
    v14 = std::allocator<std::priv::_Rb_tree_node<std::pair<char const* const,rnd::Block *>>>::allocate();
    v9 = v14;
    v14[4] = *v18;
    v15 = v18[1];
    v14[3] = 0;
    v14[2] = 0;
    v14[5] = v15;
    *(_DWORD *)(a3 + 12) = v14;
    if ( a3 == a2[3] )
      a2[3] = v14;
  }
  v9[1] = a3;
  std::priv::_Rb_global<bool>::_Rebalance((int)v9, a2 + 1);
  ++a2[4];
  *a1 = v9;
  return a1;
}


// ===== 486154 std::priv::_Rb_tree<char const*,lstr,std::pair<char const* const,rnd::Block *>,std::priv::_Select1st<std::pair<char const* const,rnd::Block *>>,std::priv::_MapTraitsT<std::pair<char const* const,rnd::Block *>>,std::allocator<std::pair<char const* const,rnd::Block *>>>::insert_unique(std::pair<char const* const,rnd::Block *> const&) =====
int __fastcall std::priv::_Rb_tree<char const*,lstr,std::pair<char const* const,rnd::Block *>,std::priv::_Select1st<std::pair<char const* const,rnd::Block *>>,std::priv::_MapTraitsT<std::pair<char const* const,rnd::Block *>>,std::allocator<std::pair<char const* const,rnd::Block *>>>::insert_unique(
        int a1,
        _DWORD *a2,
        char **a3)
{
  int v3; // r5
  int v7; // r6
  unsigned int v8; // r0
  int v9; // r2
  int v10; // r3
  int v11; // r10
  int v13; // r3
  int v14; // r10
  int v15; // r3
  int v16; // r2
  int v17; // r3
  int v18; // [sp+8h] [bp-Ch] BYREF
  int v19; // [sp+Ch] [bp-8h] BYREF

  v3 = a2[1];
  if ( v3 )
  {
    v7 = (int)(a2 + 5);
    while ( 1 )
    {
      v8 = lstr::operator()(v7, *a3, *(char **)(v3 + 16));
      v9 = v8 ? *(_DWORD *)(v3 + 8) : *(_DWORD *)(v3 + 12);
      v10 = v3;
      if ( !v9 )
        break;
      v3 = v9;
    }
    if ( !v8 )
    {
      v11 = v3;
      goto LABEL_12;
    }
  }
  else
  {
    v3 = (int)a2;
  }
  if ( v3 == a2[2] )
  {
    std::priv::_Rb_tree<char const*,lstr,std::pair<char const* const,rnd::Block *>,std::priv::_Select1st<std::pair<char const* const,rnd::Block *>>,std::priv::_MapTraitsT<std::pair<char const* const,rnd::Block *>>,std::allocator<std::pair<char const* const,rnd::Block *>>>::_M_insert(
      &v19,
      a2,
      v3,
      a3,
      v3);
    v17 = v19;
    *(_BYTE *)(a1 + 4) = 1;
    *(_DWORD *)a1 = v17;
    return a1;
  }
  if ( *(_BYTE *)v3 || v3 != *(_DWORD *)(*(_DWORD *)(v3 + 4) + 4) )
  {
    v13 = *(_DWORD *)(v3 + 8);
    if ( v13 )
    {
      while ( *(_DWORD *)(v13 + 12) )
        v13 = *(_DWORD *)(v13 + 12);
    }
    else
    {
      v16 = *(_DWORD *)(v3 + 4);
      if ( v3 != *(_DWORD *)(v16 + 8) )
      {
        v10 = *(_DWORD *)(v3 + 4);
        v11 = v10;
        v7 = (int)(a2 + 5);
        goto LABEL_12;
      }
      while ( 1 )
      {
        v13 = *(_DWORD *)(v16 + 4);
        if ( *(_DWORD *)(v13 + 8) != v16 )
          break;
        v16 = *(_DWORD *)(v16 + 4);
      }
    }
    v14 = v13;
    if ( !lstr::operator()((int)(a2 + 5), *(char **)(v13 + 16), *a3) )
    {
      *(_DWORD *)a1 = v14;
      *(_BYTE *)(a1 + 4) = 0;
      return a1;
    }
LABEL_25:
    std::priv::_Rb_tree<char const*,lstr,std::pair<char const* const,rnd::Block *>,std::priv::_Select1st<std::pair<char const* const,rnd::Block *>>,std::priv::_MapTraitsT<std::pair<char const* const,rnd::Block *>>,std::allocator<std::pair<char const* const,rnd::Block *>>>::_M_insert(
      &v18,
      a2,
      v3,
      a3,
      0);
    v15 = v18;
    *(_BYTE *)(a1 + 4) = 1;
    *(_DWORD *)a1 = v15;
    return a1;
  }
  v10 = *(_DWORD *)(v3 + 12);
  v7 = (int)(a2 + 5);
  v11 = v10;
LABEL_12:
  if ( lstr::operator()(v7, *(char **)(v10 + 16), *a3) )
    goto LABEL_25;
  *(_DWORD *)a1 = v11;
  *(_BYTE *)(a1 + 4) = 0;
  return a1;
}


// ===== 4862f8 std::allocator<std::priv::_Rb_tree_node<std::pair<char const* const,rnd::ListRule *>>>::allocate(uint,void const*) [clone] =====
void *std::allocator<std::priv::_Rb_tree_node<std::pair<char const* const,rnd::ListRule *>>>::allocate()
{
  size_t v1; // [sp+4h] [bp-8h] BYREF

  v1 = 24;
  return __ZNSt12__node_alloc11_M_allocateERj_veneer(&v1);
}


// ===== 486318 std::priv::_Rb_tree<char const*,lstr,std::pair<char const* const,rnd::ListRule *>,std::priv::_Select1st<std::pair<char const* const,rnd::ListRule *>>,std::priv::_MapTraitsT<std::pair<char const* const,rnd::ListRule *>>,std::allocator<std::pair<char const* const,rnd::ListRule *>>>::_M_insert(std::priv::_Rb_tree_node_base *,std::pair<char const* const,rnd::ListRule *> const&,std::priv::_Rb_tree_node_base *,std::priv::_Rb_tree_node_base *) [clone] =====
_DWORD *__fastcall std::priv::_Rb_tree<char const*,lstr,std::pair<char const* const,rnd::ListRule *>,std::priv::_Select1st<std::pair<char const* const,rnd::ListRule *>>,std::priv::_MapTraitsT<std::pair<char const* const,rnd::ListRule *>>,std::allocator<std::pair<char const* const,rnd::ListRule *>>>::_M_insert(
        _DWORD *a1,
        _DWORD *a2,
        int a3,
        char **a4,
        int a5)
{
  _DWORD *v8; // r0
  _DWORD *v9; // r7
  char *v10; // r3
  char *v11; // r3
  unsigned int v13; // r8
  _DWORD *v14; // r0
  char *v15; // r3
  char **v16; // [sp+4h] [bp-4h]
  char **v17; // [sp+4h] [bp-4h]
  char **v18; // [sp+4h] [bp-4h]

  if ( a2 == (_DWORD *)a3 )
  {
    v17 = a4;
    v9 = std::allocator<std::priv::_Rb_tree_node<std::pair<char const* const,rnd::ListRule *>>>::allocate();
    v9[4] = *v17;
    v11 = v17[1];
    v9[3] = 0;
    v9[2] = 0;
    v9[5] = v11;
    a2[2] = v9;
    a2[1] = v9;
    a2[3] = v9;
  }
  else if ( a5 || (v18 = a4, v13 = lstr::operator()((int)(a2 + 5), *a4, *(char **)(a3 + 16)), a4 = v18, v13) )
  {
    v16 = a4;
    v8 = std::allocator<std::priv::_Rb_tree_node<std::pair<char const* const,rnd::ListRule *>>>::allocate();
    v9 = v8;
    v8[4] = *v16;
    v10 = v16[1];
    v8[3] = 0;
    v8[2] = 0;
    v8[5] = v10;
    *(_DWORD *)(a3 + 8) = v8;
    if ( a3 == a2[2] )
      a2[2] = v8;
  }
  else
  {
    v14 = std::allocator<std::priv::_Rb_tree_node<std::pair<char const* const,rnd::ListRule *>>>::allocate();
    v9 = v14;
    v14[4] = *v18;
    v15 = v18[1];
    v14[3] = 0;
    v14[2] = 0;
    v14[5] = v15;
    *(_DWORD *)(a3 + 12) = v14;
    if ( a3 == a2[3] )
      a2[3] = v14;
  }
  v9[1] = a3;
  std::priv::_Rb_global<bool>::_Rebalance((int)v9, a2 + 1);
  ++a2[4];
  *a1 = v9;
  return a1;
}


// ===== 48644c std::priv::_Rb_tree<char const*,lstr,std::pair<char const* const,rnd::ListRule *>,std::priv::_Select1st<std::pair<char const* const,rnd::ListRule *>>,std::priv::_MapTraitsT<std::pair<char const* const,rnd::ListRule *>>,std::allocator<std::pair<char const* const,rnd::ListRule *>>>::insert_unique(std::pair<char const* const,rnd::ListRule *> const&) =====
int __fastcall std::priv::_Rb_tree<char const*,lstr,std::pair<char const* const,rnd::ListRule *>,std::priv::_Select1st<std::pair<char const* const,rnd::ListRule *>>,std::priv::_MapTraitsT<std::pair<char const* const,rnd::ListRule *>>,std::allocator<std::pair<char const* const,rnd::ListRule *>>>::insert_unique(
        int a1,
        _DWORD *a2,
        char **a3)
{
  int v3; // r5
  int v7; // r6
  unsigned int v8; // r0
  int v9; // r2
  int v10; // r3
  int v11; // r10
  int v13; // r3
  int v14; // r10
  int v15; // r3
  int v16; // r2
  int v17; // r3
  int v18; // [sp+8h] [bp-Ch] BYREF
  int v19; // [sp+Ch] [bp-8h] BYREF

  v3 = a2[1];
  if ( v3 )
  {
    v7 = (int)(a2 + 5);
    while ( 1 )
    {
      v8 = lstr::operator()(v7, *a3, *(char **)(v3 + 16));
      v9 = v8 ? *(_DWORD *)(v3 + 8) : *(_DWORD *)(v3 + 12);
      v10 = v3;
      if ( !v9 )
        break;
      v3 = v9;
    }
    if ( !v8 )
    {
      v11 = v3;
      goto LABEL_12;
    }
  }
  else
  {
    v3 = (int)a2;
  }
  if ( v3 == a2[2] )
  {
    std::priv::_Rb_tree<char const*,lstr,std::pair<char const* const,rnd::ListRule *>,std::priv::_Select1st<std::pair<char const* const,rnd::ListRule *>>,std::priv::_MapTraitsT<std::pair<char const* const,rnd::ListRule *>>,std::allocator<std::pair<char const* const,rnd::ListRule *>>>::_M_insert(
      &v19,
      a2,
      v3,
      a3,
      v3);
    v17 = v19;
    *(_BYTE *)(a1 + 4) = 1;
    *(_DWORD *)a1 = v17;
    return a1;
  }
  if ( *(_BYTE *)v3 || v3 != *(_DWORD *)(*(_DWORD *)(v3 + 4) + 4) )
  {
    v13 = *(_DWORD *)(v3 + 8);
    if ( v13 )
    {
      while ( *(_DWORD *)(v13 + 12) )
        v13 = *(_DWORD *)(v13 + 12);
    }
    else
    {
      v16 = *(_DWORD *)(v3 + 4);
      if ( v3 != *(_DWORD *)(v16 + 8) )
      {
        v10 = *(_DWORD *)(v3 + 4);
        v11 = v10;
        v7 = (int)(a2 + 5);
        goto LABEL_12;
      }
      while ( 1 )
      {
        v13 = *(_DWORD *)(v16 + 4);
        if ( *(_DWORD *)(v13 + 8) != v16 )
          break;
        v16 = *(_DWORD *)(v16 + 4);
      }
    }
    v14 = v13;
    if ( !lstr::operator()((int)(a2 + 5), *(char **)(v13 + 16), *a3) )
    {
      *(_DWORD *)a1 = v14;
      *(_BYTE *)(a1 + 4) = 0;
      return a1;
    }
LABEL_25:
    std::priv::_Rb_tree<char const*,lstr,std::pair<char const* const,rnd::ListRule *>,std::priv::_Select1st<std::pair<char const* const,rnd::ListRule *>>,std::priv::_MapTraitsT<std::pair<char const* const,rnd::ListRule *>>,std::allocator<std::pair<char const* const,rnd::ListRule *>>>::_M_insert(
      &v18,
      a2,
      v3,
      a3,
      0);
    v15 = v18;
    *(_BYTE *)(a1 + 4) = 1;
    *(_DWORD *)a1 = v15;
    return a1;
  }
  v10 = *(_DWORD *)(v3 + 12);
  v7 = (int)(a2 + 5);
  v11 = v10;
LABEL_12:
  if ( lstr::operator()(v7, *(char **)(v10 + 16), *a3) )
    goto LABEL_25;
  *(_DWORD *)a1 = v11;
  *(_BYTE *)(a1 + 4) = 0;
  return a1;
}


// ===== 4865f0 rnd::RandomGenerator::LoadListRules(TiXmlNode *) =====
int __fastcall rnd::RandomGenerator::LoadListRules(rnd::RandomGenerator *this, TiXmlNode *a2)
{
  TiXmlNode *i; // r5
  int v4; // r4
  _BYTE v6[8]; // [sp+Ch] [bp-18h] BYREF
  char *v7[2]; // [sp+14h] [bp-10h] BYREF

  for ( i = (TiXmlNode *)TiXmlNode::FirstChild(a2, "list"); i; i = (TiXmlNode *)TiXmlNode::NextSibling(i, "list") )
  {
    v4 = operator new(0x2Cu, 0);
    std::string::string((std::string *)v4, "");
    *(_BYTE *)(v4 + 24) = 1;
    *(_DWORD *)(v4 + 28) = 0;
    *(_DWORD *)(v4 + 32) = 0;
    *(_DWORD *)(v4 + 36) = 0;
    *(_DWORD *)(v4 + 40) = this;
    rnd::ListRule::LoadFromXml((rnd::ListRule *)v4, i);
    v7[0] = *(char **)(v4 + 20);
    v7[1] = (char *)v4;
    std::priv::_Rb_tree<char const*,lstr,std::pair<char const* const,rnd::ListRule *>,std::priv::_Select1st<std::pair<char const* const,rnd::ListRule *>>,std::priv::_MapTraitsT<std::pair<char const* const,rnd::ListRule *>>,std::allocator<std::pair<char const* const,rnd::ListRule *>>>::insert_unique(
      (int)v6,
      (_DWORD *)this + 21,
      v7);
  }
  return 1;
}


// ===== 4866c0 std::allocator<rnd::Tile *>::allocate(uint,void const*) [clone] =====
void *std::allocator<rnd::Tile *>::allocate()
{
  size_t v1; // [sp+4h] [bp-8h] BYREF

  v1 = 128;
  return __ZNSt12__node_alloc11_M_allocateERj_veneer(&v1);
}


// ===== 4866e0 std::priv::_Deque_base<rnd::Tile *,std::allocator<rnd::Tile *>>::_M_initialize_map(uint) =====
char *__fastcall std::priv::_Deque_base<rnd::Tile *,std::allocator<rnd::Tile *>>::_M_initialize_map(
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
  result = (char *)std::allocator<rnd::Tile **>::allocate((int)(a1 + 8), v4);
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
      result = (char *)std::allocator<rnd::Tile *>::allocate();
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


// ===== 48678c std::deque<rnd::Tile *,std::allocator<rnd::Tile *>>::deque(std::deque<rnd::Tile *,std::allocator<rnd::Tile *>> const&) =====
int *__fastcall std::deque<rnd::Tile *>::deque(int *a1, int *a2)
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
  v9 = std::priv::_Deque_iterator_base<rnd::Tile *>::_M_subtract(a2 + 4, v23);
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
  std::priv::_Deque_base<rnd::Tile *,std::allocator<rnd::Tile *>>::_M_initialize_map(a1, v9);
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
  std::priv::__ucopy<std::priv::_Deque_iterator<rnd::Tile *,std::_Const_traits<rnd::Tile *>>,std::priv::_Deque_iterator<rnd::Tile *,std::_Nonconst_traits<rnd::Tile *>>,int>(
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


// ===== 486888 std::priv::__ufill<std::priv::_Deque_iterator<std::deque<rnd::Tile *,std::allocator<rnd::Tile *>>,std::_Nonconst_traits<std::deque<rnd::Tile *,std::allocator<rnd::Tile *>>>>,std::deque<rnd::Tile *,std::allocator<rnd::Tile *>>,int>(std::priv::_Deque_iterator<std::deque<rnd::Tile *,std::allocator<rnd::Tile *>>,std::_Nonconst_traits<std::deque<rnd::Tile *,std::allocator<rnd::Tile *>>>>,std::priv::_Deque_iterator<std::deque<rnd::Tile *,std::allocator<rnd::Tile *>>,std::_Nonconst_traits<std::deque<rnd::Tile *,std::allocator<rnd::Tile *>>>>,std::deque<rnd::Tile *,std::allocator<rnd::Tile *>> const&,std::random_access_iterator_tag const&,int *) =====
int *__fastcall std::priv::__ufill<std::priv::_Deque_iterator<std::deque<rnd::Tile *>,std::_Nonconst_traits<std::deque<rnd::Tile *>>>,std::deque<rnd::Tile *>,int>(
        int **a1,
        _DWORD *a2,
        int *a3)
{
  int *v6; // r1
  int *v7; // r2
  int *v8; // r3
  _DWORD *v9; // r0
  int *v10; // r8
  int *v11; // r7
  int *v12; // r5
  int *result; // r0
  int *v14; // r6
  int *v15; // r0
  bool v16; // zf
  int *v17; // t1
  _DWORD v18[4]; // [sp+0h] [bp-10h] BYREF

  v6 = a1[1];
  v7 = a1[2];
  v8 = a1[3];
  v18[0] = *a1;
  v18[1] = v6;
  v18[2] = v7;
  v18[3] = v8;
  v9 = a2;
  v10 = a1[3];
  v11 = a1[2];
  v12 = *a1;
  result = (int *)std::priv::_Deque_iterator_base<std::deque<rnd::Tile *>>::_M_subtract(v9, v18);
  v14 = result;
  if ( (int)result > 0 )
  {
    do
    {
      v15 = v12;
      v12 += 10;
      result = std::deque<rnd::Tile *>::deque(v15, a3);
      v16 = v12 == v11;
      if ( v12 == v11 )
      {
        v17 = (int *)v10[1];
        ++v10;
        v12 = v17;
      }
      v14 = (int *)((char *)v14 - 1);
      if ( v16 )
        v11 = v12 + 30;
    }
    while ( v14 );
  }
  return result;
}


// ===== 4868f8 std::allocator<std::deque<rnd::Tile *,std::allocator<rnd::Tile *>>>::allocate(uint,void const*) [clone] =====
void *std::allocator<std::deque<rnd::Tile *>>::allocate()
{
  size_t v1; // [sp+4h] [bp-8h] BYREF

  v1 = 120;
  return __ZNSt12__node_alloc11_M_allocateERj_veneer(&v1);
}


// ===== 486918 std::deque<std::deque<rnd::Tile *,std::allocator<rnd::Tile *>>,std::allocator<std::deque<rnd::Tile *,std::allocator<rnd::Tile *>>>>::_M_reallocate_map(uint,bool) =====
char *__fastcall std::deque<std::deque<rnd::Tile *>>::_M_reallocate_map(_DWORD *a1, unsigned int a2, int a3)
{
  char *v4; // r3
  int v5; // r0
  unsigned int v6; // r10
  int v8; // r5
  unsigned int v9; // r7
  int v10; // r8
  unsigned int v11; // r10
  char *v12; // r6
  char *result; // r0
  unsigned int v14; // r3
  unsigned int v15; // r10
  char *v16; // r0
  unsigned int v17; // r7
  const void *v18; // r1
  size_t v19; // r2
  char *v20; // r9
  int v21; // r1
  size_t v22; // r1
  int v23; // r3
  int v24; // r5
  int v25; // r1
  int v26; // r3

  v4 = (char *)a1[3];
  v5 = a1[7];
  v6 = a1[9];
  v8 = ((v5 - (int)v4) >> 2) + 1;
  v9 = v8 + a2;
  v10 = a3;
  if ( v6 <= 2 * (v8 + a2) )
  {
    v14 = v6 + 2;
    if ( a2 < v6 )
      v15 = v14 + v6;
    else
      v15 = v14 + a2;
    v16 = (char *)std::allocator<std::deque<rnd::Tile *> *>::allocate((int)(a1 + 8), v15);
    v17 = (v15 - v9) >> 1;
    v18 = (const void *)a1[3];
    if ( v10 )
      v10 = 4 * a2;
    v19 = a1[7] + 4 - (_DWORD)v18;
    v20 = v16;
    v12 = &v16[4 * v17 + v10];
    if ( v19 )
    {
      memmove(&v16[4 * v17 + v10], v18, v19);
      result = (char *)a1[8];
      v21 = a1[9];
      if ( result )
      {
LABEL_14:
        v22 = 4 * v21;
        if ( v22 > 0x80 )
          CustomFree(result);
        else
          __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(result, v22);
      }
    }
    else
    {
      result = (char *)a1[8];
      v21 = a1[9];
      if ( result )
        goto LABEL_14;
    }
    a1[8] = v20;
    a1[9] = v15;
    goto LABEL_17;
  }
  v11 = (v6 - v9) >> 1;
  if ( a3 )
    v10 = 4 * a2;
  v12 = (char *)(a1[8] + v10 + 4 * v11);
  if ( v4 > v12 )
  {
    result = (char *)(v5 + 4);
    if ( result != v4 )
      result = (char *)memmove((void *)(a1[8] + v10 + 4 * v11), v4, result - v4);
  }
  else
  {
    result = (char *)(v5 + 4);
    if ( result - v4 > 0 )
      result = (char *)memmove(&v12[4 * v8 - (result - v4)], v4, result - v4);
  }
LABEL_17:
  a1[3] = v12;
  v23 = *(_DWORD *)v12;
  v24 = v8 - 1;
  v25 = *(_DWORD *)v12 + 120;
  a1[7] = &v12[4 * v24];
  a1[2] = v25;
  a1[1] = v23;
  v26 = *(_DWORD *)&v12[4 * v24];
  a1[6] = v26 + 120;
  a1[5] = v26;
  return result;
}


// ===== 486a88 std::deque<std::deque<rnd::Tile *,std::allocator<rnd::Tile *>>,std::allocator<std::deque<rnd::Tile *,std::allocator<rnd::Tile *>>>>::_M_new_elements_at_front(uint) =====
_DWORD *__fastcall std::deque<std::deque<rnd::Tile *>>::_M_new_elements_at_front(_DWORD *result, int a2)
{
  unsigned int v2; // r5
  _DWORD *v3; // r4
  int v4; // r7
  unsigned int i; // r6
  int v6; // r8

  v2 = (a2 + 2) / 3u;
  v3 = result;
  if ( v2 > (result[3] - result[8]) >> 2 )
    result = std::deque<std::deque<rnd::Tile *>>::_M_reallocate_map(result, v2, 1);
  if ( v2 )
  {
    v4 = -4;
    for ( i = 1; i <= v2; ++i )
    {
      v6 = v3[3];
      result = std::allocator<std::deque<rnd::Tile *>>::allocate();
      *(_DWORD *)(v6 + v4) = result;
      v4 -= 4;
    }
  }
  return result;
}


// ===== 486b00 std::deque<std::deque<rnd::Tile *,std::allocator<rnd::Tile *>>,std::allocator<std::deque<rnd::Tile *,std::allocator<rnd::Tile *>>>>::_M_reserve_elements_at_front(uint) =====
_DWORD *__fastcall std::deque<std::deque<rnd::Tile *>>::_M_reserve_elements_at_front(
        _DWORD *a1,
        int *a2,
        unsigned int a3)
{
  unsigned int v6; // r3
  int v7; // r1
  int v8; // r2
  int v9; // r3
  int v10; // r1
  int v11; // r2
  int v12; // r3
  int v14; // [sp+0h] [bp-14h] BYREF
  int v15; // [sp+4h] [bp-10h]
  int v16; // [sp+8h] [bp-Ch]
  int v17; // [sp+Ch] [bp-8h]

  v6 = -858993459 * ((*a2 - a2[1]) >> 3);
  if ( v6 < a3 )
    std::deque<std::deque<rnd::Tile *>>::_M_new_elements_at_front(a2, a3 - v6);
  v7 = a2[1];
  v8 = a2[2];
  v9 = a2[3];
  v14 = *a2;
  v15 = v7;
  v16 = v8;
  v17 = v9;
  std::priv::_Deque_iterator_base<std::deque<rnd::Tile *>>::_M_advance(&v14, -a3);
  v10 = v15;
  v11 = v16;
  v12 = v17;
  *a1 = v14;
  a1[1] = v10;
  a1[2] = v11;
  a1[3] = v12;
  return a1;
}


// ===== 486b78 std::deque<std::deque<rnd::Tile *,std::allocator<rnd::Tile *>>,std::allocator<std::deque<rnd::Tile *,std::allocator<rnd::Tile *>>>>::_M_new_elements_at_back(uint) =====
_DWORD *__fastcall std::deque<std::deque<rnd::Tile *>>::_M_new_elements_at_back(_DWORD *result, int a2)
{
  unsigned int v2; // r5
  _DWORD *v3; // r4
  unsigned int i; // r6
  int v5; // r7

  v2 = (a2 + 2) / 3u;
  v3 = result;
  if ( v2 + 1 > result[9] - ((result[7] - result[8]) >> 2) )
    result = std::deque<std::deque<rnd::Tile *>>::_M_reallocate_map(result, v2, 0);
  if ( v2 )
  {
    for ( i = 1; i <= v2; ++i )
    {
      v5 = v3[7];
      result = std::allocator<std::deque<rnd::Tile *>>::allocate();
      *(_DWORD *)(v5 + 4 * i) = result;
    }
  }
  return result;
}


// ===== 486bf4 std::deque<std::deque<rnd::Tile *,std::allocator<rnd::Tile *>>,std::allocator<std::deque<rnd::Tile *,std::allocator<rnd::Tile *>>>>::_M_reserve_elements_at_back(uint) =====
_DWORD *__fastcall std::deque<std::deque<rnd::Tile *>>::_M_reserve_elements_at_back(
        _DWORD *a1,
        _DWORD *a2,
        unsigned int a3)
{
  unsigned int v6; // r1
  int v7; // r1
  int v8; // r2
  int v9; // r3
  int v10; // r1
  int v11; // r2
  int v12; // r3
  int v14; // [sp+0h] [bp-10h] BYREF
  int v15; // [sp+4h] [bp-Ch]
  int v16; // [sp+8h] [bp-8h]
  int v17; // [sp+Ch] [bp-4h]

  v6 = -858993459 * ((a2[6] - a2[4]) >> 3) - 1;
  if ( v6 < a3 )
    std::deque<std::deque<rnd::Tile *>>::_M_new_elements_at_back(a2, a3 - v6);
  v7 = a2[5];
  v8 = a2[6];
  v9 = a2[7];
  v14 = a2[4];
  v15 = v7;
  v16 = v8;
  v17 = v9;
  std::priv::_Deque_iterator_base<std::deque<rnd::Tile *>>::_M_advance(&v14, a3);
  v10 = v15;
  v11 = v16;
  v12 = v17;
  *a1 = v14;
  a1[1] = v10;
  a1[2] = v11;
  a1[3] = v12;
  return a1;
}


// ===== 486c74 std::deque<std::deque<rnd::Tile *,std::allocator<rnd::Tile *>>,std::allocator<std::deque<rnd::Tile *,std::allocator<rnd::Tile *>>>>::_M_fill_insert_aux(std::priv::_Deque_iterator<std::deque<rnd::Tile *,std::allocator<rnd::Tile *>>,std::_Nonconst_traits<std::deque<rnd::Tile *,std::allocator<rnd::Tile *>>>>,uint,std::deque<rnd::Tile *,std::allocator<rnd::Tile *>> const&,std::__true_type const&) =====
int **__fastcall std::deque<std::deque<rnd::Tile *>>::_M_fill_insert_aux(
        int **a1,
        int *a2,
        int **a3,
        unsigned int a4,
        int *a5)
{
  int v7; // r0
  int v8; // r1
  int v9; // r2
  int v10; // r3
  _DWORD *v11; // t0
  int **v12; // r11
  int v13; // r4
  int v14; // r1
  int v15; // r2
  int v16; // r3
  unsigned int v17; // r6
  int v18; // r1
  int v19; // r2
  int v20; // r3
  int *v21; // r2
  int *v22; // r3
  int *v23; // r0
  int *v24; // r11
  int *v25; // r9
  int *v26; // r4
  int *v27; // r10
  int *v28; // r12
  int v29; // r1
  int v30; // r2
  int v31; // r3
  int v32; // r1
  int v33; // r2
  int v34; // r3
  int v35; // r0
  int v36; // r1
  int v37; // r2
  int *v38; // r3
  bool v39; // zf
  int *v40; // lr
  int *v41; // r1
  int *v42; // r2
  int *v43; // r3
  int *v44; // r1
  int *v45; // r2
  int *v46; // r3
  int v48; // r1
  int v49; // r2
  int v50; // r3
  int *v51; // r3
  int *v52; // r2
  int *v53; // r0
  int *v54; // r12
  int *v55; // r9
  unsigned int v56; // r8
  bool v57; // zf
  int *v58; // r10
  int *v59; // t1
  int *v60; // lr
  int *v61; // r12
  _BOOL4 v62; // r7
  int *v63; // r4
  int *v64; // r6
  int v65; // r1
  int v66; // r2
  int v67; // r3
  int v68; // r1
  int v69; // r2
  int v70; // r3
  int v71; // r0
  int v72; // r1
  int v73; // r2
  int *v74; // r3
  int *v75; // t1
  bool v76; // zf
  int *v77; // r1
  int *v78; // r2
  int *v79; // r3
  int *v80; // r1
  int *v81; // r2
  int *v82; // r3
  int *v83; // r6
  int *v84; // r4
  int *v85; // r7
  int *v86; // r8
  int *v87; // [sp+8h] [bp-CCh]
  int *v90; // [sp+14h] [bp-C0h]
  int v91; // [sp+18h] [bp-BCh]
  int *v92; // [sp+18h] [bp-BCh]
  int v93[10]; // [sp+20h] [bp-B4h] BYREF
  int *v94[4]; // [sp+48h] [bp-8Ch] BYREF
  _DWORD v95[4]; // [sp+58h] [bp-7Ch] BYREF
  int *v96; // [sp+68h] [bp-6Ch] BYREF
  int *v97; // [sp+6Ch] [bp-68h]
  int *v98; // [sp+70h] [bp-64h]
  int *v99; // [sp+74h] [bp-60h]
  int *v100[4]; // [sp+78h] [bp-5Ch] BYREF
  _DWORD v101[4]; // [sp+88h] [bp-4Ch] BYREF
  _DWORD v102[4]; // [sp+98h] [bp-3Ch] BYREF
  int *v103; // [sp+A8h] [bp-2Ch] BYREF
  int *v104; // [sp+ACh] [bp-28h]
  int *v105; // [sp+B0h] [bp-24h]
  int *v106; // [sp+B4h] [bp-20h]
  _DWORD v107[4]; // [sp+B8h] [bp-1Ch] BYREF

  v7 = *a2;
  v11 = a2 + 1;
  v8 = a2[1];
  v9 = *++v11;
  v10 = v11[1];
  v107[0] = v7;
  v107[1] = v8;
  v107[2] = v9;
  v107[3] = v10;
  v12 = (int **)(a2 + 4);
  v13 = std::priv::_Deque_iterator_base<std::deque<rnd::Tile *>>::_M_subtract(a3, v107);
  v14 = a2[1];
  v15 = a2[2];
  v16 = a2[3];
  v102[0] = *a2;
  v102[1] = v14;
  v102[2] = v15;
  v102[3] = v16;
  v17 = std::priv::_Deque_iterator_base<std::deque<rnd::Tile *>>::_M_subtract(a2 + 4, v102);
  std::deque<rnd::Tile *>::deque(v93, a5);
  if ( v13 > (int)(v17 >> 1) )
  {
    std::deque<std::deque<rnd::Tile *>>::_M_reserve_elements_at_back(&v103, a2, a4);
    v48 = a2[5];
    v49 = a2[6];
    v50 = a2[7];
    v96 = *v12;
    v97 = (int *)v48;
    v98 = (int *)v49;
    v99 = (int *)v50;
    std::priv::_Deque_iterator_base<std::deque<rnd::Tile *>>::_M_advance(&v96, v13 - v17);
    v51 = v99;
    v52 = v96;
    v53 = v98;
    a3[1] = v97;
    *a3 = v52;
    a3[2] = v53;
    a3[3] = v51;
    v54 = (int *)a2[4];
    v55 = (int *)a2[5];
    v92 = v106;
    v56 = a2[7];
    v57 = v55 == v54;
    v58 = v104;
    if ( v55 == v54 )
    {
      v59 = *(int **)(v56 - 4);
      v56 -= 4;
      v55 = v59;
    }
    v60 = v103;
    if ( v57 )
      v54 = v55 + 30;
    v61 = v54 - 10;
    if ( v104 == v103 )
    {
      v58 = (int *)*(v106 - 1);
      v92 = v106 - 1;
      v60 = v58 + 30;
    }
    while ( 1 )
    {
      v60 -= 10;
      if ( (int *)v56 == v51 )
      {
        v63 = v61 + 4;
        v64 = v60 + 4;
        v62 = *a3 > v61;
        if ( *a3 > v61 )
        {
LABEL_31:
          v77 = v104;
          v78 = v105;
          v79 = v106;
          *v12 = v103;
          v12[1] = v77;
          v12[2] = v78;
          v12[3] = v79;
          v80 = a3[1];
          v81 = a3[2];
          v82 = a3[3];
          v96 = *a3;
          v97 = v80;
          v98 = v81;
          v99 = v82;
          v83 = a3[3];
          v84 = a3[2];
          v85 = a3[1];
          v86 = *a3;
          std::priv::_Deque_iterator_base<std::deque<rnd::Tile *>>::_M_advance(&v96, a4);
          v95[3] = v99;
          v95[2] = v98;
          v94[3] = v83;
          v94[2] = v84;
          v95[1] = v97;
          v94[1] = v85;
          v94[0] = v86;
          v95[0] = v96;
          std::priv::__ufill<std::priv::_Deque_iterator<std::deque<rnd::Tile *>,std::_Nonconst_traits<std::deque<rnd::Tile *>>>,std::deque<rnd::Tile *>,int>(
            v94,
            v95,
            v93);
          goto LABEL_13;
        }
      }
      else
      {
        v62 = v56 < (unsigned int)v51;
        v63 = v61 + 4;
        v64 = v60 + 4;
        if ( v56 < (unsigned int)v51 )
          goto LABEL_31;
      }
      v65 = v61[1];
      v66 = v61[2];
      v67 = v61[3];
      *v60 = *v61;
      v60[1] = v65;
      v60[2] = v66;
      v60[3] = v67;
      v68 = v63[1];
      v69 = v63[2];
      v70 = v63[3];
      *v64 = *v63;
      v64[1] = v68;
      v64[2] = v69;
      v64[3] = v70;
      v60[8] = v61[8];
      v60[9] = v61[9];
      v71 = *v61;
      v72 = v61[1];
      v73 = v61[2];
      v74 = (int *)v61[3];
      v61[9] = v62;
      v61[8] = v62;
      *v63 = v71;
      v63[1] = v72;
      v63[2] = v73;
      v63[3] = (int)v74;
      if ( v61 == v55 )
      {
        v75 = *(int **)(v56 - 4);
        v56 -= 4;
        v55 = v75;
        v61 = v75 + 30;
      }
      v76 = v60 == v58;
      if ( v60 == v58 )
        v74 = v92;
      v61 -= 10;
      if ( v60 == v58 )
      {
        v58 = (int *)*(v74 - 1);
        v92 = v74 - 1;
      }
      v51 = a3[3];
      if ( v76 )
        v60 = v58 + 30;
    }
  }
  std::deque<std::deque<rnd::Tile *>>::_M_reserve_elements_at_front(&v103, a2, a4);
  v18 = a2[1];
  v19 = a2[2];
  v20 = a2[3];
  v96 = (int *)*a2;
  v97 = (int *)v18;
  v98 = (int *)v19;
  v99 = (int *)v20;
  std::priv::_Deque_iterator_base<std::deque<rnd::Tile *>>::_M_advance(&v96, v13);
  v21 = v99;
  v22 = v96;
  v23 = v98;
  a3[1] = v97;
  a3[3] = v21;
  a3[2] = v23;
  *a3 = v22;
  v24 = v104;
  v25 = v105;
  v90 = v106;
  v26 = v103;
  v87 = (int *)a2[1];
  v91 = a2[3];
  v27 = (int *)a2[2];
  v28 = (int *)*a2;
  while ( 1 )
  {
    v40 = v28 + 4;
    if ( v28 == v22 )
      break;
    v29 = v28[1];
    v30 = v28[2];
    v31 = v28[3];
    *v26 = *v28;
    v26[1] = v29;
    v26[2] = v30;
    v26[3] = v31;
    v32 = v28[5];
    v33 = v28[6];
    v34 = v28[7];
    v26[4] = *v40;
    v26[5] = v32;
    v26[6] = v33;
    v26[7] = v34;
    v26[8] = v28[8];
    v26[9] = v28[9];
    v35 = *v28;
    v36 = v28[1];
    v37 = v28[2];
    v38 = (int *)v28[3];
    v28[8] = 0;
    v28[9] = 0;
    *v40 = v35;
    v28[5] = v36;
    v28[6] = v37;
    v28[7] = (int)v38;
    v26 += 10;
    if ( v25 == v26 )
      v38 = v90;
    v28 += 10;
    if ( v25 == v26 )
    {
      v24 = (int *)v38[1];
      v90 = v38 + 1;
      v25 = v24 + 30;
      v26 = v24;
    }
    v39 = v27 == v28;
    if ( v27 == v28 )
    {
      v28 = *(int **)(v91 + 4);
      v91 += 4;
      v87 = v28;
    }
    v22 = *a3;
    if ( v39 )
      v27 = v28 + 30;
  }
  v41 = v104;
  v42 = v105;
  v43 = v106;
  *a2 = (int)v103;
  a2[1] = (int)v41;
  a2[2] = (int)v42;
  a2[3] = (int)v43;
  v101[0] = v28;
  v101[3] = v91;
  v101[1] = v87;
  v101[2] = v27;
  v100[0] = v26;
  v100[2] = v25;
  v100[3] = v90;
  v100[1] = v24;
  std::priv::__ufill<std::priv::_Deque_iterator<std::deque<rnd::Tile *>,std::_Nonconst_traits<std::deque<rnd::Tile *>>>,std::deque<rnd::Tile *>,int>(
    v100,
    v101,
    v93);
  a3[1] = v24;
  a3[2] = v25;
  *a3 = v26;
  a3[3] = v90;
LABEL_13:
  v44 = a3[1];
  v45 = a3[2];
  v46 = a3[3];
  *a1 = *a3;
  a1[1] = v44;
  a1[2] = v45;
  a1[3] = v46;
  std::priv::_Deque_base<rnd::Tile *,std::allocator<rnd::Tile *>>::~_Deque_base(v93);
  return a1;
}


// ===== 487034 std::deque<std::deque<rnd::Tile *,std::allocator<rnd::Tile *>>,std::allocator<std::deque<rnd::Tile *,std::allocator<rnd::Tile *>>>>::_M_fill_insert(std::priv::_Deque_iterator<std::deque<rnd::Tile *,std::allocator<rnd::Tile *>>,std::_Nonconst_traits<std::deque<rnd::Tile *,std::allocator<rnd::Tile *>>>>,uint,std::deque<rnd::Tile *,std::allocator<rnd::Tile *>> const&) =====
int **__fastcall std::deque<std::deque<rnd::Tile *>>::_M_fill_insert(int *a1, int **a2, unsigned int a3, int *a4)
{
  int *v7; // r0
  int *v8; // r1
  int *v9; // r2
  int *v10; // r3
  int **v11; // t0
  int **result; // r0
  int v13; // r12
  int v14; // r7
  int v15; // lr
  int v16; // r8
  int *v17; // r1
  int *v18; // r2
  int *v19; // r3
  int *v20; // r12
  int **v21; // r6
  int *v22; // r8
  int *v23; // lr
  int *v24; // r4
  int *v25; // r1
  int *v26; // r2
  int *v27; // r3
  int *v28; // [sp+8h] [bp-80h] BYREF
  int *v29[4]; // [sp+1Ch] [bp-6Ch] BYREF
  _DWORD v30[4]; // [sp+2Ch] [bp-5Ch] BYREF
  int *v31[4]; // [sp+3Ch] [bp-4Ch] BYREF
  _DWORD v32[4]; // [sp+4Ch] [bp-3Ch] BYREF
  int *v33[4]; // [sp+5Ch] [bp-2Ch] BYREF
  int *v34; // [sp+6Ch] [bp-1Ch] BYREF
  int *v35; // [sp+70h] [bp-18h]
  int *v36; // [sp+74h] [bp-14h]
  int *v37; // [sp+78h] [bp-10h]

  if ( *a2 == (int *)*a1 )
  {
    std::deque<std::deque<rnd::Tile *>>::_M_reserve_elements_at_front(&v34, a1, a3);
    v13 = a1[1];
    v14 = a1[3];
    v15 = a1[2];
    v16 = *a1;
    v31[3] = v37;
    v31[2] = v36;
    v32[1] = v13;
    v31[1] = v35;
    v32[3] = v14;
    v31[0] = v34;
    v32[2] = v15;
    v32[0] = v16;
    std::priv::__ufill<std::priv::_Deque_iterator<std::deque<rnd::Tile *>,std::_Nonconst_traits<std::deque<rnd::Tile *>>>,std::deque<rnd::Tile *>,int>(
      v31,
      v32,
      a4);
    result = (int **)v34;
    v17 = v35;
    v18 = v36;
    v19 = v37;
    *a1 = (int)v34;
    a1[1] = (int)v17;
    a1[2] = (int)v18;
    a1[3] = (int)v19;
  }
  else if ( *a2 == (int *)a1[4] )
  {
    std::deque<std::deque<rnd::Tile *>>::_M_reserve_elements_at_back(&v34, a1, a3);
    v20 = (int *)a1[6];
    v21 = (int **)(a1 + 4);
    v22 = (int *)a1[4];
    v23 = (int *)a1[7];
    v24 = (int *)a1[5];
    v29[2] = v20;
    v30[3] = v37;
    v30[2] = v36;
    v29[3] = v23;
    v29[1] = v24;
    v30[1] = v35;
    v29[0] = v22;
    v30[0] = v34;
    std::priv::__ufill<std::priv::_Deque_iterator<std::deque<rnd::Tile *>,std::_Nonconst_traits<std::deque<rnd::Tile *>>>,std::deque<rnd::Tile *>,int>(
      v29,
      v30,
      a4);
    result = (int **)v34;
    v25 = v35;
    v26 = v36;
    v27 = v37;
    *v21 = v34;
    v21[1] = v25;
    v21[2] = v26;
    v21[3] = v27;
  }
  else
  {
    v7 = *a2;
    v11 = a2 + 1;
    v8 = a2[1];
    v9 = *++v11;
    v10 = v11[1];
    v33[0] = v7;
    v33[1] = v8;
    v33[2] = v9;
    v33[3] = v10;
    return std::deque<std::deque<rnd::Tile *>>::_M_fill_insert_aux(&v28, a1, v33, a3, a4);
  }
  return result;
}


// ===== 487188 std::deque<rnd::Tile *,std::allocator<rnd::Tile *>>::_M_reallocate_map(uint,bool) =====
char *__fastcall std::deque<rnd::Tile *>::_M_reallocate_map(_DWORD *a1, unsigned int a2, int a3)
{
  char *v4; // r3
  int v5; // r0
  unsigned int v6; // r10
  int v8; // r5
  unsigned int v9; // r7
  int v10; // r8
  unsigned int v11; // r10
  char *v12; // r6
  char *result; // r0
  unsigned int v14; // r3
  unsigned int v15; // r10
  char *v16; // r0
  unsigned int v17; // r7
  const void *v18; // r1
  size_t v19; // r2
  char *v20; // r9
  int v21; // r1
  size_t v22; // r1
  int v23; // r3
  int v24; // r5
  int v25; // r1
  int v26; // r3

  v4 = (char *)a1[3];
  v5 = a1[7];
  v6 = a1[9];
  v8 = ((v5 - (int)v4) >> 2) + 1;
  v9 = v8 + a2;
  v10 = a3;
  if ( v6 <= 2 * (v8 + a2) )
  {
    v14 = v6 + 2;
    if ( a2 < v6 )
      v15 = v14 + v6;
    else
      v15 = v14 + a2;
    v16 = (char *)std::allocator<rnd::Tile **>::allocate((int)(a1 + 8), v15);
    v17 = (v15 - v9) >> 1;
    v18 = (const void *)a1[3];
    if ( v10 )
      v10 = 4 * a2;
    v19 = a1[7] + 4 - (_DWORD)v18;
    v20 = v16;
    v12 = &v16[4 * v17 + v10];
    if ( v19 )
    {
      memmove(&v16[4 * v17 + v10], v18, v19);
      result = (char *)a1[8];
      v21 = a1[9];
      if ( result )
      {
LABEL_14:
        v22 = 4 * v21;
        if ( v22 > 0x80 )
          CustomFree(result);
        else
          __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(result, v22);
      }
    }
    else
    {
      result = (char *)a1[8];
      v21 = a1[9];
      if ( result )
        goto LABEL_14;
    }
    a1[8] = v20;
    a1[9] = v15;
    goto LABEL_17;
  }
  v11 = (v6 - v9) >> 1;
  if ( a3 )
    v10 = 4 * a2;
  v12 = (char *)(a1[8] + v10 + 4 * v11);
  if ( v4 > v12 )
  {
    result = (char *)(v5 + 4);
    if ( result != v4 )
      result = (char *)memmove((void *)(a1[8] + v10 + 4 * v11), v4, result - v4);
  }
  else
  {
    result = (char *)(v5 + 4);
    if ( result - v4 > 0 )
      result = (char *)memmove(&v12[4 * v8 - (result - v4)], v4, result - v4);
  }
LABEL_17:
  a1[3] = v12;
  v23 = *(_DWORD *)v12;
  v24 = v8 - 1;
  v25 = *(_DWORD *)v12 + 128;
  a1[7] = &v12[4 * v24];
  a1[2] = v25;
  a1[1] = v23;
  v26 = *(_DWORD *)&v12[4 * v24];
  a1[6] = v26 + 128;
  a1[5] = v26;
  return result;
}


// ===== 4872f8 std::deque<rnd::Tile *,std::allocator<rnd::Tile *>>::_M_new_elements_at_front(uint) =====
_DWORD *__fastcall std::deque<rnd::Tile *>::_M_new_elements_at_front(_DWORD *result, int a2)
{
  unsigned int v2; // r1
  unsigned int v3; // r5
  _DWORD *v4; // r4
  int v5; // r7
  unsigned int i; // r6
  int v7; // r8

  v2 = a2 + 31;
  v3 = v2 >> 5;
  v4 = result;
  if ( v2 >> 5 > (result[3] - result[8]) >> 2 )
    result = std::deque<rnd::Tile *>::_M_reallocate_map(result, v2 >> 5, 1);
  if ( v3 )
  {
    v5 = -4;
    for ( i = 1; i <= v3; ++i )
    {
      v7 = v4[3];
      result = std::allocator<rnd::Tile *>::allocate();
      *(_DWORD *)(v7 + v5) = result;
      v5 -= 4;
    }
  }
  return result;
}


// ===== 487364 std::deque<rnd::Tile *,std::allocator<rnd::Tile *>>::_M_reserve_elements_at_front(uint) =====
_DWORD *__fastcall std::deque<rnd::Tile *>::_M_reserve_elements_at_front(_DWORD *a1, int *a2, unsigned int a3)
{
  unsigned int v5; // r1
  int v7; // r1
  int v8; // r2
  int v9; // r3
  int v10; // r1
  int v11; // r2
  int v12; // r3
  int v14; // [sp+0h] [bp-14h] BYREF
  int v15; // [sp+4h] [bp-10h]
  int v16; // [sp+8h] [bp-Ch]
  int v17; // [sp+Ch] [bp-8h]

  v5 = (*a2 - a2[1]) >> 2;
  if ( v5 < a3 )
    std::deque<rnd::Tile *>::_M_new_elements_at_front(a2, a3 - v5);
  v7 = a2[1];
  v8 = a2[2];
  v9 = a2[3];
  v14 = *a2;
  v15 = v7;
  v16 = v8;
  v17 = v9;
  std::priv::_Deque_iterator_base<rnd::Tile *>::_M_advance(&v14, -a3);
  v10 = v15;
  v11 = v16;
  v12 = v17;
  *a1 = v14;
  a1[1] = v10;
  a1[2] = v11;
  a1[3] = v12;
  return a1;
}


// ===== 4873c8 std::deque<rnd::Tile *,std::allocator<rnd::Tile *>>::_M_new_elements_at_back(uint) =====
_DWORD *__fastcall std::deque<rnd::Tile *>::_M_new_elements_at_back(_DWORD *result, int a2)
{
  unsigned int v2; // r1
  unsigned int v3; // r5
  _DWORD *v4; // r4
  unsigned int i; // r6
  int v6; // r7

  v2 = a2 + 31;
  v3 = v2 >> 5;
  v4 = result;
  if ( (v2 >> 5) + 1 > result[9] - ((result[7] - result[8]) >> 2) )
    result = std::deque<rnd::Tile *>::_M_reallocate_map(result, v2 >> 5, 0);
  if ( v3 )
  {
    for ( i = 1; i <= v3; ++i )
    {
      v6 = v4[7];
      result = std::allocator<rnd::Tile *>::allocate();
      *(_DWORD *)(v6 + 4 * i) = result;
    }
  }
  return result;
}


// ===== 487438 std::deque<rnd::Tile *,std::allocator<rnd::Tile *>>::_M_reserve_elements_at_back(uint) =====
_DWORD *__fastcall std::deque<rnd::Tile *>::_M_reserve_elements_at_back(_DWORD *a1, _DWORD *a2, unsigned int a3)
{
  unsigned int v5; // r1
  int v7; // r1
  int v8; // r2
  int v9; // r3
  int v10; // r1
  int v11; // r2
  int v12; // r3
  int v14; // [sp+0h] [bp-10h] BYREF
  int v15; // [sp+4h] [bp-Ch]
  int v16; // [sp+8h] [bp-8h]
  int v17; // [sp+Ch] [bp-4h]

  v5 = ((a2[6] - a2[4]) >> 2) - 1;
  if ( v5 < a3 )
    std::deque<rnd::Tile *>::_M_new_elements_at_back(a2, a3 - v5);
  v7 = a2[5];
  v8 = a2[6];
  v9 = a2[7];
  v14 = a2[4];
  v15 = v7;
  v16 = v8;
  v17 = v9;
  std::priv::_Deque_iterator_base<rnd::Tile *>::_M_advance(&v14, a3);
  v10 = v15;
  v11 = v16;
  v12 = v17;
  *a1 = v14;
  a1[1] = v10;
  a1[2] = v11;
  a1[3] = v12;
  return a1;
}


// ===== 4874a4 std::deque<rnd::Tile *,std::allocator<rnd::Tile *>>::_M_fill_insert_aux(std::priv::_Deque_iterator<rnd::Tile *,std::_Nonconst_traits<rnd::Tile *>>,uint,rnd::Tile * const&,std::__false_type const&) =====
int *__fastcall std::deque<rnd::Tile *>::_M_fill_insert_aux(int *a1, int *a2, int *a3, signed int a4, int *a5)
{
  int v9; // r0
  int v10; // r1
  int v11; // r2
  int v12; // r3
  _DWORD *v13; // t0
  int *v14; // r6
  int v15; // r8
  int v16; // r1
  int v17; // r2
  int v18; // r3
  unsigned int v19; // r0
  int v20; // r1
  int v21; // r2
  int v22; // r3
  int v23; // r11
  int v24; // r2
  int v25; // r3
  int v26; // r0
  int v27; // r1
  int v28; // r2
  int v29; // r3
  int v30; // r1
  int v31; // r2
  int v32; // r3
  int v33; // r1
  int v34; // r2
  int v35; // r3
  int v36; // r1
  int v37; // r2
  int v38; // r3
  int v39; // r12
  int v40; // r4
  int v41; // lr
  int v42; // r6
  signed int v43; // r9
  int v44; // r1
  int v45; // r2
  int v46; // r3
  int v47; // r2
  int v48; // r3
  int v49; // r0
  int v50; // r1
  int v51; // r2
  int v52; // r3
  int v53; // r1
  int v54; // r2
  int v55; // r3
  int v56; // r1
  int v57; // r2
  int v58; // r3
  int v59; // r1
  int v60; // r2
  int v61; // r3
  int v62; // r1
  int v63; // r2
  int v64; // r3
  int v65; // r6
  int v66; // r4
  int v67; // lr
  int v68; // r1
  int v69; // r2
  int v70; // r3
  int v72; // r4
  int v73; // lr
  int *v74; // t0
  int v75; // r1
  int v76; // r2
  int v77; // r3
  int v78; // r9
  int v79; // r6
  int v80; // lr
  int v81; // r1
  int v82; // r2
  int v83; // r3
  int v84; // r1
  int v85; // r6
  int v86; // r7
  int v87; // r8
  int v88; // r9
  int v89; // r7
  int v90; // r12
  int v91; // r1
  int v92; // r2
  int v93; // r3
  int v94; // r4
  int v95; // lr
  int v96; // r12
  int v97; // r3
  int v98; // r1
  int v99; // r2
  int v100; // r3
  int v101; // r4
  int v102; // r9
  int v103; // r12
  int v104; // lr
  int v105; // [sp+8h] [bp-2A4h]
  int v106; // [sp+8h] [bp-2A4h]
  int v107; // [sp+Ch] [bp-2A0h]
  int v108; // [sp+Ch] [bp-2A0h]
  int v109; // [sp+10h] [bp-29Ch]
  int v110; // [sp+10h] [bp-29Ch]
  int v111; // [sp+14h] [bp-298h]
  int v112; // [sp+14h] [bp-298h]
  int v113; // [sp+18h] [bp-294h]
  int v114; // [sp+18h] [bp-294h]
  int v115; // [sp+1Ch] [bp-290h]
  int v116; // [sp+1Ch] [bp-290h]
  int v117; // [sp+20h] [bp-28Ch]
  int v118; // [sp+20h] [bp-28Ch]
  int v119; // [sp+24h] [bp-288h]
  int v120; // [sp+24h] [bp-288h]
  int v121; // [sp+28h] [bp-284h]
  int v122; // [sp+2Ch] [bp-280h]
  int v123[5]; // [sp+30h] [bp-27Ch] BYREF
  int v124[4]; // [sp+44h] [bp-268h] BYREF
  _DWORD v125[4]; // [sp+54h] [bp-258h] BYREF
  int v126; // [sp+64h] [bp-248h] BYREF
  int v127; // [sp+68h] [bp-244h]
  int v128; // [sp+6Ch] [bp-240h]
  int v129; // [sp+70h] [bp-23Ch]
  int v130[4]; // [sp+74h] [bp-238h] BYREF
  _DWORD v131[4]; // [sp+84h] [bp-228h] BYREF
  int v132[4]; // [sp+94h] [bp-218h] BYREF
  _DWORD v133[4]; // [sp+A4h] [bp-208h] BYREF
  int v134[4]; // [sp+B4h] [bp-1F8h] BYREF
  _DWORD v135[4]; // [sp+C4h] [bp-1E8h] BYREF
  _DWORD v136[4]; // [sp+D4h] [bp-1D8h] BYREF
  int v137[4]; // [sp+E4h] [bp-1C8h] BYREF
  int v138[4]; // [sp+F4h] [bp-1B8h] BYREF
  int v139[4]; // [sp+104h] [bp-1A8h] BYREF
  int v140[4]; // [sp+114h] [bp-198h] BYREF
  _DWORD v141[4]; // [sp+124h] [bp-188h] BYREF
  _DWORD v142[4]; // [sp+134h] [bp-178h] BYREF
  int v143[2]; // [sp+144h] [bp-168h] BYREF
  int v144; // [sp+14Ch] [bp-160h]
  int v145; // [sp+150h] [bp-15Ch]
  int v146[4]; // [sp+154h] [bp-158h] BYREF
  _DWORD v147[4]; // [sp+164h] [bp-148h] BYREF
  _DWORD v148[4]; // [sp+174h] [bp-138h] BYREF
  _DWORD v149[4]; // [sp+184h] [bp-128h] BYREF
  int v150[4]; // [sp+194h] [bp-118h] BYREF
  _DWORD v151[4]; // [sp+1A4h] [bp-108h] BYREF
  _DWORD v152[4]; // [sp+1B4h] [bp-F8h] BYREF
  int v153[4]; // [sp+1C4h] [bp-E8h] BYREF
  int v154[4]; // [sp+1D4h] [bp-D8h] BYREF
  int v155[4]; // [sp+1E4h] [bp-C8h] BYREF
  int v156[4]; // [sp+1F4h] [bp-B8h] BYREF
  _DWORD v157[4]; // [sp+204h] [bp-A8h] BYREF
  int v158[4]; // [sp+214h] [bp-98h] BYREF
  int v159; // [sp+224h] [bp-88h] BYREF
  int v160; // [sp+228h] [bp-84h]
  int v161; // [sp+22Ch] [bp-80h]
  int v162; // [sp+230h] [bp-7Ch]
  _DWORD v163[4]; // [sp+234h] [bp-78h] BYREF
  int v164[4]; // [sp+244h] [bp-68h] BYREF
  int v165[4]; // [sp+254h] [bp-58h] BYREF
  int v166[4]; // [sp+264h] [bp-48h] BYREF
  _DWORD v167[4]; // [sp+274h] [bp-38h] BYREF
  int v168; // [sp+284h] [bp-28h] BYREF

  v9 = *a2;
  v13 = a2 + 1;
  v10 = a2[1];
  v11 = *++v13;
  v12 = v13[1];
  v167[0] = v9;
  v167[1] = v10;
  v167[2] = v11;
  v167[3] = v12;
  v14 = a2 + 4;
  v15 = std::priv::_Deque_iterator_base<rnd::Tile *>::_M_subtract(a3, v167);
  v16 = a2[1];
  v17 = a2[2];
  v18 = a2[3];
  v136[0] = *a2;
  v136[1] = v16;
  v136[2] = v17;
  v136[3] = v18;
  v19 = std::priv::_Deque_iterator_base<rnd::Tile *>::_M_subtract(a2 + 4, v136);
  v168 = *a5;
  if ( v15 > (int)(v19 >> 1) )
  {
    v43 = v19 - v15;
    std::deque<rnd::Tile *>::_M_reserve_elements_at_back(&v159, a2, a4);
    v44 = a2[5];
    v45 = a2[6];
    v46 = a2[7];
    v126 = *v14;
    v127 = v44;
    v128 = v45;
    v129 = v46;
    v106 = a2[7];
    v108 = a2[6];
    v110 = a2[5];
    v111 = a2[4];
    std::priv::_Deque_iterator_base<rnd::Tile *>::_M_advance(&v126, -v43);
    v47 = v127;
    v48 = v126;
    v49 = v128;
    a3[3] = v129;
    a3[2] = v49;
    a3[1] = v47;
    *a3 = v48;
    v50 = a2[5];
    v51 = a2[6];
    v52 = a2[7];
    if ( v43 > a4 )
    {
      v126 = *v14;
      v127 = v50;
      v128 = v51;
      v129 = v52;
      std::priv::_Deque_iterator_base<rnd::Tile *>::_M_advance(&v126, -a4);
      v122 = a2[4];
      v119 = v126;
      v117 = v127;
      v115 = v128;
      v113 = v129;
      v74 = a2 + 5;
      v72 = a2[5];
      ++v74;
      v73 = v74[1];
      v144 = *v74;
      v142[1] = v72;
      v142[2] = v144;
      v143[1] = v72;
      v143[0] = v122;
      v141[3] = v129;
      v145 = v73;
      v142[3] = v73;
      v141[2] = v128;
      v142[0] = v122;
      v141[1] = v127;
      v141[0] = v126;
      std::priv::__ucopy<std::priv::_Deque_iterator<rnd::Tile *,std::_Nonconst_traits<rnd::Tile *>>,std::priv::_Deque_iterator<rnd::Tile *,std::_Nonconst_traits<rnd::Tile *>>,int>(
        v146,
        (int)v141,
        v142,
        v143);
      v75 = v160;
      v76 = v161;
      v77 = v162;
      *v14 = v159;
      v14[1] = v75;
      v14[2] = v76;
      v14[3] = v77;
      v78 = a3[3];
      v79 = *a3;
      v80 = a3[1];
      v139[2] = a3[2];
      v139[3] = v78;
      v138[3] = v113;
      v138[2] = v115;
      v138[1] = v117;
      v138[0] = v119;
      v137[3] = v106;
      v137[2] = v108;
      v137[1] = v110;
      v139[1] = v80;
      v139[0] = v79;
      v137[0] = v111;
      std::priv::__copy_backward<std::priv::_Deque_iterator<rnd::Tile *,std::_Nonconst_traits<rnd::Tile *>>,std::priv::_Deque_iterator<rnd::Tile *,std::_Nonconst_traits<rnd::Tile *>>,int>(
        v140,
        v139,
        v138,
        v137);
      v81 = a3[1];
      v82 = a3[2];
      v83 = a3[3];
      v126 = *a3;
      v127 = v81;
      v128 = v82;
      v129 = v83;
      v84 = a4;
      v85 = a3[3];
      v86 = a3[2];
      v87 = a3[1];
      v88 = *a3;
      std::priv::_Deque_iterator_base<rnd::Tile *>::_M_advance(&v126, v84);
      v131[3] = v129;
      v131[2] = v128;
      v130[3] = v85;
      v130[2] = v86;
      v131[1] = v127;
      v130[1] = v87;
      v130[0] = v88;
      v131[0] = v126;
      std::priv::__fill<std::priv::_Deque_iterator<rnd::Tile *,std::_Nonconst_traits<rnd::Tile *>>,rnd::Tile *,int>(
        v130,
        v131,
        &v168);
    }
    else
    {
      v157[0] = *v14;
      v157[1] = v50;
      v157[2] = v51;
      v157[3] = v52;
      v53 = a3[1];
      v54 = a3[2];
      v55 = a3[3];
      v126 = *a3;
      v127 = v53;
      v128 = v54;
      v129 = v55;
      std::priv::_Deque_iterator_base<rnd::Tile *>::_M_advance(&v126, a4);
      v158[0] = v126;
      v158[1] = v127;
      v158[2] = v128;
      v158[3] = v129;
      v56 = a3[1];
      v57 = a3[2];
      v58 = a3[3];
      v156[0] = *a3;
      v156[1] = v56;
      v156[2] = v57;
      v156[3] = v58;
      v59 = a2[5];
      v60 = a2[6];
      v61 = a2[7];
      v155[0] = *v14;
      v155[1] = v59;
      v155[2] = v60;
      v155[3] = v61;
      std::priv::__uninitialized_fill_copy<std::priv::_Deque_iterator<rnd::Tile *,std::_Nonconst_traits<rnd::Tile *>>,rnd::Tile *,std::priv::_Deque_iterator<rnd::Tile *,std::_Nonconst_traits<rnd::Tile *>>>(
        v123,
        (int)v157,
        v158,
        &v168,
        v156,
        v155);
      v62 = v160;
      v63 = v161;
      v64 = v162;
      *v14 = v159;
      a2[5] = v62;
      a2[6] = v63;
      a2[7] = v64;
      v65 = a3[3];
      v66 = a3[2];
      v67 = a3[1];
      v124[0] = *a3;
      v125[0] = v111;
      v125[3] = v106;
      v124[3] = v65;
      v124[2] = v66;
      v124[1] = v67;
      v125[1] = v110;
      v125[2] = v108;
      std::priv::__fill<std::priv::_Deque_iterator<rnd::Tile *,std::_Nonconst_traits<rnd::Tile *>>,rnd::Tile *,int>(
        v124,
        v125,
        &v168);
    }
  }
  else
  {
    std::deque<rnd::Tile *>::_M_reserve_elements_at_front(&v159, a2, a4);
    v20 = a2[1];
    v21 = a2[2];
    v22 = a2[3];
    v126 = *a2;
    v127 = v20;
    v128 = v21;
    v129 = v22;
    v105 = a2[3];
    v107 = a2[2];
    v109 = a2[1];
    v23 = *a2;
    std::priv::_Deque_iterator_base<rnd::Tile *>::_M_advance(&v126, v15);
    v24 = v127;
    v25 = v126;
    v26 = v128;
    a3[3] = v129;
    a3[2] = v26;
    a3[1] = v24;
    *a3 = v25;
    v27 = a2[1];
    v28 = a2[2];
    v29 = a2[3];
    if ( a4 <= v15 )
    {
      v126 = *a2;
      v127 = v27;
      v128 = v28;
      v129 = v29;
      std::priv::_Deque_iterator_base<rnd::Tile *>::_M_advance(&v126, a4);
      v118 = v126;
      v116 = v127;
      v114 = v128;
      v112 = v129;
      v120 = a2[2];
      v89 = -a4;
      v121 = *a2;
      v90 = a2[3];
      v151[1] = a2[1];
      v151[3] = v90;
      v151[2] = v120;
      v151[0] = v121;
      v153[3] = v162;
      v153[2] = v161;
      v153[1] = v160;
      v153[0] = v159;
      v152[3] = v129;
      v152[2] = v128;
      v152[1] = v127;
      v152[0] = v126;
      std::priv::__ucopy<std::priv::_Deque_iterator<rnd::Tile *,std::_Nonconst_traits<rnd::Tile *>>,std::priv::_Deque_iterator<rnd::Tile *,std::_Nonconst_traits<rnd::Tile *>>,int>(
        v154,
        (int)v151,
        v152,
        v153);
      v91 = v160;
      v92 = v161;
      v93 = v162;
      *a2 = v159;
      a2[1] = v91;
      a2[2] = v92;
      a2[3] = v93;
      v94 = *a3;
      v95 = a3[1];
      v96 = a3[2];
      v97 = a3[3];
      v149[3] = v112;
      v148[2] = v96;
      v149[2] = v114;
      v147[3] = v105;
      v149[1] = v116;
      v148[3] = v97;
      v149[0] = v118;
      v147[1] = v109;
      v148[1] = v95;
      v148[0] = v94;
      v147[2] = v107;
      v147[0] = v23;
      std::priv::__copy<std::priv::_Deque_iterator<rnd::Tile *,std::_Nonconst_traits<rnd::Tile *>>,std::priv::_Deque_iterator<rnd::Tile *,std::_Nonconst_traits<rnd::Tile *>>,int>(
        v150,
        (int)v149,
        v148,
        (int)v147);
      v98 = a3[1];
      v99 = a3[2];
      v100 = a3[3];
      v126 = *a3;
      v127 = v98;
      v128 = v99;
      v129 = v100;
      std::priv::_Deque_iterator_base<rnd::Tile *>::_M_advance(&v126, v89);
      v101 = a3[3];
      v102 = *a3;
      v103 = a3[1];
      v104 = a3[2];
      v134[3] = v129;
      v134[2] = v128;
      v134[1] = v127;
      v135[3] = v101;
      v135[2] = v104;
      v134[0] = v126;
      v135[1] = v103;
      v135[0] = v102;
      std::priv::__fill<std::priv::_Deque_iterator<rnd::Tile *,std::_Nonconst_traits<rnd::Tile *>>,rnd::Tile *,int>(
        v134,
        v135,
        &v168);
      std::priv::_Deque_iterator_base<rnd::Tile *>::_M_advance(a3, v89);
    }
    else
    {
      v166[0] = *a2;
      v166[1] = v27;
      v166[2] = v28;
      v166[3] = v29;
      v30 = a3[1];
      v31 = a3[2];
      v32 = a3[3];
      v165[0] = *a3;
      v165[1] = v30;
      v165[2] = v31;
      v165[3] = v32;
      v164[0] = v159;
      v164[1] = v160;
      v164[2] = v161;
      v164[3] = v162;
      v33 = a2[1];
      v34 = a2[2];
      v35 = a2[3];
      v163[0] = *a2;
      v163[1] = v33;
      v163[2] = v34;
      v163[3] = v35;
      std::priv::__uninitialized_copy_fill<std::priv::_Deque_iterator<rnd::Tile *,std::_Nonconst_traits<rnd::Tile *>>,rnd::Tile *>(
        v166,
        v165,
        v164,
        v163,
        &v168);
      v36 = v160;
      v37 = v161;
      v38 = v162;
      *a2 = v159;
      a2[1] = v36;
      a2[2] = v37;
      a2[3] = v38;
      v39 = a3[1];
      v40 = a3[3];
      v41 = a3[2];
      v42 = *a3;
      v132[1] = v109;
      v133[1] = v39;
      v132[0] = v23;
      v132[2] = v107;
      v132[3] = v105;
      v133[3] = v40;
      v133[2] = v41;
      v133[0] = v42;
      std::priv::__fill<std::priv::_Deque_iterator<rnd::Tile *,std::_Nonconst_traits<rnd::Tile *>>,rnd::Tile *,int>(
        v132,
        v133,
        &v168);
    }
  }
  v68 = a3[1];
  v69 = a3[2];
  v70 = a3[3];
  *a1 = *a3;
  a1[1] = v68;
  a1[2] = v69;
  a1[3] = v70;
  return a1;
}


// ===== 487ae0 std::deque<rnd::Tile *,std::allocator<rnd::Tile *>>::_M_fill_insert(std::priv::_Deque_iterator<rnd::Tile *,std::_Nonconst_traits<rnd::Tile *>>,uint,rnd::Tile * const&) =====
int *__fastcall std::deque<rnd::Tile *>::_M_fill_insert(int *a1, int *a2, unsigned int a3, int *a4)
{
  int *v4; // r4
  int v7; // r0
  int v8; // r1
  int v9; // r2
  int v10; // r3
  _DWORD *v11; // t0
  int *result; // r0
  _DWORD *v13; // lr
  int *v14; // r12
  int v15; // r0
  int v16; // r1
  int v17; // r2
  int v18; // r3
  int v19; // r1
  int v20; // r2
  int v21; // r3
  int v22; // r1
  int v23; // r2
  int v24; // r3
  int v25[5]; // [sp+8h] [bp-78h] BYREF
  int v26[4]; // [sp+1Ch] [bp-64h] BYREF
  char v27; // [sp+2Ch] [bp-54h] BYREF
  _DWORD v28[4]; // [sp+3Ch] [bp-44h] BYREF
  int *v29; // [sp+4Ch] [bp-34h] BYREF
  int v30; // [sp+50h] [bp-30h]
  int v31; // [sp+54h] [bp-2Ch]
  int v32; // [sp+58h] [bp-28h]
  char v33; // [sp+5Ch] [bp-24h] BYREF
  _DWORD v34[4]; // [sp+6Ch] [bp-14h] BYREF

  v4 = a1;
  if ( *a2 == *a1 )
  {
    std::deque<rnd::Tile *>::_M_reserve_elements_at_front(&v29, a1, a3);
    v13 = v34;
    v34[0] = v29;
    v34[1] = v30;
    v34[2] = v31;
    v34[3] = v32;
    v14 = (int *)&v33;
    v15 = *v4;
    v16 = v4[1];
    v17 = v4[2];
    v18 = v4[3];
LABEL_6:
    *v14 = v15;
    v14[1] = v16;
    v14[2] = v17;
    v14[3] = v18;
    std::uninitialized_fill<std::priv::_Deque_iterator<rnd::Tile *,std::_Nonconst_traits<rnd::Tile *>>,rnd::Tile *>(
      (int)v13,
      v14,
      a4);
    result = v29;
    v19 = v30;
    v20 = v31;
    v21 = v32;
    *v4 = (int)v29;
    v4[1] = v19;
    v4[2] = v20;
    v4[3] = v21;
    return result;
  }
  if ( *a2 == a1[4] )
  {
    std::deque<rnd::Tile *>::_M_reserve_elements_at_back(&v29, a1, a3);
    v4 += 4;
    v13 = v28;
    v22 = v4[1];
    v23 = v4[2];
    v24 = v4[3];
    v28[0] = *v4;
    v28[1] = v22;
    v28[2] = v23;
    v28[3] = v24;
    v14 = (int *)&v27;
    v15 = (int)v29;
    v16 = v30;
    v17 = v31;
    v18 = v32;
    goto LABEL_6;
  }
  v7 = *a2;
  v11 = a2 + 1;
  v8 = a2[1];
  v9 = *++v11;
  v10 = v11[1];
  v26[0] = v7;
  v26[1] = v8;
  v26[2] = v9;
  v26[3] = v10;
  return std::deque<rnd::Tile *>::_M_fill_insert_aux(v25, v4, v26, a3, a4);
}


// ===== 487bb0 Array2d<rnd::Tile *>::Clear(void) =====
_DWORD *__fastcall Array2d<rnd::Tile *>::Clear(_DWORD *a1)
{
  int *v1; // r10
  int *v2; // r4
  int v4; // r5
  int v5; // lr
  int v6; // r10
  int v7; // r1
  int v8; // r2
  int v9; // r3
  int v10; // r1
  int v11; // r2
  int v12; // r3
  int v13; // r1
  int v14; // r2
  int v15; // r3
  int v16; // r1
  int v17; // r2
  int v18; // r3
  int *v19; // r4
  int *v20; // lr
  int *v21; // r12
  _DWORD *result; // r0
  int v23; // r1
  int v24; // r2
  int v25; // r3
  int v26; // r1
  int v27; // r2
  int v28; // r3
  int *v29; // [sp+4h] [bp-E8h]
  int v30; // [sp+1Ch] [bp-D0h]
  int v31[5]; // [sp+20h] [bp-CCh] BYREF
  int v32[10]; // [sp+34h] [bp-B8h] BYREF
  int v33; // [sp+5Ch] [bp-90h] BYREF
  int v34; // [sp+60h] [bp-8Ch]
  int v35; // [sp+64h] [bp-88h]
  int v36; // [sp+68h] [bp-84h]
  _DWORD v37[4]; // [sp+6Ch] [bp-80h] BYREF
  int *v38[4]; // [sp+7Ch] [bp-70h] BYREF
  int v39[4]; // [sp+8Ch] [bp-60h] BYREF
  int v40[4]; // [sp+9Ch] [bp-50h] BYREF
  _DWORD v41[4]; // [sp+ACh] [bp-40h] BYREF
  int v42[4]; // [sp+BCh] [bp-30h] BYREF
  int v43[4]; // [sp+CCh] [bp-20h] BYREF
  int v44[4]; // [sp+DCh] [bp-10h] BYREF
  int v45; // [sp+ECh] [bp+0h] BYREF

  v1 = (int *)a1[5];
  v2 = (int *)a1[3];
  v30 = a1[6];
LABEL_2:
  v29 = v1;
  while ( (int *)a1[7] != v2 )
  {
    v45 = 0;
    v7 = v2[1];
    v8 = v2[2];
    v9 = v2[3];
    v41[0] = *v2;
    v41[1] = v7;
    v41[2] = v8;
    v41[3] = v9;
    if ( std::priv::_Deque_iterator_base<rnd::Tile *>::_M_subtract(v2 + 4, v41) )
    {
      v10 = v2[1];
      v11 = v2[2];
      v12 = v2[3];
      v33 = *v2;
      v34 = v10;
      v35 = v11;
      v36 = v12;
      std::priv::_Deque_iterator_base<rnd::Tile *>::_M_advance(&v33, 0);
      v44[0] = v33;
      v44[1] = v34;
      v44[2] = v35;
      v44[3] = v36;
      v13 = v2[5];
      v14 = v2[6];
      v15 = v2[7];
      v43[0] = v2[4];
      v43[1] = v13;
      v43[2] = v14;
      v43[3] = v15;
      std::deque<rnd::Tile *>::erase(v31, v2, v44, v43);
      v2 += 10;
      if ( v29 == v2 )
      {
LABEL_7:
        v2 = *(int **)(v30 + 4);
        v30 += 4;
        v1 = v2 + 30;
        goto LABEL_2;
      }
    }
    else
    {
      v4 = v2[4];
      v5 = v2[6];
      v6 = v2[7];
      v42[1] = v2[5];
      v42[2] = v5;
      v42[3] = v6;
      v42[0] = v4;
      std::deque<rnd::Tile *>::_M_fill_insert(v2, v42, 0, &v45);
      v2 += 10;
      if ( v29 == v2 )
        goto LABEL_7;
    }
  }
  memset(v32, 0, sizeof(v32));
  std::priv::_Deque_base<rnd::Tile *,std::allocator<rnd::Tile *>>::_M_initialize_map(v32, 0);
  v16 = a1[4];
  v17 = a1[5];
  v18 = a1[6];
  v37[0] = a1[3];
  v37[1] = v16;
  v37[2] = v17;
  v37[3] = v18;
  if ( std::priv::_Deque_iterator_base<std::deque<rnd::Tile *>>::_M_subtract(a1 + 7, v37) )
  {
    v23 = a1[4];
    v24 = a1[5];
    v25 = a1[6];
    v33 = a1[3];
    v34 = v23;
    v35 = v24;
    v36 = v25;
    std::priv::_Deque_iterator_base<std::deque<rnd::Tile *>>::_M_advance(&v33, 0);
    v40[0] = v33;
    v40[1] = v34;
    v40[2] = v35;
    v40[3] = v36;
    v26 = a1[8];
    v27 = a1[9];
    v28 = a1[10];
    v39[0] = a1[7];
    v39[1] = v26;
    v39[2] = v27;
    v39[3] = v28;
    std::deque<std::deque<rnd::Tile *>>::erase(v31, a1 + 3, v40, v39);
  }
  else
  {
    v19 = (int *)a1[10];
    v20 = (int *)a1[9];
    v21 = (int *)a1[8];
    v38[0] = *((int **)a1 + 7);
    v38[3] = v19;
    v38[2] = v20;
    v38[1] = v21;
    std::deque<std::deque<rnd::Tile *>>::_M_fill_insert(a1 + 3, v38, 0, v32);
  }
  result = std::priv::_Deque_base<rnd::Tile *,std::allocator<rnd::Tile *>>::~_Deque_base(v32);
  a1[2] = 0;
  a1[1] = 0;
  *a1 = 0;
  return result;
}


// ===== 487dd8 Array2d<rnd::Tile *>::Array2d(void) =====
_DWORD *__fastcall Array2d<rnd::Tile *>::Array2d(_DWORD *a1)
{
  _DWORD *v2; // r5
  unsigned int v3; // r6
  int *v4; // r3
  int v5; // r2
  int v6; // r3

  a1[3] = 0;
  a1[4] = 0;
  a1[5] = 0;
  a1[6] = 0;
  a1[7] = 0;
  a1[8] = 0;
  a1[9] = 0;
  a1[10] = 0;
  a1[11] = 0;
  a1[12] = 8;
  v2 = std::allocator<std::deque<rnd::Tile *> *>::allocate((int)(a1 + 11), 8u);
  a1[11] = v2;
  v3 = (unsigned int)(a1[12] - 1) >> 1;
  v2[v3] = std::allocator<std::deque<rnd::Tile *>>::allocate();
  v4 = &v2[v3];
  a1[6] = v4;
  v5 = *v4;
  a1[10] = v4;
  a1[4] = v5;
  a1[5] = v5 + 120;
  v6 = *v4;
  a1[3] = v5;
  a1[9] = v6 + 120;
  a1[7] = v6;
  a1[8] = v6;
  Array2d<rnd::Tile *>::Clear(a1);
  return a1;
}


// ===== 487e84 rnd::RandomGenerator::RandomGenerator(void) =====
rnd::RandomGenerator *__fastcall rnd::RandomGenerator::RandomGenerator(rnd::RandomGenerator *this)
{
  int v2; // r5

  Array2d<rnd::Tile *>::Array2d((_DWORD *)this + 2);
  *((_DWORD *)this + 16) = 0;
  *((_BYTE *)this + 60) = 0;
  *((_DWORD *)this + 18) = (char *)this + 60;
  *((_DWORD *)this + 17) = (char *)this + 60;
  *((_DWORD *)this + 19) = 0;
  *((_DWORD *)this + 22) = 0;
  *((_BYTE *)this + 84) = 0;
  *((_DWORD *)this + 24) = (char *)this + 84;
  *((_DWORD *)this + 23) = (char *)this + 84;
  *((_DWORD *)this + 25) = 0;
  rnd::RootRule::RootRule((rnd::RandomGenerator *)((char *)this + 108), this);
  *((_DWORD *)this + 67) = (char *)this + 252;
  *((_DWORD *)this + 68) = (char *)this + 252;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block((_DWORD *)this + 63, 0x10u);
  **((_BYTE **)this + 67) = 0;
  *((_DWORD *)this + 69) = 0;
  *((_DWORD *)this + 70) = 0;
  *((_DWORD *)this + 71) = 0;
  *((_DWORD *)this + 72) = 0;
  *((_DWORD *)this + 73) = 0;
  *((_DWORD *)this + 74) = 0;
  *((_DWORD *)this + 79) = (char *)this + 300;
  *((_DWORD *)this + 80) = (char *)this + 300;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block((_DWORD *)this + 75, 0x10u);
  **((_BYTE **)this + 79) = 0;
  *((_DWORD *)this + 85) = (char *)this + 324;
  *((_DWORD *)this + 86) = (char *)this + 324;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block((_DWORD *)this + 81, 0x10u);
  **((_BYTE **)this + 85) = 0;
  std::string::string((std::string *)((char *)this + 348), "data/scene/");
  *((_DWORD *)this + 97) = (char *)this + 372;
  *((_DWORD *)this + 98) = (char *)this + 372;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block((_DWORD *)this + 93, 0x10u);
  **((_BYTE **)this + 97) = 0;
  *((_DWORD *)this + 99) = 0;
  v2 = operator new(0x318u, 0);
  LevelConfig::LevelConfig(v2, 4);
  *((_DWORD *)this + 99) = v2;
  *(_DWORD *)(v2 + 32) = "LevelConfig";
  PropertyMap::InitProperties((PropertyMap *)(*((_DWORD *)this + 99) + 4));
  PropertyMap::LoadDefaultProperties((PropertyMap *)(*((_DWORD *)this + 99) + 4));
  return this;
}


// ===== 487fdc rnd::RandomGenerator::RandomGenerator(void) =====
rnd::RandomGenerator *__fastcall rnd::RandomGenerator::RandomGenerator(rnd::RandomGenerator *this)
{
  int v2; // r5

  Array2d<rnd::Tile *>::Array2d((_DWORD *)this + 2);
  *((_DWORD *)this + 16) = 0;
  *((_BYTE *)this + 60) = 0;
  *((_DWORD *)this + 18) = (char *)this + 60;
  *((_DWORD *)this + 17) = (char *)this + 60;
  *((_DWORD *)this + 19) = 0;
  *((_DWORD *)this + 22) = 0;
  *((_BYTE *)this + 84) = 0;
  *((_DWORD *)this + 24) = (char *)this + 84;
  *((_DWORD *)this + 23) = (char *)this + 84;
  *((_DWORD *)this + 25) = 0;
  rnd::RootRule::RootRule((rnd::RandomGenerator *)((char *)this + 108), this);
  *((_DWORD *)this + 67) = (char *)this + 252;
  *((_DWORD *)this + 68) = (char *)this + 252;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block((_DWORD *)this + 63, 0x10u);
  **((_BYTE **)this + 67) = 0;
  *((_DWORD *)this + 69) = 0;
  *((_DWORD *)this + 70) = 0;
  *((_DWORD *)this + 71) = 0;
  *((_DWORD *)this + 72) = 0;
  *((_DWORD *)this + 73) = 0;
  *((_DWORD *)this + 74) = 0;
  *((_DWORD *)this + 79) = (char *)this + 300;
  *((_DWORD *)this + 80) = (char *)this + 300;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block((_DWORD *)this + 75, 0x10u);
  **((_BYTE **)this + 79) = 0;
  *((_DWORD *)this + 85) = (char *)this + 324;
  *((_DWORD *)this + 86) = (char *)this + 324;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block((_DWORD *)this + 81, 0x10u);
  **((_BYTE **)this + 85) = 0;
  std::string::string((std::string *)((char *)this + 348), "data/scene/");
  *((_DWORD *)this + 97) = (char *)this + 372;
  *((_DWORD *)this + 98) = (char *)this + 372;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block((_DWORD *)this + 93, 0x10u);
  **((_BYTE **)this + 97) = 0;
  *((_DWORD *)this + 99) = 0;
  v2 = operator new(0x318u, 0);
  LevelConfig::LevelConfig(v2, 4);
  *((_DWORD *)this + 99) = v2;
  *(_DWORD *)(v2 + 32) = "LevelConfig";
  PropertyMap::InitProperties((PropertyMap *)(*((_DWORD *)this + 99) + 4));
  PropertyMap::LoadDefaultProperties((PropertyMap *)(*((_DWORD *)this + 99) + 4));
  return this;
}


// ===== 488134 rnd::RandomGenerator::Generate(int) =====
int __fastcall rnd::RandomGenerator::Generate(rnd::RandomGenerator *this, int a2)
{
  char *v2; // r5
  int v5; // r0
  int v6; // r4
  _DWORD v8[18]; // [sp+0h] [bp-48h] BYREF

  v2 = (char *)this + 8;
  Array2d<rnd::Tile *>::Clear((_DWORD *)this + 2);
  *((_DWORD *)this + 1) = a2;
  *(_DWORD *)this = a2;
  rnd::RootRule::Impl::Impl((rnd::RootRule::Impl *)v8, (rnd::RandomGenerator *)((char *)this + 108));
  v5 = rnd::RootRule::Impl::Generate(v8, v2);
  *((_DWORD *)this + 69) = v5;
  if ( v5 )
  {
    rnd::RandomGenerator::PrintMap(this);
    rnd::Tile::Print(*((rnd::Tile **)this + 69));
    v5 = *((_DWORD *)this + 69);
  }
  v6 = v5;
  if ( v5 )
    v6 = 1;
  v8[0] = off_969C58;
  rnd::Rule::Impl::~Impl((rnd::Rule::Impl *)v8);
  return v6;
}


// ===== 4881d0 rnd::ListElem::~ListElem() =====
void __fastcall rnd::ListElem::~ListElem(rnd::ListElem *this)
{
  char *v1; // r3
  char *v3; // r0
  size_t v4; // r1
  char *v5; // r0
  size_t v6; // r1
  char *v7; // r0
  size_t v8; // r1

  v1 = (char *)this + 52;
  v3 = *((char **)this + 18);
  if ( v3 != v1 && v3 )
  {
    v4 = *((_DWORD *)this + 13) - (_DWORD)v3;
    if ( v4 > 0x80 )
      CustomFree(v3);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v3, v4);
  }
  v5 = *((char **)this + 12);
  if ( v5 != (char *)this + 28 && v5 )
  {
    v6 = *((_DWORD *)this + 7) - (_DWORD)v5;
    if ( v6 > 0x80 )
      CustomFree(v5);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v5, v6);
  }
  v7 = *((char **)this + 6);
  if ( v7 != (char *)this + 4 && v7 )
  {
    v8 = *((_DWORD *)this + 1) - (_DWORD)v7;
    if ( v8 > 0x80 )
      CustomFree(v7);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v7, v8);
  }
}


// ===== 488280 std::vector<rnd::ListElem,std::allocator<rnd::ListElem>>::~vector() =====
rnd::ListElem **__fastcall std::vector<rnd::ListElem>::~vector(rnd::ListElem **a1)
{
  rnd::ListElem *v1; // r5
  rnd::ListElem *v2; // r6
  rnd::ListElem *v4; // r0
  size_t v5; // r1

  v1 = a1[1];
  v2 = *a1;
  while ( v2 != v1 )
  {
    v1 = (rnd::ListElem *)((char *)v1 - 80);
    rnd::ListElem::~ListElem(v1);
  }
  v4 = *a1;
  if ( !*a1 )
    return a1;
  v5 = 16 * ((a1[2] - v4) >> 4);
  if ( v5 <= 0x80 )
  {
    __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v4, v5);
    return a1;
  }
  CustomFree(v4);
  return a1;
}


// ===== 488300 rnd::RandomGenerator::UnloadRules(void) =====
char *__fastcall rnd::RandomGenerator::UnloadRules(rnd::RandomGenerator *this)
{
  void *v2; // r0
  int v3; // r3
  int v4; // r3
  char *i; // r0
  rnd::ListElem **v6; // r4
  rnd::ListElem *v7; // r3
  size_t v8; // r1
  int v9; // r3
  char *result; // r0
  int v11; // r4
  unsigned __int8 *v12; // [sp+0h] [bp-Ch] BYREF
  unsigned __int8 *v13; // [sp+4h] [bp-8h] BYREF

  v2 = *((void **)this + 74);
  if ( v2 )
    free(v2);
  v3 = *((_DWORD *)this + 73);
  *((_DWORD *)this + 74) = 0;
  if ( v3 )
    (*(void (__fastcall **)(int))(*(_DWORD *)v3 + 4))(v3);
  *((_DWORD *)this + 73) = 0;
  v4 = *((_DWORD *)this + 23);
  for ( i = (char *)this + 84;
        (rnd::RandomGenerator *)((char *)this + 84) != (rnd::RandomGenerator *)v4;
        i = (char *)this + 84 )
  {
    v6 = *(rnd::ListElem ***)(v4 + 20);
    v13 = (unsigned __int8 *)v4;
    std::priv::_Rb_tree<char const*,lstr,std::pair<char const* const,rnd::ListRule *>,std::priv::_Select1st<std::pair<char const* const,rnd::ListRule *>>,std::priv::_MapTraitsT<std::pair<char const* const,rnd::ListRule *>>,std::allocator<std::pair<char const* const,rnd::ListRule *>>>::erase(
      (int)i,
      &v13);
    if ( v6 )
    {
      std::vector<rnd::ListElem>::~vector(v6 + 7);
      v7 = v6[5];
      if ( v7 != (rnd::ListElem *)v6 && v7 )
      {
        v8 = *v6 - v7;
        if ( v8 > 0x80 )
          CustomFree(v7);
        else
          __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v7, v8);
      }
      CustomFree(v6);
    }
    v4 = *((_DWORD *)this + 23);
  }
  rnd::RootRule::Unload((rnd::RandomGenerator *)((char *)this + 108));
  v9 = *((_DWORD *)this + 17);
  for ( result = (char *)this + 60;
        (rnd::RandomGenerator *)((char *)this + 60) != (rnd::RandomGenerator *)v9;
        result = (char *)this + 60 )
  {
    v11 = *(_DWORD *)(v9 + 20);
    v12 = (unsigned __int8 *)v9;
    std::priv::_Rb_tree<char const*,lstr,std::pair<char const* const,rnd::Block *>,std::priv::_Select1st<std::pair<char const* const,rnd::Block *>>,std::priv::_MapTraitsT<std::pair<char const* const,rnd::Block *>>,std::allocator<std::pair<char const* const,rnd::Block *>>>::erase(
      (int)result,
      &v12);
    if ( v11 )
      (*(void (__fastcall **)(int))(*(_DWORD *)v11 + 4))(v11);
    v9 = *((_DWORD *)this + 17);
  }
  return result;
}


// ===== 488434 TiXmlPrinter::~TiXmlPrinter() =====
void __fastcall TiXmlPrinter::~TiXmlPrinter(TiXmlPrinter *this)
{
  char *v2; // r1
  char *v3; // r0
  size_t v4; // r1
  char *v5; // r0
  size_t v6; // r1
  char *v7; // r0
  size_t v8; // r1

  *(_DWORD *)this = off_96C3F0;
  v2 = (char *)this + 60;
  v3 = *((char **)this + 20);
  if ( v3 != v2 && v3 )
  {
    v4 = *((_DWORD *)this + 15) - (_DWORD)v3;
    if ( v4 > 0x80 )
      CustomFree(v3);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v3, v4);
  }
  v5 = *((char **)this + 14);
  if ( v5 != (char *)this + 36 && v5 )
  {
    v6 = *((_DWORD *)this + 9) - (_DWORD)v5;
    if ( v6 > 0x80 )
      CustomFree(v5);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v5, v6);
  }
  v7 = *((char **)this + 8);
  if ( v7 != (char *)this + 12 && v7 )
  {
    v8 = *((_DWORD *)this + 3) - (_DWORD)v7;
    if ( v8 > 0x80 )
      CustomFree(v7);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v7, v8);
  }
}


// ===== 488504 rnd::RandomGenerator::~RandomGenerator() =====
void __fastcall rnd::RandomGenerator::~RandomGenerator(rnd::RandomGenerator *this)
{
  int v2; // r3
  char *v3; // r0
  size_t v4; // r1
  char *v5; // r0
  size_t v6; // r1
  char *v7; // r0
  size_t v8; // r1
  char *v9; // r0
  size_t v10; // r1
  void *v11; // r0
  size_t v12; // r1
  char *v13; // r0
  size_t v14; // r1

  rnd::RandomGenerator::UnloadTiles(this);
  rnd::RandomGenerator::UnloadRules(this);
  rnd::RandomGenerator::UnloadRoomPools(this);
  v2 = *((_DWORD *)this + 99);
  if ( v2 )
  {
    (*(void (__fastcall **)(_DWORD))(*(_DWORD *)v2 + 4))(*((_DWORD *)this + 99));
    *((_DWORD *)this + 99) = 0;
  }
  v3 = *((char **)this + 98);
  if ( v3 != (char *)this + 372 && v3 )
  {
    v4 = *((_DWORD *)this + 93) - (_DWORD)v3;
    if ( v4 > 0x80 )
      CustomFree(v3);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v3, v4);
  }
  v5 = *((char **)this + 92);
  if ( v5 != (char *)this + 348 && v5 )
  {
    v6 = *((_DWORD *)this + 87) - (_DWORD)v5;
    if ( v6 > 0x80 )
      CustomFree(v5);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v5, v6);
  }
  v7 = *((char **)this + 86);
  if ( v7 != (char *)this + 324 && v7 )
  {
    v8 = *((_DWORD *)this + 81) - (_DWORD)v7;
    if ( v8 > 0x80 )
      CustomFree(v7);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v7, v8);
  }
  v9 = *((char **)this + 80);
  if ( v9 != (char *)this + 300 && v9 )
  {
    v10 = *((_DWORD *)this + 75) - (_DWORD)v9;
    if ( v10 > 0x80 )
      CustomFree(v9);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v9, v10);
  }
  v11 = *((void **)this + 70);
  if ( v11 )
  {
    v12 = (*((_DWORD *)this + 72) - (_DWORD)v11) & 0xFFFFFFFC;
    if ( v12 > 0x80 )
      CustomFree(v11);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v11, v12);
  }
  v13 = *((char **)this + 68);
  if ( v13 != (char *)this + 252 && v13 )
  {
    v14 = *((_DWORD *)this + 63) - (_DWORD)v13;
    if ( v14 > 0x80 )
      CustomFree(v13);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v13, v14);
  }
  rnd::RootRule::~RootRule((rnd::RandomGenerator *)((char *)this + 108));
  if ( *((_DWORD *)this + 25) )
  {
    std::priv::_Rb_tree<char const*,lstr,std::pair<char const* const,rnd::ListRule *>,std::priv::_Select1st<std::pair<char const* const,rnd::ListRule *>>,std::priv::_MapTraitsT<std::pair<char const* const,rnd::ListRule *>>,std::allocator<std::pair<char const* const,rnd::ListRule *>>>::_M_erase(
      (int)this + 84,
      *((_DWORD **)this + 22));
    *((_DWORD *)this + 24) = (char *)this + 84;
    *((_DWORD *)this + 25) = 0;
    *((_DWORD *)this + 23) = (char *)this + 84;
    *((_DWORD *)this + 22) = 0;
  }
  if ( *((_DWORD *)this + 19) )
  {
    std::priv::_Rb_tree<char const*,lstr,std::pair<char const* const,rnd::Block *>,std::priv::_Select1st<std::pair<char const* const,rnd::Block *>>,std::priv::_MapTraitsT<std::pair<char const* const,rnd::Block *>>,std::allocator<std::pair<char const* const,rnd::Block *>>>::_M_erase(
      (int)this + 60,
      *((_DWORD **)this + 16));
    *((_DWORD *)this + 18) = (char *)this + 60;
    *((_DWORD *)this + 19) = 0;
    *((_DWORD *)this + 17) = (char *)this + 60;
    *((_DWORD *)this + 16) = 0;
  }
  std::deque<std::deque<rnd::Tile *>>::~deque((_DWORD *)this + 5);
}


// ===== 488704 rnd::RandomGenerator::~RandomGenerator() =====
void __fastcall rnd::RandomGenerator::~RandomGenerator(rnd::RandomGenerator *this)
{
  int v2; // r3
  char *v3; // r0
  size_t v4; // r1
  char *v5; // r0
  size_t v6; // r1
  char *v7; // r0
  size_t v8; // r1
  char *v9; // r0
  size_t v10; // r1
  void *v11; // r0
  size_t v12; // r1
  char *v13; // r0
  size_t v14; // r1

  rnd::RandomGenerator::UnloadTiles(this);
  rnd::RandomGenerator::UnloadRules(this);
  rnd::RandomGenerator::UnloadRoomPools(this);
  v2 = *((_DWORD *)this + 99);
  if ( v2 )
  {
    (*(void (__fastcall **)(_DWORD))(*(_DWORD *)v2 + 4))(*((_DWORD *)this + 99));
    *((_DWORD *)this + 99) = 0;
  }
  v3 = *((char **)this + 98);
  if ( v3 != (char *)this + 372 && v3 )
  {
    v4 = *((_DWORD *)this + 93) - (_DWORD)v3;
    if ( v4 > 0x80 )
      CustomFree(v3);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v3, v4);
  }
  v5 = *((char **)this + 92);
  if ( v5 != (char *)this + 348 && v5 )
  {
    v6 = *((_DWORD *)this + 87) - (_DWORD)v5;
    if ( v6 > 0x80 )
      CustomFree(v5);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v5, v6);
  }
  v7 = *((char **)this + 86);
  if ( v7 != (char *)this + 324 && v7 )
  {
    v8 = *((_DWORD *)this + 81) - (_DWORD)v7;
    if ( v8 > 0x80 )
      CustomFree(v7);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v7, v8);
  }
  v9 = *((char **)this + 80);
  if ( v9 != (char *)this + 300 && v9 )
  {
    v10 = *((_DWORD *)this + 75) - (_DWORD)v9;
    if ( v10 > 0x80 )
      CustomFree(v9);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v9, v10);
  }
  v11 = *((void **)this + 70);
  if ( v11 )
  {
    v12 = (*((_DWORD *)this + 72) - (_DWORD)v11) & 0xFFFFFFFC;
    if ( v12 > 0x80 )
      CustomFree(v11);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v11, v12);
  }
  v13 = *((char **)this + 68);
  if ( v13 != (char *)this + 252 && v13 )
  {
    v14 = *((_DWORD *)this + 63) - (_DWORD)v13;
    if ( v14 > 0x80 )
      CustomFree(v13);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v13, v14);
  }
  rnd::RootRule::~RootRule((rnd::RandomGenerator *)((char *)this + 108));
  if ( *((_DWORD *)this + 25) )
  {
    std::priv::_Rb_tree<char const*,lstr,std::pair<char const* const,rnd::ListRule *>,std::priv::_Select1st<std::pair<char const* const,rnd::ListRule *>>,std::priv::_MapTraitsT<std::pair<char const* const,rnd::ListRule *>>,std::allocator<std::pair<char const* const,rnd::ListRule *>>>::_M_erase(
      (int)this + 84,
      *((_DWORD **)this + 22));
    *((_DWORD *)this + 24) = (char *)this + 84;
    *((_DWORD *)this + 25) = 0;
    *((_DWORD *)this + 23) = (char *)this + 84;
    *((_DWORD *)this + 22) = 0;
  }
  if ( *((_DWORD *)this + 19) )
  {
    std::priv::_Rb_tree<char const*,lstr,std::pair<char const* const,rnd::Block *>,std::priv::_Select1st<std::pair<char const* const,rnd::Block *>>,std::priv::_MapTraitsT<std::pair<char const* const,rnd::Block *>>,std::allocator<std::pair<char const* const,rnd::Block *>>>::_M_erase(
      (int)this + 60,
      *((_DWORD **)this + 16));
    *((_DWORD *)this + 18) = (char *)this + 60;
    *((_DWORD *)this + 19) = 0;
    *((_DWORD *)this + 17) = (char *)this + 60;
    *((_DWORD *)this + 16) = 0;
  }
  std::deque<std::deque<rnd::Tile *>>::~deque((_DWORD *)this + 5);
}


// ===== 488904 rnd::RandomGenerator::GetFiles(char const*,std::vector<std::string,std::allocator<std::string>> &) =====
int __fastcall rnd::RandomGenerator::GetFiles(int a1, int a2, std::string **a3)
{
  int v4; // r0
  char *v5; // r5
  void (__fastcall *v6)(int, char *, _DWORD, _DWORD); // r7
  __int64 v7; // r0
  size_t v8; // r5
  int v10; // [sp+14h] [bp-60h] BYREF
  std::string v11; // [sp+24h] [bp-50h] BYREF
  std::string v12; // [sp+3Ch] [bp-38h] BYREF
  std::string v13; // [sp+54h] [bp-20h] BYREF

  v10 = (*(int (__fastcall **)(_DWORD, int, _DWORD, _DWORD))(**(_DWORD **)(dword_99F73C + 52) + 136))(
          *(_DWORD *)(dword_99F73C + 52),
          a2,
          0,
          0);
  v4 = (*(int (__fastcall **)(int))(*(_DWORD *)v10 + 8))(v10);
  v5 = (char *)operator new[](v4 + 1, 0);
  v6 = *(void (__fastcall **)(int, char *, _DWORD, _DWORD))(*(_DWORD *)v10 + 24);
  v7 = ((__int64 (__fastcall *)(int))*(_DWORD *)(*(_DWORD *)v10 + 8))(v10);
  v6(v10, v5, v7, HIDWORD(v7));
  v5[(*(int (__fastcall **)(int))(*(_DWORD *)v10 + 8))(v10)] = 0;
  (*(void (__fastcall **)(_DWORD, int *))(**(_DWORD **)(dword_99F73C + 52) + 120))(*(_DWORD *)(dword_99F73C + 52), &v10);
  std::string::string(&v13, v5);
  if ( v5 )
    CustomFree(v5);
  v8 = std::string::find((int)&v13, "\n");
  if ( v8 != -1 )
  {
    while ( 1 )
    {
      std::string::string(&v12, (int)&v13, 0, v8 - 1);
      std::vector<std::string>::push_back(a3, &v12);
      if ( (std::string *)v12._M_start_of_storage._M_data != &v12 && v12._M_start_of_storage._M_data )
      {
        if ( (unsigned int)(v12._M_buffers._M_end_of_storage - v12._M_start_of_storage._M_data) <= 0x80 )
          __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(
            v12._M_start_of_storage._M_data,
            v12._M_buffers._M_end_of_storage - v12._M_start_of_storage._M_data);
        else
          CustomFree(v12._M_start_of_storage._M_data);
      }
      std::string::string(&v11, (int)&v13, v8 + 1, v13._M_finish - v13._M_start_of_storage._M_data);
      std::string::_M_assign(&v13, v11._M_start_of_storage._M_data, v11._M_finish);
      if ( (std::string *)v11._M_start_of_storage._M_data == &v11 || !v11._M_start_of_storage._M_data )
        goto LABEL_10;
      if ( (unsigned int)(v11._M_buffers._M_end_of_storage - v11._M_start_of_storage._M_data) > 0x80 )
      {
        CustomFree(v11._M_start_of_storage._M_data);
        v8 = std::string::find((int)&v13, "\n");
        if ( v8 == -1 )
          break;
      }
      else
      {
        __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(
          v11._M_start_of_storage._M_data,
          v11._M_buffers._M_end_of_storage - v11._M_start_of_storage._M_data);
LABEL_10:
        v8 = std::string::find((int)&v13, "\n");
        if ( v8 == -1 )
          break;
      }
    }
  }
  if ( (std::string *)v13._M_start_of_storage._M_data != &v13 && v13._M_start_of_storage._M_data )
  {
    if ( (unsigned int)(v13._M_buffers._M_end_of_storage - v13._M_start_of_storage._M_data) > 0x80 )
      CustomFree(v13._M_start_of_storage._M_data);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(
        v13._M_start_of_storage._M_data,
        v13._M_buffers._M_end_of_storage - v13._M_start_of_storage._M_data);
  }
  return 16556;
}


// ===== 488b84 rnd::RandomGenerator::SaveModularLevelToStream(StreamBuffer &) =====
void __fastcall rnd::RandomGenerator::SaveModularLevelToStream(const char **this, StreamBuffer *a2)
{
  TiXmlDeclaration *v4; // r8
  int v5; // r11
  size_t v6; // r0
  TiXmlElement *v7; // r6
  rnd::Tile *v8; // r0
  TiXmlNode *v9; // [sp+4h] [bp-158h]
  TiXmlNode *v10; // [sp+8h] [bp-154h]
  char v11[128]; // [sp+10h] [bp-14Ch] BYREF
  _DWORD v12[18]; // [sp+90h] [bp-CCh] BYREF
  int v13; // [sp+D8h] [bp-84h] BYREF
  void *__p; // [sp+ECh] [bp-70h]
  _DWORD v15[7]; // [sp+100h] [bp-5Ch] BYREF
  int v16; // [sp+11Ch] [bp-40h]
  int v17; // [sp+120h] [bp-3Ch]
  std::string v18; // [sp+13Ch] [bp-20h] BYREF

  TiXmlDocument::TiXmlDocument((TiXmlDocument *)v12);
  v4 = (TiXmlDeclaration *)operator new(0x88u, 0);
  TiXmlDeclaration::TiXmlDeclaration(v4, "1.0", "utf-8", "");
  TiXmlNode::LinkEndChild((TiXmlNode *)v12, v4);
  v5 = operator new(0x40u, 0);
  TiXmlNode::TiXmlNode(v5, 2);
  *(_DWORD *)v5 = off_96C528;
  std::string::_M_assign(
    (std::string *const)(v5 + 32),
    " This file was generated by the Dungeon Hunter random generator ",
    "");
  v10 = (TiXmlNode *)operator new(0x40u, 0);
  TiXmlNode::TiXmlNode(v10, 2);
  *(_DWORD *)v10 = off_96C528;
  std::string::_M_assign((std::string *const)((char *)v10 + 32), " Software version 0.01 ", "");
  sprintf(v11, " Source file: %s ", *(this + 98));
  v9 = (TiXmlNode *)operator new(0x40u, 0);
  TiXmlNode::TiXmlNode(v9, 2);
  *(_DWORD *)v9 = off_96C528;
  v6 = LC_API_STRLEN_0(v11);
  std::string::_M_assign((std::string *const)((char *)v9 + 32), v11, &v11[v6]);
  TiXmlNode::LinkEndChild((TiXmlNode *)v12, (TiXmlNode *)v5);
  TiXmlNode::LinkEndChild((TiXmlNode *)v12, v10);
  TiXmlNode::LinkEndChild((TiXmlNode *)v12, v9);
  v7 = (TiXmlElement *)operator new(0x8Cu, 0);
  TiXmlElement::TiXmlElement(v7, "Level");
  TiXmlNode::LinkEndChild((TiXmlNode *)v12, v7);
  PropertyMap::SavePropertiesToXML((PropertyMap *)(*(this + 99) + 4), v7, nullptr);
  v8 = (rnd::Tile *)*(this + 69);
  if ( v8 )
    rnd::Tile::SaveAsModuleXML(v8, v7, 0);
  TiXmlPrinter::TiXmlPrinter((TiXmlPrinter *)v15);
  v15[0] = off_96C3C0;
  std::string::_M_assign(&v18, "\r\n", "");
  TiXmlDocument::Accept((TiXmlDocument *)v12, (TiXmlVisitor *)v15);
  StreamBuffer::expand(a2, (unsigned int)(v16 - v17));
  (*(void (__fastcall **)(StreamBuffer *, int, int, _DWORD))(*(_DWORD *)a2 + 28))(a2, v17, v16 - v17, 0);
  v15[0] = off_96C3C0;
  TiXmlPrinter::~TiXmlPrinter((TiXmlPrinter *)v15);
  v12[0] = off_96C630;
  if ( __p != &v13 && __p )
  {
    if ( (unsigned int)(v13 - (_DWORD)__p) > 0x80 )
      CustomFree(__p);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(__p, v13 - (_DWORD)__p);
  }
  TiXmlNode::~TiXmlNode((TiXmlNode *)v12);
}


// ===== 488e50 rnd::RandomGenerator::SaveModularLevelXml(void) =====
std::string *__fastcall rnd::RandomGenerator::SaveModularLevelXml(std::string *this, int a2)
{
  const char *v3; // r1
  const char *v4; // r2
  size_t v5; // r7
  int v6; // r3
  int v7; // r2
  std::ostream *v8; // r0
  int v9; // r9
  char *M_finish; // r12
  char *M_data; // r3
  int v12; // r10
  int v13; // r6
  int v14; // r0
  int v15; // r7
  void (__fastcall *v16)(int, _DWORD, void *, _DWORD); // r10
  int v17; // r0
  void *v20[11]; // [sp+20h] [bp-10Ch] BYREF
  unsigned __int8 v21; // [sp+4Ch] [bp-E0h]
  int v22; // [sp+54h] [bp-D8h] BYREF
  _DWORD v23[2]; // [sp+5Ch] [bp-D0h] BYREF
  std::ostream v24; // [sp+64h] [bp-C8h] BYREF
  char v25; // [sp+E8h] [bp-44h]
  int v26; // [sp+ECh] [bp-40h]
  int v27; // [sp+F0h] [bp-3Ch]
  std::string v28; // [sp+F4h] [bp-38h] BYREF
  std::string v29; // [sp+10Ch] [bp-20h] BYREF

  StreamBuffer::StreamBuffer((StreamBuffer *)v20);
  rnd::RandomGenerator::SaveModularLevelToStream((const char **)a2, (StreamBuffer *)v20);
  v3 = *(const char **)(a2 + 368);
  v4 = *(const char **)(a2 + 364);
  v29._M_finish = (char *)&v29;
  v29._M_start_of_storage._M_data = (char *)&v29;
  std::string::_M_range_initialize(&v29, v3, v4);
  std::string::_M_append(&v29, *(char **)(a2 + 392), *(char **)(a2 + 388));
  v5 = std::string::find((int)&v29, ".xml");
  if ( v5 != -1 )
  {
    __ZNSt8ios_baseC2Ev_veneer((std::ios_base *const)&v24.gap4[60]);
    v25 = 0;
    v26 = 0;
    v23[0] = off_964104;
    v27 = 0;
    *(_DWORD *)&v24.gap4[60] = off_964118;
    v23[1] = 0;
    std::ios::init((int)&v24.gap4[60], 0, (int)&v28, (int)off_964104);
    v24._vptr.basic_ostream = (int (**)(...))off_96412C;
    *(_DWORD *)&v24.gap4[60] = off_964140;
    std::ios::init((int)&v24.gap4[60], 0, (int)&v24, (int)off_96412C);
    v23[0] = off_9640C4;
    *(_DWORD *)&v24.gap4[60] = off_9640EC;
    v24._vptr.basic_ostream = (int (**)(...))off_9640D8;
    std::ios::init((int)&v24.gap4[60], 0, (int)off_9640D8, (int)off_9640C4);
    memset(&v24.gap4[4], 0, 24);
    v24._vptr.basic_ostream = (int (**)(...))off_964098;
    v23[0] = off_964084;
    *(_DWORD *)&v24.gap4[60] = off_9640AC;
    *(_DWORD *)v24.gap4 = off_95B938;
    __ZNSt6localeC1Ev_veneer((std::locale *const)&v24.gap4[28]);
    *(_DWORD *)&v24.gap4[52] = &v24.gap4[36];
    *(_DWORD *)v24.gap4 = off_95B8F0;
    *(_DWORD *)&v24.gap4[32] = 24;
    *(_DWORD *)&v24.gap4[56] = &v24.gap4[36];
    std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block(&v24.gap4[36], 0x10u);
    v6 = *(_DWORD *)&v24.gap4[52];
    **(_BYTE **)&v24.gap4[52] = 0;
    std::ios::init((int)&v24.gap4[60], (int)v24.gap4, v7, v6);
    std::ostream::_M_put_nowiden(&v24, "_");
    v8 = std::priv::__put_num<char,std::char_traits<char>,unsigned long>(&v24);
    std::ostream::_M_put_nowiden(v8, ".mlx");
    v28._M_finish = (char *)&v28;
    v28._M_start_of_storage._M_data = (char *)&v28;
    std::string::_M_range_initialize(&v28, *(const char **)&v24.gap4[56], *(const char **)&v24.gap4[52]);
    v9 = v29._M_finish - v29._M_start_of_storage._M_data;
    if ( v5 > v29._M_finish - v29._M_start_of_storage._M_data )
      __ZSt24__stl_throw_out_of_rangePKc_veneer("basic_string");
    M_finish = v28._M_finish;
    M_data = v28._M_start_of_storage._M_data;
    v12 = v9 - v5;
    if ( v9 - v5 >= 4 )
      v12 = 4;
    if ( (char *)(v28._M_finish - v28._M_start_of_storage._M_data) > (char *)(-2 - v9 + v12) )
    {
      __ZSt24__stl_throw_length_errorPKc_veneer("basic_string");
      M_data = v28._M_start_of_storage._M_data;
      M_finish = v28._M_finish;
    }
    std::string::_M_replace(
      &v29,
      &v29._M_start_of_storage._M_data[v5],
      &v29._M_start_of_storage._M_data[v12 + v5],
      M_data,
      M_finish,
      0);
    if ( (std::string *)v28._M_start_of_storage._M_data != &v28 && v28._M_start_of_storage._M_data )
    {
      if ( (unsigned int)(v28._M_buffers._M_end_of_storage - v28._M_start_of_storage._M_data) > 0x80 )
        CustomFree(v28._M_start_of_storage._M_data);
      else
        __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(
          v28._M_start_of_storage._M_data,
          v28._M_buffers._M_end_of_storage - v28._M_start_of_storage._M_data);
    }
    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream((int)v23);
  }
  v13 = *(_DWORD *)(dword_99F73C + 52);
  v14 = (*(int (__fastcall **)(int, char *, int))(*(_DWORD *)v13 + 148))(v13, v29._M_start_of_storage._M_data, 1);
  v15 = v14;
  v22 = v14;
  if ( v14 )
  {
    v16 = *(void (__fastcall **)(int, _DWORD, void *, _DWORD))(*(_DWORD *)v14 + 28);
    if ( !v21 )
    {
      if ( gAssertLevel == 2 )
      {
        *(_DWORD *)v21 = v21;
      }
      else if ( gAssertLevel == 1 )
      {
        fprintf(
          (FILE *)&_sF + 2,
          "ASSERT(%s) FAILED: %s:%d\n",
          "static_",
          "..\\..\\project_vs2005\\Game/..\\..\\sources/Utils/StreamBuffer.h",
          130);
      }
    }
    v16(v15, *(_DWORD *)v20[7], v20[10], 0);
    (*(void (__fastcall **)(int, int *))(*(_DWORD *)v13 + 120))(v13, &v22);
  }
  v17 = std::string::rfind((int)&v29);
  std::string::string(this, (int)&v29, v17 + 1, 0xFFFFFFFF);
  if ( (std::string *)v29._M_start_of_storage._M_data != &v29 && v29._M_start_of_storage._M_data )
  {
    if ( (unsigned int)(v29._M_buffers._M_end_of_storage - v29._M_start_of_storage._M_data) > 0x80 )
      CustomFree(v29._M_start_of_storage._M_data);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(
        v29._M_start_of_storage._M_data,
        v29._M_buffers._M_end_of_storage - v29._M_start_of_storage._M_data);
  }
  StreamBuffer::~StreamBuffer(v20);
  return this;
}


// ===== 4892ec rnd::RandomGenerator::LoadBlocks(void) =====
int __fastcall rnd::RandomGenerator::LoadBlocks(rnd::RandomGenerator *this)
{
  unsigned int v2; // r1
  int v3; // r5
  int v4; // r11
  char *v5; // r6
  const char *v6; // r9
  const char *v7; // r3
  int v8; // r3
  char *v9; // r4
  char *v10; // r2
  int v12; // r3
  int v13; // [sp+14h] [bp-40h] BYREF
  int v14; // [sp+18h] [bp-3Ch]
  int v15; // [sp+1Ch] [bp-38h]
  char v16[8]; // [sp+20h] [bp-34h] BYREF
  _DWORD v17[2]; // [sp+28h] [bp-2Ch] BYREF
  char v18[4]; // [sp+30h] [bp-24h] BYREF
  std::string v19; // [sp+34h] [bp-20h] BYREF

  v2 = *((_DWORD *)this + 85) - *((_DWORD *)this + 86) + 17;
  v19._M_finish = (char *)&v19;
  v19._M_start_of_storage._M_data = (char *)&v19;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block((int)&v19, v2);
  *v19._M_finish = 0;
  std::string::_M_append(&v19, *((const char **)this + 86), *((const char **)this + 85));
  std::string::_M_appendT<char const*>(&v19, "/mgx/mgxlist.txt", "", v18);
  v15 = 0;
  v13 = 0;
  v14 = 0;
  rnd::RandomGenerator::GetFiles(this, v19._M_start_of_storage._M_data, &v13);
  v3 = v13;
  v4 = v14;
  if ( v13 == v14 )
  {
    v5 = (char *)this + 60;
  }
  else
  {
    v5 = (char *)this + 60;
    do
    {
      v6 = *(const char **)(v3 + 20);
      if ( LC_API_STRSTR_0(v6, ".mgx") )
      {
        v8 = rnd::MgxBlock::FromFilename(*((rnd::MgxBlock **)this + 86), *((const char **)this + 80), v6, v7);
        if ( v8 )
        {
          v17[0] = *(_DWORD *)(v8 + 24);
          v17[1] = v8;
          std::priv::_Rb_tree<char const*,lstr,std::pair<char const* const,rnd::Block *>,std::priv::_Select1st<std::pair<char const* const,rnd::Block *>>,std::priv::_MapTraitsT<std::pair<char const* const,rnd::Block *>>,std::allocator<std::pair<char const* const,rnd::Block *>>>::insert_unique(
            v16,
            (char *)this + 60,
            v17);
        }
        v4 = v14;
      }
      v3 += 24;
    }
    while ( v3 != v4 );
  }
  v9 = *((char **)this + 17);
  while ( v9 != v5 )
  {
    while ( 1 )
    {
      rnd::Block::LinkToOtherBlocks(*((_DWORD *)v9 + 5), v5);
      v10 = *((char **)v9 + 3);
      if ( !v10 )
        break;
      while ( *((_DWORD *)v10 + 2) )
        v10 = *((char **)v10 + 2);
      v9 = v10;
      if ( v10 == v5 )
        goto LABEL_16;
    }
    v12 = *((_DWORD *)v9 + 1);
    if ( v9 == *(char **)(v12 + 12) )
    {
      do
      {
        v9 = (char *)v12;
        v12 = *(_DWORD *)(v12 + 4);
      }
      while ( *(char **)(v12 + 12) == v9 );
      v10 = *((char **)v9 + 3);
    }
    if ( v10 != (char *)v12 )
      v9 = (char *)v12;
  }
LABEL_16:
  std::vector<std::string>::~vector(&v13);
  if ( (std::string *)v19._M_start_of_storage._M_data != &v19 && v19._M_start_of_storage._M_data )
  {
    if ( (unsigned int)(v19._M_buffers._M_end_of_storage - v19._M_start_of_storage._M_data) > 0x80 )
      CustomFree(v19._M_start_of_storage._M_data);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(
        v19._M_start_of_storage._M_data,
        v19._M_buffers._M_end_of_storage - v19._M_start_of_storage._M_data);
  }
  return 1;
}


// ===== 489508 rnd::RandomGenerator::LoadRuleFile(char const*) =====
int __fastcall rnd::RandomGenerator::LoadRuleFile(rnd::RandomGenerator *this, const char *a2)
{
  size_t v4; // r0
  int v5; // r7
  int v6; // r0
  unsigned int v7; // r9
  const char *v8; // r1
  int v9; // r0
  signed int v10; // r8
  void *v11; // r0
  int v12; // t1
  TiXmlDocument *v13; // r6
  TiXmlElement *v14; // r7
  int v15; // r0
  const char *v16; // r9
  const char *v17; // r2
  const char *v18; // r7
  const char *v19; // r2
  int Blocks; // r8
  int v21; // r8
  char RoomPools; // r0
  int v23; // r8
  int v24; // r0
  int v25; // r3
  int v26; // r8
  unsigned int v27; // r2
  unsigned int v28; // r6
  char *v30; // [sp+0h] [bp-64h]
  TiXmlNode *v31; // [sp+14h] [bp-50h] BYREF
  TiXmlNode *v32; // [sp+18h] [bp-4Ch] BYREF
  char v33[4]; // [sp+1Ch] [bp-48h] BYREF
  int v34; // [sp+20h] [bp-44h] BYREF
  char v35; // [sp+24h] [bp-40h] BYREF
  std::string v36; // [sp+2Ch] [bp-38h] BYREF
  std::string v37; // [sp+44h] [bp-20h] BYREF

  v4 = LC_API_STRLEN_0(a2);
  std::string::_M_assign((std::string *const)((char *)this + 372), a2, &a2[v4]);
  v5 = *(_DWORD *)(dword_99F73C + 52);
  v6 = std::string::rfind((int)this + 372);
  if ( v6 == -1 )
  {
    sprintf(rnd::RandomGenerator::LoadRuleFile(char const*)::buffer, "data/scene/%s", a2);
    v8 = rnd::RandomGenerator::LoadRuleFile(char const*)::buffer;
  }
  else
  {
    v7 = v6 + 1;
    std::string::string(&v37, (int)this + 372, 0, v6 + 1);
    if ( (std::string *)((char *)this + 348) != &v37 )
      std::string::_M_assign((std::string *const)((char *)this + 348), v37._M_start_of_storage._M_data, v37._M_finish);
    if ( (std::string *)v37._M_start_of_storage._M_data != &v37 && v37._M_start_of_storage._M_data )
    {
      if ( (unsigned int)(v37._M_buffers._M_end_of_storage - v37._M_start_of_storage._M_data) > 0x80 )
        CustomFree(v37._M_start_of_storage._M_data);
      else
        __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(
          v37._M_start_of_storage._M_data,
          v37._M_buffers._M_end_of_storage - v37._M_start_of_storage._M_data);
    }
    v30 = &v35;
    std::string::string(&v36, (int)this + 372, v7, 0xFFFFFFFF);
    if ( (std::string *)((char *)this + 372) != &v36 )
      std::string::_M_assign((std::string *const)((char *)this + 372), v36._M_start_of_storage._M_data, v36._M_finish);
    if ( (std::string *)v36._M_start_of_storage._M_data != &v36 && v36._M_start_of_storage._M_data )
    {
      if ( (unsigned int)(v36._M_buffers._M_end_of_storage - v36._M_start_of_storage._M_data) > 0x80 )
        CustomFree(v36._M_start_of_storage._M_data);
      else
        __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(
          v36._M_start_of_storage._M_data,
          v36._M_buffers._M_end_of_storage - v36._M_start_of_storage._M_data);
    }
    v8 = a2;
  }
  v9 = (*(int (__fastcall **)(int, const char *, _DWORD, _DWORD, char *))(*(_DWORD *)v5 + 136))(v5, v8, 0, 0, v30);
  v34 = v9;
  if ( !v9 )
    return 0;
  v10 = (*(int (__fastcall **)(int))(*(_DWORD *)v9 + 8))(v9);
  v11 = LC_API_MALLOC_0(v10);
  v12 = v34;
  *((_DWORD *)this + 74) = v11;
  (*(void (__fastcall **)(int, void *, signed int, signed int))(*(_DWORD *)v12 + 24))(v12, v11, v10, v10 >> 31);
  (*(void (__fastcall **)(int, int *))(*(_DWORD *)v5 + 120))(v5, &v34);
  v13 = (TiXmlDocument *)operator new(0x70u, 0);
  TiXmlDocument::TiXmlDocument(v13);
  *((_DWORD *)this + 73) = v13;
  TiXmlDocument::LoadFromBuffer(v13, *((_DWORD *)this + 74), v10, 0);
  *(_DWORD *)v33 = *((_DWORD *)this + 73);
  TiXmlHandle::Child((TiXmlHandle *)&v32, v33, "rules");
  v14 = (TiXmlElement *)TiXmlHandle::ToElement((TiXmlHandle *)&v32);
  if ( !v14 )
    return 0;
  v15 = *((_DWORD *)this + 99);
  if ( v15 )
    PropertyMap::LoadOverridesFromXML((PropertyMap *)(v15 + 4), v14);
  if ( TiXmlElement::Attribute(v14, "target") )
  {
    v16 = (const char *)TiXmlElement::Attribute(v14, "target");
    v17 = &v16[LC_API_STRLEN_0(v16)];
  }
  else
  {
    v17 = "";
    v16 = "";
  }
  std::string::_M_assign((std::string *const)((char *)this + 300), v16, v17);
  if ( TiXmlElement::Attribute(v14, "folder") )
  {
    v18 = (const char *)TiXmlElement::Attribute(v14, "folder");
    v19 = &v18[LC_API_STRLEN_0(v18)];
  }
  else
  {
    v19 = "";
    v18 = "";
  }
  std::string::_M_assign((std::string *const)((char *)this + 324), v18, v19);
  Blocks = rnd::RandomGenerator::LoadBlocks(this);
  v21 = rnd::RandomGenerator::LoadListRules(this, v32) & Blocks;
  RoomPools = rnd::RandomGenerator::LoadRoomPools(this, v32);
  if ( v21 )
    v23 = RoomPools & 1;
  else
    v23 = 0;
  TiXmlHandle::Child((TiXmlHandle *)&v31, (const char *)&v32, "RootRule");
  v24 = rnd::RootRule::LoadFromXml((rnd::RandomGenerator *)((char *)this + 108), v31);
  v25 = *((_DWORD *)this + 70);
  v26 = v23 & v24;
  if ( (unsigned int)(*((_DWORD *)this + 71) - v25) >> 2 )
  {
    v27 = 0;
    v28 = 0;
    do
    {
      if ( !rnd::RoomPool::ComputeSizeOfRules(*(rnd::RoomPool **)(v25 + 4 * v27)) )
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
            "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\random\\rndApp.cpp",
            166);
        }
      }
      v25 = *((_DWORD *)this + 70);
      v27 = ++v28;
    }
    while ( v28 < (*((_DWORD *)this + 71) - v25) >> 2 );
  }
  return v26;
}


// ===== 489988 rnd::Block::IsStraight(void) =====
bool __fastcall rnd::Block::IsStraight(rnd::Block *this)
{
  return *((_DWORD *)this + 23) == 2
      && **((_DWORD **)this + 29) == *((_DWORD *)&rnd::Direction::sDirections
                                     + 4 * rnd::DIRECTION_OPPOSITES[**((_DWORD **)this + 104)]);
}


// ===== 4899e4 rnd::Block::GetFlag(void) =====
int __fastcall rnd::Block::GetFlag(rnd::Block *this)
{
  int v1; // r12
  int result; // r0
  int v3; // r3
  rnd::Block *v4; // r2
  int v5; // r1

  v1 = *((_DWORD *)this + 23);
  if ( v1 <= 0 )
    return 0;
  v3 = 0;
  v4 = this;
  result = 0;
  do
  {
    ++v3;
    v5 = **((_DWORD **)v4 + 29);
    v4 = (rnd::Block *)((char *)v4 + 300);
    result |= 1 << v5;
  }
  while ( v3 != v1 );
  return result;
}


// ===== 489a2c std::deque<rnd::Tile *,std::allocator<rnd::Tile *>>::_M_fill_initialize(rnd::Tile * const&,std::__false_type const&) =====
int __fastcall std::deque<rnd::Tile *>::_M_fill_initialize(_DWORD *a1, _DWORD *a2)
{
  int *i; // r3
  int v3; // r4
  int j; // r2
  int v5; // r12
  int result; // r0
  int v7; // r12
  int k; // r3

  for ( i = (int *)a1[3]; a1[7] > (unsigned int)i; ++i )
  {
    v3 = *i;
    for ( j = 0; j != 128; j += 4 )
      *(_DWORD *)(v3 + j) = *a2;
  }
  v5 = a1[4];
  result = a1[5];
  v7 = (v5 - result) >> 2;
  if ( v7 > 0 )
  {
    for ( k = 0; k != v7; ++k )
      *(_DWORD *)(result + 4 * k) = *a2;
  }
  return result;
}


// ===== 489aa4 rnd::TryIsZero(char const*) =====
bool __fastcall rnd::TryIsZero(rnd *this, const char *a2)
{
  return !LC_API_STRCASECMP_0((const char *)this, "0") || LC_API_STRCASECMP_0((const char *)this, "") == 0;
}


// ===== 489aec rnd::Block::LinkToOtherBlocks(std::map<char const*,rnd::Block*,lstr,std::allocator<std::pair<char const* const,rnd::Block*>>> const&) =====
_DWORD *__fastcall rnd::Block::LinkToOtherBlocks(_DWORD *result, _DWORD *a2)
{
  int v2; // r3
  int v3; // r12
  _DWORD *v4; // r9
  int v5; // r11
  int v6; // r6
  int v7; // r2
  unsigned int v8; // r10
  int v9; // r5
  int v10; // r7
  unsigned int v11; // r1
  int v12; // r10
  unsigned int v13; // r4
  _BYTE *v14; // r3
  _BYTE *v15; // r0
  int v16; // r1
  size_t v17; // r2
  int v18; // r3
  const void *v19; // r1
  int v20; // r3
  bool v21; // cc
  _DWORD *v22; // r3
  _DWORD *v23; // r3
  _DWORD *v24; // r2
  unsigned int v25; // [sp+0h] [bp-34h]
  _DWORD *v26; // [sp+Ch] [bp-28h]
  int v27; // [sp+1Ch] [bp-18h]
  int v28; // [sp+20h] [bp-14h]
  _DWORD *v29; // [sp+24h] [bp-10h]
  int v30; // [sp+28h] [bp-Ch]

  v26 = result;
  v29 = (_DWORD *)a2[2];
  while ( a2 != v29 )
  {
    result = v26;
    v2 = v26[23];
    v28 = v29[5];
    if ( v2 > 0 )
    {
      v30 = 0;
      v3 = *(_DWORD *)(v29[5] + 92);
      v4 = v26;
      do
      {
        if ( v3 > 0 )
        {
          v27 = 0;
          v5 = v28;
          v6 = v4[31];
          v7 = v4[32];
          do
          {
            if ( -1431655765 * ((v7 - v6) >> 3) )
            {
              v8 = 0;
              v25 = 0;
              v9 = *(_DWORD *)(v5 + 124);
              v10 = *(_DWORD *)(v5 + 128);
              do
              {
                if ( -1431655765 * ((v10 - v9) >> 3) )
                {
                  v11 = 0;
                  v12 = 24 * v8;
                  v13 = 0;
                  do
                  {
                    v14 = *(_BYTE **)(v6 + v12 + 16);
                    v15 = *(_BYTE **)(v6 + v12 + 20);
                    v16 = v9 + 24 * v11;
                    ++v13;
                    v17 = v14 - v15;
                    if ( v15 != v14 )
                    {
                      v18 = *(_DWORD *)(v16 + 16);
                      v19 = *(const void **)(v16 + 20);
                      if ( v17 == v18 - (_DWORD)v19
                        && !memcmp(v15, v19, v17)
                        && *(_DWORD *)v4[29] == *((_DWORD *)&rnd::Direction::sDirections
                                                + 4 * rnd::DIRECTION_OPPOSITES[**(_DWORD **)(v5 + 116)]) )
                      {
                        v20 = v4[34];
                        v26[75 * v30 + 35 + v20] = v28 + 300 * v27 + 96;
                        v4[34] = v20 + 1;
                        v9 = *(_DWORD *)(v5 + 124);
                        v10 = *(_DWORD *)(v5 + 128);
                        v6 = v4[31];
                      }
                    }
                    v11 = v13;
                  }
                  while ( -1431655765 * ((v10 - v9) >> 3) > v13 );
                  v7 = v4[32];
                }
                v8 = ++v25;
              }
              while ( v25 < -1431655765 * ((v7 - v6) >> 3) );
              v3 = *(_DWORD *)(v28 + 92);
            }
            v5 += 300;
            v21 = v3 <= ++v27;
          }
          while ( !v21 );
          v2 = v26[23];
        }
        v4 += 75;
        result = (_DWORD *)(v30 + 1);
        v21 = v2 <= ++v30;
      }
      while ( !v21 );
    }
    v22 = (_DWORD *)v29[3];
    if ( v22 )
    {
      while ( v22[2] )
        v22 = (_DWORD *)v22[2];
      v29 = v22;
    }
    else
    {
      v23 = (_DWORD *)v29[1];
      v24 = v29;
      while ( (_DWORD *)v23[3] == v24 )
      {
        v24 = v23;
        v23 = (_DWORD *)v23[1];
      }
      result = v24;
      if ( v23 == (_DWORD *)v24[3] )
        v23 = v24;
      v29 = v23;
    }
  }
  return result;
}


// ===== 489ddc rnd::Exit::GetBlockUnitPosition(Point3D<float> &,rnd::Block *) =====
int __fastcall rnd::Exit::GetBlockUnitPosition(int a1, float *a2, int a3)
{
  float v6; // r8
  int v7; // r0
  int v8; // r6
  float v9; // r0
  int result; // r0

  v6 = (float)((float)*(int *)(a3 + 88) * *(float *)(a3 + 80)) * 0.5;
  v7 = (int)(float)(ceilf(
                      (float)(*a2 - (float)((float)((float)-*(_DWORD *)(a3 + 84) * *(float *)(a3 + 76)) * 0.5))
                    / *(float *)(a3 + 76))
                  - 1.0);
  *(_DWORD *)(a1 + 8) = v7;
  v8 = v7;
  v9 = ceilf((float)(v6 - a2[1]) / *(float *)(a3 + 80));
  *(_DWORD *)(a1 + 8) = v8 & ~(v8 >> 31);
  result = (int)(float)(v9 - 1.0) & ~((int)(float)(v9 - 1.0) >> 31);
  *(_DWORD *)(a1 + 12) = result;
  return result;
}


// ===== 489e8c `global constructor keyed to'.._.._sources_Game_random_rndBlock.cpp =====
int `global constructor keyed to'.._.._sources_Game_random_rndBlock.cpp()
{
  int result; // r0

  result = `guard variable for'Singleton<Application>::s_inst;
  dword_9A6314 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9A6310 = 1056964608;
  if ( (`guard variable for'Singleton<Application>::s_inst & 1) == 0 )
  {
    `guard variable for'Singleton<Application>::s_inst = 1;
    Application::Application((Application *)&Singleton<Application>::s_inst);
    return _aeabi_atexit((int)&Singleton<Application>::s_inst, (int)Application::~Application, (int)&_dso_handle);
  }
  return result;
}


// ===== 489f14 std::string::find(char const*,uint,uint) [clone] =====
int __fastcall std::string::find(int a1)
{
  _BYTE *v1; // r3
  _BYTE *v2; // r2
  _BYTE *v3; // r0

  v1 = *(_BYTE **)(a1 + 20);
  v2 = *(_BYTE **)(a1 + 16);
  v3 = v1;
  if ( v2 == v1 )
    return -1;
  do
  {
    if ( *v1 == 44 )
      break;
    ++v1;
  }
  while ( v1 != v2 );
  if ( v2 == v1 )
    return -1;
  else
    return v1 - v3;
}


// ===== 489f58 rnd::Block::~Block() =====
void __fastcall rnd::Block::~Block(rnd::Block *this)
{
  std::priv::_String_base<char,std::allocator<char> > **v2; // r4
  std::priv::_String_base<char,std::allocator<char> > **v3; // r5

  v2 = (std::priv::_String_base<char,std::allocator<char> > **)((char *)this + 2496);
  *(_DWORD *)this = off_969B58;
  v3 = (std::priv::_String_base<char,std::allocator<char> > **)((char *)this + 96);
  do
  {
    v2 -= 75;
    std::vector<std::string>::~vector(v2 + 7);
  }
  while ( v2 != v3 );
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block((std::priv::_String_base<char,std::allocator<char> > *const)((char *)this + 52));
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block((std::priv::_String_base<char,std::allocator<char> > *const)((char *)this + 28));
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block((std::priv::_String_base<char,std::allocator<char> > *const)((char *)this + 4));
}


// ===== 489fbc rnd::Block::~Block() =====
void __fastcall rnd::Block::~Block(rnd::Block *this)
{
  rnd::Block::~Block(this);
  CustomFree(this);
}


// ===== 489fd8 rnd::Block::~Block() =====
void __fastcall rnd::Block::~Block(rnd::Block *this)
{
  std::priv::_String_base<char,std::allocator<char> > **v2; // r4
  std::priv::_String_base<char,std::allocator<char> > **v3; // r5

  v2 = (std::priv::_String_base<char,std::allocator<char> > **)((char *)this + 2496);
  *(_DWORD *)this = off_969B58;
  v3 = (std::priv::_String_base<char,std::allocator<char> > **)((char *)this + 96);
  do
  {
    v2 -= 75;
    std::vector<std::string>::~vector(v2 + 7);
  }
  while ( v2 != v3 );
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block((std::priv::_String_base<char,std::allocator<char> > *const)((char *)this + 52));
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block((std::priv::_String_base<char,std::allocator<char> > *const)((char *)this + 28));
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block((std::priv::_String_base<char,std::allocator<char> > *const)((char *)this + 4));
}


// ===== 48a03c rnd::MgxBlock::~MgxBlock() =====
void __fastcall rnd::MgxBlock::~MgxBlock(rnd::MgxBlock *this)
{
  int v1; // r1

  v1 = *((_DWORD *)this + 625);
  *(_DWORD *)this = off_969B38;
  if ( v1 )
    (*(void (__fastcall **)(int))(*(_DWORD *)v1 + 4))(v1);
  free(*((void **)this + 624));
  rnd::Block::~Block(this);
}


// ===== 48a098 rnd::MgxBlock::~MgxBlock() =====
void __fastcall rnd::MgxBlock::~MgxBlock(rnd::MgxBlock *this)
{
  rnd::MgxBlock::~MgxBlock(this);
  CustomFree(this);
}


// ===== 48a0b4 rnd::MgxBlock::~MgxBlock() =====
void __fastcall rnd::MgxBlock::~MgxBlock(rnd::MgxBlock *this)
{
  int v1; // r1

  v1 = *((_DWORD *)this + 625);
  *(_DWORD *)this = off_969B38;
  if ( v1 )
    (*(void (__fastcall **)(int))(*(_DWORD *)v1 + 4))(v1);
  free(*((void **)this + 624));
  rnd::Block::~Block(this);
}


// ===== 48a110 std::deque<rnd::Tile *,std::allocator<rnd::Tile *>>::_M_reallocate_map(uint,bool) [clone] =====
unsigned int __fastcall std::deque<rnd::Tile *>::_M_reallocate_map(_DWORD *a1, int a2)
{
  int v2; // r2
  char *v3; // r3
  unsigned int v5; // r0
  int v6; // r6
  int v7; // r5
  int v8; // r7
  unsigned int result; // r0
  char *v10; // r5
  size_t v11; // r2
  int v12; // r3
  unsigned int v13; // r8
  char *v14; // r0
  const void *v15; // r1
  unsigned int v16; // r5
  size_t v17; // r2
  char *v18; // r10
  int v19; // r1
  size_t v20; // r1
  int v21; // r3
  int v22; // r6
  int v23; // r1
  int v24; // r3
  signed int v25; // r2

  v2 = a1[7];
  v3 = (char *)a1[3];
  v5 = a1[9];
  v6 = ((v2 - (int)v3) >> 2) + 1;
  v7 = ((v2 - (int)v3) >> 2) + 2;
  v8 = a2;
  if ( v5 <= 2 * v7 )
  {
    if ( v5 )
      v12 = v5;
    else
      v12 = 1;
    v13 = v5 + 2 + v12;
    v14 = (char *)std::allocator<rnd::Tile **>::allocate((int)(a1 + 8), v13);
    v15 = (const void *)a1[3];
    v16 = (v13 - v7) >> 1;
    if ( v8 )
      v8 = 4;
    v17 = a1[7] + 4 - (_DWORD)v15;
    v18 = v14;
    v10 = &v14[4 * v16 + v8];
    if ( v17 )
    {
      memmove(v10, v15, v17);
      result = a1[8];
      v19 = a1[9];
      if ( result )
      {
LABEL_14:
        v20 = 4 * v19;
        if ( v20 > 0x80 )
          CustomFree((void *)result);
        else
          __ZNSt12__node_alloc13_M_deallocateEPvj_veneer((void *)result, v20);
      }
    }
    else
    {
      result = a1[8];
      v19 = a1[9];
      if ( result )
        goto LABEL_14;
    }
    a1[8] = v18;
    a1[9] = v13;
    goto LABEL_17;
  }
  result = (v5 - v7) >> 1;
  if ( a2 )
    v8 = 4;
  v10 = (char *)(a1[8] + v8 + 4 * result);
  if ( v3 <= v10 )
  {
    v25 = v2 + 4 - (_DWORD)v3;
    if ( v25 > 0 )
      result = (unsigned int)memmove(&v10[4 * v6 - v25], v3, v25);
  }
  else
  {
    v11 = v2 + 4 - (_DWORD)v3;
    if ( v11 )
      result = (unsigned int)memmove((void *)(a1[8] + v8 + 4 * result), v3, v11);
  }
LABEL_17:
  a1[3] = v10;
  v21 = *(_DWORD *)v10;
  v22 = v6 - 1;
  v23 = *(_DWORD *)v10 + 128;
  a1[7] = &v10[4 * v22];
  a1[2] = v23;
  a1[1] = v21;
  v24 = *(_DWORD *)&v10[4 * v22];
  a1[6] = v24 + 128;
  a1[5] = v24;
  return result;
}


// ===== 48a278 std::priv::__ucopy<std::string const*,std::string *,int>(std::string const*,std::string const*,std::string *,std::random_access_iterator_tag const&,int *) =====
std::string *__fastcall std::priv::__ucopy<std::string const*,std::string *,int>(int a1, int a2, std::string *this)
{
  int v3; // r3
  int v4; // r5
  int v6; // r7
  int v7; // r6
  std::string *v8; // r4

  v3 = (a2 - a1) >> 3;
  v4 = a1;
  v6 = -1431655765 * v3;
  if ( -1431655765 * v3 <= 0 )
    return this;
  v7 = -1431655765 * v3;
  v8 = this;
  while ( 1 )
  {
    v8->_M_finish = (char *)v8;
    v8->_M_start_of_storage._M_data = (char *)v8;
    std::string::_M_range_initialize(v8, *(const char **)(v4 + 20), *(const char **)(v4 + 16));
    --v7;
    ++v8;
    if ( !v7 )
      break;
    v4 += 24;
  }
  return this + v6;
}


// ===== 48a2f0 std::vector<std::string,std::allocator<std::string>>::vector(std::vector<std::string,std::allocator<std::string>> const&) =====
std::string **__fastcall std::vector<std::string>::vector(std::string **a1, int *a2)
{
  int v3; // r3
  std::string *v5; // r0
  size_t v6; // r3
  int v8; // [sp+8h] [bp-8h] BYREF

  v3 = (a2[1] - *a2) >> 3;
  *a1 = nullptr;
  a1[1] = nullptr;
  a1[2] = nullptr;
  v8 = -1431655765 * v3;
  v5 = (std::string *)std::allocator<std::string>::_M_allocate((int)(a1 + 2), -1431655765 * v3, (size_t *)&v8);
  v6 = v8;
  *a1 = v5;
  a1[1] = v5;
  a1[2] = &v5[v6];
  a1[1] = std::priv::__ucopy<std::string const*,std::string *,int>(*a2, a2[1], v5);
  return a1;
}


// ===== 48a380 rnd::Exit::Exit(rnd::Direction const&,rnd::Block *,int,int,float,int,std::vector<std::string,std::allocator<std::string>> &) =====
int __fastcall rnd::Exit::Exit(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int *a8)
{
  *(_DWORD *)(a1 + 20) = a2;
  *(_DWORD *)(a1 + 8) = a4;
  *(_DWORD *)(a1 + 12) = a5;
  *(_DWORD *)(a1 + 16) = a6;
  *(_DWORD *)(a1 + 24) = a7;
  *(_DWORD *)(a1 + 4) = a3;
  std::vector<std::string>::vector((std::string **)(a1 + 28), a8);
  *(_DWORD *)(a1 + 40) = 0;
  *(_DWORD *)a1 = *(_DWORD *)(a3 + 24);
  return a1;
}


// ===== 48a3d4 rnd::Exit::Exit(rnd::Direction const&,rnd::Block *,int,int,float,int,std::vector<std::string,std::allocator<std::string>> &) =====
int __fastcall rnd::Exit::Exit(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int *a8)
{
  *(_DWORD *)(a1 + 20) = a2;
  *(_DWORD *)(a1 + 8) = a4;
  *(_DWORD *)(a1 + 12) = a5;
  *(_DWORD *)(a1 + 16) = a6;
  *(_DWORD *)(a1 + 24) = a7;
  *(_DWORD *)(a1 + 4) = a3;
  std::vector<std::string>::vector((std::string **)(a1 + 28), a8);
  *(_DWORD *)(a1 + 40) = 0;
  *(_DWORD *)a1 = *(_DWORD *)(a3 + 24);
  return a1;
}


// ===== 48a428 std::vector<std::string,std::allocator<std::string>>::_M_insert_overflow_aux(std::string *,std::string const&,std::__false_type const&,uint,bool) [clone] =====
void __fastcall std::vector<std::string>::_M_insert_overflow_aux(std::string **a1, int a2, int a3)
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
  v13->_M_finish = (char *)v13;
  v13->_M_start_of_storage._M_data = (char *)v13;
  std::string::_M_range_initialize(v13, *(const char **)(a3 + 20), *(const char **)(a3 + 16));
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


// ===== 48a5d0 rnd::Exit::LoadFromXml(TiXmlHandle,rnd::Block *,int) =====
int __fastcall rnd::Exit::LoadFromXml(int a1, TiXmlHandle *a2, int a3, int a4)
{
  int *v4; // r8
  const char *v5; // r5
  size_t v6; // r0
  char *M_finish; // r5
  char *v8; // r0
  char *v9; // r5
  char *v10; // r3
  int v11; // r2
  unsigned int v12; // r5
  const char *v13; // r1
  const char *v14; // r7
  int IsZero; // r6
  int v16; // r5
  const char *v17; // r0
  char *v18; // r1
  int v19; // r5
  TiXmlElement *v22; // [sp+1Ch] [bp-80h]
  float v25[2]; // [sp+2Ch] [bp-70h] BYREF
  int v26; // [sp+34h] [bp-68h]
  std::string *v27[3]; // [sp+38h] [bp-64h] BYREF
  std::string v28; // [sp+4Ch] [bp-50h] BYREF
  std::string v29; // [sp+64h] [bp-38h] BYREF
  std::string v30; // [sp+7Ch] [bp-20h] BYREF

  v22 = (TiXmlElement *)TiXmlHandle::ToElement(a2);
  v5 = (const char *)TiXmlElement::Attribute(v22, "linktype");
  v30._M_finish = (char *)&v30;
  v30._M_start_of_storage._M_data = (char *)&v30;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block(&v30, 0x10u);
  *v30._M_finish = 0;
  if ( !v5 )
    v4 = (int *)v27;
  memset(v27, 0, sizeof(v27));
  if ( v5 )
  {
    v6 = LC_API_STRLEN_0(v5);
    std::string::_M_assign(&v30, v5, &v5[v6]);
    M_finish = v30._M_finish;
    v8 = (char *)memchr(v30._M_start_of_storage._M_data, 32, v30._M_finish - v30._M_start_of_storage._M_data);
    if ( v8 && M_finish != v8 && M_finish != v8 + 1 )
    {
      v9 = M_finish - 1;
      v10 = v8;
      do
      {
        v11 = (unsigned __int8)*++v10;
        if ( v11 != 32 )
          *v8++ = v11;
      }
      while ( v10 != v9 );
    }
    v12 = std::string::find((int)&v30);
    if ( v12 == -1 )
    {
      v4 = (int *)v27;
    }
    else
    {
      v4 = (int *)v27;
      do
      {
        std::string::string(&v29, (int)&v30, 0, v12);
        std::vector<std::string>::push_back(v27, &v29);
        if ( (std::string *)v29._M_start_of_storage._M_data != &v29 && v29._M_start_of_storage._M_data )
        {
          if ( (unsigned int)(v29._M_buffers._M_end_of_storage - v29._M_start_of_storage._M_data) <= 0x80 )
            __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(
              v29._M_start_of_storage._M_data,
              v29._M_buffers._M_end_of_storage - v29._M_start_of_storage._M_data);
          else
            CustomFree(v29._M_start_of_storage._M_data);
        }
        std::string::string(&v28, (int)&v30, v12 + 1, 0xFFFFFFFF);
        std::string::_M_assign(&v30, v28._M_start_of_storage._M_data, v28._M_finish);
        if ( (std::string *)v28._M_start_of_storage._M_data != &v28 && v28._M_start_of_storage._M_data )
        {
          if ( (unsigned int)(v28._M_buffers._M_end_of_storage - v28._M_start_of_storage._M_data) > 0x80 )
            CustomFree(v28._M_start_of_storage._M_data);
          else
            __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(
              v28._M_start_of_storage._M_data,
              v28._M_buffers._M_end_of_storage - v28._M_start_of_storage._M_data);
        }
        v12 = std::string::find((int)&v30);
      }
      while ( v12 != -1 );
    }
    std::vector<std::string>::push_back(v27, &v30);
  }
  v14 = (const char *)TiXmlElement::Attribute(v22, "direction");
  if ( !v14 || (IsZero = rnd::TryIsZero((rnd *)v30._M_start_of_storage._M_data, v13)) != 0 )
  {
    v19 = 0;
  }
  else
  {
    while ( 1 )
    {
      v16 = 16 * IsZero;
      if ( !LC_API_STRCASECMP_0(v14, *((const char **)&rnd::Direction::sDirections + 4 * IsZero + 1)) )
        break;
      if ( ++IsZero == 4 )
      {
        v16 = 64;
        break;
      }
    }
    v26 = 0;
    v25[0] = 0.0;
    v25[1] = 0.0;
    v17 = (const char *)TiXmlElement::Attribute(v22, "position");
    StrToObj(v17, v25);
    rnd::Exit::GetBlockUnitPosition(a1, v25, a3);
    v18 = (char *)&rnd::Direction::sDirections + v16;
    v19 = 1;
    rnd::Exit::Exit(a1, (int)v18, a3, *(_DWORD *)(a1 + 8), *(_DWORD *)(a1 + 12), v26, a4, v4);
  }
  std::vector<std::string>::~vector((std::priv::_String_base<char,std::allocator<char> > **)v4);
  if ( (std::string *)v30._M_start_of_storage._M_data != &v30 && v30._M_start_of_storage._M_data )
  {
    if ( (unsigned int)(v30._M_buffers._M_end_of_storage - v30._M_start_of_storage._M_data) > 0x80 )
      CustomFree(v30._M_start_of_storage._M_data);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(
        v30._M_start_of_storage._M_data,
        v30._M_buffers._M_end_of_storage - v30._M_start_of_storage._M_data);
  }
  return v19;
}


// ===== 48a90c rnd::MgxBlock::LoadFromXml(TiXmlHandle &) =====
int __fastcall rnd::MgxBlock::LoadFromXml(rnd::MgxBlock *this, TiXmlHandle *a2)
{
  TiXmlElement *v4; // r0
  TiXmlElement *v5; // r5
  float v7; // r0
  int v8; // r5
  TiXmlElement *v9; // r0
  const char *v10; // r0
  int v11; // r0
  float v12; // r0
  double v13; // [sp+0h] [bp-10h] BYREF
  int v14; // [sp+8h] [bp-8h] BYREF
  int v15; // [sp+Ch] [bp-4h] BYREF

  v4 = (TiXmlElement *)TiXmlHandle::ToElement(a2);
  v5 = v4;
  if ( !v4 )
    return 0;
  if ( !TiXmlElement::QueryDoubleAttribute(v4, "unit_width", &v13) )
  {
    v7 = v13;
    *((float *)this + 19) = v7;
  }
  if ( !TiXmlElement::QueryDoubleAttribute(v5, "unit_height", &v13) )
  {
    v12 = v13;
    *((float *)this + 20) = v12;
  }
  TiXmlElement::QueryIntAttribute(v5, "block_width", (int *)this + 21);
  TiXmlElement::QueryIntAttribute(v5, "block_height", (int *)this + 22);
  TiXmlHandle::FirstChild((TiXmlHandle *)&v15, (const char *)a2);
  if ( v15 )
  {
    v8 = 0;
    while ( 1 )
    {
      v9 = (TiXmlElement *)TiXmlHandle::ToElement((TiXmlHandle *)&v15);
      v10 = (const char *)TiXmlElement::Attribute(v9, "gametype");
      if ( !LC_API_STRCASECMP_0(v10, "link") )
      {
        v11 = 300 * *((_DWORD *)this + 23);
        v14 = v15;
        if ( rnd::Exit::LoadFromXml((int)this + v11 + 96, (TiXmlHandle *)&v14, (int)this, v8) )
        {
          ++v8;
          ++*((_DWORD *)this + 23);
        }
      }
      if ( !*(_DWORD *)(v15 + 60) )
        break;
      v15 = *(_DWORD *)(v15 + 60);
    }
  }
  return 1;
}


// ===== 48aa84 rnd::MgxBlock::LoadFromXmlStream(IFileStream *) =====
int __fastcall rnd::MgxBlock::LoadFromXmlStream(rnd::MgxBlock *this, IFileStream *a2)
{
  signed int v4; // r6
  void *v5; // r0
  TiXmlDocument *v6; // r5
  int v8; // [sp+0h] [bp-8h] BYREF
  char v9[4]; // [sp+4h] [bp-4h] BYREF

  v4 = (*(int (__fastcall **)(IFileStream *))(*(_DWORD *)a2 + 8))(a2);
  v5 = LC_API_MALLOC_0(v4);
  *((_DWORD *)this + 624) = v5;
  (*(void (__fastcall **)(IFileStream *, void *, signed int, signed int))(*(_DWORD *)a2 + 24))(a2, v5, v4, v4 >> 31);
  v6 = (TiXmlDocument *)operator new(0x70u, 0);
  TiXmlDocument::TiXmlDocument(v6);
  *((_DWORD *)this + 625) = v6;
  TiXmlDocument::LoadFromBuffer(v6, *((_DWORD *)this + 624), v4, 0);
  *(_DWORD *)v9 = *((_DWORD *)this + 625);
  TiXmlHandle::Child((TiXmlHandle *)&v8, v9, "Module");
  return rnd::MgxBlock::LoadFromXml(this, (TiXmlHandle *)&v8);
}


// ===== 48ab34 rnd::Block::Block(void) =====
rnd::Block *__fastcall rnd::Block::Block(rnd::Block *this)
{
  _DWORD *v2; // r0
  int v3; // r2
  _DWORD *v4; // r3

  *(_DWORD *)this = off_969B58;
  v2 = (_DWORD *)((char *)this + 4);
  *((_DWORD *)this + 5) = v2;
  *((_DWORD *)this + 6) = v2;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block(v2, 0x10u);
  **((_BYTE **)this + 5) = 0;
  *((_DWORD *)this + 11) = (char *)this + 28;
  *((_DWORD *)this + 12) = (char *)this + 28;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block((_DWORD *)this + 7, 0x10u);
  **((_BYTE **)this + 11) = 0;
  *((_DWORD *)this + 17) = (char *)this + 52;
  *((_DWORD *)this + 18) = (char *)this + 52;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block((_DWORD *)this + 13, 0x10u);
  **((_BYTE **)this + 17) = 0;
  v3 = 0;
  *((_DWORD *)this + 20) = 1161527296;
  *((_DWORD *)this + 22) = 1;
  *((_DWORD *)this + 19) = 1161527296;
  *((_DWORD *)this + 21) = 1;
  *((_DWORD *)this + 23) = 0;
  v4 = (_DWORD *)((char *)this + 96);
  do
  {
    v3 += 300;
    v4[5] = &unk_956B24;
    v4[7] = 0;
    v4[8] = 0;
    v4[9] = 0;
    v4 += 75;
  }
  while ( v3 != 2400 );
  return this;
}


// ===== 48ac24 rnd::Block::Block(void) =====
rnd::Block *__fastcall rnd::Block::Block(rnd::Block *this)
{
  _DWORD *v2; // r0
  int v3; // r2
  _DWORD *v4; // r3

  *(_DWORD *)this = off_969B58;
  v2 = (_DWORD *)((char *)this + 4);
  *((_DWORD *)this + 5) = v2;
  *((_DWORD *)this + 6) = v2;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block(v2, 0x10u);
  **((_BYTE **)this + 5) = 0;
  *((_DWORD *)this + 11) = (char *)this + 28;
  *((_DWORD *)this + 12) = (char *)this + 28;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block((_DWORD *)this + 7, 0x10u);
  **((_BYTE **)this + 11) = 0;
  *((_DWORD *)this + 17) = (char *)this + 52;
  *((_DWORD *)this + 18) = (char *)this + 52;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block((_DWORD *)this + 13, 0x10u);
  **((_BYTE **)this + 17) = 0;
  v3 = 0;
  *((_DWORD *)this + 20) = 1161527296;
  *((_DWORD *)this + 22) = 1;
  *((_DWORD *)this + 19) = 1161527296;
  *((_DWORD *)this + 21) = 1;
  *((_DWORD *)this + 23) = 0;
  v4 = (_DWORD *)((char *)this + 96);
  do
  {
    v3 += 300;
    v4[5] = &unk_956B24;
    v4[7] = 0;
    v4[8] = 0;
    v4[9] = 0;
    v4 += 75;
  }
  while ( v3 != 2400 );
  return this;
}


// ===== 48ad14 rnd::MgxBlock::MgxBlock(void) =====
rnd::MgxBlock *__fastcall rnd::MgxBlock::MgxBlock(rnd::MgxBlock *this)
{
  rnd::Block::Block(this);
  *((_DWORD *)this + 625) = 0;
  *((_DWORD *)this + 624) = 0;
  *(_DWORD *)this = off_969B38;
  return this;
}


// ===== 48ad54 rnd::MgxBlock::FromFilename(char const*,char const*,char const*) =====
int __fastcall rnd::MgxBlock::FromFilename(rnd::MgxBlock *this, const char *a2, const char *a3, const char *a4)
{
  int v5; // r6
  int v8; // r4
  size_t v9; // r0
  int v10; // r7
  int v11; // r9
  _BOOL4 v12; // r2
  int v13; // r12
  unsigned int v14; // r7
  unsigned int v15; // r12
  unsigned int v16; // r9
  unsigned int v17; // r9
  unsigned int v18; // r9
  char *v19; // r9
  char *v20; // r12
  int v21; // r3
  size_t v22; // r0
  size_t v23; // r0
  _BOOL4 v25; // r3
  char *v26; // [sp+Ch] [bp-238h]
  unsigned int v27; // [sp+Ch] [bp-238h]
  char *v28; // [sp+Ch] [bp-238h]
  std::string *v29; // [sp+10h] [bp-234h]
  _BOOL4 v30; // [sp+18h] [bp-22Ch]
  size_t v31; // [sp+1Ch] [bp-228h]
  char *v32; // [sp+20h] [bp-224h] BYREF
  char *v33; // [sp+24h] [bp-220h] BYREF
  int v34; // [sp+28h] [bp-21Ch] BYREF
  int v35; // [sp+2Ch] [bp-218h] BYREF
  int v36; // [sp+30h] [bp-214h] BYREF
  IFileStream *v37; // [sp+34h] [bp-210h] BYREF
  char s[512]; // [sp+3Ch] [bp-208h] BYREF

  v5 = *(_DWORD *)(dword_99F73C + 52);
  sprintf(s, "%s/mgx/%s", (const char *)this, a3);
  v8 = (*(int (__fastcall **)(int, char *, _DWORD, _DWORD))(*(_DWORD *)v5 + 136))(v5, s, 0, 0);
  if ( v8 )
  {
    v37 = (IFileStream *)v8;
    v8 = operator new(0x9C8u, 0);
    rnd::MgxBlock::MgxBlock((rnd::MgxBlock *)v8);
    v9 = LC_API_STRLEN_0(a3);
    v29 = (std::string *)(v8 + 4);
    std::string::_M_assign((std::string *const)(v8 + 4), a3, &a3[v9]);
    v10 = *(_DWORD *)(v8 + 24);
    if ( (unsigned int)(*(_DWORD *)(v8 + 20) - v10) > 3 )
    {
      v11 = *(_DWORD *)(v8 + 20);
      v33 = "";
      v32 = ".mgx";
      v35 = v11;
      v34 = v10;
      std::search<std::reverse_iterator<char const*>,std::reverse_iterator<char const*>,std::priv::_Eq_traits<std::char_traits<char>>>(
        &v36,
        &v35,
        &v34,
        &v33,
        &v32);
      v13 = v10 == v36 ? v11 : v36 - 4;
      if ( v11 != v13 )
      {
        v14 = *(_DWORD *)(v8 + 24);
        v15 = v13 - v14;
        if ( v15 != -1 )
        {
          v16 = *(_DWORD *)(v8 + 20) - v14;
          if ( v15 > v16 )
          {
            v27 = v15;
            __ZSt24__stl_throw_out_of_rangePKc_veneer("basic_string");
            v14 = *(_DWORD *)(v8 + 24);
            v15 = v27;
          }
          v17 = v16 - v15;
          if ( v17 > 4 )
            v18 = v15 + 4;
          else
            v18 = v15 + v17;
          if ( v14 > (unsigned int)"" )
            v12 = 0;
          v19 = (char *)(v14 + v18);
          v20 = (char *)(v14 + v15);
          if ( v14 <= (unsigned int)"" )
            v30 = *(_DWORD *)(v8 + 20) > (unsigned int)"";
          else
            v30 = v12;
          v31 = v19 - v20;
          if ( v19 - v20 < 0 )
          {
            if ( !v30 )
              goto LABEL_28;
            v25 = v20 >= "";
            if ( v19 <= "" )
              v25 = 1;
            if ( v25 )
            {
LABEL_28:
              if ( v31 )
                memcpy(v20, "", v31);
              std::string::_M_insert(v29, v19, &aLastMenuMultil[v31 + 56], "", v30);
            }
            else if ( v20 > "" )
            {
              v28 = v20;
              std::string::_M_insert(v29, v19, &aLastMenuMultil[v31 + 56], "", 1);
              memmove(&v28[*(_DWORD *)(v8 + 24) - v14], &aLastMenuMultil[*(_DWORD *)(v8 + 24) + 56 - v14], v31);
            }
            else
            {
              memcpy(v20, "", v31);
              std::string::_M_insert(v29, v19, &aLastMenuMultil[v31 + 56], "", 1);
            }
          }
          else if ( v20 != v19 )
          {
            v21 = *(_DWORD *)(v8 + 20);
            if ( (char *)(v21 + 1) != v19 )
            {
              v26 = v20;
              memmove(v20, v19, v21 + 1 - (_DWORD)v19);
              v21 = *(_DWORD *)(v8 + 20);
              v20 = v26;
            }
            *(_DWORD *)(v8 + 20) = v21 + v20 - v19;
          }
        }
      }
    }
    v22 = LC_API_STRLEN_0((const char *)this);
    std::string::_M_assign((std::string *const)(v8 + 28), (const char *)this, (const char *)this + v22);
    v23 = LC_API_STRLEN_0(a2);
    std::string::_M_assign((std::string *const)(v8 + 52), a2, &a2[v23]);
    if ( !rnd::MgxBlock::LoadFromXmlStream((rnd::MgxBlock *)v8, v37) )
    {
      (*(void (__fastcall **)(int))(*(_DWORD *)v8 + 4))(v8);
      v8 = 0;
    }
    (*(void (__fastcall **)(int, IFileStream **))(*(_DWORD *)v5 + 120))(v5, &v37);
  }
  return v8;
}


// ===== 48b108 rnd::MgxBlock::MgxBlock(void) =====
rnd::MgxBlock *__fastcall rnd::MgxBlock::MgxBlock(rnd::MgxBlock *this)
{
  rnd::Block::Block(this);
  *((_DWORD *)this + 625) = 0;
  *((_DWORD *)this + 624) = 0;
  *(_DWORD *)this = off_969B38;
  return this;
}


// ===== 48b148 std::allocator<rnd::Tile *>::allocate(uint,void const*) [clone] =====
void *std::allocator<rnd::Tile *>::allocate()
{
  size_t v1; // [sp+4h] [bp-8h] BYREF

  v1 = 128;
  return __ZNSt12__node_alloc11_M_allocateERj_veneer(&v1);
}


// ===== 48b168 std::deque<rnd::Tile *,std::allocator<rnd::Tile *>>::_M_push_back_aux_v(rnd::Tile * const&) =====
void *__fastcall std::deque<rnd::Tile *>::_M_push_back_aux_v(int a1, _DWORD *a2)
{
  int v2; // r5
  void *result; // r0
  int *v6; // r2
  int v7; // r3
  int v8; // r2

  v2 = *(_DWORD *)(a1 + 28);
  if ( (unsigned int)(*(_DWORD *)(a1 + 36) - ((v2 - *(_DWORD *)(a1 + 32)) >> 2)) <= 1 )
  {
    std::deque<rnd::Tile *>::_M_reallocate_map((_DWORD *)a1, 0);
    v2 = *(_DWORD *)(a1 + 28);
  }
  result = std::allocator<rnd::Tile *>::allocate();
  *(_DWORD *)(v2 + 4) = result;
  **(_DWORD **)(a1 + 16) = *a2;
  v6 = (int *)(*(_DWORD *)(a1 + 28) + 4);
  *(_DWORD *)(a1 + 28) = v6;
  v7 = *v6;
  v8 = *v6 + 128;
  *(_DWORD *)(a1 + 16) = v7;
  *(_DWORD *)(a1 + 24) = v8;
  *(_DWORD *)(a1 + 20) = v7;
  return result;
}


// ===== 48b1dc std::deque<rnd::Tile *,std::allocator<rnd::Tile *>>::_M_push_front_aux_v(rnd::Tile * const&) =====
void *__fastcall std::deque<rnd::Tile *>::_M_push_front_aux_v(_DWORD *a1, _DWORD *a2)
{
  int v2; // r5
  void *result; // r0
  int *v6; // r2
  int v7; // r3
  int v8; // r2

  v2 = a1[3];
  if ( !((unsigned int)(v2 - a1[8]) >> 2) )
  {
    std::deque<rnd::Tile *>::_M_reallocate_map(a1, 1);
    v2 = a1[3];
  }
  result = std::allocator<rnd::Tile *>::allocate();
  *(_DWORD *)(v2 - 4) = result;
  v6 = (int *)(a1[3] - 4);
  a1[3] = v6;
  v7 = *v6;
  v8 = *v6 + 128;
  *a1 = v7 + 124;
  a1[2] = v8;
  a1[1] = v7;
  *(_DWORD *)(v7 + 124) = *a2;
  return result;
}


// ===== 48b244 std::deque<rnd::Tile *,std::allocator<rnd::Tile *>>::deque(uint) =====
_DWORD *__fastcall std::deque<rnd::Tile *>::deque(_DWORD *a1, unsigned int a2)
{
  int v4; // [sp+0h] [bp-Ch] BYREF

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
  std::priv::_Deque_base<rnd::Tile *,std::allocator<rnd::Tile *>>::_M_initialize_map(a1, a2);
  v4 = 0;
  std::deque<rnd::Tile *>::_M_fill_initialize(a1, &v4);
  return a1;
}


// ===== 48b2a4 std::allocator<std::deque<rnd::Tile *,std::allocator<rnd::Tile *>>>::allocate(uint,void const*) [clone] =====
void *std::allocator<std::deque<rnd::Tile *>>::allocate()
{
  size_t v1; // [sp+4h] [bp-8h] BYREF

  v1 = 120;
  return __ZNSt12__node_alloc11_M_allocateERj_veneer(&v1);
}


// ===== 48b2c4 std::deque<std::deque<rnd::Tile *,std::allocator<rnd::Tile *>>,std::allocator<std::deque<rnd::Tile *,std::allocator<rnd::Tile *>>>>::_M_reallocate_map(uint,bool) [clone] =====
unsigned int __fastcall std::deque<std::deque<rnd::Tile *>>::_M_reallocate_map(_DWORD *a1, int a2)
{
  int v2; // r2
  char *v3; // r3
  unsigned int v5; // r0
  int v6; // r6
  int v7; // r5
  int v8; // r7
  unsigned int result; // r0
  char *v10; // r5
  size_t v11; // r2
  int v12; // r3
  unsigned int v13; // r8
  char *v14; // r0
  const void *v15; // r1
  unsigned int v16; // r5
  size_t v17; // r2
  char *v18; // r10
  int v19; // r1
  size_t v20; // r1
  int v21; // r3
  int v22; // r6
  int v23; // r1
  int v24; // r3
  signed int v25; // r2

  v2 = a1[7];
  v3 = (char *)a1[3];
  v5 = a1[9];
  v6 = ((v2 - (int)v3) >> 2) + 1;
  v7 = ((v2 - (int)v3) >> 2) + 2;
  v8 = a2;
  if ( v5 <= 2 * v7 )
  {
    if ( v5 )
      v12 = v5;
    else
      v12 = 1;
    v13 = v5 + 2 + v12;
    v14 = (char *)std::allocator<std::deque<rnd::Tile *> *>::allocate((int)(a1 + 8), v13);
    v15 = (const void *)a1[3];
    v16 = (v13 - v7) >> 1;
    if ( v8 )
      v8 = 4;
    v17 = a1[7] + 4 - (_DWORD)v15;
    v18 = v14;
    v10 = &v14[4 * v16 + v8];
    if ( v17 )
    {
      memmove(v10, v15, v17);
      result = a1[8];
      v19 = a1[9];
      if ( result )
      {
LABEL_14:
        v20 = 4 * v19;
        if ( v20 > 0x80 )
          CustomFree((void *)result);
        else
          __ZNSt12__node_alloc13_M_deallocateEPvj_veneer((void *)result, v20);
      }
    }
    else
    {
      result = a1[8];
      v19 = a1[9];
      if ( result )
        goto LABEL_14;
    }
    a1[8] = v18;
    a1[9] = v13;
    goto LABEL_17;
  }
  result = (v5 - v7) >> 1;
  if ( a2 )
    v8 = 4;
  v10 = (char *)(a1[8] + v8 + 4 * result);
  if ( v3 <= v10 )
  {
    v25 = v2 + 4 - (_DWORD)v3;
    if ( v25 > 0 )
      result = (unsigned int)memmove(&v10[4 * v6 - v25], v3, v25);
  }
  else
  {
    v11 = v2 + 4 - (_DWORD)v3;
    if ( v11 )
      result = (unsigned int)memmove((void *)(a1[8] + v8 + 4 * result), v3, v11);
  }
LABEL_17:
  a1[3] = v10;
  v21 = *(_DWORD *)v10;
  v22 = v6 - 1;
  v23 = *(_DWORD *)v10 + 120;
  a1[7] = &v10[4 * v22];
  a1[2] = v23;
  a1[1] = v21;
  v24 = *(_DWORD *)&v10[4 * v22];
  a1[6] = v24 + 120;
  a1[5] = v24;
  return result;
}


// ===== 48b42c std::deque<std::deque<rnd::Tile *,std::allocator<rnd::Tile *>>,std::allocator<std::deque<rnd::Tile *,std::allocator<rnd::Tile *>>>>::_M_push_back_aux_v(std::deque<rnd::Tile *,std::allocator<rnd::Tile *>> const&) =====
int *__fastcall std::deque<std::deque<rnd::Tile *>>::_M_push_back_aux_v(int a1, int *a2)
{
  int v2; // r5
  int *result; // r0
  int *v6; // r2
  int v7; // r3
  int v8; // r2

  v2 = *(_DWORD *)(a1 + 28);
  if ( (unsigned int)(*(_DWORD *)(a1 + 36) - ((v2 - *(_DWORD *)(a1 + 32)) >> 2)) <= 1 )
  {
    std::deque<std::deque<rnd::Tile *>>::_M_reallocate_map((_DWORD *)a1, 0);
    v2 = *(_DWORD *)(a1 + 28);
  }
  *(_DWORD *)(v2 + 4) = std::allocator<std::deque<rnd::Tile *>>::allocate();
  result = std::deque<rnd::Tile *>::deque(*(int **)(a1 + 16), a2);
  v6 = (int *)(*(_DWORD *)(a1 + 28) + 4);
  *(_DWORD *)(a1 + 28) = v6;
  v7 = *v6;
  v8 = *v6 + 120;
  *(_DWORD *)(a1 + 16) = v7;
  *(_DWORD *)(a1 + 24) = v8;
  *(_DWORD *)(a1 + 20) = v7;
  return result;
}


// ===== 48b4a0 std::deque<std::deque<rnd::Tile *,std::allocator<rnd::Tile *>>,std::allocator<std::deque<rnd::Tile *,std::allocator<rnd::Tile *>>>>::push_back(std::deque<rnd::Tile *,std::allocator<rnd::Tile *>> const&) =====
int *__fastcall std::deque<std::deque<rnd::Tile *>>::push_back(int a1, int *a2)
{
  int *result; // r0

  if ( *(_DWORD *)(a1 + 16) == *(_DWORD *)(a1 + 24) - 40 )
    return std::deque<std::deque<rnd::Tile *>>::_M_push_back_aux_v(a1, a2);
  result = std::deque<rnd::Tile *>::deque(*(int **)(a1 + 16), a2);
  *(_DWORD *)(a1 + 16) += 40;
  return result;
}


// ===== 48b4dc std::deque<std::deque<rnd::Tile *,std::allocator<rnd::Tile *>>,std::allocator<std::deque<rnd::Tile *,std::allocator<rnd::Tile *>>>>::_M_push_front_aux_v(std::deque<rnd::Tile *,std::allocator<rnd::Tile *>> const&) =====
int *__fastcall std::deque<std::deque<rnd::Tile *>>::_M_push_front_aux_v(int **a1, int *a2)
{
  int *v2; // r5
  int *v5; // r2
  int *v6; // r3
  int *v7; // r0

  v2 = a1[3];
  if ( !((unsigned int)((char *)v2 - (char *)a1[8]) >> 2) )
  {
    std::deque<std::deque<rnd::Tile *>>::_M_reallocate_map(a1, 1);
    v2 = a1[3];
  }
  *(v2 - 1) = (int)std::allocator<std::deque<rnd::Tile *>>::allocate();
  v5 = a1[3] - 1;
  a1[3] = v5;
  v6 = (int *)*v5;
  v7 = (int *)(*v5 + 80);
  a1[2] = (int *)(*v5 + 120);
  *a1 = v7;
  a1[1] = v6;
  return std::deque<rnd::Tile *>::deque(v7, a2);
}


// ===== 48b540 std::deque<std::deque<rnd::Tile *,std::allocator<rnd::Tile *>>,std::allocator<std::deque<rnd::Tile *,std::allocator<rnd::Tile *>>>>::push_front(std::deque<rnd::Tile *,std::allocator<rnd::Tile *>> const&) =====
int *__fastcall std::deque<std::deque<rnd::Tile *>>::push_front(int a1, int *a2)
{
  int *result; // r0

  if ( *(_DWORD *)a1 == *(_DWORD *)(a1 + 4) )
    return std::deque<std::deque<rnd::Tile *>>::_M_push_front_aux_v((int **)a1, a2);
  result = std::deque<rnd::Tile *>::deque((int *)(*(_DWORD *)a1 - 40), a2);
  *(_DWORD *)a1 -= 40;
  return result;
}


// ===== 48b578 Array2d<rnd::Tile *>::EnsurePosition(int,int) =====
_DWORD *__fastcall Array2d<rnd::Tile *>::EnsurePosition(_DWORD *result, int a2, int a3)
{
  int v3; // r7
  _DWORD *v4; // r4
  int v5; // r7
  _DWORD *v6; // r5
  _DWORD *v7; // r3
  _DWORD *v8; // r9
  int j; // r6
  int v10; // r7
  int v11; // r7
  int m; // r6
  int v13; // r1
  int v14; // r2
  int v15; // r3
  int v16; // r0
  int v17; // r12
  int v18; // r1
  int v19; // r2
  int v20; // r3
  int v21; // r8
  int v22; // r8
  int k; // r7
  int v24; // r3
  int v25; // r2
  int v26; // r7
  int v27; // r9
  int v28; // r5
  int v29; // r3
  int i; // r6
  _DWORD *v31; // r3
  int v33; // [sp+4h] [bp-88h]
  int v35; // [sp+Ch] [bp-80h]
  int v36[10]; // [sp+10h] [bp-7Ch] BYREF
  int v37[10]; // [sp+38h] [bp-54h] BYREF
  _DWORD v38[4]; // [sp+60h] [bp-2Ch] BYREF
  _DWORD v39[4]; // [sp+70h] [bp-1Ch] BYREF
  int v40; // [sp+80h] [bp-Ch] BYREF
  int v41; // [sp+84h] [bp-8h] BYREF

  v3 = *result;
  v4 = result;
  if ( *result <= a2 )
  {
    v24 = result[2];
    if ( a2 >= v24 + v3 )
    {
      v25 = result[6];
      v26 = 1 - v3 - v24 + a2;
      result[2] = v26 + v24;
      v27 = result[5];
      v28 = result[3];
      v29 = result[7];
      v33 = v25;
      while ( v29 != v28 )
      {
        if ( v26 > 0 )
        {
          for ( i = 0; i != v26; ++i )
          {
            v40 = 0;
            v31 = *(_DWORD **)(v28 + 16);
            if ( v31 == (_DWORD *)(*(_DWORD *)(v28 + 24) - 4) )
            {
              result = std::deque<rnd::Tile *>::_M_push_back_aux_v(v28, &v40);
            }
            else
            {
              *v31 = 0;
              *(_DWORD *)(v28 + 16) += 4;
            }
          }
          v29 = v4[7];
        }
        v28 += 40;
        if ( v27 == v28 )
        {
          v28 = *(_DWORD *)(v33 + 4);
          v33 += 4;
          v27 = v28 + 120;
        }
      }
    }
  }
  else
  {
    v5 = v3 - a2;
    v6 = (_DWORD *)result[3];
    result[2] += v5;
    v7 = (_DWORD *)result[7];
    v8 = (_DWORD *)result[5];
    v35 = result[6];
    while ( v7 != v6 )
    {
      if ( v5 > 0 )
      {
        for ( j = 0; j != v5; ++j )
        {
          v41 = 0;
          if ( *v6 == v6[1] )
          {
            result = std::deque<rnd::Tile *>::_M_push_front_aux_v(v6, &v41);
          }
          else
          {
            *(_DWORD *)(*v6 - 4) = 0;
            *v6 -= 4;
          }
        }
        v7 = (_DWORD *)v4[7];
      }
      v6 += 10;
      if ( v8 == v6 )
      {
        v6 = *(_DWORD **)(v35 + 4);
        v35 += 4;
        v8 = v6 + 30;
      }
    }
    *v4 = a2;
  }
  v10 = v4[1];
  if ( v10 <= a3 )
  {
    v13 = v4[4];
    v14 = v4[5];
    v15 = v4[6];
    v39[0] = v4[3];
    v39[1] = v13;
    v39[2] = v14;
    v39[3] = v15;
    v16 = std::priv::_Deque_iterator_base<std::deque<rnd::Tile *>>::_M_subtract(v4 + 7, v39);
    v17 = v4[1];
    result = (_DWORD *)(v16 + v17);
    if ( a3 >= (int)result )
    {
      v18 = v4[4];
      v19 = v4[5];
      v20 = v4[6];
      v38[0] = v4[3];
      v38[1] = v18;
      v38[2] = v19;
      v38[3] = v20;
      v21 = a3 - v17;
      result = (_DWORD *)std::priv::_Deque_iterator_base<std::deque<rnd::Tile *>>::_M_subtract(v4 + 7, v38);
      v22 = v21 - (_DWORD)result;
      if ( v22 >= 0 )
      {
        for ( k = 0; k <= v22; ++k )
        {
          std::deque<rnd::Tile *>::deque(v36, v4[2]);
          std::deque<std::deque<rnd::Tile *>>::push_back((int)(v4 + 3), v36);
          result = std::priv::_Deque_base<rnd::Tile *,std::allocator<rnd::Tile *>>::~_Deque_base(v36);
        }
      }
    }
  }
  else
  {
    v11 = v10 - a3;
    if ( v11 > 0 )
    {
      for ( m = 0; m != v11; ++m )
      {
        std::deque<rnd::Tile *>::deque(v37, v4[2]);
        std::deque<std::deque<rnd::Tile *>>::push_front((int)(v4 + 3), v37);
        result = std::priv::_Deque_base<rnd::Tile *,std::allocator<rnd::Tile *>>::~_Deque_base(v37);
      }
    }
    v4[1] = a3;
  }
  return result;
}


// ===== 48b7fc Array2d<rnd::Tile *>::operator()(int,int) =====
_DWORD *__fastcall Array2d<rnd::Tile *>::operator()(int *a1, int a2, int a3)
{
  int v6; // r12
  int v7; // r1
  int v8; // r2
  int v9; // r3
  int v10; // r12
  int v11; // r1
  int v12; // r2
  int v13; // r3
  _DWORD *v15; // [sp+0h] [bp-14h] BYREF
  int v16; // [sp+4h] [bp-10h]
  int v17; // [sp+8h] [bp-Ch]
  int v18; // [sp+Ch] [bp-8h]

  Array2d<rnd::Tile *>::EnsurePosition(a1, a2, a3);
  v6 = a1[1];
  v7 = a1[4];
  v8 = a1[5];
  v9 = a1[6];
  v15 = (_DWORD *)a1[3];
  v16 = v7;
  v17 = v8;
  v18 = v9;
  std::priv::_Deque_iterator_base<std::deque<rnd::Tile *>>::_M_advance(&v15, a3 - v6);
  v10 = *a1;
  v11 = v15[1];
  v12 = v15[2];
  v13 = v15[3];
  v15 = (_DWORD *)*v15;
  v16 = v11;
  v17 = v12;
  v18 = v13;
  std::priv::_Deque_iterator_base<rnd::Tile *>::_M_advance(&v15, a2 - v10);
  return v15;
}


// ===== 48b85c rnd::MgxBlock::FitsInMap(Array2d<rnd::Tile *> &,int,int) =====
int __fastcall rnd::MgxBlock::FitsInMap(int a1, int *a2, int a3, int a4)
{
  int v5; // r0
  int v9; // r3
  int v10; // r10
  int v11; // r7
  _DWORD *v12; // r0

  v5 = *(_DWORD *)(a1 + 84);
  if ( a3 < a3 + v5 )
  {
    v9 = *(_DWORD *)(a1 + 88);
    v10 = a3;
    do
    {
      if ( a4 < a4 + v9 )
      {
        v11 = a4;
        do
        {
          v12 = Array2d<rnd::Tile *>::operator()(a2, v10, v11++);
          if ( *v12 )
            return 0;
          v9 = *(_DWORD *)(a1 + 88);
        }
        while ( a4 + v9 > v11 );
        v5 = *(_DWORD *)(a1 + 84);
      }
      ++v10;
    }
    while ( a3 + v5 > v10 );
  }
  return 1;
}


// ===== 48b8f0 rnd::MgxBlock::RemoveFromMap(Array2d<rnd::Tile *> &,rnd::Tile *,int,int) =====
int __fastcall rnd::MgxBlock::RemoveFromMap(int a1, int *a2, int a3, int a4, int a5)
{
  int v6; // r0
  int v9; // r3
  int v10; // r4
  int v11; // r10
  int v15; // [sp+Ch] [bp-18h]

  v6 = *(_DWORD *)(a1 + 88);
  if ( v6 <= 0 )
    return 1;
  v15 = 0;
  v9 = *(_DWORD *)(a1 + 84);
  while ( 2 )
  {
    if ( v9 <= 0 )
      goto LABEL_12;
    v10 = 0;
    v11 = v15 + a5;
    do
    {
      while ( 1 )
      {
        if ( *Array2d<rnd::Tile *>::operator()(a2, v10 + a4, v11) == a3 )
        {
          *Array2d<rnd::Tile *>::operator()(a2, v10 + a4, v11) = 0;
          goto LABEL_5;
        }
        if ( gAssertLevel != 2 )
          break;
        dword_0 = 0;
LABEL_5:
        v9 = *(_DWORD *)(a1 + 84);
        if ( v9 <= ++v10 )
          goto LABEL_11;
      }
      if ( gAssertLevel != 1 )
        goto LABEL_5;
      fprintf(
        (FILE *)&_sF + 2,
        "ASSERT(%s) FAILED: %s:%d\n",
        "false",
        "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\random\\rndBlock.cpp",
        320);
      v9 = *(_DWORD *)(a1 + 84);
      ++v10;
    }
    while ( v9 > v10 );
LABEL_11:
    v6 = *(_DWORD *)(a1 + 88);
LABEL_12:
    if ( v6 > ++v15 )
      continue;
    return 1;
  }
}


// ===== 48ba58 rnd::MgxBlock::PlaceInMap(Array2d<rnd::Tile *> &,rnd::Tile *,int,int) =====
int __fastcall rnd::MgxBlock::PlaceInMap(int a1, int *a2, int a3, int a4, int a5)
{
  int v6; // r0
  int v9; // r3
  int v10; // r4
  int v11; // r10
  int v14; // [sp+8h] [bp-1Ch]

  v6 = *(_DWORD *)(a1 + 88);
  if ( v6 <= 0 )
    return 1;
  v14 = 0;
  v9 = *(_DWORD *)(a1 + 84);
  while ( 2 )
  {
    if ( v9 <= 0 )
      goto LABEL_12;
    v10 = 0;
    v11 = v14 + a5;
    do
    {
      while ( 1 )
      {
        if ( !*Array2d<rnd::Tile *>::operator()(a2, v10 + a4, v11) )
        {
          *Array2d<rnd::Tile *>::operator()(a2, v10 + a4, v11) = a3;
          goto LABEL_5;
        }
        if ( gAssertLevel != 2 )
          break;
        dword_0 = 0;
LABEL_5:
        v9 = *(_DWORD *)(a1 + 84);
        if ( v9 <= ++v10 )
          goto LABEL_11;
      }
      if ( gAssertLevel != 1 )
        goto LABEL_5;
      fprintf(
        (FILE *)&_sF + 2,
        "ASSERT(%s) FAILED: %s:%d\n",
        "false",
        "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\random\\rndBlock.cpp",
        298);
      v9 = *(_DWORD *)(a1 + 84);
      ++v10;
    }
    while ( v9 > v10 );
LABEL_11:
    v6 = *(_DWORD *)(a1 + 88);
LABEL_12:
    if ( v6 > ++v14 )
      continue;
    return 1;
  }
}


// ===== 48bbbc tolower =====
unsigned int __fastcall tolower(unsigned int result)
{
  if ( result <= 0xFF )
    return *(__int16 *)(tolower_tab_ + 2 * result + 2);
  return result;
}


// ===== 48bbec rnd::Rule::Impl::GetRootRule(void) =====
int __fastcall rnd::Rule::Impl::GetRootRule(rnd::Rule::Impl *this)
{
  return *(_DWORD *)(*((_DWORD *)this + 1) + 4);
}


// ===== 48bbf8 rnd::Rule::GetRootRule(void) =====
int __fastcall rnd::Rule::GetRootRule(rnd::Rule *this)
{
  return *((_DWORD *)this + 1);
}


// ===== 48bc00 rnd::RPElem::FillSizes(int,int) =====
_DWORD *__fastcall rnd::RPElem::FillSizes(_DWORD *this, int a2, int a3)
{
  if ( (a3 | a2) >= 0 )
  {
    if ( a3 < a2 )
      *(this + 4) = a2;
    else
      *(this + 4) = a3;
    *(this + 5) = a2;
    *(this + 3) = a2;
  }
  return this;
}


// ===== 48bc20 rnd::RoomPool::Find(ulong) =====
int __fastcall rnd::RoomPool::Find(rnd::RoomPool *this, unsigned int a2)
{
  int result; // r0
  char *v3; // t0
  int v4; // r3
  int v5; // r12
  int v6; // r2
  int v7; // r4

  v3 = (char *)this + 4;
  result = *((_DWORD *)this + 1);
  v4 = -1431655765 * ((*((_DWORD *)v3 + 1) - result) >> 3);
  if ( !v4 )
    return 0;
  if ( *(_DWORD *)(result + 4) != a2 )
  {
    v5 = 24;
    v6 = 0;
    while ( 1 )
    {
      ++v6;
      v7 = result + v5;
      if ( v6 == v4 )
        break;
      v5 += 24;
      if ( *(_DWORD *)(v7 + 4) == a2 )
        return v7;
    }
    return 0;
  }
  return result;
}


// ===== 48bc94 rnd::Rule::Unload(void) =====
int __fastcall rnd::Rule::Unload(int this)
{
  int v1; // r4
  int v2; // r2
  int v3; // r1
  int v4; // r3
  int v5; // t1

  v1 = this;
LABEL_2:
  v2 = *(_DWORD *)(v1 + 12);
  v3 = v1 + 4 * (v2 + 4);
  while ( v2 )
  {
    *(_DWORD *)(v1 + 12) = --v2;
    v5 = *(_DWORD *)(v3 - 4);
    v3 -= 4;
    v4 = v5;
    if ( v5 )
    {
      this = (*(int (__fastcall **)(int, int))(*(_DWORD *)v4 + 4))(v4, v3);
      goto LABEL_2;
    }
  }
  do
  {
    ++v2;
    *(_DWORD *)(v1 + 16) = 0;
    v1 += 4;
  }
  while ( v2 != 16 );
  return this;
}


// ===== 48bcf4 rnd::Rule::GetApp(void) =====
int __fastcall rnd::Rule::GetApp(rnd::Rule *this)
{
  return *(_DWORD *)(*((_DWORD *)this + 1) + 140);
}


// ===== 48bd00 rnd::RootRule::Unload(void) =====
void __fastcall rnd::RootRule::Unload(rnd::RootRule *this)
{
  ;
}


// ===== 48bd04 rnd::RootRule::Impl::FilterExits(std::vector<std::pair<rnd::Exit const*,rnd::ListElem>,std::allocator<std::pair<rnd::Exit const*,rnd::ListElem>>> &,rnd::ListRule *&) =====
void rnd::RootRule::Impl::FilterExits()
{
  ;
}


// ===== 48bd08 rnd::RootRule::Impl::WriteDebuggingInfo(void) =====
void __fastcall rnd::RootRule::Impl::WriteDebuggingInfo(rnd::RootRule::Impl *this)
{
  ;
}


// ===== 48bd0c rnd::Path::Impl::IsDeadEnd(void) =====
bool __fastcall rnd::Path::Impl::IsDeadEnd(rnd::Path::Impl *this)
{
  return *((_DWORD *)this + 10) + 1 == *((_DWORD *)this + 11) && *(_DWORD *)(*((_DWORD *)this + 1) + 12) == 0;
}


// ===== 48bd38 rnd::EndPath::Impl::OneStep(rnd::Tile *,rnd::Exit const*,rnd::Exit const*) =====
int rnd::EndPath::Impl::OneStep()
{
  return 1;
}


// ===== 48bd40 `global constructor keyed to'.._.._sources_Game_random_rndRule.cpp =====
void `global constructor keyed to'.._.._sources_Game_random_rndRule.cpp()
{
  dword_9A6320 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9A631C = 1056964608;
}


// ===== 48bd60 rnd::Rule::Impl::Impl(rnd::Rule const&,rnd::Rule::Impl*) =====
rnd::Rule::Impl *__fastcall rnd::Rule::Impl::Impl(rnd::Rule::Impl *this, const rnd::Rule *a2, rnd::Rule::Impl *a3)
{
  int v4; // r3
  int v5; // r0

  *(_DWORD *)this = off_969C98;
  *((_DWORD *)this + 1) = a2;
  *((_DWORD *)this + 11) = 1;
  *((_DWORD *)this + 16) = 0;
  *((_DWORD *)this + 2) = a3;
  *((_DWORD *)this + 3) = 0;
  *((_DWORD *)this + 10) = 0;
  *((_DWORD *)this + 12) = 0;
  *((_DWORD *)this + 13) = 0;
  *((_DWORD *)this + 14) = 0;
  *((_DWORD *)this + 15) = 0;
  if ( !a3 )
    return this;
  v4 = *((_DWORD *)a3 + 3);
  *((_DWORD *)a3 + v4 + 4) = this;
  *((_DWORD *)a3 + 3) = v4 + 1;
  v5 = *((_DWORD *)this + 1);
  if ( *(_DWORD *)(v5 + 96) == *(_DWORD *)(v5 + 100) )
    return this;
  if ( !std::string::compare((std::string *)(v5 + 80), "north") )
  {
    *((_DWORD *)this + 15) = &rnd::Direction::sDirections;
    return this;
  }
  if ( std::string::compare((std::string *)(*((_DWORD *)this + 1) + 80), "east") )
  {
    if ( !std::string::compare((std::string *)(*((_DWORD *)this + 1) + 80), "south") )
    {
      *((_DWORD *)this + 15) = &unk_956B04;
    }
    else if ( !std::string::compare((std::string *)(*((_DWORD *)this + 1) + 80), "west") )
    {
      *((_DWORD *)this + 15) = &unk_956B14;
    }
    return this;
  }
  *((_DWORD *)this + 15) = &unk_956AF4;
  return this;
}


// ===== 48bebc rnd::Rule::Impl::Impl(rnd::Rule const&,rnd::Rule::Impl*) =====
rnd::Rule::Impl *__fastcall rnd::Rule::Impl::Impl(rnd::Rule::Impl *this, const rnd::Rule *a2, rnd::Rule::Impl *a3)
{
  int v4; // r3
  int v5; // r0

  *(_DWORD *)this = off_969C98;
  *((_DWORD *)this + 1) = a2;
  *((_DWORD *)this + 11) = 1;
  *((_DWORD *)this + 16) = 0;
  *((_DWORD *)this + 2) = a3;
  *((_DWORD *)this + 3) = 0;
  *((_DWORD *)this + 10) = 0;
  *((_DWORD *)this + 12) = 0;
  *((_DWORD *)this + 13) = 0;
  *((_DWORD *)this + 14) = 0;
  *((_DWORD *)this + 15) = 0;
  if ( !a3 )
    return this;
  v4 = *((_DWORD *)a3 + 3);
  *((_DWORD *)a3 + v4 + 4) = this;
  *((_DWORD *)a3 + 3) = v4 + 1;
  v5 = *((_DWORD *)this + 1);
  if ( *(_DWORD *)(v5 + 96) == *(_DWORD *)(v5 + 100) )
    return this;
  if ( !std::string::compare((std::string *)(v5 + 80), "north") )
  {
    *((_DWORD *)this + 15) = &rnd::Direction::sDirections;
    return this;
  }
  if ( std::string::compare((std::string *)(*((_DWORD *)this + 1) + 80), "east") )
  {
    if ( !std::string::compare((std::string *)(*((_DWORD *)this + 1) + 80), "south") )
    {
      *((_DWORD *)this + 15) = &unk_956B04;
    }
    else if ( !std::string::compare((std::string *)(*((_DWORD *)this + 1) + 80), "west") )
    {
      *((_DWORD *)this + 15) = &unk_956B14;
    }
    return this;
  }
  *((_DWORD *)this + 15) = &unk_956AF4;
  return this;
}


// ===== 48c018 rnd::EndPath::Impl::Impl(rnd::EndPath const&,rnd::Rule::Impl *) =====
rnd::Rule::Impl *__fastcall rnd::EndPath::Impl::Impl(rnd::Rule::Impl *a1, const rnd::Rule *a2, rnd::Rule::Impl *a3)
{
  rnd::Rule::Impl::Impl(a1, a2, a3);
  *((_DWORD *)a1 + 17) = a2;
  *(_DWORD *)a1 = off_969B98;
  return a1;
}


// ===== 48c054 rnd::EndPath::NewImpl(rnd::Rule::Impl *) =====
rnd::Rule::Impl *__fastcall rnd::EndPath::NewImpl(rnd::EndPath *this, rnd::Rule::Impl *a2)
{
  rnd::Rule::Impl *v4; // r4

  v4 = (rnd::Rule::Impl *)CustomAlloc(0x48u);
  rnd::EndPath::Impl::Impl(v4, this, a2);
  return v4;
}


// ===== 48c080 rnd::EndPath::Impl::Impl(rnd::EndPath const&,rnd::Rule::Impl *) =====
rnd::EndPath::Impl *__fastcall rnd::EndPath::Impl::Impl(
        rnd::EndPath::Impl *this,
        const rnd::EndPath *a2,
        rnd::Rule::Impl *a3)
{
  rnd::Rule::Impl::Impl(this, a2, a3);
  *((_DWORD *)this + 17) = a2;
  *(_DWORD *)this = off_969B98;
  return this;
}


// ===== 48c0bc rnd::ListElem::operator=(rnd::ListElem const&) =====
int __fastcall rnd::ListElem::operator=(int a1, int a2)
{
  std::string *v4; // r0

  *(_DWORD *)a1 = *(_DWORD *)a2;
  v4 = (std::string *)(a1 + 4);
  if ( v4 != (std::string *)(a2 + 4) )
    std::string::_M_assign(v4, *(const char **)(a2 + 24), *(const char **)(a2 + 20));
  if ( a1 + 28 != a2 + 28 )
    std::string::_M_assign((std::string *const)(a1 + 28), *(const char **)(a2 + 48), *(const char **)(a2 + 44));
  if ( a1 + 52 != a2 + 52 )
    std::string::_M_assign((std::string *const)(a1 + 52), *(const char **)(a2 + 72), *(const char **)(a2 + 68));
  *(_DWORD *)(a1 + 76) = *(_DWORD *)(a2 + 76);
  return a1;
}


// ===== 48c130 rnd::Path::Impl::Impl(rnd::Path const&,rnd::Rule::Impl *) =====
rnd::Rule **__fastcall rnd::Path::Impl::Impl(rnd::Rule **this, const rnd::Path *a2, rnd::Rule::Impl *a3)
{
  rnd::Rule *v5; // r0
  unsigned int i; // r5
  int v7; // r0
  int v8; // r0
  int App; // r0
  rnd::Rule *v10; // r3
  rnd::RandomGenerator *v11; // r0

  rnd::Rule::Impl::Impl((rnd::Rule::Impl *)this, a2, a3);
  v5 = *(this + 1);
  *(this + 17) = a2;
  *this = (rnd::Rule *)off_969C18;
  if ( *((_DWORD *)v5 + 31) )
  {
    for ( i = 0; ; ++i )
    {
      App = rnd::Rule::GetApp(v5);
      if ( i >= (*(_DWORD *)(App + 284) - *(_DWORD *)(App + 280)) >> 2 )
      {
        *(this + 18) = (rnd::Rule *)byte_4;
        return this;
      }
      v7 = rnd::Rule::GetApp(*(this + 1));
      v8 = rnd::RoomPool::Find(*(rnd::RoomPool **)(*(_DWORD *)(v7 + 280) + 4 * i), *((_DWORD *)*(this + 1) + 31));
      if ( v8 )
        break;
      v5 = *(this + 1);
    }
    v10 = *(rnd::Rule **)(v8 + 20);
    *(this + 11) = v10;
    *(this + 18) = (rnd::Rule *)byte_4;
    return this;
  }
  else
  {
    v11 = (rnd::RandomGenerator *)rnd::Rule::GetApp(v5);
    *(this + 11) = rnd::RandomGenerator::GetInt(
                     v11,
                     *((rnd::RandomGenerator **)*(this + 17) + 32),
                     *((_DWORD *)*(this + 17) + 33));
    *(this + 18) = (rnd::Rule *)byte_4;
    return this;
  }
}


// ===== 48c210 rnd::Path::NewImpl(rnd::Rule::Impl *) =====
rnd::Rule **__fastcall rnd::Path::NewImpl(rnd::Path *this, rnd::Rule::Impl *a2)
{
  rnd::Rule **v4; // r4

  v4 = (rnd::Rule **)CustomAlloc(0x4Cu);
  rnd::Path::Impl::Impl(v4, this, a2);
  return v4;
}


// ===== 48c23c rnd::Path::Impl::Impl(rnd::Path const&,rnd::Rule::Impl *) =====
rnd::Rule **__fastcall rnd::Path::Impl::Impl(rnd::Rule **this, const rnd::Path *a2, rnd::Rule::Impl *a3)
{
  rnd::Rule *v5; // r0
  unsigned int i; // r5
  int v7; // r0
  int v8; // r0
  int App; // r0
  rnd::Rule *v10; // r3
  rnd::RandomGenerator *v11; // r0

  rnd::Rule::Impl::Impl((rnd::Rule::Impl *)this, a2, a3);
  v5 = *(this + 1);
  *(this + 17) = a2;
  *this = (rnd::Rule *)off_969C18;
  if ( *((_DWORD *)v5 + 31) )
  {
    for ( i = 0; ; ++i )
    {
      App = rnd::Rule::GetApp(v5);
      if ( i >= (*(_DWORD *)(App + 284) - *(_DWORD *)(App + 280)) >> 2 )
      {
        *(this + 18) = (rnd::Rule *)byte_4;
        return this;
      }
      v7 = rnd::Rule::GetApp(*(this + 1));
      v8 = rnd::RoomPool::Find(*(rnd::RoomPool **)(*(_DWORD *)(v7 + 280) + 4 * i), *((_DWORD *)*(this + 1) + 31));
      if ( v8 )
        break;
      v5 = *(this + 1);
    }
    v10 = *(rnd::Rule **)(v8 + 20);
    *(this + 11) = v10;
    *(this + 18) = (rnd::Rule *)byte_4;
    return this;
  }
  else
  {
    v11 = (rnd::RandomGenerator *)rnd::Rule::GetApp(v5);
    *(this + 11) = rnd::RandomGenerator::GetInt(
                     v11,
                     *((rnd::RandomGenerator **)*(this + 17) + 32),
                     *((_DWORD *)*(this + 17) + 33));
    *(this + 18) = (rnd::Rule *)byte_4;
    return this;
  }
}


// ===== 48c31c std::random_shuffle<char const**,rnd::RandomGenerator>(char const**,char const**,rnd::RandomGenerator &) =====
unsigned int __fastcall std::random_shuffle<char const**,rnd::RandomGenerator>(
        unsigned int result,
        int *a2,
        rnd::RandomGenerator *a3)
{
  unsigned int v3; // r4
  int *v6; // r6
  int v7; // r7
  int v8; // r3

  v3 = result;
  if ( (int *)result != a2 )
  {
    v6 = (int *)(result + 4);
    if ( a2 != (int *)(result + 4) )
    {
      v7 = 4;
      do
      {
        result = rnd::RandomGenerator::operator()(a3, (v7 >> 2) + 1);
        v8 = *v6;
        v7 += 4;
        *v6++ = *(_DWORD *)(v3 + 4 * result);
        *(_DWORD *)(v3 + 4 * result) = v8;
      }
      while ( a2 != v6 );
    }
  }
  return result;
}


// ===== 48c374 rnd::RootRule::Impl::PlaceRootTile(rnd::Block *,rnd::ListElem) =====
rnd::Tile *__fastcall rnd::RootRule::Impl::PlaceRootTile(rnd::Rule **a1, rnd::RandomGenerator *a2, rnd::Block *a3)
{
  rnd::Tile *App; // r0
  rnd::ListElem *v7; // r3
  rnd::Tile *v8; // r5

  App = (rnd::Tile *)rnd::Rule::GetApp(a1[1]);
  v8 = (rnd::Tile *)rnd::Tile::NewRoot(App, a2, a3, v7);
  rnd::Tile::PlaceTile(v8, 0, 0, 0.0);
  if ( (*((int (__fastcall **)(rnd::Rule **, rnd::Tile *, _DWORD))*a1 + 4))(a1, v8, 0) )
  {
    rnd::RootRule::Impl::WriteDebuggingInfo((rnd::RootRule::Impl *)a1);
    return v8;
  }
  else
  {
    rnd::RootRule::Impl::WriteDebuggingInfo((rnd::RootRule::Impl *)a1);
    rnd::Tile::Unspawn(v8);
    return nullptr;
  }
}


// ===== 48c3f8 rnd::RoomPool::Find(uchar *) =====
int __fastcall rnd::RoomPool::Find(rnd::RandomGenerator **this, unsigned __int8 *a2)
{
  unsigned int v3; // r1

  v3 = rnd::RandomGenerator::Hash(*(this + 4), a2);
  return rnd::RoomPool::Find((rnd::RoomPool *)this, v3);
}


// ===== 48c418 std::priv::_Rb_tree<char const*,lstr,std::pair<char const* const,rnd::Block *>,std::priv::_Select1st<std::pair<char const* const,rnd::Block *>>,std::priv::_MapTraitsT<std::pair<char const* const,rnd::Block *>>,std::allocator<std::pair<char const* const,rnd::Block *>>>::_M_find<char const*>(char const* const&) =====
int __fastcall std::priv::_Rb_tree<char const*,lstr,std::pair<char const* const,rnd::Block *>,std::priv::_Select1st<std::pair<char const* const,rnd::Block *>>,std::priv::_MapTraitsT<std::pair<char const* const,rnd::Block *>>,std::allocator<std::pair<char const* const,rnd::Block *>>>::_M_find<char const*>(
        int a1,
        char **a2)
{
  int v2; // r4
  int v5; // r6
  int v6; // r7
  unsigned int v7; // r0

  v2 = *(_DWORD *)(a1 + 4);
  if ( !v2 )
    return a1;
  v5 = a1 + 20;
  v6 = a1;
  do
  {
    v7 = lstr::operator()(v5, *(char **)(v2 + 16), *a2);
    if ( v7 )
      v2 = *(_DWORD *)(v2 + 12);
    else
      v6 = v2;
    if ( !v7 )
      v2 = *(_DWORD *)(v2 + 8);
  }
  while ( v2 );
  if ( v6 != a1 && lstr::operator()(v5, *a2, *(char **)(v6 + 16)) )
    return a1;
  return v6;
}


// ===== 48c48c rnd::RPElem::LoadFromXml(TiXmlNode *) =====
TiXmlElement *__fastcall rnd::RPElem::LoadFromXml(rnd::RPElem *this, TiXmlNode *a2)
{
  TiXmlElement *result; // r0
  TiXmlElement *v4; // r5
  unsigned __int8 *v5; // r1
  bool v6; // r3

  result = (TiXmlElement *)(*(int (__fastcall **)(TiXmlNode *))(*(_DWORD *)a2 + 44))(a2);
  v4 = result;
  if ( result && *(_DWORD *)this )
  {
    v5 = (unsigned __int8 *)TiXmlElement::Attribute(result, "id");
    if ( v5 )
      *((_DWORD *)this + 1) = rnd::RandomGenerator::Hash(*(rnd::RandomGenerator **)(*(_DWORD *)this + 16), v5);
    result = (TiXmlElement *)TiXmlElement::Attribute(v4, "recursive");
    v6 = (char)result;
    if ( result )
    {
      result = (TiXmlElement *)LC_API_STRCMP_0((const char *)result, "true");
      v6 = result == nullptr;
    }
    *((_BYTE *)this + 8) = v6;
  }
  return result;
}


// ===== 48c51c rnd::ListElem::LoadFromXml(TiXmlNode *) =====
TiXmlElement *__fastcall rnd::ListElem::LoadFromXml(rnd::ListElem *this, TiXmlNode *a2)
{
  TiXmlElement *result; // r0
  TiXmlElement *v4; // r5
  const char *v5; // r0
  const char *v6; // r7
  const char *v7; // r2
  const char *v8; // r0
  const char *v9; // r7
  const char *v10; // r2
  const char *v11; // r0
  const char *v12; // r7
  const char *v13; // r2

  result = (TiXmlElement *)(*(int (__fastcall **)(TiXmlNode *))(*(_DWORD *)a2 + 44))(a2);
  v4 = result;
  if ( result )
  {
    v5 = (const char *)TiXmlElement::Attribute(result, "name");
    v6 = v5;
    if ( v5 )
    {
      v7 = &v5[LC_API_STRLEN_0(v5)];
    }
    else
    {
      v7 = "";
      v6 = "";
    }
    std::string::_M_assign((std::string *const)((char *)this + 4), v6, v7);
    v8 = (const char *)TiXmlElement::Attribute(v4, "gameplay");
    v9 = v8;
    if ( v8 )
    {
      v10 = &v8[LC_API_STRLEN_0(v8)];
    }
    else
    {
      v10 = "";
      v9 = "";
    }
    std::string::_M_assign((std::string *const)((char *)this + 28), v9, v10);
    v11 = (const char *)TiXmlElement::Attribute(v4, "visual");
    v12 = v11;
    if ( v11 )
    {
      v13 = &v11[LC_API_STRLEN_0(v11)];
    }
    else
    {
      v13 = "";
      v12 = "";
    }
    std::string::_M_assign((std::string *const)((char *)this + 52), v12, v13);
    result = (TiXmlElement *)TiXmlElement::QueryIntAttribute(v4, "chances", (int *)this + 19);
    if ( result )
      *((_DWORD *)this + 19) = 100;
  }
  return result;
}


// ===== 48c638 rnd::BlockSearch::operator()(rnd::ListElem &) =====
bool __fastcall rnd::BlockSearch::operator()(_DWORD *a1, _DWORD *a2)
{
  int v3; // r2
  const void *v4; // r0
  const void *v6; // r1
  size_t v7; // r2
  const void *v9; // r0
  const void *v10; // r1
  size_t v11; // r2
  const void *v12; // r0
  const void *v13; // r1
  size_t v14; // r2

  v3 = a2[5];
  v4 = (const void *)a2[6];
  v6 = (const void *)a1[5];
  v7 = v3 - (_DWORD)v4;
  if ( v7 == a1[4] - (_DWORD)v6
    && !memcmp(v4, v6, v7)
    && (v9 = (const void *)a2[12], v10 = (const void *)a1[11], v11 = a2[11] - (_DWORD)v9, v11 == a1[10] - (_DWORD)v10)
    && !memcmp(v9, v10, v11)
    && (v12 = (const void *)a2[18], v13 = (const void *)a1[17], v14 = a2[17] - (_DWORD)v12, v14 == a1[16] - (_DWORD)v13) )
  {
    return memcmp(v12, v13, v14) == 0;
  }
  else
  {
    return 0;
  }
}


// ===== 48c6d4 std::priv::__find_if<rnd::ListElem *,rnd::BlockSearch>(rnd::ListElem *,rnd::ListElem *,rnd::BlockSearch,std::random_access_iterator_tag const&) =====
_DWORD *__fastcall std::priv::__find_if<rnd::ListElem *,rnd::BlockSearch>(_DWORD *a1, int a2, _DWORD *a3)
{
  _DWORD *v4; // r4
  int v6; // r3
  int v7; // r8
  _DWORD *v8; // r7

  v4 = a1;
  v6 = -858993459 * ((a2 - (int)a1) >> 4);
  v7 = v6 >> 2;
  if ( v6 >> 2 <= 0 )
  {
LABEL_10:
    if ( v6 != 2 )
    {
      if ( v6 != 3 )
      {
        if ( v6 != 1 )
          return (_DWORD *)a2;
        goto LABEL_19;
      }
      if ( rnd::BlockSearch::operator()(a3, v4) )
        return v4;
      v4 += 20;
    }
    if ( rnd::BlockSearch::operator()(a3, v4) )
      return v4;
    v4 += 20;
LABEL_19:
    if ( !rnd::BlockSearch::operator()(a3, v4) )
      return (_DWORD *)a2;
    return v4;
  }
  while ( 1 )
  {
    v8 = v4;
    if ( rnd::BlockSearch::operator()(a3, v4) )
      return v4;
    v4 += 20;
    if ( rnd::BlockSearch::operator()(a3, v4) )
      return v4;
    v4 = v8 + 40;
    if ( rnd::BlockSearch::operator()(a3, v8 + 40) )
      return v4;
    v4 = v8 + 60;
    if ( rnd::BlockSearch::operator()(a3, v8 + 60) )
      return v4;
    --v7;
    v4 = v8 + 80;
    if ( !v7 )
    {
      v6 = -858993459 * ((a2 - (int)v4) >> 4);
      goto LABEL_10;
    }
  }
}


// ===== 48c810 std::allocator<std::pair<rnd::Exit const*,rnd::ListElem>>::_M_allocate(uint,uint &) =====
void *__fastcall std::allocator<std::pair<rnd::Exit const*,rnd::ListElem>>::_M_allocate(
        int a1,
        unsigned int a2,
        size_t *a3)
{
  void *result; // r0
  size_t __n; // [sp+4h] [bp-4h] BYREF

  if ( a2 > 0x30C30C3 )
  {
    puts("out of memory\n");
    exit(1);
  }
  if ( !a2 )
    return nullptr;
  __n = 84 * a2;
  if ( 84 * a2 > 0x80 )
    result = CustomAlloc(84 * a2);
  else
    result = __ZNSt12__node_alloc11_M_allocateERj_veneer(&__n);
  *a3 = __n / 0x54;
  return result;
}


// ===== 48c89c std::allocator<char const*>::_M_allocate(uint,uint &) =====
void *__fastcall std::allocator<char const*>::_M_allocate(int a1, unsigned int a2, size_t *a3)
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


// ===== 48c90c std::vector<char const*,std::allocator<char const*>>::_M_range_initialize<char const**>(char const**,char const**,std::forward_iterator_tag const&) =====
char *__fastcall std::vector<char const*>::_M_range_initialize<char const**>(_DWORD *a1, _BYTE *a2, _BYTE *a3)
{
  size_t v3; // r6
  char *result; // r0
  char *v8; // r3
  char *v9; // r2
  size_t v10; // [sp+4h] [bp-8h] BYREF

  v3 = a3 - a2;
  v10 = (a3 - a2) >> 2;
  result = (char *)std::allocator<char const*>::_M_allocate((int)(a1 + 2), v10, &v10);
  v8 = result;
  v9 = &result[4 * v10];
  *a1 = result;
  a1[2] = v9;
  if ( a2 != a3 )
  {
    result = (char *)memcpy(result, a2, v3);
    v8 = &result[v3];
  }
  a1[1] = v8;
  return result;
}


// ===== 48c970 std::allocator<rnd::ListElem>::_M_allocate(uint,uint &) =====
void *__fastcall std::allocator<rnd::ListElem>::_M_allocate(int a1, unsigned int a2, size_t *a3)
{
  void *result; // r0
  size_t __n; // [sp+4h] [bp-4h] BYREF

  if ( a2 > 0x3333333 )
  {
    puts("out of memory\n");
    exit(1);
  }
  if ( !a2 )
    return nullptr;
  __n = 80 * a2;
  if ( 80 * a2 > 0x80 )
    result = CustomAlloc(80 * a2);
  else
    result = __ZNSt12__node_alloc11_M_allocateERj_veneer(&__n);
  *a3 = __n / 0x50;
  return result;
}


// ===== 48c9f8 std::allocator<rnd::RPElem>::_M_allocate(uint,uint &) =====
void *__fastcall std::allocator<rnd::RPElem>::_M_allocate(int a1, unsigned int a2, size_t *a3)
{
  void *result; // r0
  size_t __n; // [sp+4h] [bp-4h] BYREF

  if ( a2 > 0xAAAAAAA )
  {
    puts("out of memory\n");
    exit(1);
  }
  if ( !a2 )
    return nullptr;
  __n = 24 * a2;
  if ( 24 * a2 > 0x80 )
    result = CustomAlloc(24 * a2);
  else
    result = __ZNSt12__node_alloc11_M_allocateERj_veneer(&__n);
  *a3 = __n / 0x18;
  return result;
}


// ===== 48ca80 std::vector<char const*,std::allocator<char const*>>::~vector() =====
int __fastcall std::vector<char const*>::~vector(int a1)
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


// ===== 48cac0 rnd::RoomPool::LoadFromXml(TiXmlNode *) =====
TiXmlNode *__fastcall rnd::RoomPool::LoadFromXml(rnd::RoomPool *this, TiXmlNode *a2)
{
  TiXmlElement *v4; // r0
  const char *v5; // r0
  TiXmlNode *result; // r0
  TiXmlNode *v7; // r5
  rnd::RoomPool **v8; // r12
  rnd::RoomPool **v9; // r7
  rnd::RoomPool *v10; // r1
  rnd::RoomPool *v11; // r2
  int v12; // r3
  int *v13; // r12
  int v14; // r1
  int v15; // r3
  unsigned int v16; // r2
  unsigned int v17; // r3
  _DWORD *v18; // r0
  int v19; // r3
  rnd::RoomPool **v20; // lr
  int v21; // r9
  unsigned int v22; // r7
  int v23; // r4
  _DWORD *v24; // r12
  int v25; // r1
  int v26; // r2
  int v27; // r3
  _DWORD *v28; // r12
  int v29; // r1
  rnd::RoomPool *v30; // r1
  rnd::RoomPool *v31; // r2
  int v32; // r3
  int v33; // r1
  char *v34; // r0
  char *v35; // r3
  _DWORD *v36; // r7
  size_t v37; // r1
  size_t v38; // r3
  size_t v39; // r3
  _DWORD *v40; // [sp+8h] [bp-3Ch]
  int v41; // [sp+Ch] [bp-38h]
  char *v42; // [sp+10h] [bp-34h]
  rnd::RoomPool *v43; // [sp+1Ch] [bp-28h]
  rnd::RoomPool *v44; // [sp+24h] [bp-20h] BYREF
  rnd::RoomPool *v45; // [sp+28h] [bp-1Ch]
  rnd::RoomPool *v46; // [sp+2Ch] [bp-18h]
  int v47; // [sp+30h] [bp-14h]
  int v48; // [sp+34h] [bp-10h]
  int v49; // [sp+38h] [bp-Ch]
  size_t v50[2]; // [sp+3Ch] [bp-8h] BYREF

  v4 = (TiXmlElement *)(*(int (__fastcall **)(TiXmlNode *))(*(_DWORD *)a2 + 44))(a2);
  if ( v4 )
  {
    v5 = (const char *)TiXmlElement::Attribute(v4, "size");
    *(_DWORD *)this = LC_API_ATOI_0(v5);
  }
  result = (TiXmlNode *)TiXmlNode::FirstChild(a2, "elem");
  v7 = result;
  if ( result )
  {
    v42 = (char *)this + 12;
    do
    {
      v44 = this;
      v45 = nullptr;
      LOBYTE(v46) = 0;
      v47 = -1;
      v48 = -1;
      v49 = -1;
      rnd::RPElem::LoadFromXml((rnd::RPElem *)&v44, v7);
      v8 = *((rnd::RoomPool ***)this + 2);
      v9 = *((rnd::RoomPool ***)this + 3);
      if ( v8 == v9 )
      {
        v15 = ((int)v9 - *((_DWORD *)this + 1)) >> 3;
        v16 = -1431655765 * v15;
        if ( -1431655765 * v15 )
          v17 = 1431655766 * v15;
        else
          v17 = 1;
        if ( v17 > 0xAAAAAAA || v16 > v17 )
          v17 = 178956970;
        v50[0] = v17;
        v18 = std::allocator<rnd::RPElem>::_M_allocate((int)v42, v17, v50);
        v40 = v18;
        v19 = *((_DWORD *)this + 1);
        v41 = -1431655765 * (((int)v9 - v19) >> 3);
        if ( v41 > 0 )
        {
          v21 = -1431655765 * (((int)v9 - v19) >> 3);
          v43 = this;
          v22 = 0;
          v23 = *((_DWORD *)this + 1);
          do
          {
            v24 = &v18[v22 / 4];
            v25 = *(_DWORD *)(v23 + v22 + 4);
            v26 = *(_DWORD *)(v23 + v22 + 8);
            v27 = *(_DWORD *)(v23 + v22 + 12);
            *v24 = *(_DWORD *)(v23 + v22);
            v24[1] = v25;
            v24[2] = v26;
            v24[3] = v27;
            v28 = &v18[v22 / 4 + 4];
            v29 = *(_DWORD *)(v23 + v22 + 20);
            --v21;
            *v28 = *(_DWORD *)(v23 + v22 + 16);
            v28[1] = v29;
            v22 += 24;
          }
          while ( v21 );
          this = v43;
          v20 = (rnd::RoomPool **)&v18[6 * v41];
        }
        else
        {
          v20 = (rnd::RoomPool **)v18;
        }
        v30 = v45;
        v31 = v46;
        v32 = v47;
        *v20 = v44;
        v20[1] = v30;
        v20[2] = v31;
        v20[3] = (rnd::RoomPool *)v32;
        v33 = v49;
        v20[4] = (rnd::RoomPool *)v48;
        v20[5] = (rnd::RoomPool *)v33;
        v34 = *((char **)this + 1);
        v35 = *((char **)this + 2);
        v36 = v20 + 6;
        if ( v35 != v34 )
          v35 += -24 * ((178956971 * ((unsigned int)(v35 - 24 - v34) >> 3)) & 0x1FFFFFFF) - 24;
        if ( v35 )
        {
          v37 = 8 * ((*((_DWORD *)this + 3) - (int)v35) >> 3);
          if ( v37 > 0x80 )
          {
            CustomFree(v34);
            v39 = v50[0];
            *((_DWORD *)this + 2) = v36;
            *((_DWORD *)this + 1) = v40;
            *((_DWORD *)this + 3) = &v40[6 * v39];
            goto LABEL_7;
          }
          __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v34, v37);
        }
        v38 = v50[0];
        *((_DWORD *)this + 2) = v36;
        *((_DWORD *)this + 1) = v40;
        *((_DWORD *)this + 3) = &v40[6 * v38];
      }
      else
      {
        v10 = v45;
        v11 = v46;
        v12 = v47;
        *v8 = v44;
        v8[1] = v10;
        v8[2] = v11;
        v8[3] = (rnd::RoomPool *)v12;
        v13 = (int *)(v8 + 4);
        v14 = v49;
        *v13 = v48;
        v13[1] = v14;
        *((_DWORD *)this + 2) += 24;
      }
LABEL_7:
      result = (TiXmlNode *)TiXmlNode::NextSibling(v7, "elem");
      v7 = result;
    }
    while ( result );
  }
  return result;
}


// ===== 48cd84 std::vector<char const*,std::allocator<char const*>>::_M_insert_overflow(char const**,char const* const&,std::__true_type const&,uint,bool) [clone] =====
void __fastcall std::vector<char const*>::_M_insert_overflow(int a1, int a2, _DWORD *a3)
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
  v8 = (char *)std::allocator<char const*>::_M_allocate(a1 + 8, v6, &v16);
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


// ===== 48ce48 rnd::RootRule::Impl::Impl(rnd::RootRule const&) =====
rnd::RootRule::Impl *__fastcall rnd::RootRule::Impl::Impl(rnd::RootRule::Impl *this, const rnd::RootRule *a2)
{
  int v4; // r3
  int v5; // r5
  _DWORD *v6; // r1
  _DWORD *v7; // r2
  int v8; // r3
  int v10; // [sp+4h] [bp-8h] BYREF

  rnd::Rule::Impl::Impl(this, a2, nullptr);
  *((_DWORD *)this + 11) = 0;
  *((_DWORD *)this + 17) = a2;
  *(_DWORD *)this = off_969C58;
  v4 = *((_DWORD *)a2 + 29);
  v5 = *((_DWORD *)a2 + 28);
  if ( v4 != v5 )
  {
    do
    {
      while ( 1 )
      {
        v6 = *((_DWORD **)this + 13);
        v7 = *((_DWORD **)this + 14);
        v8 = *(_DWORD *)(v5 + 20);
        v10 = v8;
        if ( v6 == v7 )
          break;
        *v6 = v8;
        v5 += 24;
        *((_DWORD *)this + 13) += 4;
        if ( v5 == *(_DWORD *)(*((_DWORD *)this + 17) + 116) )
          return this;
      }
      std::vector<char const*>::_M_insert_overflow((int)this + 48, (int)v6, &v10);
      v5 += 24;
    }
    while ( v5 != *(_DWORD *)(*((_DWORD *)this + 17) + 116) );
  }
  return this;
}


// ===== 48cf10 rnd::ForceBlock::Impl::Impl(rnd::ForceBlock const&,rnd::Rule::Impl *) =====
rnd::Rule::Impl *__fastcall rnd::ForceBlock::Impl::Impl(rnd::Rule::Impl *a1, const rnd::Rule *a2, rnd::Rule::Impl *a3)
{
  int v5; // r5
  _DWORD *v6; // r1
  _DWORD *v7; // r2
  int v8; // r3
  int v10; // [sp+4h] [bp-8h] BYREF

  rnd::Rule::Impl::Impl(a1, a2, a3);
  *((_DWORD *)a1 + 17) = a2;
  *(_DWORD *)a1 = off_969BD8;
  v5 = *((_DWORD *)a2 + 28);
  if ( *((_DWORD *)a2 + 29) != v5 )
  {
    do
    {
      while ( 1 )
      {
        v6 = *((_DWORD **)a1 + 13);
        v7 = *((_DWORD **)a1 + 14);
        v8 = *(_DWORD *)(v5 + 20);
        v10 = v8;
        if ( v6 == v7 )
          break;
        *v6 = v8;
        v5 += 24;
        *((_DWORD *)a1 + 13) += 4;
        if ( v5 == *(_DWORD *)(*((_DWORD *)a1 + 17) + 116) )
          return a1;
      }
      std::vector<char const*>::_M_insert_overflow((int)a1 + 48, (int)v6, &v10);
      v5 += 24;
    }
    while ( v5 != *(_DWORD *)(*((_DWORD *)a1 + 17) + 116) );
  }
  return a1;
}


// ===== 48cfcc rnd::ForceBlock::NewImpl(rnd::Rule::Impl *) =====
rnd::Rule::Impl *__fastcall rnd::ForceBlock::NewImpl(rnd::ForceBlock *this, rnd::Rule::Impl *a2)
{
  rnd::Rule::Impl *v4; // r4

  v4 = (rnd::Rule::Impl *)CustomAlloc(0x48u);
  rnd::ForceBlock::Impl::Impl(v4, this, a2);
  return v4;
}


// ===== 48cff8 rnd::ForceBlock::Impl::Impl(rnd::ForceBlock const&,rnd::Rule::Impl *) =====
rnd::ForceBlock::Impl *__fastcall rnd::ForceBlock::Impl::Impl(
        rnd::ForceBlock::Impl *this,
        const rnd::ForceBlock *a2,
        rnd::Rule::Impl *a3)
{
  int v5; // r5
  _DWORD *v6; // r1
  _DWORD *v7; // r2
  int v8; // r3
  int v10; // [sp+4h] [bp-8h] BYREF

  rnd::Rule::Impl::Impl(this, a2, a3);
  *((_DWORD *)this + 17) = a2;
  *(_DWORD *)this = off_969BD8;
  v5 = *((_DWORD *)a2 + 28);
  if ( *((_DWORD *)a2 + 29) != v5 )
  {
    do
    {
      while ( 1 )
      {
        v6 = *((_DWORD **)this + 13);
        v7 = *((_DWORD **)this + 14);
        v8 = *(_DWORD *)(v5 + 20);
        v10 = v8;
        if ( v6 == v7 )
          break;
        *v6 = v8;
        v5 += 24;
        *((_DWORD *)this + 13) += 4;
        if ( v5 == *(_DWORD *)(*((_DWORD *)this + 17) + 116) )
          return this;
      }
      std::vector<char const*>::_M_insert_overflow((int)this + 48, (int)v6, &v10);
      v5 += 24;
    }
    while ( v5 != *(_DWORD *)(*((_DWORD *)this + 17) + 116) );
  }
  return this;
}


// ===== 48d0b4 rnd::RootRule::Impl::Impl(rnd::RootRule const&) =====
rnd::RootRule::Impl *__fastcall rnd::RootRule::Impl::Impl(rnd::RootRule::Impl *this, const rnd::RootRule *a2)
{
  int v4; // r3
  int v5; // r5
  _DWORD *v6; // r1
  _DWORD *v7; // r2
  int v8; // r3
  int v10; // [sp+4h] [bp-8h] BYREF

  rnd::Rule::Impl::Impl(this, a2, nullptr);
  *((_DWORD *)this + 11) = 0;
  *((_DWORD *)this + 17) = a2;
  *(_DWORD *)this = off_969C58;
  v4 = *((_DWORD *)a2 + 29);
  v5 = *((_DWORD *)a2 + 28);
  if ( v4 != v5 )
  {
    do
    {
      while ( 1 )
      {
        v6 = *((_DWORD **)this + 13);
        v7 = *((_DWORD **)this + 14);
        v8 = *(_DWORD *)(v5 + 20);
        v10 = v8;
        if ( v6 == v7 )
          break;
        *v6 = v8;
        v5 += 24;
        *((_DWORD *)this + 13) += 4;
        if ( v5 == *(_DWORD *)(*((_DWORD *)this + 17) + 116) )
          return this;
      }
      std::vector<char const*>::_M_insert_overflow((int)this + 48, (int)v6, &v10);
      v5 += 24;
    }
    while ( v5 != *(_DWORD *)(*((_DWORD *)this + 17) + 116) );
  }
  return this;
}


// ===== 48d17c rnd::RootRule::NewImpl(rnd::Rule::Impl *) =====
rnd::RootRule::Impl *__fastcall rnd::RootRule::NewImpl(rnd::RootRule *this, rnd::Rule::Impl *a2)
{
  rnd::RootRule::Impl *v3; // r4

  v3 = (rnd::RootRule::Impl *)CustomAlloc(0x48u);
  rnd::RootRule::Impl::Impl(v3, this);
  return v3;
}


// ===== 48d1a0 rnd::Rule::Impl::~Impl() =====
void __fastcall rnd::Rule::Impl::~Impl(rnd::Rule::Impl *this)
{
  int v1; // r12
  int v3; // r0
  int v4; // r3
  int v5; // r2
  int v6; // r2
  int v8; // r3
  void *v9; // r0
  size_t v10; // r1

  v1 = *((_DWORD *)this + 2);
  *(_DWORD *)this = off_969C98;
  if ( v1 )
  {
    v3 = *(_DWORD *)(v1 + 12);
    if ( v3 > 0 )
    {
      if ( this == *(rnd::Rule::Impl **)(v1 + 16) )
      {
        v4 = 0;
LABEL_16:
        *(_DWORD *)(v1 + 12) = v3 - 1;
        *(_DWORD *)(v1 + 4 * (v4 + 4)) = *(_DWORD *)(v1 + 4 * (v3 + 3));
      }
      else
      {
        v5 = v1;
        v4 = 0;
        while ( 1 )
        {
          ++v4;
          v5 += 4;
          if ( v4 == v3 )
            break;
          if ( this == *(rnd::Rule::Impl **)(v5 + 16) )
            goto LABEL_16;
        }
      }
    }
  }
LABEL_8:
  v6 = *((_DWORD *)this + 3);
  while ( v6-- > 0 )
  {
    *((_DWORD *)this + 3) = v6;
    v8 = *((_DWORD *)this + v6 + 4);
    if ( v8 )
    {
      (*(void (__fastcall **)(_DWORD))(*(_DWORD *)v8 + 4))(*((_DWORD *)this + v6 + 4));
      goto LABEL_8;
    }
  }
  v9 = *((void **)this + 12);
  if ( v9 )
  {
    v10 = (*((_DWORD *)this + 14) - (_DWORD)v9) & 0xFFFFFFFC;
    if ( v10 > 0x80 )
      CustomFree(v9);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v9, v10);
  }
}


// ===== 48d2a8 rnd::Rule::Impl::~Impl() =====
void __fastcall rnd::Rule::Impl::~Impl(rnd::Rule::Impl *this)
{
  rnd::Rule::Impl::~Impl(this);
  CustomFree(this);
}


// ===== 48d2c4 rnd::Rule::Impl::~Impl() =====
void __fastcall rnd::Rule::Impl::~Impl(rnd::Rule::Impl *this)
{
  int v1; // r12
  int v3; // r0
  int v4; // r3
  int v5; // r2
  int v6; // r2
  int v8; // r3
  void *v9; // r0
  size_t v10; // r1

  v1 = *((_DWORD *)this + 2);
  *(_DWORD *)this = off_969C98;
  if ( v1 )
  {
    v3 = *(_DWORD *)(v1 + 12);
    if ( v3 > 0 )
    {
      if ( this == *(rnd::Rule::Impl **)(v1 + 16) )
      {
        v4 = 0;
LABEL_16:
        *(_DWORD *)(v1 + 12) = v3 - 1;
        *(_DWORD *)(v1 + 4 * (v4 + 4)) = *(_DWORD *)(v1 + 4 * (v3 + 3));
      }
      else
      {
        v5 = v1;
        v4 = 0;
        while ( 1 )
        {
          ++v4;
          v5 += 4;
          if ( v4 == v3 )
            break;
          if ( this == *(rnd::Rule::Impl **)(v5 + 16) )
            goto LABEL_16;
        }
      }
    }
  }
LABEL_8:
  v6 = *((_DWORD *)this + 3);
  while ( v6-- > 0 )
  {
    *((_DWORD *)this + 3) = v6;
    v8 = *((_DWORD *)this + v6 + 4);
    if ( v8 )
    {
      (*(void (__fastcall **)(_DWORD))(*(_DWORD *)v8 + 4))(*((_DWORD *)this + v6 + 4));
      goto LABEL_8;
    }
  }
  v9 = *((void **)this + 12);
  if ( v9 )
  {
    v10 = (*((_DWORD *)this + 14) - (_DWORD)v9) & 0xFFFFFFFC;
    if ( v10 > 0x80 )
      CustomFree(v9);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v9, v10);
  }
}


// ===== 48d3cc rnd::RootRule::Impl::~Impl() =====
void __fastcall rnd::RootRule::Impl::~Impl(rnd::RootRule::Impl *this)
{
  *(_DWORD *)this = off_969C58;
  rnd::Rule::Impl::~Impl(this);
}


// ===== 48d400 rnd::Path::Impl::~Impl() =====
void __fastcall rnd::Path::Impl::~Impl(rnd::Path::Impl *this)
{
  *(_DWORD *)this = off_969C18;
  rnd::Rule::Impl::~Impl(this);
}


// ===== 48d434 rnd::ForceBlock::Impl::~Impl() =====
void __fastcall rnd::ForceBlock::Impl::~Impl(rnd::ForceBlock::Impl *this)
{
  *(_DWORD *)this = off_969BD8;
  rnd::Rule::Impl::~Impl(this);
}


// ===== 48d468 rnd::EndPath::Impl::~Impl() =====
void __fastcall rnd::EndPath::Impl::~Impl(rnd::EndPath::Impl *this)
{
  *(_DWORD *)this = off_969B98;
  rnd::Rule::Impl::~Impl(this);
}


// ===== 48d49c rnd::Path::Impl::~Impl() =====
void __fastcall rnd::Path::Impl::~Impl(rnd::Path::Impl *this)
{
  *(_DWORD *)this = off_969C18;
  rnd::Rule::Impl::~Impl(this);
  CustomFree(this);
}


// ===== 48d4d8 rnd::RootRule::Impl::~Impl() =====
void __fastcall rnd::RootRule::Impl::~Impl(rnd::RootRule::Impl *this)
{
  *(_DWORD *)this = off_969C58;
  rnd::Rule::Impl::~Impl(this);
  CustomFree(this);
}


// ===== 48d514 rnd::EndPath::Impl::~Impl() =====
void __fastcall rnd::EndPath::Impl::~Impl(rnd::EndPath::Impl *this)
{
  *(_DWORD *)this = off_969B98;
  rnd::Rule::Impl::~Impl(this);
  CustomFree(this);
}


// ===== 48d550 rnd::ForceBlock::Impl::~Impl() =====
void __fastcall rnd::ForceBlock::Impl::~Impl(rnd::ForceBlock::Impl *this)
{
  *(_DWORD *)this = off_969BD8;
  rnd::Rule::Impl::~Impl(this);
  CustomFree(this);
}


// ===== 48d58c rnd::Rule::~Rule() =====
void __fastcall rnd::Rule::~Rule(rnd::Rule *this)
{
  std::priv::_String_base<char,std::allocator<char> > **v2; // r5
  char *v3; // r0
  size_t v4; // r1

  *(_DWORD *)this = off_969C78;
  v2 = (std::priv::_String_base<char,std::allocator<char> > **)((char *)this + 112);
  rnd::Rule::Unload((int)this);
  std::vector<std::string>::~vector(v2);
  v3 = *((char **)this + 25);
  if ( v3 != (char *)this + 80 && v3 )
  {
    v4 = *((_DWORD *)this + 20) - (_DWORD)v3;
    if ( v4 > 0x80 )
      CustomFree(v3);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v3, v4);
  }
}


// ===== 48d604 rnd::Path::~Path() =====
void __fastcall rnd::Path::~Path(rnd::Path *this)
{
  *(_DWORD *)this = off_969BF8;
  rnd::Rule::~Rule(this);
}


// ===== 48d638 rnd::ForceBlock::~ForceBlock() =====
void __fastcall rnd::ForceBlock::~ForceBlock(rnd::ForceBlock *this)
{
  *(_DWORD *)this = off_969BB8;
  rnd::Rule::~Rule(this);
}


// ===== 48d66c rnd::EndPath::~EndPath() =====
void __fastcall rnd::EndPath::~EndPath(rnd::EndPath *this)
{
  *(_DWORD *)this = off_969B78;
  rnd::Rule::~Rule(this);
}


// ===== 48d6a0 rnd::RootRule::~RootRule() =====
void __fastcall rnd::RootRule::~RootRule(rnd::RootRule *this)
{
  *(_DWORD *)this = off_969C38;
  rnd::RootRule::Unload(this);
  rnd::Rule::~Rule(this);
}


// ===== 48d6dc rnd::RootRule::~RootRule() =====
void __fastcall rnd::RootRule::~RootRule(rnd::RootRule *this)
{
  rnd::RootRule::~RootRule(this);
  CustomFree(this);
}


// ===== 48d6f8 rnd::RootRule::~RootRule() =====
void __fastcall rnd::RootRule::~RootRule(rnd::RootRule *this)
{
  *(_DWORD *)this = off_969C38;
  rnd::RootRule::Unload(this);
  rnd::Rule::~Rule(this);
}


// ===== 48d734 rnd::ForceBlock::~ForceBlock() =====
void __fastcall rnd::ForceBlock::~ForceBlock(rnd::ForceBlock *this)
{
  *(_DWORD *)this = off_969BB8;
  rnd::Rule::~Rule(this);
  CustomFree(this);
}


// ===== 48d770 rnd::Path::~Path() =====
void __fastcall rnd::Path::~Path(rnd::Path *this)
{
  *(_DWORD *)this = off_969BF8;
  rnd::Rule::~Rule(this);
  CustomFree(this);
}


// ===== 48d7ac rnd::EndPath::~EndPath() =====
void __fastcall rnd::EndPath::~EndPath(rnd::EndPath *this)
{
  *(_DWORD *)this = off_969B78;
  rnd::Rule::~Rule(this);
  CustomFree(this);
}


// ===== 48d7e8 rnd::Rule::~Rule() =====
void __fastcall rnd::Rule::~Rule(rnd::Rule *this)
{
  std::priv::_String_base<char,std::allocator<char> > **v2; // r5
  char *v3; // r0
  size_t v4; // r1

  *(_DWORD *)this = off_969C78;
  v2 = (std::priv::_String_base<char,std::allocator<char> > **)((char *)this + 112);
  rnd::Rule::Unload((int)this);
  std::vector<std::string>::~vector(v2);
  v3 = *((char **)this + 25);
  if ( v3 != (char *)this + 80 && v3 )
  {
    v4 = *((_DWORD *)this + 20) - (_DWORD)v3;
    if ( v4 > 0x80 )
      CustomFree(v3);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v3, v4);
  }
}


// ===== 48d860 rnd::Rule::~Rule() =====
void __fastcall rnd::Rule::~Rule(rnd::Rule *this)
{
  rnd::Rule::~Rule(this);
  CustomFree(this);
}


// ===== 48d87c std::vector<std::pair<rnd::Exit const*,rnd::ListElem>,std::allocator<std::pair<rnd::Exit const*,rnd::ListElem>>>::_M_clear_after_move(void) =====
void __fastcall std::vector<std::pair<rnd::Exit const*,rnd::ListElem>>::_M_clear_after_move(int *a1)
{
  int v1; // r4
  int v2; // r5
  size_t v4; // r1

  v1 = a1[1];
  v2 = *a1;
  if ( v1 != *a1 )
  {
    do
    {
      v1 -= 84;
      rnd::ListElem::~ListElem((rnd::ListElem *)(v1 + 4));
    }
    while ( v2 != v1 );
    v1 = *a1;
  }
  if ( v1 )
  {
    v4 = 4 * ((a1[2] - v1) >> 2);
    if ( v4 > 0x80 )
      CustomFree((void *)v1);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer((void *)v1, v4);
  }
}


// ===== 48d8f8 std::vector<std::pair<rnd::Exit const*,rnd::ListElem>,std::allocator<std::pair<rnd::Exit const*,rnd::ListElem>>>::~vector() =====
void **__fastcall std::vector<std::pair<rnd::Exit const*,rnd::ListElem>>::~vector(void **a1)
{
  char *v1; // r5
  char *v2; // r6
  _BYTE *v4; // r0
  size_t v5; // r1

  v1 = (char *)a1[1];
  v2 = (char *)*a1;
  if ( v1 != *a1 )
  {
    do
    {
      v1 -= 84;
      rnd::ListElem::~ListElem((rnd::ListElem *)(v1 + 4));
    }
    while ( v2 != v1 );
  }
  v4 = *a1;
  if ( !*a1 )
    return a1;
  v5 = 4 * (((_BYTE *)a1[2] - v4) >> 2);
  if ( v5 <= 0x80 )
  {
    __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v4, v5);
    return a1;
  }
  CustomFree(v4);
  return a1;
}


// ===== 48d970 std::vector<std::pair<rnd::Exit const*,rnd::ListElem>,std::allocator<std::pair<rnd::Exit const*,rnd::ListElem>>>::_M_clear(void) =====
void __fastcall std::vector<std::pair<rnd::Exit const*,rnd::ListElem>>::_M_clear(int *a1)
{
  int v1; // r4
  int v2; // r5
  size_t v4; // r1

  v1 = a1[1];
  v2 = *a1;
  if ( v1 != *a1 )
  {
    do
    {
      v1 -= 84;
      rnd::ListElem::~ListElem((rnd::ListElem *)(v1 + 4));
    }
    while ( v2 != v1 );
    v1 = *a1;
  }
  if ( v1 )
  {
    v4 = 4 * ((a1[2] - v1) >> 2);
    if ( v4 > 0x80 )
      CustomFree((void *)v1);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer((void *)v1, v4);
  }
}


// ===== 48d9ec std::vector<rnd::ListElem,std::allocator<rnd::ListElem>>::_M_clear_after_move(void) =====
void __fastcall std::vector<rnd::ListElem>::_M_clear_after_move(rnd::ListElem **a1)
{
  rnd::ListElem *v1; // r4
  rnd::ListElem *v2; // r5

  v1 = a1[1];
  v2 = *a1;
  if ( v1 != *a1 )
  {
    do
    {
      v1 = (rnd::ListElem *)((char *)v1 - 80);
      rnd::ListElem::~ListElem(v1);
    }
    while ( v2 != v1 );
    v1 = *a1;
  }
  if ( v1 )
  {
    if ( (unsigned int)(16 * ((a1[2] - v1) >> 4)) > 0x80 )
      CustomFree(v1);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v1, 16 * ((a1[2] - v1) >> 4));
  }
}


// ===== 48da70 std::vector<std::pair<rnd::Exit const*,rnd::ListElem>,std::allocator<std::pair<rnd::Exit const*,rnd::ListElem>>>::_M_erase(std::pair<rnd::Exit const*,rnd::ListElem>*,std::__false_type const&) =====
_DWORD *__fastcall std::vector<std::pair<rnd::Exit const*,rnd::ListElem>>::_M_erase(int a1, _DWORD *a2)
{
  _DWORD *v3; // r0
  int v5; // r4
  _DWORD *v6; // r5

  v3 = *(_DWORD **)(a1 + 4);
  if ( a2 + 21 != v3 )
  {
    v5 = 1022611261 * (v3 - (a2 + 21));
    if ( v5 > 0 )
    {
      v6 = a2;
      do
      {
        *v6 = v6[21];
        rnd::ListElem::operator=((int)(v6 + 1), (int)(v6 + 22));
        --v5;
        v6 += 21;
      }
      while ( v5 );
      v3 = *(_DWORD **)(a1 + 4);
    }
  }
  *(_DWORD *)(a1 + 4) = v3 - 21;
  rnd::ListElem::~ListElem((rnd::ListElem *)(v3 - 20));
  return a2;
}


// ===== 48dae8 std::vector<rnd::ListElem,std::allocator<rnd::ListElem>>::_M_erase(rnd::ListElem*,std::__false_type const&) =====
int __fastcall std::vector<rnd::ListElem>::_M_erase(int a1, int a2)
{
  int v3; // r0
  int v5; // r4
  int v6; // r0
  int v7; // r5
  rnd::ListElem *v8; // r0

  v3 = *(_DWORD *)(a1 + 4);
  if ( a2 + 80 != v3 )
  {
    v5 = -858993459 * ((v3 - (a2 + 80)) >> 4);
    if ( v5 > 0 )
    {
      v6 = a2;
      do
      {
        v7 = v6 + 80;
        rnd::ListElem::operator=(v6, v6 + 80);
        --v5;
        v6 = v7;
      }
      while ( v5 );
      v3 = *(_DWORD *)(a1 + 4);
    }
  }
  v8 = (rnd::ListElem *)(v3 - 80);
  *(_DWORD *)(a1 + 4) = v8;
  rnd::ListElem::~ListElem(v8);
  return a2;
}


// ===== 48db5c rnd::BlockSearch::~BlockSearch() =====
void __fastcall rnd::BlockSearch::~BlockSearch(rnd::BlockSearch *this)
{
  char *v1; // r3
  char *v3; // r0
  size_t v4; // r1
  char *v5; // r0
  size_t v6; // r1
  rnd::BlockSearch *v7; // r0
  size_t v8; // r1

  v1 = (char *)this + 48;
  v3 = *((char **)this + 17);
  if ( v3 != v1 && v3 )
  {
    v4 = *((_DWORD *)this + 12) - (_DWORD)v3;
    if ( v4 > 0x80 )
      CustomFree(v3);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v3, v4);
  }
  v5 = *((char **)this + 11);
  if ( v5 != (char *)this + 24 && v5 )
  {
    v6 = *((_DWORD *)this + 6) - (_DWORD)v5;
    if ( v6 > 0x80 )
      CustomFree(v5);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v5, v6);
  }
  v7 = *((rnd::BlockSearch **)this + 5);
  if ( v7 != this && v7 )
  {
    v8 = *(_DWORD *)this - (_DWORD)v7;
    if ( v8 > 0x80 )
      CustomFree(v7);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v7, v8);
  }
}


// ===== 48dc08 rnd::Rule::Rule(rnd::RootRule &,rnd::Rule*) =====
rnd::Rule *__fastcall rnd::Rule::Rule(rnd::Rule *this, rnd::RootRule *a2, rnd::Rule *a3)
{
  _DWORD *v4; // r0

  *((_DWORD *)this + 1) = a2;
  *(_DWORD *)this = off_969C78;
  *((_DWORD *)this + 2) = a3;
  v4 = (_DWORD *)((char *)this + 80);
  *((_DWORD *)this + 3) = 0;
  *((_DWORD *)this + 24) = v4;
  *((_DWORD *)this + 25) = v4;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block(v4, 0x10u);
  **((_BYTE **)this + 24) = 0;
  *((_DWORD *)this + 27) = -1;
  *((_DWORD *)this + 31) = 0;
  *((_DWORD *)this + 33) = 1;
  *((_DWORD *)this + 26) = 0;
  *((_DWORD *)this + 28) = 0;
  *((_DWORD *)this + 29) = 0;
  *((_DWORD *)this + 30) = 0;
  *((_DWORD *)this + 32) = 1;
  return this;
}


// ===== 48dc90 rnd::Rule::Rule(rnd::RootRule &,rnd::Rule*) =====
rnd::Rule *__fastcall rnd::Rule::Rule(rnd::Rule *this, rnd::RootRule *a2, rnd::Rule *a3)
{
  _DWORD *v4; // r0

  *((_DWORD *)this + 1) = a2;
  *(_DWORD *)this = off_969C78;
  *((_DWORD *)this + 2) = a3;
  v4 = (_DWORD *)((char *)this + 80);
  *((_DWORD *)this + 3) = 0;
  *((_DWORD *)this + 24) = v4;
  *((_DWORD *)this + 25) = v4;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block(v4, 0x10u);
  **((_BYTE **)this + 24) = 0;
  *((_DWORD *)this + 27) = -1;
  *((_DWORD *)this + 31) = 0;
  *((_DWORD *)this + 33) = 1;
  *((_DWORD *)this + 26) = 0;
  *((_DWORD *)this + 28) = 0;
  *((_DWORD *)this + 29) = 0;
  *((_DWORD *)this + 30) = 0;
  *((_DWORD *)this + 32) = 1;
  return this;
}


// ===== 48dd18 rnd::EndPath::EndPath(rnd::RootRule &,rnd::Rule *) =====
rnd::EndPath *__fastcall rnd::EndPath::EndPath(rnd::EndPath *this, rnd::RootRule *a2, rnd::Rule *a3)
{
  rnd::Rule::Rule(this, a2, a3);
  *(_DWORD *)this = off_969B78;
  return this;
}


// ===== 48dd4c rnd::EndPath::EndPath(rnd::RootRule &,rnd::Rule *) =====
rnd::EndPath *__fastcall rnd::EndPath::EndPath(rnd::EndPath *this, rnd::RootRule *a2, rnd::Rule *a3)
{
  rnd::Rule::Rule(this, a2, a3);
  *(_DWORD *)this = off_969B78;
  return this;
}


// ===== 48dd80 rnd::ForceBlock::ForceBlock(rnd::RootRule &,rnd::Rule *) =====
rnd::ForceBlock *__fastcall rnd::ForceBlock::ForceBlock(rnd::ForceBlock *this, rnd::RootRule *a2, rnd::Rule *a3)
{
  rnd::Rule::Rule(this, a2, a3);
  *((_DWORD *)this + 34) = 4;
  *(_DWORD *)this = off_969BB8;
  return this;
}


// ===== 48ddbc rnd::ForceBlock::ForceBlock(rnd::RootRule &,rnd::Rule *) =====
rnd::ForceBlock *__fastcall rnd::ForceBlock::ForceBlock(rnd::ForceBlock *this, rnd::RootRule *a2, rnd::Rule *a3)
{
  rnd::Rule::Rule(this, a2, a3);
  *((_DWORD *)this + 34) = 4;
  *(_DWORD *)this = off_969BB8;
  return this;
}


// ===== 48ddf8 rnd::Path::Path(rnd::RootRule &,rnd::Rule *) =====
rnd::Path *__fastcall rnd::Path::Path(rnd::Path *this, rnd::RootRule *a2, rnd::Rule *a3)
{
  rnd::Rule::Rule(this, a2, a3);
  *(_DWORD *)this = off_969BF8;
  *((_BYTE *)this + 140) = 1;
  *((_BYTE *)this + 141) = 0;
  *((_DWORD *)this + 34) = 4;
  return this;
}


// ===== 48de44 rnd::Rule::NewRule(TiXmlNode *) =====
int __fastcall rnd::Rule::NewRule(rnd::RootRule **a1, int a2)
{
  const char *v2; // r6
  int result; // r0
  rnd::ForceBlock *v5; // r4
  rnd::Path *v6; // r4
  rnd::EndPath *v7; // r4

  v2 = *(const char **)(a2 + 52);
  result = LC_API_STRCASECMP_0(v2, "rootrule");
  if ( result )
  {
    if ( LC_API_STRCASECMP_0(v2, "path") )
    {
      if ( LC_API_STRCASECMP_0(v2, "forceblock") )
      {
        if ( LC_API_STRCASECMP_0(v2, "endpath") )
          return 0;
        v7 = (rnd::EndPath *)operator new(0x88u, 0);
        rnd::EndPath::EndPath(v7, a1[1], (rnd::Rule *)a1);
        return (int)v7;
      }
      else
      {
        v5 = (rnd::ForceBlock *)operator new(0x90u, 0);
        rnd::ForceBlock::ForceBlock(v5, a1[1], (rnd::Rule *)a1);
        return (int)v5;
      }
    }
    else
    {
      v6 = (rnd::Path *)operator new(0x90u, 0);
      rnd::Path::Path(v6, a1[1], (rnd::Rule *)a1);
      return (int)v6;
    }
  }
  else
  {
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
      "false",
      "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\random\\rndRule.cpp",
      393);
    return 0;
  }
}


// ===== 48dfac rnd::Path::Path(rnd::RootRule &,rnd::Rule *) =====
rnd::Path *__fastcall rnd::Path::Path(rnd::Path *this, rnd::RootRule *a2, rnd::Rule *a3)
{
  rnd::Rule::Rule(this, a2, a3);
  *(_DWORD *)this = off_969BF8;
  *((_BYTE *)this + 140) = 1;
  *((_BYTE *)this + 141) = 0;
  *((_DWORD *)this + 34) = 4;
  return this;
}


// ===== 48dff8 rnd::RootRule::RootRule(rnd::RandomGenerator &) =====
rnd::RootRule *__fastcall rnd::RootRule::RootRule(rnd::RootRule *this, rnd::RandomGenerator *a2)
{
  rnd::Rule::Rule(this, this, nullptr);
  *((_DWORD *)this + 35) = a2;
  *(_DWORD *)this = off_969C38;
  return this;
}


// ===== 48e03c rnd::RootRule::RootRule(rnd::RandomGenerator &) =====
rnd::RootRule *__fastcall rnd::RootRule::RootRule(rnd::RootRule *this, rnd::RandomGenerator *a2)
{
  rnd::Rule::Rule(this, this, nullptr);
  *((_DWORD *)this + 35) = a2;
  *(_DWORD *)this = off_969C38;
  return this;
}


// ===== 48e080 rnd::ListElem::ListElem(void) =====
rnd::ListElem *__fastcall rnd::ListElem::ListElem(rnd::ListElem *this)
{
  *(_DWORD *)this = 0;
  std::string::string((std::string *)((char *)this + 4), "");
  std::string::string((std::string *)((char *)this + 28), "");
  std::string::string((std::string *)((char *)this + 52), "");
  *((_DWORD *)this + 19) = 100;
  return this;
}


// ===== 48e0e0 rnd::BlockSearch::BlockSearch(char const*,char const*,char const*) =====
std::string *__fastcall rnd::BlockSearch::BlockSearch(std::string *this, char *a2, char *a3, char *a4)
{
  std::string::string(this, a2);
  std::string::string(this + 1, a3);
  std::string::string(this + 2, a4);
  return this;
}


// ===== 48e128 rnd::ListElem::ListElem(rnd::ListRule *) =====
int __fastcall rnd::ListElem::ListElem(int a1, int a2)
{
  *(_DWORD *)a1 = a2;
  std::string::string((std::string *)(a1 + 4), "");
  std::string::string((std::string *)(a1 + 28), "");
  std::string::string((std::string *)(a1 + 52), "");
  *(_DWORD *)(a1 + 76) = 100;
  return a1;
}


// ===== 48e184 rnd::RandomGenerator::GetBlock(char const*) =====
int __fastcall rnd::RandomGenerator::GetBlock(rnd::RandomGenerator *this, char *a2)
{
  char *M_data; // r2
  char *M_finish; // r0
  unsigned int v5; // r3
  char *v6; // r7
  int v7; // r0
  int v8; // r7
  char *v10; // [sp+4h] [bp-28h] BYREF
  std::string v11; // [sp+Ch] [bp-20h] BYREF

  std::string::string(&v11, a2);
  M_data = v11._M_start_of_storage._M_data;
  M_finish = v11._M_finish;
  if ( v11._M_start_of_storage._M_data != v11._M_finish )
  {
    do
    {
      v5 = *M_data;
      if ( v5 <= 0xFF )
        LOWORD(v5) = *(_WORD *)(tolower_tab_ + 2 * v5 + 2);
      *M_data++ = v5;
    }
    while ( M_data != M_finish );
    M_finish = v11._M_start_of_storage._M_data;
  }
  v6 = (char *)this + 60;
  v10 = M_finish;
  v7 = std::priv::_Rb_tree<char const*,lstr,std::pair<char const* const,rnd::Block *>,std::priv::_Select1st<std::pair<char const* const,rnd::Block *>>,std::priv::_MapTraitsT<std::pair<char const* const,rnd::Block *>>,std::allocator<std::pair<char const* const,rnd::Block *>>>::_M_find<char const*>(
         (int)v6,
         &v10);
  if ( (char *)v7 == v6 )
    v8 = 0;
  else
    v8 = *(_DWORD *)(v7 + 20);
  if ( (std::string *)v11._M_start_of_storage._M_data != &v11 && v11._M_start_of_storage._M_data )
  {
    if ( (unsigned int)(v11._M_buffers._M_end_of_storage - v11._M_start_of_storage._M_data) > 0x80 )
      CustomFree(v11._M_start_of_storage._M_data);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(
        v11._M_start_of_storage._M_data,
        v11._M_buffers._M_end_of_storage - v11._M_start_of_storage._M_data);
  }
  return v8;
}


// ===== 48e274 rnd::Rule::GetBlock(char const*) =====
int __fastcall rnd::Rule::GetBlock(rnd::Rule *this, char *a2)
{
  return rnd::RandomGenerator::GetBlock(*(rnd::RandomGenerator **)(*((_DWORD *)this + 1) + 140), a2);
}


// ===== 48e280 rnd::ListElem::ListElem(rnd::ListElem const&) =====
rnd::ListElem *__fastcall rnd::ListElem::ListElem(rnd::ListElem *this, const rnd::ListElem *a2)
{
  *(_DWORD *)this = *(_DWORD *)a2;
  std::string::string((std::string *)((char *)this + 4), (const std::string *)((char *)a2 + 4));
  std::string::string((std::string *)((char *)this + 28), (const std::string *)((char *)a2 + 28));
  std::string::string((std::string *)((char *)this + 52), (const std::string *)((char *)a2 + 52));
  *((_DWORD *)this + 19) = *((_DWORD *)a2 + 19);
  return this;
}


// ===== 48e2c0 std::vector<std::pair<rnd::Exit const*,rnd::ListElem>,std::allocator<std::pair<rnd::Exit const*,rnd::ListElem>>>::_M_allocate_and_copy<std::pair<rnd::Exit const*,rnd::ListElem>*>(uint &,std::pair<rnd::Exit const*,rnd::ListElem>*,std::pair<rnd::Exit const*,rnd::ListElem>*) =====
char *__fastcall std::vector<std::pair<rnd::Exit const*,rnd::ListElem>>::_M_allocate_and_copy<std::pair<rnd::Exit const*,rnd::ListElem>*>(
        int a1,
        unsigned int *a2,
        int a3,
        int a4)
{
  int v5; // r5
  char *v6; // r7
  int v7; // r6

  v5 = 1022611261 * ((a4 - a3) >> 2);
  v6 = (char *)std::allocator<std::pair<rnd::Exit const*,rnd::ListElem>>::_M_allocate(a1 + 8, *a2, a2);
  if ( v5 > 0 )
  {
    v7 = 0;
    do
    {
      *(_DWORD *)&v6[v7] = *(_DWORD *)(a3 + v7);
      rnd::ListElem::ListElem((rnd::ListElem *)&v6[v7 + 4], (const rnd::ListElem *)(a3 + v7 + 4));
      --v5;
      v7 += 84;
    }
    while ( v5 );
  }
  return v6;
}


// ===== 48e330 std::vector<std::pair<rnd::Exit const*,rnd::ListElem>,std::allocator<std::pair<rnd::Exit const*,rnd::ListElem>>>::reserve(uint) =====
void __fastcall std::vector<std::pair<rnd::Exit const*,rnd::ListElem>>::reserve(int *a1, unsigned int a2)
{
  int v3; // r2
  int v4; // r0
  int v5; // r3
  int v6; // r5
  char *v7; // r6
  char *v8; // r3
  unsigned int v9; // [sp+4h] [bp-4h] BYREF

  v3 = *a1;
  v4 = (a1[2] - *a1) >> 2;
  v9 = a2;
  if ( a2 > 1022611261 * v4 )
  {
    if ( a2 > 0x30C30C3 )
    {
      __ZSt24__stl_throw_length_errorPKc_veneer("vector");
      v3 = *a1;
    }
    v5 = a1[1];
    v6 = 1022611261 * ((v5 - v3) >> 2);
    if ( v3 )
    {
      v7 = std::vector<std::pair<rnd::Exit const*,rnd::ListElem>>::_M_allocate_and_copy<std::pair<rnd::Exit const*,rnd::ListElem>*>(
             (int)a1,
             &v9,
             v3,
             v5);
      std::vector<std::pair<rnd::Exit const*,rnd::ListElem>>::_M_clear(a1);
    }
    else
    {
      v7 = (char *)std::allocator<std::pair<rnd::Exit const*,rnd::ListElem>>::_M_allocate((int)(a1 + 2), v9, &v9);
    }
    v8 = &v7[84 * v9];
    a1[1] = (int)&v7[84 * v6];
    a1[2] = (int)v8;
    *a1 = (int)v7;
  }
}


// ===== 48e400 std::vector<std::pair<rnd::Exit const*,rnd::ListElem>,std::allocator<std::pair<rnd::Exit const*,rnd::ListElem>>>::vector(std::vector<std::pair<rnd::Exit const*,rnd::ListElem>,std::allocator<std::pair<rnd::Exit const*,rnd::ListElem>>> const&) =====
_DWORD *__fastcall std::vector<std::pair<rnd::Exit const*,rnd::ListElem>>::vector(_DWORD *a1, int *a2)
{
  unsigned int v3; // r1
  int v5; // r7
  char *v6; // r0
  size_t v7; // r3
  int v8; // r10
  char *v9; // r8
  int v10; // r5
  int v11; // r6
  size_t v13; // [sp+4h] [bp-8h] BYREF

  v3 = 1022611261 * ((a2[1] - *a2) >> 2);
  v5 = 0;
  v13 = v3;
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v6 = (char *)std::allocator<std::pair<rnd::Exit const*,rnd::ListElem>>::_M_allocate((int)(a1 + 2), v3, &v13);
  v7 = v13;
  *a1 = v6;
  a1[1] = v6;
  a1[2] = &v6[84 * v7];
  v8 = *a2;
  v9 = v6;
  v10 = 1022611261 * ((a2[1] - *a2) >> 2);
  if ( v10 > 0 )
  {
    v11 = 1022611261 * ((a2[1] - *a2) >> 2);
    do
    {
      *(_DWORD *)&v9[v5] = *(_DWORD *)(v8 + v5);
      rnd::ListElem::ListElem((rnd::ListElem *)&v9[v5 + 4], (const rnd::ListElem *)(v8 + v5 + 4));
      --v11;
      v5 += 84;
    }
    while ( v11 );
    v9 += 84 * v10;
  }
  a1[1] = v9;
  return a1;
}


// ===== 48e4c0 std::vector<rnd::ListElem,std::allocator<rnd::ListElem>>::vector(std::vector<rnd::ListElem,std::allocator<rnd::ListElem>> const&) =====
_DWORD *__fastcall std::vector<rnd::ListElem>::vector(_DWORD *a1, int *a2)
{
  int v4; // r3
  int v5; // r6
  char *v6; // r0
  size_t v7; // r3
  int v8; // r8
  char *v9; // r7
  int v10; // r3
  int v11; // r10
  int v12; // r5
  int v14; // [sp+4h] [bp-8h] BYREF

  v4 = (a2[1] - *a2) >> 4;
  v5 = 0;
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v14 = -858993459 * v4;
  v6 = (char *)std::allocator<rnd::ListElem>::_M_allocate((int)(a1 + 2), -858993459 * v4, (size_t *)&v14);
  v7 = v14;
  *a1 = v6;
  a1[1] = v6;
  a1[2] = &v6[80 * v7];
  v8 = *a2;
  v9 = v6;
  v10 = (a2[1] - *a2) >> 4;
  v11 = -858993459 * v10;
  if ( -858993459 * v10 > 0 )
  {
    v12 = -858993459 * v10;
    do
    {
      rnd::ListElem::ListElem((rnd::ListElem *)&v9[v5], (const rnd::ListElem *)(v8 + v5));
      --v12;
      v5 += 80;
    }
    while ( v12 );
    v9 += 80 * v11;
  }
  a1[1] = v9;
  return a1;
}


// ===== 48e588 std::swap<std::pair<rnd::Exit const*,rnd::ListElem>>(std::pair<rnd::Exit const*,rnd::ListElem> &,std::pair<rnd::Exit const*,rnd::ListElem> &) =====
void __fastcall std::swap<std::pair<rnd::Exit const*,rnd::ListElem>>(rnd::ListElem *a1, int *a2)
{
  char *v2; // r5
  int *v4; // r4
  int v6; // t1
  int v7; // [sp+0h] [bp-5Ch]
  _BYTE v8[80]; // [sp+4h] [bp-58h] BYREF

  v2 = (char *)a1 + 4;
  v7 = *(_DWORD *)a1;
  v4 = a2;
  rnd::ListElem::ListElem((rnd::ListElem *)v8, (rnd::ListElem *)((char *)a1 + 4));
  v6 = *v4++;
  *(_DWORD *)a1 = v6;
  rnd::ListElem::operator=((int)v2, (int)v4);
  *a2 = v7;
  rnd::ListElem::operator=((int)v4, (int)v8);
  rnd::ListElem::~ListElem((rnd::ListElem *)v8);
}


// ===== 48e628 std::random_shuffle<std::pair<rnd::Exit const*,rnd::ListElem> *,rnd::RandomGenerator>(std::pair<rnd::Exit const*,rnd::ListElem> *,std::pair<rnd::Exit const*,rnd::ListElem> *,rnd::RandomGenerator &) =====
void __fastcall std::random_shuffle<std::pair<rnd::Exit const*,rnd::ListElem> *,rnd::RandomGenerator>(
        int a1,
        rnd::ListElem *a2,
        rnd::RandomGenerator *a3)
{
  rnd::ListElem *v6; // r6
  int v7; // r7
  int *v8; // r1
  rnd::ListElem *v9; // r0

  if ( (rnd::ListElem *)a1 != a2 )
  {
    v6 = (rnd::ListElem *)(a1 + 84);
    if ( a2 != (rnd::ListElem *)(a1 + 84) )
    {
      v7 = 84;
      do
      {
        v8 = (int *)(a1 + 84 * rnd::RandomGenerator::operator()(a3, 1022611261 * (v7 >> 2) + 1));
        v9 = v6;
        v6 = (rnd::ListElem *)((char *)v6 + 84);
        std::swap<std::pair<rnd::Exit const*,rnd::ListElem>>(v9, v8);
        v7 += 84;
      }
      while ( a2 != v6 );
    }
  }
}


// ===== 48e690 rnd::Rule::Impl::FilterExits(std::vector<std::pair<rnd::Exit const*,rnd::ListElem>,std::allocator<std::pair<rnd::Exit const*,rnd::ListElem>>> &,rnd::ListRule *&) =====
void __fastcall rnd::Rule::Impl::FilterExits(int a1, rnd::ListElem **a2)
{
  rnd::ListElem *v2; // r6
  rnd::ListElem *v3; // r3
  int v6; // r4
  rnd::ListElem *v7; // r1
  int v8; // r2
  char *v9; // r0
  char *v10; // r2
  char *v11; // r11
  char *v13; // r12
  rnd::ListElem **v14; // t0
  rnd::RandomGenerator *App; // r0
  char *v16; // lr
  int v17; // r9

  v2 = *a2;
  v3 = a2[1];
  if ( *a2 == v3 )
  {
    v6 = (int)*a2;
  }
  else
  {
    v7 = *a2;
    do
    {
      v8 = *(_DWORD *)(*(_DWORD *)v7 + 4);
      v9 = *(char **)(v8 + 24);
      v10 = *(char **)(v8 + 20);
      if ( v10 != v9 && (unsigned int)(v10 - v9) > 5 )
      {
        if ( v10 == v9 )
        {
LABEL_12:
          v13 = v10;
        }
        else
        {
          v11 = v9 + 1;
LABEL_9:
          while ( *(v11 - 1) != 95 )
          {
            if ( v10 == v11++ )
              goto LABEL_12;
          }
          v13 = v11;
          if ( v11 != v10 )
          {
            v16 = "tart";
            while ( 1 )
            {
              v17 = *v13++;
              if ( v17 != *(v16 - 1) )
              {
                ++v11;
                goto LABEL_9;
              }
              if ( v16 == "" )
                break;
              ++v16;
              if ( v13 == v10 )
                goto LABEL_13;
            }
            v13 = v11 - 1;
          }
        }
LABEL_13:
        if ( v10 != v13 && v13 - v9 != -1 )
        {
          std::vector<std::pair<rnd::Exit const*,rnd::ListElem>>::_M_erase((int)a2, v7);
          v14 = a2;
          v6 = (int)*a2;
          v2 = v14[1];
          goto LABEL_16;
        }
      }
      v7 = (rnd::ListElem *)((char *)v7 + 84);
    }
    while ( v7 != v3 );
    v6 = (int)v2;
    v2 = v7;
  }
LABEL_16:
  App = (rnd::RandomGenerator *)rnd::Rule::GetApp(*(rnd::Rule **)(a1 + 4));
  std::random_shuffle<std::pair<rnd::Exit const*,rnd::ListElem> *,rnd::RandomGenerator>(v6, v2, App);
}


// ===== 48e7c0 std::swap<rnd::ListElem>(rnd::ListElem &,rnd::ListElem &) =====
void __fastcall std::swap<rnd::ListElem>(rnd::ListElem *a1, int a2)
{
  _BYTE v4[80]; // [sp+4h] [bp-58h] BYREF

  rnd::ListElem::ListElem((rnd::ListElem *)v4, a1);
  rnd::ListElem::operator=((int)a1, a2);
  rnd::ListElem::operator=(a2, (int)v4);
  rnd::ListElem::~ListElem((rnd::ListElem *)v4);
}


// ===== 48e83c std::random_shuffle<rnd::ListElem *,rnd::RandomGenerator>(rnd::ListElem *,rnd::ListElem *,rnd::RandomGenerator &) =====
void __fastcall std::random_shuffle<rnd::ListElem *,rnd::RandomGenerator>(
        int a1,
        rnd::ListElem *a2,
        rnd::RandomGenerator *a3)
{
  rnd::ListElem *v6; // r6
  int v7; // r7
  int v8; // r3
  int v9; // r2
  int v10; // r1
  rnd::ListElem *v11; // r0

  if ( (rnd::ListElem *)a1 != a2 )
  {
    v6 = (rnd::ListElem *)(a1 + 80);
    if ( a2 != (rnd::ListElem *)(a1 + 80) )
    {
      v7 = 80;
      do
      {
        v8 = v7 >> 4;
        v9 = 3 * (v7 >> 4);
        v7 += 80;
        v10 = a1 + 80 * rnd::RandomGenerator::operator()(a3, v8 + 1145324612 * v9 + 1);
        v11 = v6;
        v6 = (rnd::ListElem *)((char *)v6 + 80);
        std::swap<rnd::ListElem>(v11, v10);
      }
      while ( a2 != v6 );
    }
  }
}


// ===== 48e8ac rnd::RootRule::Impl::Generate(Array2d<rnd::Tile *> &) =====
rnd::RandomGenerator *__fastcall rnd::RootRule::Impl::Generate(int a1)
{
  int v1; // r3
  int v3; // r12
  unsigned int v4; // r3
  int v5; // r1
  rnd::RandomGenerator *v6; // r9
  rnd::ListElem *v8; // r6
  rnd::ListElem *v9; // r7
  rnd::RandomGenerator *App; // r0
  rnd::ListElem *v11; // r6
  rnd::ListElem *v12; // r10
  rnd::RandomGenerator *Block; // r9
  _BYTE *v14; // r1
  _BYTE *v15; // r2
  int *v16; // r6
  rnd::ListElem *v17; // r7
  rnd::RandomGenerator *v18; // r0
  rnd::ListElem *v19; // r6
  char *v20; // r10
  rnd::RandomGenerator *v21; // r10
  rnd::ListElem *v22; // [sp+Ch] [bp-1F8h] BYREF
  rnd::ListElem *v23; // [sp+10h] [bp-1F4h]
  int v24; // [sp+14h] [bp-1F0h]
  _BYTE v25[80]; // [sp+1Ch] [bp-1E8h] BYREF
  _BYTE v26[80]; // [sp+6Ch] [bp-198h] BYREF
  _BYTE v27[80]; // [sp+BCh] [bp-148h] BYREF
  _BYTE v28[24]; // [sp+10Ch] [bp-F8h] BYREF
  char *v29; // [sp+124h] [bp-E0h]
  _BYTE v30[80]; // [sp+15Ch] [bp-A8h] BYREF
  _BYTE v31[24]; // [sp+1ACh] [bp-58h] BYREF
  char *v32; // [sp+1C4h] [bp-40h]

  v1 = *(_DWORD *)(a1 + 68);
  v3 = *(_DWORD *)(v1 + 104);
  if ( v3 )
  {
    v4 = *(_DWORD *)(v1 + 108);
    if ( v4 == -1 || (v5 = *(_DWORD *)(v3 + 28), v4 >= -858993459 * ((*(_DWORD *)(v3 + 32) - v5) >> 4)) )
    {
      std::vector<rnd::ListElem>::vector(&v22, (int *)(v3 + 28));
      v8 = v23;
      v9 = v22;
      App = (rnd::RandomGenerator *)rnd::Rule::GetApp(*(rnd::Rule **)(a1 + 4));
      std::random_shuffle<rnd::ListElem *,rnd::RandomGenerator>((int)v9, v8, App);
      v11 = v22;
      v12 = v23;
      if ( v22 == v23 )
      {
LABEL_12:
        v6 = nullptr;
      }
      else
      {
        while ( 1 )
        {
          rnd::ListElem::ListElem((rnd::ListElem *)v28, v11);
          Block = (rnd::RandomGenerator *)rnd::Rule::GetBlock(*(rnd::Rule **)(a1 + 4), v29);
          if ( Block )
          {
            rnd::ListElem::ListElem((rnd::ListElem *)v27, (const rnd::ListElem *)v28);
            v6 = rnd::RootRule::Impl::PlaceRootTile((rnd::Rule **)a1, Block, (rnd::Block *)v27);
            rnd::ListElem::~ListElem((rnd::ListElem *)v27);
            if ( v6 )
              break;
          }
          v11 = (rnd::ListElem *)((char *)v11 + 80);
          rnd::ListElem::~ListElem((rnd::ListElem *)v28);
          if ( v11 == v12 )
            goto LABEL_12;
        }
        rnd::ListElem::~ListElem((rnd::ListElem *)v28);
      }
      std::vector<rnd::ListElem>::~vector(&v22);
    }
    else
    {
      rnd::ListElem::ListElem((rnd::ListElem *)v31, (const rnd::ListElem *)(v5 + 80 * v4));
      v6 = (rnd::RandomGenerator *)rnd::Rule::GetBlock(*(rnd::Rule **)(a1 + 4), v32);
      if ( v6 )
      {
        rnd::ListElem::ListElem((rnd::ListElem *)v30, (const rnd::ListElem *)v31);
        v6 = rnd::RootRule::Impl::PlaceRootTile((rnd::Rule **)a1, v6, (rnd::Block *)v30);
        rnd::ListElem::~ListElem((rnd::ListElem *)v30);
      }
      rnd::ListElem::~ListElem((rnd::ListElem *)v31);
    }
  }
  else
  {
    v14 = *(_BYTE **)(a1 + 48);
    v15 = *(_BYTE **)(a1 + 52);
    v24 = 0;
    v22 = nullptr;
    v23 = nullptr;
    std::vector<char const*>::_M_range_initialize<char const**>(&v22, v14, v15);
    v16 = (int *)v23;
    v17 = v22;
    v18 = (rnd::RandomGenerator *)rnd::Rule::GetApp(*(rnd::Rule **)(a1 + 4));
    std::random_shuffle<char const**,rnd::RandomGenerator>((unsigned int)v17, v16, v18);
    v19 = v22;
    if ( v22 == v23 )
    {
LABEL_19:
      v6 = nullptr;
    }
    else
    {
      while ( 1 )
      {
        v20 = *(char **)v19;
        rnd::ListElem::ListElem((rnd::ListElem *)v26);
        v21 = (rnd::RandomGenerator *)rnd::Rule::GetBlock(*(rnd::Rule **)(a1 + 4), v20);
        if ( v21 )
        {
          rnd::ListElem::ListElem((rnd::ListElem *)v25, (const rnd::ListElem *)v26);
          v6 = rnd::RootRule::Impl::PlaceRootTile((rnd::Rule **)a1, v21, (rnd::Block *)v25);
          rnd::ListElem::~ListElem((rnd::ListElem *)v25);
          if ( v6 )
            break;
        }
        rnd::ListElem::~ListElem((rnd::ListElem *)v26);
        v19 = (rnd::ListElem *)((char *)v19 + 4);
        if ( v19 == v23 )
          goto LABEL_19;
      }
      rnd::ListElem::~ListElem((rnd::ListElem *)v26);
    }
    std::vector<char const*>::~vector((int)&v22);
  }
  return v6;
}


// ===== 48eb50 std::vector<rnd::ListElem,std::allocator<rnd::ListElem>>::push_back(rnd::ListElem const&) =====
void __fastcall std::vector<rnd::ListElem>::push_back(rnd::ListElem **a1, const rnd::ListElem *a2)
{
  rnd::ListElem *v3; // r5
  rnd::ListElem *v4; // r0
  unsigned int v6; // r2
  unsigned int v7; // r1
  rnd::ListElem *v8; // r0
  rnd::ListElem *v9; // r9
  rnd::ListElem *v10; // r10
  int v11; // r3
  int v12; // r5
  rnd::ListElem *v13; // r5
  int v14; // r8
  int v15; // r7
  rnd::ListElem *v16; // r3
  size_t v17; // [sp+4h] [bp-4h] BYREF

  v3 = a1[2];
  v4 = a1[1];
  if ( v4 == v3 )
  {
    v6 = -858993459 * ((v3 - *a1) >> 4);
    if ( v6 )
      v7 = -1717986918 * ((v3 - *a1) >> 4);
    else
      v7 = 1;
    if ( v7 > 0x3333333 || v6 > v7 )
      v7 = 53687091;
    v17 = v7;
    v8 = (rnd::ListElem *)std::allocator<rnd::ListElem>::_M_allocate((int)(a1 + 2), v7, &v17);
    v9 = *a1;
    v10 = v8;
    v11 = (v3 - *a1) >> 4;
    v12 = -858993459 * v11;
    if ( -858993459 * v11 > 0 )
    {
      v14 = -858993459 * v11;
      v15 = 0;
      do
      {
        rnd::ListElem::ListElem((rnd::ListElem *)((char *)v10 + v15), (rnd::ListElem *)((char *)v9 + v15));
        --v14;
        v15 += 80;
      }
      while ( v14 );
      v13 = (rnd::ListElem *)((char *)v10 + 80 * v12);
    }
    else
    {
      v13 = v8;
    }
    rnd::ListElem::ListElem(v13, a2);
    std::vector<rnd::ListElem>::_M_clear_after_move(a1);
    v16 = (rnd::ListElem *)((char *)v10 + 80 * v17);
    *a1 = v10;
    a1[2] = v16;
    a1[1] = (rnd::ListElem *)((char *)v13 + 80);
  }
  else
  {
    rnd::ListElem::ListElem(v4, a2);
    a1[1] = (rnd::ListElem *)((char *)a1[1] + 80);
  }
}


// ===== 48ec74 rnd::ListRule::Replace(rnd::ListElem &) =====
void __fastcall rnd::ListRule::Replace(rnd::ListElem **this, rnd::ListElem *a2)
{
  if ( !*((_BYTE *)this + 24) )
  {
    if ( *(rnd::ListElem ***)a2 != this )
    {
      if ( gAssertLevel == 2 )
      {
        *(_DWORD *)*((unsigned __int8 *)this + 24) = *((unsigned __int8 *)this + 24);
      }
      else if ( gAssertLevel == 1 )
      {
        fprintf(
          (FILE *)&_sF + 2,
          "ASSERT(%s) FAILED: %s:%d\n",
          "elem.mOwner == this",
          "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\random\\rndRule.cpp",
          127);
      }
    }
    std::vector<rnd::ListElem>::push_back(this + 7, a2);
  }
}


// ===== 48ed2c rnd::ListRule::LoadFromXml(TiXmlNode *) =====
TiXmlNode *__fastcall rnd::ListRule::LoadFromXml(rnd::ListRule *this, TiXmlNode *a2)
{
  TiXmlElement *v4; // r0
  TiXmlElement *v5; // r7
  const char *v6; // r5
  size_t v7; // r0
  const char *v8; // r0
  char *v9; // r0
  TiXmlNode *result; // r0
  TiXmlNode *i; // r5
  _BYTE v12[24]; // [sp+1Ch] [bp-58h] BYREF
  char *v13; // [sp+34h] [bp-40h]

  v4 = (TiXmlElement *)(*(int (__fastcall **)(TiXmlNode *))(*(_DWORD *)a2 + 44))(a2);
  v5 = v4;
  if ( v4 )
  {
    v6 = (const char *)TiXmlElement::Attribute(v4, "name");
    ToLowerCase(v6, nullptr, (const char *)0xFFFFFFFF);
    if ( v6 )
    {
      v7 = LC_API_STRLEN_0(v6);
    }
    else
    {
      v7 = 0;
      v6 = "";
    }
    std::string::_M_assign((std::string *const)this, v6, &v6[v7]);
    v8 = (const char *)TiXmlElement::Attribute(v5, "replacement");
    if ( v8 )
      LOBYTE(v9) = LC_API_STRCMP_0(v8, "true") == 0;
    else
      v9 = (char *)&dword_0 + 1;
    *((_BYTE *)this + 24) = (_BYTE)v9;
  }
  result = (TiXmlNode *)TiXmlNode::FirstChild(a2, "elem");
  for ( i = result; result; i = result )
  {
    rnd::ListElem::ListElem((int)v12, (int)this);
    rnd::ListElem::LoadFromXml((rnd::ListElem *)v12, i);
    if ( !rnd::RandomGenerator::ValidBlock(*((rnd::RandomGenerator **)this + 10), v13) )
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
          "mApp.ValidBlock(lelem.mBlockName.c_str())",
          "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\random\\rndRule.cpp",
          89);
      }
    }
    std::vector<rnd::ListElem>::push_back((rnd::ListElem **)this + 7, (const rnd::ListElem *)v12);
    rnd::ListElem::~ListElem((rnd::ListElem *)v12);
    result = (TiXmlNode *)TiXmlNode::NextSibling(i, "elem");
  }
  return result;
}


// ===== 48ef28 std::vector<std::pair<rnd::Exit const*,rnd::ListElem>,std::allocator<std::pair<rnd::Exit const*,rnd::ListElem>>>::push_back(std::pair<rnd::Exit const*,rnd::ListElem> const&) =====
void __fastcall std::vector<std::pair<rnd::Exit const*,rnd::ListElem>>::push_back(int *a1, _DWORD *a2)
{
  _DWORD *v3; // r5
  _DWORD *v4; // r0
  unsigned int v6; // r2
  unsigned int v7; // r1
  char *v8; // r0
  int v9; // r9
  int v10; // r5
  char *v11; // r10
  char *v12; // r5
  int v13; // r8
  int v14; // r7
  size_t v15; // r3
  size_t v16; // [sp+4h] [bp-4h] BYREF

  v3 = (_DWORD *)a1[2];
  v4 = (_DWORD *)a1[1];
  if ( v4 == v3 )
  {
    v6 = 1022611261 * (((int)v3 - *a1) >> 2);
    if ( v6 )
      v7 = 2045222522 * (((int)v3 - *a1) >> 2);
    else
      v7 = 1;
    if ( v7 > 0x30C30C3 || v6 > v7 )
      v7 = 51130563;
    v16 = v7;
    v8 = (char *)std::allocator<std::pair<rnd::Exit const*,rnd::ListElem>>::_M_allocate((int)(a1 + 2), v7, &v16);
    v9 = *a1;
    v10 = 1022611261 * (((int)v3 - *a1) >> 2);
    v11 = v8;
    if ( v10 > 0 )
    {
      v13 = v10;
      v14 = 0;
      do
      {
        *(_DWORD *)&v11[v14] = *(_DWORD *)(v9 + v14);
        rnd::ListElem::ListElem((rnd::ListElem *)&v11[v14 + 4], (const rnd::ListElem *)(v9 + v14 + 4));
        --v13;
        v14 += 84;
      }
      while ( v13 );
      v12 = &v11[84 * v10];
    }
    else
    {
      v12 = v8;
    }
    *(_DWORD *)v12 = *a2;
    rnd::ListElem::ListElem((rnd::ListElem *)(v12 + 4), (const rnd::ListElem *)(a2 + 1));
    std::vector<std::pair<rnd::Exit const*,rnd::ListElem>>::_M_clear_after_move(a1);
    v15 = v16;
    *a1 = (int)v11;
    a1[1] = (int)(v12 + 84);
    a1[2] = (int)&v11[84 * v15];
  }
  else
  {
    *v4 = *a2;
    rnd::ListElem::ListElem((rnd::ListElem *)(v4 + 1), (const rnd::ListElem *)(a2 + 1));
    a1[1] += 84;
  }
}


// ===== 48f05c rnd::Path::Impl::AddExit(std::vector<std::pair<rnd::Exit const*,rnd::ListElem>,std::allocator<std::pair<rnd::Exit const*,rnd::ListElem>>> &,rnd::Exit const*,int) =====
void __fastcall rnd::Path::Impl::AddExit(rnd::Path::Impl *a1, int *a2, int a3, int a4)
{
  _DWORD *v7; // r3
  int v8; // r11
  int v9; // r3
  rnd::ListElem *v10; // r9
  rnd::ListElem *v11; // r7
  int v12; // r3
  _BYTE *v13; // r1
  int v14; // r3
  int v16; // [sp+Ch] [bp-248h]
  _DWORD v17[21]; // [sp+10h] [bp-244h] BYREF
  _BYTE v18[80]; // [sp+64h] [bp-1F0h] BYREF
  int v19; // [sp+B4h] [bp-1A0h]
  _BYTE v20[80]; // [sp+B8h] [bp-19Ch] BYREF
  int v21; // [sp+108h] [bp-14Ch] BYREF
  _BYTE v22[80]; // [sp+10Ch] [bp-148h] BYREF
  _BYTE v23[80]; // [sp+15Ch] [bp-F8h] BYREF
  _BYTE v24[80]; // [sp+1ACh] [bp-A8h] BYREF
  _BYTE v25[80]; // [sp+1FCh] [bp-58h] BYREF

  v21 = 0;
  rnd::ListElem::ListElem((rnd::ListElem *)v22);
  v7 = *(_DWORD **)(a3 + 4);
  if ( v7[21] == 1 && v7[22] == 1 )
  {
    v8 = v7[23];
    if ( rnd::Path::Impl::IsDeadEnd(a1) )
    {
      if ( v8 != 1 )
        goto LABEL_2;
      v9 = *((_DWORD *)a1 + 1);
      v10 = (rnd::ListElem *)v25;
      rnd::ListElem::ListElem(
        (rnd::ListElem *)v25,
        (const rnd::ListElem *)(*(_DWORD *)(*(_DWORD *)(v9 + 104) + 28) + 80 * a4));
      v19 = a3;
      v11 = (rnd::ListElem *)v20;
      rnd::ListElem::ListElem((rnd::ListElem *)v20, (const rnd::ListElem *)v25);
      v12 = v19;
      v13 = v20;
      goto LABEL_9;
    }
    if ( v8 == 2 )
    {
      if ( !*(_BYTE *)(*((_DWORD *)a1 + 17) + 141) )
      {
        v14 = *((_DWORD *)a1 + 1);
        v10 = (rnd::ListElem *)v23;
        rnd::ListElem::ListElem(
          (rnd::ListElem *)v23,
          (const rnd::ListElem *)(*(_DWORD *)(*(_DWORD *)(v14 + 104) + 28) + 80 * a4));
        v16 = a3;
        v11 = (rnd::ListElem *)v17;
        rnd::ListElem::ListElem((rnd::ListElem *)v17, (const rnd::ListElem *)v23);
        v13 = v17;
        v12 = v16;
LABEL_9:
        v21 = v12;
        rnd::ListElem::operator=((int)v22, (int)v13);
        rnd::ListElem::~ListElem(v11);
        rnd::ListElem::~ListElem(v10);
        goto LABEL_2;
      }
      if ( rnd::Block::IsStraight(*(rnd::Block **)(a3 + 4)) )
      {
        rnd::ListElem::ListElem(
          (rnd::ListElem *)v24,
          (const rnd::ListElem *)(*(_DWORD *)(*(_DWORD *)(*((_DWORD *)a1 + 1) + 104) + 28) + 80 * a4));
        v17[20] = a3;
        rnd::ListElem::ListElem((rnd::ListElem *)v18, (const rnd::ListElem *)v24);
        v21 = a3;
        rnd::ListElem::operator=((int)v22, (int)v18);
        rnd::ListElem::~ListElem((rnd::ListElem *)v18);
        rnd::ListElem::~ListElem((rnd::ListElem *)v24);
      }
    }
  }
LABEL_2:
  if ( v21 )
    std::vector<std::pair<rnd::Exit const*,rnd::ListElem>>::push_back(a2, &v21);
  rnd::ListElem::~ListElem((rnd::ListElem *)v22);
}


// ===== 48f25c rnd::Path::Impl::FilterExits(std::vector<std::pair<rnd::Exit const*,rnd::ListElem>,std::allocator<std::pair<rnd::Exit const*,rnd::ListElem>>> &,rnd::ListRule *&) =====
void **__fastcall rnd::Path::Impl::FilterExits(rnd::Path::Impl *a1, int a2)
{
  int v2; // r3
  rnd::ListElem *v3; // r0
  rnd::ListElem *v5; // r7
  rnd::ListElem *v6; // r3
  int *v7; // r10
  int v8; // r5
  int v9; // r3
  int v10; // r8
  int v11; // r4
  int v12; // r2
  int v13; // r1
  int v14; // r2
  unsigned int v15; // r0
  unsigned int v16; // r4
  int v17; // r2
  const void *v18; // r1
  const void *v19; // r0
  int v20; // r6
  int v21; // r7
  size_t v22; // r2
  int v23; // r2
  int v24; // r3
  rnd::ListElem *v25; // r1
  int v26; // r2
  int v27; // r12
  int v29; // r2
  const void *v30; // r0
  signed int v31; // r8
  int v32; // r3
  const void *v33; // r1
  int v34; // r6
  size_t v35; // r2
  rnd::ListElem *v37; // [sp+14h] [bp-10h] BYREF
  rnd::ListElem *v38; // [sp+18h] [bp-Ch]
  int v39; // [sp+1Ch] [bp-8h]

  v2 = *((_DWORD *)a1 + 1);
  v3 = nullptr;
  v37 = nullptr;
  v38 = nullptr;
  v39 = 0;
  if ( !*(_DWORD *)(v2 + 104) )
  {
    v3 = nullptr;
    v6 = *(rnd::ListElem **)a2;
    v5 = *(rnd::ListElem **)(a2 + 4);
    goto LABEL_18;
  }
  v5 = *(rnd::ListElem **)(a2 + 4);
  v6 = v5;
  if ( *(rnd::ListElem **)a2 != v5 )
  {
    v7 = *(int **)a2;
    while ( 1 )
    {
      v8 = *v7;
      if ( !*v7 )
        goto LABEL_16;
      v9 = *(_DWORD *)(v8 + 4);
      if ( !v9 )
        goto LABEL_16;
      v10 = *((_DWORD *)a1 + 1);
      v11 = *(_DWORD *)(v10 + 108);
      if ( v11 != -1 )
        break;
      v12 = *(_DWORD *)(v10 + 104);
      v13 = *(_DWORD *)(v12 + 32);
      v14 = *(_DWORD *)(v12 + 28);
      if ( -858993459 * ((v13 - v14) >> 4) )
      {
        v15 = 0;
        v16 = 0;
        while ( 1 )
        {
          v17 = v14 + 80 * v15;
          v18 = *(const void **)(v17 + 24);
          v19 = *(const void **)(v9 + 24);
          v20 = *(_DWORD *)(v17 + 20) - (_DWORD)v18;
          v21 = *(_DWORD *)(v9 + 20) - (_DWORD)v19;
          v22 = v20 >= v21 ? *(_DWORD *)(v9 + 20) - (_DWORD)v19 : *(_DWORD *)(v17 + 20) - (_DWORD)v18;
          if ( !memcmp(v19, v18, v22) && v21 >= v20 && v21 <= v20 )
          {
            rnd::Path::Impl::AddExit(a1, (int *)&v37, v8, v16);
            v10 = *((_DWORD *)a1 + 1);
          }
          v23 = *(_DWORD *)(v10 + 104);
          v15 = ++v16;
          v24 = *(_DWORD *)(v23 + 32);
          v14 = *(_DWORD *)(v23 + 28);
          if ( -858993459 * ((v24 - v14) >> 4) <= v16 )
            break;
          v9 = *(_DWORD *)(v8 + 4);
        }
LABEL_15:
        v5 = *(rnd::ListElem **)(a2 + 4);
      }
LABEL_16:
      v7 += 21;
      if ( v7 == (int *)v5 )
      {
        v6 = *(rnd::ListElem **)a2;
        v3 = v37;
        goto LABEL_18;
      }
    }
    v29 = *(_DWORD *)(v10 + 104);
    v30 = *(const void **)(v9 + 24);
    v31 = *(_DWORD *)(v9 + 20) - (_DWORD)v30;
    v32 = *(_DWORD *)(v29 + 28) + 80 * v11;
    v33 = *(const void **)(v32 + 24);
    v34 = *(_DWORD *)(v32 + 20) - (_DWORD)v33;
    if ( v34 >= v31 )
      v35 = v31;
    else
      v35 = *(_DWORD *)(v32 + 20) - (_DWORD)v33;
    if ( memcmp(v30, v33, v35) || v31 < v34 || v31 > v34 )
      goto LABEL_16;
    rnd::Path::Impl::AddExit(a1, (int *)&v37, v8, v11);
    goto LABEL_15;
  }
LABEL_18:
  v25 = v38;
  v26 = v39;
  v27 = *(_DWORD *)(a2 + 8);
  *(_DWORD *)a2 = v3;
  *(_DWORD *)(a2 + 4) = v25;
  *(_DWORD *)(a2 + 8) = v26;
  v37 = v6;
  v38 = v5;
  v39 = v27;
  rnd::Rule::Impl::FilterExits((int)a1, (rnd::ListElem **)a2);
  return std::vector<std::pair<rnd::Exit const*,rnd::ListElem>>::~vector((void **)&v37);
}


// ===== 48f47c rnd::ForceBlock::Impl::FilterExits(std::vector<std::pair<rnd::Exit const*,rnd::ListElem>,std::allocator<std::pair<rnd::Exit const*,rnd::ListElem>>> &,rnd::ListRule *&) =====
Elf32_Dyn **__fastcall rnd::ForceBlock::Impl::FilterExits(_DWORD *a1, int a2, _DWORD *a3)
{
  int v5; // r0
  rnd::ListElem *v6; // r7
  rnd::ListElem *v7; // r9
  rnd::ListElem *v8; // r3
  const rnd::ListElem *v9; // r4
  const void *v10; // r0
  const void *v11; // r1
  size_t v12; // r2
  int v13; // r5
  int v14; // r3
  _DWORD *v15; // r10
  int v16; // r1
  unsigned int v17; // r2
  const rnd::ListElem *v18; // r4
  char *v19; // r6
  const void *v20; // r0
  const void *v21; // r1
  size_t v22; // r2
  int v23; // r1
  int v24; // r2
  rnd::ListElem *v25; // r1
  int v26; // r2
  int v27; // r12
  const char **v29; // r4
  const char **v30; // r6
  int v31; // r2
  int v32; // r3
  int v33; // r2
  rnd::ListElem *v34; // [sp+30h] [bp-43Ch] BYREF
  rnd::ListElem *v35; // [sp+34h] [bp-438h]
  int v36; // [sp+38h] [bp-434h]
  int v37; // [sp+3Ch] [bp-430h] BYREF
  _BYTE v38[8]; // [sp+40h] [bp-42Ch] BYREF
  int v39; // [sp+90h] [bp-3DCh] BYREF
  _BYTE v40[80]; // [sp+94h] [bp-3D8h] BYREF
  int v41; // [sp+E4h] [bp-388h] BYREF
  _BYTE v42[80]; // [sp+E8h] [bp-384h] BYREF
  int v43; // [sp+138h] [bp-334h] BYREF
  _BYTE v44[80]; // [sp+13Ch] [bp-330h] BYREF
  int v45; // [sp+18Ch] [bp-2E0h] BYREF
  _BYTE v46[80]; // [sp+190h] [bp-2DCh] BYREF
  int v47; // [sp+1E0h] [bp-28Ch] BYREF
  _BYTE v48[80]; // [sp+1E4h] [bp-288h] BYREF
  _BYTE v49[80]; // [sp+234h] [bp-238h] BYREF
  _BYTE v50[80]; // [sp+284h] [bp-1E8h] BYREF
  _BYTE v51[80]; // [sp+2D4h] [bp-198h] BYREF
  _BYTE v52[80]; // [sp+324h] [bp-148h] BYREF
  _BYTE v53[80]; // [sp+374h] [bp-F8h] BYREF
  _BYTE v54[76]; // [sp+3C4h] [bp-A8h] BYREF
  _BYTE v55[76]; // [sp+414h] [bp-58h] BYREF

  v5 = a1[17];
  v36 = 0;
  v34 = nullptr;
  v35 = nullptr;
  *a3 = *(_DWORD *)(v5 + 104);
  v6 = *(rnd::ListElem **)a2;
  v7 = *(rnd::ListElem **)(a2 + 4);
  v8 = v7;
  if ( *(rnd::ListElem **)a2 != v7 )
  {
    while ( 1 )
    {
      v13 = *(_DWORD *)v6;
      if ( !*(_DWORD *)v6 )
        goto LABEL_4;
      v14 = *(_DWORD *)(v13 + 4);
      if ( !v14 )
        goto LABEL_4;
      v15 = (_DWORD *)a1[17];
      v16 = v15[26];
      if ( v16 )
      {
        v17 = v15[27];
        if ( v17 == -1 )
        {
          v18 = *(const rnd::ListElem **)(v16 + 28);
          v19 = *(char **)(v16 + 32);
        }
        else
        {
          v18 = *(const rnd::ListElem **)(v16 + 28);
          v19 = *(char **)(v16 + 32);
          if ( v17 < -858993459 * ((v19 - (char *)v18) >> 4) )
          {
            v9 = (const rnd::ListElem *)((char *)v18 + 80 * v17);
            v10 = *(const void **)(v14 + 24);
            v11 = *((const void **)v9 + 6);
            v12 = *(_DWORD *)(v14 + 20) - (_DWORD)v10;
            if ( v12 == *((_DWORD *)v9 + 5) - (_DWORD)v11 && !memcmp(v10, v11, v12) )
            {
              v33 = v15[34];
              if ( v33 == 4 )
              {
                rnd::ListElem::ListElem((rnd::ListElem *)v54, v9);
                v45 = v13;
                rnd::ListElem::ListElem((rnd::ListElem *)v46, (const rnd::ListElem *)v54);
                std::vector<std::pair<rnd::Exit const*,rnd::ListElem>>::push_back((int *)&v34, &v45);
                rnd::ListElem::~ListElem((rnd::ListElem *)v46);
                rnd::ListElem::~ListElem((rnd::ListElem *)v54);
                v7 = *(rnd::ListElem **)(a2 + 4);
              }
              else if ( v33 == **(_DWORD **)(v13 + 20) && v15[35] == *(_DWORD *)(v13 + 24) )
              {
                rnd::ListElem::ListElem((rnd::ListElem *)v55, v9);
                v47 = v13;
                rnd::ListElem::ListElem((rnd::ListElem *)v48, (const rnd::ListElem *)v55);
                std::vector<std::pair<rnd::Exit const*,rnd::ListElem>>::push_back((int *)&v34, &v47);
                rnd::ListElem::~ListElem((rnd::ListElem *)v48);
                rnd::ListElem::~ListElem((rnd::ListElem *)v55);
                v7 = *(rnd::ListElem **)(a2 + 4);
              }
            }
            goto LABEL_4;
          }
        }
        if ( v19 != (char *)v18 )
        {
          while ( 1 )
          {
            v20 = *(const void **)(v14 + 24);
            v21 = *((const void **)v18 + 6);
            v22 = *(_DWORD *)(v14 + 20) - (_DWORD)v20;
            if ( v22 != *((_DWORD *)v18 + 5) - (_DWORD)v21 || memcmp(v20, v21, v22) )
              goto LABEL_12;
            v23 = a1[17];
            v24 = *(_DWORD *)(v23 + 136);
            if ( v24 == 4 )
              break;
            if ( v24 != **(_DWORD **)(v13 + 20) || *(_DWORD *)(v23 + 140) != *(_DWORD *)(v13 + 24) )
              goto LABEL_12;
            rnd::ListElem::ListElem((rnd::ListElem *)v53, v18);
            v43 = v13;
            rnd::ListElem::ListElem((rnd::ListElem *)v44, (const rnd::ListElem *)v53);
            std::vector<std::pair<rnd::Exit const*,rnd::ListElem>>::push_back((int *)&v34, &v43);
            rnd::ListElem::~ListElem((rnd::ListElem *)v44);
            v18 = (const rnd::ListElem *)((char *)v18 + 80);
            rnd::ListElem::~ListElem((rnd::ListElem *)v53);
            if ( v19 == (char *)v18 )
              goto LABEL_20;
LABEL_13:
            v14 = *(_DWORD *)(v13 + 4);
          }
          rnd::ListElem::ListElem((rnd::ListElem *)v52, v18);
          v41 = v13;
          rnd::ListElem::ListElem((rnd::ListElem *)v42, (const rnd::ListElem *)v52);
          std::vector<std::pair<rnd::Exit const*,rnd::ListElem>>::push_back((int *)&v34, &v41);
          rnd::ListElem::~ListElem((rnd::ListElem *)v42);
          rnd::ListElem::~ListElem((rnd::ListElem *)v52);
LABEL_12:
          v18 = (const rnd::ListElem *)((char *)v18 + 80);
          if ( v19 == (char *)v18 )
            goto LABEL_20;
          goto LABEL_13;
        }
LABEL_4:
        v6 = (rnd::ListElem *)((char *)v6 + 84);
        if ( v6 == v7 )
          goto LABEL_21;
      }
      else
      {
        v29 = (const char **)a1[12];
        v30 = (const char **)a1[13];
        if ( v30 == v29 )
          goto LABEL_4;
        while ( 1 )
        {
          if ( !LC_API_STRCASECMP_0(*(const char **)(v14 + 24), *v29) )
          {
            rnd::ListElem::ListElem((rnd::ListElem *)v51);
            v31 = a1[17];
            v32 = *(_DWORD *)(v31 + 136);
            if ( v32 == 4 )
            {
              rnd::ListElem::ListElem((rnd::ListElem *)v49, (const rnd::ListElem *)v51);
              v37 = v13;
              rnd::ListElem::ListElem((rnd::ListElem *)v38, (const rnd::ListElem *)v49);
              std::vector<std::pair<rnd::Exit const*,rnd::ListElem>>::push_back((int *)&v34, &v37);
              rnd::ListElem::~ListElem((rnd::ListElem *)v38);
              rnd::ListElem::~ListElem((rnd::ListElem *)v49);
            }
            else if ( v32 == **(_DWORD **)(v13 + 20) && *(_DWORD *)(v31 + 140) == *(_DWORD *)(v13 + 24) )
            {
              rnd::ListElem::ListElem((rnd::ListElem *)v50, (const rnd::ListElem *)v51);
              v39 = v13;
              rnd::ListElem::ListElem((rnd::ListElem *)v40, (const rnd::ListElem *)v50);
              std::vector<std::pair<rnd::Exit const*,rnd::ListElem>>::push_back((int *)&v34, &v39);
              rnd::ListElem::~ListElem((rnd::ListElem *)v40);
              rnd::ListElem::~ListElem((rnd::ListElem *)v50);
            }
            rnd::ListElem::~ListElem((rnd::ListElem *)v51);
            v30 = (const char **)a1[13];
          }
          if ( ++v29 == v30 )
            break;
          v14 = *(_DWORD *)(v13 + 4);
        }
LABEL_20:
        v7 = *(rnd::ListElem **)(a2 + 4);
        v6 = (rnd::ListElem *)((char *)v6 + 84);
        if ( v6 == v7 )
        {
LABEL_21:
          v8 = *(rnd::ListElem **)a2;
          break;
        }
      }
    }
  }
  v25 = v35;
  v26 = v36;
  v27 = *(_DWORD *)(a2 + 8);
  *(_DWORD *)a2 = v34;
  *(_DWORD *)(a2 + 4) = v25;
  *(_DWORD *)(a2 + 8) = v26;
  v34 = v8;
  v36 = v27;
  v35 = v7;
  rnd::Rule::Impl::FilterExits((int)a1, (rnd::ListElem **)a2);
  std::vector<std::pair<rnd::Exit const*,rnd::ListElem>>::~vector((void **)&v34);
  return &__GLOBAL_OFFSET_TABLE_;
}


// ===== 48f954 rnd::Rule::Impl::Step(rnd::Tile *,rnd::Exit const*) =====
int __fastcall rnd::Rule::Impl::Step(int a1, rnd::Tile *a2, int a3)
{
  int v4; // r3
  int v5; // r5
  int v6; // r4
  int v7; // r4
  rnd::ListElem *v8; // r7
  int v9; // r10
  rnd::Rule *v10; // r0
  int v11; // r6
  int v12; // r5
  rnd::RandomGenerator *App; // r0
  bool v14; // zf
  int v15; // r7
  int v16; // r3
  int v17; // r2
  char *v18; // r3
  int v19; // t1
  rnd::RandomGenerator *v20; // r0
  int v21; // r7
  _DWORD *v22; // r2
  int v23; // r6
  unsigned int v24; // r0
  unsigned int v25; // r5
  int v26; // r9
  int v27; // r7
  int v28; // r0
  _DWORD *v29; // r0
  _DWORD *v30; // r2
  int v31; // r7
  int v32; // r6
  int v33; // r3
  rnd::RandomGenerator *v35; // r0
  int v38; // [sp+10h] [bp-3C4h]
  unsigned int v39; // [sp+18h] [bp-3BCh]
  int v40[121]; // [sp+34h] [bp-3A0h] BYREF
  _DWORD *v41; // [sp+218h] [bp-1BCh] BYREF
  int v42; // [sp+21Ch] [bp-1B8h]
  rnd::ListElem *v43; // [sp+224h] [bp-1B0h] BYREF
  rnd::ListElem *v44; // [sp+228h] [bp-1ACh]
  int v45; // [sp+22Ch] [bp-1A8h]
  int v46; // [sp+230h] [bp-1A4h] BYREF
  _BYTE v47[80]; // [sp+234h] [bp-1A0h] BYREF
  int v48; // [sp+284h] [bp-150h] BYREF
  _BYTE v49[80]; // [sp+288h] [bp-14Ch] BYREF
  int v50; // [sp+2D8h] [bp-FCh]
  _BYTE v51[80]; // [sp+2DCh] [bp-F8h] BYREF
  _BYTE v52[80]; // [sp+32Ch] [bp-A8h] BYREF
  _BYTE v53[80]; // [sp+37Ch] [bp-58h] BYREF

  v4 = *((_DWORD *)a2 + 12);
  v5 = 0;
  v43 = nullptr;
  v44 = nullptr;
  v45 = 0;
  v6 = a1;
  if ( *(int *)(v4 + 92) > 0 )
  {
    do
    {
      v7 = v4 + 300 * v5 + 96;
      if ( v7 != a3 )
      {
        rnd::ListElem::ListElem((rnd::ListElem *)v53);
        v50 = v7;
        rnd::ListElem::ListElem((rnd::ListElem *)v51, (const rnd::ListElem *)v53);
        v48 = v50;
        rnd::ListElem::ListElem((rnd::ListElem *)v49, (const rnd::ListElem *)v51);
        std::vector<std::pair<rnd::Exit const*,rnd::ListElem>>::push_back((int *)&v43, &v48);
        rnd::ListElem::~ListElem((rnd::ListElem *)v49);
        rnd::ListElem::~ListElem((rnd::ListElem *)v51);
        rnd::ListElem::~ListElem((rnd::ListElem *)v53);
        v4 = *((_DWORD *)a2 + 12);
      }
      ++v5;
    }
    while ( *(_DWORD *)(v4 + 92) > v5 );
    v6 = a1;
  }
  v8 = v44;
  v9 = (int)v43;
  v10 = *(rnd::Rule **)(v6 + 4);
  v11 = 1022611261 * ((v44 - v43) >> 2);
  v12 = *((_DWORD *)v10 + 3);
  App = (rnd::RandomGenerator *)rnd::Rule::GetApp(v10);
  std::random_shuffle<std::pair<rnd::Exit const*,rnd::ListElem> *,rnd::RandomGenerator>(v9, v8, App);
  v14 = v12 == 0;
  if ( v12 )
    v14 = v11 == 0;
  if ( v14 )
    goto LABEL_28;
  v15 = 0;
  v16 = 726 * v12 + 4356 * v11;
  v17 = rnd::gDistributions[v16];
  v18 = &rnd::gDistributions[v16];
  if ( v17 < 0 )
  {
    v35 = (rnd::RandomGenerator *)rnd::Rule::GetApp(*(rnd::Rule **)(v6 + 4));
    std::random_shuffle<char const**,rnd::RandomGenerator>((unsigned int)v40, v40, v35);
    v32 = 0;
    goto LABEL_29;
  }
  do
  {
    v19 = v18[6];
    v18 += 6;
    v40[v15] = (int)&rnd::gDistributions[4356 * v11 + 726 * v12 + 6 * v15];
    ++v15;
  }
  while ( v19 >= 0 );
  v38 = 4 * v15;
  v20 = (rnd::RandomGenerator *)rnd::Rule::GetApp(*(rnd::Rule **)(v6 + 4));
  std::random_shuffle<char const**,rnd::RandomGenerator>((unsigned int)v40, &v40[v15], v20);
  v39 = (v11 + v11 * v11) / 2;
  v21 = 0;
  do
  {
    std::vector<std::pair<rnd::Exit const*,rnd::ListElem>>::vector(&v41, (int *)&v43);
    v22 = v41;
    v23 = *(int *)((char *)v40 + v21);
    if ( !(1022611261 * ((v42 - (int)v41) >> 2)) )
    {
LABEL_27:
      std::vector<std::pair<rnd::Exit const*,rnd::ListElem>>::~vector((void **)&v41);
LABEL_28:
      v32 = 1;
      break;
    }
    v24 = 0;
    v25 = 0;
    v26 = v21;
    while ( 1 )
    {
      v27 = v22[21 * v24];
      v28 = *(_DWORD *)(*(_DWORD *)(v6 + 4) + 4 * (*(char *)(v23 + v24) + 4));
      v29 = (_DWORD *)(*(int (__fastcall **)(int, int))(*(_DWORD *)v28 + 8))(v28, v6);
      if ( !v29 )
        break;
      v30 = (_DWORD *)v29[15];
      if ( !v30 || *v30 == **(_DWORD **)(v27 + 20) )
        break;
      if ( v39 <= 1022611261 * ((v42 - (int)v41) >> 2) )
      {
        v31 = v26;
        goto LABEL_21;
      }
      rnd::ListElem::ListElem((rnd::ListElem *)v52);
      v46 = v27;
      rnd::ListElem::ListElem((rnd::ListElem *)v47, (const rnd::ListElem *)v52);
      std::vector<std::pair<rnd::Exit const*,rnd::ListElem>>::push_back((int *)&v41, &v46);
      rnd::ListElem::~ListElem((rnd::ListElem *)v47);
      rnd::ListElem::~ListElem((rnd::ListElem *)v52);
LABEL_26:
      v22 = v41;
      v24 = ++v25;
      if ( v25 >= 1022611261 * ((v42 - (int)v41) >> 2) )
        goto LABEL_27;
    }
    if ( (*(int (__fastcall **)(_DWORD *, rnd::Tile *, int, int))(*v29 + 12))(v29, a2, v27, a3) )
      goto LABEL_26;
    v31 = v26;
LABEL_21:
    v32 = *(_DWORD *)(v6 + 12);
    while ( v32 )
    {
      *(_DWORD *)(v6 + 12) = --v32;
      v33 = *(_DWORD *)(v6 + 4 * (v32 + 4));
      if ( v33 )
      {
        (*(void (__fastcall **)(_DWORD))(*(_DWORD *)v33 + 4))(*(_DWORD *)(v6 + 4 * (v32 + 4)));
        goto LABEL_21;
      }
    }
    rnd::Tile::RemoveNeighbors(a2);
    std::vector<std::pair<rnd::Exit const*,rnd::ListElem>>::~vector((void **)&v41);
    v21 = v31 + 4;
  }
  while ( v38 != v21 );
LABEL_29:
  std::vector<std::pair<rnd::Exit const*,rnd::ListElem>>::~vector((void **)&v43);
  return v32;
}


// ===== 48fd64 rnd::Path::Impl::OneStep(rnd::Tile *,rnd::Exit const*,rnd::Exit const*) =====
int __fastcall rnd::Path::Impl::OneStep(_DWORD *a1, rnd::Tile *a2, int a3, int a4)
{
  _DWORD *v4; // r4
  int v5; // lr
  int v6; // r0
  int v8; // r3
  int v9; // r2
  int v10; // r4
  int v12; // r8
  int v13; // r10
  int v14; // r5
  int v15; // r6
  int v16; // r4
  int v17; // r4
  int v18; // r1
  int v19; // r3
  int v20; // r2
  const void *v21; // r0
  int v22; // r3
  const void *v23; // r1
  size_t v24; // r2
  int v25; // r3
  int v26; // r7
  int v27; // r2
  int v28; // r9
  unsigned int v29; // r5
  unsigned int v30; // r4
  int v31; // r10
  const rnd::ListElem *v32; // r4
  int v33; // r3
  const void *v34; // r0
  const void *v35; // r1
  int v36; // r8
  int v37; // r6
  size_t v38; // r2
  int *v39; // r5
  int *v40; // lr
  int v41; // r0
  int v42; // r6
  int v43; // r2
  int v44; // r12
  int v45; // r3
  _DWORD *v46; // r1
  int v47; // r0
  rnd::Tile *v48; // r7
  int v49; // r3
  int v50; // r2
  int v51; // r3
  _DWORD *v52; // [sp+Ch] [bp-280h]
  int v55; // [sp+2Ch] [bp-260h]
  int v56; // [sp+34h] [bp-258h]
  int *v57; // [sp+38h] [bp-254h] BYREF
  int *v58; // [sp+3Ch] [bp-250h]
  int v59; // [sp+40h] [bp-24Ch]
  int v60; // [sp+44h] [bp-248h] BYREF
  int v61; // [sp+48h] [bp-244h] BYREF
  _BYTE v62[80]; // [sp+4Ch] [bp-240h] BYREF
  int v63; // [sp+9Ch] [bp-1F0h] BYREF
  _BYTE v64[80]; // [sp+A0h] [bp-1ECh] BYREF
  int v65; // [sp+F0h] [bp-19Ch] BYREF
  _BYTE v66[80]; // [sp+F4h] [bp-198h] BYREF
  _BYTE v67[80]; // [sp+144h] [bp-148h] BYREF
  _BYTE v68[80]; // [sp+194h] [bp-F8h] BYREF
  _BYTE v69[80]; // [sp+1E4h] [bp-A8h] BYREF
  _BYTE v70[80]; // [sp+234h] [bp-58h] BYREF

  v4 = a1;
  v5 = a1[11];
  v6 = a1[10];
  if ( v6 >= v5 )
  {
    v8 = *((_DWORD *)a2 + 12);
    if ( *(_DWORD *)(v8 + 92) != 2 || (v9 = v8 + 96, a3 == v8 + 96) && (v9 = v8 + 396, a3 == v8 + 396) )
      v9 = 0;
    return rnd::Rule::Impl::Step((int)v4, a2, v9);
  }
  v55 = rnd::DIRECTION_OPPOSITES[**(_DWORD **)(a3 + 20)];
  if ( v6 )
  {
    v12 = v4[17];
  }
  else
  {
    v12 = v4[17];
    if ( *(_BYTE *)(v12 + 140) )
      v4[18] = *((unsigned __int8 *)&rnd::Direction::sDirections + 16 * v55)
             | (*((unsigned __int8 *)&rnd::Direction::sDirections + 16 * v55 + 1) << 8)
             | (*((unsigned __int8 *)&rnd::Direction::sDirections + 16 * v55 + 2) << 16)
             | (*((unsigned __int8 *)&rnd::Direction::sDirections + 16 * v55 + 3) << 24);
  }
  v13 = *(_DWORD *)(a3 + 40);
  v14 = 0;
  v57 = nullptr;
  v58 = nullptr;
  v59 = 0;
  if ( v13 > 0 )
  {
    v15 = a3;
    v56 = -1;
    v52 = v4;
    while ( 1 )
    {
      while ( *(_DWORD *)(v12 + 108) != -1 )
      {
        v16 = *(_DWORD *)(v15 + 44);
        rnd::ListElem::ListElem((rnd::ListElem *)v69);
        v63 = v16;
        rnd::ListElem::ListElem((rnd::ListElem *)v64, (const rnd::ListElem *)v69);
        std::vector<std::pair<rnd::Exit const*,rnd::ListElem>>::push_back((int *)&v57, &v63);
        rnd::ListElem::~ListElem((rnd::ListElem *)v64);
        rnd::ListElem::~ListElem((rnd::ListElem *)v69);
        v13 = *(_DWORD *)(a3 + 40);
        v12 = v52[17];
LABEL_12:
        ++v14;
        v15 += 4;
        if ( v13 <= v14 )
          goto LABEL_16;
      }
      v17 = *(_DWORD *)(v15 + 44);
      v18 = *(_DWORD *)(v17 + 4);
      v19 = *((_DWORD *)a2 + 12);
      v20 = *(_DWORD *)(v19 + 20);
      v21 = *(const void **)(v19 + 24);
      v22 = *(_DWORD *)(v18 + 20);
      v23 = *(const void **)(v18 + 24);
      v24 = v20 - (_DWORD)v21;
      if ( v24 == v22 - (_DWORD)v23 && !memcmp(v21, v23, v24) )
      {
        v56 = v14;
        goto LABEL_12;
      }
      rnd::ListElem::ListElem((rnd::ListElem *)v70);
      v65 = v17;
      rnd::ListElem::ListElem((rnd::ListElem *)v66, (const rnd::ListElem *)v70);
      std::vector<std::pair<rnd::Exit const*,rnd::ListElem>>::push_back((int *)&v57, &v65);
      rnd::ListElem::~ListElem((rnd::ListElem *)v66);
      rnd::ListElem::~ListElem((rnd::ListElem *)v70);
      v13 = *(_DWORD *)(a3 + 40);
      ++v14;
      v12 = v52[17];
      v15 += 4;
      if ( v13 <= v14 )
      {
LABEL_16:
        v4 = v52;
        v25 = *v52;
        v60 = *(_DWORD *)(v12 + 104);
        (*(void (__fastcall **)(_DWORD *, int **, int *))(v25 + 8))(v52, &v57, &v60);
        if ( v56 != -1 )
        {
          v26 = v60;
          v27 = *(_DWORD *)(v60 + 28);
          if ( -858993459 * ((*(_DWORD *)(v60 + 32) - v27) >> 4) )
          {
            v28 = a3 + 4 * v56 + 44;
            v29 = 0;
            v30 = 0;
            do
            {
              v31 = *(_DWORD *)v28;
              v32 = (const rnd::ListElem *)(v27 + 80 * v30);
              v33 = *(_DWORD *)(*(_DWORD *)v28 + 4);
              v34 = *((const void **)v32 + 6);
              v35 = *(const void **)(v33 + 24);
              v36 = *((_DWORD *)v32 + 5) - (_DWORD)v34;
              v37 = *(_DWORD *)(v33 + 20) - (_DWORD)v35;
              if ( v37 >= v36 )
                v38 = *((_DWORD *)v32 + 5) - (_DWORD)v34;
              else
                v38 = *(_DWORD *)(v33 + 20) - (_DWORD)v35;
              if ( !memcmp(v34, v35, v38) && v36 >= v37 && v36 <= v37 )
              {
                rnd::ListElem::ListElem((rnd::ListElem *)v68, v32);
                v61 = v31;
                rnd::ListElem::ListElem((rnd::ListElem *)v62, (const rnd::ListElem *)v68);
                std::vector<std::pair<rnd::Exit const*,rnd::ListElem>>::push_back((int *)&v57, &v61);
                rnd::ListElem::~ListElem((rnd::ListElem *)v62);
                rnd::ListElem::~ListElem((rnd::ListElem *)v68);
                v26 = v60;
              }
              v27 = *(_DWORD *)(v26 + 28);
              v30 = ++v29;
            }
            while ( -858993459 * ((*(_DWORD *)(v26 + 32) - v27) >> 4) > v29 );
            v4 = v52;
          }
        }
        goto LABEL_25;
      }
    }
  }
  v51 = *v4;
  v60 = *(_DWORD *)(v12 + 104);
  (*(void (__fastcall **)(_DWORD *, int **, int *))(v51 + 8))(v4, &v57, &v60);
LABEL_25:
  v39 = v57;
  v40 = v58;
  if ( v57 == v58 )
  {
LABEL_41:
    v10 = 0;
    goto LABEL_42;
  }
  while ( 1 )
  {
    v41 = v4[18];
    v42 = *v39;
    if ( v41 != 4 )
    {
      v43 = *(_DWORD *)(v42 + 4);
      v44 = *(_DWORD *)(v43 + 92);
      if ( v44 > 0 )
      {
        if ( **(_DWORD **)(v43 + 116) == v41 )
        {
LABEL_51:
          if ( (*((unsigned __int8 *)&rnd::Direction::sDirections + 16 * v55)
              | (*((unsigned __int8 *)&rnd::Direction::sDirections + 16 * v55 + 1) << 8)
              | (*((unsigned __int8 *)&rnd::Direction::sDirections + 16 * v55 + 2) << 16)
              | (*((unsigned __int8 *)&rnd::Direction::sDirections + 16 * v55 + 3) << 24)) != v41 )
            goto LABEL_40;
        }
        else
        {
          v45 = 0;
          while ( ++v45 != v44 )
          {
            v46 = *(_DWORD **)(v43 + 416);
            v43 += 300;
            if ( *v46 == v41 )
              goto LABEL_51;
          }
        }
      }
    }
    rnd::ListElem::ListElem((rnd::ListElem *)v67, (const rnd::ListElem *)(v39 + 1));
    v47 = rnd::Tile::TrySpawn((int)a2, a4, a3, v42, (rnd::ListElem *)v67);
    v48 = (rnd::Tile *)v47;
    if ( v47 )
      break;
LABEL_39:
    rnd::ListElem::~ListElem((rnd::ListElem *)v67);
    v40 = v58;
LABEL_40:
    v39 += 21;
    if ( v39 == v40 )
      goto LABEL_41;
  }
  if ( *(_DWORD *)(*(_DWORD *)(v47 + 48) + 92) != 1 )
  {
    ++v4[10];
    v49 = *(_DWORD *)(v47 + 48);
    if ( *(_DWORD *)(v49 + 92) != 2 || (v50 = v49 + 96, v42 == v49 + 96) && (v50 = v49 + 396, v42 == v49 + 396) )
      v50 = 0;
    if ( !(*(int (__fastcall **)(_DWORD *, int, int, int))(*v4 + 12))(v4, v47, v50, v42) )
    {
      --v4[10];
      rnd::Tile::Unspawn(v48);
      goto LABEL_39;
    }
  }
  rnd::ListElem::~ListElem((rnd::ListElem *)v67);
  v10 = 1;
LABEL_42:
  std::vector<std::pair<rnd::Exit const*,rnd::ListElem>>::~vector((void **)&v57);
  return v10;
}


// ===== 490304 rnd::Rule::Impl::OneStep(rnd::Tile *,rnd::Exit const*,rnd::Exit const*) =====
int __fastcall rnd::Rule::Impl::OneStep(_DWORD *a1, int a2, int a3, int a4)
{
  unsigned int v5; // r1
  int v6; // r8
  int v7; // r6
  int v8; // r9
  int *v9; // r2
  int *v10; // r6
  int v11; // r8
  int v12; // r4
  rnd::Tile *v13; // r10
  int v14; // r4
  int *v19; // [sp+20h] [bp-12Ch] BYREF
  int *v20; // [sp+24h] [bp-128h]
  int v21; // [sp+28h] [bp-124h]
  int v22; // [sp+2Ch] [bp-120h] BYREF
  int v23; // [sp+30h] [bp-11Ch] BYREF
  _BYTE v24[80]; // [sp+34h] [bp-118h] BYREF
  _BYTE v25[80]; // [sp+84h] [bp-C8h] BYREF
  char v26[80]; // [sp+D4h] [bp-78h] BYREF
  char s[32]; // [sp+124h] [bp-28h] BYREF

  v5 = *(_DWORD *)(a3 + 40);
  v6 = 0;
  v19 = nullptr;
  v20 = nullptr;
  v21 = 0;
  std::vector<std::pair<rnd::Exit const*,rnd::ListElem>>::reserve((int *)&v19, v5);
  if ( *(int *)(a3 + 40) > 0 )
  {
    v7 = a3;
    do
    {
      v8 = *(_DWORD *)(v7 + 44);
      rnd::ListElem::ListElem((rnd::ListElem *)v26);
      v23 = v8;
      rnd::ListElem::ListElem((rnd::ListElem *)v24, (const rnd::ListElem *)v26);
      std::vector<std::pair<rnd::Exit const*,rnd::ListElem>>::push_back((int *)&v19, &v23);
      rnd::ListElem::~ListElem((rnd::ListElem *)v24);
      rnd::ListElem::~ListElem((rnd::ListElem *)v26);
      ++v6;
      v7 += 4;
    }
    while ( *(_DWORD *)(a3 + 40) > v6 );
  }
  v22 = 0;
  (*(void (__fastcall **)(_DWORD *, int **, int *))(*a1 + 8))(a1, &v19, &v22);
  v9 = v20;
  v10 = v19;
  if ( !(1022611261 * (v20 - v19)) )
  {
    sprintf(s, "[%d]", *(_DWORD *)(a1[1] + 108));
    v10 = v19;
    v9 = v20;
  }
  if ( v9 != v10 )
  {
    v11 = a3;
    do
    {
      v12 = *v10;
      rnd::ListElem::ListElem((rnd::ListElem *)v25, (const rnd::ListElem *)(v10 + 1));
      v13 = (rnd::Tile *)rnd::Tile::TrySpawn(a2, a4, v11, v12, (rnd::ListElem *)v25);
      if ( v13 )
      {
        if ( (*(int (__fastcall **)(_DWORD *, rnd::Tile *, int))(*a1 + 16))(a1, v13, v12) )
        {
          v14 = 1;
          rnd::ListElem::~ListElem((rnd::ListElem *)v25);
          goto LABEL_13;
        }
        rnd::Tile::Unspawn(v13);
      }
      rnd::ListElem::~ListElem((rnd::ListElem *)v25);
      v10 += 21;
    }
    while ( v10 != v20 );
  }
  v14 = 0;
LABEL_13:
  std::vector<std::pair<rnd::Exit const*,rnd::ListElem>>::~vector((void **)&v19);
  return v14;
}


// ===== 490520 rnd::BlockSearch::BlockSearch(rnd::BlockSearch const&) =====
std::string *__fastcall rnd::BlockSearch::BlockSearch(std::string *this, const std::string *a2)
{
  std::string::string(this, a2);
  std::string::string(this + 1, a2 + 1);
  std::string::string(this + 2, a2 + 2);
  return this;
}


// ===== 490550 std::find_if<rnd::ListElem *,rnd::BlockSearch>(rnd::ListElem *,rnd::ListElem *,rnd::BlockSearch) =====
_DWORD *__fastcall std::find_if<rnd::ListElem *,rnd::BlockSearch>(_DWORD *a1, int a2, const std::string *a3)
{
  _DWORD *v5; // r6
  std::string v7[3]; // [sp+4h] [bp-50h] BYREF

  rnd::BlockSearch::BlockSearch(v7, a3);
  v5 = std::priv::__find_if<rnd::ListElem *,rnd::BlockSearch>(a1, a2, v7);
  rnd::BlockSearch::~BlockSearch((rnd::BlockSearch *)v7);
  return v5;
}


// ===== 4905d0 rnd::ListRule::Find(char const*,char const*,char const*,bool) =====
rnd::ListRule *__fastcall rnd::ListRule::Find(
        rnd::ListRule *this,
        const char *a2,
        char *a3,
        char *a4,
        char *a5,
        char a6)
{
  char *v10; // r2
  int v11; // r9
  _DWORD *v12; // r10
  _DWORD *v13; // r10
  std::string v15[3]; // [sp+Ch] [bp-50h] BYREF

  rnd::ListElem::ListElem(this);
  v10 = a4;
  v11 = *((_DWORD *)a2 + 8);
  v12 = *((_DWORD **)a2 + 7);
  rnd::BlockSearch::BlockSearch(v15, a3, v10, a5);
  v13 = std::find_if<rnd::ListElem *,rnd::BlockSearch>(v12, v11, v15);
  rnd::BlockSearch::~BlockSearch((rnd::BlockSearch *)v15);
  if ( v13 != *((_DWORD **)a2 + 8) )
  {
    rnd::ListElem::operator=((int)this, (int)v13);
    if ( a6 )
    {
      if ( !a2[24] )
        std::vector<rnd::ListElem>::_M_erase((int)(a2 + 28), (int)v13);
    }
  }
  return this;
}


// ===== 4906bc rnd::RoomPool::Find(std::string) =====
int __fastcall rnd::RoomPool::Find(rnd::RoomPool *this, std::string a2)
{
  rnd::RandomGenerator *v2; // r8
  unsigned int v4; // r0
  int v5; // r7
  std::string v7; // [sp+4h] [bp-1Ch] BYREF

  v2 = *((rnd::RandomGenerator **)this + 4);
  std::string::string(&v7, (const std::string *)a2._M_buffers._M_end_of_storage);
  v4 = rnd::RandomGenerator::Hash(v2, (unsigned __int8 *)v7._M_start_of_storage._M_data);
  v5 = rnd::RoomPool::Find(this, v4);
  if ( (std::string *)v7._M_start_of_storage._M_data != &v7 && v7._M_start_of_storage._M_data )
  {
    if ( (unsigned int)(v7._M_buffers._M_end_of_storage - v7._M_start_of_storage._M_data) > 0x80 )
      CustomFree(v7._M_start_of_storage._M_data);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(
        v7._M_start_of_storage._M_data,
        v7._M_buffers._M_end_of_storage - v7._M_start_of_storage._M_data);
  }
  return v5;
}


// ===== 490768 std::vector<std::string,std::allocator<std::string>>::_M_insert_overflow_aux(std::string *,std::string const&,std::__false_type const&,uint,bool) [clone] =====
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


// ===== 490904 rnd::RoomPool::ComputeSizeOfRules(void) =====
int __fastcall rnd::RoomPool::ComputeSizeOfRules(rnd::RoomPool *this)
{
  int v2; // r1
  int v3; // r0
  int v4; // r7
  int v5; // r12
  int v6; // r4
  int v7; // r2
  int v8; // r3
  int v9; // r2
  int v10; // r6
  int v11; // r6
  unsigned int v12; // r4
  unsigned int v13; // r12
  unsigned int v14; // r1
  int v15; // r3
  char *v16; // r0
  int v17; // r3
  unsigned int *v18; // r1
  size_t v19; // r1
  unsigned int v21; // r2
  unsigned int v22; // r3
  unsigned int *v23; // r0
  unsigned int *v24; // r11
  unsigned int *v25; // r7
  unsigned int *v26; // r7
  size_t v27; // r1
  unsigned int *__p; // [sp+0h] [bp-14h]
  unsigned int *v29; // [sp+4h] [bp-10h]
  unsigned int *v30; // [sp+8h] [bp-Ch] BYREF
  size_t v31[2]; // [sp+Ch] [bp-8h] BYREF

  v2 = *((_DWORD *)this + 1);
  v3 = *((_DWORD *)this + 2);
  v4 = -1431655765 * ((v3 - v2) >> 3);
  if ( v4 )
  {
    v7 = 0;
    v8 = 0;
    v5 = 0;
    v6 = 0;
    do
    {
      v9 = v2 + 24 * v7;
      ++v8;
      v6 += *(_DWORD *)(v9 + 16);
      v5 += *(_DWORD *)(v9 + 12);
      v7 = v8;
    }
    while ( v8 != v4 );
  }
  else
  {
    v5 = 0;
    v6 = 0;
  }
  v10 = *(_DWORD *)this;
  if ( *(_DWORD *)this < v5 || v10 > v6 )
    return 0;
  v11 = v10 - v5;
  if ( v11 <= 0 )
    return 1;
  v12 = 0;
  __p = nullptr;
  v29 = nullptr;
  v30 = nullptr;
  if ( -1431655765 * ((v3 - v2) >> 3) )
  {
    v13 = 0;
    do
    {
      if ( *(_DWORD *)(v2 + 24 * v13 + 20) < *(_DWORD *)(v2 + 24 * v13 + 16) )
      {
        if ( v29 == v30 )
        {
          v21 = v29 - __p;
          if ( v21 )
            v22 = 2 * v21;
          else
            v22 = 1;
          if ( v22 > 0x3FFFFFFF || v21 > v22 )
            v22 = 0x3FFFFFFF;
          v31[0] = v22;
          v23 = (unsigned int *)std::allocator<int>::_M_allocate((int)&v30, v22, v31);
          v24 = v23;
          if ( v29 == __p )
            v25 = v23;
          else
            v25 = (unsigned int *)((char *)memmove(v23, __p, (char *)v29 - (char *)__p) + (char *)v29 - (char *)__p);
          *v25 = v12;
          v26 = v25 + 1;
          if ( __p )
          {
            v27 = ((char *)v30 - (char *)__p) & 0xFFFFFFFC;
            if ( v27 > 0x80 )
              CustomFree(__p);
            else
              __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(__p, v27);
          }
          v2 = *((_DWORD *)this + 1);
          v3 = *((_DWORD *)this + 2);
          __p = v24;
          v29 = v26;
          v30 = &v24[v31[0]];
        }
        else
        {
          *v29 = v12;
          v2 = *((_DWORD *)this + 1);
          v3 = *((_DWORD *)this + 2);
          ++v29;
        }
      }
      v13 = ++v12;
    }
    while ( -1431655765 * ((v3 - v2) >> 3) > v12 );
  }
  do
  {
    while ( 1 )
    {
      v14 = lrand48() % (unsigned int)(v29 - __p);
      v15 = *((_DWORD *)this + 1) + 24 * __p[v14];
      ++*(_DWORD *)(v15 + 20);
      v16 = (char *)&__p[v14];
      v17 = *((_DWORD *)this + 1) + 24 * *(_DWORD *)v16;
      if ( *(_DWORD *)(v17 + 20) == *(_DWORD *)(v17 + 16) )
        break;
      if ( !--v11 )
        goto LABEL_20;
    }
    v18 = (unsigned int *)(v16 + 4);
    if ( v16 + 4 != (char *)v29 )
    {
      memmove(v16, v18, (char *)v29 - (char *)v18);
      v18 = v29;
    }
    --v11;
    v29 = v18 - 1;
  }
  while ( v11 );
LABEL_20:
  if ( !__p )
    return 1;
  v19 = ((char *)v30 - (char *)__p) & 0xFFFFFFFC;
  if ( v19 > 0x80 )
    CustomFree(__p);
  else
    __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(__p, v19);
  return 1;
}


// ===== 490bdc rnd::Rule::LoadFromXml(TiXmlNode *) =====
int __fastcall rnd::Rule::LoadFromXml(rnd::Rule *this, TiXmlNode *a2)
{
  TiXmlNode *v2; // r7
  TiXmlElement *v4; // r0
  char *v5; // r6
  TiXmlNode *v6; // r10
  char *i; // r7
  TiXmlElement *v8; // r0
  const char *v9; // r0
  const char *v10; // r5
  size_t v11; // r0
  TiXmlElement *v12; // r0
  char *v13; // r10
  rnd::RandomGenerator *v14; // r6
  int v15; // r0
  std::string *M_data; // r3
  int v17; // r5
  int v18; // r7
  int v19; // r6
  int v20; // r0
  int v21; // r0
  unsigned int v22; // r5
  int v23; // r0
  int v24; // r0
  _DWORD *v25; // r0
  int v26; // r0
  char *v28; // r0
  int v29; // r5
  char *v30; // r0
  int v31; // r0
  rnd::RandomGenerator *v32; // r10
  _BOOL4 v33; // r10
  rnd::RandomGenerator *v34; // r10
  int v35; // r2
  rnd::RandomGenerator *v36; // r6
  _BOOL4 valid; // r6
  rnd::RandomGenerator *App; // r6
  char v39[4]; // [sp+38h] [bp-FCh] BYREF
  char v40[4]; // [sp+40h] [bp-F4h] BYREF
  std::string v41; // [sp+54h] [bp-E0h] BYREF
  std::string v42; // [sp+6Ch] [bp-C8h] BYREF
  std::string v43; // [sp+84h] [bp-B0h] BYREF
  std::string v44; // [sp+9Ch] [bp-98h] BYREF
  std::string v45; // [sp+B4h] [bp-80h] BYREF
  std::string v46; // [sp+CCh] [bp-68h] BYREF
  std::string v47; // [sp+E4h] [bp-50h] BYREF
  std::string v48; // [sp+FCh] [bp-38h] BYREF
  std::string v49; // [sp+114h] [bp-20h] BYREF

  v2 = a2;
  if ( !a2 )
    return 0;
  v4 = (TiXmlElement *)(*(int (__fastcall **)(TiXmlNode *))(*(_DWORD *)a2 + 44))(a2);
  v5 = (char *)TiXmlElement::Attribute(v4, "name");
  if ( !v5 )
    return 0;
  std::string::string(&v49, v5);
  if ( *v49._M_start_of_storage._M_data == 35 )
  {
    if ( v49._M_start_of_storage._M_data == v49._M_finish
      || (v40[0] = 91,
          v28 = std::priv::__find_if<char const*,std::priv::_Eq_char_bound<std::char_traits<char>>>(
                  v49._M_start_of_storage._M_data,
                  (int)v49._M_finish,
                  v40),
          v28 == v49._M_finish)
      || (v29 = v28 - v49._M_start_of_storage._M_data, v28 - v49._M_start_of_storage._M_data == -1) )
    {
      v35 = *((_DWORD *)this + 1);
      *((_DWORD *)this + 27) = -1;
      v36 = *(rnd::RandomGenerator **)(v35 + 140);
      std::string::string(&v45, (int)&v49, 1u, 0xFFFFFFFF);
      valid = rnd::RandomGenerator::ValidList(v36, v45._M_start_of_storage._M_data);
      std::string::~string(&v45);
      if ( !valid )
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
            "mRoot.mApp.ValidList(listName.substr(1).c_str())",
            "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\random\\rndRule.cpp",
            322);
        }
      }
      App = (rnd::RandomGenerator *)rnd::Rule::GetApp(*((rnd::Rule **)this + 1));
      std::string::string(&v44, (int)&v49, 1u, 0xFFFFFFFF);
      *((_DWORD *)this + 26) = rnd::RandomGenerator::GetList(App, v44._M_start_of_storage._M_data);
      std::string::~string(&v44);
    }
    else
    {
      if ( v49._M_finish == v49._M_start_of_storage._M_data
        || (v39[0] = 93,
            v30 = std::priv::__find_if<char const*,std::priv::_Eq_char_bound<std::char_traits<char>>>(
                    v49._M_start_of_storage._M_data,
                    (int)v49._M_finish,
                    v39),
            v30 == v49._M_finish) )
      {
        v31 = -1;
      }
      else
      {
        v31 = v30 - v49._M_start_of_storage._M_data;
      }
      std::string::string(&v48, (int)&v49, v29 + 1, 1 - v29 + v31);
      *((_DWORD *)this + 27) = LC_API_ATOI_0(v48._M_start_of_storage._M_data);
      std::string::~string(&v48);
      v32 = *(rnd::RandomGenerator **)(*((_DWORD *)this + 1) + 140);
      std::string::string(&v47, (int)&v49, 1u, v29 - 1);
      v33 = rnd::RandomGenerator::ValidList(v32, v47._M_start_of_storage._M_data);
      std::string::~string(&v47);
      if ( !v33 )
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
            "mRoot.mApp.ValidList(listName.substr(1, bracket - 1).c_str())",
            "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\random\\rndRule.cpp",
            315);
        }
      }
      v34 = (rnd::RandomGenerator *)rnd::Rule::GetApp(*((rnd::Rule **)this + 1));
      std::string::string(&v46, (int)&v49, 1u, v29 - 1);
      *((_DWORD *)this + 26) = rnd::RandomGenerator::GetList(v34, v46._M_start_of_storage._M_data);
      std::string::~string(&v46);
    }
  }
  else
  {
    v6 = v2;
    for ( i = strchr(v5, 44); i; i = strchr(v5, 44) )
    {
      v43._M_finish = (char *)&v43;
      v43._M_start_of_storage._M_data = (char *)&v43;
      std::string::_M_range_initialize(&v43, v5, i);
      if ( !rnd::RandomGenerator::ValidBlock(
              *(rnd::RandomGenerator **)(*((_DWORD *)this + 1) + 140),
              v43._M_start_of_storage._M_data) )
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
            "mRoot.mApp.ValidBlock(s.c_str())",
            "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\random\\rndRule.cpp",
            333);
        }
      }
      std::vector<std::string>::push_back((std::string **)this + 28, &v43);
      if ( (std::string *)v43._M_start_of_storage._M_data != &v43 && v43._M_start_of_storage._M_data )
      {
        if ( (unsigned int)(v43._M_buffers._M_end_of_storage - v43._M_start_of_storage._M_data) > 0x80 )
        {
          CustomFree(v43._M_start_of_storage._M_data);
          v5 = i;
          continue;
        }
        __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(
          v43._M_start_of_storage._M_data,
          v43._M_buffers._M_end_of_storage - v43._M_start_of_storage._M_data);
      }
      v5 = i;
    }
    v2 = v6;
    if ( !rnd::RandomGenerator::ValidBlock(*(rnd::RandomGenerator **)(*((_DWORD *)this + 1) + 140), v5) )
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
          "mRoot.mApp.ValidBlock(startBlocks)",
          "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\random\\rndRule.cpp",
          337);
      }
    }
    std::string::string(&v42, v5);
    std::vector<std::string>::push_back((std::string **)this + 28, &v42);
    std::string::~string(&v42);
  }
  if ( (std::string *)v49._M_start_of_storage._M_data != &v49 && v49._M_start_of_storage._M_data )
  {
    if ( (unsigned int)(v49._M_buffers._M_end_of_storage - v49._M_start_of_storage._M_data) > 0x80 )
      CustomFree(v49._M_start_of_storage._M_data);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(
        v49._M_start_of_storage._M_data,
        v49._M_buffers._M_end_of_storage - v49._M_start_of_storage._M_data);
  }
  v8 = (TiXmlElement *)(*(int (__fastcall **)(TiXmlNode *))(*(_DWORD *)v2 + 44))(v2);
  v9 = (const char *)TiXmlElement::Attribute(v8, "exit");
  v10 = v9;
  if ( v9 )
  {
    v11 = LC_API_STRLEN_0(v9);
    std::string::_M_assign((std::string *const)((char *)this + 80), v10, &v10[v11]);
  }
  v12 = (TiXmlElement *)(*(int (__fastcall **)(TiXmlNode *))(*(_DWORD *)v2 + 44))(v2);
  v13 = (char *)TiXmlElement::Attribute(v12, "id");
  if ( v13 )
  {
    v14 = (rnd::RandomGenerator *)rnd::Rule::GetApp(*((rnd::Rule **)this + 1));
    std::string::string(&v41, v13);
    v15 = rnd::RandomGenerator::Hash(v14, (unsigned __int8 *)v41._M_start_of_storage._M_data);
    M_data = (std::string *)v41._M_start_of_storage._M_data;
    *((_DWORD *)this + 31) = v15;
    if ( M_data != &v41 )
    {
      if ( M_data )
      {
        if ( (unsigned int)(v41._M_buffers._M_end_of_storage - (char *)M_data) > 0x80 )
          CustomFree(M_data);
        else
          __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(M_data, v41._M_buffers._M_end_of_storage - (char *)M_data);
      }
    }
  }
  v17 = *((_DWORD *)v2 + 6);
  if ( v17 )
  {
    v18 = 1;
    do
    {
      v19 = *((_DWORD *)this + 3);
      v20 = rnd::Rule::NewRule((rnd::RootRule **)this, v17);
      *((_DWORD *)this + v19 + 4) = v20;
      *((_DWORD *)this + 3) = v19 + 1;
      v21 = (*(int (__fastcall **)(int, int))(*(_DWORD *)v20 + 12))(v20, v17);
      v17 = *(_DWORD *)(v17 + 60);
      v18 &= v21;
    }
    while ( v17 );
    if ( !v18 )
      return 0;
  }
  if ( *((_DWORD *)this + 31) )
  {
    v22 = 0;
    v23 = rnd::Rule::GetApp(this);
    if ( (*(_DWORD *)(v23 + 284) - *(_DWORD *)(v23 + 280)) >> 2 )
    {
      do
      {
        v24 = rnd::Rule::GetApp(this);
        v25 = (_DWORD *)rnd::RoomPool::Find(
                          *(rnd::RoomPool **)(*(_DWORD *)(v24 + 280) + 4 * v22),
                          *((_DWORD *)this + 31));
        if ( v25 )
          rnd::RPElem::FillSizes(v25, *((_DWORD *)this + 32), *((_DWORD *)this + 33));
        v26 = rnd::Rule::GetApp(this);
        ++v22;
      }
      while ( v22 < (*(_DWORD *)(v26 + 284) - *(_DWORD *)(v26 + 280)) >> 2 );
    }
  }
  return 1;
}


// ===== 4912d0 rnd::ForceBlock::LoadFromXml(TiXmlNode *) =====
int __fastcall rnd::ForceBlock::LoadFromXml(rnd::ForceBlock *this, TiXmlNode *a2)
{
  TiXmlElement *v4; // r0

  v4 = (TiXmlElement *)(*(int (__fastcall **)(TiXmlNode *))(*(_DWORD *)a2 + 44))(a2);
  TiXmlElement::Attribute(v4, "connectFrom");
  return rnd::Rule::LoadFromXml(this, a2);
}


// ===== 49130c rnd::Path::LoadFromXml(TiXmlNode *) =====
int __fastcall rnd::Path::LoadFromXml(rnd::Path *this, TiXmlNode *a2)
{
  TiXmlElement *v5; // r0
  TiXmlElement *v6; // r0
  const char *v7; // r0
  const char *v8; // r6
  int v9; // r0
  char *v10; // r0
  char v11; // r3
  int v12; // [sp+4h] [bp-4h] BYREF

  if ( !a2 )
    return 0;
  v5 = (TiXmlElement *)(*(int (__fastcall **)(TiXmlNode *))(*(_DWORD *)a2 + 44))(a2);
  if ( !TiXmlElement::QueryIntAttribute(v5, "dontGoBack", &v12) )
  {
    v11 = v12;
    if ( v12 )
      v11 = 1;
    *((_BYTE *)this + 140) = v11;
  }
  v6 = (TiXmlElement *)(*(int (__fastcall **)(TiXmlNode *))(*(_DWORD *)a2 + 44))(a2);
  v7 = (const char *)TiXmlElement::Attribute(v6, "length");
  v8 = v7;
  if ( v7 )
  {
    v9 = LC_API_ATOI_0(v7);
    *((_DWORD *)this + 33) = v9;
    *((_DWORD *)this + 32) = v9;
    v10 = strchr(v8, 44);
    if ( v10 )
      *((_DWORD *)this + 33) = LC_API_ATOI_0(v10 + 1);
  }
  return rnd::Rule::LoadFromXml(this, a2);
}


// ===== 4913cc rnd::RootRule::LoadFromXml(TiXmlNode *) =====
// attributes: thunk
int __fastcall rnd::RootRule::LoadFromXml(rnd::Rule *this, TiXmlNode *a2)
{
  return rnd::Rule::LoadFromXml(this, a2);
}


// ===== 4913d0 rnd::Tile::TryPlaceTile(int,int) =====
int __fastcall rnd::Tile::TryPlaceTile(rnd::Tile *this, int a2, int a3)
{
  return 1;
}


// ===== 4913d8 rnd::Tile::PlaceTile(int,int,float) =====
int __fastcall rnd::Tile::PlaceTile(rnd::Tile *this, int a2, int a3, float a4)
{
  int v4; // r4
  int v5; // r6

  v4 = *((_DWORD *)this + 12);
  v5 = *((_DWORD *)this + 1);
  *((float *)this + 35) = a4;
  *((_DWORD *)this + 33) = a2;
  *((_DWORD *)this + 34) = a3;
  return (*(int (__fastcall **)(int, int, rnd::Tile *, int, int))(*(_DWORD *)v4 + 8))(v4, v5 + 8, this, a2, a3);
}


// ===== 491428 rnd::Tile::AddChild(rnd::Tile*) =====
int __fastcall rnd::Tile::AddChild(int this, rnd::Tile *a2)
{
  int v2; // r3

  v2 = *(_DWORD *)(this + 12);
  *(_DWORD *)(this + 4 * (v2 + 4)) = a2;
  *(_DWORD *)(this + 12) = v2 + 1;
  return this;
}


// ===== 491440 rnd::Tile::RemoveChild(rnd::Tile*) =====
int __fastcall rnd::Tile::RemoveChild(int this, rnd::Tile *a2)
{
  int v2; // r3
  int v3; // r2
  int v4; // r12

  v2 = *(_DWORD *)(this + 12);
  if ( v2 > 0 )
  {
    if ( *(rnd::Tile **)(this + 16) == a2 )
    {
      v3 = 0;
LABEL_8:
      *(_DWORD *)(this + 12) = v2 - 1;
      *(_DWORD *)(this + 4 * (v3 + 4)) = *(_DWORD *)(this + 4 * (v2 + 3));
    }
    else
    {
      v4 = this;
      v3 = 0;
      while ( 1 )
      {
        ++v3;
        v4 += 4;
        if ( v3 == v2 )
          break;
        if ( *(rnd::Tile **)(v4 + 16) == a2 )
          goto LABEL_8;
      }
    }
  }
  return this;
}


// ===== 4914ac rnd::Tile::Print(void) =====
int __fastcall rnd::Tile::Print(int this)
{
  int v1; // r6
  int v2; // r5
  int v3; // r4

  v1 = this;
  if ( *(int *)(this + 12) > 0 )
  {
    v2 = this;
    v3 = 0;
    do
    {
      this = rnd::Tile::Print(*(rnd::Tile **)(v2 + 16));
      ++v3;
      v2 += 4;
    }
    while ( *(_DWORD *)(v1 + 12) > v3 );
  }
  return this;
}


// ===== 4914e8 rnd::Tile::~Tile() =====
void __fastcall rnd::Tile::~Tile(rnd::Tile *this)
{
  rnd::ListElem::~ListElem((rnd::Tile *)((char *)this + 52));
}


// ===== 491500 rnd::Tile::~Tile() =====
void __fastcall rnd::Tile::~Tile(rnd::Tile *this)
{
  rnd::ListElem::~ListElem((rnd::Tile *)((char *)this + 52));
}


// ===== 491518 rnd::Tile::SetModuleMVXProperties(Module *) =====
void __fastcall rnd::Tile::SetModuleMVXProperties(rnd::Tile *this, Module *a2)
{
  int v4; // r5
  int v5; // r0
  signed int v6; // r7
  TiXmlElement *v7; // r0
  TiXmlElement *v8; // r7
  const char *v9; // r0
  const char *v10; // r0
  const char *v11; // r0
  const char *v12; // r0
  const char *v13; // r0
  const char *v14; // r0
  void *p; // [sp+0h] [bp-A4h]
  _BYTE v16[4]; // [sp+Ch] [bp-98h] BYREF
  char v17[4]; // [sp+10h] [bp-94h] BYREF
  char v18[4]; // [sp+14h] [bp-90h] BYREF
  int v19; // [sp+18h] [bp-8Ch] BYREF
  _DWORD v20[18]; // [sp+1Ch] [bp-88h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v21; // [sp+64h] [bp-40h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v22; // [sp+8Ch] [bp-18h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v23; // [sp+A4h] [bp+0h] BYREF

  std::operator+<char>((std::string *)&v23, *((_DWORD *)this + 12) + 28, "/mvx/");
  std::operator+<char>((std::string *)&v22, *((_DWORD *)this + 12) + 4, ".mvx");
  std::string::_M_append((std::string *)&v23, v22._M_start_of_storage._M_data, v22._M_finish);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v22);
  v4 = *(_DWORD *)(dword_99F73C + 52);
  v5 = (*(int (__fastcall **)(int, char *, _DWORD, _DWORD))(*(_DWORD *)v4 + 136))(
         v4,
         v23._M_start_of_storage._M_data,
         0,
         0);
  v19 = v5;
  if ( v5 )
  {
    v6 = (*(int (__fastcall **)(int))(*(_DWORD *)v5 + 8))(v5);
    p = LC_API_MALLOC_0(v6);
    (*(void (__fastcall **)(int, void *, signed int, signed int))(*(_DWORD *)v19 + 24))(v19, p, v6, v6 >> 31);
    (*(void (__fastcall **)(int, int *))(*(_DWORD *)v4 + 120))(v4, &v19);
    TiXmlDocument::TiXmlDocument((TiXmlDocument *)v20);
    TiXmlDocument::LoadFromBuffer(v20, p, v6, 0);
    *(_DWORD *)v18 = v20;
    TiXmlHandle::Child((TiXmlHandle *)v17, v18, "Module");
    TiXmlHandle::Child((TiXmlHandle *)v16, v17, "GameObject");
    v7 = (TiXmlElement *)TiXmlHandle::ToElement((TiXmlHandle *)v16);
    v8 = v7;
    if ( v7 )
    {
      v9 = (const char *)TiXmlElement::Attribute(v7, "scale");
      PropertyMap::SetProperty((Module *)((char *)a2 + 4), "scale", v9);
      v10 = (const char *)TiXmlElement::Attribute(v8, "xrefmax");
      PropertyMap::SetProperty((Module *)((char *)a2 + 4), "xrefmax", v10);
      v11 = (const char *)TiXmlElement::Attribute(v8, "xrefobject");
      PropertyMap::SetProperty((Module *)((char *)a2 + 4), "xrefobject", v11);
      v12 = (const char *)TiXmlElement::Attribute(v8, "dae");
      PropertyMap::SetProperty((Module *)((char *)a2 + 4), "dae", v12);
      v13 = (const char *)TiXmlElement::Attribute(v8, "fog_color");
      PropertyMap::SetProperty((Module *)((char *)a2 + 4), "fog_color", v13);
      v14 = (const char *)TiXmlElement::Attribute(v8, "is_solid");
      PropertyMap::SetProperty((Module *)((char *)a2 + 4), "is_solid", v14);
    }
    free(p);
    v20[0] = off_96C630;
    std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v21);
    TiXmlNode::~TiXmlNode((TiXmlNode *)v20);
    std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v23);
  }
  else
  {
    std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v23);
  }
}


// ===== 4917f8 rnd::Tile::Tile(rnd::RandomGenerator &,rnd::Block &,rnd::Tile*,rnd::ListElem &) =====
rnd::Tile *__fastcall rnd::Tile::Tile(
        rnd::Tile *this,
        rnd::RandomGenerator *a2,
        rnd::Block *a3,
        rnd::Tile *a4,
        rnd::ListElem *a5)
{
  char *v5; // r5
  int v7; // r0

  v5 = (char *)this + 52;
  *((_DWORD *)this + 1) = a2;
  *((_DWORD *)this + 2) = a4;
  *((_DWORD *)this + 12) = a3;
  rnd::ListElem::ListElem((rnd::Tile *)((char *)this + 52));
  v7 = *((_DWORD *)this + 2);
  *((_DWORD *)this + 3) = 0;
  if ( v7 )
    rnd::Tile::AddChild(v7, this);
  *(_DWORD *)this = *(_DWORD *)(*((_DWORD *)this + 12) + 24);
  rnd::ListElem::operator=((int)v5, (int)a5);
  return this;
}


// ===== 491850 rnd::Tile::Tile(rnd::RandomGenerator &,rnd::Block &,rnd::Tile*,rnd::ListElem &) =====
rnd::Tile *__fastcall rnd::Tile::Tile(
        rnd::Tile *this,
        rnd::RandomGenerator *a2,
        rnd::Block *a3,
        rnd::Tile *a4,
        rnd::ListElem *a5)
{
  char *v5; // r5
  int v7; // r0

  v5 = (char *)this + 52;
  *((_DWORD *)this + 1) = a2;
  *((_DWORD *)this + 2) = a4;
  *((_DWORD *)this + 12) = a3;
  rnd::ListElem::ListElem((rnd::Tile *)((char *)this + 52));
  v7 = *((_DWORD *)this + 2);
  *((_DWORD *)this + 3) = 0;
  if ( v7 )
    rnd::Tile::AddChild(v7, this);
  *(_DWORD *)this = *(_DWORD *)(*((_DWORD *)this + 12) + 24);
  rnd::ListElem::operator=((int)v5, (int)a5);
  return this;
}


// ===== 4918a8 rnd::Tile::Unspawn(void) =====
void __fastcall rnd::Tile::Unspawn(rnd::Tile *this)
{
  int v2; // r0
  rnd::ListElem **v3; // r0

  v2 = *((_DWORD *)this + 2);
  if ( v2 )
    rnd::Tile::RemoveChild(v2, this);
  (*(void (__fastcall **)(_DWORD, int, rnd::Tile *, _DWORD, _DWORD))(**((_DWORD **)this + 12) + 12))(
    *((_DWORD *)this + 12),
    *((_DWORD *)this + 1) + 8,
    this,
    *((_DWORD *)this + 33),
    *((_DWORD *)this + 34));
  rnd::Tile::RemoveNeighbors(this);
  v3 = *((rnd::ListElem ***)this + 13);
  if ( v3 )
    rnd::ListRule::Replace(v3, (rnd::Tile *)((char *)this + 52));
  rnd::Tile::~Tile(this);
  CustomFree(this);
}


// ===== 491928 rnd::Tile::RemoveNeighbors(void) =====
void __fastcall rnd::Tile::RemoveNeighbors(rnd::Tile *this)
{
  int i; // r3
  rnd::Tile *v3; // r5

  for ( i = *((_DWORD *)this + 3); i > 0; i = *((_DWORD *)this + 3) )
  {
    *((_DWORD *)this + 3) = i - 1;
    v3 = *((rnd::Tile **)this + i + 3);
    rnd::Tile::RemoveNeighbors(v3);
    rnd::Tile::Unspawn(v3);
  }
}


// ===== 49196c rnd::Tile::NewRoot(rnd::RandomGenerator &,rnd::Block &,rnd::ListElem &) =====
rnd::Tile *__fastcall rnd::Tile::NewRoot(rnd::Tile *this, rnd::RandomGenerator *a2, rnd::Block *a3, rnd::ListElem *a4)
{
  rnd::Tile *v7; // r4

  v7 = (rnd::Tile *)operator new(0x90u, 0);
  rnd::Tile::Tile(v7, this, a2, nullptr, a3);
  return v7;
}


// ===== 4919b0 rnd::Tile::Spawn(rnd::Block &,int,int,float,rnd::ListElem &) =====
rnd::Tile *__fastcall rnd::Tile::Spawn(
        rnd::RandomGenerator **this,
        rnd::Block *a2,
        int a3,
        int a4,
        float a5,
        rnd::ListElem *a6)
{
  rnd::Tile *v10; // r5
  int v11; // r10
  _DWORD *v12; // r6
  _DWORD *v13; // r8
  int v14; // r7
  const void *v15; // r0
  const void *v16; // r1
  size_t v17; // r2
  const void *v18; // r0
  const void *v19; // r1
  size_t v20; // r2

  v10 = (rnd::Tile *)operator new(0x90u, 0);
  rnd::Tile::Tile(v10, *(this + 1), a2, (rnd::Tile *)this, a6);
  v11 = *(_DWORD *)a6;
  if ( *(_DWORD *)a6 )
  {
    v12 = *(_DWORD **)(v11 + 28);
    v13 = *(_DWORD **)(v11 + 32);
    if ( v12 != v13 )
    {
      v14 = *(unsigned __int8 *)(v11 + 24);
      while ( 1 )
      {
        if ( !v14 )
        {
          v15 = (const void *)v12[12];
          v16 = *((const void **)a6 + 12);
          v17 = v12[11] - (_DWORD)v15;
          if ( v17 == *((_DWORD *)a6 + 11) - (_DWORD)v16 && !memcmp(v15, v16, v17) )
          {
            v18 = (const void *)v12[6];
            v19 = *((const void **)a6 + 6);
            v20 = v12[5] - (_DWORD)v18;
            if ( v20 == *((_DWORD *)a6 + 5) - (_DWORD)v19 && !memcmp(v18, v19, v20) )
              break;
          }
        }
        v12 += 20;
        if ( v12 == v13 )
          goto LABEL_11;
      }
      std::vector<rnd::ListElem>::_M_erase(v11 + 28, (int)v12);
    }
  }
LABEL_11:
  rnd::Tile::PlaceTile(v10, a3, a4, a5);
  return v10;
}


// ===== 491ab0 rnd::Tile::TrySpawn(rnd::Exit const*,rnd::Exit const*,rnd::Exit const*,rnd::ListElem &) =====
rnd::Tile *__fastcall rnd::Tile::TrySpawn(int a1, int a2, int a3, int a4, rnd::ListElem *a5)
{
  unsigned __int8 *v7; // r1
  int v8; // r7
  int v9; // r6
  float v10; // r8
  float v11; // r10
  rnd::Tile *result; // r0

  v7 = (unsigned __int8 *)&rnd::Direction::sDirections + 16 * rnd::DIRECTION_OPPOSITES[**(_DWORD **)(a4 + 20)] + 8;
  v8 = (*v7 | (v7[1] << 8) | (v7[2] << 16) | (v7[3] << 24)) + *(_DWORD *)(a1 + 132) - *(_DWORD *)(a4 + 8);
  v9 = (v7[4] | (v7[5] << 8) | (v7[6] << 16) | (v7[7] << 24)) + *(_DWORD *)(a1 + 136) - *(_DWORD *)(a4 + 12);
  v10 = *(float *)(a1 + 140);
  if ( a3 )
  {
    v8 += *(_DWORD *)(a3 + 8);
    v9 += *(_DWORD *)(a3 + 12);
    v10 = v10 + *(float *)(a3 + 16);
  }
  v11 = *(float *)(a4 + 16);
  result = (rnd::Tile *)(*(int (__fastcall **)(_DWORD, int, int, int))(**(_DWORD **)(a4 + 4) + 16))(
                          *(_DWORD *)(a4 + 4),
                          *(_DWORD *)(a1 + 4) + 8,
                          v8,
                          v9);
  if ( result )
    return rnd::Tile::Spawn((rnd::RandomGenerator **)a1, *(rnd::Block **)(a4 + 4), v8, v9, v10 - v11, a5);
  return result;
}


// ===== 491be4 `global constructor keyed to'.._.._sources_Game_random_rndTile.cpp =====
int `global constructor keyed to'.._.._sources_Game_random_rndTile.cpp()
{
  int result; // r0

  result = `guard variable for'Singleton<PlayerStatManager>::s_inst;
  dword_9A632C = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9A6328 = 1056964608;
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


// ===== 491cc0 std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(char const*,char const*) [clone] =====
_DWORD *__fastcall std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
        _DWORD *a1,
        _BYTE *a2)
{
  _BYTE *v2; // r12
  _BYTE *v4; // r0
  size_t v5; // r5
  size_t v6; // r2
  char *v8; // r3
  int v10; // r1

  v2 = (_BYTE *)a1[4];
  v4 = (_BYTE *)a1[5];
  v5 = a2 - "";
  v6 = v2 - v4;
  if ( a2 - "" <= (unsigned int)(v2 - v4) )
  {
    if ( v5 )
    {
      memcpy(v4, "", v5);
      v4 = (_BYTE *)a1[5];
      v2 = (_BYTE *)a1[4];
      v8 = &v4[v5];
      if ( &v4[v5] == v2 )
        return a1;
    }
    else
    {
      v8 = v4;
      if ( v4 == v2 )
        return a1;
    }
    v4[v5] = *v2;
    a1[4] += v8 - v2;
    return a1;
  }
  if ( v6 )
  {
    memcpy(v4, "", v6);
    v10 = a1[4] - a1[5];
  }
  else
  {
    v10 = 0;
  }
  std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_append(
    a1,
    &aLastMenuMultil[v10 + 56],
    a2);
  return a1;
}


// ===== 491d90 rnd::Tile::SaveAsModuleXML(TiXmlElement *,int) =====
int __fastcall rnd::Tile::SaveAsModuleXML(const char **this, TiXmlElement *a2, int a3)
{
  const char *v6; // r2
  size_t v7; // r0
  int v8; // r11
  size_t v9; // r0
  int v10; // r3
  char *v11; // r2
  char *v12; // r3
  unsigned int v13; // r11
  int v14; // r3
  int v15; // r1
  size_t v16; // r0
  size_t v17; // r0
  rnd::Tile *v18; // r10
  int v19; // r6
  int v20; // r0
  char *v22; // r10
  char *v24; // r1
  char *v25; // r0
  std::priv::_String_base<char,std::allocator<char> > v26; // [sp+34h] [bp-598h] BYREF
  const char *v27; // [sp+54h] [bp-578h]
  char v28[96]; // [sp+450h] [bp-17Ch] BYREF
  char v29[92]; // [sp+4B4h] [bp-118h] BYREF
  char v30[88]; // [sp+518h] [bp-B4h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v31; // [sp+57Ch] [bp-50h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v32; // [sp+594h] [bp-38h] BYREF
  void *v33[5]; // [sp+5ACh] [bp-20h] BYREF
  void *p; // [sp+5C0h] [bp-Ch]

  Module::Module((int)&v26);
  v27 = "Module";
  PropertyMap::InitProperties((PropertyMap *)&v26._M_buffers._M_static_buf[4]);
  PropertyMap::LoadDefaultProperties((PropertyMap *)&v26._M_buffers._M_static_buf[4]);
  v6 = *this;
  LOBYTE(v33[0]) = 0;
  v33[4] = v33;
  p = v33;
  sprintf(v30, "%s_%d", v6, a3);
  v7 = LC_API_STRLEN_0(v30);
  std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_append(
    v33,
    v30,
    &v30[v7]);
  PropertyMap::SetProperty((PropertyMap *)&v26._M_buffers._M_static_buf[4], "name", (const char *)p);
  PropertyMap::SetProperty((PropertyMap *)&v26._M_buffers._M_static_buf[4], "gametype", "Module");
  std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
    v33,
    "");
  v8 = (int)*(this + 12);
  sprintf(
    v29,
    "%f,%f,%f",
    (float)((float)((float)(int)*(this + 33) + (float)((float)(*(_DWORD *)(v8 + 84) - 1) * 0.5)) * *(float *)(v8 + 76)),
    (float)((float)((float)(int)*(this + 34) + (float)((float)(*(_DWORD *)(v8 + 88) - 1) * 0.5))
          * COERCE_FLOAT(*(_DWORD *)(v8 + 80) + 0x80000000)),
    *((float *)this + 35));
  v9 = LC_API_STRLEN_0(v29);
  std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_append(
    v33,
    v29,
    &v29[v9]);
  PropertyMap::SetProperty((PropertyMap *)&v26._M_buffers._M_static_buf[4], "position", (const char *)p);
  rnd::Tile::SetModuleMVXProperties((rnd::Tile *)this, (Module *)&v26);
  std::string::string((std::string *)&v32, "data/");
  std::string::_M_append((std::string *)&v32, *((char **)*(this + 12) + 18), *((char **)*(this + 12) + 17));
  v10 = (int)*(this + 12);
  v11 = *(char **)(v10 + 48);
  v12 = *(char **)(v10 + 44);
  if ( v12 == v11 || (unsigned int)(v12 - v11) <= 4 )
    goto LABEL_2;
  if ( v12 == v11 )
    goto LABEL_23;
  v22 = v11 + 1;
LABEL_20:
  while ( *(v22 - 1) != 100 )
  {
    if ( v12 == v22++ )
      goto LABEL_23;
  }
  v24 = v22;
  if ( v12 == v22 )
  {
LABEL_23:
    v24 = v12;
  }
  else
  {
    v25 = "ta/";
    while ( 1 )
    {
      if ( *v24 != *(v25 - 1) )
      {
        ++v22;
        goto LABEL_20;
      }
      if ( v25 == "" )
        break;
      ++v24;
      ++v25;
      if ( v24 == v12 )
        goto LABEL_24;
    }
    v24 = v22 - 1;
  }
LABEL_24:
  if ( v12 == v24 )
LABEL_2:
    v13 = 4;
  else
    v13 = v24 - v11 + 5;
  std::string::_M_append((std::string *)&v32, "/", "");
  v14 = (int)*(this + 12);
  v31._M_finish = (char *)&v31;
  v31._M_start_of_storage._M_data = (char *)&v31;
  v15 = *(_DWORD *)(v14 + 48);
  if ( v13 > *(_DWORD *)(v14 + 44) - v15 )
    __ZSt24__stl_throw_out_of_rangePKc_veneer("basic_string");
  else
    std::string::_M_range_initialize((std::string *)&v31, (const char *)(v15 + v13), *(const char **)(v14 + 44));
  std::string::_M_append((std::string *)&v32, v31._M_start_of_storage._M_data, v31._M_finish);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v31);
  if ( *(this + 25) != *(this + 24) )
  {
    std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
      v33,
      "");
    sprintf(v28, "%s%s%s", v32._M_start_of_storage._M_data, "/mgp/", *(this + 25));
    v16 = LC_API_STRLEN_0(v28);
    std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_append(
      v33,
      v28,
      &v28[v16]);
    PropertyMap::SetProperty((PropertyMap *)&v26._M_buffers._M_static_buf[4], "mgp", (const char *)p);
  }
  if ( *(this + 31) != *(this + 30) )
  {
    std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
      v33,
      "");
    sprintf(v28, "%s%s%s", v32._M_start_of_storage._M_data, "/mvp/", *(this + 31));
    v17 = LC_API_STRLEN_0(v28);
    std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_append(
      v33,
      v28,
      &v28[v17]);
    PropertyMap::SetProperty((PropertyMap *)&v26._M_buffers._M_static_buf[4], "mvp", (const char *)p);
  }
  PropertyMap::SavePropertiesToXML((PropertyMap *)&v26._M_buffers._M_static_buf[4], a2, nullptr);
  if ( (int)*(this + 3) > 0 )
  {
    v18 = (rnd::Tile *)this;
    v19 = 0;
    v20 = a3;
    do
    {
      v20 = rnd::Tile::SaveAsModuleXML(*((rnd::Tile **)v18 + 4), a2, v20 + 1);
      ++v19;
      v18 = (rnd::Tile *)((char *)v18 + 4);
    }
    while ( (int)*(this + 3) > v19 );
    a3 = v20;
  }
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v32);
  if ( p != v33 && p )
    GlitchFree(p);
  Module::~Module(&v26);
  return a3;
}


// ===== 4922e0 AnimatedFX::AnimatedFX(int) =====
void __fastcall AnimatedFX::AnimatedFX(AnimatedFX *this, int a2)
{
  *((_DWORD *)this + 2) = a2;
  *((_DWORD *)this + 7) = -1;
  *((_DWORD *)this + 8) = 1065353216;
  *((_DWORD *)this + 20) = 0;
  *(_DWORD *)this = off_969CB8;
  *((_BYTE *)this + 36) = 1;
  *((_DWORD *)this + 18) = 0;
  *((_DWORD *)this + 3) = 0;
  *((_DWORD *)this + 4) = 0;
  *((_DWORD *)this + 5) = 0;
  *((_BYTE *)this + 24) = 0;
  *((_DWORD *)this + 10) = 0;
  *((_DWORD *)this + 11) = 0;
  *((_BYTE *)this + 48) = 0;
  *((_BYTE *)this + 49) = 0;
  *((_BYTE *)this + 50) = 0;
  *((_DWORD *)this + 13) = 0;
  *((_DWORD *)this + 14) = 0;
  *((_DWORD *)this + 15) = 0;
  *((_DWORD *)this + 16) = 0;
  *((_DWORD *)this + 17) = 0;
  *((_BYTE *)this + 76) = 0;
}


// ===== 492374 AnimatedFX::AnimatedFX(int) =====
void __fastcall AnimatedFX::AnimatedFX(AnimatedFX *this, int a2)
{
  *((_DWORD *)this + 2) = a2;
  *((_DWORD *)this + 7) = -1;
  *((_DWORD *)this + 8) = 1065353216;
  *((_DWORD *)this + 20) = 0;
  *(_DWORD *)this = off_969CB8;
  *((_BYTE *)this + 36) = 1;
  *((_DWORD *)this + 18) = 0;
  *((_DWORD *)this + 3) = 0;
  *((_DWORD *)this + 4) = 0;
  *((_DWORD *)this + 5) = 0;
  *((_BYTE *)this + 24) = 0;
  *((_DWORD *)this + 10) = 0;
  *((_DWORD *)this + 11) = 0;
  *((_BYTE *)this + 48) = 0;
  *((_BYTE *)this + 49) = 0;
  *((_BYTE *)this + 50) = 0;
  *((_DWORD *)this + 13) = 0;
  *((_DWORD *)this + 14) = 0;
  *((_DWORD *)this + 15) = 0;
  *((_DWORD *)this + 16) = 0;
  *((_DWORD *)this + 17) = 0;
  *((_BYTE *)this + 76) = 0;
}


// ===== 492408 AnimatedFX::~AnimatedFX() =====
void __fastcall AnimatedFX::~AnimatedFX(AnimatedFX *this)
{
  int v1; // r1

  v1 = *((_DWORD *)this + 11);
  *(_DWORD *)this = off_969CB8;
  if ( v1 )
  {
    (*(void (__fastcall **)(int))(*(_DWORD *)v1 + 4))(v1);
    *((_DWORD *)this + 11) = 0;
  }
}


// ===== 49245c AnimatedFX::~AnimatedFX() =====
void __fastcall AnimatedFX::~AnimatedFX(AnimatedFX *this)
{
  int v1; // r1

  v1 = *((_DWORD *)this + 11);
  *(_DWORD *)this = off_969CB8;
  if ( v1 )
  {
    (*(void (__fastcall **)(int))(*(_DWORD *)v1 + 4))(v1);
    *((_DWORD *)this + 11) = 0;
  }
}


// ===== 4924b0 AnimatedFX::SetSpeed(float) =====
int __fastcall AnimatedFX::SetSpeed(int this, float a2)
{
  int v2; // r3

  v2 = *(_DWORD *)(this + 44);
  *(float *)(this + 32) = a2;
  if ( v2 )
    return (*(int (__fastcall **)(_DWORD))(**(_DWORD **)(v2 + 56) + 40))(*(_DWORD *)(v2 + 56));
  return this;
}


// ===== 4924e0 AnimatedFX::HasCompleted(void) =====
bool __fastcall AnimatedFX::HasCompleted(AnimatedFX *this)
{
  int v1; // r0

  v1 = (*(int (__fastcall **)(_DWORD, int, _DWORD))(**(_DWORD **)(dword_99F73C + 28) + 28))(
         *(_DWORD *)(dword_99F73C + 28),
         1885692260,
         *(_DWORD *)(*((_DWORD *)this + 11) + 8));
  return !v1 || (*(int (__fastcall **)(int))(*(_DWORD *)v1 + 248))(v1) <= 0;
}


// ===== 492550 AnimatedFX::GetAnimController(void) =====
int __fastcall AnimatedFX::GetAnimController(AnimatedFX *this)
{
  int result; // r0

  result = *((_DWORD *)this + 11);
  if ( result )
    return *(_DWORD *)(result + 56);
  return result;
}


// ===== 492560 AnimatedFX::SetEndPoint(Point3D<float> const&) =====
float __fastcall AnimatedFX::SetEndPoint(int a1, float *a2)
{
  float result; // r0
  glitch::scene::ISceneNode *v5; // r5
  float *TargetPosition; // r6
  float v7; // r7
  float v8; // r0
  int v9; // r4
  float v10; // r6
  int v11; // r0

  result = COERCE_FLOAT(VisualObject::GetSpecificNode(*(VisualObject **)(a1 + 44), 1885692260));
  v5 = (glitch::scene::ISceneNode *)LODWORD(result);
  if ( result != 0.0 )
  {
    result = *(float *)(a1 + 40);
    if ( result != 0.0 )
    {
      TargetPosition = (float *)GameObject::GetTargetPosition((GameObject *)LODWORD(result));
      v7 = a2[1] - TargetPosition[1];
      v8 = a2[2] - TargetPosition[2];
      result = sqrtf(
                 (float)((float)((float)(*a2 - *TargetPosition) * (float)(*a2 - *TargetPosition)) + (float)(v7 * v7))
               + (float)(v8 * v8));
      v9 = *((_DWORD *)v5 + 94);
      if ( v9 )
        v9 += 96;
      if ( !*(_DWORD *)(v9 + 8) )
      {
        v10 = result * 0.3;
        *(float *)(*(_DWORD *)(v9 + 4) + 44) = result * 0.3;
        v11 = (*(int (__fastcall **)(glitch::scene::ISceneNode *))(*(_DWORD *)v5 + 160))(v5);
        return COERCE_FLOAT(glitch::scene::ISceneNode::setPosition(v5, v10 * -0.5, *(float *)(v11 + 4), *(float *)(v11 + 8)));
      }
    }
  }
  return result;
}


// ===== 49267c AnimatedFX::GetAnimator(void) =====
int __fastcall AnimatedFX::GetAnimator(AnimatedFX *this)
{
  int result; // r0

  result = *((_DWORD *)this + 11);
  if ( result )
    return AnimController::GetAnim(*(AnimController **)(result + 56), 0);
  return result;
}


// ===== 492694 AnimatedFX::SetLooping(bool) =====
AnimatedFX *__fastcall AnimatedFX::SetLooping(AnimatedFX *this, int a2)
{
  AnimatedFX *v2; // r4
  int Animator; // r0
  int v5; // r0

  v2 = this;
  if ( *((_DWORD *)this + 11) )
  {
    this = (AnimatedFX *)AnimatedFX::GetAnimator(this);
    if ( this )
    {
      Animator = AnimatedFX::GetAnimator(v2);
      v5 = (*(int (__fastcall **)(int))(*(_DWORD *)Animator + 68))(Animator);
      this = (AnimatedFX *)(*(int (__fastcall **)(int, int))(*(_DWORD *)v5 + 64))(v5, a2);
    }
  }
  *((_BYTE *)v2 + 24) = a2;
  return this;
}


// ===== 4926e4 AnimatedFX::SetEnd(void) =====
AnimatedFX *__fastcall AnimatedFX::SetEnd(AnimatedFX *this)
{
  AnimatedFX *v1; // r4
  int Animator; // r0
  int v3; // r5
  int v4; // r0
  int v5; // r0

  v1 = this;
  if ( *((_DWORD *)this + 11) )
  {
    this = (AnimatedFX *)AnimatedFX::GetAnimator(this);
    if ( this )
    {
      Animator = AnimatedFX::GetAnimator(v1);
      v3 = *(_DWORD *)((*(int (__fastcall **)(int))(*(_DWORD *)Animator + 68))(Animator) + 20);
      v4 = AnimatedFX::GetAnimator(v1);
      v5 = (*(int (__fastcall **)(int))(*(_DWORD *)v4 + 68))(v4);
      return (AnimatedFX *)(*(int (__fastcall **)(int, int))(*(_DWORD *)v5 + 12))(v5, v3);
    }
  }
  return this;
}


// ===== 492744 AnimatedFX::SetStart(void) =====
AnimatedFX *__fastcall AnimatedFX::SetStart(AnimatedFX *this)
{
  AnimatedFX *v1; // r4
  int Animator; // r0
  int v3; // r5
  int v4; // r0
  int v5; // r0

  v1 = this;
  if ( *((_DWORD *)this + 11) )
  {
    this = (AnimatedFX *)AnimatedFX::GetAnimator(this);
    if ( this )
    {
      Animator = AnimatedFX::GetAnimator(v1);
      v3 = *(_DWORD *)((*(int (__fastcall **)(int))(*(_DWORD *)Animator + 68))(Animator) + 16);
      v4 = AnimatedFX::GetAnimator(v1);
      v5 = (*(int (__fastcall **)(int))(*(_DWORD *)v4 + 68))(v4);
      return (AnimatedFX *)(*(int (__fastcall **)(int, int))(*(_DWORD *)v5 + 12))(v5, v3);
    }
  }
  return this;
}


// ===== 4927a4 AnimatedFX::_HandleLoopEnd(void) =====
AnimatedFX *__fastcall AnimatedFX::_HandleLoopEnd(AnimatedFX *this)
{
  AnimatedFX *result; // r0
  int v3; // r1
  _BYTE *v4; // r3
  void (__fastcall *v5)(AnimatedFX *, _DWORD); // r3
  int Animator; // r0
  int v7; // r6
  int v8; // r0
  int v9; // r5
  int v10; // r0
  int v11; // r0

  result = (AnimatedFX *)(*((float *)this + 8) <= 0.0);
  if ( !result || *((_DWORD *)this + 1) )
  {
    v3 = *((_DWORD *)this + 5);
    if ( v3 >= 0 )
    {
      if ( v3 )
      {
        *((_DWORD *)this + 5) = v3 - 1;
        return AnimatedFX::SetStart(this);
      }
      else
      {
        result = AnimatedFX::SetLooping(this, 0);
        v4 = *((_BYTE **)this + 20);
        if ( v4 )
          *v4 = 1;
        v5 = *((void (__fastcall **)(AnimatedFX *, _DWORD))this + 1);
        if ( v5 )
        {
          v5(this, *((_DWORD *)this + 20));
          *((_DWORD *)this + 1) = 0;
          Animator = AnimatedFX::GetAnimator(this);
          (*(void (__fastcall **)(int))(*(_DWORD *)Animator + 68))(Animator);
          v7 = *(_DWORD *)(*((_DWORD *)this + 11) + 8);
          v8 = AnimatedFX::GetAnimator(this);
          v9 = *(_DWORD *)((*(int (__fastcall **)(int))(*(_DWORD *)v8 + 68))(v8) + 20);
          v10 = AnimatedFX::GetAnimator(this);
          if ( v9 != *(_DWORD *)((*(int (__fastcall **)(int))(*(_DWORD *)v10 + 68))(v10) + 4) )
            AnimatedFX::SetEnd(this);
          v11 = AnimatedFX::GetAnimator(this);
          return (AnimatedFX *)(*(int (__fastcall **)(int, int, int))(*(_DWORD *)v11 + 16))(v11, v7, v9);
        }
      }
    }
  }
  return result;
}


// ===== 4928a4 AnimatedFX::_CBLoop(glitch::scene::ITimelineController *,void *) =====
AnimatedFX *__fastcall AnimatedFX::_CBLoop(AnimatedFX *this, glitch::scene::ITimelineController *a2, void *a3)
{
  return AnimatedFX::_HandleLoopEnd(a2);
}


// ===== 4928ac AnimatedFX::SetScale(Point3D<float> const&) =====
int __fastcall AnimatedFX::SetScale(int result, float *a2)
{
  int v2; // r3

  v2 = *(_DWORD *)(result + 44);
  if ( v2 )
  {
    *(_BYTE *)(result + 50) = 0;
    return VisualObject::SetScaling(v2, a2);
  }
  return result;
}


// ===== 4928c8 AnimatedFX::ForceMaterial(int) =====
int __fastcall AnimatedFX::ForceMaterial(AnimatedFX *this, int a2)
{
  int result; // r0

  if ( gAssertLevel == 2 )
  {
    dword_0 = 0;
  }
  else if ( gAssertLevel == 1 )
  {
    return fprintf(
             (FILE *)&_sF + 2,
             "ASSERT(%s) FAILED: %s:%d\n",
             "false",
             "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\VisualFX\\AnimatedFX.cpp",
             284);
  }
  return result;
}


// ===== 492950 AnimatedFX::~AnimatedFX() =====
void __fastcall AnimatedFX::~AnimatedFX(AnimatedFX *this)
{
  AnimatedFX::~AnimatedFX(this);
  CustomFree(this);
}


// ===== 49296c AnimatedFX::Load(char const*,char const*,float,int,bool) =====
void __fastcall AnimatedFX::Load(AnimatedFX *this, char *a2, char *a3, float a4, int a5, bool a6)
{
  int v7; // r12
  VisualObject *v9; // r8
  int v10; // r3
  std::priv::_String_base<char,std::allocator<char> > v11; // [sp+14h] [bp+0h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v12; // [sp+2Ch] [bp+18h] BYREF
  int v13; // [sp+44h] [bp+30h]

  v7 = _stack_chk_guard;
  *((float *)this + 8) = a4;
  *((_DWORD *)this + 3) = a2;
  *((_DWORD *)this + 5) = a5;
  *((_DWORD *)this + 4) = a3;
  v13 = v7;
  std::string::string((int)&v12, a2);
  std::string::string((int)&v11, a3);
  v9 = (VisualObject *)operator new(172, 0);
  VisualObject::VisualObject(v9, nullptr, (const std::string *)&v12, (const std::string *)&v11);
  *((_DWORD *)this + 11) = v9;
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v11);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v12);
  v10 = *((_DWORD *)this + 11);
  if ( v10 )
  {
    (*(void (__fastcall **)(_DWORD, _DWORD (__fastcall *)(AnimatedFX *__hidden, glitch::scene::ITimelineController *, void *), AnimatedFX *, _DWORD, _DWORD))(**(_DWORD **)(v10 + 56) + 44))(
      *(_DWORD *)(v10 + 56),
      AnimatedFX::_CBLoop,
      this,
      0,
      0);
    (*(void (__fastcall **)(_DWORD, _DWORD, _DWORD))(**(_DWORD **)(*((_DWORD *)this + 11) + 56) + 40))(
      *(_DWORD *)(*((_DWORD *)this + 11) + 56),
      *((_DWORD *)this + 8),
      0);
    if ( a6 )
      SetNodeToSelfIlluminated(*(glitch::scene::ISceneNode **)(*((_DWORD *)this + 11) + 8));
  }
}


// ===== 492aa0 AnimatedFX::SyncIrrData(bool) =====
int __fastcall AnimatedFX::SyncIrrData(int this, int a2)
{
  int v2; // r4
  float v3; // r7
  float v4; // r6
  float v5; // r5
  int v6; // r9
  int v7; // r2
  GameObject *v8; // r0
  float *TargetPosition; // r0
  _DWORD *v10; // r3
  int v11; // r2
  int v12; // r0
  float v13; // r10
  float v14; // r0
  float *v15; // r12
  int v16; // r0
  int i; // r3
  int v18; // r0
  _DWORD *v19; // r3
  _DWORD v20[3]; // [sp+1Ch] [bp-58h] BYREF
  float v21[3]; // [sp+28h] [bp-4Ch] BYREF
  float v22[3]; // [sp+34h] [bp-40h] BYREF
  float v23; // [sp+40h] [bp-34h] BYREF
  float v24; // [sp+44h] [bp-30h]
  float v25; // [sp+48h] [bp-2Ch]
  _DWORD v26[3]; // [sp+4Ch] [bp-28h] BYREF
  int v27; // [sp+58h] [bp-1Ch] BYREF
  int v28; // [sp+5Ch] [bp-18h]
  int v29; // [sp+60h] [bp-14h]
  float v30[4]; // [sp+64h] [bp-10h] BYREF

  v2 = this;
  if ( *(_DWORD *)(this + 44) )
  {
    v3 = *(float *)(this + 52);
    v4 = *(float *)(this + 56);
    v5 = *(float *)(this + 60);
    if ( *(_BYTE *)(this + 48) )
    {
      v6 = 1;
    }
    else if ( a2 )
    {
      v6 = *(unsigned __int8 *)(this + 49);
    }
    else
    {
      v6 = 0;
    }
    v7 = *(_DWORD *)(this + 80);
    if ( v7 && a2 && *(_BYTE *)(this + 49) )
    {
      for ( i = *(_DWORD *)(v7 + 44); i; i = *(_DWORD *)(i + 44) )
        v7 = i;
      if ( *(int *)(v7 + 4) > 0 )
        v6 = 0;
    }
    v8 = *(GameObject **)(this + 40);
    if ( !v8 )
      goto LABEL_42;
    TargetPosition = (float *)GameObject::GetTargetPosition(v8);
    v3 = v3 + *TargetPosition;
    v4 = v4 + TargetPosition[1];
    v5 = v5 + TargetPosition[2];
    if ( v6 )
    {
      v10 = *(_DWORD **)(v2 + 40);
      v11 = v10[182];
      if ( v11 )
      {
        v12 = (*(int (__fastcall **)(_DWORD))(**(_DWORD **)(v11 + 8) + 56))(*(_DWORD *)(v11 + 8));
        glitch::core::CMatrix4<float>::getRotationDegrees(v30, v12);
        v13 = v30[2] * 0.017453;
        v14 = v30[0] * 0.017453;
        *(float *)(v2 + 68) = v30[1] * 0.017453;
        *(float *)(v2 + 64) = v14;
        *(float *)(v2 + 72) = v13;
      }
      else
      {
        *(_DWORD *)(v2 + 64) = v10[91];
        *(_DWORD *)(v2 + 68) = v10[92];
        *(_DWORD *)(v2 + 72) = v10[93];
      }
      VisualObject::SetRotation(*(_DWORD *)(v2 + 44), v2 + 64);
    }
    if ( *(_BYTE *)(v2 + 50) )
    {
      v18 = *(_DWORD *)(v2 + 40);
      v29 = dword_99F85C;
      v27 = Vec3f_Origin;
      v28 = dword_99F858;
      if ( (*(int (__fastcall **)(int))(*(_DWORD *)v18 + 164))(v18) == -1 )
      {
        v19 = *(_DWORD **)(v2 + 40);
        v27 = v19[72];
        v28 = v19[73];
        v29 = v19[74];
      }
      else
      {
        (*(void (__fastcall **)(_DWORD *, _DWORD))(**(_DWORD **)(v2 + 40) + 160))(v26, *(_DWORD *)(v2 + 40));
        v27 = v26[0];
        v28 = v26[1];
        v29 = v26[2];
      }
      VisualObject::SetScaling(*(_DWORD *)(v2 + 44), &v27);
      if ( !*(_BYTE *)(v2 + 76) )
      {
LABEL_14:
        v15 = *(float **)(v2 + 40);
        if ( !v15 || !v6 && !*(_BYTE *)(v2 + 49) )
        {
          v23 = 0.0;
          v24 = 0.0;
          v25 = 0.0;
          if ( v15 )
          {
            v23 = v15[123];
            v24 = v15[124];
            v25 = v15[125];
            if ( (float)((float)((float)(v23 * v23) + (float)(v24 * v24)) + (float)(v25 * v25)) == 0.0 )
            {
              v21[0] = v3;
              v21[1] = v4;
              v21[2] = v5;
              PFWorld::GetFloorHeightAt((int)&Singleton<PFWorld>::s_inst, v21, 0, (int)&v23, nullptr, 0, 0);
              if ( (float)((float)((float)(v23 * v23) + (float)(v24 * v24)) + (float)(v25 * v25)) == 0.0 )
              {
                v24 = 0.0;
                v23 = 0.0;
                v25 = 1.0;
              }
            }
          }
          else
          {
            v22[0] = v3;
            v22[1] = v4;
            v22[2] = v5;
            PFWorld::GetFloorHeightAt((int)&Singleton<PFWorld>::s_inst, v22, 0, (int)&v23, nullptr, 0, 0);
          }
        }
        goto LABEL_16;
      }
    }
    else
    {
LABEL_42:
      if ( !*(_BYTE *)(v2 + 76) )
        goto LABEL_14;
    }
    VisualObject::SetRotation(*(_DWORD *)(v2 + 44), v2 + 64);
LABEL_16:
    v16 = *(_DWORD *)(v2 + 44);
    *(float *)v20 = v3;
    *(float *)&v20[1] = v4;
    *(float *)&v20[2] = v5;
    return VisualObject::SetPosition(v16, v20);
  }
  return this;
}


// ===== 492e8c AnimatedFX::SetAnimFX(bool,bool,bool,float,int,VisualFXManager::AnimFXSetData *,void (*)(AnimatedFX*,VisualFXManager::AnimFXSetData *)) =====
int __fastcall AnimatedFX::SetAnimFX(int a1, char a2, char a3, char a4, float a5, int a6, int a7, int a8)
{
  int result; // r0

  *(_BYTE *)(a1 + 48) = a2;
  AnimatedFX::SyncIrrData(a1, 0);
  *(_BYTE *)(a1 + 49) = a3;
  AnimatedFX::SyncIrrData(a1, 1);
  *(_BYTE *)(a1 + 50) = a4;
  AnimatedFX::SyncIrrData(a1, 0);
  result = AnimatedFX::SetSpeed((AnimatedFX *)a1, a5);
  *(_DWORD *)(a1 + 80) = a7;
  *(_DWORD *)(a1 + 20) = a6;
  *(_DWORD *)(a1 + 4) = a8;
  return result;
}


// ===== 492ef0 AnimatedFX::SetVisible(bool) =====
int __fastcall AnimatedFX::SetVisible(int this, int a2)
{
  int v2; // r4
  VisualObject *v3; // r0

  v2 = this;
  if ( *(unsigned __int8 *)(this + 36) != a2 )
  {
    v3 = *(VisualObject **)(this + 44);
    *(_BYTE *)(v2 + 36) = a2;
    if ( v3 )
    {
      VisualObject::SetVisible(v3, a2);
      *(_BYTE *)(*(_DWORD *)(*(_DWORD *)(v2 + 44) + 8) + 512) = *(_BYTE *)(v2 + 36);
    }
    return AnimatedFX::SyncIrrData(v2, 0);
  }
  return this;
}


// ===== 492f3c AnimatedFX::SetRotation(Point3D<float> const&) =====
int __fastcall AnimatedFX::SetRotation(int a1, _DWORD *a2)
{
  int v2; // r2

  *(_DWORD *)(a1 + 64) = *a2;
  *(_DWORD *)(a1 + 68) = a2[1];
  v2 = a2[2];
  *(_BYTE *)(a1 + 76) = 1;
  *(_DWORD *)(a1 + 72) = v2;
  return AnimatedFX::SyncIrrData(a1, 0);
}


// ===== 492f68 AnimatedFX::Update(void) =====
int __fastcall AnimatedFX::Update(AnimatedFX *this)
{
  int v1; // r3
  int v3; // r7
  int v4; // r0
  int v5; // r3
  int v6; // r3
  int result; // r0
  int v8; // r7
  std::priv::_String_base<char,std::allocator<char> > v9; // [sp+Ch] [bp-38h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v10; // [sp+24h] [bp-20h] BYREF

  v1 = *((_DWORD *)this + 10);
  if ( v1 )
  {
    if ( (*(int (__fastcall **)(_DWORD))(*(_DWORD *)v1 + 52))(*((_DWORD *)this + 10)) )
    {
      *((_DWORD *)this + 10) = 0;
    }
    else if ( *(_BYTE *)(*((_DWORD *)this + 10) + 129) )
    {
      *((_DWORD *)this + 10) = 0;
    }
  }
  v3 = *((_DWORD *)this + 7);
  if ( v3 >= 0 )
  {
    v4 = v3 - Application::GetDt((Application *)&Singleton<Application>::s_inst);
    if ( v4 <= 0 )
      v5 = 0;
    *((_DWORD *)this + 7) = v4;
    if ( v4 <= 0 )
      *((_DWORD *)this + 5) = v5;
  }
  v6 = *((_DWORD *)this + 10);
  if ( v6 && !*(_BYTE *)(v6 + 132) )
    AnimatedFX::SyncIrrData((int)this, *(unsigned __int8 *)(v6 + 132));
  if ( *((_BYTE *)this + 36) )
  {
    if ( *((_DWORD *)this + 20) )
    {
      DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
      std::string::string((int)&v10, "isTracingAnim_FX");
      DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, (const std::string *)&v10);
      std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v10);
    }
    DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
    std::string::string((int)&v9, "isTracingAnim_FX");
    DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, (const std::string *)&v9);
    std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v9);
  }
  result = AnimatedFX::SetSpeed(this, *((float *)this + 8));
  v8 = *((unsigned __int8 *)this + 24);
  if ( !*((_BYTE *)this + 24) && *((_BYTE *)this + 36) )
  {
    result = AnimatedFX::HasCompleted(this);
    if ( result )
      return AnimatedFX::SetVisible((int)this, v8);
  }
  return result;
}


// ===== 493130 `global constructor keyed to'.._.._sources_Game_VisualFX_AnimatedFX.cpp =====
int `global constructor keyed to'.._.._sources_Game_VisualFX_AnimatedFX.cpp()
{
  int result; // r0

  result = `guard variable for'Singleton<PlayerStatManager>::s_inst;
  dword_9A6338 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9A6334 = 1056964608;
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


// ===== 493260 VisualFXManager::VisualFXManager(void) =====
void __fastcall VisualFXManager::VisualFXManager(VisualFXManager *this)
{
  *((_DWORD *)this + 12) = 0;
  *(_DWORD *)this = off_969CC8;
  *((_DWORD *)this + 3) = (char *)this + 8;
  *((_BYTE *)this + 4) = 0;
  *((_DWORD *)this + 2) = (char *)this + 8;
  *((_DWORD *)this + 4) = 0;
  *((_DWORD *)this + 5) = 0;
  *((_DWORD *)this + 6) = 0;
  *((_DWORD *)this + 7) = 0;
  *((_DWORD *)this + 8) = 0;
  *((_DWORD *)this + 9) = 0;
  *((_DWORD *)this + 10) = 0;
  *((_DWORD *)this + 11) = 0;
}


// ===== 4932c4 VisualFXManager::VisualFXManager(void) =====
void __fastcall VisualFXManager::VisualFXManager(VisualFXManager *this)
{
  *((_DWORD *)this + 12) = 0;
  *(_DWORD *)this = off_969CC8;
  *((_DWORD *)this + 3) = (char *)this + 8;
  *((_BYTE *)this + 4) = 0;
  *((_DWORD *)this + 2) = (char *)this + 8;
  *((_DWORD *)this + 4) = 0;
  *((_DWORD *)this + 5) = 0;
  *((_DWORD *)this + 6) = 0;
  *((_DWORD *)this + 7) = 0;
  *((_DWORD *)this + 8) = 0;
  *((_DWORD *)this + 9) = 0;
  *((_DWORD *)this + 10) = 0;
  *((_DWORD *)this + 11) = 0;
}


// ===== 493328 VisualFXManager::DBG_GetAnimatedFXStats(uint &,uint &) =====
int __fastcall VisualFXManager::DBG_GetAnimatedFXStats(int this, unsigned int *a2, unsigned int *a3)
{
  int v3; // r3
  int v4; // r12
  int v5; // r7
  int v6; // r5
  int v7; // r6
  int v8; // r5
  _DWORD *v9; // r5
  _DWORD *v10; // r12
  _DWORD *v11; // t1
  int v12; // r4

  v3 = 0;
  *a3 = 0;
  *a2 = 0;
  v4 = *(_DWORD *)(this + 40);
  v5 = -1431655765 * ((*(_DWORD *)(this + 44) - v4) >> 3);
  if ( v5 )
  {
    v6 = 0;
    v7 = 0;
    while ( 1 )
    {
      *a2 = v6 + ((*(_DWORD *)(v4 + v3 + 8) - *(_DWORD *)(v4 + v3 + 4)) >> 2);
      v8 = *(_DWORD *)(this + 40) + v3;
      v11 = *(_DWORD **)(v8 + 16);
      v9 = (_DWORD *)(v8 + 16);
      v10 = v11;
      if ( v11 == v9 )
      {
        v12 = 0;
      }
      else
      {
        v12 = 0;
        do
        {
          v10 = (_DWORD *)*v10;
          ++v12;
        }
        while ( v9 != v10 );
      }
      ++v7;
      *a3 += v12;
      v3 += 24;
      if ( v7 == v5 )
        break;
      v6 = *a2;
      v4 = *(_DWORD *)(this + 40);
    }
  }
  return this;
}


// ===== 4933d8 VisualFXManager::_PreCacheAnimDict(void) =====
int __fastcall VisualFXManager::_PreCacheAnimDict(int this)
{
  *(_BYTE *)(this + 4) = 1;
  return this;
}


// ===== 4933e4 VisualFXManager::GetAnimFXData(VisualFXManager::AnimFXSetInfo,VisualFXManager::AnimFXSetData *) =====
int __fastcall VisualFXManager::GetAnimFXData(int result, int a2, int a3, int a4)
{
  int v4; // r1
  int v5; // r12
  int v6; // r2
  int v7; // r3

  v4 = *(_DWORD *)(*(_DWORD *)a3 + 16) + 48 * *(_DWORD *)(a4 + 4);
  *(_BYTE *)result = *(_BYTE *)(v4 + 17);
  *(_BYTE *)(result + 1) = *(_BYTE *)(v4 + 16);
  *(_BYTE *)(result + 2) = *(_BYTE *)(v4 + 32);
  v5 = *(_DWORD *)(v4 + 36);
  *(_DWORD *)(result + 16) = a4;
  *(_DWORD *)(result + 4) = v5;
  *(_DWORD *)(result + 12) = *(_DWORD *)(v4 + 20);
  if ( *(_DWORD *)(*(_DWORD *)a3 + 20) == 1 )
  {
    *(_DWORD *)(result + 8) = *(_DWORD *)(v4 + 12);
  }
  else
  {
    v6 = *(_DWORD *)(v4 + 12);
    if ( v6 == -1 || (v7 = *(_DWORD *)(a4 + 12), v7 == -1) )
    {
      *(_DWORD *)(result + 8) = -1;
    }
    else if ( v6 )
    {
      if ( v7 )
        v6 *= v7;
      *(_DWORD *)(result + 8) = v6;
    }
    else
    {
      *(_DWORD *)(result + 8) = v7;
    }
  }
  return result;
}


// ===== 493488 std::priv::__find<AnimatedFX **,AnimatedFX *>(AnimatedFX **,AnimatedFX **,AnimatedFX * const&,std::random_access_iterator_tag const&) =====
_DWORD *__fastcall std::priv::__find<AnimatedFX **,AnimatedFX *>(_DWORD *a1, int a2, int *a3)
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


// ===== 4935b8 VisualFXManager::GetAnimFXSetData(int,int,int,GameObject const*,VisualFXManager::AnimFXSetData *,Point3D<float>,Point3D<float>) =====
int __fastcall VisualFXManager::GetAnimFXSetData(
        int a1,
        int a2,
        int a3,
        int a4,
        int a5,
        int a6,
        _DWORD *a7,
        _DWORD *a8)
{
  int result; // r0

  result = operator new(48, 0);
  *(_DWORD *)(result + 36) = 0;
  *(_BYTE *)result = 0;
  *(_DWORD *)(result + 4) = a4;
  *(_DWORD *)(result + 8) = a2;
  *(_DWORD *)(result + 12) = a3;
  *(_DWORD *)(result + 16) = 0;
  *(_DWORD *)(result + 20) = 0;
  *(_DWORD *)(result + 24) = 0;
  *(_DWORD *)(result + 28) = 0;
  *(_DWORD *)(result + 32) = 0;
  *(_DWORD *)(result + 40) = a5;
  *(_DWORD *)(result + 16) = *a7;
  *(_DWORD *)(result + 20) = a7[1];
  *(_DWORD *)(result + 24) = a7[2];
  *(_DWORD *)(result + 28) = *a8;
  *(_DWORD *)(result + 32) = a8[1];
  *(_DWORD *)(result + 36) = a8[2];
  *(_DWORD *)(result + 44) = a6;
  return result;
}


// ===== 493650 `global constructor keyed to'.._.._sources_Game_VisualFX_VisualFXManager.cpp =====
int `global constructor keyed to'.._.._sources_Game_VisualFX_VisualFXManager.cpp()
{
  int result; // r0

  result = `guard variable for'Singleton<PlayerStatManager>::s_inst;
  dword_9A6344 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9A6340 = 1056964608;
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


// ===== 493780 Random::GetRandom(int,bool) [clone] =====
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


// ===== 493814 std::allocator<std::priv::_List_node<VisualFXManager::AnimFXSetData *>>::allocate(uint,void const*) [clone] =====
void *std::allocator<std::priv::_List_node<VisualFXManager::AnimFXSetData *>>::allocate()
{
  size_t v1; // [sp+4h] [bp-8h] BYREF

  v1 = 12;
  return __ZNSt12__node_alloc11_M_allocateERj_veneer(&v1);
}


// ===== 493834 std::allocator<VisualFXManager::AnimFXStep *>::_M_allocate(uint,uint &) =====
void *__fastcall std::allocator<VisualFXManager::AnimFXStep *>::_M_allocate(int a1, unsigned int a2, size_t *a3)
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


// ===== 4938a4 std::vector<VisualFXManager::AnimFXStep *,std::allocator<VisualFXManager::AnimFXStep *>>::vector(std::vector<VisualFXManager::AnimFXStep *,std::allocator<VisualFXManager::AnimFXStep *>> const&) =====
_DWORD *__fastcall std::vector<VisualFXManager::AnimFXStep *>::vector(_DWORD *a1, int a2)
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
  v5 = (char *)std::allocator<VisualFXManager::AnimFXStep *>::_M_allocate((int)(a1 + 2), v4, &v11);
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


// ===== 493924 VisualFXManager::AnimFXSetInfo::AnimFXSetInfo(VisualFXManager::AnimFXSetInfo const&) =====
_DWORD *__fastcall VisualFXManager::AnimFXSetInfo::AnimFXSetInfo(_DWORD *a1, _DWORD *a2)
{
  _DWORD *v4; // r4
  _DWORD *v5; // r6
  _DWORD *i; // r7
  _DWORD *v7; // t1
  _DWORD *v8; // r0
  _DWORD *v9; // r3

  v4 = a1 + 4;
  *a1 = *a2;
  std::vector<VisualFXManager::AnimFXStep *>::vector(a1 + 1, a2 + 1);
  a1[4] = v4;
  a1[5] = v4;
  v7 = (_DWORD *)a2[4];
  v5 = a2 + 4;
  for ( i = v7; v5 != i; i = (_DWORD *)*i )
  {
    v8 = (_DWORD *)std::allocator<std::priv::_List_node<VisualFXManager::AnimFXSetData *>>::allocate(v4);
    v8[2] = i[2];
    v9 = (_DWORD *)v4[1];
    *v8 = v4;
    v8[1] = v9;
    *v9 = v8;
    v4[1] = v8;
  }
  return a1;
}


// ===== 49398c std::vector<VisualFXManager::AnimFXStep *,std::allocator<VisualFXManager::AnimFXStep *>>::_M_allocate_and_copy<VisualFXManager::AnimFXStep * const*>(uint &,VisualFXManager::AnimFXStep * const*,VisualFXManager::AnimFXStep * const*) =====
void *__fastcall std::vector<VisualFXManager::AnimFXStep *>::_M_allocate_and_copy<VisualFXManager::AnimFXStep * const*>(
        int a1,
        unsigned int *a2,
        _BYTE *a3,
        _BYTE *a4)
{
  void *v6; // r0
  void *v7; // r6

  v6 = std::allocator<VisualFXManager::AnimFXStep *>::_M_allocate(a1 + 8, *a2, a2);
  v7 = v6;
  if ( a3 != a4 )
    memcpy(v6, a3, a4 - a3);
  return v7;
}


// ===== 4939c8 std::allocator<AnimatedFX *>::_M_allocate(uint,uint &) =====
void *__fastcall std::allocator<AnimatedFX *>::_M_allocate(int a1, unsigned int a2, size_t *a3)
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


// ===== 493a38 std::vector<AnimatedFX *,std::allocator<AnimatedFX *>>::_M_allocate_and_copy<AnimatedFX * const*>(uint &,AnimatedFX * const*,AnimatedFX * const*) =====
void *__fastcall std::vector<AnimatedFX *>::_M_allocate_and_copy<AnimatedFX * const*>(
        int a1,
        unsigned int *a2,
        _BYTE *a3,
        _BYTE *a4)
{
  void *v6; // r0
  void *v7; // r6

  v6 = std::allocator<AnimatedFX *>::_M_allocate(a1 + 8, *a2, a2);
  v7 = v6;
  if ( a3 != a4 )
    memcpy(v6, a3, a4 - a3);
  return v7;
}


// ===== 493a74 std::vector<AnimatedFX *,std::allocator<AnimatedFX *>>::vector(std::vector<AnimatedFX *,std::allocator<AnimatedFX *>> const&) =====
_DWORD *__fastcall std::vector<AnimatedFX *>::vector(_DWORD *a1, int a2)
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
  v5 = (char *)std::allocator<AnimatedFX *>::_M_allocate((int)(a1 + 2), v4, &v11);
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


// ===== 493af4 std::allocator<VisualFXManager::AnimFXSetInfo>::_M_allocate(uint,uint &) =====
void *__fastcall std::allocator<VisualFXManager::AnimFXSetInfo>::_M_allocate(int a1, unsigned int a2, size_t *a3)
{
  void *result; // r0
  size_t __n; // [sp+4h] [bp-4h] BYREF

  if ( a2 > 0xAAAAAAA )
  {
    puts("out of memory\n");
    exit(1);
  }
  if ( !a2 )
    return nullptr;
  __n = 24 * a2;
  if ( 24 * a2 > 0x80 )
    result = CustomAlloc(24 * a2);
  else
    result = __ZNSt12__node_alloc11_M_allocateERj_veneer(&__n);
  *a3 = __n / 0x18;
  return result;
}


// ===== 493b7c std::allocator<VisualFXManager::AnimatedFXInfo>::_M_allocate(uint,uint &) =====
void *__fastcall std::allocator<VisualFXManager::AnimatedFXInfo>::_M_allocate(int a1, unsigned int a2, size_t *a3)
{
  void *result; // r0
  size_t __n; // [sp+4h] [bp-4h] BYREF

  if ( a2 > 0xAAAAAAA )
  {
    puts("out of memory\n");
    exit(1);
  }
  if ( !a2 )
    return nullptr;
  __n = 24 * a2;
  if ( 24 * a2 > 0x80 )
    result = CustomAlloc(24 * a2);
  else
    result = __ZNSt12__node_alloc11_M_allocateERj_veneer(&__n);
  *a3 = __n / 0x18;
  return result;
}


// ===== 493c04 std::priv::_List_base<AnimatedFX *,std::allocator<AnimatedFX *>>::clear(void) =====
_DWORD *__fastcall std::priv::_List_base<AnimatedFX *,std::allocator<AnimatedFX *>>::clear(_DWORD *a1)
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


// ===== 493c44 std::list<VisualFXManager::AnimFXSetData *,std::allocator<VisualFXManager::AnimFXSetData *>>::_M_splice_insert_dispatch<std::priv::_List_iterator<VisualFXManager::AnimFXSetData *,std::_Const_traits<VisualFXManager::AnimFXSetData *>>>(std::priv::_List_iterator<VisualFXManager::AnimFXSetData *,std::_Nonconst_traits<VisualFXManager::AnimFXSetData *>>,std::priv::_List_iterator<VisualFXManager::AnimFXSetData *,std::_Const_traits<VisualFXManager::AnimFXSetData *>>,std::priv::_List_iterator<VisualFXManager::AnimFXSetData *,std::_Const_traits<VisualFXManager::AnimFXSetData *>>,std::__false_type const&) =====
void __fastcall std::list<VisualFXManager::AnimFXSetData *>::_M_splice_insert_dispatch<std::priv::_List_iterator<VisualFXManager::AnimFXSetData *,std::_Const_traits<VisualFXManager::AnimFXSetData *>>>(
        int a1,
        _DWORD *a2,
        _DWORD *a3,
        _DWORD *a4)
{
  _DWORD **v6; // r0
  _DWORD *v7; // r6
  _DWORD *v8; // r0
  _DWORD *v9; // r3
  _DWORD **v10; // r3
  _DWORD *v11; // r2
  _DWORD *v12; // r5
  _DWORD *v13; // [sp+0h] [bp-Ch] BYREF
  _DWORD *v14; // [sp+4h] [bp-8h]

  v13 = &v13;
  v14 = &v13;
  if ( a4 == a3 )
  {
    v6 = &v13;
  }
  else
  {
    v7 = a3;
    do
    {
      v8 = std::allocator<std::priv::_List_node<VisualFXManager::AnimFXSetData *>>::allocate();
      v8[2] = v7[2];
      v9 = v14;
      *v8 = &v13;
      v8[1] = v9;
      *v9 = v8;
      v14 = v8;
      v7 = (_DWORD *)*v7;
    }
    while ( v7 != a4 );
    v6 = (_DWORD **)v13;
  }
  v10 = (_DWORD **)*a2;
  if ( v6 != &v13 )
  {
    if ( v10 == &v13 )
      goto LABEL_14;
    *v14 = v10;
    *v6[1] = &v13;
    *v10[1] = v6;
    v11 = v10[1];
    v10[1] = v14;
    v14 = v6[1];
    v6[1] = v11;
    v6 = (_DWORD **)v13;
    if ( v13 != &v13 )
    {
LABEL_14:
      while ( 1 )
      {
        v12 = *v6;
        __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v6, 0xCu);
        if ( v12 == &v13 )
          break;
        v6 = (_DWORD **)v12;
      }
    }
  }
}


// ===== 493d18 std::vector<VisualFXManager::AnimFXStep *,std::allocator<VisualFXManager::AnimFXStep *>>::operator=(std::vector<VisualFXManager::AnimFXStep *,std::allocator<VisualFXManager::AnimFXStep *>> const&) =====
_DWORD *__fastcall std::vector<VisualFXManager::AnimFXStep *>::operator=(_DWORD *a1, _DWORD *a2)
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
  _BYTE *v14; // r0
  size_t v15; // r1
  unsigned int v16; // r3
  int v17; // [sp+4h] [bp-8h] BYREF

  if ( a2 != a1 )
  {
    v4 = (_BYTE *)*a2;
    v5 = (_BYTE *)a2[1];
    v6 = (_BYTE *)*a1;
    v7 = (signed int)&v5[-*a2];
    v8 = v7 >> 2;
    if ( v7 >> 2 > (unsigned int)((a1[2] - *a1) >> 2) )
    {
      v17 = (int)&v5[-*a2] >> 2;
      v13 = (char *)std::vector<VisualFXManager::AnimFXStep *>::_M_allocate_and_copy<VisualFXManager::AnimFXStep * const*>(
                      (int)a1,
                      (unsigned int *)&v17,
                      v4,
                      v5);
      v14 = (_BYTE *)*a1;
      if ( *a1 )
      {
        v15 = (a1[2] - (_DWORD)v14) & 0xFFFFFFFC;
        if ( v15 > 0x80 )
          CustomFree(v14);
        else
          __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v14, v15);
      }
      v16 = v17;
      *a1 = v13;
      a1[2] = &v13[4 * v16];
      a1[1] = &v13[4 * v8];
    }
    else
    {
      v9 = (_BYTE *)a1[1];
      v10 = (v9 - v6) >> 2;
      if ( v8 > v10 )
      {
        v12 = &v4[4 * v10];
        if ( v12 != v4 )
        {
          memmove(v6, v4, v12 - v4);
          v9 = (_BYTE *)a1[1];
          v6 = (_BYTE *)*a1;
          v5 = (_BYTE *)a2[1];
          v12 = (_BYTE *)(*a2 + ((unsigned int)&v9[-*a1] & 0xFFFFFFFC));
        }
        if ( v12 != v5 )
        {
          memcpy(v9, v12, v5 - v12);
          a1[1] = *a1 + 4 * v8;
          return a1;
        }
      }
      else if ( v7 )
      {
        memmove(v6, v4, v7);
        a1[1] = *a1 + 4 * v8;
        return a1;
      }
      a1[1] = &v6[4 * v8];
    }
  }
  return a1;
}


// ===== 493e50 std::vector<AnimatedFX *,std::allocator<AnimatedFX *>>::operator=(std::vector<AnimatedFX *,std::allocator<AnimatedFX *>> const&) =====
_DWORD *__fastcall std::vector<AnimatedFX *>::operator=(_DWORD *a1, _DWORD *a2)
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
  _BYTE *v14; // r0
  size_t v15; // r1
  unsigned int v16; // r3
  int v17; // [sp+4h] [bp-8h] BYREF

  if ( a2 != a1 )
  {
    v4 = (_BYTE *)*a2;
    v5 = (_BYTE *)a2[1];
    v6 = (_BYTE *)*a1;
    v7 = (signed int)&v5[-*a2];
    v8 = v7 >> 2;
    if ( v7 >> 2 > (unsigned int)((a1[2] - *a1) >> 2) )
    {
      v17 = (int)&v5[-*a2] >> 2;
      v13 = (char *)std::vector<AnimatedFX *>::_M_allocate_and_copy<AnimatedFX * const*>(
                      (int)a1,
                      (unsigned int *)&v17,
                      v4,
                      v5);
      v14 = (_BYTE *)*a1;
      if ( *a1 )
      {
        v15 = (a1[2] - (_DWORD)v14) & 0xFFFFFFFC;
        if ( v15 > 0x80 )
          CustomFree(v14);
        else
          __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v14, v15);
      }
      v16 = v17;
      *a1 = v13;
      a1[2] = &v13[4 * v16];
      a1[1] = &v13[4 * v8];
    }
    else
    {
      v9 = (_BYTE *)a1[1];
      v10 = (v9 - v6) >> 2;
      if ( v8 > v10 )
      {
        v12 = &v4[4 * v10];
        if ( v12 != v4 )
        {
          memmove(v6, v4, v12 - v4);
          v9 = (_BYTE *)a1[1];
          v6 = (_BYTE *)*a1;
          v5 = (_BYTE *)a2[1];
          v12 = (_BYTE *)(*a2 + ((unsigned int)&v9[-*a1] & 0xFFFFFFFC));
        }
        if ( v12 != v5 )
        {
          memcpy(v9, v12, v5 - v12);
          a1[1] = *a1 + 4 * v8;
          return a1;
        }
      }
      else if ( v7 )
      {
        memmove(v6, v4, v7);
        a1[1] = *a1 + 4 * v8;
        return a1;
      }
      a1[1] = &v6[4 * v8];
    }
  }
  return a1;
}


// ===== 493f88 VisualFXManager::AnimatedFXInfo::~AnimatedFXInfo() =====
void __fastcall VisualFXManager::AnimatedFXInfo::~AnimatedFXInfo(VisualFXManager::AnimatedFXInfo *this)
{
  void *v2; // r0
  size_t v3; // r1

  std::priv::_List_base<AnimatedFX *,std::allocator<AnimatedFX *>>::clear((_DWORD *)this + 4);
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


// ===== 493fd4 std::vector<VisualFXManager::AnimatedFXInfo,std::allocator<VisualFXManager::AnimatedFXInfo>>::_M_clear_after_move(void) =====
void __fastcall std::vector<VisualFXManager::AnimatedFXInfo>::_M_clear_after_move(VisualFXManager::AnimatedFXInfo **a1)
{
  VisualFXManager::AnimatedFXInfo *v1; // r4
  VisualFXManager::AnimatedFXInfo *v2; // r5

  v1 = a1[1];
  v2 = *a1;
  if ( v1 != *a1 )
  {
    do
    {
      v1 = (VisualFXManager::AnimatedFXInfo *)((char *)v1 - 24);
      VisualFXManager::AnimatedFXInfo::~AnimatedFXInfo(v1);
    }
    while ( v2 != v1 );
    v1 = *a1;
  }
  if ( v1 )
  {
    if ( (unsigned int)(8 * ((a1[2] - v1) >> 3)) > 0x80 )
      CustomFree(v1);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v1, 8 * ((a1[2] - v1) >> 3));
  }
}


// ===== 494058 std::vector<VisualFXManager::AnimatedFXInfo,std::allocator<VisualFXManager::AnimatedFXInfo>>::~vector() =====
VisualFXManager::AnimatedFXInfo **__fastcall std::vector<VisualFXManager::AnimatedFXInfo>::~vector(
        VisualFXManager::AnimatedFXInfo **a1)
{
  VisualFXManager::AnimatedFXInfo *v1; // r5
  VisualFXManager::AnimatedFXInfo *v2; // r6
  VisualFXManager::AnimatedFXInfo *v4; // r0
  size_t v5; // r1

  v1 = a1[1];
  v2 = *a1;
  while ( v2 != v1 )
  {
    v1 = (VisualFXManager::AnimatedFXInfo *)((char *)v1 - 24);
    VisualFXManager::AnimatedFXInfo::~AnimatedFXInfo(v1);
  }
  v4 = *a1;
  if ( !*a1 )
    return a1;
  v5 = 8 * ((a1[2] - v4) >> 3);
  if ( v5 <= 0x80 )
  {
    __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v4, v5);
    return a1;
  }
  CustomFree(v4);
  return a1;
}


// ===== 4940d8 VisualFXManager::AnimFXSetInfo::~AnimFXSetInfo() =====
void __fastcall VisualFXManager::AnimFXSetInfo::~AnimFXSetInfo(VisualFXManager::AnimFXSetInfo *this)
{
  VisualFXManager::AnimFXSetInfo **v2; // r0
  VisualFXManager::AnimFXSetInfo *v3; // r4
  void *v4; // r0
  size_t v5; // r1

  v2 = *((VisualFXManager::AnimFXSetInfo ***)this + 4);
  if ( v2 != (VisualFXManager::AnimFXSetInfo **)((char *)this + 16) )
  {
    while ( 1 )
    {
      v3 = *v2;
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v2, 0xCu);
      if ( v3 == (VisualFXManager::AnimFXSetInfo *)((char *)this + 16) )
        break;
      v2 = (VisualFXManager::AnimFXSetInfo **)v3;
    }
    v2 = (VisualFXManager::AnimFXSetInfo **)((char *)this + 16);
  }
  *((_DWORD *)this + 4) = v2;
  *((_DWORD *)this + 5) = v2;
  v4 = *((void **)this + 1);
  if ( v4 )
  {
    v5 = (*((_DWORD *)this + 3) - (_DWORD)v4) & 0xFFFFFFFC;
    if ( v5 > 0x80 )
      CustomFree(v4);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v4, v5);
  }
}


// ===== 494154 std::vector<VisualFXManager::AnimFXSetInfo,std::allocator<VisualFXManager::AnimFXSetInfo>>::_M_clear_after_move(void) =====
void __fastcall std::vector<VisualFXManager::AnimFXSetInfo>::_M_clear_after_move(VisualFXManager::AnimFXSetInfo **a1)
{
  VisualFXManager::AnimFXSetInfo *v1; // r4
  VisualFXManager::AnimFXSetInfo *v2; // r5

  v1 = a1[1];
  v2 = *a1;
  if ( v1 != *a1 )
  {
    do
    {
      v1 = (VisualFXManager::AnimFXSetInfo *)((char *)v1 - 24);
      VisualFXManager::AnimFXSetInfo::~AnimFXSetInfo(v1);
    }
    while ( v2 != v1 );
    v1 = *a1;
  }
  if ( v1 )
  {
    if ( (unsigned int)(8 * ((a1[2] - v1) >> 3)) > 0x80 )
      CustomFree(v1);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v1, 8 * ((a1[2] - v1) >> 3));
  }
}


// ===== 4941d8 std::vector<VisualFXManager::AnimFXSetInfo,std::allocator<VisualFXManager::AnimFXSetInfo>>::push_back(VisualFXManager::AnimFXSetInfo const&) =====
void __fastcall std::vector<VisualFXManager::AnimFXSetInfo>::push_back(VisualFXManager::AnimFXSetInfo **a1, _DWORD *a2)
{
  char *v3; // r5
  VisualFXManager::AnimFXSetInfo *v4; // r0
  unsigned int v6; // r2
  unsigned int v7; // r1
  VisualFXManager::AnimFXSetInfo *v8; // r0
  VisualFXManager::AnimFXSetInfo *v9; // r9
  VisualFXManager::AnimFXSetInfo *v10; // r10
  int v11; // r3
  int v12; // r5
  VisualFXManager::AnimFXSetInfo *v13; // r5
  int v14; // r8
  int v15; // r7
  VisualFXManager::AnimFXSetInfo *v16; // r3
  size_t v17; // [sp+4h] [bp-4h] BYREF

  v3 = (char *)a1[2];
  v4 = a1[1];
  if ( v4 == (VisualFXManager::AnimFXSetInfo *)v3 )
  {
    v6 = -1431655765 * ((v3 - (char *)*a1) >> 3);
    if ( v6 )
      v7 = 1431655766 * ((v3 - (char *)*a1) >> 3);
    else
      v7 = 1;
    if ( v7 > 0xAAAAAAA || v6 > v7 )
      v7 = 178956970;
    v17 = v7;
    v8 = (VisualFXManager::AnimFXSetInfo *)std::allocator<VisualFXManager::AnimFXSetInfo>::_M_allocate(
                                             (int)(a1 + 2),
                                             v7,
                                             &v17);
    v9 = *a1;
    v10 = v8;
    v11 = (v3 - (char *)*a1) >> 3;
    v12 = -1431655765 * v11;
    if ( -1431655765 * v11 > 0 )
    {
      v14 = -1431655765 * v11;
      v15 = 0;
      do
      {
        VisualFXManager::AnimFXSetInfo::AnimFXSetInfo(
          (VisualFXManager::AnimFXSetInfo *)((char *)v10 + v15),
          (VisualFXManager::AnimFXSetInfo *)((char *)v9 + v15));
        --v14;
        v15 += 24;
      }
      while ( v14 );
      v13 = (VisualFXManager::AnimFXSetInfo *)((char *)v10 + 24 * v12);
    }
    else
    {
      v13 = v8;
    }
    VisualFXManager::AnimFXSetInfo::AnimFXSetInfo(v13, a2);
    std::vector<VisualFXManager::AnimFXSetInfo>::_M_clear_after_move(a1);
    v16 = (VisualFXManager::AnimFXSetInfo *)((char *)v10 + 24 * v17);
    *a1 = v10;
    a1[2] = v16;
    a1[1] = (VisualFXManager::AnimFXSetInfo *)((char *)v13 + 24);
  }
  else
  {
    VisualFXManager::AnimFXSetInfo::AnimFXSetInfo(v4, a2);
    a1[1] = (VisualFXManager::AnimFXSetInfo *)((char *)a1[1] + 24);
  }
}


// ===== 4942fc std::vector<VisualFXManager::AnimFXSetInfo,std::allocator<VisualFXManager::AnimFXSetInfo>>::~vector() =====
VisualFXManager::AnimFXSetInfo **__fastcall std::vector<VisualFXManager::AnimFXSetInfo>::~vector(
        VisualFXManager::AnimFXSetInfo **a1)
{
  VisualFXManager::AnimFXSetInfo *v1; // r5
  VisualFXManager::AnimFXSetInfo *v2; // r6
  VisualFXManager::AnimFXSetInfo *v4; // r0
  size_t v5; // r1

  v1 = a1[1];
  v2 = *a1;
  while ( v2 != v1 )
  {
    v1 = (VisualFXManager::AnimFXSetInfo *)((char *)v1 - 24);
    VisualFXManager::AnimFXSetInfo::~AnimFXSetInfo(v1);
  }
  v4 = *a1;
  if ( !*a1 )
    return a1;
  v5 = 8 * ((a1[2] - v4) >> 3);
  if ( v5 <= 0x80 )
  {
    __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v4, v5);
    return a1;
  }
  CustomFree(v4);
  return a1;
}


// ===== 49437c VectorSet<int>::push_back_unique(int const&) =====
void __fastcall VectorSet<int>::push_back_unique(int a1, int *a2)
{
  _DWORD *v4; // r0
  _DWORD *v5; // r6
  unsigned int v6; // r3
  unsigned int v7; // r1
  char *v8; // r0
  char *v9; // r7
  size_t v10; // r6
  int *v11; // r6
  _DWORD *v12; // r6
  void *v13; // r0
  size_t v14; // r1
  size_t v15; // r3
  size_t v16; // [sp+0h] [bp-Ch] BYREF

  v4 = std::priv::__find<int *,int>(*(_DWORD **)a1, *(_DWORD *)(a1 + 4), a2);
  v5 = v4;
  if ( v4 == *(_DWORD **)(a1 + 4) )
  {
    if ( v4 == *(_DWORD **)(a1 + 8) )
    {
      v6 = ((int)v4 - *(_DWORD *)a1) >> 2;
      if ( v6 )
        v7 = 2 * v6;
      else
        v7 = 1;
      if ( v7 > 0x3FFFFFFF || v6 > v7 )
        v7 = 0x3FFFFFFF;
      v16 = v7;
      v8 = (char *)std::allocator<int>::_M_allocate(a1 + 8, v7, &v16);
      v9 = v8;
      v10 = (size_t)v5 - *(_DWORD *)a1;
      if ( v10 )
        v11 = (int *)((char *)memmove(v8, *(const void **)a1, v10) + v10);
      else
        v11 = (int *)v8;
      *v11 = *a2;
      v12 = v11 + 1;
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
    else
    {
      *v4 = *a2;
      *(_DWORD *)(a1 + 4) += 4;
    }
  }
}


// ===== 49448c std::vector<VisualFXManager::AnimFXStep *,std::allocator<VisualFXManager::AnimFXStep *>>::_M_insert_overflow(VisualFXManager::AnimFXStep **,VisualFXManager::AnimFXStep * const&,std::__true_type const&,uint,bool) [clone] =====
void __fastcall std::vector<VisualFXManager::AnimFXStep *>::_M_insert_overflow(int a1, int a2, _DWORD *a3)
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
  v8 = (char *)std::allocator<VisualFXManager::AnimFXStep *>::_M_allocate(a1 + 8, v6, &v16);
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


// ===== 494550 VectorSet<AnimatedFX *>::push_back_unique(AnimatedFX * const&) =====
void __fastcall VectorSet<AnimatedFX *>::push_back_unique(int a1, int *a2)
{
  _DWORD *v4; // r0
  _DWORD *v5; // r6
  unsigned int v6; // r3
  unsigned int v7; // r1
  char *v8; // r0
  char *v9; // r7
  size_t v10; // r6
  int *v11; // r6
  _DWORD *v12; // r6
  void *v13; // r0
  size_t v14; // r1
  size_t v15; // r3
  size_t v16; // [sp+0h] [bp-Ch] BYREF

  v4 = std::priv::__find<AnimatedFX **,AnimatedFX *>(*(_DWORD **)a1, *(_DWORD *)(a1 + 4), a2);
  v5 = v4;
  if ( v4 == *(_DWORD **)(a1 + 4) )
  {
    if ( v4 == *(_DWORD **)(a1 + 8) )
    {
      v6 = ((int)v4 - *(_DWORD *)a1) >> 2;
      if ( v6 )
        v7 = 2 * v6;
      else
        v7 = 1;
      if ( v7 > 0x3FFFFFFF || v6 > v7 )
        v7 = 0x3FFFFFFF;
      v16 = v7;
      v8 = (char *)std::allocator<AnimatedFX *>::_M_allocate(a1 + 8, v7, &v16);
      v9 = v8;
      v10 = (size_t)v5 - *(_DWORD *)a1;
      if ( v10 )
        v11 = (int *)((char *)memmove(v8, *(const void **)a1, v10) + v10);
      else
        v11 = (int *)v8;
      *v11 = *a2;
      v12 = v11 + 1;
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
    else
    {
      *v4 = *a2;
      *(_DWORD *)(a1 + 4) += 4;
    }
  }
}


// ===== 494660 VisualFXManager::DropAnimatedFXSetByID(int) =====
void __fastcall VisualFXManager::DropAnimatedFXSetByID(VisualFXManager *this, int a2)
{
  int v3; // r7
  int v4; // r6
  int v5; // r2
  _DWORD *AnimFXSetData; // r8
  int v7; // r9
  int v8; // r3
  _DWORD *v9; // r2
  AnimatedFX *v10; // r0
  int v11; // r2
  int v12; // r3
  AnimatedFX *v13; // r0
  const VisualFXManager::AnimFXSetInfo *v14; // [sp+14h] [bp-58h]
  int v15; // [sp+18h] [bp-54h] BYREF
  _BYTE v16[24]; // [sp+34h] [bp-38h] BYREF
  _DWORD v17[3]; // [sp+4Ch] [bp-20h] BYREF
  _DWORD v18[3]; // [sp+58h] [bp-14h] BYREF
  AnimatedFX *v19; // [sp+64h] [bp-8h] BYREF

  if ( a2 >= 0 && a2 < Arrays::AnimatedEffectTable::size )
  {
    v3 = *((_DWORD *)this + 7);
    v4 = 24 * a2;
    v5 = *(_DWORD *)(*(_DWORD *)(v3 + 24 * a2) + 8);
    v18[2] = dword_99F85C;
    v18[0] = Vec3f_Origin;
    v14 = (const VisualFXManager::AnimFXSetInfo *)(v3 + 24 * a2);
    v17[0] = Vec3f_Origin;
    v17[1] = dword_99F858;
    v18[1] = dword_99F858;
    v17[2] = dword_99F85C;
    AnimFXSetData = (_DWORD *)VisualFXManager::GetAnimFXSetData(this, a2, v5, 0, 0, 0, v18, v17);
    VisualFXManager::AnimFXSetInfo::AnimFXSetInfo((VisualFXManager::AnimFXSetInfo *)v16, v14);
    VisualFXManager::GetAnimFXData(&v15, this, v16, AnimFXSetData);
    VisualFXManager::AnimFXSetInfo::~AnimFXSetInfo((VisualFXManager::AnimFXSetInfo *)v16);
    v7 = *((_DWORD *)this + 10) + 24 * *(_DWORD *)(*(_DWORD *)(*(_DWORD *)(v3 + v4) + 16) + 48 * AnimFXSetData[1] + 4);
    CustomFree(AnimFXSetData);
    v8 = *(_DWORD *)(v7 + 16);
    if ( v8 != v7 + 16 )
    {
      v9 = *(_DWORD **)(v7 + 16);
      do
        v9 = (_DWORD *)*v9;
      while ( (_DWORD *)(v7 + 16) != v9 );
      v19 = *(AnimatedFX **)(v8 + 8);
      VectorSet<AnimatedFX *>::push_back_unique(v7 + 4, &v19);
      std::priv::_List_base<AnimatedFX *,std::allocator<AnimatedFX *>>::clear(v7 + 16);
      v10 = v19;
      v11 = dword_99F858;
      v12 = dword_99F85C;
      *((_DWORD *)v19 + 13) = Vec3f_Origin;
      *((_DWORD *)v10 + 14) = v11;
      *((_DWORD *)v10 + 15) = v12;
      AnimatedFX::SyncIrrData(v10, 0);
      v13 = v19;
      *((_DWORD *)v19 + 10) = 0;
      AnimatedFX::SyncIrrData(v13, 1);
      AnimatedFX::SetVisible(v19, 0);
    }
  }
}


// ===== 4947f8 std::list<VisualFXManager::AnimFXSetData *,std::allocator<VisualFXManager::AnimFXSetData *>>::operator=(std::list<VisualFXManager::AnimFXSetData *,std::allocator<VisualFXManager::AnimFXSetData *>> const&) =====
_DWORD *__fastcall std::list<VisualFXManager::AnimFXSetData *>::operator=(_DWORD *a1, _DWORD *a2)
{
  _DWORD *v4; // r0
  _DWORD *v5; // r2
  int v6; // r12
  _DWORD *v7; // r1
  _DWORD *v9; // r5
  _DWORD *v10; // r3
  _DWORD *v11; // [sp+8h] [bp-Ch] BYREF

  if ( a1 != a2 )
  {
    v4 = (_DWORD *)*a1;
    v5 = (_DWORD *)*a2;
    while ( a1 != v4 )
    {
      if ( a2 == v5 )
      {
        while ( 1 )
        {
          v9 = (_DWORD *)*v4;
          v10 = (_DWORD *)v4[1];
          *v10 = *v4;
          v9[1] = v10;
          __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v4, 0xCu);
          if ( a1 == v9 )
            break;
          v4 = v9;
        }
        return a1;
      }
      v6 = v5[2];
      v7 = (_DWORD *)*v4;
      v5 = (_DWORD *)*v5;
      v4[2] = v6;
      v4 = v7;
    }
    if ( a2 != v5 )
    {
      v11 = a1;
      std::list<VisualFXManager::AnimFXSetData *>::_M_splice_insert_dispatch<std::priv::_List_iterator<VisualFXManager::AnimFXSetData *,std::_Const_traits<VisualFXManager::AnimFXSetData *>>>(
        (int)a1,
        &v11,
        v5,
        a2);
    }
  }
  return a1;
}


// ===== 494894 std::priv::__copy<VisualFXManager::AnimFXSetInfo *,VisualFXManager::AnimFXSetInfo *,int>(VisualFXManager::AnimFXSetInfo *,VisualFXManager::AnimFXSetInfo *,VisualFXManager::AnimFXSetInfo *,std::random_access_iterator_tag const&,int *) =====
int __fastcall std::priv::__copy<VisualFXManager::AnimFXSetInfo *,VisualFXManager::AnimFXSetInfo *,int>(
        int a1,
        int a2,
        int a3)
{
  int v5; // r9
  int v6; // r6
  int v7; // r5

  v5 = -1431655765 * ((a2 - a1) >> 3);
  if ( v5 > 0 )
  {
    v6 = -1431655765 * ((a2 - a1) >> 3);
    v7 = 0;
    do
    {
      *(_DWORD *)(a3 + v7) = *(_DWORD *)(a1 + v7);
      std::vector<VisualFXManager::AnimFXStep *>::operator=((_DWORD *)(a3 + v7 + 4), (_DWORD *)(a1 + v7 + 4));
      std::list<VisualFXManager::AnimFXSetData *>::operator=((_DWORD *)(a3 + v7 + 16), (_DWORD *)(a1 + v7 + 16));
      --v6;
      v7 += 24;
    }
    while ( v6 );
    a3 += 24 * v5;
  }
  return a3;
}


// ===== 494910 std::vector<VisualFXManager::AnimFXSetInfo,std::allocator<VisualFXManager::AnimFXSetInfo>>::_M_erase(VisualFXManager::AnimFXSetInfo*,VisualFXManager::AnimFXSetInfo*,std::__false_type const&) =====
int __fastcall std::vector<VisualFXManager::AnimFXSetInfo>::_M_erase(int a1, int a2, int a3)
{
  int v5; // r0
  VisualFXManager::AnimFXSetInfo *v6; // r7
  int v7; // r8
  VisualFXManager::AnimFXSetInfo *v8; // r6
  VisualFXManager::AnimFXSetInfo *v9; // r0

  v5 = std::priv::__copy<VisualFXManager::AnimFXSetInfo *,VisualFXManager::AnimFXSetInfo *,int>(
         a3,
         *(_DWORD *)(a1 + 4),
         a2);
  v6 = *(VisualFXManager::AnimFXSetInfo **)(a1 + 4);
  v7 = v5;
  if ( v6 != (VisualFXManager::AnimFXSetInfo *)v5 )
  {
    v8 = (VisualFXManager::AnimFXSetInfo *)v5;
    do
    {
      v9 = v8;
      v8 = (VisualFXManager::AnimFXSetInfo *)((char *)v8 + 24);
      VisualFXManager::AnimFXSetInfo::~AnimFXSetInfo(v9);
    }
    while ( v6 != v8 );
  }
  *(_DWORD *)(a1 + 4) = v7;
  return a2;
}


// ===== 494978 VisualFXManager::DropAnimatedFX(AnimatedFX *&) =====
int __fastcall VisualFXManager::DropAnimatedFX(int this, AnimatedFX **a2)
{
  int v3; // r3
  int v4; // r2
  int v5; // r8
  AnimatedFX **v6; // r0
  AnimatedFX *v7; // r4
  AnimatedFX *v8; // r0
  AnimatedFX *v9; // r0
  int v10; // r12
  int v11; // r2
  AnimatedFX *v12; // r3

  if ( *a2 )
  {
    if ( *(_BYTE *)(this + 4) )
    {
      v3 = *((_DWORD *)*a2 + 2);
      if ( v3 >= 0
        && (v4 = *(_DWORD *)(this + 44),
            this = *(_DWORD *)(this + 40),
            v3 < (unsigned int)(-1431655765 * ((v4 - this) >> 3))) )
      {
        v5 = this + 24 * v3;
        v6 = *(AnimatedFX ***)(v5 + 16);
        while ( (AnimatedFX **)(v5 + 16) != v6 )
        {
          v7 = *v6;
          if ( *a2 == v6[2] )
          {
            v12 = v6[1];
            *(_DWORD *)v12 = v7;
            *((_DWORD *)v7 + 1) = v12;
            __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v6, 0xCu);
            v6 = (AnimatedFX **)v7;
          }
          else
          {
            v6 = (AnimatedFX **)*v6;
          }
        }
        VectorSet<AnimatedFX *>::push_back_unique(v5 + 4, a2);
        v8 = *a2;
        *((_DWORD *)v8 + 10) = 0;
        AnimatedFX::SyncIrrData(v8, 1);
        v9 = *a2;
        v10 = dword_99F858;
        v11 = dword_99F85C;
        *((_DWORD *)v9 + 13) = Vec3f_Origin;
        *((_DWORD *)v9 + 14) = v10;
        *((_DWORD *)v9 + 15) = v11;
        AnimatedFX::SyncIrrData(v9, 0);
        this = AnimatedFX::SetVisible(*a2, 0);
        *a2 = nullptr;
      }
      else
      {
        *a2 = nullptr;
      }
    }
    else
    {
      *a2 = (AnimatedFX *)*(unsigned __int8 *)(this + 4);
    }
  }
  return this;
}


// ===== 494ab4 std::allocator<std::priv::_List_node<AnimatedFX *>>::allocate(uint,void const*) [clone] =====
void *std::allocator<std::priv::_List_node<AnimatedFX *>>::allocate()
{
  size_t v1; // [sp+4h] [bp-8h] BYREF

  v1 = 12;
  return __ZNSt12__node_alloc11_M_allocateERj_veneer(&v1);
}


// ===== 494ad4 VisualFXManager::_GetAnimFX(int) =====
VisualObject **__fastcall VisualFXManager::_GetAnimFX(VisualFXManager *this, int a2)
{
  VisualObject **v3; // r5
  _DWORD *v5; // r8
  int v6; // r2
  unsigned int v7; // r3
  _DWORD *v8; // r4
  _DWORD *v9; // r0
  _DWORD *v10; // r0
  _DWORD *v11; // r3

  if ( a2 >= 0 && a2 < Arrays::EffectDict::size )
  {
    v5 = (_DWORD *)(*((_DWORD *)this + 10) + 24 * a2);
    v6 = v5[2];
    v7 = (v6 - v5[1]) >> 2;
    if ( v7 )
    {
      v3 = *(VisualObject ***)(v6 - 4);
      v8 = v5 + 4;
      VisualObject::SetScaling(v3[11], 1.0);
      v9 = v5 + 4;
      v5[2] -= 4;
      goto LABEL_10;
    }
    v8 = (_DWORD *)v5[4];
    if ( v8 == v5 + 4 )
      goto LABEL_9;
    do
    {
      v8 = (_DWORD *)*v8;
      ++v7;
    }
    while ( v5 + 4 != v8 );
    if ( v7 <= 5 )
    {
LABEL_9:
      v3 = (VisualObject **)operator new(84, 0);
      AnimatedFX::AnimatedFX((AnimatedFX *)v3, a2);
      AnimatedFX::Load((AnimatedFX *)v3, *(const char **)(Arrays::EffectDict::members + 12 * a2 + 8), "", 1.0, -1, 1);
      v9 = v5 + 4;
LABEL_10:
      v10 = (_DWORD *)std::allocator<std::priv::_List_node<AnimatedFX *>>::allocate(v9);
      v10[2] = v3;
      v11 = (_DWORD *)v5[5];
      *v10 = v8;
      v10[1] = v11;
      *v11 = v10;
      v5[5] = v10;
      return v3;
    }
  }
  return nullptr;
}


// ===== 494c08 std::list<AnimatedFX *,std::allocator<AnimatedFX *>>::_M_splice_insert_dispatch<std::priv::_List_iterator<AnimatedFX *,std::_Const_traits<AnimatedFX *>>>(std::priv::_List_iterator<AnimatedFX *,std::_Nonconst_traits<AnimatedFX *>>,std::priv::_List_iterator<AnimatedFX *,std::_Const_traits<AnimatedFX *>>,std::priv::_List_iterator<AnimatedFX *,std::_Const_traits<AnimatedFX *>>,std::__false_type const&) =====
_DWORD *__fastcall std::list<AnimatedFX *>::_M_splice_insert_dispatch<std::priv::_List_iterator<AnimatedFX *,std::_Const_traits<AnimatedFX *>>>(
        int a1,
        _DWORD *a2,
        _DWORD *a3,
        _DWORD *a4)
{
  _DWORD *v6; // r3
  _DWORD *v7; // r6
  _DWORD *v8; // r0
  _DWORD *v9; // r3
  _DWORD **v10; // r2
  _DWORD *v11; // r1
  _DWORD *v13; // [sp+0h] [bp-Ch] BYREF
  _DWORD *v14; // [sp+4h] [bp-8h]

  v13 = &v13;
  v14 = &v13;
  if ( a4 == a3 )
  {
    v6 = &v13;
  }
  else
  {
    v7 = a3;
    do
    {
      v8 = std::allocator<std::priv::_List_node<AnimatedFX *>>::allocate();
      v8[2] = v7[2];
      v9 = v14;
      *v8 = &v13;
      v8[1] = v9;
      *v9 = v8;
      v14 = v8;
      v7 = (_DWORD *)*v7;
    }
    while ( v7 != a4 );
    v6 = v13;
  }
  v10 = (_DWORD **)*a2;
  if ( v6 != &v13 && v10 != &v13 )
  {
    *v14 = v10;
    *(_DWORD *)v6[1] = &v13;
    *v10[1] = v6;
    v11 = v10[1];
    v10[1] = v14;
    v14 = (_DWORD *)v6[1];
    v6[1] = v11;
  }
  return std::priv::_List_base<AnimatedFX *,std::allocator<AnimatedFX *>>::clear(&v13);
}


// ===== 494cbc std::list<AnimatedFX *,std::allocator<AnimatedFX *>>::operator=(std::list<AnimatedFX *,std::allocator<AnimatedFX *>> const&) =====
_DWORD *__fastcall std::list<AnimatedFX *>::operator=(_DWORD *a1, _DWORD *a2)
{
  _DWORD *v4; // r0
  _DWORD *v5; // r2
  int v6; // r12
  _DWORD *v7; // r1
  _DWORD *v9; // r5
  _DWORD *v10; // r3
  _DWORD *v11; // [sp+8h] [bp-Ch] BYREF

  if ( a1 != a2 )
  {
    v4 = (_DWORD *)*a1;
    v5 = (_DWORD *)*a2;
    while ( a1 != v4 )
    {
      if ( a2 == v5 )
      {
        while ( 1 )
        {
          v9 = (_DWORD *)*v4;
          v10 = (_DWORD *)v4[1];
          *v10 = *v4;
          v9[1] = v10;
          __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v4, 0xCu);
          if ( a1 == v9 )
            break;
          v4 = v9;
        }
        return a1;
      }
      v6 = v5[2];
      v7 = (_DWORD *)*v4;
      v5 = (_DWORD *)*v5;
      v4[2] = v6;
      v4 = v7;
    }
    if ( a2 != v5 )
    {
      v11 = a1;
      std::list<AnimatedFX *>::_M_splice_insert_dispatch<std::priv::_List_iterator<AnimatedFX *,std::_Const_traits<AnimatedFX *>>>(
        (int)a1,
        &v11,
        v5,
        a2);
    }
  }
  return a1;
}


// ===== 494d58 std::priv::__copy<VisualFXManager::AnimatedFXInfo *,VisualFXManager::AnimatedFXInfo *,int>(VisualFXManager::AnimatedFXInfo *,VisualFXManager::AnimatedFXInfo *,VisualFXManager::AnimatedFXInfo *,std::random_access_iterator_tag const&,int *) =====
int __fastcall std::priv::__copy<VisualFXManager::AnimatedFXInfo *,VisualFXManager::AnimatedFXInfo *,int>(
        int a1,
        int a2,
        int a3)
{
  int v5; // r9
  int v6; // r6
  int v7; // r5

  v5 = -1431655765 * ((a2 - a1) >> 3);
  if ( v5 > 0 )
  {
    v6 = -1431655765 * ((a2 - a1) >> 3);
    v7 = 0;
    do
    {
      *(_DWORD *)(a3 + v7) = *(_DWORD *)(a1 + v7);
      std::vector<AnimatedFX *>::operator=((_DWORD *)(a3 + v7 + 4), (_DWORD *)(a1 + v7 + 4));
      std::list<AnimatedFX *>::operator=((_DWORD *)(a3 + v7 + 16), (_DWORD *)(a1 + v7 + 16));
      --v6;
      v7 += 24;
    }
    while ( v6 );
    a3 += 24 * v5;
  }
  return a3;
}


// ===== 494dd4 std::vector<VisualFXManager::AnimatedFXInfo,std::allocator<VisualFXManager::AnimatedFXInfo>>::_M_erase(VisualFXManager::AnimatedFXInfo*,VisualFXManager::AnimatedFXInfo*,std::__false_type const&) =====
int __fastcall std::vector<VisualFXManager::AnimatedFXInfo>::_M_erase(int a1, int a2, int a3)
{
  int v5; // r0
  VisualFXManager::AnimatedFXInfo *v6; // r7
  int v7; // r8
  VisualFXManager::AnimatedFXInfo *v8; // r6
  VisualFXManager::AnimatedFXInfo *v9; // r0

  v5 = std::priv::__copy<VisualFXManager::AnimatedFXInfo *,VisualFXManager::AnimatedFXInfo *,int>(
         a3,
         *(_DWORD *)(a1 + 4),
         a2);
  v6 = *(VisualFXManager::AnimatedFXInfo **)(a1 + 4);
  v7 = v5;
  if ( v6 != (VisualFXManager::AnimatedFXInfo *)v5 )
  {
    v8 = (VisualFXManager::AnimatedFXInfo *)v5;
    do
    {
      v9 = v8;
      v8 = (VisualFXManager::AnimatedFXInfo *)((char *)v8 + 24);
      VisualFXManager::AnimatedFXInfo::~AnimatedFXInfo(v9);
    }
    while ( v6 != v8 );
  }
  *(_DWORD *)(a1 + 4) = v7;
  return a2;
}


// ===== 494e3c VisualFXManager::_FlushAnimDict(void) =====
int __fastcall VisualFXManager::_FlushAnimDict(VisualFXManager *this)
{
  char *v2; // r5
  AnimatedFX **i; // r6
  int v4; // r8
  int v5; // r3
  int v6; // r9
  unsigned int v7; // r11
  _DWORD *v8; // r8
  int v9; // r2
  int v10; // r7
  unsigned int v11; // r6
  int v12; // r3
  _DWORD *j; // r6
  _DWORD *v14; // r8
  _DWORD *v15; // t1
  int v16; // r3
  int v17; // r1
  int v18; // r2
  int v19; // r9
  unsigned int v20; // r11
  int v21; // r10
  _DWORD *k; // r6
  _DWORD *v23; // r8
  void *v24; // r0
  void **v25; // r6
  void **m; // r3
  int result; // r0
  _BYTE v28[8]; // [sp+4h] [bp-8h] BYREF

  v2 = (char *)this + 8;
  for ( i = *((AnimatedFX ***)this + 2); i != (AnimatedFX **)v2; i = (AnimatedFX **)*i )
    VisualFXManager::DropAnimatedFX(this, i + 2);
  v4 = *((_DWORD *)this + 10);
  v5 = *((_DWORD *)this + 11);
  if ( -1431655765 * ((v5 - v4) >> 3) )
  {
    v6 = 0;
    v7 = 0;
    do
    {
      v8 = (_DWORD *)(v4 + v6);
      v9 = v8[2];
      v10 = v8[1];
      if ( (unsigned int)(v9 - v10) >> 2 )
      {
        v11 = 0;
        do
        {
          v12 = *(_DWORD *)(v10 + 4 * v11);
          if ( v12 )
          {
            (*(void (__fastcall **)(_DWORD))(*(_DWORD *)v12 + 4))(*(_DWORD *)(v10 + 4 * v11));
            *(_DWORD *)(v10 + 4 * v11) = 0;
            v9 = v8[2];
            v10 = v8[1];
          }
          ++v11;
        }
        while ( v11 < (v9 - v10) >> 2 );
      }
      if ( v9 != v10 )
        v8[2] = v10;
      v15 = (_DWORD *)v8[4];
      v14 = v8 + 4;
      for ( j = v15; j != v14; j = (_DWORD *)*j )
      {
        v16 = j[2];
        if ( v16 )
        {
          (*(void (__fastcall **)(_DWORD))(*(_DWORD *)v16 + 4))(j[2]);
          j[2] = 0;
        }
      }
      std::priv::_List_base<AnimatedFX *,std::allocator<AnimatedFX *>>::clear(j);
      v4 = *((_DWORD *)this + 10);
      v5 = *((_DWORD *)this + 11);
      ++v7;
      v6 += 24;
    }
    while ( v7 < -1431655765 * ((v5 - v4) >> 3) );
  }
  v17 = *((_DWORD *)this + 7);
  v18 = *((_DWORD *)this + 8);
  if ( -1431655765 * ((v18 - v17) >> 3) )
  {
    v19 = 0;
    v20 = 0;
    do
    {
      v21 = v17 + v19;
      v23 = (_DWORD *)(v17 + v19 + 16);
      for ( k = (_DWORD *)*v23; k != v23; k = (_DWORD *)*k )
      {
        v24 = (void *)k[2];
        if ( v24 )
        {
          CustomFree(v24);
          k[2] = 0;
        }
      }
      v25 = *(void ***)(v21 + 4);
      for ( m = *(void ***)(v21 + 8); v25 != m; ++v25 )
      {
        if ( *v25 )
        {
          CustomFree(*v25);
          *v25 = nullptr;
          m = *(void ***)(v21 + 8);
        }
      }
      v17 = *((_DWORD *)this + 7);
      v18 = *((_DWORD *)this + 8);
      ++v20;
      v19 += 24;
    }
    while ( v20 < -1431655765 * ((v18 - v17) >> 3) );
    v4 = *((_DWORD *)this + 10);
    v5 = *((_DWORD *)this + 11);
  }
  if ( v4 != v5 )
  {
    std::vector<VisualFXManager::AnimatedFXInfo>::_M_erase((char *)this + 40, v4, v5, v28);
    v17 = *((_DWORD *)this + 7);
    v18 = *((_DWORD *)this + 8);
  }
  if ( v17 != v18 )
    std::vector<VisualFXManager::AnimFXSetInfo>::_M_erase((char *)this + 28);
  result = std::priv::_List_base<AnimatedFX *,std::allocator<AnimatedFX *>>::clear(v2);
  *((_BYTE *)this + 4) = 0;
  return result;
}


// ===== 4950a0 VisualFXManager::FlushLibraries(void) =====
// attributes: thunk
int __fastcall VisualFXManager::FlushLibraries(VisualFXManager *this)
{
  return VisualFXManager::_FlushAnimDict(this);
}


// ===== 4950a4 VisualFXManager::~VisualFXManager() =====
void __fastcall VisualFXManager::~VisualFXManager(VisualFXManager *this)
{
  char *v2; // r5
  void *v3; // r0
  size_t v4; // r1

  *(_DWORD *)this = off_969CC8;
  v2 = (char *)this + 40;
  VisualFXManager::FlushLibraries(this);
  std::vector<VisualFXManager::AnimatedFXInfo>::~vector(v2);
  std::vector<VisualFXManager::AnimFXSetInfo>::~vector((char *)this + 28);
  v3 = *((void **)this + 4);
  if ( !v3 )
    goto LABEL_4;
  v4 = (*((_DWORD *)this + 6) - (_DWORD)v3) & 0xFFFFFFFC;
  if ( v4 <= 0x80 )
  {
    __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v3, v4);
LABEL_4:
    std::priv::_List_base<AnimatedFX *,std::allocator<AnimatedFX *>>::clear((char *)this + 8);
    return;
  }
  CustomFree(v3);
  std::priv::_List_base<AnimatedFX *,std::allocator<AnimatedFX *>>::clear((char *)this + 8);
}


// ===== 495130 VisualFXManager::~VisualFXManager() =====
void __fastcall VisualFXManager::~VisualFXManager(VisualFXManager *this)
{
  VisualFXManager::~VisualFXManager(this);
  CustomFree(this);
}


// ===== 49514c VisualFXManager::~VisualFXManager() =====
void __fastcall VisualFXManager::~VisualFXManager(VisualFXManager *this)
{
  char *v2; // r5
  void *v3; // r0
  size_t v4; // r1

  *(_DWORD *)this = off_969CC8;
  v2 = (char *)this + 40;
  VisualFXManager::FlushLibraries(this);
  std::vector<VisualFXManager::AnimatedFXInfo>::~vector(v2);
  std::vector<VisualFXManager::AnimFXSetInfo>::~vector((char *)this + 28);
  v3 = *((void **)this + 4);
  if ( !v3 )
    goto LABEL_4;
  v4 = (*((_DWORD *)this + 6) - (_DWORD)v3) & 0xFFFFFFFC;
  if ( v4 <= 0x80 )
  {
    __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v3, v4);
LABEL_4:
    std::priv::_List_base<AnimatedFX *,std::allocator<AnimatedFX *>>::clear((char *)this + 8);
    return;
  }
  CustomFree(v3);
  std::priv::_List_base<AnimatedFX *,std::allocator<AnimatedFX *>>::clear((char *)this + 8);
}


// ===== 4951d8 VisualFXManager::AnimatedFXInfo::AnimatedFXInfo(VisualFXManager::AnimatedFXInfo const&) =====
VisualFXManager::AnimatedFXInfo *__fastcall VisualFXManager::AnimatedFXInfo::AnimatedFXInfo(
        VisualFXManager::AnimatedFXInfo *this,
        const VisualFXManager::AnimatedFXInfo *a2)
{
  char *v4; // r4
  char *v5; // r6
  char *i; // r7
  char *v7; // t1
  _DWORD *v8; // r0
  _DWORD *v9; // r3

  v4 = (char *)this + 16;
  *(_DWORD *)this = *(_DWORD *)a2;
  std::vector<AnimatedFX *>::vector((_DWORD *)this + 1, (int)a2 + 4);
  *((_DWORD *)this + 4) = v4;
  *((_DWORD *)this + 5) = v4;
  v7 = *((char **)a2 + 4);
  v5 = (char *)a2 + 16;
  for ( i = v7; v5 != i; i = *(char **)i )
  {
    v8 = std::allocator<std::priv::_List_node<AnimatedFX *>>::allocate();
    v8[2] = *((_DWORD *)i + 2);
    v9 = *((_DWORD **)v4 + 1);
    *v8 = v4;
    v8[1] = v9;
    *v9 = v8;
    *((_DWORD *)v4 + 1) = v8;
  }
  return this;
}


// ===== 495240 std::vector<VisualFXManager::AnimatedFXInfo,std::allocator<VisualFXManager::AnimatedFXInfo>>::push_back(VisualFXManager::AnimatedFXInfo const&) =====
void __fastcall std::vector<VisualFXManager::AnimatedFXInfo>::push_back(
        VisualFXManager::AnimatedFXInfo **a1,
        const VisualFXManager::AnimatedFXInfo *a2)
{
  VisualFXManager::AnimatedFXInfo *v3; // r5
  VisualFXManager::AnimatedFXInfo *v4; // r0
  unsigned int v6; // r2
  unsigned int v7; // r1
  VisualFXManager::AnimatedFXInfo *v8; // r0
  VisualFXManager::AnimatedFXInfo *v9; // r9
  VisualFXManager::AnimatedFXInfo *v10; // r10
  int v11; // r3
  int v12; // r5
  VisualFXManager::AnimatedFXInfo *v13; // r5
  int v14; // r8
  int v15; // r7
  VisualFXManager::AnimatedFXInfo *v16; // r3
  size_t v17; // [sp+4h] [bp-4h] BYREF

  v3 = a1[2];
  v4 = a1[1];
  if ( v4 == v3 )
  {
    v6 = -1431655765 * ((v3 - *a1) >> 3);
    if ( v6 )
      v7 = 1431655766 * ((v3 - *a1) >> 3);
    else
      v7 = 1;
    if ( v7 > 0xAAAAAAA || v6 > v7 )
      v7 = 178956970;
    v17 = v7;
    v8 = (VisualFXManager::AnimatedFXInfo *)std::allocator<VisualFXManager::AnimatedFXInfo>::_M_allocate(
                                              (int)(a1 + 2),
                                              v7,
                                              &v17);
    v9 = *a1;
    v10 = v8;
    v11 = (v3 - *a1) >> 3;
    v12 = -1431655765 * v11;
    if ( -1431655765 * v11 > 0 )
    {
      v14 = -1431655765 * v11;
      v15 = 0;
      do
      {
        VisualFXManager::AnimatedFXInfo::AnimatedFXInfo(
          (VisualFXManager::AnimatedFXInfo *)((char *)v10 + v15),
          (VisualFXManager::AnimatedFXInfo *)((char *)v9 + v15));
        --v14;
        v15 += 24;
      }
      while ( v14 );
      v13 = (VisualFXManager::AnimatedFXInfo *)((char *)v10 + 24 * v12);
    }
    else
    {
      v13 = v8;
    }
    VisualFXManager::AnimatedFXInfo::AnimatedFXInfo(v13, a2);
    std::vector<VisualFXManager::AnimatedFXInfo>::_M_clear_after_move(a1);
    v16 = (VisualFXManager::AnimatedFXInfo *)((char *)v10 + 24 * v17);
    *a1 = v10;
    a1[2] = v16;
    a1[1] = (VisualFXManager::AnimatedFXInfo *)((char *)v13 + 24);
  }
  else
  {
    VisualFXManager::AnimatedFXInfo::AnimatedFXInfo(v4, a2);
    a1[1] = (VisualFXManager::AnimatedFXInfo *)((char *)a1[1] + 24);
  }
}


// ===== 495364 VisualFXManager::_BuildAnimFXDict(void) =====
void __fastcall VisualFXManager::_BuildAnimFXDict(VisualFXManager *this)
{
  int v1; // r3
  int v2; // r6
  char *v3; // r11
  int v4; // r4
  _DWORD v5[4]; // [sp+8h] [bp-1Ch] BYREF
  _DWORD v6[3]; // [sp+18h] [bp-Ch] BYREF

  v1 = Arrays::EffectDict::size;
  if ( Arrays::EffectDict::size )
  {
    v2 = 0;
    v3 = (char *)this + 40;
    v4 = 0;
    do
    {
      memset(&v5[1], 0, 12);
      v6[0] = v6;
      v6[1] = v6;
      if ( v4 >= 0 && v1 > v4 )
        v5[0] = *(_DWORD *)(Arrays::EffectDict::members + v2 + 8);
      else
        v5[0] = 0;
      std::vector<VisualFXManager::AnimatedFXInfo>::push_back(v3, v5);
      VisualFXManager::AnimatedFXInfo::~AnimatedFXInfo((VisualFXManager::AnimatedFXInfo *)v5);
      ++v4;
      v2 += 12;
      v1 = Arrays::EffectDict::size;
    }
    while ( Arrays::EffectDict::size > (unsigned int)v4 );
  }
}


// ===== 495430 VisualFXManager::GrabAnimFX(int,GameObject *) =====
AnimatedFX *__fastcall VisualFXManager::GrabAnimFX(VisualFXManager *this, int a2, GameObject *a3)
{
  int Module; // r10
  AnimatedFX *AnimFX; // r6
  int v9; // r11
  int v10; // r1
  int v11; // r2
  int v12; // r3
  int v13; // r2
  int AnimFXSetData; // r10
  _DWORD *v15; // r0
  _DWORD *v16; // r2
  int Random; // r0
  const VisualFXManager::AnimFXSetInfo *v18; // [sp+14h] [bp-70h]
  _BYTE v19[24]; // [sp+1Ch] [bp-68h] BYREF
  int v20; // [sp+34h] [bp-50h] BYREF
  float v21; // [sp+38h] [bp-4Ch]
  int v22; // [sp+44h] [bp-40h]
  _DWORD v23[3]; // [sp+48h] [bp-3Ch] BYREF
  _DWORD v24[3]; // [sp+54h] [bp-30h] BYREF
  std::string v25; // [sp+64h] [bp-20h] BYREF

  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string((int)&v25, "AnimatedFX");
  Module = DebugSwitches::GetModule((DebugSwitches *)&DebugSwitches::s_inst, &v25);
  if ( (std::string *)v25._M_start_of_storage._M_data != &v25 && v25._M_start_of_storage._M_data )
  {
    if ( (unsigned int)(v25._M_buffers._M_end_of_storage - v25._M_start_of_storage._M_data) > 0x80 )
    {
      CustomFree(v25._M_start_of_storage._M_data);
      if ( !Module )
        return nullptr;
      goto LABEL_9;
    }
    __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(
      v25._M_start_of_storage._M_data,
      v25._M_buffers._M_end_of_storage - v25._M_start_of_storage._M_data);
  }
  if ( !Module )
    return nullptr;
LABEL_9:
  if ( a2 < 0 || a2 >= Arrays::AnimatedEffectTable::size )
    return nullptr;
  v9 = *((_DWORD *)this + 7);
  v18 = (const VisualFXManager::AnimFXSetInfo *)(v9 + 24 * a2);
  AnimFX = (AnimatedFX *)VisualFXManager::_GetAnimFX(this, *(_DWORD *)(*(_DWORD *)(*(_DWORD *)v18 + 16) + 4));
  if ( AnimFX )
  {
    v11 = *(_DWORD *)(v9 + 24 * a2);
    if ( *(_DWORD *)(v11 + 20) == 2 )
    {
      Random = Random::GetRandom(*(Random **)(v11 + 12), v10, v11);
      v11 = *(_DWORD *)(v9 + 24 * a2);
      v12 = Random;
    }
    else
    {
      v12 = 0;
    }
    v13 = *(_DWORD *)(v11 + 8);
    v23[1] = dword_99F858;
    v24[1] = dword_99F858;
    v23[0] = Vec3f_Origin;
    v24[0] = Vec3f_Origin;
    v23[2] = dword_99F85C;
    v24[2] = dword_99F85C;
    AnimFXSetData = VisualFXManager::GetAnimFXSetData(this, a2, v13, v12, a3, 0, v24, v23);
    VisualFXManager::AnimFXSetInfo::AnimFXSetInfo((VisualFXManager::AnimFXSetInfo *)v19, v18);
    VisualFXManager::GetAnimFXData(&v20, this, v19, AnimFXSetData);
    VisualFXManager::AnimFXSetInfo::~AnimFXSetInfo((VisualFXManager::AnimFXSetInfo *)v19);
    v15 = (_DWORD *)std::allocator<std::priv::_List_node<VisualFXManager::AnimFXSetData *>>::allocate((char *)v18 + 16);
    v15[2] = AnimFXSetData;
    v16 = *((_DWORD **)v18 + 5);
    *v15 = (char *)v18 + 16;
    v15[1] = v16;
    *v16 = v15;
    *((_DWORD *)v18 + 5) = v15;
    *((_DWORD *)AnimFX + 10) = a3;
    AnimatedFX::SyncIrrData(AnimFX, 1);
    AnimatedFX::SyncIrrData(AnimFX, 1);
    AnimatedFX::SetLooping(AnimFX, 1);
    AnimatedFX::SetStart(AnimFX);
    AnimatedFX::SetAnimFX(
      (int)AnimFX,
      (unsigned __int8)v20,
      BYTE1(v20),
      BYTE2(v20),
      v21,
      -1,
      v22,
      (int)VisualFXManager::__Anim_EndOfLoop);
    AnimatedFX::SetVisible(AnimFX, 1);
  }
  return AnimFX;
}


// ===== 4956b8 VisualFXManager::PlayAnimFX(int,Point3D<float> const&,Point3D<float> const&,GameObject const*,VisualFXManager::AnimFXData *) =====
void __fastcall VisualFXManager::PlayAnimFX(
        VisualFXManager *a1,
        int a2,
        VisualObject **a3,
        int a4,
        VisualObject *a5,
        int a6)
{
  int Module; // r5
  VisualObject **AnimFX; // r0
  VisualObject **v10; // r5
  VisualObject *v11; // r3
  VisualObject *v12; // r1
  std::string v15; // [sp+1Ch] [bp-20h] BYREF

  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string((int)&v15, "AnimatedFX");
  Module = DebugSwitches::GetModule((DebugSwitches *)&DebugSwitches::s_inst, &v15);
  if ( (std::string *)v15._M_start_of_storage._M_data != &v15 && v15._M_start_of_storage._M_data )
  {
    if ( (unsigned int)(v15._M_buffers._M_end_of_storage - v15._M_start_of_storage._M_data) > 0x80 )
      CustomFree(v15._M_start_of_storage._M_data);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(
        v15._M_start_of_storage._M_data,
        v15._M_buffers._M_end_of_storage - v15._M_start_of_storage._M_data);
  }
  if ( Module )
  {
    AnimFX = VisualFXManager::_GetAnimFX(a1, a2);
    v10 = AnimFX;
    if ( AnimFX )
    {
      v11 = a3[2];
      v12 = *a3;
      AnimFX[14] = a3[1];
      AnimFX[15] = v11;
      AnimFX[13] = v12;
      AnimatedFX::SyncIrrData((int)AnimFX, 0);
      AnimatedFX::SetRotation(v10, a4);
      AnimatedFX::SetLooping((AnimatedFX *)v10, 1);
      AnimatedFX::SetStart((AnimatedFX *)v10);
      if ( a6 )
      {
        AnimatedFX::SetAnimFX(
          (int)v10,
          *(_BYTE *)a6,
          *(_BYTE *)(a6 + 1),
          *(_BYTE *)(a6 + 2),
          *(float *)(a6 + 4),
          *(_DWORD *)(a6 + 8),
          *(_DWORD *)(a6 + 16),
          (int)VisualFXManager::__Anim_EndOfLoop);
        v10[7] = *(VisualObject **)(a6 + 12);
      }
      else
      {
        AnimatedFX::SetAnimFX((int)v10, 1, 0, 1, 1.0, 0, 0, (int)VisualFXManager::__Anim_EndOfLoop);
      }
      if ( a5 )
      {
        v10[10] = a5;
        AnimatedFX::SyncIrrData((int)v10, 1);
      }
      AnimatedFX::SetVisible((int)v10, 1);
    }
  }
}


// ===== 495888 VisualFXManager::PlayAnimFXSet(int,Point3D<float> const&,Point3D<float> const&,GameObject const*,VisualFXManager::AnimFXSetData *) =====
int __fastcall VisualFXManager::PlayAnimFXSet(int result, int a2, int *a3, int *a4, int a5, int a6)
{
  int v6; // r6
  int v9; // r11
  int v10; // r9
  int v11; // r2
  const VisualFXManager::AnimFXSetInfo *v12; // r7
  int Random; // r3
  int v14; // r2
  int v15; // r10
  int v16; // r12
  int AnimFXSetData; // r10
  _DWORD *v18; // r0
  _DWORD *v19; // r3
  int v20; // r2
  int v21; // r3
  int v22; // [sp+10h] [bp-64h]
  int v23; // [sp+14h] [bp-60h]
  int v24; // [sp+18h] [bp-5Ch]
  int v25; // [sp+1Ch] [bp-58h]
  int v26; // [sp+20h] [bp-54h]
  int v27; // [sp+24h] [bp-50h]
  _BYTE v28[24]; // [sp+2Ch] [bp-48h] BYREF
  _BYTE v29[20]; // [sp+44h] [bp-30h] BYREF
  _DWORD v30[3]; // [sp+58h] [bp-1Ch] BYREF
  _DWORD v31[4]; // [sp+64h] [bp-10h] BYREF

  v6 = result;
  if ( a2 >= 0 && a2 < Arrays::AnimatedEffectTable::size )
  {
    v9 = 24 * a2;
    v10 = *(_DWORD *)(result + 28);
    v11 = *(_DWORD *)(v10 + 24 * a2);
    v12 = (const VisualFXManager::AnimFXSetInfo *)(v10 + 24 * a2);
    if ( *(_DWORD *)(v11 + 20) == 2 )
    {
      v22 = a2;
      Random = Random::GetRandom(*(Random **)(v11 + 12), a2, v11);
      v24 = 48 * Random;
      v11 = *(_DWORD *)(v10 + v9);
      a2 = v22;
      v27 = Random;
    }
    else
    {
      v24 = 0;
      v27 = 0;
      Random = 0;
    }
    v14 = *(_DWORD *)(v11 + 8);
    v23 = a3[1];
    v15 = *a4;
    v25 = a4[1];
    v26 = a4[2];
    v16 = *a3;
    v31[2] = a3[2];
    v30[0] = v15;
    v31[0] = v16;
    v31[1] = v23;
    v30[1] = v25;
    v30[2] = v26;
    AnimFXSetData = VisualFXManager::GetAnimFXSetData(v6, a2, v14, Random, a5, a6, v31, v30);
    VisualFXManager::AnimFXSetInfo::AnimFXSetInfo((VisualFXManager::AnimFXSetInfo *)v28, v12);
    VisualFXManager::GetAnimFXData((int)v29, v6, (int)v28, AnimFXSetData);
    VisualFXManager::AnimFXSetInfo::~AnimFXSetInfo((VisualFXManager::AnimFXSetInfo *)v28);
    v18 = (_DWORD *)std::allocator<std::priv::_List_node<VisualFXManager::AnimFXSetData *>>::allocate((char *)v12 + 16);
    v18[2] = AnimFXSetData;
    v19 = *((_DWORD **)v12 + 5);
    *v18 = (char *)v12 + 16;
    v18[1] = v19;
    *v19 = v18;
    *((_DWORD *)v12 + 5) = v18;
    v20 = *(_DWORD *)(*(_DWORD *)(v10 + v9) + 16);
    if ( *(_DWORD *)(v20 + v24 + 4) == -1 )
      return VisualFXManager::PlayAnimFX(
               v6,
               *(_DWORD *)(v20 + 48 * *(_DWORD *)(AnimFXSetData + 4) + 4),
               a3,
               a4,
               a5,
               v29);
    v21 = *(_DWORD *)(*((_DWORD *)v12 + 1) + 4 * v27);
    if ( !*(_BYTE *)v21 )
      return VisualFXManager::PlayAnimFX(
               v6,
               *(_DWORD *)(v20 + 48 * *(_DWORD *)(AnimFXSetData + 4) + 4),
               a3,
               a4,
               a5,
               v29);
    else
      return VisualFXManager::PlayAnimFXSet(v6, *(_DWORD *)(v21 + 4), a3, a4, a5, a6);
  }
  return result;
}


// ===== 495a88 VisualFXManager::PreCacheLibraries(void) =====
void __fastcall VisualFXManager::PreCacheLibraries(VisualFXManager *this)
{
  int Module; // r7
  std::string v3; // [sp+4h] [bp-1Ch] BYREF

  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string((int)&v3, "AnimatedFX");
  Module = DebugSwitches::GetModule((DebugSwitches *)&DebugSwitches::s_inst, &v3);
  if ( (std::string *)v3._M_start_of_storage._M_data != &v3 && v3._M_start_of_storage._M_data )
  {
    if ( (unsigned int)(v3._M_buffers._M_end_of_storage - v3._M_start_of_storage._M_data) > 0x80 )
      CustomFree(v3._M_start_of_storage._M_data);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(
        v3._M_start_of_storage._M_data,
        v3._M_buffers._M_end_of_storage - v3._M_start_of_storage._M_data);
  }
  if ( Module )
    VisualFXManager::_PreCacheAnimDict(this);
}


// ===== 495b54 VisualFXManager::PlayAnimFX(int,Point3D<float> const&,GameObject const*,VisualFXManager::AnimFXData *) =====
void __fastcall VisualFXManager::PlayAnimFX(VisualFXManager *a1, int a2, VisualObject **a3, VisualObject *a4, int a5)
{
  int Module; // r6
  VisualObject **AnimFX; // r0
  VisualObject **v10; // r6
  VisualObject *v11; // r3
  VisualObject *v12; // r1
  std::string v14; // [sp+1Ch] [bp-20h] BYREF

  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string((int)&v14, "AnimatedFX");
  Module = DebugSwitches::GetModule((DebugSwitches *)&DebugSwitches::s_inst, &v14);
  if ( (std::string *)v14._M_start_of_storage._M_data != &v14 && v14._M_start_of_storage._M_data )
  {
    if ( (unsigned int)(v14._M_buffers._M_end_of_storage - v14._M_start_of_storage._M_data) > 0x80 )
      CustomFree(v14._M_start_of_storage._M_data);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(
        v14._M_start_of_storage._M_data,
        v14._M_buffers._M_end_of_storage - v14._M_start_of_storage._M_data);
  }
  if ( Module )
  {
    AnimFX = VisualFXManager::_GetAnimFX(a1, a2);
    v10 = AnimFX;
    if ( AnimFX )
    {
      v11 = a3[2];
      v12 = *a3;
      AnimFX[14] = a3[1];
      AnimFX[15] = v11;
      AnimFX[13] = v12;
      AnimatedFX::SyncIrrData((int)AnimFX, 0);
      AnimatedFX::SetLooping((AnimatedFX *)v10, 1);
      AnimatedFX::SetStart((AnimatedFX *)v10);
      if ( a5 )
      {
        AnimatedFX::SetAnimFX(
          (int)v10,
          *(_BYTE *)a5,
          *(_BYTE *)(a5 + 1),
          *(_BYTE *)(a5 + 2),
          *(float *)(a5 + 4),
          *(_DWORD *)(a5 + 8),
          *(_DWORD *)(a5 + 16),
          (int)VisualFXManager::__Anim_EndOfLoop);
        v10[7] = *(VisualObject **)(a5 + 12);
      }
      else
      {
        AnimatedFX::SetAnimFX((int)v10, 1, 0, 1, 1.0, 0, 0, (int)VisualFXManager::__Anim_EndOfLoop);
      }
      if ( a4 )
      {
        v10[10] = a4;
        AnimatedFX::SyncIrrData((int)v10, 1);
      }
      AnimatedFX::SetVisible((int)v10, 1);
    }
  }
}


// ===== 495d14 VisualFXManager::PlayAnimFXSet(int,Point3D<float> const&,GameObject const*,VisualFXManager::AnimFXSetData *) =====
int __fastcall VisualFXManager::PlayAnimFXSet(int result, int a2, int *a3, int a4, int a5)
{
  int v5; // r5
  int v8; // r9
  int v9; // r10
  _DWORD *v10; // r2
  _DWORD *v11; // r6
  unsigned int Random; // r3
  int v13; // r2
  int v14; // lr
  int AnimFXSetData; // r8
  _DWORD *v16; // r0
  _DWORD *v17; // r3
  int v18; // r2
  int v19; // r3
  int v20; // [sp+10h] [bp-64h]
  int v21; // [sp+14h] [bp-60h]
  int v22; // [sp+18h] [bp-5Ch]
  unsigned int v23; // [sp+24h] [bp-50h]
  _DWORD v24[6]; // [sp+2Ch] [bp-48h] BYREF
  _BYTE v25[20]; // [sp+44h] [bp-30h] BYREF
  _DWORD v26[3]; // [sp+58h] [bp-1Ch] BYREF
  _DWORD v27[4]; // [sp+64h] [bp-10h] BYREF

  v5 = result;
  if ( a2 >= 0 && a2 < Arrays::AnimatedEffectTable::size )
  {
    v8 = 24 * a2;
    v9 = *(_DWORD *)(result + 28);
    v10 = *(_DWORD **)(v9 + 24 * a2);
    v11 = (_DWORD *)(v9 + 24 * a2);
    if ( v10[5] == 2 )
    {
      v20 = a2;
      Random = Random::GetRandom(v10[3], a2, (bool)v10);
      v22 = 48 * Random;
      v10 = *(_DWORD **)(v9 + v8);
      a2 = v20;
      v23 = Random;
    }
    else
    {
      v22 = 0;
      v23 = 0;
      Random = 0;
    }
    v13 = v10[2];
    v21 = a3[2];
    v14 = *a3;
    v27[1] = a3[1];
    v27[0] = v14;
    v27[2] = v21;
    v26[0] = Vec3f_Origin;
    v26[2] = dword_99F85C;
    v26[1] = dword_99F858;
    AnimFXSetData = VisualFXManager::GetAnimFXSetData(v5, a2, v13, Random, a4, a5, v27, v26);
    VisualFXManager::AnimFXSetInfo::AnimFXSetInfo(v24, v11);
    VisualFXManager::GetAnimFXData((int)v25, v5, (int)v24, AnimFXSetData);
    VisualFXManager::AnimFXSetInfo::~AnimFXSetInfo((VisualFXManager::AnimFXSetInfo *)v24);
    v16 = (_DWORD *)std::allocator<std::priv::_List_node<VisualFXManager::AnimFXSetData *>>::allocate(v11 + 4);
    v16[2] = AnimFXSetData;
    v17 = (_DWORD *)v11[5];
    *v16 = v11 + 4;
    v16[1] = v17;
    *v17 = v16;
    v11[5] = v16;
    v18 = *(_DWORD *)(*(_DWORD *)(v9 + v8) + 16);
    if ( *(_DWORD *)(v18 + v22 + 4) == -1 )
      return VisualFXManager::PlayAnimFX(v5, *(_DWORD *)(v18 + 48 * *(_DWORD *)(AnimFXSetData + 4) + 4), a3, a4, v25);
    v19 = *(_DWORD *)(v11[1] + 4 * v23);
    if ( !*(_BYTE *)v19 )
      return VisualFXManager::PlayAnimFX(v5, *(_DWORD *)(v18 + 48 * *(_DWORD *)(AnimFXSetData + 4) + 4), a3, a4, v25);
    else
      return VisualFXManager::PlayAnimFXSet(v5, *(_DWORD *)(v19 + 4), a3, a4, AnimFXSetData);
  }
  return result;
}


// ===== 495f04 VisualFXManager::PlayAnimFXSet(int,GameObject const*,VisualFXManager::AnimFXSetData *) =====
int __fastcall VisualFXManager::PlayAnimFXSet(int a1, int a2, int a3, int a4)
{
  return VisualFXManager::PlayAnimFXSet(a1, a2, &Vec3f_Origin, a3, a4);
}


// ===== 495f3c VisualFXManager::PlayAnimFX(int,GameObject const*,VisualFXManager::AnimFXData *) =====
void __fastcall VisualFXManager::PlayAnimFX(VisualFXManager *a1, int a2, VisualObject *a3, int a4)
{
  VisualFXManager::PlayAnimFX(a1, a2, (VisualObject **)&Vec3f_Origin, a3, a4);
}


// ===== 495f74 VisualFXManager::PlayAnimFXStep(VisualFXManager::AnimFXSetData *,VisualFXManager::AnimFXData) =====
int __fastcall VisualFXManager::PlayAnimFXStep(int a1, _DWORD *a2)
{
  int v4; // r6
  int varg_r2; // [sp+20h] [bp+18h] BYREF

  v4 = *(_DWORD *)(a1 + 28) + 24 * a2[2];
  if ( **(_BYTE **)(*(_DWORD *)(v4 + 4) + 4 * a2[1]) )
  {
    if ( Point3D<float>::operator==(a2 + 7) )
    {
      if ( Point3D<float>::operator==(a2 + 4) )
        return VisualFXManager::PlayAnimFXSet(
                 a1,
                 *(_DWORD *)(*(_DWORD *)(*(_DWORD *)(v4 + 4) + 4 * a2[1]) + 4),
                 a2[10],
                 a2);
      else
        return VisualFXManager::PlayAnimFXSet(
                 a1,
                 *(_DWORD *)(*(_DWORD *)(*(_DWORD *)(v4 + 4) + 4 * a2[1]) + 4),
                 a2 + 4,
                 a2[10],
                 a2);
    }
    else
    {
      return VisualFXManager::PlayAnimFXSet(
               a1,
               *(_DWORD *)(*(_DWORD *)(*(_DWORD *)(v4 + 4) + 4 * a2[1]) + 4),
               a2 + 4,
               a2 + 7,
               a2[10],
               a2);
    }
  }
  else if ( Point3D<float>::operator==(a2 + 7) )
  {
    if ( Point3D<float>::operator==(a2 + 4) )
      return VisualFXManager::PlayAnimFX(
               a1,
               *(_DWORD *)(*(_DWORD *)(*(_DWORD *)(v4 + 4) + 4 * a2[1]) + 4),
               a2[10],
               &varg_r2);
    else
      return VisualFXManager::PlayAnimFX(
               a1,
               *(_DWORD *)(*(_DWORD *)(*(_DWORD *)(v4 + 4) + 4 * a2[1]) + 4),
               a2 + 4,
               a2[10],
               &varg_r2);
  }
  else
  {
    return VisualFXManager::PlayAnimFX(
             a1,
             *(_DWORD *)(*(_DWORD *)(*(_DWORD *)(v4 + 4) + 4 * a2[1]) + 4),
             a2 + 4,
             a2 + 7,
             a2[10],
             &varg_r2);
  }
}


// ===== 496144 VisualFXManager::_HandleSequence(AnimatedFX *,VisualFXManager::AnimFXSetData *,bool) =====
int __fastcall VisualFXManager::_HandleSequence(int result, int a2, int a3, int a4)
{
  int v4; // r7
  int v5; // r8
  int v6; // r6
  int v7; // r7
  int v8; // r2
  int v9; // r1
  const VisualFXManager::AnimFXSetInfo *v10; // r7
  _BYTE *v11; // r2
  _BYTE *v12; // r2
  _DWORD *v13; // r5
  _DWORD *v14; // r4
  int v15; // r3
  int v16; // r3
  _BOOL4 v17; // r2
  int v18; // lr
  char v19; // [sp+4h] [bp-78h] BYREF
  int v20; // [sp+8h] [bp-74h] BYREF
  int v21; // [sp+14h] [bp-68h]
  VisualFXManager::AnimFXSetInfo *v22; // [sp+18h] [bp-64h]
  char *v23; // [sp+1Ch] [bp-60h]
  int *v24; // [sp+20h] [bp-5Ch]
  VisualFXManager::AnimFXSetInfo *v25; // [sp+24h] [bp-58h]
  int *v26; // [sp+28h] [bp-54h]
  int v27; // [sp+2Ch] [bp-50h]
  char v28; // [sp+34h] [bp-48h] BYREF
  char v29; // [sp+4Ch] [bp-30h] BYREF
  _BYTE v30[8]; // [sp+64h] [bp-18h] BYREF
  _DWORD v31[3]; // [sp+70h] [bp-Ch] BYREF

  v21 = a2;
  v5 = a3;
  if ( a4 )
    a3 = *(_DWORD *)(a3 + 44);
  else
    v4 = *(_DWORD *)(a3 + 8);
  v6 = result;
  if ( a4 )
    v4 = *(_DWORD *)(a3 + 8);
  v7 = 24 * v4;
  v8 = *(_DWORD *)(result + 28);
  v9 = *(_DWORD *)(v8 + v7);
  v10 = (const VisualFXManager::AnimFXSetInfo *)(v8 + v7);
  if ( *(_DWORD *)(v9 + 20) == 1 )
  {
    v23 = &v19;
    v24 = v31;
    v13 = *((_DWORD **)v10 + 4);
    v22 = (VisualFXManager::AnimFXSetInfo *)&v28;
    v27 = v5;
    v26 = &v20;
    v25 = (VisualFXManager::AnimFXSetInfo *)&v29;
    while ( 1 )
    {
      if ( v13 == (_DWORD *)((char *)v10 + 16) )
        return result;
      v14 = (_DWORD *)v13[2];
      if ( !v14 || !*(_BYTE *)v14 )
        goto LABEL_25;
      *(_BYTE *)v14 = 0;
      v15 = v14[1] + 1;
      if ( v15 < *(_DWORD *)(*(_DWORD *)v10 + 12) )
      {
        v14[1] = v15;
        VisualFXManager::AnimFXSetInfo::AnimFXSetInfo(v25, v10);
        VisualFXManager::GetAnimFXData((int)v30, v6, (int)v25, (int)v14);
        VisualFXManager::AnimFXSetInfo::~AnimFXSetInfo(v25);
        v18 = *v24;
LABEL_24:
        *(_DWORD *)v23 = v18;
        *v26 = v31[1];
        result = VisualFXManager::PlayAnimFXStep(v6, v14);
        goto LABEL_25;
      }
      v16 = v14[3];
      v17 = v16 > 0;
      if ( v17 || v16 == -1 )
      {
        if ( v16 > 0 )
          --v16;
        if ( v17 )
          v14[3] = v16;
        v14[1] = 0;
        VisualFXManager::AnimFXSetInfo::AnimFXSetInfo(v22, v10);
        VisualFXManager::GetAnimFXData((int)v30, v6, (int)v22, (int)v14);
        VisualFXManager::AnimFXSetInfo::~AnimFXSetInfo(v22);
        v18 = *v24;
        goto LABEL_24;
      }
      if ( v14[11] )
      {
        result = VisualFXManager::_HandleSequence(v6, v21, v27, 1);
        v13 = (_DWORD *)*v13;
      }
      else
      {
LABEL_25:
        v13 = (_DWORD *)*v13;
      }
    }
  }
  if ( a4 )
  {
    v11 = *(_BYTE **)(*(_DWORD *)(v5 + 44) + 44);
    if ( v11 )
    {
      *v11 = 1;
      return VisualFXManager::_HandleSequence(result, v21, *(_DWORD *)(v5 + 44), 1);
    }
  }
  else
  {
    v12 = *(_BYTE **)(v5 + 44);
    if ( v12 )
    {
      *v12 = 1;
      return VisualFXManager::_HandleSequence(result, v21, v5, 1);
    }
  }
  return result;
}


// ===== 496364 VisualFXManager::_HandleEndOfLoopCB(AnimatedFX *,VisualFXManager::AnimFXSetData *) =====
int __fastcall VisualFXManager::_HandleEndOfLoopCB(int result, int a2, int a3)
{
  int v3; // r12
  int v4; // r3
  int v5; // r5
  int v6; // r3

  v3 = *(_DWORD *)(result + 28);
  if ( *(_DWORD *)(*(_DWORD *)(v3 + 24 * *(_DWORD *)(a3 + 8)) + 20) == 1 )
  {
    v6 = 0;
    return VisualFXManager::_HandleSequence(result, a2, a3, v6);
  }
  v4 = *(_DWORD *)(a3 + 44);
  if ( v4 )
  {
    v5 = *(_DWORD *)(v4 + 8);
    *(_BYTE *)v4 = 1;
    v6 = *(_DWORD *)(*(_DWORD *)(v3 + 24 * v5) + 20);
    if ( v6 == 1 )
      return VisualFXManager::_HandleSequence(result, a2, a3, v6);
  }
  return result;
}


// ===== 4963d0 VisualFXManager::__Anim_EndOfLoop(AnimatedFX *,VisualFXManager::AnimFXSetData *) =====
_DWORD *__fastcall VisualFXManager::__Anim_EndOfLoop(int a1, int a2)
{
  _DWORD *result; // r0
  _DWORD *v4; // r3

  if ( a2 )
    VisualFXManager::_HandleEndOfLoopCB((int)&Singleton<VisualFXManager>::s_inst, a1, a2);
  result = (_DWORD *)std::allocator<std::priv::_List_node<AnimatedFX *>>::allocate(&unk_9A1CDC);
  result[2] = a1;
  v4 = (_DWORD *)dword_9A1CE0;
  *result = &unk_9A1CDC;
  result[1] = v4;
  *v4 = result;
  dword_9A1CE0 = (int)result;
  return result;
}


// ===== 496434 VisualFXManager::RegisterFXToLoad(int) =====
void __fastcall VisualFXManager::RegisterFXToLoad(VisualFXManager *this, int a2)
{
  int Module; // r7
  int v4; // [sp+4h] [bp-48h] BYREF
  std::string v5; // [sp+14h] [bp-38h] BYREF
  std::string v6; // [sp+2Ch] [bp-20h] BYREF

  v4 = a2;
  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string((int)&v6, "AnimatedFX");
  Module = DebugSwitches::GetModule((DebugSwitches *)&DebugSwitches::s_inst, &v6);
  if ( (std::string *)v6._M_start_of_storage._M_data != &v6 && v6._M_start_of_storage._M_data )
  {
    if ( (unsigned int)(v6._M_buffers._M_end_of_storage - v6._M_start_of_storage._M_data) > 0x80 )
      CustomFree(v6._M_start_of_storage._M_data);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(
        v6._M_start_of_storage._M_data,
        v6._M_buffers._M_end_of_storage - v6._M_start_of_storage._M_data);
  }
  if ( Module && v4 >= 0 && v4 < Arrays::EffectDict::size )
  {
    DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
    std::string::string((int)&v5, "isTracingPreCached_FX");
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
    VectorSet<int>::push_back_unique((char *)this + 16, &v4);
  }
}


// ===== 496594 VisualFXManager::Update(void) =====
void __fastcall VisualFXManager::Update(VisualFXManager *this)
{
  int Module; // r7
  int v3; // r7
  int v4; // r10
  unsigned int v5; // r9
  int v6; // r7
  int *i; // r4
  int *v8; // r7
  int *v9; // t1
  char *v10; // r4
  int Animator; // r0
  int v12; // r11
  int v13; // r0
  int v14; // r9
  int v15; // r0
  int v16; // r0
  char *v17; // r9
  _DWORD *v18; // r3
  AnimatedFX *v19; // [sp+4h] [bp-28h] BYREF
  std::string v20; // [sp+Ch] [bp-20h] BYREF

  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string((int)&v20, "AnimatedFX");
  Module = DebugSwitches::GetModule((DebugSwitches *)&DebugSwitches::s_inst, &v20);
  if ( (std::string *)v20._M_start_of_storage._M_data != &v20 && v20._M_start_of_storage._M_data )
  {
    if ( (unsigned int)(v20._M_buffers._M_end_of_storage - v20._M_start_of_storage._M_data) > 0x80 )
      CustomFree(v20._M_start_of_storage._M_data);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(
        v20._M_start_of_storage._M_data,
        v20._M_buffers._M_end_of_storage - v20._M_start_of_storage._M_data);
  }
  if ( Module )
  {
    PushProfilingContext("VisualFXManager::Update");
    v3 = *((_DWORD *)this + 10);
    if ( -1431655765 * ((*((_DWORD *)this + 11) - v3) >> 3) )
    {
      v4 = 0;
      v5 = 0;
      do
      {
        v6 = v3 + v4;
        v9 = *(int **)(v6 + 16);
        v8 = (int *)(v6 + 16);
        for ( i = v9; v8 != i; i = (int *)*i )
          AnimatedFX::Update((AnimatedFX *)i[2]);
        v3 = *((_DWORD *)this + 10);
        ++v5;
        v4 += 24;
      }
      while ( v5 < -1431655765 * ((*((_DWORD *)this + 11) - v3) >> 3) );
    }
    v10 = *((char **)this + 2);
    if ( v10 != (char *)this + 8 )
    {
      do
      {
        v19 = *((AnimatedFX **)v10 + 2);
        Animator = AnimatedFX::GetAnimator(v19);
        (*(void (__fastcall **)(int))(*(_DWORD *)Animator + 68))(Animator);
        v12 = *(_DWORD *)(*((_DWORD *)v19 + 11) + 8);
        v13 = AnimatedFX::GetAnimator(v19);
        v14 = *(_DWORD *)((*(int (__fastcall **)(int))(*(_DWORD *)v13 + 68))(v13) + 20);
        v15 = AnimatedFX::GetAnimator(v19);
        if ( v14 != *(_DWORD *)((*(int (__fastcall **)(int))(*(_DWORD *)v15 + 68))(v15) + 4) )
          AnimatedFX::SetEnd(v19);
        v16 = AnimatedFX::GetAnimator(v19);
        (*(void (__fastcall **)(int, int, int))(*(_DWORD *)v16 + 16))(v16, v12, v14);
        v17 = *(char **)v10;
        if ( !*((_BYTE *)v19 + 36) )
        {
          v18 = *((_DWORD **)v10 + 1);
          *v18 = *(_DWORD *)v10;
          *((_DWORD *)v17 + 1) = v18;
          __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v10, 0xCu);
          VisualFXManager::DropAnimatedFX(this, &v19);
        }
        v10 = v17;
      }
      while ( (char *)this + 8 != v17 );
    }
    PopProfilingContext("VisualFXManager::Update");
  }
}


// ===== 4967e8 VisualFXManager::RegisterFXSetToLoad(int) =====
void __fastcall VisualFXManager::RegisterFXSetToLoad(VisualFXManager *this, int a2)
{
  int Module; // r8
  int v5; // r10
  int v6; // r6
  int v7; // r8
  int v8; // r3
  std::string v9; // [sp+4h] [bp-20h] BYREF

  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string((int)&v9, "AnimatedFX");
  Module = DebugSwitches::GetModule((DebugSwitches *)&DebugSwitches::s_inst, &v9);
  if ( (std::string *)v9._M_start_of_storage._M_data != &v9 && v9._M_start_of_storage._M_data )
  {
    if ( (unsigned int)(v9._M_buffers._M_end_of_storage - v9._M_start_of_storage._M_data) > 0x80 )
      CustomFree(v9._M_start_of_storage._M_data);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(
        v9._M_start_of_storage._M_data,
        v9._M_buffers._M_end_of_storage - v9._M_start_of_storage._M_data);
  }
  if ( Module )
  {
    if ( a2 >= 0 && a2 < Arrays::AnimatedEffectTable::size )
    {
      v5 = Arrays::AnimatedEffectTable::members + 24 * a2;
      if ( *(int *)(v5 + 12) > 0 )
      {
        v6 = 0;
        v7 = 0;
        do
        {
          while ( 1 )
          {
            v8 = *(_DWORD *)(v5 + 16) + v6;
            if ( *(_DWORD *)(v8 + 28) == 1 )
              break;
            VisualFXManager::RegisterFXToLoad(this, *(_DWORD *)(v8 + 4));
            ++v7;
            v6 += 48;
            if ( *(_DWORD *)(v5 + 12) <= v7 )
              return;
          }
          VisualFXManager::RegisterFXSetToLoad(this, *(_DWORD *)(v8 + 4));
          ++v7;
          v6 += 48;
        }
        while ( *(_DWORD *)(v5 + 12) > v7 );
      }
    }
  }
}


// ===== 496954 VisualFXManager::_BuildAnimFXSets(void) =====
VisualFXManager *__fastcall VisualFXManager::_BuildAnimFXSets(VisualFXManager *this)
{
  int v1; // r9
  unsigned int v2; // r10
  int v3; // r5
  unsigned int v4; // r1
  int v5; // r4
  unsigned int v6; // r6
  int v7; // r3
  VisualFXManager *v8; // [sp+Ch] [bp-40h]
  _DWORD *v9; // [sp+18h] [bp-34h]
  int v10; // [sp+2Ch] [bp-20h] BYREF
  int v11; // [sp+30h] [bp-1Ch] BYREF
  int *v12; // [sp+34h] [bp-18h]
  int *v13; // [sp+38h] [bp-14h]
  _DWORD v14[2]; // [sp+3Ch] [bp-10h] BYREF
  int v15; // [sp+44h] [bp-8h]

  if ( *((_DWORD *)this + 7) == *((_DWORD *)this + 8) && Arrays::AnimatedEffectTable::size )
  {
    v1 = 0;
    v9 = (_DWORD *)((char *)this + 28);
    v8 = this;
    v2 = 0;
    while ( 1 )
    {
      v11 = 0;
      v12 = nullptr;
      v13 = nullptr;
      v3 = Arrays::AnimatedEffectTable::members + v1;
      v14[0] = v14;
      v14[1] = v14;
      v10 = Arrays::AnimatedEffectTable::members + v1;
      v4 = *(_DWORD *)(Arrays::AnimatedEffectTable::members + v1 + 12);
      if ( v4 )
        break;
LABEL_14:
      std::vector<VisualFXManager::AnimFXSetInfo>::push_back(v9, &v10);
      VisualFXManager::AnimFXSetInfo::~AnimFXSetInfo((VisualFXManager::AnimFXSetInfo *)&v10);
      ++v2;
      v1 += 24;
      if ( Arrays::AnimatedEffectTable::size <= v2 )
        return this;
    }
    v5 = 0;
    v6 = 0;
    while ( 1 )
    {
      v7 = *(_DWORD *)(v3 + 16) + v5;
      if ( *(_DWORD *)(v7 + 4) != -1 )
      {
        if ( *(_DWORD *)(v7 + 28) )
        {
          v15 = operator new(8, 0);
          *(_BYTE *)v15 = 1;
          *(_DWORD *)(v15 + 4) = *(_DWORD *)(*(_DWORD *)(v3 + 16) + v5 + 4);
          if ( v12 == v13 )
            std::vector<VisualFXManager::AnimFXStep *>::_M_insert_overflow(&v11);
          else
            *v12++ = v15;
          if ( *(_BYTE *)(v3 + 4) )
            VisualFXManager::RegisterFXSetToLoad(v8, *(_DWORD *)(*(_DWORD *)(v3 + 16) + v5 + 4));
        }
        else
        {
          v15 = operator new(8, 0);
          *(_BYTE *)v15 = 0;
          *(_DWORD *)(v15 + 4) = *(_DWORD *)(*(_DWORD *)(v3 + 16) + v5 + 4);
          if ( v12 == v13 )
            std::vector<VisualFXManager::AnimFXStep *>::_M_insert_overflow(&v11);
          else
            *v12++ = v15;
          if ( *(_BYTE *)(v3 + 4) )
          {
            VisualFXManager::RegisterFXToLoad(v8, *(_DWORD *)(*(_DWORD *)(v3 + 16) + v5 + 4));
            v4 = *(_DWORD *)(v3 + 12);
            goto LABEL_13;
          }
        }
        v4 = *(_DWORD *)(v3 + 12);
      }
LABEL_13:
      ++v6;
      v5 += 48;
      if ( v4 <= v6 )
        goto LABEL_14;
    }
  }
  return this;
}


// ===== 496ba4 VisualFXManager::_BuildAnimLibrary(void) =====
int __fastcall VisualFXManager::_BuildAnimLibrary(int this)
{
  VisualFXManager *v1; // r4

  v1 = (VisualFXManager *)this;
  if ( *(_DWORD *)(this + 40) == *(_DWORD *)(this + 44) )
  {
    *(_BYTE *)(this + 4) = 1;
    VisualFXManager::_BuildAnimFXDict((VisualFXManager *)this);
    return VisualFXManager::_BuildAnimFXSets(v1);
  }
  return this;
}


// ===== 496bd8 VisualFXManager::BuildLibraries(void) =====
void __fastcall VisualFXManager::BuildLibraries(VisualFXManager *this)
{
  int Module; // r7
  std::string v3; // [sp+4h] [bp-1Ch] BYREF

  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string((int)&v3, "AnimatedFX");
  Module = DebugSwitches::GetModule((DebugSwitches *)&DebugSwitches::s_inst, &v3);
  if ( (std::string *)v3._M_start_of_storage._M_data != &v3 && v3._M_start_of_storage._M_data )
  {
    if ( (unsigned int)(v3._M_buffers._M_end_of_storage - v3._M_start_of_storage._M_data) > 0x80 )
      CustomFree(v3._M_start_of_storage._M_data);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(
        v3._M_start_of_storage._M_data,
        v3._M_buffers._M_end_of_storage - v3._M_start_of_storage._M_data);
  }
  if ( Module )
    VisualFXManager::_BuildAnimLibrary(this);
}


// ===== 496ca4 `global constructor keyed to'.._.._sources_Game_SWFAnim_SWFAnim.cpp =====
void `global constructor keyed to'.._.._sources_Game_SWFAnim_SWFAnim.cpp()
{
  dword_9A6350 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9A634C = 1056964608;
}


// ===== 496cc4 SWFAnim::SetVisible(bool) =====
int __fastcall SWFAnim::SetVisible(SWFAnim *this, bool a2)
{
  int result; // r0

  result = DebugCachedCharacter::GetChar((SWFAnim *)((char *)this + 12));
  *(_BYTE *)(result + 155) = a2;
  return result;
}


// ===== 496cdc SWFAnim::IsVisible(void) =====
int __fastcall SWFAnim::IsVisible(SWFAnim *this)
{
  DebugCachedCharacter::GetChar((SWFAnim *)((char *)this + 12));
  return 1;
}


// ===== 496cf0 SWFAnim::IsAnimPlaying(void) =====
bool __fastcall SWFAnim::IsAnimPlaying(SWFAnim *this)
{
  int Char; // r0

  Char = DebugCachedCharacter::GetChar((SWFAnim *)((char *)this + 12));
  return (*(int (__fastcall **)(int))(*(_DWORD *)Char + 152))(Char) != 1;
}


// ===== 496d14 SWFAnim::PlayAnim(char const*) =====
int __fastcall SWFAnim::PlayAnim(SWFAnim *this, const char *a2)
{
  DebugCachedCharacter *v2; // r4
  RenderFX *v3; // r6
  gameswf::character *Char; // r0
  int result; // r0
  int v7; // r0

  v2 = (SWFAnim *)((char *)this + 12);
  v3 = *((RenderFX **)this + 2);
  Char = (gameswf::character *)DebugCachedCharacter::GetChar((SWFAnim *)((char *)this + 12));
  result = RenderFX::PlayAnim(v3, Char, a2, 0);
  if ( result )
  {
    v7 = DebugCachedCharacter::GetChar(v2);
    (*(void (__fastcall **)(int, _DWORD))(*(_DWORD *)v7 + 148))(v7, 0);
    return 1;
  }
  return result;
}


// ===== 496d68 SWFAnim::SetPosition(int,int) =====
int __fastcall SWFAnim::SetPosition(SWFAnim *this, int a2, int a3)
{
  RenderFX *v5; // r6
  gameswf::character *Char; // r0

  v5 = *((RenderFX **)this + 2);
  Char = (gameswf::character *)DebugCachedCharacter::GetChar((SWFAnim *)((char *)this + 12));
  return RenderFX::SetPosition(v5, Char, a2, a3);
}


// ===== 496d9c SWFAnim::SetPosition3D(Point3D<float> const&) =====
int __fastcall SWFAnim::SetPosition3D(SWFAnim *a1, int *a2)
{
  int v2; // lr
  int v3; // r12
  DebugCachedCharacter *v5; // r5
  int v6; // r10
  int v7; // r7
  int Char; // r0
  __int64 v9; // r0
  float InvPixelScaleX; // r8
  int v11; // r0
  __int64 v12; // r0
  float InvPixelScaleY; // r0
  _DWORD v15[3]; // [sp+4h] [bp-18h] BYREF
  int v16; // [sp+10h] [bp-Ch] BYREF
  int v17; // [sp+14h] [bp-8h]

  v2 = *a2;
  v3 = a2[1];
  v5 = (SWFAnim *)((char *)a1 + 12);
  v15[2] = a2[2];
  v15[0] = v2;
  v15[1] = v3;
  v17 = 0;
  v16 = 0;
  GetScreenPosFromWorldPos(v15, &v16);
  v6 = v16;
  v7 = v17;
  Char = DebugCachedCharacter::GetChar(v5);
  v9 = ((__int64 (__fastcall *)(int))*(_DWORD *)(*(_DWORD *)Char + 84))(Char);
  InvPixelScaleX = GameSWFUtils::GetInvPixelScaleX((GameSWFUtils *)v9, (gameswf::root *)HIDWORD(v9));
  v11 = DebugCachedCharacter::GetChar(v5);
  v12 = ((__int64 (__fastcall *)(int))*(_DWORD *)(*(_DWORD *)v11 + 84))(v11);
  InvPixelScaleY = GameSWFUtils::GetInvPixelScaleY((GameSWFUtils *)v12, (gameswf::root *)HIDWORD(v12));
  return SWFAnim::SetPosition(a1, (int)(float)(InvPixelScaleX * (float)v6), (int)(float)(InvPixelScaleY * (float)v7));
}


// ===== 496e68 SWFAnim::~SWFAnim() =====
void __fastcall SWFAnim::~SWFAnim(SWFAnim *this)
{
  *(_DWORD *)this = off_969CD8;
  DebugCachedCharacter::~DebugCachedCharacter((SWFAnim *)((char *)this + 60));
  DebugCachedCharacter::~DebugCachedCharacter((SWFAnim *)((char *)this + 12));
}


// ===== 496ea4 SWFAnim::~SWFAnim() =====
void __fastcall SWFAnim::~SWFAnim(SWFAnim *this)
{
  SWFAnim::~SWFAnim(this);
  CustomFree(this);
}


// ===== 496ec0 SWFAnim::~SWFAnim() =====
void __fastcall SWFAnim::~SWFAnim(SWFAnim *this)
{
  *(_DWORD *)this = off_969CD8;
  DebugCachedCharacter::~DebugCachedCharacter((SWFAnim *)((char *)this + 60));
  DebugCachedCharacter::~DebugCachedCharacter((SWFAnim *)((char *)this + 12));
}


// ===== 496efc SWFAnim::SetText(char const*) =====
void __fastcall SWFAnim::SetText(SWFAnim *this, const char *a2)
{
  _BYTE *v4; // r0
  DebugCachedCharacter *v5; // r0
  RenderFX *v6; // r5
  gameswf::character *Char; // r1

  if ( *((_DWORD *)this + 26) )
  {
    v4 = *((_BYTE **)this + 25);
    if ( v4[4] )
    {
      v5 = (SWFAnim *)((char *)this + 60);
      v6 = *((RenderFX **)this + 2);
      Char = (gameswf::character *)DebugCachedCharacter::GetChar(v5);
      RenderFX::FormatHTML(v6, Char, "%s", a2);
    }
    else
    {
      if ( (*(_DWORD *)v4)-- == 1 )
        gameswf::free_internal(v4);
      *((_DWORD *)this + 26) = 0;
      *((_DWORD *)this + 25) = 0;
    }
  }
}


// ===== 496f7c SWFAnim::BindText(char const*) =====
void __fastcall SWFAnim::BindText(SWFAnim *this, const char *a2)
{
  _BYTE *v4; // r0
  MenuFX *v6; // r6
  gameswf::character *Char; // r0

  if ( *((_DWORD *)this + 26) )
  {
    v4 = *((_BYTE **)this + 25);
    if ( v4[4] )
      return;
    if ( (*(_DWORD *)v4)-- == 1 )
      gameswf::free_internal(v4);
    *((_DWORD *)this + 26) = 0;
    *((_DWORD *)this + 25) = 0;
  }
  v6 = *((MenuFX **)this + 2);
  Char = (gameswf::character *)DebugCachedCharacter::GetChar((SWFAnim *)((char *)this + 12));
  DebugCachedCharacter::RefreshCache((SWFAnim *)((char *)this + 60), a2, v6, Char);
}


// ===== 496ff4 SWFAnim::SetTextColor(uint,uint) =====
void __fastcall SWFAnim::SetTextColor(SWFAnim *this, unsigned int a2, unsigned int a3)
{
  _BYTE *v6; // r0
  DebugCachedCharacter *v7; // r0
  RenderFX *v8; // r4
  gameswf::character *Char; // r0

  if ( *((_DWORD *)this + 26) )
  {
    v6 = *((_BYTE **)this + 25);
    if ( v6[4] )
    {
      v7 = (SWFAnim *)((char *)this + 60);
      v8 = *((RenderFX **)this + 2);
      Char = (gameswf::character *)DebugCachedCharacter::GetChar(v7);
      RenderFX::SetColorTransform(v8, Char, a3, a2);
    }
    else
    {
      if ( (*(_DWORD *)v6)-- == 1 )
        gameswf::free_internal(v6);
      *((_DWORD *)this + 26) = 0;
      *((_DWORD *)this + 25) = 0;
    }
  }
}


// ===== 497070 SWFAnim::SWFAnim(MenuFX *,gameswf::character *) =====
void __fastcall SWFAnim::SWFAnim(SWFAnim *this, MenuFX *a2, gameswf::character *a3)
{
  std::string *v3; // r5
  gameswf::character *v6; // r3
  MenuFX *v7; // r2
  _BYTE *v8; // r0
  MenuFX *v10; // [sp+4h] [bp-4h]

  *((_DWORD *)this + 2) = a2;
  v3 = (std::string *)((char *)this + 12);
  *(_DWORD *)this = off_969CD8;
  *((_BYTE *)this + 4) = 1;
  DebugCachedCharacter::DebugCachedCharacter((SWFAnim *)((char *)this + 12));
  DebugCachedCharacter::DebugCachedCharacter((SWFAnim *)((char *)this + 60));
  v6 = *((gameswf::character **)a3 + 16);
  v7 = *((MenuFX **)this + 2);
  if ( v6 )
  {
    v8 = *((_BYTE **)a3 + 15);
    if ( !v8[4] )
    {
      if ( (*(_DWORD *)v8)-- == 1 )
      {
        v10 = v7;
        gameswf::free_internal(v8);
        v7 = v10;
      }
      v6 = nullptr;
      *((_DWORD *)a3 + 15) = 0;
      *((_DWORD *)a3 + 16) = 0;
    }
  }
  DebugCachedCharacter::RefreshCache(v3, a3, v7, v6);
}


// ===== 497128 SWFAnim::SWFAnim(MenuFX *,gameswf::character *) =====
void __fastcall SWFAnim::SWFAnim(SWFAnim *this, MenuFX *a2, gameswf::character *a3)
{
  std::string *v3; // r5
  gameswf::character *v6; // r3
  MenuFX *v7; // r2
  _BYTE *v8; // r0
  MenuFX *v10; // [sp+4h] [bp-4h]

  *((_DWORD *)this + 2) = a2;
  v3 = (std::string *)((char *)this + 12);
  *(_DWORD *)this = off_969CD8;
  *((_BYTE *)this + 4) = 1;
  DebugCachedCharacter::DebugCachedCharacter((SWFAnim *)((char *)this + 12));
  DebugCachedCharacter::DebugCachedCharacter((SWFAnim *)((char *)this + 60));
  v6 = *((gameswf::character **)a3 + 16);
  v7 = *((MenuFX **)this + 2);
  if ( v6 )
  {
    v8 = *((_BYTE **)a3 + 15);
    if ( !v8[4] )
    {
      if ( (*(_DWORD *)v8)-- == 1 )
      {
        v10 = v7;
        gameswf::free_internal(v8);
        v7 = v10;
      }
      v6 = nullptr;
      *((_DWORD *)a3 + 15) = 0;
      *((_DWORD *)a3 + 16) = 0;
    }
  }
  DebugCachedCharacter::RefreshCache(v3, a3, v7, v6);
}


// ===== 4971e0 SWFAnimManager::SWFAnimManager(void) =====
void __fastcall SWFAnimManager::SWFAnimManager(SWFAnimManager *this)
{
  *((_DWORD *)this + 2) = 0;
  *(_DWORD *)this = off_969CE8;
  *((_BYTE *)this + 4) = 0;
  *((_DWORD *)this + 4) = (char *)this + 4;
  *((_DWORD *)this + 5) = 0;
  *((_DWORD *)this + 3) = (char *)this + 4;
}


// ===== 497228 SWFAnimManager::SWFAnimManager(void) =====
void __fastcall SWFAnimManager::SWFAnimManager(SWFAnimManager *this)
{
  *((_DWORD *)this + 2) = 0;
  *(_DWORD *)this = off_969CE8;
  *((_BYTE *)this + 4) = 0;
  *((_DWORD *)this + 4) = (char *)this + 4;
  *((_DWORD *)this + 5) = 0;
  *((_DWORD *)this + 3) = (char *)this + 4;
}


// ===== 497270 SWFAnimManager::CloneAnim(SWFAnim const&) =====
int __fastcall SWFAnimManager::CloneAnim(SWFAnimManager *this, const SWFAnim *a2)
{
  return 0;
}


// ===== 497278 std::priv::__find<SWFAnim **,SWFAnim *>(SWFAnim **,SWFAnim **,SWFAnim * const&,std::random_access_iterator_tag const&) =====
_DWORD *__fastcall std::priv::__find<SWFAnim **,SWFAnim *>(_DWORD *a1, int a2, int *a3)
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
          if ( v8 == v3[6] )
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


// ===== 4973a8 `global constructor keyed to'.._.._sources_Game_SWFAnim_SWFAnimManager.cpp =====
void `global constructor keyed to'.._.._sources_Game_SWFAnim_SWFAnimManager.cpp()
{
  dword_9A635C = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9A6358 = 1056964608;
}


// ===== 4973c8 SWFAnimManager::FlushBank(VectorSet<SWFAnim *> &) =====
void __fastcall SWFAnimManager::FlushBank(int a1, int **a2)
{
  int *v2; // r4
  int *v3; // r5
  int v5; // r3

  v2 = *a2;
  v3 = a2[1];
  if ( *a2 != v3 )
  {
    do
    {
      v5 = *v2++;
      if ( v5 )
        (*(void (__fastcall **)(int))(*(_DWORD *)v5 + 4))(v5);
    }
    while ( v2 != v3 );
    if ( *a2 != a2[1] )
      a2[1] = *a2;
  }
}


// ===== 497418 SWFAnimManager::DropAnim(SWFAnim *) =====
int __fastcall SWFAnimManager::DropAnim(SWFAnimManager *this, SWFAnim *a2)
{
  int result; // r0

  if ( a2 )
  {
    result = SWFAnim::SetVisible(a2, 0);
    *((_BYTE *)a2 + 4) = 1;
  }
  return result;
}


// ===== 49743c std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,VectorSet<SWFAnim *>>,std::priv::_Select1st<std::pair<std::string const,VectorSet<SWFAnim *>>>,std::priv::_MapTraitsT<std::pair<std::string const,VectorSet<SWFAnim *>>>,std::allocator<std::pair<std::string const,VectorSet<SWFAnim *>>>>::_M_erase(std::priv::_Rb_tree_node_base *) =====
void __fastcall std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,VectorSet<SWFAnim *>>,std::priv::_Select1st<std::pair<std::string const,VectorSet<SWFAnim *>>>,std::priv::_MapTraitsT<std::pair<std::string const,VectorSet<SWFAnim *>>>,std::allocator<std::pair<std::string const,VectorSet<SWFAnim *>>>>::_M_erase(
        int a1,
        _DWORD *a2)
{
  _DWORD *v2; // r4
  _DWORD *v4; // r3
  size_t v5; // r1
  void *v6; // r3
  _DWORD *v7; // r5
  size_t v8; // r1

  v2 = a2;
  if ( a2 )
  {
    while ( 1 )
    {
      std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,VectorSet<SWFAnim *>>,std::priv::_Select1st<std::pair<std::string const,VectorSet<SWFAnim *>>>,std::priv::_MapTraitsT<std::pair<std::string const,VectorSet<SWFAnim *>>>,std::allocator<std::pair<std::string const,VectorSet<SWFAnim *>>>>::_M_erase(
        a1,
        v2[3]);
      v6 = (void *)v2[10];
      v7 = (_DWORD *)v2[2];
      if ( v6 )
      {
        v8 = (v2[12] - (_DWORD)v6) & 0xFFFFFFFC;
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
        __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v2, 0x34u);
        v2 = v7;
        if ( !v7 )
          return;
      }
      else
      {
        __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v4, v5);
LABEL_8:
        __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v2, 0x34u);
        v2 = v7;
        if ( !v7 )
          return;
      }
    }
  }
}


// ===== 4974f4 SWFAnimManager::FlushAll(void) =====
void __fastcall SWFAnimManager::FlushAll(SWFAnimManager *this)
{
  int v1; // r4
  char *v3; // r6
  int v4; // r2
  int v5; // r3

  v1 = *((_DWORD *)this + 3);
  v3 = (char *)this + 4;
  while ( v3 != (char *)v1 )
  {
    while ( 1 )
    {
      SWFAnimManager::FlushBank((int)this, (int **)(v1 + 40));
      v4 = *(_DWORD *)(v1 + 12);
      if ( !v4 )
        break;
      while ( *(_DWORD *)(v4 + 8) )
        v4 = *(_DWORD *)(v4 + 8);
      v1 = v4;
      if ( v3 == (char *)v4 )
        goto LABEL_8;
    }
    v5 = *(_DWORD *)(v1 + 4);
    if ( v1 == *(_DWORD *)(v5 + 12) )
    {
      do
      {
        v1 = v5;
        v5 = *(_DWORD *)(v5 + 4);
      }
      while ( *(_DWORD *)(v5 + 12) == v1 );
      v4 = *(_DWORD *)(v1 + 12);
    }
    if ( v4 != v5 )
      v1 = v5;
  }
LABEL_8:
  if ( *((_DWORD *)this + 5) )
  {
    std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,VectorSet<SWFAnim *>>,std::priv::_Select1st<std::pair<std::string const,VectorSet<SWFAnim *>>>,std::priv::_MapTraitsT<std::pair<std::string const,VectorSet<SWFAnim *>>>,std::allocator<std::pair<std::string const,VectorSet<SWFAnim *>>>>::_M_erase(
      (int)v3,
      *((_DWORD **)this + 2));
    *((_DWORD *)this + 5) = 0;
    *((_DWORD *)this + 4) = v3;
    *((_DWORD *)this + 3) = v3;
    *((_DWORD *)this + 2) = 0;
  }
}


// ===== 4975a8 SWFAnimManager::~SWFAnimManager() =====
void __fastcall SWFAnimManager::~SWFAnimManager(SWFAnimManager *this)
{
  *(_DWORD *)this = off_969CE8;
  SWFAnimManager::FlushAll(this);
  if ( *((_DWORD *)this + 5) )
  {
    std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,VectorSet<SWFAnim *>>,std::priv::_Select1st<std::pair<std::string const,VectorSet<SWFAnim *>>>,std::priv::_MapTraitsT<std::pair<std::string const,VectorSet<SWFAnim *>>>,std::allocator<std::pair<std::string const,VectorSet<SWFAnim *>>>>::_M_erase(
      (int)this + 4,
      *((_DWORD **)this + 2));
    *((_DWORD *)this + 4) = (char *)this + 4;
    *((_DWORD *)this + 5) = 0;
    *((_DWORD *)this + 3) = (char *)this + 4;
    *((_DWORD *)this + 2) = 0;
  }
}


// ===== 49760c SWFAnimManager::~SWFAnimManager() =====
void __fastcall SWFAnimManager::~SWFAnimManager(SWFAnimManager *this)
{
  SWFAnimManager::~SWFAnimManager(this);
  CustomFree(this);
}


// ===== 497628 SWFAnimManager::~SWFAnimManager() =====
void __fastcall SWFAnimManager::~SWFAnimManager(SWFAnimManager *this)
{
  *(_DWORD *)this = off_969CE8;
  SWFAnimManager::FlushAll(this);
  if ( *((_DWORD *)this + 5) )
  {
    std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,VectorSet<SWFAnim *>>,std::priv::_Select1st<std::pair<std::string const,VectorSet<SWFAnim *>>>,std::priv::_MapTraitsT<std::pair<std::string const,VectorSet<SWFAnim *>>>,std::allocator<std::pair<std::string const,VectorSet<SWFAnim *>>>>::_M_erase(
      (int)this + 4,
      *((_DWORD **)this + 2));
    *((_DWORD *)this + 4) = (char *)this + 4;
    *((_DWORD *)this + 5) = 0;
    *((_DWORD *)this + 3) = (char *)this + 4;
    *((_DWORD *)this + 2) = 0;
  }
}


// ===== 49768c std::allocator<SWFAnim *>::_M_allocate(uint,uint &) =====
void *__fastcall std::allocator<SWFAnim *>::_M_allocate(int a1, unsigned int a2, size_t *a3)
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


// ===== 4976fc std::vector<SWFAnim *,std::allocator<SWFAnim *>>::vector(std::vector<SWFAnim *,std::allocator<SWFAnim *>> const&) =====
_DWORD *__fastcall std::vector<SWFAnim *>::vector(_DWORD *a1, int a2)
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
  v5 = (char *)std::allocator<SWFAnim *>::_M_allocate((int)(a1 + 2), v4, &v11);
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


// ===== 49777c VectorSet<SWFAnim *>::push_back_unique(SWFAnim * const&) =====
void __fastcall VectorSet<SWFAnim *>::push_back_unique(int a1, int *a2)
{
  _DWORD *v4; // r0
  _DWORD *v5; // r6
  unsigned int v6; // r3
  unsigned int v7; // r1
  char *v8; // r0
  char *v9; // r7
  size_t v10; // r6
  int *v11; // r6
  _DWORD *v12; // r6
  void *v13; // r0
  size_t v14; // r1
  size_t v15; // r3
  size_t v16; // [sp+0h] [bp-Ch] BYREF

  v4 = std::priv::__find<SWFAnim **,SWFAnim *>(*(_DWORD **)a1, *(_DWORD *)(a1 + 4), a2);
  v5 = v4;
  if ( v4 == *(_DWORD **)(a1 + 4) )
  {
    if ( v4 == *(_DWORD **)(a1 + 8) )
    {
      v6 = ((int)v4 - *(_DWORD *)a1) >> 2;
      if ( v6 )
        v7 = 2 * v6;
      else
        v7 = 1;
      if ( v7 > 0x3FFFFFFF || v6 > v7 )
        v7 = 0x3FFFFFFF;
      v16 = v7;
      v8 = (char *)std::allocator<SWFAnim *>::_M_allocate(a1 + 8, v7, &v16);
      v9 = v8;
      v10 = (size_t)v5 - *(_DWORD *)a1;
      if ( v10 )
        v11 = (int *)((char *)memmove(v8, *(const void **)a1, v10) + v10);
      else
        v11 = (int *)v8;
      *v11 = *a2;
      v12 = v11 + 1;
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
    else
    {
      *v4 = *a2;
      *(_DWORD *)(a1 + 4) += 4;
    }
  }
}


// ===== 497890 std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,VectorSet<SWFAnim *>>,std::priv::_Select1st<std::pair<std::string const,VectorSet<SWFAnim *>>>,std::priv::_MapTraitsT<std::pair<std::string const,VectorSet<SWFAnim *>>>,std::allocator<std::pair<std::string const,VectorSet<SWFAnim *>>>>::_M_lower_bound<char const*>(char const* const&) =====
_DWORD *__fastcall std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,VectorSet<SWFAnim *>>,std::priv::_Select1st<std::pair<std::string const,VectorSet<SWFAnim *>>>,std::priv::_MapTraitsT<std::pair<std::string const,VectorSet<SWFAnim *>>>,std::allocator<std::pair<std::string const,VectorSet<SWFAnim *>>>>::_M_lower_bound<char const*>(
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


// ===== 4979c4 std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,VectorSet<SWFAnim *>>,std::priv::_Select1st<std::pair<std::string const,VectorSet<SWFAnim *>>>,std::priv::_MapTraitsT<std::pair<std::string const,VectorSet<SWFAnim *>>>,std::allocator<std::pair<std::string const,VectorSet<SWFAnim *>>>>::_M_find<char const*>(char const* const&) =====
_DWORD *__fastcall std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,VectorSet<SWFAnim *>>,std::priv::_Select1st<std::pair<std::string const,VectorSet<SWFAnim *>>>,std::priv::_MapTraitsT<std::pair<std::string const,VectorSet<SWFAnim *>>>,std::allocator<std::pair<std::string const,VectorSet<SWFAnim *>>>>::_M_find<char const*>(
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
  const void *v11; // r3
  std::string *v12; // r4
  int v13; // r7
  int v14; // r6
  size_t v15; // r2
  int v16; // r8
  std::string v19; // [sp+1Ch] [bp-38h] BYREF
  std::string v20; // [sp+34h] [bp-20h] BYREF

  v2 = (_DWORD *)a1[1];
  if ( !v2 )
    return a1;
  v4 = a1;
  do
  {
    while ( 1 )
    {
      std::string::string(&v20, *a2);
      v5 = (const void *)v2[9];
      M_data = (std::string *)v20._M_start_of_storage._M_data;
      v7 = v2[8] - (_DWORD)v5;
      v8 = v20._M_finish - v20._M_start_of_storage._M_data;
      if ( v20._M_finish - v20._M_start_of_storage._M_data >= v7 )
        v9 = v2[8] - (_DWORD)v5;
      else
        v9 = v20._M_finish - v20._M_start_of_storage._M_data;
      v10 = memcmp(v5, v20._M_start_of_storage._M_data, v9);
      if ( !v10 )
      {
        if ( v7 >= v8 )
          v10 = v7 > v8;
        else
          v10 = -1;
      }
      if ( M_data == &v20 || !M_data )
        break;
      if ( (unsigned int)(v20._M_buffers._M_end_of_storage - (char *)M_data) <= 0x80 )
      {
        __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(M_data, v20._M_buffers._M_end_of_storage - (char *)M_data);
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
  if ( v4 == a1 )
    return v4;
  std::string::string(&v19, *a2);
  v11 = (const void *)v4[9];
  v12 = (std::string *)v19._M_start_of_storage._M_data;
  v13 = v4[8] - (_DWORD)v11;
  v14 = v19._M_finish - v19._M_start_of_storage._M_data;
  if ( v13 >= v19._M_finish - v19._M_start_of_storage._M_data )
    v15 = v19._M_finish - v19._M_start_of_storage._M_data;
  else
    v15 = v4[8] - (_DWORD)v11;
  v16 = memcmp(v19._M_start_of_storage._M_data, v11, v15);
  if ( !v16 )
  {
    if ( v14 >= v13 )
      v16 = v14 > v13;
    else
      v16 = -1;
  }
  if ( v12 == &v19 || !v12 )
  {
LABEL_38:
    if ( v16 >= 0 )
      return v4;
    return a1;
  }
  if ( (unsigned int)(v19._M_buffers._M_end_of_storage - (char *)v12) <= 0x80 )
  {
    __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v12, v19._M_buffers._M_end_of_storage - (char *)v12);
    goto LABEL_38;
  }
  CustomFree(v12);
  if ( v16 < 0 )
    return a1;
  return v4;
}


// ===== 497bb8 std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,VectorSet<SWFAnim *>>,std::priv::_Select1st<std::pair<std::string const,VectorSet<SWFAnim *>>>,std::priv::_MapTraitsT<std::pair<std::string const,VectorSet<SWFAnim *>>>,std::allocator<std::pair<std::string const,VectorSet<SWFAnim *>>>>::_M_create_node(std::pair<std::string const,VectorSet<SWFAnim *>> const&) =====
char *__fastcall std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,VectorSet<SWFAnim *>>,std::priv::_Select1st<std::pair<std::string const,VectorSet<SWFAnim *>>>,std::priv::_MapTraitsT<std::pair<std::string const,VectorSet<SWFAnim *>>>,std::allocator<std::pair<std::string const,VectorSet<SWFAnim *>>>>::_M_create_node(
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
  std::vector<SWFAnim *>::vector((_DWORD *)v3 + 10, a2 + 24);
  *((_DWORD *)v3 + 3) = 0;
  *((_DWORD *)v3 + 2) = 0;
  return v3;
}


// ===== 497c14 std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,VectorSet<SWFAnim *>>,std::priv::_Select1st<std::pair<std::string const,VectorSet<SWFAnim *>>>,std::priv::_MapTraitsT<std::pair<std::string const,VectorSet<SWFAnim *>>>,std::allocator<std::pair<std::string const,VectorSet<SWFAnim *>>>>::_M_insert(std::priv::_Rb_tree_node_base *,std::pair<std::string const,VectorSet<SWFAnim *>> const&,std::priv::_Rb_tree_node_base *,std::priv::_Rb_tree_node_base *) =====
char **__fastcall std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,VectorSet<SWFAnim *>>,std::priv::_Select1st<std::pair<std::string const,VectorSet<SWFAnim *>>>,std::priv::_MapTraitsT<std::pair<std::string const,VectorSet<SWFAnim *>>>,std::allocator<std::pair<std::string const,VectorSet<SWFAnim *>>>>::_M_insert(
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
    node = std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,VectorSet<SWFAnim *>>,std::priv::_Select1st<std::pair<std::string const,VectorSet<SWFAnim *>>>,std::priv::_MapTraitsT<std::pair<std::string const,VectorSet<SWFAnim *>>>,std::allocator<std::pair<std::string const,VectorSet<SWFAnim *>>>>::_M_create_node(
             (int)a2,
             a4);
    a2[2] = node;
    a2[1] = node;
    a2[3] = node;
  }
  else if ( !a6
         && (a5 || (v14 = a4, v13 = std::less<std::string>::operator()((int)(a2 + 5), a4, (int)(a3 + 4)), a4 = v14, v13)) )
  {
    v12 = std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,VectorSet<SWFAnim *>>,std::priv::_Select1st<std::pair<std::string const,VectorSet<SWFAnim *>>>,std::priv::_MapTraitsT<std::pair<std::string const,VectorSet<SWFAnim *>>>,std::allocator<std::pair<std::string const,VectorSet<SWFAnim *>>>>::_M_create_node(
            (int)a2,
            a4);
    a3[2] = v12;
    node = v12;
    if ( a3 == (_DWORD *)a2[2] )
      a2[2] = v12;
  }
  else
  {
    v9 = std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,VectorSet<SWFAnim *>>,std::priv::_Select1st<std::pair<std::string const,VectorSet<SWFAnim *>>>,std::priv::_MapTraitsT<std::pair<std::string const,VectorSet<SWFAnim *>>>,std::allocator<std::pair<std::string const,VectorSet<SWFAnim *>>>>::_M_create_node(
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


// ===== 497d04 std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,VectorSet<SWFAnim *>>,std::priv::_Select1st<std::pair<std::string const,VectorSet<SWFAnim *>>>,std::priv::_MapTraitsT<std::pair<std::string const,VectorSet<SWFAnim *>>>,std::allocator<std::pair<std::string const,VectorSet<SWFAnim *>>>>::insert_unique(std::pair<std::string const,VectorSet<SWFAnim *>> const&) =====
int __fastcall std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,VectorSet<SWFAnim *>>,std::priv::_Select1st<std::pair<std::string const,VectorSet<SWFAnim *>>>,std::priv::_MapTraitsT<std::pair<std::string const,VectorSet<SWFAnim *>>>,std::allocator<std::pair<std::string const,VectorSet<SWFAnim *>>>>::insert_unique(
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
    std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,VectorSet<SWFAnim *>>,std::priv::_Select1st<std::pair<std::string const,VectorSet<SWFAnim *>>>,std::priv::_MapTraitsT<std::pair<std::string const,VectorSet<SWFAnim *>>>,std::allocator<std::pair<std::string const,VectorSet<SWFAnim *>>>>::_M_insert(
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
      std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,VectorSet<SWFAnim *>>,std::priv::_Select1st<std::pair<std::string const,VectorSet<SWFAnim *>>>,std::priv::_MapTraitsT<std::pair<std::string const,VectorSet<SWFAnim *>>>,std::allocator<std::pair<std::string const,VectorSet<SWFAnim *>>>>::_M_insert(
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


// ===== 497f1c std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,VectorSet<SWFAnim *>>,std::priv::_Select1st<std::pair<std::string const,VectorSet<SWFAnim *>>>,std::priv::_MapTraitsT<std::pair<std::string const,VectorSet<SWFAnim *>>>,std::allocator<std::pair<std::string const,VectorSet<SWFAnim *>>>>::insert_unique(std::priv::_Rb_tree_iterator<std::pair<std::string const,VectorSet<SWFAnim *>>,std::priv::_MapTraitsT<std::pair<std::string const,VectorSet<SWFAnim *>>>>,std::pair<std::string const,VectorSet<SWFAnim *>> const&) =====
char **__fastcall std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,VectorSet<SWFAnim *>>,std::priv::_Select1st<std::pair<std::string const,VectorSet<SWFAnim *>>>,std::priv::_MapTraitsT<std::pair<std::string const,VectorSet<SWFAnim *>>>,std::allocator<std::pair<std::string const,VectorSet<SWFAnim *>>>>::insert_unique(
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
      std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,VectorSet<SWFAnim *>>,std::priv::_Select1st<std::pair<std::string const,VectorSet<SWFAnim *>>>,std::priv::_MapTraitsT<std::pair<std::string const,VectorSet<SWFAnim *>>>,std::allocator<std::pair<std::string const,VectorSet<SWFAnim *>>>>::insert_unique(
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
        std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,VectorSet<SWFAnim *>>,std::priv::_Select1st<std::pair<std::string const,VectorSet<SWFAnim *>>>,std::priv::_MapTraitsT<std::pair<std::string const,VectorSet<SWFAnim *>>>,std::allocator<std::pair<std::string const,VectorSet<SWFAnim *>>>>::insert_unique(
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
        std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,VectorSet<SWFAnim *>>,std::priv::_Select1st<std::pair<std::string const,VectorSet<SWFAnim *>>>,std::priv::_MapTraitsT<std::pair<std::string const,VectorSet<SWFAnim *>>>,std::allocator<std::pair<std::string const,VectorSet<SWFAnim *>>>>::_M_insert(
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
        std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,VectorSet<SWFAnim *>>,std::priv::_Select1st<std::pair<std::string const,VectorSet<SWFAnim *>>>,std::priv::_MapTraitsT<std::pair<std::string const,VectorSet<SWFAnim *>>>,std::allocator<std::pair<std::string const,VectorSet<SWFAnim *>>>>::_M_insert(
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
      std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,VectorSet<SWFAnim *>>,std::priv::_Select1st<std::pair<std::string const,VectorSet<SWFAnim *>>>,std::priv::_MapTraitsT<std::pair<std::string const,VectorSet<SWFAnim *>>>,std::allocator<std::pair<std::string const,VectorSet<SWFAnim *>>>>::insert_unique(
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
      std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,VectorSet<SWFAnim *>>,std::priv::_Select1st<std::pair<std::string const,VectorSet<SWFAnim *>>>,std::priv::_MapTraitsT<std::pair<std::string const,VectorSet<SWFAnim *>>>,std::allocator<std::pair<std::string const,VectorSet<SWFAnim *>>>>::_M_insert(
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
    std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,VectorSet<SWFAnim *>>,std::priv::_Select1st<std::pair<std::string const,VectorSet<SWFAnim *>>>,std::priv::_MapTraitsT<std::pair<std::string const,VectorSet<SWFAnim *>>>,std::allocator<std::pair<std::string const,VectorSet<SWFAnim *>>>>::_M_insert(
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
        std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,VectorSet<SWFAnim *>>,std::priv::_Select1st<std::pair<std::string const,VectorSet<SWFAnim *>>>,std::priv::_MapTraitsT<std::pair<std::string const,VectorSet<SWFAnim *>>>,std::allocator<std::pair<std::string const,VectorSet<SWFAnim *>>>>::insert_unique(
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
      std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,VectorSet<SWFAnim *>>,std::priv::_Select1st<std::pair<std::string const,VectorSet<SWFAnim *>>>,std::priv::_MapTraitsT<std::pair<std::string const,VectorSet<SWFAnim *>>>,std::allocator<std::pair<std::string const,VectorSet<SWFAnim *>>>>::_M_insert(
        a1,
        a2,
        v4,
        a4,
        0,
        (int)v4);
      return a1;
    }
LABEL_61:
    std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,VectorSet<SWFAnim *>>,std::priv::_Select1st<std::pair<std::string const,VectorSet<SWFAnim *>>>,std::priv::_MapTraitsT<std::pair<std::string const,VectorSet<SWFAnim *>>>,std::allocator<std::pair<std::string const,VectorSet<SWFAnim *>>>>::_M_insert(
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


// ===== 498420 std::map<std::string,VectorSet<SWFAnim *>,std::less<std::string>,std::allocator<std::pair<std::string const,VectorSet<SWFAnim *>>>>::operator[]<char const*>(char const* const&) =====
char *__fastcall std::map<std::string,VectorSet<SWFAnim *>>::operator[]<char const*>(char *a1, char **a2)
{
  char *v4; // r5
  const void *v5; // r1
  int v6; // r11
  int v7; // r9
  size_t v8; // r2
  int v9; // r0
  char *v10; // r3
  char *v12; // r5
  size_t v13; // r1
  size_t v14; // r1
  void *p[2]; // [sp+Ch] [bp-78h] BYREF
  int v16; // [sp+14h] [bp-70h]
  char *v17; // [sp+18h] [bp-6Ch] BYREF
  char *v18; // [sp+1Ch] [bp-68h] BYREF
  std::string v19; // [sp+28h] [bp-5Ch] BYREF
  void *__p[3]; // [sp+40h] [bp-44h] BYREF
  std::string v21; // [sp+4Ch] [bp-38h] BYREF
  std::string v22; // [sp+64h] [bp-20h] BYREF

  v4 = (char *)std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,VectorSet<SWFAnim *>>,std::priv::_Select1st<std::pair<std::string const,VectorSet<SWFAnim *>>>,std::priv::_MapTraitsT<std::pair<std::string const,VectorSet<SWFAnim *>>>,std::allocator<std::pair<std::string const,VectorSet<SWFAnim *>>>>::_M_lower_bound<char const*>(
                 a1,
                 a2);
  if ( v4 != a1 )
  {
    std::string::string(&v22, *a2);
    v5 = *((const void **)v4 + 9);
    v6 = *((_DWORD *)v4 + 8) - (_DWORD)v5;
    v7 = v22._M_finish - v22._M_start_of_storage._M_data;
    if ( v6 >= v22._M_finish - v22._M_start_of_storage._M_data )
      v8 = v22._M_finish - v22._M_start_of_storage._M_data;
    else
      v8 = *((_DWORD *)v4 + 8) - (_DWORD)v5;
    v9 = memcmp(v22._M_start_of_storage._M_data, v5, v8);
    if ( v9 )
    {
      if ( v9 >= 0 )
        goto LABEL_7;
    }
    else if ( v7 >= v6 )
    {
LABEL_7:
      std::string::~string(&v22);
      v10 = v4;
      return v10 + 40;
    }
    std::string::~string(&v22);
  }
  std::string::string(&v21, *a2);
  v16 = 0;
  p[0] = nullptr;
  p[1] = nullptr;
  v19._M_finish = (char *)&v19;
  v19._M_start_of_storage._M_data = (char *)&v19;
  std::string::_M_range_initialize(&v19, v21._M_start_of_storage._M_data, v21._M_finish);
  std::vector<SWFAnim *>::vector(__p, (int)p);
  v17 = v4;
  std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,VectorSet<SWFAnim *>>,std::priv::_Select1st<std::pair<std::string const,VectorSet<SWFAnim *>>>,std::priv::_MapTraitsT<std::pair<std::string const,VectorSet<SWFAnim *>>>,std::allocator<std::pair<std::string const,VectorSet<SWFAnim *>>>>::insert_unique(
    &v18,
    a1,
    &v17,
    (int)&v19);
  v12 = v18;
  if ( __p[0] )
  {
    v13 = ((char *)__p[2] - (char *)__p[0]) & 0xFFFFFFFC;
    if ( v13 > 0x80 )
      CustomFree(__p[0]);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(__p[0], v13);
  }
  if ( (std::string *)v19._M_start_of_storage._M_data != &v19 && v19._M_start_of_storage._M_data )
  {
    if ( (unsigned int)(v19._M_buffers._M_end_of_storage - v19._M_start_of_storage._M_data) > 0x80 )
      CustomFree(v19._M_start_of_storage._M_data);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(
        v19._M_start_of_storage._M_data,
        v19._M_buffers._M_end_of_storage - v19._M_start_of_storage._M_data);
  }
  if ( p[0] )
  {
    v14 = (v16 - (unsigned int)p[0]) & 0xFFFFFFFC;
    if ( v14 > 0x80 )
      CustomFree(p[0]);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(p[0], v14);
  }
  if ( (std::string *)v21._M_start_of_storage._M_data != &v21 && v21._M_start_of_storage._M_data )
  {
    if ( (unsigned int)(v21._M_buffers._M_end_of_storage - v21._M_start_of_storage._M_data) > 0x80 )
    {
      CustomFree(v21._M_start_of_storage._M_data);
      v10 = v12;
      return v10 + 40;
    }
    __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(
      v21._M_start_of_storage._M_data,
      v21._M_buffers._M_end_of_storage - v21._M_start_of_storage._M_data);
  }
  v10 = v12;
  return v10 + 40;
}


// ===== 498620 SWFAnimManager::ExtendBank(char const*,MenuFX *,int) =====
int __fastcall SWFAnimManager::ExtendBank(SWFAnimManager *this, char *a2, MenuFX *a3, unsigned int a4)
{
  char *v6; // r4
  char *v7; // r5
  int v8; // r2
  unsigned int v9; // r3
  int v11; // r0
  _DWORD *v12; // r6
  int v13; // r2
  gameswf::sprite_instance *v14; // r4
  std::string *M_end_of_storage; // r2
  char *M_finish; // r3
  int v17; // r4
  int v18; // r7
  SWFAnim *v19; // r8
  int highest_depth; // r8
  int (__fastcall *v21)(_DWORD *, _BYTE *, int); // r5
  gameswf::character *v22; // r5
  size_t v23; // r0
  char *v24; // r10
  char *v25; // r4
  char *M_data; // r0
  int v27; // r1
  char *v28; // r11
  int v29; // r3
  char *v30; // r11
  char *v31; // r10
  gameswf::character *v32; // r0
  gameswf::character *Char; // r10
  SWFAnim *v34; // r11
  char *v35; // r0
  char *v36; // r0
  DebugCachedCharacter *v37; // [sp+8h] [bp-A4h]
  gameswf::sprite_instance *v38; // [sp+10h] [bp-9Ch]
  int v39; // [sp+14h] [bp-98h]
  char *v40; // [sp+34h] [bp-78h] BYREF
  size_t __n; // [sp+38h] [bp-74h] BYREF
  SWFAnim *v42; // [sp+3Ch] [bp-70h] BYREF
  SWFAnim *v43; // [sp+40h] [bp-6Ch] BYREF
  _BYTE v44[40]; // [sp+48h] [bp-64h] BYREF
  _DWORD *v45; // [sp+70h] [bp-3Ch] BYREF
  int v46; // [sp+74h] [bp-38h]
  std::string v47; // [sp+78h] [bp-34h] BYREF
  _BYTE v48[8]; // [sp+90h] [bp-1Ch] BYREF
  void *p; // [sp+9Ch] [bp-10h]

  v40 = a2;
  if ( (int)a4 > 0 )
  {
    v6 = (char *)this + 4;
    v43 = nullptr;
    v7 = (char *)std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,VectorSet<SWFAnim *>>,std::priv::_Select1st<std::pair<std::string const,VectorSet<SWFAnim *>>>,std::priv::_MapTraitsT<std::pair<std::string const,VectorSet<SWFAnim *>>>,std::allocator<std::pair<std::string const,VectorSet<SWFAnim *>>>>::_M_find<char const*>(
                   (_DWORD *)this + 1,
                   &v40);
    if ( v7 != v6 )
      goto LABEL_3;
    DebugCachedCharacter::DebugCachedCharacter((DebugCachedCharacter *)v44);
    v31 = v40;
    v32 = (gameswf::character *)RenderFX::Find(a3, "_root");
    DebugCachedCharacter::RefreshCache((DebugCachedCharacter *)v44, v31, a3, v32);
    if ( v46 )
    {
      if ( *((_BYTE *)v45 + 4) )
      {
        Char = (gameswf::character *)DebugCachedCharacter::GetChar((DebugCachedCharacter *)v44);
        v34 = (SWFAnim *)operator new(0x6Cu, 0);
        SWFAnim::SWFAnim(v34, a3, Char);
        v43 = v34;
        v35 = std::map<std::string,VectorSet<SWFAnim *>>::operator[]<char const*>(v7, &v40);
        VectorSet<SWFAnim *>::push_back_unique((int)v35, (int *)&v43);
        v7 = (char *)std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,VectorSet<SWFAnim *>>,std::priv::_Select1st<std::pair<std::string const,VectorSet<SWFAnim *>>>,std::priv::_MapTraitsT<std::pair<std::string const,VectorSet<SWFAnim *>>>,std::allocator<std::pair<std::string const,VectorSet<SWFAnim *>>>>::_M_find<char const*>(
                       v7,
                       &v40);
        DebugCachedCharacter::~DebugCachedCharacter((DebugCachedCharacter *)v44);
        if ( v7 == v6 )
          return (int)v43;
LABEL_3:
        v8 = *((_DWORD *)v7 + 11);
        v37 = (DebugCachedCharacter *)(v7 + 40);
        v9 = (v8 - *((_DWORD *)v7 + 10)) >> 2;
        if ( a4 > v9 )
        {
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
                "bank.size() >= 1",
                "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\SWFAnim\\SWFAnimManager.cpp",
                134);
              v8 = *((_DWORD *)v7 + 11);
            }
          }
          v11 = DebugCachedCharacter::GetChar((DebugCachedCharacter *)(*(_DWORD *)(v8 - 4) + 12));
          v12 = (_DWORD *)v11;
          if ( *(_DWORD *)(v11 + 64)
            && (v13 = *(_DWORD *)(v11 + 60),
                v14 = (gameswf::sprite_instance *)*(unsigned __int8 *)(v13 + 4),
                !*(_BYTE *)(v13 + 4)) )
          {
            gameswf::smart_ptr_proxy::operator=((_DWORD **)(v11 + 60), (_DWORD *)*(unsigned __int8 *)(v13 + 4));
            v38 = v14;
            v12[16] = v14;
          }
          else
          {
            v38 = *(gameswf::sprite_instance **)(v11 + 64);
          }
          std::string::string(&v47, v40);
          M_end_of_storage = &v47;
          if ( (std::string *)v47._M_start_of_storage._M_data != &v47 )
            M_end_of_storage = (std::string *)v47._M_buffers._M_end_of_storage;
          M_finish = v47._M_finish;
          if ( (std::string *)v47._M_start_of_storage._M_data == &v47 )
            M_end_of_storage = (std::string *)((char *)M_end_of_storage + 16);
          if ( (unsigned int)((char *)M_end_of_storage - v47._M_finish) <= 3 )
          {
            v23 = std::string::_M_compute_next_size(&v47, 3u);
            v24 = (char *)v23;
            if ( v23 )
            {
              __n = v23;
              if ( v23 > 0x80 )
                v36 = (char *)CustomAlloc(v23);
              else
                v36 = (char *)__ZNSt12__node_alloc11_M_allocateERj_veneer(&__n);
              v25 = v36;
              v24 = &v36[__n];
            }
            else
            {
              v25 = nullptr;
            }
            M_data = v47._M_start_of_storage._M_data;
            v27 = v47._M_finish - v47._M_start_of_storage._M_data;
            if ( v47._M_finish - v47._M_start_of_storage._M_data > 0 )
            {
              v29 = 0;
              do
              {
                v25[v29] = M_data[v29];
                ++v29;
              }
              while ( v29 != v27 );
              v28 = &v25[v29];
            }
            else
            {
              v28 = v25;
            }
            *v28 = 95;
            v28[1] = 48;
            v28[2] = 48;
            v28[3] = 0;
            v30 = v28 + 3;
            if ( (std::string *)v47._M_start_of_storage._M_data != &v47 && v47._M_start_of_storage._M_data )
            {
              if ( (unsigned int)(v47._M_buffers._M_end_of_storage - v47._M_start_of_storage._M_data) > 0x80 )
                CustomFree(v47._M_start_of_storage._M_data);
              else
                __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(
                  v47._M_start_of_storage._M_data,
                  v47._M_buffers._M_end_of_storage - v47._M_start_of_storage._M_data);
            }
            v47._M_buffers._M_end_of_storage = v24;
            v47._M_finish = v30;
            v47._M_start_of_storage._M_data = v25;
          }
          else
          {
            v47._M_finish[2] = 48;
            M_finish[1] = 48;
            v47._M_finish[3] = 0;
            *v47._M_finish = 95;
            v47._M_finish += 3;
          }
          v17 = (*((_DWORD *)v7 + 11) - *((_DWORD *)v7 + 10)) >> 2;
          v18 = a4 - v17;
          if ( v18 > 0 )
          {
            v39 = v18 + v17;
            do
            {
              *(v47._M_finish - 2) = v17 / 10 + 48;
              *(v47._M_finish - 1) = v17 % 10 + 48;
              highest_depth = gameswf::sprite_instance::get_highest_depth(v38);
              v21 = *(int (__fastcall **)(_DWORD *, _BYTE *, int))(*v12 + 212);
              gameswf::tu_string::tu_string((gameswf::tu_string *)v48, v47._M_start_of_storage._M_data);
              v22 = (gameswf::character *)v21(v12, v48, highest_depth);
              ++v17;
              if ( v48[0] == -1 )
                gameswf::free_internal(p);
              if ( !v22 )
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
                    "ch != 0",
                    "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\SWFAnim\\SWFAnimManager.cpp",
                    156);
                }
              }
              *((_BYTE *)v22 + 155) = 0;
              v19 = (SWFAnim *)operator new(0x6Cu, 0);
              SWFAnim::SWFAnim(v19, a3, v22);
              v42 = v19;
              VectorSet<SWFAnim *>::push_back_unique((int)v37, (int *)&v42);
              if ( !v43 )
                v43 = v42;
            }
            while ( v17 != v39 );
          }
          std::string::~string(&v47);
        }
        return (int)v43;
      }
      gameswf::smart_ptr_proxy::operator=(&v45, (_DWORD *)*((unsigned __int8 *)v45 + 4));
      v46 = 0;
    }
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
        "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\SWFAnim\\SWFAnimManager.cpp",
        122);
    }
    DebugCachedCharacter::~DebugCachedCharacter((DebugCachedCharacter *)v44);
  }
  return 0;
}


// ===== 498bcc SWFAnimManager::GrabAnim(char const*,MenuFX *,int) =====
int __fastcall SWFAnimManager::GrabAnim(SWFAnimManager *this, char *a2, MenuFX *a3, int a4)
{
  char *v4; // r5
  char *v8; // r0
  int *v9; // r1
  int *v10; // r12
  int result; // r0
  int *v12; // r3
  char *v13; // [sp+4h] [bp-4h] BYREF

  v13 = a2;
  v4 = (char *)this + 4;
  if ( (_DWORD *)((char *)this + 4) == std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,VectorSet<SWFAnim *>>,std::priv::_Select1st<std::pair<std::string const,VectorSet<SWFAnim *>>>,std::priv::_MapTraitsT<std::pair<std::string const,VectorSet<SWFAnim *>>>,std::allocator<std::pair<std::string const,VectorSet<SWFAnim *>>>>::_M_find<char const*>(
                                         (_DWORD *)this + 1,
                                         &v13)
    && a4 > 0 )
  {
    SWFAnimManager::ExtendBank(this, v13, a3, a4);
  }
  v8 = std::map<std::string,VectorSet<SWFAnim *>>::operator[]<char const*>(v4, &v13);
  v9 = *((int **)v8 + 1);
  v10 = *(int **)v8;
  if ( *(int **)v8 != v9 )
  {
    result = *v10;
    if ( *(_BYTE *)(*v10 + 4) )
      goto LABEL_10;
    v12 = v10;
    while ( ++v12 != v9 )
    {
      result = *v12;
      if ( *(_BYTE *)(*v12 + 4) )
        goto LABEL_10;
    }
  }
  result = a4 > 0;
  if ( a4 <= 0 )
    return result;
  result = SWFAnimManager::ExtendBank(this, v13, a3, a4 + v9 - v10);
LABEL_10:
  if ( result )
    *(_BYTE *)(result + 4) = 0;
  return result;
}


// ===== 498cb0 SWFAnimManager::GrabAnim(char const*) =====
int __fastcall SWFAnimManager::GrabAnim(SWFAnimManager *this, char *a2)
{
  MenuManager *Instance; // r0
  MenuFX *HUDRoot; // r0

  Instance = (MenuManager *)MenuManager::GetInstance(this);
  HUDRoot = (MenuFX *)MenuManager::GetHUDRoot(Instance);
  return SWFAnimManager::GrabAnim(this, a2, HUDRoot, 1);
}


// ===== 498cdc SWFAnimToolTip::IsVisible(void) =====
int __fastcall SWFAnimToolTip::IsVisible(SWFAnimToolTip *this)
{
  SWFAnim *v1; // r0

  if ( *((_DWORD *)this + 1) && (v1 = *((SWFAnim **)this + 2)) != nullptr )
    return SWFAnim::IsVisible(v1);
  else
    return 0;
}


// ===== 498d00 SWFAnimToolTip::IsAnimOver(void) =====
bool __fastcall SWFAnimToolTip::IsAnimOver(SWFAnim **this)
{
  return !SWFAnim::IsAnimPlaying(*(this + 2));
}


// ===== 498d18 SWFAnimToolTip::PlayAnim(char const*) =====
int __fastcall SWFAnimToolTip::PlayAnim(SWFAnim **this, const char *a2)
{
  return SWFAnim::PlayAnim(*(this + 2), a2);
}


// ===== 498d20 SWFAnimToolTip::DoFadeOut(void) =====
int __fastcall SWFAnimToolTip::DoFadeOut(SWFAnimToolTip *this)
{
  *((_DWORD *)this + 1) = 3;
  return SWFAnimToolTip::PlayAnim((SWFAnim **)this, "fade_out");
}


// ===== 498d38 SWFAnimToolTip::FadeOut(int) =====
SWFAnimToolTip *__fastcall SWFAnimToolTip::FadeOut(SWFAnimToolTip *this, int a2)
{
  if ( (unsigned int)(*((_DWORD *)this + 1) - 1) <= 1 && *(int *)this <= 0 )
  {
    *(_DWORD *)this = a2;
    if ( a2 < 0 )
      return (SWFAnimToolTip *)SWFAnimToolTip::DoFadeOut(this);
  }
  return this;
}


// ===== 498d64 SWFAnimToolTip::FadeIn(void) =====
int __fastcall SWFAnimToolTip::FadeIn(int this)
{
  int v1; // r2
  int v2; // r4
  bool v3; // zf

  v1 = *(_DWORD *)(this + 4);
  v2 = this;
  v3 = v1 == 0;
  if ( v1 )
    v3 = v1 == 3;
  if ( v3 )
  {
    if ( !*(_DWORD *)(this + 8) )
      *(_DWORD *)(this + 8) = SWFAnimManager::GrabAnim(
                                (SWFAnimManager *)&Singleton<SWFAnimManager>::s_inst,
                                "anim_item_info");
    *(_DWORD *)(v2 + 4) = 1;
    SWFAnimToolTip::PlayAnim((SWFAnim **)v2, "fade_in");
    this = SWFAnim::SetVisible(*(SWFAnim **)(v2 + 8), 1);
  }
  *(_DWORD *)v2 = 0;
  return this;
}


// ===== 498dec SWFAnimToolTip::~SWFAnimToolTip() =====
void __fastcall SWFAnimToolTip::~SWFAnimToolTip(SWFAnim **this)
{
  SWFAnimManager::DropAnim((SWFAnimManager *)&Singleton<SWFAnimManager>::s_inst, *(this + 2));
  *(this + 2) = nullptr;
}


// ===== 498e24 SWFAnimToolTip::~SWFAnimToolTip() =====
void __fastcall SWFAnimToolTip::~SWFAnimToolTip(SWFAnim **this)
{
  SWFAnimManager::DropAnim((SWFAnimManager *)&Singleton<SWFAnimManager>::s_inst, *(this + 2));
  *(this + 2) = nullptr;
}


// ===== 498e5c SWFAnimToolTip::Update(void) =====
int __fastcall SWFAnimToolTip::Update(int this)
{
  int v1; // r4
  SWFAnim *v2; // r5
  SWFAnim *v3; // r1

  v1 = this;
  switch ( *(_DWORD *)(this + 4) )
  {
    case 0:
      v3 = *(SWFAnim **)(this + 8);
      if ( v3 )
      {
        this = SWFAnimManager::DropAnim((SWFAnimManager *)&Singleton<SWFAnimManager>::s_inst, v3);
        *(_DWORD *)(v1 + 8) = 0;
      }
      break;
    case 1:
      this = SWFAnimToolTip::IsAnimOver((SWFAnim **)this);
      if ( this )
      {
        this = SWFAnimToolTip::PlayAnim((SWFAnim **)v1, "show");
        *(_DWORD *)(v1 + 4) = 2;
      }
      break;
    case 2:
      if ( *(int *)this > 0 )
      {
        v2 = *(SWFAnim **)this;
        this = (int)v2 - Application::GetDt((Application *)&Singleton<Application>::s_inst);
        *(_DWORD *)v1 = this;
        if ( this <= 0 )
          this = SWFAnimToolTip::DoFadeOut((SWFAnimToolTip *)v1);
      }
      break;
    case 3:
      this = SWFAnimToolTip::IsAnimOver((SWFAnim **)this);
      if ( this )
        *(_DWORD *)(v1 + 4) = 0;
      break;
    default:
      return this;
  }
  return this;
}


// ===== 498f30 SWFAnimToolTip::SWFAnimToolTip(void) =====
void __fastcall SWFAnimToolTip::SWFAnimToolTip(SWFAnimToolTip *this)
{
  int v2; // r0

  *((_DWORD *)this + 2) = 0;
  *(_DWORD *)this = 0;
  *((_DWORD *)this + 1) = 0;
  v2 = SWFAnimManager::GrabAnim((SWFAnimManager *)&Singleton<SWFAnimManager>::s_inst, "anim_item_info");
  *((_DWORD *)this + 2) = v2;
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
        "m_swfAnim != 0",
        "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\SWFAnim\\SWFAnimTooltip.cpp",
        13);
    }
  }
}


// ===== 498ff4 SWFAnimToolTip::SWFAnimToolTip(void) =====
void __fastcall SWFAnimToolTip::SWFAnimToolTip(SWFAnimToolTip *this)
{
  int v2; // r0

  *((_DWORD *)this + 2) = 0;
  *(_DWORD *)this = 0;
  *((_DWORD *)this + 1) = 0;
  v2 = SWFAnimManager::GrabAnim((SWFAnimManager *)&Singleton<SWFAnimManager>::s_inst, "anim_item_info");
  *((_DWORD *)this + 2) = v2;
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
        "m_swfAnim != 0",
        "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\SWFAnim\\SWFAnimTooltip.cpp",
        13);
    }
  }
}


// ===== 4990b8 `global constructor keyed to'.._.._sources_Game_SWFAnim_SWFAnimTooltip.cpp =====
int `global constructor keyed to'.._.._sources_Game_SWFAnim_SWFAnimTooltip.cpp()
{
  int result; // r0

  result = `guard variable for'Singleton<SWFAnimManager>::s_inst;
  dword_9A6368 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9A6364 = 1056964608;
  if ( (`guard variable for'Singleton<SWFAnimManager>::s_inst & 1) == 0 )
  {
    `guard variable for'Singleton<SWFAnimManager>::s_inst = 1;
    SWFAnimManager::SWFAnimManager((SWFAnimManager *)&Singleton<SWFAnimManager>::s_inst);
    result = _aeabi_atexit(
               (int)&Singleton<SWFAnimManager>::s_inst,
               (int)SWFAnimManager::~SWFAnimManager,
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


// ===== 499194 GameCenter::EnableGCFeatures(void) =====
int __fastcall GameCenter::EnableGCFeatures(int this)
{
  *(_BYTE *)(this + 7) = 1;
  return this;
}


// ===== 4991a0 GameCenter::DisableGCFeatures(void) =====
int __fastcall GameCenter::DisableGCFeatures(int this)
{
  *(_BYTE *)(this + 7) = 0;
  return this;
}


// ===== 4991ac GameCenter::ConnectToServer(int) =====
void __fastcall GameCenter::ConnectToServer(GameCenter *this, int a2)
{
  ;
}


// ===== 4991b0 GameCenter::GCFriends(int) =====
void __fastcall GameCenter::GCFriends(GameCenter *this, int a2)
{
  ;
}


// ===== 4991b4 GameCenter::ProcessGCAPIError(char const*,char const*) =====
void __fastcall GameCenter::ProcessGCAPIError(GameCenter *this, const char *a2, const char *a3)
{
  ;
}


// ===== 4991b8 GameCenter::GetGCPlayerAttributes(void) =====
int __fastcall GameCenter::GetGCPlayerAttributes(GameCenter *this)
{
  return -65536;
}


// ===== 4991c4 GameCenter::GetUserUid(void) =====
int __fastcall GameCenter::GetUserUid(GameCenter *this)
{
  return *((_DWORD *)this + 13);
}


// ===== 4991cc GameCenter::GetHostUid(void) =====
int __fastcall GameCenter::GetHostUid(GameCenter *this)
{
  return *((_DWORD *)this + 12);
}


// ===== 4991d4 GameCenter::GetPlayerCount(void) =====
int __fastcall GameCenter::GetPlayerCount(GameCenter *this)
{
  GameCenter *v1; // r3
  int v2; // r2

  v1 = *((GameCenter **)this + 9);
  if ( v1 == (GameCenter *)((char *)this + 36) )
  {
    v2 = 0;
  }
  else
  {
    v2 = 0;
    do
    {
      v1 = *(GameCenter **)v1;
      ++v2;
    }
    while ( (GameCenter *)((char *)this + 36) != v1 );
  }
  *((_DWORD *)this + 11) = v2;
  return v2;
}


// ===== 499208 GameCenter::DumpPlayerIDStatusList(void) =====
int __fastcall GameCenter::DumpPlayerIDStatusList(int this)
{
  int i; // r3

  for ( i = *(_DWORD *)(this + 116); i; i = *(_DWORD *)(i + 12) )
    ;
  return this;
}


// ===== 499224 GameCenter::SaveGCAchievement(char *) =====
_DWORD *__fastcall GameCenter::SaveGCAchievement(GameCenter *this, char *a2)
{
  _DWORD *result; // r0
  _DWORD *v5; // r3

  result = LC_API_MALLOC_0(0xCu);
  if ( result )
  {
    *result = a2;
    result[1] = 0;
    v5 = *((_DWORD **)this + 28);
    result[2] = v5;
    *v5 = result;
    *((_DWORD *)this + 28) = result + 1;
  }
  return result;
}


// ===== 499264 GameCenter::SetPlayerIDStatus(char const*,char const*,bool) =====
_DWORD *__fastcall GameCenter::SetPlayerIDStatus(_DWORD *this, const char *a2, const char *a3, bool a4)
{
  _DWORD *v5; // r5
  _DWORD *v8; // r7
  char *v9; // r0
  int v10; // r6
  char *v11; // r2
  char *v12; // r3
  bool v13; // zf
  _DWORD *v14; // r3
  _DWORD *v15; // r3

  v5 = this;
  if ( a2 )
  {
    this = LC_API_MALLOC_0(0x14u);
    v8 = this;
    if ( this )
    {
      v9 = strdup(a2);
      *(_BYTE *)v8 = a4;
      v8[1] = v9;
      this = strdup(a3);
      v8[2] = this;
      v10 = v5[29];
      if ( v10 )
      {
        while ( 1 )
        {
          this = (_DWORD *)LC_API_STRCMP_0(a2, *(const char **)(v10 + 4));
          if ( !this )
            break;
          v10 = *(_DWORD *)(v10 + 12);
          if ( !v10 )
            goto LABEL_13;
        }
        v12 = *(char **)(v10 + 12);
        v13 = v12 == nullptr;
        v8[3] = v12;
        if ( v12 )
        {
          v11 = (char *)(v8 + 3);
        }
        else
        {
          v12 = (char *)(v8 + 3);
          v5[30] = v8 + 3;
        }
        if ( !v13 )
          *((_DWORD *)v12 + 4) = v11;
        v14 = *(_DWORD **)(v10 + 16);
        v8[4] = v14;
        *v14 = v8;
      }
      else
      {
LABEL_13:
        v8[3] = 0;
        v15 = (_DWORD *)v5[30];
        v8[4] = v15;
        *v15 = v8;
        v5[30] = v8 + 3;
      }
    }
  }
  return this;
}


// ===== 499324 GameCenter::IsHost(void) =====
bool __fastcall GameCenter::IsHost(const char **this)
{
  return LC_API_STRCMP_0(*(this + 12), *(this + 13)) == 0;
}


// ===== 499340 std::priv::_S_merge<std::string,std::allocator<std::string>,std::less<std::string>>(std::list<std::string,std::allocator<std::string>> &,std::list<std::string,std::allocator<std::string>> &,std::less<std::string>) =====
int **__fastcall std::priv::_S_merge<std::string,std::allocator<std::string>,std::less<std::string>>(
        int **result,
        int **a2)
{
  int *v2; // r5
  int *v3; // r8
  int **v5; // r4
  int *v6; // r3
  const void *v7; // r1
  int v8; // r6
  int v9; // r7
  size_t v10; // r2
  int **v11; // r3
  int *v12; // r3
  int *v13; // r2

  v2 = *result;
  v3 = (int *)result;
  v5 = (int **)*a2;
  if ( result != (int **)*result )
  {
    do
    {
      if ( a2 == v5 )
        return result;
      v6 = v5[7];
      v7 = (const void *)v2[7];
      v8 = (char *)v5[6] - (char *)v6;
      v9 = v2[6] - (_DWORD)v7;
      if ( v9 >= v8 )
        v10 = (char *)v5[6] - (char *)v6;
      else
        v10 = v2[6] - (_DWORD)v7;
      result = (int **)memcmp(v6, v7, v10);
      if ( result )
      {
        if ( (int)result >= 0 )
        {
LABEL_8:
          v2 = (int *)*v2;
          v11 = v5;
          goto LABEL_9;
        }
      }
      else if ( v8 >= v9 )
      {
        goto LABEL_8;
      }
      v11 = (int **)*v5;
      if ( *v5 != v2 )
      {
        *v11[1] = (int)v2;
        *v5[1] = (int)v11;
        *(_DWORD *)v2[1] = v5;
        v13 = (int *)v2[1];
        v2[1] = (int)v11[1];
        v11[1] = v5[1];
        v5[1] = v13;
        v5 = v11;
        continue;
      }
LABEL_9:
      v5 = v11;
    }
    while ( v3 != v2 );
  }
  if ( a2 != v5 && v3 != (int *)a2 )
  {
    *a2[1] = (int)v3;
    *v5[1] = (int)a2;
    *(_DWORD *)v3[1] = v5;
    v12 = (int *)v3[1];
    v3[1] = (int)a2[1];
    a2[1] = v5[1];
    v5[1] = v12;
  }
  return result;
}


// ===== 499440 GameCenter::GCStartGameTimeoutExpired(void) =====
bool __fastcall GameCenter::GCStartGameTimeoutExpired(GameCenter *this)
{
  OnlineGameState *Instance; // r0
  timeval v4; // [sp+0h] [bp-Ch] BYREF

  gettimeofday(&v4, nullptr);
  Instance = (OnlineGameState *)OnlineSingleton<OnlineGameState>::GetInstance();
  return OnlineGameState::timevaldiff(Instance, (timeval *)((char *)this + 28), &v4) > 150000;
}


// ===== 499488 `global constructor keyed to'.._.._sources_Game_Multiplayer_GameCenter.cpp =====
int `global constructor keyed to'.._.._sources_Game_Multiplayer_GameCenter.cpp()
{
  int result; // r0

  result = `guard variable for'Singleton<PlayerStatManager>::s_inst;
  dword_9A6394 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9A6390 = 1056964608;
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


// ===== 499564 GameCenter::ReportGCScore(int) =====
int __fastcall GameCenter::ReportGCScore(GameCenter *this, int a2)
{
  int result; // r0

  result = GCSingleton<GameCenter>::GetInstance();
  if ( *(_BYTE *)(result + 5) )
  {
    *((_DWORD *)this + 15) = a2;
    *(_BYTE *)(GCSingleton<GameCenter>::GetInstance() + 13) = 1;
    result = GCSingleton<GameCenter>::GetInstance();
    *(_BYTE *)(result + 14) = 0;
  }
  return result;
}


// ===== 4995a0 GameCenter::ReportGCAchievement(char *) =====
int __fastcall GameCenter::ReportGCAchievement(GameCenter *this, char *a2)
{
  int result; // r0
  void *v5; // r0

  result = GCSingleton<GameCenter>::GetInstance();
  if ( *(_BYTE *)(result + 5) )
  {
    v5 = *((void **)this + 14);
    if ( v5 )
      free(v5);
    *((_DWORD *)this + 14) = strdup(a2);
    *(_BYTE *)(GCSingleton<GameCenter>::GetInstance() + 12) = 1;
    result = GCSingleton<GameCenter>::GetInstance();
    *(_BYTE *)(result + 14) = 0;
  }
  return result;
}


// ===== 4995f4 GameCenter::GetGCPlayerAlias(void) =====
std::string *__fastcall GameCenter::GetGCPlayerAlias(std::string *this, int a2)
{
  this->_M_finish = (char *)this;
  this->_M_start_of_storage._M_data = (char *)this;
  std::string::_M_range_initialize(this, *(const char **)(a2 + 96), *(const char **)(a2 + 92));
  return this;
}


// ===== 499618 GameCenter::SetGCPlayerAlias(char *) =====
void __fastcall GameCenter::SetGCPlayerAlias(GameCenter *this, char *a2)
{
  std::string *v2; // r7
  std::priv::_String_base<char,std::allocator<char> > v3; // [sp+4h] [bp-20h] BYREF

  v2 = (std::string *)((char *)this + 76);
  std::string::string((std::string *)&v3, a2);
  if ( v2 != &v3 )
    std::string::_M_assign(v2, v3._M_start_of_storage._M_data, v3._M_finish);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v3);
}


// ===== 499694 GameCenter::GetGCPlayerGroup(void) =====
int __fastcall GameCenter::GetGCPlayerGroup(GameCenter *this)
{
  unsigned int v1; // r1
  RenderFX *Root; // r10
  RenderFX *v3; // r0
  gameswf::root *v4; // r0
  gameswf::character *root_movie; // r0
  int v6; // r3
  int v7; // r2
  std::ostream *v8; // r0
  int v9; // r4
  std::priv::_String_base<char,std::allocator<char> > v11[17]; // [sp+1Ch] [bp-250h] BYREF
  _DWORD v12[2]; // [sp+1B4h] [bp-B8h] BYREF
  std::ostream v13; // [sp+1BCh] [bp-B0h] BYREF
  char v14; // [sp+240h] [bp-2Ch]
  int v15; // [sp+244h] [bp-28h]
  int v16; // [sp+248h] [bp-24h]
  std::priv::_String_base<char,std::allocator<char> > v17; // [sp+24Ch] [bp-20h] BYREF

  v1 = *(_DWORD *)PlayerManager::GetLocalPlayer((PlayerManager *)dword_99F76C, 0, 0)[1].unknown_000;
  if ( v1 == -1 )
    v1 = *(_DWORD *)(dword_99F778 + 8);
  PlayerSavegame::PlayerSavegame((PlayerSavegame *)v11, v1, 1, 0);
  Root = (RenderFX *)MenuManager::GetRoot((MenuManager *)dword_99F780);
  v3 = (RenderFX *)MenuManager::GetRoot((MenuManager *)dword_99F780);
  v4 = (gameswf::root *)RenderFX::GetRoot(v3);
  root_movie = (gameswf::character *)gameswf::root::get_root_movie(v4);
  RenderFX::InvokeASCallback(Root, root_movie, "GetCurrentDifficulty", nullptr, 0);
  PlayerSavegame::SG_Load((PlayerSavegame *)v11, 16);
  PlayerSavegame::SG_GetCurrentPrimaryQuest((PlayerSavegame *)v11, PlayerSavegame::m_difficultyLevel);
  PlayerSavegame::SG_GetQuestSG((PlayerSavegame *)v11);
  __ZNSt8ios_baseC2Ev_veneer((std::ios_base *const)&v13.gap4[60]);
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v12[0] = off_964104;
  *(_DWORD *)&v13.gap4[60] = off_964118;
  v12[1] = 0;
  std::ios::init((int)&v13.gap4[60], 0, (int)off_964118, (int)off_964104);
  v13._vptr.basic_ostream = (int (**)(...))off_96412C;
  *(_DWORD *)&v13.gap4[60] = off_964140;
  std::ios::init((int)&v13.gap4[60], 0, (int)off_964140, (int)off_96412C);
  v12[0] = off_9640C4;
  *(_DWORD *)&v13.gap4[60] = off_9640EC;
  v13._vptr.basic_ostream = (int (**)(...))off_9640D8;
  std::ios::init((int)&v13.gap4[60], 0, (int)off_9640EC, (int)off_9640C4);
  memset(&v13.gap4[4], 0, 24);
  v12[0] = off_964084;
  *(_DWORD *)&v13.gap4[60] = off_9640AC;
  v13._vptr.basic_ostream = (int (**)(...))off_964098;
  *(_DWORD *)v13.gap4 = off_95B938;
  __ZNSt6localeC1Ev_veneer((std::locale *const)&v13.gap4[28]);
  *(_DWORD *)&v13.gap4[52] = &v13.gap4[36];
  *(_DWORD *)v13.gap4 = off_95B8F0;
  *(_DWORD *)&v13.gap4[32] = 24;
  *(_DWORD *)&v13.gap4[56] = &v13.gap4[36];
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block(&v13.gap4[36], 0x10u);
  v6 = *(_DWORD *)&v13.gap4[52];
  **(_BYTE **)&v13.gap4[52] = 0;
  std::ios::init((int)&v13.gap4[60], (int)v13.gap4, v7, v6);
  v8 = std::priv::__put_num<char,std::char_traits<char>,long>(&v13);
  std::priv::__put_num<char,std::char_traits<char>,long>(v8);
  v17._M_finish = (char *)&v17;
  v17._M_start_of_storage._M_data = (char *)&v17;
  std::string::_M_range_initialize((std::string *)&v17, *(const char **)&v13.gap4[56], *(const char **)&v13.gap4[52]);
  v9 = strtol(v17._M_start_of_storage._M_data, nullptr, 10);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v17);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream((int)v12);
  PlayerSavegame::~PlayerSavegame(v11);
  return v9;
}


// ===== 499974 std::list<std::string,std::allocator<std::string>>::_M_create_node(std::string const&) =====
char *__fastcall std::list<std::string>::_M_create_node(int a1, int a2)
{
  char *v3; // r4
  size_t v5; // [sp+4h] [bp-8h] BYREF

  v5 = 32;
  v3 = (char *)__ZNSt12__node_alloc11_M_allocateERj_veneer(&v5);
  *((_DWORD *)v3 + 6) = v3 + 8;
  *((_DWORD *)v3 + 7) = v3 + 8;
  std::string::_M_range_initialize((std::string *)(v3 + 8), *(const char **)(a2 + 20), *(const char **)(a2 + 16));
  return v3;
}


// ===== 4999b8 GameCenter::ResetPlayerList(void) =====
_DWORD *__fastcall GameCenter::ResetPlayerList(char **this)
{
  char *v1; // r8
  char *node; // r0
  char **v4; // r2
  int v5; // r2
  _DWORD *i; // r0
  int v7; // r3
  bool v8; // zf
  std::priv::_String_base<char,std::allocator<char> > v10; // [sp+4h] [bp+0h] BYREF

  v1 = (char *)(this + 9);
  std::priv::_List_base<std::string,std::allocator<std::string>>::clear(this + 9);
  std::string::string((std::string *)&v10, *(this + 13));
  node = std::list<std::string>::_M_create_node((int)v1, (int)&v10);
  v4 = (char **)*(this + 10);
  *(_DWORD *)node = v1;
  *((_DWORD *)node + 1) = v4;
  *v4 = node;
  *(this + 10) = node;
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v10);
  for ( i = *(this + 29); i; i = *(this + 29) )
  {
    v7 = i[3];
    v8 = v7 == 0;
    if ( v7 )
      v5 = i[4];
    else
      v7 = i[4];
    if ( v8 )
      *(this + 30) = (char *)v7;
    else
      *(_DWORD *)(v7 + 16) = v5;
    *(_DWORD *)i[4] = i[3];
    free(i);
  }
  if ( *((_BYTE *)this + 21) )
    return GameCenter::SetPlayerIDStatus(this, *(this + 13), "ResetPlayerList", 0);
  else
    return GameCenter::SetPlayerIDStatus(this, *(this + 13), "ResetPlayerList", 1);
}


// ===== 499ad8 std::priv::_S_sort<std::string,std::allocator<std::string>,std::less<std::string>>(std::list<std::string,std::allocator<std::string>> &,std::less<std::string>) =====
int __fastcall std::priv::_S_sort<std::string,std::allocator<std::string>,std::less<std::string>>(int *a1)
{
  char **v1; // r7
  _DWORD *v2; // r5
  int *i; // r6
  char *node; // r0
  char **v5; // r3
  int v6; // r10
  int *v7; // r3
  int *v8; // r2
  int v9; // r1
  int v10; // r0
  int v11; // r3
  int v12; // r6
  int v13; // r8
  int **v14; // r5
  int *v15; // r3
  int *v16; // r2
  int **v17; // r3
  int *v18; // r1
  int *v19; // r3
  int v20; // r1
  int *v21; // r2
  int *v22; // r3
  int *v23; // r1
  int **v24; // r2
  int *v25; // r0
  int v26; // r3
  int v27; // r1
  int v28; // r6
  int j; // r5
  int **v30; // r0
  int **v31; // r1
  int **v32; // r2
  int *v33; // r12
  int *v34; // r0
  int v35; // r3
  int *v36; // r3
  int v37; // r0
  int v38; // r2
  char **v39; // r0
  int *v41; // r1
  int **v42; // r1
  int *v43; // r2
  int **v44; // r2
  int *v45; // r3
  int **v46; // r3
  int *v48; // [sp+14h] [bp-218h] BYREF
  int **v49; // [sp+18h] [bp-214h]
  _DWORD v50[128]; // [sp+24h] [bp-208h] BYREF
  _DWORD v51[2]; // [sp+224h] [bp-8h] BYREF

  if ( (int *)*a1 != a1 && a1 != *(int **)*a1 )
  {
    v1 = (char **)v50;
    v48 = (int *)&v48;
    v49 = &v48;
    v2 = v50;
    do
    {
      *v2 = v2;
      v2[1] = v2;
      for ( i = v48; i != (int *)&v48; i = (int *)*i )
      {
        node = std::list<std::string>::_M_create_node((int)v2, (int)(i + 2));
        v5 = (char **)v2[1];
        *(_DWORD *)node = v2;
        *((_DWORD *)node + 1) = v5;
        *v5 = node;
        v2[1] = node;
      }
      v2 += 2;
    }
    while ( v2 != v51 );
    v6 = 0;
    while ( 1 )
    {
      v7 = (int *)*a1;
      if ( a1 == (int *)*a1 )
        break;
      while ( 1 )
      {
        v8 = v48;
        v9 = *v7;
        if ( v48 != v7 && v48 != (int *)v9 )
        {
          **(_DWORD **)(v9 + 4) = v48;
          *(_DWORD *)v7[1] = v9;
          *(_DWORD *)v8[1] = v7;
          v10 = v8[1];
          v8[1] = *(_DWORD *)(v9 + 4);
          *(_DWORD *)(v9 + 4) = v7[1];
          v7[1] = v10;
        }
        if ( !v6 || (_DWORD *)v50[0] == v50 )
        {
          v11 = 0;
          v12 = 0;
        }
        else
        {
          v12 = 0;
          v13 = 0;
          while ( 1 )
          {
            v14 = (int **)&v50[v13];
            std::priv::_S_merge<std::string,std::allocator<std::string>,std::less<std::string>>((int **)&v50[v13], &v48);
            v15 = (int *)v50[v13];
            ++v12;
            if ( v15 == &v50[v13] )
            {
              v43 = v48;
              if ( v48 != (int *)&v48 )
              {
                *v15 = (int)v48;
                v43[1] = (int)v15;
                v44 = v49;
                v15[1] = (int)v49;
                *v44 = v15;
                v48 = (int *)&v48;
                v49 = &v48;
              }
            }
            else
            {
              v16 = v48;
              if ( v48 == (int *)&v48 )
              {
                v48 = (int *)v50[v13];
                v15[1] = (int)&v48;
                v49 = (int **)v14[1];
                *v49 = (int *)&v48;
                v14[1] = (int *)v14;
                *v14 = (int *)v14;
              }
              else
              {
                v48 = (int *)v50[v13];
                v17 = v49;
                v49 = (int **)v14[1];
                *v14 = v16;
                v14[1] = (int *)v17;
                v18 = *v49;
                *v49 = *v17;
                *v17 = v18;
                v19 = *v14;
                v20 = v48[1];
                v48[1] = (*v14)[1];
                v19[1] = v20;
              }
            }
            if ( v12 == v6 )
              break;
            v21 = (int *)v50[2 * v12];
            v13 = 2 * v12;
            v22 = &v50[2 * v12];
            if ( v21 == v22 )
              goto LABEL_39;
          }
          v11 = 2 * v12;
        }
        v21 = (int *)v50[v11];
        v22 = &v50[v11];
        if ( v21 == v22 )
        {
LABEL_39:
          v41 = v48;
          if ( v48 != (int *)&v48 )
          {
            *v22 = (int)v48;
            v41[1] = (int)v21;
            v42 = v49;
            v22[1] = (int)v49;
            *v42 = v21;
            v48 = (int *)&v48;
            v49 = &v48;
          }
        }
        else
        {
          v23 = v48;
          if ( v48 == (int *)&v48 )
          {
            v48 = v21;
            v21[1] = (int)&v48;
            v49 = (int **)v22[1];
            *v49 = (int *)&v48;
            v22[1] = (int)v22;
            *v22 = (int)v22;
          }
          else
          {
            v48 = v21;
            v24 = v49;
            v49 = (int **)v22[1];
            *v22 = (int)v23;
            v22[1] = (int)v24;
            v25 = *v49;
            *v49 = *v24;
            *v24 = v25;
            v26 = *v22;
            v27 = v48[1];
            v48[1] = *(_DWORD *)(v26 + 4);
            *(_DWORD *)(v26 + 4) = v27;
          }
        }
        if ( v12 != v6 )
          break;
        if ( ++v6 <= 63 )
          break;
        __ZSt26__stl_throw_overflow_errorPKc_veneer("list::sort");
        v7 = (int *)*a1;
        if ( a1 == (int *)*a1 )
          goto LABEL_28;
      }
    }
LABEL_28:
    if ( v6 > 1 )
    {
      v28 = 0;
      for ( j = 1; j != v6; ++j )
      {
        v30 = (int **)&v50[2 * j];
        std::priv::_S_merge<std::string,std::allocator<std::string>,std::less<std::string>>(v30, (int **)&v50[v28]);
        v28 += 2;
      }
      v7 = (int *)*a1;
    }
    v31 = (int **)v50[2 * v6 - 2];
    v32 = (int **)&v50[2 * v6 - 2];
    if ( v31 == v32 )
    {
      if ( a1 != v7 )
      {
        *v31 = v7;
        v7[1] = (int)v31;
        v45 = (int *)a1[1];
        v31[1] = v45;
        *v45 = (int)v31;
        a1[1] = (int)a1;
        *a1 = (int)a1;
      }
    }
    else if ( a1 == v7 )
    {
      *a1 = (int)v31;
      v31[1] = a1;
      v46 = (int **)v32[1];
      a1[1] = (int)v46;
      *v46 = a1;
      v32[1] = (int *)v32;
      *v32 = (int *)v32;
    }
    else
    {
      v33 = v32[1];
      v34 = (int *)a1[1];
      *a1 = (int)v31;
      *v32 = v7;
      a1[1] = (int)v33;
      v32[1] = v34;
      v35 = *v33;
      *v33 = *v34;
      *v34 = v35;
      v36 = *v32;
      v37 = (*v32)[1];
      v38 = *(_DWORD *)(*a1 + 4);
      *(_DWORD *)(*a1 + 4) = v37;
      v36[1] = v38;
    }
    do
    {
      v39 = v1;
      v1 += 2;
      std::priv::_List_base<std::string,std::allocator<std::string>>::clear(v39);
    }
    while ( v1 != v51 );
    std::priv::_List_base<std::string,std::allocator<std::string>>::clear((char **)&v48);
  }
  return 16556;
}


// ===== 499efc GameCenter::CoinTossForHost(void) =====
int __fastcall GameCenter::CoinTossForHost(GameCenter *this)
{
  std::priv::_S_sort<std::string,std::allocator<std::string>,std::less<std::string>>((int *)this + 9);
  return *(_DWORD *)(*((_DWORD *)this + 9) + 28);
}


// ===== 499f24 GameCenter::GCStartMultiplayerGame(void) =====
int __fastcall GameCenter::GCStartMultiplayerGame(GameCenter *this)
{
  int result; // r0
  int v3; // r4
  int Instance; // r0
  GameCenter *v5; // r0
  int v6; // r6
  MenuManager *v7; // r0
  MenuManager *v8; // r0
  RenderFX *Root; // r0
  OnlineGameState *v10; // r0

  result = GCSingleton<GameCenter>::GetInstance();
  v3 = *(unsigned __int8 *)(result + 21);
  if ( !*(_BYTE *)(result + 21) )
  {
    *(_BYTE *)(OnlineSingleton<OnlineGameState>::GetInstance() + 40) = 1;
    *(_BYTE *)(GCSingleton<GameCenter>::GetInstance() + 17) = 1;
    Instance = GCSingleton<GameCenter>::GetInstance();
    gettimeofday((struct timeval *)(Instance + 28), (__timezone_ptr_t)v3);
    v5 = (GameCenter *)GCSingleton<GameCenter>::GetInstance();
    v6 = GameCenter::CoinTossForHost(v5);
    *(_DWORD *)(GCSingleton<GameCenter>::GetInstance() + 48) = v6;
    v7 = (MenuManager *)GameCenter::DumpPlayerIDStatusList((int)this);
    v8 = (MenuManager *)MenuManager::GetInstance(v7);
    Root = (RenderFX *)MenuManager::GetRoot(v8);
    RenderFX::InvokeASCallback(Root, "_root", "GoToVerificationScreen", (const gameswf::as_value *)v3, v3);
    v10 = (OnlineGameState *)OnlineSingleton<OnlineGameState>::GetInstance();
    return OnlineGameState::Init(v10, 4);
  }
  return result;
}


// ===== 499fc8 GameCenter::GCStartMultiplayerGame(bool) =====
int __fastcall GameCenter::GCStartMultiplayerGame(GameCenter *this, bool a2)
{
  *(_BYTE *)(GCSingleton<GameCenter>::GetInstance() + 21) = 0;
  return GameCenter::GCStartMultiplayerGame(this);
}


// ===== 499fe8 GameCenter::GetJoinPlayerList(void) =====
GameCenter *__fastcall GameCenter::GetJoinPlayerList(GameCenter *this, int a2)
{
  _DWORD *v3; // r5
  _DWORD *v4; // r6
  char *node; // r0
  char **v6; // r3

  *(_DWORD *)this = this;
  *((_DWORD *)this + 1) = this;
  v4 = (_DWORD *)(a2 + 36);
  v3 = *(_DWORD **)(a2 + 36);
  if ( v3 != (_DWORD *)(a2 + 36) )
  {
    do
    {
      node = std::list<std::string>::_M_create_node((int)this, (int)(v3 + 2));
      v6 = *((char ***)this + 1);
      *(_DWORD *)node = this;
      *((_DWORD *)node + 1) = v6;
      *v6 = node;
      *((_DWORD *)this + 1) = node;
      v3 = (_DWORD *)*v3;
    }
    while ( v4 != v3 );
  }
  return this;
}


// ===== 49a03c GameCenter::GCAddToJoinPlayerList(char const*) =====
void __fastcall GameCenter::GCAddToJoinPlayerList(GameCenter *this, char *a2)
{
  char *v3; // r7
  char *node; // r0
  char **v5; // r2
  std::priv::_String_base<char,std::allocator<char> > v6; // [sp+4h] [bp-20h] BYREF

  v3 = (char *)this + 36;
  std::string::string((std::string *)&v6, a2);
  node = std::list<std::string>::_M_create_node((int)v3, (int)&v6);
  v5 = *((char ***)this + 10);
  *(_DWORD *)node = v3;
  *((_DWORD *)node + 1) = v5;
  *v5 = node;
  *((_DWORD *)this + 10) = node;
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v6);
}


// ===== 49a0c4 MultiplayerCallback::idleState(void *) =====
int __fastcall MultiplayerCallback::idleState(MultiplayerCallback *this, void *a2)
{
  return 100;
}


// ===== 49a0cc MultiplayerCallback::ingameState(void *) =====
int __fastcall MultiplayerCallback::ingameState(MultiplayerCallback *this, void *a2)
{
  return 300;
}


// ===== 49a0d4 MultiplayerCallback::HandleAskResendAttributesMessage(void *) =====
int __fastcall MultiplayerCallback::HandleAskResendAttributesMessage(MultiplayerCallback *this, void *a2)
{
  CMessaging *v2; // r0
  CMessaging *v3; // r0
  CMatching *MessageFromQueue; // r4
  CMatching *v5; // r0
  CMatching *IsServer; // r0
  int v7; // r0
  int v8; // r0
  int v10; // r0
  int v11; // r5
  CNetPlayerManager *NetPlayerMgr; // r6
  int v13; // r0

  v2 = (CMessaging *)CMessaging::Get(this);
  v3 = (CMessaging *)CMessaging::Get(v2);
  MessageFromQueue = (CMatching *)CMessaging::GetMessageFromQueue(v3, (CMessage *)"CMsgAskResendAttributes");
  v5 = (CMatching *)CMatching::Get(MessageFromQueue);
  IsServer = (CMatching *)CMatching::IsServer(v5);
  if ( IsServer
    || (v10 = CMatching::Get(nullptr),
        v11 = (*(int (__fastcall **)(int))(*(_DWORD *)v10 + 108))(v10),
        NetPlayerMgr = (CNetPlayerManager *)GetNetPlayerMgr(),
        v13 = GetNetPlayerMgr(),
        IsServer = (CMatching *)CNetPlayerManager::GetPlayer(NetPlayerMgr, *(_DWORD *)(v13 + 368), 0),
        v11 == *((_DWORD *)IsServer + 104)) )
  {
    v7 = CMatching::Get(IsServer);
    v8 = (*(int (__fastcall **)(int))(*(_DWORD *)v7 + 164))(v7);
    (*(void (__fastcall **)(int))(*(_DWORD *)v8 + 24))(v8);
    *((_BYTE *)MessageFromQueue + 60) = 1;
    return 0;
  }
  else
  {
    *((_BYTE *)MessageFromQueue + 60) = 1;
    return 0;
  }
}


// ===== 49a17c MultiplayerCallback::HandleGlobalDeathMessage(void *) =====
int __fastcall MultiplayerCallback::HandleGlobalDeathMessage(MultiplayerCallback *this, void *a2)
{
  CMessaging *v2; // r0
  CMessaging *v3; // r0
  int MessageFromQueue; // r6
  DH2_PlayerInfoCharacterPrefix *LocalPlayer; // r0
  Character *character_660; // r4

  v2 = (CMessaging *)CMessaging::Get(this);
  v3 = (CMessaging *)CMessaging::Get(v2);
  MessageFromQueue = CMessaging::GetMessageFromQueue(v3, (CMessage *)"CMsgGlobalDeath");
  LocalPlayer = PlayerManager::GetLocalPlayer((PlayerManager *)dword_99F76C, 0, 1);
  character_660 = LocalPlayer->character_660;
  if ( !character_660 )
    goto LABEL_4;
  if ( (*(int (__fastcall **)(Character *))(*(_DWORD *)character_660 + 52))(LocalPlayer->character_660) )
  {
    if ( *(_DWORD *)(dword_99F76C + 1812) )
    {
LABEL_4:
      *(_BYTE *)(MessageFromQueue + 60) = 1;
      return 0;
    }
    PlayerManager::ResetCharacterDeathTimer((PlayerManager *)dword_99F76C);
    *(_BYTE *)(MessageFromQueue + 60) = 1;
    return 0;
  }
  else
  {
    Character::Kill(character_660, nullptr, 1);
    *(_BYTE *)(MessageFromQueue + 60) = 1;
    return 0;
  }
}


// ===== 49a238 CMsgRaisedEvent::RaiseEventFromNetwork(CMsgRaisedEvent*) =====
EventManager *__fastcall CMsgRaisedEvent::RaiseEventFromNetwork(CMsgRaisedEvent *this, CMsgRaisedEvent *a2)
{
  EventManager *v2; // r5
  int v4; // r0
  EventManager *result; // r0
  int v6; // r5
  int v7; // r10
  int v8; // r11
  char *v9; // r9
  char *v10; // r8
  _DWORD *v11; // r4
  int v12; // r5
  int Constant; // r0
  _DWORD *v14; // kr00_4
  int v15; // r3
  int v16; // r0
  _DWORD *v17; // kr04_4
  int v18; // r3
  char *v19[3]; // [sp+8h] [bp-1Ch] BYREF
  char *v20[4]; // [sp+14h] [bp-10h] BYREF

  v2 = *((EventManager **)this + 3);
  v4 = CMatching::Get(this);
  result = (EventManager *)(*(int (__fastcall **)(int))(*(_DWORD *)v4 + 108))(v4);
  if ( result != v2 )
  {
    v6 = *((_DWORD *)this + 20);
    v7 = *((_DWORD *)this + 22);
    v8 = *((_DWORD *)this + 23);
    v9 = *((char **)this + 24);
    ObjectManager::GetObjectHandleByNetworkId((ObjectManager *)v20, dword_99F764, *((_DWORD *)this + 21));
    v10 = ObjectHandle::operator GameObject *(v20);
    switch ( v6 )
    {
      case 0:
        v11 = CustomAlloc(0x1Cu);
        Constant = PyDataConstants::getConstant((PyDataConstants *)dword_99F758, "v2QuestObjectiveType", "KillXEnemies");
        v14 = &`vtable for'QE_KillEnemies;
        goto LABEL_11;
      case 1:
        v11 = CustomAlloc(0x1Cu);
        Constant = PyDataConstants::getConstant((PyDataConstants *)dword_99F758, "v2QuestObjectiveType", "ClearEnemies");
        v14 = &`vtable for'QE_ClearEnemies;
        goto LABEL_11;
      case 2:
        v11 = CustomAlloc(0x1Cu);
        v16 = PyDataConstants::getConstant((PyDataConstants *)dword_99F758, "v2QuestObjectiveType", "TriggerPlate");
        v17 = &`vtable for'QE_TriggerPlate;
        goto LABEL_14;
      case 3:
        v11 = CustomAlloc(0x1Cu);
        v16 = PyDataConstants::getConstant((PyDataConstants *)dword_99F758, "v2QuestObjectiveType", "DestroyGameObject");
        v17 = &`vtable for'QE_DestroyGameObject;
        goto LABEL_14;
      case 4:
        ObjectManager::GetObjectHandleByNetworkId((ObjectManager *)v19, dword_99F764, (int)v9);
        v9 = ObjectHandle::operator GameObject *(v19);
        v11 = CustomAlloc(0x1Cu);
        Constant = PyDataConstants::getConstant((PyDataConstants *)dword_99F758, "v2QuestObjectiveType", "MoveInZone");
        v14 = &`vtable for'QE_MoveInZone;
        goto LABEL_11;
      case 5:
        v11 = CustomAlloc(0x1Cu);
        v16 = PyDataConstants::getConstant((PyDataConstants *)dword_99F758, "v2QuestObjectiveType", "TalkToNPC");
        v17 = &`vtable for'QE_TalkToNPC;
        goto LABEL_14;
      case 7:
        v11 = CustomAlloc(0x1Cu);
        v16 = PyDataConstants::getConstant((PyDataConstants *)dword_99F758, "v2QuestObjectiveType", "OpenGameObject");
        v17 = &`vtable for'QE_OpenGameObject;
        goto LABEL_14;
      case 8:
        v11 = CustomAlloc(0x1Cu);
        v16 = PyDataConstants::getConstant((PyDataConstants *)dword_99F758, "v2QuestObjectiveType", "TriggerOn");
        v17 = &`vtable for'QE_TriggerOn;
        goto LABEL_14;
      case 9:
        v11 = CustomAlloc(0x1Cu);
        v16 = PyDataConstants::getConstant((PyDataConstants *)dword_99F758, "v2QuestObjectiveType", "PickedUpLiftable");
        v17 = &`vtable for'QE_PickedUpLiftable;
LABEL_14:
        v18 = *v17 + 8;
        v11[1] = v16;
        v11[2] = v10;
        v11[3] = v7;
        *((_BYTE *)v11 + 17) = 0;
        v11[5] = -1;
        v11[6] = v9;
        *v11 = v18;
        *((_BYTE *)v11 + 16) = 0;
        v12 = 1;
        break;
      case 10:
        v11 = CustomAlloc(0x1Cu);
        Constant = PyDataConstants::getConstant(
                     (PyDataConstants *)dword_99F758,
                     "v2QuestObjectiveType",
                     "KillEnemyTemplate");
        v14 = &`vtable for'QE_KillEnemyTemplate;
LABEL_11:
        v15 = *v14 + 8;
        v11[1] = Constant;
        v11[2] = v10;
        v11[3] = v7;
        *((_BYTE *)v11 + 17) = 0;
        v11[5] = -1;
        *v11 = v15;
        v11[6] = v9;
        *((_BYTE *)v11 + 16) = 0;
        v12 = 1;
        break;
      case 12:
        v11 = CustomAlloc(0x1Cu);
        v11[1] = PyDataConstants::getConstant((PyDataConstants *)dword_99F758, "v2QuestObjectiveType", "GatherLoot");
        v11[2] = v10;
        *((_BYTE *)v11 + 17) = 0;
        v11[5] = -1;
        *v11 = off_9699A0;
        v11[6] = v9;
        v11[3] = -1;
        *((_BYTE *)v11 + 16) = 0;
        v12 = 1;
        break;
      default:
        v12 = 0;
        v11 = nullptr;
        break;
    }
    result = (EventManager *)Application::GetCurrentLevel((Application *)&Singleton<Application>::s_inst);
    if ( result )
    {
      if ( v12 )
      {
        v11[5] = v8;
        *((_BYTE *)v11 + 17) = 1;
        EventManager::RaiseAsync(result, (const IEvent *)v11);
        return (EventManager *)(*(int (__fastcall **)(_DWORD *))(*v11 + 4))(v11);
      }
    }
    else if ( gAssertLevel == 2 )
    {
      dword_0 = 0;
    }
    else if ( gAssertLevel == 1 )
    {
      result = (EventManager *)fprintf(
                                 (FILE *)&_sF + 2,
                                 "ASSERT(%s) FAILED: %s:%d\n",
                                 "level",
                                 "..\\..\\project_vs2005\\Game/..\\..\\sources/Online/messages/MsgRaisedEvent.h",
                                 138);
    }
    if ( !v12 )
      return result;
    return (EventManager *)(*(int (__fastcall **)(_DWORD *))(*v11 + 4))(v11);
  }
  return result;
}


// ===== 49a6e4 MultiplayerCallback::HandleRaisedEventMessage(void *) =====
int __fastcall MultiplayerCallback::HandleRaisedEventMessage(MultiplayerCallback *this, void *a2)
{
  int CurrentLevel; // r0
  CMessaging *v4; // r0
  CMessaging *v5; // r0
  CMsgRaisedEvent *MessageFromQueue; // r4
  CMsgRaisedEvent *v7; // r1

  CurrentLevel = Application::GetCurrentLevel((Application *)&Singleton<Application>::s_inst);
  if ( !CurrentLevel || *(_DWORD *)(CurrentLevel + 304) != 38 || !*(_BYTE *)(CurrentLevel + 324) )
    return 0;
  v4 = (CMessaging *)CMessaging::Get((CMessaging *)CurrentLevel);
  v5 = (CMessaging *)CMessaging::Get(v4);
  MessageFromQueue = (CMsgRaisedEvent *)CMessaging::GetMessageFromQueue(v5, (CMessage *)"CMsgRaisedEvent");
  CMsgRaisedEvent::RaiseEventFromNetwork(MessageFromQueue, v7);
  *((_BYTE *)MessageFromQueue + 60) = 1;
  return 0;
}


// ===== 49a75c MultiplayerCallback::LoadGLLiveFriends(void) =====
int __fastcall MultiplayerCallback::LoadGLLiveFriends(MultiplayerCallback *this)
{
  CMatchingGLLive *v1; // r0
  int result; // r0
  int v3; // r4
  CMatchingGLLive *v4; // r0
  CMatching *GLFriendsCount; // r0
  CMatching *v6; // r6
  CMatchingGLLive *v7; // r0
  const char *GLFriendsName; // r0
  CMatchingGLLive *v9; // r0
  const char *GLFriendsNumber; // r0
  CMatchingGLLive *v11; // r0
  CMatching *v12; // r0
  int v13; // r0
  CMatchingGLLive *v14; // r0
  char *v15; // [sp+4h] [bp-10h]
  char *v16; // [sp+8h] [bp-Ch]
  __int16 v17; // [sp+Ch] [bp-8h]

  v1 = (CMatchingGLLive *)CMatching::Get(this);
  result = CMatchingGLLive::GLFriendsListLoaded(v1);
  v3 = result;
  if ( !result )
  {
    v4 = (CMatchingGLLive *)CMatching::Get(nullptr);
    GLFriendsCount = (CMatching *)CMatchingGLLive::GetGLFriendsCount(v4);
    v6 = GLFriendsCount;
    if ( (int)GLFriendsCount > 0 )
    {
      do
      {
        v7 = (CMatchingGLLive *)CMatching::Get(GLFriendsCount);
        GLFriendsName = (const char *)CMatchingGLLive::GetGLFriendsName(v7, v3);
        v16 = strdup(GLFriendsName);
        v9 = (CMatchingGLLive *)CMatching::Get((CMatching *)v16);
        GLFriendsNumber = (const char *)CMatchingGLLive::GetGLFriendsNumber(v9, v3);
        HIBYTE(v17) = 0;
        v15 = strdup(GLFriendsNumber);
        v11 = (CMatchingGLLive *)CMatching::Get((CMatching *)v15);
        if ( CMatchingGLLive::GetGLFriendState(v11, v3) == 2 )
          v12 = (CMatching *)((char *)&dword_0 + 1);
        else
          v12 = nullptr;
        LOBYTE(v17) = (_BYTE)v12;
        ++v3;
        v13 = CMatching::Get(v12);
        GLFriendsCount = (CMatching *)CMatchingGLLive::AddFriendInGameList(v13, v15, v16, v17);
      }
      while ( (CMatching *)v3 != v6 );
    }
    v14 = (CMatchingGLLive *)CMatching::Get(GLFriendsCount);
    return CMatchingGLLive::GLFriendsListLoaded(v14, 1);
  }
  return result;
}


// ===== 49a808 MultiplayerCallback::HandlePlayerLeft(void *) =====
int __fastcall MultiplayerCallback::HandlePlayerLeft(MultiplayerCallback *this, void *a2)
{
  int NetPlayerMgr; // r0
  int v3; // r1
  _DWORD *v4; // r3
  int v5; // r7
  int v6; // r6
  char *v7; // r0
  char *v8; // r9
  CNetPlayerManager *v9; // r0
  CMatching *PlayerCount; // r0
  int v11; // r0
  int v13; // r0
  char *v14[3]; // [sp+0h] [bp-10h] BYREF
  int v15; // [sp+Ch] [bp-4h] BYREF

  if ( GSLevel::s_level && *(int *)(GSLevel::s_level + 304) > 35 )
  {
    v15 = -1;
    NetPlayerMgr = GetNetPlayerMgr();
    CEventQueueBase::GetEventData((CEventQueueBase *)(NetPlayerMgr + 384), 3145731, &v15, 4);
    v3 = dword_99F764;
    v4 = *(_DWORD **)(dword_99F764 + 256);
    if ( v4 != (_DWORD *)(dword_99F764 + 256) )
    {
      v5 = 0;
      do
      {
        v4 = (_DWORD *)*v4;
        ++v5;
      }
      while ( (_DWORD *)(dword_99F764 + 256) != v4 );
      v6 = 0;
      while ( 1 )
      {
        ObjectManager::GetObjectHandleByNetworkId((ObjectManager *)v14, v3, v6);
        v7 = ObjectHandle::operator Character *(v14);
        v8 = v7;
        ++v6;
        if ( v7 && (*(int (__fastcall **)(char *))(*(_DWORD *)v7 + 40))(v7) && v15 == *((_DWORD *)v8 + 2019) )
        {
          PlayerManager::RemoveCharacter((PlayerManager *)dword_99F76C, (Character *)v8);
          if ( v6 == v5 )
            break;
        }
        else if ( v6 == v5 )
        {
          break;
        }
        v3 = dword_99F764;
      }
    }
    v9 = (CNetPlayerManager *)GetNetPlayerMgr();
    PlayerCount = (CMatching *)CNetPlayerManager::GetPlayerCount(v9);
    if ( (int)PlayerCount <= 3 )
    {
      v13 = CMatching::Get(PlayerCount);
      (*(void (__fastcall **)(int, int))(*(_DWORD *)v13 + 68))(v13, 1);
    }
    v11 = GetNetPlayerMgr();
    CEventQueueBase::ConsumeEvent((CEventQueueBase *)(v11 + 384), 3145731);
  }
  return 0;
}


// ===== 49a960 MultiplayerCallback::HandleMenuReadyMessage(void *) =====
int __fastcall MultiplayerCallback::HandleMenuReadyMessage(MultiplayerCallback *this, void *a2)
{
  CMessaging *Instance; // r0
  CMessaging *v4; // r0
  CMessaging *v5; // r0
  int MessageFromQueue; // r5
  int v7; // r0
  char v8; // r7
  _BYTE v9[4]; // [sp+0h] [bp-24h] BYREF
  double v10; // [sp+4h] [bp-20h]
  _BYTE v11[12]; // [sp+Ch] [bp-18h] BYREF
  double v12; // [sp+18h] [bp-Ch]

  Instance = (CMessaging *)OnlineSingleton<OnlineGameState>::GetInstance();
  if ( *((_DWORD *)Instance + 5) == 200 )
  {
    v4 = (CMessaging *)CMessaging::Get(Instance);
    v5 = (CMessaging *)CMessaging::Get(v4);
    MessageFromQueue = CMessaging::GetMessageFromQueue(v5, (CMessage *)"CMsgMenuReady");
    v7 = *(_DWORD *)(MessageFromQueue + 80);
    v8 = *(_BYTE *)(MessageFromQueue + 84);
    v9[1] = 2;
    v9[0] = 0;
    v12 = (double)v7;
    v11[0] = 0;
    v10 = (double)v7;
    v11[4] = v8;
    v11[1] = 1;
    *(_BYTE *)(MessageFromQueue + 60) = 1;
    gameswf::as_value::drop_refs((gameswf::as_value *)v11);
    gameswf::as_value::drop_refs((gameswf::as_value *)v9);
  }
  return 0;
}


// ===== 49a9fc MultiplayerCallback::HandleIsHostMessage(void *) =====
int __fastcall MultiplayerCallback::HandleIsHostMessage(MultiplayerCallback *this, void *a2)
{
  CMessaging *v2; // r0
  CMessaging *v3; // r0
  int MessageFromQueue; // r4
  CNetPlayerManager *NetPlayerMgr; // r0
  int v6; // r5
  int v7; // r0

  v2 = (CMessaging *)CMessaging::Get(this);
  v3 = (CMessaging *)CMessaging::Get(v2);
  MessageFromQueue = CMessaging::GetMessageFromQueue(v3, (CMessage *)"CMsgIsHost");
  NetPlayerMgr = (CNetPlayerManager *)GetNetPlayerMgr();
  v6 = *(_DWORD *)(CNetPlayerManager::GetPlayerByMemberId(NetPlayerMgr, *(_DWORD *)(MessageFromQueue + 12), 0, 0) + 376);
  v7 = GetNetPlayerMgr();
  if ( v6 != *(_DWORD *)(v7 + 368) )
  {
    *(_DWORD *)(v7 + 368) = v6;
    NetStructMember::SetChanged((NetStructMember *)(v7 + 336));
  }
  *(_BYTE *)(MessageFromQueue + 60) = 1;
  return 0;
}


// ===== 49aa60 MultiplayerCallback::HandleSpawnObjectMessage(void *) =====
int __fastcall MultiplayerCallback::HandleSpawnObjectMessage(MultiplayerCallback *this, void *a2)
{
  CMessaging *v2; // r0
  CMessaging *v3; // r0
  int MessageFromQueue; // r6
  ObjectBase *Object; // r0
  bool v7; // r3
  GameObject *NPC; // r8
  _DWORD *v9; // r10
  RoomZone *v10; // r0
  _DWORD v11[3]; // [sp+0h] [bp-34h] BYREF
  _DWORD v12[3]; // [sp+Ch] [bp-28h] BYREF
  _BYTE v13[12]; // [sp+18h] [bp-1Ch] BYREF
  _BYTE v14[16]; // [sp+24h] [bp-10h] BYREF

  v2 = (CMessaging *)CMessaging::Get(this);
  v3 = (CMessaging *)CMessaging::Get(v2);
  MessageFromQueue = CMessaging::GetMessageFromQueue(v3, (CMessage *)"CMsgSpawnObject");
  if ( Application::GetCurrentLevel((Application *)&Singleton<Application>::s_inst)
    && *(_DWORD *)(Application::GetCurrentLevel((Application *)&Singleton<Application>::s_inst) + 304) == 38 )
  {
    ObjectManager::GetObjectHandleByNetworkId((ObjectManager *)v14, dword_99F764);
    Object = (ObjectBase *)ObjectHandle::GetObject((ObjectHandle *)v14, 0);
    if ( Object )
    {
      if ( *(_BYTE *)(MessageFromQueue + 104) )
        ObjectBase::Delete(Object);
    }
    else if ( !*(_BYTE *)(MessageFromQueue + 104) )
    {
      NPC = (GameObject *)Character::CreateNPC(
                            *(Character **)(MessageFromQueue + 84),
                            *(unsigned __int8 *)(MessageFromQueue + 104),
                            (const char *)*(unsigned __int8 *)(MessageFromQueue + 104),
                            v7);
      ObjectManager::GetObjectHandleByNetworkId((ObjectManager *)v13, dword_99F764);
      v9 = (_DWORD *)ObjectHandle::operator GameObject *(v13);
      if ( NPC )
      {
        v12[0] = *(_DWORD *)(MessageFromQueue + 92);
        v12[1] = *(_DWORD *)(MessageFromQueue + 96);
        v12[2] = *(_DWORD *)(MessageFromQueue + 100);
        v11[0] = v9[91];
        v11[1] = v9[92];
        v11[2] = v9[93];
        Character::SetInitialPosition(NPC, v12);
        GameObject::SetPosition(NPC);
        GameObject::SetRotation(NPC, v11);
        *((_BYTE *)NPC + 5348) = 1;
        (*(void (__fastcall **)(GameObject *))(*(_DWORD *)NPC + 64))(NPC);
        ObjectManager::AssignObjectNetworkId((ObjectManager *)dword_99F764, NPC);
        v10 = (RoomZone *)v9[189];
        if ( !v10 || !RoomZone::AddInitialObject(v10, NPC) )
        {
          ObjectManager::AddNoRoomObject((ObjectManager *)dword_99F764, NPC);
          *((_BYTE *)NPC + 751) = 1;
          GameObject::ZoneEntered(NPC);
        }
      }
    }
  }
  *(_BYTE *)(MessageFromQueue + 60) = 1;
  return 0;
}


// ===== 49ac18 MultiplayerCallback::HandleLootMessage(void *) =====
int __fastcall MultiplayerCallback::HandleLootMessage(MultiplayerCallback *this, void *a2)
{
  CMessaging *v2; // r0
  CMessaging *v3; // r0
  int MessageFromQueue; // r4
  int CurrentLevel; // r0
  char *v7; // r6
  char *v8; // r2
  int v9; // r5
  ItemInstance *v10; // r7
  char *v11; // r0
  bool v12; // zf
  ItemInventory *v13; // r5
  unsigned int v14; // r0
  int v15; // r2
  ItemInstance *Item; // r7
  int v17; // r10
  int v18; // r8
  int i; // r6
  int v20; // r1
  const Character *v21; // [sp+0h] [bp-68h]
  bool v22; // [sp+4h] [bp-64h]
  void *v23[14]; // [sp+Ch] [bp-5Ch] BYREF
  char *v24[3]; // [sp+44h] [bp-24h] BYREF
  char *v25[3]; // [sp+50h] [bp-18h] BYREF
  char *v26[3]; // [sp+5Ch] [bp-Ch] BYREF

  v2 = (CMessaging *)CMessaging::Get(this);
  v3 = (CMessaging *)CMessaging::Get(v2);
  MessageFromQueue = CMessaging::GetMessageFromQueue(v3, (CMessage *)"CMsgDropLoot");
  CurrentLevel = Application::GetCurrentLevel((Application *)&Singleton<Application>::s_inst);
  if ( CurrentLevel && *(_DWORD *)(CurrentLevel + 304) == 38 && *(_BYTE *)(CurrentLevel + 324) )
  {
    ObjectManager::GetObjectHandleByNetworkId((ObjectManager *)v26, dword_99F764, *(_DWORD *)(MessageFromQueue + 88));
    v7 = ObjectHandle::operator GameObject *(v26);
    ObjectManager::GetObjectHandleByNetworkId((ObjectManager *)v25, dword_99F764, *(_DWORD *)(MessageFromQueue + 92));
    v8 = ObjectHandle::operator GameObject *(v25);
    if ( *(_BYTE *)(MessageFromQueue + 80) )
    {
      v9 = *(_DWORD *)(MessageFromQueue + 84);
      v10 = (ItemInstance *)operator new(0x6Cu, 0);
      ItemInstance::ItemInstance(v10, v9, 1);
      ObjectBase::GetHandle((ObjectBase *)v24, (int)v7);
      v11 = ObjectHandle::operator Character *(v24);
      v12 = v10 == nullptr;
      if ( v10 )
        v12 = v11 == nullptr;
      v13 = (ItemInventory *)v11;
      if ( !v12 )
      {
        ItemInventory::ItemInventory((ItemInventory *)v23);
        v14 = ItemInventory::AddItemInstance((ItemInventory *)v23, v10, 1u, 1);
        Item = (ItemInstance *)ItemInventory::GetItem((int)v23, v14);
        if ( Item )
        {
          v17 = *(_DWORD *)(MessageFromQueue + 104);
          v18 = *(_DWORD *)(MessageFromQueue + 100) / 4;
          if ( v18 > 0 )
          {
            for ( i = 0; i != v18; ++i )
            {
              v20 = *(_DWORD *)(v17 + 4 * i);
              ItemInstance::AddPower(Item, v20, -1);
            }
          }
          ItemInventory::CalcLootItemValue(Item, 0, v15);
          ItemObject::DropInventory((ItemObject *)v23, v13, v13, nullptr, v21);
        }
        ItemInventory::~ItemInventory(v23);
      }
    }
    else
    {
      ItemObject::DropLootTable(
        *(ItemObject **)(MessageFromQueue + 84),
        (ItemInventory *)v7,
        (const GameObject *)v8,
        *(const GameObject **)(MessageFromQueue + 96),
        1,
        v22);
    }
  }
  *(_BYTE *)(MessageFromQueue + 60) = 1;
  return 0;
}


// ===== 49ade0 MultiplayerCallback::HandleAttackMessage(void *) =====
int __fastcall MultiplayerCallback::HandleAttackMessage(MultiplayerCallback *this, void *a2)
{
  CMessaging *v2; // r0
  CMessaging *v3; // r0
  int MessageFromQueue; // r5
  CNetPlayerManager *NetPlayerMgr; // r0
  int PlayerByMemberId; // r0
  CNetPlayerManager *v8; // r0
  int v9; // r0
  int CurrentLevel; // r0
  int v11; // r6
  char *v12; // r6
  char *v13; // r0
  bool v14; // zf
  char *v15; // r4
  char *v16[3]; // [sp+0h] [bp-1Ch] BYREF
  char *v17[4]; // [sp+Ch] [bp-10h] BYREF

  v2 = (CMessaging *)CMessaging::Get(this);
  v3 = (CMessaging *)CMessaging::Get(v2);
  MessageFromQueue = CMessaging::GetMessageFromQueue(v3, (CMessage *)"CMsgAttackResult");
  NetPlayerMgr = (CNetPlayerManager *)GetNetPlayerMgr();
  PlayerByMemberId = CNetPlayerManager::GetPlayerByMemberId(NetPlayerMgr, *(_DWORD *)(MessageFromQueue + 12), 0, 0);
  if ( (*(int (__fastcall **)(int))(*(_DWORD *)PlayerByMemberId + 92))(PlayerByMemberId) )
  {
    v8 = (CNetPlayerManager *)GetNetPlayerMgr();
    v9 = CNetPlayerManager::GetPlayerByMemberId(v8, *(_DWORD *)(MessageFromQueue + 12), 0, 0);
    if ( *((_DWORD *)PlayerManager::GetPlayerByInternalID((PlayerManager *)dword_99F76C, *(_DWORD *)(v9 + 376), 0) + 408) )
    {
      CurrentLevel = Application::GetCurrentLevel((Application *)&Singleton<Application>::s_inst);
      if ( CurrentLevel )
      {
        if ( *(_DWORD *)(CurrentLevel + 304) == 38 )
        {
          if ( *(_BYTE *)(CurrentLevel + 324) )
          {
            v11 = *(_DWORD *)(MessageFromQueue + 80);
            if ( v11 == *(_DWORD *)(Application::GetCurrentLevel((Application *)&Singleton<Application>::s_inst) + 60) )
            {
              ObjectManager::GetObjectHandleByNetworkId(
                (ObjectManager *)v17,
                dword_99F764,
                *(__int16 *)(MessageFromQueue + 124));
              v12 = ObjectHandle::operator GameObject *(v17);
              ObjectManager::GetObjectHandleByNetworkId(
                (ObjectManager *)v16,
                dword_99F764,
                *(__int16 *)(MessageFromQueue + 126));
              v13 = ObjectHandle::operator Character *(v16);
              v14 = v13 == nullptr;
              if ( v13 )
                v14 = v12 == nullptr;
              v15 = v13;
              if ( !v14 )
              {
                if ( *(_BYTE *)(MessageFromQueue + 128) )
                  Character::F_ApplyResult(MessageFromQueue + 84, v12, v13, 1);
                else
                  Character::F_ApplyResult(MessageFromQueue + 84, (GameObject *)v12, (int)v13, 1);
                if ( !v15[133] && *((_DWORD *)v15 + 68) == -1 )
                {
                  *((_DWORD *)v15 + 68) = *(_DWORD *)(MessageFromQueue + 12);
                  *((_DWORD *)v15 + 69) = 0;
                }
              }
            }
          }
        }
      }
    }
  }
  *(_BYTE *)(MessageFromQueue + 60) = 1;
  return 0;
}


// ===== 49af74 MultiplayerCallback::HandleQuestsSyncMessage(void *) =====
int __fastcall MultiplayerCallback::HandleQuestsSyncMessage(MultiplayerCallback *this, void *a2)
{
  CMessaging *v2; // r0
  CMessaging *v3; // r0
  int MessageFromQueue; // r4
  COnline *Online; // r0

  v2 = (CMessaging *)CMessaging::Get(this);
  v3 = (CMessaging *)CMessaging::Get(v2);
  MessageFromQueue = CMessaging::GetMessageFromQueue(v3, (CMessage *)"CMsgQuestsSync");
  Online = (COnline *)GetOnline();
  if ( COnline::IsServer(Online) )
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
        "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Multiplayer\\MultiplayerCallbacks.cpp",
        562);
    }
  }
  else
  {
    PlayerManager::HandleQuestSyncMsg(
      (PlayerManager *)dword_99F76C,
      *(char **)(MessageFromQueue + 88),
      *(_DWORD *)(MessageFromQueue + 80));
  }
  *(_BYTE *)(MessageFromQueue + 60) = 1;
  return 0;
}


// ===== 49b054 MultiplayerCallback::HandleInitialMessage(void *) =====
int __fastcall MultiplayerCallback::HandleInitialMessage(MultiplayerCallback *this, void *a2)
{
  CMessaging *v2; // r0
  CMessaging *v3; // r0
  _DWORD *MessageFromQueue; // r0
  int v5; // r8
  int v6; // r7
  int v7; // r6
  _DWORD *v8; // r4
  _DWORD v10[4]; // [sp+4h] [bp-10h] BYREF

  v2 = (CMessaging *)CMessaging::Get(this);
  v3 = (CMessaging *)CMessaging::Get(v2);
  MessageFromQueue = (_DWORD *)CMessaging::GetMessageFromQueue(v3, (CMessage *)"CMsgInitialSetup");
  v5 = MessageFromQueue[20];
  v6 = MessageFromQueue[21];
  v7 = MessageFromQueue[22];
  v8 = MessageFromQueue;
  if ( !PlayerManager::IsLocalPlayerHosting((PlayerManager *)dword_99F76C) )
  {
    v10[0] = v5;
    v10[1] = v6;
    v10[2] = v7;
    PlayerManager::InitialSetup(dword_99F76C, (int)v10);
  }
  *((_BYTE *)v8 + 60) = 1;
  return 0;
}


// ===== 49b0d8 MultiplayerCallback::HandleStartGameMessage(void *) =====
int __fastcall MultiplayerCallback::HandleStartGameMessage(MultiplayerCallback *this, void *a2)
{
  CMessaging *v2; // r0
  CMessaging *v3; // r0
  int MessageFromQueue; // r10
  Level *CurrentLevel; // r0
  Level *v6; // r6
  PlayerManager *v7; // r0
  int v9; // r7
  int v10; // r11
  int v11; // r6
  const char *v12; // r7
  char v13; // r8
  char v14; // r9
  int v15; // r0
  CNetPlayerManager *NetPlayerMgr; // r0
  int v17; // r0
  int v18; // r10
  PlayerSavegame *Instance; // r0
  int LocalPlayer; // r0
  unsigned int v21; // [sp+1Ch] [bp-10h]
  unsigned int v22; // [sp+20h] [bp-Ch]
  int v23; // [sp+24h] [bp-8h]

  v2 = (CMessaging *)CMessaging::Get(this);
  v3 = (CMessaging *)CMessaging::Get(v2);
  MessageFromQueue = CMessaging::GetMessageFromQueue(v3, (CMessage *)"CMsgStartGame");
  CurrentLevel = (Level *)Application::GetCurrentLevel((Application *)&Singleton<Application>::s_inst);
  v6 = CurrentLevel;
  if ( CurrentLevel )
  {
    if ( *((_DWORD *)CurrentLevel + 76) != 38 )
    {
      if ( *(_DWORD *)(MessageFromQueue + 80) == *((_DWORD *)CurrentLevel + 15) )
      {
        *(_BYTE *)(MessageFromQueue + 60) = 1;
      }
      else
      {
        CurrentLevel = (Level *)PlayerManager::GetLocalPlayer((PlayerManager *)dword_99F76C, 0, 0);
        if ( *((_BYTE *)CurrentLevel + 1317) )
        {
          if ( *((_DWORD *)v6 + 76) == 36 )
            ++*((_DWORD *)v6 + 76);
          v7 = (PlayerManager *)dword_99F76C;
          *(_BYTE *)(dword_99F76C + 1737) = 0;
          CurrentLevel = (Level *)PlayerManager::Update(v7);
        }
      }
      if ( *((_DWORD *)v6 + 76) != 38 )
        return 0;
    }
    v9 = *((unsigned __int8 *)v6 + 408);
    if ( !*((_BYTE *)v6 + 408) && *((_DWORD *)v6 + 76) == 38 )
    {
      (*(void (__fastcall **)(_DWORD, int))(**(_DWORD **)(dword_99F780 + 244) + 56))(*(_DWORD *)(dword_99F780 + 244), 1);
      CurrentLevel = (Level *)PlayerManager::GetLocalPlayer((PlayerManager *)dword_99F76C, v9, 1);
      if ( *((_DWORD *)CurrentLevel + 408) )
      {
        LocalPlayer = PlayerManager::GetLocalPlayer((PlayerManager *)dword_99F76C, v9, 1);
        CurrentLevel = (Level *)Character::ReloadSkills(*(Character **)(LocalPlayer + 1632));
      }
    }
    if ( *((_DWORD *)v6 + 76) == 38 )
      CurrentLevel = Level::SG_SaveAllPlayer(v6, 0);
  }
  v10 = *(_DWORD *)(MessageFromQueue + 104);
  v11 = *(_DWORD *)(MessageFromQueue + 80);
  v12 = *(const char **)(MessageFromQueue + 84);
  v13 = *(_BYTE *)(MessageFromQueue + 88);
  v14 = *(_BYTE *)(MessageFromQueue + 89);
  v23 = *(_DWORD *)(MessageFromQueue + 92);
  v22 = *(_DWORD *)(MessageFromQueue + 96);
  v21 = *(_DWORD *)(MessageFromQueue + 100);
  if ( v10 == -1 )
  {
    *(_BYTE *)(MessageFromQueue + 60) = 1;
  }
  else
  {
    v15 = CMatching::Get(CurrentLevel);
    if ( (*(int (__fastcall **)(int))(*(_DWORD *)v15 + 108))(v15) == -1 )
      return 0;
    *(_BYTE *)(MessageFromQueue + 60) = 1;
    NetPlayerMgr = (CNetPlayerManager *)GetNetPlayerMgr();
    CurrentLevel = (Level *)CNetPlayerManager::GetLocalPlayer(NetPlayerMgr, 0);
    if ( v10 != *((_DWORD *)CurrentLevel + 104) )
      return 0;
  }
  if ( v11 < 0 )
  {
    if ( gAssertLevel == 2 )
    {
      dword_0 = 0;
    }
    else if ( gAssertLevel == 1 )
    {
      CurrentLevel = (Level *)fprintf(
                                (FILE *)&_sF + 2,
                                "ASSERT(%s) FAILED: %s:%d\n",
                                "levelID >= 0",
                                "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Multiplayer\\MultiplayerCallbacks.cpp",
                                397);
    }
  }
  *(_DWORD *)(OnlineSingleton<OnlineGameState>::GetInstance(CurrentLevel) + 20) = 300;
  v17 = PlayerManager::GetLocalPlayer((PlayerManager *)dword_99F76C, 0, 0);
  v18 = *(_DWORD *)(v17 + 1636);
  Instance = (PlayerSavegame *)OnlineSingleton<OnlineGameState>::GetInstance(v17);
  if ( *((_DWORD *)Instance + 13) == 4 )
  {
    if ( v18 < 0 || (Instance = (PlayerSavegame *)PlayerSavegame::SG_GetNextFreeSlot(Instance), (int)Instance <= v18) )
      v18 = 0;
  }
  *(_BYTE *)(OnlineSingleton<OnlineGameState>::GetInstance(Instance) + 76) = 0;
  Application::LoadLevel(
    (Application *)&Singleton<Application>::s_inst,
    *(char **)(Arrays::LevelList::members + 72 * v11 + 32),
    v12,
    v18,
    v13,
    v14,
    v23,
    1,
    v22,
    v21);
  return 0;
}


// ===== 49b3c8 MultiplayerCallback::roomLobbyUpdate(void *) =====
int __fastcall MultiplayerCallback::roomLobbyUpdate(MultiplayerCallback *this, void *a2)
{
  int v2; // r0
  int v3; // r0
  int AttributeInt; // r4
  unsigned __int8 *Instance; // r0
  int v7; // r4
  MenuManager *v8; // r0
  int MenuByName; // r5
  gameswf::character *v10; // r6
  MenuManager *v11; // r0
  MenuManager *v12; // r0

  v2 = CMatching::Get(this);
  v3 = (*(int (__fastcall **)(int))(*(_DWORD *)v2 + 164))(v2);
  AttributeInt = CRoomAttributes::GetAttributeInt(v3, 7);
  if ( *(_BYTE *)(GetOnline() + 5) )
  {
    if ( !AttributeInt )
    {
      Instance = (unsigned __int8 *)OnlineSingleton<OnlineGameState>::GetInstance();
      v7 = Instance[40];
      if ( !Instance[40] )
      {
        v8 = (MenuManager *)MenuManager::GetInstance((MenuManager *)Instance);
        MenuByName = MenuManager::GetMenuByName(v8, "menu_MultiplayerJoin");
        gameswf::weak_ptr<gameswf::character>::check_proxy(MenuByName + 72);
        v10 = *(gameswf::character **)(MenuByName + 76);
        v12 = (MenuManager *)MenuManager::GetInstance(v11);
        if ( MenuManager::GetMenuByName(v12, (const char *)(MenuByName + 8)) )
          RenderFX::InvokeASCallback(
            *(RenderFX **)(MenuByName + 4),
            v10,
            "RefreshServers",
            (const gameswf::as_value *)v7,
            v7);
      }
    }
  }
  return 100;
}


// ===== 49b47c MultiplayerCallback::lobbyUpdate(void *) =====
int __fastcall MultiplayerCallback::lobbyUpdate(MultiplayerCallback *this, void *a2)
{
  int v2; // r0
  int v3; // r0
  int AttributeInt; // r5
  unsigned __int8 *Instance; // r0
  int v7; // r5
  int v8; // r0
  DH2_PlayerInfoCharacterPrefix *LocalPlayer; // r0
  int v10; // r4
  MenuManager *v11; // r0
  int MenuByName; // r0
  int v13; // r5
  gameswf::character *v14; // r6
  MenuManager *v15; // r0
  MenuManager *v16; // r0

  v2 = CMatching::Get(this);
  v3 = (*(int (__fastcall **)(int))(*(_DWORD *)v2 + 164))(v2);
  AttributeInt = CRoomAttributes::GetAttributeInt(v3, 7);
  if ( *(_BYTE *)(GetOnline() + 5) )
  {
    if ( !AttributeInt )
    {
      Instance = (unsigned __int8 *)OnlineSingleton<OnlineGameState>::GetInstance();
      v7 = Instance[40];
      if ( !Instance[40] )
      {
        v8 = CMatching::Get((CMatching *)Instance);
        if ( (*(int (__fastcall **)(int))(*(_DWORD *)v8 + 100))(v8) )
        {
          LocalPlayer = PlayerManager::GetLocalPlayer((PlayerManager *)dword_99F76C, v7, v7);
          v10 = LocalPlayer->unknown_000[1253];
          if ( !LocalPlayer->unknown_000[1253] )
          {
            v11 = (MenuManager *)MenuManager::GetInstance((MenuManager *)LocalPlayer);
            MenuByName = MenuManager::GetMenuByName(v11, "menu_MultiplayerLobby");
            v13 = MenuByName;
            if ( MenuByName )
            {
              gameswf::weak_ptr<gameswf::character>::check_proxy(MenuByName + 72);
              v14 = *(gameswf::character **)(v13 + 76);
              v16 = (MenuManager *)MenuManager::GetInstance(v15);
              if ( MenuManager::GetMenuByName(v16, (const char *)(v13 + 8)) )
                RenderFX::InvokeASCallback(
                  *(RenderFX **)(v13 + 4),
                  v14,
                  "updatePlayerList",
                  (const gameswf::as_value *)v10,
                  v10);
            }
          }
        }
      }
    }
  }
  return 200;
}


// ===== 49b580 MultiplayerCallback::searchRoomPushNotif(void *) =====
int __fastcall MultiplayerCallback::searchRoomPushNotif(MultiplayerCallback *this, void *a2)
{
  int VersionNumber; // r0
  CMatching *v4; // r0
  int v5; // r4
  MultiplayerCallback *Instance; // r0
  _BYTE v7[36]; // [sp+0h] [bp-4Ch] BYREF
  _BYTE v8[40]; // [sp+24h] [bp-28h] BYREF

  if ( !*(_BYTE *)(OnlineSingleton<OnlineGameState>::GetInstance() + 36) )
    return 102;
  *(_BYTE *)(OnlineSingleton<OnlineGameState>::GetInstance() + 37) = 0;
  CRoomSearchFilter::CRoomSearchFilter((CRoomSearchFilter *)v8);
  CRoomSearchFilter::SetSearchAttributeInt(v8, 1, 0, -17978438);
  VersionNumber = Application::GetVersionNumber((Application *)&Singleton<Application>::s_inst);
  v4 = (CMatching *)CRoomSearchFilter::SetSearchAttributeInt(v8, 2, 0, VersionNumber);
  v5 = CMatching::Get(v4);
  CRoomSearchFilter::CRoomSearchFilter((CRoomSearchFilter *)v7, (const CRoomSearchFilter *)v8);
  CMatching::SearchRoom(v5, v7, 1, 0);
  CRoomSearchFilter::~CRoomSearchFilter((CRoomSearchFilter *)v7);
  Instance = (MultiplayerCallback *)OnlineSingleton<OnlineGameState>::GetInstance();
  if ( *((_DWORD *)Instance + 13) == 3 )
    MultiplayerCallback::LoadGLLiveFriends(Instance);
  CRoomSearchFilter::~CRoomSearchFilter((CRoomSearchFilter *)v8);
  return 100;
}


// ===== 49b660 MultiplayerCallback::searchRoom(void *) =====
int __fastcall MultiplayerCallback::searchRoom(MultiplayerCallback *this, void *a2)
{
  unsigned int v3; // r1
  int v4; // r9
  int v5; // r11
  RenderFX *Root; // r9
  RenderFX *v7; // r0
  gameswf::root *v8; // r0
  gameswf::character *root_movie; // r0
  int v10; // r9
  int VersionNumber; // r0
  CMatching *v12; // r0
  int v13; // r8
  MultiplayerCallback *Instance; // r0
  _BYTE v15[36]; // [sp+Ch] [bp-1E8h] BYREF
  _BYTE v16[36]; // [sp+30h] [bp-1C4h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v17[17]; // [sp+54h] [bp-1A0h] BYREF

  if ( !*(_BYTE *)(OnlineSingleton<OnlineGameState>::GetInstance() + 36) )
    return 102;
  *(_BYTE *)(OnlineSingleton<OnlineGameState>::GetInstance() + 37) = 0;
  v3 = *(_DWORD *)PlayerManager::GetLocalPlayer((PlayerManager *)dword_99F76C, 0, 0)[1].unknown_000;
  if ( v3 == -1 )
    v3 = *(_DWORD *)(dword_99F778 + 8);
  PlayerSavegame::PlayerSavegame((PlayerSavegame *)v17, v3, 17, 0);
  v4 = PlayerSavegame::m_difficultyLevel;
  v5 = *(_DWORD *)&PlayerSavegame::SG_GetQuestSG((PlayerSavegame *)v17)[4 * v4 + 68];
  Root = (RenderFX *)MenuManager::GetRoot((MenuManager *)dword_99F780);
  v7 = (RenderFX *)MenuManager::GetRoot((MenuManager *)dword_99F780);
  v8 = (gameswf::root *)RenderFX::GetRoot(v7);
  root_movie = (gameswf::character *)gameswf::root::get_root_movie(v8);
  RenderFX::InvokeASCallback(Root, root_movie, "GetCurrentDifficulty", nullptr, 0);
  v10 = *(_DWORD *)(dword_99F778 + 12);
  CRoomSearchFilter::CRoomSearchFilter((CRoomSearchFilter *)v16);
  if ( *(_DWORD *)(OnlineSingleton<OnlineGameState>::GetInstance() + 52) != 2 )
  {
    CRoomSearchFilter::SetSearchAttributeInt(v16, 1, 0, -17978438);
    VersionNumber = Application::GetVersionNumber((Application *)&Singleton<Application>::s_inst);
    CRoomSearchFilter::SetSearchAttributeInt(v16, 2, 0, VersionNumber);
  }
  CRoomSearchFilter::SetSearchAttributeInt(v16, 4, 0, v10);
  v12 = (CMatching *)CRoomSearchFilter::SetSearchAttributeInt(v16, 5, 3, v5);
  v13 = CMatching::Get(v12);
  CRoomSearchFilter::CRoomSearchFilter((CRoomSearchFilter *)v15, (const CRoomSearchFilter *)v16);
  CMatching::SearchRoom(v13, v15, 1, 0);
  CRoomSearchFilter::~CRoomSearchFilter((CRoomSearchFilter *)v15);
  Instance = (MultiplayerCallback *)OnlineSingleton<OnlineGameState>::GetInstance();
  if ( *((_DWORD *)Instance + 13) == 3 )
    MultiplayerCallback::LoadGLLiveFriends(Instance);
  CRoomSearchFilter::~CRoomSearchFilter((CRoomSearchFilter *)v16);
  PlayerSavegame::~PlayerSavegame(v17);
  return 100;
}


// ===== 49b858 MenuMessageManager<DialogMsg,1>::Invoke(char const*,int) [clone] =====
int __fastcall MenuMessageManager<DialogMsg,1>::Invoke(MenuManager *a1)
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
    gameswf::weak_ptr<gameswf::character>::check_proxy((int)&dword_9A5470);
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
    return gameswf::as_value::drop_refs((gameswf::as_value *)v6);
  }
  return result;
}


// ===== 49b924 std::__destroy_range<std::reverse_iterator<tRoomInfo *>,tRoomInfo>(std::reverse_iterator<tRoomInfo *>,std::reverse_iterator<tRoomInfo *>,tRoomInfo *) [clone] =====
void __fastcall std::__destroy_range<std::reverse_iterator<tRoomInfo *>,tRoomInfo>(_DWORD *a1, _DWORD *a2)
{
  _DWORD *v2; // r4
  _DWORD *v3; // r5
  _DWORD *v4; // r3
  size_t v5; // r1

  v2 = (_DWORD *)*a1;
  v3 = (_DWORD *)*a2;
  if ( *a1 != *a2 )
  {
    while ( 1 )
    {
      v2 -= 242;
      CRoomAttributes::~CRoomAttributes((CRoomAttributes *)(v2 + 10));
      v4 = (_DWORD *)v2[7];
      if ( v4 == v2 + 2 || !v4 )
        goto LABEL_4;
      v5 = v2[2] - (_DWORD)v4;
      if ( v5 <= 0x80 )
      {
        __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v4, v5);
LABEL_4:
        if ( v3 == v2 )
          return;
      }
      else
      {
        CustomFree(v4);
        if ( v3 == v2 )
          return;
      }
    }
  }
}


// ===== 49b990 MultiplayerCallback::HandleMenuBackButton(void *) =====
int __fastcall MultiplayerCallback::HandleMenuBackButton(MultiplayerCallback *this, void *a2)
{
  const char *v2; // r4
  CMatching *Instance; // r0
  CMatching *v4; // r0
  CSignIn *v5; // r0
  CMatching *v7; // r0
  int v8; // r0
  COnline *v9; // r0
  unsigned __int8 *v10; // r0
  int v11; // r6
  int v12; // r0
  CMatching *v13; // r0
  CMatching *v14; // r0
  int v15; // r0
  COnline *v16; // r0
  int v17; // r0
  CMatching *v18; // r0
  CMatching *IsServer; // r0
  int v20; // r0
  CMatching *v21; // r0
  int v22; // r0
  int v23; // r0
  CMatching *v24; // r0
  int v25; // r0
  COnline *Online; // r0
  int v27; // r0
  int v28; // r0
  int v29; // r0
  char **v30; // r0

  v2 = *(const char **)(OnlineSingleton<OnlineGameState>::GetInstance() + 48);
  *(_DWORD *)(OnlineSingleton<OnlineGameState>::GetInstance() + 56) = v2;
  *(_DWORD *)(OnlineSingleton<OnlineGameState>::GetInstance() + 48) = 0;
  if ( v2 )
  {
    if ( !LC_API_STRCMP_0(v2, "menu_Multiplayer_Game_Type")
      || !LC_API_STRCMP_0(v2, "menu_Multiplayer")
      || !LC_API_STRCMP_0(v2, "menu_Multiplayer2")
      || !LC_API_STRCMP_0(v2, "menu_MultiLogin")
      || !LC_API_STRCMP_0(v2, "menu_GameCenter") )
    {
      Instance = (CMatching *)OnlineSingleton<OnlineGameState>::GetInstance();
      if ( *((_DWORD *)Instance + 13) == 1 )
      {
        CMatching::Get(Instance);
        v24 = (CMatching *)CMatching::SetMatchingProvider(0);
        v25 = CMatching::Get(v24);
        (*(void (__fastcall **)(int))(*(_DWORD *)v25 + 44))(v25);
        Online = (COnline *)GetOnline();
        COnline::SetIsOnlineGame(Online, 0);
      }
      v4 = (CMatching *)OnlineSingleton<OnlineGameState>::GetInstance();
      if ( *((_DWORD *)v4 + 13) == 2
        || (v4 = (CMatching *)OnlineSingleton<OnlineGameState>::GetInstance(), *((_DWORD *)v4 + 13) == 4) )
      {
        CMatching::Get(v4);
        v7 = (CMatching *)CMatching::SetMatchingProvider(0);
        v8 = CMatching::Get(v7);
        (*(void (__fastcall **)(int))(*(_DWORD *)v8 + 44))(v8);
        v9 = (COnline *)GetOnline();
        COnline::SetIsOnlineGame(v9, 0);
      }
      else
      {
        v5 = (CSignIn *)OnlineSingleton<OnlineGameState>::GetInstance();
        if ( *((_DWORD *)v5 + 13) == 3 )
        {
          v28 = CSignIn::Get(v5);
          (*(void (__fastcall **)(int))(*(_DWORD *)v28 + 24))(v28);
          if ( !*(_BYTE *)(OnlineSingleton<OnlineGameState>::GetInstance() + 38) )
          {
            *(_BYTE *)(OnlineSingleton<OnlineGameState>::GetInstance() + 38) = 0;
            *(_BYTE *)(OnlineSingleton<OnlineGameState>::GetInstance() + 39) = 0;
          }
        }
      }
    }
    if ( !LC_API_STRCMP_0(v2, "menu_MultiplayerLobby") )
    {
      v17 = OnlineSingleton<OnlineGameState>::GetInstance();
      if ( (unsigned int)(*(_DWORD *)(v17 + 52) - 3) > 1
        || (v17 = OnlineSingleton<OnlineGameState>::GetInstance(), !*(_BYTE *)(v17 + 40)) )
      {
        v18 = (CMatching *)CMatching::Get((CMatching *)v17);
        IsServer = (CMatching *)CMatching::IsServer(v18);
        if ( IsServer )
        {
          v20 = CMatching::Get(IsServer);
          v21 = (CMatching *)(*(int (__fastcall **)(int))(*(_DWORD *)v20 + 60))(v20);
          v22 = CMatching::Get(v21);
          (*(void (__fastcall **)(int))(*(_DWORD *)v22 + 72))(v22);
          *(_DWORD *)(OnlineSingleton<OnlineGameState>::GetInstance() + 20) = 100;
          if ( *(_DWORD *)(OnlineSingleton<OnlineGameState>::GetInstance() + 52) == 3 )
            *(_BYTE *)(OnlineSingleton<OnlineGameState>::GetInstance() + 77) = 0;
        }
        else
        {
          v29 = CMatching::Get(nullptr);
          (*(void (__fastcall **)(int))(*(_DWORD *)v29 + 60))(v29);
          if ( *(_DWORD *)(OnlineSingleton<OnlineGameState>::GetInstance() + 52) == 2 )
            *(_DWORD *)(OnlineSingleton<OnlineGameState>::GetInstance() + 20) = 100;
          else
            *(_DWORD *)(OnlineSingleton<OnlineGameState>::GetInstance() + 20) = 102;
        }
      }
    }
    if ( !LC_API_STRCMP_0(v2, "menu_MultiLogin") )
    {
      CMatching::Get(nullptr);
      v14 = (CMatching *)CMatching::SetMatchingProvider(0);
      v15 = CMatching::Get(v14);
      (*(void (__fastcall **)(int))(*(_DWORD *)v15 + 44))(v15);
      v16 = (COnline *)GetOnline();
      COnline::SetIsOnlineGame(v16, 0);
      *(_BYTE *)(OnlineSingleton<OnlineGameState>::GetInstance() + 38) = 0;
      *(_BYTE *)(OnlineSingleton<OnlineGameState>::GetInstance() + 39) = 0;
    }
    if ( !LC_API_STRCMP_0(v2, "menu_VerificationLoading") )
    {
      v10 = (unsigned __int8 *)CSignIn::Get(nullptr);
      v11 = v10[17];
      if ( !v10[17] )
      {
        v23 = CSignIn::Get((CSignIn *)v10);
        (*(void (__fastcall **)(int))(*(_DWORD *)v23 + 24))(v23);
        v10 = (unsigned __int8 *)Application::GoToMainMenu((int)&Singleton<Application>::s_inst, v11);
      }
      v12 = CMatching::Get((CMatching *)v10);
      v13 = (CMatching *)(*(int (__fastcall **)(int))(*(_DWORD *)v12 + 100))(v12);
      if ( v13 )
      {
        v27 = CMatching::Get(v13);
        (*(void (__fastcall **)(int))(*(_DWORD *)v27 + 60))(v27);
      }
      if ( *(_DWORD *)(OnlineSingleton<OnlineGameState>::GetInstance() + 52) == 4
        && *(_BYTE *)(GCSingleton<GameCenter>::GetInstance() + 5)
        && *(_BYTE *)(GCSingleton<GameCenter>::GetInstance() + 7) )
      {
        v30 = (char **)GCSingleton<GameCenter>::GetInstance();
        GameCenter::ResetPlayerList(v30);
      }
      if ( *(_BYTE *)(GCSingleton<GameCenter>::GetInstance() + 17) )
        Application::GoToMainMenu((int)&Singleton<Application>::s_inst, 0);
    }
    byte_99F81A = 0;
    byte_99F83A = 0;
  }
  return 0;
}


// ===== 49bd54 std::allocator<OnlineStatusMsg>::allocate(uint,void const*) [clone] =====
void *std::allocator<OnlineStatusMsg>::allocate()
{
  size_t v1; // [sp+4h] [bp-8h] BYREF

  v1 = 112;
  return __ZNSt12__node_alloc11_M_allocateERj_veneer(&v1);
}


// ===== 49bd74 `global constructor keyed to'.._.._sources_Game_Multiplayer_MultiplayerCallbacks.cpp =====
int __fastcall `global constructor keyed to'.._.._sources_Game_Multiplayer_MultiplayerCallbacks.cpp(CMessage *a1)
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

  dword_9A63A0 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9A639C = 1056964608;
  messageCreationMap = CMessage::InitializeMessageRegistration(a1);
  byte_9A63A5 = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgStartGame",
                  (const char *)GetNewInstance<CMsgStartGame>,
                  v1);
  byte_9A63A6 = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgControllerAction",
                  (const char *)GetNewInstance<CMsgControllerAction>,
                  v2);
  byte_9A63A7 = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgAttackResult",
                  (const char *)GetNewInstance<CMsgAttackResult>,
                  v3);
  byte_9A63A8 = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgRaisedEvent",
                  (const char *)GetNewInstance<CMsgRaisedEvent>,
                  v4);
  byte_9A63A9 = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgMenuReady",
                  (const char *)GetNewInstance<CMsgMenuReady>,
                  v5);
  byte_9A63AA = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgScriptCmd",
                  (const char *)GetNewInstance<CMsgScriptCmd>,
                  v6);
  byte_9A63AB = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgInitialSetup",
                  (const char *)GetNewInstance<CMsgInitialSetup>,
                  v7);
  byte_9A63AC = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgQuestsSync",
                  (const char *)GetNewInstance<CMsgQuestsSync>,
                  v8);
  byte_9A63AD = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgDropLoot",
                  (const char *)GetNewInstance<CMsgDropLoot>,
                  v9);
  byte_9A63AE = CMessage::RegisterMessageType((CMessage *)"CMsgIsHost", (const char *)GetNewInstance<CMsgIsHost>, v10);
  byte_9A63AF = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgSpawnObject",
                  (const char *)GetNewInstance<CMsgSpawnObject>,
                  v11);
  byte_9A63B0 = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgGlobalDeath",
                  (const char *)GetNewInstance<CMsgGlobalDeath>,
                  v12);
  v14 = (CMessage *)CMessage::RegisterMessageType(
                      (CMessage *)"CMsgAskResendAttributes",
                      (const char *)GetNewInstance<CMsgAskResendAttributes>,
                      v13);
  byte_9A63B1 = (char)v14;
  result = CMessage::TerminateMessageRegistration(v14);
  byte_9A63B2 = result;
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
    dword_99FB34 = 0;
    dword_99FB38 = 0;
    dword_99FB3C = 0;
    dword_99FB40 = 0;
    dword_99FB44 = 0;
    dword_99FB48 = 0;
    dword_99FB4C = 0;
    dword_99FB50 = 0;
    dword_99FB54 = 0;
    dword_99FB58 = (int)byte_8;
    Singleton<MenuMessageManager<OnlineStatusMsg,1>>::s_inst = (int)off_95B160;
    v23 = std::allocator<OnlineStatusMsg *>::allocate((int)&dword_99FB54, (unsigned int)byte_8);
    dword_99FB54 = (int)v23;
    v24 = (unsigned int)(dword_99FB58 - 1) >> 1;
    v23[v24] = std::allocator<OnlineStatusMsg>::allocate();
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


// ===== 49c5e4 MultiplayerCallback::HandleScriptCmd(void *) =====
int __fastcall MultiplayerCallback::HandleScriptCmd(MultiplayerCallback *this, void *a2)
{
  CMessaging *v2; // r0
  CMessaging *v3; // r0
  CMatching *MessageFromQueue; // r0
  int v5; // r5
  CMatching *v6; // r4
  int v7; // r0
  int v8; // r5
  int v9; // r7
  int result; // r0
  COnline *Online; // r0

  v2 = (CMessaging *)CMessaging::Get(this);
  v3 = (CMessaging *)CMessaging::Get(v2);
  MessageFromQueue = (CMatching *)CMessaging::GetMessageFromQueue(v3, (CMessage *)"CMsgScriptCmd");
  v5 = *((_DWORD *)MessageFromQueue + 3);
  v6 = MessageFromQueue;
  v7 = CMatching::Get(MessageFromQueue);
  if ( (*(int (__fastcall **)(int))(*(_DWORD *)v7 + 108))(v7) == v5 )
  {
LABEL_9:
    *((_BYTE *)v6 + 60) = 1;
    return 0;
  }
  else
  {
    v8 = *((_DWORD *)v6 + 21);
    v9 = *((_DWORD *)v6 + 22);
    switch ( *((_DWORD *)v6 + 20) )
    {
      case 0:
        ScriptManager::StartScript(
          (ScriptManager *)&ScriptManager::s_inst,
          *((_DWORD *)v6 + 21),
          *((_DWORD *)v6 + 22),
          1);
        *((_BYTE *)v6 + 60) = 1;
        result = 0;
        break;
      case 1:
        ScriptManager::SkipScript((ScriptManager *)&ScriptManager::s_inst, *((_DWORD *)v6 + 21), 1);
        *((_BYTE *)v6 + 60) = 1;
        result = 0;
        break;
      case 2:
        ScriptManager::StopScript((int)&ScriptManager::s_inst, *((_DWORD *)v6 + 21), 1);
        *((_BYTE *)v6 + 60) = 1;
        result = 0;
        break;
      case 3:
        if ( !PlayerManager::IsLocalPlayerHosting((PlayerManager *)dword_99F76C) && dword_99FB9C != dword_99FB8C )
        {
          std::deque<DialogMsg>::pop_front((int)&dword_99FB8C);
          if ( DialogMsg::s_SkipFuncName )
            MenuMessageManager<DialogMsg,1>::Invoke((MenuManager *)DialogMsg::s_SkipFuncName);
          if ( dword_99FB9C != dword_99FB8C )
            MenuMessageManager<DialogMsg,1>::Invoke((MenuManager *)DialogMsg::s_StartFuncName[0]);
        }
        goto LABEL_9;
      case 4:
        Online = (COnline *)GetOnline();
        if ( !COnline::IsServer(Online) && *(_BYTE *)(dword_99F76C + 1818) )
        {
          ScriptManager::StartScript((ScriptManager *)&ScriptManager::s_inst, v8, v9, 1);
          ScriptManager::SkipScript((ScriptManager *)&ScriptManager::s_inst, v8, 1);
        }
        goto LABEL_9;
      default:
        goto LABEL_9;
    }
  }
  return result;
}


// ===== 49c7b4 MultiplayerCallback::joinRoom(void *) =====
int __fastcall MultiplayerCallback::joinRoom(MultiplayerCallback *this, void *a2)
{
  CMatching *Instance; // r0
  int v4; // r5
  int v5; // r0
  CMatching *v6; // r0
  CMatching *v7; // r0
  int v8; // r0
  int *v9; // r0
  CMatching *v10; // r0
  int v11; // r0
  int v12; // r0
  int v13[3]; // [sp+0h] [bp-18h] BYREF
  int v14; // [sp+Ch] [bp-Ch] BYREF
  int v15; // [sp+10h] [bp-8h]
  int v16; // [sp+14h] [bp-4h]

  if ( !*(_BYTE *)(OnlineSingleton<OnlineGameState>::GetInstance() + 36) )
    return 103;
  Instance = (CMatching *)OnlineSingleton<OnlineGameState>::GetInstance();
  v4 = *((_DWORD *)Instance + 12);
  v5 = CMatching::Get(Instance);
  v6 = (CMatching *)(*(int (__fastcall **)(int))(*(_DWORD *)v5 + 100))(v5);
  if ( v6 )
  {
    v11 = CMatching::Get(v6);
    (*(void (__fastcall **)(int))(*(_DWORD *)v11 + 60))(v11);
    v16 = 0;
    v14 = 0;
    v15 = 0;
    v7 = (CMatching *)OnlineSingleton<OnlineGameState>::GetInstance();
    if ( *((_DWORD *)v7 + 13) != 2 )
      goto LABEL_5;
LABEL_8:
    v12 = CMatching::Get(v7);
    (*(void (__fastcall **)(int *, int))(*(_DWORD *)v12 + 144))(v13, v12);
    std::vector<tRoomInfo>::operator=(&v14, v13);
    v9 = std::vector<tRoomInfo>::~vector(v13);
    goto LABEL_6;
  }
  v16 = 0;
  v14 = 0;
  v15 = 0;
  v7 = (CMatching *)OnlineSingleton<OnlineGameState>::GetInstance();
  if ( *((_DWORD *)v7 + 13) == 2 )
    goto LABEL_8;
LABEL_5:
  v8 = OnlineSingleton<OnlineGameState>::GetInstance();
  v9 = std::vector<tRoomInfo>::operator=(&v14, (int *)(v8 + 80));
LABEL_6:
  v10 = (CMatching *)CMatching::Get((CMatching *)v9);
  CMatching::JoinRoom(v10, *(_QWORD *)(v14 + 968 * v4));
  std::vector<tRoomInfo>::~vector(&v14);
  return 200;
}


// ===== 49c8c0 MultiplayerCallback::createRoom(void *) =====
int __fastcall MultiplayerCallback::createRoom(MultiplayerCallback *this, void *a2)
{
  unsigned int v3; // r1
  RenderFX *Root; // r10
  RenderFX *v5; // r0
  gameswf::root *v6; // r0
  gameswf::character *root_movie; // r0
  int v8; // r11
  CSignIn *Instance; // r0
  char *v10; // r10
  size_t v11; // r0
  std::string *v12; // r0
  _BYTE *v13; // r2
  int RealTime; // r10
  int v15; // r8
  int VersionNumber; // r0
  CMatching *v17; // r0
  int v18; // r10
  int v19; // r0
  MultiplayerCallback *v20; // r0
  DebugSwitches *Switch; // [sp+8h] [bp-99Ch]
  int v22; // [sp+14h] [bp-990h]
  int CurrentPrimaryQuest; // [sp+18h] [bp-98Ch]
  int v24; // [sp+1Ch] [bp-988h]
  _BYTE v25[920]; // [sp+20h] [bp-984h] BYREF
  _BYTE v26[8]; // [sp+3B8h] [bp-5ECh] BYREF
  std::priv::_String_base<char,std::allocator<char> > v27; // [sp+75Ch] [bp-248h] BYREF
  char *v28; // [sp+788h] [bp-21Ch]
  int v29; // [sp+798h] [bp-20Ch]
  _DWORD v30[78]; // [sp+7B8h] [bp-1ECh]
  char v31[60]; // [sp+8F4h] [bp-B0h] BYREF
  _DWORD v32[8]; // [sp+934h] [bp-70h] BYREF
  std::string v33; // [sp+954h] [bp-50h] BYREF
  std::string v34; // [sp+96Ch] [bp-38h] BYREF
  _BYTE v35[32]; // [sp+984h] [bp-20h] BYREF

  if ( !*(_BYTE *)(OnlineSingleton<OnlineGameState>::GetInstance() + 36) )
    return 101;
  CRoomAttributes::CRoomAttributes((CRoomAttributes *)v26);
  v3 = *(_DWORD *)PlayerManager::GetLocalPlayer((PlayerManager *)dword_99F76C, 0, 0)[1].unknown_000;
  if ( v3 == -1 )
    v3 = *(_DWORD *)(dword_99F778 + 8);
  PlayerSavegame::PlayerSavegame((PlayerSavegame *)&v27, v3, 1, 0);
  std::string::string((std::string *)v35, "");
  Root = (RenderFX *)MenuManager::GetRoot((MenuManager *)dword_99F780);
  v5 = (RenderFX *)MenuManager::GetRoot((MenuManager *)dword_99F780);
  v6 = (gameswf::root *)RenderFX::GetRoot(v5);
  root_movie = (gameswf::character *)gameswf::root::get_root_movie(v6);
  RenderFX::InvokeASCallback(Root, root_movie, "GetCurrentDifficulty", nullptr, 0);
  v8 = *(_DWORD *)(dword_99F778 + 12);
  if ( v8 <= v29 )
    PlayerSavegame::m_difficultyLevel = *(_DWORD *)(dword_99F778 + 12);
  Instance = (CSignIn *)OnlineSingleton<OnlineGameState>::GetInstance();
  if ( *((_DWORD *)Instance + 13) == 3 )
    v10 = *(char **)(CSignIn::Get(Instance) + 4);
  else
    v10 = v28;
  v11 = LC_API_STRLEN_0(v10);
  v12 = std::string::_M_assign((std::string *const)v35, v10, &v10[v11]);
  v13 = &v35[4 * PlayerSavegame::m_difficultyLevel + 28];
  RealTime = *((_DWORD *)v13 - 122);
  v24 = *((_DWORD *)v13 - 125);
  if ( !RealTime
    || (DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst),
        std::string::string(&v34, "DontUsePlayerSeed"),
        Switch = (DebugSwitches *)DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v34),
        std::string::~string(&v34),
        Switch) )
  {
    RealTime = glitch::os::Timer::getRealTime((glitch::os::Timer *)v12);
    v30[PlayerSavegame::m_difficultyLevel] = RealTime;
  }
  sprintf(v31, "%d %d", RealTime, RealTime);
  std::string::string(&v33, v31);
  PlayerSavegame::SG_Load((PlayerSavegame *)&v27, 16);
  CurrentPrimaryQuest = PlayerSavegame::SG_GetCurrentPrimaryQuest(
                          (PlayerSavegame *)&v27,
                          PlayerSavegame::m_difficultyLevel);
  v15 = PlayerSavegame::m_difficultyLevel;
  v22 = *(_DWORD *)&PlayerSavegame::SG_GetQuestSG((PlayerSavegame *)&v27)[4 * v15 + 68];
  memset(v32, 0, sizeof(v32));
  LC_API_STRCPY_0((char *)v32, *(const char **)&v35[20]);
  if ( *(_DWORD *)(OnlineSingleton<OnlineGameState>::GetInstance() + 52) == 2 )
  {
    CRoomAttributes::SetAttributeInt(v26, 5, v22);
    CRoomAttributes::SetAttributeBin(v26, 3, v32, 32);
    CRoomAttributes::SetAttributeInt(v26, 6, CurrentPrimaryQuest);
    v17 = (CMatching *)CRoomAttributes::SetAttributeInt(v26, 4, v8);
  }
  else
  {
    CRoomAttributes::SetAttributeInt(v26, 1, -17978438);
    VersionNumber = Application::GetVersionNumber((Application *)&Singleton<Application>::s_inst);
    CRoomAttributes::SetAttributeInt(v26, 2, VersionNumber);
    CRoomAttributes::SetAttributeInt(v26, 3, v24);
    CRoomAttributes::SetAttributeInt(v26, 4, v8);
    CRoomAttributes::SetAttributeInt(v26, 5, v22);
    CRoomAttributes::SetAttributeInt(v26, 6, CurrentPrimaryQuest);
    CRoomAttributes::SetAttributeInt(v26, 7, 0);
    CRoomAttributes::SetAttributeBin(v26, 3, v32, 32);
    v17 = (CMatching *)CRoomAttributes::SetAttributeBin(
                         v26,
                         4,
                         v33._M_start_of_storage._M_data,
                         v33._M_finish - v33._M_start_of_storage._M_data);
  }
  v18 = CMatching::Get(v17);
  CRoomAttributes::CRoomAttributes((CRoomAttributes *)v25, (const CRoomAttributes *)v26);
  CMatching::CreateJoinRoom(v18, 1, v25);
  CRoomAttributes::~CRoomAttributes((CRoomAttributes *)v25);
  *(_BYTE *)(OnlineSingleton<OnlineGameState>::GetInstance() + 37) = 1;
  if ( *(_DWORD *)(OnlineSingleton<OnlineGameState>::GetInstance() + 52) == 3 )
  {
    v19 = OnlineSingleton<OnlineGameState>::GetInstance();
    gettimeofday((struct timeval *)(v19 + 68), nullptr);
    v20 = (MultiplayerCallback *)OnlineSingleton<OnlineGameState>::GetInstance();
    *((_BYTE *)v20 + 77) = 1;
    MultiplayerCallback::LoadGLLiveFriends(v20);
  }
  if ( (std::string *)v33._M_start_of_storage._M_data != &v33 && v33._M_start_of_storage._M_data )
  {
    if ( (unsigned int)(v33._M_buffers._M_end_of_storage - v33._M_start_of_storage._M_data) > 0x80 )
      CustomFree(v33._M_start_of_storage._M_data);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(
        v33._M_start_of_storage._M_data,
        v33._M_buffers._M_end_of_storage - v33._M_start_of_storage._M_data);
  }
  if ( *(_BYTE **)&v35[20] != v35 && *(_DWORD *)&v35[20] )
  {
    if ( (unsigned int)(*(_DWORD *)v35 - *(_DWORD *)&v35[20]) > 0x80 )
      CustomFree(*(void **)&v35[20]);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(*(void **)&v35[20], *(_DWORD *)v35 - *(_DWORD *)&v35[20]);
  }
  PlayerSavegame::~PlayerSavegame(&v27);
  CRoomAttributes::~CRoomAttributes((CRoomAttributes *)v26);
  return 100;
}


// ===== 49cd94 MultiplayerCallback::HandlePlayerJoined(void *) =====
int __fastcall MultiplayerCallback::HandlePlayerJoined(MultiplayerCallback *this, void *a2)
{
  _DWORD *v2; // r5
  int NetPlayerMgr; // r0
  CNetPlayerManager *v4; // r0
  int Player; // r8
  int v6; // r9
  COnline *Online; // r0
  int v8; // r0
  int v10; // r5
  _DWORD *ERj_veneer; // r0
  _DWORD *v12; // r3
  char *HostingPlayer; // r0
  int v14; // r11
  CMessaging *CurrentLevel; // r0
  int v16; // r5
  CMessaging *v17; // r10
  bool v18; // r2
  int Message; // r0
  int Constant; // r0
  MenuManager *Instance; // r0
  gameswf::character *Char; // r0
  int v23; // [sp+0h] [bp-254h]
  char *v24; // [sp+4h] [bp-250h]
  char *v25; // [sp+8h] [bp-24Ch]
  int v26; // [sp+Ch] [bp-248h]
  StringManager *v27; // [sp+Ch] [bp-248h]
  char *v28; // [sp+Ch] [bp-248h]
  int v29; // [sp+10h] [bp-244h]
  MenuFX *HUDRoot; // [sp+14h] [bp-240h]
  const char *String; // [sp+1Ch] [bp-238h]
  const char *v32; // [sp+1Ch] [bp-238h]
  _DWORD v33[4]; // [sp+24h] [bp-230h] BYREF
  _BYTE v34[4]; // [sp+34h] [bp-220h] BYREF
  int v35; // [sp+38h] [bp-21Ch]
  int v36; // [sp+3Ch] [bp-218h]
  __int64 v37; // [sp+40h] [bp-214h] BYREF
  int v38; // [sp+4Ch] [bp-208h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v39[17]; // [sp+50h] [bp-204h] BYREF
  std::string v40; // [sp+1E8h] [bp-6Ch] BYREF
  std::string v41; // [sp+204h] [bp-50h] BYREF
  std::string v42; // [sp+21Ch] [bp-38h] BYREF
  std::string v43; // [sp+234h] [bp-20h] BYREF
  std::string v44; // 0:kr00_24.24

  v2 = (_DWORD *)GSLevel::s_level;
  v38 = -1;
  if ( GSLevel::s_level )
  {
    NetPlayerMgr = GetNetPlayerMgr();
    CEventQueueBase::GetEventData((CEventQueueBase *)(NetPlayerMgr + 384), 3145728, &v38, 4);
    v4 = (CNetPlayerManager *)GetNetPlayerMgr();
    Player = CNetPlayerManager::GetPlayer(v4, v38, 0);
    if ( v2[76] == 38 )
    {
      v40._M_finish = (char *)&v40;
      v40._M_start_of_storage._M_data = (char *)&v40;
      std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block(&v40, 0x10u);
      *v40._M_finish = 0;
      v43._M_finish = (char *)&v43;
      v43._M_start_of_storage._M_data = (char *)&v43;
      std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block(&v43, 0x10u);
      *v43._M_finish = 0;
      v27 = (StringManager *)dword_99F760;
      Constant = PyDataConstants::getConstant((PyDataConstants *)dword_99F758, "StrID", "MENU_HAS_JOINED_THE_GAME");
      String = (const char *)StringManager::getString(v27, Constant);
      v41._M_finish = (char *)&v41;
      v41._M_start_of_storage._M_data = (char *)&v41;
      v28 = (char *)dword_99F760;
      std::string::_M_range_initialize(&v41, *(const char **)(Player + 740), *(const char **)(Player + 736));
      v44._M_buffers._M_end_of_storage = v28;
      *(_DWORD *)&v44._M_buffers._M_static_buf[4] = &v41;
      *(_DWORD *)&v44._M_buffers._M_static_buf[8] = 0;
      *(_DWORD *)&v44._M_buffers._M_static_buf[12] = v23;
      v44._M_finish = v24;
      v44._M_start_of_storage._M_data = v25;
      StringManager::formatForMulti(&v42, v44, (bool)v28);
      if ( (std::string *)v41._M_start_of_storage._M_data != &v41 && v41._M_start_of_storage._M_data )
      {
        if ( (unsigned int)(v41._M_buffers._M_end_of_storage - v41._M_start_of_storage._M_data) > 0x80 )
          CustomFree(v41._M_start_of_storage._M_data);
        else
          __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(
            v41._M_start_of_storage._M_data,
            v41._M_buffers._M_end_of_storage - v41._M_start_of_storage._M_data);
      }
      StringManager::parse((StringManager *)dword_99F760, &v43, String, v42._M_start_of_storage._M_data);
      std::string::_M_assign(&v40, v43._M_start_of_storage._M_data, v43._M_finish);
      std::deque<OnlineStatusMsg>::push_back((int)&dword_99FB34, &v40);
      v33[0] = dword_99FB34;
      v33[1] = dword_99FB38;
      v33[2] = dword_99FB3C;
      v33[3] = dword_99FB40;
      if ( std::priv::_Deque_iterator_base<OnlineStatusMsg>::_M_subtract(&dword_99FB44, v33) == 1 )
      {
        v32 = OnlineStatusMsg::s_StartFuncName[0];
        Instance = (MenuManager *)MenuManager::GetInstance((MenuManager *)((char *)&dword_0 + 1));
        HUDRoot = (MenuFX *)MenuManager::GetHUDRoot(Instance);
        if ( HUDRoot )
        {
          gameswf::weak_ptr<gameswf::character>::check_proxy((int)&dword_9A540C);
          if ( !dword_9A5410 )
            DebugCachedCharacter::RefreshCache(
              (DebugCachedCharacter *)&OnlineStatusMsg::s_NodeCachedChar,
              OnlineStatusMsg::s_NodeName[0],
              HUDRoot,
              nullptr);
          Char = (gameswf::character *)DebugCachedCharacter::GetChar((DebugCachedCharacter *)&OnlineStatusMsg::s_NodeCachedChar);
          v34[0] = 0;
          v34[1] = 2;
          v37 = 0;
          v35 = 0;
          v36 = 0;
          RenderFX::InvokeASCallback(HUDRoot, Char, v32, (const gameswf::as_value *)v34, 1);
          gameswf::as_value::drop_refs((gameswf::as_value *)v34);
        }
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
      if ( (std::string *)v43._M_start_of_storage._M_data != &v43 && v43._M_start_of_storage._M_data )
      {
        if ( (unsigned int)(v43._M_buffers._M_end_of_storage - v43._M_start_of_storage._M_data) > 0x80 )
          CustomFree(v43._M_start_of_storage._M_data);
        else
          __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(
            v43._M_start_of_storage._M_data,
            v43._M_buffers._M_end_of_storage - v43._M_start_of_storage._M_data);
      }
      if ( (std::string *)v40._M_start_of_storage._M_data != &v40 && v40._M_start_of_storage._M_data )
      {
        if ( (unsigned int)(v40._M_buffers._M_end_of_storage - v40._M_start_of_storage._M_data) > 0x80 )
          CustomFree(v40._M_start_of_storage._M_data);
        else
          __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(
            v40._M_start_of_storage._M_data,
            v40._M_buffers._M_end_of_storage - v40._M_start_of_storage._M_data);
      }
    }
    v6 = *(_DWORD *)(Player + 416);
    if ( PlayerManager::IsLocalPlayerHosting((PlayerManager *)dword_99F76C) )
    {
      v26 = *(_DWORD *)(Player + 416);
      HostingPlayer = PlayerManager::GetHostingPlayer((PlayerManager *)dword_99F76C);
      PlayerSavegame::PlayerSavegame((PlayerSavegame *)v39, *((_DWORD *)HostingPlayer + 409), 1, 0);
      v14 = v2[15];
      v29 = v2[70];
      CurrentLevel = (CMessaging *)Application::GetCurrentLevel((Application *)&Singleton<Application>::s_inst);
      v16 = *((_DWORD *)CurrentLevel + 55);
      v17 = (CMessaging *)CMessaging::Get(CurrentLevel);
      Message = CMessage::CreateMessage((CMessage *)"CMsgStartGame", (const char *)&dword_0 + 1, v18);
      *(_DWORD *)(Message + 80) = v14;
      *(_BYTE *)(Message + 89) = 0;
      *(_DWORD *)(Message + 100) = v16;
      *(_DWORD *)(Message + 92) = v29;
      *(_DWORD *)(Message + 84) = 0;
      *(_BYTE *)(Message + 88) = 0;
      *(_DWORD *)(Message + 104) = v26;
      *(_DWORD *)(Message + 96) = v16;
      CMessaging::SendMsg(v17, (CMessage *)Message);
      PlayerSavegame::~PlayerSavegame(v39);
    }
    Online = (COnline *)GetOnline();
    if ( COnline::IsServer(Online) )
    {
      LODWORD(v37) = 12;
      v10 = dword_99F764;
      ERj_veneer = __ZNSt12__node_alloc11_M_allocateERj_veneer((size_t *const)&v37);
      ERj_veneer[2] = v6;
      v12 = *(_DWORD **)(v10 + 300);
      *ERj_veneer = v10 + 296;
      ERj_veneer[1] = v12;
      *v12 = ERj_veneer;
      *(_DWORD *)(v10 + 300) = ERj_veneer;
    }
  }
  v8 = GetNetPlayerMgr();
  CEventQueueBase::ConsumeEvent((CEventQueueBase *)(v8 + 384), 3145728);
  return 0;
}


// ===== 49d244 std::__destroy_range<std::reverse_iterator<tRoomInfo *>,tRoomInfo>(std::reverse_iterator<tRoomInfo *>,std::reverse_iterator<tRoomInfo *>,tRoomInfo *) [clone] =====
void __fastcall std::__destroy_range<std::reverse_iterator<tRoomInfo *>,tRoomInfo>(_DWORD *a1, _DWORD *a2)
{
  _DWORD *v2; // r4
  _DWORD *v3; // r5
  _DWORD *v4; // r3
  size_t v5; // r1

  v2 = (_DWORD *)*a1;
  v3 = (_DWORD *)*a2;
  if ( *a1 != *a2 )
  {
    while ( 1 )
    {
      v2 -= 242;
      CRoomAttributes::~CRoomAttributes((CRoomAttributes *)(v2 + 10));
      v4 = (_DWORD *)v2[7];
      if ( v4 == v2 + 2 || !v4 )
        goto LABEL_4;
      v5 = v2[2] - (_DWORD)v4;
      if ( v5 <= 0x80 )
      {
        __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v4, v5);
LABEL_4:
        if ( v3 == v2 )
          return;
      }
      else
      {
        CustomFree(v4);
        if ( v3 == v2 )
          return;
      }
    }
  }
}


// ===== 49d2b0 std::allocator<OnlineStatusMsg>::allocate(uint,void const*) [clone] =====
void *std::allocator<OnlineStatusMsg>::allocate()
{
  size_t v1; // [sp+4h] [bp-8h] BYREF

  v1 = 112;
  return __ZNSt12__node_alloc11_M_allocateERj_veneer(&v1);
}


// ===== 49d2d0 `global constructor keyed to'.._.._sources_Game_Multiplayer_MultiplayerEventHandlers.cpp =====
int __fastcall `global constructor keyed to'.._.._sources_Game_Multiplayer_MultiplayerEventHandlers.cpp(CMessage *a1)
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

  dword_9A63BC = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9A63B8 = 1056964608;
  messageCreationMap = CMessage::InitializeMessageRegistration(a1);
  byte_9A63C1 = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgStartGame",
                  (const char *)GetNewInstance<CMsgStartGame>,
                  v1);
  byte_9A63C2 = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgControllerAction",
                  (const char *)GetNewInstance<CMsgControllerAction>,
                  v2);
  byte_9A63C3 = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgAttackResult",
                  (const char *)GetNewInstance<CMsgAttackResult>,
                  v3);
  byte_9A63C4 = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgRaisedEvent",
                  (const char *)GetNewInstance<CMsgRaisedEvent>,
                  v4);
  byte_9A63C5 = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgMenuReady",
                  (const char *)GetNewInstance<CMsgMenuReady>,
                  v5);
  byte_9A63C6 = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgScriptCmd",
                  (const char *)GetNewInstance<CMsgScriptCmd>,
                  v6);
  byte_9A63C7 = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgInitialSetup",
                  (const char *)GetNewInstance<CMsgInitialSetup>,
                  v7);
  byte_9A63C8 = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgQuestsSync",
                  (const char *)GetNewInstance<CMsgQuestsSync>,
                  v8);
  byte_9A63C9 = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgDropLoot",
                  (const char *)GetNewInstance<CMsgDropLoot>,
                  v9);
  byte_9A63CA = CMessage::RegisterMessageType((CMessage *)"CMsgIsHost", (const char *)GetNewInstance<CMsgIsHost>, v10);
  byte_9A63CB = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgSpawnObject",
                  (const char *)GetNewInstance<CMsgSpawnObject>,
                  v11);
  byte_9A63CC = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgGlobalDeath",
                  (const char *)GetNewInstance<CMsgGlobalDeath>,
                  v12);
  v14 = (CMessage *)CMessage::RegisterMessageType(
                      (CMessage *)"CMsgAskResendAttributes",
                      (const char *)GetNewInstance<CMsgAskResendAttributes>,
                      v13);
  byte_9A63CD = (char)v14;
  result = CMessage::TerminateMessageRegistration(v14);
  byte_9A63CE = result;
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
    dword_99FB34 = 0;
    dword_99FB38 = 0;
    dword_99FB3C = 0;
    dword_99FB40 = 0;
    dword_99FB44 = 0;
    dword_99FB48 = 0;
    dword_99FB4C = 0;
    dword_99FB50 = 0;
    dword_99FB54 = 0;
    dword_99FB58 = (int)byte_8;
    Singleton<MenuMessageManager<OnlineStatusMsg,1>>::s_inst = (int)off_95B160;
    v23 = std::allocator<OnlineStatusMsg *>::allocate((int)&dword_99FB54, (unsigned int)byte_8);
    dword_99FB54 = (int)v23;
    v24 = (unsigned int)(dword_99FB58 - 1) >> 1;
    v23[v24] = std::allocator<OnlineStatusMsg>::allocate();
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
    result = _aeabi_atexit(
               (int)&Singleton<MenuMessageManager<AchievementMsg,1>>::s_inst,
               (int)MenuMessageManager<AchievementMsg,1>::~MenuMessageManager,
               (int)&_dso_handle);
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


// ===== 49db80 OnlineGameState::processEvents(void) =====
int __fastcall OnlineGameState::processEvents(OnlineGameState *this)
{
  int HasEventOccured; // r0
  int *v3; // r0
  int v4; // r0
  int v5; // r0
  unsigned int v6; // r10
  unsigned int v7; // r5
  int v8; // r0
  char *v9; // r7
  int v10; // r0
  int v11; // r0
  int v12; // r0
  CMatching *v13; // r0
  CMatching *IsHost; // r0
  RenderFX *v15; // r8
  RenderFX *v16; // r0
  gameswf::root *v17; // r0
  gameswf::character *v18; // r0
  CMatching *v19; // r0
  CMatchingGLLive *v20; // r0
  int result; // r0
  InputManager *v22; // r8
  unsigned int i; // r5
  CMatching *v24; // r0
  CMatching *v25; // r0
  CMatching *v26; // r0
  unsigned __int8 *CurrentLevel; // r0
  char *EventData; // r0
  CMatching *v29; // r0
  CMatching *v30; // r0
  CMatching *v31; // r0
  CMatching *v32; // r0
  CMatching *v33; // r0
  CMatching *v34; // r0
  CMatching *v35; // r0
  int v36; // r0
  CMatching *v37; // r0
  CMatching *v38; // r0
  int v39; // r0
  int v40; // r0
  RenderFX *v41; // r0
  CMatching *Instance; // r0
  int v43; // r5
  RenderFX *v44; // r8
  RenderFX *v45; // r0
  gameswf::root *v46; // r0
  gameswf::character *v47; // r0
  CMatching *v48; // r10
  int v49; // r0
  int v50; // r0
  StringManager *v51; // r10
  int v52; // r0
  const char *v53; // r0
  RenderFX *v54; // r8
  RenderFX *v55; // r0
  gameswf::root *v56; // r0
  gameswf::character *v57; // r0
  int Online; // r0
  CMatching *v59; // r0
  CMatchingGLLive *v60; // r0
  CMatching *v61; // r0
  int v62; // r0
  GameCenter *v63; // r0
  StringManager *v64; // r10
  int v65; // r0
  const char *v66; // r0
  RenderFX *v67; // r8
  RenderFX *v68; // r0
  gameswf::root *v69; // r0
  gameswf::character *v70; // r0
  int v71; // r5
  RenderFX *v72; // r10
  RenderFX *v73; // r0
  gameswf::root *v74; // r0
  gameswf::character *v75; // r0
  int v76; // r0
  int v77; // r0
  int v78; // r0
  int v79; // r0
  int v80; // r0
  int v81; // r0
  CMatching *v82; // r8
  int v83; // r0
  RenderFX *v84; // r8
  RenderFX *v85; // r0
  gameswf::root *v86; // r0
  gameswf::character *v87; // r0
  CMatching *v88; // r0
  char *v89; // r11
  int v90; // r9
  void *v91; // r8
  CSignInCredentials *v92; // r10
  CSignIn *v93; // r0
  int v94; // r0
  RenderFX *v95; // r0
  gameswf::root *v96; // r0
  gameswf::character *root_movie; // r0
  RenderFX *v98; // r6
  RenderFX *v99; // r0
  gameswf::root *v100; // r0
  gameswf::character *v101; // r0
  CMatching *v102; // r0
  int v103; // r0
  CMatchingGLLive *v104; // r0
  DH2_PlayerInfoCharacterPrefix *v105; // r0
  int v106; // r8
  CMessaging *v107; // r5
  bool v108; // r2
  CMessage *v109; // r0
  int v110; // r1
  _DWORD *v111; // r3
  int v112; // r10
  int v113; // r8
  Character *v114; // r5
  int Constant; // r0
  char *PlayerName; // r0
  OnlineGameState *v117; // r0
  StringManager *v118; // r10
  int v119; // r0
  const char *v120; // r0
  RenderFX *v121; // r7
  RenderFX *v122; // r0
  gameswf::root *v123; // r0
  gameswf::character *v124; // r0
  CNetPlayerManager *v125; // r0
  int v126; // r0
  int v127; // r0
  CMatching *v128; // r0
  int v129; // r0
  int v130; // r0
  int AttributeInt; // r8
  int v132; // r0
  int *v133; // r7
  char *PlayerByInternalID; // r0
  int v135; // r0
  int v136; // r7
  CNetPlayerManager *v137; // r0
  RenderFX *v138; // r0
  OnlineGameState *v139; // r0
  MenuManager *v140; // r0
  MenuFX *HUDRoot; // r5
  gameswf::character *Char; // r0
  RenderFX *v143; // r10
  RenderFX *v144; // r0
  gameswf::root *v145; // r0
  gameswf::character *v146; // r0
  CMatching *GLXPlayerLoginObserver; // r0
  CSignIn *v148; // r0
  int v149; // r0
  CSignIn *v150; // r0
  StringManager *v151; // r5
  int v152; // r0
  const char *v153; // r0
  RenderFX *v154; // r8
  RenderFX *v155; // r0
  gameswf::root *v156; // r0
  gameswf::character *v157; // r0
  int v158; // r0
  CSignIn *v159; // r0
  RenderFX *v160; // r9
  RenderFX *v161; // r0
  gameswf::root *v162; // r0
  gameswf::character *v163; // r0
  CSignIn *v164; // r0
  char *v165; // r5
  int v166; // r0
  CMatching *v167; // r0
  int v168; // r0
  MenuManager *v169; // r0
  CMatching *v170; // r0
  CMatchingGLLive *v171; // r0
  int v172; // r0
  int v173; // r5
  DH2_PlayerInfoCharacterPrefix *LocalPlayer; // r0
  int v175; // r7
  CMessaging *v176; // r5
  bool v177; // r2
  CMessage *Message; // r0
  int NetPlayerMgr; // r0
  int v180; // r0
  int v181; // r0
  int v182; // r0
  StringManager *v183; // r5
  int v184; // r0
  const char *v185; // r0
  gameswf::as_value *v186; // r10
  gameswf::as_value *v187; // r5
  int v188; // r9
  RenderFX *v189; // r0
  gameswf::root *v190; // r0
  gameswf::character *v191; // r1
  const gameswf::as_value *v192; // r7
  RenderFX *v193; // r0
  MenuManager *v194; // r0
  int MenuByName; // r10
  MenuManager *v196; // r0
  RenderFX *v197; // r9
  int v198; // r0
  int v199; // r0
  RenderFX *v200; // r0
  CSignIn *v201; // r5
  int v202; // r0
  CMatching *v203; // r0
  CSignIn *v204; // r5
  int v205; // r0
  CMatching *v206; // r0
  CMatchingGLLive *v207; // r0
  int v208; // r0
  StringManager *v209; // r5
  int v210; // r0
  const char *v211; // r0
  int v212; // r8
  RenderFX *v213; // r0
  gameswf::root *v214; // r0
  RenderFX *v215; // r0
  RenderFX *v216; // r0
  int v217; // r0
  int v218; // r0
  int v219; // [sp+0h] [bp-2C4h]
  char *v220; // [sp+4h] [bp-2C0h]
  char *v221; // [sp+8h] [bp-2BCh]
  gameswf::as_value *v222; // [sp+8h] [bp-2BCh]
  DebugCachedCharacter *Root; // [sp+Ch] [bp-2B8h]
  char *sa; // [sp+10h] [bp-2B4h]
  char *s; // [sp+10h] [bp-2B4h]
  char *v226; // [sp+1Ch] [bp-2A8h]
  const char *String; // [sp+28h] [bp-29Ch]
  _BYTE v228[12]; // [sp+40h] [bp-284h] BYREF
  _BYTE v229[12]; // [sp+4Ch] [bp-278h] BYREF
  _BYTE v230[12]; // [sp+58h] [bp-26Ch] BYREF
  _BYTE v231[12]; // [sp+64h] [bp-260h] BYREF
  _BYTE v232[12]; // [sp+70h] [bp-254h] BYREF
  _BYTE v233[12]; // [sp+7Ch] [bp-248h] BYREF
  _BYTE v234[12]; // [sp+88h] [bp-23Ch] BYREF
  _BYTE v235[12]; // [sp+94h] [bp-230h] BYREF
  _BYTE v236[12]; // [sp+A0h] [bp-224h] BYREF
  _BYTE v237[12]; // [sp+ACh] [bp-218h] BYREF
  _BYTE v238[12]; // [sp+B8h] [bp-20Ch] BYREF
  _BYTE v239[12]; // [sp+C4h] [bp-200h] BYREF
  _BYTE v240[12]; // [sp+D0h] [bp-1F4h] BYREF
  _BYTE v241[12]; // [sp+DCh] [bp-1E8h] BYREF
  _BYTE v242[12]; // [sp+E8h] [bp-1DCh] BYREF
  _BYTE v243[12]; // [sp+F4h] [bp-1D0h] BYREF
  _BYTE v244[12]; // [sp+100h] [bp-1C4h] BYREF
  _BYTE v245[4]; // [sp+10Ch] [bp-1B8h] BYREF
  int v246; // [sp+110h] [bp-1B4h]
  int v247; // [sp+114h] [bp-1B0h]
  _BYTE v248[12]; // [sp+118h] [bp-1ACh] BYREF
  _BYTE v249[12]; // [sp+124h] [bp-1A0h] BYREF
  _BYTE v250[4]; // [sp+130h] [bp-194h] BYREF
  int v251; // [sp+134h] [bp-190h]
  int v252; // [sp+138h] [bp-18Ch]
  _BYTE v253[12]; // [sp+13Ch] [bp-188h] BYREF
  _BYTE v254[12]; // [sp+148h] [bp-17Ch] BYREF
  _BYTE v255[12]; // [sp+154h] [bp-170h] BYREF
  _BYTE v256[12]; // [sp+160h] [bp-164h] BYREF
  _BYTE v257[12]; // [sp+16Ch] [bp-158h] BYREF
  _BYTE v258[4]; // [sp+178h] [bp-14Ch] BYREF
  int v259; // [sp+17Ch] [bp-148h]
  int v260; // [sp+180h] [bp-144h]
  int v261; // [sp+184h] [bp-140h] BYREF
  int v262; // [sp+188h] [bp-13Ch]
  _BYTE v263[12]; // [sp+190h] [bp-134h] BYREF
  _BYTE v264[12]; // [sp+19Ch] [bp-128h] BYREF
  _DWORD v265[4]; // [sp+1A8h] [bp-11Ch] BYREF
  _BYTE v266[4]; // [sp+1B8h] [bp-10Ch] BYREF
  int v267; // [sp+1BCh] [bp-108h]
  int v268; // [sp+1C0h] [bp-104h]
  char *v269[3]; // [sp+1C4h] [bp-100h] BYREF
  __int64 v270; // [sp+1D0h] [bp-F4h]
  __int64 v271; // [sp+1D8h] [bp-ECh] BYREF
  char v272[24]; // [sp+1E8h] [bp-DCh] BYREF
  __int16 v273; // [sp+208h] [bp-BCh] BYREF
  __int16 v274; // [sp+20Ah] [bp-BAh] BYREF
  std::string v275; // [sp+228h] [bp-9Ch] BYREF
  std::string v276; // [sp+244h] [bp-80h] BYREF
  std::string v277; // [sp+25Ch] [bp-68h] BYREF
  std::string v278; // [sp+274h] [bp-50h] BYREF
  std::string v279; // [sp+28Ch] [bp-38h] BYREF
  std::string v280; // [sp+2A4h] [bp-20h] BYREF
  std::string v281; // 0:kr00_24.24
  std::string v282; // 0:kr28_24.24

  CMatching::Get(this);
  HasEventOccured = CEventQueueBase::HasEventOccured((CEventQueueBase *)&CMatching::m_eventQueue, 4194305, 1);
  if ( HasEventOccured )
  {
    *(_BYTE *)(OnlineSingleton<OnlineGameState>::GetInstance() + 36) = 1;
    Instance = (CMatching *)OnlineSingleton<OnlineGameState>::GetInstance();
    if ( *((_DWORD *)Instance + 13) == 3 )
    {
      if ( (byte_99F83A || byte_99F81A) && (v88 = (CMatching *)CMatching::Get(Instance), *((_BYTE *)v88 + 27633)) )
      {
        v89 = (char *)CMatching::Get(v88);
        v90 = CMatching::Get((CMatching *)v89);
        v91 = *(void **)(GCSingleton<GameCenter>::GetInstance() + 24);
        v92 = (CSignInCredentials *)CustomAlloc(0xCu);
        v93 = CSignInCredentials::CSignInCredentials(v92, v89 + 27617, (char *)(v90 + 27634), v91);
        v94 = CSignIn::Get(v93);
        (*(void (__fastcall **)(int, CSignInCredentials *))(*(_DWORD *)v94 + 16))(v94, v92);
      }
      else if ( byte_99F818 )
      {
        LOBYTE(v262) = 1;
        v263[1] = 0;
        LOWORD(v261) = 256;
        v263[0] = 0;
        gameswf::as_value::set_string((gameswf::as_value *)v263, "success");
        gameswf::as_value::as_value((gameswf::as_value *)v264, 2);
        Root = (DebugCachedCharacter *)MenuManager::GetRoot((MenuManager *)dword_99F780);
        v95 = (RenderFX *)MenuManager::GetRoot((MenuManager *)dword_99F780);
        v96 = (gameswf::root *)RenderFX::GetRoot(v95);
        root_movie = (gameswf::character *)gameswf::root::get_root_movie(v96);
        RenderFX::InvokeASCallback(
          Root,
          root_movie,
          "menu_VerificationLoading.LoadingFinished",
          (const gameswf::as_value *)&v261,
          3);
        gameswf::as_value::drop_refs((gameswf::as_value *)v264);
        gameswf::as_value::drop_refs((gameswf::as_value *)v263);
        gameswf::as_value::drop_refs((gameswf::as_value *)&v261);
      }
    }
    HasEventOccured = OnlineSingleton<OnlineGameState>::GetInstance();
    if ( *(_DWORD *)(HasEventOccured + 52) == 2 && *((_BYTE *)this + 78) )
    {
      *(_DWORD *)(OnlineSingleton<OnlineGameState>::GetInstance() + 20) = 102;
      HasEventOccured = OnlineSingleton<OnlineGameState>::GetInstance();
      *(_BYTE *)(HasEventOccured + 78) = 0;
    }
  }
  CMatching::Get((CMatching *)HasEventOccured);
  v3 = (int *)CEventQueueBase::HasEventOccured((CEventQueueBase *)&CMatching::m_eventQueue, 4194307, 1);
  if ( v3 )
  {
    if ( byte_99F81A )
    {
      v4 = CMatching::Get((CMatching *)v3);
      (*(void (__fastcall **)(int *, int))(*(_DWORD *)v4 + 144))(&v261, v4);
      v5 = OnlineSingleton<OnlineGameState>::GetInstance();
      if ( *(_DWORD *)(v5 + 52) != 2 )
        std::vector<tRoomInfo>::operator=((int *)(v5 + 80), &v261);
      if ( 1455319497 * ((v262 - v261) >> 3) )
      {
        v6 = 0;
        v7 = 0;
        while ( 1 )
        {
          v273 = 0;
          LC_API_MEMSET_0(&v274, 0, 0x1Eu);
          if ( (unsigned int)(*(_DWORD *)(OnlineSingleton<OnlineGameState>::GetInstance() + 52) - 3) <= 1 )
            sprintf((char *)&v273, *(const char **)(v261 + 968 * v6 + 28));
          else
            CRoomAttributes::GetAttributeBin(v261 + 968 * v6 + 40, 3, &v273, 32);
          v9 = (char *)dword_99F760;
          std::string::string(&v280, (char *)&v273);
          v281._M_buffers._M_end_of_storage = v9;
          *(_DWORD *)&v281._M_buffers._M_static_buf[4] = &v280;
          *(_DWORD *)&v281._M_buffers._M_static_buf[8] = 0;
          *(_DWORD *)&v281._M_buffers._M_static_buf[12] = v219;
          v281._M_finish = v220;
          v281._M_start_of_storage._M_data = v221;
          StringManager::formatForMulti(&v279, v281, (bool)Root);
          LC_API_STRCPY_0(v272, v279._M_start_of_storage._M_data);
          if ( (std::string *)v279._M_start_of_storage._M_data != &v279 && v279._M_start_of_storage._M_data )
          {
            if ( (unsigned int)(v279._M_buffers._M_end_of_storage - v279._M_start_of_storage._M_data) <= 0x80 )
              __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(
                v279._M_start_of_storage._M_data,
                v279._M_buffers._M_end_of_storage - v279._M_start_of_storage._M_data);
            else
              CustomFree(v279._M_start_of_storage._M_data);
          }
          if ( (std::string *)v280._M_start_of_storage._M_data == &v280 || !v280._M_start_of_storage._M_data )
            goto LABEL_13;
          if ( (unsigned int)(v280._M_buffers._M_end_of_storage - v280._M_start_of_storage._M_data) <= 0x80 )
            break;
          CustomFree(v280._M_start_of_storage._M_data);
          v8 = LC_API_STRCMP_0(&byte_99F81A, v272);
          if ( !v8 )
          {
LABEL_58:
            v222 = (gameswf::as_value *)v8;
            *(_DWORD *)(OnlineSingleton<OnlineGameState>::GetInstance() + 48) = v7;
            *(_DWORD *)(OnlineSingleton<OnlineGameState>::GetInstance() + 20) = 103;
            v41 = (RenderFX *)MenuManager::GetRoot((MenuManager *)dword_99F780);
            RenderFX::InvokeASCallback(v41, "menu_MultiplayerLobby", "PlayerIsClient", v222, (int)v222);
            goto LABEL_88;
          }
LABEL_14:
          v6 = ++v7;
          if ( v7 >= 1455319497 * ((v262 - v261) >> 3) )
            goto LABEL_87;
        }
        __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(
          v280._M_start_of_storage._M_data,
          v280._M_buffers._M_end_of_storage - v280._M_start_of_storage._M_data);
LABEL_13:
        v8 = LC_API_STRCMP_0(&byte_99F81A, v272);
        if ( !v8 )
          goto LABEL_58;
        goto LABEL_14;
      }
LABEL_87:
      byte_99F81A = 0;
      Application::GoToMainMenu((int)&Singleton<Application>::s_inst, 6);
LABEL_88:
      v3 = std::vector<tRoomInfo>::~vector(&v261);
    }
    else
    {
      v3 = (int *)OnlineSingleton<OnlineGameState>::GetInstance();
      if ( !*((_BYTE *)v3 + 37) )
      {
        v10 = CMatching::Get((CMatching *)v3);
        v11 = (*(int (__fastcall **)(int))(*(_DWORD *)v10 + 164))(v10);
        if ( !CRoomAttributes::GetAttributeInt(v11, 7) )
        {
          v143 = (RenderFX *)MenuManager::GetRoot((MenuManager *)dword_99F780);
          v144 = (RenderFX *)MenuManager::GetRoot((MenuManager *)dword_99F780);
          v145 = (gameswf::root *)RenderFX::GetRoot(v144);
          v146 = (gameswf::character *)gameswf::root::get_root_movie(v145);
          RenderFX::InvokeASCallback(v143, v146, "menu_MultiplayerJoin.StopRoomLobbyLoading", nullptr, 0);
        }
        v3 = (int *)OnlineSingleton<OnlineGameState>::GetInstance();
        v3[5] = 201;
      }
    }
  }
  CMatching::Get((CMatching *)v3);
  v12 = CEventQueueBase::HasEventOccured((CEventQueueBase *)&CMatching::m_eventQueue, 4194308, 1);
  if ( v12 )
  {
    v12 = OnlineSingleton<OnlineGameState>::GetInstance();
    v43 = *(unsigned __int8 *)(v12 + 37);
    if ( !*(_BYTE *)(v12 + 37) )
    {
      v44 = (RenderFX *)MenuManager::GetRoot((MenuManager *)dword_99F780);
      v45 = (RenderFX *)MenuManager::GetRoot((MenuManager *)dword_99F780);
      v46 = (gameswf::root *)RenderFX::GetRoot(v45);
      v47 = (gameswf::character *)gameswf::root::get_root_movie(v46);
      RenderFX::InvokeASCallback(
        v44,
        v47,
        "menu_MultiplayerJoin.StopRoomLobbyLoading",
        (const gameswf::as_value *)v43,
        v43);
      v12 = OnlineSingleton<OnlineGameState>::GetInstance();
      *(_DWORD *)(v12 + 20) = 201;
    }
  }
  CMatching::Get((CMatching *)v12);
  v13 = (CMatching *)CEventQueueBase::HasEventOccured((CEventQueueBase *)&CMatching::m_eventQueue, 4194309, 1);
  CMatching::Get(v13);
  IsHost = (CMatching *)CEventQueueBase::HasEventOccured((CEventQueueBase *)&CMatching::m_eventQueue, 4194312, 1);
  if ( !IsHost )
  {
LABEL_39:
    CMatching::Get(IsHost);
    v25 = (CMatching *)CEventQueueBase::HasEventOccured((CEventQueueBase *)&CMatching::m_eventQueue, 4194313, 1);
    if ( v25 )
    {
      v78 = CMatching::Get(v25);
      v79 = (*(int (__fastcall **)(int))(*(_DWORD *)v78 + 164))(v78);
      v25 = (CMatching *)(*(int (__fastcall **)(int))(*(_DWORD *)v79 + 16))(v79);
    }
    CMatching::Get(v25);
    v26 = (CMatching *)CEventQueueBase::HasEventOccured((CEventQueueBase *)&CMatching::m_eventQueue, 4194315, 1);
    if ( v26 )
    {
      v76 = CMatching::Get(v26);
      v77 = (*(int (__fastcall **)(int))(*(_DWORD *)v76 + 164))(v76);
      v26 = (CMatching *)(*(int (__fastcall **)(int))(*(_DWORD *)v77 + 16))(v77);
    }
    CMatching::Get(v26);
    CurrentLevel = (unsigned __int8 *)CEventQueueBase::HasEventOccured(
                                        (CEventQueueBase *)&CMatching::m_eventQueue,
                                        4194316,
                                        1);
    if ( CurrentLevel )
    {
      CurrentLevel = (unsigned __int8 *)Application::GetCurrentLevel((Application *)&Singleton<Application>::s_inst);
      if ( !CurrentLevel )
      {
        CurrentLevel = (unsigned __int8 *)OnlineSingleton<OnlineGameState>::GetInstance();
        v71 = CurrentLevel[40];
        if ( !CurrentLevel[40] )
        {
          v72 = (RenderFX *)MenuManager::GetRoot((MenuManager *)dword_99F780);
          v73 = (RenderFX *)MenuManager::GetRoot((MenuManager *)dword_99F780);
          v74 = (gameswf::root *)RenderFX::GetRoot(v73);
          v75 = (gameswf::character *)gameswf::root::get_root_movie(v74);
          CurrentLevel = (unsigned __int8 *)RenderFX::InvokeASCallback(
                                              v72,
                                              v75,
                                              "menu_MultiplayerLobby.UpdateLobbyInfos",
                                              (const gameswf::as_value *)v71,
                                              v71);
        }
      }
    }
    CMatching::Get((CMatching *)CurrentLevel);
    EventData = (char *)CEventQueueBase::HasEventOccured((CEventQueueBase *)&CMatching::m_eventQueue, 4194317, 0);
    if ( EventData )
    {
      LODWORD(v271) = -1;
      CMatching::Get((CMatching *)EventData);
      EventData = (char *)CEventQueueBase::GetEventData((CEventQueueBase *)&CMatching::m_eventQueue, 4194317, &v271, 4);
      if ( GSLevel::s_level )
      {
        if ( *(int *)(GSLevel::s_level + 304) > 35 )
        {
          CMatching::Get((CMatching *)EventData);
          CEventQueueBase::ConsumeEvent((CEventQueueBase *)&CMatching::m_eventQueue, 4194317);
          EventData = (char *)OnlineSingleton<OnlineGameState>::GetInstance();
          if ( *((_DWORD *)EventData + 13) == 2
            || (EventData = (char *)Application::IsWifiEnabled((Application *)&Singleton<Application>::s_inst)) != nullptr )
          {
            v110 = dword_99F764;
            v111 = *(_DWORD **)(dword_99F764 + 256);
            if ( v111 != (_DWORD *)(dword_99F764 + 256) )
            {
              v112 = 0;
              do
              {
                v111 = (_DWORD *)*v111;
                ++v112;
              }
              while ( (_DWORD *)(dword_99F764 + 256) != v111 );
              v113 = 0;
              while ( 1 )
              {
                ObjectManager::GetObjectHandleByNetworkId((ObjectManager *)v269, v110, v113);
                EventData = ObjectHandle::operator Character *(v269);
                v114 = (Character *)EventData;
                if ( EventData )
                {
                  EventData = (char *)(*(int (__fastcall **)(char *))(*(_DWORD *)EventData + 40))(EventData);
                  if ( EventData )
                  {
                    if ( (_DWORD)v271 == *((_DWORD *)v114 + 2018) )
                    {
                      PlayerManager::RemoveCharacter((PlayerManager *)dword_99F76C, v114);
                      v275._M_finish = (char *)&v275;
                      v275._M_start_of_storage._M_data = (char *)&v275;
                      std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block(&v275, 0x10u);
                      *v275._M_finish = 0;
                      v278._M_finish = (char *)&v278;
                      v278._M_start_of_storage._M_data = (char *)&v278;
                      std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block(&v278, 0x10u);
                      *v278._M_finish = 0;
                      sa = (char *)dword_99F760;
                      Constant = PyDataConstants::getConstant(
                                   (PyDataConstants *)dword_99F758,
                                   "StrID",
                                   "MENU_HAS_LEFT_THE_GAME");
                      String = (const char *)StringManager::getString((StringManager *)sa, Constant);
                      v226 = (char *)dword_99F760;
                      PlayerName = (char *)Character::SG_GetPlayerName(v114);
                      std::string::string(&v277, PlayerName);
                      v282._M_buffers._M_end_of_storage = v226;
                      *(_DWORD *)&v282._M_buffers._M_static_buf[4] = &v277;
                      *(_DWORD *)&v282._M_buffers._M_static_buf[8] = 0;
                      *(_DWORD *)&v282._M_buffers._M_static_buf[12] = v219;
                      v282._M_finish = v220;
                      v282._M_start_of_storage._M_data = nullptr;
                      StringManager::formatForMulti(&v276, v282, (bool)&Singleton<Application>::s_inst);
                      StringManager::parse((StringManager *)v226, &v278, String, v276._M_start_of_storage._M_data);
                      std::string::~string(&v276);
                      std::string::~string(&v277);
                      std::string::_M_assign(&v275, v278._M_start_of_storage._M_data, v278._M_finish);
                      std::deque<OnlineStatusMsg>::push_back((int)&dword_99FB34, &v275);
                      v265[0] = dword_99FB34;
                      v265[1] = dword_99FB38;
                      v265[2] = dword_99FB3C;
                      v265[3] = dword_99FB40;
                      if ( std::priv::_Deque_iterator_base<OnlineStatusMsg>::_M_subtract(&dword_99FB44, v265) == 1 )
                      {
                        s = OnlineStatusMsg::s_StartFuncName[0];
                        v140 = (MenuManager *)MenuManager::GetInstance((MenuManager *)((char *)&dword_0 + 1));
                        HUDRoot = (MenuFX *)MenuManager::GetHUDRoot(v140);
                        if ( HUDRoot )
                        {
                          gameswf::weak_ptr<gameswf::character>::check_proxy((int)&dword_9A540C);
                          if ( !dword_9A5410 )
                            DebugCachedCharacter::RefreshCache(
                              (DebugCachedCharacter *)&OnlineStatusMsg::s_NodeCachedChar,
                              OnlineStatusMsg::s_NodeName[0],
                              HUDRoot,
                              nullptr);
                          Char = (gameswf::character *)DebugCachedCharacter::GetChar((DebugCachedCharacter *)&OnlineStatusMsg::s_NodeCachedChar);
                          v270 = 0;
                          v266[0] = 0;
                          v266[1] = 2;
                          v267 = 0;
                          v268 = 0;
                          RenderFX::InvokeASCallback(HUDRoot, Char, s, (const gameswf::as_value *)v266, 1);
                          gameswf::as_value::drop_refs((gameswf::as_value *)v266);
                        }
                      }
                      std::string::~string(&v278);
                      std::string::~string(&v275);
                    }
                  }
                }
                if ( ++v113 == v112 )
                  break;
                v110 = dword_99F764;
              }
            }
          }
          else
          {
            EventData = (char *)Application::GoToMainMenu((int)&Singleton<Application>::s_inst, 3);
          }
        }
      }
    }
    CMatching::Get((CMatching *)EventData);
    v29 = (CMatching *)CEventQueueBase::HasEventOccured((CEventQueueBase *)&CMatching::m_eventQueue, 4194318, 1);
    CMatching::Get(v29);
    v30 = (CMatching *)CEventQueueBase::HasEventOccured((CEventQueueBase *)&CMatching::m_eventQueue, 4194322, 1);
    CMatching::Get(v30);
    v31 = (CMatching *)CEventQueueBase::HasEventOccured((CEventQueueBase *)&CMatching::m_eventQueue, 4194323, 1);
    CMatching::Get(v31);
    v32 = (CMatching *)CEventQueueBase::HasEventOccured((CEventQueueBase *)&CMatching::m_eventQueue, 4194324, 1);
    CMatching::Get(v32);
    v33 = (CMatching *)CEventQueueBase::HasEventOccured((CEventQueueBase *)&CMatching::m_eventQueue, 4194325, 1);
    CMatching::Get(v33);
    v34 = (CMatching *)CEventQueueBase::HasEventOccured((CEventQueueBase *)&CMatching::m_eventQueue, 0x400000, 1);
    CMatching::Get(v34);
    v35 = (CMatching *)CEventQueueBase::HasEventOccured((CEventQueueBase *)&CMatching::m_eventQueue, 4194320, 1);
    if ( v35 && byte_99F818 )
    {
      v64 = (StringManager *)dword_99F760;
      v248[1] = 1;
      v248[0] = 0;
      v248[4] = 0;
      v65 = PyDataConstants::getConstant(
              (PyDataConstants *)dword_99F758,
              "StrID",
              "MENU_MULTIPLAYER_ERROR_GAME_ROOM_GONE");
      v66 = (const char *)StringManager::getString(v64, v65);
      v249[0] = 0;
      v249[1] = 0;
      gameswf::as_value::set_string((gameswf::as_value *)v249, v66);
      v270 = 0;
      v250[1] = 2;
      v250[0] = 0;
      v251 = 0;
      v252 = 0;
      v67 = (RenderFX *)MenuManager::GetRoot((MenuManager *)dword_99F780);
      v68 = (RenderFX *)MenuManager::GetRoot((MenuManager *)dword_99F780);
      v69 = (gameswf::root *)RenderFX::GetRoot(v68);
      v70 = (gameswf::character *)gameswf::root::get_root_movie(v69);
      RenderFX::InvokeASCallback(
        v67,
        v70,
        "menu_VerificationLoading.LoadingFinished",
        (const gameswf::as_value *)v248,
        3);
      gameswf::as_value::drop_refs((gameswf::as_value *)v250);
      gameswf::as_value::drop_refs((gameswf::as_value *)v249);
      v35 = (CMatching *)gameswf::as_value::drop_refs((gameswf::as_value *)v248);
    }
    CMatching::Get(v35);
    if ( CEventQueueBase::HasEventOccured((CEventQueueBase *)&CMatching::m_eventQueue, 4194321, 1) && byte_99F818 )
    {
      v51 = (StringManager *)dword_99F760;
      v243[1] = 1;
      v243[0] = 0;
      v243[4] = 0;
      v52 = PyDataConstants::getConstant((PyDataConstants *)dword_99F758, "StrID", "MENU_MULTIPLAYER_ERROR_GAME_FULL");
      v53 = (const char *)StringManager::getString(v51, v52);
      v244[0] = 0;
      v244[1] = 0;
      gameswf::as_value::set_string((gameswf::as_value *)v244, v53);
      v270 = 0;
      v245[1] = 2;
      v245[0] = 0;
      v246 = 0;
      v247 = 0;
      v54 = (RenderFX *)MenuManager::GetRoot((MenuManager *)dword_99F780);
      v55 = (RenderFX *)MenuManager::GetRoot((MenuManager *)dword_99F780);
      v56 = (gameswf::root *)RenderFX::GetRoot(v55);
      v57 = (gameswf::character *)gameswf::root::get_root_movie(v56);
      RenderFX::InvokeASCallback(
        v54,
        v57,
        "menu_VerificationLoading.LoadingFinished",
        (const gameswf::as_value *)v243,
        3);
      gameswf::as_value::drop_refs((gameswf::as_value *)v245);
      gameswf::as_value::drop_refs((gameswf::as_value *)v244);
      gameswf::as_value::drop_refs((gameswf::as_value *)v243);
      Online = GetOnline();
      v37 = (CMatching *)CEventQueueBase::HasEventOccured((CEventQueueBase *)(Online + 8), 5242883, 1);
      if ( !v37 )
      {
LABEL_51:
        CMatching::Get(v37);
        if ( CEventQueueBase::HasEventOccured((CEventQueueBase *)&CMatching::m_eventQueue, 4194314, 1) )
        {
LABEL_52:
          if ( GSLevel::s_level )
          {
            v38 = (CMatching *)Application::GoToMainMenu((int)&Singleton<Application>::s_inst, 1);
          }
          else
          {
            v98 = (RenderFX *)MenuManager::GetRoot((MenuManager *)dword_99F780);
            v99 = (RenderFX *)MenuManager::GetRoot((MenuManager *)dword_99F780);
            v100 = (gameswf::root *)RenderFX::GetRoot(v99);
            v101 = (gameswf::character *)gameswf::root::get_root_movie(v100);
            v102 = (CMatching *)RenderFX::InvokeASCallback(
                                  v98,
                                  v101,
                                  "menu_MultiplayerLobby.PlayerIsKicked",
                                  nullptr,
                                  0);
            v103 = CMatching::Get(v102);
            (*(void (__fastcall **)(int))(*(_DWORD *)v103 + 60))(v103);
            v38 = (CMatching *)OnlineSingleton<OnlineGameState>::GetInstance();
            *((_DWORD *)v38 + 5) = 102;
          }
          v39 = CMatching::Get(v38);
          v40 = (*(int (__fastcall **)(int))(*(_DWORD *)v39 + 164))(v39);
          return (*(int (__fastcall **)(int))(*(_DWORD *)v40 + 16))(v40);
        }
LABEL_67:
        v60 = (CMatchingGLLive *)OnlineSingleton<OnlineGameState>::GetInstance();
        if ( *((_DWORD *)v60 + 13) != 3 )
          goto LABEL_68;
        GLXPlayerLoginObserver = (CMatching *)CMatchingGLLive::GetGLXPlayerLoginObserver(v60);
        if ( *((_BYTE *)GLXPlayerLoginObserver + 4) )
        {
          v148 = (CSignIn *)OnlineSingleton<OnlineGameState>::GetInstance();
          *((_BYTE *)v148 + 39) = 1;
        }
        else
        {
          v180 = CMatching::Get(GLXPlayerLoginObserver);
          v148 = (CSignIn *)(*(int (__fastcall **)(int))(*(_DWORD *)v180 + 48))(v180);
        }
        v149 = CSignIn::Get(v148);
        v150 = (CSignIn *)CEventQueueBase::HasEventOccured((CEventQueueBase *)(v149 + 20), 5, 1);
        if ( v150 )
        {
          if ( byte_99F818 )
          {
            v151 = (StringManager *)dword_99F760;
            v240[1] = 1;
            v240[0] = 0;
            v240[4] = 0;
            v152 = PyDataConstants::getConstant(
                     (PyDataConstants *)dword_99F758,
                     "StrID",
                     "MENU_MULTIPLAYER_BAD_USERNAME");
            v153 = (const char *)StringManager::getString(v151, v152);
            v241[0] = 0;
            v241[1] = 0;
            gameswf::as_value::set_string((gameswf::as_value *)v241, v153);
            gameswf::as_value::as_value((gameswf::as_value *)v242, 0);
            v154 = (RenderFX *)MenuManager::GetRoot((MenuManager *)dword_99F780);
            v155 = (RenderFX *)MenuManager::GetRoot((MenuManager *)dword_99F780);
            v156 = (gameswf::root *)RenderFX::GetRoot(v155);
            v157 = (gameswf::character *)gameswf::root::get_root_movie(v156);
            RenderFX::InvokeASCallback(
              v154,
              v157,
              "menu_VerificationLoading.LoadingFinished",
              (const gameswf::as_value *)v240,
              3);
            gameswf::as_value::drop_refs((gameswf::as_value *)v242);
            gameswf::as_value::drop_refs((gameswf::as_value *)v241);
            v150 = (CSignIn *)gameswf::as_value::drop_refs((gameswf::as_value *)v240);
          }
          goto LABEL_152;
        }
        v182 = CSignIn::Get(nullptr);
        v150 = (CSignIn *)CEventQueueBase::HasEventOccured((CEventQueueBase *)(v182 + 20), 6, 1);
        if ( v150 )
        {
          if ( byte_99F818 )
          {
            v183 = (StringManager *)dword_99F760;
            v237[1] = 1;
            v237[0] = 0;
            v237[4] = 0;
            v184 = PyDataConstants::getConstant(
                     (PyDataConstants *)dword_99F758,
                     "StrID",
                     "MENU_MULTIPLAYER_WRONG_PASSWORD");
            v185 = (const char *)StringManager::getString(v183, v184);
            v186 = (gameswf::as_value *)v238;
            v187 = (gameswf::as_value *)v239;
            v238[0] = 0;
            v238[1] = 0;
            gameswf::as_value::set_string((gameswf::as_value *)v238, v185);
            gameswf::as_value::as_value((gameswf::as_value *)v239, 0);
            v188 = MenuManager::GetRoot((MenuManager *)dword_99F780);
            v189 = (RenderFX *)MenuManager::GetRoot((MenuManager *)dword_99F780);
            v190 = (gameswf::root *)RenderFX::GetRoot(v189);
            v191 = (gameswf::character *)gameswf::root::get_root_movie(v190);
            v192 = (const gameswf::as_value *)v237;
            v193 = (RenderFX *)v188;
LABEL_176:
            RenderFX::InvokeASCallback(v193, v191, "menu_VerificationLoading.LoadingFinished", v192, 3);
            gameswf::as_value::drop_refs(v187);
            gameswf::as_value::drop_refs(v186);
            v150 = (CSignIn *)gameswf::as_value::drop_refs(v192);
          }
        }
        else
        {
          v208 = CSignIn::Get(nullptr);
          v150 = (CSignIn *)CEventQueueBase::HasEventOccured((CEventQueueBase *)(v208 + 20), 7, 1);
          if ( !v150 )
          {
            v217 = CSignIn::Get(nullptr);
            if ( CEventQueueBase::HasEventOccured((CEventQueueBase *)(v217 + 20), 8, 1) )
            {
              v150 = (CSignIn *)Application::GoToMainMenu((int)&Singleton<Application>::s_inst, 9);
            }
            else
            {
              v218 = CSignIn::Get(nullptr);
              v150 = (CSignIn *)CEventQueueBase::HasEventOccured((CEventQueueBase *)(v218 + 20), 9, 1);
              if ( v150 )
                v150 = (CSignIn *)Application::GoToMainMenu((int)&Singleton<Application>::s_inst, 4);
            }
            goto LABEL_152;
          }
          if ( byte_99F818 )
          {
            v209 = (StringManager *)dword_99F760;
            v234[1] = 1;
            v234[0] = 0;
            v234[4] = 0;
            v210 = PyDataConstants::getConstant(
                     (PyDataConstants *)dword_99F758,
                     "StrID",
                     "MENU_MULTIPLAYER_NO_CONNECTION");
            v211 = (const char *)StringManager::getString(v209, v210);
            v186 = (gameswf::as_value *)v235;
            v187 = (gameswf::as_value *)v236;
            v235[0] = 0;
            v235[1] = 0;
            gameswf::as_value::set_string((gameswf::as_value *)v235, v211);
            gameswf::as_value::as_value((gameswf::as_value *)v236, 0);
            v212 = MenuManager::GetRoot((MenuManager *)dword_99F780);
            v213 = (RenderFX *)MenuManager::GetRoot((MenuManager *)dword_99F780);
            v214 = (gameswf::root *)RenderFX::GetRoot(v213);
            v191 = (gameswf::character *)gameswf::root::get_root_movie(v214);
            v192 = (const gameswf::as_value *)v234;
            v193 = (RenderFX *)v212;
            goto LABEL_176;
          }
        }
LABEL_152:
        v158 = CSignIn::Get(v150);
        v159 = (CSignIn *)CEventQueueBase::HasEventOccured((CEventQueueBase *)(v158 + 20), 2, 1);
        if ( v159 )
        {
          if ( byte_99F818 )
          {
            v231[4] = 1;
            v231[1] = 1;
            v231[0] = 0;
            v232[0] = 0;
            v232[1] = 0;
            gameswf::as_value::set_string((gameswf::as_value *)v232, "Ok");
            gameswf::as_value::as_value((gameswf::as_value *)v233, 0);
            v160 = (RenderFX *)MenuManager::GetRoot((MenuManager *)dword_99F780);
            v161 = (RenderFX *)MenuManager::GetRoot((MenuManager *)dword_99F780);
            v162 = (gameswf::root *)RenderFX::GetRoot(v161);
            v163 = (gameswf::character *)gameswf::root::get_root_movie(v162);
            RenderFX::InvokeASCallback(
              v160,
              v163,
              "menu_VerificationLoading.LoadingFinished",
              (const gameswf::as_value *)v231,
              3);
            gameswf::as_value::drop_refs((gameswf::as_value *)v233);
            gameswf::as_value::drop_refs((gameswf::as_value *)v232);
            v159 = (CSignIn *)gameswf::as_value::drop_refs((gameswf::as_value *)v231);
          }
          v164 = (CSignIn *)CSignIn::Get(v159);
          v165 = *((char **)v164 + 1);
          v166 = CSignIn::Get(v164);
          v167 = (CMatching *)CXPlayerManager::Login(
                                (CXPlayerManager *)&Singleton<CXPlayerManager>::s_inst,
                                v165,
                                *(char **)(v166 + 8));
          v168 = CMatching::Get(v167);
          if ( *(_BYTE *)(v168 + 27633) )
          {
            v201 = (CSignIn *)CMatching::Get((CMatching *)v168);
            v202 = CSignIn::Get(v201);
            v203 = (CMatching *)CMatchingGLLive::SetGLLiveUserName(v201, *(const char **)(v202 + 4));
            v204 = (CSignIn *)CMatching::Get(v203);
            v205 = CSignIn::Get(v204);
            v206 = (CMatching *)CMatchingGLLive::SetGLLivePassword(v204, *(const char **)(v205 + 8));
            v207 = (CMatchingGLLive *)CMatching::Get(v206);
            v168 = CMatchingGLLive::SaveGLLiveProfile(v207);
          }
          if ( byte_99F83A )
          {
            *(_DWORD *)(OnlineSingleton<OnlineGameState>::GetInstance() + 20) = 101;
            v200 = (RenderFX *)MenuManager::GetRoot((MenuManager *)dword_99F780);
            v168 = RenderFX::InvokeASCallback(v200, "menu_MultiplayerLobby", "PlayerBecameHost", nullptr, 0);
          }
          else if ( byte_99F81A )
          {
            v168 = OnlineSingleton<OnlineGameState>::GetInstance();
            *(_DWORD *)(v168 + 20) = 104;
          }
        }
        else
        {
          v181 = CMatching::Get(nullptr);
          v168 = (*(int (__fastcall **)(int))(*(_DWORD *)v181 + 48))(v181);
        }
        CMatching::Get((CMatching *)v168);
        v169 = (MenuManager *)CEventQueueBase::HasEventOccured(
                                (CEventQueueBase *)&CMatchingGLLive::s_eventQueueGLLiveInternal,
                                11,
                                1);
        if ( v169 )
        {
          v194 = (MenuManager *)MenuManager::GetInstance(v169);
          MenuByName = MenuManager::GetMenuByName(v194, "menu_Loading");
          v196 = (MenuManager *)MenuManager::GetInstance((MenuManager *)MenuByName);
          MenuManager::PushMenu(v196, (MenuBase *)MenuByName);
          v197 = *(RenderFX **)(MenuByName + 4);
          gameswf::weak_ptr<gameswf::character>::check_proxy(MenuByName + 72);
          RenderFX::InvokeASCallback(v197, *(gameswf::character **)(MenuByName + 76), "onProgress", nullptr, 0);
          *(_BYTE *)(OnlineSingleton<OnlineGameState>::GetInstance() + 40) = 1;
          v198 = OnlineSingleton<OnlineGameState>::GetInstance();
          gettimeofday((struct timeval *)(v198 + 60), nullptr);
          v169 = (MenuManager *)OnlineSingleton<OnlineGameState>::GetInstance();
          *((_BYTE *)v169 + 76) = 1;
        }
        CMatching::Get(v169);
        if ( CEventQueueBase::HasEventOccured((CEventQueueBase *)&CMatchingGLLive::s_eventQueueGLLiveInternal, 12, 1) )
        {
          byte_99F83A = 0;
          byte_99F81A = 0;
          Application::GoToMainMenu((int)&Singleton<Application>::s_inst, 3);
        }
LABEL_68:
        if ( !*(_BYTE *)(OnlineSingleton<OnlineGameState>::GetInstance() + 36)
          || (v125 = (CNetPlayerManager *)GetNetPlayerMgr(), !CNetPlayerManager::IsInitialized(v125))
          || (v126 = GetNetPlayerMgr(), !CEventQueueBase::HasEventOccured((CEventQueueBase *)(v126 + 384), 3145732, 0)) )
        {
LABEL_69:
          v61 = (CMatching *)OnlineSingleton<OnlineGameState>::GetInstance();
          if ( (unsigned int)(*((_DWORD *)v61 + 13) - 3) <= 1 )
          {
            CMatching::Get(v61);
            v170 = (CMatching *)CEventQueueBase::HasEventOccured(
                                  (CEventQueueBase *)&CMatchingGLLive::s_eventQueueGLLiveInternal,
                                  13,
                                  1);
            if ( v170 )
            {
              v171 = (CMatchingGLLive *)CMatching::Get(v170);
              if ( CMatchingGLLive::IsHost(v171) )
              {
                v172 = OnlineSingleton<OnlineGameState>::GetInstance();
                v173 = *(unsigned __int8 *)(v172 + 40);
                if ( *(_BYTE *)(v172 + 40) )
                {
                  LocalPlayer = PlayerManager::GetLocalPlayer((PlayerManager *)dword_99F76C, 0, 0);
                  v175 = *(_DWORD *)&LocalPlayer->unknown_000[376];
                  v176 = (CMessaging *)CMessaging::Get((CMessaging *)LocalPlayer);
                  Message = (CMessage *)CMessage::CreateMessage(
                                          (CMessage *)"CMsgIsHost",
                                          (const char *)&dword_0 + 1,
                                          v177);
                  *((_DWORD *)Message + 20) = v175;
                  CMessaging::SendMsg(v176, Message);
                }
                else
                {
                  NetPlayerMgr = GetNetPlayerMgr();
                  CEventQueueBase::AddEvent((CEventQueueBase *)(NetPlayerMgr + 384), 3145732, (void *)v173, v173);
                }
              }
            }
          }
          v62 = Application::GetCurrentLevel((Application *)&Singleton<Application>::s_inst);
          if ( !v62 || *(_DWORD *)(v62 + 304) != 38 )
          {
            if ( *(_BYTE *)(GetOnline() + 5) )
            {
              if ( *(_BYTE *)(OnlineSingleton<OnlineGameState>::GetInstance() + 40) )
              {
                if ( *(_BYTE *)(OnlineSingleton<OnlineGameState>::GetInstance() + 76) )
                {
                  v139 = (OnlineGameState *)OnlineSingleton<OnlineGameState>::GetInstance();
                  if ( OnlineGameState::GlliveStartGameTimeOutExpired(v139) )
                    Application::GoToMainMenu((int)&Singleton<Application>::s_inst, 3);
                }
              }
            }
          }
          if ( *(_BYTE *)(OnlineSingleton<OnlineGameState>::GetInstance() + 77) )
          {
            if ( *(_DWORD *)(OnlineSingleton<OnlineGameState>::GetInstance() + 52) == 3 )
            {
              v117 = (OnlineGameState *)OnlineSingleton<OnlineGameState>::GetInstance();
              if ( OnlineGameState::GlliveRoomCreationTimeOutExpired(v117) )
              {
                *(_BYTE *)(OnlineSingleton<OnlineGameState>::GetInstance() + 77) = 0;
                if ( byte_99F818 )
                {
                  v118 = (StringManager *)dword_99F760;
                  v228[1] = 1;
                  v228[0] = 0;
                  v228[4] = 0;
                  v119 = PyDataConstants::getConstant(
                           (PyDataConstants *)dword_99F758,
                           "StrID",
                           "MENU_MULTIPLAYER_TIMEOUT");
                  v120 = (const char *)StringManager::getString(v118, v119);
                  v229[0] = 0;
                  v229[1] = 0;
                  gameswf::as_value::set_string((gameswf::as_value *)v229, v120);
                  gameswf::as_value::as_value((gameswf::as_value *)v230, 0);
                  v121 = (RenderFX *)MenuManager::GetRoot((MenuManager *)dword_99F780);
                  v122 = (RenderFX *)MenuManager::GetRoot((MenuManager *)dword_99F780);
                  v123 = (gameswf::root *)RenderFX::GetRoot(v122);
                  v124 = (gameswf::character *)gameswf::root::get_root_movie(v123);
                  RenderFX::InvokeASCallback(
                    v121,
                    v124,
                    "menu_VerificationLoading.LoadingFinished",
                    (const gameswf::as_value *)v228,
                    3);
                  gameswf::as_value::drop_refs((gameswf::as_value *)v230);
                  gameswf::as_value::drop_refs((gameswf::as_value *)v229);
                  gameswf::as_value::drop_refs((gameswf::as_value *)v228);
                }
              }
            }
          }
          result = OnlineSingleton<OnlineGameState>::GetInstance();
          if ( *(_DWORD *)(result + 52) == 4 )
          {
            if ( byte_99F818 )
            {
              result = GCSingleton<GameCenter>::GetInstance();
              if ( !*(_BYTE *)(result + 20) )
              {
                v63 = (GameCenter *)GCSingleton<GameCenter>::GetInstance();
                result = GameCenter::GCStartGameTimeoutExpired(v63);
                if ( result )
                  return Application::GoToMainMenu((int)&Singleton<Application>::s_inst, 6);
              }
            }
          }
          return result;
        }
        LODWORD(v271) = -1;
        v127 = GetNetPlayerMgr();
        v128 = (CMatching *)CEventQueueBase::GetEventData((CEventQueueBase *)(v127 + 384), 3145732, &v271, 4);
        v129 = CMatching::Get(v128);
        v130 = (*(int (__fastcall **)(int))(*(_DWORD *)v129 + 164))(v129);
        AttributeInt = CRoomAttributes::GetAttributeInt(v130, 7);
        v132 = Application::GetCurrentLevel((Application *)&Singleton<Application>::s_inst);
        v133 = (int *)v132;
        if ( !AttributeInt )
          goto LABEL_124;
        if ( v132 )
        {
          if ( !*(_BYTE *)(dword_99F76C + 1819)
            || PlayerManager::GetLocalPlayer((PlayerManager *)dword_99F76C, 0, 0)->unknown_000[1349] )
          {
            if ( v133[76] > 35 )
            {
LABEL_124:
              if ( *(_DWORD *)(OnlineSingleton<OnlineGameState>::GetInstance() + 52) != 3
                || Application::GetCurrentLevel((Application *)&Singleton<Application>::s_inst) )
              {
                if ( (int)v271 >= 0 )
                {
                  PlayerManager::OnHostChangedNotification((PlayerManager *)dword_99F76C, v271);
                  if ( v133 )
                  {
                    PlayerByInternalID = PlayerManager::GetPlayerByInternalID((PlayerManager *)dword_99F76C, v271, 0);
                    Level::PlaceFaeryAndFollowers((Level *)v133, *((Character **)PlayerByInternalID + 408));
                  }
                }
              }
              else
              {
                v216 = (RenderFX *)MenuManager::GetRoot((MenuManager *)dword_99F780);
                RenderFX::InvokeASCallback(v216, "menu_MultiplayerLobby", "PlayerBecameHost", nullptr, 0);
              }
              v135 = GetNetPlayerMgr();
              CEventQueueBase::ConsumeEvent((CEventQueueBase *)(v135 + 384), 3145732);
              if ( *(_DWORD *)(OnlineSingleton<OnlineGameState>::GetInstance() + 52) == 2 )
                Application::GoToMainMenu((int)&Singleton<Application>::s_inst, 6);
            }
          }
          else
          {
            v199 = GetNetPlayerMgr();
            CEventQueueBase::ConsumeEvent((CEventQueueBase *)(v199 + 384), 3145732);
            Application::GoToMainMenu((int)&Singleton<Application>::s_inst, 3);
          }
        }
        if ( *(_DWORD *)(OnlineSingleton<OnlineGameState>::GetInstance() + 52) == 1
          && MenuManager::GetRoot((MenuManager *)dword_99F780) )
        {
          v136 = *(_DWORD *)(GetNetPlayerMgr() + 368);
          v137 = (CNetPlayerManager *)GetNetPlayerMgr();
          if ( v136 == *(_DWORD *)(CNetPlayerManager::GetLocalPlayer(v137, 0) + 376) )
          {
            v215 = (RenderFX *)MenuManager::GetRoot((MenuManager *)dword_99F780);
            RenderFX::InvokeASCallback(v215, "menu_MultiplayerLobby", "PlayerBecameHost", nullptr, 0);
          }
          else
          {
            v138 = (RenderFX *)MenuManager::GetRoot((MenuManager *)dword_99F780);
            RenderFX::InvokeASCallback(v138, "menu_MultiplayerLobby", "PlayerIsClient", nullptr, 0);
          }
        }
        goto LABEL_69;
      }
    }
    else
    {
      v36 = GetOnline();
      v37 = (CMatching *)CEventQueueBase::HasEventOccured((CEventQueueBase *)(v36 + 8), 5242883, 1);
      if ( !v37 )
        goto LABEL_51;
    }
    v59 = (CMatching *)Application::GoToMainMenu((int)&Singleton<Application>::s_inst, 8);
    CMatching::Get(v59);
    if ( CEventQueueBase::HasEventOccured((CEventQueueBase *)&CMatching::m_eventQueue, 4194314, 1) )
      goto LABEL_52;
    goto LABEL_67;
  }
  if ( !byte_99F81A && !byte_99F83A )
  {
    v22 = (InputManager *)InputManager::GetInstance(IsHost);
    for ( i = 1; i < InputManager::GetNumGamepads(v22); ++i )
    {
      if ( *(_BYTE *)((*(int (__fastcall **)(InputManager *, unsigned int))(*(_DWORD *)v22 + 8))(v22, i) + 1880) )
      {
        v48 = (CMatching *)GetNetPlayerMgr();
        v49 = CMatching::Get(v48);
        v50 = (*(int (__fastcall **)(int))(*(_DWORD *)v49 + 108))(v49);
        CNetPlayerManager::AddPlayer(v48, v50, i);
      }
    }
    v24 = (CMatching *)OnlineSingleton<OnlineGameState>::GetInstance();
    if ( *((_DWORD *)v24 + 13) == 4
      || (v24 = (CMatching *)OnlineSingleton<OnlineGameState>::GetInstance(), *((_DWORD *)v24 + 13) == 3)
      && (v24 = (CMatching *)CMatching::Get(v24), CMatchingGLLive::s_IsGameStarting) )
    {
      IsHost = (CMatching *)CMatching::Get(v24);
      if ( CMatchingGLLive::s_IsGameStarting )
      {
        v104 = (CMatchingGLLive *)CMatching::Get(IsHost);
        IsHost = (CMatching *)CMatchingGLLive::IsHost(v104);
        if ( IsHost )
        {
          v105 = PlayerManager::GetLocalPlayer((PlayerManager *)dword_99F76C, 0, 0);
          v106 = *(_DWORD *)&v105->unknown_000[376];
          v107 = (CMessaging *)CMessaging::Get((CMessaging *)v105);
          v109 = (CMessage *)CMessage::CreateMessage((CMessage *)"CMsgIsHost", (const char *)&dword_0 + 1, v108);
          *((_DWORD *)v109 + 20) = v106;
          IsHost = (CMatching *)CMessaging::SendMsg(v107, v109);
        }
      }
    }
    else
    {
      v80 = CMatching::Get(v24);
      v81 = (*(int (__fastcall **)(int))(*(_DWORD *)v80 + 164))(v80);
      v82 = (CMatching *)CRoomAttributes::GetAttributeInt(v81, 7);
      v83 = CMatching::Get(v82);
      if ( (*(int (__fastcall **)(int))(*(_DWORD *)v83 + 100))(v83) )
      {
        if ( v82 )
        {
          byte_99F818 = 0;
        }
        else if ( byte_99F818 )
        {
          v254[1] = 0;
          v253[0] = 0;
          v254[0] = 0;
          v253[1] = 1;
          v253[4] = 1;
          gameswf::as_value::set_string((gameswf::as_value *)v254, "success");
          gameswf::as_value::as_value((gameswf::as_value *)v255, 1);
          v84 = (RenderFX *)MenuManager::GetRoot((MenuManager *)dword_99F780);
          v85 = (RenderFX *)MenuManager::GetRoot((MenuManager *)dword_99F780);
          v86 = (gameswf::root *)RenderFX::GetRoot(v85);
          v87 = (gameswf::character *)gameswf::root::get_root_movie(v86);
          RenderFX::InvokeASCallback(
            v84,
            v87,
            "menu_VerificationLoading.LoadingFinished",
            (const gameswf::as_value *)v253,
            3);
          gameswf::as_value::drop_refs((gameswf::as_value *)v255);
          gameswf::as_value::drop_refs((gameswf::as_value *)v254);
          gameswf::as_value::drop_refs((gameswf::as_value *)v253);
        }
      }
      IsHost = (CMatching *)OnlineSingleton<OnlineGameState>::GetInstance();
      *((_DWORD *)IsHost + 5) = 200;
    }
    goto LABEL_39;
  }
  v256[4] = 1;
  v256[0] = 0;
  v256[1] = 1;
  v257[0] = 0;
  v257[1] = 0;
  gameswf::as_value::set_string((gameswf::as_value *)v257, "success");
  v271 = 0x3FF0000000000000LL;
  v258[1] = 2;
  v258[0] = 0;
  v259 = 0;
  v260 = 1072693248;
  v15 = (RenderFX *)MenuManager::GetRoot((MenuManager *)dword_99F780);
  v16 = (RenderFX *)MenuManager::GetRoot((MenuManager *)dword_99F780);
  v17 = (gameswf::root *)RenderFX::GetRoot(v16);
  v18 = (gameswf::character *)gameswf::root::get_root_movie(v17);
  v19 = (CMatching *)RenderFX::InvokeASCallback(
                       v15,
                       v18,
                       "menu_VerificationLoading.LoadingFinished",
                       (const gameswf::as_value *)v256,
                       3);
  if ( byte_99F83A )
  {
    if ( byte_99F81A )
    {
      v20 = (CMatchingGLLive *)CMatching::Get(v19);
      CMatchingGLLive::SendGLFriendsGameInvite(v20, &byte_99F81A);
    }
  }
  byte_99F83A = 0;
  byte_99F81A = 0;
  *(_DWORD *)(OnlineSingleton<OnlineGameState>::GetInstance() + 20) = 200;
  gameswf::as_value::drop_refs((gameswf::as_value *)v258);
  gameswf::as_value::drop_refs((gameswf::as_value *)v257);
  return gameswf::as_value::drop_refs((gameswf::as_value *)v256);
}


// ===== 49f880 `global constructor keyed to'.._.._sources_Game_Multiplayer_MultiplayerMessageHandlers.cpp =====
int __fastcall `global constructor keyed to'.._.._sources_Game_Multiplayer_MultiplayerMessageHandlers.cpp(CMessage *a1)
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

  dword_9A63D8 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9A63D4 = 1056964608;
  messageCreationMap = CMessage::InitializeMessageRegistration(a1);
  byte_9A63DD = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgStartGame",
                  (const char *)GetNewInstance<CMsgStartGame>,
                  v1);
  byte_9A63DE = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgControllerAction",
                  (const char *)GetNewInstance<CMsgControllerAction>,
                  v2);
  byte_9A63DF = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgAttackResult",
                  (const char *)GetNewInstance<CMsgAttackResult>,
                  v3);
  byte_9A63E0 = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgRaisedEvent",
                  (const char *)GetNewInstance<CMsgRaisedEvent>,
                  v4);
  byte_9A63E1 = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgMenuReady",
                  (const char *)GetNewInstance<CMsgMenuReady>,
                  v5);
  byte_9A63E2 = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgScriptCmd",
                  (const char *)GetNewInstance<CMsgScriptCmd>,
                  v6);
  byte_9A63E3 = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgInitialSetup",
                  (const char *)GetNewInstance<CMsgInitialSetup>,
                  v7);
  byte_9A63E4 = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgQuestsSync",
                  (const char *)GetNewInstance<CMsgQuestsSync>,
                  v8);
  byte_9A63E5 = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgDropLoot",
                  (const char *)GetNewInstance<CMsgDropLoot>,
                  v9);
  byte_9A63E6 = CMessage::RegisterMessageType((CMessage *)"CMsgIsHost", (const char *)GetNewInstance<CMsgIsHost>, v10);
  byte_9A63E7 = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgSpawnObject",
                  (const char *)GetNewInstance<CMsgSpawnObject>,
                  v11);
  byte_9A63E8 = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgGlobalDeath",
                  (const char *)GetNewInstance<CMsgGlobalDeath>,
                  v12);
  v14 = (CMessage *)CMessage::RegisterMessageType(
                      (CMessage *)"CMsgAskResendAttributes",
                      (const char *)GetNewInstance<CMsgAskResendAttributes>,
                      v13);
  byte_9A63E9 = (char)v14;
  result = CMessage::TerminateMessageRegistration(v14);
  byte_9A63EA = result;
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


// ===== 49fb0c OnlineGameState::processMessages(void) =====
int __fastcall OnlineGameState::processMessages(OnlineGameState *this)
{
  CMessaging *v1; // r0
  CMessaging *IsMessageReceived; // r0
  CMessaging *v3; // r0
  CMessaging *Instance; // r0
  CMessaging *v5; // r0
  CMessaging *v6; // r0
  CMessaging *v7; // r0
  CMessaging *v8; // r0
  CMessaging *v9; // r0
  CMessaging *v10; // r0
  CMessaging *v11; // r0
  CMessaging *v12; // r0
  CMessaging *v13; // r0
  CMessaging *v14; // r0
  CMessaging *v15; // r0
  CMessaging *v16; // r0
  CMessaging *v17; // r0
  CMessaging *v18; // r0
  CMessaging *v19; // r0
  int IsInitialized; // r0
  CMessaging *v21; // r0
  CMessaging *v22; // r0
  CMessaging *v23; // r0
  int result; // r0
  int v25; // r4
  int i3; // r5
  int v27; // r4
  _DWORD *i2; // r5
  CNetPlayerManager *NetPlayerMgr; // r0
  int v30; // r0
  int v31; // r4
  int i1; // r5
  int v33; // r0
  int v34; // r4
  int nn; // r5
  int v36; // r4
  _DWORD *mm; // r5
  int v38; // r4
  _DWORD *kk; // r5
  int v40; // r4
  _DWORD *jj; // r5
  int v42; // r4
  _DWORD *ii; // r5
  int v44; // r4
  _DWORD *n; // r5
  int v46; // r4
  _DWORD *m; // r5
  int v48; // r4
  _DWORD *k; // r5
  int v50; // r4
  _DWORD *j; // r5
  int v52; // r4
  _DWORD *i; // r5

  v1 = (CMessaging *)CMessaging::Get(this);
  IsMessageReceived = (CMessaging *)CMessaging::IsMessageReceived(v1, "CMsgStartGame");
  if ( IsMessageReceived )
  {
    IsMessageReceived = (CMessaging *)OnlineSingleton<OnlineGameState>::GetInstance();
    v52 = *((_DWORD *)IsMessageReceived + 2);
    for ( i = (_DWORD *)((char *)IsMessageReceived + 4); v52; v52 = *(_DWORD *)(v52 + 8) )
    {
      if ( !*(_DWORD *)v52 )
        IsMessageReceived = (CMessaging *)(*(int (__fastcall **)(_DWORD))(v52 + 4))(i[3]);
    }
  }
  v3 = (CMessaging *)CMessaging::Get(IsMessageReceived);
  Instance = (CMessaging *)CMessaging::IsMessageReceived(v3, "CMsgIsHost");
  if ( Instance )
  {
    Instance = (CMessaging *)OnlineSingleton<OnlineGameState>::GetInstance();
    v50 = *((_DWORD *)Instance + 2);
    for ( j = (_DWORD *)((char *)Instance + 4); v50; v50 = *(_DWORD *)(v50 + 8) )
    {
      if ( *(_DWORD *)v50 == 10 )
        Instance = (CMessaging *)(*(int (__fastcall **)(_DWORD))(v50 + 4))(j[3]);
    }
  }
  v5 = (CMessaging *)CMessaging::Get(Instance);
  v6 = (CMessaging *)CMessaging::IsMessageReceived(v5, "CMsgSpawnObject");
  if ( v6 )
  {
    v6 = (CMessaging *)OnlineSingleton<OnlineGameState>::GetInstance();
    v48 = *((_DWORD *)v6 + 2);
    for ( k = (_DWORD *)((char *)v6 + 4); v48; v48 = *(_DWORD *)(v48 + 8) )
    {
      if ( *(_DWORD *)v48 == 5 )
        v6 = (CMessaging *)(*(int (__fastcall **)(_DWORD))(v48 + 4))(k[3]);
    }
  }
  v7 = (CMessaging *)CMessaging::Get(v6);
  v8 = (CMessaging *)CMessaging::IsMessageReceived(v7, "CMsgMenuReady");
  if ( v8 )
  {
    v8 = (CMessaging *)OnlineSingleton<OnlineGameState>::GetInstance();
    v46 = *((_DWORD *)v8 + 2);
    for ( m = (_DWORD *)((char *)v8 + 4); v46; v46 = *(_DWORD *)(v46 + 8) )
    {
      if ( *(_DWORD *)v46 == 6 )
        v8 = (CMessaging *)(*(int (__fastcall **)(_DWORD))(v46 + 4))(m[3]);
    }
  }
  v9 = (CMessaging *)CMessaging::Get(v8);
  v10 = (CMessaging *)CMessaging::IsMessageReceived(v9, "CMsgAttackResult");
  if ( v10 )
  {
    v10 = (CMessaging *)OnlineSingleton<OnlineGameState>::GetInstance();
    v44 = *((_DWORD *)v10 + 2);
    for ( n = (_DWORD *)((char *)v10 + 4); v44; v44 = *(_DWORD *)(v44 + 8) )
    {
      if ( *(_DWORD *)v44 == 2 )
        v10 = (CMessaging *)(*(int (__fastcall **)(_DWORD))(v44 + 4))(n[3]);
    }
  }
  v11 = (CMessaging *)CMessaging::Get(v10);
  v12 = (CMessaging *)CMessaging::IsMessageReceived(v11, "CMsgRaisedEvent");
  if ( v12 )
  {
    v12 = (CMessaging *)OnlineSingleton<OnlineGameState>::GetInstance();
    v42 = *((_DWORD *)v12 + 2);
    for ( ii = (_DWORD *)((char *)v12 + 4); v42; v42 = *(_DWORD *)(v42 + 8) )
    {
      if ( *(_DWORD *)v42 == 3 )
        v12 = (CMessaging *)(*(int (__fastcall **)(_DWORD))(v42 + 4))(ii[3]);
    }
  }
  v13 = (CMessaging *)CMessaging::Get(v12);
  v14 = (CMessaging *)CMessaging::IsMessageReceived(v13, "CMsgDropLoot");
  if ( v14 )
  {
    v14 = (CMessaging *)OnlineSingleton<OnlineGameState>::GetInstance();
    v40 = *((_DWORD *)v14 + 2);
    for ( jj = (_DWORD *)((char *)v14 + 4); v40; v40 = *(_DWORD *)(v40 + 8) )
    {
      if ( *(_DWORD *)v40 == 4 )
        v14 = (CMessaging *)(*(int (__fastcall **)(_DWORD))(v40 + 4))(jj[3]);
    }
  }
  v15 = (CMessaging *)CMessaging::Get(v14);
  v16 = (CMessaging *)CMessaging::IsMessageReceived(v15, "CMsgScriptCmd");
  if ( v16 )
  {
    v16 = (CMessaging *)OnlineSingleton<OnlineGameState>::GetInstance();
    v38 = *((_DWORD *)v16 + 2);
    for ( kk = (_DWORD *)((char *)v16 + 4); v38; v38 = *(_DWORD *)(v38 + 8) )
    {
      if ( *(_DWORD *)v38 == 7 )
        v16 = (CMessaging *)(*(int (__fastcall **)(_DWORD))(v38 + 4))(kk[3]);
    }
  }
  v17 = (CMessaging *)CMessaging::Get(v16);
  v18 = (CMessaging *)CMessaging::IsMessageReceived(v17, "CMsgInitialSetup");
  if ( v18 )
  {
    v18 = (CMessaging *)OnlineSingleton<OnlineGameState>::GetInstance();
    v36 = *((_DWORD *)v18 + 2);
    for ( mm = (_DWORD *)((char *)v18 + 4); v36; v36 = *(_DWORD *)(v36 + 8) )
    {
      if ( *(_DWORD *)v36 == 8 )
        v18 = (CMessaging *)(*(int (__fastcall **)(_DWORD))(v36 + 4))(mm[3]);
    }
  }
  v19 = (CMessaging *)CMessaging::Get(v18);
  if ( CMessaging::IsMessageReceived(v19, "CMsgQuestsSync") )
  {
    v33 = OnlineSingleton<OnlineGameState>::GetInstance();
    v34 = *(_DWORD *)(v33 + 8);
    for ( nn = v33 + 4; v34; v34 = *(_DWORD *)(v34 + 8) )
    {
      if ( *(_DWORD *)v34 == 9 )
        (*(void (__fastcall **)(_DWORD))(v34 + 4))(*(_DWORD *)(nn + 12));
    }
  }
  IsInitialized = OnlineSingleton<OnlineGameState>::GetInstance();
  if ( *(_BYTE *)(IsInitialized + 36) )
  {
    NetPlayerMgr = (CNetPlayerManager *)GetNetPlayerMgr();
    IsInitialized = CNetPlayerManager::IsInitialized(NetPlayerMgr);
    if ( IsInitialized )
    {
      v30 = GetNetPlayerMgr();
      IsInitialized = CEventQueueBase::HasEventOccured((CEventQueueBase *)(v30 + 384), 3145728, 0);
      if ( IsInitialized )
      {
        IsInitialized = OnlineSingleton<OnlineGameState>::GetInstance();
        v31 = *(_DWORD *)(IsInitialized + 8);
        for ( i1 = IsInitialized + 4; v31; v31 = *(_DWORD *)(v31 + 8) )
        {
          if ( *(_DWORD *)v31 == 13 )
            IsInitialized = (*(int (__fastcall **)(_DWORD))(v31 + 4))(*(_DWORD *)(i1 + 12));
        }
      }
    }
  }
  v21 = (CMessaging *)CMessaging::Get((CMessaging *)IsInitialized);
  v22 = (CMessaging *)CMessaging::IsMessageReceived(v21, "CMsgGlobalDeath");
  if ( v22 )
  {
    v22 = (CMessaging *)OnlineSingleton<OnlineGameState>::GetInstance();
    v27 = *((_DWORD *)v22 + 2);
    for ( i2 = (_DWORD *)((char *)v22 + 4); v27; v27 = *(_DWORD *)(v27 + 8) )
    {
      if ( *(_DWORD *)v27 == 11 )
        v22 = (CMessaging *)(*(int (__fastcall **)(_DWORD))(v27 + 4))(i2[3]);
    }
  }
  v23 = (CMessaging *)CMessaging::Get(v22);
  result = CMessaging::IsMessageReceived(v23, "CMsgAskResendAttributes");
  if ( result )
  {
    result = OnlineSingleton<OnlineGameState>::GetInstance();
    v25 = *(_DWORD *)(result + 8);
    for ( i3 = result + 4; v25; v25 = *(_DWORD *)(v25 + 8) )
    {
      if ( *(_DWORD *)v25 == 12 )
        result = (*(int (__fastcall **)(_DWORD))(v25 + 4))(*(_DWORD *)(i3 + 12));
    }
  }
  return result;
}


// ===== 49ffe0 OnlineGameState::OnlineGameState(void) =====
void __fastcall OnlineGameState::OnlineGameState(OnlineGameState *this)
{
  *((_DWORD *)this + 2) = 0;
  *((_DWORD *)this + 3) = (char *)this + 8;
  *((_DWORD *)this + 22) = 0;
  *((_BYTE *)this + 4) = 1;
  *(_DWORD *)this = off_968348;
  *((_DWORD *)this + 4) = 0;
  *((_BYTE *)this + 40) = 0;
  *((_BYTE *)this + 77) = 0;
  *((_BYTE *)this + 78) = 0;
  *((_DWORD *)this + 20) = 0;
  *((_DWORD *)this + 21) = 0;
}


// ===== 4a0040 OnlineGameState::OnlineGameState(void) =====
void __fastcall OnlineGameState::OnlineGameState(OnlineGameState *this)
{
  *((_DWORD *)this + 2) = 0;
  *((_DWORD *)this + 3) = (char *)this + 8;
  *((_DWORD *)this + 22) = 0;
  *((_BYTE *)this + 4) = 1;
  *(_DWORD *)this = off_968348;
  *((_DWORD *)this + 4) = 0;
  *((_BYTE *)this + 40) = 0;
  *((_BYTE *)this + 77) = 0;
  *((_BYTE *)this + 78) = 0;
  *((_DWORD *)this + 20) = 0;
  *((_DWORD *)this + 21) = 0;
}


// ===== 4a00a0 OnlineGameState::timevaldiff(timeval *,timeval *) =====
int __fastcall OnlineGameState::timevaldiff(OnlineGameState *this, timeval *a2, timeval *a3)
{
  return (a3->tv_usec - a2->tv_usec) / 1000 + 1000 * (a3->tv_sec - a2->tv_sec);
}


// ===== 4a00d8 MultiplayerStateMachine::initStateMachine(void) =====
_DWORD *__fastcall MultiplayerStateMachine::initStateMachine(_DWORD *this)
{
  *(this + 2) = 0;
  *this = -1;
  *(this + 3) = this + 2;
  *(this + 1) = 0;
  return this;
}


// ===== 4a00f8 MultiplayerStateMachine::replaceStateEntryCallbackFunc(int,int (*)(void *)) =====
int __fastcall MultiplayerStateMachine::replaceStateEntryCallbackFunc(int this, int a2, int (*a3)(void *))
{
  _DWORD *v3; // r3

  v3 = *(_DWORD **)(this + 8);
  if ( v3 )
  {
    while ( 1 )
    {
      this = v3[1];
      if ( this == a2 )
        break;
      v3 = (_DWORD *)v3[3];
      if ( !v3 )
        return this;
    }
    v3[2] = a3;
  }
  return this;
}


// ===== 4a012c MultiplayerStateMachine::skipState(int) =====
int __fastcall MultiplayerStateMachine::skipState(int this, int a2)
{
  int v2; // r3

  v2 = *(_DWORD *)(this + 8);
  if ( v2 )
  {
    while ( *(_DWORD *)(v2 + 4) != a2 )
    {
      v2 = *(_DWORD *)(v2 + 12);
      if ( !v2 )
        return this;
    }
    *(_BYTE *)v2 = 1;
  }
  return this;
}


// ===== 4a0164 MultiplayerStateMachine::runStateMachine(void) =====
int __fastcall MultiplayerStateMachine::runStateMachine(int this)
{
  int *v1; // r5
  int v2; // r3
  unsigned __int8 *v3; // r4

  v1 = (int *)this;
  if ( *(_DWORD *)(this + 4) )
  {
    v2 = *(_DWORD *)this;
    if ( *(_DWORD *)this != -1 )
    {
      v3 = *(unsigned __int8 **)(this + 8);
      if ( v3 )
      {
        while ( 1 )
        {
          if ( v2 != *((_DWORD *)v3 + 1) || (this = *v3) != 0 )
          {
            v3 = *((unsigned __int8 **)v3 + 3);
            if ( !v3 )
              return this;
          }
          else
          {
            this = (*((int (**)(void))v3 + 2))();
            if ( this >= 0 )
              *v1 = this;
            v3 = *((unsigned __int8 **)v3 + 3);
            if ( !v3 )
              return this;
          }
          v2 = *v1;
        }
      }
    }
  }
  return this;
}


// ===== 4a01dc MultiplayerStateMachine::removeStateEntry(int) =====
void __fastcall MultiplayerStateMachine::removeStateEntry(MultiplayerStateMachine *this, int a2)
{
  _DWORD *v3; // r0
  int v4; // r2
  _DWORD *v5; // r3
  bool v6; // zf

  v3 = *((_DWORD **)this + 2);
  if ( v3 )
  {
    v4 = v3[1];
    v5 = (_DWORD *)v3[3];
    if ( v4 == a2 )
    {
LABEL_5:
      v6 = v5 == nullptr;
      if ( v5 )
        v4 = v3[4];
      else
        v5 = (_DWORD *)v3[4];
      if ( v6 )
        *((_DWORD *)this + 3) = v5;
      else
        v5[4] = v4;
      *(_DWORD *)v3[4] = v3[3];
      free(v3);
      --*((_DWORD *)this + 1);
    }
    else
    {
      while ( 1 )
      {
        v3 = v5;
        if ( !v5 )
          break;
        v4 = v5[1];
        v5 = (_DWORD *)v5[3];
        if ( v4 == a2 )
          goto LABEL_5;
      }
    }
  }
}


// ===== 4a0254 MultiplayerStateMachine::destroyStateMachine(void) =====
_DWORD *__fastcall MultiplayerStateMachine::destroyStateMachine(MultiplayerStateMachine *this, int a2, int a3)
{
  _DWORD *result; // r0
  int v5; // r3
  bool v6; // zf

  for ( result = *((_DWORD **)this + 2); result; result = *((_DWORD **)this + 2) )
  {
    v5 = result[3];
    v6 = v5 == 0;
    if ( v5 )
      a3 = result[4];
    else
      v5 = result[4];
    if ( v6 )
      *((_DWORD *)this + 3) = v5;
    else
      *(_DWORD *)(v5 + 16) = a3;
    *(_DWORD *)result[4] = result[3];
    free(result);
  }
  return result;
}


// ===== 4a02a0 MultiplayerStateMachine::addStateEntry(int,int (*)(void *),bool) =====
_DWORD *__fastcall MultiplayerStateMachine::addStateEntry(
        MultiplayerStateMachine *this,
        int a2,
        int (*a3)(void *),
        bool a4)
{
  _DWORD *result; // r0
  _DWORD *v9; // r3
  int v10; // r3

  result = LC_API_MALLOC_0(0x14u);
  if ( result )
  {
    *(_BYTE *)result = a4;
    result[1] = a2;
    result[2] = a3;
    result[3] = 0;
    v9 = *((_DWORD **)this + 3);
    result[4] = v9;
    *v9 = result;
    v10 = *((_DWORD *)this + 1);
    *((_DWORD *)this + 3) = result + 3;
    *((_DWORD *)this + 1) = v10 + 1;
  }
  return result;
}


// ===== 4a02f8 OnlineGameState::GlliveRoomCreationTimeOutExpired(void) =====
bool __fastcall OnlineGameState::GlliveRoomCreationTimeOutExpired(OnlineGameState *this)
{
  timeval v3; // [sp+0h] [bp-Ch] BYREF

  gettimeofday(&v3, nullptr);
  return OnlineGameState::timevaldiff(this, (timeval *)((char *)this + 68), &v3) > 90000;
}


// ===== 4a0340 OnlineGameState::GlliveStartGameTimeOutExpired(void) =====
bool __fastcall OnlineGameState::GlliveStartGameTimeOutExpired(OnlineGameState *this)
{
  timeval v3; // [sp+0h] [bp-Ch] BYREF

  gettimeofday(&v3, nullptr);
  return OnlineGameState::timevaldiff(this, (timeval *)((char *)this + 60), &v3) > 90000;
}


// ===== 4a0388 OnlineGameState::Destroy(void) =====
_DWORD *__fastcall OnlineGameState::Destroy(OnlineGameState *this)
{
  int Instance; // r0
  int v2; // r1
  int v3; // r2

  Instance = OnlineSingleton<OnlineGameState>::GetInstance();
  return MultiplayerStateMachine::destroyStateMachine((MultiplayerStateMachine *)(Instance + 20), v2, v3);
}


// ===== 4a039c OnlineGameState::Update(void) =====
int __fastcall OnlineGameState::Update(OnlineGameState *this)
{
  OnlineGameState *v1; // r0
  int v2; // r0
  OnlineGameState *Instance; // r0

  if ( *(_BYTE *)(GetOnline() + 5) )
  {
    Instance = (OnlineGameState *)OnlineSingleton<OnlineGameState>::GetInstance();
    OnlineGameState::processEvents(Instance);
  }
  if ( *(_BYTE *)(GetOnline() + 5) )
  {
    v1 = (OnlineGameState *)OnlineSingleton<OnlineGameState>::GetInstance();
    OnlineGameState::processMessages(v1);
  }
  v2 = OnlineSingleton<OnlineGameState>::GetInstance();
  return MultiplayerStateMachine::runStateMachine(v2 + 20);
}


// ===== 4a03e4 `global constructor keyed to'.._.._sources_Game_Multiplayer_MultiplayerStateMachine.cpp =====
int `global constructor keyed to'.._.._sources_Game_Multiplayer_MultiplayerStateMachine.cpp()
{
  int result; // r0

  result = `guard variable for'Singleton<PlayerStatManager>::s_inst;
  dword_9A63F4 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9A63F0 = 1056964608;
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


// ===== 4a04c0 OnlineGameState::Init(int) =====
int __fastcall OnlineGameState::Init(OnlineGameState *this, int a2)
{
  int Instance; // r0
  int v5; // r0
  int v6; // r0
  int v7; // r0
  int v8; // r0
  int v9; // r0
  int v10; // r0
  int v11; // r0
  int v12; // r0
  int v13; // r0
  int v14; // r8
  _DWORD *v15; // r3
  int v16; // r0
  int v17; // r8
  _DWORD *v18; // r3
  int v19; // r0
  int v20; // r8
  _DWORD *v21; // r3
  int v22; // r0
  int v23; // r8
  _DWORD *v24; // r3
  int v25; // r0
  int v26; // r8
  _DWORD *v27; // r3
  int v28; // r0
  int v29; // r8
  _DWORD *v30; // r3
  int v31; // r0
  int v32; // r8
  _DWORD *v33; // r3
  int v34; // r0
  int v35; // r8
  _DWORD *v36; // r3
  int v37; // r0
  int v38; // r8
  _DWORD *v39; // r3
  int v40; // r0
  int v41; // r8
  _DWORD *v42; // r3
  int v43; // r0
  int v44; // r8
  _DWORD *v45; // r3
  int v46; // r0
  int v47; // r8
  _DWORD *v48; // r3
  int v49; // r0
  int v50; // r8
  _DWORD *v51; // r3
  int v52; // r0
  int v53; // r8
  _DWORD *v54; // r3
  int v55; // r0
  int v56; // r8
  _DWORD *v57; // r3
  COnlineImpl *Online; // r0
  CMatching *v59; // r0
  int result; // r0
  _DWORD *v61; // r0
  _DWORD *v62; // r0
  _DWORD *v63; // r0
  _DWORD *v64; // r0
  _DWORD *v65; // r0
  _DWORD *v66; // r0
  _DWORD *v67; // r0
  _DWORD *v68; // r0
  _DWORD *v69; // r0
  _DWORD *v70; // r0
  _DWORD *v71; // r0
  _DWORD *v72; // r0
  _DWORD *v73; // r0
  _DWORD *v74; // r0
  _DWORD *v75; // r0
  CMatching *v76; // r0
  int v77; // r10
  std::string *v78; // r7
  CMatching *v79; // r0
  GameCenter *v80; // r0
  GameCenter *v81; // r0
  const char **v82; // r0
  _BOOL4 IsHost; // r0
  GameCenter *v84; // r0
  int v85; // r0
  char *v86; // r3
  int *v87; // r4
  std::string *v88; // r0
  char *v89; // r5
  char *v90; // r8
  char *node; // r0
  char **v92; // r3
  char **v93; // r3
  int v94; // r1
  const char **v95; // r0
  _BOOL4 v96; // r0
  int v97; // r0
  COnline *v98; // r0
  int v99; // r7
  CMatching *v100; // r0
  CMatching *v101; // r0
  CMatching *v102; // r0
  COnlineImpl *v103; // r0
  CMatching *IsSignedIn; // r0
  int v105; // r0
  CMatching *v106; // r0
  int v107; // r0
  COnline *v108; // r0
  CMatching *v109; // r0
  CMatching *v110; // r0
  CMatching *v111; // r0
  int v112; // r0
  int Switch; // r9
  DH2_PlayerInfoCharacterPrefix *LocalPlayer; // r0
  unsigned int v115; // r1
  CMatching *v116; // r0
  CMatchingGLLive *v117; // r9
  CMatching *v118; // r0
  int v119; // r0
  COnline *v120; // r0
  int v121; // r7
  CMatching *v122; // r0
  CMatching *v123; // r0
  CMatching *v124; // r0
  int v125; // r0
  CMatching *v126; // r0
  int v127; // r0
  COnline *v128; // r0
  COnlineImpl *v129; // r0
  int *i; // r6
  int *v131; // r3
  int *v132; // r8
  DH2_PlayerInfoCharacterPrefix *v133; // r0
  glitch::os::Timer *v134; // r0
  int v135; // r12
  _BYTE *v136; // r3
  int RealTime; // r9
  int v138; // r9
  int v139; // r9
  int VersionNumber; // r0
  CMatching *v141; // r0
  int v142; // r0
  int v143; // r3
  int v144; // [sp+0h] [bp-8E4h]
  char *v145; // [sp+4h] [bp-8E0h]
  int v146; // [sp+4h] [bp-8E0h]
  int v147; // [sp+4h] [bp-8E0h]
  int v148; // [sp+4h] [bp-8E0h]
  char *v149; // [sp+8h] [bp-8DCh]
  DebugSwitches *v150; // [sp+8h] [bp-8DCh]
  bool v151; // [sp+Ch] [bp-8D8h]
  int CurrentPrimaryQuest; // [sp+Ch] [bp-8D8h]
  int v153; // [sp+14h] [bp-8D0h]
  char **v154; // [sp+18h] [bp-8CCh] BYREF
  char **v155; // [sp+1Ch] [bp-8C8h]
  char *v156[4]; // [sp+3B0h] [bp-534h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v157[16]; // [sp+3E4h] [bp-500h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v158[2]; // [sp+57Ch] [bp-368h] BYREF
  int v159; // [sp+5ACh] [bp-338h]
  int v160; // [sp+5B0h] [bp-334h]
  char v161[124]; // [sp+714h] [bp-1D0h] BYREF
  char v162[60]; // [sp+794h] [bp-150h] BYREF
  std::string v163; // [sp+7D4h] [bp-110h] BYREF
  std::string v164; // [sp+7ECh] [bp-F8h] BYREF
  std::string v165; // [sp+804h] [bp-E0h] BYREF
  std::string v166; // [sp+81Ch] [bp-C8h] BYREF
  std::string v167; // [sp+834h] [bp-B0h] BYREF
  std::string v168; // [sp+84Ch] [bp-98h] BYREF
  std::string v169; // [sp+864h] [bp-80h] BYREF
  std::string v170; // [sp+87Ch] [bp-68h] BYREF
  std::string v171; // [sp+894h] [bp-50h] BYREF
  std::string v172; // [sp+8ACh] [bp-38h] BYREF
  std::string v173; // [sp+8C4h] [bp-20h] BYREF
  _BYTE v174[4]; // [sp+8E0h] [bp-4h] BYREF
  std::string v175; // 0:kr00_24.24

  Instance = OnlineSingleton<OnlineGameState>::GetInstance();
  MultiplayerStateMachine::initStateMachine((_DWORD *)(Instance + 20));
  v5 = OnlineSingleton<OnlineGameState>::GetInstance();
  MultiplayerStateMachine::addStateEntry(
    (MultiplayerStateMachine *)(v5 + 20),
    100,
    (int (*)(void *))MultiplayerCallback::idleState,
    0);
  v6 = OnlineSingleton<OnlineGameState>::GetInstance();
  MultiplayerStateMachine::addStateEntry(
    (MultiplayerStateMachine *)(v6 + 20),
    300,
    (int (*)(void *))MultiplayerCallback::ingameState,
    0);
  v7 = OnlineSingleton<OnlineGameState>::GetInstance();
  MultiplayerStateMachine::addStateEntry(
    (MultiplayerStateMachine *)(v7 + 20),
    101,
    (int (*)(void *))MultiplayerCallback::createRoom,
    0);
  v8 = OnlineSingleton<OnlineGameState>::GetInstance();
  MultiplayerStateMachine::addStateEntry(
    (MultiplayerStateMachine *)(v8 + 20),
    102,
    (int (*)(void *))MultiplayerCallback::searchRoom,
    0);
  v9 = OnlineSingleton<OnlineGameState>::GetInstance();
  MultiplayerStateMachine::addStateEntry(
    (MultiplayerStateMachine *)(v9 + 20),
    104,
    (int (*)(void *))MultiplayerCallback::searchRoomPushNotif,
    0);
  v10 = OnlineSingleton<OnlineGameState>::GetInstance();
  MultiplayerStateMachine::addStateEntry(
    (MultiplayerStateMachine *)(v10 + 20),
    103,
    (int (*)(void *))MultiplayerCallback::joinRoom,
    0);
  v11 = OnlineSingleton<OnlineGameState>::GetInstance();
  MultiplayerStateMachine::addStateEntry(
    (MultiplayerStateMachine *)(v11 + 20),
    200,
    (int (*)(void *))MultiplayerCallback::lobbyUpdate,
    0);
  v12 = OnlineSingleton<OnlineGameState>::GetInstance();
  MultiplayerStateMachine::addStateEntry(
    (MultiplayerStateMachine *)(v12 + 20),
    201,
    (int (*)(void *))MultiplayerCallback::roomLobbyUpdate,
    0);
  v13 = OnlineSingleton<OnlineGameState>::GetInstance();
  v14 = v13;
  if ( *(_BYTE *)(v13 + 4) )
  {
    v15 = *(_DWORD **)(v13 + 8);
    if ( v15 )
    {
      while ( *v15 )
      {
        v15 = (_DWORD *)v15[2];
        if ( !v15 )
          goto LABEL_117;
      }
      v15[1] = MultiplayerCallback::HandleStartGameMessage;
    }
    else
    {
LABEL_117:
      v71 = LC_API_MALLOC_0(0x10u);
      if ( v71 )
      {
        v71[2] = 0;
        *v71 = 0;
        v71[1] = MultiplayerCallback::HandleStartGameMessage;
        v71[3] = *(_DWORD *)(v14 + 12);
        **(_DWORD **)(v14 + 12) = v71;
        *(_DWORD *)(v14 + 12) = v71 + 2;
      }
    }
  }
  v16 = OnlineSingleton<OnlineGameState>::GetInstance();
  v17 = v16;
  if ( *(_BYTE *)(v16 + 4) )
  {
    v18 = *(_DWORD **)(v16 + 8);
    if ( v18 )
    {
      while ( *v18 != 6 )
      {
        v18 = (_DWORD *)v18[2];
        if ( !v18 )
          goto LABEL_115;
      }
      v18[1] = MultiplayerCallback::HandleMenuReadyMessage;
    }
    else
    {
LABEL_115:
      v70 = LC_API_MALLOC_0(0x10u);
      if ( v70 )
      {
        *v70 = 6;
        v70[2] = 0;
        v70[1] = MultiplayerCallback::HandleMenuReadyMessage;
        v70[3] = *(_DWORD *)(v17 + 12);
        **(_DWORD **)(v17 + 12) = v70;
        *(_DWORD *)(v17 + 12) = v70 + 2;
      }
    }
  }
  v19 = OnlineSingleton<OnlineGameState>::GetInstance();
  v20 = v19;
  if ( *(_BYTE *)(v19 + 4) )
  {
    v21 = *(_DWORD **)(v19 + 8);
    if ( v21 )
    {
      while ( *v21 != 7 )
      {
        v21 = (_DWORD *)v21[2];
        if ( !v21 )
          goto LABEL_113;
      }
      v21[1] = MultiplayerCallback::HandleScriptCmd;
    }
    else
    {
LABEL_113:
      v69 = LC_API_MALLOC_0(0x10u);
      if ( v69 )
      {
        *v69 = 7;
        v69[2] = 0;
        v69[1] = MultiplayerCallback::HandleScriptCmd;
        v69[3] = *(_DWORD *)(v20 + 12);
        **(_DWORD **)(v20 + 12) = v69;
        *(_DWORD *)(v20 + 12) = v69 + 2;
      }
    }
  }
  v22 = OnlineSingleton<OnlineGameState>::GetInstance();
  v23 = v22;
  if ( *(_BYTE *)(v22 + 4) )
  {
    v24 = *(_DWORD **)(v22 + 8);
    if ( v24 )
    {
      while ( *v24 != 8 )
      {
        v24 = (_DWORD *)v24[2];
        if ( !v24 )
          goto LABEL_99;
      }
      v24[1] = MultiplayerCallback::HandleInitialMessage;
    }
    else
    {
LABEL_99:
      v62 = LC_API_MALLOC_0(0x10u);
      if ( v62 )
      {
        *v62 = 8;
        v62[2] = 0;
        v62[1] = MultiplayerCallback::HandleInitialMessage;
        v62[3] = *(_DWORD *)(v23 + 12);
        **(_DWORD **)(v23 + 12) = v62;
        *(_DWORD *)(v23 + 12) = v62 + 2;
      }
    }
  }
  v25 = OnlineSingleton<OnlineGameState>::GetInstance();
  v26 = v25;
  if ( *(_BYTE *)(v25 + 4) )
  {
    v27 = *(_DWORD **)(v25 + 8);
    if ( v27 )
    {
      while ( *v27 != 9 )
      {
        v27 = (_DWORD *)v27[2];
        if ( !v27 )
          goto LABEL_97;
      }
      v27[1] = MultiplayerCallback::HandleQuestsSyncMessage;
    }
    else
    {
LABEL_97:
      v61 = LC_API_MALLOC_0(0x10u);
      if ( v61 )
      {
        *v61 = 9;
        v61[2] = 0;
        v61[1] = MultiplayerCallback::HandleQuestsSyncMessage;
        v61[3] = *(_DWORD *)(v26 + 12);
        **(_DWORD **)(v26 + 12) = v61;
        *(_DWORD *)(v26 + 12) = v61 + 2;
      }
    }
  }
  v28 = OnlineSingleton<OnlineGameState>::GetInstance();
  v29 = v28;
  if ( *(_BYTE *)(v28 + 4) )
  {
    v30 = *(_DWORD **)(v28 + 8);
    if ( v30 )
    {
      while ( *v30 != 2 )
      {
        v30 = (_DWORD *)v30[2];
        if ( !v30 )
          goto LABEL_125;
      }
      v30[1] = MultiplayerCallback::HandleAttackMessage;
    }
    else
    {
LABEL_125:
      v75 = LC_API_MALLOC_0(0x10u);
      if ( v75 )
      {
        *v75 = 2;
        v75[2] = 0;
        v75[1] = MultiplayerCallback::HandleAttackMessage;
        v75[3] = *(_DWORD *)(v29 + 12);
        **(_DWORD **)(v29 + 12) = v75;
        *(_DWORD *)(v29 + 12) = v75 + 2;
      }
    }
  }
  v31 = OnlineSingleton<OnlineGameState>::GetInstance();
  v32 = v31;
  if ( *(_BYTE *)(v31 + 4) )
  {
    v33 = *(_DWORD **)(v31 + 8);
    if ( v33 )
    {
      while ( *v33 != 3 )
      {
        v33 = (_DWORD *)v33[2];
        if ( !v33 )
          goto LABEL_123;
      }
      v33[1] = MultiplayerCallback::HandleRaisedEventMessage;
    }
    else
    {
LABEL_123:
      v74 = LC_API_MALLOC_0(0x10u);
      if ( v74 )
      {
        *v74 = 3;
        v74[2] = 0;
        v74[1] = MultiplayerCallback::HandleRaisedEventMessage;
        v74[3] = *(_DWORD *)(v32 + 12);
        **(_DWORD **)(v32 + 12) = v74;
        *(_DWORD *)(v32 + 12) = v74 + 2;
      }
    }
  }
  v34 = OnlineSingleton<OnlineGameState>::GetInstance();
  v35 = v34;
  if ( *(_BYTE *)(v34 + 4) )
  {
    v36 = *(_DWORD **)(v34 + 8);
    if ( v36 )
    {
      while ( *v36 != 4 )
      {
        v36 = (_DWORD *)v36[2];
        if ( !v36 )
          goto LABEL_121;
      }
      v36[1] = MultiplayerCallback::HandleLootMessage;
    }
    else
    {
LABEL_121:
      v73 = LC_API_MALLOC_0(0x10u);
      if ( v73 )
      {
        *v73 = 4;
        v73[2] = 0;
        v73[1] = MultiplayerCallback::HandleLootMessage;
        v73[3] = *(_DWORD *)(v35 + 12);
        **(_DWORD **)(v35 + 12) = v73;
        *(_DWORD *)(v35 + 12) = v73 + 2;
      }
    }
  }
  v37 = OnlineSingleton<OnlineGameState>::GetInstance();
  v38 = v37;
  if ( *(_BYTE *)(v37 + 4) )
  {
    v39 = *(_DWORD **)(v37 + 8);
    if ( v39 )
    {
      while ( *v39 != 5 )
      {
        v39 = (_DWORD *)v39[2];
        if ( !v39 )
          goto LABEL_119;
      }
      v39[1] = MultiplayerCallback::HandleSpawnObjectMessage;
    }
    else
    {
LABEL_119:
      v72 = LC_API_MALLOC_0(0x10u);
      if ( v72 )
      {
        *v72 = 5;
        v72[2] = 0;
        v72[1] = MultiplayerCallback::HandleSpawnObjectMessage;
        v72[3] = *(_DWORD *)(v38 + 12);
        **(_DWORD **)(v38 + 12) = v72;
        *(_DWORD *)(v38 + 12) = v72 + 2;
      }
    }
  }
  v40 = OnlineSingleton<OnlineGameState>::GetInstance();
  v41 = v40;
  if ( *(_BYTE *)(v40 + 4) )
  {
    v42 = *(_DWORD **)(v40 + 8);
    if ( v42 )
    {
      while ( *v42 != 10 )
      {
        v42 = (_DWORD *)v42[2];
        if ( !v42 )
          goto LABEL_111;
      }
      v42[1] = MultiplayerCallback::HandleIsHostMessage;
    }
    else
    {
LABEL_111:
      v68 = LC_API_MALLOC_0(0x10u);
      if ( v68 )
      {
        *v68 = 10;
        v68[2] = 0;
        v68[1] = MultiplayerCallback::HandleIsHostMessage;
        v68[3] = *(_DWORD *)(v41 + 12);
        **(_DWORD **)(v41 + 12) = v68;
        *(_DWORD *)(v41 + 12) = v68 + 2;
      }
    }
  }
  v43 = OnlineSingleton<OnlineGameState>::GetInstance();
  v44 = v43;
  if ( *(_BYTE *)(v43 + 4) )
  {
    v45 = *(_DWORD **)(v43 + 8);
    if ( v45 )
    {
      while ( *v45 != 11 )
      {
        v45 = (_DWORD *)v45[2];
        if ( !v45 )
          goto LABEL_109;
      }
      v45[1] = MultiplayerCallback::HandleGlobalDeathMessage;
    }
    else
    {
LABEL_109:
      v67 = LC_API_MALLOC_0(0x10u);
      if ( v67 )
      {
        *v67 = 11;
        v67[2] = 0;
        v67[1] = MultiplayerCallback::HandleGlobalDeathMessage;
        v67[3] = *(_DWORD *)(v44 + 12);
        **(_DWORD **)(v44 + 12) = v67;
        *(_DWORD *)(v44 + 12) = v67 + 2;
      }
    }
  }
  v46 = OnlineSingleton<OnlineGameState>::GetInstance();
  v47 = v46;
  if ( *(_BYTE *)(v46 + 4) )
  {
    v48 = *(_DWORD **)(v46 + 8);
    if ( v48 )
    {
      while ( *v48 != 12 )
      {
        v48 = (_DWORD *)v48[2];
        if ( !v48 )
          goto LABEL_107;
      }
      v48[1] = MultiplayerCallback::HandleAskResendAttributesMessage;
    }
    else
    {
LABEL_107:
      v66 = LC_API_MALLOC_0(0x10u);
      if ( v66 )
      {
        *v66 = 12;
        v66[2] = 0;
        v66[1] = MultiplayerCallback::HandleAskResendAttributesMessage;
        v66[3] = *(_DWORD *)(v47 + 12);
        **(_DWORD **)(v47 + 12) = v66;
        *(_DWORD *)(v47 + 12) = v66 + 2;
      }
    }
  }
  v49 = OnlineSingleton<OnlineGameState>::GetInstance();
  v50 = v49;
  if ( *(_BYTE *)(v49 + 4) )
  {
    v51 = *(_DWORD **)(v49 + 8);
    if ( v51 )
    {
      while ( *v51 != 13 )
      {
        v51 = (_DWORD *)v51[2];
        if ( !v51 )
          goto LABEL_105;
      }
      v51[1] = MultiplayerCallback::HandlePlayerJoined;
    }
    else
    {
LABEL_105:
      v65 = LC_API_MALLOC_0(0x10u);
      if ( v65 )
      {
        *v65 = 13;
        v65[2] = 0;
        v65[1] = MultiplayerCallback::HandlePlayerJoined;
        v65[3] = *(_DWORD *)(v50 + 12);
        **(_DWORD **)(v50 + 12) = v65;
        *(_DWORD *)(v50 + 12) = v65 + 2;
      }
    }
  }
  v52 = OnlineSingleton<OnlineGameState>::GetInstance();
  v53 = v52;
  if ( *(_BYTE *)(v52 + 4) )
  {
    v54 = *(_DWORD **)(v52 + 8);
    if ( v54 )
    {
      while ( *v54 != 14 )
      {
        v54 = (_DWORD *)v54[2];
        if ( !v54 )
          goto LABEL_103;
      }
      v54[1] = MultiplayerCallback::HandlePlayerLeft;
    }
    else
    {
LABEL_103:
      v64 = LC_API_MALLOC_0(0x10u);
      if ( v64 )
      {
        *v64 = 14;
        v64[2] = 0;
        v64[1] = MultiplayerCallback::HandlePlayerLeft;
        v64[3] = *(_DWORD *)(v53 + 12);
        **(_DWORD **)(v53 + 12) = v64;
        *(_DWORD *)(v53 + 12) = v64 + 2;
      }
    }
  }
  v55 = OnlineSingleton<OnlineGameState>::GetInstance();
  v56 = v55;
  if ( *(_BYTE *)(v55 + 4) )
  {
    v57 = *(_DWORD **)(v55 + 8);
    if ( v57 )
    {
      while ( *v57 != 15 )
      {
        v57 = (_DWORD *)v57[2];
        if ( !v57 )
          goto LABEL_101;
      }
      v57[1] = MultiplayerCallback::HandleMenuBackButton;
    }
    else
    {
LABEL_101:
      v63 = LC_API_MALLOC_0(0x10u);
      if ( v63 )
      {
        *v63 = 15;
        v63[2] = 0;
        v63[1] = MultiplayerCallback::HandleMenuBackButton;
        v63[3] = *(_DWORD *)(v56 + 12);
        **(_DWORD **)(v56 + 12) = v63;
        *(_DWORD *)(v56 + 12) = v63 + 2;
      }
    }
  }
  Online = (COnlineImpl *)GetOnline();
  COnlineImpl::Initialize(Online);
  v59 = (CMatching *)GetOnline();
  if ( !*((_BYTE *)v59 + 5) )
  {
    switch ( a2 )
    {
      case 2:
        v123 = (CMatching *)CMatching::Get(v59);
        CMatching::Destroy(v123);
        *((_DWORD *)this + 13) = 2;
        v124 = (CMatching *)CMatching::SetMatchingProvider(2);
        v125 = CMatching::Get(v124);
        v126 = (CMatching *)(*(int (__fastcall **)(int))(*(_DWORD *)v125 + 44))(v125);
        v127 = CMatching::Get(v126);
        (*(void (__fastcall **)(int, int))(*(_DWORD *)v127 + 40))(v127, 2);
        v128 = (COnline *)GetOnline();
        COnline::SetIsOnlineGame(v128, 1);
        *(_BYTE *)(OnlineSingleton<OnlineGameState>::GetInstance() + 36) = 0;
        break;
      case 1:
        v101 = (CMatching *)CMatching::Get(v59);
        v102 = (CMatching *)CMatching::Destroy(v101);
        *((_DWORD *)this + 13) = 1;
        CMatching::Get(v102);
        CMatching::SetMatchingProvider(1);
        v103 = (COnlineImpl *)GetOnline();
        IsSignedIn = (CMatching *)COnlineImpl::IsSignedIn(v103);
        if ( !IsSignedIn )
        {
          v129 = (COnlineImpl *)GetOnline();
          IsSignedIn = (CMatching *)COnlineImpl::SignIn(v129);
        }
        v105 = CMatching::Get(IsSignedIn);
        v106 = (CMatching *)(*(int (__fastcall **)(int))(*(_DWORD *)v105 + 44))(v105);
        v107 = CMatching::Get(v106);
        (*(void (__fastcall **)(int, int))(*(_DWORD *)v107 + 40))(v107, 4);
        v108 = (COnline *)GetOnline();
        COnline::SetIsOnlineGame(v108, 1);
        *(_BYTE *)(OnlineSingleton<OnlineGameState>::GetInstance() + 36) = 0;
        break;
      case 3:
        *(_BYTE *)(OnlineSingleton<OnlineGameState>::GetInstance() + 38) = 0;
        v109 = (CMatching *)OnlineSingleton<OnlineGameState>::GetInstance();
        *((_BYTE *)v109 + 39) = 0;
        v110 = (CMatching *)CMatching::Get(v109);
        CMatching::Destroy(v110);
        *((_DWORD *)this + 13) = 3;
        v111 = (CMatching *)CMatching::SetMatchingProvider(3);
        v112 = CMatching::Get(v111);
        (*(void (__fastcall **)(int))(*(_DWORD *)v112 + 44))(v112);
        DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
        std::string::string(&v173, "ConnectToBetaServer");
        Switch = DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v173);
        std::string::~string(&v173);
        if ( Switch )
        {
          std::string::string(&v172, "1.0.1");
          if ( &v172 != (std::string *)&CMatchingGLLive::m_GameVersion )
            std::string::_M_assign(
              (std::string *const)&CMatchingGLLive::m_GameVersion,
              v172._M_start_of_storage._M_data,
              v172._M_finish);
          std::string::~string(&v172);
        }
        else
        {
          Application::GetVersionString((Application *)&Singleton<Application>::s_inst, v162, 10, 0);
          std::string::string(&v171, v162);
          if ( &v171 != (std::string *)&CMatchingGLLive::m_GameVersion )
            std::string::_M_assign(
              (std::string *const)&CMatchingGLLive::m_GameVersion,
              v171._M_start_of_storage._M_data,
              v171._M_finish);
          std::string::~string(&v171);
        }
        LocalPlayer = PlayerManager::GetLocalPlayer((PlayerManager *)dword_99F76C, 0, 0);
        v115 = *(_DWORD *)LocalPlayer[1].unknown_000;
        if ( v115 == -1 )
        {
          v115 = 0;
          *(_DWORD *)LocalPlayer[1].unknown_000 = 0;
        }
        PlayerSavegame::PlayerSavegame((PlayerSavegame *)v158, v115, 1, 0);
        v116 = (CMatching *)sprintf(v161, "%d %d", v160, v159);
        v117 = (CMatchingGLLive *)CMatching::Get(v116);
        std::string::string(&v170, v161);
        v175._M_buffers._M_end_of_storage = (char *)&v170;
        *(_DWORD *)&v175._M_buffers._M_static_buf[4] = 0;
        *(_DWORD *)&v175._M_buffers._M_static_buf[8] = v143;
        *(_DWORD *)&v175._M_buffers._M_static_buf[12] = v144;
        v175._M_finish = v145;
        v175._M_start_of_storage._M_data = v149;
        CMatchingGLLive::SetPlayerParam(v117, v175, v151);
        std::string::~string(&v170);
        v119 = CMatching::Get(v118);
        (*(void (__fastcall **)(int, int))(*(_DWORD *)v119 + 40))(v119, 4);
        v120 = (COnline *)GetOnline();
        COnline::SetIsOnlineGame(v120, 1);
        *(_BYTE *)(OnlineSingleton<OnlineGameState>::GetInstance() + 40) = 0;
        *(_BYTE *)(OnlineSingleton<OnlineGameState>::GetInstance() + 36) = 0;
        DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
        std::string::string(&v169, "ConnectToAlphaServer");
        v121 = DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v169);
        std::string::~string(&v169);
        if ( v121 )
          *(_BYTE *)(CMatching::Get(v122) + 26605) = 1;
        PlayerSavegame::~PlayerSavegame(v158);
        break;
      case 4:
        v76 = (CMatching *)CMatching::Get(v59);
        CMatching::Destroy(v76);
        *((_DWORD *)this + 13) = 4;
        CMatching::SetMatchingProvider(4);
        DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
        std::string::string(&v168, "ConnectToBetaServer");
        v77 = DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v168);
        std::string::~string(&v168);
        if ( v77 )
        {
          v78 = &v167;
          std::string::string(&v167, "0.0.0");
          if ( &v167 != (std::string *)&CMatchingGLLive::m_GameVersion )
            std::string::_M_assign(
              (std::string *const)&CMatchingGLLive::m_GameVersion,
              v167._M_start_of_storage._M_data,
              v167._M_finish);
        }
        else
        {
          v78 = &v166;
          Application::GetVersionString((Application *)&Singleton<Application>::s_inst, v162, 10, 0);
          std::string::string(&v166, v162);
          if ( &v166 != (std::string *)&CMatchingGLLive::m_GameVersion )
            std::string::_M_assign(
              (std::string *const)&CMatchingGLLive::m_GameVersion,
              v166._M_start_of_storage._M_data,
              v166._M_finish);
        }
        std::string::~string(v78);
        CMatching::Get(v79);
        v80 = (GameCenter *)GCSingleton<GameCenter>::GetInstance();
        dword_A3387C = GameCenter::GetUserUid(v80);
        CMatching::Get((CMatching *)dword_A3387C);
        v81 = (GameCenter *)GCSingleton<GameCenter>::GetInstance();
        dword_A33880 = GameCenter::GetHostUid(v81);
        CMatching::Get((CMatching *)dword_A33880);
        v82 = (const char **)GCSingleton<GameCenter>::GetInstance();
        IsHost = GameCenter::IsHost(v82);
        CMatchingGLLive::s_GameCenterInfo = IsHost;
        CMatching::Get((CMatching *)IsHost);
        v84 = (GameCenter *)GCSingleton<GameCenter>::GetInstance();
        dword_A33884 = GameCenter::GetPlayerCount(v84);
        CMatching::Get((CMatching *)dword_A33884);
        v85 = GCSingleton<GameCenter>::GetInstance();
        GameCenter::GetJoinPlayerList((GameCenter *)v156, v85);
        if ( v156 != (char **)&dword_A33888 )
        {
          v86 = v156[0];
          v87 = (int *)dword_A33888;
          if ( (int *)dword_A33888 == &dword_A33888 )
          {
LABEL_136:
            if ( v86 != (char *)v156 )
            {
              v154 = (char **)&v154;
              v155 = (char **)&v154;
              v90 = v86;
              do
              {
                node = std::list<std::string>::_M_create_node((int)&v154, (int)(v90 + 8));
                v92 = v155;
                *(_DWORD *)node = &v154;
                *((_DWORD *)node + 1) = v92;
                *v92 = node;
                v155 = (char **)node;
                v90 = *(char **)v90;
              }
              while ( v90 != (char *)v156 );
              v93 = v154;
              if ( v154 != (char **)&v154 && &v154 != (char ***)&dword_A33888 )
              {
                *(_DWORD *)node = &dword_A33888;
                *(_DWORD *)v93[1] = &v154;
                *(_DWORD *)dword_A3388C = v93;
                v94 = dword_A3388C;
                dword_A3388C = (int)v155;
                v155 = (char **)v93[1];
                v93[1] = (char *)v94;
              }
              std::priv::_List_base<std::string,std::allocator<std::string>>::clear((char **)&v154);
            }
          }
          else
          {
            while ( v86 != (char *)v156 )
            {
              v88 = (std::string *)(v87 + 2);
              v87 = (int *)*v87;
              v89 = *(char **)v86;
              if ( v88 != (std::string *)(v86 + 8) )
                std::string::_M_assign(v88, *((const char **)v86 + 7), *((const char **)v86 + 6));
              v86 = v89;
              if ( v87 == &dword_A33888 )
                goto LABEL_136;
            }
            for ( i = v87; ; i = v132 )
            {
              v131 = (int *)i[1];
              v132 = (int *)*i;
              *v131 = *i;
              v132[1] = (int)v131;
              std::string::~string((std::string *)(i + 2));
              __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(i, 0x20u);
              if ( v132 == &dword_A33888 )
                break;
            }
          }
        }
        std::priv::_List_base<std::string,std::allocator<std::string>>::clear(v156);
        v95 = (const char **)GCSingleton<GameCenter>::GetInstance();
        v96 = GameCenter::IsHost(v95);
        if ( v96 )
        {
          CRoomAttributes::CRoomAttributes((CRoomAttributes *)&v154);
          v133 = PlayerManager::GetLocalPlayer((PlayerManager *)dword_99F76C, 0, 0);
          PlayerSavegame::PlayerSavegame((PlayerSavegame *)v157, *(_DWORD *)v133[1].unknown_000, 1, 0);
          v134 = (glitch::os::Timer *)v174;
          v135 = PlayerSavegame::m_difficultyLevel;
          v136 = &v174[4 * PlayerSavegame::m_difficultyLevel];
          RealTime = *((_DWORD *)v136 - 296);
          v153 = *((_DWORD *)v136 - 299);
          if ( !RealTime
            || (v148 = PlayerSavegame::m_difficultyLevel,
                DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst),
                std::string::string(&v165, "DontUsePlayerSeed"),
                v150 = (DebugSwitches *)DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v165),
                std::string::~string(&v165),
                v135 = v148,
                v150) )
          {
            v146 = v135;
            RealTime = glitch::os::Timer::getRealTime(v134);
            *((_DWORD *)&v157[3]._M_start_of_storage._M_data + PlayerSavegame::m_difficultyLevel) = RealTime;
            v135 = v146;
          }
          v147 = v135;
          sprintf(v162, "%d %d", RealTime, RealTime);
          std::string::string(&v164, v162);
          PlayerSavegame::SG_Load((PlayerSavegame *)v157, 16);
          CurrentPrimaryQuest = PlayerSavegame::SG_GetCurrentPrimaryQuest(
                                  (PlayerSavegame *)v157,
                                  PlayerSavegame::m_difficultyLevel);
          v138 = PlayerSavegame::m_difficultyLevel;
          v139 = *(_DWORD *)&PlayerSavegame::SG_GetQuestSG((PlayerSavegame *)v157)[4 * v138 + 68];
          CRoomAttributes::SetAttributeInt(&v154, 1, -17978438);
          VersionNumber = Application::GetVersionNumber((Application *)&Singleton<Application>::s_inst);
          CRoomAttributes::SetAttributeInt(&v154, 2, VersionNumber);
          CRoomAttributes::SetAttributeInt(&v154, 3, v153);
          CRoomAttributes::SetAttributeInt(&v154, 4, v147);
          CRoomAttributes::SetAttributeInt(&v154, 5, v139);
          CRoomAttributes::SetAttributeInt(&v154, 6, CurrentPrimaryQuest);
          CRoomAttributes::SetAttributeBin(
            &v154,
            4,
            v164._M_start_of_storage._M_data,
            v164._M_finish - v164._M_start_of_storage._M_data);
          v141 = (CMatching *)OnlineSingleton<OnlineGameState>::GetInstance();
          *((_BYTE *)v141 + 37) = 1;
          v142 = CMatching::Get(v141);
          CRoomAttributes::operator=(v142 + 26688, &v154);
          std::string::~string(&v164);
          PlayerSavegame::~PlayerSavegame(v157);
          CRoomAttributes::~CRoomAttributes((CRoomAttributes *)&v154);
        }
        v97 = CMatching::Get((CMatching *)v96);
        (*(void (__fastcall **)(int, int))(*(_DWORD *)v97 + 40))(v97, 4);
        v98 = (COnline *)GetOnline();
        COnline::SetIsOnlineGame(v98, 1);
        *(_BYTE *)(OnlineSingleton<OnlineGameState>::GetInstance() + 36) = 0;
        DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
        std::string::string(&v163, "ConnectToAlphaServer");
        v99 = DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v163);
        std::string::~string(&v163);
        if ( v99 )
          *(_BYTE *)(CMatching::Get(v100) + 26605) = 1;
        break;
    }
  }
  result = OnlineSingleton<OnlineGameState>::GetInstance();
  *(_DWORD *)(result + 20) = 100;
  return result;
}


// ===== 4a17fc ObjectSearcher::RoomObjectList::AtEnd(void) =====
bool __fastcall ObjectSearcher::RoomObjectList::AtEnd(ObjectSearcher::RoomObjectList *this)
{
  return *((_DWORD *)this + 3) == *((_DWORD *)this + 2);
}


// ===== 4a1814 ObjectSearcher::RoomObjectList::Size(void) =====
int __fastcall ObjectSearcher::RoomObjectList::Size(ObjectSearcher::RoomObjectList *this)
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


// ===== 4a1840 ObjectSearcher::RoomObjectList::Get(void) =====
int __fastcall ObjectSearcher::RoomObjectList::Get(ObjectSearcher::RoomObjectList *this)
{
  return *(_DWORD *)(*((_DWORD *)this + 4) + 8);
}


// ===== 4a184c ObjectSearcher::BackupObjectList::Reset(void) =====
_DWORD *__fastcall ObjectSearcher::BackupObjectList::Reset(_DWORD *this)
{
  int v1; // r3

  v1 = *(this + 2);
  *(this + 4) = *(this + 1);
  *(this + 5) = v1;
  return this;
}


// ===== 4a185c ObjectSearcher::BackupObjectList::AtEnd(void) =====
bool __fastcall ObjectSearcher::BackupObjectList::AtEnd(ObjectSearcher::BackupObjectList *this)
{
  return *((_DWORD *)this + 4) == *((_DWORD *)this + 5);
}


// ===== 4a1874 ObjectSearcher::BackupObjectList::Next(void) =====
int __fastcall ObjectSearcher::BackupObjectList::Next(int this)
{
  *(_DWORD *)(this + 16) += 4;
  return this;
}


// ===== 4a1884 ObjectSearcher::BackupObjectList::Size(void) =====
int __fastcall ObjectSearcher::BackupObjectList::Size(ObjectSearcher::BackupObjectList *this)
{
  return (*((_DWORD *)this + 2) - *((_DWORD *)this + 1)) >> 2;
}


// ===== 4a1898 ObjectSearcher::BackupObjectList::Get(void) =====
int __fastcall ObjectSearcher::BackupObjectList::Get(ObjectSearcher::BackupObjectList *this)
{
  return **((_DWORD **)this + 4);
}


// ===== 4a18a4 ObjectSearcher::RoomObjectList::~RoomObjectList() =====
void __fastcall ObjectSearcher::RoomObjectList::~RoomObjectList(ObjectSearcher::RoomObjectList *this)
{
  ;
}


// ===== 4a18a8 ObjectSearcher::RoomObjectList::_ValidateCurrent(void) =====
_DWORD *__fastcall ObjectSearcher::RoomObjectList::_ValidateCurrent(_DWORD *this)
{
  _DWORD *v1; // r3
  _DWORD *v2; // r12

  v1 = (_DWORD *)*(this + 2);
  v2 = (_DWORD *)*(this + 3);
  while ( v1 != v2 )
  {
    if ( v1[2] != *(this + 4) )
      break;
    v1 = (_DWORD *)*v1;
    *(this + 2) = v1;
    if ( v2 == v1 )
      break;
    *(this + 4) = *(_DWORD *)v1[2];
  }
  return this;
}


// ===== 4a18ec ObjectSearcher::RoomObjectList::Next(void) =====
_DWORD *__fastcall ObjectSearcher::RoomObjectList::Next(_DWORD *this)
{
  *(this + 4) = *(_DWORD *)*(this + 4);
  return ObjectSearcher::RoomObjectList::_ValidateCurrent(this);
}


// ===== 4a18fc ObjectSearcher::RoomObjectList::Reset(void) =====
_DWORD *__fastcall ObjectSearcher::RoomObjectList::Reset(_DWORD *this)
{
  int *v1; // r1
  int v2; // r2

  v1 = (int *)*(this + 1);
  v2 = *v1;
  *(this + 3) = v1;
  *(this + 2) = v2;
  *(this + 4) = **(_DWORD **)(v2 + 8);
  return ObjectSearcher::RoomObjectList::_ValidateCurrent(this);
}


// ===== 4a191c ObjectSearcher::TargetList::SetRefObject(GameObject *) =====
int __fastcall ObjectSearcher::TargetList::SetRefObject(int this, GameObject *a2)
{
  int v2; // r4

  v2 = this;
  if ( a2 )
  {
    *(_DWORD *)(this + 44) = a2;
    this = (*(int (__fastcall **)(GameObject *))(*(_DWORD *)a2 + 36))(a2);
    if ( this )
      *(_DWORD *)(v2 + 48) = *(_DWORD *)(v2 + 44);
  }
  return this;
}

